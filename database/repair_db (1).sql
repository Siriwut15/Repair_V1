-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2024 at 05:46 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `repair_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL COMMENT 'ไอดี',
  `username` varchar(50) NOT NULL COMMENT 'ชื่อ',
  `password` varchar(255) NOT NULL COMMENT 'รหัสผ่าน',
  `email` varchar(100) NOT NULL COMMENT 'อีเมล',
  `tel` varchar(20) NOT NULL COMMENT 'เบอร์โทร',
  `user_level` varchar(20) NOT NULL COMMENT 'สถานะ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `username`, `password`, `email`, `tel`, `user_level`) VALUES
(2, 'non', '1234', 'nonza@non', '5678', 'employee');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_case`
--

CREATE TABLE `tbl_case` (
  `case_id` int(11) NOT NULL COMMENT 'PK',
  `user_id` int(11) NOT NULL COMMENT 'tbl_login',
  `status_id` int(11) NOT NULL DEFAULT 1 COMMENT 'tbl_status',
  `tec_id` int(11) NOT NULL COMMENT 'ช่าง',
  `name_case` varchar(100) NOT NULL COMMENT 'แจ้งซ่อม',
  `detail_case` varchar(250) NOT NULL COMMENT 'รายละเอียด',
  `place_case` varchar(100) NOT NULL COMMENT 'สถานที่',
  `date_case` timestamp NULL DEFAULT current_timestamp() COMMENT 'วันที่แจ้งซ่อม',
  `date_assign` timestamp NULL DEFAULT NULL COMMENT 'วันที่ส่งมอบงาน',
  `date_sent` timestamp NULL DEFAULT NULL COMMENT 'วันที่รับงาน',
  `date_close` timestamp NULL DEFAULT NULL COMMENT 'วันที่ปิดงาน',
  `date_period` varchar(50) NOT NULL COMMENT 'ระยะเวลา'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_case`
--

INSERT INTO `tbl_case` (`case_id`, `user_id`, `status_id`, `tec_id`, `name_case`, `detail_case`, `place_case`, `date_case`, `date_assign`, `date_sent`, `date_close`, `date_period`) VALUES
(1, 9, 4, 2, 'pc เปิดไม่ติด', 'เสียบสายครบหมดแล้วก็เปิดไม่ติด', 'แผนกเป่า king bac (ลมโชย)', '2024-03-19 14:50:33', '2024-03-19 14:51:23', '2024-03-19 14:53:57', '2024-03-19 14:57:08', ''),
(2, 9, 4, 3, 'Notebook ชาทแบตไม่เข้า', 'เสียสายแล้วไฟสถานะไม่ขึ้น', 'Zone B ', '2024-03-19 15:16:46', '2024-03-19 15:20:43', '2024-03-19 15:21:35', '2024-03-19 15:24:00', ''),
(3, 6, 4, 3, 'หิวข้าว', 'IT มาซื้อข้าวให้หน่อย', 'Server IT', '2024-03-20 02:47:32', '2024-03-20 03:09:02', '2024-03-20 03:09:29', '2024-03-20 03:41:52', ''),
(4, 9, 4, 4, 'เครื่องปริ้นๆไม่ออก', 'ไม่รู้เป็นอะไร', 'Zone B ', '2024-03-20 04:17:20', '2024-03-20 04:18:35', '2024-03-20 04:19:25', '2024-03-20 04:26:07', ''),
(5, 10, 4, 2, 'เครื่องปริ้นๆไม่ออก', 'ไม่รู้เป็นอะไรอ่าาาาา', 'Zone X', '2024-03-20 06:48:03', '2024-03-20 08:02:12', '2024-03-20 09:35:18', '2024-03-20 09:35:57', ''),
(6, 9, 4, 5, 'เครื่องปริ้นดอทพัง', 'ปริ้นไม่ออก it มาดูให้หน่อยจ้า', 'ตึก Kingbac ชั้น2', '2024-03-20 15:36:11', '2024-03-20 16:23:44', '2024-03-20 16:24:12', '2024-03-20 16:27:13', ''),
(7, 9, 4, 2, 'uhou9', 'jpo', 'Zone X', '2024-03-21 15:03:43', '2024-03-21 15:08:57', '2024-03-21 15:09:23', '2024-03-21 15:42:50', ''),
(8, 9, 4, 2, 'gege', 'gbetb', 'vip4', '2024-03-21 16:00:38', '2024-03-21 16:05:12', '2024-03-21 16:07:48', '2024-03-21 16:09:21', ''),
(9, 9, 3, 2, 'fvvsdv', 'dsss', 'ตึก Kingbac ชั้น2', '2024-03-21 16:00:55', '2024-03-21 16:05:16', '2024-03-21 16:18:23', NULL, ''),
(10, 6, 2, 2, 'aaa', 'vvv', 'bbb', '2024-03-21 16:20:36', '2024-03-21 16:21:14', NULL, NULL, ''),
(11, 6, 2, 2, 'eee', 'www', 'qqq', '2024-03-21 16:20:44', '2024-03-21 16:21:45', NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `user_id` int(11) NOT NULL COMMENT 'PK',
  `username` varchar(20) NOT NULL COMMENT 'ไอดี',
  `password` varchar(200) NOT NULL COMMENT 'รหัสผ่าน',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `user_level` varchar(20) NOT NULL COMMENT 'สถานะ',
  `u_name` varchar(100) NOT NULL COMMENT 'ชื่อ',
  `u_lastname` varchar(100) NOT NULL COMMENT 'นามสกุล',
  `u_tel` varchar(20) NOT NULL COMMENT 'เบอร์โทร',
  `u_email` varchar(50) NOT NULL COMMENT 'อีเมล์',
  `u_img` varchar(200) DEFAULT NULL COMMENT 'รูปภาพ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`user_id`, `username`, `password`, `user_status`, `user_level`, `u_name`, `u_lastname`, `u_tel`, `u_email`, `u_img`) VALUES
(1, 'admin', 'admin', 0, 'admin', 'admin ', 'admin ', '272', 'admin@hotmail.com', NULL),
(2, 'worker01', 'worker01', 1, 'worker', 'บิว', 'IT', '272', 'worker01@gmail.com', '1710173980.png'),
(3, 'worker02', 'worker02', 1, 'worker', 'เบนซ์', 'IT', '288', 'benz@gmail.com', '1710174147.png'),
(4, 'worker03', 'worker03', 1, 'worker', 'ต้น', 'IT', '289', 'Ton@gmail.com', '1710174180.png'),
(5, 'worker04', 'worker04', 1, 'worker', 'โซ่', 'IT', '290', 'So@gmail.com', 'worker.png'),
(6, 'emp01', 'emp01', 1, 'employee', 'Bew', 'Eiei', '833', 'employee1@hotmail.com', NULL),
(9, 'emp03', 'emp03', 1, 'employee', 'ขี้เกียจทำเอง', 'รอ it มาทำให้', '811', 'emp03@gmail.com', NULL),
(10, 'emp04', 'emp04', 1, 'employee', 'Bew', 'Siriwut', '999', 'Bew@gmail.com', NULL),
(11, 'emp5', 'emp5', 1, 'employee', 'employee', 'employee', 'employee', 'employee112@hotmail.com', NULL),
(18, 'benz', '123456', 1, 'employee', 'benz', 'zaza', '222', 'benz@benz', NULL),
(19, 'bew', 'bew15', 0, '', '', '', '9999', 'siriwutna5553@gmail.com', NULL),
(21, 'benz', '1234', 1, 'worker', 'ben', 'IT', '277', 'benza@ben', 'worker.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_status`
--

CREATE TABLE `tbl_status` (
  `status_id` int(11) NOT NULL,
  `status_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_status`
--

INSERT INTO `tbl_status` (`status_id`, `status_name`) VALUES
(1, 'รอดำเนินการ'),
(2, 'กำลังดำเนินการ'),
(3, 'กำลังซ่อม '),
(4, 'ซ่อมเสร็จแล้ว ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_case`
--
ALTER TABLE `tbl_case`
  ADD PRIMARY KEY (`case_id`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tbl_status`
--
ALTER TABLE `tbl_status`
  ADD PRIMARY KEY (`status_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ไอดี', AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_case`
--
ALTER TABLE `tbl_case`
  MODIFY `case_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'PK', AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'PK', AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_status`
--
ALTER TABLE `tbl_status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
