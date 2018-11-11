-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2018 at 05:27 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `allowance`
--

CREATE TABLE `allowance` (
  `id` int(10) NOT NULL,
  `empId` int(11) NOT NULL,
  `firstName` varchar(200) NOT NULL,
  `surname` varchar(200) NOT NULL,
  `basicSalary` int(11) DEFAULT NULL,
  `overtime` int(11) NOT NULL,
  `medical` varchar(200) NOT NULL,
  `bonus` varchar(200) NOT NULL,
  `other` varchar(200) NOT NULL,
  `rate` int(11) DEFAULT NULL,
  `totalAllowance` int(11) NOT NULL,
  `createdBy` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `allowance`
--

INSERT INTO `allowance` (`id`, `empId`, `firstName`, `surname`, `basicSalary`, `overtime`, `medical`, `bonus`, `other`, `rate`, `totalAllowance`, `createdBy`) VALUES
(4, 28, 'kalana', 'ranawaka', 50000, 5, '500', '1000', '0', 250, 3375, 'admin'),
(5, 29, 'dilan', 'mudiyanselage', 20000, 3, '0', '500', '0', 100, 950, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `audit`
--

CREATE TABLE `audit` (
  `auditId` int(11) NOT NULL,
  `empId` int(11) NOT NULL,
  `date` varchar(200) DEFAULT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `audit`
--

INSERT INTO `audit` (`auditId`, `empId`, `date`, `status`) VALUES
(1, 4, 'Nov 7, 2018 / Nov 7, 2018', 'Logged In'),
(2, 4, '22:16:39 / Nov 7, 2018', 'Logged In'),
(3, 3, '22:25:04 / Nov 7, 2018', 'Logged In'),
(4, 3, '22:25:07 / Nov 7, 2018', 'Logged out'),
(5, 4, '22:38:01 / Nov 7, 2018', 'Logged In'),
(6, 4, '03:44:36 / Nov 8, 2018', 'Logged In'),
(7, 3, '03:51:16 / Nov 8, 2018', 'Logged In'),
(8, 4, '04:21:13 / Nov 8, 2018', 'Logged In'),
(9, 4, '04:21:52 / Nov 8, 2018', 'Logged out');

-- --------------------------------------------------------

--
-- Table structure for table `deduction`
--

CREATE TABLE `deduction` (
  `id` int(11) NOT NULL,
  `firstName` varchar(200) NOT NULL,
  `surname` varchar(200) NOT NULL,
  `salary` int(11) NOT NULL,
  `deductionAmount` int(11) NOT NULL,
  `deductionReason` varchar(200) NOT NULL,
  `empId` int(11) NOT NULL,
  `madeBy` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deduction`
--

INSERT INTO `deduction` (`id`, `firstName`, `surname`, `salary`, `deductionAmount`, `deductionReason`, `empId`, `madeBy`) VALUES
(2, 'dilan', 'mudiyanselage', 30000, 5000, 'family problem', 29, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `staffinformation`
--

CREATE TABLE `staffinformation` (
  `id` int(100) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `contact` int(11) NOT NULL,
  `houseNo` varchar(10) NOT NULL,
  `address1` varchar(100) NOT NULL,
  `address2` varchar(100) NOT NULL,
  `postCode` int(10) DEFAULT NULL,
  `gender` varchar(10) NOT NULL,
  `department` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `dateHired` varchar(10) NOT NULL,
  `basicSalary` varchar(10) NOT NULL,
  `jobTitle` varchar(200) NOT NULL,
  `status` varchar(100) NOT NULL,
  `image` blob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staffinformation`
--

INSERT INTO `staffinformation` (`id`, `firstName`, `surname`, `dob`, `contact`, `houseNo`, `address1`, `address2`, `postCode`, `gender`, `department`, `designation`, `dateHired`, `basicSalary`, `jobTitle`, `status`, `image`) VALUES
(28, 'kalana', 'ranawaka', '15/10/1995', 773381752, '61', 'pamunuwa', 'maharagama', 10280, 'Male', 'sales', 'dont know', '07/11/2018', '50000', 'developer', 'active', NULL),
(29, 'dilan', 'mudiyanselage', '01/08/1995', 776441015, '56', 'godagama', 'meegoda', 125, 'Male', 'sales', 'dont know', '06/11/2018', '30000', 'clerk', 'active', NULL),
(30, 'pawith', 'deraniyagalage', '14/01/1998', 78545978, '90`', 'pannipitiya', 'kottaw', 10290, 'Female', 'sales', 'know', '18/11/2018', '10000', 'assistant', 'active', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `division` varchar(200) DEFAULT NULL,
  `empId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `division`, `empId`) VALUES
(3, 'admin', '123', 'Admin', 0),
(4, 'kalana', '456', 'admin', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allowance`
--
ALTER TABLE `allowance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audit`
--
ALTER TABLE `audit`
  ADD PRIMARY KEY (`auditId`);

--
-- Indexes for table `deduction`
--
ALTER TABLE `deduction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staffinformation`
--
ALTER TABLE `staffinformation`
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
-- AUTO_INCREMENT for table `allowance`
--
ALTER TABLE `allowance`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `audit`
--
ALTER TABLE `audit`
  MODIFY `auditId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `deduction`
--
ALTER TABLE `deduction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `staffinformation`
--
ALTER TABLE `staffinformation`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
