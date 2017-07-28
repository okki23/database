/*
Navicat MySQL Data Transfer

Source Server         : localhost_mysql
Source Server Version : 50616
Source Host           : 127.0.0.1:3306
Source Database       : dealer_db

Target Server Type    : MYSQL
Target Server Version : 50616
File Encoding         : 65001

Date: 2017-07-28 20:40:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `nama_lengkap` varchar(255) DEFAULT NULL,
  `password` varchar(1000) DEFAULT NULL,
  `no_telp` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `path_foto` varchar(255) DEFAULT NULL,
  `access_menu` text,
  `sys_create_user` int(11) DEFAULT NULL,
  `sys_update_user` int(11) DEFAULT NULL,
  `sys_delete_user` int(11) DEFAULT NULL,
  `sys_create_date` datetime NOT NULL,
  `sys_update_date` datetime NOT NULL,
  `sys_delete_date` datetime NOT NULL,
  `last_login` datetime NOT NULL,
  `status` enum('1','2') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('6', 'inoy@sportix.com', 'inoy', '+W5qtH+ky04DBb8q9zgYQ0Rz5000QTilD1PCG2DEJXFhh1X7oRfTt2QnQEpXgQShPuonoSJsI6pzYDmNRyxLHw==', '909090909', 'supri170845@gmail.com', 'assets/images/account/3e15e47695fe78a92a28313a79875c23.jpg', 'a:29:{i:0;a:3:{s:4:\"menu\";s:2:\"23\";s:4:\"slug\";s:14:\"master-jabatan\";s:5:\"child\";a:4:{s:3:\"add\";i:1;s:3:\"upd\";i:1;s:3:\"del\";i:1;s:3:\"prt\";i:1;}}i:1;a:3:{s:4:\"menu\";s:2:\"24\";s:4:\"slug\";s:15:\"master-karyawan\";s:5:\"child\";a:4:{s:3:\"add\";i:1;s:3:\"upd\";i:1;s:3:\"del\";i:1;s:3:\"prt\";i:1;}}i:2;a:3:{s:4:\"menu\";s:2:\"26\";s:4:\"slug\";s:15:\"master-customer\";s:5:\"child\";a:4:{s:3:\"add\";i:1;s:3:\"upd\";i:1;s:3:\"del\";i:1;s:3:\"prt\";i:1;}}i:3;a:3:{s:4:\"menu\";s:2:\"27\";s:4:\"slug\";s:12:\"master-motor\";s:5:\"child\";a:4:{s:3:\"add\";i:1;s:3:\"upd\";i:1;s:3:\"del\";i:1;s:3:\"prt\";i:1;}}i:4;a:3:{s:4:\"menu\";s:2:\"28\";s:4:\"slug\";s:16:\"master-aksesoris\";s:5:\"child\";a:4:{s:3:\"add\";i:1;s:3:\"upd\";i:1;s:3:\"del\";i:1;s:3:\"prt\";i:1;}}i:5;a:3:{s:4:\"menu\";s:2:\"29\";s:4:\"slug\";s:13:\"master-gudang\";s:5:\"child\";a:4:{s:3:\"add\";i:1;s:3:\"upd\";i:1;s:3:\"del\";i:1;s:3:\"prt\";i:1;}}i:6;a:3:{s:4:\"menu\";s:2:\"30\";s:4:\"slug\";s:14:\"master-leasing\";s:5:\"child\";a:4:{s:3:\"add\";i:1;s:3:\"upd\";i:1;s:3:\"del\";i:1;s:3:\"prt\";i:1;}}i:7;a:3:{s:4:\"menu\";s:2:\"37\";s:4:\"slug\";s:15:\"master-supplier\";s:5:\"child\";a:4:{s:3:\"add\";i:1;s:3:\"upd\";i:1;s:3:\"del\";i:1;s:3:\"prt\";i:1;}}i:8;a:3:{s:4:\"menu\";s:2:\"36\";s:4:\"slug\";s:15:\"user-management\";s:5:\"child\";a:4:{s:3:\"add\";i:1;s:3:\"upd\";i:1;s:3:\"del\";i:1;s:3:\"prt\";i:1;}}i:9;a:3:{s:4:\"menu\";s:2:\"32\";s:4:\"slug\";s:9:\"penjualan\";s:5:\"child\";a:4:{s:3:\"add\";i:1;s:3:\"upd\";i:1;s:3:\"del\";i:1;s:3:\"prt\";i:1;}}i:10;a:3:{s:4:\"menu\";s:2:\"38\";s:4:\"slug\";s:18:\"kwitansi-dp-tambah\";s:5:\"child\";a:4:{s:3:\"add\";i:1;s:3:\"upd\";i:1;s:3:\"del\";i:1;s:3:\"prt\";i:1;}}i:11;a:3:{s:4:\"menu\";s:2:\"39\";s:4:\"slug\";s:19:\"kwitansi-fee-tambah\";s:5:\"child\";a:4:{s:3:\"add\";i:1;s:3:\"upd\";i:1;s:3:\"del\";i:1;s:3:\"prt\";i:1;}}i:12;a:3:{s:4:\"menu\";s:2:\"40\";s:4:\"slug\";s:22:\"kwitansi-diskon-tambah\";s:5:\"child\";a:4:{s:3:\"add\";i:1;s:3:\"upd\";i:1;s:3:\"del\";i:1;s:3:\"prt\";i:1;}}i:13;a:3:{s:4:\"menu\";s:2:\"41\";s:4:\"slug\";s:3:\"pdi\";s:5:\"child\";a:4:{s:3:\"add\";i:1;s:3:\"upd\";i:1;s:3:\"del\";i:1;s:3:\"prt\";i:1;}}i:14;a:3:{s:4:\"menu\";s:2:\"42\";s:4:\"slug\";s:9:\"stnk-bpkb\";s:5:\"child\";a:4:{s:3:\"add\";i:1;s:3:\"upd\";i:1;s:3:\"del\";i:1;s:3:\"prt\";i:1;}}i:15;a:3:{s:4:\"menu\";s:2:\"43\";s:4:\"slug\";s:4:\"void\";s:5:\"child\";a:4:{s:3:\"add\";i:1;s:3:\"upd\";i:1;s:3:\"del\";i:1;s:3:\"prt\";i:1;}}i:16;a:3:{s:4:\"menu\";s:2:\"44\";s:4:\"slug\";s:11:\"surat-jalan\";s:5:\"child\";a:4:{s:3:\"add\";i:0;s:3:\"upd\";i:0;s:3:\"del\";i:0;s:3:\"prt\";i:0;}}i:17;a:3:{s:4:\"menu\";s:2:\"45\";s:4:\"slug\";s:5:\"stock\";s:5:\"child\";a:4:{s:3:\"add\";i:0;s:3:\"upd\";i:0;s:3:\"del\";i:0;s:3:\"prt\";i:0;}}i:18;a:3:{s:4:\"menu\";s:2:\"46\";s:4:\"slug\";s:23:\"import-penerimaan-motor\";s:5:\"child\";a:4:{s:3:\"add\";i:0;s:3:\"upd\";i:0;s:3:\"del\";i:0;s:3:\"prt\";i:0;}}i:19;a:3:{s:4:\"menu\";s:2:\"47\";s:4:\"slug\";s:26:\"input-penerimaan-aksesoris\";s:5:\"child\";a:4:{s:3:\"add\";i:0;s:3:\"upd\";i:0;s:3:\"del\";i:0;s:3:\"prt\";i:0;}}i:20;a:3:{s:4:\"menu\";s:2:\"48\";s:4:\"slug\";s:12:\"motor-keluar\";s:5:\"child\";a:4:{s:3:\"add\";i:0;s:3:\"upd\";i:0;s:3:\"del\";i:0;s:3:\"prt\";i:0;}}i:21;a:3:{s:4:\"menu\";s:2:\"50\";s:4:\"slug\";s:14:\"cetak-kwitansi\";s:5:\"child\";a:4:{s:3:\"add\";i:0;s:3:\"upd\";i:0;s:3:\"del\";i:0;s:3:\"prt\";i:0;}}i:22;a:3:{s:4:\"menu\";s:2:\"51\";s:4:\"slug\";s:13:\"rekap-tagihan\";s:5:\"child\";a:4:{s:3:\"add\";i:0;s:3:\"upd\";i:0;s:3:\"del\";i:0;s:3:\"prt\";i:0;}}i:23;a:3:{s:4:\"menu\";s:2:\"52\";s:4:\"slug\";s:16:\"surat-pernyataan\";s:5:\"child\";a:4:{s:3:\"add\";i:0;s:3:\"upd\";i:0;s:3:\"del\";i:0;s:3:\"prt\";i:0;}}i:24;a:3:{s:4:\"menu\";s:2:\"53\";s:4:\"slug\";s:17:\"pencairan-leasing\";s:5:\"child\";a:4:{s:3:\"add\";i:0;s:3:\"upd\";i:0;s:3:\"del\";i:0;s:3:\"prt\";i:0;}}i:25;a:3:{s:4:\"menu\";s:2:\"54\";s:4:\"slug\";s:17:\"laporan-penjualan\";s:5:\"child\";a:4:{s:3:\"add\";i:0;s:3:\"upd\";i:0;s:3:\"del\";i:0;s:3:\"prt\";i:0;}}i:26;a:3:{s:4:\"menu\";s:2:\"55\";s:4:\"slug\";s:13:\"laporan-saldo\";s:5:\"child\";a:4:{s:3:\"add\";i:0;s:3:\"upd\";i:0;s:3:\"del\";i:0;s:3:\"prt\";i:0;}}i:27;a:3:{s:4:\"menu\";s:2:\"56\";s:4:\"slug\";s:10:\"print-stok\";s:5:\"child\";a:4:{s:3:\"add\";i:0;s:3:\"upd\";i:0;s:3:\"del\";i:0;s:3:\"prt\";i:0;}}i:28;a:3:{s:4:\"menu\";s:2:\"57\";s:4:\"slug\";s:10:\"print-stnk\";s:5:\"child\";a:4:{s:3:\"add\";i:0;s:3:\"upd\";i:0;s:3:\"del\";i:0;s:3:\"prt\";i:0;}}}', null, '6', null, '0000-00-00 00:00:00', '2016-12-20 15:50:28', '0000-00-00 00:00:00', '2016-12-24 15:48:27', '1');
INSERT INTO `account` VALUES ('7', 'sapta@gmail.com', 'Sapta', 'GsMxDWTIw95OSkBGV7MjIrA4muCNpIzN9Mm74/Z92hYzlyKeoHtM3Z5u2bAi/UVKTplMlUztEy4wXAI2aHnOYw==', '879979797979', 'supri170845@gmail.com', '667fa1e720b199d98293f0eec4086ebe.jpg', 'a:10:{i:0;a:3:{s:4:\"menu\";s:2:\"23\";s:4:\"slug\";s:14:\"master-jabatan\";s:5:\"child\";a:4:{s:3:\"add\";i:0;s:3:\"upd\";i:0;s:3:\"del\";i:0;s:3:\"prt\";i:1;}}i:1;a:3:{s:4:\"menu\";s:2:\"24\";s:4:\"slug\";s:15:\"master-karyawan\";s:5:\"child\";a:4:{s:3:\"add\";i:0;s:3:\"upd\";i:0;s:3:\"del\";i:0;s:3:\"prt\";i:1;}}i:2;a:3:{s:4:\"menu\";s:2:\"26\";s:4:\"slug\";s:15:\"master-customer\";s:5:\"child\";a:4:{s:3:\"add\";i:1;s:3:\"upd\";i:1;s:3:\"del\";i:1;s:3:\"prt\";i:1;}}i:3;a:3:{s:4:\"menu\";s:2:\"27\";s:4:\"slug\";s:12:\"master-motor\";s:5:\"child\";a:4:{s:3:\"add\";i:1;s:3:\"upd\";i:1;s:3:\"del\";i:0;s:3:\"prt\";i:1;}}i:4;a:3:{s:4:\"menu\";s:2:\"28\";s:4:\"slug\";s:16:\"master-aksesoris\";s:5:\"child\";a:4:{s:3:\"add\";i:1;s:3:\"upd\";i:1;s:3:\"del\";i:1;s:3:\"prt\";i:1;}}i:5;a:3:{s:4:\"menu\";s:2:\"29\";s:4:\"slug\";s:13:\"master-gudang\";s:5:\"child\";a:4:{s:3:\"add\";i:1;s:3:\"upd\";i:1;s:3:\"del\";i:1;s:3:\"prt\";i:1;}}i:6;a:3:{s:4:\"menu\";s:2:\"30\";s:4:\"slug\";s:14:\"master-leasing\";s:5:\"child\";a:4:{s:3:\"add\";i:1;s:3:\"upd\";i:1;s:3:\"del\";i:1;s:3:\"prt\";i:1;}}i:7;a:3:{s:4:\"menu\";s:2:\"31\";s:4:\"slug\";s:15:\"master-supplier\";s:5:\"child\";a:4:{s:3:\"add\";i:1;s:3:\"upd\";i:1;s:3:\"del\";i:1;s:3:\"prt\";i:1;}}i:8;a:3:{s:4:\"menu\";s:2:\"32\";s:4:\"slug\";s:9:\"penjualan\";s:5:\"child\";a:4:{s:3:\"add\";i:0;s:3:\"upd\";i:0;s:3:\"del\";i:0;s:3:\"prt\";i:0;}}i:9;a:3:{s:4:\"menu\";s:2:\"33\";s:4:\"slug\";s:10:\"pembayaran\";s:5:\"child\";a:4:{s:3:\"add\";i:0;s:3:\"upd\";i:0;s:3:\"del\";i:0;s:3:\"prt\";i:0;}}}', null, '1', null, '0000-00-00 00:00:00', '2016-10-26 01:27:10', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');

-- ----------------------------
-- Table structure for detail_motor_keluar
-- ----------------------------
DROP TABLE IF EXISTS `detail_motor_keluar`;
CREATE TABLE `detail_motor_keluar` (
  `id_motor_keluar` int(11) NOT NULL AUTO_INCREMENT,
  `id_detail_motor_keluar` int(11) NOT NULL,
  `no_mesin` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_motor_keluar`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of detail_motor_keluar
-- ----------------------------
INSERT INTO `detail_motor_keluar` VALUES ('1', '1', 'MSN4576466');
INSERT INTO `detail_motor_keluar` VALUES ('3', '1', 'MSN4576464');

-- ----------------------------
-- Table structure for detail_motor_keluar_temp
-- ----------------------------
DROP TABLE IF EXISTS `detail_motor_keluar_temp`;
CREATE TABLE `detail_motor_keluar_temp` (
  `id_detail_motor_keluar` int(11) NOT NULL AUTO_INCREMENT,
  `no_mesin` varchar(50) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_detail_motor_keluar`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of detail_motor_keluar_temp
-- ----------------------------

-- ----------------------------
-- Table structure for global_data
-- ----------------------------
DROP TABLE IF EXISTS `global_data`;
CREATE TABLE `global_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_data` varchar(50) NOT NULL,
  `value` varchar(100) DEFAULT NULL,
  `global_data_status` enum('1','2','3') DEFAULT NULL COMMENT '1(Aktif), 2(In-Aktif), 3(Delete)',
  `sys_create_user` int(11) DEFAULT NULL,
  `sys_update_user` int(11) DEFAULT NULL,
  `sys_delete_user` int(11) DEFAULT NULL,
  `sys_create_date` datetime DEFAULT NULL,
  `sys_update_date` datetime DEFAULT NULL,
  `sys_delete_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of global_data
-- ----------------------------
INSERT INTO `global_data` VALUES ('1', 'aksesoris', 'aki', '1', null, null, null, null, null, null);
INSERT INTO `global_data` VALUES ('2', 'aksesoris', 'spion', '1', null, null, null, null, null, null);
INSERT INTO `global_data` VALUES ('3', 'aksesoris', 'helm', '1', null, null, null, null, null, null);
INSERT INTO `global_data` VALUES ('4', 'cpembelian', 'Cash', '1', null, null, null, null, null, null);
INSERT INTO `global_data` VALUES ('5', 'cpembelian', 'Kredit', '1', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for menus
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent` int(11) DEFAULT NULL,
  `module` varchar(100) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `icon` varchar(30) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `number` int(11) NOT NULL,
  `status` enum('1','2') DEFAULT '2',
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`) USING BTREE,
  CONSTRAINT `fkmenuparentid` FOREIGN KEY (`parent`) REFERENCES `menus` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menus
-- ----------------------------
INSERT INTO `menus` VALUES ('1', null, '-', 'Master', 'fa fa-home', 'javascript:void(0);', '1', '1');
INSERT INTO `menus` VALUES ('2', null, '-', 'Transaksi', 'fa fa-edit', 'javascript:void(0);', '2', '1');
INSERT INTO `menus` VALUES ('3', null, '-', 'Inventory', 'fa fa-tasks', 'javascript:void(0);', '3', '1');
INSERT INTO `menus` VALUES ('4', null, '-', 'Leasing', 'fa fa-users', 'javascript:void(0);', '4', '1');
INSERT INTO `menus` VALUES ('5', null, '-', 'Laporan', 'fa fa-envelope', 'javascript:void(0);', '5', '1');
INSERT INTO `menus` VALUES ('23', '1', 'md_jabatan', 'Master Jabatan', 'fa fa-circle', 'master-jabatan', '1', '1');
INSERT INTO `menus` VALUES ('24', '1', 'md_karyawan', 'Master Karyawan', 'fa fa-circle', 'master-karyawan', '2', '1');
INSERT INTO `menus` VALUES ('26', '1', 'md_customer', 'Master Customer', 'fa fa-circle', 'master-customer', '3', '1');
INSERT INTO `menus` VALUES ('27', '1', 'md_motor', 'Master Motor', 'fa fa-circle', 'master-motor', '4', '1');
INSERT INTO `menus` VALUES ('28', '1', 'md_aksesoris', 'Master Aksesoris', 'fa fa-circle', 'master-aksesoris', '5', '1');
INSERT INTO `menus` VALUES ('29', '1', 'md_gudang', 'Master Gudang', 'fa fa-circle', 'master-gudang', '6', '1');
INSERT INTO `menus` VALUES ('30', '1', 'md_leasing', 'Master Leasing', 'fa fa-circle', 'master-leasing', '7', '1');
INSERT INTO `menus` VALUES ('32', '2', 'penjualan', 'Penjualan', 'fa fa-circle', 'penjualan', '0', '1');
INSERT INTO `menus` VALUES ('33', '2', 'pembayaran', 'Pembayaran', 'fa fa-circle', 'pembayaran', '3', '1');
INSERT INTO `menus` VALUES ('34', '3', 'retur_motor', 'Retur Motor', 'fa fa-circle', 'return-motor', '1', '1');
INSERT INTO `menus` VALUES ('35', '3', 'pdi', 'PDI', 'fa fa-circle', 'pdi', '3', '1');
INSERT INTO `menus` VALUES ('36', '1', 'account', 'Users Management', 'fa fa-circle', 'user-management', '9', '1');
INSERT INTO `menus` VALUES ('37', '1', 'md_supplier', 'Master Supplier', 'fa fa-circle', 'master-supplier', '8', '1');
INSERT INTO `menus` VALUES ('38', '2', 'kwitansi', 'Kwitansi DP', 'fa fa-circle', 'kwitansi-dp-tambah', '1', '1');
INSERT INTO `menus` VALUES ('39', '2', 'kwitansi', 'Kwitansi Fee', 'fa fa-circle', 'kwitansi-fee-tambah', '2', '1');
INSERT INTO `menus` VALUES ('40', '2', 'kwitansi', 'Kwitansi Diskon', 'fa fa-circle', 'kwitansi-diskon-tambah', '3', '1');
INSERT INTO `menus` VALUES ('41', '2', 'kwitansi', 'PDI', 'fa fa-circle', 'pdi', '4', '1');
INSERT INTO `menus` VALUES ('42', '2', 'kwitansi', 'STNK & BPKB', 'fa fa-circle', 'stnk-bpkb', '5', '1');
INSERT INTO `menus` VALUES ('43', '2', 'kwitansi', 'Void', 'fa fa-circle', 'void', '6', '1');
INSERT INTO `menus` VALUES ('44', '2', 'kwitansi', 'Surat Jalan', 'fa fa-circle', 'surat-jalan', '7', '1');
INSERT INTO `menus` VALUES ('45', '3', 'stok', 'Stok', 'fa fa-circle', 'stock', '1', '1');
INSERT INTO `menus` VALUES ('46', '3', 'motor_terima', 'Penerimaan Motor', 'fa fa-circle', 'import-penerimaan-motor', '2', '1');
INSERT INTO `menus` VALUES ('47', '3', 'input_penerimaan', 'Penerimaan Aksesoris', 'fa fa-circle', 'input-penerimaan-aksesoris', '3', '1');
INSERT INTO `menus` VALUES ('48', '3', 'motor_keluar', 'Mutasi Motor', 'fa fa-circle', 'motor-keluar', '4', '1');
INSERT INTO `menus` VALUES ('49', '3', 'barang_masuk', 'Motor Masuk', 'fa fa-circle', 'motor-masuk', '5', '1');
INSERT INTO `menus` VALUES ('50', '4', 'cetak_kwitansi', 'Cetak Kwitansi', 'fa fa-circle', 'cetak-kwitansi', '1', '1');
INSERT INTO `menus` VALUES ('51', '4', 'rekap_tagihan', 'Rekap Tagihan', 'fa fa-circle', 'rekap-tagihan', '2', '1');
INSERT INTO `menus` VALUES ('52', '4', 'surat_pernyataan', 'Surat Pernyataan', 'fa fa-circle', 'surat-pernyataan', '3', '1');
INSERT INTO `menus` VALUES ('53', '4', 'pencairan_leasing', 'Pencairan Leasing', 'fa fa-circle', 'pencairan-leasing', '4', '1');
INSERT INTO `menus` VALUES ('54', '5', 'laporan', 'Penjualan', 'fa fa-circle', 'laporan-penjualan', '1', '1');
INSERT INTO `menus` VALUES ('55', '5', 'laporan', 'Saldo', 'fa fa-circle', 'laporan-saldo', '2', '1');
INSERT INTO `menus` VALUES ('56', '5', 'laporan', 'Print Stok', 'fa fa-circle', 'print-stok', '3', '1');
INSERT INTO `menus` VALUES ('57', '5', 'laporan', 'STNK & BPKB', 'fa fa-circle', 'print-stnk', '4', '1');

-- ----------------------------
-- Table structure for motor_keluar
-- ----------------------------
DROP TABLE IF EXISTS `motor_keluar`;
CREATE TABLE `motor_keluar` (
  `id_motor_keluar` int(11) NOT NULL AUTO_INCREMENT,
  `kode_motor_keluar` varchar(30) DEFAULT NULL,
  `id_gudang_in` int(11) DEFAULT NULL,
  `id_gudang_out` int(11) DEFAULT NULL,
  `tgl_motor_keluar` date DEFAULT NULL,
  `kode_po_motor_keluar` varchar(20) DEFAULT NULL,
  `kode_do_motor_keluar` varchar(20) DEFAULT NULL,
  `pic_motor_keluar` varchar(30) DEFAULT NULL,
  `keterangan_motor_keluar` text,
  `status_motor_keluar` enum('1','2','3') DEFAULT '1',
  `sys_create_user` int(11) DEFAULT NULL,
  `sys_update_user` int(11) DEFAULT NULL,
  `sys_delete_user` int(11) DEFAULT NULL,
  `sys_create_date` datetime DEFAULT NULL,
  `sys_update_date` datetime DEFAULT NULL,
  `sys_delete_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id_motor_keluar`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of motor_keluar
-- ----------------------------
INSERT INTO `motor_keluar` VALUES ('1', 'MKA-SJL/BK/2016/00001', '1', '2', '2016-11-30', '8768686xx', '989776564xx', 'inoyx', 'xxx', '1', '6', '6', null, '2016-11-28 22:26:59', '2016-11-28 23:26:07', null);

-- ----------------------------
-- Table structure for m_aksesoris
-- ----------------------------
DROP TABLE IF EXISTS `m_aksesoris`;
CREATE TABLE `m_aksesoris` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kd_aksesoris` varchar(20) NOT NULL,
  `aksesoris` varchar(35) NOT NULL,
  `kategori` int(11) NOT NULL,
  `url_foto` text NOT NULL,
  `m_status` enum('1','2','3') NOT NULL DEFAULT '1',
  `sys_create_user` int(11) DEFAULT NULL,
  `sys_update_user` int(11) DEFAULT NULL,
  `sys_delete_user` int(11) DEFAULT NULL,
  `sys_create_date` datetime DEFAULT NULL,
  `sys_update_date` datetime DEFAULT NULL,
  `sys_delete_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_aksesoris
-- ----------------------------
INSERT INTO `m_aksesoris` VALUES ('1', 'AKS-20161029-0001', 'Aki GS Batere 220 V', '2', 'assets/images/aksesoris/65291c319eeaf8cc3164c0746af0ab80.png', '1', '6', '6', '6', '2016-10-29 11:57:08', '2016-10-29 12:32:04', '2016-10-29 12:23:08');
INSERT INTO `m_aksesoris` VALUES ('2', 'AKS-20161029-0002', 'Aki GS Batere 230 V', '2', 'assets/images/aksesoris/3f457ace3b1860ad92a2c9a53a7b0693.png', '1', '6', null, null, '2016-10-29 14:21:11', null, null);

-- ----------------------------
-- Table structure for m_biro_jasa
-- ----------------------------
DROP TABLE IF EXISTS `m_biro_jasa`;
CREATE TABLE `m_biro_jasa` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) DEFAULT NULL,
  `alamat` text,
  `telp` text,
  `email` varchar(100) DEFAULT NULL,
  `keterangan` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_biro_jasa
-- ----------------------------
INSERT INTO `m_biro_jasa` VALUES ('1', 'PT.BIRO SATU', 'bekasi', '076578', 'biro1@mail.com', 'oke');
INSERT INTO `m_biro_jasa` VALUES ('2', 'PT.BIRO DUA', 'bekasi barat', '9786', 'biro2@mail.com', 'oke');

-- ----------------------------
-- Table structure for m_customer
-- ----------------------------
DROP TABLE IF EXISTS `m_customer`;
CREATE TABLE `m_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_ktp` varchar(30) DEFAULT NULL,
  `nama_customer` varchar(100) DEFAULT NULL,
  `tempat_lahir_customer` varchar(50) DEFAULT NULL,
  `tanggal_lahir_customer` date DEFAULT NULL,
  `kelamin_customer` enum('P','W') DEFAULT NULL,
  `alamat_customer` text,
  `telepon_customer` varchar(20) DEFAULT NULL,
  `handphone_customer` varchar(20) DEFAULT NULL,
  `m_status` enum('1','2','3') DEFAULT NULL,
  `sys_create_user` int(11) DEFAULT NULL,
  `sys_update_user` int(11) DEFAULT NULL,
  `sys_delete_user` int(11) DEFAULT NULL,
  `sys_create_date` datetime DEFAULT NULL,
  `sys_update_date` datetime DEFAULT NULL,
  `sys_delete_date` datetime DEFAULT NULL,
  `rt` varchar(10) DEFAULT NULL,
  `rw` varchar(10) DEFAULT NULL,
  `wilayah` varchar(75) DEFAULT NULL,
  `kelurahan` varchar(100) DEFAULT NULL,
  `kecamatan` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_customer
-- ----------------------------
INSERT INTO `m_customer` VALUES ('1', '0909090909', 'Isyana', 'jakarta', '2016-10-22', 'W', 'jl. jagakarsa jakarta selatan', '0211234567', '087776666777', '1', null, '6', '6', null, '2016-10-29 15:03:31', '2016-10-29 15:03:49', null, null, 'jaktim', null, null);
INSERT INTO `m_customer` VALUES ('2', '1234', 'Jarot', 'Surabaya', '2016-11-15', 'P', 'Jl. Damai', '021-31212121', '0897121212112', '1', '6', null, null, '2016-11-16 04:58:18', null, null, '09', '09', 'jaktim', 'Ponorogo', 'Sumpasem');
INSERT INTO `m_customer` VALUES ('3', '6723573294', 'Okki Setyawan', 'Jakarta', '1993-10-01', 'P', 'Bintara', '9.787.898', '989890', '1', '6', '6', null, '2016-12-06 14:44:07', '2016-12-06 17:40:47', null, '2', '1', 'jaktim', 'Bintara', 'Bekasi Barat');
INSERT INTO `m_customer` VALUES ('4', '6723573294', 'Okki Setyawan', 'Jakarta', '1993-10-01', 'P', 'Bintara', '9.787.898``', '989890', '1', '6', null, null, '2016-12-10 14:56:40', null, null, '2', '1', 'jaktim', 'Bintara', 'Bekasi Barat');
INSERT INTO `m_customer` VALUES ('5', '0909090909', 'Isyana', 'jakarta', '2016-10-22', 'W', 'jl. jagakarsa jakarta selatan', '0211234567', '087776666777', '1', '6', null, null, '2016-12-15 20:56:49', null, null, '09', '09', 'jaktim', 'Jagakarsa', 'Jagakarsa');
INSERT INTO `m_customer` VALUES ('6', '6723573294', 'Okki Setyawan', 'Jakarta', '1993-10-01', 'P', 'Bintara', '9.787.898', '989890', '1', '6', null, null, '2016-12-16 09:40:02', null, null, '2', '1', 'jaktim', 'Bintara', 'Bekasi Barat');
INSERT INTO `m_customer` VALUES ('7', '3171032402860014', 'Fredy Halim', 'Pontianak', '1987-02-25', 'P', 'GAding nias', '02129574206', '081808881898', '1', '6', null, null, '2016-12-20 15:54:14', null, null, '01', '01', 'Jakarta Utara', 'Pegangsaan Dua', 'Kelapa Gading');
INSERT INTO `m_customer` VALUES ('8', '', '', '', '0000-00-00', '', '', '', '', '1', '6', null, null, '2016-12-21 21:49:13', null, null, '', '', '', '', '');

-- ----------------------------
-- Table structure for m_gudang
-- ----------------------------
DROP TABLE IF EXISTS `m_gudang`;
CREATE TABLE `m_gudang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kd_gudang` varchar(10) NOT NULL,
  `gudang` varchar(100) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `telepon` varchar(20) DEFAULT NULL,
  `pic` varchar(100) DEFAULT NULL,
  `status_gudang` enum('1','2','3') DEFAULT NULL COMMENT '1(Aktif), 2(In-Aktif), 3(Delete)',
  `sys_create_user` int(11) DEFAULT NULL,
  `sys_update_user` int(11) DEFAULT NULL,
  `sys_delete_user` int(11) DEFAULT NULL,
  `sys_create_date` datetime DEFAULT NULL,
  `sys_update_date` datetime DEFAULT NULL,
  `sys_delete_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`kd_gudang`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_gudang
-- ----------------------------
INSERT INTO `m_gudang` VALUES ('1', 'WRH-0001', 'Gudang Dealer', 'JL BEKASI TIMUR RAYA NO.158 JAKTIM', '0218517620', 'Inoy Yth', '1', '1', '6', null, '2016-10-11 22:22:48', '2016-12-20 14:29:10', null);
INSERT INTO `m_gudang` VALUES ('2', 'WRH-0002', 'Gudang MK', 'JL MUARA KARANG', '021888998933', 'tukul', '1', '1', '6', '1', '2016-10-11 22:29:52', '2016-12-20 14:29:35', '2016-10-11 22:31:54');

-- ----------------------------
-- Table structure for m_jabatan
-- ----------------------------
DROP TABLE IF EXISTS `m_jabatan`;
CREATE TABLE `m_jabatan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jabatan` varchar(200) DEFAULT NULL,
  `keterangan` text,
  `status_jabatan` enum('1','2','3') DEFAULT '1' COMMENT '1(Aktif), 2(In-Aktif), 3(Delete)',
  `sys_create_user` int(11) DEFAULT NULL,
  `sys_update_user` int(11) DEFAULT NULL,
  `sys_delete_user` int(11) DEFAULT NULL,
  `sys_create_date` datetime DEFAULT NULL,
  `sys_update_date` datetime DEFAULT NULL,
  `sys_delete_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_jabatan
-- ----------------------------
INSERT INTO `m_jabatan` VALUES ('4', 'Super Adminstrator', 'Super Admin', '1', null, '1', '1', null, '2016-10-09 08:36:05', '2016-10-24 11:55:27');
INSERT INTO `m_jabatan` VALUES ('6', 'Administrator', 'admin biasa', '1', null, '1', '1', null, '2016-10-09 08:31:53', '2016-10-24 11:37:48');
INSERT INTO `m_jabatan` VALUES ('7', 'Sales Marketing', 'Sales Marketing yang bertugas datang ke leasing', '1', '1', '1', '1', '2016-10-09 03:16:19', '2016-10-09 08:31:22', '2016-10-24 11:36:10');

-- ----------------------------
-- Table structure for m_karyawan
-- ----------------------------
DROP TABLE IF EXISTS `m_karyawan`;
CREATE TABLE `m_karyawan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kd_karyawan` varchar(10) NOT NULL,
  `karyawan` varchar(75) DEFAULT NULL,
  `kd_jabatan_karyawan` varchar(10) DEFAULT NULL COMMENT 'kd_jabatan_karyawan didapat dari table m_jabatan',
  `tgl_masuk` date DEFAULT NULL,
  `tgl_keluar` date DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `status_karyawan` enum('1','2','3') DEFAULT NULL COMMENT '1(Aktif), 2(In-Aktif), 3(Delete)',
  `sys_create_user` int(11) DEFAULT NULL,
  `sys_update_user` int(11) DEFAULT NULL,
  `sys_delete_user` int(11) DEFAULT NULL,
  `sys_create_date` datetime DEFAULT NULL,
  `sys_update_date` datetime DEFAULT NULL,
  `sys_delete_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`kd_karyawan`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_karyawan
-- ----------------------------
INSERT INTO `m_karyawan` VALUES ('1', 'EMP-0001', 'Inoy', '4', '2016-10-10', '2017-12-13', 'assets/images/karyawan/56a1db0151a39a719963cfa193d9b448.jpg', '1', null, '6', '1', null, '2016-10-28 23:35:27', '2016-10-11 08:01:28');
INSERT INTO `m_karyawan` VALUES ('2', 'EMP-0002', 'Karyawan 1', '4', '2016-10-11', '2016-11-03', 'assets/images/karyawan/4a7930fd0cfce40ee43741b4d0c0321f.jpg', '1', '1', '6', null, '2016-10-11 07:54:05', '2016-10-28 23:35:43', null);
INSERT INTO `m_karyawan` VALUES ('7', 'EMP-0003', 'coba', '7', '2016-10-06', '2016-10-07', 'assets/images/karyawan/assets/images/karyawan/user_icon.png', '2', '6', '6', null, '2016-10-28 23:29:39', '2016-10-29 14:17:08', null);
INSERT INTO `m_karyawan` VALUES ('8', 'EMP-0008', 'coba', '4', '2016-10-28', '2017-09-19', 'assets/images/karyawan/user_icon.png', '1', '6', '6', null, '2016-10-28 23:36:07', '2016-10-28 23:36:16', null);

-- ----------------------------
-- Table structure for m_leasing
-- ----------------------------
DROP TABLE IF EXISTS `m_leasing`;
CREATE TABLE `m_leasing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kd_leasing` varchar(10) NOT NULL,
  `leasing` varchar(100) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `telepon` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `pic` int(11) NOT NULL COMMENT 'PIC mengambil dari m_karyawan',
  `hp` varchar(20) DEFAULT NULL,
  `kalimat_kw_1` text,
  `kalimat_kw_2` text,
  `status_leasing` enum('1','2','3') DEFAULT NULL COMMENT '1(Aktif), 2(In-Aktif), 3(Delete)',
  `sys_create_user` int(11) DEFAULT NULL,
  `sys_update_user` int(11) DEFAULT NULL,
  `sys_delete_user` int(11) DEFAULT NULL,
  `sys_create_date` datetime DEFAULT NULL,
  `sys_update_date` datetime DEFAULT NULL,
  `sys_delete_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`kd_leasing`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_leasing
-- ----------------------------
INSERT INTO `m_leasing` VALUES ('1', 'WO', 'WOW FINANCE', 'JL. Jagakarasa No.56 Jakarta Selatan', '021888998933', 'womfinance@gmail.com', '1', '087880008008', 'Kalimat KW 1', 'Kalimat KW 2', '1', '1', '1', null, '2016-10-12 07:08:43', '2016-10-26 02:04:00', null);
INSERT INTO `m_leasing` VALUES ('2', 'WOM', 'fsfd', 'dfsdf', '4333333333', 'supri170845@rocketmail.com', '1', '34343434909090', 'kdsdf', 'kjsldkf', '1', '1', null, null, '2016-10-26 02:00:28', null, null);

-- ----------------------------
-- Table structure for m_motor
-- ----------------------------
DROP TABLE IF EXISTS `m_motor`;
CREATE TABLE `m_motor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomsn` varchar(50) DEFAULT NULL,
  `norangka` varchar(50) DEFAULT NULL,
  `tipe_motor` varchar(15) DEFAULT NULL,
  `nama_motor` varchar(50) DEFAULT NULL,
  `varian` varchar(50) DEFAULT NULL,
  `warna` varchar(30) DEFAULT NULL,
  `tahun` char(4) DEFAULT NULL,
  `merk` varchar(50) DEFAULT NULL,
  `harga_otr` float DEFAULT NULL,
  `nama_foto` text,
  `url_foto` text,
  `m_status` enum('1','2','3') DEFAULT NULL,
  `sys_create_user` int(11) DEFAULT NULL,
  `sys_update_user` int(11) DEFAULT NULL,
  `sys_delete_user` int(11) DEFAULT NULL,
  `sys_create_date` datetime DEFAULT NULL,
  `sys_update_date` datetime DEFAULT NULL,
  `sys_delete_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_motor
-- ----------------------------
INSERT INTO `m_motor` VALUES ('1', 'MSN0101010', 'RGK9009090', 'NC11D1D', 'Honda Spacy Helm-in Karburator', 'Matic', 'WH', '2016', 'Honda', '17500000', 'assets/images/motor/icon.png', '/assets/images//assets/images/motor/icon.png', '1', '1', '6', null, '2016-10-28 00:36:07', '2016-11-16 02:49:28', null);
INSERT INTO `m_motor` VALUES ('2', 'MSN0909090', 'RGK0989797', 'NC10D1D', 'Supra X 125', 'Manual Transmission', 'BLC', '2016', 'Honda', '16000000', 'assets/images/motor/icon.png', '/assets/images//assets/images/motor/icon.png', '1', '1', '6', '1', '2016-10-28 00:56:14', '2016-11-16 02:49:41', '2016-10-28 01:01:46');
INSERT INTO `m_motor` VALUES ('3', 'MSN7767686', 'RGK7676851', 'NC12D1D', 'jhjh', 'xx', null, null, 'Honda', '90000000', '', '/assets/images//assets/images/motor/motor_icon.png', '3', '6', '6', '6', '2016-10-28 23:45:50', '2016-10-28 23:48:44', '2016-10-28 23:48:49');
INSERT INTO `m_motor` VALUES ('4', 'RGK909090', 'MSN989898', 'NC13D1D', 'Karisma', 'Manual', 'RD', '2016', 'Honda', '20000000', 'assets/images/motor/131c97dd4d5f1a6cf6a6271cdb67bbe4.jpg', '/assets/images//assets/images/motor/131c97dd4d5f1a6cf6a6271cdb67bbe4.jpg', '1', '6', '6', null, '2016-11-01 13:11:36', '2016-11-16 02:49:57', null);

-- ----------------------------
-- Table structure for m_supplier
-- ----------------------------
DROP TABLE IF EXISTS `m_supplier`;
CREATE TABLE `m_supplier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kdsupplier` varchar(15) NOT NULL,
  `supplier` varchar(100) NOT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  `telp` varchar(15) DEFAULT NULL,
  `pic` varchar(75) DEFAULT NULL,
  `hp` varchar(25) DEFAULT NULL,
  `m_status` int(2) DEFAULT NULL,
  `sys_create_date` datetime DEFAULT NULL,
  `sys_update_date` datetime DEFAULT NULL,
  `sys_delete_date` datetime DEFAULT NULL,
  `sys_create_user` int(11) DEFAULT NULL,
  `sys_update_user` int(11) DEFAULT NULL,
  `sys_delete_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_supplier
-- ----------------------------
INSERT INTO `m_supplier` VALUES ('1', 'spl001', 'Honda Sunter', 'Jl. Sunter Raya', '021-2134112', 'Sapta', '082123313010', '1', '2016-11-15 05:08:30', '2016-11-15 05:18:06', null, '6', '6', null);
INSERT INTO `m_supplier` VALUES ('2', 'spl002', 'Yamaha Kalibata', 'Jl. Kalibata Raya', '021-33167872', 'Supriyadi', '08312123122', '3', '2016-11-15 05:19:32', null, '2016-11-15 05:20:00', '6', null, '6');

-- ----------------------------
-- Table structure for m_supplier_old
-- ----------------------------
DROP TABLE IF EXISTS `m_supplier_old`;
CREATE TABLE `m_supplier_old` (
  `kd_supplier` varchar(10) NOT NULL,
  `supplier` varchar(75) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `telpon` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `status_supplier` enum('1','2','3') DEFAULT NULL COMMENT '1(Aktif), 2(In-Aktif), 3(Delete)',
  `sys_create_user` int(11) DEFAULT NULL,
  `sys_update_user` int(11) DEFAULT NULL,
  `sys_delete_user` int(11) DEFAULT NULL,
  `sys_create_date` datetime DEFAULT NULL,
  `sys_update_date` datetime DEFAULT NULL,
  `sys_delete_date` datetime DEFAULT NULL,
  PRIMARY KEY (`kd_supplier`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_supplier_old
-- ----------------------------

-- ----------------------------
-- Table structure for penerimaan_aksesoris
-- ----------------------------
DROP TABLE IF EXISTS `penerimaan_aksesoris`;
CREATE TABLE `penerimaan_aksesoris` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aksesoris_id` int(11) DEFAULT NULL,
  `jumlah` float DEFAULT NULL,
  `gudang_id` int(11) DEFAULT NULL,
  `aksesoris_status` enum('1','2','3') DEFAULT '1',
  `sys_create_user` int(11) DEFAULT NULL,
  `sys_update_user` int(11) DEFAULT NULL,
  `sys_delete_user` int(11) DEFAULT NULL,
  `sys_create_date` datetime DEFAULT NULL,
  `sys_update_date` datetime DEFAULT NULL,
  `sys_delete_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of penerimaan_aksesoris
-- ----------------------------
INSERT INTO `penerimaan_aksesoris` VALUES ('1', '1', '6', '1', '3', '6', '6', '6', '2016-11-20 22:44:00', '2016-11-27 09:40:50', '2016-11-27 09:59:02');
INSERT INTO `penerimaan_aksesoris` VALUES ('2', '2', '34', '2', '3', '6', '6', '6', '2016-11-27 07:32:04', '2016-11-27 09:42:03', '2016-11-27 10:03:01');
INSERT INTO `penerimaan_aksesoris` VALUES ('3', '2', '45', '2', '1', '6', null, null, '2016-11-27 10:03:20', null, null);
INSERT INTO `penerimaan_aksesoris` VALUES ('4', '1', '20', '1', '1', '6', null, null, '2016-12-20 15:16:46', null, null);

-- ----------------------------
-- Table structure for penerimaan_motor
-- ----------------------------
DROP TABLE IF EXISTS `penerimaan_motor`;
CREATE TABLE `penerimaan_motor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nopolisi` varchar(15) DEFAULT NULL COMMENT 'mobil yang membawa motor',
  `tgl_sj` date DEFAULT NULL,
  `no_sj` varchar(15) DEFAULT NULL,
  `no_so` varchar(15) DEFAULT NULL,
  `nomesin` varchar(25) DEFAULT NULL,
  `norangka` varchar(25) DEFAULT NULL,
  `tipe` varchar(25) DEFAULT NULL,
  `warna` varchar(10) DEFAULT NULL,
  `tahun` varchar(10) DEFAULT NULL,
  `kdgudang` int(11) DEFAULT NULL,
  `tglupload` datetime DEFAULT NULL,
  `namafile` varchar(200) DEFAULT NULL,
  `m_status` enum('1','2','3') DEFAULT '1',
  `sys_create_user` int(11) DEFAULT NULL,
  `sys_update_user` int(11) DEFAULT NULL,
  `sys_delete_user` int(11) DEFAULT NULL,
  `sys_create_date` datetime DEFAULT NULL,
  `sys_update_date` datetime DEFAULT NULL,
  `sys_delete_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of penerimaan_motor
-- ----------------------------
INSERT INTO `penerimaan_motor` VALUES ('42', 'B08080VND1', '2016-11-11', 'SJ00854545', 'SO5487545', 'MSN4576464', 'RK5446464', 'NC11D1D', 'Merah', '2015', '1', '2016-11-27 19:08:32', 'excel_penerimaan_motor40.xlsx', '1', '6', null, null, '2016-11-27 19:08:32', null, null);
INSERT INTO `penerimaan_motor` VALUES ('43', 'B08080VND2', '2016-11-11', 'SJ00854545', 'SO5487545', 'MSN4576465', 'RK5446464', 'NC10D1D', 'Merah', '2015', '1', '2016-11-27 19:08:32', 'excel_penerimaan_motor40.xlsx', '1', '6', null, null, '2016-11-27 19:08:32', null, null);
INSERT INTO `penerimaan_motor` VALUES ('44', 'B08080VND3', '2016-11-11', 'SJ00854545', 'SO5487545', 'MSN4576466', 'RK5446464', 'NC12D1D', 'Merah', '2015', '1', '2016-11-27 19:08:32', 'excel_penerimaan_motor40.xlsx', '1', '6', null, null, '2016-11-27 19:08:32', null, null);
INSERT INTO `penerimaan_motor` VALUES ('45', 'B08080VND4', '2016-11-11', 'SJ00854545', 'SO5487545', 'MSN4576467', 'RK5446464', 'NC13D1D', 'Merah', '2015', '1', '2016-11-27 19:08:32', 'excel_penerimaan_motor40.xlsx', '1', '6', null, null, '2016-11-27 19:08:32', null, null);
INSERT INTO `penerimaan_motor` VALUES ('46', 'B08080VND5', '2016-11-11', 'SJ00854545', 'SO5487545', 'MSN4576468', 'RK5446464', 'NC11D1D', 'Merah', '2015', '1', '2016-11-27 19:08:32', 'excel_penerimaan_motor40.xlsx', '1', '6', null, null, '2016-11-27 19:08:32', null, null);
INSERT INTO `penerimaan_motor` VALUES ('47', 'B08080VND6', '2016-11-11', 'SJ00854545', 'SO5487545', 'MSN4576469', 'RK5446464', 'NC10D1D', 'Merah', '2015', '1', '2016-11-27 19:08:32', 'excel_penerimaan_motor40.xlsx', '1', '6', null, null, '2016-11-27 19:08:32', null, null);
INSERT INTO `penerimaan_motor` VALUES ('48', 'B08080VND7', '2016-11-11', 'SJ00854545', 'SO5487545', 'MSN4576470', 'RK5446464', 'NC12D1D', 'Merah', '2015', '1', '2016-11-27 19:08:32', 'excel_penerimaan_motor40.xlsx', '1', '6', null, null, '2016-11-27 19:08:32', null, null);
INSERT INTO `penerimaan_motor` VALUES ('49', 'B08080VND8', '2016-11-11', 'SJ00854545', 'SO5487545', 'MSN4576471', 'RK5446464', 'NC13D1D', 'Merah', '2015', '1', '2016-11-27 19:08:32', 'excel_penerimaan_motor40.xlsx', '1', '6', null, null, '2016-11-27 19:08:32', null, null);
INSERT INTO `penerimaan_motor` VALUES ('50', 'B08080VND9', '2016-11-11', 'SJ00854545', 'SO5487545', 'MSN4576472', 'RK5446464', 'NC11D1D', 'Merah', '2015', '1', '2016-11-27 19:08:32', 'excel_penerimaan_motor40.xlsx', '1', '6', null, null, '2016-11-27 19:08:32', null, null);
INSERT INTO `penerimaan_motor` VALUES ('51', 'B08080VND10', '2016-11-11', 'SJ00854545', 'SO5487545', 'MSN4576473', 'RK5446464', 'NC10D1D', 'Merah', '2015', '1', '2016-11-27 19:08:32', 'excel_penerimaan_motor40.xlsx', '1', '6', null, null, '2016-11-27 19:08:32', null, null);
INSERT INTO `penerimaan_motor` VALUES ('52', 'B08080VND11', '2016-11-11', 'SJ00854545', 'SO5487545', 'MSN4576474', 'RK5446464', 'NC12D1D', 'Merah', '2015', '1', '2016-11-27 19:08:32', 'excel_penerimaan_motor40.xlsx', '1', '6', null, null, '2016-11-27 19:08:32', null, null);
INSERT INTO `penerimaan_motor` VALUES ('53', 'B08080VND12', '2016-11-11', 'SJ00854545', 'SO5487545', 'MSN4576475', 'RK5446464', 'NC13D1D', 'Merah', '2015', '2', '2016-11-27 19:08:32', 'excel_penerimaan_motor40.xlsx', '1', '6', null, null, '2016-11-27 19:08:32', null, null);
INSERT INTO `penerimaan_motor` VALUES ('54', 'B08080VND13', '2016-11-11', 'SJ00854545', 'SO5487545', 'MSN4576476', 'RK5446464', 'NC11D1D', 'Merah', '2015', '2', '2016-11-27 19:08:32', 'excel_penerimaan_motor40.xlsx', '1', '6', null, null, '2016-11-27 19:08:32', null, null);
INSERT INTO `penerimaan_motor` VALUES ('55', 'B08080VND14', '2016-11-11', 'SJ00854545', 'SO5487545', 'MSN4576477', 'RK5446464', 'NC10D1D', 'Merah', '2015', '2', '2016-11-27 19:08:32', 'excel_penerimaan_motor40.xlsx', '1', '6', null, null, '2016-11-27 19:08:32', null, null);
INSERT INTO `penerimaan_motor` VALUES ('56', 'B08080VND15', '2016-11-11', 'SJ00854545', 'SO5487545', 'MSN4576478', 'RK5446464', 'NC12D1D', 'Merah', '2015', '2', '2016-11-27 19:08:32', 'excel_penerimaan_motor40.xlsx', '1', '6', null, null, '2016-11-27 19:08:32', null, null);
INSERT INTO `penerimaan_motor` VALUES ('57', 'B08080VND16', '2016-11-11', 'SJ00854545', 'SO5487545', 'MSN4576479', 'RK5446464', 'NC13D1D', 'Merah', '2015', '2', '2016-11-27 19:08:32', 'excel_penerimaan_motor40.xlsx', '1', '6', null, null, '2016-11-27 19:08:32', null, null);
INSERT INTO `penerimaan_motor` VALUES ('58', 'B08080VND17', '2016-11-11', 'SJ00854545', 'SO5487545', 'MSN4576480', 'RK5446464', 'NC11D1D', 'Merah', '2015', '2', '2016-11-27 19:08:32', 'excel_penerimaan_motor40.xlsx', '1', '6', null, null, '2016-11-27 19:08:32', null, null);
INSERT INTO `penerimaan_motor` VALUES ('59', 'B08080VND18', '2016-11-11', 'SJ00854545', 'SO5487545', 'MSN4576481', 'RK5446464', 'NC10D1D', 'Merah', '2015', '2', '2016-11-27 19:08:32', 'excel_penerimaan_motor40.xlsx', '1', '6', null, null, '2016-11-27 19:08:32', null, null);
INSERT INTO `penerimaan_motor` VALUES ('60', 'B08080VND19', '2016-11-11', 'SJ00854545', 'SO5487545', 'MSN4576482', 'RK5446464', 'NC12D1D', 'Merah', '2015', '2', '2016-11-27 19:08:32', 'excel_penerimaan_motor40.xlsx', '1', '6', null, null, '2016-11-27 19:08:32', null, null);
INSERT INTO `penerimaan_motor` VALUES ('61', 'B08080VND20', '2016-11-11', 'SJ00854545', 'SO5487545', 'MSN4576483', 'RK5446464', 'NC13D1D', 'Merah', '2015', '2', '2016-11-27 19:08:32', 'excel_penerimaan_motor40.xlsx', '1', '6', null, null, '2016-11-27 19:08:32', null, null);
INSERT INTO `penerimaan_motor` VALUES ('62', 'B08080VND21', '2016-11-11', 'SJ00854545', 'SO5487545', 'MSN4576484', 'RK5446464', 'NC11D1D', 'Merah', '2015', '2', '2016-11-27 19:08:32', 'excel_penerimaan_motor40.xlsx', '1', '6', null, null, '2016-11-27 19:08:32', null, null);
INSERT INTO `penerimaan_motor` VALUES ('63', 'B08080VND22', '2016-11-11', 'SJ00854545', 'SO5487545', 'MSN4576485', 'RK5446464', 'NC10D1D', 'Merah', '2016', '2', '2016-11-27 19:08:32', 'excel_penerimaan_motor40.xlsx', '1', '6', null, null, '2016-11-27 19:08:32', null, null);
INSERT INTO `penerimaan_motor` VALUES ('64', 'B08080VND23', '2016-11-11', 'SJ00854545', 'SO5487545', 'MSN4576486', 'RK5446464', 'NC12D1D', 'Merah', '2016', '2', '2016-11-27 19:08:32', 'excel_penerimaan_motor40.xlsx', '1', '6', null, null, '2016-11-27 19:08:32', null, null);
INSERT INTO `penerimaan_motor` VALUES ('65', 'B08080VND24', '2016-11-11', 'SJ00854545', 'SO5487545', 'MSN4576487', 'RK5446464', 'NC13D1D', 'Merah', '2016', '2', '2016-11-27 19:08:32', 'excel_penerimaan_motor40.xlsx', '1', '6', null, null, '2016-11-27 19:08:32', null, null);
INSERT INTO `penerimaan_motor` VALUES ('66', 'B08080VND25', '2016-11-11', 'SJ00854545', 'SO5487545', 'MSN4576488', 'RK5446464', 'NC11D1D', 'Merah', '2016', '2', '2016-11-27 19:08:32', 'excel_penerimaan_motor40.xlsx', '1', '6', null, null, '2016-11-27 19:08:32', null, null);
INSERT INTO `penerimaan_motor` VALUES ('67', 'B08080VND26', '2016-11-11', 'SJ00854545', 'SO5487545', 'MSN4576489', 'RK5446464', 'NC10D1D', 'Merah', '2016', '2', '2016-11-27 19:08:32', 'excel_penerimaan_motor40.xlsx', '1', '6', null, null, '2016-11-27 19:08:32', null, null);
INSERT INTO `penerimaan_motor` VALUES ('68', 'B08080VND27', '2016-11-11', 'SJ00854545', 'SO5487545', 'MSN4576490', 'RK5446464', 'NC12D1D', 'Merah', '2016', '2', '2016-11-27 19:08:32', 'excel_penerimaan_motor40.xlsx', '1', '6', null, null, '2016-11-27 19:08:32', null, null);
INSERT INTO `penerimaan_motor` VALUES ('69', 'B08080VND28', '2016-11-11', 'SJ00854545', 'SO5487545', 'MSN4576491', 'RK5446464', 'NC13D1D', 'Merah', '2016', '1', '2016-11-27 19:08:32', 'excel_penerimaan_motor40.xlsx', '1', '6', null, null, '2016-11-27 19:08:32', null, null);
INSERT INTO `penerimaan_motor` VALUES ('70', 'B08080VND29', '2016-11-11', 'SJ00854545', 'SO5487545', 'MSN4576492', 'RK5446464', 'NC11D1D', 'Merah', '2016', '1', '2016-11-27 19:08:32', 'excel_penerimaan_motor40.xlsx', '1', '6', null, null, '2016-11-27 19:08:32', null, null);
INSERT INTO `penerimaan_motor` VALUES ('71', 'B08080VND30', '2016-11-11', 'SJ00854545', 'SO5487545', 'MSN4576493', 'RK5446464', 'NC10D1D', 'Merah', '2016', '1', '2016-11-27 19:08:32', 'excel_penerimaan_motor40.xlsx', '1', '6', null, null, '2016-11-27 19:08:32', null, null);
INSERT INTO `penerimaan_motor` VALUES ('72', 'B08080VND31', '2016-11-11', 'SJ00854545', 'SO5487545', 'MSN4576494', 'RK5446464', 'NC12D1D', 'Merah', '2016', '1', '2016-11-27 19:08:32', 'excel_penerimaan_motor40.xlsx', '1', '6', null, null, '2016-11-27 19:08:32', null, null);
INSERT INTO `penerimaan_motor` VALUES ('73', 'B08080VND32', '2016-11-11', 'SJ00854545', 'SO5487545', 'MSN4576495', 'RK5446464', 'NC13D1D', 'Merah', '2016', '2', '2016-11-27 19:08:32', 'excel_penerimaan_motor40.xlsx', '1', '6', null, null, '2016-11-27 19:08:32', null, null);
INSERT INTO `penerimaan_motor` VALUES ('74', 'B08080VND33', '2016-11-11', 'SJ00854545', 'SO5487545', 'MSN4576496', 'RK5446464', 'NC11D1D', 'Merah', '2016', '2', '2016-11-27 19:08:32', 'excel_penerimaan_motor40.xlsx', '1', '6', null, null, '2016-11-27 19:08:32', null, null);
INSERT INTO `penerimaan_motor` VALUES ('75', 'B08080VND34', '2016-11-11', 'SJ00854545', 'SO5487545', 'MSN4576497', 'RK5446464', 'NC10D1D', 'Merah', '2016', '2', '2016-11-27 19:08:32', 'excel_penerimaan_motor40.xlsx', '1', '6', null, null, '2016-11-27 19:08:32', null, null);
INSERT INTO `penerimaan_motor` VALUES ('76', 'SO16113336', '2016-12-01', 'SJ16120011', 'SO16113336', 'JFV1E1510483', 'JFV11XGK504393', 'EF02N12S', 'BG', '2016', '1', '2016-12-20 15:16:15', 'templateTerimaMotor32.xlsx', '1', '6', null, null, '2016-12-20 15:16:15', null, null);
INSERT INTO `penerimaan_motor` VALUES ('77', 'SO16113426', '2016-12-02', 'SJ16120011', 'SO16113426', 'KF11E1901573', 'KF1118GK903283', 'K1H2N14S', 'BR', '2016', '1', '2016-12-20 15:16:15', 'templateTerimaMotor32.xlsx', '1', '6', null, null, '2016-12-20 15:16:15', null, null);
INSERT INTO `penerimaan_motor` VALUES ('78', 'SO16113619', '2016-12-03', 'SJ16120011', 'SO16113619', 'JFZ1E1433621', 'JFZ116GK420529', 'D1B2N6L2', 'WH', '2016', '1', '2016-12-20 15:16:15', 'templateTerimaMotor32.xlsx', '1', '6', null, null, '2016-12-20 15:16:15', null, null);
INSERT INTO `penerimaan_motor` VALUES ('79', 'SO16113619', '2016-12-04', 'SJ16120011', 'SO16113619', 'JBK3E1174339', 'JBK318GK174423', 'NFT13C03', 'WR', '2016', '1', '2016-12-20 15:16:15', 'templateTerimaMotor32.xlsx', '1', '6', null, null, '2016-12-20 15:16:15', null, null);
INSERT INTO `penerimaan_motor` VALUES ('80', 'SO16113857', '2016-12-05', 'SJ16120011', 'SO16113857', 'JFZ1E1433622', 'JFZ114GK420528', 'D1B2N6L2', 'WH', '2016', '1', '2016-12-20 15:16:15', 'templateTerimaMotor32.xlsx', '1', '6', null, null, '2016-12-20 15:16:15', null, null);
INSERT INTO `penerimaan_motor` VALUES ('81', 'SO16113857', '2016-12-06', 'SJ16120011', 'SO16113857', 'JFZ1E1433620', 'JFZ112GK420530', 'D1B2N6L2', 'WH', '2016', '2', '2016-12-20 15:16:15', 'templateTerimaMotor32.xlsx', '1', '6', null, null, '2016-12-20 15:16:15', null, null);
INSERT INTO `penerimaan_motor` VALUES ('82', 'SO16113857', '2016-12-07', 'SJ16120011', 'SO16113857', 'JFZ1E1433496', 'JFZ111GK420521', 'D1B2N6L2', 'WH', '2016', '2', '2016-12-20 15:16:15', 'templateTerimaMotor32.xlsx', '1', '6', null, null, '2016-12-20 15:16:15', null, null);
INSERT INTO `penerimaan_motor` VALUES ('83', 'SO16113895', '2016-12-08', 'SJ16120011', 'SO16113895', 'JFW1E1777522', 'JFW114GK776654', 'C1CN16M2', 'MS', '2016', '2', '2016-12-20 15:16:15', 'templateTerimaMotor32.xlsx', '1', '6', null, null, '2016-12-20 15:16:15', null, null);
INSERT INTO `penerimaan_motor` VALUES ('84', 'SO16113895', '2016-12-09', 'SJ16120011', 'SO16113895', 'JFW1E1777573', 'JFW110GK776666', 'C1CN16M2', 'MS', '2016', '2', '2016-12-20 15:16:15', 'templateTerimaMotor32.xlsx', '1', '6', null, null, '2016-12-20 15:16:15', null, null);
INSERT INTO `penerimaan_motor` VALUES ('85', 'SO16113857', '2016-12-01', 'SJ16120012', 'SO16113857', 'JFZ114GK409206', 'JFZ1E1425531', 'D1B2N6L2', 'BK', '2016', '1', '2016-12-20 17:40:16', 'templateTerimaMotor46.xlsx', '1', '6', null, null, '2016-12-20 17:40:16', null, null);
INSERT INTO `penerimaan_motor` VALUES ('86', 'SO16113857', '2016-12-01', 'SJ16120012', 'SO16113857', 'JFZ11XGK420128', 'JFZ1E1434658', 'D1B2N6L2', 'BK', '2016', '1', '2016-12-20 17:40:16', 'templateTerimaMotor46.xlsx', '1', '6', null, null, '2016-12-20 17:40:16', null, null);
INSERT INTO `penerimaan_motor` VALUES ('87', 'SO16113857', '2016-12-01', 'SJ16120012', 'SO16113857', 'JFZ115GK420117', 'JFZ1E1434618', 'D1B2N6L2', 'BK', '2016', '1', '2016-12-20 17:40:20', 'templateTerimaMotor46.xlsx', '1', '6', null, null, '2016-12-20 17:40:20', null, null);
INSERT INTO `penerimaan_motor` VALUES ('88', 'SO16113857', '2016-12-01', 'SJ16120012', 'SO16113857', 'JFZ116GK420143', 'JFZ1E1434555', 'D1B2N6L2', 'BK', '2016', '1', '2016-12-20 17:40:20', 'templateTerimaMotor46.xlsx', '1', '6', null, null, '2016-12-20 17:40:20', null, null);
INSERT INTO `penerimaan_motor` VALUES ('89', 'SO16113857', '2016-12-01', 'SJ16120012', 'SO16113857', 'JFZ111GK420129', 'JFZ1E1434655', 'D1B2N6L2', 'BK', '2016', '1', '2016-12-20 17:40:24', 'templateTerimaMotor46.xlsx', '1', '6', null, null, '2016-12-20 17:40:24', null, null);
INSERT INTO `penerimaan_motor` VALUES ('90', 'SO16113857', '2016-12-01', 'SJ16120012', 'SO16113857', 'JFZ114GK421517', 'JFZ1E1434459', 'D1B2N6L2', 'BK', '2016', '1', '2016-12-20 17:40:24', 'templateTerimaMotor46.xlsx', '1', '6', null, null, '2016-12-20 17:40:24', null, null);

-- ----------------------------
-- Table structure for penerimaan_motor_temp
-- ----------------------------
DROP TABLE IF EXISTS `penerimaan_motor_temp`;
CREATE TABLE `penerimaan_motor_temp` (
  `id_temp` int(11) NOT NULL AUTO_INCREMENT,
  `nopolisi` varchar(15) DEFAULT NULL COMMENT 'mobil yang membawa motor',
  `tgl_sj` date DEFAULT NULL,
  `no_sj` varchar(15) DEFAULT NULL,
  `no_so` varchar(15) DEFAULT NULL,
  `nomesin` varchar(25) DEFAULT NULL,
  `norangka` varchar(25) DEFAULT NULL,
  `tipe` varchar(25) DEFAULT NULL,
  `warna` varchar(10) DEFAULT NULL,
  `tahun` varchar(10) DEFAULT NULL,
  `kdgudang` int(11) DEFAULT NULL,
  `tglupload` datetime DEFAULT NULL,
  `namafile` varchar(200) DEFAULT NULL,
  `m_status` enum('') DEFAULT NULL,
  `sys_create_user` int(11) DEFAULT NULL,
  `sys_update_user` int(11) DEFAULT NULL,
  `sys_delete_user` int(11) DEFAULT NULL,
  `sys_create_date` datetime DEFAULT NULL,
  `sys_update_date` datetime DEFAULT NULL,
  `sys_delete_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id_temp`)
) ENGINE=InnoDB AUTO_INCREMENT=19472 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of penerimaan_motor_temp
-- ----------------------------
INSERT INTO `penerimaan_motor_temp` VALUES ('19182', 'SO16113857', '2016-12-01', 'SJ16120012', 'SO16113857', 'JFZ115GK420134', 'JFZ1E1434659', 'D1B2N6L2', 'BK', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19183', 'SO16113857', '2016-12-01', 'SJ16120012', 'SO16113857', 'JFZ118GK420144', 'JFZ1E1434559', 'D1B2N6L2', 'BK', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19184', 'SO16113857', '2016-12-01', 'SJ16120012', 'SO16113857', 'JFZ113GK421699', 'JFZ1E1434418', 'D1B2N6L2', 'BK', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19185', 'SO16113857', '2016-12-01', 'SJ16120012', 'SO16113857', 'JFZ113GK421685', 'JFZ1E1434411', 'D1B2N6L2', 'BK', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19186', 'SO16113857', '2016-12-01', 'SJ16120012', 'SO16113857', 'JFZ118GK420130', 'JFZ1E1434666', 'D1B2N6L2', 'BK', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19187', 'SO16113857', '2016-12-01', 'SJ16120012', 'SO16113857', 'JFZ111GK420132', 'JFZ1E1434668', 'D1B2N6L2', 'BK', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19188', 'SO16120037', '2016-12-02', 'SJ16120115', 'SO16120037', 'JFW119GK776715', 'JFW1E1777835', 'C1CN16M2', 'MS', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19189', 'SO16120037', '2016-12-02', 'SJ16120115', 'SO16120037', 'JFW110GK777221', 'JFW1E1777978', 'C1CN16M2', 'MS', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19190', 'SO16120037', '2016-12-02', 'SJ16120115', 'SO16120037', 'JFW118GK776673', 'JFW1E1777589', 'C1CN16M2', 'MS', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19191', 'SO16120037', '2016-12-02', 'SJ16120115', 'SO16120037', 'JFZ113GK414431', 'JFZ1E1427765', 'D1B2N6L2', 'WH', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19192', 'SO16120037', '2016-12-02', 'SJ16120115', 'SO16120037', 'JFZ119GK414434', 'JFZ1E1427768', 'D1B2N6L2', 'WH', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19193', 'SO16120037', '2016-12-02', 'SJ16120115', 'SO16120037', 'JFZ111GK414430', 'JFZ1E1427764', 'D1B2N6L2', 'WH', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19194', 'SO16120037', '2016-12-02', 'SJ16120115', 'SO16120037', 'JFZ110GK414435', 'JFZ1E1427769', 'D1B2N6L2', 'WH', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19195', 'SO16120037', '2016-12-02', 'SJ16120115', 'SO16120037', 'JFZ117GK414433', 'JFZ1E1427767', 'D1B2N6L2', 'WH', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19196', 'SO16120037', '2016-12-02', 'SJ16120115', 'SO16120037', 'JBK311GK174456', 'JBK3E1174264', 'NFT13C03', 'WR', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19197', 'SO16120037', '2016-12-02', 'SJ16120115', 'SO16120037', 'JBK312GK174935', 'JBK3E1174821', 'NFT13C03', 'BR', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19198', 'SO16120037', '2016-12-02', 'SJ16120115', 'SO16120037', 'JBK318GK174955', 'JBK3E1174805', 'NFT13C03', 'BR', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19199', 'SO16120037', '2016-12-02', 'SJ16120115', 'SO16120037', 'JBK312GK174997', 'JBK3E1174759', 'NFT13C03', 'BR', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19200', 'SO16120037', '2016-12-02', 'SJ16120118', 'SO16120037', 'JFZ214GK004025', 'JFZ2E1004088', 'D1I2N2M1', 'BK', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19201', 'SO16120037', '2016-12-02', 'SJ16120118', 'SO16120037', 'JFZ211GK003687', 'JFZ2E1003788', 'D1I2N2M1', 'BK', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19202', 'SO16120037', '2016-12-02', 'SJ16120118', 'SO16120037', 'JFZ213GK003674', 'JFZ2E1003785', 'D1I2N2M1', 'BK', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19203', 'SO16120037', '2016-12-02', 'SJ16120118', 'SO16120037', 'JFZ213GK004002', 'JFZ2E1004004', 'D1I2N2M1', 'BK', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19204', 'SO16120037', '2016-12-02', 'SJ16120118', 'SO16120037', 'JFZ214GK003683', 'JFZ2E1003800', 'D1I2N2M1', 'BK', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19205', 'SO16120037', '2016-12-02', 'SJ16120118', 'SO16120037', 'JFV110GK506072', 'JFV1E1512684', 'EF02N12S', 'RD', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19206', 'SO16120037', '2016-12-02', 'SJ16120118', 'SO16120037', 'JFV110GK505889', 'JFV1E1512110', 'EF02N12S', 'RD', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19207', 'SO16120037', '2016-12-02', 'SJ16120118', 'SO16120037', 'JFV11XGK505981', 'JFV1E1512272', 'EF02N12S', 'RD', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19208', 'SO16120037', '2016-12-02', 'SJ16120118', 'SO16120037', 'JFV11XGK506063', 'JFV1E1512670', 'EF02N12S', 'RD', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19209', 'SO16120037', '2016-12-02', 'SJ16120118', 'SO16120037', 'JBK210GK111849', 'JBK2E1111304', 'NFT13C02', 'BR', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19210', 'SO16120037', '2016-12-02', 'SJ16120118', 'SO16120037', 'JBK217GK111704', 'JBK2E1111297', 'NFT13C02', 'BR', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19211', 'SO16120037', '2016-12-02', 'SJ16120118', 'SO16120037', 'JBK21XGK111888', 'JBK2E1111397', 'NFT13C02', 'BR', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19212', 'SO16120184', '2016-12-03', 'SJ16120171', 'SO16120184', 'JFZ11XGK422865', 'JFZ1E1435755', 'D1B2N6L2', 'BK', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19213', 'SO16120184', '2016-12-03', 'SJ16120171', 'SO16120184', 'JFZ111GK422740', 'JFZ1E1435550', 'D1B2N6L2', 'BK', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19214', 'SO16120184', '2016-12-03', 'SJ16120171', 'SO16120184', 'JFZ115GK414060', 'JFZ1E1427395', 'D1B2N6L2', 'WH', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19215', 'SO16120184', '2016-12-03', 'SJ16120171', 'SO16120184', 'JFZ11XGK413406', 'JFZ1E1426733', 'D1B2N6L2', 'WH', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19216', 'SO16120184', '2016-12-03', 'SJ16120171', 'SO16120184', 'JFV119GK507690', 'JFV1E1513757', 'EF02N12S', 'BG', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19217', 'SO16120184', '2016-12-03', 'SJ16120171', 'SO16120184', 'JFV118GK507700', 'JFV1E1513715', 'EF02N12S', 'BG', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19218', 'SO16120184', '2016-12-03', 'SJ16120171', 'SO16120184', 'JFV117GK507672', 'JFV1E1513769', 'EF02N12S', 'BG', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19219', 'SO16120184', '2016-12-03', 'SJ16120171', 'SO16120184', 'JFV111GK507604', 'JFV1E1513713', 'EF02N12S', 'BG', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19220', 'SO16120184', '2016-12-03', 'SJ16120171', 'SO16120184', 'JFV110GK507660', 'JFV1E1513756', 'EF02N12S', 'BG', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19221', 'SO16120184', '2016-12-03', 'SJ16120171', 'SO16120184', 'JFV11XGK507617', 'JFV1E1513720', 'EF02N12S', 'BG', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19222', 'SO16120184', '2016-12-03', 'SJ16120171', 'SO16120184', 'JFT115GK077242', 'JFT1E1078245', 'YG2N15L1', 'PM', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19223', 'SO16120184', '2016-12-03', 'SJ16120171', 'SO16120184', 'JFT117GK077243', 'JFT1E1078244', 'YG2N15L1', 'PM', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19224', 'SO16113619', '2016-12-03', 'SJ16120188', 'SO16113619', 'JBK313GK174748', 'JBK3E1174622', 'NFT13C03', 'WR', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19225', 'SO16113857', '2016-12-03', 'SJ16120188', 'SO16113857', 'JFW119GK778710', 'JFW1E1776308', 'C1CN16MS', 'HP', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19226', 'SO16120037', '2016-12-03', 'SJ16120188', 'SO16120037', 'JFV116GK507436', 'JFV1E1513838', 'EF02N12S', 'RD', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19227', 'SO16120037', '2016-12-03', 'SJ16120188', 'SO16120037', 'JFV113GK507491', 'JFV1E1513665', 'EF02N12S', 'RD', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19228', 'SO16120184', '2016-12-03', 'SJ16120188', 'SO16120184', 'JFW119GK776732', 'JFW1E1777839', 'C1CN16M2', 'MS', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19229', 'SO16113093', '2016-12-03', 'SJ16120223', 'SO16113093', 'JM1119GK129174', 'JM11E1129443', 'D1B2N3L2', 'BP', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19230', 'SO16113619', '2016-12-03', 'SJ16120223', 'SO16113619', 'JM2114GK150021', 'JM21E1140291', 'D1B2N2L2', 'BP', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19231', 'SO16120037', '2016-12-03', 'SJ16120223', 'SO16120037', 'JFW117GK776972', 'JFW1E1778389', 'C1CN16M2', 'LS', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19232', 'SO16120037', '2016-12-03', 'SJ16120223', 'SO16120037', 'JFW115GK776971', 'JFW1E1778387', 'C1CN16M2', 'LS', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19233', 'SO16120037', '2016-12-03', 'SJ16120223', 'SO16120037', 'JFV115GK508481', 'JFV1E1514776', 'EF02N12S', 'RD', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19234', 'SO16120308', '2016-12-05', 'SJ16120255', 'SO16120308', 'JFW117GK782156', 'JFW1E1785230', 'C1CN16M2', 'KC', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19235', 'SO16120308', '2016-12-05', 'SJ16120255', 'SO16120308', 'JFW11XGK782183', 'JFW1E1785293', 'C1CN16M2', 'KC', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19236', 'SO16120308', '2016-12-05', 'SJ16120255', 'SO16120308', 'JFW110GK782175', 'JFW1E1785276', 'C1CN16M2', 'KC', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19237', 'SO16120308', '2016-12-05', 'SJ16120255', 'SO16120308', 'JFW116GK779930', 'JFW1E1780815', 'C1CN16MS', 'MP', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19238', 'SO16120308', '2016-12-05', 'SJ16120255', 'SO16120308', 'JFW115GK779871', 'JFW1E1780753', 'C1CN16MS', 'MP', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19239', 'SO16120308', '2016-12-05', 'SJ16120255', 'SO16120308', 'JFW11XGK779865', 'JFW1E1780756', 'C1CN16MS', 'MP', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19240', 'SO16120308', '2016-12-05', 'SJ16120255', 'SO16120308', 'JFV117GK508448', 'JFV1E1514752', 'EF02N12S', 'RD', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19241', 'SO16120308', '2016-12-05', 'SJ16120255', 'SO16120308', 'JFV11XGK508489', 'JFV1E1514793', 'EF02N12S', 'RD', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19242', 'SO16120308', '2016-12-05', 'SJ16120255', 'SO16120308', 'JFV115GK508500', 'JFV1E1514595', 'EF02N12S', 'RD', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19243', 'SO16120308', '2016-12-05', 'SJ16120255', 'SO16120308', 'JFV115GK508464', 'JFV1E1514755', 'EF02N12S', 'RD', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19244', 'SO16120308', '2016-12-05', 'SJ16120255', 'SO16120308', 'JFV114GK508455', 'JFV1E1514750', 'EF02N12S', 'RD', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19245', 'SO16120308', '2016-12-05', 'SJ16120288', 'SO16120308', 'JM1112GK129419', 'JM11E1129695', 'D1B2N3L2', 'MP', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19246', 'SO16120308', '2016-12-05', 'SJ16120288', 'SO16120308', 'JM1115GK129494', 'JM11E1129775', 'D1B2N3L2', 'MP', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19247', 'SO16120308', '2016-12-05', 'SJ16120288', 'SO16120308', 'JM1112GK129498', 'JM11E1129779', 'D1B2N3L2', 'MP', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19248', 'SO16120308', '2016-12-05', 'SJ16120288', 'SO16120308', 'JM1114GK129423', 'JM11E1129696', 'D1B2N3L2', 'MP', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19249', 'SO16120308', '2016-12-05', 'SJ16120288', 'SO16120308', 'JM1114GK129499', 'JM11E1129780', 'D1B2N3L2', 'MP', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19250', 'SO16112277', '2016-12-05', 'SJ16120289', 'SO16112277', 'JM1111GK129508', 'JM11E1129786', 'D1B2N3L2', 'MP', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19251', 'SO16112277', '2016-12-05', 'SJ16120289', 'SO16112277', 'JM1119GK129465', 'JM11E1129744', 'D1B2N3L2', 'MP', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19252', 'SO16120184', '2016-12-05', 'SJ16120289', 'SO16120184', 'JM1114GK129485', 'JM11E1129763', 'D1B2N3L2', 'MP', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19253', 'SO16120184', '2016-12-05', 'SJ16120289', 'SO16120184', 'JM1115GK129401', 'JM11E1129767', 'D1B2N3L2', 'MP', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19254', 'SO16120184', '2016-12-05', 'SJ16120289', 'SO16120184', 'JM1111GK129475', 'JM11E1129753', 'D1B2N3L2', 'MP', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19255', 'SO16120184', '2016-12-05', 'SJ16120289', 'SO16120184', 'JM1112GK129484', 'JM11E1129762', 'D1B2N3L2', 'MP', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19256', 'SO16120184', '2016-12-05', 'SJ16120289', 'SO16120184', 'JM1111GK129492', 'JM11E1129773', 'D1B2N3L2', 'MP', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19257', 'SO16120184', '2016-12-05', 'SJ16120289', 'SO16120184', 'JM1119GK129482', 'JM11E1129760', 'D1B2N3L2', 'MP', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19258', 'SO16120308', '2016-12-05', 'SJ16120289', 'SO16120308', 'JM1110GK129449', 'JM11E1129730', 'D1B2N3L2', 'MP', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19259', 'SO16120308', '2016-12-05', 'SJ16120289', 'SO16120308', 'JM1118GK129456', 'JM11E1129736', 'D1B2N3L2', 'MP', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19260', 'SO16120308', '2016-12-05', 'SJ16120289', 'SO16120308', 'JM1111GK129489', 'JM11E1129768', 'D1B2N3L2', 'MP', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19261', 'SO16120448', '2016-12-06', 'SJ16120315', 'SO16120448', 'JBM21XGK020986', 'JBM2E1021078', 'AFP12W08', 'BY', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19262', 'SO16120448', '2016-12-06', 'SJ16120315', 'SO16120448', 'JM1112GK129436', 'JM11E1129715', 'D1B2N3L2', 'MP', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19263', 'SO16120448', '2016-12-06', 'SJ16120315', 'SO16120448', 'JM1112GK129467', 'JM11E1129746', 'D1B2N3L2', 'MP', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19264', 'SO16120448', '2016-12-06', 'SJ16120315', 'SO16120448', 'JM1114GK128935', 'JM11E1129201', 'D1B2N3L2', 'MP', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19265', 'SO16120448', '2016-12-06', 'SJ16120315', 'SO16120448', 'JFZ118GK422718', 'JFZ1E1435708', 'D1B2N6L2', 'BK', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19266', 'SO16120448', '2016-12-06', 'SJ16120315', 'SO16120448', 'JFZ116GK430137', 'JFZ1E1436295', 'D1B2N6L2', 'WH', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19267', 'SO16120448', '2016-12-06', 'SJ16120315', 'SO16120448', 'JFZ11XGK422154', 'JFZ1E1434773', 'D1B2N6L2', 'WH', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19268', 'SO16120448', '2016-12-06', 'SJ16120315', 'SO16120448', 'JFZ115GK430131', 'JFZ1E1436294', 'D1B2N6L2', 'WH', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19269', 'SO16120448', '2016-12-06', 'SJ16120315', 'SO16120448', 'JFZ11XGK430139', 'JFZ1E1436296', 'D1B2N6L2', 'WH', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19270', 'SO16120448', '2016-12-06', 'SJ16120315', 'SO16120448', 'JFZ118GK430138', 'JFZ1E1436297', 'D1B2N6L2', 'WH', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19271', 'SO16120448', '2016-12-06', 'SJ16120315', 'SO16120448', 'JFZ118GK422704', 'JFZ1E1435769', 'D1B2N6L2', 'BK', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19272', 'SO16120448', '2016-12-06', 'SJ16120315', 'SO16120448', 'KC611XGK046521', 'KC61E1046504', 'GL15C21A', 'MH', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19273', 'SO16120308', '2016-12-06', 'SJ16120325', 'SO16120308', 'JM1112GK128965', 'JM11E1129232', 'D1B2N3L2', 'MP', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19274', 'SO16120308', '2016-12-06', 'SJ16120325', 'SO16120308', 'JM1116GK128967', 'JM11E1129234', 'D1B2N3L2', 'MP', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19275', 'SO16120448', '2016-12-06', 'SJ16120325', 'SO16120448', 'JM1113GK128960', 'JM11E1129227', 'D1B2N3L2', 'MP', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19276', 'SO16120448', '2016-12-06', 'SJ16120325', 'SO16120448', 'JM1115GK128961', 'JM11E1129228', 'D1B2N3L2', 'MP', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19277', 'SO16120448', '2016-12-06', 'SJ16120325', 'SO16120448', 'JFZ117GK430129', 'JFZ1E1436299', 'D1B2N6L2', 'WH', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19278', 'SO16120448', '2016-12-06', 'SJ16120325', 'SO16120448', 'JFZ114GK422151', 'JFZ1E1435051', 'D1B2N6L2', 'WH', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19279', 'SO16120448', '2016-12-06', 'SJ16120325', 'SO16120448', 'JFZ117GK430132', 'JFZ1E1436293', 'D1B2N6L2', 'WH', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19280', 'SO16120448', '2016-12-06', 'SJ16120325', 'SO16120448', 'JFZ115GK422756', 'JFZ1E1435734', 'D1B2N6L2', 'BK', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19281', 'SO16120448', '2016-12-06', 'SJ16120325', 'SO16120448', 'JFZ114GK422165', 'JFZ1E1435094', 'D1B2N6L2', 'WH', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19282', 'SO16120448', '2016-12-06', 'SJ16120325', 'SO16120448', 'JFZ113GK422707', 'JFZ1E1435762', 'D1B2N6L2', 'BK', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19283', 'SO16120448', '2016-12-06', 'SJ16120325', 'SO16120448', 'JFZ112GK422794', 'JFZ1E1435675', 'D1B2N6L2', 'BK', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19284', 'SO16120448', '2016-12-06', 'SJ16120325', 'SO16120448', 'JFZ113GK422190', 'JFZ1E1434861', 'D1B2N6L2', 'WH', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19285', 'SO16120448', '2016-12-06', 'SJ16120333', 'SO16120448', 'JFY112GK066423', 'JFY1E1063507', 'D1A2N19M', 'RD', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19286', 'SO16120448', '2016-12-06', 'SJ16120333', 'SO16120448', 'JFY115GK066500', 'JFY1E1063577', 'D1A2N19M', 'RD', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19287', 'SO16120448', '2016-12-06', 'SJ16120333', 'SO16120448', 'JFY11XGK064726', 'JFY1E1063538', 'D1A2N19M', 'RD', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19288', 'SO16120448', '2016-12-06', 'SJ16120333', 'SO16120448', 'JFY113GK070898', 'JFY1E1068399', 'D1A2N9MA', 'GR', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19289', 'SO16120448', '2016-12-06', 'SJ16120333', 'SO16120448', 'JFY11XGK070896', 'JFY1E1068358', 'D1A2N9MA', 'GR', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19290', 'SO16120448', '2016-12-06', 'SJ16120333', 'SO16120448', 'JFY117GK070872', 'JFY1E1068375', 'D1A2N9MA', 'GR', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19291', 'SO16120448', '2016-12-06', 'SJ16120333', 'SO16120448', 'JFZ119GK422145', 'JFZ1E1435008', 'D1B2N6L2', 'WH', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19292', 'SO16120448', '2016-12-06', 'SJ16120333', 'SO16120448', 'JFZ118GK422136', 'JFZ1E1435148', 'D1B2N6L2', 'WH', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19293', 'SO16120448', '2016-12-06', 'SJ16120333', 'SO16120448', 'JFZ112GK430118', 'JFZ1E1436272', 'D1B2N6L2', 'WH', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19294', 'SO16120448', '2016-12-06', 'SJ16120333', 'SO16120448', 'JFZ118GK430124', 'JFZ1E1436277', 'D1B2N6L2', 'WH', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19295', 'SO16120448', '2016-12-06', 'SJ16120333', 'SO16120448', 'KF1113GK908956', 'KF11E1907228', 'K1H2N14S', 'BR', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19296', 'SO16120448', '2016-12-06', 'SJ16120333', 'SO16120448', 'KF111XGK908162', 'KF11E1906468', 'K1H2N14S', 'BR', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19297', 'SO16120308', '2016-12-06', 'SJ16120344', 'SO16120308', 'JM1110GK130665', 'JM11E1131157', 'D1B2N3L2', 'MC', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19298', 'SO16120308', '2016-12-06', 'SJ16120344', 'SO16120308', 'JM1114GK130667', 'JM11E1131159', 'D1B2N3L2', 'MC', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19299', 'SO16120308', '2016-12-06', 'SJ16120344', 'SO16120308', 'JM1112GK130697', 'JM11E1131190', 'D1B2N3L2', 'MC', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19300', 'SO16120308', '2016-12-06', 'SJ16120344', 'SO16120308', 'JM1118GK130669', 'JM11E1131161', 'D1B2N3L2', 'MC', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19301', 'SO16120308', '2016-12-06', 'SJ16120344', 'SO16120308', 'JM1114GK130703', 'JM11E1131195', 'D1B2N3L2', 'MC', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19302', 'SO16120308', '2016-12-06', 'SJ16120344', 'SO16120308', 'JFV119GK510248', 'JFV1E1516594', 'EF02N12S', 'RD', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19303', 'SO16120308', '2016-12-06', 'SJ16120344', 'SO16120308', 'JFV11XGK510260', 'JFV1E1516554', 'EF02N12S', 'RD', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19304', 'SO16120308', '2016-12-06', 'SJ16120344', 'SO16120308', 'JFV112GK509443', 'JFV1E1515932', 'EF02N12S', 'RD', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19305', 'SO16120588', '2016-12-07', 'SJ16120397', 'SO16120588', 'JM1113GK130286', 'JM11E1130760', 'D1B2N3L2', 'MP', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19306', 'SO16120588', '2016-12-07', 'SJ16120397', 'SO16120588', 'JFZ11XGK414555', 'JFZ1E1427322', 'D1B2N6L2', 'BK', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19307', 'SO16120588', '2016-12-07', 'SJ16120397', 'SO16120588', 'JFZ114GK417984', 'JFZ1E1431396', 'D1B2N6L2', 'WH', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19308', 'SO16120588', '2016-12-07', 'SJ16120397', 'SO16120588', 'JFZ114GK426362', 'JFZ1E1431780', 'D1B2N6L2', 'WH', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19309', 'SO16120588', '2016-12-07', 'SJ16120397', 'SO16120588', 'JFZ11XGK422879', 'JFZ1E1435520', 'D1B2N6L2', 'BK', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19310', 'SO16120588', '2016-12-07', 'SJ16120397', 'SO16120588', 'JFZ119GK414613', 'JFZ1E1427848', 'D1B2N6L2', 'BK', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19311', 'SO16120588', '2016-12-07', 'SJ16120397', 'SO16120588', 'JFZ110GK417982', 'JFZ1E1431394', 'D1B2N6L2', 'WH', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19312', 'SO16120588', '2016-12-07', 'SJ16120397', 'SO16120588', 'JFZ110GK422129', 'JFZ1E1435143', 'D1B2N6L2', 'WH', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19313', 'SO16120588', '2016-12-07', 'SJ16120397', 'SO16120588', 'JFZ119GK414563', 'JFZ1E1427887', 'D1B2N6L2', 'BK', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19314', 'SO16120588', '2016-12-07', 'SJ16120397', 'SO16120588', 'JBG119GK200494', 'JBG1E1197580', 'NF12ACF3', 'BB', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19315', 'SO16120588', '2016-12-07', 'SJ16120397', 'SO16120588', 'JBK319GK174933', 'JBK3E1174842', 'NFT13C03', 'BR', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19316', 'SO16120588', '2016-12-07', 'SJ16120397', 'SO16120588', 'JBK313GK174992', 'JBK3E1174657', 'NFT13C03', 'BR', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19317', 'SO16120588', '2016-12-07', 'SJ16120416', 'SO16120588', 'JFW112GK783103', 'JFW1E1782108', 'C1CN16MS', 'MP', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19318', 'SO16120588', '2016-12-07', 'SJ16120416', 'SO16120588', 'JFW111GK783111', 'JFW1E1782103', 'C1CN16MS', 'MP', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19319', 'SO16120588', '2016-12-07', 'SJ16120416', 'SO16120588', 'JM1113GK132023', 'JM11E1133317', 'D1B2N3L2', 'MC', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19320', 'SO16120588', '2016-12-07', 'SJ16120416', 'SO16120588', 'JM1114GK134752', 'JM11E1131860', 'D1B2N3L2', 'MC', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19321', 'SO16120588', '2016-12-07', 'SJ16120416', 'SO16120588', 'JM1116GK132050', 'JM11E1133344', 'D1B2N3L2', 'MC', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19322', 'SO16120588', '2016-12-07', 'SJ16120416', 'SO16120588', 'JM1111GK132067', 'JM11E1133349', 'D1B2N3L2', 'MC', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19323', 'SO16120588', '2016-12-07', 'SJ16120416', 'SO16120588', 'JM1118GK132194', 'JM11E1133488', 'D1B2N3L2', 'MC', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19324', 'SO16120588', '2016-12-07', 'SJ16120416', 'SO16120588', 'JM111XGK132052', 'JM11E1133346', 'D1B2N3L2', 'MC', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19325', 'SO16120588', '2016-12-07', 'SJ16120416', 'SO16120588', 'JM1118GK132048', 'JM11E1133343', 'D1B2N3L2', 'MC', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19326', 'SO16120588', '2016-12-07', 'SJ16120416', 'SO16120588', 'JM1117GK130713', 'JM11E1131058', 'D1B2N3L2', 'MC', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19327', 'SO16120588', '2016-12-07', 'SJ16120416', 'SO16120588', 'JM1118GK135242', 'JM11E1132530', 'D1B2N3L2', 'MC', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19328', 'SO16120588', '2016-12-07', 'SJ16120416', 'SO16120588', 'JFZ115GK414561', 'JFZ1E1427885', 'D1B2N6L2', 'BK', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19329', 'SO16120184', '2016-12-08', 'SJ16120486', 'SO16120184', 'JM1113GK135892', 'JM11E1133182', 'D1B2N3L2', 'MP', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19330', 'SO16120184', '2016-12-08', 'SJ16120486', 'SO16120184', 'JFZ113GK414588', 'JFZ1E1428912', 'D1B2N6L2', 'BK', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19331', 'SO16120448', '2016-12-08', 'SJ16120486', 'SO16120448', 'JFZ118GK426817', 'JFZ1E1432247', 'D1B2N6L2', 'WH', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19332', 'SO16120448', '2016-12-08', 'SJ16120486', 'SO16120448', 'JFZ115GK426869', 'JFZ1E1432300', 'D1B2N6L2', 'WH', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19333', 'SO16120448', '2016-12-08', 'SJ16120486', 'SO16120448', 'JFV114GK512036', 'JFV1E1519345', 'EF02N12S', 'BG', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19334', 'SO16120448', '2016-12-08', 'SJ16120486', 'SO16120448', 'JFV110GK512034', 'JFV1E1519347', 'EF02N12S', 'BG', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19335', 'SO16120588', '2016-12-08', 'SJ16120486', 'SO16120588', 'JFW113GK785359', 'JFW1E1791459', 'C1CN16MS', 'HP', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19336', 'SO16120588', '2016-12-08', 'SJ16120486', 'SO16120588', 'JFW117GK781380', 'JFW1E1790817', 'C1CN16MS', 'WH', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19337', 'SO16120588', '2016-12-08', 'SJ16120486', 'SO16120588', 'JFW118GK781372', 'JFW1E1790819', 'C1CN16MS', 'WH', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19338', 'SO16120588', '2016-12-08', 'SJ16120486', 'SO16120588', 'JFW113GK785295', 'JFW1E1791453', 'C1CN16MS', 'HP', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19339', 'SO16120588', '2016-12-08', 'SJ16120486', 'SO16120588', 'JM111XGK136666', 'JM11E1134046', 'D1B2N3L2', 'MC', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19340', 'SO16120588', '2016-12-08', 'SJ16120486', 'SO16120588', 'JM1117GK132123', 'JM11E1133419', 'D1B2N3L2', 'MC', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19341', 'SO16120660', '2016-12-08', 'SJ16120486', 'SO16120660', 'JFW112GK781335', 'JFW1E1790856', 'C1CN16MS', 'WH', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19342', 'SO16120778', '2016-12-08', 'SJ16120486', 'SO16120778', 'JFW11XGK776707', 'JFW1E1777814', 'C1CN16M2', 'MS', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19343', 'SO16120778', '2016-12-08', 'SJ16120486', 'SO16120778', 'JFW113GK783806', 'JFW1E1783107', 'C1CN16MS', 'MP', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19344', 'SO16120778', '2016-12-08', 'SJ16120486', 'SO16120778', 'JFW11XGK785343', 'JFW1E1791356', 'C1CN16MS', 'HP', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19345', 'SO16120778', '2016-12-08', 'SJ16120486', 'SO16120778', 'JM2114GK154778', 'JM21E1150176', 'D1B2N2L2', 'BK', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19346', 'SO16120778', '2016-12-08', 'SJ16120486', 'SO16120778', 'JM1114GK129289', 'JM11E1129557', 'D1B2N3L2', 'BP', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19347', 'SO16120778', '2016-12-08', 'SJ16120486', 'SO16120778', 'JM1112GK129288', 'JM11E1129556', 'D1B2N3L2', 'BP', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19348', 'SO16120778', '2016-12-08', 'SJ16120486', 'SO16120778', 'JM1118GK129294', 'JM11E1129562', 'D1B2N3L2', 'BP', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19349', 'SO16120778', '2016-12-08', 'SJ16120486', 'SO16120778', 'JM1115GK129298', 'JM11E1129565', 'D1B2N3L2', 'BP', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19350', 'SO16120778', '2016-12-08', 'SJ16120486', 'SO16120778', 'JFZ114GK426815', 'JFZ1E1432244', 'D1B2N6L2', 'WH', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19351', 'SO16120778', '2016-12-08', 'SJ16120486', 'SO16120778', 'JFZ113GK426871', 'JFZ1E1432295', 'D1B2N6L2', 'WH', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19352', 'SO16120778', '2016-12-08', 'SJ16120486', 'SO16120778', 'KB1119GK100008', 'KB11E1101585', 'Y3B2R71B', 'BK', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19353', 'SO16120037', '2016-12-08', 'SJ16120494', 'SO16120037', 'JFV112GK509426', 'JFV1E1515924', 'EF02N12S', 'RD', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19354', 'SO16120184', '2016-12-08', 'SJ16120494', 'SO16120184', 'JFV115GK512031', 'JFV1E1519315', 'EF02N12S', 'BG', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19355', 'SO16120184', '2016-12-08', 'SJ16120494', 'SO16120184', 'JFV111GK512026', 'JFV1E1519318', 'EF02N12S', 'BG', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19356', 'SO16120184', '2016-12-08', 'SJ16120494', 'SO16120184', 'JFV118GK512024', 'JFV1E1519317', 'EF02N12S', 'BG', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19357', 'SO16120184', '2016-12-08', 'SJ16120494', 'SO16120184', 'JFT116GK077265', 'JFT1E1078215', 'YG2N15L1', 'PM', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19358', 'SO16120448', '2016-12-08', 'SJ16120494', 'SO16120448', 'JFY111GK066431', 'JFY1E1063508', 'D1A2N19M', 'RD', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19359', 'SO16120448', '2016-12-08', 'SJ16120494', 'SO16120448', 'JFY118GK070718', 'JFY1E1068269', 'D1A2N9MA', 'GR', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19360', 'SO16120448', '2016-12-08', 'SJ16120494', 'SO16120448', 'JFY118GK070850', 'JFY1E1068334', 'D1A2N9MA', 'GR', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19361', 'SO16120448', '2016-12-08', 'SJ16120494', 'SO16120448', 'KF1119GK908959', 'KF11E1907232', 'K1H2N14S', 'BR', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19362', 'SO16120448', '2016-12-08', 'SJ16120494', 'SO16120448', 'KF1111GK911855', 'KF11E1910165', 'K1H2N14S', 'BK', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19363', 'SO16120448', '2016-12-08', 'SJ16120494', 'SO16120448', 'KF1115GK911809', 'KF11E1910061', 'K1H2N14S', 'BK', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19364', 'SO16120448', '2016-12-08', 'SJ16120497', 'SO16120448', 'JFY119GK066404', 'JFY1E1063590', 'D1A2N19M', 'RD', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19365', 'SO16120588', '2016-12-08', 'SJ16120509', 'SO16120588', 'JFX114GK209155', 'JFX1E1208100', 'D1A2N18M', 'RD', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19366', 'SO16120588', '2016-12-08', 'SJ16120509', 'SO16120588', 'JFX117GK209179', 'JFX1E1208270', 'D1A2N18M', 'RD', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19367', 'SO16120588', '2016-12-08', 'SJ16120509', 'SO16120588', 'KC8111GK147023', 'KC81E1144733', 'H5C2R2S1', 'WR', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19368', 'SO16120588', '2016-12-08', 'SJ16120509', 'SO16120588', 'KC8114GK147016', 'KC81E1144724', 'H5C2R2S1', 'WR', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19369', 'SO16120588', '2016-12-08', 'SJ16120509', 'SO16120588', 'KC8111GK147006', 'KC81E1144706', 'H5C2R2S1', 'WR', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19370', 'SO16120778', '2016-12-08', 'SJ16120509', 'SO16120778', 'JM2112GK149711', 'JM21E1151721', 'D1B2N2L2', 'MP', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19371', 'SO16120778', '2016-12-08', 'SJ16120509', 'SO16120778', 'JFZ117GK417946', 'JFZ1E1431360', 'D1B2N6L2', 'WH', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19372', 'SO16120778', '2016-12-08', 'SJ16120509', 'SO16120778', 'JFZ113GK426840', 'JFZ1E1432276', 'D1B2N6L2', 'WH', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19373', 'SO16120778', '2016-12-08', 'SJ16120509', 'SO16120778', 'JFZ115GK426838', 'JFZ1E1432272', 'D1B2N6L2', 'WH', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19374', 'SO16120778', '2016-12-08', 'SJ16120509', 'SO16120778', 'JFZ112GK417952', 'JFZ1E1431364', 'D1B2N6L2', 'WH', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19375', 'SO16120778', '2016-12-08', 'SJ16120509', 'SO16120778', 'JFZ110GK417951', 'JFZ1E1431363', 'D1B2N6L2', 'WH', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19376', 'SO16120778', '2016-12-08', 'SJ16120509', 'SO16120778', 'JFZ117GK426839', 'JFZ1E1432274', 'D1B2N6L2', 'WH', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19377', 'SO16120588', '2016-12-09', 'SJ16120556', 'SO16120588', 'JFX110GK209167', 'JFX1E1208115', 'D1A2N18M', 'RD', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19378', 'SO16120588', '2016-12-09', 'SJ16120556', 'SO16120588', 'JFY117GK064604', 'JFY1E1062808', 'D1A2N19M', 'BK', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19379', 'SO16120588', '2016-12-09', 'SJ16120556', 'SO16120588', 'JFY115GK064603', 'JFY1E1062807', 'D1A2N19M', 'BK', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19380', 'SO16120588', '2016-12-09', 'SJ16120556', 'SO16120588', 'JFY110GK064640', 'JFY1E1062846', 'D1A2N19M', 'BK', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19381', 'SO16120588', '2016-12-09', 'SJ16120556', 'SO16120588', 'JFY117GK064618', 'JFY1E1062814', 'D1A2N19M', 'BK', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19382', 'SO16120588', '2016-12-09', 'SJ16120556', 'SO16120588', 'KF1116GK913598', 'KF11E1912207', 'K1H2N14S', 'BK', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19383', 'SO16120588', '2016-12-09', 'SJ16120556', 'SO16120588', 'KF1112GK906762', 'KF11E1905171', 'K1H2N14S', 'BR', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19384', 'SO16120588', '2016-12-09', 'SJ16120556', 'SO16120588', 'JBK110GK371024', 'JBK1E1369049', 'NFT13C01', 'BR', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19385', 'SO16120588', '2016-12-09', 'SJ16120556', 'SO16120588', 'JBK114GK371012', 'JBK1E1369048', 'NFT13C01', 'BR', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19386', 'SO16120588', '2016-12-09', 'SJ16120556', 'SO16120588', 'JBK11XGK373721', 'JBK1E1371590', 'NFT13C01', 'BB', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19387', 'SO16120778', '2016-12-09', 'SJ16120556', 'SO16120778', 'JFW119GK786922', 'JFW1E1794315', 'C1CN16M2', 'HF', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19388', 'SO16120778', '2016-12-09', 'SJ16120556', 'SO16120778', 'JFW115GK786948', 'JFW1E1794357', 'C1CN16M2', 'HF', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19389', 'SO16120778', '2016-12-09', 'SJ16120556', 'SO16120778', 'JFW119GK786984', 'JFW1E1794395', 'C1CN16M2', 'HF', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19390', 'SO16120778', '2016-12-09', 'SJ16120556', 'SO16120778', 'JFX118GK208235', 'JFX1E1205415', 'D1A2N18M', 'BK', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19391', 'SO16120778', '2016-12-09', 'SJ16120556', 'SO16120778', 'JFX114GK212508', 'JFX1E1215609', 'D1A2N18M', 'WH', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19392', 'SO16120778', '2016-12-09', 'SJ16120556', 'SO16120778', 'JFX113GK209163', 'JFX1E1208117', 'D1A2N18M', 'RD', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19393', 'SO16120778', '2016-12-09', 'SJ16120556', 'SO16120778', 'JFX116GK201669', 'JFX1E1206871', 'D1A2N8MA', 'GR', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19394', 'SO16120778', '2016-12-09', 'SJ16120556', 'SO16120778', 'JFU112GK728820', 'JFU1E1729710', 'EF02N11S', 'BR', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19395', 'SO16120778', '2016-12-09', 'SJ16120556', 'SO16120778', 'JFV116GK511275', 'JFV1E1517598', 'EF02N12S', 'RD', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19396', 'SO16120778', '2016-12-09', 'SJ16120556', 'SO16120778', 'KC8212GK083606', 'KC82E1085927', 'H5C2R2SA', 'XM', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19397', 'SO16120778', '2016-12-09', 'SJ16120556', 'SO16120778', 'KC8216GK071166', 'KC82E1067476', 'H5C2R2SB', 'RD', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19398', 'SO16120778', '2016-12-09', 'SJ16120556', 'SO16120778', 'KF1114GK904172', 'KF11E1902480', 'K1H2N14S', 'BL', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19399', 'SO16120778', '2016-12-09', 'SJ16120556', 'SO16120778', 'JFS116GK372750', 'JFS1E1367171', 'YG02N2L1', 'PH', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19400', 'SO16120778', '2016-12-09', 'SJ16120557', 'SO16120778', 'JFW119GK788685', 'JFW1E1794386', 'C1CN16M2', 'KC', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19401', 'SO16120909', '2016-12-09', 'SJ16120570', 'SO16120909', 'JFY114GK071221', 'JFY1E1068518', 'D1A2N9MA', 'GR', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19402', 'SO16120909', '2016-12-09', 'SJ16120570', 'SO16120909', 'JM2119GK154419', 'JM21E1149815', 'D1B2N2L2', 'BK', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19403', 'SO16120909', '2016-12-09', 'SJ16120570', 'SO16120909', 'JM2119GK156512', 'JM21E1159525', 'D1B2N2L2', 'MP', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19404', 'SO16120909', '2016-12-09', 'SJ16120570', 'SO16120909', 'JM2117GK156556', 'JM21E1159573', 'D1B2N2L2', 'MP', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19405', 'SO16120909', '2016-12-09', 'SJ16120570', 'SO16120909', 'JM211XGK154459', 'JM21E1149856', 'D1B2N2L2', 'BK', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19406', 'SO16120909', '2016-12-09', 'SJ16120570', 'SO16120909', 'JM2117GK154788', 'JM21E1150169', 'D1B2N2L2', 'BK', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19407', 'SO16120909', '2016-12-09', 'SJ16120570', 'SO16120909', 'JM2112GK156514', 'JM21E1159527', 'D1B2N2L2', 'MP', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19408', 'SO16120909', '2016-12-09', 'SJ16120570', 'SO16120909', 'JM2110GK156558', 'JM21E1159574', 'D1B2N2L2', 'MP', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19409', 'SO16120909', '2016-12-09', 'SJ16120570', 'SO16120909', 'JFZ113GK428586', 'JFZ1E1440023', 'D1B2N6L2', 'WH', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19410', 'SO16120909', '2016-12-09', 'SJ16120570', 'SO16120909', 'JFZ110GK428562', 'JFZ1E1439999', 'D1B2N6L2', 'WH', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19411', 'SO16120909', '2016-12-09', 'SJ16120570', 'SO16120909', 'JFZ119GK428558', 'JFZ1E1439957', 'D1B2N6L2', 'WH', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19412', 'SO16120909', '2016-12-09', 'SJ16120570', 'SO16120909', 'JFZ115GK428556', 'JFZ1E1439995', 'D1B2N6L2', 'WH', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19413', 'SO16120909', '2016-12-09', 'SJ16120570', 'SO16120909', 'JFZ113GK428555', 'JFZ1E1439994', 'D1B2N6L2', 'WH', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19414', 'SO16120909', '2016-12-09', 'SJ16120570', 'SO16120909', 'JFZ119GK428561', 'JFZ1E1439998', 'D1B2N6L2', 'WH', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19415', 'SO16120909', '2016-12-09', 'SJ16120570', 'SO16120909', 'JFZ117GK428588', 'JFZ1E1440025', 'D1B2N6L2', 'WH', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19416', 'SO16120909', '2016-12-09', 'SJ16120570', 'SO16120909', 'JFZ115GK428587', 'JFZ1E1440024', 'D1B2N6L2', 'WH', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19417', 'SO16120909', '2016-12-09', 'SJ16120570', 'SO16120909', 'JFZ218GK017991', 'JFZ2E1016899', 'D1I2N2M1', 'BK', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19418', 'SO16120909', '2016-12-09', 'SJ16120570', 'SO16120909', 'JFZ217GK017951', 'JFZ2E1016886', 'D1I2N2M1', 'BK', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19419', 'SO16120909', '2016-12-09', 'SJ16120570', 'SO16120909', 'JFZ215GK017902', 'JFZ2E1016805', 'D1I2N2M1', 'BK', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19420', 'SO16120909', '2016-12-09', 'SJ16120570', 'SO16120909', 'KC8217GK087800', 'KC82E1091060', 'H5C2R2SA', 'XM', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19421', 'SO16120909', '2016-12-09', 'SJ16120570', 'SO16120909', 'KC8212GK073495', 'KC82E1074734', 'H5C2R2SB', 'RD', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19422', 'SO16120909', '2016-12-09', 'SJ16120570', 'SO16120909', 'JBG116GK200470', 'JBG1E1197569', 'NF12ACF3', 'BB', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19423', 'SO16120909', '2016-12-09', 'SJ16120570', 'SO16120909', 'KB1113GK100005', 'KB11E1101636', 'Y3B2R71B', 'BK', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19424', 'SO16120448', '2016-12-09', 'SJ16120577', 'SO16120448', 'JFV116GK512037', 'JFV1E1519343', 'EF02N12S', 'BG', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19425', 'SO16120448', '2016-12-09', 'SJ16120577', 'SO16120448', 'JFV119GK512050', 'JFV1E1519330', 'EF02N12S', 'BG', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19426', 'SO16120448', '2016-12-09', 'SJ16120577', 'SO16120448', 'JFV118GK512041', 'JFV1E1519340', 'EF02N12S', 'BG', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19427', 'SO16120588', '2016-12-09', 'SJ16120577', 'SO16120588', 'JFX117GK209165', 'JFX1E1208113', 'D1A2N18M', 'RD', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19428', 'SO16120588', '2016-12-09', 'SJ16120577', 'SO16120588', 'JFY112GK066583', 'JFY1E1063660', 'D1A2N19M', 'BK', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19429', 'SO16120588', '2016-12-09', 'SJ16120577', 'SO16120588', 'KF1113GK913574', 'KF11E1912184', 'K1H2N14S', 'BK', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19430', 'SO16120588', '2016-12-09', 'SJ16120577', 'SO16120588', 'KF1110GK913600', 'KF11E1912209', 'K1H2N14S', 'BK', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19431', 'SO16120588', '2016-12-09', 'SJ16120577', 'SO16120588', 'KF1111GK906736', 'KF11E1905145', 'K1H2N14S', 'BR', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19432', 'SO16120588', '2016-12-09', 'SJ16120577', 'SO16120588', 'KF1112GK906728', 'KF11E1905137', 'K1H2N14S', 'BR', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19433', 'SO16120778', '2016-12-09', 'SJ16120577', 'SO16120778', 'JFV112GK512021', 'JFV1E1519322', 'EF02N12S', 'BG', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19434', 'SO16120778', '2016-12-09', 'SJ16120577', 'SO16120778', 'KF1118GK913599', 'KF11E1912208', 'K1H2N14S', 'BK', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19435', 'SO16120778', '2016-12-09', 'SJ16120577', 'SO16120778', 'KF1113GK906768', 'KF11E1905177', 'K1H2N14S', 'BR', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19436', 'SO16121100', '2016-12-10', 'SJ16120652', 'SO16121100', 'JFW111GK788681', 'JFW1E1794376', 'C1CN16M2', 'KC', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19437', 'SO16121100', '2016-12-10', 'SJ16120652', 'SO16121100', 'JM111XGK133959', 'JM11E1136210', 'D1B2N3L2', 'MP', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19438', 'SO16121100', '2016-12-10', 'SJ16120652', 'SO16121100', 'JM111XGK137929', 'JM11E1137227', 'D1B2N3L2', 'MP', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19439', 'SO16121100', '2016-12-10', 'SJ16120652', 'SO16121100', 'JM1116GK137393', 'JM11E1136660', 'D1B2N3L2', 'MP', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19440', 'SO16121100', '2016-12-10', 'SJ16120652', 'SO16121100', 'JM1118GK137394', 'JM11E1136669', 'D1B2N3L2', 'MP', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19441', 'SO16121100', '2016-12-10', 'SJ16120652', 'SO16121100', 'JFZ110GK427217', 'JFZ1E1432625', 'D1B2N6L2', 'WH', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19442', 'SO16121100', '2016-12-10', 'SJ16120652', 'SO16121100', 'JFZ218GK018333', 'JFZ2E1017224', 'D1I2N2M1', 'BK', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19443', 'SO16121100', '2016-12-10', 'SJ16120652', 'SO16121100', 'JFZ215GK017804', 'JFZ2E1016634', 'D1I2N2M1', 'BK', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19444', 'SO16121100', '2016-12-10', 'SJ16120652', 'SO16121100', 'JFZ217GK018422', 'JFZ2E1017323', 'D1I2N2M1', 'BK', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19445', 'SO16121100', '2016-12-10', 'SJ16120652', 'SO16121100', 'JFZ219GK018437', 'JFZ2E1017333', 'D1I2N2M1', 'BK', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19446', 'SO16121100', '2016-12-10', 'SJ16120652', 'SO16121100', 'JFZ212GK017579', 'JFZ2E1016580', 'D1I2N2M1', 'BK', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19447', 'SO16120588', '2016-12-10', 'SJ16120654', 'SO16120588', 'JBK118GK373796', 'JBK1E1371676', 'NFT13C01', 'BB', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19448', 'SO16120778', '2016-12-10', 'SJ16120654', 'SO16120778', 'JFY11XGK071370', 'JFY1E1069760', 'D1A2N9MA', 'GR', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19449', 'SO16120909', '2016-12-10', 'SJ16120654', 'SO16120909', 'JFX117GK201955', 'JFX1E1207070', 'D1A2N8MA', 'GR', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19450', 'SO16120909', '2016-12-10', 'SJ16120654', 'SO16120909', 'JM211XGK158155', 'JM21E1160180', 'D1B2N2L2', 'MP', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19451', 'SO16120909', '2016-12-10', 'SJ16120654', 'SO16120909', 'JM2117GK158064', 'JM21E1160086', 'D1B2N2L2', 'MP', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19452', 'SO16120909', '2016-12-10', 'SJ16120654', 'SO16120909', 'JM2111GK166600', 'JM21E1155983', 'D1B2N2L2', 'BK', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19453', 'SO16120909', '2016-12-10', 'SJ16120654', 'SO16120909', 'JM2119GK158065', 'JM21E1160088', 'D1B2N2L2', 'MP', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19454', 'SO16120909', '2016-12-10', 'SJ16120654', 'SO16120909', 'JM2115GK158161', 'JM21E1160400', 'D1B2N2L2', 'MP', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19455', 'SO16120909', '2016-12-10', 'SJ16120654', 'SO16120909', 'JM1119GK137386', 'JM11E1136662', 'D1B2N3L2', 'MP', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19456', 'SO16120909', '2016-12-10', 'SJ16120654', 'SO16120909', 'JM1117GK137418', 'JM11E1136694', 'D1B2N3L2', 'MP', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19457', 'SO16120909', '2016-12-10', 'SJ16120654', 'SO16120909', 'JFU117GK718977', 'JFU1E1723880', 'EF02N11S', 'BR', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19458', 'SO16120909', '2016-12-10', 'SJ16120654', 'SO16120909', 'JFV114GK511226', 'JFV1E1517537', 'EF02N12S', 'RD', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19459', 'SO16121100', '2016-12-10', 'SJ16120655', 'SO16121100', 'JM1115GK137384', 'JM11E1136659', 'D1B2N3L2', 'MP', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19460', 'SO16121100', '2016-12-10', 'SJ16120665', 'SO16121100', 'JM111XGK136635', 'JM11E1134015', 'D1B2N3L2', 'MC', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19461', 'SO16121100', '2016-12-10', 'SJ16120665', 'SO16121100', 'JM1117GK137600', 'JM11E1136804', 'D1B2N3L2', 'BP', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19462', 'SO16121100', '2016-12-10', 'SJ16120665', 'SO16121100', 'JM1116GK137605', 'JM11E1136882', 'D1B2N3L2', 'BP', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19463', 'SO16121100', '2016-12-10', 'SJ16120665', 'SO16121100', 'JM1112GK138878', 'JM11E1138172', 'D1B2N3L2', 'MC', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19464', 'SO16121100', '2016-12-10', 'SJ16120665', 'SO16121100', 'JM1110GK137602', 'JM11E1136880', 'D1B2N3L2', 'BP', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19465', 'SO16121100', '2016-12-10', 'SJ16120665', 'SO16121100', 'JM1118GK138867', 'JM11E1138159', 'D1B2N3L2', 'MC', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19466', 'SO16121100', '2016-12-10', 'SJ16120665', 'SO16121100', 'JM1114GK138865', 'JM11E1138157', 'D1B2N3L2', 'MC', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19467', 'SO16121100', '2016-12-10', 'SJ16120665', 'SO16121100', 'JM1112GK137603', 'JM11E1136881', 'D1B2N3L2', 'BP', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19468', 'SO16121100', '2016-12-10', 'SJ16120665', 'SO16121100', 'JFZ116GK427576', 'JFZ1E1438989', 'D1B2N6L2', 'WH', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19469', 'SO16121100', '2016-12-10', 'SJ16120665', 'SO16121100', 'JFZ114GK427592', 'JFZ1E1432891', 'D1B2N6L2', 'WH', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19470', 'SO16121100', '2016-12-10', 'SJ16120665', 'SO16121100', 'JFZ115GK427570', 'JFZ1E1438983', 'D1B2N6L2', 'WH', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);
INSERT INTO `penerimaan_motor_temp` VALUES ('19471', 'SO16121100', '2016-12-10', 'SJ16120665', 'SO16121100', 'JFZ110GK427590', 'JFZ1E1432890', 'D1B2N6L2', 'WH', '2016', '1', null, 'templateTerimaMotor46.xlsx', null, '6', null, null, null, null, null);

-- ----------------------------
-- Table structure for t_data_stnk_bpkb
-- ----------------------------
DROP TABLE IF EXISTS `t_data_stnk_bpkb`;
CREATE TABLE `t_data_stnk_bpkb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `noproses` varchar(25) DEFAULT NULL,
  `nama` varchar(75) DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  `nomesin` varchar(20) DEFAULT NULL,
  `norangka` varchar(35) DEFAULT NULL,
  `tipe_motor` varchar(15) DEFAULT NULL,
  `warna` varchar(100) DEFAULT NULL,
  `tahun` year(4) DEFAULT NULL,
  `nopolisi` varchar(25) DEFAULT NULL,
  `no_bpkb` varchar(25) DEFAULT NULL,
  `biro_jasa` varchar(50) DEFAULT NULL,
  `tgl_jadi_stnk` date DEFAULT NULL,
  `bon_biro_jasa_1` varchar(50) DEFAULT NULL,
  `tgl_jadi_bpkb` date DEFAULT NULL,
  `bon_biro_jasa_2` varchar(50) DEFAULT NULL,
  `no_bpkb_jadi` varchar(255) DEFAULT NULL,
  `biaya_tambahan_1` double DEFAULT NULL,
  `ket_1` text,
  `biaya_tambahan_2` double NOT NULL,
  `ket_2` text,
  `m_status` int(2) DEFAULT NULL,
  `sys_create_date` datetime DEFAULT NULL,
  `sys_update_date` datetime NOT NULL,
  `sys_delete_date` datetime DEFAULT NULL,
  `sys_create_user` int(11) DEFAULT NULL,
  `sys_update_user` int(11) DEFAULT NULL,
  `sys_delete_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_data_stnk_bpkb
-- ----------------------------
INSERT INTO `t_data_stnk_bpkb` VALUES ('1', 'SB-2016-12-000001', 'sss', ' asdsad', '54657', '34546', 'sdfsf', 'sdfssf', '2001', '2222', '2222', '', '2016-12-02', 'erer', '2016-12-02', 'ssss', 'ssss', '234', ' dfsf', '32424', ' sdfsf', '1', '2016-12-19 20:30:55', '0000-00-00 00:00:00', null, '6', null, null);

-- ----------------------------
-- Table structure for t_harga_motor
-- ----------------------------
DROP TABLE IF EXISTS `t_harga_motor`;
CREATE TABLE `t_harga_motor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `noso` varchar(25) NOT NULL,
  `cara_pembelian` varchar(15) DEFAULT NULL,
  `marketing` varchar(75) DEFAULT NULL,
  `leasing` varchar(15) DEFAULT NULL,
  `dp_system` float DEFAULT NULL,
  `diskon` float DEFAULT NULL,
  `tagih` float DEFAULT NULL,
  `dp` float DEFAULT NULL,
  `sisa_hutang` float DEFAULT NULL,
  `fee` float DEFAULT NULL,
  `m_status` int(2) DEFAULT NULL,
  `sys_create_date` datetime DEFAULT NULL,
  `sys_update_date` datetime DEFAULT NULL,
  `sys_delete_date` datetime DEFAULT NULL,
  `sys_create_user` int(11) DEFAULT NULL,
  `sys_update_user` int(11) DEFAULT NULL,
  `sys_delete_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_harga_motor
-- ----------------------------
INSERT INTO `t_harga_motor` VALUES ('1', 'SO/MKA-2016/XI/000001', 'Cash', 'Udin', 'WO', null, '1000000', '16500000', '10000000', '6500000', '500000', '4', '2016-11-16 04:58:18', null, null, '6', null, null);
INSERT INTO `t_harga_motor` VALUES ('2', '', 'Kredit', 'JONI ISKANDAR', 'WOM', null, '1', '0', '100000', '100000', '100000', '1', '2016-12-06 14:44:07', null, null, '6', null, null);
INSERT INTO `t_harga_motor` VALUES ('3', '', 'Kredit', 'IAN KASELA', 'WOM', null, '1', '0', '100000', '-100000000', '500000', '1', '2016-12-10 14:56:40', null, null, '6', null, null);
INSERT INTO `t_harga_motor` VALUES ('4', '', 'Kredit', 'Udin', 'WOM', null, '2000000', '3000000', '500000', '2500000', '500000', '1', '2016-12-15 20:56:49', null, null, '6', null, null);
INSERT INTO `t_harga_motor` VALUES ('5', '', 'Kredit', 'IAN KASELA', 'WO', null, '1000000', '0', '10000000', '-10', '500000', '1', '2016-12-16 09:40:03', null, null, '6', null, null);
INSERT INTO `t_harga_motor` VALUES ('6', '', 'Kredit', 'Herlina', null, null, '500000', '500000', '500000', '0', '250000', '1', '2016-12-20 15:54:14', null, null, '6', null, null);
INSERT INTO `t_harga_motor` VALUES ('7', '', null, '', null, null, '0', '0', '0', '0', '0', '1', '2016-12-21 21:49:13', null, null, '6', null, null);

-- ----------------------------
-- Table structure for t_kwitansi_diskon
-- ----------------------------
DROP TABLE IF EXISTS `t_kwitansi_diskon`;
CREATE TABLE `t_kwitansi_diskon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nokwitansi` varchar(25) DEFAULT NULL,
  `noso` varchar(25) DEFAULT NULL,
  `diskon` double DEFAULT NULL,
  `m_status` int(2) DEFAULT NULL,
  `sys_create_date` datetime DEFAULT NULL,
  `sys_update_date` datetime DEFAULT NULL,
  `sys_delete_date` datetime DEFAULT NULL,
  `sys_create_user` int(11) DEFAULT NULL,
  `sys_update_user` int(11) DEFAULT NULL,
  `sys_delete_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_kwitansi_diskon
-- ----------------------------
INSERT INTO `t_kwitansi_diskon` VALUES ('5', 'KWT/KDS-2016-XII-000001', 'SO/MKA-2016/XI/000001', '1000000', '4', '2016-12-12 16:18:49', null, null, '6', null, null);
INSERT INTO `t_kwitansi_diskon` VALUES ('6', 'KWT/KDS-2016-XII-000006', 'SO/MKA-2016/XI/000001', '1000000', '4', '2016-12-12 17:36:19', null, null, '6', null, null);

-- ----------------------------
-- Table structure for t_kwitansi_fee
-- ----------------------------
DROP TABLE IF EXISTS `t_kwitansi_fee`;
CREATE TABLE `t_kwitansi_fee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nokwitansi` varchar(25) DEFAULT NULL,
  `noso` varchar(25) DEFAULT NULL,
  `fee` double DEFAULT NULL,
  `m_status` int(11) DEFAULT NULL,
  `sys_create_date` datetime DEFAULT NULL,
  `sys_update_date` datetime DEFAULT NULL,
  `sys_delete_date` datetime DEFAULT NULL,
  `sys_create_user` int(11) DEFAULT NULL,
  `sys_update_user` int(11) DEFAULT NULL,
  `sys_delete_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_kwitansi_fee
-- ----------------------------
INSERT INTO `t_kwitansi_fee` VALUES ('7', 'KWT/KF-2016-XII-000001', 'SO/MKA-2016/XI/000001', '500000', '4', '2016-12-12 18:39:55', null, null, '6', null, null);
INSERT INTO `t_kwitansi_fee` VALUES ('8', 'KWT/KF-2016-XII-000008', 'SO/MKA-2016/XII/000009', '500000', '1', '2016-12-20 15:59:28', null, null, '6', null, null);
INSERT INTO `t_kwitansi_fee` VALUES ('9', 'KWT/KF-2016-XII-000009', 'SO/MKA-2016/XII/000007', '0', '1', '2016-12-21 21:56:40', null, null, '6', null, null);

-- ----------------------------
-- Table structure for t_pdi
-- ----------------------------
DROP TABLE IF EXISTS `t_pdi`;
CREATE TABLE `t_pdi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kdpdi` varchar(25) DEFAULT NULL,
  `noso` varchar(25) DEFAULT NULL,
  `tgl_pdi` date DEFAULT NULL,
  `pic` varchar(25) DEFAULT NULL,
  `list_ok` text,
  `list_empty` text,
  `m_status` int(2) DEFAULT NULL,
  `sys_create_date` date DEFAULT NULL,
  `sys_update_date` date DEFAULT NULL,
  `sys_delete_date` date DEFAULT NULL,
  `sys_create_user` int(11) DEFAULT NULL,
  `sys_update_user` int(11) DEFAULT NULL,
  `sys_delete_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_pdi
-- ----------------------------
INSERT INTO `t_pdi` VALUES ('2', 'PDI-14122016-000001', 'SO/MKA-2016/XI/000001', '2016-12-14', 'udin', null, null, '4', '2016-12-14', null, null, '6', null, null);
INSERT INTO `t_pdi` VALUES ('3', 'PDI-14122016-000003', 'SO/MKA-2016/XI/000001', '2016-12-14', 'Udin', null, null, '4', '2016-12-14', null, null, '6', null, null);

-- ----------------------------
-- Table structure for t_pembayaran
-- ----------------------------
DROP TABLE IF EXISTS `t_pembayaran`;
CREATE TABLE `t_pembayaran` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nokwitansi` varchar(25) DEFAULT NULL,
  `noso` varchar(25) DEFAULT NULL,
  `dp` double DEFAULT NULL,
  `transaksi` int(11) DEFAULT NULL,
  `nominal` double DEFAULT NULL,
  `sisa_pembayaran` double DEFAULT NULL,
  `fee` double DEFAULT NULL,
  `m_status` int(2) DEFAULT NULL,
  `sys_create_date` datetime DEFAULT NULL,
  `sys_update_date` datetime DEFAULT NULL,
  `sys_delete_date` datetime DEFAULT NULL,
  `sys_create_user` int(11) DEFAULT NULL,
  `sys_update_user` int(11) DEFAULT NULL,
  `sys_delete_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_pembayaran
-- ----------------------------
INSERT INTO `t_pembayaran` VALUES ('13', 'KWT/KD/2016/XII/000001', 'SO/MKA-2016/XI/000001', '10000000', '1', '70000', '7430000', '500', '4', '2016-12-12 17:35:07', null, null, '6', null, null);
INSERT INTO `t_pembayaran` VALUES ('14', null, 'SO/MKA-2016/XI/000001', '0', null, null, null, null, '4', '2016-12-14 17:35:04', null, null, '6', null, null);

-- ----------------------------
-- Table structure for t_penjualan
-- ----------------------------
DROP TABLE IF EXISTS `t_penjualan`;
CREATE TABLE `t_penjualan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nosj` varchar(25) DEFAULT NULL,
  `noso` varchar(25) DEFAULT NULL,
  `nokonsumen` varchar(25) DEFAULT NULL,
  `ktp` varchar(30) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `nomsn` varchar(20) DEFAULT NULL,
  `warna_motor` varchar(100) DEFAULT NULL,
  `harga_otr` float DEFAULT NULL,
  `m_status` enum('1','2','3','4') DEFAULT NULL,
  `sys_create_user` int(11) DEFAULT NULL,
  `sys_update_user` int(11) DEFAULT NULL,
  `sys_delete_user` int(11) DEFAULT NULL,
  `sys_create_date` datetime DEFAULT NULL,
  `sys_update_date` datetime DEFAULT NULL,
  `sys_delete_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_penjualan
-- ----------------------------
INSERT INTO `t_penjualan` VALUES ('1', 'SJ/MKA-2016/X/000001', 'SO/MKA-2016/X/000001', null, '0909090909', null, null, null, null, null, null, null, null, '2016-10-30 23:28:19', null, null);
INSERT INTO `t_penjualan` VALUES ('2', null, 'SO/MKA-2016/XI/000001', null, '1234', '2016-11-15', 'MSN0101010', 'WH', '17.5', '4', '6', null, null, '2016-11-16 04:58:18', null, null);
INSERT INTO `t_penjualan` VALUES ('3', null, 'SO/MKA-2016/XII/000001', null, '6723573294', '2016-12-06', 'MSN0101010', 'WH', '17500000', '4', '6', null, null, '2016-12-06 14:44:07', null, null);
INSERT INTO `t_penjualan` VALUES ('4', null, 'SO/MKA-2016/XII/000004', null, '6723573294', '2016-11-08', 'MSN0101010', 'WH', '17500000', '1', null, '6', null, null, '2016-12-06 17:27:43', null);
INSERT INTO `t_penjualan` VALUES ('5', null, 'SO/MKA-2016/XII/000005', null, '6723573294', '2016-12-06', 'RGK909090', 'RD', '20000000', '1', '6', null, null, '2016-12-06 19:12:38', null, null);
INSERT INTO `t_penjualan` VALUES ('6', null, 'SO/MKA-2016/XII/000006', null, '6723573294', '2016-12-10', 'RGK909090', 'RD', '20000000', '1', '6', null, null, '2016-12-10 14:56:40', null, null);
INSERT INTO `t_penjualan` VALUES ('7', null, 'SO/MKA-2016/XII/000007', null, '0909090909', '2016-12-15', 'MSN0101010', 'WH', '17500000', '1', '6', null, null, '2016-12-15 20:56:49', null, null);
INSERT INTO `t_penjualan` VALUES ('8', null, 'SO/MKA-2016/XII/000008', null, '6723573294', '2016-12-16', 'MSN0101010', 'WH', '17500000', '1', '6', null, null, '2016-12-16 09:40:03', null, null);
INSERT INTO `t_penjualan` VALUES ('9', null, 'SO/MKA-2016/XII/000009', null, '3171032402860014', '2016-12-20', 'MSN4576467', 'Merah', '20000000', '1', '6', null, null, '2016-12-20 15:54:14', null, null);
INSERT INTO `t_penjualan` VALUES ('10', null, 'SO/MKA-2016/XII/000009', null, '', '2016-12-21', '', '', '0', '1', '6', null, null, '2016-12-21 21:49:13', null, null);

-- ----------------------------
-- Table structure for t_stnk_bpkb
-- ----------------------------
DROP TABLE IF EXISTS `t_stnk_bpkb`;
CREATE TABLE `t_stnk_bpkb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `noproses` varchar(25) DEFAULT NULL,
  `noso` varchar(25) DEFAULT NULL,
  `tgl_proses_stnk` date DEFAULT NULL,
  `tgl_proses_bpkb` date DEFAULT NULL,
  `estimasi_stnk_selesai` date DEFAULT NULL,
  `estimasi_bpkb_selesai` date DEFAULT NULL,
  `ktp_stnk` varchar(35) DEFAULT NULL,
  `m_status` int(2) DEFAULT NULL,
  `sys_create_date` date DEFAULT NULL,
  `sys_update_date` date DEFAULT NULL,
  `sys_delete_date` date DEFAULT NULL,
  `sys_create_user` int(11) DEFAULT NULL,
  `sys_update_user` int(11) DEFAULT NULL,
  `sys_delete_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_stnk_bpkb
-- ----------------------------
INSERT INTO `t_stnk_bpkb` VALUES ('1', 'SB-2016-12-000001', 'SO/MKA-2016/XI/000001', '2016-12-19', '2016-12-20', '2017-01-02', '0000-00-00', '1234', '1', '2016-12-19', '0000-00-00', '0000-00-00', '6', null, null);
INSERT INTO `t_stnk_bpkb` VALUES ('2', 'SB-2016-12-000001', null, null, null, null, null, null, null, null, null, null, null, null, null);
