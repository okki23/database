/*
Navicat MySQL Data Transfer

Source Server         : localhost_mysql
Source Server Version : 50616
Source Host           : 127.0.0.1:3306
Source Database       : db_skripsi_tarim

Target Server Type    : MYSQL
Target Server Version : 50616
File Encoding         : 65001

Date: 2017-07-28 20:17:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_barang
-- ----------------------------
DROP TABLE IF EXISTS `t_barang`;
CREATE TABLE `t_barang` (
  `kode_barang` int(10) NOT NULL AUTO_INCREMENT,
  `nama_barang` varchar(20) NOT NULL,
  `kategori` int(10) NOT NULL,
  `harga_beli` int(10) NOT NULL,
  `harga_jual` int(10) NOT NULL,
  `biaya_simpan` int(10) NOT NULL,
  `biaya-pesan` int(10) NOT NULL,
  `stok` int(5) NOT NULL,
  PRIMARY KEY (`kode_barang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_barang
-- ----------------------------

-- ----------------------------
-- Table structure for t_barang_keluar
-- ----------------------------
DROP TABLE IF EXISTS `t_barang_keluar`;
CREATE TABLE `t_barang_keluar` (
  `tanggal` date NOT NULL,
  `kode_barang` int(10) NOT NULL AUTO_INCREMENT,
  `nama_barang` varchar(20) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `harga_jual_@` int(10) NOT NULL,
  `total_harga` int(10) NOT NULL,
  PRIMARY KEY (`kode_barang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_barang_keluar
-- ----------------------------

-- ----------------------------
-- Table structure for t_barang_masuk
-- ----------------------------
DROP TABLE IF EXISTS `t_barang_masuk`;
CREATE TABLE `t_barang_masuk` (
  `tanggal` date NOT NULL,
  `kode_barang` int(10) NOT NULL AUTO_INCREMENT,
  `nama_barang` varchar(20) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `unit` varchar(5) NOT NULL,
  `harga_@` int(10) NOT NULL,
  `sub_total` int(10) NOT NULL,
  `nama_supplier` varchar(10) NOT NULL,
  PRIMARY KEY (`kode_barang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_barang_masuk
-- ----------------------------

-- ----------------------------
-- Table structure for t_pegawai
-- ----------------------------
DROP TABLE IF EXISTS `t_pegawai`;
CREATE TABLE `t_pegawai` (
  `id_pegawai` int(10) NOT NULL AUTO_INCREMENT,
  `nama_pegawai` varchar(20) NOT NULL,
  `tempat_lahir_pegawai` varchar(20) NOT NULL,
  `tanggal_lahir_pegawai` date NOT NULL,
  `no_telp_pegawai` int(12) NOT NULL,
  `email_pegawai` varchar(20) NOT NULL,
  `alamat_pegawai` varchar(20) NOT NULL,
  `level` int(10) NOT NULL,
  PRIMARY KEY (`id_pegawai`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_pegawai
-- ----------------------------

-- ----------------------------
-- Table structure for t_pelanggan
-- ----------------------------
DROP TABLE IF EXISTS `t_pelanggan`;
CREATE TABLE `t_pelanggan` (
  `id_pelanggan` int(10) NOT NULL AUTO_INCREMENT,
  `nama_pelanggan` varchar(20) NOT NULL,
  `alamat` varchar(20) NOT NULL,
  `telpon` int(12) NOT NULL,
  `kota` varchar(15) NOT NULL,
  PRIMARY KEY (`id_pelanggan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_pelanggan
-- ----------------------------

-- ----------------------------
-- Table structure for t_supplier
-- ----------------------------
DROP TABLE IF EXISTS `t_supplier`;
CREATE TABLE `t_supplier` (
  `id_supplier` int(10) NOT NULL,
  `nama_supplier` varchar(15) NOT NULL,
  `alamat` varchar(20) NOT NULL,
  `telpon` int(12) NOT NULL,
  `kota` varchar(15) NOT NULL,
  PRIMARY KEY (`id_supplier`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_supplier
-- ----------------------------

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id_user` int(10) NOT NULL AUTO_INCREMENT,
  `nama` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` char(20) NOT NULL,
  `telpon` int(12) NOT NULL,
  `level` int(10) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_user
-- ----------------------------
