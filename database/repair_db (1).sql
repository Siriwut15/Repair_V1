-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2024 at 04:42 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

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
  `date_close` timestamp NULL DEFAULT NULL COMMENT 'วันที่ปิดงาน'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_case`
--

INSERT INTO `tbl_case` (`case_id`, `user_id`, `status_id`, `tec_id`, `name_case`, `detail_case`, `place_case`, `date_case`, `date_assign`, `date_sent`, `date_close`) VALUES
(1, 6, 2, 2, 'โทรศัพท์', 'โทรออกไม่ได้', 'HR', '2024-03-11 06:53:06', '2024-03-13 10:30:57', NULL, NULL),
(2, 6, 4, 3, 'เครื่องปริ้นพัง ', 'ปริ้นไม่ออก', 'zone B', '2024-03-11 07:27:58', '2024-03-13 06:24:07', '2024-03-13 15:17:16', '2024-03-13 15:17:29'),
(3, 6, 4, 2, 'คอมดับ', 'ไม่รู้เป็นอะไรอะ', 'zone A', '2024-03-11 07:30:24', '2024-03-13 04:09:46', '2024-03-13 06:46:38', '2024-03-13 08:57:19'),
(4, 6, 2, 3, 'โน๊ตบุ๊คจอหัก', 'ทำตกเมื่อกี้', 'zone B', '2024-03-11 09:59:42', '2024-03-13 02:15:50', NULL, NULL),
(5, 6, 3, 2, 'pcเปิดไม่ติด', 'กดปุ่มpowerแล้วเครื่องไม่ทำงาน', 'บัญชี ตึก king pac', '2024-03-13 08:26:22', '2024-03-13 08:27:12', '2024-03-13 08:36:12', NULL),
(6, 6, 1, 0, 'เครื่องปริ้นเสีย', 'ปริ้นไม่ออก ', 'QA Zone B', '2024-03-13 14:02:48', NULL, NULL, NULL),
(7, 8, 1, 0, 'Notebookตก', 'หลุดมือล่วง ถือของเยอะไปหน่อย', 'ฝ่ายจัดซื้อ', '2024-03-13 14:04:40', NULL, NULL, NULL),
(8, 6, 1, 0, 'Notebookแบตเสื่อม', 'ชาทไว้100% ใช้งานไม่ถึง10นาทีหมด', 'ZoneA', '2024-03-13 15:19:24', NULL, NULL, NULL);

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
(1, 'admin', 'admin', 0, 'admin', 'admin ', 'admin ', '0983738651', 'admin@hotmail.com', NULL),
(2, 'worker01', 'worker01', 1, 'worker', 'บิว', 'IT', '272', 'worker01@gmail.com', '1710173980.png'),
(3, 'worker02', 'worker02', 1, 'worker', 'เบนซ์', 'IT', '288', 'benz@gmail.com', '1710174147.png'),
(4, 'worker03', 'worker03', 1, 'worker', 'ต้น', 'IT', '289', 'Ton@gmail.com', '1710174180.png'),
(5, 'worker04', 'worker04', 1, 'worker', 'โซ่', 'IT', '290', 'So@gmail.com', '1710224146.png'),
(6, 'emp01', 'emp01', 1, 'employee', 'employee_test', 'employee_test', '0983738651', 'employee1@hotmail.com', NULL),
(8, 'emp02', 'emp02', 1, 'employee', 'นาง ดวงใจ', 'ทำงานดี', '0236339982', 'doool@gmail.com', NULL),
(9, 'emp03', 'emp03', 1, 'employee', 'นาย วัยวุฒิ ', 'ชุมเมืองปัก', '0983738651', 'waiyawootlove@gmail.com', NULL),
(10, 'emp04', 'emp04', 1, 'employee', 'เดฟไทย', 'ดอทคอม', '0983738651', 'waiyawootlove@gmail.com', NULL),
(11, 'emp5', 'emp5', 0, 'employee', 'employee', 'employee', 'employee', 'employee112@hotmail.com', NULL);

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
-- AUTO_INCREMENT for table `tbl_case`
--
ALTER TABLE `tbl_case`
  MODIFY `case_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'PK', AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'PK', AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_status`
--
ALTER TABLE `tbl_status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
