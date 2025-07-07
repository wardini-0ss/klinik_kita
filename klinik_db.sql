-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2025 at 06:10 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `klinik_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `created_at`) VALUES
(1, 'Admin Utama', 'admin@gmail.com', '$2y$10$.XBy2doStcj0L/1ICT8SIucSHqPBLUDfoKoQTu9r/hyZmnnPHEXAC', '2025-05-24 08:13:37'),
(2, 'Admin Cika', 'admincika@gmail.com', '$2y$10$p013BxjsRfXfRRGXkN2w9eIAMcN2PuUiwOKDIIkRTH3I76HFjSvyK', '2025-05-26 02:25:30');

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `schedule_id` int(11) DEFAULT NULL,
  `appointment_date` date DEFAULT NULL,
  `appointment_time` time DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `complaint` text DEFAULT NULL,
  `status` varchar(20) DEFAULT 'pending',
  `consultation_fee` decimal(10,2) DEFAULT NULL,
  `is_paid` tinyint(1) DEFAULT 0,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `patient_id`, `doctor_id`, `schedule_id`, `appointment_date`, `appointment_time`, `start_time`, `end_time`, `complaint`, `status`, `consultation_fee`, `is_paid`, `notes`, `created_at`, `updated_at`) VALUES
(1, 3, 1, NULL, '2025-06-10', NULL, NULL, NULL, 'mata perih dan bengkak', 'pending', NULL, 0, NULL, '2025-05-24 10:10:15', '2025-05-25 04:34:49'),
(2, 3, 1, NULL, '2025-05-24', NULL, NULL, NULL, 'sakit pinggang', 'pending', NULL, 0, NULL, '2025-05-24 12:23:15', '2025-05-25 04:34:49'),
(3, 3, 2, NULL, '2025-05-25', NULL, NULL, '14:24:00', 'Gusi Bengkak', 'completed', NULL, 1, 'Minum obat 3 x Sehari,hindari yang manis dan es', '2025-05-25 04:25:09', '2025-05-25 07:57:16'),
(4, 3, 1, NULL, '2025-05-31', NULL, NULL, NULL, 'sakit perut', 'pending', NULL, 0, NULL, '2025-05-25 17:15:01', '2025-05-25 17:15:01'),
(5, 3, 1, NULL, '2025-05-26', NULL, NULL, NULL, 'Sakit Mata dan Gigi', 'pending', 150000.00, 0, NULL, '2025-05-26 03:33:32', '2025-05-26 03:33:32'),
(6, 5, 2, NULL, '2025-05-26', NULL, NULL, NULL, 'Sakit Gigi Berlubang', 'pending', 200000.00, 0, NULL, '2025-05-26 03:49:36', '2025-05-26 03:49:36'),
(7, 2, 1, NULL, '2025-05-26', NULL, NULL, NULL, 'Sakit Kepala', 'pending', 150000.00, 0, NULL, '2025-05-26 04:01:02', '2025-05-26 04:01:02');

-- --------------------------------------------------------

--
-- Table structure for table `appointment_history`
--

CREATE TABLE `appointment_history` (
  `id` int(11) NOT NULL,
  `appointment_id` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `notes` text DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `specialization` varchar(100) DEFAULT NULL,
  `room_number` varchar(20) DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `license_number` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `name`, `email`, `password`, `specialization`, `room_number`, `bio`, `photo`, `phone`, `created_at`, `license_number`) VALUES
(1, 'Dr. Hadi', 'doctorryan@gmail.com', '$2y$10$ZtVIipo3NRkrPt.vdFMlA.TnYx9Y0QpPPz85mK1nlEglbfV5mjXTi', 'Dokter Umum', '210', 'Berpengalaman lebih dari 10 tahun dalam praktik umum.', 'assets/images/doctors/1.jpg', '08123456789', '2025-05-24 08:33:46', NULL),
(2, 'Drg. Pariska', 'doctor@gmail.com', '$2y$10$C1OAQ/5WtkmQUuJWzfE8oOwR3sa2Ia9ZiHi6BpapxYqYJjDoS6y/i', 'Dokter Gigi', NULL, 'Drg. Parista memiliki pengalaman lebih dari 8 tahun dalam bidang kedokteran gigi, termasuk perawatan gigi anak, penambalan, pembersihan karang gigi, hingga pemasangan behel. Beliau dikenal ramah dan teliti dalam menangani pasien dari berbagai usia.', 'assets/images/doctors/2.jpg', '081209876543', '2025-05-24 14:24:17', NULL),
(3, 'Riska', 'rika@gmail.com', '', 'Dokter Anak ', NULL, NULL, NULL, '082198765432', '2025-05-26 02:56:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `medical_records`
--

CREATE TABLE `medical_records` (
  `id` int(11) NOT NULL,
  `appointment_id` int(11) DEFAULT NULL,
  `diagnosis` text DEFAULT NULL,
  `treatment` text DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `height` decimal(5,2) DEFAULT NULL COMMENT 'in cm',
  `weight` decimal(5,2) DEFAULT NULL COMMENT 'in kg',
  `blood_pressure` varchar(10) DEFAULT NULL,
  `temperature` decimal(4,2) DEFAULT NULL COMMENT 'in celsius'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medicines`
