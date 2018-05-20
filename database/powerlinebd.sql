-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 20, 2018 at 04:01 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `powerlinebd`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_details`
--

DROP TABLE IF EXISTS `admin_details`;
CREATE TABLE `admin_details` (
  `sl_num` bigint(20) UNSIGNED NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `admin_type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `designation` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `department` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `contact_number` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `timer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin_details`
--

INSERT INTO `admin_details` (`sl_num`, `admin_id`, `branch_id`, `admin_type`, `name`, `gender`, `designation`, `department`, `contact_number`, `timer_id`) VALUES
(1, 898134556, 1568829822, 'finance_user', 'Test2', 'Male', 'Managing Director', 'Test Dept', '4554', 586380511),
(2, 1109885108, 118750197, 'finance_user', 'Test3', 'Male', 'Test Desig', 'Test Dept', '8778778', 555376270),
(3, 719546423, 118750197, 'finance_user', 'Test4', 'Male', 'Test Desig', 'Test Dept', '4444', 1301017427),
(7, 707485416, 118750197, 'finance_user', 'Test5', 'Male', 'Test Desig', 'Test Dept', '433445', 2085795140),
(11, 1754315326, 118750197, 'business_user', 'Test6', 'Female', 'Test Desig', 'Test Dept', '433445', 188365342),
(14, 1980363788, 118750197, 'finance_user', 'Pritom', 'Male', 'Executive', 'IT', '01732844253', 2027745267),
(17, 1332674017, 118750197, 'super_admin', 'Sam Bilings', 'Male', 'Executive', 'Marketing', '01732844253', 304374587);

-- --------------------------------------------------------

--
-- Table structure for table `creation_details`
--

