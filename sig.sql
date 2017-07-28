/*
Navicat MySQL Data Transfer

Source Server         : localhost_mysql
Source Server Version : 50616
Source Host           : 127.0.0.1:3306
Source Database       : sig

Target Server Type    : MYSQL
Target Server Version : 50616
File Encoding         : 65001

Date: 2017-07-28 20:47:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for jasaweb
-- ----------------------------
DROP TABLE IF EXISTS `jasaweb`;
CREATE TABLE `jasaweb` (
  `id_perusahaan` int(8) NOT NULL AUTO_INCREMENT,
  `nama_perusahaan` varchar(255) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `website` varchar(255) NOT NULL,
  `no_hp` varchar(25) NOT NULL,
  `alamat` text NOT NULL,
  `kota` varchar(50) NOT NULL,
  `provinsi` varchar(50) NOT NULL,
  `latitude` varchar(50) NOT NULL,
  `longitude` varchar(50) NOT NULL,
  PRIMARY KEY (`id_perusahaan`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of jasaweb
-- ----------------------------
INSERT INTO `jasaweb` VALUES ('1', 'Jasa Pembuatan Website dan Adwords Surabaya Wolacom', 'Internet Marketing', 'wolacom.com', '0812-3555-7773', 'Tower B No 1132 Apartemen Puncak Permai Jalan Raya Darmo Permai 3 Sukomanunggal Surabaya Surabaya City East Java 60188', 'Surabaya', 'Jawa Timur', '-7.277882', '112.4114625');
INSERT INTO `jasaweb` VALUES ('2', 'Jasa Website Bojonegoro - Yusi Ads', 'Web Design', 'yusi.id.tc', '0838-1956-2984', 'Bojonegoro Sub-District Bojonegoro Regency East Java', 'Bojonegoro', 'Jawa Timur', '-7.360798', '111.7330538');
INSERT INTO `jasaweb` VALUES ('3', 'Jasa Pembuatan Website Situs Toko Online BikinDesainSitus', 'Web Development', 'bikindesainsitus.web.id', '0856-4839-0911', 'Lambang Kuning Kertosono Nganjuk Regency East Java 64315', 'Nganjuk', 'Jawa Timur', '-7.6508023', '112.0022188');
INSERT INTO `jasaweb` VALUES ('4', 'Rumahku', 'Web Dev', 'cahsawunggalih.web.id', '02938479724', 'Bintara', 'Bekasi', 'Jawa Barat', '-6.2386012', '106.9535806');
