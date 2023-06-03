-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2023 at 11:42 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `college`
--

-- --------------------------------------------------------

--
-- Table structure for table `class_result`
--

CREATE TABLE `class_result` (
  `class_result_id` int(11) NOT NULL,
  `roll_no` int(11) NOT NULL,
  `course_code` varchar(30) NOT NULL,
  `subject_code` varchar(10) NOT NULL,
  `semester` varchar(11) NOT NULL,
  `total_marks` varchar(11) NOT NULL,
  `obtain_marks` varchar(11) NOT NULL,
  `result_date` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_code` varchar(30) NOT NULL,
  `course_name` varchar(50) NOT NULL,
  `semester_or_year` varchar(10) NOT NULL,
  `no_of_year` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_code`, `course_name`, `semester_or_year`, `no_of_year`) VALUES
('AHL', 'Allied Health Science', 'Semester', 4),
('B.Arch', 'Bachular in Architecture', 'Semester', 5),
('B.Fashion', 'Bachular in Fashion and Design', 'Semester', 4),
('BBA', 'Bachular in Business Administration', 'Semester', 2),
('BSAI', 'Bachular in Artificial Inteligence', 'Semester', 2),
('BSEE', 'Bachular in Electrical Engineering', 'Semester', 4),
('M.Arch', 'Masters in Architecture', 'Semester', 2),
('M.Com', 'Master in Commerce', 'Semester', 2),
('MCS', 'Master in Computer Science', 'Semester', 2),
('MIT', 'Master in Information Technology', 'Semester', 2);

-- --------------------------------------------------------

--
-- Table structure for table `course_subjects`
--

