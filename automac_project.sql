-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 21, 2024 at 01:43 PM
-- Server version: 8.3.0
-- PHP Version: 8.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `automac_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `calibration_details`
--

DROP TABLE IF EXISTS `calibration_details`;
CREATE TABLE IF NOT EXISTS `calibration_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `certificate_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ir_1` double NOT NULL,
  `ir_2` double NOT NULL,
  `ir_3` double NOT NULL,
  `ir_4` double NOT NULL,
  `ir_5` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `calibration_details`
--

INSERT INTO `calibration_details` (`id`, `certificate_number`, `ir_1`, `ir_2`, `ir_3`, `ir_4`, `ir_5`) VALUES
(1, 'ATM00016', 4.2, 4.2, 4.2, 4.2, 4.2),
(2, 'ATM00017', 4.2, 4.2, 4.2, 4.2, 4.2),
(3, 'ATM00018', 4.2, 4.2, 4.2, 4.2, 4.2);

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

DROP TABLE IF EXISTS `certificates`;
CREATE TABLE IF NOT EXISTS `certificates` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `certificate_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_calibration` date DEFAULT NULL,
  `company_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `intr_sr_no` int DEFAULT NULL,
  `intr_details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instr_make` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instr_model` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instr_range` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instr_date` date DEFAULT NULL,
  `mst_model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mst_last_cal_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mst_make` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mst_range` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `certificates`
--

INSERT INTO `certificates` (`id`, `product`, `certificate_number`, `date_of_calibration`, `company_name`, `intr_sr_no`, `intr_details`, `instr_make`, `instr_model`, `instr_range`, `instr_date`, `mst_model`, `mst_last_cal_date`, `mst_make`, `mst_range`) VALUES
(1, 'Pressure Gauge', 'ATM00001', '2024-01-10', 'Acme Corp', 1001, 'High precision pressure gauge', 'Precision Instruments', 'PI-200', '0-100 PSI', '2023-12-15', 'PM-300', '2023-11-25', 'MasterTech', '0-200 PSI'),
(2, 'Pressure Gauge', 'ATM00002', '2024-01-10', 'Acme Corp', 1001, 'High precision pressure gauge', 'Precision Instruments', 'PI-200', '0-100 PSI', '2023-12-15', 'PM-300', '2023-11-25', 'MasterTech', '0-200 PSI'),
(3, 'Pressure Gauge', 'ATM00003', '2024-01-10', 'Acme Corp', 1001, 'High precision pressure gauge', 'Precision Instruments', 'PI-200', '0-100 PSI', '2023-12-15', 'PM-300', '2023-11-25', 'MasterTech', '0-200 PSI'),
(4, 'Pressure Gauge', 'ATM00004', '2024-01-10', 'Acme Corp', 1001, 'High precision pressure gauge', 'Precision Instruments', 'PI-200', '0-100 PSI', '2023-12-15', 'PM-300', '2023-11-25', 'MasterTech', '0-200 PSI'),
(5, 'Pressure Gauge', 'ATM00005', '2024-01-10', 'Acme Corp', 1001, 'High precision pressure gauge', 'Precision Instruments', 'PI-200', '0-100 PSI', '2023-12-15', 'PM-300', '2023-11-25', 'MasterTech', '0-200 PSI'),
(6, 'Pressure Gauge', 'ATM00006', '2024-01-10', 'Acme Corp', 1001, 'High precision pressure gauge', 'Precision Instruments', 'PI-200', '0-100 PSI', '2023-12-15', 'PM-300', '2023-11-25', 'MasterTech', '0-200 PSI'),
(7, 'Pressure Gauge', 'ATM00007', '2024-01-10', 'Acme Corp', 1001, 'High precision pressure gauge', 'Precision Instruments', 'PI-200', '0-100 PSI', '2023-12-15', 'PM-300', '2023-11-25', 'MasterTech', '0-200 PSI'),
(8, 'Pressure Gauge', 'ATM00008', '2024-01-10', 'Acme Corp', 1001, 'High precision pressure gauge', 'Precision Instruments', 'PI-200', '0-100 PSI', '2023-12-15', 'PM-300', '2023-11-25', 'MasterTech', '0-200 PSI'),
(9, 'Pressure Gauge', 'ATM00009', '2024-01-10', 'Acme Corp', 1001, 'High precision pressure gauge', 'Precision Instruments', 'PI-200', '0-100 PSI', '2023-12-15', 'PM-300', '2023-11-25', 'MasterTech', '0-200 PSI'),
(10, 'Pressure Gauge', 'ATM00010', '2024-01-10', 'Acme Corp', 1001, 'High precision pressure gauge', 'Precision Instruments', 'PI-200', '0-100 PSI', '2023-12-15', 'PM-300', '2023-11-25', 'MasterTech', '0-200 PSI'),
(11, 'Pressure Gauge', 'ATM00011', '2024-01-10', 'Acme Corp', 1001, 'High precision pressure gauge', 'Precision Instruments', 'PI-200', '0-100 PSI', '2023-12-15', 'PM-300', '2023-11-25', 'MasterTech', '0-200 PSI'),
(12, 'Pressure Gauge', 'ATM00012', '2024-01-10', 'Acme Corp', 1001, 'High precision pressure gauge', 'Precision Instruments', 'PI-200', '0-100 PSI', '2023-12-15', 'PM-300', '2023-11-25', 'MasterTech', '0-200 PSI'),
(13, 'Pressure Gauge', 'ATM00013', '2024-01-10', 'Acme Corp', 1001, 'High precision pressure gauge', 'Precision Instruments', 'PI-200', '0-100 PSI', '2023-12-15', 'PM-300', '2023-11-25', 'MasterTech', '0-200 PSI'),
(14, 'Pressure Gauge', 'ATM00014', '2024-01-10', 'Acme Corp', 1001, 'High precision pressure gauge', 'Precision Instruments', 'PI-200', '0-100 PSI', '2023-12-15', 'PM-300', '2023-11-25', 'MasterTech', '0-200 PSI'),
(15, 'Pressure Gauge', 'ATM00015', '2024-01-10', 'Acme Corp', 1001, 'High precision pressure gauge', 'Precision Instruments', 'PI-200', '0-100 PSI', '2023-12-15', 'PM-300', '2023-11-25', 'MasterTech', '0-200 PSI'),
(16, 'Pressure Gauge', 'ATM00016', '2024-01-10', 'Acme Corp', 1001, 'High precision pressure gauge', 'Precision Instruments', 'PI-200', '0-100 PSI', '2023-12-15', 'PM-300', '2023-11-25', 'MasterTech', '0-200 PSI'),
(17, 'Pressure Gauge', 'ATM00017', '2024-01-10', 'Acme Corp', 1001, 'High precision pressure gauge', 'Precision Instruments', 'PI-200', '0-100 PSI', '2023-12-15', 'PM-300', '2023-11-25', 'MasterTech', '0-200 PSI'),
(18, 'Pressure Gauge', 'ATM00018', '2024-01-10', 'Acme Corp', 1001, 'High precision pressure gauge', 'Precision Instruments', 'PI-200', '0-100 PSI', '2023-12-15', 'PM-300', '2023-11-25', 'MasterTech', '0-200 PSI');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
CREATE TABLE IF NOT EXISTS `companies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `address`, `created_at`) VALUES
(1, 'ABC industries', 'bharuch', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `make_company`
--

DROP TABLE IF EXISTS `make_company`;
CREATE TABLE IF NOT EXISTS `make_company` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `type`, `created_at`) VALUES
(1, 'Diff. Pr. Transmitter', 'Pressure', '0000-00-00 00:00:00'),
(2, 'Digital Pressure Gauge', 'Pressure', '0000-00-00 00:00:00'),
(3, 'Pressure Gauge', 'Pressure', '0000-00-00 00:00:00'),
(4, 'Pressure Transmitter', 'Pressure', '0000-00-00 00:00:00'),
(5, 'Pressure Sensor', 'Pressure', '0000-00-00 00:00:00'),
(6, 'Pressure Switch', 'Pressure', '0000-00-00 00:00:00'),
(7, 'Pressure Safety Valve', 'Pressure', '0000-00-00 00:00:00'),
(8, 'Temperature Gauge', 'Temperature', '0000-00-00 00:00:00'),
(9, 'Digital Temperature Gauge', 'Temperature', '0000-00-00 00:00:00'),
(10, 'Head mounted Temp. Transmitter', 'Temperature', '0000-00-00 00:00:00'),
(11, 'Digital Temperature Transmitter', 'Temperature', '0000-00-00 00:00:00'),
(12, 'Temperature Indicator', 'Temperature', '0000-00-00 00:00:00'),
(13, 'Temperature controller', 'Temperature', '0000-00-00 00:00:00'),
(14, 'Process Controller', 'Common', '0000-00-00 00:00:00'),
(16, 'Humidity-Temperature Transmitter', 'Humidity', '0000-00-00 00:00:00'),
(17, 'Electromagnetic Flow meter', 'Flow', '0000-00-00 00:00:00'),
(18, 'Vortex Flow meter', 'Flow', '0000-00-00 00:00:00'),
(19, 'Mass Flow meter', 'Flow', '0000-00-00 00:00:00'),
(20, 'Thermal Mass Flow meter', 'Flow', '0000-00-00 00:00:00'),
(21, 'DP-Orifice Flow meter', 'Flow', '0000-00-00 00:00:00'),
(22, 'Single Diaphragm Level Tx.', 'Level', '0000-00-00 00:00:00'),
(23, 'Double Diaphragm Level Tx.', 'Level', '0000-00-00 00:00:00'),
(24, 'Ultrasonic level sensor', 'Level', '0000-00-00 00:00:00'),
(25, 'Ultrasonic level transmitter', 'Level', '0000-00-00 00:00:00'),
(26, 'Radar level transmitter', 'Level', '0000-00-00 00:00:00'),
(27, 'Capacitance level transmitter', 'Level', '0000-00-00 00:00:00'),
(28, 'Magnetic float level transmitter', 'Level', '0000-00-00 00:00:00'),
(29, 'DP Level transmitter', 'Level', '0000-00-00 00:00:00'),
(30, 'Hydrostatic level transmitter', 'Level', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
CREATE TABLE IF NOT EXISTS `sales` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `sale_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

DROP TABLE IF EXISTS `units`;
CREATE TABLE IF NOT EXISTS `units` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `type`, `created_at`) VALUES
(1, 'mmwc', 'Pressure', '0000-00-00 00:00:00'),
(2, 'mmhg', 'Pressure', '0000-00-00 00:00:00'),
(3, 'kpa', 'Pressure', '0000-00-00 00:00:00'),
(4, 'Kg/cm2', 'Pressure', '0000-00-00 00:00:00'),
(5, 'Bar', 'Pressure', '0000-00-00 00:00:00'),
(6, 'psi', 'Pressure', '0000-00-00 00:00:00'),
(7, 'pa', 'Pressure', '0000-00-00 00:00:00'),
(8, 'Degree C', 'Temperature', '0000-00-00 00:00:00'),
(9, 'm3/min', 'Flow', '0000-00-00 00:00:00'),
(10, 'm3/Hr', 'Flow', '0000-00-00 00:00:00'),
(11, 'LPM', 'Flow', '0000-00-00 00:00:00'),
(12, 'LPH', 'Flow', '0000-00-00 00:00:00'),
(13, 'Kg/Hr', 'Flow', '0000-00-00 00:00:00'),
(14, 'Nm3/Hr', 'Flow', '0000-00-00 00:00:00'),
(15, 'Ton/Hr', 'Flow', '0000-00-00 00:00:00'),
(16, 'mm', 'Level', '0000-00-00 00:00:00'),
(17, 'cm', 'Level', '0000-00-00 00:00:00'),
(18, 'm', 'Level', '0000-00-00 00:00:00'),
(19, 'Kg', 'Level', '0000-00-00 00:00:00'),
(20, 'Liter', 'Level', '0000-00-00 00:00:00'),
(21, 'Ton', 'Level', '0000-00-00 00:00:00'),
(22, 'Degree C', 'Humidity-Temperature', '0000-00-00 00:00:00'),
(23, 'RH%', 'Humidity-Temperature', '0000-00-00 00:00:00'),
(24, 'Pressure Switch', 'Pressure', '0000-00-00 00:00:00'),
(25, 'Pressure Safety Valve', 'Pressure', '0000-00-00 00:00:00'),
(26, 'Common', 'Common', '0000-00-00 00:00:00'),
(27, 'Degree C', 'Common', '0000-00-00 00:00:00'),
(28, 'Kg', 'Common', '0000-00-00 00:00:00'),
(29, 'Liter', 'Common', '0000-00-00 00:00:00');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
