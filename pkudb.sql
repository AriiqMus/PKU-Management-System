-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2025 at 01:07 PM
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
-- Database: `pkudb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `userID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`userID`) VALUES
('U002');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `appointmentID` varchar(10) NOT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `roomNo` int(2) DEFAULT NULL,
  `doctorID` varchar(10) DEFAULT NULL,
  `patientID` varchar(10) DEFAULT NULL,
  `receptionistID` varchar(10) DEFAULT NULL,
  `status` enum('completed','pending') NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appointmentID`, `date`, `time`, `roomNo`, `doctorID`, `patientID`, `receptionistID`, `status`) VALUES
('A001', '2025-05-06', '10:00:00', 1, 'U001', 'P001', 'U003', 'completed'),
('A002', '2025-05-07', '11:30:00', 2, 'U001', 'P002', 'U003', 'completed'),
('A003', '2025-05-08', '09:00:00', 3, 'U004', 'P003', 'U005', 'completed'),
('A004', '2025-05-09', '14:00:00', 1, 'U001', 'P004', 'U003', 'completed'),
('A005', '2025-05-10', '15:00:00', 2, 'U004', 'P005', 'U005', 'completed'),
('A006', '2025-06-08', '00:21:00', 1, 'U001', 'P004', 'U003', 'completed'),
('A007', '2025-06-08', '11:35:00', 1, 'U001', 'P004', 'U003', 'completed'),
('A008', '2025-06-08', '01:43:00', 1, 'U001', 'P004', 'U003', 'completed'),
('A009', '2025-06-18', '01:44:00', 1, 'U001', 'P004', 'U003', 'completed'),
('A010', '2025-06-18', '02:52:00', 1, 'U001', 'P004', 'U003', 'completed'),
('A011', '2025-06-18', '02:53:00', 1, 'U001', 'P004', 'U003', 'completed'),
('A012', '2025-05-18', '03:54:00', 1, 'U001', 'P004', 'U003', 'pending'),
('A013', '2025-05-28', '21:47:00', 2, 'U001', 'P003', 'U003', 'pending'),
('A014', '2025-05-21', '13:00:00', 3, 'U004', 'P006', 'U003', 'pending'),
('A015', '2025-05-21', '22:41:00', 3, 'U004', 'P006', 'U003', 'pending'),
('A016', '2025-06-16', '13:09:00', 1, 'U001', 'P001', 'U003', 'completed'),
('A017', '2025-06-16', '07:56:00', 1, 'U001', 'P001', 'U003', 'completed'),
('A018', '2025-06-16', '18:08:00', 1, 'U001', 'P001', 'U003', 'pending'),
('A019', '2025-06-16', '03:15:00', 1, 'U001', 'P001', 'U003', 'pending'),
('A020', '2025-06-16', '16:20:00', 1, 'U001', 'P001', 'U003', 'pending'),
('A021', '2025-06-17', '05:21:00', 1, 'U001', 'P001', 'U003', 'completed'),
('A022', '2025-06-17', '18:08:00', 1, 'U001', 'P001', 'U003', 'pending'),
('A023', '2025-06-24', '18:03:00', 3, 'U001', 'P001', 'U005', 'completed'),
('A024', '2025-06-17', '09:44:00', 2, 'U001', 'P001', 'U003', 'completed'),
('A025', '2025-06-17', '16:00:00', 2, 'U001', 'P001', 'U003', 'pending'),
('A026', '2025-06-17', '19:21:00', 2, 'U001', 'P001', 'U003', 'pending'),
('A027', '2025-06-24', '05:00:00', 1, 'U001', 'P001', 'U003', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `doctorID` varchar(10) NOT NULL,
  `specialization` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doctorID`, `specialization`) VALUES
('U001', 'General Physician'),
('U004', 'Dermatologist'),
('U010', 'surgery');

-- --------------------------------------------------------

--
-- Table structure for table `illness`
--

