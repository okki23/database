/*
Navicat MySQL Data Transfer

Source Server         : localhost_mysql
Source Server Version : 50616
Source Host           : 127.0.0.1:3306
Source Database       : db_ubk

Target Server Type    : MYSQL
Target Server Version : 50616
File Encoding         : 65001

Date: 2017-07-28 20:20:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for dosen
-- ----------------------------
DROP TABLE IF EXISTS `dosen`;
CREATE TABLE `dosen` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nama_dosen` varchar(250) DEFAULT NULL,
  `telp_dosen` varchar(250) DEFAULT NULL,
  `alamat_dosen` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of dosen
-- ----------------------------
INSERT INTO `dosen` VALUES ('1', 'Prof.Hamka', '923894234', 'Jl.Nangka');
INSERT INTO `dosen` VALUES ('2', 'Dr.Wahyu', '93324238', 'Jl.Buah Batu');
INSERT INTO `dosen` VALUES ('3', 'Prof.Habibie', '823742833', 'Jl.Tulip');
INSERT INTO `dosen` VALUES ('4', 'Dr.Hamid', '9234274823', 'Jl.Gurame');
INSERT INTO `dosen` VALUES ('5', 'Dr.Hamid', '837427342', 'Jl.Tawas');

-- ----------------------------
-- Table structure for mata_kuliah
-- ----------------------------
DROP TABLE IF EXISTS `mata_kuliah`;
CREATE TABLE `mata_kuliah` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nama_matkul` varchar(250) DEFAULT NULL,
  `jumlah_sks` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mata_kuliah
-- ----------------------------
INSERT INTO `mata_kuliah` VALUES ('1', 'Aljabar', '3');
INSERT INTO `mata_kuliah` VALUES ('2', 'Algoritma', '2');
INSERT INTO `mata_kuliah` VALUES ('3', 'Matematika Diskrit', '3');
INSERT INTO `mata_kuliah` VALUES ('4', 'KKP', '4');
INSERT INTO `mata_kuliah` VALUES ('5', 'Skripsi', '6');

-- ----------------------------
-- Table structure for mhs
-- ----------------------------
DROP TABLE IF EXISTS `mhs`;
CREATE TABLE `mhs` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) DEFAULT NULL,
  `semester` varchar(100) DEFAULT NULL,
  `alamat` text,
  `telepon` text,
  `foto` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mhs
-- ----------------------------
INSERT INTO `mhs` VALUES ('1', 'Okki', '4', 'Jl.Nangka', '0890326', 'me.jpg');
INSERT INTO `mhs` VALUES ('2', 'Slamet', '6', 'Jl.Jambu', '8234999', 'me.jpg');
INSERT INTO `mhs` VALUES ('3', 'Nanu', '8', 'Jl.Alpukat', '2342395', 'me.jpg');
INSERT INTO `mhs` VALUES ('4', 'Sanwani', '2', 'Jl.Seroja', '93472349', 'me.jpg');
INSERT INTO `mhs` VALUES ('5', 'Paijo', '4', 'Jl.Mahkota', '823849', 'me.jpg');

-- ----------------------------
-- Table structure for perkuliahan
-- ----------------------------
DROP TABLE IF EXISTS `perkuliahan`;
CREATE TABLE `perkuliahan` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_mhs` int(10) DEFAULT NULL,
  `id_dosen` int(10) DEFAULT NULL,
  `id_matkul` int(10) DEFAULT NULL,
  `tanggal_kuliah` text,
  `jam_kuliah` text,
  `ruangan_kuliah` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_mhs` (`id_mhs`),
  KEY `id_dosen` (`id_dosen`),
  KEY `id_matkul` (`id_matkul`),
  CONSTRAINT `perkuliahan_ibfk_1` FOREIGN KEY (`id_mhs`) REFERENCES `mhs` (`id`),
  CONSTRAINT `perkuliahan_ibfk_2` FOREIGN KEY (`id_dosen`) REFERENCES `dosen` (`id`),
  CONSTRAINT `perkuliahan_ibfk_3` FOREIGN KEY (`id_matkul`) REFERENCES `mata_kuliah` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of perkuliahan
-- ----------------------------
INSERT INTO `perkuliahan` VALUES ('1', '1', '1', '1', '2017-07-12', '20:00', 'A01');
INSERT INTO `perkuliahan` VALUES ('2', '1', '2', '3', '2017-07-12', '08:00', 'A01');
INSERT INTO `perkuliahan` VALUES ('3', '2', '2', '3', '2017-07-12', '08:00', 'A01');
INSERT INTO `perkuliahan` VALUES ('4', '3', '2', '3', '2017-07-12', '08:00', 'A01');
INSERT INTO `perkuliahan` VALUES ('5', '4', '2', '3', '2017-07-12', '08:00', 'A01');
INSERT INTO `perkuliahan` VALUES ('6', '5', '2', '3', '2017-07-12', '08:00', 'A01');