DROP TABLE IF EXISTS `creation_details`;
CREATE TABLE `creation_details` (
  `sl_num` int(11) NOT NULL,
  `timer_id` int(11) DEFAULT NULL,
  `creation_date` text COLLATE utf8_unicode_ci NOT NULL,
  `creation_time` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `creation_details`
--

INSERT INTO `creation_details` (`sl_num`, `timer_id`, `creation_date`, `creation_time`) VALUES
(1, 0, '2018/05/19', '10:02:12pm'),
(2, 1631707538, '2018/05/19', '10:03:14pm'),
(3, 139050527, '2018/05/19', '10:14:42pm'),
(4, 1037202936, '2018/05/19', '10:15:27pm'),
(5, 1887119786, '2018/05/19', '11:08:01pm'),
(6, 1308733153, '2018/05/19', '11:15:27pm'),
(7, 858683037, '2018/05/19', '11:16:06pm'),
(8, 433860748, '2018/05/19', '11:16:53pm'),
(9, 605584841, '2018/05/19', '11:20:32pm'),
(10, 2142371357, '2018/05/19', '11:21:29pm'),
(11, 1321687697, '2018/05/19', '11:24:58pm'),
(12, 1421439282, '2018/05/20', '11:06:41am'),
(13, 1484654581, '2018/05/20', '12:31:51pm'),
(14, 367599021, '2018/05/20', '12:45:44pm'),
(15, 586380511, '2018/05/20', '12:52:12pm'),
(16, 555376270, '2018/05/20', '12:59:55pm'),
(17, 1918734750, '2018/05/20', '01:01:05pm'),
(18, 1301017427, '2018/05/20', '01:24:52pm'),
(19, 1445309191, '2018/05/20', '01:32:26pm'),
(20, 2026871876, '2018/05/20', '01:37:55pm'),
(21, 985514545, '2018/05/20', '01:41:06pm'),
(22, 866058002, '2018/05/20', '01:51:21pm'),
(23, 2145812881, '2018/05/20', '01:53:13pm'),
(24, 312287833, '2018/05/20', '02:05:42pm'),
(25, 1787788589, '2018/05/20', '02:11:24pm'),
(26, 1723131247, '2018/05/20', '02:12:36pm'),
(27, 1633394449, '2018/05/20', '02:16:05pm'),
(28, 1522018961, '2018/05/20', '02:53:23pm'),
(29, 803599642, '2018/05/20', '02:54:21pm'),
(30, 509233017, '2018/05/20', '02:57:18pm'),
(31, 2085795140, '2018/05/20', '02:58:18pm'),
(32, 292226647, '2018/05/20', '02:58:49pm'),
(33, 2097147760, '2018/05/20', '03:02:03pm'),
(34, 562118127, '2018/05/20', '03:02:40pm'),
(35, 554028150, '2018/05/20', '03:04:09pm'),
(36, 188365342, '2018/05/20', '03:05:24pm'),
(37, 571084362, '2018/05/20', '03:36:21pm'),
(38, 1701784671, '2018/05/20', '03:37:55pm'),
(39, 2027745267, '2018/05/20', '03:39:34pm'),
(40, 1830725635, '2018/05/20', '07:38:40pm'),
(41, 1245604994, '2018/05/20', '07:44:46pm'),
(42, 304374587, '2018/05/20', '07:55:43pm');

-- --------------------------------------------------------

--
-- Table structure for table `login_info`
--

DROP TABLE IF EXISTS `login_info`;
CREATE TABLE `login_info` (
  `sl_num` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` text COLLATE utf8_unicode_ci NOT NULL,
  `rememberme_token` text COLLATE utf8_unicode_ci NOT NULL,
  `user_type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `login_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `login_info`
--

INSERT INTO `login_info` (`sl_num`, `user_id`, `email`, `password`, `rememberme_token`, `user_type`, `login_status`) VALUES
(1, 69725902, 'test@gmail.com', '$2y$10$sowG5bp2iX87smdZnJRp1ewgoIixhPMWw8g7qGcUXgMlyppnP59ba', '0', 'admin', 0),
(2, 719546423, 'test4@gmail.com', '$2y$10$2UcEjAF4vHhfyV9CYoQvCO./gk3dC1l4rzLYiOyT4/bQlPxcYutm.', '0', 'admin', 0),
(7, 707485416, 'test5@gmail.com', '$2y$10$vjk2smI3tPw/KGtMRAPRDOLTYQQcWYbbcTSeaJFaCt7cKinBCkV3y', '0', 'admin', 0),
(11, 1754315326, 'test6@gmail.com', '$2y$10$31abRq/GjBGm.wfCaMfeh.5Sm6FYlgFP.UHW.gOXo3lc7HXLpd8oe', '0', 'admin', 0),
(14, 1980363788, 'pritom@bylc.org', '$2y$10$mbqdbl8k97JXRkVhi6J6ReHACKQlCrRYRIqpq3si7e3hz5WeW9ER6', '0', 'admin', 0),
(17, 1332674017, 'sam@gmail.com', '$2y$11$iRmyZ/N2OMCA3l06Fa3IM.btcpd.6Z3gt6RJIQBFOXAEZfMtndwyy', '0', 'admin', 0);

-- --------------------------------------------------------

--
-- Table structure for table `login_log`
--

DROP TABLE IF EXISTS `login_log`;
CREATE TABLE `login_log` (
  `sl_num` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `public_ip` text COLLATE utf8_unicode_ci NOT NULL,
  `timer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log_report`
--

DROP TABLE IF EXISTS `log_report`;
CREATE TABLE `log_report` (
  `sl_num` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `log_report` text COLLATE utf8_unicode_ci NOT NULL,
  `timer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `office_branch`
--

DROP TABLE IF EXISTS `office_branch`;
CREATE TABLE `office_branch` (
  `sl_num` bigint(20) UNSIGNED NOT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `contact_number` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `timer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `office_branch`
--

INSERT INTO `office_branch` (`sl_num`, `branch_id`, `name`, `address`, `email`, `contact_number`, `timer_id`) VALUES
(1, 118750197, 'Collabo', 'road#08, house no#04(1st floor), Kallayanpur', 'pritom.saan@gmail.com', '433445', 1321687697),
(2, 1568829822, 'DBShine', '44/2 Derbyshire, London, UK', 'info@dbshine.com', '8997688876', 1421439282);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_details`
--
ALTER TABLE `admin_details`
  ADD PRIMARY KEY (`sl_num`),
  ADD UNIQUE KEY `sl_num` (`sl_num`);

--
-- Indexes for table `creation_details`
--
ALTER TABLE `creation_details`
  ADD PRIMARY KEY (`sl_num`);

--
-- Indexes for table `login_info`
--
ALTER TABLE `login_info`
  ADD PRIMARY KEY (`sl_num`),
  ADD UNIQUE KEY `sl_num` (`sl_num`);

--
-- Indexes for table `login_log`
--
ALTER TABLE `login_log`
  ADD PRIMARY KEY (`sl_num`),
  ADD UNIQUE KEY `sl_num` (`sl_num`);

--
-- Indexes for table `log_report`
--
ALTER TABLE `log_report`
  ADD PRIMARY KEY (`sl_num`),
  ADD UNIQUE KEY `sl_num` (`sl_num`);

--
-- Indexes for table `office_branch`
--
ALTER TABLE `office_branch`
  ADD UNIQUE KEY `sl_num` (`sl_num`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_details`
--
ALTER TABLE `admin_details`
  MODIFY `sl_num` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `creation_details`
--
ALTER TABLE `creation_details`
  MODIFY `sl_num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `login_info`
--
ALTER TABLE `login_info`
  MODIFY `sl_num` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `login_log`
--
ALTER TABLE `login_log`
  MODIFY `sl_num` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_report`
--
ALTER TABLE `log_report`
  MODIFY `sl_num` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `office_branch`
--
ALTER TABLE `office_branch`
  MODIFY `sl_num` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