--

CREATE TABLE `medicines` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `stock` int(11) DEFAULT 0,
  `price` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `gender` enum('male','female','other') DEFAULT NULL,
  `blood_type` enum('A','B','AB','O','unknown') DEFAULT NULL,
  `allergies` text DEFAULT NULL,
  `medical_notes` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `name`, `email`, `password`, `phone`, `address`, `birth_date`, `gender`, `blood_type`, `allergies`, `medical_notes`, `created_at`, `updated_at`) VALUES
(2, 'Miftah', 'mif@gmail.com', '$2y$10$YBfimI/TOb9co5jq6QwGJuprfgDx9VunWwqaztNQQNMPr2vqUs9qO', '081234567981', 'Mandailing Natal', '2005-06-05', NULL, NULL, NULL, NULL, '2025-05-24 07:42:08', NULL),
(3, 'Mawar', 'mawar7@gmail.com', '$2y$10$N9KxCpckLdbLs/5TJU9rM.cv8XBVQPt2n6X1KH6ulBwGq6wZ.X56e', '081234567076', 'Busan', '2009-05-25', '', 'AB', NULL, NULL, '2025-05-24 07:53:35', NULL),
(5, 'Ariana arbaban', 'ariana10@gmail.com', '$2y$10$GSlq3a8yKMI2erjXlsYjNedO9hZTxJtqiQBgn5H0MZrYnLxGCrs7G', '082198765432', 'Siantar', '2002-12-29', NULL, NULL, NULL, NULL, '2025-05-24 15:07:07', NULL),
(6, 'Riana', '', '', '08123456789', 'Simangambat', '2025-05-26', '', 'unknown', NULL, NULL, '2025-05-26 02:54:15', NULL),
(7, 'Sisi Pamggabean', 'sisi@gmail.com', '$2y$10$nJWaaIn2oO2hwW.yEqqpaOzgho0Me/.ghf/FqxPac4fLwJ6Wt5Rbm', '081234567981', 'Simangambat', '2025-05-26', NULL, NULL, NULL, NULL, '2025-05-26 03:53:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `invoice_number` varchar(20) DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `appointment_id` int(11) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `status` varchar(20) DEFAULT 'pending',
  `payment_method` varchar(50) DEFAULT NULL,
  `payment_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `invoice_number`, `patient_id`, `appointment_id`, `amount`, `due_date`, `status`, `payment_method`, `payment_date`, `created_at`) VALUES
(1, NULL, 3, 2, 700000.00, NULL, 'paid', NULL, '2025-05-26 01:57:19', '2025-05-26 01:57:09'),
(2, NULL, 3, 5, 150000.00, '2025-05-29', 'paid', NULL, '2025-05-26 03:46:58', '2025-05-26 03:33:32'),
(3, NULL, 5, 6, 200000.00, '2025-05-29', 'paid', NULL, '2025-05-26 04:01:49', '2025-05-26 03:49:36'),
(4, NULL, 2, 7, 150000.00, '2025-05-29', 'pending', NULL, NULL, '2025-05-26 04:01:02');

-- --------------------------------------------------------

--
-- Table structure for table `payment_items`
--

CREATE TABLE `payment_items` (
  `id` int(11) NOT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT 1,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prescriptions`
--

CREATE TABLE `prescriptions` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `medical_record_id` int(11) DEFAULT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `diagnosis` text DEFAULT NULL,
  `medication` text DEFAULT NULL,
  `dosage` varchar(100) DEFAULT NULL,
  `frequency` varchar(100) DEFAULT NULL,
  `duration` varchar(50) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prescription_items`
--

CREATE TABLE `prescription_items` (
  `id` int(11) NOT NULL,
  `prescription_id` int(11) DEFAULT NULL,
  `medicine_id` int(11) DEFAULT NULL,
  `dosage` varchar(50) NOT NULL,
  `frequency` varchar(50) NOT NULL,
  `duration` varchar(50) NOT NULL,
  `instructions` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `receptionists`
--

CREATE TABLE `receptionists` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `receptionists`
--

INSERT INTO `receptionists` (`id`, `name`, `email`, `password`, `created_at`) VALUES
(1, 'Rina', 'resepsionisrina@gmail.com', '$2y$10$QB.QrXm5zP1jonwKGVLtRe8cE3s/af1S2oB4C8eq.7JwkJOTTUCe.', '2025-05-24 08:35:20'),
(2, 'Raisya arti', 'raisa@gmail.com', '$2y$10$jl89yWUrqf1W6iFdfj/V1eS7VDeCyKty2ilQOcYiQaP8uHCBgn5BO', '2025-05-26 02:24:24');

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` int(11) NOT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `day` enum('Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday') DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `doctor_id`, `day`, `start_time`, `end_time`, `date`) VALUES
(1, 1, '', '20:40:00', '05:37:00', NULL),
(2, 1, '', '14:40:00', '09:41:00', NULL),
(3, 1, '', '17:38:00', '10:38:00', NULL),
(4, 1, '', '10:38:00', '21:38:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `duration` int(11) DEFAULT NULL COMMENT 'in minutes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `doctor_id` (`doctor_id`),
  ADD KEY `schedule_id` (`schedule_id`);

--
-- Indexes for table `appointment_history`
--
ALTER TABLE `appointment_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appointment_id` (`appointment_id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `medical_records`
--
ALTER TABLE `medical_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appointment_id` (`appointment_id`);

--
-- Indexes for table `medicines`
--
ALTER TABLE `medicines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appointment_id` (`appointment_id`),
  ADD KEY `patient_id` (`patient_id`);

--
-- Indexes for table `payment_items`
--
ALTER TABLE `payment_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_id` (`payment_id`),
  ADD KEY `service_id` (`service_id`);

--
-- Indexes for table `prescriptions`
--
ALTER TABLE `prescriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `doctor_id` (`doctor_id`),
  ADD KEY `medical_record_id` (`medical_record_id`);

--
-- Indexes for table `prescription_items`
--
ALTER TABLE `prescription_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prescription_id` (`prescription_id`),
  ADD KEY `medicine_id` (`medicine_id`);

--
-- Indexes for table `receptionists`
--
ALTER TABLE `receptionists`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctor_id` (`doctor_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `appointment_history`
--
ALTER TABLE `appointment_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `medical_records`
--
ALTER TABLE `medical_records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medicines`
--
ALTER TABLE `medicines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payment_items`
--
ALTER TABLE `payment_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prescriptions`
--
ALTER TABLE `prescriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prescription_items`
--
ALTER TABLE `prescription_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `receptionists`
--
ALTER TABLE `receptionists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`),
  ADD CONSTRAINT `appointments_ibfk_2` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`),
  ADD CONSTRAINT `appointments_ibfk_3` FOREIGN KEY (`schedule_id`) REFERENCES `schedules` (`id`);

--
-- Constraints for table `medical_records`
--
ALTER TABLE `medical_records`
  ADD CONSTRAINT `medical_records_ibfk_1` FOREIGN KEY (`appointment_id`) REFERENCES `appointments` (`id`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`appointment_id`) REFERENCES `appointments` (`id`),
  ADD CONSTRAINT `payments_ibfk_2` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`);

