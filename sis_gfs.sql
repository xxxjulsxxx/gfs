-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2018 at 01:53 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sis_gfs`
--

-- --------------------------------------------------------

--
-- Table structure for table `r_curriculum`
--

CREATE TABLE `r_curriculum` (
  `C_ID` int(11) NOT NULL,
  `C_NAME` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_curriculum`
--

INSERT INTO `r_curriculum` (`C_ID`, `C_NAME`) VALUES
(1, 'K-12 Education Curriculum');

-- --------------------------------------------------------

--
-- Table structure for table `r_grade_level`
--

CREATE TABLE `r_grade_level` (
  `GL_ID` int(11) NOT NULL,
  `L_NAME` varchar(100) NOT NULL,
  `CURRICULUM_FK` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_grade_level`
--

INSERT INTO `r_grade_level` (`GL_ID`, `L_NAME`, `CURRICULUM_FK`) VALUES
(25, 'None', 1),
(26, 'Kinder', 1),
(27, 'Grade 1', 1),
(28, 'Grade 2', 1),
(29, 'Grade 3', 1),
(30, 'Grade 4', 1),
(31, 'Grade 5', 1),
(32, 'Grade 6', 1),
(33, 'Grade 7', 1),
(34, 'Grade 8', 1),
(35, 'Grade 9', 1),
(36, 'Grade 10', 1),
(37, 'NULL', 1);

-- --------------------------------------------------------

--
-- Table structure for table `r_learner`
--

CREATE TABLE `r_learner` (
  `L_ID` int(11) NOT NULL,
  `LEARNER_FK` int(11) NOT NULL,
  `USERNAME` varchar(100) NOT NULL,
  `PASS` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `r_learner_status`
--

CREATE TABLE `r_learner_status` (
  `LS_ID` int(11) NOT NULL,
  `LEARNER_FK` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `r_policy`
--

CREATE TABLE `r_policy` (
  `P_ID` int(11) NOT NULL,
  `DESCRIPT` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `r_school_year`
--

CREATE TABLE `r_school_year` (
  `SY_ID` int(11) NOT NULL,
  `START` varchar(100) DEFAULT NULL,
  `END` varchar(100) DEFAULT NULL,
  `SY_STATUS` varchar(100) DEFAULT NULL,
  `CURRICULUM_FK` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `r_section`
--

CREATE TABLE `r_section` (
  `S_ID` int(11) NOT NULL,
  `ACADLEVEL_FK` int(11) NOT NULL,
  `SECTION_NAME` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `r_section_details`
--

CREATE TABLE `r_section_details` (
  `SD_ID` int(11) NOT NULL,
  `SECTION_FK` int(11) NOT NULL,
  `LEARNER_FK` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `r_subject`
--

CREATE TABLE `r_subject` (
  `SUB_ID` int(11) NOT NULL,
  `ACADLEVEL_FK` int(11) NOT NULL,
  `SUBJECT_NAME` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `r_transaction_date`
--

CREATE TABLE `r_transaction_date` (
  `TD_ID` int(11) NOT NULL,
  `START` date NOT NULL,
  `END` date NOT NULL,
  `DESCRIPT` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_transaction_date`
--

INSERT INTO `r_transaction_date` (`TD_ID`, `START`, `END`, `DESCRIPT`) VALUES
(1, '2018-03-26', '2018-03-30', 'Online Application');

-- --------------------------------------------------------

--
-- Table structure for table `t_application`
--

CREATE TABLE `t_application` (
  `A_ID` int(11) NOT NULL,
  `A_DATE` date NOT NULL,
  `A_STATUS` varchar(100) DEFAULT 'Pending',
  `LRN` varchar(100) DEFAULT NULL,
  `FNAME` varchar(100) NOT NULL,
  `MNAME` varchar(100) DEFAULT NULL,
  `LNAME` varchar(100) DEFAULT NULL,
  `BDATE` varchar(100) NOT NULL,
  `SEX` varchar(100) NOT NULL,
  `MTONGUE` varchar(100) NOT NULL,
  `IP` varchar(100) DEFAULT NULL,
  `RELIGION` varchar(100) DEFAULT NULL,
  `CONTACT` varchar(100) NOT NULL,
  `PBIRTH` varchar(100) DEFAULT NULL,
  `STREET` varchar(100) DEFAULT NULL,
  `BRGY` varchar(100) DEFAULT NULL,
  `MUNICIPAL` varchar(100) DEFAULT NULL,
  `CITY` varchar(100) NOT NULL,
  `MARITAL` varchar(100) DEFAULT NULL,
  `NATIONALITY` varchar(100) NOT NULL,
  `EMAIL` varchar(100) NOT NULL,
  `MOTHER` varchar(100) DEFAULT NULL,
  `MOTHER_PHONE` varchar(100) DEFAULT NULL,
  `MOTHER_OCCU` varchar(100) DEFAULT NULL,
  `FATHER` varchar(100) DEFAULT NULL,
  `FATHER_PHONE` varchar(100) DEFAULT NULL,
  `FATHER_OCCU` varchar(100) DEFAULT NULL,
  `GUARD` varchar(100) NOT NULL,
  `GUARD_REL` varchar(100) NOT NULL,
  `GUARD_CONTACT` varchar(100) NOT NULL,
  `PREV_SCHOOL` varchar(100) DEFAULT NULL,
  `GWA` decimal(10,0) DEFAULT NULL,
  `PREV_GRADE_LEVEL` int(11) DEFAULT NULL,
  `REQ_NSO` bit(1) NOT NULL DEFAULT b'0',
  `REQ_PIC` bit(1) NOT NULL DEFAULT b'0',
  `REQ_EXAM` bit(1) NOT NULL DEFAULT b'0',
  `REQ_F137` bit(1) DEFAULT b'0',
  `REQ_GMC` bit(1) NOT NULL DEFAULT b'0',
  `REQ_CERT` bit(1) NOT NULL DEFAULT b'0',
  `DELETE_FLAG` bit(1) DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_application`
--

INSERT INTO `t_application` (`A_ID`, `A_DATE`, `A_STATUS`, `LRN`, `FNAME`, `MNAME`, `LNAME`, `BDATE`, `SEX`, `MTONGUE`, `IP`, `RELIGION`, `CONTACT`, `PBIRTH`, `STREET`, `BRGY`, `MUNICIPAL`, `CITY`, `MARITAL`, `NATIONALITY`, `EMAIL`, `MOTHER`, `MOTHER_PHONE`, `MOTHER_OCCU`, `FATHER`, `FATHER_PHONE`, `FATHER_OCCU`, `GUARD`, `GUARD_REL`, `GUARD_CONTACT`, `PREV_SCHOOL`, `GWA`, `PREV_GRADE_LEVEL`, `REQ_NSO`, `REQ_PIC`, `REQ_EXAM`, `REQ_F137`, `REQ_GMC`, `REQ_CERT`, `DELETE_FLAG`) VALUES
(5, '2018-03-25', 'Pending', '', 'Ma. Michaela', '', 'Alejandria', '1998-06-17', 'Female', 'Tagalog', '', '', '09089598580', '', '', '', '', 'Quezon City', '', 'Filipino', 'mikaalej@gmail.com', '', '', '', '', '', '', 'Maria Cecilia Cruz', 'Cousin', '09123456789', '', '0', 37, b'0', b'0', b'0', b'0', b'0', b'0', b'0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `r_curriculum`
--
ALTER TABLE `r_curriculum`
  ADD PRIMARY KEY (`C_ID`);

--
-- Indexes for table `r_grade_level`
--
ALTER TABLE `r_grade_level`
  ADD PRIMARY KEY (`GL_ID`),
  ADD KEY `CURRICULUM_FK` (`CURRICULUM_FK`);

--
-- Indexes for table `r_learner`
--
ALTER TABLE `r_learner`
  ADD PRIMARY KEY (`L_ID`),
  ADD KEY `LEARNER_FK` (`LEARNER_FK`);

--
-- Indexes for table `r_learner_status`
--
ALTER TABLE `r_learner_status`
  ADD PRIMARY KEY (`LS_ID`),
  ADD KEY `LEARNER_FK` (`LEARNER_FK`);

--
-- Indexes for table `r_policy`
--
ALTER TABLE `r_policy`
  ADD PRIMARY KEY (`P_ID`);

--
-- Indexes for table `r_school_year`
--
ALTER TABLE `r_school_year`
  ADD PRIMARY KEY (`SY_ID`),
  ADD KEY `CURRICULUM_FK` (`CURRICULUM_FK`);

--
-- Indexes for table `r_section`
--
ALTER TABLE `r_section`
  ADD PRIMARY KEY (`S_ID`),
  ADD KEY `ACADLEVEL_FK` (`ACADLEVEL_FK`);

--
-- Indexes for table `r_section_details`
--
ALTER TABLE `r_section_details`
  ADD PRIMARY KEY (`SD_ID`),
  ADD KEY `SECTION_FK` (`SECTION_FK`),
  ADD KEY `LEARNER_FK` (`LEARNER_FK`);

--
-- Indexes for table `r_subject`
--
ALTER TABLE `r_subject`
  ADD PRIMARY KEY (`SUB_ID`),
  ADD KEY `ACADLEVEL_FK` (`ACADLEVEL_FK`);

--
-- Indexes for table `r_transaction_date`
--
ALTER TABLE `r_transaction_date`
  ADD PRIMARY KEY (`TD_ID`);

--
-- Indexes for table `t_application`
--
ALTER TABLE `t_application`
  ADD PRIMARY KEY (`A_ID`),
  ADD KEY `PREV_GRADE_LEVEL` (`PREV_GRADE_LEVEL`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `r_curriculum`
--
ALTER TABLE `r_curriculum`
  MODIFY `C_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `r_grade_level`
--
ALTER TABLE `r_grade_level`
  MODIFY `GL_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `r_learner`
--
ALTER TABLE `r_learner`
  MODIFY `L_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `r_learner_status`
--
ALTER TABLE `r_learner_status`
  MODIFY `LS_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `r_policy`
--
ALTER TABLE `r_policy`
  MODIFY `P_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `r_school_year`
--
ALTER TABLE `r_school_year`
  MODIFY `SY_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `r_section`
--
ALTER TABLE `r_section`
  MODIFY `S_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `r_section_details`
--
ALTER TABLE `r_section_details`
  MODIFY `SD_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `r_subject`
--
ALTER TABLE `r_subject`
  MODIFY `SUB_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `r_transaction_date`
--
ALTER TABLE `r_transaction_date`
  MODIFY `TD_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `t_application`
--
ALTER TABLE `t_application`
  MODIFY `A_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `r_grade_level`
--
ALTER TABLE `r_grade_level`
  ADD CONSTRAINT `r_grade_level_ibfk_1` FOREIGN KEY (`CURRICULUM_FK`) REFERENCES `r_curriculum` (`C_ID`);

--
-- Constraints for table `r_learner`
--
ALTER TABLE `r_learner`
  ADD CONSTRAINT `r_learner_ibfk_1` FOREIGN KEY (`LEARNER_FK`) REFERENCES `t_application` (`A_ID`);

--
-- Constraints for table `r_learner_status`
--
ALTER TABLE `r_learner_status`
  ADD CONSTRAINT `r_learner_status_ibfk_1` FOREIGN KEY (`LEARNER_FK`) REFERENCES `t_application` (`A_ID`);

--
-- Constraints for table `r_school_year`
--
ALTER TABLE `r_school_year`
  ADD CONSTRAINT `r_school_year_ibfk_1` FOREIGN KEY (`CURRICULUM_FK`) REFERENCES `r_curriculum` (`C_ID`);

--
-- Constraints for table `r_section`
--
ALTER TABLE `r_section`
  ADD CONSTRAINT `r_section_ibfk_1` FOREIGN KEY (`ACADLEVEL_FK`) REFERENCES `r_grade_level` (`GL_ID`);

--
-- Constraints for table `r_section_details`
--
ALTER TABLE `r_section_details`
  ADD CONSTRAINT `r_section_details_ibfk_1` FOREIGN KEY (`SECTION_FK`) REFERENCES `r_section` (`S_ID`),
  ADD CONSTRAINT `r_section_details_ibfk_2` FOREIGN KEY (`LEARNER_FK`) REFERENCES `t_application` (`A_ID`);

--
-- Constraints for table `r_subject`
--
ALTER TABLE `r_subject`
  ADD CONSTRAINT `r_subject_ibfk_1` FOREIGN KEY (`ACADLEVEL_FK`) REFERENCES `r_grade_level` (`GL_ID`);

--
-- Constraints for table `t_application`
--
ALTER TABLE `t_application`
  ADD CONSTRAINT `t_application_ibfk_1` FOREIGN KEY (`PREV_GRADE_LEVEL`) REFERENCES `r_grade_level` (`GL_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
