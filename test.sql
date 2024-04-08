-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2023 at 06:34 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `agent`
--

CREATE TABLE `agent` (
  `Agent_code` varchar(10) NOT NULL,
  `Agent_name` varchar(150) NOT NULL,
  `DOB` date NOT NULL,
  `Address` varchar(80) NOT NULL,
  `Pincode` int(6) NOT NULL,
  `Branch` varchar(50) NOT NULL,
  `Contact_Num` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `agent`
--

INSERT INTO `agent` (`Agent_code`, `Agent_name`, `DOB`, `Address`, `Pincode`, `Branch`, `Contact_Num`) VALUES
('000', 'sneha', '2002-06-06', 'Nargol', 334213, 'umbergaon', 6789902312),
('007', 'sanyu', '2002-06-24', 'umbergaon', 396171, 'umb', 7328373772);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Customer_Num` bigint(10) NOT NULL,
  `First_Name` varchar(50) NOT NULL,
  `Middle_Name` varchar(50) NOT NULL,
  `Last_Name` varchar(50) NOT NULL,
  `Gender` char(1) NOT NULL,
  `DOB` date NOT NULL,
  `Address` varchar(70) NOT NULL,
  `Pincode` int(6) NOT NULL,
  `Contact_Number` bigint(10) NOT NULL,
  `Mother_Name` varchar(150) NOT NULL,
  `Mother_Status` varchar(10) NOT NULL,
  `Father_Name` varchar(150) NOT NULL,
  `Father_Status` varchar(10) NOT NULL,
  `Marital_status` char(1) NOT NULL,
  `Spouse` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Customer_Num`, `First_Name`, `Middle_Name`, `Last_Name`, `Gender`, `DOB`, `Address`, `Pincode`, `Contact_Number`, `Mother_Name`, `Mother_Status`, `Father_Name`, `Father_Status`, `Marital_status`, `Spouse`) VALUES
(10023, 'Vive', 'Manish', 'Oberoi', 'M', '1984-06-23', 'Vapi 430', 339938, 7829293722, 'Seema', 'A', 'Manish', 'A', 'M', 'Priyanka');

-- --------------------------------------------------------

--
-- Table structure for table `enquiries`
--

CREATE TABLE `enquiries` (
  `name` varchar(30) NOT NULL,
  `mobile` int(10) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enquiries`
--

INSERT INTO `enquiries` (`name`, `mobile`, `message`) VALUES
('Sanyu', 1234567890, 'This is a text message.'),
('Test_1', 2147483647, 'abc'),
('SANYU', 2147483647, 'I want to enquire about car insurance'),
('sdfs', 2147483647, 'hello'),
('OM RAHAT', 2147483647, 'I want to enquire about the acidental damage policy'),
('sdfs', 783838322, 'jshsisoakd'),
('Venkatesh Yadav', 2147483647, 'Peace Out!');

-- --------------------------------------------------------

--
-- Table structure for table `paid_premium`
--

CREATE TABLE `paid_premium` (
  `Receipt_Num` int(23) NOT NULL,
  `Receipt_Date` date NOT NULL,
  `Policy_Num` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `paid_premium`
--

INSERT INTO `paid_premium` (`Receipt_Num`, `Receipt_Date`, `Policy_Num`) VALUES
(1670260284, '2022-12-05', 678763897);

-- --------------------------------------------------------

--
-- Table structure for table `policy_data`
--

CREATE TABLE `policy_data` (
  `Policy_Num` int(15) NOT NULL,
  `Customer_Num` bigint(10) NOT NULL,
  `Agent_code` varchar(10) NOT NULL,
  `DOC` date NOT NULL,
  `Product` varchar(50) NOT NULL,
  `Sum_Assured` int(10) NOT NULL,
  `Pay_Period` int(2) NOT NULL,
  `Ins_Period` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `policy_data`
--

INSERT INTO `policy_data` (`Policy_Num`, `Customer_Num`, `Agent_code`, `DOC`, `Product`, `Sum_Assured`, `Pay_Period`, `Ins_Period`) VALUES
(678763897, 10023, '007', '2022-02-23', 'Life Insurance', 4999, 5, 8);

-- --------------------------------------------------------

--
-- Table structure for table `premium`
--

CREATE TABLE `premium` (
  `Policy_Num` int(15) NOT NULL,
  `Premium` int(10) NOT NULL,
  `Mode` varchar(3) NOT NULL,
  `Last_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `premium`
--

INSERT INTO `premium` (`Policy_Num`, `Premium`, `Mode`, `Last_date`) VALUES
(678763897, 625, 'YLY', '2023-12-05');

-- --------------------------------------------------------

--
-- Table structure for table `unpaid_premium`
--

CREATE TABLE `unpaid_premium` (
  `Policy_Num` int(15) NOT NULL,
  `Fine` int(10) NOT NULL,
  `Lateness` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agent`
--
ALTER TABLE `agent`
  ADD PRIMARY KEY (`Agent_code`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Customer_Num`);

--
-- Indexes for table `paid_premium`
--
ALTER TABLE `paid_premium`
  ADD PRIMARY KEY (`Receipt_Num`),
  ADD KEY `paid_premium_ibfk_1` (`Policy_Num`);

--
-- Indexes for table `policy_data`
--
ALTER TABLE `policy_data`
  ADD PRIMARY KEY (`Policy_Num`),
  ADD KEY `Agent_code` (`Agent_code`),
  ADD KEY `Customer_Num` (`Customer_Num`);

--
-- Indexes for table `premium`
--
ALTER TABLE `premium`
  ADD PRIMARY KEY (`Policy_Num`);

--
-- Indexes for table `unpaid_premium`
--
ALTER TABLE `unpaid_premium`
  ADD PRIMARY KEY (`Policy_Num`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `Customer_Num` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10024;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `paid_premium`
--
ALTER TABLE `paid_premium`
  ADD CONSTRAINT `paid_premium_ibfk_1` FOREIGN KEY (`Policy_Num`) REFERENCES `premium` (`Policy_Num`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `policy_data`
--
ALTER TABLE `policy_data`
  ADD CONSTRAINT `Agent_code` FOREIGN KEY (`Agent_code`) REFERENCES `agent` (`Agent_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Customer_Num` FOREIGN KEY (`Customer_Num`) REFERENCES `customer` (`Customer_Num`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `premium`
--
ALTER TABLE `premium`
  ADD CONSTRAINT `premium_ibfk_1` FOREIGN KEY (`Policy_Num`) REFERENCES `policy_data` (`Policy_Num`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `unpaid_premium`
--
ALTER TABLE `unpaid_premium`
  ADD CONSTRAINT `Policy` FOREIGN KEY (`Policy_Num`) REFERENCES `premium` (`Policy_Num`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
