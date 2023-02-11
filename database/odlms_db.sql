-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2023 at 11:40 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `odlms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment_list`
--

CREATE TABLE `appointment_list` (
  `id` int(30) NOT NULL,
  `code` varchar(100) NOT NULL,
  `schedule` datetime NOT NULL,
  `client_id` int(30) NOT NULL,
  `prescription_path` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointment_list`
--

INSERT INTO `appointment_list` (`id`, `code`, `schedule`, `client_id`, `prescription_path`, `status`, `date_created`, `date_updated`) VALUES
(1, '202201-0001', '2022-01-11 15:30:00', 2, '1_sample.pdf?v=1641884206', 6, '2022-01-11 14:06:30', '2022-01-11 16:11:57'),
(3, '202201-0002', '2022-01-11 17:00:00', 5, 'test.pdf?v=1641891660', 2, '2022-01-11 17:01:00', '2022-01-11 17:03:30'),
(4, '202201-0003', '2022-01-13 10:00:00', 2, '', 0, '2022-01-11 17:07:05', NULL),
(5, '202212-0001', '2022-12-10 16:21:00', 2, '', 0, '2022-12-02 16:22:01', NULL),
(6, '202212-0002', '0000-00-00 00:00:00', 2, '', 0, '2022-12-03 10:00:13', NULL),
(9, '202212-0003', '2022-12-09 14:38:00', 2, '', 0, '2022-12-03 14:39:02', NULL),
(10, '202212-0004', '0000-00-00 00:00:00', 2, '', 0, '2022-12-04 17:33:07', NULL),
(11, '202212-0005', '2022-12-14 20:58:00', 2, '', 1, '2022-12-04 17:58:28', '2022-12-05 16:08:28'),
(12, '202212-0006', '0000-00-00 00:00:00', 6, '', 0, '2022-12-14 19:13:33', NULL),
(13, '202212-0007', '2022-12-14 20:17:00', 6, '', 0, '2022-12-14 20:17:38', NULL),
(14, '202212-0008', '2022-12-14 20:17:00', 6, '', 0, '2022-12-14 20:18:02', NULL),
(15, '202212-0009', '2022-12-14 20:23:00', 6, '', 0, '2022-12-14 20:23:47', NULL),
(16, '202212-0010', '2022-12-14 20:27:00', 6, '', 0, '2022-12-14 20:27:36', NULL),
(17, '202212-0011', '2022-12-14 20:28:00', 6, '', 0, '2022-12-14 20:28:08', NULL),
(18, '202212-0012', '2022-12-14 20:29:00', 6, '', 0, '2022-12-14 20:30:03', NULL),
(19, '202212-0013', '2022-12-14 20:31:00', 6, '', 0, '2022-12-14 20:31:30', NULL),
(20, '202212-0014', '2022-12-15 10:40:00', 6, '', 0, '2022-12-14 20:41:04', NULL),
(21, '202212-0015', '2022-12-15 20:41:00', 6, '', 0, '2022-12-14 20:41:43', NULL),
(22, '202212-0016', '2022-12-15 09:43:00', 6, '', 0, '2022-12-14 20:43:42', NULL),
(23, '202212-0017', '2022-12-15 09:45:00', 6, '', 0, '2022-12-14 20:45:40', NULL),
(24, '202212-0018', '0000-00-00 00:00:00', 6, '', 0, '2022-12-14 20:50:18', NULL),
(25, '202212-0019', '0000-00-00 00:00:00', 6, '', 0, '2022-12-14 20:52:13', NULL),
(26, '202212-0020', '0000-00-00 00:00:00', 6, '', 0, '2022-12-14 21:02:08', NULL),
(27, '202212-0021', '0000-00-00 00:00:00', 6, '', 0, '2022-12-14 21:04:41', NULL),
(28, '202212-0022', '0000-00-00 00:00:00', 6, '', 0, '2022-12-14 21:05:50', NULL),
(29, '202212-0023', '0000-00-00 00:00:00', 6, '', 0, '2022-12-14 21:09:40', NULL),
(30, '202212-0024', '0000-00-00 00:00:00', 6, '', 0, '2022-12-14 21:10:32', NULL),
(31, '202212-0025', '0000-00-00 00:00:00', 6, '', 0, '2022-12-14 21:12:38', NULL),
(32, '202212-0026', '0000-00-00 00:00:00', 6, '', 0, '2022-12-14 21:13:10', NULL),
(33, '202212-0027', '0000-00-00 00:00:00', 6, '', 0, '2022-12-14 21:15:50', NULL),
(34, '202212-0028', '0000-00-00 00:00:00', 6, '', 0, '2022-12-14 21:16:05', NULL),
(35, '202212-0029', '0000-00-00 00:00:00', 6, '', 0, '2022-12-14 21:16:15', NULL),
(36, '202212-0030', '0000-00-00 00:00:00', 6, '', 0, '2022-12-14 21:18:47', NULL),
(37, '202212-0031', '0000-00-00 00:00:00', 6, '', 0, '2022-12-14 21:19:19', NULL),
(38, '202212-0032', '0000-00-00 00:00:00', 6, '', 0, '2022-12-14 21:21:21', NULL),
(39, '202212-0033', '0000-00-00 00:00:00', 6, '', 0, '2022-12-14 21:21:41', NULL),
(40, '202212-0034', '0000-00-00 00:00:00', 6, '', 0, '2022-12-14 21:21:44', NULL),
(41, '202212-0035', '0000-00-00 00:00:00', 6, '', 0, '2022-12-14 21:22:13', NULL),
(42, '202212-0036', '0000-00-00 00:00:00', 6, '', 0, '2022-12-14 21:23:36', NULL),
(43, '202212-0037', '2022-12-16 09:14:00', 6, '', 0, '2022-12-15 03:14:30', NULL),
(44, '202212-0038', '2022-12-19 08:16:00', 6, '', 0, '2022-12-15 03:16:50', NULL),
(45, '202212-0039', '2022-12-20 09:21:00', 2, '', 0, '2022-12-15 03:21:21', NULL),
(46, '202212-0040', '2022-12-15 09:59:00', 2, '', 0, '2022-12-15 03:53:52', NULL),
(47, '202212-0041', '2022-12-15 09:59:00', 2, '', 0, '2022-12-15 03:53:56', NULL),
(48, '202212-0042', '2022-12-15 09:00:00', 2, '', 0, '2022-12-15 03:54:51', NULL),
(49, '202212-0043', '2022-12-15 09:01:00', 2, '', 0, '2022-12-15 03:55:30', NULL),
(50, '202212-0044', '2022-12-15 09:01:00', 2, '', 0, '2022-12-15 03:55:40', NULL),
(51, '202212-0045', '2022-12-15 09:04:00', 2, '', 0, '2022-12-15 03:59:03', NULL),
(52, '202212-0046', '2022-12-15 09:07:00', 2, '', 0, '2022-12-15 04:01:24', NULL),
(53, '202212-0047', '2022-12-15 09:08:00', 2, '', 0, '2022-12-15 04:02:07', NULL),
(54, '202212-0048', '2022-12-21 15:25:00', 7, '', 0, '2022-12-15 04:17:16', NULL),
(55, '202212-0049', '2022-12-21 15:30:00', 7, '', 0, '2022-12-15 04:18:02', NULL),
(56, '202212-0050', '2022-12-21 15:24:00', 7, '', 0, '2022-12-15 04:26:34', NULL),
(57, '202212-0051', '2022-12-21 15:28:00', 7, '', 0, '2022-12-15 04:27:05', NULL),
(58, '202212-0052', '2022-12-21 15:40:00', 7, '', 0, '2022-12-15 04:34:59', NULL),
(59, '202212-0053', '2022-12-21 15:35:00', 7, '', 0, '2022-12-15 04:35:19', NULL),
(60, '202212-0054', '2022-12-21 15:35:00', 7, '', 0, '2022-12-15 04:35:53', NULL),
(61, '202212-0055', '2022-12-30 09:52:00', 7, '', 0, '2022-12-15 04:53:31', NULL),
(62, '202212-0056', '2022-12-21 15:40:00', 7, '', 0, '2022-12-15 04:53:55', NULL),
(63, '202212-0057', '2022-12-21 15:40:00', 7, '', 0, '2022-12-15 04:54:47', NULL),
(64, '202212-0058', '2022-12-21 15:43:00', 7, '', 0, '2022-12-15 04:55:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `appointment_test_list`
--

CREATE TABLE `appointment_test_list` (
  `appointment_id` int(30) NOT NULL,
  `test_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointment_test_list`
--

INSERT INTO `appointment_test_list` (`appointment_id`, `test_id`, `date_created`) VALUES
(1, 1, '2022-01-11 14:06:30'),
(1, 3, '2022-01-11 14:06:30'),
(1, 1, '2022-01-11 14:14:13'),
(1, 3, '2022-01-11 14:14:13'),
(1, 1, '2022-01-11 14:15:45'),
(1, 3, '2022-01-11 14:15:45'),
(1, 1, '2022-01-11 14:15:57'),
(1, 3, '2022-01-11 14:15:57'),
(1, 1, '2022-01-11 14:16:34'),
(1, 3, '2022-01-11 14:16:34'),
(1, 1, '2022-01-11 14:16:39'),
(1, 3, '2022-01-11 14:16:39'),
(1, 1, '2022-01-11 14:17:44'),
(1, 3, '2022-01-11 14:17:44'),
(1, 1, '2022-01-11 14:48:09'),
(1, 3, '2022-01-11 14:48:09'),
(1, 1, '2022-01-11 14:56:46'),
(1, 3, '2022-01-11 14:56:46'),
(3, 2, '2022-01-11 17:01:00'),
(3, 5, '2022-01-11 17:01:00'),
(3, 4, '2022-01-11 17:01:00'),
(4, 3, '2022-01-11 17:07:05'),
(4, 5, '2022-01-11 17:07:05'),
(5, 3, '2022-12-02 16:22:01'),
(9, 3, '2022-12-03 14:39:02'),
(11, 2, '2022-12-04 17:58:28'),
(12, 2, '2022-12-14 19:13:33'),
(13, 1, '2022-12-14 20:17:38'),
(14, 2, '2022-12-14 20:18:02'),
(15, 1, '2022-12-14 20:23:47'),
(16, 1, '2022-12-14 20:27:36'),
(17, 1, '2022-12-14 20:28:08'),
(18, 1, '2022-12-14 20:30:03'),
(19, 2, '2022-12-14 20:31:30'),
(20, 1, '2022-12-14 20:41:04'),
(21, 2, '2022-12-14 20:41:43'),
(23, 1, '2022-12-14 20:45:40'),
(26, 1, '2022-12-14 21:02:08'),
(28, 1, '2022-12-14 21:05:50'),
(40, 1, '2022-12-14 21:21:44'),
(42, 1, '2022-12-14 21:23:36'),
(43, 1, '2022-12-15 03:14:30'),
(44, 2, '2022-12-15 03:16:50'),
(45, 1, '2022-12-15 03:21:21'),
(47, 2, '2022-12-15 03:53:56'),
(48, 1, '2022-12-15 03:54:51'),
(51, 1, '2022-12-15 03:59:03'),
(52, 2, '2022-12-15 04:01:24'),
(53, 1, '2022-12-15 04:02:07'),
(54, 2, '2022-12-15 04:17:16'),
(56, 2, '2022-12-15 04:26:34'),
(57, 2, '2022-12-15 04:27:05'),
(58, 1, '2022-12-15 04:34:59'),
(59, 1, '2022-12-15 04:35:19'),
(60, 1, '2022-12-15 04:35:53'),
(61, 1, '2022-12-15 04:53:31'),
(62, 1, '2022-12-15 04:53:55'),
(63, 1, '2022-12-15 04:54:47'),
(64, 1, '2022-12-15 04:55:19');

-- --------------------------------------------------------

--
-- Table structure for table `client_list`
--

CREATE TABLE `client_list` (
  `id` int(30) NOT NULL,
  `firstname` text NOT NULL,
  `middlename` text NOT NULL,
  `lastname` text NOT NULL,
  `gender` varchar(50) NOT NULL,
  `contact` varchar(150) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `dob` date NOT NULL,
  `address` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client_list`
--

INSERT INTO `client_list` (`id`, `firstname`, `middlename`, `lastname`, `gender`, `contact`, `email`, `password`, `dob`, `address`, `avatar`, `delete_flag`, `date_created`, `date_updated`) VALUES
(2, 'Claire', 'C', 'Blake', 'Female', '09456789123', 'cblake@sample.com', 'cee46cdd32fe76ef3e0462df7a13147f', '1997-10-14', 'Sample Address only', 'uploads/client-2.png?v=1641873547', 0, '2022-01-11 11:35:33', '2022-12-15 03:20:51'),
(5, 'John', 'D', 'Smith', 'Male', '09456789123', 'jsmith@sample.com', '1254737c076cf867dc53d60a0364f38e', '1997-07-15', 'Sample ADdress only.', 'uploads/client-5.png?v=1641891731', 0, '2022-01-11 16:56:43', '2022-01-11 17:02:11'),
(6, 'Mizy', 'A', 'Smith', 'Male', '0943-815-3339', 'johh@gmail.com', 'cee46cdd32fe76ef3e0462df7a13147f', '2022-12-07', 'SSSSSS', NULL, 0, '2022-12-14 19:04:51', NULL),
(7, 'Chris', 'Chris', 'Brown', 'Male', '0983-838-3831', 'chris@gmail.com', '65c9d8cca12f8febe43e94926fccd384', '2022-12-01', 'Talangnan', NULL, 0, '2022-12-15 04:08:29', NULL),
(8, 'cg', '', 'layese', 'Male', '0995-915-3358', 'cg@gmail.com', 'c582bac08dba78866883ba4e5f84ae92', '1999-04-16', 'kodia', NULL, 0, '2023-02-02 22:23:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `history_list`
--

CREATE TABLE `history_list` (
  `id` int(30) NOT NULL,
  `appointment_id` int(30) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `remarks` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history_list`
--

INSERT INTO `history_list` (`id`, `appointment_id`, `status`, `remarks`, `date_created`) VALUES
(2, 1, 1, 'Appointment has been approved.', '2022-01-11 15:47:27'),
(10, 3, 1, 'Appointment has been approved.', '2022-01-11 17:03:08'),
(12, 11, 1, '', '2022-12-05 16:08:28');

-- --------------------------------------------------------

--
-- Table structure for table `schedule_settings`
--

CREATE TABLE `schedule_settings` (
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL,
  `date_create` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schedule_settings`
--

INSERT INTO `schedule_settings` (`meta_field`, `meta_value`, `date_create`) VALUES
('day_schedule', 'Monday,Tuesday,Wednesday,Thursday,Friday', '2022-12-14 20:40:24'),
('morning_schedule', '08:00,11:00', '2022-12-14 20:40:24'),
('afternoon_schedule', '13:00,16:00', '2022-12-14 20:40:24');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Online Diagnostic Lab Management System'),
(6, 'short_name', 'ODLMS - PHP'),
(11, 'logo', 'uploads/logo-1641866302.png'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/cover-1641866302.png');

-- --------------------------------------------------------

--
-- Table structure for table `test_list`
--

CREATE TABLE `test_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `cost` float NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `test_list`
--

INSERT INTO `test_list` (`id`, `name`, `description`, `cost`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, 'CT scan', 'A CT (computed tomography) scan is a type of x-ray that creates 3-dimensional images of your body, including bones, organs, tissues and tumours. The machine moves in a circular motion around you and takes x-rays of very thin slices of your body to create a cross-sectional image.', 2500, 1, 0, '2022-01-11 10:20:35', NULL),
(2, 'Electrocardiogram (ECG)', 'An ECG is a graph of your heart\'s electrical activity. It is a safe test. There is no risk of being electrocuted.', 1500, 1, 0, '2022-01-11 10:21:20', NULL),
(3, 'Magnetic Resonance Imaging (MRI) Scan', 'A magnetic resonance imaging (MRI) scan takes detailed pictures of the inside of the body. It can show up problems in the soft tissues without the need for surgery. It is also useful for planning some treatments of the same areas.', 2500, 1, 0, '2022-01-11 10:22:06', NULL),
(4, 'X-Rays', 'An x-ray uses radiation to create a picture of the inside of the body. The x-ray beam is absorbed differently by various structures in the body, such as bones and soft tissues, and this is used to create the image. X-ray is also known as radiography.', 750, 1, 0, '2022-01-11 10:22:41', NULL),
(5, 'Ultrasound', 'An ultrasound scan creates a real-time picture of the inside of the body using sound waves. Ultrasound is generally painless and non-invasive. Ultrasound works differently to x-ray in that it does not use radiation.', 1500, 1, 0, '2022-01-11 10:23:07', NULL),
(6, 'Sample 101', ' To Be Deleted', 123, 0, 1, '2022-01-11 10:23:18', '2022-01-11 10:23:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 1 COMMENT '0=not verified, 1 = verified',
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `middlename`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `status`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', NULL, 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/avatar-1.png?v=1639468007', NULL, 1, 1, '2021-01-20 14:02:37', '2021-12-14 15:47:08'),
(6, 'Claire', NULL, 'Blake', 'cblake', '4744ddea876b11dcb1d169fadf494418', 'uploads/avatar-6.png?v=1641629093', NULL, 2, 1, '2022-01-08 16:04:17', '2022-01-08 16:04:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment_list`
--
ALTER TABLE `appointment_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `appointment_test_list`
--
ALTER TABLE `appointment_test_list`
  ADD KEY `appointment_id` (`appointment_id`),
  ADD KEY `test_id` (`test_id`);

--
-- Indexes for table `client_list`
--
ALTER TABLE `client_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_list`
--
ALTER TABLE `history_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`,`appointment_id`),
  ADD KEY `appointment_id` (`appointment_id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_list`
--
ALTER TABLE `test_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment_list`
--
ALTER TABLE `appointment_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `client_list`
--
ALTER TABLE `client_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `history_list`
--
ALTER TABLE `history_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `test_list`
--
ALTER TABLE `test_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment_list`
--
ALTER TABLE `appointment_list`
  ADD CONSTRAINT `appointment_list_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `appointment_test_list`
--
ALTER TABLE `appointment_test_list`
  ADD CONSTRAINT `appointment_test_list_ibfk_1` FOREIGN KEY (`appointment_id`) REFERENCES `appointment_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `appointment_test_list_ibfk_2` FOREIGN KEY (`test_id`) REFERENCES `test_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `history_list`
--
ALTER TABLE `history_list`
  ADD CONSTRAINT `history_list_ibfk_1` FOREIGN KEY (`appointment_id`) REFERENCES `appointment_list` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
