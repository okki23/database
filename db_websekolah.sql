/*
Navicat MySQL Data Transfer

Source Server         : localhost_mysql
Source Server Version : 50616
Source Host           : 127.0.0.1:3306
Source Database       : db_websekolah

Target Server Type    : MYSQL
Target Server Version : 50616
File Encoding         : 65001

Date: 2017-07-28 20:20:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tbl_agenda
-- ----------------------------
DROP TABLE IF EXISTS `tbl_agenda`;
CREATE TABLE `tbl_agenda` (
  `agenda_id` int(11) NOT NULL AUTO_INCREMENT,
  `agenda_nama` varchar(200) DEFAULT NULL,
  `agenda_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `agenda_deskripsi` text,
  `agenda_mulai` date DEFAULT NULL,
  `agenda_selesai` date DEFAULT NULL,
  `agenda_tempat` varchar(90) DEFAULT NULL,
  `agenda_waktu` varchar(30) DEFAULT NULL,
  `agenda_keterangan` varchar(200) DEFAULT NULL,
  `agenda_author` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`agenda_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_agenda
-- ----------------------------
INSERT INTO `tbl_agenda` VALUES ('1', 'Penyembelihan Hewan Kurban Idul Adha 2017', '2017-01-22 13:18:01', 'Idul Adha yang biasa disebut lebaran haji atapun lebaran kurban sangat identik dengan penyembelihan hewan kurban. M-Sekolah tahun ini juga melakukan penyembelihan hewan kurban. Yang rencananya akan dihadiri oleh guru-guru, siswa dan pengurus OSIS.', '2017-01-22', '2017-01-22', 'M-Sekolah', '08.00 - 11.00 WIB', 'Dihadiri oleh guru-guru, siswa dan pengurus OSIS', 'M Fikri Setiadi');
INSERT INTO `tbl_agenda` VALUES ('2', 'Peluncuran Website Resmi M-Sekolah', '2017-01-22 13:26:33', 'Peluncuran website resmi  M-Sekolah, sebagai media informasi dan akademik online untuk pelayanan pendidikan yang lebih baik kepada siswa, orangtua, dan masyarakat pada umumnya semakin meningkat.', '2017-01-04', '2017-01-04', 'M-Sekolah', '07.30 - 12.00 WIB', '-', 'M Fikri Setiadi');
INSERT INTO `tbl_agenda` VALUES ('3', 'Penerimaan Raport Semester Ganjil Tahun Ajaran 2017-2018', '2017-01-22 13:29:49', 'Berakhirnya semester ganjil tahun pelajaran 2016-2017, ditandai dengan pembagian laporan hasil belajar.', '2017-02-17', '2017-02-17', 'M-Sekolah', '07.30 - 12.00 WIB', 'Untuk kelas XI dan XII, pembagian raport dimulai pukul 07.30 WIB. Sedangkan untuk kelas X pada pukul 09.00 WIB. Raport diambil oleh orang tua/wali murid masing-masing.', 'M Fikri Setiadi');

-- ----------------------------
-- Table structure for tbl_album
-- ----------------------------
DROP TABLE IF EXISTS `tbl_album`;
CREATE TABLE `tbl_album` (
  `album_id` int(11) NOT NULL AUTO_INCREMENT,
  `album_nama` varchar(50) DEFAULT NULL,
  `album_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `album_pengguna_id` int(11) DEFAULT NULL,
  `album_author` varchar(60) DEFAULT NULL,
  `album_count` int(11) DEFAULT '0',
  `album_cover` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`album_id`),
  KEY `album_pengguna_id` (`album_pengguna_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_album
-- ----------------------------
INSERT INTO `tbl_album` VALUES ('1', 'Kedatangan Tamu Asing', '2016-09-08 20:00:55', '1', 'M Fikri Setiadi', '5', '202aa754590dfc1070c624bad294abbc.jpg');
INSERT INTO `tbl_album` VALUES ('3', 'Pemilu Osis 2016-2017', '2017-01-21 08:58:16', '1', 'M Fikri Setiadi', '3', 'dc088a9fb62333012ff7a601828219d7.jpg');
INSERT INTO `tbl_album` VALUES ('4', 'Kegiatan Belajar Siswa', '2017-01-24 08:31:13', '1', 'M Fikri Setiadi', '7', '203bc0411a07ed0430d39bcc38ec2c56.jpg');

-- ----------------------------
-- Table structure for tbl_files
-- ----------------------------
DROP TABLE IF EXISTS `tbl_files`;
CREATE TABLE `tbl_files` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `file_judul` varchar(120) DEFAULT NULL,
  `file_deskripsi` text,
  `file_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `file_oleh` varchar(60) DEFAULT NULL,
  `file_download` int(11) DEFAULT '0',
  `file_data` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_files
-- ----------------------------
INSERT INTO `tbl_files` VALUES ('2', 'Dasar-dasar CSS', 'Modul dasar-dasar CSS 3. Modul ini membantu anda untuk memahami struktur dasar CSS', '2017-01-23 11:30:01', 'Drs. Joko', '0', 'ab9a183ff240deadbedaff78e639af2f.pdf');
INSERT INTO `tbl_files` VALUES ('3', '14 Teknik Komunikasi Yang Paling Efektif', 'Ebook 14 teknik komunikasi paling efektif membantu anda untuk berkomunikasi dengan baik dan benar', '2017-01-23 22:26:06', 'Drs. Joko', '0', 'ab2cb34682bd94f30f2347523112ffb9.pdf');
INSERT INTO `tbl_files` VALUES ('4', 'Bagaimana Membentuk Pola Pikir yang Baru', 'Ebook ini membantu anda membentuk pola pikir baru.', '2017-01-23 22:27:07', 'Drs. Joko', '0', '30f588eb5c55324f8d18213f11651855.pdf');
INSERT INTO `tbl_files` VALUES ('5', '7 Tips Penting mengatasi Kritik', '7 Tips Penting mengatasi Kritik', '2017-01-23 22:27:44', 'Drs. Joko', '0', '329a62b25ad475a148e1546aa3db41de.docx');
INSERT INTO `tbl_files` VALUES ('6', '8 Racun dalam kehidupan kita', '8 Racun dalam kehidupan kita', '2017-01-23 22:28:17', 'Drs. Joko', '0', '8e38ad4948ba13758683dea443fbe6be.docx');
INSERT INTO `tbl_files` VALUES ('7', 'Jurnal Teknolgi Informasi', 'Jurnal Teknolgi Informasi', '2017-01-25 10:18:53', 'Gunawan, S.Pd', '0', '87ae0f009714ddfdd79e2977b2a64632.pdf');
INSERT INTO `tbl_files` VALUES ('8', 'Jurnal Teknolgi Informasi 2', 'Jurnal Teknolgi Informasi', '2017-01-25 10:19:22', 'Gunawan, S.Pd', '0', 'c4e966ba2c6e142155082854dc5b3602.pdf');
INSERT INTO `tbl_files` VALUES ('9', 'Naskah Publikasi IT', 'Naskah Teknolgi Informasi', '2017-01-25 10:21:04', 'Gunawan, S.Pd', '0', '71380b3cf16a17a02382098c028ece9c.pdf');
INSERT INTO `tbl_files` VALUES ('10', 'Modul Teknologi Informasi', 'Modul Teknologi Informasi', '2017-01-25 10:22:08', 'Gunawan, S.Pd', '0', '029143a3980232ab2900d94df36dbb0c.pdf');
INSERT INTO `tbl_files` VALUES ('11', 'Modul Teknologi Informasi Part II', 'Modul Teknologi Informasi', '2017-01-25 10:22:54', 'Gunawan, S.Pd', '0', 'ea8f3f732576083156e509657614f551.pdf');
INSERT INTO `tbl_files` VALUES ('12', 'Modul Teknologi Informasi Part III', 'Modul Teknologi Informasi', '2017-01-25 10:23:21', 'Gunawan, S.Pd', '0', 'c5e5e7d16e4cd6c3d22c11f64b0db2af.pdf');

-- ----------------------------
-- Table structure for tbl_galeri
-- ----------------------------
DROP TABLE IF EXISTS `tbl_galeri`;
CREATE TABLE `tbl_galeri` (
  `galeri_id` int(11) NOT NULL AUTO_INCREMENT,
  `galeri_judul` varchar(60) DEFAULT NULL,
  `galeri_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `galeri_gambar` varchar(40) DEFAULT NULL,
  `galeri_album_id` int(11) DEFAULT NULL,
  `galeri_pengguna_id` int(11) DEFAULT NULL,
  `galeri_author` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`galeri_id`),
  KEY `galeri_album_id` (`galeri_album_id`),
  KEY `galeri_pengguna_id` (`galeri_pengguna_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_galeri
-- ----------------------------
INSERT INTO `tbl_galeri` VALUES ('4', 'Diskusi Pemilihan Ketua Osis', '2017-01-21 21:04:53', '9b10fa300633f62f105e9b52789fc8f3.jpg', '3', '1', 'M Fikri Setiadi');
INSERT INTO `tbl_galeri` VALUES ('5', 'Panitia Pemilu Osis', '2017-01-22 11:13:20', '0ec0c2f9aae6501d7ed7930995d48b57.jpg', '3', '1', 'M Fikri Setiadi');
INSERT INTO `tbl_galeri` VALUES ('6', 'Proses Pemilu Osis', '2017-01-22 11:13:43', 'bfbe6cc1c8096f5f36c68e93da53c248.jpg', '3', '1', 'M Fikri Setiadi');
INSERT INTO `tbl_galeri` VALUES ('7', 'Belajar dengan native speaker', '2017-01-24 08:26:22', '831e5ad43ccc3c851d50c128ff095541.jpg', '1', '1', 'M Fikri Setiadi');
INSERT INTO `tbl_galeri` VALUES ('8', 'Diskusi dengan native speaker', '2017-01-24 08:27:05', '84afbf1d3ad45932f1d7ac47b8a00949.jpg', '1', '1', 'M Fikri Setiadi');
INSERT INTO `tbl_galeri` VALUES ('9', 'Foto bareng native speaker', '2017-01-24 08:27:28', 'a99ab060d5d5bf8c96f24fe385f7dd8b.jpg', '1', '1', 'M Fikri Setiadi');
INSERT INTO `tbl_galeri` VALUES ('10', 'Foto bareng native speaker', '2017-01-24 08:28:40', 'd70cedba6391b7b3c74b914efd82953f.jpg', '1', '1', 'M Fikri Setiadi');
INSERT INTO `tbl_galeri` VALUES ('11', 'Foto bareng native speaker', '2017-01-24 08:28:54', '10de99f425b9961ce1e87c5e5575f8f4.jpg', '1', '1', 'M Fikri Setiadi');
INSERT INTO `tbl_galeri` VALUES ('12', 'Belajar sambil bermain', '2017-01-24 08:31:42', '9df82241493b94d1e06b461129cf57b2.jpg', '4', '1', 'M Fikri Setiadi');
INSERT INTO `tbl_galeri` VALUES ('13', 'Belajar sambil bermain', '2017-01-24 08:31:55', '5374415f11683ad6dd31572a7bbf8a7b.jpg', '4', '1', 'M Fikri Setiadi');
INSERT INTO `tbl_galeri` VALUES ('14', 'Belajar komputer programming', '2017-01-24 08:32:24', '82b91bd35706b21c3ab04e205e358eb6.jpg', '4', '1', 'M Fikri Setiadi');
INSERT INTO `tbl_galeri` VALUES ('15', 'Belajar komputer programming', '2017-01-24 08:32:34', '93048f2a103987bce8c8ec8d6912de06.jpg', '4', '1', 'M Fikri Setiadi');
INSERT INTO `tbl_galeri` VALUES ('16', 'Belajar komputer programming', '2017-01-24 08:32:44', '41f46be181f2f8452c2041b5e79a05a5.jpg', '4', '1', 'M Fikri Setiadi');
INSERT INTO `tbl_galeri` VALUES ('17', 'Belajar sambil bermain', '2017-01-24 08:33:08', '2858b0555c252690e293d29b922ba8e6.jpg', '4', '1', 'M Fikri Setiadi');
INSERT INTO `tbl_galeri` VALUES ('18', 'Makan bersama', '2017-01-24 08:33:24', '90d67328e33a31d3f5eecd7dcb25b55d.jpg', '4', '1', 'M Fikri Setiadi');

-- ----------------------------
-- Table structure for tbl_guru
-- ----------------------------
DROP TABLE IF EXISTS `tbl_guru`;
CREATE TABLE `tbl_guru` (
  `guru_id` int(11) NOT NULL AUTO_INCREMENT,
  `guru_nip` varchar(30) DEFAULT NULL,
  `guru_nama` varchar(70) DEFAULT NULL,
  `guru_jenkel` varchar(2) DEFAULT NULL,
  `guru_tmp_lahir` varchar(80) DEFAULT NULL,
  `guru_tgl_lahir` varchar(80) DEFAULT NULL,
  `guru_mapel` varchar(120) DEFAULT NULL,
  `guru_photo` varchar(40) DEFAULT NULL,
  `guru_tgl_input` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`guru_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_guru
-- ----------------------------
INSERT INTO `tbl_guru` VALUES ('1', '927482658274982', 'M Fikri Setiadi', 'L', 'Padang', '25 September 1993', 'Teknik Komputer', 'f6bbe1e04e78e0d715e9830a605794aa.jpg', '2017-01-26 14:49:43');
INSERT INTO `tbl_guru` VALUES ('2', '927482658274981', 'Thomas Muller', 'L', 'Germany', '25 September 1989', 'Olahgara', null, '2017-01-26 20:38:54');
INSERT INTO `tbl_guru` VALUES ('3', '-', 'Joko Subroto', 'L', 'Jakarta', '25 September 1989', 'PPKN, Matematika', null, '2017-01-26 20:41:20');
INSERT INTO `tbl_guru` VALUES ('4', '-', 'Kusta Otomo', 'L', 'Jakarta', '25 September 1989', 'Seni Budaya', null, '2017-01-26 20:42:08');
INSERT INTO `tbl_guru` VALUES ('5', '-', 'Yuliani Ningsih', 'P', 'Padang', '27 September 1993', 'Bahasa Indonesia', null, '2017-01-26 20:42:48');
INSERT INTO `tbl_guru` VALUES ('6', '927482658274993', 'Ari Hidayat', 'L', 'Padang', '25 September 1993', 'Bahasa Inggris', null, '2017-01-26 20:43:46');
INSERT INTO `tbl_guru` VALUES ('7', '927482658274998', 'Irma Cantika', 'P', 'Padang', '25 September 1993', 'Bahasa Inggris, IPA', '4200d2514abf45755943526b74474c16.jpg', '2017-01-26 20:45:11');
INSERT INTO `tbl_guru` VALUES ('8', '-', 'Ririn Febriesta', 'P', 'Padang', '27 September 1994', 'Pend. Agama Islam', null, '2017-01-27 11:28:23');

-- ----------------------------
-- Table structure for tbl_inbox
-- ----------------------------
DROP TABLE IF EXISTS `tbl_inbox`;
CREATE TABLE `tbl_inbox` (
  `inbox_id` int(11) NOT NULL AUTO_INCREMENT,
  `inbox_nama` varchar(40) DEFAULT NULL,
  `inbox_email` varchar(60) DEFAULT NULL,
  `inbox_kontak` varchar(20) DEFAULT NULL,
  `inbox_pesan` text,
  `inbox_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `inbox_status` int(11) DEFAULT '1' COMMENT '1=Belum dilihat, 0=Telah dilihat',
  PRIMARY KEY (`inbox_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_inbox
-- ----------------------------
INSERT INTO `tbl_inbox` VALUES ('2', 'M Fikri Setiadi', 'fikrifiver97@gmail.com', '-', 'Ping !', '2017-06-21 10:44:12', '0');
INSERT INTO `tbl_inbox` VALUES ('3', 'M Fikri Setiadi', 'fikrifiver97@gmail.com', '-', 'Ini adalah pesan ', '2017-06-21 10:45:57', '0');
INSERT INTO `tbl_inbox` VALUES ('5', 'M Fikri Setiadi', 'fikrifiver97@gmail.com', '-', 'Ping !', '2017-06-21 10:53:19', '0');
INSERT INTO `tbl_inbox` VALUES ('7', 'M Fikri Setiadi', 'fikrifiver97@gmail.com', '-', 'Hi, there!', '2017-07-01 14:28:08', '0');
INSERT INTO `tbl_inbox` VALUES ('8', 'Okki', 'okkisetyawan@gmail.com', '089610595064', 'OKE FIX RUN!', '2017-07-28 16:03:12', '0');

-- ----------------------------
-- Table structure for tbl_kategori
-- ----------------------------
DROP TABLE IF EXISTS `tbl_kategori`;
CREATE TABLE `tbl_kategori` (
  `kategori_id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori_nama` varchar(30) DEFAULT NULL,
  `kategori_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`kategori_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_kategori
-- ----------------------------
INSERT INTO `tbl_kategori` VALUES ('1', 'Pendidikan', '2016-09-06 12:49:04');
INSERT INTO `tbl_kategori` VALUES ('2', 'Politik', '2016-09-06 12:50:01');
INSERT INTO `tbl_kategori` VALUES ('3', 'Sains', '2016-09-06 12:59:39');
INSERT INTO `tbl_kategori` VALUES ('5', 'Penelitian', '2016-09-06 13:19:26');
INSERT INTO `tbl_kategori` VALUES ('6', 'Prestasi', '2016-09-07 09:51:09');
INSERT INTO `tbl_kategori` VALUES ('13', 'Olah Raga', '2017-01-13 20:20:31');

-- ----------------------------
-- Table structure for tbl_kelas
-- ----------------------------
DROP TABLE IF EXISTS `tbl_kelas`;
CREATE TABLE `tbl_kelas` (
  `kelas_id` int(11) NOT NULL AUTO_INCREMENT,
  `kelas_nama` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`kelas_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_kelas
-- ----------------------------
INSERT INTO `tbl_kelas` VALUES ('1', 'Kelas X.1');
INSERT INTO `tbl_kelas` VALUES ('2', 'Kelas X.2');
INSERT INTO `tbl_kelas` VALUES ('3', 'Kelas X.3');
INSERT INTO `tbl_kelas` VALUES ('4', 'Kelas X.4');
INSERT INTO `tbl_kelas` VALUES ('5', 'Kelas X.5');
INSERT INTO `tbl_kelas` VALUES ('6', 'Kelas X.6');
INSERT INTO `tbl_kelas` VALUES ('7', 'Kelas X.7');
INSERT INTO `tbl_kelas` VALUES ('8', 'Kelas XI IPA.1');
INSERT INTO `tbl_kelas` VALUES ('9', 'Kelas XI IPA.2');
INSERT INTO `tbl_kelas` VALUES ('10', 'Kelas XI IPA.3');
INSERT INTO `tbl_kelas` VALUES ('11', 'Kelas XI IPA.4');
INSERT INTO `tbl_kelas` VALUES ('12', 'Kelas XI IPA.5');
INSERT INTO `tbl_kelas` VALUES ('13', 'Kelas XI IPA.6');
INSERT INTO `tbl_kelas` VALUES ('14', 'Kelas XI IPA.7');
INSERT INTO `tbl_kelas` VALUES ('15', 'Kelas XI IPS.1');
INSERT INTO `tbl_kelas` VALUES ('16', 'Kelas XI IPS.2');
INSERT INTO `tbl_kelas` VALUES ('17', 'Kelas XI IPS.3');
INSERT INTO `tbl_kelas` VALUES ('18', 'Kelas XI IPS.4');
INSERT INTO `tbl_kelas` VALUES ('19', 'Kelas XI IPS.5');
INSERT INTO `tbl_kelas` VALUES ('20', 'Kelas XI IPS.6');
INSERT INTO `tbl_kelas` VALUES ('21', 'Kelas XI IPS.7');

-- ----------------------------
-- Table structure for tbl_komentar
-- ----------------------------
DROP TABLE IF EXISTS `tbl_komentar`;
CREATE TABLE `tbl_komentar` (
  `komentar_id` int(11) NOT NULL AUTO_INCREMENT,
  `komentar_nama` varchar(30) DEFAULT NULL,
  `komentar_email` varchar(50) DEFAULT NULL,
  `komentar_isi` varchar(120) DEFAULT NULL,
  `komentar_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `komentar_status` varchar(2) DEFAULT NULL,
  `komentar_tulisan_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`komentar_id`),
  KEY `komentar_tulisan_id` (`komentar_tulisan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_komentar
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_log_aktivitas
-- ----------------------------
DROP TABLE IF EXISTS `tbl_log_aktivitas`;
CREATE TABLE `tbl_log_aktivitas` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `log_nama` text,
  `log_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `log_ip` varchar(20) DEFAULT NULL,
  `log_pengguna_id` int(11) DEFAULT NULL,
  `log_icon` blob,
  `log_jenis_icon` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`log_id`),
  KEY `log_pengguna_id` (`log_pengguna_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_log_aktivitas
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_pengguna
-- ----------------------------
DROP TABLE IF EXISTS `tbl_pengguna`;
CREATE TABLE `tbl_pengguna` (
  `pengguna_id` int(11) NOT NULL AUTO_INCREMENT,
  `pengguna_nama` varchar(50) DEFAULT NULL,
  `pengguna_moto` varchar(100) DEFAULT NULL,
  `pengguna_jenkel` varchar(2) DEFAULT NULL,
  `pengguna_username` varchar(30) DEFAULT NULL,
  `pengguna_password` varchar(35) DEFAULT NULL,
  `pengguna_tentang` text,
  `pengguna_email` varchar(50) DEFAULT NULL,
  `pengguna_nohp` varchar(20) DEFAULT NULL,
  `pengguna_facebook` varchar(35) DEFAULT NULL,
  `pengguna_twitter` varchar(35) DEFAULT NULL,
  `pengguna_linkdin` varchar(35) DEFAULT NULL,
  `pengguna_google_plus` varchar(35) DEFAULT NULL,
  `pengguna_status` int(2) DEFAULT '1',
  `pengguna_level` varchar(3) DEFAULT NULL,
  `pengguna_register` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `pengguna_photo` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`pengguna_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_pengguna
-- ----------------------------
INSERT INTO `tbl_pengguna` VALUES ('1', 'M Fikri Setiadi', 'Just do it', 'L', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'I am a mountainner. to me mountainerring is a life', 'fikrifiver97@gmail.com', '081277159401', 'facebook.com/m_fikri_setiadi', 'twitter.com/fiver_fiver', '', '', '1', '1', '2016-09-03 13:07:55', '1aa9ff5088173edccb446df1de95607c.jpg');
INSERT INTO `tbl_pengguna` VALUES ('3', 'Mario Gotze', null, 'L', 'gotze', '202cb962ac59075b964b07152d234b70', null, 'gotze@gmail.com', '081288831443', null, null, null, null, '1', '1', '2017-01-12 10:29:47', 'ea682f37eef8fa2ca3e037d30323ecca.jpg');
INSERT INTO `tbl_pengguna` VALUES ('4', 'Manuel Neuer', null, 'L', 'neuer', 'e10adc3949ba59abbe56e057f20f883e', null, 'neuer@gmail.com', '0285937599', null, null, null, null, '1', '1', '2017-01-12 21:20:42', 'file_1484230842.jpg');

-- ----------------------------
-- Table structure for tbl_pengumuman
-- ----------------------------
DROP TABLE IF EXISTS `tbl_pengumuman`;
CREATE TABLE `tbl_pengumuman` (
  `pengumuman_id` int(11) NOT NULL AUTO_INCREMENT,
  `pengumuman_judul` varchar(150) DEFAULT NULL,
  `pengumuman_deskripsi` text,
  `pengumuman_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `pengumuman_author` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`pengumuman_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_pengumuman
-- ----------------------------
INSERT INTO `tbl_pengumuman` VALUES ('1', 'Pengumuman Libur Semester Ganjil Tahun Ajaran 2016-2017', 'Libur semester ganjil tahun ajaran 2016-2017 dimulai dari tanggal 3 Maret 2017 sampai dengan tanggal 7 Maret 207.', '2017-01-21 08:17:30', 'M Fikri Setiadi');
INSERT INTO `tbl_pengumuman` VALUES ('2', 'Pengumuman Pembagian Raport Semester Ganjil Tahun Ajaran 2016-2017', 'Menjelang berakhirnya proses belajar-mengajar di semester ganjil tahun ajaran 2016-2017, maka akan diadakan pembagian hasil belajar/raport pada tanggal 4 Maret 2017 pukul 07.30 WIB.\r\nYang bertempat di M-Sekolah. Raport diambil oleh orang tua/wali kelas murid masing-masing', '2017-01-21 08:16:20', 'M Fikri Setiadi');
INSERT INTO `tbl_pengumuman` VALUES ('3', 'Pengumuman Peresmian dan Launching Website Perdana M-Sekolah', 'Peresmian dan launching website resmi M-Sekolah akan diadakan pada hari 23 Desember 2016 pukul 10.00, bertepatan dengan pembagian raport semester ganjil tahun ajaran 2016-2017', '2017-01-22 14:16:16', 'M Fikri Setiadi');
INSERT INTO `tbl_pengumuman` VALUES ('4', 'Pengumuman Proses Belajar Mengajar di Semester Genap Tahun Ajaran 2016-2017', 'Setelah libur semester ganjil tahun ajaran 2016-2017, proses belajar mengajar di semester genap tahun ajaran 2016-2017 mulai aktif kembali tanggal 2 Maret 2017.', '2017-01-22 14:15:28', 'M Fikri Setiadi');

-- ----------------------------
-- Table structure for tbl_pengunjung
-- ----------------------------
DROP TABLE IF EXISTS `tbl_pengunjung`;
CREATE TABLE `tbl_pengunjung` (
  `pengunjung_id` int(11) NOT NULL AUTO_INCREMENT,
  `pengunjung_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `pengunjung_ip` varchar(40) DEFAULT NULL,
  `pengunjung_perangkat` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`pengunjung_id`)
) ENGINE=InnoDB AUTO_INCREMENT=926 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_pengunjung
-- ----------------------------
INSERT INTO `tbl_pengunjung` VALUES ('1', '2016-08-12 06:52:20', '127.0.0.1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('2', '2016-08-13 00:14:20', '127.0.0.1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('3', '2016-08-13 12:23:19', '127.0.0.1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('4', '2016-08-13 12:27:05', '127.0.0.1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('5', '2016-08-13 12:27:37', '127.0.0.1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('6', '2016-08-13 13:54:58', '127.0.0.1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('7', '2016-08-13 13:55:59', '127.0.0.1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('8', '2016-08-13 14:00:06', '127.0.0.1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('9', '2016-08-13 14:00:34', '127.0.0.1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('10', '2016-09-19 03:24:39', '127.0.0.1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('11', '2016-09-19 03:24:43', '127.0.0.1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('12', '2016-09-19 03:24:43', '127.0.0.1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('13', '2016-09-19 03:24:43', '127.0.0.1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('14', '2016-09-19 03:24:43', '127.0.0.1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('15', '2016-09-19 03:24:43', '127.0.0.1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('16', '2016-09-19 03:24:43', '127.0.0.1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('17', '2016-09-19 03:24:43', '127.0.0.1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('18', '2016-09-19 03:24:43', '127.0.0.1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('19', '2016-09-19 03:24:43', '127.0.0.1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('20', '2016-09-19 03:24:43', '127.0.0.1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('21', '2016-09-19 03:24:43', '127.0.0.1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('22', '2016-09-19 03:24:43', '127.0.0.1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('23', '2016-09-19 03:24:43', '127.0.0.1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('24', '2017-02-05 01:06:52', '::1', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('25', '2017-02-05 01:07:16', '127.0.0.1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('26', '2017-02-05 01:08:31', '::1', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('27', '2017-02-06 02:33:14', '::1', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('28', '2017-02-06 03:20:59', '127.0.0.1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('29', '2017-02-07 01:21:08', '::1', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('30', '2017-02-09 08:07:51', '::1', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('31', '2017-02-11 03:12:05', '::1', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('32', '2017-02-21 03:46:21', '::1', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('33', '2017-02-22 11:04:16', '::1', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('34', '2017-02-28 01:47:25', '::1', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('35', '2017-03-02 13:09:25', '::1', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('36', '2017-03-04 15:18:51', '::1', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('37', '2017-03-13 03:40:32', '::1', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('38', '2017-03-14 03:34:32', '::1', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('39', '2017-03-23 11:08:15', '::1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('40', '2017-03-25 16:39:02', '::1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('41', '2017-03-25 17:16:45', '::1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('42', '2017-03-28 21:11:23', '::1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('43', '2017-03-30 05:39:17', '::1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('44', '2017-03-30 17:52:11', '::1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('45', '2017-04-01 05:48:46', '::1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('46', '2017-04-07 05:33:58', '::1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('47', '2017-04-08 07:25:37', '::1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('48', '2017-04-08 17:00:14', '::1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('49', '2017-04-09 17:06:03', '::1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('50', '2017-04-10 19:20:50', '::1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('51', '2017-04-11 18:46:50', '117.102.64.98', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('52', '2017-04-11 18:46:57', '125.165.129.35', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('53', '2017-04-11 19:52:18', '69.171.225.46', 'Other');
INSERT INTO `tbl_pengunjung` VALUES ('54', '2017-04-11 19:54:33', '69.171.225.12', 'Other');
INSERT INTO `tbl_pengunjung` VALUES ('55', '2017-04-11 19:55:04', '69.171.225.21', 'Other');
INSERT INTO `tbl_pengunjung` VALUES ('56', '2017-04-11 19:55:18', '69.171.225.18', 'Other');
INSERT INTO `tbl_pengunjung` VALUES ('57', '2017-04-11 20:03:44', '36.83.246.250', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('58', '2017-04-11 20:05:55', '202.62.17.121', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('59', '2017-04-11 20:06:45', '106.187.46.205', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('60', '2017-04-11 20:06:47', '173.252.98.28', 'Other');
INSERT INTO `tbl_pengunjung` VALUES ('61', '2017-04-11 20:10:36', '107.167.103.241', 'Opera');
INSERT INTO `tbl_pengunjung` VALUES ('62', '2017-04-11 20:16:14', '202.67.41.244', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('63', '2017-04-11 20:18:24', '36.72.192.194', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('64', '2017-04-11 20:19:40', '112.215.175.62', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('65', '2017-04-11 20:20:09', '173.252.102.112', 'Other');
INSERT INTO `tbl_pengunjung` VALUES ('66', '2017-04-11 20:20:17', '112.215.154.56', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('67', '2017-04-11 20:20:26', '158.140.170.23', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('68', '2017-04-11 20:22:33', '36.81.37.52', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('69', '2017-04-11 20:23:14', '120.188.65.243', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('70', '2017-04-11 20:26:16', '124.153.33.11', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('71', '2017-04-11 20:26:21', '112.215.172.240', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('72', '2017-04-11 20:27:34', '132.255.240.27', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('73', '2017-04-11 20:28:22', '103.213.131.147', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('74', '2017-04-11 20:29:38', '36.84.225.114', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('75', '2017-04-11 20:29:45', '180.253.158.87', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('76', '2017-04-11 20:33:35', '173.252.84.52', 'Other');
INSERT INTO `tbl_pengunjung` VALUES ('77', '2017-04-11 20:34:51', '202.67.35.20', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('78', '2017-04-11 20:37:02', '202.67.40.210', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('79', '2017-04-11 20:39:43', '120.188.76.26', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('80', '2017-04-11 20:41:05', '173.252.123.186', 'Other');
INSERT INTO `tbl_pengunjung` VALUES ('81', '2017-04-11 20:45:29', '110.139.8.41', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('82', '2017-04-11 20:53:12', '202.80.216.219', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('83', '2017-04-11 20:55:16', '223.255.230.13', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('84', '2017-04-11 20:55:38', '36.78.69.101', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('85', '2017-04-11 21:02:53', '180.251.173.137', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('86', '2017-04-11 21:03:05', '125.161.185.216', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('87', '2017-04-11 21:16:22', '139.192.226.49', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('88', '2017-04-11 21:18:10', '107.167.112.88', 'Opera');
INSERT INTO `tbl_pengunjung` VALUES ('89', '2017-04-11 21:18:13', '180.247.26.15', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('90', '2017-04-11 21:20:04', '204.44.65.210', 'Internet Explorer');
INSERT INTO `tbl_pengunjung` VALUES ('91', '2017-04-11 21:22:58', '36.78.96.198', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('92', '2017-04-11 21:23:40', '138.197.192.28', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('93', '2017-04-11 21:24:07', '112.215.151.61', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('94', '2017-04-11 21:25:46', '202.51.104.154', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('95', '2017-04-11 21:32:42', '202.67.44.7', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('96', '2017-04-11 21:36:53', '118.136.122.84', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('97', '2017-04-11 21:39:25', '61.247.21.51', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('98', '2017-04-11 21:41:38', '114.124.180.250', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('99', '2017-04-11 21:41:55', '120.188.64.226', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('100', '2017-04-11 21:43:14', '180.247.204.243', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('101', '2017-04-11 21:44:48', '125.161.179.203', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('102', '2017-04-11 21:46:06', '114.125.55.58', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('103', '2017-04-11 21:50:14', '158.140.182.11', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('104', '2017-04-11 21:54:09', '202.67.33.22', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('105', '2017-04-11 21:58:44', '120.188.65.30', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('106', '2017-04-11 21:59:55', '120.188.77.153', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('107', '2017-04-11 22:02:32', '125.167.185.147', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('108', '2017-04-11 22:04:23', '118.136.84.45', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('109', '2017-04-11 22:04:41', '110.136.129.138', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('110', '2017-04-11 22:04:52', '36.75.108.223', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('111', '2017-04-11 22:05:46', '36.72.38.146', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('112', '2017-04-11 22:06:31', '120.188.5.85', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('113', '2017-04-11 22:09:53', '180.253.90.210', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('114', '2017-04-11 22:12:18', '107.167.99.179', 'Opera');
INSERT INTO `tbl_pengunjung` VALUES ('115', '2017-04-11 22:12:49', '112.215.171.165', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('116', '2017-04-11 22:14:55', '203.166.201.206', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('117', '2017-04-11 22:15:21', '107.167.99.208', 'Opera');
INSERT INTO `tbl_pengunjung` VALUES ('118', '2017-04-11 22:15:25', '36.73.194.145', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('119', '2017-04-11 22:16:25', '107.167.113.164', 'Opera');
INSERT INTO `tbl_pengunjung` VALUES ('120', '2017-04-11 22:16:42', '120.92.32.177', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('121', '2017-04-11 22:17:23', '180.245.132.122', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('122', '2017-04-11 22:17:56', '120.188.80.236', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('123', '2017-04-11 22:17:57', '114.125.89.57', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('124', '2017-04-11 22:18:01', '139.0.186.187', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('125', '2017-04-11 22:18:25', '125.166.215.131', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('126', '2017-04-11 22:18:29', '120.188.6.216', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('127', '2017-04-11 22:19:06', '125.161.98.148', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('128', '2017-04-11 22:20:10', '36.73.9.148', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('129', '2017-04-11 22:20:15', '114.125.182.65', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('130', '2017-04-11 22:21:07', '114.125.40.100', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('131', '2017-04-11 22:21:45', '120.188.86.219', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('132', '2017-04-11 22:22:35', '118.136.103.194', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('133', '2017-04-11 22:23:47', '36.81.10.230', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('134', '2017-04-11 22:23:47', '114.125.164.4', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('135', '2017-04-11 22:24:28', '107.167.112.218', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('136', '2017-04-11 22:24:50', '107.167.98.132', 'Opera');
INSERT INTO `tbl_pengunjung` VALUES ('137', '2017-04-11 22:25:44', '180.246.19.210', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('138', '2017-04-11 22:26:12', '120.188.1.85', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('139', '2017-04-11 22:27:50', '139.195.66.235', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('140', '2017-04-11 22:28:06', '115.178.198.211', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('141', '2017-04-11 22:28:17', '115.178.235.88', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('142', '2017-04-11 22:28:49', '36.84.87.138', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('143', '2017-04-11 22:29:05', '114.121.232.136', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('144', '2017-04-11 22:29:23', '118.96.227.216', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('145', '2017-04-11 22:29:45', '36.68.184.231', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('146', '2017-04-11 22:30:18', '120.188.3.198', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('147', '2017-04-11 22:32:44', '61.94.133.70', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('148', '2017-04-11 22:32:44', '8.37.235.44', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('149', '2017-04-11 22:33:19', '110.136.254.232', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('150', '2017-04-11 22:34:17', '36.83.28.90', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('151', '2017-04-11 22:34:25', '120.188.80.239', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('152', '2017-04-11 22:34:50', '114.125.72.8', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('153', '2017-04-11 22:34:59', '180.247.33.166', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('154', '2017-04-11 22:35:10', '180.214.232.22', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('155', '2017-04-11 22:35:47', '61.5.92.125', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('156', '2017-04-11 22:36:22', '36.69.222.51', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('157', '2017-04-11 22:36:24', '182.253.139.130', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('158', '2017-04-11 22:36:36', '120.188.86.170', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('159', '2017-04-11 22:36:56', '139.228.97.115', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('160', '2017-04-11 22:37:18', '36.67.61.15', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('161', '2017-04-11 22:37:20', '114.4.78.184', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('162', '2017-04-11 22:38:09', '202.67.40.221', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('163', '2017-04-11 22:39:03', '112.215.172.66', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('164', '2017-04-11 22:39:11', '36.74.207.97', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('165', '2017-04-11 22:39:36', '64.233.173.4', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('166', '2017-04-11 22:40:07', '36.84.136.234', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('167', '2017-04-11 22:41:24', '202.62.16.49', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('168', '2017-04-11 22:41:28', '125.167.120.95', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('169', '2017-04-11 22:41:46', '168.235.207.168', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('170', '2017-04-11 22:41:52', '120.188.64.235', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('171', '2017-04-11 22:42:10', '120.188.81.204', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('172', '2017-04-11 22:42:26', '125.162.245.169', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('173', '2017-04-11 22:43:20', '180.242.10.170', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('174', '2017-04-11 22:44:03', '64.233.173.6', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('175', '2017-04-11 22:44:11', '112.215.174.87', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('176', '2017-04-11 22:44:37', '36.71.46.157', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('177', '2017-04-11 22:45:07', '103.56.235.74', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('178', '2017-04-11 22:45:18', '120.188.66.124', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('179', '2017-04-11 22:45:25', '69.171.225.33', 'Other');
INSERT INTO `tbl_pengunjung` VALUES ('180', '2017-04-11 22:46:14', '114.125.202.40', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('181', '2017-04-11 22:46:45', '120.188.87.93', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('182', '2017-04-11 22:46:46', '118.136.85.176', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('183', '2017-04-11 22:46:51', '64.233.173.8', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('184', '2017-04-11 22:47:32', '36.79.200.132', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('185', '2017-04-11 22:48:01', '120.188.35.53', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('186', '2017-04-11 22:49:39', '110.138.153.190', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('187', '2017-04-11 22:49:44', '114.125.73.228', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('188', '2017-04-11 22:49:52', '36.81.119.196', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('189', '2017-04-11 22:50:22', '120.188.65.140', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('190', '2017-04-11 22:51:05', '125.161.188.27', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('191', '2017-04-11 22:51:23', '124.40.251.74', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('192', '2017-04-11 22:51:31', '139.228.108.66', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('193', '2017-04-11 22:51:33', '180.254.57.164', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('194', '2017-04-11 22:53:07', '180.247.95.40', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('195', '2017-04-11 22:53:20', '103.205.56.66', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('196', '2017-04-11 22:53:20', '103.56.232.196', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('197', '2017-04-11 22:53:52', '180.241.167.242', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('198', '2017-04-11 22:53:54', '112.215.171.106', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('199', '2017-04-11 22:55:12', '114.125.214.65', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('200', '2017-04-11 22:55:40', '36.71.48.50', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('201', '2017-04-11 22:57:12', '103.9.227.1', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('202', '2017-04-11 22:57:16', '202.62.17.134', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('203', '2017-04-11 22:57:40', '36.74.110.84', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('204', '2017-04-11 22:57:54', '112.215.173.135', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('205', '2017-04-11 22:58:17', '36.80.43.86', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('206', '2017-04-11 22:59:04', '45.76.207.98', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('207', '2017-04-11 22:59:23', '180.214.233.30', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('208', '2017-04-11 22:59:28', '36.78.97.242', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('209', '2017-04-11 22:59:58', '61.94.220.130', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('210', '2017-04-11 23:00:03', '8.37.230.63', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('211', '2017-04-11 23:00:20', '125.162.99.169', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('212', '2017-04-11 23:00:31', '223.255.227.25', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('213', '2017-04-11 23:01:07', '114.121.244.144', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('214', '2017-04-11 23:01:24', '114.125.214.143', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('215', '2017-04-11 23:01:43', '8.37.235.230', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('216', '2017-04-11 23:01:49', '120.188.86.129', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('217', '2017-04-11 23:02:10', '120.188.74.41', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('218', '2017-04-11 23:02:25', '115.178.239.193', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('219', '2017-04-11 23:02:49', '202.67.46.8', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('220', '2017-04-11 23:02:56', '36.80.211.28', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('221', '2017-04-11 23:03:54', '139.195.162.58', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('222', '2017-04-11 23:04:16', '202.154.180.10', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('223', '2017-04-11 23:04:34', '114.125.184.7', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('224', '2017-04-11 23:05:01', '120.188.85.253', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('225', '2017-04-11 23:05:32', '139.195.209.21', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('226', '2017-04-11 23:05:57', '120.188.33.114', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('227', '2017-04-11 23:06:03', '8.37.233.52', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('228', '2017-04-11 23:06:09', '36.79.130.99', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('229', '2017-04-11 23:06:21', '36.74.24.2', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('230', '2017-04-11 23:06:43', '114.125.186.131', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('231', '2017-04-11 23:06:45', '202.62.17.197', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('232', '2017-04-11 23:07:31', '118.96.232.253', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('233', '2017-04-11 23:08:05', '36.79.188.51', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('234', '2017-04-11 23:08:13', '36.74.122.45', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('235', '2017-04-11 23:08:23', '36.84.110.69', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('236', '2017-04-11 23:08:23', '112.215.172.153', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('237', '2017-04-11 23:08:37', '36.82.30.206', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('238', '2017-04-11 23:09:03', '180.214.232.2', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('239', '2017-04-11 23:09:38', '107.167.112.128', 'Opera');
INSERT INTO `tbl_pengunjung` VALUES ('240', '2017-04-11 23:09:40', '36.70.178.105', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('241', '2017-04-11 23:09:55', '139.195.130.19', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('242', '2017-04-11 23:10:31', '114.125.57.214', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('243', '2017-04-11 23:10:41', '120.188.85.184', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('244', '2017-04-11 23:10:52', '125.163.107.41', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('245', '2017-04-11 23:11:15', '114.125.41.144', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('246', '2017-04-11 23:11:21', '61.94.103.59', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('247', '2017-04-11 23:12:08', '36.76.30.210', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('248', '2017-04-11 23:12:26', '36.73.134.193', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('249', '2017-04-11 23:12:31', '112.215.173.16', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('250', '2017-04-11 23:13:18', '120.188.92.195', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('251', '2017-04-11 23:13:20', '125.163.92.209', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('252', '2017-04-11 23:14:19', '182.253.142.24', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('253', '2017-04-11 23:14:28', '120.188.86.148', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('254', '2017-04-11 23:14:56', '182.253.163.61', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('255', '2017-04-11 23:16:02', '36.74.148.31', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('256', '2017-04-11 23:16:57', '8.37.233.156', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('257', '2017-04-11 23:17:04', '114.125.56.121', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('258', '2017-04-11 23:17:12', '158.140.165.20', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('259', '2017-04-11 23:17:17', '125.164.97.226', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('260', '2017-04-11 23:17:18', '120.188.92.249', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('261', '2017-04-11 23:17:26', '118.137.208.31', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('262', '2017-04-11 23:17:30', '180.244.71.107', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('263', '2017-04-11 23:17:37', '120.188.87.220', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('264', '2017-04-11 23:17:57', '112.215.172.199', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('265', '2017-04-11 23:18:23', '110.138.44.236', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('266', '2017-04-11 23:18:35', '168.235.195.254', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('267', '2017-04-11 23:18:40', '180.245.98.188', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('268', '2017-04-11 23:18:58', '114.125.183.102', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('269', '2017-04-11 23:19:18', '125.164.38.13', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('270', '2017-04-11 23:19:27', '114.121.239.102', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('271', '2017-04-11 23:20:03', '168.235.206.137', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('272', '2017-04-11 23:20:32', '202.80.213.87', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('273', '2017-04-11 23:21:18', '180.246.73.3', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('274', '2017-04-11 23:22:02', '36.75.32.145', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('275', '2017-04-11 23:22:04', '112.215.154.115', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('276', '2017-04-11 23:22:09', '36.73.96.185', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('277', '2017-04-11 23:22:38', '8.37.232.215', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('278', '2017-04-11 23:22:53', '36.68.233.0', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('279', '2017-04-11 23:23:08', '36.84.224.73', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('280', '2017-04-11 23:23:29', '66.220.151.86', 'Other');
INSERT INTO `tbl_pengunjung` VALUES ('281', '2017-04-11 23:24:01', '120.188.75.121', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('282', '2017-04-11 23:24:19', '207.241.226.233', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('283', '2017-04-11 23:24:35', '36.73.181.116', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('284', '2017-04-11 23:25:38', '198.186.192.44', 'Other');
INSERT INTO `tbl_pengunjung` VALUES ('285', '2017-04-11 23:25:56', '114.4.78.117', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('286', '2017-04-11 23:26:38', '36.72.95.85', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('287', '2017-04-11 23:27:26', '120.188.81.107', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('288', '2017-04-11 23:28:19', '114.124.149.112', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('289', '2017-04-11 23:28:29', '114.125.205.41', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('290', '2017-04-11 23:28:54', '125.163.78.202', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('291', '2017-04-11 23:29:17', '114.125.52.130', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('292', '2017-04-11 23:29:45', '114.4.78.150', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('293', '2017-04-11 23:29:47', '114.121.156.129', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('294', '2017-04-11 23:29:51', '112.215.172.8', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('295', '2017-04-11 23:30:30', '114.125.166.163', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('296', '2017-04-11 23:30:35', '139.195.187.141', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('297', '2017-04-11 23:30:53', '36.72.21.12', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('298', '2017-04-11 23:32:34', '8.37.225.108', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('299', '2017-04-11 23:32:39', '180.248.6.118', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('300', '2017-04-11 23:33:44', '8.37.233.95', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('301', '2017-04-11 23:34:16', '120.188.80.6', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('302', '2017-04-11 23:34:52', '211.227.156.112', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('303', '2017-04-11 23:34:54', '125.167.187.126', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('304', '2017-04-11 23:35:32', '107.167.112.72', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('305', '2017-04-11 23:35:57', '112.215.152.98', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('306', '2017-04-11 23:36:06', '180.251.167.150', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('307', '2017-04-11 23:36:27', '36.82.76.215', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('308', '2017-04-11 23:37:45', '168.235.206.238', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('309', '2017-04-11 23:38:09', '124.153.33.39', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('310', '2017-04-11 23:38:39', '168.235.197.19', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('311', '2017-04-11 23:38:44', '36.73.87.46', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('312', '2017-04-11 23:38:45', '188.166.218.174', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('313', '2017-04-11 23:39:03', '36.78.54.201', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('314', '2017-04-11 23:39:24', '139.228.95.10', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('315', '2017-04-11 23:39:24', '120.188.80.114', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('316', '2017-04-11 23:39:35', '182.253.203.58', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('317', '2017-04-11 23:39:54', '36.78.66.34', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('318', '2017-04-11 23:40:56', '120.188.79.185', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('319', '2017-04-11 23:41:35', '118.96.235.203', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('320', '2017-04-11 23:41:44', '180.253.236.103', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('321', '2017-04-11 23:43:18', '125.161.188.207', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('322', '2017-04-11 23:44:08', '36.66.72.178', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('323', '2017-04-11 23:44:16', '36.84.13.131', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('324', '2017-04-11 23:44:46', '112.215.45.240', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('325', '2017-04-11 23:45:01', '49.182.76.246', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('326', '2017-04-11 23:45:09', '180.247.77.200', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('327', '2017-04-11 23:45:19', '36.88.158.84', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('328', '2017-04-11 23:45:38', '202.62.17.12', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('329', '2017-04-11 23:46:05', '182.253.163.51', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('330', '2017-04-11 23:46:11', '139.195.94.117', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('331', '2017-04-11 23:46:41', '114.4.83.68', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('332', '2017-04-11 23:47:30', '114.125.37.46', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('333', '2017-04-11 23:47:32', '173.252.74.105', 'Other');
INSERT INTO `tbl_pengunjung` VALUES ('334', '2017-04-11 23:49:04', '112.215.200.30', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('335', '2017-04-11 23:50:22', '120.188.81.20', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('336', '2017-04-11 23:50:32', '120.188.33.140', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('337', '2017-04-11 23:51:06', '114.4.79.120', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('338', '2017-04-11 23:51:27', '139.194.221.74', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('339', '2017-04-11 23:51:29', '120.188.87.99', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('340', '2017-04-11 23:51:48', '36.73.62.30', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('341', '2017-04-11 23:51:53', '112.215.45.120', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('342', '2017-04-11 23:51:54', '112.215.153.184', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('343', '2017-04-11 23:51:59', '36.78.67.111', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('344', '2017-04-11 23:52:31', '120.188.80.165', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('345', '2017-04-11 23:52:37', '61.94.100.166', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('346', '2017-04-11 23:52:48', '180.252.168.2', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('347', '2017-04-11 23:52:50', '36.84.64.22', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('348', '2017-04-11 23:52:56', '198.144.107.187', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('349', '2017-04-11 23:53:42', '120.188.80.158', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('350', '2017-04-11 23:54:47', '180.244.55.126', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('351', '2017-04-11 23:55:18', '107.167.112.118', 'Opera');
INSERT INTO `tbl_pengunjung` VALUES ('352', '2017-04-11 23:55:43', '36.73.63.156', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('353', '2017-04-11 23:56:44', '125.167.92.123', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('354', '2017-04-11 23:58:15', '180.247.136.78', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('355', '2017-04-11 23:59:23', '114.124.148.228', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('356', '2017-04-11 23:59:44', '120.188.80.220', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('357', '2017-04-11 23:59:50', '180.248.179.126', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('358', '2017-04-12 00:00:03', '36.78.194.86', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('359', '2017-04-12 00:00:12', '202.67.46.46', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('360', '2017-04-12 00:00:34', '113.210.202.42', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('361', '2017-04-12 00:01:47', '114.120.233.30', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('362', '2017-04-12 00:02:34', '202.182.55.230', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('363', '2017-04-12 00:02:44', '180.244.73.72', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('364', '2017-04-12 00:03:16', '49.213.16.227', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('365', '2017-04-12 00:04:03', '36.73.177.201', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('366', '2017-04-12 00:04:12', '112.215.152.124', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('367', '2017-04-12 00:08:38', '120.188.0.47', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('368', '2017-04-12 00:09:43', '36.84.58.187', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('369', '2017-04-12 00:12:18', '111.94.229.133', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('370', '2017-04-12 00:12:31', '118.136.18.255', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('371', '2017-04-12 00:13:11', '36.74.212.125', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('372', '2017-04-12 00:13:20', '103.206.245.142', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('373', '2017-04-12 00:14:21', '36.71.129.27', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('374', '2017-04-12 00:18:44', '180.252.123.165', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('375', '2017-04-12 00:19:01', '180.253.138.223', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('376', '2017-04-12 00:19:11', '66.249.79.83', 'Googlebot');
INSERT INTO `tbl_pengunjung` VALUES ('377', '2017-04-12 00:19:27', '36.80.242.230', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('378', '2017-04-12 00:19:54', '223.255.231.154', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('379', '2017-04-12 00:19:55', '114.125.200.74', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('380', '2017-04-12 00:21:24', '66.249.79.78', 'Googlebot');
INSERT INTO `tbl_pengunjung` VALUES ('381', '2017-04-12 00:21:45', '114.4.83.180', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('382', '2017-04-12 00:23:55', '139.192.11.235', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('383', '2017-04-12 00:24:10', '125.160.66.244', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('384', '2017-04-12 00:24:17', '112.215.170.139', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('385', '2017-04-12 00:25:01', '112.215.153.158', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('386', '2017-04-12 00:25:29', '110.139.187.176', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('387', '2017-04-12 00:25:38', '111.94.122.151', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('388', '2017-04-12 00:25:46', '112.215.153.252', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('389', '2017-04-12 00:27:24', '112.215.170.48', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('390', '2017-04-12 00:28:36', '125.160.51.241', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('391', '2017-04-12 00:29:53', '66.249.79.85', 'Googlebot');
INSERT INTO `tbl_pengunjung` VALUES ('392', '2017-04-12 00:30:04', '120.188.83.178', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('393', '2017-04-12 00:30:26', '112.215.170.170', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('394', '2017-04-12 00:30:27', '139.228.17.159', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('395', '2017-04-12 00:30:32', '107.167.112.5', 'Opera');
INSERT INTO `tbl_pengunjung` VALUES ('396', '2017-04-12 00:31:33', '180.249.17.245', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('397', '2017-04-12 00:31:38', '182.253.163.14', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('398', '2017-04-12 00:32:08', '202.80.215.217', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('399', '2017-04-12 00:32:45', '120.188.95.126', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('400', '2017-04-12 00:32:55', '118.136.247.154', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('401', '2017-04-12 00:33:04', '66.102.6.211', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('402', '2017-04-12 00:33:04', '66.102.6.207', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('403', '2017-04-12 00:33:05', '66.102.6.209', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('404', '2017-04-12 00:34:10', '36.84.9.122', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('405', '2017-04-12 00:34:34', '120.188.94.195', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('406', '2017-04-12 00:34:55', '36.84.2.91', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('407', '2017-04-12 00:35:12', '125.164.16.170', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('408', '2017-04-12 00:35:35', '125.164.15.224', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('409', '2017-04-12 00:36:04', '114.125.70.243', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('410', '2017-04-12 00:36:29', '180.241.222.250', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('411', '2017-04-12 00:36:55', '112.215.44.57', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('412', '2017-04-12 00:39:53', '114.4.82.125', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('413', '2017-04-12 00:39:58', '120.188.5.175', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('414', '2017-04-12 00:40:27', '103.233.157.202', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('415', '2017-04-12 00:44:13', '37.34.62.205', 'Other');
INSERT INTO `tbl_pengunjung` VALUES ('416', '2017-04-12 00:45:37', '120.188.32.191', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('417', '2017-04-12 00:46:53', '168.235.198.107', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('418', '2017-04-12 00:47:00', '36.84.0.75', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('419', '2017-04-12 00:47:43', '182.253.163.7', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('420', '2017-04-12 00:47:49', '36.68.52.209', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('421', '2017-04-12 00:48:03', '103.47.132.52', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('422', '2017-04-12 00:49:58', '36.66.211.11', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('423', '2017-04-12 00:50:12', '112.215.171.166', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('424', '2017-04-12 00:51:49', '103.4.167.243', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('425', '2017-04-12 00:51:51', '120.188.85.6', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('426', '2017-04-12 00:52:02', '120.188.81.83', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('427', '2017-04-12 00:52:52', '120.188.83.233', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('428', '2017-04-12 00:53:37', '125.165.48.195', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('429', '2017-04-12 00:54:20', '203.130.236.249', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('430', '2017-04-12 00:54:28', '115.178.238.196', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('431', '2017-04-12 00:54:49', '202.179.189.74', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('432', '2017-04-12 00:56:50', '182.253.62.114', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('433', '2017-04-12 00:57:37', '112.215.154.28', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('434', '2017-04-12 00:57:53', '110.137.169.204', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('435', '2017-04-12 00:57:56', '223.255.227.26', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('436', '2017-04-12 00:58:01', '112.215.63.20', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('437', '2017-04-12 00:58:46', '139.194.53.216', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('438', '2017-04-12 00:59:15', '27.50.17.11', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('439', '2017-04-12 00:59:34', '182.253.163.50', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('440', '2017-04-12 00:59:47', '36.76.123.254', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('441', '2017-04-12 01:00:20', '103.47.132.22', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('442', '2017-04-12 01:00:30', '8.37.233.83', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('443', '2017-04-12 01:00:46', '114.125.180.165', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('444', '2017-04-12 01:01:39', '180.252.143.230', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('445', '2017-04-12 01:01:45', '163.53.185.146', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('446', '2017-04-12 01:02:33', '114.125.207.121', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('447', '2017-04-12 01:02:40', '36.72.9.120', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('448', '2017-04-12 01:04:44', '61.5.60.185', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('449', '2017-04-12 01:04:46', '36.80.153.97', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('450', '2017-04-12 01:05:41', '180.252.239.223', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('451', '2017-04-12 01:07:10', '120.188.33.120', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('452', '2017-04-12 01:07:10', '118.97.50.22', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('453', '2017-04-12 01:08:05', '118.97.50.23', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('454', '2017-04-12 01:09:09', '36.84.229.118', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('455', '2017-04-12 01:09:12', '114.125.11.225', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('456', '2017-04-12 01:09:49', '182.23.59.66', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('457', '2017-04-12 01:10:16', '118.97.50.24', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('458', '2017-04-12 01:10:59', '175.111.91.19', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('459', '2017-04-12 01:11:01', '121.101.131.66', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('460', '2017-04-12 01:11:16', '2.235.170.197', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('461', '2017-04-12 01:11:43', '180.247.185.142', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('462', '2017-04-12 01:12:38', '36.80.179.43', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('463', '2017-04-12 01:12:53', '36.75.240.166', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('464', '2017-04-12 01:13:31', '118.97.241.130', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('465', '2017-04-12 01:13:31', '101.128.85.22', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('466', '2017-04-12 01:13:48', '182.253.122.110', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('467', '2017-04-12 01:14:31', '120.188.65.57', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('468', '2017-04-12 01:14:38', '115.164.60.248', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('469', '2017-04-12 01:14:42', '180.250.206.226', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('470', '2017-04-12 01:15:06', '125.165.103.49', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('471', '2017-04-12 01:15:25', '104.237.243.90', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('472', '2017-04-12 01:15:30', '180.254.241.158', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('473', '2017-04-12 01:15:50', '36.85.5.162', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('474', '2017-04-12 01:15:56', '120.188.67.11', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('475', '2017-04-12 01:15:58', '38.80.23.2', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('476', '2017-04-12 01:16:01', '61.94.194.3', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('477', '2017-04-12 01:16:02', '222.124.22.228', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('478', '2017-04-12 01:16:07', '180.178.93.249', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('479', '2017-04-12 01:16:32', '36.80.213.229', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('480', '2017-04-12 01:17:27', '175.184.250.82', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('481', '2017-04-12 01:17:56', '103.31.109.2', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('482', '2017-04-12 01:18:11', '168.235.202.213', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('483', '2017-04-12 01:18:43', '120.188.85.102', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('484', '2017-04-12 01:18:49', '61.5.84.239', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('485', '2017-04-12 01:18:51', '36.73.220.140', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('486', '2017-04-12 01:18:57', '180.247.181.120', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('487', '2017-04-12 01:19:50', '36.73.22.116', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('488', '2017-04-12 01:21:09', '36.84.229.80', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('489', '2017-04-12 01:21:23', '120.188.67.170', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('490', '2017-04-12 01:21:24', '36.85.13.189', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('491', '2017-04-12 01:22:18', '66.96.246.66', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('492', '2017-04-12 01:22:48', '111.68.27.251', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('493', '2017-04-12 01:23:31', '202.80.212.117', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('494', '2017-04-12 01:23:59', '112.215.171.69', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('495', '2017-04-12 01:24:35', '222.124.214.250', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('496', '2017-04-12 01:24:53', '140.0.203.15', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('497', '2017-04-12 01:24:58', '116.254.126.142', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('498', '2017-04-12 01:25:13', '120.188.66.255', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('499', '2017-04-12 01:25:33', '168.235.194.213', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('500', '2017-04-12 01:25:48', '114.125.9.160', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('501', '2017-04-12 01:25:54', '112.215.201.184', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('502', '2017-04-12 01:25:57', '125.163.255.80', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('503', '2017-04-12 01:26:09', '168.235.200.204', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('504', '2017-04-12 01:26:37', '128.199.233.142', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('505', '2017-04-12 01:28:11', '112.215.154.169', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('506', '2017-04-12 01:28:25', '168.235.195.242', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('507', '2017-04-12 01:29:06', '223.25.97.210', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('508', '2017-04-12 01:30:24', '203.176.183.20', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('509', '2017-04-12 01:30:50', '180.253.126.127', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('510', '2017-04-12 01:31:06', '36.78.129.171', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('511', '2017-04-12 01:33:51', '14.102.152.234', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('512', '2017-04-12 01:34:09', '8.37.230.53', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('513', '2017-04-12 01:34:27', '112.215.172.183', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('514', '2017-04-12 01:35:45', '112.215.65.96', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('515', '2017-04-12 01:36:42', '110.5.102.56', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('516', '2017-04-12 01:37:05', '114.121.246.246', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('517', '2017-04-12 01:37:17', '110.139.27.171', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('518', '2017-04-12 01:39:05', '120.188.65.207', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('519', '2017-04-12 01:39:31', '180.254.64.231', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('520', '2017-04-12 01:39:34', '202.133.6.54', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('521', '2017-04-12 01:40:40', '36.68.41.249', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('522', '2017-04-12 01:43:08', '125.163.57.73', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('523', '2017-04-12 01:44:21', '114.121.157.148', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('524', '2017-04-12 01:44:46', '140.0.229.214', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('525', '2017-04-12 01:46:15', '103.55.216.76', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('526', '2017-04-12 01:47:25', '120.188.4.116', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('527', '2017-04-12 01:48:03', '202.124.205.203', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('528', '2017-04-12 01:48:11', '202.80.212.84', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('529', '2017-04-12 01:48:52', '36.74.26.7', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('530', '2017-04-12 01:48:52', '210.57.215.142', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('531', '2017-04-12 01:48:56', '202.43.183.130', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('532', '2017-04-12 01:49:16', '61.94.50.125', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('533', '2017-04-12 01:50:14', '139.192.185.41', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('534', '2017-04-12 01:50:46', '36.72.118.174', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('535', '2017-04-12 01:51:16', '118.136.225.170', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('536', '2017-04-12 01:51:48', '202.67.46.40', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('537', '2017-04-12 01:52:04', '182.253.33.51', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('538', '2017-04-12 01:52:06', '180.254.26.52', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('539', '2017-04-12 01:52:07', '36.66.168.63', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('540', '2017-04-12 01:52:24', '112.215.45.116', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('541', '2017-04-12 01:52:52', '112.215.172.67', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('542', '2017-04-12 01:54:21', '180.245.67.128', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('543', '2017-04-12 01:55:01', '36.83.178.178', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('544', '2017-04-12 01:55:10', '118.96.213.178', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('545', '2017-04-12 01:56:30', '114.125.170.252', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('546', '2017-04-12 01:56:43', '124.153.32.100', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('547', '2017-04-12 01:57:11', '120.188.74.139', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('548', '2017-04-12 01:57:47', '124.153.33.42', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('549', '2017-04-12 01:58:44', '36.78.128.112', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('550', '2017-04-12 01:59:10', '103.228.26.4', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('551', '2017-04-12 02:00:17', '36.82.101.17', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('552', '2017-04-12 02:01:21', '139.0.54.49', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('553', '2017-04-12 02:01:23', '180.252.103.36', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('554', '2017-04-12 02:01:33', '117.102.64.82', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('555', '2017-04-12 02:03:59', '202.67.44.8', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('556', '2017-04-12 02:04:16', '114.125.26.15', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('557', '2017-04-12 02:04:23', '180.246.224.105', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('558', '2017-04-12 02:05:05', '112.215.170.35', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('559', '2017-04-12 02:05:33', '180.251.217.107', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('560', '2017-04-12 02:06:35', '36.84.39.119', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('561', '2017-04-12 02:07:10', '103.241.206.74', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('562', '2017-04-12 02:08:18', '203.160.128.8', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('563', '2017-04-12 02:09:24', '36.71.230.230', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('564', '2017-04-12 02:09:33', '118.136.40.213', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('565', '2017-04-12 02:10:26', '8.37.225.146', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('566', '2017-04-12 02:10:27', '180.251.6.162', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('567', '2017-04-12 02:10:34', '112.215.201.35', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('568', '2017-04-12 02:10:40', '120.188.64.132', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('569', '2017-04-12 02:11:13', '112.215.151.179', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('570', '2017-04-12 02:11:34', '107.167.99.205', 'Opera');
INSERT INTO `tbl_pengunjung` VALUES ('571', '2017-04-12 02:11:48', '210.211.18.82', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('572', '2017-04-12 02:11:51', '112.215.174.151', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('573', '2017-04-12 02:12:02', '120.188.73.159', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('574', '2017-04-12 02:13:39', '36.81.46.228', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('575', '2017-04-12 02:15:31', '36.77.89.224', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('576', '2017-04-12 02:16:10', '107.167.112.144', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('577', '2017-04-12 02:16:23', '125.165.178.198', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('578', '2017-04-12 02:16:50', '139.192.58.131', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('579', '2017-04-12 02:16:54', '36.69.12.48', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('580', '2017-04-12 02:17:14', '202.179.190.162', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('581', '2017-04-12 02:17:26', '36.78.33.42', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('582', '2017-04-12 02:17:48', '103.213.131.160', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('583', '2017-04-12 02:17:55', '36.85.24.1', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('584', '2017-04-12 02:18:13', '202.158.89.154', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('585', '2017-04-12 02:19:02', '36.70.91.134', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('586', '2017-04-12 02:19:15', '114.125.30.235', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('587', '2017-04-12 02:19:52', '125.163.174.117', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('588', '2017-04-12 02:20:01', '103.17.246.48', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('589', '2017-04-12 02:21:22', '36.88.134.156', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('590', '2017-04-12 02:22:53', '120.188.5.152', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('591', '2017-04-12 02:23:28', '114.124.33.225', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('592', '2017-04-12 02:23:44', '112.215.200.147', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('593', '2017-04-12 02:24:23', '180.253.125.143', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('594', '2017-04-12 02:24:30', '36.69.83.3', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('595', '2017-04-12 02:25:24', '36.68.118.78', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('596', '2017-04-12 02:25:36', '180.245.99.108', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('597', '2017-04-12 02:26:15', '8.37.225.106', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('598', '2017-04-12 02:26:16', '58.10.55.252', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('599', '2017-04-12 02:27:07', '36.73.65.61', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('600', '2017-04-12 02:27:18', '202.62.18.53', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('601', '2017-04-12 02:27:39', '180.243.101.157', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('602', '2017-04-12 02:29:40', '180.249.209.233', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('603', '2017-04-12 02:31:13', '120.188.7.226', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('604', '2017-04-12 02:31:29', '36.85.139.235', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('605', '2017-04-12 02:32:43', '203.142.64.87', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('606', '2017-04-12 02:33:19', '107.167.112.181', 'Opera');
INSERT INTO `tbl_pengunjung` VALUES ('607', '2017-04-12 02:34:05', '182.253.73.4', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('608', '2017-04-12 02:34:16', '110.136.57.170', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('609', '2017-04-12 02:38:24', '112.215.200.152', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('610', '2017-04-12 02:38:37', '168.235.205.184', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('611', '2017-04-12 02:39:48', '125.164.109.171', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('612', '2017-04-12 02:39:50', '36.73.58.152', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('613', '2017-04-12 02:40:16', '202.62.16.15', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('614', '2017-04-12 02:41:57', '36.73.54.54', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('615', '2017-04-12 02:42:26', '36.80.151.109', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('616', '2017-04-12 02:43:14', '202.67.40.199', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('617', '2017-04-12 02:43:29', '114.4.83.133', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('618', '2017-04-12 02:43:31', '173.193.202.116', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('619', '2017-04-12 02:44:18', '202.62.16.181', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('620', '2017-04-12 02:45:13', '167.114.233.118', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('621', '2017-04-12 02:45:30', '180.241.24.74', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('622', '2017-04-12 02:47:01', '125.166.212.190', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('623', '2017-04-12 02:47:21', '180.241.179.220', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('624', '2017-04-12 02:47:27', '125.167.75.246', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('625', '2017-04-12 02:47:48', '168.235.194.226', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('626', '2017-04-12 02:52:01', '118.97.137.170', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('627', '2017-04-12 02:52:53', '180.247.208.196', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('628', '2017-04-12 02:54:25', '103.9.124.211', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('629', '2017-04-12 02:56:29', '120.188.94.118', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('630', '2017-04-12 02:56:33', '36.73.12.186', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('631', '2017-04-12 02:56:44', '36.66.254.39', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('632', '2017-04-12 02:57:28', '120.188.81.56', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('633', '2017-04-12 02:59:02', '36.82.7.245', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('634', '2017-04-12 02:59:36', '103.212.43.138', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('635', '2017-04-12 03:00:38', '139.193.114.21', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('636', '2017-04-12 03:00:50', '112.215.175.249', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('637', '2017-04-12 03:01:24', '120.188.33.237', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('638', '2017-04-12 03:01:53', '36.80.106.53', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('639', '2017-04-12 03:02:10', '36.84.0.88', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('640', '2017-04-12 03:03:00', '103.57.192.122', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('641', '2017-04-12 03:04:55', '36.72.190.47', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('642', '2017-04-12 03:06:41', '125.163.105.25', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('643', '2017-04-12 03:07:06', '115.178.234.139', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('644', '2017-04-12 03:07:31', '114.120.234.114', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('645', '2017-04-12 03:08:50', '202.67.46.227', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('646', '2017-04-12 03:09:22', '36.77.160.216', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('647', '2017-04-12 03:10:14', '139.193.15.145', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('648', '2017-04-12 03:10:47', '112.215.172.245', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('649', '2017-04-12 03:10:50', '207.241.226.232', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('650', '2017-04-12 03:11:07', '120.188.0.239', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('651', '2017-04-12 03:11:09', '180.251.99.141', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('652', '2017-04-12 03:11:13', '125.162.56.58', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('653', '2017-04-12 03:11:39', '36.72.50.199', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('654', '2017-04-12 03:12:20', '139.194.66.128', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('655', '2017-04-12 03:12:55', '36.78.127.45', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('656', '2017-04-12 03:13:00', '36.74.170.244', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('657', '2017-04-12 03:13:59', '36.83.123.80', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('658', '2017-04-12 03:14:36', '36.84.13.207', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('659', '2017-04-12 03:14:50', '112.198.68.78', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('660', '2017-04-12 03:15:20', '180.251.88.168', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('661', '2017-04-12 03:15:32', '119.110.69.226', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('662', '2017-04-12 03:16:00', '36.85.65.250', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('663', '2017-04-12 03:16:43', '112.78.141.82', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('664', '2017-04-12 03:16:57', '125.163.59.51', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('665', '2017-04-12 03:17:19', '116.197.132.78', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('666', '2017-04-12 03:17:39', '120.188.67.180', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('667', '2017-04-12 03:18:27', '114.4.83.35', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('668', '2017-04-12 03:18:28', '125.162.19.20', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('669', '2017-04-12 03:18:29', '182.253.3.140', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('670', '2017-04-12 03:21:45', '36.78.130.219', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('671', '2017-04-12 03:24:05', '180.246.25.27', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('672', '2017-04-12 03:25:03', '202.150.146.82', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('673', '2017-04-12 03:25:05', '125.162.222.87', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('674', '2017-04-12 03:25:34', '120.188.86.20', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('675', '2017-04-12 03:25:43', '125.163.109.106', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('676', '2017-04-12 03:26:12', '120.188.81.160', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('677', '2017-04-12 03:29:23', '175.111.89.10', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('678', '2017-04-12 03:30:27', '114.121.245.17', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('679', '2017-04-12 03:32:54', '110.139.200.11', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('680', '2017-04-12 03:33:00', '114.125.52.89', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('681', '2017-04-12 03:33:25', '36.74.177.233', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('682', '2017-04-12 03:33:44', '180.254.162.29', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('683', '2017-04-12 03:33:53', '125.160.100.4', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('684', '2017-04-12 03:34:59', '202.77.111.104', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('685', '2017-04-12 03:35:16', '36.69.153.83', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('686', '2017-04-12 03:35:19', '180.254.13.225', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('687', '2017-04-12 03:35:24', '180.251.214.117', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('688', '2017-04-12 03:35:27', '36.74.134.188', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('689', '2017-04-12 03:35:41', '107.167.103.167', 'Opera');
INSERT INTO `tbl_pengunjung` VALUES ('690', '2017-04-12 03:36:56', '139.193.222.23', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('691', '2017-04-12 03:36:59', '182.253.72.87', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('692', '2017-04-12 03:37:10', '101.255.64.210', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('693', '2017-04-12 03:38:20', '36.69.60.79', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('694', '2017-04-12 03:38:34', '36.84.229.27', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('695', '2017-04-12 03:41:28', '202.62.16.239', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('696', '2017-04-12 03:41:42', '36.81.58.185', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('697', '2017-04-12 03:41:44', '112.215.152.52', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('698', '2017-04-12 03:42:08', '36.74.224.172', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('699', '2017-04-12 03:42:11', '112.215.200.247', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('700', '2017-04-12 03:42:34', '112.215.153.115', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('701', '2017-04-12 03:42:58', '223.164.0.178', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('702', '2017-04-12 03:42:58', '36.72.62.17', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('703', '2017-04-12 03:43:38', '103.209.131.44', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('704', '2017-04-12 03:43:43', '139.195.33.29', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('705', '2017-04-12 03:44:51', '103.61.248.82', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('706', '2017-04-12 03:46:50', '175.103.43.86', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('707', '2017-04-12 03:47:49', '120.188.94.79', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('708', '2017-04-12 03:47:53', '202.169.46.130', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('709', '2017-04-12 03:48:37', '158.140.170.38', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('710', '2017-04-12 03:49:55', '180.245.193.140', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('711', '2017-04-12 03:50:24', '180.246.157.179', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('712', '2017-04-12 03:51:51', '36.76.23.139', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('713', '2017-04-12 03:52:06', '202.67.41.213', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('714', '2017-04-12 03:52:34', '36.78.163.149', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('715', '2017-04-12 03:53:12', '158.140.166.0', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('716', '2017-04-12 03:55:36', '207.244.86.209', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('717', '2017-04-12 03:56:35', '120.188.79.122', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('718', '2017-04-12 03:58:11', '36.73.104.74', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('719', '2017-04-12 03:58:21', '222.124.22.251', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('720', '2017-04-12 03:58:32', '120.188.93.249', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('721', '2017-04-12 04:02:03', '120.188.33.199', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('722', '2017-04-12 04:02:06', '125.161.64.96', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('723', '2017-04-12 04:03:41', '182.253.122.125', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('724', '2017-04-12 04:04:06', '36.68.234.47', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('725', '2017-04-12 04:04:33', '36.72.94.211', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('726', '2017-04-12 04:04:48', '125.163.125.211', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('727', '2017-04-12 04:04:52', '180.248.243.155', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('728', '2017-04-12 04:04:58', '182.253.34.175', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('729', '2017-04-12 04:05:28', '103.24.49.225', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('730', '2017-04-12 04:06:42', '180.248.250.226', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('731', '2017-04-12 04:09:06', '36.84.157.255', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('732', '2017-04-12 04:09:09', '202.152.156.210', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('733', '2017-04-12 04:09:41', '114.125.53.87', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('734', '2017-04-12 04:09:43', '120.188.7.170', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('735', '2017-04-12 04:11:29', '152.118.148.226', 'Internet Explorer');
INSERT INTO `tbl_pengunjung` VALUES ('736', '2017-04-12 04:11:43', '182.253.188.125', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('737', '2017-04-12 04:12:47', '5.254.97.108', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('738', '2017-04-12 04:13:23', '120.188.3.109', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('739', '2017-04-12 04:14:38', '180.246.199.52', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('740', '2017-04-12 04:15:05', '210.211.17.14', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('741', '2017-04-12 04:15:59', '36.82.201.211', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('742', '2017-04-12 04:16:14', '103.23.102.111', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('743', '2017-04-12 04:17:19', '36.81.75.68', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('744', '2017-04-12 04:18:59', '114.125.39.153', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('745', '2017-04-12 04:20:34', '222.124.52.127', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('746', '2017-04-12 04:21:13', '180.248.199.49', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('747', '2017-04-12 04:22:00', '125.163.114.139', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('748', '2017-04-12 04:25:37', '107.167.99.151', 'Opera');
INSERT INTO `tbl_pengunjung` VALUES ('749', '2017-04-12 04:26:05', '114.125.116.95', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('750', '2017-04-12 04:26:49', '202.62.18.115', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('751', '2017-04-12 04:26:50', '61.8.69.82', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('752', '2017-04-12 04:28:31', '113.161.224.83', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('753', '2017-04-12 04:28:45', '103.47.132.24', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('754', '2017-04-12 04:29:03', '120.188.64.12', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('755', '2017-04-12 04:30:03', '103.47.134.26', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('756', '2017-04-12 04:30:29', '202.9.85.34', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('757', '2017-04-12 04:31:59', '182.253.62.142', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('758', '2017-04-12 04:32:07', '36.88.45.251', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('759', '2017-04-12 04:32:24', '114.121.133.17', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('760', '2017-04-12 04:33:18', '190.233.193.231', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('761', '2017-04-12 04:33:41', '202.80.215.57', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('762', '2017-04-12 04:34:18', '115.178.216.124', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('763', '2017-04-12 04:37:01', '222.165.226.122', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('764', '2017-04-12 04:38:07', '36.82.13.155', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('765', '2017-04-12 04:38:30', '202.182.59.185', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('766', '2017-04-12 04:38:42', '103.21.206.66', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('767', '2017-04-12 04:39:14', '36.69.87.71', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('768', '2017-04-12 04:39:42', '43.247.13.202', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('769', '2017-04-12 04:40:08', '66.102.7.143', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('770', '2017-04-12 04:43:21', '168.235.195.74', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('771', '2017-04-12 04:44:11', '103.8.12.99', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('772', '2017-04-12 04:44:14', '180.252.137.203', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('773', '2017-04-12 04:44:27', '36.87.53.20', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('774', '2017-04-12 04:45:06', '114.125.87.178', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('775', '2017-04-12 04:46:04', '158.140.172.34', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('776', '2017-04-12 04:46:12', '61.94.132.66', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('777', '2017-04-12 04:47:36', '101.255.60.254', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('778', '2017-04-12 04:49:09', '36.74.102.19', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('779', '2017-04-12 04:49:42', '180.246.244.93', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('780', '2017-04-12 04:49:52', '118.97.151.193', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('781', '2017-04-12 04:50:01', '117.102.122.242', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('782', '2017-04-12 04:50:51', '36.71.249.134', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('783', '2017-04-12 04:51:54', '112.215.171.45', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('784', '2017-04-12 04:52:18', '103.241.5.116', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('785', '2017-04-12 04:52:31', '36.78.103.212', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('786', '2017-04-12 04:53:09', '36.72.80.127', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('787', '2017-04-12 04:54:12', '36.78.123.228', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('788', '2017-04-12 04:54:16', '36.68.235.225', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('789', '2017-04-12 04:54:37', '125.161.181.154', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('790', '2017-04-12 04:55:13', '36.80.164.131', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('791', '2017-04-12 04:56:15', '180.245.211.69', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('792', '2017-04-12 04:56:16', '125.167.186.204', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('793', '2017-04-12 04:57:34', '114.125.119.153', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('794', '2017-04-12 04:59:59', '114.121.234.35', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('795', '2017-04-12 05:02:26', '107.167.103.67', 'Opera');
INSERT INTO `tbl_pengunjung` VALUES ('796', '2017-04-12 05:02:47', '36.80.9.250', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('797', '2017-04-12 05:02:50', '36.88.62.43', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('798', '2017-04-12 05:02:57', '114.125.184.105', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('799', '2017-04-12 05:03:07', '185.182.81.53', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('800', '2017-04-12 05:04:44', '66.102.7.141', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('801', '2017-04-12 05:04:57', '36.88.158.219', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('802', '2017-04-12 05:06:25', '36.73.34.208', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('803', '2017-04-12 05:07:58', '36.74.20.46', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('804', '2017-04-12 05:08:28', '36.82.100.128', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('805', '2017-04-12 05:09:30', '112.215.65.245', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('806', '2017-04-12 05:09:42', '114.4.78.119', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('807', '2017-04-12 05:09:46', '110.137.171.177', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('808', '2017-04-12 05:09:47', '140.0.198.87', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('809', '2017-04-12 05:10:20', '103.47.134.18', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('810', '2017-04-12 05:10:43', '36.66.46.34', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('811', '2017-04-12 05:11:32', '180.246.96.230', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('812', '2017-04-12 05:13:26', '146.185.31.213', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('813', '2017-04-12 05:18:49', '163.53.186.186', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('814', '2017-04-12 05:19:24', '202.62.16.98', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('815', '2017-04-12 05:21:09', '36.70.200.11', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('816', '2017-04-12 05:24:10', '112.215.45.58', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('817', '2017-04-12 05:25:14', '66.96.234.91', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('818', '2017-04-12 05:25:55', '103.66.199.34', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('819', '2017-04-12 05:26:53', '182.253.163.82', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('820', '2017-04-12 05:28:37', '103.3.44.1', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('821', '2017-04-12 05:29:22', '36.88.90.200', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('822', '2017-04-12 05:30:19', '180.254.255.166', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('823', '2017-04-12 05:30:24', '115.178.200.226', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('824', '2017-04-12 05:30:45', '120.188.1.120', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('825', '2017-04-12 05:32:14', '103.195.142.26', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('826', '2017-04-12 05:33:33', '120.188.0.9', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('827', '2017-04-12 05:35:18', '120.188.81.213', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('828', '2017-04-12 05:36:20', '182.253.131.41', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('829', '2017-04-12 05:36:24', '8.37.234.123', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('830', '2017-04-12 05:36:27', '36.72.34.63', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('831', '2017-04-12 05:36:36', '115.178.239.80', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('832', '2017-04-12 05:36:54', '103.58.111.34', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('833', '2017-04-12 05:38:16', '8.37.225.224', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('834', '2017-04-12 05:38:19', '112.215.200.93', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('835', '2017-04-12 05:39:20', '120.188.92.156', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('836', '2017-04-12 05:39:27', '114.125.103.119', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('837', '2017-04-12 05:40:08', '107.167.112.73', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('838', '2017-04-12 05:42:02', '120.188.66.2', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('839', '2017-04-12 05:42:44', '36.72.134.144', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('840', '2017-04-12 05:43:13', '36.66.215.5', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('841', '2017-04-12 05:44:26', '114.125.101.241', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('842', '2017-04-12 05:45:36', '182.253.37.186', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('843', '2017-04-12 05:46:05', '114.125.117.183', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('844', '2017-04-12 05:46:05', '114.125.101.71', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('845', '2017-04-12 05:46:05', '114.125.101.255', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('846', '2017-04-12 05:47:28', '114.124.34.31', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('847', '2017-04-12 05:48:28', '202.62.17.122', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('848', '2017-04-12 05:48:41', '139.192.131.90', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('849', '2017-04-12 05:52:52', '120.188.3.158', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('850', '2017-04-12 05:53:10', '200.77.128.224', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('851', '2017-04-12 05:54:26', '112.215.151.215', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('852', '2017-04-12 05:55:40', '114.4.82.59', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('853', '2017-04-12 05:55:50', '36.79.229.121', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('854', '2017-04-12 05:57:41', '118.136.224.179', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('855', '2017-04-12 06:00:38', '202.67.41.242', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('856', '2017-04-12 06:01:11', '36.77.191.150', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('857', '2017-04-12 06:01:26', '125.166.214.129', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('858', '2017-04-12 06:03:25', '202.93.231.81', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('859', '2017-04-12 06:03:40', '36.68.69.52', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('860', '2017-04-12 06:03:59', '112.215.152.222', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('861', '2017-04-12 06:04:55', '36.79.42.167', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('862', '2017-04-12 06:05:30', '103.47.134.3', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('863', '2017-04-12 06:10:29', '139.59.96.104', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('864', '2017-04-12 06:11:56', '36.73.101.192', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('865', '2017-04-12 06:12:39', '180.252.110.204', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('866', '2017-04-12 06:14:25', '36.84.224.105', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('867', '2017-04-12 06:15:20', '112.215.172.91', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('868', '2017-04-12 06:15:29', '43.252.159.29', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('869', '2017-04-12 06:16:19', '114.124.2.201', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('870', '2017-04-12 06:16:52', '103.77.50.21', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('871', '2017-04-12 06:18:18', '114.125.215.48', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('872', '2017-04-12 06:19:02', '202.62.17.10', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('873', '2017-04-12 06:20:03', '202.93.231.70', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('874', '2017-04-12 06:20:33', '103.47.134.15', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('875', '2017-04-12 06:22:24', '120.188.77.49', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('876', '2017-04-12 06:22:51', '120.188.3.239', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('877', '2017-04-12 06:24:00', '180.189.162.131', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('878', '2017-04-12 06:24:20', '36.83.36.137', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('879', '2017-04-12 06:26:02', '175.111.89.42', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('880', '2017-04-12 06:26:56', '213.171.207.70', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('881', '2017-04-12 06:27:42', '180.252.173.112', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('882', '2017-04-12 06:28:22', '115.178.234.185', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('883', '2017-04-12 06:28:28', '36.77.83.38', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('884', '2017-04-12 06:29:16', '103.248.248.86', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('885', '2017-04-12 06:29:32', '180.254.74.221', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('886', '2017-04-12 06:29:39', '36.78.55.37', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('887', '2017-04-12 06:29:48', '112.78.191.34', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('888', '2017-04-12 06:30:04', '120.188.81.161', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('889', '2017-04-12 06:30:08', '115.178.201.60', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('890', '2017-04-12 06:31:14', '36.72.202.102', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('891', '2017-04-12 06:31:58', '120.188.79.93', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('892', '2017-04-12 06:33:26', '36.80.202.16', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('893', '2017-04-12 06:35:32', '139.194.22.183', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('894', '2017-04-12 06:38:11', '120.188.87.248', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('895', '2017-04-12 06:38:30', '182.253.163.75', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('896', '2017-04-12 06:39:26', '103.213.128.19', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('897', '2017-04-12 06:40:11', '202.169.53.3', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('898', '2017-04-12 06:41:53', '202.67.40.1', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('899', '2017-04-12 06:43:22', '120.188.66.119', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('900', '2017-04-12 06:43:42', '36.74.115.169', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('901', '2017-04-12 06:46:07', '103.47.132.27', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('902', '2017-04-12 06:46:19', '180.241.75.46', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('903', '2017-04-12 06:46:19', '36.84.228.213', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('904', '2017-04-12 06:46:44', '118.136.88.249', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('905', '2017-04-12 06:49:50', '120.188.83.242', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('906', '2017-04-12 06:49:52', '36.77.137.120', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('907', '2017-05-01 19:24:03', '::1', null);
INSERT INTO `tbl_pengunjung` VALUES ('908', '2017-05-01 19:24:53', '::1', null);
INSERT INTO `tbl_pengunjung` VALUES ('909', '2017-05-01 19:25:57', '::1', null);
INSERT INTO `tbl_pengunjung` VALUES ('910', '2017-05-02 00:13:50', '::1', null);
INSERT INTO `tbl_pengunjung` VALUES ('911', '2017-05-02 01:26:09', '::1', null);
INSERT INTO `tbl_pengunjung` VALUES ('912', '2017-05-06 21:43:17', '::1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('913', '2017-05-07 09:18:38', '::1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('914', '2017-05-13 19:19:10', '::1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('915', '2017-05-14 00:08:02', '::1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('916', '2017-05-16 19:30:09', '::1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('917', '2017-05-17 14:46:05', '::1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('918', '2017-05-23 12:01:55', '::1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('919', '2017-06-01 22:37:00', '::1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('920', '2017-06-21 07:48:57', '::1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('921', '2017-06-22 05:58:34', '::1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('922', '2017-06-24 06:00:36', '::1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('923', '2017-06-27 05:25:17', '::1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('924', '2017-07-01 08:10:04', '::1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('925', '2017-07-28 15:59:06', '::1', 'Firefox');

-- ----------------------------
-- Table structure for tbl_siswa
-- ----------------------------
DROP TABLE IF EXISTS `tbl_siswa`;
CREATE TABLE `tbl_siswa` (
  `siswa_id` int(11) NOT NULL AUTO_INCREMENT,
  `siswa_nis` varchar(20) DEFAULT NULL,
  `siswa_nama` varchar(70) DEFAULT NULL,
  `siswa_jenkel` varchar(2) DEFAULT NULL,
  `siswa_kelas_id` int(11) DEFAULT NULL,
  `siswa_photo` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`siswa_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_siswa
-- ----------------------------
INSERT INTO `tbl_siswa` VALUES ('1', '9287482', 'Alvaro Sanchez', 'L', '8', '083d547659a2d4bb15c0322d15955da5.png');
INSERT INTO `tbl_siswa` VALUES ('2', '9287483', 'Ririn Cantika', 'P', '8', '74eec6ad37550cc12fe8fa83d46878af.jpg');
INSERT INTO `tbl_siswa` VALUES ('4', '123083', 'Ari Hidayat', 'L', '1', 'e371e67618ad53c99de380782c373023.png');
INSERT INTO `tbl_siswa` VALUES ('5', '123084', 'Irma Chaiyo', 'P', '1', '1e148b42c71562841ba3018fc97b748a.png');
INSERT INTO `tbl_siswa` VALUES ('6', '123085', 'Nadila Ginting', 'P', '1', '8125da21f903803b6992214967239ab3.png');
INSERT INTO `tbl_siswa` VALUES ('7', '123086', 'Anna Marina', 'P', '1', '33eaf3e3faf28a0fe31670c022f641f1.png');
INSERT INTO `tbl_siswa` VALUES ('8', '123086', 'Dhea Lubis', 'P', '1', '03e651410e969c3c26e8e0d35380470d.png');
INSERT INTO `tbl_siswa` VALUES ('9', '123087', 'Nadia Ginting', 'P', '1', 'd7823f8d98d376c085aa284a54d63264.png');
INSERT INTO `tbl_siswa` VALUES ('10', '123088', 'Mita Febrina', 'P', '1', 'eca0280a4a57c911ee68b8318d1e517f.png');
INSERT INTO `tbl_siswa` VALUES ('11', '123089', 'Elizabeth ', 'P', '1', 'ec1232a08d650bc8c3197c9db95a7fc8.png');
INSERT INTO `tbl_siswa` VALUES ('12', '123090', 'Della Guswono', 'P', '1', '6c82fce13bb3eff1fd2e897b2c3cfeeb.png');

-- ----------------------------
-- Table structure for tbl_testimoni
-- ----------------------------
DROP TABLE IF EXISTS `tbl_testimoni`;
CREATE TABLE `tbl_testimoni` (
  `testimoni_id` int(11) NOT NULL AUTO_INCREMENT,
  `testimoni_nama` varchar(30) DEFAULT NULL,
  `testimoni_isi` varchar(120) DEFAULT NULL,
  `testimoni_email` varchar(35) DEFAULT NULL,
  `testimoni_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`testimoni_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_testimoni
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_tulisan
-- ----------------------------
DROP TABLE IF EXISTS `tbl_tulisan`;
CREATE TABLE `tbl_tulisan` (
  `tulisan_id` int(11) NOT NULL AUTO_INCREMENT,
  `tulisan_judul` varchar(100) DEFAULT NULL,
  `tulisan_isi` text,
  `tulisan_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `tulisan_kategori_id` int(11) DEFAULT NULL,
  `tulisan_kategori_nama` varchar(30) DEFAULT NULL,
  `tulisan_views` int(11) DEFAULT '0',
  `tulisan_gambar` varchar(40) DEFAULT NULL,
  `tulisan_pengguna_id` int(11) DEFAULT NULL,
  `tulisan_author` varchar(40) DEFAULT NULL,
  `tulisan_img_slider` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tulisan_id`),
  KEY `tulisan_kategori_id` (`tulisan_kategori_id`),
  KEY `tulisan_pengguna_id` (`tulisan_pengguna_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_tulisan
-- ----------------------------
INSERT INTO `tbl_tulisan` VALUES ('18', 'Belajar di luar ruangan merupakan cara yang efektif dalam belajar', '<p>Menjalani aktifitas belajar yang padat, terkadang dapat meningkatkan stres yang tinggi bagi siswa. Setiap siswa memiliki cara yang berbeda untuk mengembalikan semangat mereka dalam belajar.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel v Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n', '2017-05-17 16:15:54', '1', 'Pendidikan', '6', '2dc57557d0e3902753e5e88979119e67.jpg', '1', 'M Fikri Setiadi', '1');
INSERT INTO `tbl_tulisan` VALUES ('19', 'Cantik, multi talenta. itulah sebuat untuk siswa yang satu ini', '<p>Talenta luar biasa bukan hanya dimiliki oleh kaum pria saja. Nyatanya siswa cantik yang satu ini sangat berakat memainkan alat musik tradisional yaitu seruling. Ini adalah sampel artikel&nbsp; Ini adalah sampel artikel&nbsp; Ini adalah sampel artikel &nbsp; Ini adalah sampel artikel &nbsp; Ini adalah sampel artikel &nbsp; Ini adalah sampel artikel &nbsp; Ini adalah sampel artikel &nbsp; Ini adalah sampel artikel &nbsp; Ini adalah sampel artikel &nbsp; Ini adalah sampel artikel &nbsp; Ini adalah sampel artikel &nbsp; Ini adalah sampel artikel &nbsp; Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel .</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel v Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel vv Ini adalah sampel artikel Ini adalah sampel artikel vvv Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel .</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel .</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n', '2017-05-17 16:21:24', '6', 'Prestasi', '2', '2c4b0960f1ca907c24af163b29ae1cec.jpg', '1', 'M Fikri Setiadi', '0');
INSERT INTO `tbl_tulisan` VALUES ('20', 'Persiapan siswa menjelang ujian nasional', '<p>Banyak metode bejalar yang dilakukan oleh siswa untuk persiapan menghadapi ujian nasional (UN). Biantaranya mengingat dengan metode Mind Map, ataupun bejalar diluar kelas (outdoor).&nbsp; Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n', '2017-05-17 16:24:42', '1', 'Pendidikan', '0', 'df0d8ccac0ba567fe01079b0477c5c12.jpg', '1', 'M Fikri Setiadi', '1');
INSERT INTO `tbl_tulisan` VALUES ('21', 'Siswi alai M-Sekolah', '<p>Remaja beumur 15-22 tahun, biasa beperilaku alai dan cenderung lebai. Di M-Sekolah sendiri ada begitu banyak siswa yang berperilaku alai dan lebai. Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n', '2017-05-17 16:34:28', '1', 'Pendidikan', '4', '20b326d88bc3454a82624a671021e1da.jpg', '1', 'M Fikri Setiadi', '0');
INSERT INTO `tbl_tulisan` VALUES ('22', 'Prestasi membangga dari siswa m-sekolah', '<p>Prestasi dan penghargaan merupakan trigger (pemicu) semangat belajar siswa. Ada banyak prestasi yang telah diraih oleh siswa m-sekolah. Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n', '2017-05-17 16:38:21', '6', 'Prestasi', '1', '2b594ea1f1b782e89f10f572ce193122.jpg', '1', 'M Fikri Setiadi', '1');
INSERT INTO `tbl_tulisan` VALUES ('23', 'Pelaksanaan Ujian Nasional M-Sekolah', '<p>Pelaksanaan UN (Ujian Nasional) di sekolah M-Sekolah berlangsung tentram dan damai. Terlihat ketenangan terpancar diwajah siswa berprestasi.&nbsp; Ini adalah sampel artikel Ini adalah sampel artikel&nbsp; Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n', '2017-05-17 16:41:30', '1', 'Pendidikan', '2', '6866d36b2085f40dd4d5b18b664af6bc.jpg', '1', 'M Fikri Setiadi', '0');
INSERT INTO `tbl_tulisan` VALUES ('24', 'Proses belajar mengajar m-sekolah', '<p>Proses belajar mengajar di sekolah m-sekolah berlangsung menyenangkan. Didukung oleh instruktur yang fun dengan metode mengajar yang tidak biasa. Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel a Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel .</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n', '2017-05-17 16:46:29', '1', 'Pendidikan', '2', '67bac7f1c3891034cf9d55e66c44aa10.jpg', '1', 'M Fikri Setiadi', '1');
