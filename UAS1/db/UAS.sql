-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2020 at 05:26 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spk_pro`
--

-- --------------------------------------------------------

--
-- Table structure for table `calon`
--

CREATE TABLE `calon` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(255) NOT NULL,
  `kecamatan` varchar(255) NOT NULL,
  `submit_by` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `calon`
--

INSERT INTO `calon` (`id`, `nama`, `jenis_kelamin`, `kecamatan`, `submit_by`) VALUES
(14, 'Galih H', 'Laki-Laki', 'Depok', 1),
(15, 'Indriyani ', 'Perempuan', 'Depok', 1),
(16, 'Isabella', 'Perempuan', 'Pamulang', 1),
(17, 'Hairul', 'Laki - Laki', 'Jakarta', 1),
(18, 'Akmad D', 'Laki - Laki', 'Kenohan', 1),
(19, 'Asra', 'Laki - Laki', 'Kenohan', 1),
(20, 'Katim', 'Laki - Laki', 'Kenohan', 1),
(21, 'Sumi', 'Perempuan', 'Kenohan', 1),


-- --------------------------------------------------------

--
-- Table structure for table `calon_subkriteria`
--

CREATE TABLE `calon_subkriteria` (
  `id` int(11) NOT NULL,
  `calon_id` int(11) DEFAULT NULL,
  `subkriteria_id` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `calon_subkriteria`
--

INSERT INTO `calon_subkriteria` (`id`, `calon_id`, `subkriteria_id`, `value`) VALUES
(31, 14, 18, 55),
(32, 15, 18, 29),
(33, 16, 18, 52),
(34, 17, 18, 83),
(35, 18, 18, 76),
(36, 19, 18, 47),
(37, 20, 18, 65),
(38, 21, 18, 42),
(39, 22, 18, 53),
(40, 23, 18, 44),
(41, 24, 18, 28),
(42, 25, 18, 47),
(43, 26, 18, 33),
(44, 27, 18, 59),
(45, 28, 18, 74),
(46, 29, 18, 49),
(47, 30, 18, 41),
(48, 31, 18, 45),
(49, 32, 18, 18),
(50, 33, 18, 58),
(51, 34, 18, 44),
(52, 35, 18, 41),
(53, 36, 18, 58),
(54, 37, 18, 54),
(55, 38, 18, 89),
(56, 39, 18, 36),
(57, 40, 18, 50),
(58, 41, 18, 56),
(59, 42, 18, 33),
(60, 43, 18, 32),
(61, 44, 18, 41),
(62, 45, 18, 24),
(63, 46, 18, 57),
(64, 47, 18, 76),
(65, 48, 18, 25),
(66, 49, 18, 58),
(67, 50, 18, 84),
(68, 51, 18, 40),
(69, 52, 18, 68),
(70, 53, 18, 37),
(71, 54, 18, 29),
(72, 55, 18, 28),
(73, 56, 18, 27),
(74, 57, 18, 29),
(75, 58, 18, 32),
(76, 59, 18, 43),
(77, 60, 18, 22),
(78, 61, 18, 45),
(79, 62, 18, 18),




-- --------------------------------------------------------

--
-- Table structure for table `hasil_seleksi`
--

CREATE TABLE `hasil_seleksi` (
  `id` int(11) NOT NULL,
  `nilai` int(11) NOT NULL,
  `program_bantuan_id` int(11) NOT NULL,
  `calon_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kriteria`
--

CREATE TABLE `kriteria` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `bobot` double NOT NULL,
  `jenis` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kriteria`
--

INSERT INTO `kriteria` (`id`, `nama`, `bobot`, `jenis`) VALUES
(1, 1, 'Alat Pelindung Diri', 4),
(2, 2, 'Logistik Mahasiswa', 3),
(3, 3, 'Bantuan Kuota Mahasiswa', 2),
(4, 4, 'Hand Sanitizer', 1),
(5, 5, 'Sembako Masyarakat', 2),

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id`, `nama`, `email`, `username`, `password`, `level`) VALUES
(1, 'Administrator', 'admin@gmail.com', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'superadmin');


--
-- Table structure for table `program_bantuan`
--

CREATE TABLE `program_bantuan` (
  `id` int(11) NOT NULL,
  `jenis_program` varchar(255) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subkriteria`
--

CREATE TABLE `subkriteria` (
  `id` int(11) NOT NULL,
  `kriteria_id` int(11) DEFAULT 0,
  `nama` varchar(50) DEFAULT '0',
  `bobot` double DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subkriteria`
--

INSERT INTO `subkriteria` (`id`, `kriteria_id`, `nama`, `bobot`) VALUES
(1, 1, 'Alat Pelindung Diri', 4),
(2, 2, 'Logistik Mahasiswa', 3),
(3, 3, 'Bantuan Kuota Mahasiswa', 2),
(4, 4, 'Hand Sanitizer', 1),
(5, 5, 'Sembako Masyarakat', 2),
(6, 6, 'input', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `calon`
--
ALTER TABLE `calon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `submit_by` (`submit_by`);

--
-- Indexes for table `calon_subkriteria`
--
ALTER TABLE `calon_subkriteria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `calon_id` (`calon_id`),
  ADD KEY `subkriteria_id` (`subkriteria_id`);

--
-- Indexes for table `hasil_seleksi`
--
ALTER TABLE `hasil_seleksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `program_bantuan_id` (`program_bantuan_id`),
  ADD KEY `calon_id` (`calon_id`);

--
-- Indexes for table `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `program_bantuan`
--
ALTER TABLE `program_bantuan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subkriteria`
--
ALTER TABLE `subkriteria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kriteria_id` (`kriteria_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `calon`
--
ALTER TABLE `calon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `calon_subkriteria`
--
ALTER TABLE `calon_subkriteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=900;

--
-- AUTO_INCREMENT for table `hasil_seleksi`
--
ALTER TABLE `hasil_seleksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `program_bantuan`
--
ALTER TABLE `program_bantuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subkriteria`
--
ALTER TABLE `subkriteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `calon`
--
ALTER TABLE `calon`
  ADD CONSTRAINT `calon_ibfk_1` FOREIGN KEY (`submit_by`) REFERENCES `pengguna` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `calon_subkriteria`
--
ALTER TABLE `calon_subkriteria`
  ADD CONSTRAINT `FK__calon` FOREIGN KEY (`calon_id`) REFERENCES `calon` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK__subkriteria` FOREIGN KEY (`subkriteria_id`) REFERENCES `subkriteria` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hasil_seleksi`
--
ALTER TABLE `hasil_seleksi`
  ADD CONSTRAINT `hasil_seleksi_ibfk_1` FOREIGN KEY (`program_bantuan_id`) REFERENCES `program_bantuan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hasil_seleksi_ibfk_2` FOREIGN KEY (`calon_id`) REFERENCES `calon` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subkriteria`
--
ALTER TABLE `subkriteria`
  ADD CONSTRAINT `FK_subkriteria_kriteria` FOREIGN KEY (`kriteria_id`) REFERENCES `kriteria` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
