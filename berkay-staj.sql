-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 12, 2021 at 03:28 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `berkay-staj`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance_info`
--

CREATE TABLE `attendance_info` (
  `aten_id` int(20) NOT NULL,
  `atn_user_id` int(20) NOT NULL,
  `in_time` varchar(200) DEFAULT NULL,
  `out_time` varchar(150) DEFAULT NULL,
  `total_duration` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attendance_info`
--

INSERT INTO `attendance_info` (`aten_id`, `atn_user_id`, `in_time`, `out_time`, `total_duration`) VALUES
(52, 28, '12-09-2021 19:22:37', '12-09-2021 19:22:40', '00:00:03'),
(51, 28, '03-09-2021 16:30:50', '03-09-2021 16:30:51', '00:00:01'),
(50, 28, '28-08-2021 20:13:40', '03-09-2021 16:30:48', '20:17:08'),
(49, 1, '28-08-2021 20:12:44', '28-08-2021 20:12:46', '00:00:02'),
(48, 28, '28-08-2021 19:59:21', '28-08-2021 20:00:43', '00:01:22'),
(47, 28, '28-08-2021 19:58:11', '28-08-2021 19:58:17', '00:00:06'),
(53, 28, '12-09-2021 16:23:02', '12-09-2021 16:23:07', '00:00:05'),
(54, 28, '12-09-2021 16:23:10', '12-09-2021 16:23:18', '00:00:08'),
(55, 28, '12-09-2021 16:24:07', '12-09-2021 16:24:13', '00:00:06');

-- --------------------------------------------------------

--
-- Table structure for table `task_info`
--

CREATE TABLE `task_info` (
  `task_id` int(50) NOT NULL,
  `t_title` varchar(120) NOT NULL,
  `t_description` text DEFAULT NULL,
  `t_start_time` varchar(100) DEFAULT NULL,
  `t_end_time` varchar(100) DEFAULT NULL,
  `t_user_id` int(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0 = incomplete, 1 = In progress, 2 = complete'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `task_info`
--

INSERT INTO `task_info` (`task_id`, `t_title`, `t_description`, `t_start_time`, `t_end_time`, `t_user_id`, `status`) VALUES
(28, 'Web tasarım', 'Tasarlanan sayfalar html css js \'e dökülecek.', '2021-08-28 17:13', '', 28, 1),
(27, 'İçerik Girişi', 'Elektronik sayfasında bulunan bilgisayar kategorisine ürün girişi yapılacak. Adet: 100', '2021-08-28 16:55', '2021-08-28 16:58', 28, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `user_id` int(20) NOT NULL,
  `fullname` varchar(120) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `temp_password` varchar(100) DEFAULT NULL,
  `user_role` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`user_id`, `fullname`, `username`, `email`, `password`, `temp_password`, `user_role`) VALUES
(1, 'Admin', 'admin', 'admin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, 1),
(28, 'Berkay', 'berkay', 'berkay@gmail.com', '6c90d53a733685f8838844d338c34053', '', 2),
(29, 'test', 'test', 'test@gmail.com', '22aae18536ef0eaf4c4fd8fa0d2f6984', '1593871', 2),
(30, 'Ayşegül Ç', 'aysegul', 'aysegul01@gmail.com', 'a298dfb1939f1a53f727ff79f27baa0c', '8031188', 2),
(31, 'Mehmet K', 'mehmet', 'mehmet06@gmail.com', 'c5a9ed8ee2931cd25f38b4087eb88108', '2965570', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance_info`
--
ALTER TABLE `attendance_info`
  ADD PRIMARY KEY (`aten_id`);

--
-- Indexes for table `task_info`
--
ALTER TABLE `task_info`
  ADD PRIMARY KEY (`task_id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance_info`
--
ALTER TABLE `attendance_info`
  MODIFY `aten_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `task_info`
--
ALTER TABLE `task_info`
  MODIFY `task_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `user_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
