<?php
    $selected_id = '';

    if($_SERVER["REQUEST_METHOD"] == "POST"){
        $page = htmlspecialchars(basename($_SERVER['REQUEST_URI']));
        
        $sql = "INSERT INTO messages (message, sender_id, recipient_id) VALUES (?, ?, ?)";
        if($stmt2 = $conn->prepare($sql)){
            $stmt2->bind_param("sss", $param_message, $param_sender_id, $param_recipient_id);
            
            $param_message = $_POST["message"];
            $param_recipient_id = $_POST["recipient_id"];
            $param_sender_id = 1;
            
            if($stmt2->execute()){
                header("location: ?page=messages&client_id=".$_POST["recipient_id"]);
                exit();
            } else{
                echo "Oops! Something went wrong. Please try again later.";
            }
        }
    
        $stmt->close();
    }else{
        if(isset($_GET['client_id']) && !empty($_GET['client_id'])){
            $selected_id = trim($_GET['client_id']);
    
            $msg_sql = "SELECT *,concat(firstname,' ',lastname) as name from `client_list` where id = ?";
            if($stmt = $conn->prepare($msg_sql)){
                $stmt->bind_param("i", $selected_id);
    
                if($stmt->execute()){
                    $msg_result = $stmt->get_result();
                    $msg_row = $msg_result->fetch_array(MYSQLI_ASSOC);
    
                    if($msg_result->num_rows == 1){
                        $fullname = $msg_row["name"];
                    }
                }
            }
        }
    }
?>

<div class="row">
    <div class="col-md-3">
        <div class="h-100 p-3 bg-white rounded shadow-sm">
        <?php
            $result = $conn->query("SELECT *,concat(firstname,' ',lastname) as name from `client_list` order by concat(firstname,' ',lastname) asc ");
            if($result->num_rows > 0){
                $outgoing_id = 1;
                while($row = $result->fetch_array()){
                    $sql2 = "SELECT * FROM messages WHERE (recipient_id = {$row['id']} OR sender_id = {$row['id']}) AND (sender_id = {$outgoing_id} OR recipient_id = {$outgoing_id}) ORDER BY id DESC LIMIT 1";
                    if($result2 = $conn->query($sql2)){
                        $row2 = $result2->fetch_array();

                        ($result2->num_rows > 0) ? $msg_result = $row2['message'] : $msg_result ="No message available";
                        (strlen($msg_result) > 28) ? $msg =  substr($msg_result, 0, 28) . '...' : $msg = $msg_result;

                        if(isset($row2['sender_id'])){
                            ($outgoing_id == $row2['sender_id']) ? $you = "You: " : $you = "";
                        }else{
                            $you = "";
                        }
                        ?>
                        <div class="d-flex align-items-center mb-3">
                            <div class="bg-light border rounded-circle mr-3 d-flex align-items-center justify-content-center" style="width: 50px; height: 50px;">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-person-fill" viewBox="0 0 16 16">
                                    <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3Zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6Z"/>
                                </svg>
                            </div>
                            <a href="?page=messages&client_id=<?php echo $row['id']; ?>" class="text-dark d-block flex-grow-1">
                                <p class="mb-0 font-weight-bold"><?php echo $row['name']; ?></p>
                                <p class="mb-0 text-muted"><small><?php echo $you.$msg; ?></small></p>
                            </a>
                        </div>
                        <?php
                    }else{
                        echo "Oops! Something went wrong. Please try again later.";
                    }
                }
            }
        ?>
        </div>
    </div>
    <div class="col-md-9">
        <div class="h-100 bg-white rounded shadow-sm">
            <?php
                if(isset($selected_id) && !empty($selected_id)){
                    ?>
                        <h5 class="p-3 mb-0"><?php echo $fullname; ?></h5>
                        <hr />
                        <div id="messageBody" class="flex-grow-1 p-3" style="min-height: 500px; max-height: 500px; overflow-y: auto;">
                        <?php 
                            $qry = $conn->query("SELECT * from `messages` where sender_id ='{$selected_id}' or recipient_id ='{$selected_id}' order by unix_timestamp(created_at) asc ");
                            while($row_msg_body = $qry->fetch_assoc()){
                                if($row_msg_body['sender_id'] == $selected_id){
                                    ?>
                                    <div class="text-left pr-5">
                                        <div class="d-inline-block">
                                            <p class="mb-0 text-muted">
                                                <small><?php echo $fullname; ?></small>
                                            </p>
                                            <div class="mb-0 alert alert-light" role="alert" style="min-width: 300px">
                                                <?php echo $row_msg_body['message']; ?>
                                            </div>
                                            <p class="mb-0 text-muted text-right">
                                                <small><?php echo $row_msg_body['created_at']; ?></small>
                                            </p>
                                        </div>
                                    </div>
                                    <?php
                                }else{
                                    ?>
                                    <div class="text-right pl-5">
                                        <div class="d-inline-block">
                                            <p class="mb-0 text-muted text-left">
                                                <small>You</small>
                                            </p>
                                            <div class="mb-0 alert alert-light text-left" role="alert" style="min-width: 300px">
                                                <?php echo $row_msg_body['message']; ?>
                                            </div>
                                            <p class="mb-0 text-muted text-left">
                                                <small><?php echo $row_msg_body['created_at']; ?></small>
                                            </p>
                                        </div>
                                    </div>
                                    <?php
                                }
                            }
                        ?>
                        </div>
                        <div class="bg-light p-3 border-top">
                            <form class="form-inline" action="<?php echo htmlspecialchars(basename($_SERVER['REQUEST_URI'])); ?>" method="post">
                                <input type="text" class="form-control flex-grow-1 mr-2" placeholder="Type your message here" name="message" required />

                                <input type="hidden" name="recipient_id" value="<?php echo $selected_id; ?>"/>
                                <button type="submit" class="btn btn-primary">Send</button>
                            </form>
                        </div>
                    <?php
                }else{
                    echo 'Select client';
                }
            ?>
        
        </div>
    </div>
</div>

<script>
    window.onload = function() {
        scrollToBottom('messageBody')
    };
    
    const scrollToBottom = (id) => {
        const element = document.getElementById(id);
        element.scrollTop = element.scrollHeight;
    }
</script>