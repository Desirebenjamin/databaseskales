-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2024 at 08:54 AM
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
-- Database: `kalesdata`
--

-- --------------------------------------------------------

--
-- Table structure for table `cleaning_records`
--

CREATE TABLE `cleaning_records` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `area_cleaned` text NOT NULL,
  `cleaned_by` varchar(255) NOT NULL,
  `checked_by` varchar(255) NOT NULL,
  `comments` text DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cleaning_records`
--

INSERT INTO `cleaning_records` (`id`, `date`, `time`, `area_cleaned`, `cleaned_by`, `checked_by`, `comments`, `signature`, `created_at`) VALUES
(4, '2024-10-01', '10:29:00', 'Raw material store, Blending area, Packing area, Finished product Store', 'Dee', 'DEEDEE', 'Non', '', '2024-10-03 06:28:26'),
(5, '2024-10-04', '10:34:00', 'Raw material store, Blending area', 'ww', 'ww', 'ww', '', '2024-10-03 06:32:20');

-- --------------------------------------------------------

--
-- Table structure for table `employees_data`
--

CREATE TABLE `employees_data` (
  `id` int(11) NOT NULL,
  `employee_id` varchar(20) NOT NULL,
  `employee_name` varchar(100) NOT NULL,
  `gender` enum('Male','Female','Other') NOT NULL,
  `birth_date` date NOT NULL,
  `department` varchar(100) DEFAULT NULL,
  `position` varchar(100) DEFAULT NULL,
  `education` varchar(100) DEFAULT NULL,
  `nin` varchar(50) DEFAULT NULL,
  `contact_type` enum('Email','Phone') NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  `spouse_name` varchar(100) DEFAULT NULL,
  `spouse_phone` varchar(20) DEFAULT NULL,
  `country_of_origin` varchar(100) DEFAULT NULL,
  `district_origin` varchar(100) DEFAULT NULL,
  `constituency_origin` varchar(100) DEFAULT NULL,
  `sub_county_origin` varchar(100) DEFAULT NULL,
  `parish_origin` varchar(100) DEFAULT NULL,
  `village_origin` varchar(100) DEFAULT NULL,
  `country_of_residence` varchar(100) DEFAULT NULL,
  `district_residence` varchar(100) DEFAULT NULL,
  `constituency_residence` varchar(100) DEFAULT NULL,
  `sub_county_residence` varchar(100) DEFAULT NULL,
  `parish_residence` varchar(100) DEFAULT NULL,
  `village_residence` varchar(100) DEFAULT NULL,
  `next_of_kin` varchar(100) DEFAULT NULL,
  `kin_name` varchar(100) DEFAULT NULL,
  `kin_email` varchar(100) DEFAULT NULL,
  `kin_phone` varchar(20) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `start_salary` decimal(10,2) DEFAULT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  `emergency_contact` varchar(100) DEFAULT NULL,
  `residential_address` text DEFAULT NULL,
  `employment_type` enum('Full-time','Part-time','Contract','Internship') NOT NULL,
  `bank_account_details` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees_data`
--

