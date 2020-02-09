-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2019 at 08:36 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scholarship`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `getscholarships` ()  select * from adminupload$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `userid` int(11) NOT NULL,
  `emailid` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`userid`, `emailid`, `password`) VALUES
(1, 'sw@g', 'ss'),
(2, 'dk@g', 'dk');

-- --------------------------------------------------------

--
-- Table structure for table `adminupload`
--

CREATE TABLE `adminupload` (
  `donid` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `eligibility` varchar(20) NOT NULL,
  `category` varchar(10) NOT NULL,
  `phone` int(20) NOT NULL,
  `emailid` varchar(30) NOT NULL,
  `link` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminupload`
--

INSERT INTO `adminupload` (`donid`, `title`, `eligibility`, `category`, `phone`, `emailid`, `link`) VALUES
(4, 'Monash University Alfred Research Alliance Honours', ' Bachelor of Science', 'Merit', 46565232, ' sebs.csu.documents@monash.edu', 'https://applicant.connect.mona'),
(5, 'prerana', '10th', 'talent', 984532, 'prna@edu', 'http://prerana.com'),
(6, 'karepass', '10th or puc passed', 'mean based', 46565232, 'asdas@asdasd', 'asfafaf'),
(7, 'epaas', '1oth', 'mean based', 987, 'la@g', 'asfafaf'),
(8, 'vidhyadhan', 'puc', 'talent', 98745, 'vidya@g', 'sdfsf'),
(9, 'colgate scholarship', 'engineering students', 'mean/ meri', 4587123, 'colgate@edu.in', 'http://colgate.in'),
(10, 'prerana', '10th', 'mean based', 1122, 'gani@g', 'sdgsfdf'),
(11, 'prerana', '10th', 'mean based', 1122, 'gani@g', 'sdgsfdf'),
(12, 'prerana', '10th', 'mean based', 1122, 'gani@g', 'sdgsfdf');

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE `application` (
  `appid` int(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `date` varchar(10) NOT NULL,
  `emailid` varchar(20) NOT NULL,
  `phone` int(20) NOT NULL,
  `gender` char(1) NOT NULL,
  `address` varchar(100) NOT NULL,
  `class10_max` int(5) NOT NULL,
  `class10_marks` int(5) NOT NULL,
  `class10_percent` float NOT NULL,
  `class12_max` int(5) NOT NULL,
  `class12_marks` int(5) NOT NULL,
  `class12_percent` float NOT NULL,
  `adhaar` int(20) NOT NULL,
  `income` varchar(20) NOT NULL,
  `caste` varchar(20) NOT NULL,
  `college` varchar(50) NOT NULL,
  `year` int(4) NOT NULL,
  `stream` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`appid`, `name`, `date`, `emailid`, `phone`, `gender`, `address`, `class10_max`, `class10_marks`, `class10_percent`, `class12_max`, `class12_marks`, `class12_percent`, `adhaar`, `income`, `caste`, `college`, `year`, `stream`) VALUES
(5, '', '0000-00-00', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0, '', '', '', 0, ''),
(7, 'dkkkkk', '2019-11-05', 'asdas@asdasde', 13, 'm', 'asdq', 12, 3, 4, 5, 6, 57, 1234, 'kj', 'ljhf', 'jhgt', 2006, 'cse'),
(8, 'kd', '0000-00-00', 'asdas@asdasd', 12, '', 'asd', 1, 6, 7, 2, 3, 5, 123, 'gfh', 'fgh', 'ags', 2005, 'ise'),
(9, 'deepak', '0000-00-00', 'asdas@asdasd', 455, '', 'fhd', 12, 15, 64, 45, 45, 4, 5, 'fdh', 'ghc', 'df', 2005, 'ggg'),
(10, 'kdwww', '0000-00-00', 'asdas@asdasd', 12245, '', '', 0, 0, 0, 0, 0, 0, 0, '', '', '', 0, ''),
(11, 'kdwww', '0000-00-00', 'asdas@asdasd', 12245, '', 'cvsds', 22, 55, 99, 55, 88, 77, 0, '98', '77', 'sss', 1999, 'unknown'),
(12, 'kdwww', '0000-00-00', 'asdas@asdasd', 12245, '', 'efwe', 54, 0, 0, 0, 0, 0, 0, '', '', '', 0, ''),
(13, 'kdwww', '0000-00-00', 'asdas@asdasd', 12245, '', 'efwe', 54, 0, 0, 0, 0, 0, 0, '', '', '', 0, ''),
(14, 'de', '0000-00-00', 'asdas@asdasd', 0, '', '', 0, 0, 0, 0, 0, 0, 0, '', '', '', 0, ''),
(15, 'de', '0000-00-00', 'asdas@asdasd', 0, '', '', 0, 0, 0, 0, 0, 0, 0, '', '', '', 0, ''),
(16, 'de', '0000-00-00', 'asdas@asdasd', 0, '', '', 0, 0, 0, 0, 0, 0, 0, '', '', '', 0, ''),
(17, 'dkkkkk', '0000-00-00', 'asdas@asdasde', 0, '', '', 0, 0, 0, 0, 0, 0, 0, '', '', '', 0, ''),
(18, 'dkkkkk', '0000-00-00', 'asdas@asdasde', 0, '', '', 0, 0, 0, 0, 0, 0, 0, '', '', '', 0, ''),
(19, '', '0000-00-00', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0, '', '', '', 0, ''),
(20, '', '0000-00-00', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0, '', '', '', 0, ''),
(21, '', '0000-00-00', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0, '', '', '', 0, ''),
(22, 'dkkapse', '0000-00-00', 'dk@g', 12245, '', '', 444, 0, 0, 0, 0, 0, 0, '', '', '', 0, ''),
(23, 'sonu', '0000-00-00', 's@g', 987, '', 'asdwqe', 12, 10, 22, 14, 15, 66, 456, 'yui', 'jkl', 'bnm', 2006, 'ise'),
(24, 'sonu', '0000-00-00', 's@g', 987, '', 'asdwqe', 12, 10, 22, 14, 15, 66, 456, 'yui', 'jkl', 'bnm', 2006, 'ise'),
(41, 'sonudeepu', '', 'sonu@gmail', 154, '', '', 0, 0, 0, 0, 0, 0, 0, '', '', '', 0, ''),
(42, 'sonudeepu', '', 'sonu@gmail', 154, '', '', 0, 0, 0, 0, 0, 0, 0, '', '', '', 0, ''),
(43, 'sonudeepu', '', 'sonu@gmail', 154, '', '', 0, 0, 0, 0, 0, 0, 0, '', '', '', 0, ''),
(48, 'swati', '13/07/1999', 'swatibiradar13799@gm', 2147483647, 'F', 'udgir', 77, 77, 76, 88, 84, 85, 125, 'rd', 'rd', 'sce', 2018, 'ise'),
(49, 'swati', '13/07/1999', 'swatibiradar13799@gm', 2147483647, 'F', 'udgir', 77, 77, 76, 88, 84, 85, 125, 'rd', 'rd', 'sce', 2018, 'ise'),
(50, 'swati', '13/07/1999', 'swatibiradar13799@gm', 2147483647, 'F', 'asdfadf', 77, 88, 99, 88, 77, 88, 456, 'rt', 'rt', 'ww', 2014, 'ise'),
(51, 'swati bira', '', 'swatibiradar1799@gma', 2147483647, 'M', 'adssf', 0, 0, 0, 0, 0, 0, 0, '', '', '', 0, ''),
(52, 'ganesh', '21/09/2011', 'gani@g', 1122, 'M', '', 0, 0, 0, 0, 0, 0, 0, '', '', '', 0, ''),
(53, 'sonudeepu', '', 'sonu@gmail', 154, '', '', 0, 0, 0, 0, 0, 0, 0, '', '', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `applied`
--

CREATE TABLE `applied` (
  `appliedid` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `title` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `applied`
--

INSERT INTO `applied` (`appliedid`, `name`, `emailid`, `title`) VALUES
(1, 'sonu', 's@g', ''),
(3, 'sonu', 's@g', ''),
(4, 'sonu', 's@g', ''),
(5, 'sonu', 's@g', ''),
(6, 'laxmi', 'la@g', ''),
(7, 'laxmi', 'la@g', ''),
(8, 'laxmi', 'la@g', ''),
(9, 'jjjjhhhh', 'ddkk@gg', ''),
(10, 'jjjjhhhh', 'ddkk@gg', ''),
(11, 'abcde', 'sa@gg', ''),
(12, 'abcde', 'sa@gg', ''),
(13, 'abcde', 'sa@gg', ''),
(14, 'kapse', 'kapse@g', ''),
(15, 'kapse', 'kapse@g', ''),
(16, 'kapse', 'kapse@g', ''),
(17, '', '', ''),
(18, 'kapsek', 'kapse@gmail', ''),
(19, '', '', ''),
(20, 'manasa', 'sonu@gmail', 'epaas'),
(21, 'manasa', 'sonu@gmail', 'epaas'),
(22, 'manasa', 'sonu@gmail', 'epaas'),
(23, 'manasa', 'sonu@gmail', 'epaas'),
(24, 'manasa', 'sonu@gmail', 'epaas'),
(25, 'krishna', 'k@g', 'epaas'),
(26, 'kapse', 'kapse@g', ''),
(27, 'kd', 'kd@g', 'prerana'),
(28, 'kd', 'kd@g', 'prerana'),
(30, 'kdd', 'kdd@g', 'loreal scholarship'),
(31, '', '', ''),
(32, 'manasa', 'm@g', 'sch'),
(33, 'swati', 'swatibiradar13799@gmail.com', 'karepass'),
(34, 'swati', 'swatibiradar13799@gmail.com', 'karepass'),
(35, 'swati', 'swatibiradar13799@gmail.com', 'karepass'),
(36, 'swati bira', 'swatibiradar1799@gmail.com', ''),
(37, 'ganesh', 'gani@g', 'loreal schp'),
(38, 'sonu', 'sonu@gmail', 'epaas'),
(39, 'sonu', 'sonu@gmail', 'epaas'),
(40, 'sonu', 'sonu@gmail', 'epaas'),
(41, 'sonu', 'sonu@gmail', 'epaas');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `userid` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `phoneno` int(10) NOT NULL,
  `emailid` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`userid`, `username`, `phoneno`, `emailid`, `password`) VALUES
(1, 'brew', 251, 'wn@g', 'we'),
(2, 'brew', 251, 'wn@g', 'we'),
(3, '', 0, '', ''),
(4, 'deepak', 2147483647, 'kd@g', 'kd'),
(5, 'deepak', 2147483647, 'kd@g', 'kd'),
(6, 'wq', 9845, 'asd@g', 'asd'),
(7, 'sonu', 777, 'sonu@g', '777'),
(8, 'ww', 47, 'as@g', '13'),
(9, 'as', 48, 'aw@g', '22'),
(10, 'student', 121, 'asd@g', 'asd'),
(11, 'deepak', 1212, 'deepak@gmail', 'deepak'),
(55, 'sd', 44, 'i@gmail.com', 'sd'),
(56, 'amar', 123, 'amar@g', 'amar'),
(57, 'amar', 123, 'amar@g', 'amar'),
(58, 'sonu', 111, 'sonu@g', 'sonu');

--
-- Triggers `register`
--
DELIMITER $$
CREATE TRIGGER `backup` AFTER INSERT ON `register` FOR EACH ROW INSERT INTO register_backup VALUES (null,NEW.username,NEW.phoneno,NEW.emailid,NEW.password)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `register_backup`
--

CREATE TABLE `register_backup` (
  `userid` int(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `phoneno` int(255) NOT NULL,
  `emailid` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register_backup`
--

INSERT INTO `register_backup` (`userid`, `username`, `phoneno`, `emailid`, `password`) VALUES
(1, 'sd', 44, 'i@gmail.com', 'sd'),
(2, 'amar', 123, 'amar@g', 'amar'),
(3, 'amar', 123, 'amar@g', 'amar'),
(4, 'sonu', 111, 'sonu@g', 'sonu');

-- --------------------------------------------------------

--
-- Table structure for table `studenttest`
--

CREATE TABLE `studenttest` (
  `stdid` int(50) NOT NULL,
  `name` varchar(30) NOT NULL,
  `title` varchar(100) NOT NULL,
  `college` varchar(100) NOT NULL,
  `year` int(5) NOT NULL,
  `amount` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `studenttest`
--

INSERT INTO `studenttest` (`stdid`, `name`, `title`, `college`, `year`, `amount`) VALUES
(2, 'sonu', 'epaas', 'bms', 2019, 0),
(3, 'dkapse', 'asvf', 'bnm', 5000, 0),
(5, 'abcd', 'asd', 'ise', 2001, 5000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `adminupload`
--
ALTER TABLE `adminupload`
  ADD PRIMARY KEY (`donid`);

--
-- Indexes for table `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`appid`);

--
-- Indexes for table `applied`
--
ALTER TABLE `applied`
  ADD PRIMARY KEY (`appliedid`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `register_backup`
--
ALTER TABLE `register_backup`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `studenttest`
--
ALTER TABLE `studenttest`
  ADD PRIMARY KEY (`stdid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `adminupload`
--
ALTER TABLE `adminupload`
  MODIFY `donid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `application`
--
ALTER TABLE `application`
  MODIFY `appid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `applied`
--
ALTER TABLE `applied`
  MODIFY `appliedid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `register_backup`
--
ALTER TABLE `register_backup`
  MODIFY `userid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
