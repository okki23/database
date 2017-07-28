/*
Navicat MySQL Data Transfer

Source Server         : localhost_mysql
Source Server Version : 50616
Source Host           : 127.0.0.1:3306
Source Database       : db_finance

Target Server Type    : MYSQL
Target Server Version : 50616
File Encoding         : 65001

Date: 2017-07-28 20:01:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for m_asuransi
-- ----------------------------
DROP TABLE IF EXISTS `m_asuransi`;
CREATE TABLE `m_asuransi` (
  `no_ref` varchar(100) NOT NULL,
  `p_asuransi` varchar(100) DEFAULT NULL,
  `p_asuransi_ext` varchar(100) DEFAULT NULL,
  `tahun1` varchar(100) DEFAULT NULL,
  `tahun1_tjh` varchar(100) DEFAULT NULL,
  `tahun2` varchar(100) DEFAULT NULL,
  `tahun2_tjh` varchar(100) DEFAULT NULL,
  `tahun3` varchar(100) DEFAULT NULL,
  `tahun3_tjh` varchar(100) DEFAULT NULL,
  `tahun4` varchar(100) DEFAULT NULL,
  `tahun4_tjh` varchar(100) DEFAULT NULL,
  `tahun5` varchar(100) DEFAULT NULL,
  `tahun5_tjh` varchar(100) DEFAULT NULL,
  `tahun6` varchar(100) DEFAULT NULL,
  `tahun6_tjh` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`no_ref`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_asuransi
-- ----------------------------
INSERT INTO `m_asuransi` VALUES ('REF0000002', '', ' ', 'COMPREHENSIVE', '', 'COMPREHENSIVE', '', 'COMPREHENSIVE', '', 'COMPREHENSIVE', '', 'COMPREHENSIVE', '', 'COMPREHENSIVE', '');

-- ----------------------------
-- Table structure for m_emergency
-- ----------------------------
DROP TABLE IF EXISTS `m_emergency`;
CREATE TABLE `m_emergency` (
  `no_ref` varchar(100) NOT NULL,
  `nama_cp_emg` varchar(100) DEFAULT NULL,
  `alamat_cp_emg` text,
  `kab_kota_cp_emg` varchar(100) DEFAULT NULL,
  `kav_cp_emg` varchar(100) DEFAULT NULL,
  `rt_cp_emg` varchar(100) DEFAULT NULL,
  `rw_cp_emg` varchar(100) DEFAULT NULL,
  `kode_pos_cp_emg` varchar(100) DEFAULT NULL,
  `telp_cp_emg` text,
  `hp_cp_emg` text,
  `hub_dg_debitur_cp_emg` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`no_ref`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_emergency
-- ----------------------------
INSERT INTO `m_emergency` VALUES ('REF0000002', '', ' ', '', '', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for m_files
-- ----------------------------
DROP TABLE IF EXISTS `m_files`;
CREATE TABLE `m_files` (
  `no_ref` varchar(250) NOT NULL,
  `ktp_scan` varchar(250) DEFAULT NULL,
  `kk_scan` varchar(250) DEFAULT NULL,
  `passport_scan` varchar(250) DEFAULT NULL,
  `akta_nikah_scan` varchar(250) DEFAULT NULL,
  `pbb_scan` varchar(250) DEFAULT NULL,
  `npwp_scan` varchar(250) DEFAULT NULL,
  `tabungan_scan` varchar(250) DEFAULT NULL,
  `slip_gaji_scan` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`no_ref`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_files
-- ----------------------------
INSERT INTO `m_files` VALUES ('REF0000002', 'Screenshot_(1).png', 'Screenshot_(3).png', 'Screenshot_(2).png', 'Screenshot_(4).png', 'Screenshot_(5).png', 'Screenshot_(6).png', 'Screenshot_(7).png', 'Screenshot_(8).png');

-- ----------------------------
-- Table structure for m_keuangan
-- ----------------------------
DROP TABLE IF EXISTS `m_keuangan`;
CREATE TABLE `m_keuangan` (
  `no_ref` varchar(100) NOT NULL,
  `penghasilan_konsumen` varchar(100) DEFAULT NULL,
  `penghasilan_lain` varchar(100) DEFAULT NULL,
  `penghasilan_ttp_pasangan` varchar(100) DEFAULT NULL,
  `cara_pembayaran` varchar(100) DEFAULT NULL,
  `cara_pembayaran_ext` text,
  `norek_bca` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`no_ref`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_keuangan
-- ----------------------------
INSERT INTO `m_keuangan` VALUES ('REF0000002', '', '', '', '', ' ', '');

-- ----------------------------
-- Table structure for m_konsumen
-- ----------------------------
DROP TABLE IF EXISTS `m_konsumen`;
CREATE TABLE `m_konsumen` (
  `no_ref` varchar(100) NOT NULL,
  `nm_konsumen` varchar(100) DEFAULT NULL,
  `sid_konsumen` varchar(100) DEFAULT NULL,
  `nm_ibu_kandung` varchar(100) DEFAULT NULL,
  `alamat_tinggal_sekarang` varchar(100) DEFAULT NULL,
  `alamat_berbeda` text,
  `kav_skrg` varchar(50) DEFAULT NULL,
  `rt_skrg` varchar(50) DEFAULT NULL,
  `rw_skrg` varchar(50) DEFAULT NULL,
  `kodepos_skrg` varchar(50) DEFAULT NULL,
  `kelurahan_skrg` varchar(50) DEFAULT NULL,
  `kecamatan_skrg` varchar(50) DEFAULT NULL,
  `kab_kota_skrg` varchar(50) DEFAULT NULL,
  `provinsi_skrg` varchar(50) DEFAULT '',
  `status_rumah` varchar(50) DEFAULT NULL,
  `status_rumah_ext` varchar(50) DEFAULT NULL,
  `lama_menempati_bln` varchar(50) CHARACTER SET latin1 COLLATE latin1_german1_ci DEFAULT NULL,
  `lama_menempati_thn` varchar(50) DEFAULT NULL,
  `jml_tanggungan` varchar(100) DEFAULT NULL,
  `alamat_peng_surat` text,
  `alamat_peng_surat_ext` text,
  `kav_ext` varchar(50) DEFAULT NULL,
  `rt_ext` varchar(50) DEFAULT NULL,
  `rw_ext` varchar(50) DEFAULT NULL,
  `kodepos_ext` varchar(50) DEFAULT NULL,
  `kab_kota_ext` varchar(50) DEFAULT NULL,
  `kelurahan_ext` varchar(50) DEFAULT NULL,
  `kecamatan_ext` varchar(50) DEFAULT NULL,
  `provinsi_ext` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telp_a` text,
  `telp_b` text,
  `hp_a` text,
  `hp_b` text,
  PRIMARY KEY (`no_ref`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_konsumen
-- ----------------------------
INSERT INTO `m_konsumen` VALUES ('REF0000002', 'Okki Setyawan', 'SKom', 'Rusmiyati', ' ', ' ', '', '', '', '', '', '', '', '', null, ' ', '', '', '1', 'RUMAH', ' ', '', '', '', '', '', '', '', '', 'okkisetyawan@gmail.com', '', '', '', '');

-- ----------------------------
-- Table structure for m_pekerjaan
-- ----------------------------
DROP TABLE IF EXISTS `m_pekerjaan`;
CREATE TABLE `m_pekerjaan` (
  `no_ref` varchar(100) DEFAULT NULL,
  `pekerjaan_konsumen` varchar(100) DEFAULT NULL,
  `pekerjaan_konsumen_ext` varchar(100) DEFAULT NULL,
  `nama_perusahaan` varchar(100) DEFAULT NULL,
  `jenis_usaha` varchar(100) DEFAULT NULL,
  `kode_sektor_ekonomi` varchar(100) DEFAULT NULL,
  `kode_lokasi_proyek` varchar(100) DEFAULT NULL,
  `jabatan_prof` varchar(100) DEFAULT NULL,
  `alamat_perusahaan` text,
  `berdiri_sejak` varchar(100) DEFAULT NULL,
  `kav_pmh` varchar(100) DEFAULT NULL,
  `rt_pmh` varchar(100) DEFAULT NULL,
  `rw_pmh` varchar(100) DEFAULT NULL,
  `kode_pos_pmh` varchar(100) DEFAULT NULL,
  `kab_kota_pmh` varchar(100) DEFAULT NULL,
  `kelurahan_pmh` varchar(255) DEFAULT NULL,
  `kecamatan_pmh` varchar(255) DEFAULT NULL,
  `provinsi_pmh` varchar(255) DEFAULT NULL,
  `telp_a_pmh` text,
  `ext_a_pmh` text,
  `telp_b_pmh` text,
  `ext_b_pmh` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_pekerjaan
-- ----------------------------
INSERT INTO `m_pekerjaan` VALUES ('REF0000002', '', ' ', '', '', '', '', '', ' ', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for m_pekerjaan_pasangan
-- ----------------------------
DROP TABLE IF EXISTS `m_pekerjaan_pasangan`;
CREATE TABLE `m_pekerjaan_pasangan` (
  `no_ref` varchar(100) DEFAULT NULL,
  `nm_pasangan_konsumen` varchar(100) DEFAULT NULL,
  `pekerjaan_psg_konsumen` varchar(100) DEFAULT NULL,
  `pekerjaan_psg_konsumen_ext` varchar(100) DEFAULT NULL,
  `nama_perusahaan_psg_konsumen` varchar(100) DEFAULT NULL,
  `jenis_usaha_psg_konsumen` varchar(100) DEFAULT NULL,
  `jabatan_prof_psg_konsumen` varchar(100) DEFAULT NULL,
  `alamat_perusahaan_psg_konsumen` text,
  `berdiri_sejak_psg_konsumen` varchar(100) DEFAULT NULL,
  `kav_psg_konsumen` varchar(100) DEFAULT NULL,
  `rt_psg_konsumen` varchar(100) DEFAULT NULL,
  `rw_psg_konsumen` varchar(100) DEFAULT NULL,
  `kode_pos_psg_konsumen` varchar(100) DEFAULT NULL,
  `kab_kota_psg_konsumen` varchar(100) DEFAULT NULL,
  `telp_psg_konsumen` text,
  `hp_psg_konsumen` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_pekerjaan_pasangan
-- ----------------------------
INSERT INTO `m_pekerjaan_pasangan` VALUES ('REF0000002', '', '', ' ', '', '', '', ' ', '', '', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for m_penjamin
-- ----------------------------
DROP TABLE IF EXISTS `m_penjamin`;
CREATE TABLE `m_penjamin` (
  `no_ref` varchar(100) DEFAULT NULL,
  `jenis_penjamin` varchar(100) DEFAULT NULL,
  `nm_penjamin` varchar(100) DEFAULT NULL,
  `pekerjaan_penjamin` varchar(100) DEFAULT NULL,
  `alamat_penjamin` text,
  `kav_penjamin` varchar(100) DEFAULT NULL,
  `rt_penjamin` varchar(100) DEFAULT NULL,
  `rw_penjamin` varchar(100) DEFAULT NULL,
  `kode_pos_penjamin` varchar(100) DEFAULT NULL,
  `kelurahan_penjamin` varchar(100) DEFAULT NULL,
  `kecamatan_penjamin` varchar(100) DEFAULT NULL,
  `kab_kota_penjamin` varchar(100) DEFAULT NULL,
  `provinsi_penjamin` varchar(100) DEFAULT NULL,
  `hub_dg_konsumen_pjm` varchar(100) DEFAULT NULL,
  `nm_pasangan_penjamin` varchar(100) DEFAULT NULL,
  `pekerjaan_psg_penjamin` varchar(100) DEFAULT NULL,
  `alamat_psg_penjamin` text,
  `kav_psg_pjm` varchar(100) DEFAULT NULL,
  `rt_psg_pjm` varchar(100) DEFAULT NULL,
  `rw_psg_pjm` varchar(100) DEFAULT NULL,
  `kode_pos_psg_pjm` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_penjamin
-- ----------------------------
INSERT INTO `m_penjamin` VALUES ('REF0000002', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ' ', '', '', '', '');

-- ----------------------------
-- Table structure for m_pinjaman
-- ----------------------------
DROP TABLE IF EXISTS `m_pinjaman`;
CREATE TABLE `m_pinjaman` (
  `no_ref` varchar(100) NOT NULL,
  `tujuan_peng_kendaraaan` varchar(100) DEFAULT NULL,
  `tujuan_pembiayaan` varchar(100) DEFAULT NULL,
  `tujuan_pembiayaan_ext` varchar(100) DEFAULT NULL,
  `bpkb_atas_nama` varchar(100) DEFAULT NULL,
  `hubungan_konsumen` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`no_ref`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_pinjaman
-- ----------------------------
INSERT INTO `m_pinjaman` VALUES ('REF0000002', '', '', '', '', '');

-- ----------------------------
-- Table structure for m_user
-- ----------------------------
DROP TABLE IF EXISTS `m_user`;
CREATE TABLE `m_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_user
-- ----------------------------
INSERT INTO `m_user` VALUES ('1', 'admin', '0cc175b9c0f1b6a831c399e269772661');

-- ----------------------------
-- Table structure for trans_pembiayaan
-- ----------------------------
DROP TABLE IF EXISTS `trans_pembiayaan`;
CREATE TABLE `trans_pembiayaan` (
  `no_ref` varchar(100) NOT NULL,
  `status` int(10) DEFAULT NULL,
  `date_insert` text,
  PRIMARY KEY (`no_ref`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of trans_pembiayaan
-- ----------------------------
INSERT INTO `trans_pembiayaan` VALUES ('REF0000002', '1', '2017-07-15 06:20:36');
