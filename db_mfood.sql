/*
Navicat MySQL Data Transfer

Source Server         : localhost_mysql
Source Server Version : 50616
Source Host           : 127.0.0.1:3306
Source Database       : db_mfood

Target Server Type    : MYSQL
Target Server Version : 50616
File Encoding         : 65001

Date: 2017-07-28 20:01:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tbl_detail
-- ----------------------------
DROP TABLE IF EXISTS `tbl_detail`;
CREATE TABLE `tbl_detail` (
  `detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `detail_menu_id` int(11) DEFAULT NULL,
  `detail_menu_nama` varchar(100) DEFAULT NULL,
  `detail_harjul` double DEFAULT NULL,
  `detail_porsi` int(11) DEFAULT NULL,
  `detail_subtotal` double DEFAULT NULL,
  `detail_inv_no` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`detail_id`),
  KEY `detail_inv_no` (`detail_inv_no`),
  KEY `detail_menu_id` (`detail_menu_id`),
  CONSTRAINT `tbl_detail_ibfk_1` FOREIGN KEY (`detail_inv_no`) REFERENCES `tbl_invoice` (`inv_no`) ON UPDATE CASCADE,
  CONSTRAINT `tbl_detail_ibfk_2` FOREIGN KEY (`detail_menu_id`) REFERENCES `tbl_menu` (`menu_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_detail
-- ----------------------------
INSERT INTO `tbl_detail` VALUES ('3', '5', 'Menu 4', '17000', '1', '17000', 'INV2112161');
INSERT INTO `tbl_detail` VALUES ('4', '3', 'Menu 2', '18000', '1', '18000', 'INV211216112162');
INSERT INTO `tbl_detail` VALUES ('5', '5', 'Menu 4', '17000', '1', '17000', 'INV211216112162');
INSERT INTO `tbl_detail` VALUES ('6', '6', 'Menu 5', '20000', '1', '20000', 'INV211216112163');
INSERT INTO `tbl_detail` VALUES ('7', '2', 'Menu 1', '18000', '1', '18000', 'INV211216112164');
INSERT INTO `tbl_detail` VALUES ('8', '2', 'Menu 1', '18000', '1', '18000', 'INV211216112165');
INSERT INTO `tbl_detail` VALUES ('9', '3', 'Menu 2', '18000', '1', '18000', 'INV211216112166');
INSERT INTO `tbl_detail` VALUES ('10', '5', 'Menu 4', '17000', '2', '34000', 'INV211216112167');
INSERT INTO `tbl_detail` VALUES ('11', '10', 'menu 9', '20000', '1', '20000', 'INV221216000001');
INSERT INTO `tbl_detail` VALUES ('12', '5', 'Menu 4', '17000', '1', '17000', 'INV231216000001');
INSERT INTO `tbl_detail` VALUES ('13', '4', 'Menu 3', '20000', '1', '20000', 'INV231216000002');
INSERT INTO `tbl_detail` VALUES ('14', '5', 'Menu 4', '17000', '1', '17000', 'INV251216000001');
INSERT INTO `tbl_detail` VALUES ('15', '5', 'Menu 4', '17000', '2', '34000', 'INV070517000001');
INSERT INTO `tbl_detail` VALUES ('16', '3', 'Menu 2', '18000', '1', '18000', 'INV070517000001');
INSERT INTO `tbl_detail` VALUES ('17', '2', 'Menu 1', '18000', '1', '18000', 'INV070517000002');
INSERT INTO `tbl_detail` VALUES ('18', '5', 'Menu 4', '17000', '1', '17000', 'INV070517000002');
INSERT INTO `tbl_detail` VALUES ('19', '5', 'Pizza', '17000', '2', '34000', 'INV280717000001');

-- ----------------------------
-- Table structure for tbl_galeri
-- ----------------------------
DROP TABLE IF EXISTS `tbl_galeri`;
CREATE TABLE `tbl_galeri` (
  `galeri_id` int(11) NOT NULL AUTO_INCREMENT,
  `galeri_judul` varchar(100) DEFAULT NULL,
  `galeri_deskripsi` varchar(200) DEFAULT NULL,
  `galeri_gambar` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`galeri_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_galeri
-- ----------------------------
INSERT INTO `tbl_galeri` VALUES ('1', 'Judul Gallery', 'Ini adalah deskrpsi Ini adalah deskrpsi Ini adalah deskrpsi Ini adalah deskrpsi Ini adalah deskrpsi Ini adalah deskrpsi Ini adalah deskrpsi Ini adalah deskrpsi.', 'file_1482157998.jpg');
INSERT INTO `tbl_galeri` VALUES ('2', 'Judul Gallery', 'Ini adalah deskrpsi Ini adalah deskrpsi Ini adalah deskrpsi Ini adalah deskrpsi Ini adalah deskrpsi Ini adalah deskrpsi Ini adalah deskrpsi Ini adalah deskrpsi.', 'file_1482158023.jpg');
INSERT INTO `tbl_galeri` VALUES ('3', 'Judul Gallery', 'Ini adalah deskrpsi Ini adalah deskrpsi Ini adalah deskrpsi Ini adalah deskrpsi Ini adalah deskrpsi Ini adalah deskrpsi Ini adalah deskrpsi Ini adalah deskrpsi.', 'file_1482158031.jpg');
INSERT INTO `tbl_galeri` VALUES ('4', 'Judul Gallery', 'Ini adalah deskrpsi Ini adalah deskrpsi Ini adalah deskrpsi Ini adalah deskrpsi Ini adalah deskrpsi Ini adalah deskrpsi Ini adalah deskrpsi Ini adalah deskrpsi.', 'file_1482158044.jpg');
INSERT INTO `tbl_galeri` VALUES ('5', 'Judul Gallery', 'Ini adalah deskrpsi Ini adalah deskrpsi Ini adalah deskrpsi Ini adalah deskrpsi Ini adalah deskrpsi Ini adalah deskrpsi Ini adalah deskrpsi Ini adalah deskrpsi.', 'file_1482158055.jpg');
INSERT INTO `tbl_galeri` VALUES ('6', 'Es Coklat Mint', 'Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi.', 'file_1494172386.jpg');

-- ----------------------------
-- Table structure for tbl_invoice
-- ----------------------------
DROP TABLE IF EXISTS `tbl_invoice`;
CREATE TABLE `tbl_invoice` (
  `inv_no` varchar(15) NOT NULL,
  `inv_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `inv_plg_id` int(11) DEFAULT NULL,
  `inv_plg_nama` varchar(80) DEFAULT NULL,
  `inv_status` varchar(40) DEFAULT NULL,
  `inv_total` double DEFAULT NULL,
  `inv_rek_id` varchar(10) DEFAULT NULL,
  `inv_rek_no` varchar(60) DEFAULT NULL,
  `inv_rek_bank` varchar(30) DEFAULT NULL,
  `inv_rek_nama` varchar(50) DEFAULT NULL,
  `inv_rek_cabang` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`inv_no`),
  KEY `inv_plg_id` (`inv_plg_id`),
  CONSTRAINT `tbl_invoice_ibfk_1` FOREIGN KEY (`inv_plg_id`) REFERENCES `tbl_pelanggan` (`plg_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_invoice
-- ----------------------------
INSERT INTO `tbl_invoice` VALUES ('INV070517000001', '2017-05-07 16:14:22', '1', 'M Fikri Setiadi', 'Transaksi Selesai', '52000', 'COD', null, null, null, null);
INSERT INTO `tbl_invoice` VALUES ('INV070517000002', '2017-05-07 16:16:25', '1', 'M Fikri Setiadi', 'Transaksi Selesai', '35000', '002', '548501007458536', 'BRI', 'M Fikri Setiadi', 'Padang');
INSERT INTO `tbl_invoice` VALUES ('INV2112160', '2016-11-21 08:59:10', '1', 'M Fikri Setiadi', 'Menunggu Konfirmasi', '17000', '003', null, 'Mandiri', null, null);
INSERT INTO `tbl_invoice` VALUES ('INV2112161', '2016-11-21 09:00:35', '1', 'M Fikri Setiadi', 'Menunggu Konfirmasi', '17000', '003', null, 'Mandiri', null, null);
INSERT INTO `tbl_invoice` VALUES ('INV211216112162', '2016-11-21 09:32:21', '1', 'M Fikri Setiadi', 'Menunggu Konfirmasi', '35000', 'COD', null, null, null, null);
INSERT INTO `tbl_invoice` VALUES ('INV211216112163', '2016-12-21 10:24:22', '1', 'M Fikri Setiadi', 'Konfirmasi Tidak Valid', '20000', '003', null, 'Mandiri', null, null);
INSERT INTO `tbl_invoice` VALUES ('INV211216112164', '2016-12-21 10:42:27', '1', 'M Fikri Setiadi', 'Menunggu Konfirmasi', '18000', '003', '', 'Mandiri', '', '');
INSERT INTO `tbl_invoice` VALUES ('INV211216112165', '2016-12-21 10:44:55', '1', 'M Fikri Setiadi', 'Dalam Pengiriman', '18000', '002', '1497385798375', 'BRI', 'M Fikri Setiadi', 'Padang');
INSERT INTO `tbl_invoice` VALUES ('INV211216112166', '2016-12-21 11:45:59', '1', 'M Fikri Setiadi', 'Menunggu Konfirmasi', '18000', 'COD', null, null, null, null);
INSERT INTO `tbl_invoice` VALUES ('INV211216112167', '2016-12-22 14:38:28', '1', 'M Fikri Setiadi', 'Menunggu Konfirmasi', '34000', '003', '1497385798375', 'Mandiri', 'M Fikri Setiadi', 'Padang');
INSERT INTO `tbl_invoice` VALUES ('INV221216000001', '2016-12-22 20:10:38', '10', 'dedi', 'Pembayaran Selesai', '20000', '002', '1497385798375', 'BCA', 'M Fikri Setiadi', 'Padang');
INSERT INTO `tbl_invoice` VALUES ('INV231216000001', '2016-12-23 12:22:50', '1', 'M Fikri Setiadi', 'Pembayaran Selesai', '17000', '002', '1497385798375', 'BCA', 'M Fikri Setiadi', 'Padang');
INSERT INTO `tbl_invoice` VALUES ('INV231216000002', '2016-12-23 12:23:27', '1', 'M Fikri Setiadi', 'Transaksi Selesai', '20000', 'COD', null, null, null, null);
INSERT INTO `tbl_invoice` VALUES ('INV251216000001', '2016-12-25 13:24:41', '10', 'dedi', 'Transaksi Selesai', '17000', 'COD', null, null, null, null);
INSERT INTO `tbl_invoice` VALUES ('INV280717000001', '2017-07-28 16:37:31', '25', 'Okki', 'Dalam Pembuatan', '34000', '001', '1497385798375', 'BCA', 'M Fikri Setiadi', 'Padang');

-- ----------------------------
-- Table structure for tbl_kategori
-- ----------------------------
DROP TABLE IF EXISTS `tbl_kategori`;
CREATE TABLE `tbl_kategori` (
  `kategori_id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori_nama` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`kategori_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_kategori
-- ----------------------------
INSERT INTO `tbl_kategori` VALUES ('1', 'Makanan');
INSERT INTO `tbl_kategori` VALUES ('2', 'Minuman');

-- ----------------------------
-- Table structure for tbl_konfirmasi
-- ----------------------------
DROP TABLE IF EXISTS `tbl_konfirmasi`;
CREATE TABLE `tbl_konfirmasi` (
  `konfirmasi_id` int(11) NOT NULL AUTO_INCREMENT,
  `konfirmasi_invoice` varchar(15) DEFAULT NULL,
  `konfirmasi_nama` varchar(60) DEFAULT NULL,
  `konfirmasi_bank` varchar(50) DEFAULT NULL,
  `konfirmasi_jumlah` double DEFAULT NULL,
  `konfirmasi_bukti` varchar(20) DEFAULT NULL,
  `konfirmasi_status` int(11) DEFAULT '0',
  `konfirmasi_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`konfirmasi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_konfirmasi
-- ----------------------------
INSERT INTO `tbl_konfirmasi` VALUES ('1', 'INV231216000001', 'M Fikri Setiadi', 'Bank BRI', '100000', 'file_1494171423.jpg', '1', '2017-05-07 22:37:03');

-- ----------------------------
-- Table structure for tbl_menu
-- ----------------------------
DROP TABLE IF EXISTS `tbl_menu`;
CREATE TABLE `tbl_menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_nama` varchar(100) DEFAULT NULL,
  `menu_deskripsi` varchar(200) DEFAULT NULL,
  `menu_harga_lama` double DEFAULT NULL,
  `menu_harga_baru` double DEFAULT NULL,
  `menu_likes` int(11) DEFAULT '0',
  `menu_kategori_id` int(11) DEFAULT NULL,
  `menu_kategori_nama` varchar(30) DEFAULT NULL,
  `menu_status` int(11) DEFAULT '1',
  `menu_gambar` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`menu_id`),
  KEY `menu_kategori_id` (`menu_kategori_id`),
  CONSTRAINT `tbl_menu_ibfk_1` FOREIGN KEY (`menu_kategori_id`) REFERENCES `tbl_kategori` (`kategori_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_menu
-- ----------------------------
INSERT INTO `tbl_menu` VALUES ('2', 'Menu 1', 'Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah ', '20000', '18000', '11', '1', 'Makanan', '1', 'file_1481423289.jpg');
INSERT INTO `tbl_menu` VALUES ('3', 'Sate Madura', 'Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah ', '20000', '18000', '3', '1', 'Makanan', '1', 'file_1481423323.jpg');
INSERT INTO `tbl_menu` VALUES ('4', 'Burger', 'Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah ', null, '20000', '0', '1', 'Makanan', '1', 'file_1481423391.jpg');
INSERT INTO `tbl_menu` VALUES ('5', 'Pizza', 'Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah ', '20000', '17000', '4', '1', 'Makanan', '1', 'file_1481423407.jpg');
INSERT INTO `tbl_menu` VALUES ('6', 'Menu 5', 'Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah ', null, '20000', '0', '1', 'Makanan', '1', 'file_1481423428.jpg');
INSERT INTO `tbl_menu` VALUES ('7', 'Menu 6', 'Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah ', null, '20000', '0', '1', 'Makanan', '1', 'file_1481505660.jpg');
INSERT INTO `tbl_menu` VALUES ('9', 'Manu 8', 'Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah ', null, '20000', '0', '1', 'Makanan', '1', 'file_1481505718.jpg');
INSERT INTO `tbl_menu` VALUES ('10', 'menu 9', 'Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah ', null, '20000', '1', '1', 'Makanan', '1', 'file_1481505737.jpg');
INSERT INTO `tbl_menu` VALUES ('11', 'Coklat Hangat', 'Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah ', null, '12000', '0', '2', 'Minuman', '1', 'file_1494160941.jpg');
INSERT INTO `tbl_menu` VALUES ('12', 'Es Coklat Mint', 'Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah ', '16000', '15000', '0', '2', 'Minuman', '1', 'file_1494160974.jpg');
INSERT INTO `tbl_menu` VALUES ('13', 'Ice Lemon', 'Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah ', null, '12000', '0', '2', 'Minuman', '1', 'file_1494161014.jpg');
INSERT INTO `tbl_menu` VALUES ('14', 'Es Semangka', 'Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah ', null, '12000', '0', '2', 'Minuman', '1', 'file_1494161073.jpg');
INSERT INTO `tbl_menu` VALUES ('15', 'Coca Cola Dingin', 'Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah ', null, '10000', '0', '2', 'Minuman', '1', 'file_1494161100.jpg');
INSERT INTO `tbl_menu` VALUES ('16', 'Kopi Latte', 'Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah ', null, '14000', '0', '2', 'Minuman', '1', 'file_1494161133.jpg');
INSERT INTO `tbl_menu` VALUES ('17', 'Kopi Latte Moca', 'Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah ', null, '15000', '0', '2', 'Minuman', '1', 'file_1494161156.jpg');
INSERT INTO `tbl_menu` VALUES ('18', 'Kwetiau', 'Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah ', null, '16000', '0', '1', 'Makanan', '1', 'file_1494161185.jpg');
INSERT INTO `tbl_menu` VALUES ('19', 'Rendang', 'Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah deskripsi Ini adalah ', null, '20000', '0', '1', 'Makanan', '1', 'file_1494161206.jpg');

-- ----------------------------
-- Table structure for tbl_pelanggan
-- ----------------------------
DROP TABLE IF EXISTS `tbl_pelanggan`;
CREATE TABLE `tbl_pelanggan` (
  `plg_id` int(11) NOT NULL AUTO_INCREMENT,
  `plg_nama` varchar(80) DEFAULT NULL,
  `plg_alamat` varchar(60) DEFAULT NULL,
  `plg_jenkel` varchar(2) DEFAULT NULL,
  `plg_notelp` varchar(30) DEFAULT NULL,
  `plg_email` varchar(40) DEFAULT NULL,
  `plg_facebook` varchar(30) DEFAULT NULL,
  `plg_instagram` varchar(30) DEFAULT NULL,
  `plg_line` varchar(30) DEFAULT NULL,
  `plg_whatapp` varchar(30) DEFAULT NULL,
  `plg_path` varchar(30) DEFAULT NULL,
  `plg_photo` varchar(20) DEFAULT NULL,
  `plg_register` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `plg_password` varchar(35) DEFAULT NULL,
  `plg_status` int(11) DEFAULT '0',
  PRIMARY KEY (`plg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_pelanggan
-- ----------------------------
INSERT INTO `tbl_pelanggan` VALUES ('1', 'M Fikri Setiadi', 'Padang', 'L', '081277159401', 'setiadi@mfikri.com', null, null, null, null, null, 'user_blank.png', '2016-10-01 10:39:00', 'e10adc3949ba59abbe56e057f20f883e', '0');
INSERT INTO `tbl_pelanggan` VALUES ('2', 'Daria Setvsova', 'Rusia', 'P', '081277159401', 'email@gmail.com', null, null, null, null, null, 'user_blank.png', '2016-10-01 10:39:14', 'e10adc3949ba59abbe56e057f20f883e', '0');
INSERT INTO `tbl_pelanggan` VALUES ('3', 'Valeria Dubravina', 'Rusia', 'P', '081277159401', 'email@gmail.com', null, null, null, null, null, 'user_blank.png', '2016-10-09 10:39:15', 'e10adc3949ba59abbe56e057f20f883e', '0');
INSERT INTO `tbl_pelanggan` VALUES ('4', 'Elanor Rigby', 'Rusia', 'P', '081277159401', 'email@gmail.com', null, null, null, null, null, 'user_blank.png', '2016-10-11 10:39:17', 'e10adc3949ba59abbe56e057f20f883e', '0');
INSERT INTO `tbl_pelanggan` VALUES ('5', 'Svetlana Sorokina', 'Rusia', 'P', '081277159401', 'email@gmail.com', null, null, null, null, null, 'user_blank.png', '2016-10-11 10:39:18', 'e10adc3949ba59abbe56e057f20f883e', '0');
INSERT INTO `tbl_pelanggan` VALUES ('6', 'Nika Jurov', 'Slovenia', 'P', '081277159401', 'email@gmail.com', null, null, null, null, null, 'user_blank.png', '2016-10-11 10:39:20', 'e10adc3949ba59abbe56e057f20f883e', '0');
INSERT INTO `tbl_pelanggan` VALUES ('7', 'Angle Gustov', 'Paland', 'P', '081277159401', 'email@gmail.com', null, null, null, null, null, 'user_blank.png', '2016-10-11 10:39:21', 'e10adc3949ba59abbe56e057f20f883e', '0');
INSERT INTO `tbl_pelanggan` VALUES ('8', 'Thomas Muller', 'Germany', 'L', '082169071552', 'email@gmail.com', null, null, null, null, null, 'user_blank.png', '2016-10-11 10:39:22', 'e10adc3949ba59abbe56e057f20f883e', '0');
INSERT INTO `tbl_pelanggan` VALUES ('9', 'Kevin De Bruyne', 'Belgia', 'L', '081277159401', 'email@gmail.com', null, null, null, null, null, 'user_blank.png', '2016-10-11 10:39:25', 'e10adc3949ba59abbe56e057f20f883e', '0');
INSERT INTO `tbl_pelanggan` VALUES ('10', 'dedi', 'Jl. Bunda VI ulak karang padang', 'L', '082169071552', 'hp3.andespen@gmail.com', 'D.irawan', 'D.irawan', 'D.irawan', 'D.irawan', 'D.irawan', 'file_1482412219.jpg', '2016-10-22 20:10:19', 'c02a1084e241dc98962150a81dfc0e0d', '1');
INSERT INTO `tbl_pelanggan` VALUES ('11', 'Jack Welch', 'USA', 'L', '082169071552', 'email@gmail.com', null, null, null, null, null, 'user_blank.png', '2016-10-23 12:58:00', 'e10adc3949ba59abbe56e057f20f883e', '0');
INSERT INTO `tbl_pelanggan` VALUES ('12', 'Jim Rohn', 'USA', 'L', '082169071552', 'email@gmail.com', null, null, null, null, null, 'user_blank.png', '2016-11-23 13:00:57', 'e10adc3949ba59abbe56e057f20f883e', '0');
INSERT INTO `tbl_pelanggan` VALUES ('13', 'Jhon Medina', 'USA', 'L', '082169071552', 'email@gmail.com', null, null, null, null, null, 'user_blank.png', '2016-11-23 13:00:58', 'e10adc3949ba59abbe56e057f20f883e', '0');
INSERT INTO `tbl_pelanggan` VALUES ('14', 'Iarmalenko', 'Swedia', 'L', '082169071552', 'email@gmail.com', null, null, null, null, null, 'user_blank.png', '2016-11-23 13:01:01', 'e10adc3949ba59abbe56e057f20f883e', '0');
INSERT INTO `tbl_pelanggan` VALUES ('15', 'Irma Cantika', 'Padang', 'P', '082169071552', 'email@gmail.com', null, null, null, null, null, 'user_blank.png', '2016-11-23 13:01:03', 'e10adc3949ba59abbe56e057f20f883e', '0');
INSERT INTO `tbl_pelanggan` VALUES ('16', 'Nadia Cantika', 'Padang', 'P', '082169071552', 'email@gmail.com', null, null, null, null, null, 'user_blank.png', '2016-11-23 13:04:12', 'e10adc3949ba59abbe56e057f20f883e', '0');
INSERT INTO `tbl_pelanggan` VALUES ('17', 'Suci Ningsih', 'Padang', 'P', '082169071552', 'email@gmail.com', null, null, null, null, null, 'user_blank.png', '2016-11-23 13:04:16', 'e10adc3949ba59abbe56e057f20f883e', '0');
INSERT INTO `tbl_pelanggan` VALUES ('18', 'Putri Lubis', 'Padang', 'P', '082169071552', 'email@gmail.com', null, null, null, null, null, 'user_blank.png', '2016-11-23 13:04:19', 'e10adc3949ba59abbe56e057f20f883e', '0');
INSERT INTO `tbl_pelanggan` VALUES ('19', 'Julian', 'Padang', 'L', '082169071552', 'email@gmail.com', null, null, null, null, null, 'user_blank.png', '2016-11-23 13:04:21', 'e10adc3949ba59abbe56e057f20f883e', '0');
INSERT INTO `tbl_pelanggan` VALUES ('20', 'Toni', 'Padang', 'L', '082169071552', 'email@gmail.com', null, null, null, null, null, 'user_blank.png', '2016-11-23 13:04:24', 'e10adc3949ba59abbe56e057f20f883e', '0');
INSERT INTO `tbl_pelanggan` VALUES ('21', 'Mega', 'Padang', 'P', '082169071552', 'email@gmail.com', null, null, null, null, null, 'user_blank.png', '2016-11-23 13:04:26', 'e10adc3949ba59abbe56e057f20f883e', '0');
INSERT INTO `tbl_pelanggan` VALUES ('22', 'Weny', 'Padang', 'P', '082169071552', 'email@gmail.com', null, null, null, null, null, 'user_blank.png', '2016-12-23 13:04:28', 'e10adc3949ba59abbe56e057f20f883e', '0');
INSERT INTO `tbl_pelanggan` VALUES ('23', 'Dhea', 'Padang', 'P', '082169071552', 'email@gmail.com', null, null, null, null, null, 'user_blank.png', '2016-12-23 13:04:31', 'e10adc3949ba59abbe56e057f20f883e', '0');
INSERT INTO `tbl_pelanggan` VALUES ('24', 'Santi', 'Padang', 'P', '082169071552', 'email@gmail.com', null, null, null, null, null, 'user_blank.png', '2016-12-23 13:04:33', 'e10adc3949ba59abbe56e057f20f883e', '0');
INSERT INTO `tbl_pelanggan` VALUES ('25', 'Okki', 'Jl.Bintara', 'L', '089610595064', 'okkisetyawan@gmail.com', '', '', '', '', '', 'file_1501234624.jpg', '2017-07-28 16:37:04', 'f91139105b327a1b621449fa2bfc383d', '0');

-- ----------------------------
-- Table structure for tbl_pengguna
-- ----------------------------
DROP TABLE IF EXISTS `tbl_pengguna`;
CREATE TABLE `tbl_pengguna` (
  `pengguna_id` int(11) NOT NULL AUTO_INCREMENT,
  `pengguna_nama` varchar(60) DEFAULT NULL,
  `pengguna_jenkel` varchar(2) DEFAULT NULL,
  `pengguna_username` varchar(30) DEFAULT NULL,
  `pengguna_password` varchar(35) DEFAULT NULL,
  `pengguna_email` varchar(50) DEFAULT NULL,
  `pengguna_nohp` varchar(30) DEFAULT NULL,
  `pengguna_status` int(2) DEFAULT '1',
  `pengguna_level` varchar(2) DEFAULT NULL,
  `pengguna_photo` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`pengguna_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_pengguna
-- ----------------------------
INSERT INTO `tbl_pengguna` VALUES ('2', 'M Fikri Setiadi', 'L', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'fikri@mahakaryapromosindo.co.id', '081277159401', '1', '1', 'file_1481349520.jpg');
INSERT INTO `tbl_pengguna` VALUES ('4', 'Lewandowski', 'L', 'lewi', '4df6440357caf5c160adf1c4fbf930c3', 'lewi09@gmail.com', '01834596956', '1', '1', 'file_1481372007.jpg');

-- ----------------------------
-- Table structure for tbl_rekening
-- ----------------------------
DROP TABLE IF EXISTS `tbl_rekening`;
CREATE TABLE `tbl_rekening` (
  `rek_id` varchar(10) NOT NULL,
  `rek_no` varchar(60) DEFAULT NULL,
  `rek_nama` varchar(50) DEFAULT NULL,
  `rek_bank` varchar(30) DEFAULT NULL,
  `rek_cabang` varchar(50) DEFAULT NULL,
  `rek_logo` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`rek_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_rekening
-- ----------------------------
INSERT INTO `tbl_rekening` VALUES ('001', '1497385798375', 'M Fikri Setiadi', 'BCA', 'Padang', 'file_1482154688.png');
INSERT INTO `tbl_rekening` VALUES ('002', '548501007458536', 'M Fikri Setiadi', 'BRI', 'Padang', 'file_1482156414.png');
INSERT INTO `tbl_rekening` VALUES ('003', '1497385798375', 'M Fikri Setiadi', 'Mandiri', 'Padang', 'file_1482154772.png');
INSERT INTO `tbl_rekening` VALUES ('004', '1497385798375', 'M Fikri Setiadi', 'Syariah Mandiri', 'Padang', 'file_1482154795.png');

-- ----------------------------
-- Table structure for tbl_status
-- ----------------------------
DROP TABLE IF EXISTS `tbl_status`;
CREATE TABLE `tbl_status` (
  `status_id` int(11) NOT NULL AUTO_INCREMENT,
  `status_nama` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_status
-- ----------------------------
INSERT INTO `tbl_status` VALUES ('1', 'Menunggu Konfirmasi');
INSERT INTO `tbl_status` VALUES ('2', 'Menunggu Pembayaran');
INSERT INTO `tbl_status` VALUES ('3', 'Pembayaran Selesai');
INSERT INTO `tbl_status` VALUES ('4', 'Dalam Pembuatan');
INSERT INTO `tbl_status` VALUES ('5', 'Dalam Pengemasan');
INSERT INTO `tbl_status` VALUES ('6', 'Dalam Pengiriman');
INSERT INTO `tbl_status` VALUES ('7', 'Transaksi Selesai');
