/*
Navicat MySQL Data Transfer

Source Server         : localhost_mysql
Source Server Version : 50616
Source Host           : 127.0.0.1:3306
Source Database       : db_skripsi_guntur

Target Server Type    : MYSQL
Target Server Version : 50616
File Encoding         : 65001

Date: 2017-07-28 20:07:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for guntur
-- ----------------------------
DROP TABLE IF EXISTS `guntur`;
CREATE TABLE `guntur` (
  `id_barang` varchar(10) NOT NULL,
  `nama_barang` varchar(30) NOT NULL,
  PRIMARY KEY (`id_barang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of guntur
-- ----------------------------

-- ----------------------------
-- Table structure for t_barang
-- ----------------------------
DROP TABLE IF EXISTS `t_barang`;
CREATE TABLE `t_barang` (
  `id_barang` varchar(10) NOT NULL,
  `nama_barang` varchar(30) NOT NULL,
  PRIMARY KEY (`id_barang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of t_barang
-- ----------------------------

-- ----------------------------
-- Table structure for t_coustumer
-- ----------------------------
DROP TABLE IF EXISTS `t_coustumer`;
CREATE TABLE `t_coustumer` (
  `id_coustumer` varchar(10) NOT NULL,
  `nama_coustumer` varchar(20) NOT NULL,
  `alamat_coustumer` varchar(30) NOT NULL,
  `telepon_coustumer` decimal(12,0) NOT NULL,
  `email_coustumer` varchar(30) NOT NULL,
  PRIMARY KEY (`id_coustumer`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_coustumer
-- ----------------------------

-- ----------------------------
-- Table structure for t_konsultasi
-- ----------------------------
DROP TABLE IF EXISTS `t_konsultasi`;
CREATE TABLE `t_konsultasi` (
  `id_konsultasi` varchar(10) NOT NULL,
  `tanggal_konsultasi` decimal(10,0) NOT NULL,
  `id_lokasi` varchar(20) NOT NULL,
  `id_pic` varchar(30) NOT NULL,
  PRIMARY KEY (`id_konsultasi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_konsultasi
-- ----------------------------

-- ----------------------------
-- Table structure for t_pegawai
-- ----------------------------
DROP TABLE IF EXISTS `t_pegawai`;
CREATE TABLE `t_pegawai` (
  `id_pegawai` varchar(10) NOT NULL,
  `nama_pegawai` varchar(30) NOT NULL,
  `jabatan_pegawai` varchar(15) NOT NULL,
  PRIMARY KEY (`id_pegawai`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_pegawai
-- ----------------------------

-- ----------------------------
-- Table structure for t_spk
-- ----------------------------
DROP TABLE IF EXISTS `t_spk`;
CREATE TABLE `t_spk` (
  `no_spk` varchar(15) NOT NULL,
  `nama_coust` varchar(30) NOT NULL,
  `tanggal_spk` date NOT NULL,
  `id_barang` varchar(7) NOT NULL,
  `nama_barang` varchar(20) NOT NULL,
  PRIMARY KEY (`no_spk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_spk
-- ----------------------------

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id_user` varchar(10) NOT NULL,
  `password_user` varchar(10) NOT NULL,
  `level_user` varchar(20) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_user
-- ----------------------------

-- ----------------------------
-- Table structure for t_warehouse
-- ----------------------------
DROP TABLE IF EXISTS `t_warehouse`;
CREATE TABLE `t_warehouse` (
  `id_warehouse` int(15) NOT NULL,
  `id_part` int(7) NOT NULL,
  `id_qty` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_warehouse`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_warehouse
-- ----------------------------
