-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 14, 2018 at 05:28 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id3436965_jcsystems`
--

-- --------------------------------------------------------

--
-- Table structure for table `curriculum`
--

CREATE TABLE `curriculum` (
  `cur_id` int(255) NOT NULL,
  `cur_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cur_nameTH` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cur_nameEN` varchar(100) COLLATE utf32_unicode_ci NOT NULL,
  `degreeTH` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dgTH` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `degreeEN` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dgEN` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `major` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sumCredit` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `fomatYear` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `StdRecieve` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `coopOT` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `degreeGive` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `careerSP` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `curriculum`
--

INSERT INTO `curriculum` (`cur_id`, `cur_name`, `cur_nameTH`, `cur_nameEN`, `degreeTH`, `dgTH`, `degreeEN`, `dgEN`, `major`, `sumCredit`, `fomatYear`, `language`, `StdRecieve`, `coopOT`, `degreeGive`, `careerSP`) VALUES
(1, 'หลักสูตรวิทยาศาสตร์บัณฑิต สาขาวิชาธุรกิจอิเล็กทรอนิกส์ หลักสูตรปรับปรุง พ.ศ.2553', 'วิทยาศาสตรบัณฑิต สาขาวิชาธุรกิจอิเล็กทรอนิกส์', 'Bachelor of Science Program in Electronic Business', 'วิทยาศาสตรบัณฑิต (ธุรกิจอิเล็กทรอนิกส์)', 'วท.บ. (ธุรกิจอิเล็กทรอนิกส์)', 'Bachelor of Science (Electronic Business)', 'B.Sc. (Electronic Business)', '(ไม่มี)', '130', 'หลักสูตรระดับปริญญาตรี หลักสูตร 4 ปี', 'ภาษาไทย และบางวิชาสอนเป็นภาษาอังกฤษ', 'รับนักศึกษาไทย', 'ไม่มี', 'ให้ปริญญาเพียงสาขาวิชาเดียว', 'ไม่ปรากฎ');

-- --------------------------------------------------------

--
-- Table structure for table `match_credit`
--

CREATE TABLE `match_credit` (
  `credit_id` int(11) NOT NULL,
  `cur_id` int(11) NOT NULL,
  `code` varchar(11) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `credit` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `match_credit`
--

INSERT INTO `match_credit` (`credit_id`, `cur_id`, `code`, `credit`) VALUES
(146, 1, 'c1', 1),
(147, 1, 'c2', 2),
(148, 1, 'c3', 3),
(149, 1, 'g1', 4),
(150, 1, 'g2', 5),
(151, 1, 'g3', 6),
(152, 1, 'g4', 7),
(153, 1, 'g5', 8),
(154, 1, 'sg1', 9),
(155, 1, 'sg2', 10),
(156, 1, 'sg3', 11),
(157, 1, 'sg4', 12),
(158, 1, 'sg5', 13),
(159, 1, 'sg6', 14),
(160, 1, 'sg7', 15);

-- --------------------------------------------------------

--
-- Table structure for table `match_cur`
--

CREATE TABLE `match_cur` (
  `matchCur_id` int(255) NOT NULL,
  `cur_id` int(255) NOT NULL,
  `subject_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `subject_type` int(11) NOT NULL COMMENT '1:บังคับ 2:เลือก',
  `subgroup_id` int(255) NOT NULL,
  `group_id` int(255) NOT NULL,
  `category_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `match_cur`
--

INSERT INTO `match_cur` (`matchCur_id`, `cur_id`, `subject_code`, `subject_type`, `subgroup_id`, `group_id`, `category_id`) VALUES
(33, 1, '975-251', 1, 0, 1, 1),
(35, 1, '976-220', 1, 0, 1, 1),
(37, 1, '﻿975-150*', 1, 0, 2, 1),
(39, 1, '976-231', 1, 0, 4, 2),
(45, 1, '975-110', 2, 2, 1, 1),
(46, 1, '﻿975-140', 2, 1, 3, 2),
(47, 1, '975-142', 2, 1, 3, 2),
(48, 1, '975-134', 2, 1, 3, 2),
(49, 1, '975-147', 2, 1, 3, 2),
(50, 1, '975-200', 1, 0, 3, 2),
(51, 1, '975-146', 1, 0, 3, 2),
(52, 1, '975-133', 1, 1, 3, 2),
(53, 1, '975-240', 1, 0, 1, 1),
(54, 1, '975-143', 1, 0, 1, 1),
(55, 1, '975-147', 1, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `match_other_sub`
--

CREATE TABLE `match_other_sub` (
  `match_os_id` int(255) NOT NULL,
  `cur_id` int(255) NOT NULL,
  `std_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `subjects_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `subject_type` int(10) NOT NULL,
  `subgroup_id` int(255) NOT NULL,
  `group_id` int(255) NOT NULL,
  `category_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `match_students`
