-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2025 at 02:20 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attendance_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance_details`
--

CREATE TABLE `attendance_details` (
  `faculty_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `on_date` date NOT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_allotment`
--

CREATE TABLE `course_allotment` (
  `faculty_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_allotment`
--

INSERT INTO `course_allotment` (`faculty_id`, `course_id`, `session_id`) VALUES
(1, 2, 1),
(1, 3, 1),
(2, 1, 1),
(2, 3, 1),
(3, 1, 1),
(3, 2, 1),
(4, 1, 1),
(4, 2, 1),
(5, 2, 1),
(5, 3, 1),
(6, 1, 1),
(6, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `course_details`
--

CREATE TABLE `course_details` (
  `id` int(11) NOT NULL,
  `code` varchar(20) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `credit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_details`
--

INSERT INTO `course_details` (`id`, `code`, `title`, `credit`) VALUES
(1, '2018501', 'Mobile Computing', 3),
(2, '2018502', 'Computer Hardware & Networking', 3),
(3, '2018503', 'OOP through Java', 3),
(4, '2018504', 'Multimedia Technology', 4),
(5, '2018505', 'Drone Technology', 2),
(6, '2018506', 'Computer Hardware & Networking (LAB)', 1),
(7, '2018507', 'OOP through Java (LAB)', 2),
(8, '2018508', 'Drone Technology (LAB)', 2);

-- --------------------------------------------------------

--
-- Table structure for table `course_registration`
--

CREATE TABLE `course_registration` (
  `student_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_registration`
--

INSERT INTO `course_registration` (`student_id`, `course_id`, `session_id`) VALUES
(1, 1, 1),
(1, 2, 1),
(1, 3, 1),
(1, 3, 2),
(1, 4, 2),
(1, 5, 1),
(1, 5, 2),
(1, 6, 2),
(1, 7, 1),
(1, 7, 2),
(1, 8, 1),
(2, 1, 1),
(2, 1, 2),
(2, 2, 2),
(2, 3, 1),
(2, 3, 2),
(2, 4, 1),
(2, 4, 2),
(2, 5, 1),
(2, 5, 2),
(2, 6, 1),
(2, 6, 2),
(3, 1, 1),
(3, 3, 1),
(3, 3, 2),
(3, 6, 1),
(3, 6, 2),
(3, 7, 1),
(3, 7, 2),
(3, 8, 1),
(3, 8, 2),
(4, 1, 1),
(4, 2, 2),
(4, 4, 1),
(4, 4, 2),
(4, 5, 1),
(4, 5, 2),
(4, 6, 1),
(4, 6, 2),
(4, 7, 2),
(4, 8, 1),
(4, 8, 2),
(5, 1, 1),
(5, 1, 2),
(5, 2, 1),
(5, 2, 2),
(5, 3, 1),
(5, 4, 2),
(5, 5, 1),
(5, 5, 2),
(5, 6, 1),
(5, 6, 2),
(5, 8, 2),
(6, 2, 1),
(6, 3, 2),
(6, 4, 1),
(6, 4, 2),
(6, 5, 1),
(6, 5, 2),
(6, 6, 1),
(6, 6, 2),
(6, 7, 2),
(6, 8, 1),
(6, 8, 2),
(7, 2, 1),
(7, 2, 2),
(7, 4, 2),
(7, 5, 1),
(7, 5, 2),
(7, 6, 1),
(7, 6, 2),
(7, 7, 1),
(7, 8, 1),
(8, 1, 2),
(8, 2, 1),
(8, 2, 2),
(8, 3, 1),
(8, 4, 1),
(8, 4, 2),
(8, 5, 2),
(8, 6, 1),
(8, 7, 2),
(9, 1, 2),
(9, 2, 1),
(9, 2, 2),
(9, 3, 1),
(9, 3, 2),
(9, 4, 1),
(9, 4, 2),
(9, 5, 1),
(9, 5, 2),
(9, 7, 1),
(9, 7, 2),
(9, 8, 1),
(9, 8, 2),
(10, 1, 2),
(10, 2, 1),
(10, 2, 2),
(10, 3, 1),
(10, 3, 2),
(10, 4, 1),
(10, 4, 2),
(10, 5, 1),
(10, 6, 1),
(10, 6, 2),
(10, 8, 1),
(11, 1, 1),
(11, 1, 2),
(11, 2, 1),
(11, 3, 1),
(11, 3, 2),
(11, 4, 1),
(11, 5, 2),
(11, 6, 2),
(11, 7, 1),
(11, 7, 2),
(11, 8, 1),
(12, 1, 1),
(12, 1, 2),
(12, 2, 1),
(12, 3, 1),
(12, 4, 2),
(12, 5, 1),
(12, 5, 2),
(12, 6, 1),
(12, 6, 2),
(12, 7, 2),
(12, 8, 2),
(13, 1, 2),
(13, 2, 2),
(13, 3, 1),
(13, 4, 1),
(13, 5, 2),
(13, 6, 1),
(13, 6, 2),
(13, 7, 1),
(13, 7, 2),
(13, 8, 1),
(13, 8, 2),
(14, 1, 2),
(14, 2, 1),
(14, 4, 1),
(14, 4, 2),
(14, 5, 2),
(14, 6, 1),
(14, 6, 2),
(14, 7, 1),
(14, 7, 2),
(14, 8, 1),
(14, 8, 2),
(15, 1, 2),
(15, 2, 2),
(15, 3, 1),
(15, 3, 2),
(15, 4, 1),
(15, 5, 1),
(15, 5, 2),
(15, 6, 1),
(15, 7, 1),
(15, 7, 2),
(15, 8, 1),
(15, 8, 2),
(16, 1, 2),
(16, 2, 1),
(16, 2, 2),
(16, 3, 1),
(16, 4, 2),
(16, 7, 1),
(16, 7, 2),
(16, 8, 1),
(16, 8, 2),
(17, 1, 1),
(17, 1, 2),
(17, 4, 1),
(17, 4, 2),
(17, 5, 1),
(17, 5, 2),
(17, 7, 2),
(17, 8, 1),
(17, 8, 2),
(18, 1, 1),
(18, 2, 1),
(18, 2, 2),
(18, 3, 2),
(18, 5, 1),
(18, 5, 2),
(18, 6, 2),
(18, 7, 2),
(18, 8, 1),
(19, 1, 2),
(19, 2, 1),
(19, 4, 1),
(19, 4, 2),
(19, 5, 1),
(19, 5, 2),
(19, 6, 2),
(19, 7, 1),
(19, 7, 2),
(19, 8, 1),
(20, 1, 2),
(20, 2, 1),
(20, 2, 2),
(20, 3, 1),
(20, 4, 1),
(20, 5, 1),
(20, 5, 2),
(20, 6, 2),
(20, 7, 1),
(20, 7, 2),
(20, 8, 1),
(21, 1, 1),
(21, 1, 2),
(21, 2, 1),
(21, 2, 2),
(21, 3, 1),
(21, 3, 2),
(21, 4, 2),
(21, 5, 1),
(21, 5, 2),
(21, 7, 1),
(21, 7, 2),
(21, 8, 1),
(22, 1, 1),
(22, 2, 2),
(22, 4, 1),
(22, 4, 2),
(22, 5, 1),
(22, 6, 2),
(22, 7, 1),
(22, 7, 2),
(22, 8, 1),
(22, 8, 2),
(23, 1, 1),
(23, 1, 2),
(23, 2, 2),
(23, 3, 1),
(23, 4, 1),
(23, 5, 1),
(23, 6, 2),
(23, 7, 2),
(23, 8, 2),
(24, 1, 1),
(24, 2, 1),
(24, 2, 2),
(24, 3, 2),
(24, 4, 1),
(24, 4, 2),
(24, 5, 2),
(24, 6, 1),
(24, 6, 2),
(24, 8, 1),
(24, 8, 2),
(25, 1, 1),
(25, 1, 2),
(25, 2, 1),
(25, 2, 2),
(25, 3, 1),
(25, 3, 2),
(25, 4, 1),
(25, 6, 1),
(25, 7, 1),
(25, 7, 2),
(25, 8, 1),
(25, 8, 2),
(26, 1, 1),
(26, 2, 2),
(26, 3, 2),
(26, 4, 1),
(26, 4, 2),
(26, 5, 2),
(26, 6, 1),
(26, 7, 1),
(26, 8, 2),
(27, 1, 2),
(27, 2, 2),
(27, 3, 1),
(27, 3, 2),
(27, 4, 1),
(27, 5, 2),
(27, 6, 1),
(27, 6, 2),
(27, 7, 1),
(27, 7, 2),
(27, 8, 1),
(27, 8, 2),
(28, 1, 2),
(28, 3, 2),
(28, 4, 1),
(28, 5, 1),
(28, 5, 2),
(28, 6, 1),
(28, 7, 1),
(28, 7, 2),
(28, 8, 1),
(28, 8, 2),
(29, 1, 1),
(29, 2, 1),
(29, 2, 2),
(29, 3, 1),
(29, 3, 2),
(29, 4, 1),
(29, 5, 1),
(29, 5, 2),
(29, 7, 2),
(29, 8, 2),
(30, 1, 1),
(30, 1, 2),
(30, 2, 2),
(30, 3, 1),
(30, 3, 2),
(30, 4, 1),
(30, 6, 1),
(30, 6, 2),
(30, 7, 1),
(30, 7, 2),
(30, 8, 1),
(31, 1, 1),
(31, 1, 2),
(31, 3, 2),
(31, 4, 1),
(31, 4, 2),
(31, 5, 1),
(31, 6, 1),
(31, 6, 2),
(31, 7, 2),
(31, 8, 1),
(32, 1, 2),
(32, 2, 1),
(32, 3, 1),
(32, 3, 2),
(32, 4, 1),
(32, 5, 1),
(32, 6, 1),
(32, 6, 2),
(32, 7, 2),
(32, 8, 2),
(33, 1, 2),
(33, 2, 1),
(33, 3, 1),
(33, 3, 2),
(33, 4, 1),
(33, 4, 2),
(33, 5, 2),
(33, 6, 2),
(33, 7, 1),
(33, 7, 2),
(33, 8, 2),
(34, 1, 2),
(34, 2, 1),
(34, 3, 1),
(34, 3, 2),
(34, 5, 1),
(34, 6, 1),
(34, 6, 2),
(34, 7, 1),
(34, 7, 2),
(34, 8, 1),
(34, 8, 2),
(35, 1, 1),
(35, 2, 1),
(35, 2, 2),
(35, 3, 2),
(35, 4, 1),
(35, 5, 1),
(35, 5, 2),
(35, 6, 1),
(35, 6, 2),
(35, 7, 2),
(35, 8, 1),
(35, 8, 2),
(36, 1, 1),
(36, 1, 2),
(36, 2, 1),
(36, 2, 2),
(36, 3, 2),
(36, 4, 1),
(36, 5, 2),
(36, 6, 1),
(36, 6, 2),
(36, 7, 1),
(36, 7, 2),
(37, 1, 2),
(37, 2, 1),
(37, 2, 2),
(37, 3, 1),
(37, 4, 2),
(37, 5, 1),
(37, 5, 2),
(37, 6, 1),
(37, 7, 1),
(37, 7, 2),
(37, 8, 1),
(38, 2, 1),
(38, 3, 2),
(38, 4, 1),
(38, 5, 1),
(38, 5, 2),
(38, 6, 1),
(38, 6, 2),
(38, 7, 2),
(38, 8, 1),
(38, 8, 2),
(39, 1, 1),
(39, 1, 2),
(39, 3, 2),
(39, 4, 1),
(39, 4, 2),
(39, 6, 1),
(39, 6, 2),
(39, 7, 1),
(39, 7, 2),
(39, 8, 1),
(39, 8, 2),
(40, 1, 1),
(40, 2, 1),
(40, 2, 2),
(40, 4, 1),
(40, 5, 2),
(40, 6, 1),
(40, 6, 2),
(40, 7, 1),
(40, 7, 2),
(40, 8, 2),
(41, 1, 1),
(41, 1, 2),
(41, 2, 2),
(41, 3, 2),
(41, 4, 1),
(41, 5, 1),
(41, 6, 2),
(41, 7, 1),
(41, 7, 2),
(41, 8, 1),
(41, 8, 2);

-- --------------------------------------------------------

--
-- Table structure for table `faculty_details`
--

CREATE TABLE `faculty_details` (
  `id` int(11) NOT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty_details`
