/*
Navicat MySQL Data Transfer

Source Server         : localhost_mysql
Source Server Version : 50616
Source Host           : 127.0.0.1:3306
Source Database       : db_tes_skrip

Target Server Type    : MYSQL
Target Server Version : 50616
File Encoding         : 65001

Date: 2017-07-28 20:17:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_uploadimage
-- ----------------------------
DROP TABLE IF EXISTS `tb_uploadimage`;
CREATE TABLE `tb_uploadimage` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `nm_gbr` varchar(35) DEFAULT NULL,
  `tipe_gbr` varchar(10) DEFAULT NULL,
  `ket_gbr` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_uploadimage
-- ----------------------------
INSERT INTO `tb_uploadimage` VALUES ('5', 'file_1429498974.jpg', 'image/jpeg', '');
INSERT INTO `tb_uploadimage` VALUES ('6', 'file_1429499001.jpg', 'image/jpeg', 'Bartender');
INSERT INTO `tb_uploadimage` VALUES ('7', 'file_1500371033.jpg', 'image/jpeg', 'evo viii');
