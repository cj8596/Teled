-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2020 at 08:04 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbcaiwl`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblautonumbers`
--

CREATE TABLE `tblautonumbers` (
  `AUTOID` int(11) NOT NULL,
  `AUTOSTART` varchar(30) NOT NULL,
  `AUTOEND` int(11) NOT NULL,
  `AUTOINC` int(11) NOT NULL,
  `AUTOKEY` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblautonumbers`
--

INSERT INTO `tblautonumbers` (`AUTOID`, `AUTOSTART`, `AUTOEND`, `AUTOINC`, `AUTOKEY`) VALUES
(1, '02983', 8, 1, 'userid'),
(10, '000', 12, 1, 'ExerciseID'),
(12, '000', 34, 1, 'BLOGID'),
(13, '0', 5, 1, 'STUDENTID');

-- --------------------------------------------------------

--
-- Table structure for table `tblexercise`
--

CREATE TABLE `tblexercise` (
  `ExerciseID` int(11) NOT NULL,
  `LessonID` int(11) NOT NULL,
  `Question` text NOT NULL,
  `ChoiceA` text NOT NULL,
  `ChoiceB` text NOT NULL,
  `ChoiceC` text NOT NULL,
  `ChoiceD` text NOT NULL,
  `Answer` varchar(90) NOT NULL,
  `ExercisesDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblexercise`
--

INSERT INTO `tblexercise` (`ExerciseID`, `LessonID`, `Question`, `ChoiceA`, `ChoiceB`, `ChoiceC`, `ChoiceD`, `Answer`, `ExercisesDate`) VALUES
(20180002, 6, 'Who is the name of the character in the story?', 'Ben', 'Holly', 'Gaston', 'Wise old elf', 'Gaston', '0000-00-00'),
(20200003, 6, 'abcd', 'a', 'b', 'c', 'e', 'e', '0000-00-00'),
(20200004, 8, 'How do you greet a person in the morning', 'Good Afternoon', 'Good Morning', 'Good day', 'Goodnight', 'Good Morning', '0000-00-00'),
(20200005, 8, 'How do you greet a person in English for the first time?', 'Hello. Its Nice to meet you.', 'Hello. How are you doing today?', 'Hi', 'Nice to see you', 'Hello. Its Nice to meet you.', '0000-00-00'),
(20200006, 9, 'What does my sister\'s keeper mean?', 'Caretaker', 'Parent', 'Gaurdian', 'Treasure', 'Caretaker', '0000-00-00'),
(20200009, 10, 'How do you greet someone in English?', 'hi', 'HELLO', 'Hey', 'Hola', 'HELLO', '0000-00-00'),
(202000010, 10, 'How does one greet in India', 'Hello', 'Namaste', 'Swadeekab', 'Konnichiwa', 'Namaste', '0000-00-00'),
(202000011, 10, 'In which Language is Hello a form of greeting', 'Korean', 'Japanese', 'Hindi', 'English', 'English', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `tbllesson`
--

CREATE TABLE `tbllesson` (
  `LessonID` int(11) NOT NULL,
  `LessonChapter` varchar(90) NOT NULL,
  `LessonTitle` varchar(90) NOT NULL,
  `FileLocation` text NOT NULL,
  `Category` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbllesson`
--

INSERT INTO `tbllesson` (`LessonID`, `LessonChapter`, `LessonTitle`, `FileLocation`, `Category`) VALUES
(8, '1', 'Greetings', 'files/17-useful-english-greetings-for-english-learners.pdf', 'Docs'),
(9, 'Video1', 'My sister', 'files/My Sister\'s Keeper (2009) Official Trailer - Cameron Diaz, Abigail Breslin Movie HD.mp4', 'Video'),
(10, 'Video2', 'Greeting Song', 'files/Theme 1. Greeting - Good morning. Good bye. - ESL Song & Story - Learning English for Kids.mp4', 'Video');

-- --------------------------------------------------------

--
-- Table structure for table `tblscore`
--

CREATE TABLE `tblscore` (
  `ScoreID` int(11) NOT NULL,
  `LessonID` int(11) NOT NULL,
  `ExerciseID` int(11) NOT NULL,
  `StudentID` int(11) NOT NULL,
  `NoItems` int(11) NOT NULL DEFAULT '1',
  `Score` int(11) NOT NULL,
  `Submitted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblscore`
--

INSERT INTO `tblscore` (`ScoreID`, `LessonID`, `ExerciseID`, `StudentID`, `NoItems`, `Score`, `Submitted`) VALUES
(9, 6, 20180001, 1, 1, 1, 1),
(10, 6, 20180002, 1, 1, 1, 1),
(11, 6, 20180001, 3, 1, 1, 1),
(12, 6, 20180002, 3, 1, 1, 1),
(13, 6, 20180002, 4, 1, 0, 1),
(14, 6, 20180001, 4, 1, 1, 1),
(15, 6, 20200003, 4, 1, 0, 1),
(16, 8, 20200004, 7, 1, 1, 1),
(17, 8, 20200005, 7, 1, 0, 1),
(18, 9, 20200006, 7, 1, 0, 1),
(19, 10, 202000010, 7, 1, 1, 1),
(20, 10, 20200009, 7, 1, 1, 1),
(21, 10, 202000011, 7, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudent`
--

CREATE TABLE `tblstudent` (
  `StudentID` int(11) NOT NULL,
  `Fname` varchar(90) NOT NULL,
  `Lname` varchar(90) NOT NULL,
  `Address` varchar(90) NOT NULL,
  `MobileNo` varchar(90) NOT NULL,
  `STUDUSERNAME` varchar(90) NOT NULL,
  `STUDPASS` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudent`
--

INSERT INTO `tblstudent` (`StudentID`, `Fname`, `Lname`, `Address`, `MobileNo`, `STUDUSERNAME`, `STUDPASS`) VALUES
(1, 'a', 'a', 'a', '21', 'a', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8'),
(2, 'sd', 'sad', 'sad', '231', 'a', 'a0f1490a20d0211c997b44bc357e1972deab8ae3'),
(3, 'Cristin', 'Johnson', 'Mumbai', '1234567890', 'cjefns', 'c4e417bcf384d7d25858bb8bc1a1a422ee4f4c48'),
(4, 'david', 'johnson', 'home', '7894561230', 'davidjohnson', '88b196fcd83d25a45b3c07997ede59c49ce8f961'),
(5, '', '', '', '', '', 'd033e22ae348aeb5660fc2140aec35850c4da997'),
(6, '', '', '', '', '', 'd033e22ae348aeb5660fc2140aec35850c4da997'),
(7, 'Mansi', 'Chandak', 'Akola', '1290384756', 'chandakmansi', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220'),
(8, '', '', '', '', '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709');

-- --------------------------------------------------------

--
-- Table structure for table `tblstudentquestion`
--

CREATE TABLE `tblstudentquestion` (
  `SQID` int(11) NOT NULL,
  `ExerciseID` int(11) NOT NULL,
  `LessonID` int(11) NOT NULL,
  `StudentID` int(11) NOT NULL,
  `Question` varchar(90) NOT NULL,
  `CA` varchar(90) NOT NULL,
  `CB` varchar(90) NOT NULL,
  `CC` varchar(90) NOT NULL,
  `CD` varchar(90) NOT NULL,
  `QA` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudentquestion`
--

INSERT INTO `tblstudentquestion` (`SQID`, `ExerciseID`, `LessonID`, `StudentID`, `Question`, `CA`, `CB`, `CC`, `CD`, `QA`) VALUES
(1, 20180002, 0, 1, 'Who is the name of the character in the story?', 'Ben', 'Holly', 'Gaston', 'Wise old elf', 'Gaston'),
(2, 20180002, 0, 2, 'Who is the name of the character in the story?', 'Ben', 'Holly', 'Gaston', 'Wise old elf', 'Gaston'),
(3, 20200003, 0, 1, 'abcd', 'a', 'b', 'c', 'e', 'e'),
(4, 20200003, 0, 2, 'abcd', 'a', 'b', 'c', 'e', 'e'),
(5, 20200003, 0, 3, 'abcd', 'a', 'b', 'c', 'e', 'e'),
(6, 20200004, 0, 1, 'How do you greet a person in the morning', 'Good Afternoon', 'Good Morning', 'Good day', 'Goodnight', 'Good Morning'),
(7, 20200004, 0, 2, 'How do you greet a person in the morning', 'Good Afternoon', 'Good Morning', 'Good day', 'Goodnight', 'Good Morning'),
(8, 20200004, 0, 3, 'How do you greet a person in the morning', 'Good Afternoon', 'Good Morning', 'Good day', 'Goodnight', 'Good Morning'),
(9, 20200004, 0, 4, 'How do you greet a person in the morning', 'Good Afternoon', 'Good Morning', 'Good day', 'Goodnight', 'Good Morning'),
(10, 20200004, 0, 5, 'How do you greet a person in the morning', 'Good Afternoon', 'Good Morning', 'Good day', 'Goodnight', 'Good Morning'),
(11, 20200005, 0, 1, 'How do you greet a person in English for the first time?', 'Hello. Its Nice to meet you.', 'Hello. How are you doing today?', 'Hi', 'Nice to see you', 'Hello. Its Nice to meet you.'),
(12, 20200005, 0, 2, 'How do you greet a person in English for the first time?', 'Hello. Its Nice to meet you.', 'Hello. How are you doing today?', 'Hi', 'Nice to see you', 'Hello. Its Nice to meet you.'),
(13, 20200005, 0, 3, 'How do you greet a person in English for the first time?', 'Hello. Its Nice to meet you.', 'Hello. How are you doing today?', 'Hi', 'Nice to see you', 'Hello. Its Nice to meet you.'),
(14, 20200005, 0, 4, 'How do you greet a person in English for the first time?', 'Hello. Its Nice to meet you.', 'Hello. How are you doing today?', 'Hi', 'Nice to see you', 'Hello. Its Nice to meet you.'),
(15, 20200005, 0, 5, 'How do you greet a person in English for the first time?', 'Hello. Its Nice to meet you.', 'Hello. How are you doing today?', 'Hi', 'Nice to see you', 'Hello. Its Nice to meet you.'),
(16, 20200009, 0, 1, 'How do you greet someone in English?', 'hi', 'HELLO', 'Hey', 'Hola', 'HELLO'),
(17, 20200009, 0, 2, 'How do you greet someone in English?', 'hi', 'HELLO', 'Hey', 'Hola', 'HELLO'),
(18, 20200009, 0, 3, 'How do you greet someone in English?', 'hi', 'HELLO', 'Hey', 'Hola', 'HELLO'),
(19, 20200009, 0, 4, 'How do you greet someone in English?', 'hi', 'HELLO', 'Hey', 'Hola', 'HELLO'),
(20, 20200009, 0, 5, 'How do you greet someone in English?', 'hi', 'HELLO', 'Hey', 'Hola', 'HELLO'),
(21, 20200009, 0, 6, 'How do you greet someone in English?', 'hi', 'HELLO', 'Hey', 'Hola', 'HELLO'),
(22, 20200009, 0, 7, 'How do you greet someone in English?', 'hi', 'HELLO', 'Hey', 'Hola', 'HELLO'),
(23, 202000010, 0, 1, 'How does one greet in India', 'Hello', 'Namaste', 'Swadeekab', 'Konnichiwa', 'Namaste'),
(24, 202000010, 0, 2, 'How does one greet in India', 'Hello', 'Namaste', 'Swadeekab', 'Konnichiwa', 'Namaste'),
(25, 202000010, 0, 3, 'How does one greet in India', 'Hello', 'Namaste', 'Swadeekab', 'Konnichiwa', 'Namaste'),
(26, 202000010, 0, 4, 'How does one greet in India', 'Hello', 'Namaste', 'Swadeekab', 'Konnichiwa', 'Namaste'),
(27, 202000010, 0, 5, 'How does one greet in India', 'Hello', 'Namaste', 'Swadeekab', 'Konnichiwa', 'Namaste'),
(28, 202000010, 0, 6, 'How does one greet in India', 'Hello', 'Namaste', 'Swadeekab', 'Konnichiwa', 'Namaste'),
(29, 202000010, 0, 7, 'How does one greet in India', 'Hello', 'Namaste', 'Swadeekab', 'Konnichiwa', 'Namaste'),
(30, 202000011, 0, 1, 'In which Language is Hello a form of greeting', 'Korean', 'Japanese', 'Hindi', 'English', 'English'),
(31, 202000011, 0, 2, 'In which Language is Hello a form of greeting', 'Korean', 'Japanese', 'Hindi', 'English', 'English'),
(32, 202000011, 0, 3, 'In which Language is Hello a form of greeting', 'Korean', 'Japanese', 'Hindi', 'English', 'English'),
(33, 202000011, 0, 4, 'In which Language is Hello a form of greeting', 'Korean', 'Japanese', 'Hindi', 'English', 'English'),
(34, 202000011, 0, 5, 'In which Language is Hello a form of greeting', 'Korean', 'Japanese', 'Hindi', 'English', 'English'),
(35, 202000011, 0, 6, 'In which Language is Hello a form of greeting', 'Korean', 'Japanese', 'Hindi', 'English', 'English'),
(36, 202000011, 0, 7, 'In which Language is Hello a form of greeting', 'Korean', 'Japanese', 'Hindi', 'English', 'English');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `USERID` int(11) NOT NULL,
  `NAME` varchar(90) NOT NULL,
  `UEMAIL` varchar(90) NOT NULL,
  `PASS` varchar(90) NOT NULL,
  `TYPE` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`USERID`, `NAME`, `UEMAIL`, `PASS`, `TYPE`) VALUES
(1, 'Janno Palacios', 'janobe', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator'),
(2, 'Cristin Johnson', 'cjadmin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblautonumbers`
--
ALTER TABLE `tblautonumbers`
  ADD PRIMARY KEY (`AUTOID`);

--
-- Indexes for table `tblexercise`
--
ALTER TABLE `tblexercise`
  ADD PRIMARY KEY (`ExerciseID`);

--
-- Indexes for table `tbllesson`
--
ALTER TABLE `tbllesson`
  ADD PRIMARY KEY (`LessonID`);

--
-- Indexes for table `tblscore`
--
ALTER TABLE `tblscore`
  ADD PRIMARY KEY (`ScoreID`);

--
-- Indexes for table `tblstudent`
--
ALTER TABLE `tblstudent`
  ADD PRIMARY KEY (`StudentID`) USING BTREE;

--
-- Indexes for table `tblstudentquestion`
--
ALTER TABLE `tblstudentquestion`
  ADD PRIMARY KEY (`SQID`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`USERID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblautonumbers`
--
ALTER TABLE `tblautonumbers`
  MODIFY `AUTOID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblexercise`
--
ALTER TABLE `tblexercise`
  MODIFY `ExerciseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202000012;

--
-- AUTO_INCREMENT for table `tbllesson`
--
ALTER TABLE `tbllesson`
  MODIFY `LessonID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblscore`
--
ALTER TABLE `tblscore`
  MODIFY `ScoreID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblstudent`
--
ALTER TABLE `tblstudent`
  MODIFY `StudentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblstudentquestion`
--
ALTER TABLE `tblstudentquestion`
  MODIFY `SQID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `USERID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