--

INSERT INTO `faculty_details` (`id`, `user_name`, `name`, `password`) VALUES
(1, 'Randhir', 'Randhir Sir', '824102'),
(2, 'Kundan', 'Kundan Sir', '824102'),
(3, 'Ayushi', 'Ayushi yadav', '824102'),
(4, 'Prince', 'Prince RAj', '824102'),
(5, 'Priom', 'Priom Sir', '824102'),
(6, 'Coe', 'Coe_sir', '824102');

-- --------------------------------------------------------

--
-- Table structure for table `sent_email_details`
--

CREATE TABLE `sent_email_details` (
  `faculty_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `on_date` date DEFAULT NULL,
  `id` int(11) NOT NULL,
  `message` varchar(200) DEFAULT NULL,
  `to_email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `session_details`
--

CREATE TABLE `session_details` (
  `id` int(11) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `term` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `session_details`
--

INSERT INTO `session_details` (`id`, `year`, `term`) VALUES
(2, 2025, 'EVEN SEMESTER'),
(1, 2025, 'ODD SEMESTER');

-- --------------------------------------------------------

--
-- Table structure for table `student_details`
--

CREATE TABLE `student_details` (
  `id` int(11) NOT NULL,
  `roll_no` varchar(20) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email_id` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_details`
--

INSERT INTO `student_details` (`id`, `roll_no`, `name`, `email_id`) VALUES
(1, '2023-cs-01', 'Deepika Kumari', 'deepikakumarirfj0@gmail.com'),
(2, '2023-cs-04', 'Khushi Kumari', 'kp197534@gmail.com'),
(3, '2023-cs-05', 'Ashvini Kumar', 'ashvinibilari2006@gmail.com'),
(4, '2023-cs-06', 'Sivani Ranjan', 'sivaniranjan281@gmail.com'),
(5, '2023-cs-09', 'Ashutosh Kumar Singh', 'ashutoshsingh89389@gmail.com'),
(6, '2023-cs-10', 'Suruchi Kumari', 'nsingh821307@gmail.com'),
(7, '2023-cs-11', 'Smriti Kumari', 'kd423851@gmail.com'),
(8, '2023-cs-12', 'Badal Kumar', 'badalmg2019@gmail.com'),
(9, '2023-cs-15', 'Chandan Kumar', 'chandankumar929768@gmail.com'),
(10, '2023-cs-16', 'Nikhil Kumar', 'nk0240919@gmail.com'),
(11, '2023-cs-17', 'Anil Kumar', 'anilyadavsasna@gmail.com'),
(12, '2023-cs-18', 'Beauty Kumari', 'bk6620507@gmail.com'),
(13, '2023-cs-19', 'Khushabu Kumari', 'khushbu00985@gmail.com'),
(14, '2023-cs-21', 'Nikki Kumari', 'kumarinikki01012006@gmail.com'),
(15, '2023-cs-22', 'Khushi Kumari', 'manojkumar824120820@gmail.com'),
(16, '2023-cs-23', 'Rohit Kumar', 'rohitpatelkanker@gmail.com'),
(17, '2023-cs-24', 'Misha Kumari', 'mishakumari08062@gmail.com'),
(18, '2023-cs-25', 'Preeti Kumari', 'mehtaavadha@gmail.com'),
(19, '2023-cs-26', 'Rinki Kumari', 'rinkikumari713535@gmail.com'),
(20, '2023-cs-27', 'Ranjan Kumar', 'krranjan12121@gmail.com'),
(21, '2023-cs-28', 'Rishi Kumarr', 'kumarrishi824207@gmail.com'),
(22, '2023-cs-29', 'Neha Kumari', 'neha8242176@gmail.com'),
(23, '2023-cs-30', 'Ankit Kumar', 'rittik8292@gmail.com'),
(24, '2023-cs-34', 'Priyanshu Kumar', 'pk0375410@gmail.com'),
(25, '2023-cs-36', 'Aditya Kumar', 'adityakumar91358578@gmail.com'),
(26, '2023-cs-37', 'Anshu Kumari', 'akr810947@gmail.com'),
(27, '2023-cs-38', 'Ayush kumar', 'ashu051105@gmail.com'),
(28, '2023-cs-41', 'Shivam kumar', 'cseshivam41@gmail.com'),
(29, '2023-cs-43', 'Abhay Kumar', 'abhaykumar008211@gmail.com'),
(30, '2023-cs-44', 'Suman Ghosh', 'sumanghosh589510@gmail.com'),
(31, '2023-cs-45', 'Marry Kumari', 'marrybabu33@gmail.com'),
(32, '2023-cs-47', 'Mohammad Shoaib', 'mohammadshoaib2817@gmail.com'),
(33, '2023-cs-48', 'Dipu Sharma', 'dipuvsh11@gmail.com'),
(34, '2023-cs-52', 'Shubham Kumari', 'shubhamkumari7244616@gmail.com'),
(35, '2023-cs-53', 'Riya Kumari', 'riyakumari8037620@gmail.com'),
(36, '2023-cs-54', 'Sonali Kumari', 'lovekushsharma085@gmail.com'),
(37, '2023-cs-57', 'Rupa Kumari', 'rupakumariwoob1@gmail.com'),
(38, '2023-cs-59', 'Jyoti Kumari', 'jyotikumari893585@gmail.com'),
(39, '2023-cs-303', 'Neha Kumari', 'nehapol255@gmail.com'),
(40, '2023-cs-601', 'Ankit Kumar', 'ankitmandar9199@gmail.com'),
(41, '2023-cs-602', 'Avinash Kumar', 'avinashsinghrajput130@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance_details`
--
ALTER TABLE `attendance_details`
  ADD PRIMARY KEY (`faculty_id`,`course_id`,`session_id`,`student_id`,`on_date`);

--
-- Indexes for table `course_allotment`
--
ALTER TABLE `course_allotment`
  ADD PRIMARY KEY (`faculty_id`,`course_id`,`session_id`);

--
-- Indexes for table `course_details`
--
ALTER TABLE `course_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `course_registration`
--
ALTER TABLE `course_registration`
  ADD PRIMARY KEY (`student_id`,`course_id`,`session_id`);

--
-- Indexes for table `faculty_details`
--
ALTER TABLE `faculty_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_name` (`user_name`);

--
-- Indexes for table `sent_email_details`
--
ALTER TABLE `sent_email_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `session_details`
--
ALTER TABLE `session_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `year` (`year`,`term`);

--
-- Indexes for table `student_details`
--
ALTER TABLE `student_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roll_no` (`roll_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course_details`
--
ALTER TABLE `course_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `faculty_details`
--
ALTER TABLE `faculty_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sent_email_details`
--
ALTER TABLE `sent_email_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `session_details`
--
ALTER TABLE `session_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student_details`
--
ALTER TABLE `student_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
