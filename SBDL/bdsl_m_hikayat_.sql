-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2020 at 01:52 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bdsl(m.hikayat)`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Kode_Admin` varchar(9) NOT NULL,
  `Nama_Admin` varchar(30) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Kode_Admin`, `Nama_Admin`, `Username`, `Password`) VALUES
('1234', 'hikayat', 'zheen', 'zheen');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_disposisi`
--

CREATE TABLE `tabel_disposisi` (
  `Agno` varchar(9) NOT NULL,
  `Tgl_Terima` date NOT NULL,
  `Tk_Keamanan` varchar(4) NOT NULL,
  `Tgl_Penyelesaian` date NOT NULL,
  `Tgl_Surat` date NOT NULL,
  `No_Surat` varchar(20) NOT NULL,
  `Pengirim` varchar(30) NOT NULL,
  `Perihal` varchar(200) NOT NULL,
  `Lampiran` varchar(50) NOT NULL,
  `Intruksi` varchar(100) NOT NULL,
  `Terusan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_disposisi`
--

INSERT INTO `tabel_disposisi` (`Agno`, `Tgl_Terima`, `Tk_Keamanan`, `Tgl_Penyelesaian`, `Tgl_Surat`, `No_Surat`, `Pengirim`, `Perihal`, `Lampiran`, `Intruksi`, `Terusan`) VALUES
('mh', '2020-03-01', 'mhy', '2020-02-04', '2020-02-26', '0102', 'pemerintahan', 'karna virus corona', '1', '?', 'tidak ada');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_kartu`
--

CREATE TABLE `tabel_kartu` (
  `Indeks` varchar(9) NOT NULL,
  `Kode` varchar(9) NOT NULL,
  `No_Urut` int(9) NOT NULL,
  `Perihal` varchar(200) NOT NULL,
  `Isi_Ringkas` varchar(50) NOT NULL,
  `Pengiriman` varchar(30) NOT NULL,
  `Tgl_Surat` date NOT NULL,
  `No_Surat` varchar(20) NOT NULL,
  `Lampiran` varchar(30) NOT NULL,
  `Pengolah` varchar(30) NOT NULL,
  `Tgl_Terusan` date NOT NULL,
  `Penerima` varchar(30) NOT NULL,
  `Catatan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_kartu`
--

INSERT INTO `tabel_kartu` (`Indeks`, `Kode`, `No_Urut`, `Perihal`, `Isi_Ringkas`, `Pengiriman`, `Tgl_Surat`, `No_Surat`, `Lampiran`, `Pengolah`, `Tgl_Terusan`, `Penerima`, `Catatan`) VALUES
('surat', '1234', 12, 'karna virus', 'entah', 'pemerintah', '2020-02-26', '1', '1', 'mhy', '2020-03-04', 'pejabat', 'masih belajar');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_srt_keluar`
--

CREATE TABLE `tabel_srt_keluar` (
  `No_Surat` varchar(20) NOT NULL,
  `No_Urut` int(9) NOT NULL,
  `Tgl_Surat` date NOT NULL,
  `Kode` varchar(15) NOT NULL,
  `Sifat` varchar(30) NOT NULL,
  `Intern` varchar(30) NOT NULL,
  `Instansi` varchar(30) NOT NULL,
  `Swasta` varchar(30) NOT NULL,
  `Tembusan` varchar(30) NOT NULL,
  `Perihal` varchar(200) NOT NULL,
  `Lokasi` varchar(30) NOT NULL,
  `Keterangan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_srt_keluar`
--

INSERT INTO `tabel_srt_keluar` (`No_Surat`, `No_Urut`, `Tgl_Surat`, `Kode`, `Sifat`, `Intern`, `Instansi`, `Swasta`, `Tembusan`, `Perihal`, `Lokasi`, `Keterangan`) VALUES
('2', 12, '2020-03-01', '54321', 'formal', 'internal', 'DPR', '-', 'tidak ada', 'virus corona', 'majalengka', 'surat ijin');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_srt_masuk`
--

CREATE TABLE `tabel_srt_masuk` (
  `No_Surat` varchar(20) NOT NULL,
  `No_Urut` int(9) NOT NULL,
  `Tgl_Surat` date NOT NULL,
  `Sifat` varchar(30) NOT NULL,
  `Tgl_Terima` date NOT NULL,
  `Instansi` varchar(30) NOT NULL,
  `Swasta` varchar(30) NOT NULL,
  `Perihal` varchar(200) NOT NULL,
  `Disposisi` varchar(50) NOT NULL,
  `Lokasi` varchar(30) NOT NULL,
  `Keterangan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_srt_masuk`
--

INSERT INTO `tabel_srt_masuk` (`No_Surat`, `No_Urut`, `Tgl_Surat`, `Sifat`, `Tgl_Terima`, `Instansi`, `Swasta`, `Perihal`, `Disposisi`, `Lokasi`, `Keterangan`) VALUES
('2', 12, '2020-03-01', 'formal', '2020-03-03', 'internal', '-', 'virus corona', '-', 'majalegka', 'masih di ajar');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Kode_Admin`);

--
-- Indexes for table `tabel_disposisi`
--
ALTER TABLE `tabel_disposisi`
  ADD PRIMARY KEY (`Agno`);

--
-- Indexes for table `tabel_kartu`
--
ALTER TABLE `tabel_kartu`
  ADD PRIMARY KEY (`No_Urut`),
  ADD UNIQUE KEY `Kode` (`Kode`);

--
-- Indexes for table `tabel_srt_keluar`
--
ALTER TABLE `tabel_srt_keluar`
  ADD PRIMARY KEY (`No_Urut`);

--
-- Indexes for table `tabel_srt_masuk`
--
ALTER TABLE `tabel_srt_masuk`
  ADD PRIMARY KEY (`No_Urut`),
  ADD UNIQUE KEY `No_Surat` (`No_Surat`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabel_kartu`
--
ALTER TABLE `tabel_kartu`
  MODIFY `No_Urut` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tabel_srt_keluar`
--
ALTER TABLE `tabel_srt_keluar`
  MODIFY `No_Urut` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tabel_srt_masuk`
--
ALTER TABLE `tabel_srt_masuk`
  MODIFY `No_Urut` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
