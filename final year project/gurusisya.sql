-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2018 at 01:52 PM
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
-- Database: `gurusisya`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `file` longblob NOT NULL,
  `subject_id` varchar(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`id`, `student_id`, `file`, `subject_id`, `date`) VALUES
(38, 28, 0x30313442534349543034305f536c69646465722e646f6378, 'csc-501', '2018-06-04 15:16:10'),
(42, 26, 0x30313442534349543034305f4a415641372e646f6378, 'csc-501', '2018-06-05 15:46:51'),
(43, 27, 0x30313442534349543034305f414a415631302e646f6378, 'csc-502', '2018-06-05 15:59:05'),
(44, 26, 0x4c697465726174757265205265766965772e706466, 'csc-503', '2018-06-05 17:12:24'),
(45, 26, 0x706c73716c2e747874, 'csc-501', '2018-06-07 15:44:02');

-- --------------------------------------------------------

--
-- Table structure for table `deadline`
--

CREATE TABLE `deadline` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `assignment_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `newassignment`
--

CREATE TABLE `newassignment` (
  `id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `subject_id` varchar(11) NOT NULL,
  `file` longblob NOT NULL,
  `uploaded_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newassignment`
--

INSERT INTO `newassignment` (`id`, `teacher_id`, `subject_id`, `file`, `uploaded_date`) VALUES
(38, 5, 'csc-501', 0x30313442534349543034305f536c69646465722e646f6378, '2018-06-04 22:10:15'),
(39, 5, 'csc-501', 0x434953434f2e646f6378, '2018-06-04 22:10:38'),
(40, 5, 'csc-501', 0x30313442534349543034305f414a415641322e646f6378, '2018-06-05 16:01:16');

-- --------------------------------------------------------

--
-- Table structure for table `quotes`
--

CREATE TABLE `quotes` (
  `id` int(11) NOT NULL,
  `quote` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quotes`
--

INSERT INTO `quotes` (`id`, `quote`) VALUES
(1, '\"What ever you are be a good one!\"'),
(2, '\"The secret to getting ahead is getting started!\"'),
(3, '\"We must accept finite disappointment but never lose infinite hope!\"'),
(4, '\"You have to be odd to be No. 1\"'),
(5, '“Success consists of going from failure to failure without loss of enthusiasm.”'),
(6, '“The best way to predict your future is to create it.”'),
(7, '“No masterpiece was ever created by a lazy artist.” '),
(8, '“You may have to fight a battle more than once to win it.”'),
(9, '“The successful warrior is the average man, with laser-like focus.”'),
(10, '“Do not wait to strike till the iron is hot; but make it hot by striking.” ');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `subject_id` varchar(11) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `subject_id`, `message`) VALUES
(1, '1', 'nice class '),
(3, '2', 'boring class'),
(4, '3', 'boring class'),
(5, '2', '   hghghbhjojh\r\nihjhljhh'),
(6, '1', '           what         '),
(7, '3', '                    yes'),
(8, '2', '             no       '),
(9, 'csc-502', '                    right'),
(10, 'csc-502', ' sqlplus'),
(11, 'csc-501', '     The class should be more practical!'),
(12, 'csc-504', '                    saaaaa'),
(13, 'csc-502', '    Class could be more practical.');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `passwd` varchar(50) NOT NULL,
  `subject_id` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `first_name`, `last_name`, `email_id`, `uname`, `passwd`, `subject_id`) VALUES
(1, 'sarita', 'karki', 'saritakarki00053@gmail.com', 'sarita1', 'sarita1', '0'),
(2, 'saaa', 'saaa', 'saritakarki00053@gmail.com', 'saaa', '12345', '0'),
(3, 'Soyesha', 'Karki', 'karki.soyesha@gmail.com', 'soyesha', 'soyesha', '0'),
(4, 'suyoj', 'tamrakar', 'suyoj@gmail.com', 'suyoj', 'suyoj', '1'),
(5, 'Sarita', 'Karki', 'saritakarki00053@gmail.com', 'Sarita', 'sarita123', 'csc-501'),
(6, 'Sarita', 'Karki', 'saritakarki00053@gmail.com', 'saaaaa', 'ssssss', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email_id` varchar(50) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `passwd` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email_id`, `uname`, `passwd`) VALUES
(26, 'sarita', 'karki', 'sarita@roosterlogic.com', 'sarita', 'sarita1'),
(27, 'sarita', 'karki', 'sarita.karki52@yahoo.com', 'sarita', 'sarita123'),
(28, 'asmita', 'gautam', 'ashu@gmail.com', 'ashu', 'ashu1'),
(29, 'Soyesha', 'Karki', 'karki.soyesha@gmail.com', 'soyesha', 'soyesha');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `deadline`
--
ALTER TABLE `deadline`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newassignment`
--
ALTER TABLE `newassignment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- Indexes for table `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
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
-- AUTO_INCREMENT for table `assignment`
--
ALTER TABLE `assignment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `deadline`
--
ALTER TABLE `deadline`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `newassignment`
--
ALTER TABLE `newassignment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `quotes`
--
ALTER TABLE `quotes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assignment`
--
ALTER TABLE `assignment`
  ADD CONSTRAINT `assignment_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `newassignment`
--
ALTER TABLE `newassignment`
  ADD CONSTRAINT `newassignment_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
