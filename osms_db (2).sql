-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2021 at 09:50 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `osms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin_tb`
--

CREATE TABLE `adminlogin_tb` (
  `a_login_id` int(11) NOT NULL,
  `a_name` varchar(60) COLLATE utf8_bin NOT NULL,
  `a_email` varchar(60) COLLATE utf8_bin NOT NULL,
  `a_password` varchar(60) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `adminlogin_tb`
--

INSERT INTO `adminlogin_tb` (`a_login_id`, `a_name`, `a_email`, `a_password`) VALUES
(1, 'monish', 'monish@gmail.com', 'monish');

-- --------------------------------------------------------

--
-- Table structure for table `assets_tb`
--

CREATE TABLE `assets_tb` (
  `pid` int(11) NOT NULL,
  `pname` varchar(60) COLLATE utf8_bin NOT NULL,
  `pdop` date NOT NULL,
  `pava` int(11) NOT NULL,
  `ptotal` int(11) NOT NULL,
  `poriginalcost` int(11) NOT NULL,
  `psellingcost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `assets_tb`
--

INSERT INTO `assets_tb` (`pid`, `pname`, `pdop`, `pava`, `ptotal`, `poriginalcost`, `psellingcost`) VALUES
(1, 'Keyboard', '2018-10-03', 3, 10, 500, 700),
(4, 'Rode Mic', '2018-10-20', 7, 10, 15000, 18000);

-- --------------------------------------------------------

--
-- Table structure for table `assignwork_tb`
--

CREATE TABLE `assignwork_tb` (
  `rno` int(11) NOT NULL,
  `request_id` int(11) NOT NULL,
  `request_info` text COLLATE utf8_bin NOT NULL,
  `request_desc` text COLLATE utf8_bin NOT NULL,
  `requester_name` varchar(60) COLLATE utf8_bin NOT NULL,
  `requester_add1` text COLLATE utf8_bin NOT NULL,
  `requester_add2` text COLLATE utf8_bin NOT NULL,
  `requester_city` varchar(60) COLLATE utf8_bin NOT NULL,
  `requester_state` varchar(60) COLLATE utf8_bin NOT NULL,
  `requester_zip` int(11) NOT NULL,
  `requester_email` varchar(60) COLLATE utf8_bin NOT NULL,
  `requester_mobile` bigint(11) NOT NULL,
  `assign_tech` varchar(60) COLLATE utf8_bin NOT NULL,
  `assign_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `assignwork_tb`
--

INSERT INTO `assignwork_tb` (`rno`, `request_id`, `request_info`, `request_desc`, `requester_name`, `requester_add1`, `requester_add2`, `requester_city`, `requester_state`, `requester_zip`, `requester_email`, `requester_mobile`, `assign_tech`, `assign_date`) VALUES
(37, 2, 'mobile problen', 'screen', 'payal', 'itwari', 'itwari1', 'nagpur', 'maharashtra', 440002, 'monish@gmail.com', 9960791240, 'payal', '2021-02-24');

-- --------------------------------------------------------

--
-- Table structure for table `customer_tb`
--

CREATE TABLE `customer_tb` (
  `custid` int(11) NOT NULL,
  `custname` varchar(60) COLLATE utf8_bin NOT NULL,
  `custadd` varchar(60) COLLATE utf8_bin NOT NULL,
  `cpname` varchar(60) COLLATE utf8_bin NOT NULL,
  `cpquantity` int(11) NOT NULL,
  `cpeach` int(11) NOT NULL,
  `cptotal` int(11) NOT NULL,
  `cpdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `customer_tb`
--

INSERT INTO `customer_tb` (`custid`, `custname`, `custadd`, `cpname`, `cpquantity`, `cpeach`, `cptotal`, `cpdate`) VALUES
(1, 'Shukla', 'Bokaro', 'Mouse', 1, 600, 600, '2018-10-13'),
(2, 'Pandey ji', 'Ranchi', 'Mouse', 2, 600, 600, '2018-10-13'),
(3, 'Musaddi Lal', 'Bokaro', 'Mouse', 5, 600, 3000, '2018-10-13'),
(4, 'Jay Ho', 'Ranchi', 'Mouse', 2, 600, 1200, '2018-10-13'),
(5, 'something', 'somethingadd', 'Mouse', 1, 600, 600, '2018-10-13'),
(6, 'someone', 'someoneadd', 'Keyboard', 1, 500, 500, '2018-10-13'),
(7, 'jay', 'jay ho', 'Keyboard', 1, 500, 500, '2018-10-09'),
(8, 'Jay', 'Bokaro', 'Keyboard', 2, 500, 1000, '2018-10-21'),
(9, 'Kumar', 'Bokaro', 'Keyboard', 1, 500, 500, '2018-10-20'),
(10, 'kkk', 'asdsa', 'Keyboard', 1, 500, 500, '2018-10-20'),
(11, 'Shukla Ji', 'Ranchi', 'Samsung LCD', 1, 12000, 12000, '2018-10-20'),
(19, 'sdsads', 'dasdsa', 'Keyboard', 1, 500, 500, '2018-10-20'),
(20, 'asdas', 'asdsad', 'Keyboard', 1, 500, 500, '2018-10-20'),
(21, 'dsadas', 'asdasd', 'Samsung LCD', 1, 12000, 12000, '2018-10-20'),
(22, 'sdfsdf', 'dfsdf', 'Samsung LCD', 1, 12000, 12000, '2018-10-20'),
(23, 'Ramu', 'sadsad', 'Samsung LCD', 1, 12000, 12000, '2018-10-20'),
(24, 'gfdgfdg', 'fgfdgfdg', 'Samsung LCD', 1, 12000, 12000, '2018-10-20'),
(25, 'rrr', 'fgdf', 'Mouse', 1, 600, 600, '2018-10-20'),
(26, 'Jay', 'ranchi', 'Samsung LCD', 1, 12000, 12000, '2018-10-20'),
(27, 'dfsdfsd', 'sdfdsf', 'Mouse', 1, 600, 600, '2018-10-20'),
(28, 'Kunal', 'Ranchi', 'Rode Mic', 1, 18000, 18000, '2018-10-20'),
(29, 'monish', 'itwari', 'Rode Mic', 2, 18000, 36000, '2021-02-13');

-- --------------------------------------------------------

--
-- Table structure for table `requesterlogin_tb`
--

CREATE TABLE `requesterlogin_tb` (
  `r_login_id` int(11) NOT NULL,
  `r_name` varchar(60) COLLATE utf8_bin NOT NULL,
  `r_email` varchar(60) COLLATE utf8_bin NOT NULL,
  `r_password` varchar(60) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `requesterlogin_tb`
--

INSERT INTO `requesterlogin_tb` (`r_login_id`, `r_name`, `r_email`, `r_password`) VALUES
(9, '  Rajesh', 'raj@gmail.com', 'user'),
(11, 'Jay viru ', 'jay@gmail.com', 'jay123'),
(23, 'payal monish p', 'payal@gmail.com', 'payal'),
(29, 'monish', 'monish@gmail.com', 'monish'),
(30, 'hardik', 'hardik@gmail.cpm', 'hardih'),
(36, 'samay', 'samay@gmail.com', 'samay'),
(37, 'tanmay', 'tanmay@gmail.com', 'tanmay'),
(38, 'harsh', 'harsh@gmail.com', 'harsh'),
(39, 'chinmay', 'chinmay@gmail.com', 'chinmay'),
(40, 'kautuk', 'kautuk@gmail.com', 'kautuk'),
(41, 'kautuk', 'kautuk@gmail.com', 'kautuk'),
(42, 'kavya', 'kavya@gmail.com', 'kavya'),
(43, 'anubhav', 'anibhav@gmail.com', 'anubhav');

-- --------------------------------------------------------

--
-- Table structure for table `submitrequest_tb`
--

CREATE TABLE `submitrequest_tb` (
  `request_id` int(11) NOT NULL,
  `request_info` text COLLATE utf8_bin NOT NULL,
  `request_desc` text COLLATE utf8_bin NOT NULL,
  `requester_name` varchar(60) COLLATE utf8_bin NOT NULL,
  `requester_add1` text COLLATE utf8_bin NOT NULL,
  `requester_add2` text COLLATE utf8_bin NOT NULL,
  `requester_city` varchar(60) COLLATE utf8_bin NOT NULL,
  `requester_state` varchar(60) COLLATE utf8_bin NOT NULL,
  `requester_zip` int(11) NOT NULL,
  `requester_email` varchar(60) COLLATE utf8_bin NOT NULL,
  `requester_mobile` bigint(11) NOT NULL,
  `request_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `submitrequest_tb`
--

INSERT INTO `submitrequest_tb` (`request_id`, `request_info`, `request_desc`, `requester_name`, `requester_add1`, `requester_add2`, `requester_city`, `requester_state`, `requester_zip`, `requester_email`, `requester_mobile`, `request_date`) VALUES
(1, 'mobile problen', 'screen', 'payal', 'itwari', 'itwari1', 'nagpur', 'maharashtra', 440002, 'monish@gmail.com', 9960791240, '2021-02-24'),
(2, 'lapi run good', 'internate', 'monish', 'itwari', 'itwari1', 'nagpur', 'maharashtra', 440002, 'monish@gmail.com', 9960791240, '2021-02-24'),
(3, 'sound system', 'low sound', 'rahil', 'itwari', 'itwari1', 'nagpur', 'maharashtra', 440002, 'monish@gmail.com', 9960791240, '2021-02-08'),
(65, 'tab no t work well', 'tab repair', 'monish', 'itwari', 'itwari1', 'nagpur', 'maharashtra', 440002, 'monish@gmail.com', 9960791240, '2021-03-02');

-- --------------------------------------------------------

--
-- Table structure for table `technician_tb`
--

CREATE TABLE `technician_tb` (
  `empid` int(11) NOT NULL,
  `empName` varchar(60) COLLATE utf8_bin NOT NULL,
  `empCity` varchar(60) COLLATE utf8_bin NOT NULL,
  `empMobile` bigint(11) NOT NULL,
  `empEmail` varchar(60) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `technician_tb`
--

INSERT INTO `technician_tb` (`empid`, `empName`, `empCity`, `empMobile`, `empEmail`) VALUES
(14, 'monish payal', 'ngp', 9960791240, 'monish@gmail.com'),
(16, 'payal', 'nagpur', 9960791240, 'monish@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlogin_tb`
--
ALTER TABLE `adminlogin_tb`
  ADD PRIMARY KEY (`a_login_id`);

--
-- Indexes for table `assets_tb`
--
ALTER TABLE `assets_tb`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `assignwork_tb`
--
ALTER TABLE `assignwork_tb`
  ADD PRIMARY KEY (`rno`);

--
-- Indexes for table `customer_tb`
--
ALTER TABLE `customer_tb`
  ADD PRIMARY KEY (`custid`);

--
-- Indexes for table `requesterlogin_tb`
--
ALTER TABLE `requesterlogin_tb`
  ADD PRIMARY KEY (`r_login_id`);

--
-- Indexes for table `submitrequest_tb`
--
ALTER TABLE `submitrequest_tb`
  ADD PRIMARY KEY (`request_id`);

--
-- Indexes for table `technician_tb`
--
ALTER TABLE `technician_tb`
  ADD PRIMARY KEY (`empid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminlogin_tb`
--
ALTER TABLE `adminlogin_tb`
  MODIFY `a_login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assets_tb`
--
ALTER TABLE `assets_tb`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `assignwork_tb`
--
ALTER TABLE `assignwork_tb`
  MODIFY `rno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `customer_tb`
--
ALTER TABLE `customer_tb`
  MODIFY `custid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `requesterlogin_tb`
--
ALTER TABLE `requesterlogin_tb`
  MODIFY `r_login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `submitrequest_tb`
--
ALTER TABLE `submitrequest_tb`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `technician_tb`
--
ALTER TABLE `technician_tb`
  MODIFY `empid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
