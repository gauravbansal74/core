-- phpMyAdmin SQL Dump
-- version 4.2.6deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 22, 2014 at 03:18 AM
-- Server version: 5.5.40-0ubuntu1
-- PHP Version: 5.5.12-2ubuntu4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `offcampus4u`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
`id` bigint(20) NOT NULL,
  `typeId` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `imageUrl` varchar(50) NOT NULL,
  `createdBy` bigint(20) NOT NULL DEFAULT '1',
  `createdOn` datetime NOT NULL DEFAULT '2014-11-21 00:00:00',
  `modifiedBy` bigint(20) NOT NULL DEFAULT '1',
  `modifiedOn` datetime NOT NULL DEFAULT '2014-11-21 00:00:00',
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `enabled` bit(1) NOT NULL DEFAULT b'1',
  `reviewed` bit(1) NOT NULL DEFAULT b'1'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `typeId`, `name`, `description`, `imageUrl`, `createdBy`, `createdOn`, `modifiedBy`, `modifiedOn`, `deleted`, `enabled`, `reviewed`) VALUES
(1, 1, 'Architects', 'Hey, I just wanted to check in with you from Toronto. I got here earlier today.', '3.png', 1, '2014-11-21 00:00:00', 1, '2014-11-21 00:00:00', b'0', b'1', b'1'),
(2, 1, 'Business/Systems Analysts', 'Hey, I just wanted to check in with you from Toronto. I got here earlier today.', '3.png', 1, '2014-11-21 00:00:00', 1, '2014-11-21 00:00:00', b'0', b'1', b'1'),
(3, 1, 'Computer Operators', 'Hey, I just wanted to check in with you from Toronto. I got here earlier today.', '3.png', 1, '2014-11-21 00:00:00', 1, '2014-11-21 00:00:00', b'0', b'1', b'1'),
(4, 1, 'Consultants', 'Hey, I just wanted to check in with you from Toronto. I got here earlier today.', '3.png', 1, '2014-11-21 00:00:00', 1, '2014-11-21 00:00:00', b'0', b'1', b'1'),
(5, 1, 'Database Development & Administration', 'Hey, I just wanted to check in with you from Toronto. I got here earlier today.', '3.png', 1, '2014-11-21 00:00:00', 1, '2014-11-21 00:00:00', b'0', b'1', b'1'),
(6, 1, 'Developers/Programmers', 'Hey, I just wanted to check in with you from Toronto. I got here earlier today.', '3.png', 1, '2014-11-21 00:00:00', 1, '2014-11-21 00:00:00', b'0', b'1', b'1'),
(7, 1, 'Engineering - Hardware', 'Hey, I just wanted to check in with you from Toronto. I got here earlier today.', '3.png', 1, '2014-11-21 00:00:00', 1, '2014-11-21 00:00:00', b'0', b'1', b'1'),
(8, 1, 'Engineering - Network', 'Hey, I just wanted to check in with you from Toronto. I got here earlier today.', '3.png', 1, '2014-11-21 00:00:00', 1, '2014-11-21 00:00:00', b'0', b'1', b'1'),
(9, 1, 'Engineering - Software', 'Hey, I just wanted to check in with you from Toronto. I got here earlier today.', '3.png', 1, '2014-11-21 00:00:00', 1, '2014-11-21 00:00:00', b'0', b'1', b'1'),
(10, 1, 'Help Desk & IT Support', 'Hey, I just wanted to check in with you from Toronto. I got here earlier today.', '3.png', 1, '2014-11-21 00:00:00', 1, '2014-11-21 00:00:00', b'0', b'1', b'1'),
(11, 1, 'Management', 'Hey, I just wanted to check in with you from Toronto. I got here earlier today.', '3.png', 1, '2014-11-21 00:00:00', 1, '2014-11-21 00:00:00', b'0', b'1', b'1'),
(12, 1, 'Networks & Systems Administration', 'Hey, I just wanted to check in with you from Toronto. I got here earlier today.', '3.png', 1, '2014-11-21 00:00:00', 1, '2014-11-21 00:00:00', b'0', b'1', b'1'),
(13, 1, 'Product Management & Development', 'Hey, I just wanted to check in with you from Toronto. I got here earlier today.', '3.png', 1, '2014-11-21 00:00:00', 1, '2014-11-21 00:00:00', b'0', b'1', b'1'),
(14, 1, 'Programme & Project Management', 'Hey, I just wanted to check in with you from Toronto. I got here earlier today.', '3.png', 1, '2014-11-21 00:00:00', 1, '2014-11-21 00:00:00', b'0', b'1', b'1'),
(15, 1, 'Sales - Pre & Post', 'Hey, I just wanted to check in with you from Toronto. I got here earlier today.', '3.png', 1, '2014-11-21 00:00:00', 1, '2014-11-21 00:00:00', b'0', b'1', b'1'),
(16, 1, 'Security', 'Hey, I just wanted to check in with you from Toronto. I got here earlier today.', '3.png', 1, '2014-11-21 00:00:00', 1, '2014-11-21 00:00:00', b'0', b'1', b'1'),
(17, 1, 'Team Leaders', 'Hey, I just wanted to check in with you from Toronto. I got here earlier today.', '3.png', 1, '2014-11-21 00:00:00', 1, '2014-11-21 00:00:00', b'0', b'1', b'1'),
(18, 1, 'Technical Writing', 'Hey, I just wanted to check in with you from Toronto. I got here earlier today.', '3.png', 1, '2014-11-21 00:00:00', 1, '2014-11-21 00:00:00', b'0', b'1', b'1'),
(19, 1, 'Telecommunications', 'Hey, I just wanted to check in with you from Toronto. I got here earlier today.', '3.png', 1, '2014-11-21 00:00:00', 1, '2014-11-21 00:00:00', b'0', b'1', b'1'),
(20, 1, 'Testing & Quality Assurance', 'Hey, I just wanted to check in with you from Toronto. I got here earlier today.', '3.png', 1, '2014-11-21 00:00:00', 1, '2014-11-21 00:00:00', b'0', b'1', b'1'),
(21, 1, 'Web Development & Production', 'Hey, I just wanted to check in with you from Toronto. I got here earlier today.', '3.png', 1, '2014-11-21 00:00:00', 1, '2014-11-21 00:00:00', b'0', b'1', b'1'),
(22, 1, 'Other', 'Hey, I just wanted to check in with you from Toronto. I got here earlier today.', '3.png', 1, '2014-11-21 00:00:00', 1, '2014-11-21 00:00:00', b'0', b'1', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE IF NOT EXISTS `jobs` (
`id` bigint(20) NOT NULL,
  `categoryid` bigint(20) NOT NULL,
  `name` text NOT NULL,
  `minExperience` double NOT NULL,
  `maxExperience` double NOT NULL,
  `showSalary` bit(1) NOT NULL,
  `minSalary` bigint(20) NOT NULL,
  `maxSalary` bigint(20) NOT NULL,
  `keywords` text NOT NULL,
  `body` text NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `applicationMode` bigint(20) NOT NULL,
  `modeSource` varchar(200) NOT NULL,
  `imageUrl` text NOT NULL,
  `createdBy` bigint(20) NOT NULL,
  `createdOn` datetime NOT NULL,
  `modifiedBy` bigint(20) NOT NULL,
  `modifiedOn` datetime NOT NULL,
  `reviewedBy` bigint(20) NOT NULL,
  `reviewedOn` datetime NOT NULL,
  `deleted` bit(1) NOT NULL,
  `enabled` bit(1) NOT NULL,
  `reviewed` bit(1) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `categoryid`, `name`, `minExperience`, `maxExperience`, `showSalary`, `minSalary`, `maxSalary`, `keywords`, `body`, `city`, `state`, `country`, `applicationMode`, `modeSource`, `imageUrl`, `createdBy`, `createdOn`, `modifiedBy`, `modifiedOn`, `reviewedBy`, `reviewedOn`, `deleted`, `enabled`, `reviewed`) VALUES
(1, 1, 'Opening for Business Analysts with Valuelabs, Hyderabad', 5, 9, b'1', 500000, 1000000, 'Business Analyst, BA, Healthcare, claims processing', 'Job Description\r\nHi,\r\n\r\nGreeting from ValueLabs!!!\r\n\r\nWe have requirement for Business Analysts in ValueLabs,Hyderabad. Please go through the requirement in detail and if you are interested share me your updated resume ASAP with the below details.\r\n\r\nTotal Experience:\r\nRelevant Experience:\r\nCCTC:\r\nECTC:\r\nNotice Period:\r\n\r\nJob Description \r\nJob Title: Business Analysts\r\nExp: 5 - 9 Yrs\r\nJob Location: ValueLabs, Hyderabad\r\n\r\nRequired Skill\r\nShould have 5+ years of experience as a Business Analyst.\r\nWorking experience in US Healthcare domain(Mandatory)\r\nWorking experience with Benefits Administration and Online Enrollment.\r\nStrong communication and documentation skills\r\n\r\n\r\nThanks,\r\nHR Team\r\n\r\n\r\n\r\n\r\nSalary: Not Disclosed by Recruiter\r\nIndustry: IT-Software / Software Services\r\nFunctional Area: IT Software - Application Programming, Maintenance\r\nRole Category: Software Developer\r\nRole: Software Developer\r\nKeyskills: Business Analyst, BA, Healthcare, claims processing\r\nDesired Profile\r\n\r\nEducation:UG -Any Graduate - Any Specialization \r\nPG - Any Postgraduate - Any Specialization \r\nDoctorate - Any Doctorate - Any Specialization', 'Hyderabad', 'Andhra Pradesh', 'India', 1, 'http://google.com', '1.png', 1, '2014-11-21 00:00:00', 1, '2014-11-21 00:00:00', 1, '2014-11-21 00:00:00', b'0', b'1', b'1'),
(2, 1, 'Opening for Business Analysts with Valuelabs, Hyderabad', 5, 9, b'1', 500000, 1000000, 'Business Analyst, BA, Healthcare, claims processing', 'Job Description\r\nHi,\r\n\r\nGreeting from ValueLabs!!!\r\n\r\nWe have requirement for Business Analysts in ValueLabs,Hyderabad. Please go through the requirement in detail and if you are interested share me your updated resume ASAP with the below details.\r\n\r\nTotal Experience:\r\nRelevant Experience:\r\nCCTC:\r\nECTC:\r\nNotice Period:\r\n\r\nJob Description \r\nJob Title: Business Analysts\r\nExp: 5 - 9 Yrs\r\nJob Location: ValueLabs, Hyderabad\r\n\r\nRequired Skill\r\nShould have 5+ years of experience as a Business Analyst.\r\nWorking experience in US Healthcare domain(Mandatory)\r\nWorking experience with Benefits Administration and Online Enrollment.\r\nStrong communication and documentation skills\r\n\r\n\r\nThanks,\r\nHR Team\r\n\r\n\r\n\r\n\r\nSalary: Not Disclosed by Recruiter\r\nIndustry: IT-Software / Software Services\r\nFunctional Area: IT Software - Application Programming, Maintenance\r\nRole Category: Software Developer\r\nRole: Software Developer\r\nKeyskills: Business Analyst, BA, Healthcare, claims processing\r\nDesired Profile\r\n\r\nEducation:UG -Any Graduate - Any Specialization \r\nPG - Any Postgraduate - Any Specialization \r\nDoctorate - Any Doctorate - Any Specialization', 'Hyderabad', 'Andhra Pradesh', 'India', 0, 'gauravbansal74@gmail.com', '1.png', 1, '2014-11-21 00:00:00', 1, '2014-11-21 00:00:00', 1, '2014-11-21 00:00:00', b'0', b'1', b'1'),
(3, 1, 'Opening for Business Analysts with Valuelabs, Hyderabad', 5, 9, b'1', 500000, 1000000, 'Business Analyst, BA, Healthcare, claims processing', 'Job Description\r\nHi,\r\n\r\nGreeting from ValueLabs!!!\r\n\r\nWe have requirement for Business Analysts in ValueLabs,Hyderabad. Please go through the requirement in detail and if you are interested share me your updated resume ASAP with the below details.\r\n\r\nTotal Experience:\r\nRelevant Experience:\r\nCCTC:\r\nECTC:\r\nNotice Period:\r\n\r\nJob Description \r\nJob Title: Business Analysts\r\nExp: 5 - 9 Yrs\r\nJob Location: ValueLabs, Hyderabad\r\n\r\nRequired Skill\r\nShould have 5+ years of experience as a Business Analyst.\r\nWorking experience in US Healthcare domain(Mandatory)\r\nWorking experience with Benefits Administration and Online Enrollment.\r\nStrong communication and documentation skills\r\n\r\n\r\nThanks,\r\nHR Team\r\n\r\n\r\n\r\n\r\nSalary: Not Disclosed by Recruiter\r\nIndustry: IT-Software / Software Services\r\nFunctional Area: IT Software - Application Programming, Maintenance\r\nRole Category: Software Developer\r\nRole: Software Developer\r\nKeyskills: Business Analyst, BA, Healthcare, claims processing\r\nDesired Profile\r\n\r\nEducation:UG -Any Graduate - Any Specialization \r\nPG - Any Postgraduate - Any Specialization \r\nDoctorate - Any Doctorate - Any Specialization', 'Hyderabad', 'Andhra Pradesh', 'India', 0, 'gauravbansal74@gmail.com', '1.png', 1, '2014-11-21 00:00:00', 1, '2014-11-21 00:00:00', 1, '2014-11-21 00:00:00', b'0', b'1', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `typeofpost`
--

CREATE TABLE IF NOT EXISTS `typeofpost` (
`id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `createdBy` bigint(20) NOT NULL,
  `createdOn` datetime NOT NULL,
  `modifiedBy` bigint(20) NOT NULL,
  `modifiedOn` datetime NOT NULL,
  `deleted` bit(1) NOT NULL,
  `enabled` bit(1) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `typeofpost`
--

INSERT INTO `typeofpost` (`id`, `name`, `createdBy`, `createdOn`, `modifiedBy`, `modifiedOn`, `deleted`, `enabled`) VALUES
(1, 'Jobs', 1, '2014-11-21 00:00:00', 1, '2014-11-21 00:00:00', b'0', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` bigint(20) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `createdOn` datetime NOT NULL,
  `modifiedOn` datetime NOT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `blocked` bit(1) NOT NULL DEFAULT b'0',
  `emailVerified` bit(1) NOT NULL DEFAULT b'0',
  `phoneVerified` bit(1) NOT NULL DEFAULT b'0',
  `isActive` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `email`, `phone`, `password`, `createdOn`, `modifiedOn`, `deleted`, `blocked`, `emailVerified`, `phoneVerified`, `isActive`) VALUES
(1, 'Gaurav', 'Kumar', 'gauravbansal74@gmail.com', '9573127285', '123456', '2014-11-21 00:00:00', '2014-11-21 00:00:00', b'0', b'0', b'1', b'1', b'1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
 ADD PRIMARY KEY (`id`), ADD KEY `typeId` (`typeId`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `typeofpost`
--
ALTER TABLE `typeofpost`
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
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `typeofpost`
--
ALTER TABLE `typeofpost`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `category`
--
ALTER TABLE `category`
ADD CONSTRAINT `typeId` FOREIGN KEY (`typeId`) REFERENCES `typeofpost` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
