-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2015 at 05:37 AM
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
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_prediksi`
--

INSERT INTO `data_prediksi` (`id`, `no_anggota`, `nama_anggota`, `penghasilan`, `status`, `status_rumah`, `pinjaman`, `pekerjaan`, `keputusan_c45`, `id_rule_c45`) VALUES
(1, '1', '1', '>=4jt', 'menikah', 'pribadi', '>4jt', 'pns', 'Ya', 1),
(2, '2', '2', 'high', 'menikah', 'pribadi', 'tinggi', 'pns', 'Tidak', 1),
(3, '3', '3', 'low', 'menikah', 'pribadi', 'sedang', 'pns', 'Tidak', 4),
(4, '4', '4', 'high', 'belum menikah', 'pribadi', 'tinggi', 'pedagang', 'Tidak', 1),
(5, '5', '5', 'high', 'menikah', 'pribadi', 'sedang', 'pns', 'Ya', 5),
(6, '6', '6', 'low', 'menikah', 'pribadi', 'rendah', 'pns', 'Ya', 2),
(7, '7', '7', 'low', 'menikah', 'pribadi', 'sedang', 'pns', 'Tidak', 4);

-- --------------------------------------------------------

--
-- Table structure for table `data_variabel_anggota`
--

CREATE TABLE IF NOT EXISTS `data_variabel_anggota` (
  `id_variabel_anggota` int(11) NOT NULL,
  `nama_variabel_anggota` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `data_variabel_hub`
--

CREATE TABLE IF NOT EXISTS `data_variabel_hub` (
  `id_data_anggota` int(11) NOT NULL,
  `id_data_variabel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `data_variabel_prediksi`
--

