-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2023 at 04:19 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_etraining`
--

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id_karyawan` int(11) NOT NULL,
  `NRP` int(8) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Departement` varchar(50) NOT NULL,
  `Jabatan` varchar(50) NOT NULL,
  `Foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `NRP`, `Nama`, `Departement`, `Jabatan`, `Foto`) VALUES
(1, 84728744, 'Yulinda', 'SHE', 'Admin SHE Data Evaluator', 'http://localhost/e-training/uploads/files/k7h2gc9u1dvl86s.png');

-- --------------------------------------------------------

--
-- Table structure for table `kompetensi`
--

CREATE TABLE `kompetensi` (
  `id_kompetensi` int(11) NOT NULL,
  `id_karyawan` varchar(50) NOT NULL,
  `Kompetensi` varchar(50) NOT NULL,
  `Sertifikat` varchar(255) NOT NULL,
  `Refresh_Training` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kompetensi`
--

INSERT INTO `kompetensi` (`id_kompetensi`, `id_karyawan`, `Kompetensi`, `Sertifikat`, `Refresh_Training`) VALUES
(1, 'Yulinda', 'Lock Out Tag Out', 'http://localhost/e-training/uploads/files/4g_2zbl0v86ju9m.pdf', '2023-10-31');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `Email` varchar(60) NOT NULL,
  `Level` varchar(50) NOT NULL,
  `Foto` varchar(255) NOT NULL,
  `login_session_key` varchar(255) DEFAULT NULL,
  `email_status` varchar(255) DEFAULT NULL,
  `password_expire_date` datetime DEFAULT '2024-01-28 00:00:00',
  `password_reset_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `Username`, `Password`, `Email`, `Level`, `Foto`, `login_session_key`, `email_status`, `password_expire_date`, `password_reset_key`) VALUES
(1, 'Admin', '$2y$10$DnCTdgPc9DgaCPf0lcW3bOsg5ebiFupJVMoIK9fNrf6rOFqfRZ1MK', 'admin@gmail.com', 'Admin', 'http://localhost/e-training/uploads/files/iz2rcytj5uax_e8.png', NULL, NULL, '2024-01-28 00:00:00', NULL),
(2, 'User', '$2y$10$Pkf0bt5w0vDejnnZgeBABeIZwwQM5KKWzvi22Ex1PAD55dE3syVN6', 'user@gmail.com', 'User', 'http://localhost/e-training/uploads/files/0hlu3s5o67v_inx.png', NULL, NULL, '2024-01-28 00:00:00', NULL),
(3, 'Master', '$2y$10$6Aw7gjTnAHYXwWYVVHJrneQIjYfbos3eJQukW9HA4kBHPwKnElu.W', 'master@gmail.com', 'Master', 'http://localhost/e-training/uploads/files/6cu40okdafwpt71.png', NULL, NULL, '2024-01-28 00:00:00', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indexes for table `kompetensi`
--
ALTER TABLE `kompetensi`
  ADD PRIMARY KEY (`id_kompetensi`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id_karyawan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kompetensi`
--
ALTER TABLE `kompetensi`
  MODIFY `id_kompetensi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