--

CREATE TABLE `match_students` (
  `matchStd_id` int(255) NOT NULL,
  `students_gcode` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cur_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `match_students`
--

INSERT INTO `match_students` (`matchStd_id`, `students_gcode`, `cur_id`) VALUES
(20, '5700000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `match_subjects`
--

CREATE TABLE `match_subjects` (
  `match_sub_id` int(255) NOT NULL,
  `std_id` varchar(255) COLLATE utf32_unicode_ci NOT NULL,
  `subjects_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `subjects_status` int(11) NOT NULL COMMENT '0:ยังไม่ลงทะเบียน 1:ผ่าน 2:กำลังเรียน 3:ไม่ผ่าน'
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `students_id` int(255) NOT NULL,
  `students_gname` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `students_group` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `students_gcode` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`students_id`, `students_gname`, `students_group`, `students_gcode`) VALUES
(8, 'ทดสอบกลุ่มนักศึกษา', '5700000XXX', '5700000');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `subjects_id` int(255) NOT NULL,
  `subjects_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `subjects_name_TH` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `subjects_name_EN` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `subjects_credit` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`subjects_id`, `subjects_code`, `subjects_name_TH`, `subjects_name_EN`, `subjects_credit`) VALUES
(1, '﻿976-120', 'คณิตศาสตร', 'Mathematics', '3(3-0-6)'),
(2, '976-121', 'ระเบียบวิธีทางสถิติ', 'Statistical Method', '3(3-0-6)'),
(3, '976-130', 'คอมพิวเตอร์และเทคโนโลยีอินเทอร์เน็ต', 'Computer and Internet Technology', '3(2-2-5)'),
(4, '976-140', 'ซอฟต์แวร์และการโปรแกรมคอมพิวเตอร', 'Software and Computer Programming', '3(2-2-5)'),
(5, '976-200', 'หลักการธุรกิจอิเล็กทรอนิกส', 'Principles of Electronic Business', '3(2-2-5)'),
(6, '976-220', 'คณิตศาสตร์ส าหรับเทคโนโลยีสารสนเทศ', 'Mathematics for Information Technology', '4(4-0-8)'),
(7, '976-231', 'หลักการการสื่อสารข้อมูลและเครือข่ายคอมพิวเตอร์', 'Principles of Data Communications and Computer Networks', '3(2-2-5)'),
(8, '976-242', 'การวิเคราะห์และออกแบบระบบ', 'Systems Analysis and Design', '3(2-2-5)'),
(10, '﻿975-150*', 'ภาษาอังกฤษเตรียมความพร้อม', 'Preparatory English', '3(3-0-6)'),
(12, '975-152', 'การอ่านและเขียนภาษาอังกฤษพื้นฐาน', 'Fundamental English Reading and Writing', '3(3-0-6)'),
(13, '975-250', 'ภาษาอังกฤษสำหรับธุรกิจ', 'English for Business', '3(3-0-6)'),
(14, '975-251', 'การพัฒนาการอ่านและการเขียน', 'Reading and Writing Development', '3(3-0-6)'),
(15, '975-252', 'การสนทนาภาษาอังกฤษ', 'Conversation in English', '3(3-0-6)'),
(16, '975-450', 'ทักษะการนำเสนอและการเป็นผู้นำ', 'Presentation and Leadership skills', '3(3-0-6)'),
(17, '975-451', 'ภาษาอังกฤษเชิงวิชาการ', 'English for Academic Purposes', '3(3-0-6)'),
(18, '975-452', 'ภาษาอังกฤษเพื่อการสมัครงาน', 'English for Job Application', '3(3-0-6)'),
(19, '﻿975-100', 'สุขภาวะกายและจิต', 'Healthy Body and Mind', '3(2-2-5)'),
(20, '975-101', 'ภูมิปัญญาในการด าเนินชีวิต', 'Wisdom of Living', '3(2-2-5)'),
(21, '975-200', 'กิจกรรมเสริมหลักสูตร', 'Co-curricular Activities', '1(0-0-3)'),
(22, '975-110', 'ทักษะในการสื่อสารภาษาไทย', 'Skills in Thai Communication', '3(2-2-5)'),
(23, '975-111', 'การสืบค้นสารสนเทศและการนำเสนองาน วิชาการ', 'Information Searching and Presentation', '3(2-2-5)'),
(24, '975-210', 'ท้องถิ่นศึกษา', 'Local Studies', '3(3-0-6)'),
(25, '975-211', 'รัฐศาสตร์และการเมืองไทย', 'Political Science and Thai Politics', '3(3-0-6)'),
(26, '975-310', 'วิถีชีวิตกับสังคม', 'The Way of Life and Society', '3(3-0-6)'),
(27, '975-311', 'สังคมการทำงาน', 'Working Society', '3(2-2-5)'),
(28, '﻿975-130', 'วิทยาศาสตร์ เทคโนโลยีและสังคม', 'Science, Technology and Society', '3(3-0-6)'),
(29, '975-131', 'การใช้คอมพิวเตอร์ในชีวิตประจำวัน', 'Computer in Daily Life', '1(0-3-0)'),
(30, '975-132', 'วิทยาศาสตร์สิ่งแวดล้อม', 'Environmental Science', '3(3-0-6)'),
(31, '975-133', 'เคมีในชีวิตประจำวัน', 'Chemistry in Daily Life', '3(3-0-6)'),
(32, '975-134', 'วิทยาศาสตร์กายภาพ', 'Physical Science', '3(3-0-6)'),
(33, '975-135', 'วิทยาศาสตร์ชีวภาพ', 'Biological Science', '3(3-0-6)'),
(34, '﻿975-140', 'ฟุตซอล', 'Futsal', '1(0-2-1)'),
(35, '975-141', 'บาสเก็ตบอล', 'Basketbal', '1(0-2-1)'),
(36, '975-142', 'วอลเลย์บอลชายหาด', 'Beach Volleyball', '1(0-2-1)'),
(37, '975-143', 'แบดมินตัน', 'Badminton', '1(0-2-1)'),
(38, '975-144', 'ลีลาศ', 'Social Dance', '1(0-2-1)'),
(39, '975-145', 'แอโรบิค', 'Aerobics', '1(0-2-1)'),
(40, '975-146', 'โยคะ', 'Yoga', '1(0-2-1)'),
(41, '975-147', 'เทควันโด', 'Tae Kwon Do', '1(0-2-1)'),
(42, '975-148', 'การดำน้ำ', 'Scuba Diving', '1(0-2-1)'),
(43, '975-240', 'กีฬาและการพัฒนาบุคลิกภาพ', 'Sport and Personal Development', '1(0-2-1)'),
(44, '975-241', 'การจัดกิจกรรมค่ายพักแรม', 'Camping', '1(0-2-1)');

-- --------------------------------------------------------

--
-- Table structure for table `subject_category`
--

CREATE TABLE `subject_category` (
  `category_id` int(255) NOT NULL,
  `category_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `category_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `subject_category`
--

INSERT INTO `subject_category` (`category_id`, `category_name`, `category_code`) VALUES
(1, 'หมวดวิชาศึกษาทั่วไป', 'c1'),
(2, 'หมวดวิชาเฉพาะ', 'c2'),
(3, 'หมวดวิชาเลือกเสรี', 'c3'),
(4, '', 'c4'),
(5, '', 'c5');

-- --------------------------------------------------------

--
-- Table structure for table `subject_group`
--

CREATE TABLE `subject_group` (
  `group_id` int(255) NOT NULL,
  `group_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `group_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `subject_group`
--

INSERT INTO `subject_group` (`group_id`, `group_name`, `group_code`) VALUES
(1, 'กลุ่มวิชาภาษา', 'g1'),
(2, 'กลุ่มวิชาสังคมศาสตร์ และ/หรือ มนุษยศาสตร์ ', 'g2'),
(3, 'กลุ่มวิชาวิทยาศาสตร์และคณิตศาสตร์', 'g3'),
(4, 'กลุ่มวิชาแกน', 'g4'),
(5, 'กลุ่มวิชาชีพ', 'g5'),
(6, '', 'g6'),
(7, '', 'g7'),
(8, '', 'g8'),
(9, '', 'g9'),
(10, '', 'g10');

-- --------------------------------------------------------

--
-- Table structure for table `subject_subgroup`
--

CREATE TABLE `subject_subgroup` (
  `subgroup_id` int(255) NOT NULL,
  `subgroup_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `subgroup_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `subject_subgroup`
--

INSERT INTO `subject_subgroup` (`subgroup_id`, `subgroup_name`, `subgroup_code`) VALUES
(0, '-', 'sg0'),
(1, 'กลุ่มวิชาคอมพิวเตอร์และเทคโนโลยีพื้นฐาน ', 'sg1'),
(2, 'กลุ่มวิชาวิทยาการจัดการ', 'sg2'),
(3, 'วิชาชีพบังคับ (แผน ก. สหกิจศึกษา)', 'sg3'),
(4, 'วิชาชีพเลือก (แผน ก. สหกิจศึกษา)', 'sg4'),
(5, 'วิชาชีพบังคับ (แผน ข. ฝึกงาน)', 'sg5'),
(6, 'วิชาชีพเลือก (แผน ข. ฝึกงาน)', 'sg6'),
(7, 'รายวิชาบังคับวิชาพลศึกษา', 'sg7'),
(8, '', 'sg8'),
(9, '', 'sg9'),
(10, '', 'sg10'),
(11, '', 'sg11'),
(12, '', 'sg12'),
(13, '', 'sg13'),
(14, '', 'sg14'),
(15, '', 'sg15');

-- --------------------------------------------------------

--
-- Table structure for table `visitor`
--

CREATE TABLE `visitor` (
  `visitor_id` int(255) NOT NULL,
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `surname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `id_card` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `permistion` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `times` int(255) NOT NULL,
  `latest_time` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `visitor`
--

INSERT INTO `visitor` (`visitor_id`, `id`, `title`, `name`, `surname`, `gender`, `id_card`, `email`, `position`, `permistion`, `times`, `latest_time`) VALUES
(1, '5700000001', 'นาย', 'ทดสอบ', 'นักศึกษา', 'M', '0000000000', 'xxx@phuket.psu.ac.th', 'Student', 'admin', 1, ''),
(2, 'teacher', 'นาง', 'ทดสอบ', 'อาจารย์', 'F', '0000000000', 'xxx@phuket.psu.ac.th', 'Staff', 'admin', 1, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `curriculum`
--
ALTER TABLE `curriculum`
  ADD PRIMARY KEY (`cur_id`);

--
-- Indexes for table `match_credit`
--
ALTER TABLE `match_credit`
  ADD PRIMARY KEY (`credit_id`);

--
-- Indexes for table `match_cur`
--
ALTER TABLE `match_cur`
  ADD PRIMARY KEY (`matchCur_id`);

--
-- Indexes for table `match_other_sub`
--
ALTER TABLE `match_other_sub`
  ADD PRIMARY KEY (`match_os_id`);

--
-- Indexes for table `match_students`
--
ALTER TABLE `match_students`
  ADD PRIMARY KEY (`matchStd_id`);

--
-- Indexes for table `match_subjects`
--
ALTER TABLE `match_subjects`
  ADD PRIMARY KEY (`match_sub_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`students_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`subjects_id`);

--
-- Indexes for table `subject_category`
--
ALTER TABLE `subject_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `subject_group`
--
ALTER TABLE `subject_group`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `subject_subgroup`
--
ALTER TABLE `subject_subgroup`
  ADD PRIMARY KEY (`subgroup_id`);

--
-- Indexes for table `visitor`
--
ALTER TABLE `visitor`
  ADD PRIMARY KEY (`visitor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `curriculum`
--
ALTER TABLE `curriculum`
  MODIFY `cur_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `match_credit`
--
ALTER TABLE `match_credit`
  MODIFY `credit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `match_cur`
--
ALTER TABLE `match_cur`
  MODIFY `matchCur_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `match_other_sub`
--
ALTER TABLE `match_other_sub`
  MODIFY `match_os_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `match_students`
--
ALTER TABLE `match_students`
  MODIFY `matchStd_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `match_subjects`
--
ALTER TABLE `match_subjects`
  MODIFY `match_sub_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `students_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `subjects_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `subject_category`
--
ALTER TABLE `subject_category`
  MODIFY `category_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subject_group`
--
ALTER TABLE `subject_group`
  MODIFY `group_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `subject_subgroup`
--
ALTER TABLE `subject_subgroup`
  MODIFY `subgroup_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `visitor`
--
ALTER TABLE `visitor`
  MODIFY `visitor_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
