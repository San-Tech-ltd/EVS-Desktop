-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2021 at 01:04 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testingdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `equipments`
--

CREATE TABLE `equipments` (
  `barcode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `serialnumber` varchar(255) NOT NULL,
  `price` int(255) NOT NULL,
  `owner` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `equipments`
--

INSERT INTO `equipments` (`barcode`, `name`, `serialnumber`, `price`, `owner`) VALUES
('test1', 'test1', 'test15362', 12345, 'Personal Device'),
('13113bn', '132j123d', 'dxibajklas', 12334, 'Personal Device'),
('hello', 'plz', 'let me in ', 12334, 'Personal Device'),
('test1', 'test12', 'test123', 1343423, 'Personal Device'),
('129139x', 'jsddnkjd', 'hwqjdbqjkbqw12', 13231, 'james'),
('one', 'more', 'test', 12443561, 'Institute Device'),
('1', '1', '1', 1, 'Personal Device'),
('2', '2', '2', 2, 'Personal Device'),
('3', '3', '3', 3, 'Institute Device'),
('5', '5', '5', 5, 'Institute Device'),
('qwerty', 'laptoop', '1256dxsv', 132711, 'Institute Device'),
('qwqwoeqw', 'wiqwnioq', 'snjsodip', 1234, 'Institute Device');

-- --------------------------------------------------------

--
-- Table structure for table `noid_visitors`
--

CREATE TABLE `noid_visitors` (
  `fullname` varchar(255) NOT NULL,
  `phonenumber` varchar(255) DEFAULT NULL,
  `reason` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `noid_visitors`
--

INSERT INTO `noid_visitors` (`fullname`, `phonenumber`, `reason`) VALUES
('test1', 'test1', 'ID LOST'),
('john', '0987654', 'FOREIGNER'),
('tes2', 'test2', 'UNDER AGE'),
('test4', 'test4', 'FORGOT  IT'),
('test1 test2', '098765432', 'ID LOST'),
('kagabo', '078820794239', 'FORGOT  IT'),
('kagabo', '0912818109', 'UNDER AGE'),
('shema', '07238738923', 'FORGOT  IT');

-- --------------------------------------------------------

--
-- Table structure for table `system_users`
--

CREATE TABLE `system_users` (
  `idno` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `phonenumber` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_users`
--

INSERT INTO `system_users` (`idno`, `fullname`, `phonenumber`, `username`, `password`, `role`) VALUES
('test', 'test', 'test', 'test', 'test', 'administrator'),
('next', 'next', 'next', 'next', 'next', 'administrator'),
('hom', 'hom', 'hom', 'hom', 'hom', 'administrator'),
('123456789', 'tom', '07548767896', 'tom1', '1234', 'security officer'),
('12', '12', '12', '12', '12', 'administrator'),
('123556', 'jackson', '0789892302', 'jackson1', '123', 'administrator'),
('018938091383910', 'security', '07892370', 'security', 'security', 'security officer');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `visitor_id` int(11) NOT NULL,
  `idno` varchar(255) NOT NULL,
  `FullName` varchar(255) NOT NULL,
  `Issueddate` varchar(255) NOT NULL,
  `phonenumber` varchar(255) NOT NULL,
  `Time_in` timestamp NOT NULL DEFAULT current_timestamp(),
  `Time_out` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`visitor_id`, `idno`, `FullName`, `Issueddate`, `phonenumber`, `Time_in`, `Time_out`) VALUES