--
-- Constraints for table `payment_items`
--
ALTER TABLE `payment_items`
  ADD CONSTRAINT `payment_items_ibfk_1` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`),
  ADD CONSTRAINT `payment_items_ibfk_2` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`);

--
-- Constraints for table `prescriptions`
--
ALTER TABLE `prescriptions`
  ADD CONSTRAINT `prescriptions_ibfk_1` FOREIGN KEY (`medical_record_id`) REFERENCES `medical_records` (`id`),
  ADD CONSTRAINT `prescriptions_ibfk_2` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`),
  ADD CONSTRAINT `prescriptions_ibfk_3` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`),
  ADD CONSTRAINT `prescriptions_ibfk_4` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`),
  ADD CONSTRAINT `prescriptions_ibfk_5` FOREIGN KEY (`medical_record_id`) REFERENCES `medical_records` (`id`);

--
-- Constraints for table `prescription_items`
--
ALTER TABLE `prescription_items`
  ADD CONSTRAINT `prescription_items_ibfk_1` FOREIGN KEY (`prescription_id`) REFERENCES `prescriptions` (`id`),
  ADD CONSTRAINT `prescription_items_ibfk_2` FOREIGN KEY (`medicine_id`) REFERENCES `medicines` (`id`);

--
-- Constraints for table `schedules`
--
ALTER TABLE `schedules`
  ADD CONSTRAINT `schedules_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