CREATE TABLE IF NOT EXISTS `data_variabel_prediksi` (
  `id` int(5) NOT NULL,
  `variabel` varchar(50) NOT NULL,
  `nilai_variabel` varchar(50) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_variabel_prediksi`
--

INSERT INTO `data_variabel_prediksi` (`id`, `variabel`, `nilai_variabel`) VALUES
(1, 'pinjaman', 'sedang'),
(2, 'pinjaman', 'sedang'),
(3, 'pinjaman', 'sedang'),
(4, 'penghasilan', 'low'),
(5, 'penghasilan', 'low');

-- --------------------------------------------------------

--
-- Table structure for table `iterasi_c45`
--

CREATE TABLE IF NOT EXISTS `iterasi_c45` (
  `id` int(11) NOT NULL,
  `iterasi` varchar(3) NOT NULL,
  `atribut_gain_ratio_max` varchar(255) NOT NULL,
  `atribut` varchar(100) NOT NULL,
  `nilai_atribut` varchar(100) NOT NULL,
  `jml_kasus_kelancaran` varchar(100) NOT NULL,
  `jml_kasus_ya` varchar(100) NOT NULL,
  `jml_kasus_tidak` varchar(100) NOT NULL,
  `entropy` varchar(10) NOT NULL,
  `inf_gain` varchar(10) NOT NULL,
  `split_info` varchar(10) NOT NULL,
  `gain_ratio` varchar(10) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `iterasi_c45`
--

INSERT INTO `iterasi_c45` (`id`, `iterasi`, `atribut_gain_ratio_max`, `atribut`, `nilai_atribut`, `jml_kasus_kelancaran`, `jml_kasus_ya`, `jml_kasus_tidak`, `entropy`, `inf_gain`, `split_info`, `gain_ratio`) VALUES
(1, '1', 'pinjaman', 'Total', 'Total', '16', '9', '7', '0.9887', '', '', '0'),
(2, '2', 'pinjaman', 'penghasilan', 'low', '11', '5', '6', '0.994', '0.0797', '0.896', '0.089'),
(3, '3', 'pinjaman', 'penghasilan', 'high', '5', '4', '1', '0.7219', '0.0797', '0.896', '0.089'),
(4, '4', 'pinjaman', 'status', 'menikah', '6', '1', '5', '0.65', '0.2938', '0.9544', '0.3078'),
(5, '5', 'pinjaman', 'status', 'belum', '10', '8', '2', '0.7219', '0.2938', '0.9544', '0.3078'),
(6, '6', 'pinjaman', 'status_rumah', 'pribadi', '8', '5', '3', '0.9544', '0.0115', '1', '0.0115'),
(7, '7', 'pinjaman', 'status_rumah', 'sewa', '8', '4', '4', '1', '0.0115', '1', '0.0115'),
(8, '8', 'pinjaman', 'pinjaman', 'tinggi', '4', '0', '4', '0', '0.5115', '1.5', '0.341'),
(9, '9', 'pinjaman', 'pinjaman', 'rendah', '4', '4', '0', '0', '0.5115', '1.5', '0.341'),
(10, '10', 'pinjaman', 'pinjaman', 'sedang', '8', '5', '3', '0.9544', '0.5115', '1.5', '0.341'),
(11, '11', 'pinjaman', 'pekerjaan', 'pns', '4', '2', '2', '1', '0.0603', '1.9772', '0.0305'),
(12, '12', 'pinjaman', 'pekerjaan', 'swasta', '4', '3', '1', '0.8113', '0.0603', '1.9772', '0.0305'),
(13, '13', 'pinjaman', 'pekerjaan', 'pedagang', '5', '3', '2', '0.971', '0.0603', '1.9772', '0.0305'),
(14, '14', 'pinjaman', 'pekerjaan', 'buruh', '3', '1', '2', '0.9183', '0.0603', '1.9772', '0.0305'),
(15, '1', 'penghasilan', 'Total', 'Total', '8', '5', '3', '0.9544', '', '', '0'),
(16, '2', 'penghasilan', 'penghasilan', 'low', '5', '2', '3', '0.971', '0.3475', '0.9544', '0.3641'),
(17, '3', 'penghasilan', 'penghasilan', 'high', '3', '3', '0', '0', '0.3475', '0.9544', '0.3641'),
(18, '4', 'penghasilan', 'status', 'menikah', '2', '1', '1', '1', '0.0157', '0.8113', '0.0194'),
(19, '5', 'penghasilan', 'status', 'belum', '6', '4', '2', '0.9183', '0.0157', '0.8113', '0.0194'),
(20, '6', 'penghasilan', 'status_rumah', 'pribadi', '4', '3', '1', '0.8113', '0.0488', '1', '0.0488'),
(21, '7', 'penghasilan', 'status_rumah', 'sewa', '4', '2', '2', '1', '0.0488', '1', '0.0488'),
(22, '8', 'penghasilan', 'pekerjaan', 'pns', '2', '1', '1', '1', '0.36', '1.9056', '0.1889'),
(23, '9', 'penghasilan', 'pekerjaan', 'swasta', '2', '2', '0', '0', '0.36', '1.9056', '0.1889'),
(24, '10', 'penghasilan', 'pekerjaan', 'pedagang', '3', '2', '1', '0.9183', '0.36', '1.9056', '0.1889'),
(25, '11', 'penghasilan', 'pekerjaan', 'buruh', '1', '0', '1', '0', '0.36', '1.9056', '0.1889'),
(26, '1', 'pekerjaan', 'Total', 'Total', '5', '2', '3', '0.971', '', '', '0'),
(27, '2', 'pekerjaan', 'status', 'menikah', '1', '0', '1', '0', '0.171', '0.7219', '0.2369'),
(28, '3', 'pekerjaan', 'status', 'belum', '4', '2', '2', '1', '0.171', '0.7219', '0.2369'),
(29, '4', 'pekerjaan', 'status_rumah', 'pribadi', '2', '1', '1', '1', '0.02', '0.971', '0.0206'),
(30, '5', 'pekerjaan', 'status_rumah', 'sewa', '3', '1', '2', '0.9183', '0.02', '0.971', '0.0206'),
(31, '6', 'pekerjaan', 'pekerjaan', 'pns', '1', '0', '1', '0', '0.571', '1.9219', '0.2971'),
(32, '7', 'pekerjaan', 'pekerjaan', 'swasta', '1', '1', '0', '0', '0.571', '1.9219', '0.2971'),
(33, '8', 'pekerjaan', 'pekerjaan', 'pedagang', '2', '1', '1', '1', '0.571', '1.9219', '0.2971'),
(34, '9', 'pekerjaan', 'pekerjaan', 'buruh', '1', '0', '1', '0', '0.571', '1.9219', '0.2971');

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
  `inf_gain_temp` varchar(10) NOT NULL,
  `split_info` varchar(10) NOT NULL,
  `split_info_temp` varchar(10) NOT NULL,
  `gain_ratio` varchar(10) CHARACTER SET latin1 NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `perhitungan_c45`
--

INSERT INTO `perhitungan_c45` (`id`, `variabel`, `nilai_variabel`, `jml_kasus_kelancaran`, `jml_kasus_tidak`, `jml_kasus_ya`, `entropy`, `inf_gain`, `inf_gain_temp`, `split_info`, `split_info_temp`, `gain_ratio`) VALUES
(1, 'Total', 'Total', '5', '3', '2', '0.971', '', '', '', '', '0'),
(2, 'status', 'menikah', '1', '1', '0', '0', '0.171', '0', '0.7219', '-0.4643856', '0.2369'),
(3, 'status', 'belum', '4', '2', '2', '1', '0.171', '-0.8', '0.7219', '-0.2575424', '0.2369'),
(4, 'status_rumah', 'pribadi', '2', '1', '1', '1', '0.02', '-0.4', '0.971', '-0.5287712', '0.0206'),
(5, 'status_rumah', 'sewa', '3', '2', '1', '0.9183', '0.02', '-0.55098', '0.971', '-0.4421793', '0.0206'),
(6, 'pekerjaan', 'pns', '1', '1', '0', '0', '0.571', '0', '1.9219', '-0.4643856', '0.2971'),
(7, 'pekerjaan', 'swasta', '1', '0', '1', '0', '0.571', '0', '1.9219', '-0.4643856', '0.2971'),
(8, 'pekerjaan', 'pedagang', '2', '1', '1', '1', '0.571', '-0.4', '1.9219', '-0.5287712', '0.2971'),
(9, 'pekerjaan', 'buruh', '1', '1', '0', '0', '0.571', '0', '1.9219', '-0.4643856', '0.2971');

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
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pohon_keputusan`
--

INSERT INTO `pohon_keputusan` (`id`, `variabel`, `nilai_variabel`, `id_parent`, `jml_kasus_tidak`, `jml_kasus_ya`, `kelancaran`, `diproses`, `kondisi_variabel`, `looping_kondisi`) VALUES
(1, 'pinjaman', 'tinggi', '0', '4', '0', 'Tidak', 'Belum', 'AND pinjaman = ~tinggi~', 'Belum'),
(2, 'pinjaman', 'rendah', '0', '0', '4', 'Ya', 'Belum', 'AND pinjaman = ~rendah~', 'Belum'),
(3, 'pinjaman', 'sedang', '0', '3', '5', '?', 'Sudah', 'AND pinjaman = ~sedang~', 'Belum'),
(4, 'penghasilan', 'low', '3', '3', '2', 'Tidak', 'Sudah', 'AND pinjaman = ~sedang~ AND penghasilan = ~low~', 'Sudah'),
(5, 'penghasilan', 'high', '3', '0', '3', 'Ya', 'Belum', 'AND pinjaman = ~sedang~ AND penghasilan = ~high~', 'Sudah');

-- --------------------------------------------------------

--
-- Table structure for table `rule_pohon_keputusan`
--

CREATE TABLE IF NOT EXISTS `rule_pohon_keputusan` (
  `id` int(5) NOT NULL,
  `id_parent` int(5) NOT NULL,
  `rule` varchar(200) NOT NULL,
  `kelancaran` varchar(50) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rule_pohon_keputusan`
--

INSERT INTO `rule_pohon_keputusan` (`id`, `id_parent`, `rule`, `kelancaran`) VALUES
(1, 0, 'pinjaman == tinggi', 'Tidak'),
(2, 0, 'pinjaman == rendah', 'Ya'),
(4, 0, 'pinjaman == sedang AND penghasilan == low', 'Tidak'),
(5, 0, 'pinjaman == sedang AND penghasilan == high', 'Ya');

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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rule_prediksi`
--

INSERT INTO `rule_prediksi` (`id`, `id_rule`, `variabel`, `nilai_variabel`, `kelancaran`, `cocok`, `pohon`) VALUES
(1, 1, 'pinjaman', 'tinggi', 'Tidak', '', 'C45'),
(2, 2, 'pinjaman', 'rendah', 'Ya', '', 'C45'),
(3, 4, 'pinjaman', 'sedang', 'Tidak', '', 'C45'),
(4, 4, 'penghasilan', 'low', 'Tidak', '', 'C45'),
(5, 5, 'pinjaman', 'sedang', 'Ya', '', 'C45'),
(6, 5, 'penghasilan', 'high', 'Ya', '', 'C45');

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
(4, 'status', 'menikah'),
(5, 'status', 'belum'),
(6, 'status_rumah', 'pribadi'),
(7, 'status_rumah', 'sewa'),
(11, 'pekerjaan', 'pns'),
(12, 'pekerjaan', 'swasta'),
(13, 'pekerjaan', 'pedagang'),
(14, 'pekerjaan', 'buruh');

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
-- Indexes for table `data_variabel_anggota`
--
ALTER TABLE `data_variabel_anggota`
  ADD PRIMARY KEY (`id_variabel_anggota`);

--
-- Indexes for table `data_variabel_prediksi`
--
ALTER TABLE `data_variabel_prediksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iterasi_c45`
--
ALTER TABLE `iterasi_c45`
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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `data_variabel_anggota`
--
ALTER TABLE `data_variabel_anggota`
  MODIFY `id_variabel_anggota` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `data_variabel_prediksi`
--
ALTER TABLE `data_variabel_prediksi`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `iterasi_c45`
--
ALTER TABLE `iterasi_c45`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `perhitungan_c45`
--
ALTER TABLE `perhitungan_c45`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `pohon_keputusan`
--
ALTER TABLE `pohon_keputusan`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `rule_pohon_keputusan`
--
ALTER TABLE `rule_pohon_keputusan`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `rule_prediksi`
--
ALTER TABLE `rule_prediksi`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `variabel`
--
ALTER TABLE `variabel`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
