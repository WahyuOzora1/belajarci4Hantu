-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2021 at 01:08 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_hantu`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(2, '2021-11-16-140845', 'App\\Database\\Migrations\\Hantu', 'default', 'App', 1637072369, 1),
(3, '2021-11-16-142325', 'App\\Database\\Migrations\\Hantu', 'default', 'App', 1637072731, 2),
(4, '2021-11-16-215418', 'App\\Database\\Migrations\\AlterHantu', 'default', 'App', 1637099718, 3),
(5, '2021-11-16-220931', 'App\\Database\\Migrations\\AlterStatushantu', 'default', 'App', 1637100869, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tb_hantu`
--

CREATE TABLE `tb_hantu` (
  `id` int(5) UNSIGNED NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `jenis` varchar(255) DEFAULT NULL,
  `habitat` varchar(255) DEFAULT NULL,
  `jam_tayang` datetime(6) DEFAULT NULL,
  `pangkat` varchar(255) DEFAULT NULL,
  `jobdesk` varchar(255) DEFAULT NULL,
  `suara` varchar(255) DEFAULT NULL,
  `cara_bergerak` varchar(100) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `status` enum('published','draft') NOT NULL DEFAULT 'draft',
  `foto` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_hantu`
--

INSERT INTO `tb_hantu` (`id`, `nama`, `jenis`, `habitat`, `jam_tayang`, `pangkat`, `jobdesk`, `suara`, `cara_bergerak`, `slug`, `status`, `foto`, `created_at`) VALUES
(1, 'Jono', NULL, NULL, NULL, 'Panglima', 'Memimpin Prajurit.', NULL, NULL, NULL, 'draft', NULL, '2021-11-16 21:34:38'),
(2, 'Joni', NULL, NULL, NULL, 'Komandan Perang', 'Mengomandani Perang', NULL, NULL, NULL, 'draft', NULL, '2021-11-16 21:34:38'),
(3, 'Janu', NULL, NULL, NULL, 'Prajurit', 'Perang sama musuh..', NULL, NULL, NULL, 'draft', NULL, '2021-11-16 21:34:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_hantu`
--
ALTER TABLE `tb_hantu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_hantu`
--
ALTER TABLE `tb_hantu`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