(1, '1199680022868140', 'NZAYINAMBAHOSchadrack', '04/05/2016', '', '2021-04-06 10:52:29', '2021-04-09'),
(2, '1199680022868140', 'NZAYINAMBAHOSchadrack', '04/05/2016', 'q%$iqc% 1996 8 0022868 1 400104052016NZAYINAMBAHOSchadrack1599??Uq54', '2021-04-06 11:04:46', '2021-04-09'),
(3, '1199680022868140', 'NZAYINAMBAHOSchadrack', '04/05/2016', '07884363527', '2021-04-06 11:16:39', '2021-04-09'),
(4, '1199680022868140', 'NZAYINAMBAHOSchadrack', '04/05/2016', 'q%$iqc% 1996 8 0022868 1 400104052016NZAYINAMBAHOSchadrack1599??Uq54', '2021-04-06 11:20:30', '2021-04-09'),
(5, '1199680022868140', 'NZAYINAMBAHOSchadrack', '04/05/2016', 'q%$iqc% 1996 8 0022868 1 400104052016NZAYINAMBAHOSchadrack1599??Uq54', '2021-04-06 11:21:25', '2021-04-09'),
(6, '1199680022868140', 'NZAYINAMBAHOSchadrack', '04/05/2016', 'q%$iqc% 1996 8 0022868 1 400104052016NZAYINAMBAHOSchadrack1599??Uq54', '2021-04-06 11:26:23', '2021-04-09'),
(7, '1199680192721033', 'NGABONZIZAJackson', '07/07/2015', '0788883762', '2021-04-06 13:39:56', '2021-04-09'),
(8, '1199680192721033', 'NGABONZIZAJackson', '07/07/2015', '0788883762', '2021-04-06 13:42:28', '2021-04-09'),
(9, '1199680192721033', 'NGABONZIZAJackson', '07/07/2015', '0788883762', '2021-04-06 13:43:41', '2021-04-09'),
(10, '1199680192721033', 'NGABONZIZAJackson', '07/07/2015', '0788883762', '2021-04-08 08:23:17', '2021-04-09'),
(11, '1199370183580016', 'KABATESIFaith', '18/11/2013', '0788883762', '2021-04-08 11:56:11', '2021-04-09'),
(12, '1199680192721033', 'NGABONZIZAJackson', '07/07/2015', '0788883762', '2021-04-08 11:57:26', '2021-04-09'),
(13, '1199680192721033', 'NGABONZIZAJackson', '07/07/2015', '0788883762', '2021-04-08 11:59:00', '2021-04-09'),
(14, '1199370183580016', 'KABATESIFaith', '18/11/2013', '0788883762', '2021-04-08 12:00:27', '2021-04-09'),
(15, '1199370183580016', 'KABATESIFaith', '18/11/2013', '078834282', '2021-04-08 12:45:32', '2021-04-09'),
(16, '1199680192721033', 'NGABONZIZAJackson', '07/07/2015', '078834282', '2021-04-08 20:21:27', '2021-04-09'),
(17, '1199370183580016', 'KABATESIFaith', '18/11/2013', '078834282', '2021-04-08 20:23:14', '2021-04-09'),
(18, '1199680192721033', 'NGABONZIZAJackson', '07/07/2015', '078834282', '2021-04-08 20:27:32', '2021-04-09'),
(19, '1199680192721033', 'NGABONZIZAJackson', '07/07/2015', '0788445849', '2021-04-08 20:29:37', '2021-04-09'),
(20, '1199680192721033', 'NGABONZIZAJackson', '07/07/2015', '0786765746122', '2021-04-08 20:40:03', '2021-04-09'),
(21, '1199680192721033', 'NGABONZIZAJackson', '07/07/2015', '00000', '2021-04-08 20:45:48', '2021-04-09'),
(22, '1199680192721033', 'NGABONZIZAJackson', '07/07/2015', '0909', '2021-04-08 20:48:22', '2021-04-09'),
(23, '1199680192721033', 'NGABONZIZAJackson', '07/07/2015', '99999', '2021-04-08 20:48:46', '2021-04-09'),
(24, '1199680192721033', 'NGABONZIZAJackson', '07/07/2015', '07236238723', '2021-04-09 13:51:28', NULL),
(25, '1199680192721033', 'NGABONZIZAJackson', '07/07/2015', '078893463', '2021-04-12 06:49:34', NULL),
(26, '1199680192721033', 'NGABONZIZAJackson', '07/07/2015', '0987098', '2021-04-12 09:45:40', NULL),
(27, '1199680192721033', 'NGABONZIZAJackson', '07/07/2015', '0090', '2021-04-12 09:52:15', NULL),
(28, '1199680192721033', 'NGABONZIZAJackson', '07/07/2015', '090', '2021-04-12 09:54:13', NULL),
(29, '1199680192721033', 'NGABONZIZAJackson', '07/07/2015', '7777777', '2021-04-12 09:54:43', NULL),
(30, '1199680192721033', 'NGABONZIZAJackson', '07/07/2015', '1111111111', '2021-04-12 10:02:08', NULL),
(31, '1199680192721033', 'NGABONZIZAJackson', '07/07/2015', '222222222', '2021-04-12 10:03:33', NULL),
(32, '1199680192721033', 'NGABONZIZAJackson', '07/07/2015', '33333333', '2021-04-12 10:04:48', NULL),
(33, '1199680192721033', 'NGABONZIZAJackson', '07/07/2015', '444444444', '2021-04-12 10:13:19', NULL),
(34, '1199680192721033', 'NGABONZIZAJackson', '07/07/2015', '00000000000', '2021-04-12 10:54:50', NULL),
(35, '1199680192721033', 'NGABONZIZAJackson', '07/07/2015', '1234567890', '2021-04-12 10:56:03', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`visitor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `visitor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
