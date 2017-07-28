/*
Navicat MySQL Data Transfer

Source Server         : localhost_mysql
Source Server Version : 50616
Source Host           : 127.0.0.1:3306
Source Database       : db_skripsi_itang

Target Server Type    : MYSQL
Target Server Version : 50616
File Encoding         : 65001

Date: 2017-07-28 20:07:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tbl_absensi
-- ----------------------------
DROP TABLE IF EXISTS `tbl_absensi`;
CREATE TABLE `tbl_absensi` (
  `nik` varchar(20) NOT NULL,
  `id_sift` int(15) NOT NULL,
  `koridor` varchar(15) NOT NULL,
  `tanggal_absen` date NOT NULL,
  `jam_masuk` datetime(6) NOT NULL,
  `jam_keluar` datetime(6) NOT NULL,
  `status_absen` varchar(25) NOT NULL,
  PRIMARY KEY (`nik`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_absensi
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_divisi
-- ----------------------------
DROP TABLE IF EXISTS `tbl_divisi`;
CREATE TABLE `tbl_divisi` (
  `id_divisi` int(15) NOT NULL,
  `nama_divisi` varchar(25) NOT NULL,
  PRIMARY KEY (`id_divisi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_divisi
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_jabatan
-- ----------------------------
DROP TABLE IF EXISTS `tbl_jabatan`;
CREATE TABLE `tbl_jabatan` (
  `id_jabatan` int(10) NOT NULL,
  `nama_jabatan` varchar(25) NOT NULL,
  `gapok` int(50) NOT NULL,
  `bpjs` int(50) NOT NULL,
  `pph21` int(50) NOT NULL,
  `tunjangan_makan` int(50) NOT NULL,
  `tunjangan_transport` int(50) NOT NULL,
  `insentiv` int(50) NOT NULL,
  `tunjangan_jabatan` int(50) NOT NULL,
  PRIMARY KEY (`id_jabatan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_jabatan
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_karyawan
-- ----------------------------
DROP TABLE IF EXISTS `tbl_karyawan`;
CREATE TABLE `tbl_karyawan` (
  `nik` varchar(15) NOT NULL,
  `nama_karyawan` varchar(25) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `jenis_kelamin` char(10) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `status` char(15) NOT NULL,
  `Id_divisi` int(30) NOT NULL,
  `pendidikan` varchar(20) NOT NULL,
  `tahun_masuk` date NOT NULL,
  `id_jabatan` int(30) NOT NULL,
  PRIMARY KEY (`nik`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_karyawan
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_sift
-- ----------------------------
DROP TABLE IF EXISTS `tbl_sift`;
CREATE TABLE `tbl_sift` (
  `id_sift` int(15) NOT NULL,
  `sift` int(15) NOT NULL,
  PRIMARY KEY (`id_sift`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_sift
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_status_absensi
-- ----------------------------
DROP TABLE IF EXISTS `tbl_status_absensi`;
CREATE TABLE `tbl_status_absensi` (
  `ijin` varchar(25) NOT NULL,
  `sakit` varchar(25) NOT NULL,
  `alpa` varchar(25) NOT NULL,
  PRIMARY KEY (`ijin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_status_absensi
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_transaksi_gaji
-- ----------------------------
DROP TABLE IF EXISTS `tbl_transaksi_gaji`;
CREATE TABLE `tbl_transaksi_gaji` (
  `id_transaksi` int(15) NOT NULL,
  `nomor_slip` int(20) NOT NULL,
  `periode` date NOT NULL,
  `nik` int(15) NOT NULL,
  `total_gaji` int(50) NOT NULL,
  `jumlah_potongan` int(50) NOT NULL,
  `total_gaji_bersih` int(50) NOT NULL,
  PRIMARY KEY (`id_transaksi`),
  UNIQUE KEY `nik` (`nik`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_transaksi_gaji
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_user
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user` (
  `id` int(10) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
