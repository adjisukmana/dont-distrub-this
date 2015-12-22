-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2015 at 06:32 PM
-- Server version: 5.6.25
-- PHP Version: 5.5.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbminingx`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_anggota`
--

CREATE TABLE IF NOT EXISTS `data_anggota` (
  `id` int(10) NOT NULL,
  `no_anggota` varchar(50) NOT NULL,
  `nama_anggota` varchar(50) NOT NULL,
  `penghasilan` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `status_rumah` varchar(50) NOT NULL,
  `pinjaman` varchar(50) NOT NULL,
  `pekerjaan` varchar(50) NOT NULL,
  `kelancaran` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_anggota`
--

INSERT INTO `data_anggota` (`id`, `no_anggota`, `nama_anggota`, `penghasilan`, `status`, `status_rumah`, `pinjaman`, `pekerjaan`, `kelancaran`) VALUES
(1, '1', 'Adji', 'low', 'menikah', 'pribadi', 'tinggi', 'pns', 'Tidak'),
(2, '2', 'Sukmana', 'high', 'menikah', 'sewa', 'tinggi', 'swasta', 'Tidak'),
(3, '3', 'Eka', 'low', 'menikah', 'pribadi', 'tinggi', 'pedagang', 'Tidak'),
(4, '4', 'Adji', 'low', 'menikah', 'sewa', 'tinggi', 'buruh', 'Tidak'),
(5, '5', 'Sukmana', 'low', 'belum', 'pribadi', 'rendah', 'pns', 'Ya'),
(6, '6', 'Eka', 'high', 'belum', 'sewa', 'rendah', 'swasta', 'Ya'),
(7, '7', 'Adji', 'low', 'belum', 'pribadi', 'rendah', 'pedagang', 'Ya'),
(8, '8', 'Sukmana', 'low', 'belum', 'sewa', 'rendah', 'buruh', 'Ya'),
(9, '9', 'Eka', 'high', 'belum', 'pribadi', 'sedang', 'pns', 'Ya'),
(10, '10', 'Adji', 'high', 'belum', 'sewa', 'sedang', 'swasta', 'Ya'),
(11, '11', 'Sukmana', 'high', 'menikah', 'pribadi', 'sedang', 'pedagang', 'Ya'),
(12, '12', 'Eka', 'low', 'belum', 'sewa', 'sedang', 'pedagang', 'Tidak'),
(13, '13', 'Adji', 'low', 'belum', 'pribadi', 'sedang', 'buruh', 'Tidak'),
(14, '14', 'Sukmana', 'low', 'menikah', 'sewa', 'sedang', 'pns', 'Tidak'),
(15, '15', 'Eka', 'low', 'belum', 'sewa', 'sedang', 'swasta', 'Ya'),
(16, '16', 'Adji', 'low', 'belum', 'pribadi', 'sedang', 'pedagang', 'Ya');

-- --------------------------------------------------------

--
-- Table structure for table `data_prediksi`
--

CREATE TABLE IF NOT EXISTS `data_prediksi` (
  `id` int(10) NOT NULL,
  `no_anggota` varchar(50) NOT NULL,
  `nama_anggota` varchar(50) NOT NULL,
  `penghasilan` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `status_rumah` varchar(50) NOT NULL,
  `pinjaman` varchar(50) NOT NULL,
  `pekerjaan` varchar(50) NOT NULL,
  `keputusan_c45` varchar(50) NOT NULL,
  `id_rule_c45` int(10) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_prediksi`
--

INSERT INTO `data_prediksi` (`id`, `no_anggota`, `nama_anggota`, `penghasilan`, `status`, `status_rumah`, `pinjaman`, `pekerjaan`, `keputusan_c45`, `id_rule_c45`) VALUES
(1, '1', '1', '>=4jt', 'menikah', 'pribadi', '>4jt', 'pns', 'Ya', 1);

-- --------------------------------------------------------

--
-- Table structure for table `data_variabel_prediksi`
--

CREATE TABLE IF NOT EXISTS `data_variabel_prediksi` (
  `id` int(5) NOT NULL,
  `variabel` varchar(50) NOT NULL,
  `nilai_variabel` varchar(50) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_variabel_prediksi`
--

INSERT INTO `data_variabel_prediksi` (`id`, `variabel`, `nilai_variabel`) VALUES
(1, 'status', 'belum menikah'),
(2, 'status', 'belum menikah');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE IF NOT EXISTS `karyawan` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id`, `username`, `password`) VALUES
(1, 'suparjo', '0115b89efd795f039564f49866fa8933'),
(2, 'rezki', 'd0dac9516d16d873b25d899e8a545314');

-- --------------------------------------------------------

--
-- Table structure for table `perhitungan_c45`
--

CREATE TABLE IF NOT EXISTS `perhitungan_c45` (
  `id` int(10) NOT NULL,
  `variabel` varchar(50) NOT NULL,
  `nilai_variabel` varchar(50) NOT NULL,
  `jml_kasus_kelancaran` varchar(5) NOT NULL,
  `jml_kasus_tidak` varchar(5) NOT NULL,
  `jml_kasus_ya` varchar(5) NOT NULL,
  `entropy` varchar(10) NOT NULL,
  `inf_gain` varchar(10) NOT NULL,
  `inf_gain_temp` varchar(10) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `perhitungan_c45`
--

INSERT INTO `perhitungan_c45` (`id`, `variabel`, `nilai_variabel`, `jml_kasus_kelancaran`, `jml_kasus_tidak`, `jml_kasus_ya`, `entropy`, `inf_gain`, `inf_gain_temp`) VALUES
(1, 'Total', 'Total', '8', '3', '5', '0.9544', '', ''),
(2, 'pekerjaan', 'pns', '2', '1', '1', '1', '0.36', '-0.25'),
(3, 'pekerjaan', 'swasta', '2', '0', '2', '0', '0.36', '0'),
(4, 'pekerjaan', 'pedagang', '3', '1', '2', '0.9183', '0.36', '-0.3443625'),
(5, 'pekerjaan', 'buruh', '1', '1', '0', '0', '0.36', '0'),
(6, 'penghasilan', 'low', '5', '3', '2', '0.971', '0.3475', '-0.606875'),
(7, 'penghasilan', 'high', '3', '0', '3', '0', '0.3475', '0'),
(8, 'status', 'menikah', '2', '1', '1', '1', '0.0157', '-0.25'),
(9, 'status', 'belum', '6', '2', '4', '0.9183', '0.0157', '-0.688725'),
(10, 'status_rumah', 'pribadi', '4', '1', '3', '0.8113', '0.0488', '-0.40565'),
(11, 'status_rumah', 'sewa', '4', '2', '2', '1', '0.0488', '-0.5');

-- --------------------------------------------------------

--
-- Table structure for table `pohon_keputusan`
--

CREATE TABLE IF NOT EXISTS `pohon_keputusan` (
  `id` int(5) NOT NULL,
  `variabel` varchar(50) NOT NULL,
  `nilai_variabel` varchar(50) NOT NULL,
  `id_parent` char(5) NOT NULL,
  `jml_kasus_tidak` varchar(5) NOT NULL,
  `jml_kasus_ya` varchar(5) NOT NULL,
  `kelancaran` varchar(50) NOT NULL,
  `diproses` varchar(10) NOT NULL,
  `kondisi_variabel` varchar(200) NOT NULL,
  `looping_kondisi` varchar(15) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pohon_keputusan`
--

INSERT INTO `pohon_keputusan` (`id`, `variabel`, `nilai_variabel`, `id_parent`, `jml_kasus_tidak`, `jml_kasus_ya`, `kelancaran`, `diproses`, `kondisi_variabel`, `looping_kondisi`) VALUES
(1, 'pinjaman', 'tinggi', '0', '4', '0', 'Tidak', 'Belum', 'AND pinjaman = ~tinggi~', 'Belum'),
(2, 'pinjaman', 'rendah', '0', '0', '4', 'Ya', 'Belum', 'AND pinjaman = ~rendah~', 'Belum'),
(3, 'pinjaman', 'sedang', '0', '3', '5', 'Ya', 'Sudah', 'AND pinjaman = ~sedang~', 'Belum');

-- --------------------------------------------------------

--
-- Table structure for table `rule_pohon_keputusan`
--

CREATE TABLE IF NOT EXISTS `rule_pohon_keputusan` (
  `id` int(5) NOT NULL,
  `id_parent` int(5) NOT NULL,
  `rule` varchar(200) NOT NULL,
  `kelancaran` varchar(50) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rule_pohon_keputusan`
--

INSERT INTO `rule_pohon_keputusan` (`id`, `id_parent`, `rule`, `kelancaran`) VALUES
(1, 0, 'pinjaman == tinggi', 'Tidak'),
(2, 0, 'pinjaman == rendah', 'Ya'),
(3, 0, 'pinjaman == sedang', 'Ya');

-- --------------------------------------------------------

--
-- Table structure for table `rule_prediksi`
--

CREATE TABLE IF NOT EXISTS `rule_prediksi` (
  `id` int(5) NOT NULL,
  `id_rule` int(5) NOT NULL,
  `variabel` varchar(50) NOT NULL,
  `nilai_variabel` varchar(50) NOT NULL,
  `kelancaran` varchar(50) NOT NULL,
  `cocok` varchar(50) NOT NULL,
  `pohon` varchar(50) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rule_prediksi`
--

INSERT INTO `rule_prediksi` (`id`, `id_rule`, `variabel`, `nilai_variabel`, `kelancaran`, `cocok`, `pohon`) VALUES
(1, 1, 'pinjaman', 'tinggi', 'Tidak', '', 'C45'),
(2, 2, 'pinjaman', 'rendah', 'Ya', '', 'C45'),
(3, 3, 'pinjaman', 'sedang', 'Ya', '', 'C45');

-- --------------------------------------------------------

--
-- Table structure for table `variabel`
--

CREATE TABLE IF NOT EXISTS `variabel` (
  `id` int(5) NOT NULL,
  `variabel` varchar(50) NOT NULL,
  `nilai_variabel` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `variabel`
--

INSERT INTO `variabel` (`id`, `variabel`, `nilai_variabel`) VALUES
(1, 'kelancaran', 'kelancaran'),
(2, 'pekerjaan', 'pns'),
(3, 'pekerjaan', 'swasta'),
(4, 'pekerjaan', 'pedagang'),
(5, 'pekerjaan', 'buruh'),
(6, 'penghasilan', 'low'),
(7, 'penghasilan', 'high'),
(8, 'status', 'menikah'),
(9, 'status', 'belum'),
(13, 'status_rumah', 'pribadi'),
(14, 'status_rumah', 'sewa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_anggota`
--
ALTER TABLE `data_anggota`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_prediksi`
--
ALTER TABLE `data_prediksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_variabel_prediksi`
--
ALTER TABLE `data_variabel_prediksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `perhitungan_c45`
--
ALTER TABLE `perhitungan_c45`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pohon_keputusan`
--
ALTER TABLE `pohon_keputusan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rule_pohon_keputusan`
--
ALTER TABLE `rule_pohon_keputusan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rule_prediksi`
--
ALTER TABLE `rule_prediksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `variabel`
--
ALTER TABLE `variabel`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_anggota`
--
ALTER TABLE `data_anggota`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `data_prediksi`
--
ALTER TABLE `data_prediksi`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `data_variabel_prediksi`
--
ALTER TABLE `data_variabel_prediksi`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `perhitungan_c45`
--
ALTER TABLE `perhitungan_c45`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `pohon_keputusan`
--
ALTER TABLE `pohon_keputusan`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `rule_pohon_keputusan`
--
ALTER TABLE `rule_pohon_keputusan`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `rule_prediksi`
--
ALTER TABLE `rule_prediksi`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `variabel`
--
ALTER TABLE `variabel`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
