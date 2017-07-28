/*
Navicat MySQL Data Transfer

Source Server         : localhost_mysql
Source Server Version : 50616
Source Host           : 127.0.0.1:3306
Source Database       : db_okki

Target Server Type    : MYSQL
Target Server Version : 50616
File Encoding         : 65001

Date: 2017-07-28 20:01:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for eimport
-- ----------------------------
DROP TABLE IF EXISTS `eimport`;
CREATE TABLE `eimport` (
  `idimport` int(2) NOT NULL DEFAULT '0',
  `nama` varchar(50) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `kontak` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`idimport`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of eimport
-- ----------------------------