CREATE TABLE `illness` (
  `illnessID` varchar(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `illness`
--

INSERT INTO `illness` (`illnessID`, `name`) VALUES
('I001', 'Flu'),
('I002', 'Migraine'),
('I003', 'Skin Allergy'),
('I004', 'Gastritis'),
('I005', 'Arthritis');

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `medicineID` varchar(10) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `quantity` int(10) DEFAULT NULL,
  `expDate` date DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`medicineID`, `name`, `quantity`, `expDate`, `price`) VALUES
('M001', 'Paracetamol 500mg', 100, '2026-01-01', 2.50),
('M002', 'Ibuprofen 200mg', 80, '2026-03-01', 3.20),
('M003', 'Antacid Tablet', 120, '2025-12-31', 1.80),
('M004', 'Antihistamine', 90, '2026-05-01', 2.70),
('M005', 'Joint Pain Relief', 70, '2026-06-01', 4.50);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `patientID` varchar(10) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `bloodType` varchar(5) DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `height` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patientID`, `name`, `address`, `gender`, `age`, `bloodType`, `weight`, `height`) VALUES
('0211080100', 'Aiman', 'no.6, jalan bapakkau', 'Male', 23, 'A+', 78, 180),
('2025514629', 'nur syaza syazana binti mohd sahar', 'no.6, jalan bapakkau', 'Female', 20, 'A+', 54, 157),
('P001', 'Aiman Shah', '123 Jalan Merdeka', 'Male', 21, 'O-', 68.5, 172.2),
('P002', 'Nur Iman', '45 Jalan Damai', 'Female', 18, 'A-', 52, 160),
('P003', 'Farah Huda', '78 Jalan Mawar', 'Female', 28, 'B+', 58.3, 165.5),
('P004', 'Ali Razi', '56 Jalan Tun Razak', 'Male', 18, 'AB+', 70, 175),
('P005', 'Syafiq Zaini', '12 Jalan UPM', 'Male', 23, 'O-', 63, 169),
('P006', 'raziq', 'no.6, jalan bapakkau', 'Male', 23, 'A+', 78, 180),
('P007', 'Nora', 'no.6, jalan bapakkau', 'Female', 38, 'B+', 60, 150),
('P008', 'Rahman Kay', 'no.6, jalan bapakkau', 'Female', 12, 'B+', 78, 180);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `paymentID` varchar(10) NOT NULL,
  `receptionistID` varchar(10) DEFAULT NULL,
  `patientID` varchar(10) DEFAULT NULL,
  `amount` double(10,2) DEFAULT NULL,
  `paymentStatus` char(1) DEFAULT NULL,
  `method` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`paymentID`, `receptionistID`, `patientID`, `amount`, `paymentStatus`, `method`, `date`) VALUES
('E8QI5', 'U003', 'P001', 200.00, 'Y', 'Cash', '2025-06-24'),
('K0II5', 'U003', 'P001', 1000.00, 'Y', 'Cash', '2025-06-16'),
('PM001', 'U003', 'P001', 50.00, 'Y', 'Cash', '2025-05-06'),
('PM002', 'U003', 'P002', 70.00, 'N', 'Card', '2025-05-07'),
('PM003', 'U005', 'P003', 55.00, 'Y', 'Online Banking', '2025-05-08'),
('PM004', 'U003', 'P004', 40.00, 'Y', 'Cash', '2025-05-09'),
('PM005', 'U005', 'P005', 85.00, 'N', 'Credit Card', '2025-05-10');

-- --------------------------------------------------------

--
-- Table structure for table `receptionist`
--

CREATE TABLE `receptionist` (
  `receptionistID` varchar(10) NOT NULL,
  `desk_no` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `receptionist`
--

INSERT INTO `receptionist` (`receptionistID`, `desk_no`) VALUES
('U003', 5),
('U005', 2);

-- --------------------------------------------------------

--
-- Table structure for table `treatment`
--

CREATE TABLE `treatment` (
  `treatmentID` varchar(10) NOT NULL,
  `symptom` varchar(255) DEFAULT NULL,
  `appointmentID` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `treatment`
--

INSERT INTO `treatment` (`treatmentID`, `symptom`, `appointmentID`) VALUES
('T001', 'Fever, sore throat', 'A001'),
('T002', 'Headache and nausea', 'A002'),
('T003', 'Rash on arm', 'A003'),
('T004', 'Stomach pain', 'A004'),
('T005', 'Joint pain', 'A005'),
('T006', 'Headache', 'A016'),
('T007', 'Headache', 'A017'),
('T008', 'Headache', 'A011'),
('T009', 'Headache', 'A021'),
('T010', 'Sneeze', 'A010'),
('T011', 'Headache ', 'A024'),
('T012', 'headache', 'A023');

-- --------------------------------------------------------

--
-- Table structure for table `treatmentillness`
--

CREATE TABLE `treatmentillness` (
  `treatmentID` varchar(10) NOT NULL,
  `illnessID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `treatmentillness`
--

INSERT INTO `treatmentillness` (`treatmentID`, `illnessID`) VALUES
('T001', 'I001'),
('T002', 'I002'),
('T003', 'I003'),
('T004', 'I004'),
('T005', 'I005'),
('T006', 'I002'),
('T007', 'I002'),
('T008', 'I002'),
('T009', 'I001'),
('T010', 'I001'),
('T011', 'I002'),
('T012', 'I002');

-- --------------------------------------------------------

--
-- Table structure for table `treatmentmedicine`
--

CREATE TABLE `treatmentmedicine` (
  `treatmentID` varchar(10) NOT NULL,
  `medicineID` varchar(10) NOT NULL,
  `dosage` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `treatmentmedicine`
--

INSERT INTO `treatmentmedicine` (`treatmentID`, `medicineID`, `dosage`) VALUES
('T001', 'M001', 2),
('T002', 'M002', 1),
('T003', 'M004', 1),
('T004', 'M003', 2),
('T005', 'M005', 2),
('T006', 'M001', 500),
('T007', 'M001', 500),
('T008', 'M001', 1),
('T009', 'M002', 1),
('T010', 'M002', 2),
('T011', 'M001', 1),
('T012', 'M001', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userID` varchar(10) NOT NULL,
  `icnum` varchar(15) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phoneNumber` varchar(20) DEFAULT NULL,
  `status` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `icnum`, `password`, `role`, `name`, `email`, `phoneNumber`, `status`) VALUES
('U001', '900101-14-5677', 'pass123', 'doctor', 'Adam Loo', 'adam@example.com', '0123456789', 'A'),
('U002', '981212-10-4321', 'admin456', 'admin', 'Sarah Lim', 'sarah@example.com', '0111234567', 'A'),
('U003', '001010-05-9876', 'pass789', 'receptionist', 'Lisa Wongi', 'lisa11@example.com', '0198765432', 'A'),
('U004', '910203-08-1234', 'docpass', 'doctor', 'Dr. Nur Aliah', 'alia@example.com', '0131122334', 'A'),
('U005', '921104-06-7777', 'recep321', 'receptionist', 'John Tan', 'john@example.com', '0188887766', 'B'),
('U006', '021108010078', '111', 'receptionist', 'usman', 'muhdraziq702@gmail.com', '0196314524', 'B'),
('U007', '021108010079', '123', 'doctor', 'Dr. Sins', 'muhdraziq702@gmail.com', '0196314526', 'A'),
('U010', '029938384474', '123', 'doctor', 'raziq', 'raziq@gmail.com', '0196314526', 'A');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`appointmentID`),
  ADD KEY `doctorID` (`doctorID`),
  ADD KEY `patientID` (`patientID`),
  ADD KEY `receptionistID` (`receptionistID`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`doctorID`);

--
-- Indexes for table `illness`
--
ALTER TABLE `illness`
  ADD PRIMARY KEY (`illnessID`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`medicineID`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patientID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`paymentID`),
  ADD KEY `receptionistID` (`receptionistID`),
  ADD KEY `patientID` (`patientID`);

--
-- Indexes for table `receptionist`
--
ALTER TABLE `receptionist`
  ADD PRIMARY KEY (`receptionistID`);

--
-- Indexes for table `treatment`
--
ALTER TABLE `treatment`
  ADD PRIMARY KEY (`treatmentID`),
  ADD KEY `appointmentID` (`appointmentID`);

--
-- Indexes for table `treatmentillness`
--
ALTER TABLE `treatmentillness`
  ADD PRIMARY KEY (`treatmentID`,`illnessID`),
  ADD KEY `illnessID` (`illnessID`);

--
-- Indexes for table `treatmentmedicine`
--
ALTER TABLE `treatmentmedicine`
  ADD PRIMARY KEY (`treatmentID`,`medicineID`),
  ADD KEY `medicineID` (`medicineID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `users` (`userID`);

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`doctorID`) REFERENCES `doctor` (`doctorID`),
  ADD CONSTRAINT `appointment_ibfk_2` FOREIGN KEY (`patientID`) REFERENCES `patient` (`patientID`),
  ADD CONSTRAINT `appointment_ibfk_3` FOREIGN KEY (`receptionistID`) REFERENCES `receptionist` (`receptionistID`);

--
-- Constraints for table `doctor`
--
ALTER TABLE `doctor`
  ADD CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`doctorID`) REFERENCES `users` (`userID`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`receptionistID`) REFERENCES `receptionist` (`receptionistID`),
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`patientID`) REFERENCES `patient` (`patientID`);

--
-- Constraints for table `receptionist`
--
ALTER TABLE `receptionist`
  ADD CONSTRAINT `receptionist_ibfk_1` FOREIGN KEY (`receptionistID`) REFERENCES `users` (`userID`);

--
-- Constraints for table `treatment`
--
ALTER TABLE `treatment`
  ADD CONSTRAINT `treatment_ibfk_1` FOREIGN KEY (`appointmentID`) REFERENCES `appointment` (`appointmentID`);

--
-- Constraints for table `treatmentillness`
--
ALTER TABLE `treatmentillness`
  ADD CONSTRAINT `treatmentillness_ibfk_1` FOREIGN KEY (`treatmentID`) REFERENCES `treatment` (`treatmentID`),
  ADD CONSTRAINT `treatmentillness_ibfk_2` FOREIGN KEY (`illnessID`) REFERENCES `illness` (`illnessID`);

--
-- Constraints for table `treatmentmedicine`
--
ALTER TABLE `treatmentmedicine`
  ADD CONSTRAINT `treatmentmedicine_ibfk_1` FOREIGN KEY (`treatmentID`) REFERENCES `treatment` (`treatmentID`),
  ADD CONSTRAINT `treatmentmedicine_ibfk_2` FOREIGN KEY (`medicineID`) REFERENCES `medicine` (`medicineID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
