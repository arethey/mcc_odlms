<?php
if($_SERVER["REQUEST_METHOD"] == "POST"){
    $page = htmlspecialchars(basename($_SERVER['REQUEST_URI']));
    
    $sql = "INSERT INTO messages (message, sender_id, recipient_id) VALUES (?, ?, ?)";
    if($stmt = $conn->prepare($sql)){
        $stmt->bind_param("sss", $param_message, $param_sender_id, $param_recipient_id);
        
        $param_message = $_POST["message"];
        $param_sender_id = $_POST["sender_id"];
        $param_recipient_id = 1;
        
        if($stmt->execute()){
            header("location: $page");
            exit();
        } else{
            echo "Oops! Something went wrong. Please try again later.";
        }
    }

    // $stmt->close();
}
?>

<div class="col-6 mx-auto">
    <div class="h-100 bg-white rounded shadow-sm">
        <div class="d-flex flex-column">
            <div id="messageBody" class="flex-grow-1 p-3" style="min-height: 500px; max-height: 500px; overflow-y: auto;">
                <?php 
                    $i = 1;
                    $qry = $conn->query("SELECT * from `messages` where sender_id ='{$_settings->userdata('id')}' or recipient_id ='{$_settings->userdata('id')}' order by unix_timestamp(created_at) asc ");
                    while($row = $qry->fetch_assoc()){
                        if($row['recipient_id'] == $_settings->userdata('id')){
                            ?>
                            <div class="text-left pr-5">
                                <div class="d-inline-block">
                                    <p class="mb-0 text-muted">
                                        <small>Admin</small>
                                    </p>
                                    <div class="mb-0 alert alert-light" role="alert" style="min-width: 300px">
                                        <?php echo $row['message']; ?>
                                    </div>
                                    <p class="mb-0 text-muted text-right">
                                        <small><?php echo $row['created_at']; ?></small>
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
                                        <?php echo $row['message']; ?>
                                    </div>
                                    <p class="mb-0 text-muted text-left">
                                        <small><?php echo $row['created_at']; ?></small>
                                    </p>
                                </div>
                            </div>
                            <?php
                        }
                    }
                ?>
            </div>
            <div class="p-3 border-top">
                <form class="form-inline" action="<?php echo htmlspecialchars(basename($_SERVER['REQUEST_URI'])); ?>" method="post">
                    <input type="text" class="form-control flex-grow-1 mr-2" placeholder="Type your message here" name="message" required />

                    <input type="hidden" name="sender_id" value="<?php echo $_settings->userdata('id'); ?>"/>
                    <button type="submit" class="btn btn-primary">Send</button>
                </form>
            </div>
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