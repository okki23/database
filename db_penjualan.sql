/*
Navicat MySQL Data Transfer

Source Server         : localhost_mysql
Source Server Version : 50616
Source Host           : 127.0.0.1:3306
Source Database       : db_penjualan

Target Server Type    : MYSQL
Target Server Version : 50616
File Encoding         : 65001

Date: 2017-07-28 20:07:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tbl_barang
-- ----------------------------
DROP TABLE IF EXISTS `tbl_barang`;
CREATE TABLE `tbl_barang` (
  `barang_id` varchar(15) NOT NULL,
  `barang_nama` varchar(150) DEFAULT NULL,
  `barang_satuan` varchar(30) DEFAULT NULL,
  `barang_harpok` double DEFAULT NULL,
  `barang_harjul` double DEFAULT NULL,
  `barang_harjul_grosir` double DEFAULT NULL,
  `barang_stok` int(11) DEFAULT '0',
  `barang_min_stok` int(11) DEFAULT '0',
  `barang_tgl_input` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `barang_tgl_last_update` datetime DEFAULT NULL,
  `barang_kategori_id` int(11) DEFAULT NULL,
  `barang_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`barang_id`),
  KEY `barang_user_id` (`barang_user_id`),
  KEY `barang_kategori_id` (`barang_kategori_id`),
  CONSTRAINT `tbl_barang_ibfk_1` FOREIGN KEY (`barang_user_id`) REFERENCES `tbl_user` (`user_id`) ON UPDATE CASCADE,
  CONSTRAINT `tbl_barang_ibfk_2` FOREIGN KEY (`barang_kategori_id`) REFERENCES `tbl_kategori` (`kategori_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_barang
-- ----------------------------
INSERT INTO `tbl_barang` VALUES ('BR000001', 'Klem Kabel IKK No 7', 'Bks', '15000', '20000', '17000', '2', '1', '2016-11-23 06:30:50', null, '11', '1');
INSERT INTO `tbl_barang` VALUES ('BR000002', 'Klem Kabel IKK No 8', 'Bks', '16000', '20000', '18000', '2', '1', '2016-11-23 06:32:02', null, '11', '1');
INSERT INTO `tbl_barang` VALUES ('BR000003', 'Klem Kabel IKK No 9', 'Bks', '16000', '22000', '18500', '2', '1', '2016-11-23 06:33:08', null, '11', '1');
INSERT INTO `tbl_barang` VALUES ('BR000004', 'Klem Kabel IKK No 10', 'Bks', '17000', '24000', '19000', '2', '1', '2016-11-23 06:34:19', null, '11', '1');
INSERT INTO `tbl_barang` VALUES ('BR000005', 'Klem kabel dms No 6', 'Bks', '3000', '5000', '4000', '2', '1', '2016-11-23 06:35:23', null, '10', '1');
INSERT INTO `tbl_barang` VALUES ('BR000006', 'Klem kabel dms No 7', 'Bks', '3500', '6000', '4500', '2', '1', '2016-11-23 06:36:23', null, '10', '1');
INSERT INTO `tbl_barang` VALUES ('BR000007', 'Klem kabel dms No 8', 'Bks', '4000', '7000', '5000', '2', '1', '2016-11-23 06:37:20', null, '10', '1');
INSERT INTO `tbl_barang` VALUES ('BR000008', 'Klem kabel dms No 9', 'Bks', '4500', '8000', '5500', '2', '1', '2016-11-23 06:38:36', null, '10', '1');
INSERT INTO `tbl_barang` VALUES ('BR000009', 'Klem kabel dms No 10', 'Bks', '5000', '9000', '6000', '2', '1', '2016-11-23 06:39:24', null, '10', '1');
INSERT INTO `tbl_barang` VALUES ('BR000010', 'Klem kabel Steel No 6', 'Bks', '3100', '6000', '4000', '2', '1', '2016-11-23 06:40:49', null, '9', '1');
INSERT INTO `tbl_barang` VALUES ('BR000011', 'Klem kabel Steel No 7', 'Bks', '3400', '7000', '4500', '2', '1', '2016-11-23 06:41:43', null, '9', '1');
INSERT INTO `tbl_barang` VALUES ('BR000012', 'Klem kabel Steel No 8', 'Bks', '4200', '8000', '5500', '2', '1', '2016-11-23 06:42:42', null, '9', '1');
INSERT INTO `tbl_barang` VALUES ('BR000013', 'Klem kabel Steel No 9', 'Bks', '5000', '9000', '6000', '2', '1', '2016-11-23 06:43:37', null, '9', '1');
INSERT INTO `tbl_barang` VALUES ('BR000014', 'Klem kabel Steel No 10', 'Bks', '5750', '10000', '7000', '2', '1', '2016-11-23 06:44:49', null, '9', '1');
INSERT INTO `tbl_barang` VALUES ('BR000015', 'Saklar Engkel Fonic B', 'PCS', '6750', '10000', '7250', '2', '1', '2016-11-23 06:46:15', null, '8', '1');
INSERT INTO `tbl_barang` VALUES ('BR000016', 'Saklar Seri Fonic B', 'PCS', '8750', '12000', '9500', '2', '1', '2016-11-23 06:47:14', null, '8', '1');
INSERT INTO `tbl_barang` VALUES ('BR000017', 'Saklar Tridel Fonic B', 'PCS', '9500', '15000', '11500', '2', '1', '2016-11-23 06:48:03', null, '8', '1');
INSERT INTO `tbl_barang` VALUES ('BR000018', 'Saklar Engkel Fonic KK', 'PCS', '6750', '10000', '7250', '2', '1', '2016-11-23 06:48:47', null, '8', '1');
INSERT INTO `tbl_barang` VALUES ('BR000019', 'Saklar Seri Fonic KK', 'PCS', '8750', '12000', '9500', '2', '1', '2016-11-23 06:49:55', null, '8', '1');
INSERT INTO `tbl_barang` VALUES ('BR000020', 'Stok Kontak Fonic B', 'PCS', '8750', '12000', '9500', '2', '1', '2016-11-23 06:51:02', null, '8', '1');
INSERT INTO `tbl_barang` VALUES ('BR000021', 'Stop Kontak Fonic KK', 'PCS', '8750', '12000', '9500', '2', '1', '2016-11-23 06:52:11', null, '8', '1');
INSERT INTO `tbl_barang` VALUES ('BR000022', 'Saklar Engkel Sheineder B ', 'PCS', '14000', '18000', '15000', '2', '1', '2016-11-23 07:04:07', null, '7', '1');
INSERT INTO `tbl_barang` VALUES ('BR000023', 'Saklar Seri Sheineder B', 'PCS', '22000', '25000', '23000', '2', '1', '2016-11-23 07:17:36', null, '7', '1');
INSERT INTO `tbl_barang` VALUES ('BR000024', 'Stop Kontak Sheineder B', 'PCS', '16000', '20000', '17000', '1', '1', '2016-11-23 07:18:24', null, '7', '1');
INSERT INTO `tbl_barang` VALUES ('BR000026', 'MCB Sheineder 4A SNI', 'PCS', '35000', '50000', '40000', '2', '1', '2016-11-23 07:19:46', null, '7', '1');
INSERT INTO `tbl_barang` VALUES ('BR000027', 'MCB Sheineder 6A SNI', 'PCS', '35000', '50000', '40000', '2', '1', '2016-11-23 07:20:27', null, '7', '1');
INSERT INTO `tbl_barang` VALUES ('BR000028', 'MCB Sheineder 10A SNI', 'PCS', '35000', '50000', '40000', '2', '1', '2016-11-23 07:21:12', null, '7', '1');
INSERT INTO `tbl_barang` VALUES ('BR000029', 'MCB Sheineder 16A SNI', 'PCS', '47500', '70000', '55000', '2', '1', '2016-11-23 07:21:53', null, '7', '1');
INSERT INTO `tbl_barang` VALUES ('BR000030', 'MCB Sheineder 20A SNI', 'PCS', '47500', '70000', '55000', '2', '1', '2016-11-23 07:22:39', null, '7', '1');
INSERT INTO `tbl_barang` VALUES ('BR000031', 'MCB Sheineder 25A SNI', 'PCS', '47500', '70000', '55000', '2', '1', '2016-11-23 07:23:18', null, '7', '1');
INSERT INTO `tbl_barang` VALUES ('BR000032', 'Saklar Engkel Visalux B', 'PCS', '7250', '10000', '7750', '2', '1', '2016-11-23 07:33:27', '2016-11-22 16:33:57', '6', '1');
INSERT INTO `tbl_barang` VALUES ('BR000034', 'Stop Kontak Visalux B', 'PCS', '10250', '12000', '0', '1', '1', '2016-11-23 07:35:23', null, '6', '1');
INSERT INTO `tbl_barang` VALUES ('BR000038', 'Saklar Arde Visalux 2L', 'PCS', '8200', '9000', '12000', '0', '1', '2016-11-23 07:38:12', null, '6', '1');
INSERT INTO `tbl_barang` VALUES ('BR000039', 'Saklar Arde Visalux 3L', 'PCS', '10500', '15000', '11500', '2', '1', '2016-11-23 07:39:07', null, '6', '1');
INSERT INTO `tbl_barang` VALUES ('BR000040', 'Saklar Arde Visalux 4L', 'PCS', '13500', '18000', '14000', '2', '1', '2016-11-23 07:39:51', null, '6', '1');
INSERT INTO `tbl_barang` VALUES ('BR000041', 'Saklar Arde Visalux 5L', 'PCS', '15500', '22000', '18000', '2', '1', '2016-11-23 07:40:34', null, '6', '1');
INSERT INTO `tbl_barang` VALUES ('BR000042', 'Saklar Arde Visalux 6L', 'PCS', '19500', '25000', '21000', '2', '1', '2016-11-23 07:41:15', null, '6', '1');
INSERT INTO `tbl_barang` VALUES ('BR000043', 'Saklar Engkel Omi KK', 'PCS', '4500', '10000', '6000', '7', '1', '2016-11-23 07:52:21', '2016-11-29 14:35:29', '5', '1');
INSERT INTO `tbl_barang` VALUES ('BR000044', 'Saklar Seri Omi KK', 'PCS', '5700', '10000', '6500', '2', '1', '2016-11-23 07:53:37', null, '5', '1');
INSERT INTO `tbl_barang` VALUES ('BR000045', 'Stok Kontak Omi KK', 'PCS', '5700', '10000', '6500', '1', '1', '2016-11-23 07:54:31', null, '5', '1');
INSERT INTO `tbl_barang` VALUES ('BR000047', 'K. NYM 2x1,5 Voxel Per Meter', 'Meter', '6055', '8000', '6500', '2', '1', '2016-11-23 08:07:43', null, '12', '1');
INSERT INTO `tbl_barang` VALUES ('BR000049', 'K. NYM 2x2,5 Voxel Per Meter', 'Meter', '0', '10000', '9500', '2', '1', '2016-11-23 08:09:52', null, '12', '1');
INSERT INTO `tbl_barang` VALUES ('BR000051', 'K. NYM 3x1,5 Voxel Per Meter', 'Meter', '0', '10000', '9000', '2', '1', '2016-11-23 08:11:10', null, '12', '1');
INSERT INTO `tbl_barang` VALUES ('BR000052', 'K. NYM 3x2,5 Voxel Per Roll', 'Roll', '495000', '530000', '520000', '1', '1', '2016-11-23 08:11:54', null, '12', '1');
INSERT INTO `tbl_barang` VALUES ('BR000054', 'Antena Remot Misonic 850', 'PCS', '87500', '120000', '100000', '2', '1', '2016-11-23 23:51:12', null, '13', '1');
INSERT INTO `tbl_barang` VALUES ('BR000055', 'Antena Digital HD 10', 'PCS', '56000', '75000', '63000', '1', '1', '2016-11-23 23:52:37', null, '13', '1');
INSERT INTO `tbl_barang` VALUES ('BR000056', 'Antena Digital HD 12', 'PCS', '66000', '95000', '75000', '2', '1', '2016-11-23 23:53:21', null, '13', '1');
INSERT INTO `tbl_barang` VALUES ('BR000057', 'Antena Digital Indoor HD 14', 'PCS', '30000', '50000', '35000', '2', '1', '2016-11-23 23:54:09', null, '13', '1');
INSERT INTO `tbl_barang` VALUES ('BR000058', 'Antena Digital HD 19', 'PCS', '117500', '165000', '133000', '2', '1', '2016-11-23 23:54:53', null, '13', '1');
INSERT INTO `tbl_barang` VALUES ('BR000059', 'Antena Digital HD 5000', 'PCS', '106000', '145000', '120000', '2', '1', '2016-11-23 23:55:35', null, '13', '1');
INSERT INTO `tbl_barang` VALUES ('BR000060', 'Antena Digital + Remot PF 850', 'PCS', '95000', '125000', '105000', '2', '1', '2016-11-23 23:56:22', null, '13', '1');
INSERT INTO `tbl_barang` VALUES ('BR000061', 'Boster DX 9900', 'PCS', '69000', '95000', '75000', '2', '1', '2016-11-23 23:57:05', null, '13', '1');
INSERT INTO `tbl_barang` VALUES ('BR000062', 'Kabel Antena TV 15 Yard Enter', 'Roll', '13500', '20000', '15000', '2', '1', '2016-11-24 01:45:15', null, '14', '1');
INSERT INTO `tbl_barang` VALUES ('BR000063', 'Kabel Antena TV 20 Yard Enter', 'Roll', '16500', '24000', '19000', '2', '1', '2016-11-24 01:46:07', null, '14', '1');
INSERT INTO `tbl_barang` VALUES ('BR000064', 'Kabel Antena TV 100 Yard Enter', 'Roll', '82500', '110000', '95000', '2', '1', '2016-11-24 01:46:58', null, '14', '1');
INSERT INTO `tbl_barang` VALUES ('BR000065', 'Kabel Antena TV 300 Yard Enter', 'Roll', '125000', '285000', '275000', '2', '1', '2016-11-24 01:47:47', null, '14', '1');
INSERT INTO `tbl_barang` VALUES ('BR000067', 'Power Supply Tanaka', 'PCS', '21000', '30000', '23000', '2', '1', '2016-11-24 01:50:01', null, '15', '1');
INSERT INTO `tbl_barang` VALUES ('BR000068', 'Power Supply Remote', 'PCS', '35000', '50000', '40000', '2', '1', '2016-11-24 01:50:45', null, '15', '1');
INSERT INTO `tbl_barang` VALUES ('BR000069', 'RCA 1 In 1', 'PCS', '4000', '8000', '5000', '2', '1', '2016-11-24 01:52:09', null, '16', '1');
INSERT INTO `tbl_barang` VALUES ('BR000070', 'RCA 2 In 1 1,5M Enter', 'PCS', '3500', '10000', '4500', '2', '1', '2016-11-24 01:52:51', null, '16', '1');
INSERT INTO `tbl_barang` VALUES ('BR000071', 'RCA 2P In 1,2M Stell', 'PCS', '0', '8000', '6500', '1', '1', '2016-11-24 01:57:08', null, '16', '1');
INSERT INTO `tbl_barang` VALUES ('BR000072', 'RCA 3P In 1,2M Stell', 'PCS', '0', '10000', '7500', '2', '1', '2016-11-24 02:10:30', null, '16', '1');
INSERT INTO `tbl_barang` VALUES ('BR000073', 'RCA 3P In 1,5M APK', 'PCS', '6750', '13000', '7500', '2', '1', '2016-11-24 02:11:37', null, '16', '1');
INSERT INTO `tbl_barang` VALUES ('BR000075', 'AC Cord Komp Hitam 1,2', 'PCS', '6100', '10000', '7500', '2', '1', '2016-11-24 02:15:33', null, '17', '1');
INSERT INTO `tbl_barang` VALUES ('BR000076', 'AC Cord Komp Putih 1,2', 'PCS', '6600', '10000', '8000', '2', '1', '2016-11-24 02:16:17', null, '17', '1');
INSERT INTO `tbl_barang` VALUES ('BR000077', 'Jack Antena TV Jantan Hitam', 'PCS', '600', '2000', '750', '2', '1', '2016-11-24 02:24:27', null, '18', '1');
INSERT INTO `tbl_barang` VALUES ('BR000078', 'Jack Antena TV Betina Hitam', 'PCS', '700', '2000', '800', '2', '1', '2016-11-24 02:25:11', null, '18', '1');
INSERT INTO `tbl_barang` VALUES ('BR000079', 'SK Arde Esenze 2L', 'PCS', '6500', '10000', '7500', '2', '1', '2016-11-24 02:27:43', null, '19', '1');
INSERT INTO `tbl_barang` VALUES ('BR000080', 'SK Arde Esenze 4L', 'PCS', '11500', '18000', '12500', '2', '1', '2016-11-24 02:28:31', null, '19', '1');
INSERT INTO `tbl_barang` VALUES ('BR000083', 'SK Arde Augen 4L', 'PCS', '16500', '18000', '17000', '2', '1', '2016-11-24 02:35:29', null, '20', '1');
INSERT INTO `tbl_barang` VALUES ('BR000084', 'SK Arde Augen 5L', 'PCS', '19000', '22000', '20000', '2', '1', '2016-11-24 02:36:12', null, '20', '1');
INSERT INTO `tbl_barang` VALUES ('BR000085', 'SK Arde Augen 6L', 'PCS', '21000', '25000', '22000', '2', '1', '2016-11-24 02:37:10', null, '20', '1');
INSERT INTO `tbl_barang` VALUES ('BR000086', 'Skring Automatic Augen 6A ', 'PCS', '32500', '40000', '35000', '2', '1', '2016-11-24 02:37:57', null, '20', '1');
INSERT INTO `tbl_barang` VALUES ('BR000087', 'Skring Automatic Augen 10A', 'PCS', '32500', '40000', '35000', '2', '1', '2016-11-24 02:38:43', null, '20', '1');
INSERT INTO `tbl_barang` VALUES ('BR000088', 'Skring Automatic Augen 16A', 'PCS', '32500', '40000', '35000', '2', '1', '2016-11-24 02:40:32', null, '20', '1');
INSERT INTO `tbl_barang` VALUES ('BR000089', 'MCB Itami 4A SNI', 'PCS', '6000', '15000', '7500', '2', '1', '2016-11-24 03:20:37', null, '21', '1');
INSERT INTO `tbl_barang` VALUES ('BR000090', 'MCB Itami 20A SNI', 'PCS', '6000', '15000', '7500', '2', '1', '2016-11-24 03:21:24', null, '21', '1');
INSERT INTO `tbl_barang` VALUES ('BR000091', 'MCB Itami 25A SNI', 'PCS', '6000', '15000', '7500', '2', '1', '2016-11-24 03:22:19', null, '21', '1');
INSERT INTO `tbl_barang` VALUES ('BR000092', 'Skring Batu Itami 6A, 10A', 'PCS', '1000', '3000', '1350', '2', '1', '2016-11-24 03:23:08', null, '21', '1');
INSERT INTO `tbl_barang` VALUES ('BR000094', 'Steker Hitam Yaki', 'PCS', '650', '3000', '1000', '2', '1', '2016-11-24 03:25:58', null, '22', '1');
INSERT INTO `tbl_barang` VALUES ('BR000095', 'Steker Arde Rocko', 'PCS', '1350', '5000', '1600', '2', '1', '2016-11-24 03:26:43', null, '22', '1');
INSERT INTO `tbl_barang` VALUES ('BR000096', 'Steker Arde Dexta 638', 'PCS', '3000', '7000', '4600', '2', '1', '2016-11-24 03:27:27', null, '22', '1');
INSERT INTO `tbl_barang` VALUES ('BR000101', 'MCB New Pallas 6A', 'PCS', '7500', '15000', '8500', '2', '1', '2016-11-24 04:30:05', null, '23', '1');
INSERT INTO `tbl_barang` VALUES ('BR000102', 'MCB New Pallas 10A', 'PCS', '7500', '15000', '8500', '2', '1', '2016-11-24 04:31:32', null, '23', '1');
INSERT INTO `tbl_barang` VALUES ('BR000103', 'T. Multi Stanco SR 5303', 'PCS', '2350', '7000', '3500', '2', '1', '2016-11-24 04:32:27', null, '24', '1');
INSERT INTO `tbl_barang` VALUES ('BR000104', 'T. Multi Rocko', 'PCS', '1650', '5000', '3000', '2', '1', '2016-11-24 04:33:19', null, '24', '1');
INSERT INTO `tbl_barang` VALUES ('BR000105', 'T. Multi Monita', 'PCS', '3250', '7000', '3750', '2', '1', '2016-11-24 04:34:06', null, '24', '1');
INSERT INTO `tbl_barang` VALUES ('BR000106', 'Stand Fan 2 IN 1 16 Stanco SCS 1602', 'PCS', '165000', '187500', '225000', '2', '1', '2016-11-24 04:35:03', null, '24', '1');
INSERT INTO `tbl_barang` VALUES ('BR000107', 'Desk Fan 12’ Elegant Stanco SCD 1202', 'PCS', '135000', '170000', '145000', '2', '1', '2016-11-24 04:35:43', null, '24', '1');
INSERT INTO `tbl_barang` VALUES ('BR000108', 'Desk Fan 12’ Biasa Stanco SCD 1202', 'PCS', '125000', '160000', '135000', '2', '1', '2016-11-24 04:36:39', null, '24', '1');
INSERT INTO `tbl_barang` VALUES ('BR000109', 'Box Fan 12’ Stanco SCD 901', 'PCS', '140000', '175000', '152500', '2', '1', '2016-11-24 04:37:21', null, '24', '1');
INSERT INTO `tbl_barang` VALUES ('BR000110', 'Box Fan 12’ Stanco SCD 1201', 'PCS', '110000', '160000', '125000', '2', '1', '2016-11-24 04:38:05', null, '24', '1');
INSERT INTO `tbl_barang` VALUES ('BR000112', 'Industrial Fan 18’ SPF 109', 'PCS', '260000', '350000', '285000', '2', '1', '2016-11-24 04:39:21', null, '24', '1');
INSERT INTO `tbl_barang` VALUES ('BR000113', 'RN Biasa Stanco RN888', 'PCS', '29000', '40000', '32000', '2', '1', '2016-11-24 04:40:09', null, '24', '1');
INSERT INTO `tbl_barang` VALUES ('BR000114', 'Fiting Flapon S6 4 Starco 1203', 'PCS', '3700', '10000', '5000', '2', '1', '2016-11-24 04:41:11', null, '24', '1');
INSERT INTO `tbl_barang` VALUES ('BR000115', 'Fiting Flapon S6 8 Starco 1201', 'PCS', '3700', '10000', '5000', '2', '1', '2016-11-24 04:42:36', null, '24', '1');
INSERT INTO `tbl_barang` VALUES ('BR000116', 'Fiting Flapon Kombang S6 4 Starco 1202', 'PCS', '3700', '10000', '5000', '2', '1', '2016-11-24 04:43:21', null, '24', '1');
INSERT INTO `tbl_barang` VALUES ('BR000117', 'Fiting Flapon Sok FP10', 'PCS', '4850', '10000', '6500', '2', '1', '2016-11-24 04:48:33', null, '25', '1');
INSERT INTO `tbl_barang` VALUES ('BR000118', 'Fiting Flapon Fuji L', 'PCS', '1850', '5000', '2500', '1', '1', '2016-11-24 04:49:15', null, '25', '1');
INSERT INTO `tbl_barang` VALUES ('BR000119', 'Fiting Flapon Sok Biasa', 'PCS', '1850', '5000', '2500', '2', '1', '2016-11-24 04:50:01', null, '25', '1');
INSERT INTO `tbl_barang` VALUES ('BR000120', 'Fiting Flapon VLC', 'PCS', '4850', '10000', '6500', '2', '1', '2016-11-24 04:50:42', null, '25', '1');
INSERT INTO `tbl_barang` VALUES ('BR000121', 'T. Dos 5/8 Hitam', 'PCS', '300', '1000', '500', '2', '1', '2016-11-24 04:53:44', null, '26', '1');
INSERT INTO `tbl_barang` VALUES ('BR000122', 'T. Dos 3/4 Cab 3 Putih', 'PCS', '1300', '3000', '1750', '2', '1', '2016-11-24 04:54:34', null, '26', '1');
INSERT INTO `tbl_barang` VALUES ('BR000123', 'T. Dos 3/4 Cab 4 Putih', 'PCS', '1450', '4000', '1900', '2', '1', '2016-11-24 04:56:37', null, '26', '1');
INSERT INTO `tbl_barang` VALUES ('BR000124', 'L. Boh 5/8 P/H', 'PCS', '300', '1000', '500', '2', '1', '2016-11-24 04:57:21', null, '26', '1');
INSERT INTO `tbl_barang` VALUES ('BR000125', 'L. Boh 3/4 P', 'PCS', '1750', '3000', '2000', '2', '1', '2016-11-24 04:58:05', null, '26', '1');
INSERT INTO `tbl_barang` VALUES ('BR000126', 'Rolen', 'PCS', '75', '500', '150', '2', '1', '2016-11-24 04:58:48', null, '26', '1');
INSERT INTO `tbl_barang` VALUES ('BR000127', 'Tekong 1B Segi 4 Hiro', 'PCS', '1750', '3000', '1900', '2', '1', '2016-11-24 05:06:23', null, '27', '1');
INSERT INTO `tbl_barang` VALUES ('BR000128', 'Tekong 0B Segi 4 MK', 'PCS', '2200', '3000', '2500', '2', '1', '2016-11-24 05:07:09', null, '27', '1');
INSERT INTO `tbl_barang` VALUES ('BR000129', 'Tekong 0B Segi 4 Poisson', 'PCS', '1350', '3000', '1700', '1', '1', '2016-11-24 05:07:53', null, '27', '1');
INSERT INTO `tbl_barang` VALUES ('BR000130', 'Strika Maspion HA 110', 'PCS', '101000', '140000', '107500', '2', '1', '2016-11-24 05:09:44', null, '28', '1');
INSERT INTO `tbl_barang` VALUES ('BR000131', 'Strika Maspion EX 1000', 'PCS', '80000', '110000', '92500', '2', '1', '2016-11-24 05:10:44', null, '28', '1');
INSERT INTO `tbl_barang` VALUES ('BR000132', 'Strika Maspion HA 358', 'PCS', '86000', '115000', '97500', '2', '1', '2016-11-24 05:11:35', null, '28', '1');
INSERT INTO `tbl_barang` VALUES ('BR000133', 'Strika Maspion HA 130', 'PCS', '97000', '135000', '105000', '2', '1', '2016-11-24 05:12:47', null, '28', '1');
INSERT INTO `tbl_barang` VALUES ('BR000134', 'Strika Maspion HA 40', 'PCS', '102000', '150000', '120000', '2', '1', '2016-11-24 05:23:23', null, '28', '1');
INSERT INTO `tbl_barang` VALUES ('BR000135', 'Strika Maspion HA 30', 'PCS', '114000', '165000', '127500', '2', '1', '2016-11-24 05:24:16', null, '28', '1');
INSERT INTO `tbl_barang` VALUES ('BR000136', 'DF Maspion EX 307', 'PCS', '195000', '245000', '220000', '2', '1', '2016-11-24 05:25:02', null, '28', '1');
INSERT INTO `tbl_barang` VALUES ('BR000137', 'SF Maspion EX 1675', 'PCS', '266000', '325000', '285000', '2', '1', '2016-11-24 05:25:55', null, '28', '1');
INSERT INTO `tbl_barang` VALUES ('BR000138', 'BOX FAN Maspion EX 2109', 'PCS', '240000', '300000', '265000', '2', '1', '2016-11-24 05:27:16', null, '28', '1');
INSERT INTO `tbl_barang` VALUES ('BR000139', 'BOX FAN Maspion JF210iT', 'PCS', '260000', '325000', '285000', '2', '1', '2016-11-24 05:28:20', null, '28', '1');
INSERT INTO `tbl_barang` VALUES ('BR000140', 'Hexos Fan Maspion MV250 NEX 10’', 'PCS', '270000', '325000', '300000', '2', '1', '2016-11-24 05:29:30', null, '28', '1');
INSERT INTO `tbl_barang` VALUES ('BR000141', 'Hexos Fan Maspion MV250 NEX 12’', 'PCS', '285000', '350000', '315000', '2', '1', '2016-11-24 05:30:26', null, '28', '1');
INSERT INTO `tbl_barang` VALUES ('BR000142', 'Orbit Fan Maspion MOF 401D', 'PCS', '400000', '475000', '430000', '2', '1', '2016-11-24 05:31:25', null, '28', '1');
INSERT INTO `tbl_barang` VALUES ('BR000143', 'Kompor Gas Rinnai 522C', 'PCS', '260600', '300000', '270000', '2', '1', '2016-11-24 06:04:11', null, '29', '1');
INSERT INTO `tbl_barang` VALUES ('BR000144', 'Kompor Gas Rinnai 712C', 'PCS', '420000', '445000', '430000', '2', '1', '2016-11-24 06:05:19', null, '29', '1');
INSERT INTO `tbl_barang` VALUES ('BR000145', 'Kompor Gas Rinnai 511E', 'PCS', '175000', '182500', '200000', '2', '1', '2016-11-24 06:06:17', null, '29', '1');
INSERT INTO `tbl_barang` VALUES ('BR000146', 'Kompor Gas Rinnai 289RI', 'PCS', '385600', '440000', '410000', '2', '1', '2016-11-24 06:07:17', null, '29', '1');
INSERT INTO `tbl_barang` VALUES ('BR000147', 'Strika Miyako El 1000 M', 'PCS', '100000', '125000', '83600', '2', '1', '2016-11-24 06:09:00', null, '30', '1');
INSERT INTO `tbl_barang` VALUES ('BR000148', 'Strika Miyako El 1009 M', 'PCS', '102000', '145000', '115000', '2', '1', '2016-11-24 06:09:57', null, '30', '1');
INSERT INTO `tbl_barang` VALUES ('BR000149', 'M.Com Miyako 507 1,8 L ', 'PCS', '230000', '265000', '240000', '2', '1', '2016-11-24 06:11:28', null, '30', '1');
INSERT INTO `tbl_barang` VALUES ('BR000150', 'M.Com Miyako 508 1,8 L', 'PCS', '230000', '265000', '240000', '2', '1', '2016-11-24 06:12:18', null, '30', '1');
INSERT INTO `tbl_barang` VALUES ('BR000151', 'M.Com Miyako 509 1,8 L', 'PCS', '230000', '265000', '240000', '2', '1', '2016-11-24 06:13:21', null, '30', '1');
INSERT INTO `tbl_barang` VALUES ('BR000152', 'M.Com Miyako 606 0,6 L', 'PCS', '200000', '210000', '220000', '2', '1', '2016-11-24 06:14:12', null, '30', '1');
INSERT INTO `tbl_barang` VALUES ('BR000153', 'M.Com Miyako 612 1,2 L', 'PCS', '210000', '215000', '235000', '2', '1', '2016-11-24 06:23:42', null, '30', '1');
INSERT INTO `tbl_barang` VALUES ('BR000154', 'SF Miyako 1627', 'PCS', '243000', '270000', '250000', '2', '1', '2016-11-24 06:24:30', null, '30', '1');
INSERT INTO `tbl_barang` VALUES ('BR000158', 'DF Miyako 1227', 'PCS', '173000', '200000', '180000', '2', '1', '2016-11-24 06:26:39', null, '30', '1');
INSERT INTO `tbl_barang` VALUES ('BR000159', 'DIPS Myako HD 189', 'PCS', '145000', '165000', '150000', '2', '1', '2016-11-24 06:27:40', null, '30', '1');
INSERT INTO `tbl_barang` VALUES ('BR000160', 'DIPS Myako HD 190', 'PCS', '148000', '170000', '152000', '2', '1', '2016-11-24 06:28:24', null, '30', '1');
INSERT INTO `tbl_barang` VALUES ('BR000161', 'DIPS Myako HD 289', 'PCS', '285000', '315000', '295000', '2', '1', '2016-11-24 06:29:04', null, '30', '1');
INSERT INTO `tbl_barang` VALUES ('BR000162', 'T. Multi Uticon', 'PCS', '5500', '10000', '5500', '2', '1', '2016-11-24 06:40:31', null, '31', '1');
INSERT INTO `tbl_barang` VALUES ('BR000163', 'T. Arde Unicon', 'PCS', '15500', '20000', '15500', '2', '1', '2016-11-24 06:41:17', null, '31', '1');
INSERT INTO `tbl_barang` VALUES ('BR000164', 'T. Arde + Sfush', 'PCS', '15750', '25000', '19500', '2', '1', '2016-11-24 06:42:02', null, '31', '1');
INSERT INTO `tbl_barang` VALUES ('BR000165', 'DF Sekai 650', 'PCS', '105000', '125000', '110000', '2', '1', '2016-11-24 06:43:17', null, '32', '1');
INSERT INTO `tbl_barang` VALUES ('BR000166', 'DF Sekai 960', 'PCS', '160000', '185000', '165000', '2', '1', '2016-11-24 06:43:58', null, '32', '1');
INSERT INTO `tbl_barang` VALUES ('BR000167', 'DF Sekai 2 In 1 1060', 'PCS', '198000', '220000', '205000', '2', '1', '2016-11-24 06:44:48', null, '32', '1');
INSERT INTO `tbl_barang` VALUES ('BR000168', 'DF Sekai 2 In 1 1210', 'PCS', '249000', '275000', '260000', '2', '1', '2016-11-24 06:45:28', '2016-11-23 15:46:39', '32', '1');
INSERT INTO `tbl_barang` VALUES ('BR000169', 'SF Sekai 1808', 'PCS', '310000', '325000', '350000', '2', '1', '2016-11-24 06:46:11', null, '32', '1');
INSERT INTO `tbl_barang` VALUES ('BR000170', 'SF Sekai 1851', 'PCS', '360000', '415000', '370000', '2', '1', '2016-11-24 06:47:28', null, '32', '1');
INSERT INTO `tbl_barang` VALUES ('BR000171', 'Celling Sekai HCF 5683', 'PCS', '265000', '325000', '285000', '2', '1', '2016-11-24 06:48:18', null, '32', '1');
INSERT INTO `tbl_barang` VALUES ('BR000172', 'Wall Fan Sekai 1606', 'PCS', '210000', '265000', '230000', '2', '1', '2016-11-24 06:48:57', null, '32', '1');
INSERT INTO `tbl_barang` VALUES ('BR000173', 'Orbit Fan Sekai COF 1651', 'PCS', '300000', '375000', '330000', '2', '1', '2016-11-24 06:49:53', null, '32', '1');
INSERT INTO `tbl_barang` VALUES ('BR000174', 'Regancy 2 TW 18', 'PCS', '490000', '575000', '540000', '2', '1', '2016-11-24 06:52:23', null, '33', '1');
INSERT INTO `tbl_barang` VALUES ('BR000175', 'Regancy 2 TW 20', 'PCS', '550000', '600000', '585000', '1', '1', '2016-11-24 06:53:31', null, '33', '1');
INSERT INTO `tbl_barang` VALUES ('BR000176', 'PLC Amasco 2U 5W', 'PCS', '15525', '23000', '17250', '2', '1', '2016-11-24 06:54:45', null, '34', '1');
INSERT INTO `tbl_barang` VALUES ('BR000177', 'PLC Amasco 2U 8W', 'PCS', '16200', '24000', '18000', '2', '1', '2016-11-24 06:55:23', null, '34', '1');
INSERT INTO `tbl_barang` VALUES ('BR000178', 'PLC Amasco 2U 11W', 'PCS', '17550', '26000', '19500', '2', '1', '2016-11-24 06:56:09', null, '34', '1');
INSERT INTO `tbl_barang` VALUES ('BR000179', 'PLC Amasco 2U 14W', 'PCS', '18630', '27500', '20700', '2', '1', '2016-11-24 06:56:51', null, '34', '1');
INSERT INTO `tbl_barang` VALUES ('BR000180', 'PLC Amasco 3U 18W', 'PCS', '23625', '35000', '26250', '1', '1', '2016-11-24 06:57:30', null, '34', '1');
INSERT INTO `tbl_barang` VALUES ('BR000181', 'PLC Amasco 3U 23W', 'PCS', '25650', '38000', '28500', '2', '1', '2016-11-24 06:58:08', null, '34', '1');
INSERT INTO `tbl_barang` VALUES ('BR000182', 'PLC Amasco 3U 28W', 'PCS', '29700', '44000', '33000', '2', '1', '2016-11-24 06:58:47', null, '34', '1');
INSERT INTO `tbl_barang` VALUES ('BR000183', 'PLC Amasco 4U 45W', 'PCS', '42000', '60000', '45000', '2', '1', '2016-11-24 06:59:32', null, '34', '1');
INSERT INTO `tbl_barang` VALUES ('BR000185', 'Spiral Amasco 5W', 'PCS', '22800', '32000', '24000', '1', '1', '2016-11-24 07:00:47', null, '34', '1');
INSERT INTO `tbl_barang` VALUES ('BR000186', 'Spiral Amasco 8W', 'PCS', '22800', '32000', '24000', '2', '1', '2016-11-24 07:01:28', null, '34', '1');
INSERT INTO `tbl_barang` VALUES ('BR000187', 'Spiral Amasco 12W', 'PCS', '23900', '33500', '25125', '2', '1', '2016-11-24 07:02:08', null, '34', '1');
INSERT INTO `tbl_barang` VALUES ('BR000188', 'Spiral Amasco 15W', 'PCS', '26000', '36500', '27375', '2', '1', '2016-11-24 07:02:51', null, '34', '1');
INSERT INTO `tbl_barang` VALUES ('BR000189', 'Spiral Amasco 20W', 'PCS', '29925', '42000', '31500', '2', '1', '2016-11-24 07:23:25', null, '34', '1');
INSERT INTO `tbl_barang` VALUES ('BR000190', 'Spiral Amasco 24W', 'PCS', '32000', '45000', '33750', '2', '1', '2016-11-24 07:24:09', null, '34', '1');
INSERT INTO `tbl_barang` VALUES ('BR000191', 'Spiral Amasco 28W', 'PCS', '35700', '50000', '37500', '2', '1', '2016-11-24 07:24:49', null, '34', '1');
INSERT INTO `tbl_barang` VALUES ('BR000192', 'Spiral Amasco 45W', 'PCS', '53500', '75000', '56250', '2', '1', '2016-11-24 07:25:38', null, '34', '1');
INSERT INTO `tbl_barang` VALUES ('BR000194', 'LED Enter 3W', 'PCS', '3000', '5000', '3250', '2', '1', '2016-11-24 10:44:02', null, '35', '1');
INSERT INTO `tbl_barang` VALUES ('BR000195', 'LED Enter 5W', 'PCS', '4650', '7000', '5500', '2', '1', '2016-11-24 10:44:49', null, '35', '1');
INSERT INTO `tbl_barang` VALUES ('BR000196', 'LED Enter 7W', 'PCS', '5500', '10000', '7000', '1', '1', '2016-11-24 10:45:29', null, '35', '1');
INSERT INTO `tbl_barang` VALUES ('BR000197', 'LED Enter 9W', 'PCS', '7300', '12000', '8500', '2', '1', '2016-11-24 10:46:34', null, '35', '1');
INSERT INTO `tbl_barang` VALUES ('BR000198', 'LED Enter 12W', 'PCS', '8600', '15000', '10000', '2', '1', '2016-11-24 10:47:16', null, '35', '1');
INSERT INTO `tbl_barang` VALUES ('BR000199', 'LED Enter 15W', 'PCS', '10000', '18000', '12000', '2', '1', '2016-11-24 10:47:53', null, '35', '1');
INSERT INTO `tbl_barang` VALUES ('BR000200', 'LED Enter 18W', 'PCS', '11600', '20000', '13000', '2', '1', '2016-11-24 10:48:40', null, '35', '1');
INSERT INTO `tbl_barang` VALUES ('BR000201', 'LED Magic Enter 12W', 'PCS', '40000', '55000', '45000', '2', '1', '2016-11-24 10:54:24', null, '35', '1');
INSERT INTO `tbl_barang` VALUES ('BR000203', 'LED Licons 3W', 'PCS', '2650', '5000', '3500', '2', '1', '2016-11-24 12:02:33', null, '36', '1');
INSERT INTO `tbl_barang` VALUES ('BR000206', 'LED Licons 9W', 'PCS', '8000', '12000', '8750', '2', '1', '2016-11-24 12:07:20', null, '36', '1');
INSERT INTO `tbl_barang` VALUES ('BR000207', 'LED Licons 12W', 'PCS', '9800', '15000', '10000', '2', '1', '2016-11-24 12:08:10', null, '36', '1');
INSERT INTO `tbl_barang` VALUES ('BR000208', 'Essial Philips 5W', 'PCS', '23200', '25000', '23700', '2', '1', '2016-11-24 12:12:51', null, '37', '1');
INSERT INTO `tbl_barang` VALUES ('BR000209', 'Essial Philips 8W', 'PCS', '25800', '28000', '26500', '2', '1', '2016-11-24 12:13:57', null, '37', '1');
INSERT INTO `tbl_barang` VALUES ('BR000210', 'Essial Philips 11W', 'PCS', '29550', '32000', '30000', '2', '1', '2016-11-24 12:15:03', '2016-11-23 21:17:09', '37', '1');
INSERT INTO `tbl_barang` VALUES ('BR000211', 'Essial Philips 14W', 'PCS', '32150', '36000', '32800', '2', '1', '2016-11-24 12:15:46', '2016-11-23 21:17:24', '37', '1');
INSERT INTO `tbl_barang` VALUES ('BR000212', 'Essial Philips 18W', 'PCS', '33250', '38000', '34000', '2', '1', '2016-11-24 12:16:46', null, '37', '1');
INSERT INTO `tbl_barang` VALUES ('BR000213', 'Essial Philips 23W', 'PCS', '40300', '43000', '41000', '2', '1', '2016-11-24 12:18:19', null, '37', '1');
INSERT INTO `tbl_barang` VALUES ('BR000214', 'Sitrang Philips 20 5W', 'PCS', '17650', '20000', '18150', '2', '1', '2016-11-24 12:19:57', null, '37', '1');
INSERT INTO `tbl_barang` VALUES ('BR000215', 'Sitrang Philips 20 8W', 'PCS', '19050', '25000', '19550', '2', '1', '2016-11-24 12:21:06', null, '37', '1');
INSERT INTO `tbl_barang` VALUES ('BR000216', 'Sitrang Philips 20 11W', 'PCS', '20950', '27000', '21450', '2', '1', '2016-11-24 12:22:21', null, '37', '1');
INSERT INTO `tbl_barang` VALUES ('BR000217', 'Sitrang Philips 20 18W', 'PCS', '25500', '35000', '26000', '2', '1', '2016-11-24 12:23:28', null, '37', '1');
INSERT INTO `tbl_barang` VALUES ('BR000218', 'Sitrang Philips 20 23W', 'PCS', '28950', '37000', '29450', '2', '1', '2016-11-24 12:24:10', null, '37', '1');
INSERT INTO `tbl_barang` VALUES ('BR000219', 'Spiral Philips 5W', 'PCS', '36250', '40000', '36750', '2', '1', '2016-11-24 12:24:49', null, '37', '1');
INSERT INTO `tbl_barang` VALUES ('BR000220', 'Spiral Philips 8W', 'PCS', '37700', '40000', '38200', '2', '1', '2016-11-24 12:25:33', null, '37', '1');
INSERT INTO `tbl_barang` VALUES ('BR000221', 'Spiral Philips 12W', 'PCS', '38050', '42000', '38550', '2', '1', '2016-11-24 12:26:16', null, '37', '1');
INSERT INTO `tbl_barang` VALUES ('BR000222', 'Spiral Philips 15W', 'PCS', '40750', '42000', '41250', '2', '1', '2016-11-24 12:27:02', null, '37', '1');
INSERT INTO `tbl_barang` VALUES ('BR000223', 'Spiral Philips 20W', 'PCS', '43800', '50000', '44200', '2', '1', '2016-11-24 12:27:45', null, '37', '1');
INSERT INTO `tbl_barang` VALUES ('BR000224', 'Spiral Philips 24W', 'PCS', '48350', '55000', '49500', '2', '1', '2016-11-24 12:28:22', null, '37', '1');
INSERT INTO `tbl_barang` VALUES ('BR000225', 'Spiral Philips  Helix 32W', 'PCS', '57400', '65000', '57500', '2', '1', '2016-11-24 12:29:26', null, '37', '1');
INSERT INTO `tbl_barang` VALUES ('BR000226', 'Spiral Philips  Helix 42W', 'PCS', '68400', '75000', '68500', '2', '1', '2016-11-24 12:33:15', null, '37', '1');
INSERT INTO `tbl_barang` VALUES ('BR000227', 'Spiral Philips  Helix 52W', 'PCS', '98400', '110000', '100000', '2', '1', '2016-11-24 12:33:51', null, '37', '1');
INSERT INTO `tbl_barang` VALUES ('BR000230', 'Stater Philips 510', 'PCS', '3350', '5000', '3500', '2', '1', '2016-11-24 12:35:10', null, '37', '1');
INSERT INTO `tbl_barang` VALUES ('BR000234', 'TLD Ospam 36W', 'PCS', '9600', '15000', '10000', '2', '1', '2016-11-24 12:37:22', null, '37', '1');
INSERT INTO `tbl_barang` VALUES ('BR000235', 'Gembok Nissan Pendek 30', 'PCS', '9000', '15000', '10500', '2', '1', '2016-11-24 12:39:11', null, '38', '1');
INSERT INTO `tbl_barang` VALUES ('BR000236', 'Gembok Nissan Panjang 30', 'PCS', '9750', '18000', '13500', '2', '1', '2016-11-24 12:39:50', '2016-11-23 21:40:47', '38', '1');
INSERT INTO `tbl_barang` VALUES ('BR000237', 'Gembok Nissan Pendek 40', 'PCS', '12000', '20000', '14000', '2', '1', '2016-11-24 12:40:30', null, '38', '1');
INSERT INTO `tbl_barang` VALUES ('BR000238', 'Gembok Nissan Panjang 40', 'PCS', '13000', '24000', '18000', '2', '1', '2016-11-24 12:41:23', null, '38', '1');
INSERT INTO `tbl_barang` VALUES ('BR000239', 'Gembok Nissan Pendek 50', 'PCS', '15000', '25000', '17500', '2', '1', '2016-11-24 12:42:03', null, '38', '1');
INSERT INTO `tbl_barang` VALUES ('BR000240', 'Gembok Nissan Panjang 50', 'PCS', '16250', '30000', '22500', '2', '1', '2016-11-24 12:44:58', null, '38', '1');
INSERT INTO `tbl_barang` VALUES ('BR000241', 'Gembok Nissan Pendek 60', 'PCS', '18000', '30000', '21000', '2', '1', '2016-11-24 12:45:37', null, '38', '1');
INSERT INTO `tbl_barang` VALUES ('BR000242', 'Gembok Nissan Panjang 60', 'PCS', '19500', '36000', '27000', '2', '1', '2016-11-24 12:46:28', null, '38', '1');
INSERT INTO `tbl_barang` VALUES ('BR000243', 'K.Ties 3 Amc (80X2,5mm)', 'Bks', '3100', '6000', '4000', '2', '1', '2016-11-24 12:47:53', null, '39', '1');
INSERT INTO `tbl_barang` VALUES ('BR000244', 'K.Ties 4 Amc (100X2,5mm)', 'Bks', '3500', '7000', '4000', '2', '1', '2016-11-24 12:48:29', null, '39', '1');
INSERT INTO `tbl_barang` VALUES ('BR000245', 'K.Ties 6 Amc (150X2,5mm)', 'Bks', '6100', '10000', '7000', '2', '1', '2016-11-24 12:49:06', null, '39', '1');
INSERT INTO `tbl_barang` VALUES ('BR000246', 'K.Ties 6 Amc (180X3,6mm)', 'Bks', '8800', '12000', '10000', '2', '1', '2016-11-24 12:49:53', null, '39', '1');
INSERT INTO `tbl_barang` VALUES ('BR000247', 'K.Ties 8 Amc (200X3,6mm)', 'Bks', '12200', '15000', '13000', '2', '1', '2016-11-24 12:50:36', null, '39', '1');
INSERT INTO `tbl_barang` VALUES ('BR000248', 'K.Ties 8 Amc (200X4,8mm)', 'Bks', '17000', '22000', '18000', '2', '1', '2016-11-24 12:51:22', null, '39', '1');
INSERT INTO `tbl_barang` VALUES ('BR000249', 'K.Ties 10 Amc (250X3,6mm)', 'Bks', '15200', '20000', '16000', '2', '1', '2016-11-24 12:52:04', null, '39', '1');
INSERT INTO `tbl_barang` VALUES ('BR000250', 'K.Ties 10 Amc (200X4,8mm)', 'Bks', '21500', '25000', '23000', '2', '1', '2016-11-24 12:52:44', null, '39', '1');
INSERT INTO `tbl_barang` VALUES ('BR000251', 'Klem Kabel Amc No 7', 'Bks', '3250', '6000', '4000', '2', '1', '2016-11-24 12:53:29', null, '39', '1');
INSERT INTO `tbl_barang` VALUES ('BR000252', 'Klem Kabel Amc No 8', 'Bks', '3850', '7000', '4500', '2', '1', '2016-11-24 12:54:13', null, '39', '1');
INSERT INTO `tbl_barang` VALUES ('BR000253', 'Klem Kabel Amc No 9', 'Bks', '4200', '8000', '5000', '2', '1', '2016-11-24 12:55:00', null, '39', '1');
INSERT INTO `tbl_barang` VALUES ('BR000254', 'Klem Kabel Amc No 10', 'Bks', '4600', '9000', '5500', '0', '1', '2016-11-24 12:55:45', null, '39', '1');
INSERT INTO `tbl_barang` VALUES ('BR000255', 'Avexir ', 'Unit', '260000', '280000', '250000', '9', '2', '2017-07-28 16:14:43', null, '12', '1');

-- ----------------------------
-- Table structure for tbl_beli
-- ----------------------------
DROP TABLE IF EXISTS `tbl_beli`;
CREATE TABLE `tbl_beli` (
  `beli_nofak` varchar(15) DEFAULT NULL,
  `beli_tanggal` date DEFAULT NULL,
  `beli_suplier_id` int(11) DEFAULT NULL,
  `beli_user_id` int(11) DEFAULT NULL,
  `beli_kode` varchar(15) NOT NULL,
  PRIMARY KEY (`beli_kode`),
  KEY `beli_user_id` (`beli_user_id`),
  KEY `beli_suplier_id` (`beli_suplier_id`),
  KEY `beli_id` (`beli_kode`),
  CONSTRAINT `tbl_beli_ibfk_1` FOREIGN KEY (`beli_user_id`) REFERENCES `tbl_user` (`user_id`) ON UPDATE CASCADE,
  CONSTRAINT `tbl_beli_ibfk_2` FOREIGN KEY (`beli_suplier_id`) REFERENCES `tbl_suplier` (`suplier_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_beli
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_detail_beli
-- ----------------------------
DROP TABLE IF EXISTS `tbl_detail_beli`;
CREATE TABLE `tbl_detail_beli` (
  `d_beli_id` int(11) NOT NULL AUTO_INCREMENT,
  `d_beli_nofak` varchar(15) DEFAULT NULL,
  `d_beli_barang_id` varchar(15) DEFAULT NULL,
  `d_beli_harga` double DEFAULT NULL,
  `d_beli_jumlah` int(11) DEFAULT NULL,
  `d_beli_total` double DEFAULT NULL,
  `d_beli_kode` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`d_beli_id`),
  KEY `d_beli_barang_id` (`d_beli_barang_id`),
  KEY `d_beli_nofak` (`d_beli_nofak`),
  KEY `d_beli_kode` (`d_beli_kode`),
  CONSTRAINT `tbl_detail_beli_ibfk_1` FOREIGN KEY (`d_beli_barang_id`) REFERENCES `tbl_barang` (`barang_id`) ON UPDATE CASCADE,
  CONSTRAINT `tbl_detail_beli_ibfk_2` FOREIGN KEY (`d_beli_kode`) REFERENCES `tbl_beli` (`beli_kode`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_detail_beli
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_detail_jual
-- ----------------------------
DROP TABLE IF EXISTS `tbl_detail_jual`;
CREATE TABLE `tbl_detail_jual` (
  `d_jual_id` int(11) NOT NULL AUTO_INCREMENT,
  `d_jual_nofak` varchar(15) DEFAULT NULL,
  `d_jual_barang_id` varchar(15) DEFAULT NULL,
  `d_jual_barang_nama` varchar(150) DEFAULT NULL,
  `d_jual_barang_satuan` varchar(30) DEFAULT NULL,
  `d_jual_barang_harpok` double DEFAULT NULL,
  `d_jual_barang_harjul` double DEFAULT NULL,
  `d_jual_qty` int(11) DEFAULT NULL,
  `d_jual_diskon` double DEFAULT NULL,
  `d_jual_total` double DEFAULT NULL,
  PRIMARY KEY (`d_jual_id`),
  KEY `d_jual_barang_id` (`d_jual_barang_id`),
  KEY `d_jual_nofak` (`d_jual_nofak`),
  CONSTRAINT `tbl_detail_jual_ibfk_1` FOREIGN KEY (`d_jual_barang_id`) REFERENCES `tbl_barang` (`barang_id`) ON UPDATE CASCADE,
  CONSTRAINT `tbl_detail_jual_ibfk_2` FOREIGN KEY (`d_jual_nofak`) REFERENCES `tbl_jual` (`jual_nofak`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_detail_jual
-- ----------------------------
INSERT INTO `tbl_detail_jual` VALUES ('1', '241116000001', 'BR000001', 'Klem Kabel IKK No 7', 'Bks', '15000', '20000', '1', '0', '20000');
INSERT INTO `tbl_detail_jual` VALUES ('2', '241116000002', 'BR000002', 'Klem Kabel IKK No 8', 'Bks', '16000', '20000', '1', '0', '20000');
INSERT INTO `tbl_detail_jual` VALUES ('3', '241116000003', 'BR000003', 'Klem Kabel IKK No 9', 'Bks', '16000', '22000', '1', '0', '22000');
INSERT INTO `tbl_detail_jual` VALUES ('4', '241116000004', 'BR000045', 'Stok Kontak Omi KK', 'PCS', '5700', '10000', '1', '0', '10000');
INSERT INTO `tbl_detail_jual` VALUES ('5', '241116000005', 'BR000005', 'Klem kabel dms No 6', 'Bks', '3000', '5000', '1', '0', '5000');
INSERT INTO `tbl_detail_jual` VALUES ('6', '241116000006', 'BR000006', 'Klem kabel dms No 7', 'Bks', '3500', '6000', '1', '0', '6000');
INSERT INTO `tbl_detail_jual` VALUES ('7', '241116000007', 'BR000008', 'Klem kabel dms No 9', 'Bks', '4500', '8000', '1', '0', '8000');
INSERT INTO `tbl_detail_jual` VALUES ('8', '241116000008', 'BR000010', 'Klem kabel Steel No 6', 'Bks', '3100', '6000', '1', '0', '6000');
INSERT INTO `tbl_detail_jual` VALUES ('9', '241116000008', 'BR000011', 'Klem kabel Steel No 7', 'Bks', '3400', '7000', '1', '0', '7000');
INSERT INTO `tbl_detail_jual` VALUES ('10', '241116000009', 'BR000013', 'Klem kabel Steel No 9', 'Bks', '5000', '6000', '1', '0', '6000');
INSERT INTO `tbl_detail_jual` VALUES ('11', '251116000001', 'BR000043', 'Saklar Engkel Omi KK', 'PCS', '4500', '10000', '1', '0', '10000');
INSERT INTO `tbl_detail_jual` VALUES ('12', '251116000001', 'BR000038', 'Saklar Arde Visalux 2L', 'PCS', '8200', '9000', '1', '0', '9000');
INSERT INTO `tbl_detail_jual` VALUES ('13', '291116000001', 'BR000043', 'Saklar Engkel Omi KK', 'PCS', '4500', '10000', '1', '0', '10000');
INSERT INTO `tbl_detail_jual` VALUES ('14', '291116000001', 'BR000056', 'Antena Digital HD 12', 'PCS', '66000', '95000', '1', '0', '95000');
INSERT INTO `tbl_detail_jual` VALUES ('15', '291116000002', 'BR000030', 'MCB Sheineder 20A SNI', 'PCS', '47500', '70000', '1', '2000', '68000');
INSERT INTO `tbl_detail_jual` VALUES ('16', '291116000003', 'BR000012', 'Klem kabel Steel No 8', 'Bks', '4200', '8000', '1', '0', '8000');
INSERT INTO `tbl_detail_jual` VALUES ('17', '291116000004', 'BR000032', 'Saklar Engkel Visalux B', 'PCS', '7250', '10000', '1', '0', '10000');
INSERT INTO `tbl_detail_jual` VALUES ('18', '291116000005', 'BR000045', 'Stok Kontak Omi KK', 'PCS', '5700', '10000', '1', '0', '10000');
INSERT INTO `tbl_detail_jual` VALUES ('19', '291116000006', 'BR000024', 'Stop Kontak Sheineder B', 'PCS', '16000', '20000', '1', '0', '20000');
INSERT INTO `tbl_detail_jual` VALUES ('20', '291116000006', 'BR000038', 'Saklar Arde Visalux 2L', 'PCS', '8200', '9000', '1', '0', '9000');
INSERT INTO `tbl_detail_jual` VALUES ('21', '291116000007', 'BR000038', 'Saklar Arde Visalux 2L', 'PCS', '8200', '9000', '1', '0', '9000');
INSERT INTO `tbl_detail_jual` VALUES ('22', '240117000001', 'BR000043', 'Saklar Engkel Omi KK', 'PCS', '4500', '10000', '1', '0', '10000');
INSERT INTO `tbl_detail_jual` VALUES ('23', '240117000002', 'BR000043', 'Saklar Engkel Omi KK', 'PCS', '4500', '10000', '1', '0', '10000');
INSERT INTO `tbl_detail_jual` VALUES ('24', '290317000001', 'BR000034', 'Stop Kontak Visalux B', 'PCS', '10250', '12000', '1', '0', '12000');
INSERT INTO `tbl_detail_jual` VALUES ('25', '290317000001', 'BR000043', 'Saklar Engkel Omi KK', 'PCS', '4500', '10000', '1', '0', '10000');
INSERT INTO `tbl_detail_jual` VALUES ('26', '280717000001', 'BR000255', 'Avexir ', 'Unit', '260000', '280000', '1', '25000', '255000');
INSERT INTO `tbl_detail_jual` VALUES ('27', '280717000001', 'BR000254', 'Klem Kabel Amc No 10', 'Bks', '4600', '9000', '2', '0', '18000');

-- ----------------------------
-- Table structure for tbl_jual
-- ----------------------------
DROP TABLE IF EXISTS `tbl_jual`;
CREATE TABLE `tbl_jual` (
  `jual_nofak` varchar(15) NOT NULL,
  `jual_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `jual_total` double DEFAULT NULL,
  `jual_jml_uang` double DEFAULT NULL,
  `jual_kembalian` double DEFAULT NULL,
  `jual_user_id` int(11) DEFAULT NULL,
  `jual_keterangan` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`jual_nofak`),
  KEY `jual_user_id` (`jual_user_id`),
  CONSTRAINT `tbl_jual_ibfk_1` FOREIGN KEY (`jual_user_id`) REFERENCES `tbl_user` (`user_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_jual
-- ----------------------------
INSERT INTO `tbl_jual` VALUES ('240117000001', '2017-01-24 22:07:07', '10000', '20000', '10000', '1', 'eceran');
INSERT INTO `tbl_jual` VALUES ('240117000002', '2017-01-24 22:07:26', '10000', '20000', '10000', '1', 'eceran');
INSERT INTO `tbl_jual` VALUES ('241116000001', '2016-11-25 00:42:06', '20000', '20000', '0', '1', 'eceran');
INSERT INTO `tbl_jual` VALUES ('241116000002', '2016-11-25 00:49:58', '20000', '20000', '0', '1', 'eceran');
INSERT INTO `tbl_jual` VALUES ('241116000003', '2016-11-25 00:55:48', '22000', '22000', '0', '1', 'eceran');
INSERT INTO `tbl_jual` VALUES ('241116000004', '2016-11-25 00:59:38', '10000', '10000', '0', '1', 'eceran');
INSERT INTO `tbl_jual` VALUES ('241116000005', '2016-11-25 01:21:24', '5000', '20000', '15000', '1', 'eceran');
INSERT INTO `tbl_jual` VALUES ('241116000006', '2016-11-25 01:27:01', '6000', '7000', '1000', '1', 'eceran');
INSERT INTO `tbl_jual` VALUES ('241116000007', '2016-11-25 01:29:43', '8000', '10000', '2000', '1', 'eceran');
INSERT INTO `tbl_jual` VALUES ('241116000008', '2016-11-25 01:32:01', '13000', '15000', '2000', '1', 'eceran');
INSERT INTO `tbl_jual` VALUES ('241116000009', '2016-11-25 02:47:50', '6000', '7000', '1000', '1', 'grosir');
INSERT INTO `tbl_jual` VALUES ('251116000001', '2016-11-26 05:07:15', '19000', '60000', '41000', '1', 'eceran');
INSERT INTO `tbl_jual` VALUES ('280717000001', '2017-07-28 16:17:44', '273000', '280000', '7000', '1', 'eceran');
INSERT INTO `tbl_jual` VALUES ('290317000001', '2017-03-29 20:35:49', '22000', '56000', '34000', '1', 'eceran');
INSERT INTO `tbl_jual` VALUES ('291116000001', '2016-11-30 02:11:48', '105000', '120000', '15000', '1', 'eceran');
INSERT INTO `tbl_jual` VALUES ('291116000002', '2016-11-30 02:49:20', '68000', '70000', '2000', '1', 'eceran');
INSERT INTO `tbl_jual` VALUES ('291116000003', '2016-11-30 02:57:17', '8000', '10000', '2000', '1', 'eceran');
INSERT INTO `tbl_jual` VALUES ('291116000004', '2016-11-30 02:58:35', '10000', '12000', '2000', '1', 'eceran');
INSERT INTO `tbl_jual` VALUES ('291116000005', '2016-11-30 05:10:10', '10000', '10000', '0', '1', 'eceran');
INSERT INTO `tbl_jual` VALUES ('291116000006', '2016-11-30 05:23:40', '29000', '30000', '1000', '1', 'eceran');
INSERT INTO `tbl_jual` VALUES ('291116000007', '2016-11-30 05:41:08', '9000', '10000', '1000', '2', 'eceran');

-- ----------------------------
-- Table structure for tbl_kategori
-- ----------------------------
DROP TABLE IF EXISTS `tbl_kategori`;
CREATE TABLE `tbl_kategori` (
  `kategori_id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori_nama` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`kategori_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_kategori
-- ----------------------------
INSERT INTO `tbl_kategori` VALUES ('5', 'Omi');
INSERT INTO `tbl_kategori` VALUES ('6', 'Visalux');
INSERT INTO `tbl_kategori` VALUES ('7', 'Sheineder');
INSERT INTO `tbl_kategori` VALUES ('8', 'Fonic');
INSERT INTO `tbl_kategori` VALUES ('9', 'Steel');
INSERT INTO `tbl_kategori` VALUES ('10', 'DMS');
INSERT INTO `tbl_kategori` VALUES ('11', 'IKK');
INSERT INTO `tbl_kategori` VALUES ('12', 'Voxel');
INSERT INTO `tbl_kategori` VALUES ('13', 'Antena');
INSERT INTO `tbl_kategori` VALUES ('14', 'Kabel Antena');
INSERT INTO `tbl_kategori` VALUES ('15', 'Power Supply');
INSERT INTO `tbl_kategori` VALUES ('16', 'RCA');
INSERT INTO `tbl_kategori` VALUES ('17', 'AC Cord');
INSERT INTO `tbl_kategori` VALUES ('18', 'Jack Antena ');
INSERT INTO `tbl_kategori` VALUES ('19', 'Esenze');
INSERT INTO `tbl_kategori` VALUES ('20', 'Augen');
INSERT INTO `tbl_kategori` VALUES ('21', 'Itami');
INSERT INTO `tbl_kategori` VALUES ('22', 'Steker');
INSERT INTO `tbl_kategori` VALUES ('23', 'Pallas');
INSERT INTO `tbl_kategori` VALUES ('24', 'Stanco');
INSERT INTO `tbl_kategori` VALUES ('25', 'Flapon');
INSERT INTO `tbl_kategori` VALUES ('26', 'T Dos dan Rolen');
INSERT INTO `tbl_kategori` VALUES ('27', 'Tekong');
INSERT INTO `tbl_kategori` VALUES ('28', 'Maspion');
INSERT INTO `tbl_kategori` VALUES ('29', 'Kompos Gas');
INSERT INTO `tbl_kategori` VALUES ('30', 'Miyako');
INSERT INTO `tbl_kategori` VALUES ('31', 'Uticon');
INSERT INTO `tbl_kategori` VALUES ('32', 'Sekai');
INSERT INTO `tbl_kategori` VALUES ('33', 'Regancy');
INSERT INTO `tbl_kategori` VALUES ('34', 'Amasco');
INSERT INTO `tbl_kategori` VALUES ('35', 'Enter');
INSERT INTO `tbl_kategori` VALUES ('36', 'Licons');
INSERT INTO `tbl_kategori` VALUES ('37', 'Philips');
INSERT INTO `tbl_kategori` VALUES ('38', 'Nissan');
INSERT INTO `tbl_kategori` VALUES ('39', 'AMC');

-- ----------------------------
-- Table structure for tbl_retur
-- ----------------------------
DROP TABLE IF EXISTS `tbl_retur`;
CREATE TABLE `tbl_retur` (
  `retur_id` int(11) NOT NULL AUTO_INCREMENT,
  `retur_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `retur_barang_id` varchar(15) DEFAULT NULL,
  `retur_barang_nama` varchar(150) DEFAULT NULL,
  `retur_barang_satuan` varchar(30) DEFAULT NULL,
  `retur_harjul` double DEFAULT NULL,
  `retur_qty` int(11) DEFAULT NULL,
  `retur_subtotal` double DEFAULT NULL,
  `retur_keterangan` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`retur_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_retur
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_suplier
-- ----------------------------
DROP TABLE IF EXISTS `tbl_suplier`;
CREATE TABLE `tbl_suplier` (
  `suplier_id` int(11) NOT NULL AUTO_INCREMENT,
  `suplier_nama` varchar(35) DEFAULT NULL,
  `suplier_alamat` varchar(60) DEFAULT NULL,
  `suplier_notelp` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`suplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_suplier
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_user
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_nama` varchar(35) DEFAULT NULL,
  `user_username` varchar(30) DEFAULT NULL,
  `user_password` varchar(35) DEFAULT NULL,
  `user_level` varchar(2) DEFAULT NULL,
  `user_status` varchar(2) DEFAULT '1',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES ('1', 'M Fikri Setiadi', 'admin', '0cc175b9c0f1b6a831c399e269772661', '1', '1');
INSERT INTO `tbl_user` VALUES ('2', 'fikri', 'kasir', 'e10adc3949ba59abbe56e057f20f883e', '2', '1');