CREATE TABLE `course_subjects` (
  `subject_code` varchar(10) NOT NULL,
  `subject_name` varchar(50) NOT NULL,
  `course_code` varchar(10) NOT NULL,
  `semester` int(10) NOT NULL,
  `credit_hours` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_subjects`
--

INSERT INTO `course_subjects` (`subject_code`, `subject_name`, `course_code`, `semester`, `credit_hours`) VALUES
('CSPD', 'Communication Skills and Personality Development', 'MCS', 1, 3),
('DBMS', 'Database Management System', 'MCS', 2, 4),
('DLD', 'Data Logic and Design', 'MCS', 2, 3),
('Ds', 'Discrete Structure', 'MCS', 1, 3),
('I2C', 'Introduction to Computer Science', 'MCS', 1, 4),
('ITP', 'IT Project Management System', 'MIT', 2, 3),
('MBAD', 'Mobile Application Development', 'MIT', 2, 4),
('OOP', 'Object Oriented Programming', 'MCS', 2, 4),
('PF', 'Programming Fundamental', 'BSAI', 1, 4),
('SE', 'Software Engineering', 'MCS', 2, 3),
('WEB', 'Web Development', 'MCS', 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `ID` int(11) NOT NULL,
  `user_id` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `Role` varchar(10) NOT NULL,
  `account` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`ID`, `user_id`, `Password`, `Role`, `account`) VALUES
(1, 'shox@gmail.com', 'shox', 'Admin', 'Active'),
(2, 'ngano@gmail.com', 'shox', 'Student', 'Active'),
(3, 'hey@gmail.com', 'shox', 'Teacher', 'Active'),
(4, 'shox@gmail.com', 'teacher123*', 'Teacher', ''),
(5, '12312@g.com', 'teacher123*', 'Teacher', ''),
(6, 'bunjan.mark476@gmail.com', 'teacher123*', 'Teacher', ''),
(7, '1', 'student123*', 'Student', ''),
(8, '2', 'student123*', 'Student', ''),
(9, '3', 'student123*', 'Student', '');

-- --------------------------------------------------------

--
-- Table structure for table `mytable`
--

CREATE TABLE `mytable` (
  `id` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `course_code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `session_id` int(11) NOT NULL,
  `session` varchar(30) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_attendance`
--

CREATE TABLE `student_attendance` (
  `attendance_id` int(11) NOT NULL,
  `course_code` varchar(10) NOT NULL,
  `subject_code` varchar(10) NOT NULL,
  `semester` int(11) NOT NULL,
  `roll_no` int(11) NOT NULL,
  `attendance` int(11) NOT NULL,
  `attendance_date` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_courses`
--

CREATE TABLE `student_courses` (
  `student_course_id` int(11) NOT NULL,
  `course_code` varchar(10) NOT NULL,
  `semester` int(11) NOT NULL,
  `roll_no` int(11) NOT NULL,
  `subject_code` varchar(10) NOT NULL,
  `session` varchar(10) NOT NULL,
  `assign_date` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_fee`
--

CREATE TABLE `student_fee` (
  `fee_voucher` int(11) NOT NULL,
  `roll_no` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `posting_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE `student_info` (
  `roll_no` int(11) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `middle_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `father_name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `mobile_no` varchar(11) NOT NULL,
  `course_code` varchar(30) NOT NULL,
  `session` varchar(10) DEFAULT NULL,
  `profile_image` blob DEFAULT NULL,
  `prospectus_issued` varchar(10) DEFAULT NULL,
  `prospectus_amount` varchar(10) DEFAULT NULL,
  `form_b` varchar(20) DEFAULT NULL,
  `applicant_status` varchar(20) DEFAULT NULL,
  `application_status` varchar(20) DEFAULT NULL,
  `cnic` varchar(15) DEFAULT NULL,
  `dob` varchar(10) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `permanent_address` varchar(150) DEFAULT NULL,
  `current_address` varchar(150) DEFAULT NULL,
  `place_of_birth` varchar(150) DEFAULT NULL,
  `primary_school` varchar(55) DEFAULT NULL,
  `primary_graduated_date` varchar(55) DEFAULT NULL,
  `academics_certificate` blob DEFAULT NULL,
  `secondary_school` varchar(55) DEFAULT NULL,
  `secondary_graduated_date` varchar(55) DEFAULT NULL,
  `academic_certificate` blob DEFAULT NULL,
  `senior_high_school` varchar(55) NOT NULL,
  `senior_highschool_graduated_date` varchar(10) DEFAULT NULL,
  `acads_certificate` blob DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  `total_marks` int(11) DEFAULT NULL,
  `obtain_marks` int(11) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `admission_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`roll_no`, `first_name`, `middle_name`, `last_name`, `father_name`, `email`, `mobile_no`, `course_code`, `session`, `profile_image`, `prospectus_issued`, `prospectus_amount`, `form_b`, `applicant_status`, `application_status`, `cnic`, `dob`, `gender`, `permanent_address`, `current_address`, `place_of_birth`, `primary_school`, `primary_graduated_date`, `academics_certificate`, `secondary_school`, `secondary_graduated_date`, `academic_certificate`, `senior_high_school`, `senior_highschool_graduated_date`, `acads_certificate`, `semester`, `total_marks`, `obtain_marks`, `state`, `admission_date`) VALUES
(1, 'MARK\r\n		', 'VINCENT\r\n		', 'BUNJAN\r\n		', '123\r\n		', 'bunjan.mark476@gmail.com\r\n		', '09161508298', 'BSAI\r\n		', 'Select Ses', 0x3334333734303930355f3635383932363930323731373336345f373033323037353334323738353434373236365f6e2e6a70670d0a0909, 'No\r\n		', 'Yes\r\n		', '123\r\n		', 'Admitted\r\n		', 'Approved\r\n		', '111111\r\n		', '111111-11-', 'Select Gen', '101 Tagapulot st. Bulua\r\n		', '123\r\n		', '123\r\n		', '123123\r\n		', '111111-11-11\r\n		', 0x3334333734303930355f3635383932363930323731373336345f373033323037353334323738353434373236365f6e202831292e6a70670d0a0909, '123\r\n		', '1111-11-22\r\n		', 0x3334333734303930355f3635383932363930323731373336345f373033323037353334323738353434373236365f6e202831292e6a70670d0a0909, '123\r\n		', '11111-11-1', 0x3334333734303930355f3635383932363930323731373336345f373033323037353334323738353434373236365f6e2e6a7067, NULL, NULL, NULL, NULL, '2023-06-03 09:16:41'),
(2, 'MARK', 'VINCENT', 'BUNJAN', '123', 'bunjan.mark476@gmail.com', '09161508298', 'BSAI', 'Select Ses', 0x3334333734303930355f3635383932363930323731373336345f373033323037353334323738353434373236365f6e2e6a7067, 'No', 'Yes', '123', 'Admitted', 'Approved', '111111', '111111-11-', 'Select Gen', '101 Tagapulot st. Bulua', '123', '123', '123123', '111111-11-11', 0x3334333734303930355f3635383932363930323731373336345f373033323037353334323738353434373236365f6e202831292e6a7067, '123', '1111-11-22', 0x3334333734303930355f3635383932363930323731373336345f373033323037353334323738353434373236365f6e202831292e6a7067, '123', '11111-11-1', 0x3334333734303930355f3635383932363930323731373336345f373033323037353334323738353434373236365f6e2e6a7067, NULL, NULL, NULL, NULL, '2023-06-03 09:17:33'),
(3, 'MARK', 'VINCENT', 'BUNJAN', 'asdf@gmcil.com', 'bunjan.mark476@gmail.com', '09161508298', 'Select Course', 'Select Ses', '', 'Select Opt', 'Select Opt', '', 'Select Option', 'Select Option', '', '', 'Select Gen', '101 Tagapulot st. Bulua', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, '2023-06-03 09:18:59');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_attendance`
--

CREATE TABLE `teacher_attendance` (
  `attendance_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `attendance` int(11) NOT NULL,
  `attendance_date` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_courses`
--

CREATE TABLE `teacher_courses` (
  `teacher_courses_id` int(11) NOT NULL,
  `course_code` varchar(10) NOT NULL,
  `semester` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `subject_code` varchar(10) NOT NULL,
  `assign_date` varchar(10) NOT NULL,
  `total_classes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_info`
--

CREATE TABLE `teacher_info` (
  `teacher_id` int(11) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `middle_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `father_name` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone_no` varchar(11) NOT NULL,
  `profile_image` blob NOT NULL,
  `teacher_status` varchar(10) NOT NULL,
  `application_status` varchar(10) NOT NULL,
  `nat_id` int(15) NOT NULL,
  `dob` varchar(15) NOT NULL,
  `other_phone` int(11) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `permanent_address` varchar(100) NOT NULL,
  `current_address` varchar(100) NOT NULL,
  `place_of_birth` varchar(50) NOT NULL,
  `school_graduated` varchar(55) NOT NULL,
  `graduated_date` varchar(55) NOT NULL,
  `graduation_certificate` varchar(55) NOT NULL,
  `internship` varchar(55) NOT NULL,
  `internship_date` varchar(55) NOT NULL,
  `completion_certificate` varchar(55) NOT NULL,
  `work_experience` varchar(55) NOT NULL,
  `ending_date` varchar(55) NOT NULL,
  `certificate_of_employment` varchar(100) NOT NULL,
  `work_exp` varchar(55) NOT NULL,
  `end_date` varchar(100) NOT NULL,
  `cert_of_emp` varchar(101) NOT NULL,
  `last_qualification` varchar(55) NOT NULL,
  `state` varchar(20) NOT NULL,
  `hire_date` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher_info`
--

INSERT INTO `teacher_info` (`teacher_id`, `first_name`, `middle_name`, `last_name`, `father_name`, `email`, `phone_no`, `profile_image`, `teacher_status`, `application_status`, `nat_id`, `dob`, `other_phone`, `gender`, `permanent_address`, `current_address`, `place_of_birth`, `school_graduated`, `graduated_date`, `graduation_certificate`, `internship`, `internship_date`, `completion_certificate`, `work_experience`, `ending_date`, `certificate_of_employment`, `work_exp`, `end_date`, `cert_of_emp`, `last_qualification`, `state`, `hire_date`) VALUES
(1, 'ggg', 'ddff', 'sdfsdf', '', 'shox@gmail.com', '', '', 'Select Sta', 'Select Sta', 0, '', 0, 'Select Gen', '', '', '', '', '', '', '', '', '', '', '', 'my_qrcode  monick.jpeg', '', '', '', '', '', '26-05-23'),
(2, '123', '123', '1', '', '12312@g.com', '', '', 'Select Sta', 'Select Sta', 0, '', 0, 'Select Gen', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '03-06-23'),
(3, 'MARK', 'VINCENT', 'BUNJAN', '', 'bunjan.mark476@gmail.com', '09161508298', '', 'Select Sta', 'Select Sta', 0, '', 0, 'Select Gen', '101 Tagapulot st. Bulua', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '03-06-23');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_salary_allowances`
--

CREATE TABLE `teacher_salary_allowances` (
  `teacher_id` int(11) NOT NULL,
  `basic_salary` int(11) NOT NULL,
  `medical_allowance` int(11) NOT NULL,
  `hr_allowance` int(11) NOT NULL,
  `scale` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_salary_report`
--

CREATE TABLE `teacher_salary_report` (
  `salary_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `status` varchar(11) NOT NULL,
  `paid_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `time_table`
--

CREATE TABLE `time_table` (
  `id` int(11) NOT NULL,
  `course_code` varchar(30) NOT NULL,
  `semester` int(11) NOT NULL,
  `timing_from` varchar(10) NOT NULL,
  `timing_to` varchar(10) NOT NULL,
  `day` varchar(20) NOT NULL,
  `subject_code` varchar(20) NOT NULL,
  `room_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `time_table`
--

INSERT INTO `time_table` (`id`, `course_code`, `semester`, `timing_from`, `timing_to`, `day`, `subject_code`, `room_no`) VALUES
(1, 'MCS', 2, '18:00', '21:00', '1', 'OOP', 21),
(2, 'MCS', 2, '18:00', '21:00', '2', 'DBMS', 21),
(3, 'MCS', 2, '18:00', '21:00', '3', 'DLD', 7),
(4, 'MCS', 2, '18:00', '21:00', '4', 'SE', 21),
(5, 'MCS', 2, '18:00', '21:00', '5', 'WEB', 21),
(6, 'MIT', 2, '18:00', '21:00', '4', 'MBAD', 12);

-- --------------------------------------------------------

--
-- Table structure for table `weekdays`
--

CREATE TABLE `weekdays` (
  `day_id` int(11) NOT NULL,
  `day_name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `weekdays`
--

INSERT INTO `weekdays` (`day_id`, `day_name`) VALUES
(1, 'Monday'),
(2, 'Tuesday'),
(3, 'Wednesday'),
(4, 'Thursday'),
(5, 'Friday'),
(6, 'Saturday'),
(7, 'Sunday');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class_result`
--
ALTER TABLE `class_result`
  ADD PRIMARY KEY (`class_result_id`),
  ADD KEY `fk_class_result_course_code` (`course_code`),
  ADD KEY `fk_class_result_roll_no` (`roll_no`),
  ADD KEY `fk_class_result_subject_code` (`subject_code`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_code`);

--
-- Indexes for table `course_subjects`
--
ALTER TABLE `course_subjects`
  ADD PRIMARY KEY (`subject_code`),
  ADD KEY `fk_course_subjects_course_code` (`course_code`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `mytable`
--
ALTER TABLE `mytable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `student_attendance`
--
ALTER TABLE `student_attendance`
  ADD PRIMARY KEY (`attendance_id`),
  ADD KEY `fk_student_attendance_course_code` (`course_code`),
  ADD KEY `fk_student_attendance_subject_code` (`subject_code`),
  ADD KEY `fk_student_attendance_roll_no` (`roll_no`);

--
-- Indexes for table `student_courses`
--
ALTER TABLE `student_courses`
  ADD PRIMARY KEY (`student_course_id`),
  ADD KEY `course_code` (`course_code`),
  ADD KEY `fk_student_courses_subject_code` (`subject_code`),
  ADD KEY `fk_student_course_roll_no` (`roll_no`);

--
-- Indexes for table `student_fee`
--
ALTER TABLE `student_fee`
  ADD PRIMARY KEY (`fee_voucher`),
  ADD KEY `fk_student_fee_roll_no` (`roll_no`);

--
-- Indexes for table `student_info`
--
ALTER TABLE `student_info`
  ADD PRIMARY KEY (`roll_no`),
  ADD KEY `fk_student_info_course_code` (`course_code`);

--
-- Indexes for table `teacher_attendance`
--
ALTER TABLE `teacher_attendance`
  ADD PRIMARY KEY (`attendance_id`),
  ADD KEY `fk_student_attendance_teacher_id` (`teacher_id`);

--
-- Indexes for table `teacher_courses`
--
ALTER TABLE `teacher_courses`
  ADD PRIMARY KEY (`teacher_courses_id`),
  ADD KEY `fk_teacher_courses_course_code` (`course_code`),
  ADD KEY `fk_teacher_salary_allowances_teacher_id` (`teacher_id`),
  ADD KEY `fk_teacher_salary_allowance_subject_cod` (`subject_code`);

--
-- Indexes for table `teacher_info`
--
ALTER TABLE `teacher_info`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `teacher_salary_allowances`
--
ALTER TABLE `teacher_salary_allowances`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `teacher_salary_report`
--
ALTER TABLE `teacher_salary_report`
  ADD PRIMARY KEY (`salary_id`),
  ADD KEY `fk_teacher_salary_report_teacher_id` (`teacher_id`);

--
-- Indexes for table `time_table`
--
ALTER TABLE `time_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_time_table_course_code` (`course_code`);

--
-- Indexes for table `weekdays`
--
ALTER TABLE `weekdays`
  ADD PRIMARY KEY (`day_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `class_result`
--
ALTER TABLE `class_result`
  MODIFY `class_result_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `session_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_attendance`
--
ALTER TABLE `student_attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_courses`
--
ALTER TABLE `student_courses`
  MODIFY `student_course_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_fee`
--
ALTER TABLE `student_fee`
  MODIFY `fee_voucher` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_info`
--
ALTER TABLE `student_info`
  MODIFY `roll_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `teacher_attendance`
--
ALTER TABLE `teacher_attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teacher_courses`
--
ALTER TABLE `teacher_courses`
  MODIFY `teacher_courses_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teacher_info`
--
ALTER TABLE `teacher_info`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `teacher_salary_report`
--
ALTER TABLE `teacher_salary_report`
  MODIFY `salary_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `time_table`
--
ALTER TABLE `time_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `weekdays`
--
ALTER TABLE `weekdays`
  MODIFY `day_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `class_result`
--
ALTER TABLE `class_result`
  ADD CONSTRAINT `fk_class_result_course_code` FOREIGN KEY (`course_code`) REFERENCES `courses` (`course_code`),
  ADD CONSTRAINT `fk_class_result_roll_no` FOREIGN KEY (`roll_no`) REFERENCES `student_info` (`roll_no`),
  ADD CONSTRAINT `fk_class_result_subject_code` FOREIGN KEY (`subject_code`) REFERENCES `course_subjects` (`subject_code`);

--
-- Constraints for table `course_subjects`
--
ALTER TABLE `course_subjects`
  ADD CONSTRAINT `fk_course_subjects_course_code` FOREIGN KEY (`course_code`) REFERENCES `courses` (`course_code`);

--
-- Constraints for table `student_attendance`
--
ALTER TABLE `student_attendance`
  ADD CONSTRAINT `fk_student_attendance_course_code` FOREIGN KEY (`course_code`) REFERENCES `courses` (`course_code`),
  ADD CONSTRAINT `fk_student_attendance_roll_no` FOREIGN KEY (`roll_no`) REFERENCES `student_info` (`roll_no`),
  ADD CONSTRAINT `fk_student_attendance_subject_code` FOREIGN KEY (`subject_code`) REFERENCES `course_subjects` (`subject_code`);

--
-- Constraints for table `student_courses`
--
ALTER TABLE `student_courses`
  ADD CONSTRAINT `fk_student_course_roll_no` FOREIGN KEY (`roll_no`) REFERENCES `student_info` (`roll_no`),
  ADD CONSTRAINT `fk_student_courses_course_code` FOREIGN KEY (`course_code`) REFERENCES `courses` (`course_code`),
  ADD CONSTRAINT `fk_student_courses_subject_code` FOREIGN KEY (`subject_code`) REFERENCES `course_subjects` (`subject_code`);

--
-- Constraints for table `student_fee`
--
ALTER TABLE `student_fee`
  ADD CONSTRAINT `fk_student_fee_roll_no` FOREIGN KEY (`roll_no`) REFERENCES `student_info` (`roll_no`);

--
-- Constraints for table `teacher_attendance`
--
ALTER TABLE `teacher_attendance`
  ADD CONSTRAINT `fk_student_attendance_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `teacher_info` (`teacher_id`);

--
-- Constraints for table `teacher_courses`
--
ALTER TABLE `teacher_courses`
  ADD CONSTRAINT `fk_teacher_courses_course_code` FOREIGN KEY (`course_code`) REFERENCES `courses` (`course_code`),
  ADD CONSTRAINT `fk_teacher_salary_allowance_subject_cod` FOREIGN KEY (`subject_code`) REFERENCES `course_subjects` (`subject_code`),
  ADD CONSTRAINT `fk_teacher_salary_allowances_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `teacher_info` (`teacher_id`);

--
-- Constraints for table `teacher_salary_allowances`
--
ALTER TABLE `teacher_salary_allowances`
  ADD CONSTRAINT `fk_teacher_salary_allowances_teacher_id_1` FOREIGN KEY (`teacher_id`) REFERENCES `teacher_info` (`teacher_id`);

--
-- Constraints for table `teacher_salary_report`
--
ALTER TABLE `teacher_salary_report`
  ADD CONSTRAINT `fk_teacher_salary_report_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `teacher_info` (`teacher_id`);

--
-- Constraints for table `time_table`
--
ALTER TABLE `time_table`
  ADD CONSTRAINT `fk_time_table_course_code` FOREIGN KEY (`course_code`) REFERENCES `courses` (`course_code`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
