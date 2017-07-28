/*
Navicat MySQL Data Transfer

Source Server         : localhost_mysql
Source Server Version : 50616
Source Host           : 127.0.0.1:3306
Source Database       : db_penilaian_kinerja

Target Server Type    : MYSQL
Target Server Version : 50616
File Encoding         : 65001

Date: 2017-07-28 20:07:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for jabatan
-- ----------------------------
DROP TABLE IF EXISTS `jabatan`;
CREATE TABLE `jabatan` (
  `id_jabatan` int(20) NOT NULL AUTO_INCREMENT,
  `nama_jabatan` varchar(150) DEFAULT NULL,
  `id_unit_kerja` int(20) NOT NULL,
  PRIMARY KEY (`id_jabatan`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of jabatan
-- ----------------------------
INSERT INTO `jabatan` VALUES ('19', 'IT Manager', '25');
INSERT INTO `jabatan` VALUES ('20', 'IT Staff', '25');
INSERT INTO `jabatan` VALUES ('21', 'HR Manager', '26');
INSERT INTO `jabatan` VALUES ('22', 'HR Staff', '26');
INSERT INTO `jabatan` VALUES ('23', 'Direktur', '27');
INSERT INTO `jabatan` VALUES ('24', 'RT', '26');

-- ----------------------------
-- Table structure for karyawan
-- ----------------------------
DROP TABLE IF EXISTS `karyawan`;
CREATE TABLE `karyawan` (
  `id_karyawan` int(20) NOT NULL AUTO_INCREMENT,
  `nik` varchar(100) DEFAULT NULL,
  `nama_karyawan` varchar(250) DEFAULT NULL,
  `tempat_lahir` varchar(150) NOT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `id_jabatan` int(20) DEFAULT NULL,
  `nik_atasan` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_karyawan`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of karyawan
-- ----------------------------
INSERT INTO `karyawan` VALUES ('21', '0805010001', 'Dicky Suharto', 'Surakarta', '1974-10-30', '23', '');
INSERT INTO `karyawan` VALUES ('22', '0805010002', 'Annisa Nurul Hikmah', 'Jakarta', '1997-05-08', '21', '0805010001');
INSERT INTO `karyawan` VALUES ('23', '0805010003', 'Wahyu Saputro', 'Jakarta', '1985-08-20', '22', '0805010002');
INSERT INTO `karyawan` VALUES ('34', '0805010008', 'Yamanaka Ino', 'Toyohashi', '1994-10-25', '22', '0805010003');
INSERT INTO `karyawan` VALUES ('35', '111003031', 'Iwan', 'Jakarta', '2015-12-30', '0', '');
INSERT INTO `karyawan` VALUES ('36', '111003031', 'Iwan', 'Jakarta', '2015-12-30', '0', '');

-- ----------------------------
-- Table structure for kompetensi_behaviour
-- ----------------------------
DROP TABLE IF EXISTS `kompetensi_behaviour`;
CREATE TABLE `kompetensi_behaviour` (
  `id_komp_behaviour` int(20) NOT NULL AUTO_INCREMENT,
  `nama_kompetensi` varchar(100) DEFAULT NULL,
  `bobot` int(10) NOT NULL,
  `target` int(10) NOT NULL,
  `satuan` varchar(50) NOT NULL,
  PRIMARY KEY (`id_komp_behaviour`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kompetensi_behaviour
-- ----------------------------
INSERT INTO `kompetensi_behaviour` VALUES ('1', 'Absensi', '10', '264', 'Hari');
INSERT INTO `kompetensi_behaviour` VALUES ('2', 'Kepemimpinan', '10', '10', 'Point');
INSERT INTO `kompetensi_behaviour` VALUES ('3', 'Disipin', '20', '20', 'Point');
INSERT INTO `kompetensi_behaviour` VALUES ('4', 'Orientasi Pelayanan', '10', '10', 'Point');
INSERT INTO `kompetensi_behaviour` VALUES ('5', 'Kerjasama Tim', '10', '10', 'Point');
INSERT INTO `kompetensi_behaviour` VALUES ('6', 'Integritas', '10', '10', 'Point');
INSERT INTO `kompetensi_behaviour` VALUES ('7', 'Kepedulian', '10', '10', 'Point');
INSERT INTO `kompetensi_behaviour` VALUES ('8', 'Komitmen', '10', '10', 'Point');
INSERT INTO `kompetensi_behaviour` VALUES ('12', 'Ibadah', '5', '10', 'Point');
INSERT INTO `kompetensi_behaviour` VALUES ('15', 'Penampilan', '5', '10', 'Point');

-- ----------------------------
-- Table structure for mahasiswa
-- ----------------------------
DROP TABLE IF EXISTS `mahasiswa`;
CREATE TABLE `mahasiswa` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nim` varchar(50) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `jenkel` set('P','L') DEFAULT '',
  `tempat_lhr` varchar(100) DEFAULT NULL,
  `tanggal_lhr` date DEFAULT NULL,
  `id_pend` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mahasiswa
-- ----------------------------
INSERT INTO `mahasiswa` VALUES ('1', '1101110090', 'Paul Walker Z', 'P', 'Jakarta Barat', '2015-12-31', '6');
INSERT INTO `mahasiswa` VALUES ('2', '11020304', 'Iwan', 'L', 'Jakarta', '2015-12-28', '2');
INSERT INTO `mahasiswa` VALUES ('3', '110203042', 'Iwan B', 'L', 'Jakarta', '2015-12-28', '2');

-- ----------------------------
-- Table structure for pend_last
-- ----------------------------
DROP TABLE IF EXISTS `pend_last`;
CREATE TABLE `pend_last` (
  `id` int(10) NOT NULL,
  `pendidikan` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pend_last
-- ----------------------------
INSERT INTO `pend_last` VALUES ('1', 'SD');
INSERT INTO `pend_last` VALUES ('2', 'SMP');
INSERT INTO `pend_last` VALUES ('3', ' SMA / SMK');
INSERT INTO `pend_last` VALUES ('4', 'S1');
INSERT INTO `pend_last` VALUES ('5', 'S2');
INSERT INTO `pend_last` VALUES ('6', 'S3');

-- ----------------------------
-- Table structure for penilaian_behaviour
-- ----------------------------
DROP TABLE IF EXISTS `penilaian_behaviour`;
CREATE TABLE `penilaian_behaviour` (
  `id_behaviour` int(20) NOT NULL AUTO_INCREMENT,
  `id_kompetensi` int(20) DEFAULT NULL,
  `nik_karyawan` varchar(100) DEFAULT NULL,
  `bobot` int(10) DEFAULT NULL,
  `tahun_penilaian` varchar(10) DEFAULT NULL,
  `target` int(10) DEFAULT NULL,
  `satuan` varchar(20) DEFAULT NULL,
  `realisasi` int(10) DEFAULT NULL,
  PRIMARY KEY (`id_behaviour`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of penilaian_behaviour
-- ----------------------------
INSERT INTO `penilaian_behaviour` VALUES ('4', '1', '0805010003', '10', '2015', '264', 'Hari', '10');
INSERT INTO `penilaian_behaviour` VALUES ('23', '2', '0805010003', '10', '2015', '10', 'Point', '10');
INSERT INTO `penilaian_behaviour` VALUES ('50', '1', '0805010002', '10', '2015', null, null, '10');
INSERT INTO `penilaian_behaviour` VALUES ('51', '2', '0805010002', '10', '2015', null, null, '10');
INSERT INTO `penilaian_behaviour` VALUES ('53', '3', '0805010002', '20', '2015', null, null, '20');
INSERT INTO `penilaian_behaviour` VALUES ('54', '4', '0805010002', '10', '2015', null, null, '10');
INSERT INTO `penilaian_behaviour` VALUES ('57', '5', '0805010002', '10', '2015', null, null, '10');
INSERT INTO `penilaian_behaviour` VALUES ('58', '6', '0805010002', '10', '2015', null, null, '10');
INSERT INTO `penilaian_behaviour` VALUES ('59', '7', '0805010002', '10', '2015', null, null, '10');
INSERT INTO `penilaian_behaviour` VALUES ('60', '8', '0805010002', '10', '2015', null, null, '10');
INSERT INTO `penilaian_behaviour` VALUES ('61', '12', '0805010002', '5', '2015', null, null, '5');
INSERT INTO `penilaian_behaviour` VALUES ('62', '15', '0805010002', '5', '2015', null, null, '5');

-- ----------------------------
-- Table structure for penilaian_kinerja
-- ----------------------------
DROP TABLE IF EXISTS `penilaian_kinerja`;
CREATE TABLE `penilaian_kinerja` (
  `id_penilaian_kinerja` int(20) NOT NULL AUTO_INCREMENT,
  `id_karyawan` int(20) NOT NULL,
  `nik_karyawan` varchar(100) DEFAULT NULL,
  `nik_atasan` varchar(100) NOT NULL,
  `tugas_jabatan` text,
  `bobot` int(10) DEFAULT NULL,
  `target_kuantitas` int(10) DEFAULT NULL,
  `realisasi_kuantitas` int(10) DEFAULT NULL,
  `satuan` varchar(20) DEFAULT NULL,
  `tgl_input_target` date DEFAULT NULL,
  `tgl_input_realisasi` date DEFAULT NULL,
  `tahun_penilaian` varchar(5) DEFAULT NULL,
  `status_realisasi_setuju` varchar(5) DEFAULT NULL,
  `status_target_setuju` varchar(5) NOT NULL,
  PRIMARY KEY (`id_penilaian_kinerja`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of penilaian_kinerja
-- ----------------------------
INSERT INTO `penilaian_kinerja` VALUES ('21', '0', '0805010002', '0805010001', 'Manage Bawahan Untuk Proses Rekrutmen', '70', '85', '60', 'Orang', '2015-09-27', '2015-11-08', '2015', 'Y', 'Y');
INSERT INTO `penilaian_kinerja` VALUES ('23', '0', '0805010002', '0805010001', 'Melakukan Penilaian Terhadap Bawahan Tentang Proses Perekrutan', '30', '85', '30', 'Orang', '2015-09-27', '2015-11-08', '2015', 'Y', 'Y');
INSERT INTO `penilaian_kinerja` VALUES ('34', '0', '0805010012', '0805010011', 'Melakukan Perbaikan PC Rutin Setiap 2 Bulan Sekali', '50', '50', '50', 'Unit', '2015-10-10', '2015-10-10', '2015', 'N', '');
INSERT INTO `penilaian_kinerja` VALUES ('35', '0', '0805010012', '0805010011', 'Melakukan Maintenance Network Per 2 Bulan Sekali', '50', '50', '50', 'Unit', '2015-10-10', '2015-10-10', '2015', 'N', '');
INSERT INTO `penilaian_kinerja` VALUES ('39', '0', '0805010003', '0805010002', 'Mencari Dana', '60', null, '60', null, '2015-11-07', '2015-11-07', '2014', 'Y', 'Y');
INSERT INTO `penilaian_kinerja` VALUES ('41', '0', '0805010003', '0805010002', 'Mencari Donatur', '40', null, '40', null, '2015-11-07', '2015-11-07', '2015', 'Y', 'Y');
INSERT INTO `penilaian_kinerja` VALUES ('42', '0', '0805010008', '0805010003', 'Pembuatan SK', '50', null, '50', null, '2015-11-07', '2015-11-07', '2015', 'Y', 'Y');
INSERT INTO `penilaian_kinerja` VALUES ('50', '0', '0805010008', '0805010003', 'MMMM', '50', null, '50', null, '2015-11-07', '2015-11-07', '2008', 'Y', 'Y');

-- ----------------------------
-- Table structure for periode
-- ----------------------------
DROP TABLE IF EXISTS `periode`;
CREATE TABLE `periode` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `tgl_mulai` date DEFAULT NULL,
  `tgl_akhir` date DEFAULT NULL,
  `jenis_periode` int(5) DEFAULT NULL,
  `aktif` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of periode
-- ----------------------------
INSERT INTO `periode` VALUES ('1', '2015-09-01', '2015-09-20', '1', 'N');
INSERT INTO `periode` VALUES ('2', '2015-10-01', '2015-10-31', '2', 'Y');

-- ----------------------------
-- Table structure for unit_kerja
-- ----------------------------
DROP TABLE IF EXISTS `unit_kerja`;
CREATE TABLE `unit_kerja` (
  `id_unit_kerja` int(20) NOT NULL AUTO_INCREMENT,
  `nama_unit_kerja` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id_unit_kerja`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of unit_kerja
-- ----------------------------
INSERT INTO `unit_kerja` VALUES ('25', 'IT Department');
INSERT INTO `unit_kerja` VALUES ('26', 'HR Department');
INSERT INTO `unit_kerja` VALUES ('27', 'CEO');
INSERT INTO `unit_kerja` VALUES ('28', 'AR Departmen');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id_user` int(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(250) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL,
  `status_user` int(5) DEFAULT NULL,
  `id_karyawan` int(10) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('18', 'anisa', '0cc175b9c0f1b6a831c399e269772661', '2', '22');
INSERT INTO `user` VALUES ('19', 'dicky', '0cc175b9c0f1b6a831c399e269772661', '3', '21');
INSERT INTO `user` VALUES ('24', 'wahyu', '0cc175b9c0f1b6a831c399e269772661', '1', '23');
INSERT INTO `user` VALUES ('27', 'bayu', '0cc175b9c0f1b6a831c399e269772661', '1', '31');
INSERT INTO `user` VALUES ('28', 'fahmi', '0cc175b9c0f1b6a831c399e269772661', '1', '33');
INSERT INTO `user` VALUES ('29', 'ino', '0cc175b9c0f1b6a831c399e269772661', '1', '34');
