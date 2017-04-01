-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2017 at 06:03 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE IF NOT EXISTS `berita` (
  `berita_id` int(5) NOT NULL,
  `berita_judul` varchar(100) NOT NULL,
  `berita_headline` text NOT NULL,
  `berita_isi` text NOT NULL,
  `berita_author` varchar(15) NOT NULL,
  `berita_tanggal` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`berita_id`, `berita_judul`, `berita_headline`, `berita_isi`, `berita_author`, `berita_tanggal`) VALUES
(0, 'Keunikan Pantai Dekat Tempat Raja Salman Menginap di Bali', 'mnjg', 'oiuhuhj', ' mjihjlkm', '2017-03-10 05:17:42');

-- --------------------------------------------------------

--
-- Table structure for table `data_siswa`
--

CREATE TABLE IF NOT EXISTS `data_siswa` (
  `NISN` int(10) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `jurusan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_siswa`
--

INSERT INTO `data_siswa` (`NISN`, `nama`, `kelas`, `jurusan`) VALUES
(1000000001, 'mardiyah', 'X-B', 'umum'),
(1000000002, 'Yuni', 'X-A', 'umum'),
(1000000003, 'Dini', 'X-B', 'umum'),
(1000000004, 'Icha', 'X-A', 'umum');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
`id` int(5) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(70) NOT NULL,
  `privilege` int(2) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `asal_kota` varchar(20) NOT NULL,
  `agama` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `hobi` varchar(20) NOT NULL,
  `nohp` varchar(13) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `privilege`, `nama`, `asal_kota`, `agama`, `email`, `jenis_kelamin`, `hobi`, `nohp`) VALUES
(2, 'Erna', '$2y$10$YUE3bcZJACxCi5uWTjnhhOXMiVxEs0qld6k.COFKCAB.ECae1MZMW', 0, 'Erna', 'kebumen', 'Islam', 'ernanovia@gmail.com', 'perempuan', 'menulis', '08537654545'),
(4, 'dini', '$2y$10$8XttMJ9aK8uPsqcejYW0..Ug2BqZNamJZtaOsELwuZYifolK48b9e', 0, 'diniati', 'brebes', 'Islam', 'diniati@gmail.com', 'perempuan', 'menulis', '085842304666'),
(5, 'mardiyah', '$2y$10$Hqqu1GNT6S.SqqOuXDkoTeXb2zEbIgiozs0UxqXrME75sMBUZjjui', 1, 'mardiyah', 'jambi', 'Islam', 'mardiyah.nurhayati@gmail.com', 'perempuan', 'olahraga', '085600825628'),
(13, 'Icha', '$2y$10$8/bFIuVTwTEptDsnh5AFKOumOYMBeF9j1veqoXc8yeWsG6CZru2TK', 0, 'Icha', 'lampung', 'Islam', 'icha@gmail.com', 'perempuan', 'menulis', '082300036964');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE IF NOT EXISTS `pegawai` (
`id_pegawai` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nama`, `tempat_lahir`, `tanggal_lahir`) VALUES
(1, 'Abdi', 'Bandung', '1980-07-01'),
(2, 'Candra', 'Bekasi', '1982-06-29'),
(3, 'Dony', 'Tangerang', '1983-12-30'),
(4, 'Eddy', 'Depok', '1981-03-16'),
(5, 'Fajar', 'Jakarta', '1985-04-20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
 ADD PRIMARY KEY (`berita_id`);

--
-- Indexes for table `data_siswa`
--
ALTER TABLE `data_siswa`
 ADD PRIMARY KEY (`NISN`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
 ADD PRIMARY KEY (`id_pegawai`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