INSERT INTO `employees_data` (`id`, `employee_id`, `employee_name`, `gender`, `birth_date`, `department`, `position`, `education`, `nin`, `contact_type`, `email`, `phone`, `status`, `spouse_name`, `spouse_phone`, `country_of_origin`, `district_origin`, `constituency_origin`, `sub_county_origin`, `parish_origin`, `village_origin`, `country_of_residence`, `district_residence`, `constituency_residence`, `sub_county_residence`, `parish_residence`, `village_residence`, `next_of_kin`, `kin_name`, `kin_email`, `kin_phone`, `start_date`, `start_salary`, `nationality`, `emergency_contact`, `residential_address`, `employment_type`, `bank_account_details`) VALUES
(1, 'KALES-00000001', 'Dee', '', '2022-12-31', 'Top Management', 'HR', 'Bachelors', '11111111111111111111', '', 'ptioyjh@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2023-02-01', 230000.00, 'ugandan', '2323322323', '343443', '', 'AC33434534'),
(2, 'KALES-195605', 'Dede', 'Male', '2015-06-14', 'Marketing and Sales', 'CFO', 'Diploma', 'Null', '', 'justustwinamasiko@gmail.com', '0773389708', '', 'Dee', '234654', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2024-09-06', 1200000.00, 'tanzanian', '077777777', 'trtrtr', '', 'AC-34344454');

-- --------------------------------------------------------

--
-- Table structure for table `financial_data`
--

CREATE TABLE `financial_data` (
  `id` int(11) NOT NULL,
  `employee_id` varchar(20) NOT NULL,
  `base_salary` decimal(10,2) NOT NULL,
  `pay_grade` varchar(20) NOT NULL,
  `allowances` decimal(10,2) DEFAULT NULL,
  `bonuses_commission` decimal(10,2) DEFAULT NULL,
  `overtime_pay` decimal(10,2) DEFAULT NULL,
  `advances` decimal(10,2) DEFAULT NULL,
  `repayment_schedule` varchar(100) DEFAULT NULL,
  `deductions` decimal(10,2) DEFAULT NULL,
  `reimbursement_claims` decimal(10,2) DEFAULT NULL,
  `net_pay` decimal(10,2) NOT NULL,
  `bank_account_details` varchar(100) NOT NULL,
  `leave_allowance` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `financial_data`
--

INSERT INTO `financial_data` (`id`, `employee_id`, `base_salary`, `pay_grade`, `allowances`, `bonuses_commission`, `overtime_pay`, `advances`, `repayment_schedule`, `deductions`, `reimbursement_claims`, `net_pay`, `bank_account_details`, `leave_allowance`) VALUES
(1, 'KALES-195605', 54545.00, '57', 0.00, 0.00, 0.00, 0.00, '0', 0.00, 0.00, 32000.00, '0', '');

-- --------------------------------------------------------

--
-- Table structure for table `gin_records`
--

CREATE TABLE `gin_records` (
  `id` int(11) NOT NULL,
  `packing_date` date NOT NULL,
  `batch_info` varchar(255) NOT NULL,
  `appearance_specification` text NOT NULL,
  `appearance_status` enum('Pass','Fail') NOT NULL,
  `appearance_remarks` text DEFAULT NULL,
  `odor_specification` text NOT NULL,
  `odor_status` enum('Pass','Fail') NOT NULL,
  `odor_remarks` text DEFAULT NULL,
  `miscibility_specification` text NOT NULL,
  `miscibility_status` enum('Pass','Fail') NOT NULL,
  `miscibility_remarks` text DEFAULT NULL,
  `ethanol_content_specification` text NOT NULL,
  `ethanol_content_status` enum('Pass','Fail') NOT NULL,
  `ethanol_content_remarks` text DEFAULT NULL,
  `date_of_inspection` date NOT NULL,
  `inspector_name` varchar(255) NOT NULL,
  `signature` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gin_records`
--

INSERT INTO `gin_records` (`id`, `packing_date`, `batch_info`, `appearance_specification`, `appearance_status`, `appearance_remarks`, `odor_specification`, `odor_status`, `odor_remarks`, `miscibility_specification`, `miscibility_status`, `miscibility_remarks`, `ethanol_content_specification`, `ethanol_content_status`, `ethanol_content_remarks`, `date_of_inspection`, `inspector_name`, `signature`) VALUES
(41, '2024-10-10', '1`122112', '67em', 'Fail', 'j65', 'yt7u', 'Fail', 'y6rty', 'ytuer', 'Fail', 'r6yj', 'ru6yu', 'Pass', 'rewt', '2024-10-10', 'rey', ''),
(42, '2024-10-10', '1`122112', '67em', 'Fail', 'j65', 'yt7u', 'Fail', 'y6rty', 'ytuer', 'Fail', 'r6yj', 'ru6yu', 'Pass', 'rewt', '2024-10-10', 'rey', ''),
(43, '2024-10-10', '23r4', '3w', 'Fail', 'wre', 'wrre', 'Fail', '4w6tf', 'erttf', 'Fail', 'wqq3e', '5yyg', 'Pass', '643y', '2024-10-02', '42t6', ''),
(44, '2024-10-10', '23r4', '3w', 'Fail', 'wre', 'wrre', 'Fail', '4w6tf', 'erttf', 'Fail', 'wqq3e', '5yyg', 'Pass', '643y', '2024-10-02', '42t6', ''),
(45, '2024-10-10', 'er', 'ety', 'Pass', 'ty', 'tyu', 'Pass', 'et7u', 'ew56t', 'Pass', 'wetry', 'ytru', 'Pass', '65ry', '2024-10-09', 'etyu', ''),
(46, '2024-10-04', '1212121212', 'vhn', 'Fail', 'dth', 'dr', 'Fail', 'xcb', 'fb', 'Fail', 'dfhg', 'dfyh', 'Fail', 'tdy', '2024-10-04', 'rt', '');

-- --------------------------------------------------------

--
-- Table structure for table `personnel_hygiene_checklist`
--

CREATE TABLE `personnel_hygiene_checklist` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `staff_name` varchar(255) NOT NULL,
  `clean_uniforms` tinyint(1) DEFAULT 0,
  `hair_restraint` tinyint(1) DEFAULT 0,
  `short_clean_nails` tinyint(1) DEFAULT 0,
  `no_jewelry` tinyint(1) DEFAULT 0,
  `no_strong_perfume` tinyint(1) DEFAULT 0,
  `illness_free` tinyint(1) DEFAULT 0,
  `washed_hands` tinyint(1) DEFAULT 0,
  `cuts_covered` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `personnel_hygiene_checklist`
--

INSERT INTO `personnel_hygiene_checklist` (`id`, `date`, `staff_name`, `clean_uniforms`, `hair_restraint`, `short_clean_nails`, `no_jewelry`, `no_strong_perfume`, `illness_free`, `washed_hands`, `cuts_covered`) VALUES
(10, '2024-10-01', 'Dee Ben', 1, 0, 0, 1, 1, 0, 1, 1),
(11, '2024-10-09', 'Desire Benjamin', 1, 1, 1, 1, 1, 1, 1, 1),
(12, '2024-10-06', 'Finale', 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `spirit_records`
--

CREATE TABLE `spirit_records` (
  `id` int(11) NOT NULL,
  `packing_date` date NOT NULL,
  `batch_info` varchar(255) NOT NULL,
  `appearance_specification` text NOT NULL,
  `appearance_status` enum('Pass','Fail') NOT NULL,
  `appearance_remarks` text DEFAULT NULL,
  `odor_specification` text NOT NULL,
  `odor_status` enum('Pass','Fail') NOT NULL,
  `odor_remarks` text DEFAULT NULL,
  `miscibility_specification` text NOT NULL,
  `miscibility_status` enum('Pass','Fail') NOT NULL,
  `miscibility_remarks` text DEFAULT NULL,
  `ethanol_content_specification` text NOT NULL,
  `ethanol_content_status` enum('Pass','Fail') NOT NULL,
  `ethanol_content_remarks` text DEFAULT NULL,
  `date_of_inspection` date NOT NULL,
  `inspector_name` varchar(255) NOT NULL,
  `signature` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `spirit_records`
--

INSERT INTO `spirit_records` (`id`, `packing_date`, `batch_info`, `appearance_specification`, `appearance_status`, `appearance_remarks`, `odor_specification`, `odor_status`, `odor_remarks`, `miscibility_specification`, `miscibility_status`, `miscibility_remarks`, `ethanol_content_specification`, `ethanol_content_status`, `ethanol_content_remarks`, `date_of_inspection`, `inspector_name`, `signature`) VALUES
(3, '2024-06-10', '2', '234', 'Pass', '23', '245', 'Pass', '24', '54', 'Pass', '34', '34', 'Pass', '34', '2024-10-17', '345', ''),
(4, '2024-06-10', '2', '234', 'Pass', '23', '245', 'Pass', '24', '54', 'Pass', '34', '34', 'Pass', '34', '2024-10-17', '345', ''),
(5, '2024-10-04', 'ft', 'rt', 'Fail', 'rt', 'rt', 'Fail', 'rt', 'rt', 'Fail', 'rt', 'rt', 'Fail', 'rt', '2024-10-04', 'rt', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cleaning_records`
--
ALTER TABLE `cleaning_records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees_data`
--
ALTER TABLE `employees_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employee_id` (`employee_id`);

--
-- Indexes for table `financial_data`
--
ALTER TABLE `financial_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `gin_records`
--
ALTER TABLE `gin_records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personnel_hygiene_checklist`
--
ALTER TABLE `personnel_hygiene_checklist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spirit_records`
--
ALTER TABLE `spirit_records`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cleaning_records`
--
ALTER TABLE `cleaning_records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employees_data`
--
ALTER TABLE `employees_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `financial_data`
--
ALTER TABLE `financial_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gin_records`
--
ALTER TABLE `gin_records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `personnel_hygiene_checklist`
--
ALTER TABLE `personnel_hygiene_checklist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `spirit_records`
--
ALTER TABLE `spirit_records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `financial_data`
--
ALTER TABLE `financial_data`
  ADD CONSTRAINT `financial_data_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees_data` (`employee_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
