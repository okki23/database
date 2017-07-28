/*
Navicat MySQL Data Transfer

Source Server         : localhost_mysql
Source Server Version : 50616
Source Host           : 127.0.0.1:3306
Source Database       : db_travel

Target Server Type    : MYSQL
Target Server Version : 50616
File Encoding         : 65001

Date: 2017-07-28 20:17:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `idadmin` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(35) DEFAULT NULL,
  `level` varchar(3) DEFAULT NULL,
  `photo` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`idadmin`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('2', 'Admin', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '1', '4200d2514abf45755943526b74474c16.jpg');
INSERT INTO `admin` VALUES ('4', 'Mario Gotze', 'gotze', 'bb8db7d398f5e236f3b6f7f72b7c2f22', '2', null);

-- ----------------------------
-- Table structure for album
-- ----------------------------
DROP TABLE IF EXISTS `album`;
CREATE TABLE `album` (
  `idalbum` int(11) NOT NULL AUTO_INCREMENT,
  `jdl_album` varchar(200) DEFAULT NULL,
  `cover` varchar(40) DEFAULT NULL,
  `jml` int(11) DEFAULT NULL,
  PRIMARY KEY (`idalbum`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of album
-- ----------------------------
INSERT INTO `album` VALUES ('3', 'Singgalang Expedition', 'file_1460289167.jpg', '1');
INSERT INTO `album` VALUES ('4', 'Fly with Hammock', 'file_1460289974.jpg', '2');
INSERT INTO `album` VALUES ('5', 'Marapi Expedition', 'file_1460363423.JPG', '0');
INSERT INTO `album` VALUES ('6', 'Volcano', 'file_1460367801.jpg', '0');
INSERT INTO `album` VALUES ('7', 'Sunrise', 'file_1460367841.jpg', '0');
INSERT INTO `album` VALUES ('9', 'Diatas Awan', 'file_1460368005.jpg', '2');

-- ----------------------------
-- Table structure for berita
-- ----------------------------
DROP TABLE IF EXISTS `berita`;
CREATE TABLE `berita` (
  `idberita` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(200) DEFAULT NULL,
  `isi` text,
  `tglpost` datetime DEFAULT NULL,
  `gambar` varchar(40) DEFAULT NULL,
  `tgl_last_update` datetime DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `views` int(11) DEFAULT '0',
  PRIMARY KEY (`idberita`),
  KEY `adminid` (`user`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of berita
-- ----------------------------
INSERT INTO `berita` VALUES ('1', '7 Tips Penting Mengatasi Kritik', '<p>Kritik bisa menjadi hal yang menyakitkan. Namun jika kritik yang diberikan memang beralasan, kritik bisa memberikan anda masukan baru untuk diri anda dan kehidupan anda.</p>\r\n<p>Kebanyakan tips di artikel ini dapat digunakan untuk mengatasi kritik yang ditujukan pada anda dengan cara yang lebih baik. Namun disini saya juga ingin menunjukkan bahwa sangatlah berguna untuk memeriksa kembali tujuan anda pada saat anda merasa anda harus mengkritik seseorang. Dengan memeriksa diri anda, anda bisa semakin mengenal kehidupan anda saat ini dan pendapat anda mengenai diri anda sendiri.</p>\r\n<p><strong>1. Mengerti Melalui Pengalaman</strong></p>\r\n<p><em>&rdquo;Jangan mengkritik apa yang tak kau pahami. Kau tidak akan pernah berada pada posisi orang itu.&rdquo;</em><br /> - Elvis Presley -</p>\r\n<p><em>&rdquo;Setiap orang bodoh bisa mengkritik, menuduh dan mengeluh; dan kebanyakan orang bodoh melakukan hal itu.&rdquo;</em><br /> - Benjamin Franklin -</p>\r\n<p>Sangatlah mudah untuk jatuh dalam perangkap untuk selalu mengkritik. Namun apakah anda benar-benar mengerti apa yang anda kritik?</p>\r\n<p>Berdasarkan pengalaman pribadi, saya menemukan bahwa seseorang cenderung tidak mengkritik jika ia telah mengalaminya sendiri dan memahaminya. Berbeda jika orang tersebut hanya memiliki pengetahuan saja dan tidak pernah mengalaminya sendiri.</p>\r\n<p>Sangatlah mudah untuk bertindak seperti seorang bos, selalu mengetahui apa yang benar sesuai dengan pandangan anda sendiri. Mengkritik membuat anda merasa enak dan seakan-akan andalah yang benar.</p>\r\n<p>Namun pada akhirnya, orang yang mengkritik tidak akan memperoleh keuntungan atau manfaat apapun.</p>\r\n<p><strong>2. Ingatlah Siapa yang Akhirnya Memperoleh Manfaat</strong></p>\r\n<p><em>&ldquo;Bukanlah kritik yang anda berikan untuk diperhitungkan; bukan orang yang menjatuhkan seseorang yang kuat atau seseorang yang hanya berniat untuk melakukan yang lebih baik namun tidak melakukannya. Manfaat dari kritik akan diterima oleh orang yang sedang berada di arena; yang wajahnya dipenuhi oleh debu, keringat, dan darah, yang berjuang, yang melakukan kesalahan dan gagal berulang kali; karena tidak ada usaha tanpa adanya kegagalan dan kesalahan. Namun manfaat terbesar diterima oleh seseorang yang meraih keberhasilan; seseorang yang memiliki antusiasme, dedikasi, seseorang yang menghabiskan waktu melakukan sesuatu yang berharga; seseorang yang mengetahui bahwa pada akhirnya ia akan memperoleh kemenangan. Dan kalaupun ia gagal, setidaknya ia gagal setelah berusaha dengan sangat keras. Sehingga tempat ia berada bukanlah bersama dengan orang-orang yang negatif dan penakut yang tidak pernah mengenal apa arti kemenangan atau kekalahan.&rdquo;</em><br /> - Theodore Roosevelt -</p>\r\n<p>Kalimat luar biasa dan pemikiran yang perlu anda selalu ingat. Terutama bagi mereka yang berada diluar sana dan memilih untuk bekerja keras. Pilihan yang tidak diambil oleh semua orang. Anda bisa saja berdiri di samping dan mengktitik, yang tentunya merupakan pilihan yang lebih mudah.</p>\r\n<p>Namun hanya berdiam diri menyaksikan <a href=\"http://www.akuinginsukses.com/10-hukum-kehidupan-paling-populer/\">kehidupan</a> dan tidak menjalaninya bukanlah keputusan terbaik. Karena setiap kali anda berdiri di samping dan hanya menyaksikan kehidupan berjalan; anda mungkin tidak melakukan hal-hal yang anda rasakan. Sikap seperti ini membuat anda merasa tidak nyaman dengan diri anda sendiri atau terhadap kehidupan anda.</p>\r\n<p><strong>3. Fokuslah Pada Hal-Hal Yang Membantu Anda</strong></p>\r\n<p><em>&rdquo;Seorang artis tidak memiliki waktu untuk mendengarkan kritik. Seseorang yang ingin menjadi penulis membaca ulasan, sementara seseorang yang ingin menulis tidak memiliki waktu untuk membaca ulasan.&rdquo;</em><br /> - William Faulkner -</p>\r\n<p>Jika anda sedang mengerjakan apa yang anda ingin kerjakan, mengalami kegagalan, mempelajarinya dan mengulanginya terus menerus; berarti anda melakukan sesuatu yang menurut anda berharga.</p>\r\n<p><em>Keep your eyes on the ball</em>. Istilah ini sangatlah bermanfaat bagi anda untuk tetap berfokus. Jika anda sedang bertanding dan melihat ke bagian samping lapangan, anda mungkin melihat orang mengejek dan sebagian menyemangati anda. Namun untuk memperoleh hasil yang anda inginkan, anda harus fokus. Fokuslah pada apa yang sedang anda lakukan di lapangan.</p>\r\n<p>Masalahnya adalah jika anda mendengarkan suara-suara positif tersebut, maka anda mau tidak mau juga harus mendengarkan suara-suara negatif nya. Bagaimana anda bisa melalui masalah ini? Jangan tentukan diri anda berdasarkan pendapat orang lain. Daripada melakukan hal itu, jadilah diri anda sendiri dengan memfokuskan pada hal-hal positif yang anda pikirkan dan lakukan. Serta kenalilah diri anda sendiri, bukan apa yang orang lain pikirkan mengenai diri anda.</p>\r\n<p>Pendapat saya mengenai pujian &ndash; pendapat yang selalu saya jadikan pegangan &ndash; adalah pujian merupakan sesuatu hal yang baik dan saya sangat menghargainya. Sangatlah baik untuk memperoleh pujian, namun seringkali saya menjadi terlalu senang sampai saya lupa diri.</p>\r\n<p>Kebalikan dari pemikiran ini adalah ketika anda menerima kritik negatif. Anda bisa mencerna kritik semacam ini tanpa terlalu banyak emosi negatif menghalangi pikiran anda. Hal ini memungkinkan anda menghargai kritik yang diberikan (jika memang ada sesuatu yang bisa anda pelajari).</p>\r\n<p>Pada dasarnya pemikiran ini bekerja dengan tidak mempedulikan apa pendapat orang lain mengenai diri anda. Jika anda memikirkan pendapat orang lain, anda akan menjadi seseorang yang bergantung pada orang lain dan membiarkan pendapat orang lain mengendalikan anda.</p>\r\n<p><strong>4. Jangan Terima Kritik</strong></p>\r\n<p><em>&ldquo;Seorang pria menyela kuliah yang diberikan Buddha dengan sejumlah makian. Buddha menunggu sampai pria tersebut selesai lalu bertanya, &ldquo;Jika seorang menawarkan sebuah hadiah namun hadiah tersebut ditolak; siapa yang menjadi pemilik hadiah tersebut?&rdquo;</em></p>\r\n<p><em>&ldquo;Milik orang yang menawarkan hadiah tersebut,&rdquo; kata sang pria.</em></p>\r\n<p><em>&rdquo;Nah,&rdquo; kata sang Buddha, &ldquo;Saya menolak makian serta permintaan anda.&rdquo;</em></p>\r\n<p>Jangan terima kritik yang ditujukan pada anda. Anda tidak harus menerimanya. Maka kritik tersebut akan menjadi milik orang yang mengkritik.</p>\r\n<p>Hal ini tentunya lebih mudah dikatakan daripada dilakukan; membiarkan orang lain menyimpan perasaan serta pendapat mereka sendiri daripada membiarkan perasaan dan pendapat tersebut menjadi bagian diri anda. Bahkan merasa bertanggung jawab atas pendapat serta pikiran orang lain tersebut.</p>\r\n<p>Namun, seseorang bisa melakukannya jika ia menyadari apa yang Buddha deskripsikan. Lalu anda bisa menolak hadiah yang diberikan daripada memikirkan bahwa anda harus menerima hadiah tersebut. Hal ini mungkin tidak selalu berhasil setiap saat, terutama jika anda sedang emosional dan rapuh. Namun, hal ini tetap perlu anda ingat.</p>\r\n<p><strong>5. Siapa Yang Sedang Anda Bicarakan?</strong></p>\r\n<p><em>&rdquo;Ketika kita menghakimi atau mengkritik orang lain, kritik tersebut tidak tertuju pada orang yang anda kritik; kritik tersebut mengatakan sesuatu tentang kebutuhan pribadi kita untuk menjadi kritis.&rdquo;</em><br /> - Anonim -</p>\r\n<p>Ketika anda mengkritik seseorang, apa arti kritik tersebut bagi anda? Dan ketika seseorang mengkritik anda, siapa yang sedang menunjukkan dirinya yang sebenarnya?</p>\r\n<p>Jika seseorang menyerang anda secara pribadi atau melepaskan kata-kata yang menghancurkan; ingatlah bahwa kritik yang ia utarakan tidak selalu mengenai diri anda. Kritik menjadi sarana bagi orang yang memberikan kritik untuk melepaskan atau menyalurkan <a href=\"http://www.akuinginsukses.com/10-cara-praktis-mengatasi-rasa-marah/\">rasa marah</a>, frustrasi atau kecemburuannya. Atau sebuah cara untuk memaksakan sudut pandang atau pahamnya sebagai hal yang benar. Atau ia mungkin memiliki kebiasaan untuk memancing emosi orang lain untuk mengundang perdebatan, perkelahian atau untuk mendapatkan perhatian. Dalam hal ini yang menjadi masalah adalah orang tersebut. Bukan karena apa yang anda lakukan.</p>\r\n<p>Ingatlah bahwa orang tersebut hanyalah manusia dan mungkin saja ia sedang mengalami hari atau minggu yang buruk.</p>\r\n<p>Hal ini tidak hanya berlaku bagi orang lain, namun juga berlaku bagi anda. Ketika anda merasa harus mengkritik; tanyakan alasannya pada diri anda terlebih dahulu. Ketika anda mengkritik orang yang sebenarnya tidak perlu anda kritik, ingatlah bahwa anda menyakiti diri anda sendiri dan memaksakan pemikiran serta ego anda dengan sikap semacam ini.</p>\r\n<p><strong>6. Ada Pilihan Yang Lebih Baik</strong></p>\r\n<p><em>&rdquo;Saya belum menemukan seorang pun, terlepas dari apapun kedudukannya, yang tidak bekerja dengan lebih baik bahkan memberikan segenap kemampuannya jika ia mendapatkan pengakuan dibandingkan dengan jika ia bekerja dibawah kritik.&rdquo;</em><br /> - Charles Schwab -</p>\r\n<p>Jadi, apa yang bisa dilakukan seseorang selain mengkritik orang lain agar mereka memperbaiki diri? Salah satunya adalah dengan menyemangati mereka; dengan memfokuskan diri pada hal-hal baik yang mereka lakukan dan bagaimana mereka bisa terus memperbaiki diri dan tidak mengacaukan segalanya.</p>\r\n<p>Seperti yang dikatakan Schwab, dan sama halnya dengan yang sudah anda pahami dari kehidupan anda, dengan memberikan semangat pada orang lain, contohnya memberikan semangat pada seseorang di tempat kerja akan memiliki dampak positif bagi mood, <a href=\"http://www.akuinginsukses.com/gandakan-produktivitas-stop-lakukan-25-hal-ini/\">produktivitas</a>, antusiasme dan motivasi.</p>\r\n<p>Energi akan mengalir ke tempat perhatian anda tertuju. Jadi kemanapun perhatian anda tertuju &ndash; kritik atau memberi semangat pada orang lain &ndash; energi anda akan bertambah kuat. Seseorang mungkin berpendapat bahwa kritik tajam akan membantu dan memberikan hasil. Namun sebenarnya kritik akan mengecewakan orang lain dan mengganggu emosinya.</p>\r\n<p><strong>7. Terimalah Fakta Bahwa Kritik Akan Selalu Ada</strong></p>\r\n<p><em>&rdquo;Kritik bukanlah sesuatu yang bisa kita hindari dengan mudah dengan tidak mengatakan sesuatu, dan tidak menjadi diri anda sendiri.&rdquo;</em><br /> - Aristoteles -</p>\r\n<p>Karena kritik seringkali merupakan salah satu bentuk ekspresi diri sendiri dari orang yang memberi kritik atau karena berdasarkan kurangnya pemahaman terhadap sesuatu, maka tidak ada banyak hal yang bisa anda lakukan untuk menjauhi kritik. Namun anda bisa mengurangi interaksi dengan orang-orang yang sangat negatif dan suka mengkritik. Atau tetaplah fokus pada hal-hal yang sedang anda kerjakan daripada kritik yang ada.</p>\r\n<p>Namun apapun yang anda lakukan, beberapa orang memiliki kebutuhan untuk mengkritik.<br /> Apapun yang anda kerjakan, akan selalu ada orang-orang yang tidak menyukai hal-hal yang anda kerjakan, dan hal itu merupakan sesuatu yang wajar.</p>\r\n<p>Seperti yang dikatakan oleh Eleanor Roosevelt:<br /> <em>&rdquo;Lakukan sesuai dengan apa yang hati anda katakan &ndash; karena anda akan tetap menerima kritikan. Anda akan dikutuk jika anda melakukannya, dan dikutuk jika anda tidak melakukannya.&rdquo;</em></p>', '2016-04-09 16:52:44', 'file_1460210206.jpg', '2016-04-09 20:56:46', 'admin', '0');
INSERT INTO `berita` VALUES ('2', '7 Kebiasaan Manusia yang Sangat TIDAK Efektif', '<p style=\"text-align: justify;\">Anda mungkin sudah pernah membaca buku karangan Stephen R. Covey yang berjudul 7 Kebiasaan Manusia yang Sangat Efektif, yang juga merupakan salah satu buku best seller international. Jika anda belum pernah membacanya, saya sangat merekomendasikan buku tersebut kepada anda. Buku wajib yang perlu anda miliki jika anda ingin mengembangkan kepribadian anda. Anda bisa mendapatkannya di toko-toko buku favorit anda.</p>\r\n<p style=\"text-align: justify;\">Pada kesempatan kali ini saya akan mensharingkan kepada anda kebiasaan-kebiasaan manusia dari sudut pandang yang berlawanan, yaitu 7 Kebiasaan Manusia yang Sangat TIDAK Efektif.</p>\r\n<p style=\"text-align: justify;\">Tujuh kebiasaan ini harus anda hindari. Mungkin anda sendiri tidak menyadarinya karena sudah menjadi kebiasaan anda sehari-hari.</p>\r\n<p style=\"text-align: justify;\">Apa saja 7 kebiasaan tersebut, mari kita lihat bersama-sama :</p>\r\n<p style=\"text-align: justify;\"><strong>1. Tidak &rsquo;menampakkan diri&rsquo;</strong></p>\r\n<p style=\"text-align: justify;\">Salah satu hal paling sederhana namun memiliki efek yang sangat besar untuk anda dalam meraih <a href=\"http://www.akuinginsukses.com/apa-arti-sukses-bagi-anda/\">kesuksesan</a> &ndash; entah itu dalam kehidupan sosial, karir, keuangan ataupun kesehatan &ndash; adalah tampakkan diri anda lebih sering.</p>\r\n<p style=\"text-align: justify;\">Apa maksud &rsquo;menampakkan diri&rsquo; disini? Saya akan memberikan sebuah ilustrasi : Jika anda ingin memperbaiki kesehatan anda, maka salah satu hal terpenting dan terefektif adalah anda menampakkan diri di tempat kebugaran sesuai dengan jadwal latihan anda.<br /> Mungkin saat itu cuaca sedang tidak mendukung sehingga anda merasa enggan sekali keluar dari rumah. Namun jika anda tetap memaksakan diri untuk pergi meskipun anda malas, maka anda sudah memperbaiki mental anda jauh lebih cepat dibanding anda hanya duduk di sofa sambil menonton tv.</p>\r\n<p style=\"text-align: justify;\">Saya rasa ini berlaku di semua area dalam hidup anda. Jika anda menulis lebih sering, maka suatu saat anda akan menjadi penulis top dimana hasil tulisan anda akan selalu ditunggu orang untuk dibaca. Jika anda sering bertemu atau berkumpul dengan teman-teman, maka kemungkinan anda bertemu dengan seseorang yang spesial bertambah besar.</p>\r\n<p style=\"text-align: justify;\">Hanya dengan anda &rsquo;menampakkan diri&rsquo; lebih sering akan membuat sebuah perbedaan yang sangat besar untuk kesuksesan anda. Jika tidak, anda tidak akan pergi kemana-mana.</p>\r\n<p style=\"text-align: justify;\"><strong>2. Menunda pekerjaan</strong></p>\r\n<p style=\"text-align: justify;\">Ada 2 kondisi yang menyebabkan seseorang menunda pekerjaannya :</p>\r\n<p style=\"text-align: justify;\">- Pertama, dia memiliki pekerjaan yang sangat menumpuk. Dia bingung apa yang harus dia kerjakan terlebih dahulu. Akhirnya dia tidak mengerjakan apa-apa.</p>\r\n<p style=\"text-align: justify;\">- Kedua, dia hanya memiliki sedikit pekerjaan, sehingga dia berpikir untuk menundanya terlebih dahulu.</p>\r\n<p style=\"text-align: justify;\">Terlepas dari apapun kondisi anda, dibawah ini adalah beberapa cara yang bisa anda lakukan agar anda dapat keluar dari kebiasaan menunda ini :</p>\r\n<p style=\"text-align: justify;\">- Lakukanlah tugas terberat dan terpenting terlebih dahulu di pagi hari. Awal yang baik di pagi hari akan membuat momentum yang positif sehingga anda akan menjalani sisa hari anda dengan lebih bersemangat.</p>\r\n<p style=\"text-align: justify;\">- Anda mungkin sering mendengar sebuah joke : bagaimana caranya makan seekor gajah? &hellip;.. Jangan memakannya dalam sekali gigit! Jika anda hanya berpikir tugas yang menumpuk sedang menanti anda, kepala anda dapat menjadi penat, akhirnya akan membawa anda pada penundaan. Pecahlah tugas anda menjadi langkah-langkah kecil, dan fokuslah pada langkah pertama. Setelah selesai, anda bisa melanjutkan ke langkah kecil berikutnya. (saya pernah mengulas juga di artikel <a href=\"http://www.akuinginsukses.com/bagaimana-tetap-termotivasi-untuk-menyelesaikan-apa-yang-telah-anda-mulai/\">Bagaimana Tetap Termotivasi Untuk Menyelesaikan Apa yang Telah Anda Mulai</a>)</p>\r\n<p style=\"text-align: justify;\">- Jika anda berpikir untuk menunda pekerjaan karena anda hanya memiliki sedikit pekerjaan, sebaiknya anda mulai berpikir bagaimana jika tiba-tiba anda mendapatkan tugas baru sementara tugas yang lama belum anda kerjakan. Gunakan selalu prinsip : &rsquo;lakukan sekarang juga hal-hal yang bisa anda lakukan sekarang&rsquo;.</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><strong>3. Anda melakukan sesuatu yang sebetulnya tidak penting</strong></p>\r\n<p style=\"text-align: justify;\">Kebiasaan lainnya yang tidak produktif, selain menunda, adalah anda menyibukkan diri dengan hal-hal yang tidak penting.<br /> Untuk menghindari hal ini, tuliskan 3 hal penting yang harus anda lakukan setiap hari, entah itu diatas kertas atau di notebook anda, dan mulailah mengerjakannya dari urutan teratas. Meskipun anda hanya sanggup menyelesaikan 1 pekerjaan saja, namun setidaknya anda telah melakukan hal terpenting yang perlu anda lakukan di hari tersebut.</p>\r\n<p style=\"text-align: justify;\">Apapun cara yang anda gunakan dalam mengatur pekerjaan anda, prioritas utama tetaplah menemukan hal-hal terpenting yang perlu anda lakukan setiap harinya. Teknik ini juga merupakan bagian dari manajemen waktu yang efektif, sehingga anda tidak menghabiskan hari-hari anda dengan melakukan hal-hal yang tidak penting. Menyelesaikan suatu pekerjaan dengan cepat tetap tidak akan berarti jika anda melakukan hal yang tidak penting.</p>\r\n<p style=\"text-align: justify;\">Saya akan coba memberikan contoh sederhana. Misalkan anda adalah seorang manajer sebuah departemen produksi. Suatu ketika anak buah anda melakukan kesalahan sehingga produk yang dihasilkan mengalami cacat. Mana yang akan anda pilih :</p>\r\n<p style=\"text-align: justify;\">1. Anda bersama anak buah anda memperbaiki produk yang cacat tersebut; atau</p>\r\n<p style=\"text-align: justify;\">2. Anda mencari solusi agar kejadian tersebut tidak terulang kembali.</p>\r\n<p style=\"text-align: justify;\">Saya rasa anda sudah menangkap maksud saya mengenai hal yang penting dan tidak penting.</p>\r\n<p style=\"text-align: justify;\"><strong>4. Berpikir terlalu lama</strong></p>\r\n<p style=\"text-align: justify;\">Orang yang berpikir terlalu lama, otomatis akan membuatnya kurang mengambil tindakan. Terjebak dalam analisa yang berlebihan dapat membuang waktu-waktu berharga dalam hidup anda. Tidak ada yang salah dengan berpikir sebelum melakukan tindakan, bahkan sangat diperlukan hal semacam itu. Melakukan penelitian, membuat rencana, menggali potensi-potensi keuntungan serta masalah yang mungkin terjadi.</p>\r\n<p style=\"text-align: justify;\">Namun berpikir, berpikir dan terus berpikir adalah cara lain mensia-siakan hidup anda. Anda tidak perlu menganalisa semua hal dari setiap sudut. Anda tidak bisa menunggu waktu yang betul-betul tepat untuk menjalankan aksi anda. Percayalah waktu tersebut tidak akan datang. Anda juga tidak perlu merisaukan bagaimana jika <a href=\"http://www.akuinginsukses.com/mengapa-anda-tidak-perlu-khawatir-dengan-kegagalan/\">kegagalan</a> menghampiri anda. Jika anda tetap berpikir dan terus berpikir semakin dalam, maka anda akan semakin sulit untuk mengambil tindakan.</p>\r\n<p style=\"text-align: justify;\">Berhentilah berpikir, lakukan sekarang juga apapun yang perlu anda lakukan, pergilah kemanapun anda perlu pergi.</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><strong>5. Melihat sisi negatif dari setiap hal</strong></p>\r\n<p style=\"text-align: justify;\">Ketika anda melihat segala hal dari sudut yang negatif, maka sebetulnya anda telah menjatuhkan motivasi anda sendiri. Anda menemukan kekurangan dimana-mana dan masalah-masalah yang mungkin tidak betul-betul ada, contohnya ketika anda mencari alasan untuk tidak melakukan sesuatu. Saya yakin dari sudut yang negatif anda setidaknya akan menemukan 10 alasan.</p>\r\n<p style=\"text-align: justify;\">Contoh yang lain, anda mencari seseorang yang mau mendengarkan keluh kesah anda &ndash; padahal sebetulnya tidak ada yang mau mendengarkan keluhan anda &ndash; tentang pekerjaan dan kehidupan anda yang menjenuhkan atau atasan anda yang menyebalkan. Ketahuilah bahwa anda akan menciptakan hidup anda sesuai dengan apa yang anda pikirkan dan bagaimana anda memandang lingkungan anda. Jika anda memandang kehidupan anda begitu menjemukan, anda akan memiliki kehidupan yang benar-benar menjemukkan.</p>\r\n<p style=\"text-align: justify;\">Yang perlu anda lakukan tidak lain adalah anda menantang pada diri anda sendiri untuk selalu berpikir positif selama 7 hari kedepan. Lihatlah nanti hasil luar biasa yang akan anda dapat.</p>\r\n<p style=\"text-align: justify;\"><strong>6. Keras kepala pada pendirian anda sendiri dan menolak pendapat orang lain</strong></p>\r\n<p style=\"text-align: justify;\">Memang sulit untuk mengakui atau berjiwa besar bahwa pendapat anda bukanlah pilihan yang terbaik. Sehingga anda ngotot pada pendapat anda dan menutup pikiran anda dari pengaruh orang lain. Kondisi ini dapat menyebabkan anda sulit untuk berkembang menjadi pribadi yang lebih efektif.</p>\r\n<p style=\"text-align: justify;\">Saran untuk mengatasi permasalah ini adalah anda menyadari bahwa manusia mempunyai batas atas hal-hal yang ia ketahui. Anda harus terbuka untuk menerima pelajaran atas kesalahan anda sendiri, kesalahan orang lain atau sumber-sumber lainnya seperti buku.</p>\r\n<p style=\"text-align: justify;\">Ketika otak anda selalu dikosongkan untuk menerima hal-hal baru, secara tidak sadar level anda telah naik ke level yang lebih tinggi, begitu seterusnya. Namun perlu diingat, jangan pula anda terjebak seperti dijelaskan di no.4. Pengetahuan baru yang anda terima, perlu anda terapkan dan coba dalam kehidupan anda, jangan hanya menjadi pengetahuan semata saja.</p>\r\n<p style=\"text-align: justify;\"><strong>7. Membiarkan informasi membanjiri otak anda</strong></p>\r\n<p style=\"text-align: justify;\">Kebalikan dari poin 6 diatas, di poin 7 ini anda justru membiarkan seluruh informasi mengalir ke otak anda tanpa penyaringan. Jika anda melakukan ini, maka akan sulit bagi anda untuk berpikir dengan jernih. Beberapa kondisi yang menyebabkan anda seperti ini adalah :</p>\r\n<p style=\"text-align: justify;\">- Banyak informasi yang anda terima adalah negatif. Media-media dan lingkungan di sekeliling anda sering memberikan informasi-informasi negatif, seperti : penipuan, perampokan, pembunuhan, gosip dsb. Jika anda tidak selektif dalam memilih berita, anda dapat terpengaruh secara negatif juga, entah itu secara pikiran, perasaan maupun tindakan.</p>\r\n<p style=\"text-align: justify;\">- Ada suatu dorongan dalam diri anda untuk selalu mengetahui informasi terkini, namun seberapa cepat anda mengikuti perkembangan dengan berbagai alat yang anda miliki, akan selalu ada puluhan bahkan ratusan hal baru yang terjadi yang tidak bisa anda ikuti. Hali ini justru dapat membuat anda menjadi stress.</p>\r\n<p style=\"text-align: justify;\">Sulit untuk membuat keputusan dan mengambil tindakan jika otak anda terus dibanjiri dengan informasi-informasi. Bahkan anda dapat terjebak melakukan kebiasaan seperti disebutkan di poin 3. Anda sibuk dan sibuk terus melakukan pekerjaan namun sebetulnya pekerjaan yang tidak penting.</p>\r\n<p style=\"text-align: justify;\">Untuk dapat fokus, berpikir jernih dan mengambil tindakan, perlu sekali untuk anda menseleksi bahkan jika perlu membatasi akses informasi yang masuk ke otak anda, misalkan ketika anda sedang menyelesaikan suatu pekerjaan, anda melakukan hal-hal seperti : mematikan telepon anda, internet dan pintu ruangan anda. Anda akan melihat hasil yang menakjubkan ketika anda tidak diinterupsi setiap 10 menit oleh email atau website-website favorit anda.</p>', '2016-04-09 19:10:22', 'file_1460203822.jpg', null, 'admin', '0');
INSERT INTO `berita` VALUES ('3', '8 Racun Dalam Kehidupan Kita', '<p>Hilary Bergsieker profesor ilmu perilaku sosial dari Psychology Department Universitas Waterloo, Canada, mengatakan kerusakan dalam berpikir dan bersikap dikarenakan &ldquo;racun&rdquo; dan energi negatif dalam pikiran kita. Pribadi yang sehat adalah amazing people yakni pribadi yang menarik, disukai, memiliki hubungan win-win dan bermanfaat bagi orang lain. Sebaliknya perilaku yang rusak dan beracun atau toxic behavior, akan menimbulkan gesekan, persinggungan, pertengkaran dan rasa tidak nyaman kepada orang lain.</p>\r\n<p>Hilary Bergsieker menggaris bawahi perilaku buruk dan beracun atau toxic behavior yang terjadi dalam hubungan antar manusia yang sering menyebabkan perilaku seseorang membuat pihak lain menderita dan terbebani. Perilaku dan sikap buruk diterjemahkan penulis sebagai 8 &ldquo;racun&rdquo; dalam kehidupan kita yang dapat mengancam relasi hubungan dan pergaulan antar individu maupun kelompok dalam ruang lingkup organisasi, perusahaan, teman, rumah tangga, relasi dll.</p>\r\n<p><strong>1. Arrogance = Kesombongan</strong></p>\r\n<p>Kalau kita bertindak sombong terhadap orang lain maka adrenalin negatif akan menumpuk dalam pikiran dan hati kita. Badan kita akan menghasilkan energi negatif yang cenderung kuat menolak hal-hal yang baik, sekalipun datang dari orang yang kita anggap benar. Kesombongan adalah racun terbesar yang menutup daya pikir, akal sehat dan nalar kita terhadap hal positif dan menolak pembangunan hubungan antar manusia atas dasar keseimbangan, harmonisasi, dan manfaat bagi semua orang.</p>\r\n<p>Kesombongan bisa terjadi karena sikap keakuan yang kuat dan memandang dirinya lebih superior dan sukses dibanding orang lain. Orang yang bersikap seperti ini karena kurang memiliki sikap empati terhadap pemahaman bahwa pada dasarnya setiap orang adalah subjek dan bukan objek dalam ruang lingkup kehidupan.</p>\r\n<p>Contoh: ketika kita sukses maka kita menganggap bahwa prestasi tersebut adalah semata-mata karena kerja keras diri sendiri, dan bukan karena bantuan dan peranan dari teman, bawahan atau anggota keluarga dll, yang sebenarnya turut memiiiki andil.</p>\r\n<p><strong>2. Ignorance = Ketidakpedulian</strong></p>\r\n<p>Ignorance terjadi karena tidak peka dan ketidakpedulian terhadap apa yang terjadi di sekeliling kita.</p>\r\n<p>Contoh: kalau ada orang sedang kesusahan, kelaparan, berduka atau menderita, maka empati atau rasa kasihan tidak akan muncul dari diri kita.</p>\r\n<p>Ketidakpedulian melahirkan kekacauan dalam relasi antar manusia. Ignorance muncul karena kita takut berbagi perhatian dan kepedulian, dan menilai orang lain yang menderita semata-mata karena faktor nasib. Bukan karena faktor situasi yang mungkin bisa dirubah karena bantuan dan perhatian kita.</p>\r\n<p>Hati nurani bisa timbul karena persepsi yang benar dalam pikiran kita dan membawa hati dan perasaan kita dalam bentuk simpati dan empati. Ketidakpedulian melahirkan penyakit dan racun sosial dalam pikiran dan hati kita.</p>\r\n<p><strong>3. Denial = Penyangkalan</strong></p>\r\n<p>Seberapa sering kita menyangkal terhadap apa yang telah kita perbuat dan merugikan pihak lain. Penyangkalan disebabkan karena kita tidak memiliki &ldquo;jiwa dalam pikiran kita&rdquo;. Kita kehilangan kesadaran untuk berani mempertanggungjawabkan atas apa yang kita lakukan.</p>\r\n<p>Penyangkalan kerap membuat kita buta terhadap realitas yang sebenarnya. Ketika kebanyakan orang lain mengatakan warna putih adalah putih, maka kita tetap mengatakan hitam. Penyangkalan terjadi karena kita tidak peduli dengan perasaan orang lain.</p>\r\n<p>Contoh: jika tim kerja kita mengalami kemerosotan kinerja, maka kita melepas tanggung jawab dan kenyataan sebenarnya, dan menyangkal dengan memberikan argumentasi dan pembelaan diri bahwa semuanya tetap berjalan baik.</p>\r\n<p><strong>4. Tinkering = Mengerjakan sesuatu tanpa keahlian</strong></p>\r\n<p>Banyak kisah nyata sukses yang terjadi di masyarakat yang dimulai dengan tindakan dan cara berpikir hal-hal kecil dan sederhana. Dari situ kita dapat memupuk, melatih dan mengasah secara bertahap dan menjadikannya suatu keahlian yang kita kuasai. Untuk menjalankan suatu pekerjaan apa pun kita dituntut memiliki kemampuan dan keahlian baik secara praktik, teori dan pengetahuan yang cukup dan seimbang.</p>\r\n<p>Tinkering bisa terjadi karena kita tidak mau belajar dan melatih diri agar menjadi lebih cakap. Akibatnya sering menjadi hambatan bagi orang lain. Kalaupun kita telah merasa pandai dan tidak mau terus belajar, maka kualitas keahlian akan menurun. Maka kemampuan kita bukan menjadi obat, tetapi dapat menjadi racun bagi orang lain.</p>\r\n<p>Untuk mengubah keadaan, kita hendaknya berani memberikan pengorbanan melalui tenaga, pikiran, waktu, bahkan biaya, agar kita semakin berilmu dan tidak menjadi beban pihak lain.</p>\r\n<p>Contoh tinkering: seorang penjual tidak mau belajar dari penjual yang sukses, membaca buku-buku penjualan atau mempraktekkan secara konsisten, disiplin dan teratur. Akibatnya prestasi penjualan tidak pernah dicapai dan merugikan perusahaan serta dirinya sendiri.</p>\r\n<p><strong>5. Losing focus = Kehilangan fokus</strong></p>\r\n<p>Fokus adalah sebuah kata motivasi untuk melakukan sesuatu pekerjaan mulai dari perencanaan, penyusunan, tindakan, evaluasi hasil dan dampak dari tujuan yang akan kita capai. Ketidakmampuan kita untuk <a href=\"http://www.akuinginsukses.com/kekuatan-fokus/\">fokus</a> sering disebabkan karena memikirkan dan bertindak pada hal-hal yang sepele dan kurang bermanfaat. Bahkan cenderung menjalankan sesuatu pekerjaan yang seharusnya prioritas menjadi kabur, kehilangan arah, dan pegangan.</p>\r\n<p>Pribadi yang kehilangan fokus dalam hidup dan pekerjaan adalah pribadi yang kehilangan arah dan disorientasi dalam berpikir. Seperti unsur-unsur kimia yang tidak lagi selaras pada susunan molekul dan atom dalam tubuh dan pikiran kita. Fokus memerlukan latihan yang teratur, konsistensi dalam cara berpikir dan tegas dalam menentukan sikap kita. Kehilangan fokus sering menjadi beban besar pada diri sendiri dan orang lain yang terlibat langsung maupun tidak langsung dalam aktivitas kita sehari-hari.</p>\r\n<p>Contoh: Pada saat kita harus menyelesaikan suatu tugas penting, maka kita lupa pada target waktu, ukuran dan standar pencapaian hasil kerja dan perhatian terhadap anggota tim kerja yang terlibat didaiamnya.</p>\r\n<p><strong>6. Permissive = Toleransi negatif</strong></p>\r\n<p>Konsistensi sangat dibutuhkan agar kita bisa mengikuti dan menjalankan standar pekerjaan dengan benar. Membuat setiap orang yang terkait langsung maupun tidak langsung dengan aktivitas kita memiliki daya ungkit dalam memberikan kinerja terbaiknya dan mendapatkan manfaat luas. Lawan dari konsistensi adalah permisif yakni toleransi yang negatif. Permisif sering menciptakan keadaan yang kacau dan tidak beraturan atau inkonsistensi dalam berpikir, berucap maupun bertindak.</p>\r\n<p>Dalam sebuah survei tentang tingkah laku, cara berpikir dan berucap kepada sekelompok karyawan beberapa perusahaan, diambil sebuah kesimpulan ternyata semua orang sepakat baik lisan dan tertulis bahwa korupsi, manipulasi dan indisipliner tidak diterima oleh akal sehat dan norma yang berlaku. Ada jembatan keseimbangan persepsi perilaku yang benar dan salah. Toleransi negatif adalah racun dalam tindakan dan merugikan kebanyakan orang atau perusahaan&nbsp;secara psikologi dan materi.</p>\r\n<p>Contoh: peraturan setiap orang dilarang terlambat masuk kerja, maka ketika kita membiarkan segelintir orang melanggar karena &ldquo;unsur suka dan pilih kasih&rdquo;, maka akan merusak tatanan, standar dan aturan yang berlaku.</p>\r\n<p><strong>7. Egoism = Keakuan &ndash; egoisme</strong></p>\r\n<p>Sering dalam pergumulan hidup kita bertanya: saya yang lebih penting atau orang lain yang harus saya seimbangkan dalam hubungan sosial. Kita sering menempatkan diri kita lebih berharga dan berarti dibanding yang lain. Kesalahan terbesar dalam menempatkan diri kita &ldquo;sebagai yang paling berarti&rdquo; menyebabkan kehilangan sikap dalam berbagi dan berempati kepada orang lain.</p>\r\n<p>Egoisme atau keakuan muncul karena kita takut menghadapi realitas bahwa hidup dan hasil yang baik harus diperjuangkan dan diperebutkan dengan cara yang elegan dan benar. Efek dari racun pikiran dan hati membuat tindakan kita tidak merefleksikan kepentingan bersama. Tindakan kita akan lebih didominasi oleh imajinasi dalam pikiran kita yang keliru dan buruk karena mementingkan diri sendiri Maka egoisme adalah bahaya besar yang membuat kita bersikap apatis terhadap kebutuhan yang seimbang dalam hubungan dengan orang lain.</p>\r\n<p>Contoh: ketika kita membuang sampah sembarangan, maka kita hanya mementingkan diri sendiri dan tidak peduli terhadap <a href=\"http://www.akuinginsukses.com/16-cara-mudah-meningkatkan-kesehatan-anda/\">kesehatan</a>, keselamatan dan kebersihan lingkungan dan orang lain.</p>\r\n<p><strong>8. Conflict = Pertikaian</strong></p>\r\n<p>Mengapa konflik sering muncul di sekitar kita? Akumulasi dari racun persoalan hidup kita di atas akan menyebabkan timbulnya pertikaian dengan orang lain. Dalam hubungan pribadi, rumah tangga, pekerjaan, bisnis, dan relasi dengan pihak mana pun sering timbul kecenderungan terjadinya pertikaian, debat, permusuhan, saling menyalahkan dan menghindarkan tanggung jawab kita. Konflik akan melahirkan luka perasaan dan dendam pada semua pihak yang terlibat. Dan pertikaian akan menimbulkan suasana tegang pada semua pihak. Karena itu pertikaian adalah racun dari emosi kita yang tidak terkendali.</p>\r\n<p>Konflik atau pertikaian timbul karena tidak mampu mengelola emosi dan egoisme yang menguasai diri kita. Konflik bisa terjadi secara mental, psikologis dan fisik yang tentunya akan merugikan semua pihak.</p>\r\n<p>Meredakan dan mengurangi &ldquo;racun-racun&rdquo; dalam kehidupan kita akan berdampak positif kepada cara berpikir, berucap dan bertingkah laku. Merefleksikan diri bahwa pada hakekatnya setiap pikiran dan tubuh manusia memiliki unsur-unsur positif yang lebih dominan daripada unsur-unsur negatif. Tantangan terbesar bagi kita adalah mengelola dan mengembangkan kemampuan dalam mengikis secara bertahap semua unsur-unsur &ldquo;racun&rdquo;yang ada dalam diri kita, agar mampu menempatkan diri kita berguna dan bernilai dalam pergaulan dan hubungan dengan orang lain.</p>\r\n<p><em>&ldquo;There is an island of opportunity in the middle of every difficulties.&rdquo;</em></p>', '2016-04-09 19:12:07', 'file_1460203927.jpg', null, 'admin', '0');
INSERT INTO `berita` VALUES ('4', '9 Kesalahan yang Dapat Menghentikan Perkembangan Diri Anda', '<p>Ketika anda mencoba untuk berkembang, sangatlah mudah untuk jatuh lebih dari satu kali dan membuat diri anda terluka dalam perjalanan menuju kesuksesan, kebahagiaan, dan semua hal yang ingin anda raih. Tentunya terdapat beberapa lubang dalam yang harus anda perhatikan dan berhati-hati tentu saja.</p>\r\n<p>Di bawah ini merupakan 9 kesalahan yang sering dilakukan ketika anda sedang berkembang. Saya telah melakukan kesalahan-kesalahan tersebut. Bahkan lebih dari satu kali.</p>\r\n<p>Dengan sharing saya ini, harapan saya semoga anda tidak jatuh ke lubang yang sama seperti yang saya alami.</p>\r\n<p>Sekarang marilah kita bahas 9 kesalahan tersebut :</p>\r\n<p><strong>1. Berpikir Bahwa Anda Telah Mengetahui Segalanya </strong></p>\r\n<p>Hal ini merupakan masalah besar dan dapat menghentikan perkembangan diri anda untuk waktu yang cukup lama. Pikiran-pikiran seperti: &ldquo;Saya mengerti bagaimana hal-hal bekerja di dunia ini. Saya tidak membutuhkan salesman itu untuk meningkatkan kualitas hidup saya. Mereka tidak memiliki sesuatu yang baru yang bisa mereka tawarkan. Hanya orang-orang putus asa yang membutuhkan buku tersebut. Ini hanya masalah kesadaran diri saja.&rdquo;</p>\r\n<p>Pemikiran dan sikap semacam inilah yang akan membuat anda sulit untuk berkembang. Ketika anda membaca buku-buku pengembangan diri dari penulis seperti Anthony Robbins, Brian Tracy atau Stephen Covey; anda akan menyadari dengan cepat bahwa nasihat terbaik yang mereka berikan tidak sepenuhnya berhubungan dengan kesadaran diri. Bahkan, seringkali nasihat yang mereka berikan bertolak belakang dengan kebenaran yang selama ini kita peroleh dari pelajaran-palajaran di sekolah, media dan orang-orang lain di sekitar kita.</p>\r\n<p><strong>2. Dipusingkan Oleh Hal-Hal Yang Sedang Tren </strong></p>\r\n<p><a href=\"http://www.akuinginsukses.com/bagaimana-membentuk-pola-pikir-yang-baru/\">Pola pikir</a> seperti poin pertama diatas tidak sepenuhnya salah. Terdapat banyak salesman yang menawarkan banyak hal pada anda diluar sana. Dan karena penulis atau pembicara motivasi paling sukses memahami bagaimana caranya untuk berkomunikasi, terdapat banyak teknik penjualan high-pressure yang bisa anda peroleh dengan membaca buku-buku pemasaran. Teknik seperti menawarkan bingkisan kecil dan gratis bagi konsumen, atau dengan mengatakan bahwa hanya ada 500 buah produk sejenis dan tawaran ini hanya berlaku 1 minggu.</p>\r\n<p>Namun meskipun beberapa teknik pemasaran terkesan sangat optimistis atau cenderung agresif, bukan berarti produk yang ditawarkan tidak memiliki nilai. Bedakan antara teknik penjualan dengan produk yang ditawarakan.</p>\r\n<p>Menurut saya, mulailah dengan merk-merk atau produk-produk yang memiliki ulasan yang baik. Lakukan sedikit penelitian melalui google dan carilah informasi mengenai produk tersebut.</p>\r\n<p><strong>3. Tidak Mengambil Tindakan</strong></p>\r\n<p>Berpikir bahwa dengan membaca buku atau blog akan mengubah hidup anda secara otomatis merupakan pemikiran yang keliru. Pengetahuan tanpa tindakan tidak akan menghasilkan apapun. Dan hanya andalah yang bisa merubah diri anda sendiri. Orang lain bisa memberi anda nasihat, dukungan, serta motivasi. Namun pada akhirnya, anda harus mengambil tindakan.</p>\r\n<p>Jika anda mengalami masalah dengan mengambil tindakan, seringkali hal ini disebabkan oleh rasa takut (baca juga&nbsp;<a title=\"Mengatasi Rasa Takut Mengambil Peluang\" href=\"http://www.akuinginsukses.com/mengatasi-rasa-takut-mengambil-peluang/\">Mengatasi Rasa Takut Mengambil Peluang</a>)</p>\r\n<p><strong>4. Menyerah</strong></p>\r\n<p>Ketika anda mengalami kegagalan pertama kali, kedua atau ketiga, anda biasanya berpikir &ldquo;Hal ini tidak ada artinya. Inilah diri saya dan saya tidak dapat berubah. Saya harus membiasakan diri saya berpikir bahwa saya memang seperti itu.&rdquo;<br /> Jangan menyerah. Satu atau lima atau 20 kegagalan tidak akan ada artinya dalam jangka panjang. Anda harus gagal supaya anda menguasai sesuatu dan berkembang.</p>\r\n<p><strong>5. Khawatir terhadap atau mendengarkan perkataan orang lain</strong></p>\r\n<p>Anda mungkin takut orang-orang akan bereaksi negatif terhadap perubahan yang anda lakukan, dan mereka memang cenderung berbuat demikian. Mungkin mereka berbuat demikian karena mereka <a href=\"http://www.akuinginsukses.com/bagaimana-untuk-berhenti-merasa-khawatir/\">khawatir</a> anda akan menjauhi mereka dan akan kehilangan anda selamanya. Atau mungkin juga mereka tidak ingin anda berubah karena perubahan tersebut akan membuat mereka merasa diam di tempat. Mereka mungkin juga memberikan anda sejumlah opini negatif terhadap perkembangan diri anda; bahwa semua yang anda lakukan hanyalah sia-sia, buang waktu dan kehidupan nyata sangatlah berbeda dibandingkan dengan yang tertulis di buku.</p>\r\n<p>Jika anda menemui jalan buntu, hal ini mungkin karena anda merasa anda memerlukan persetujuan dari orang lain dan anda harus mulai melepaskan diri dari pengaruh orang-orang ini. Jika tidak, anda akan selamanya hidup dalam bayang-bayang orang lain dan anda tidak akan pernah berkembang.</p>\r\n<p><strong>6. Bereksperimen Dengan Cara Anda Sendiri</strong></p>\r\n<p>Bereksperimen dengan materi perkembangan diri anda; tidak berkomitmen untuk mempelajari atau mempraktekkan serta mengembangkannya secara konsisten sebagai bagian keseharian anda. Mungkin anda merasa perubahan yang sedang anda coba lakukan terlalu sulit, atau tidak layak untuk anda lakukan, sehingga anda tidak berkomitmen untuk melakukannya.</p>\r\n<p>Sulitkah melakukan perubahan tersebut? Terkadang ya. Namun saya merasa bahwa pertumbuhan memiliki lebih banyak nilai positif dibandingkan dengan negatif, dan saya berpendapat bahwa dari sudut pandang orang awam &ndash; orang yang belum mengikuti program pengembangan diri apapun &ndash; terkesan bahwa orang-orang yang sedang mencoba untuk melakukan perkembangan diri terlihat lebih bekerja keras, mengeluarkan lebih banyak uang dan waktu dibandingkan jika anda melihat dari sisi orang yang mencoba melakukan perubahan tersebut. Kerja keras bukanlah sesuatu yang sulit jika anda merasa anda berkembang dan menyukai apa yang sedang anda kerjakan.</p>\r\n<p>Apakah perubahan tersebut layak untuk dilakukan? Tentunya perubahan tersebut lebih baik dibandingkan dengan alternatif lain; hanya berlarian kesana kemari setiap hari dan dipenuhi dengan kemarahan, <a href=\"http://www.akuinginsukses.com/7-cara-mengurangi-stress-hari-ini/\">stress</a> dan kurangnya penghargaan diri.<br /> Kunci bagi semua hal dalam kehidupan adalah konsistensi dan kesabaran. Berkomitmenlah untuk perkembangan diri anda.</p>\r\n<p><strong>7. Memiliki Ekspektasi yang Tidak Beralasan</strong></p>\r\n<p>Hal ini mungkin terjadi karena kurangnya informasi. Kadang dalam jumlah informasi serta kualitas informasi yang anda miliki. Ketika pertama kali anda memulai, anda mungkin merasa bahwa hanya dengan membaca sebuah buku akan menyelesaikan semua masalah anda. Tidak memiliki gambaran yang jelas mengenai apa yang bisa anda peroleh akan membuat anda kecewa dan seperti seorang pecundang tanpa alasan yang baik, hingga akhirnya anda menyerah.</p>\r\n<p>Salah satu metode yang saya gunakan untuk mengeluarkan diri saya dari kondisi tersebut adalah dengan mengembangkan kebiasaan &ldquo;mengkonsumsi&rdquo; materi motivasi setiap saat, baik dalam bentuk buku, blog atau CD audio. Saya membangun perpustakaan kecil milik saya sendiri dan mengisinya dengan materi-materi pengembangan diri.</p>\r\n<p>Mendengarkan kembali sebuah CD milik Andrie Wongso misalnya tidak hanya membuat saya termotivasi lagi, tapi juga menyediakan saya dengan solusi atas masalah saya. Kebiasaan ini &ndash; dikombinasikan dengan tindakan &ndash; akan memperjelas hal-hal yang anda inginkan, metode apa yang terbaik bagi anda dan semua peluang serta batasan dalam perkembangan diri anda.</p>\r\n<p><strong>8. Kegagalan Untuk Atau Tidak Berkeinginan Untuk Memahami Diri Anda Sendiri</strong></p>\r\n<p>Untuk mengubah diri anda; anda harus memahami proses yang terjadi di dalam diri anda. Bagaimana emosi anda bekerja, ego anda bekerja, bagaimana pengalaman masa lalu serta kebiasaan anda dapat mempengaruhi anda. Serta apa yang bisa anda lakukan mengenai hal-hal tersebut. Bagaimana anda bisa membantu diri anda sendiri. Bahkan jika anda berusaha mengubah bagian diri anda yang benar-benar ingin anda ubah.</p>\r\n<p>Jadi menurut pendapat saya, jangan hanya berpegang pada 1 orang guru serta 1 pemikiran. Bacalah buku atau dengarkan materi-materi lain yang berasal dari penulis ternama untuk memperluas wawasan anda dan memberikan anda sejumlah solusi atas masalah-masalah anda.</p>\r\n<p>Cobalah menjadi lebih mawas diri; sadari proses yang terjadi dalam diri anda ketika anda menjadi marah, merasa <a href=\"http://www.akuinginsukses.com/bagaimana-mengatasi-depresi-dan-mengubah-hidup-anda/\">depresi</a>, cemburu atau iri hati. Cobalah untuk bertindak berbeda dari yang biasa anda lakukan.</p>\r\n<p>Daripada mengambil tindakan seperti yang biasa anda lakukan, terapkanlah apa yang telah anda pelajari untuk menangani kebiasaan anda. Jika anda gagal &ndash; sama halnya dengan kebanyakan orang, paculah terus diri anda &ndash; luangkan waktu untuk menganalisa mengapa anda merasakan atau melakukan tindakan negatif tersebut.</p>\r\n<p>Jika anda tidak memiliki kendali atas tindakan anda, akan sangat sulit untuk membantu diri anda dan orang lain. Anda akan menemukan solusi yang tidak efektif, menjadi tidak bersemangat, dan pada akhirnya berhenti untuk terus berkembang.</p>\r\n<p><strong>9. Tidak Mengambil Tanggung Jawab Atas Diri Anda Sendiri</strong></p>\r\n<p>Hal ini sangatlah penting. Jangan salahkan orang lain. Andalah yang dapat melakukan perubahan tersebut.</p>\r\n<p>Itulah 9 hal yang dapat menghambat perkembangan diri anda dan saya yakin masih banyak ha-hal lainnya. Namun saya akan tambahkan poin-poin lain pada lain kesempatan.</p>', '2016-04-09 19:13:14', 'file_1460203994.jpg', null, 'admin', '1');
INSERT INTO `berita` VALUES ('6', '14 Teknik Komunikasi Yang Paling Efektif', '<p>Menurut berbagai survei, sekitar 85% persen dari kesuksesan dalam hidup berkaitan secara langsung dengan kemampuan berkomunikasi dan keterampilan membina hubungan.</p>\r\n<p>Hal itu menandakan bahwa tidak peduli seberapa ambisius seseorang atau berapa banyak mereka mengatasi ketakutan mereka atau seberapa tinggi tingkat pendidikan, mereka masih memiliki kemungkinan yang rendah untuk melangkah lebih jauh dalam hidup mereka tanpa kemampuan komunikasi yang efektif yang diperlukan dalam berhubungan dengan orang-orang.</p>\r\n<p>Dan ketika saya mengatakan berhubungan dengan orang-orang, hal ini tentu saja bukan orang-orang yang secara natural memiliki kemiripan karakter dengan anda, karena berhubungan dengan orang-orang tersebut tidak membutuhkan banyak usaha atau kemampuan dalam berkomunikasi.</p>\r\n<p>Saya mengacu pada orang-orang yang anda sukai namun anda seringkali menemukan kesulitan untuk membina hubungan dengan mereka karena anda tidak yakin apa yang akan anda katakan atau lakukan.</p>\r\n<p>Dibutuhkan keterampilan untuk memperluas hubungan dari lingkaran kecil orang-orang dimana anda berada saat ini menuju lingkaran besar orang-orang yang akan anda temui. Keterampilan semacam ini yang menjamin akan melontarkan keberhasilan Anda dalam kehidupan.</p>\r\n<p><strong>Mengembangkan kemampuan komunikasi Anda</strong></p>\r\n<p>Bila anda mencoba untuk terhubung dengan lingkaran orang-orang yang lebih besar, anda perlu menanyakan 5 pertanyaan ini pada diri anda sendiri :<br /> - Apakah anda menemukan kesamaan antara anda berdua?<br /> - Apakah anda membuat mereka merasa nyaman?<br /> - Apakah anda membuat mereka merasa dimengerti?<br /> - Apakah hubungan anda dengan jelas didefinisikan?<br /> - Apakah mereka merasakan emosi yang positif akibat berinteraksi dengan Anda?</p>\r\n<p>Untuk menjawab pertanyaan-pertanyaan tersebut, anda harus mempertimbangkan penjelasan dibawah ini &hellip;&hellip;</p>\r\n<p><strong>14 Kemampuan Komunikasi Yang Efektif</strong></p>\r\n<p>1. <strong>Berikan kesan bahwa anda antusias berbicara dengan mereka</strong> &ndash; Beri mereka kesan bahwa anda lebih suka berbicara dengan mereka daripada orang lain di muka bumi ini. Ketika anda memberi mereka kesan bahwa anda sangat antusias berbicara dengan mereka dan bahwa anda peduli kepada mereka, anda membuat perasaan mereka lebih <a href=\"http://www.akuinginsukses.com/9-langkah-menuju-sikap-mental-positif/\">positif</a> dan percaya diri. Mereka akan lebih terbuka kepada anda dan sangat mungkin memiliki percakapan yang mendalam dengan anda.</p>\r\n<p>2. <strong>Ajukan pertanyaan tentang minat mereka</strong> &ndash; Ajukan pertanyaan terbuka yang akan membuat mereka berbicara tentang minat dan kehidupan mereka. Galilah sedetail mungkin sehingga akan membantu mereka memperoleh perspektif baru tentang diri mereka sendiri dan tujuan hidup mereka.</p>\r\n<p>3. <strong>Beradaptasi dengan bahasa tubuh dan perasaan mereka</strong> &ndash; Rasakan bagaimana perasaan mereka pada saat ini dengan mengamati <a href=\"http://www.akuinginsukses.com/16-cara-menggunakan-bahasa-tubuh-yang-baik/\">bahasa tubuh</a> dan nada suara. Dari sudut pandang ini, anda dapat menyesuaikan kata-kata, bahasa tubuh, dan nada suara anda sehingga mereka akan merespon lebih positif.</p>\r\n<p>4. <strong>Tunjukkan rasa persetujuan: Katakan kepada mereka apa yang anda kagumi tentang mereka dan mengapa</strong> &ndash; Salah satu cara terbaik untuk segera berhubungan dengan orang adalah dengan menjadi jujur dan memberitahu mereka mengapa anda menyukai atau mengagumi mereka. Jika menyatakan secara langsung dirasakan kurang tepat, cobalah dengan pernyataan tidak langsung. Kedua pendekatan tersebut bisa sama-sama efektif.</p>\r\n<p>5. <strong>Dengarkan dengan penuh perhatian semua yang mereka katakan</strong> &ndash; Jangan terlalu berfokus pada apa yang akan Anda katakan selanjutnya selagi mereka berbicara. Sebaliknya, dengarkan setiap kata yang mereka katakan dan responlah serelevan mungkin. Hal ini menunjukkan bahwa anda benar-benar mendengarkan apa yang mereka katakan dan anda sepenuhnya terlibat di dalam suasana bersama dengan mereka. Juga pastikan untuk bertanya setiap kali ada sesuatu yang tidak mengerti pada hal-hal yang mereka katakan. Anda tentu saja ingin menghindari semua penyimpangan yang mungkin terjadi dalam komunikasi jika anda ingin mengembangkan hubungan yang sepenuhnya dengan orang tersebut.</p>\r\n<p>6. <strong>Beri mereka kontak mata yang lama</strong> &ndash; kontak mata yang kuat mengkomunikasikan kepada orang lain bahwa anda tidak hanya terpikat oleh mereka dan apa yang mereka katakan tetapi juga menunjukkan bahwa anda dapat dipercaya. Ketika dilakukan dengan tidak berlebihan, mereka juga akan menganggap anda yakin pada diri anda sendiri karena kesediaan anda untuk bertemu mereka secara langsung. Akibatnya, orang secara alami akan lebih memperhatikan anda dan apa yang anda katakan.</p>\r\n<p>7. <strong>Ungkapkan diri anda sebanyak mungkin</strong> &ndash; Salah satu cara terbaik untuk mendapatkan <a href=\"http://www.akuinginsukses.com/11-kunci-untuk-membangun-kepercayaan/\">kepercayaan</a> seseorang adalah dengan mengungkapkan diri seterbuka mungkin. Bercerita tentang kejadian yang menarik dari hidup anda atau hanya menggambarkan contoh lucu dari kehidupan normal sehari-hari. Ketika anda bercerita tentang diri anda, pastikan untuk tidak menyebutkan hal-hal yang menyimpang terlalu jauh dari minat mereka atau bahkan berlebihan. Anda dapat membiarkan mereka mengetahui lebih jauh tentang diri anda seiring berjalannya waktu.</p>\r\n<p>8. <strong>Berikan kesan bahwa anda berdua berada di tim yang sama</strong> &ndash; Gunakan kata-kata seperti &ldquo;kami, kita &rdquo; untuk segera membangun sebuah ikatan. Bila anda menggunakan kata-kata tersebut, anda membuatnya tampak seperti anda dan mereka berada di tim yang sama, sementara orang lain berada di tim yang berbeda.</p>\r\n<p>9. <strong>Berikan mereka senyuman terbaik anda</strong> &ndash; Ketika anda <a href=\"http://www.akuinginsukses.com/5-alasan-mengapa-anda-harus-banyak-tersenyum/\">tersenyum</a> pada orang, anda menyampaikan pesan bahwa anda menyukai mereka dan kehadiran mereka membawa anda kebahagiaan. Tersenyum pada mereka akan menyebabkan mereka sadar ingin tersenyum kembali pada anda yang secara langsung akan membangun hubungan antara anda berdua.</p>\r\n<p>10. <strong>Menawarkan saran yang bermanfaat</strong> &ndash; Kenalkan tempat makan yang pernah anda kunjungi, film yang anda tonton, orang-orang baik yang mereka ingin temui, buku yang anda baca, peluang karir atau apa pun yang terpikirkan oleh anda. Jelaskan apa yang menarik dari orang-orang, tempat atau hal-hal tersebut. Jika anda memberi ide yang cukup menarik perhatian mereka, mereka akan mencari anda ketika mereka memerlukan seseorang untuk membantu membuat keputusan tentang apa yang harus dilakukan selanjutnya.</p>\r\n<p>11. <strong>Beri mereka motivasi</strong> &ndash; Jika orang yang anda hadapi lebih muda atau dalam posisi yang lebih sulit dari anda, mereka mungkin ingin mendengar beberapa kata motivasi dari anda karena anda lebih berpengalaman atau anda tampaknya menjalani kehidupan dengan baik . Jika anda ingin memiliki hubungan yang sehat dengan orang tersebut, anda tentu saja tidak ingin tampak seperti anda memiliki semuanya sementara mereka tidak. Yakinkan mereka bahwa mereka dapat melampaui masalah dan keterbatasan mereka, sehingga mereka akan berharap menjadikan anda sebagai teman yang enak untuk diajak bicara.</p>\r\n<p>12. <strong>Tampil dengan tingkat energi yang sedikit lebih tinggi dibanding orang lain</strong> &ndash; Umumnya, orang ingin berada di sekitar orang-orang yang akan mengangkat mereka, bukannya membawa mereka ke bawah. Jika anda secara konsisten memiliki tingkat energi yang lebih rendah daripada orang lain, mereka secara alami akan menjauh dari Anda menuju seseorang yang lebih energik. Untuk mencegah hal ini terjadi, secara konsisten tunjukkan dengan suara dan bahasa tubuh anda bahwa anda memiliki tingkat energi yang sedikit lebih tinggi sehingga mereka akan merasa lebih bersemangat dan positif berada di sekitar Anda. Namun jangan juga anda terlalu berlebihan berenergik sehingga menyebabkan orang-orang tampak seperti tidak berdaya. Energi dan gairah yang tepat akan membangun antusiasme mereka.</p>\r\n<p>13. <strong>Sebut nama mereka dengan cara yang menyenangkan telinga mereka</strong> &ndash; nama seseorang adalah salah satu kata yang memiliki emosional yang sangat kuat bagi mereka. Tapi hal itu belum tentu seberapa sering anda katakan nama seseorang, namun lebih pada bagaimana anda mengatakannya. Hal ini dapat terbantu dengan cara anda berlatih mengatakan nama seseorang untuk satu atau dua menit sampai anda merasakan adanya emosional yang kuat. Ketika anda menyebutkan nama mereka lebih menyentuh dibanding orang lain yang mereka kenal, mereka akan menemukan bahwa anda lah yang paling berkesan.</p>\r\n<p>14. <strong>Tawarkan untuk menjalani hubungan selangkah lebih maju</strong> &ndash; Ada beberapa hal yang dapat anda lakukan untuk memajukan persahabatan anda dengan seseorang: tawaran untuk makan dengan mereka, berbicara sambil <a href=\"http://www.akuinginsukses.com/fakta-sebenarnya-tentang-mitos-minum-kopi/\">minum kopi</a>, melihat pertandingan olahraga, dll. Meskipun jika orang tersebut tidak menerima tawaran anda, mereka akan tetap tersanjung bahwa anda ingin mereka menjalani persahabatan ke tingkat yang lebih dalam. Di satu sisi, mereka akan memandang anda karena anda memiliki keberanian untuk membangun persahabatan bukan mengharapkan persahabatan yang instan.</p>\r\n<p><strong>Menjadi Seorang Komunikator yang Terampil</strong></p>\r\n<p>Jika anda dapat mengembangkan beberapa saja dari teknik ini, anda secara dramatis akan meningkatkan kemampuan anda untuk berhubungan dengan orang dari semua lapisan dalam hidup anda. Luangkan waktu untuk mengamati orang yang paling sosial dalam kehidupan anda dan anda akan melihat banyak dari metode-metode diatas yang diaplikasikan. Mereka tidak melakukan dengan cara yang kaku, mereka melakukannya secara alami dan dengan cara yang cocok dengan situasi saat itu.</p>\r\n<p>Untuk hasil terbaik, santai saja dan biarkan teknik ini mengalir dari dalam diri anda secara alami. Pilih teknik-teknik yang paling cocok dengan kepribadian anda dan apa tujuan anda ketika berinteraksi dengan orang. Belajarlah untuk bisa merasakan teknik mana yang cocok ataupun tidak cocok dengan berbagai macam karakter orang dan situasi sesuai dengan kepridadian anda.</p>\r\n<p>Ketika anda berhasil mengembangkan kemampuan anda berkomunikasi dengan orang-orang, maka akan membawa anda pada banyak sekali peluang baru yang tidak tersedia untuk anda sebelumnya. Itulah kekuatan dari keterampilan komunikasi yang efektif.</p>', '2016-04-09 19:15:21', 'file_1460204121.jpg', null, 'admin', '3');
INSERT INTO `berita` VALUES ('7', '101 Pertanyaan Hebat Untuk Membuat Hidup Anda Luar Biasa', '<p>Anthony Robbins pernah mengatakan dalam salah satu bukunya bahwa berpikir sebetulnya adalah proses bertanya dan menjawab pertanyaan-pertanyaan. Beliau kemudian menambahkan bahwa orang-orang yang sukses adalah mereka yang selalu bertanya pada dirinya sendiri.</p>\r\n<p>Berikut adalah 101 pertanyaan untuk membuat hidup anda luar biasa :</p>\r\n<p>1. Apa yang saya inginkan?</p>\r\n<p>2. Untuk hal-hal apa saja saya berterima kasih?</p>\r\n<p>3. Apakah yang hilang dalam hidup saya?</p>\r\n<p>4. Apakah saya melihat hal-hal baru di dunia ini setiap hari?</p>\r\n<p>5. Apakah saya menyediakan sedikit waktu untuk mendengarkan orang lain?</p>\r\n<p>6. Apakah saya cukup bersenang-senang?</p>\r\n<p>7. Bagaimana saya <a href=\"http://www.akuinginsukses.com/9-tips-untuk-hidup-lebih-bahagia/\">menjadikan hidup ini lebih ceria</a>?</p>\r\n<p>8. Apa yang saya inginkan lebih dalam hidup?</p>\r\n<p>9. Apa yang tidak terlalu saya inginkan dalam hidup?</p>\r\n<p>10. Apakah saya selalu mencari peluang-peluang?</p>\r\n<p>11. Apakah saya menangkap peluang-peluang yang ada?</p>\r\n<p>12. Apakah saya mempunyai pikiran yang terbuka?</p>\r\n<p>13. Apakah saya cukup fleksibel?</p>\r\n<p>14. Apakah saya cepat menghakimi orang lain?</p>\r\n<p>15. Apakah saya selalu memperhitungkan resiko?</p>\r\n<p>16. Apakah saya tulus memuji orang lain?</p>\r\n<p>17. Apakah saya menghargai apa yang orang lain lakukan untuk saya?</p>\r\n<p>18. Ke tempat mana sajakah saya ingin pergi?</p>\r\n<p>19. Siapa sajakah orang yang ingin saya jumpai?</p>\r\n<p>20. Petualangan apa sajakah yang ingin saya ikuti?</p>\r\n<p>21. Apakah saya peduli dengan apa yang orang lain pikirkan tentang saya?</p>\r\n<p>22. Apakah saya cepat tersinggung?</p>\r\n<p>23. Apakah yang membuat saya bahagia?</p>\r\n<p>24. Adakah hal yang saya tunda?</p>\r\n<p>25. Apakah saya selalu memikirkan diri sendiri?</p>\r\n<p>26. Apakah saya suka menyimpan dendam?</p>\r\n<p>27. Apakah saya selalu mengingat-ngingat masa lalu?</p>\r\n<p>28. Apakah saya membiarkan pikiran negatif orang lain mempengaruhi saya?</p>\r\n<p>29. Apakah saya bisa memaafkan diri sendiri?</p>\r\n<p>30. Apakah saya cukup sering tersenyum?</p>\r\n<p>31. Apakah saya cukup sering tertawa?</p>\r\n<p>32. Apakah saya mengelilingi diri saya dengan orang-orang positif?</p>\r\n<p>33. Apakah saya orang yang positif?</p>\r\n<p>34. Apakah saya menyediakan cukup waktu untuk merawat diri?</p>\r\n<p>35. Apakah ambisi rahasia saya?</p>\r\n<p>36. Apakah yang ingin orang-orang ingat tentang saya di akhir hidup nanti?</p>\r\n<p>37. Apakah arti sukses untuk saya?</p>\r\n<p>38. Bagaimana saya dapat memberi arti bagi hidup orang lain?</p>\r\n<p>39. Bagaimana saya dapat melayani sesama?</p>\r\n<p>40. Hal apakah yang dapat saya lakukan lebih baik dibandingkan orang lain?</p>\r\n<p>41. Apakah 3 kekuatan terbesar saya?</p>\r\n<p>42. Apakah saya bergerak menuju ke pencapaian mimpi-mimpi saya?</p>\r\n<p>43. Apakah saya menceritakan pada orang lain apa yang sungguh-sungguh saya inginkan dalam hidup?</p>\r\n<p>44. Seperti apakah rupa hari yang indah menurut saya?</p>\r\n<p>45. Ingin seperti apakah anda 1 tahun lagi? 5 tahun lagi? 10 tahun lagi? 20 tahun lagi?</p>\r\n<p>46. Seperti apakah bentuk lingkungan untuk hidup yang baik menurut saya?</p>\r\n<p>47. Apakah yang ingin saya perbuat jika saya tidak mempunyai rasa takut?</p>\r\n<p>48. Apakah yang ingin saya perbuat jika uang bukanlah hal yang penting?</p>\r\n<p>49. Alasan-alasan apa sajakah yang sering saya ucapkan?</p>\r\n<p>50. Apakah saya menikmati apa yang saya lakukan sehari-hari?</p>\r\n<p>51. Apakah saya berada di jalan yang benar?</p>\r\n<p>52. Apakah saya meyayangi diri sendiri?</p>\r\n<p>53. Apakah saya baik pada orang lain?</p>\r\n<p>54. Apakah saya mengambil sesuatu tanpa imbalan?</p>\r\n<p>55. Apakah saya sedang melakukan hal yang paling penting saat ini?</p>\r\n<p>56. Apakah ada hal-hal dalam hidup yang perlu saya beri perhatian lebih?</p>\r\n<p>57. Apakah saya sudah menggunakan waktu saya dengan sebaik-baiknya?</p>\r\n<p>58. Apakah yang bisa saya lakukan saat ini yang dapat membuat perbedaan terbesar dalam hidup?</p>\r\n<p>59. Apakah yang sedang saya hindari?</p>\r\n<p>60. Hal-hal apa sajakah yang saya bisa bertoleransi?</p>\r\n<p>61. Apakah saya membuat tujuan-tujuan yang jelas dengan batas waktu pencapaiannya?</p>\r\n<p>62. Apakah saya memegang janji-janji yang telah saya buat pada diri sendiri?</p>\r\n<p>63. Apakah saya memegang janji-janji yang telah saya buat pada orang lain?</p>\r\n<p>64. Jika saya ingin kehidupan saya sempurna, apakah yang harus saya rubah?</p>\r\n<p>65. Apakah yang sedang saya cari sungguh-sungguh saat ini?</p>\r\n<p>66. Bagaimana saya membuat hidup saya lebih sederhana?</p>\r\n<p>67. Kegiatan apa saja yang saya lakukan tetapi saya tidak menikmatinya? Apakah kegiatan tersebut sungguh-sungguh harus dilakukan? Dapatkan saya mendelegasikannya atau membayar orang lain untuk melakukan itu?</p>\r\n<p>68. Apakah saya melihat diri saya sebagai seorang yang cukup kreatif?</p>\r\n<p>69. Apakah saya membiarkan diri saya untuk menjadi orang yang kreatif?</p>\r\n<p>70. Dapatkah saya menjadi seseorang yang spontan?</p>\r\n<p>71. Apakah saya terlalu kritis pada diri sendiri?</p>\r\n<p>72. Apakah saya terlalu kritis pada orang lain?</p>\r\n<p>73. Apakah saya dapat melihat permasalahan dari sudut pandang yang berbeda?</p>\r\n<p>74. Hal-hal apa sajakah yang telah saya selesaikan?</p>\r\n<p>75. Hal-hal apa sajakah yang menjadi sumber stress dalam hidup?</p>\r\n<p>76. Bagaimana saya dapat mengurangi stress dalam hidup?</p>\r\n<p>77. Kemana sajakah uang saya dipergunakan?</p>\r\n<p>78. Bisakah saya mengelola keuangan saya?</p>\r\n<p>79. Punyakah saya rencana keuangan untuk masa depan?</p>\r\n<p>80. Untuk apa sajakah waktu saya dipergunakan?</p>\r\n<p>81. Sudahkah saya membuat sistim pengelolaan waktu yang efisien?</p>\r\n<p>82. Apakah 3 prioritas terbesar saya dalam hidup?</p>\r\n<p>83. Siapakah orang terpenting dalam hidup saya?</p>\r\n<p>84. Siapakah yang mencintai saya?</p>\r\n<p>85. Siapakah yang peduli kepada saya?</p>\r\n<p>86. Untuk siapakah anda bekerja keras?</p>\r\n<p>87. Apakah tempat tinggal dan lingkungan kerja saya telah diatur sedemikian rupa sehingga memberi kenyamanan pada saya?</p>\r\n<p>88. Apakah saya mempunyai pola hidup yang sehat?</p>\r\n<p>89. Apakah saya sering terbawa emosi?</p>\r\n<p>90. Apakah saya dapat melupakan kesalahan-kesalahan yang telah saya buat di masa lalu?</p>\r\n<p>91. Apakah saya mengijinkan diri saya untuk melakukan kegagalan?</p>\r\n<p>92. Apakah saya mempelajari kegagalan-kegagalan saya?</p>\r\n<p>93. Apakah saya cepat menanggapi ketika sesuatu berjalan tidak semestinya?</p>\r\n<p>94. Apakah keyakinan-keyakinan saya telah bekerja dengan baik?</p>\r\n<p>95. Apakah saya melonggarkan aturan-aturan yang telah saya buat untuk diri sendiri dan orang lain?</p>\r\n<p>96. Apakah impian masa kecil saya yang terlupakan?</p>\r\n<p>97. Siapa sajakah idola/tokoh yang saya tiru?</p>\r\n<p>98. Apakah saya asli? Apakah saya menjadi diri saya sendiri atau sedang mencoba menjadi seseorang yang lain?</p>\r\n<p>99. Bagaimana jika &hellip;?</p>\r\n<p>100. Mengapa tidak &hellip;?</p>\r\n<p>101. Bagaimana saya dapat &hellip;?</p>', '2016-04-09 19:22:49', 'file_1460204569.jpg', null, 'admin', '0');
INSERT INTO `berita` VALUES ('8', 'Apakah Anda Melakukan 9 Kesalahan ini Dalam Percakapan?', '<p>Cara kita berkomunikasi dengan orang lain adalah sebuah kebiasaan. Karenanya, seringkali kita tidak mengetahui apakah pola percakapan yang kita lakukan sudah baik atau belum baik.</p>\r\n<p>Dalam kehidupan sehari-hari pasti anda sering berkata dalam hati : &rdquo;ah tidak enak mengobrol dengan si A, lebih enak saya mencari si B dan mengobrol dengannya.&rdquo;</p>\r\n<p>Saya tidak tahu anda sendiri masuk ke dalam kategori mana : si A ataukah si B, mudah-mudahan bukan si A karena si A biasanya selalu dijauhi oleh teman-temannya.</p>\r\n<p>Andai saja anda masuk dalam kategori si A, anda tidak perlu khawatir karena pola percakapan yang kurang baik tentu saja dapat diperbaiki. Di bawah ini adalah beberapa kesalahan yang umum dilakukan oleh orang-orang dalam percakapan beserta beberapa solusi untuk memperbaikinya.</p>\r\n<p><strong>1. Tidak Mendengarkan</strong></p>\r\n<p>Sebagian besar orang bukanlah tipekal pendengar yang baik. Ini tentu saja berhubungan dengan ego mereka yang tinggi, yang justru ingin lebih didengarkan dibanding mendengarkan. Dalam setiap percakapan mereka sepertinya tidak tahan menunggu giliran untuk berbicara.</p>\r\n<p>Belajarlah menekan ego anda untuk <a href=\"http://www.akuinginsukses.com/belajar-mendengar/\">mendengarkan</a> secara sungguh-sungguh apa yang orang lain katakan.</p>\r\n<p>Ketika anda mengambil sikap untuk mulai mendengarkan, anda sedang membuka jalan untuk terciptanya suatu hubungan (apapun) yang sangat potensial. Namun tetap hindari jawaban singkat &ldquo;ya&rdquo; atau &ldquo;tidak&rdquo;, karena jika anda seperti itu lawan bicara anda akan memberikan informasi setengah-setengah kepada anda. Antusiaslah terhadap topik yang sedang mereka bicarakan, sebagai contoh, jika lawan bicara anda sedang bercerita tentang pengalamannya mendaki gunung pada akhir minggu lalu, anda dapat bertanya kepadanya :</p>\r\n<ul>\r\n<li>gunung apa yang anda daki?</li>\r\n<li>apa yang ada sukai dari mendaki      gunung?</li>\r\n<li>apa saja yang anda lakukan di      atas gunung?</li>\r\n</ul>\r\n<p>Pertanyaan-pertanyaan semacam itu akan membuat topik percakapan menjadi lebih mendalam, lebih menarik, serta memancing lebih banyak lagi topik untuk didiskusikan. Dan yang tak kalah pentingnya lawan bicara anda mengetahui bahwa anda sungguh-sungguh sedang mendengarkannya. Hal ini tentu saja akan membuat tingkat respek lawan bicara anda bertambah pada anda.</p>\r\n<p><strong>2. Terlalu Banyak Bertanya</strong></p>\r\n<p>Beberapa pertanyaan dapat berarti anda antusias dengan lawan bicara anda, namun terlalu banyak bertanya pun akhirnya menjadi tidak baik karena sepertinya anda sedang menginterogerasi lawan bicara anda, dan dapat membuat mereka menjadi tidak nyaman.</p>\r\n<p>Cobalah gabungkan antara pernyataan dan pertanyaan, misalkan :</p>\r\n<ul>\r\n<li>saya pun minggu lalu berakhir      pekan dengan memancing bersama teman-teman kerja saya. Apakah anda suka      memancing?</li>\r\n</ul>\r\n<p><strong>3. Kehabisan Topik Untuk Dibicarakan</strong></p>\r\n<p>Dalam percakapan mungkin anda sering merasa kehabisan topik untuk dibicarakan dengan lawan bicara anda, terutama jika anda berbicara dengan seseorang yang baru saja anda kenal. Untuk mencegah hal ini terjadi, ada beberapa saran mengenai topik yang bisa anda bicarakan :</p>\r\n<ul>\r\n<li>Seorang bijak pernah berkata &ldquo;Jangan      tinggalkan rumah tanpa membaca surat kabar terlebih dahulu. Jika anda      kehabisan topik untuk dibicarakan, anda bisa memulai berbicara tentang      berita yang sedang hangat saat ini.&rdquo;</li>\r\n<li>Bicarakan tentang sesuatu yang      berada disekeliling anda. Mungkin tentang aquarium yang berada dibelakang      anda, anak-anak yang sedang bermain di samping anda, atau apapun saja yang      memungkinkan untuk dibicarakan di sekeliling anda.</li>\r\n</ul>\r\n<p><strong>4. Penyampaian yang Buruk</strong></p>\r\n<p>Salah satu hal yang paling penting dalam percakapan bukanlah apa yang anda katakan, melainkan bagaimana anda menyampaikannya. Perubahan dalam kebiasaan ini akan membuat perbedaan besar, karena suara dan bahasa tubuh adalah bagian yang sangat vital dalam percakapan. Beberapa hal dibawah ini untuk anda pertimbangkan :</p>\r\n<ul>\r\n<li>Sampaikan dengan perlahan.      Ketika anda berbicara tentang suatu hal yang sangat menyenangkan, mudah      sekali bagi anda untuk memulai percakapan tersebut dan bahkan anda dapat      berbicara dengan sangat cepat. Usahakan anda memperlambat kecepatan bicara      anda, karena akan lebih mudah bagi lawan bicara anda untuk mendengarkan      dan menangkap maksud yang ingin anda sampaikan.</li>\r\n<li>Bicaralah dengan suara lantang.      Tidak perlu ragu, karena lawan bicara anda memang ingin mendengarkan anda.</li>\r\n<li>Bicaralah dengan jelas. Jangan      seperti bergumam.</li>\r\n<li>Bicaralah dengan suara yang      tidak monoton. Libatkan emosi dalam suara anda.</li>\r\n<li>Gunakan jeda. Penyampaian      dengan perlahan ditambah dengan jeda akan membuat lawan bicara anda lebih      perhatian dalam mendengarkan dan suasana pun menjadi lebih rileks.</li>\r\n<li>Gunakan bahasa tubuh yang baik.      Dalam artikel mendatang, saya akan membahas bagaimana menggunakan <a href=\"http://www.akuinginsukses.com/16-cara-menggunakan-bahasa-tubuh-yang-baik/\">bahasa tubuh</a> yang baik.</li>\r\n</ul>\r\n<p><strong>5. Menginterupsi</strong></p>\r\n<p>Apakah yang anda rasakan jika pembicaraan anda dipotong oleh lawan bicara anda? &hellip; Ya, lawan bicara anda pun akan merasakan hal yang sama jika anda memotong pembicaraannya. Biarkan lawan bicara anda menghabiskan terlebih dahulu apa yang ingin disampaikan. Itu adalah salah satu bentuk penghargaan anda pada lawan bicara anda. Carilah keseimbangan antara mendengarkan dan berbicara.</p>\r\n<p><strong>6. Keinginan &ldquo;Selalu Benar&rdquo;</strong></p>\r\n<p>Orang tidak akan terkesan kepada anda jika anda selalu ingin merasa benar dalam setiap percakapan. Seringkali pembicaraan bukan betul-betul sebuah diskusi. Kadang-kadang kita ingin menjaga mood tetap baik dengan berbicara dengan seseorang. Sebagai contoh : salah satu teman anda ingin bercerita kepada anda mengenai serunya pengalaman berarung jeram sampai-sampai perahu karetnya terbalik. Namun anda malah berbicara bagaimana berarung jeram yang baik. Saya yakin mood teman anda akan langsung berubah.</p>\r\n<p>Duduklah santai, berbicara dan tidak berdebat.</p>\r\n<p><strong>7. Berbicara Tentang Hal-Hal Aneh atau Negatif</strong></p>\r\n<p>Pernahkan anda berkenalan dengan seseorang dan setelah itu ia berbicara tentang hal-hal aneh atau negatif, seperti kesehatannya yang memburuk, cerita pembunuhan, atasannya yang menyebalkan, atau menggunakan bahasa aneh yang hanya ia dan temannya yang mengetahui artinya.</p>\r\n<p>Saya rasa tidak ada manfaatnya berbicara hal-hal aneh atau negatif seperti itu. Orang-orang akan senang berbicara kepada anda jika anda selalu memberikan <a href=\"http://www.akuinginsukses.com/9-langkah-menuju-sikap-mental-positif/\">energi positif</a> dalam setiap kata-kata yang anda keluarkan.</p>\r\n<p><strong>8. Membosankan</strong></p>\r\n<p>Jangan bercerita panjang-panjang tentang mobil anda yang baru saja anda beli atau rumah anda yang baru saja selesai dibangun. Rata-rata orang tidak terlalu tertarik dengan cerita semacam itu, yang terlalu mengekspose kemampuan diri. Carilah topik yang mengarah pada hal-hal yang bergairah atau hal-hal yang lucu misalkan. Bisa juga anda menceritakan tentang pengalaman anda berakhir pekan di puncak kemarin atau rencana anda pada liburan Lebaran mendatang. Intinya adalah sesuatu yang positif. Bukan juga mengeluh tentang atasan atau pekerjaan anda.</p>\r\n<p>Dale Carnegie pernah berkata :<br /> <em>&rdquo;Dalam 2 bulan anda akan mempunyai lebih banyak teman dengan cara antusias terhadap cerita-cerita mereka dibandingkan 2 tahun anda mencari teman dengan cara berusaha memancing mereka tertarik pada cerita-cerita anda.&rdquo;</em></p>\r\n<p>Cobalah memberi peran lebih dalam berbicara untuk lawan bicara anda. Kelak anda akan membangun sebuah hubungan yang berkualitas.</p>\r\n<p>Mungkin anda sudah sering mendengar istilah &ldquo;mengapa Tuhan menciptakan 2 telinga dan 1 mulut? &hellip; agar kita lebih banyak mendengarkan dibanding berbicara.</p>\r\n<p><strong>9. Tidak Merespon Dengan Baik</strong></p>\r\n<p>Jika seseorang bercerita tentang pengalamannya, jangan sekedar mengangguk atau menjawab dengan kalimat singkat. Terbukalah dan katakan apa yang anda pikirkan. Ekspresikan perasaan anda.</p>\r\n<p>Sebagai penutup, anda tidak harus memperbaiki ke-9 langkah diatas secara sekaligus. Pilihlah kira-kira 3 hal terpenting yang menurut anda perlu diperbaiki dan selama 3-4 minggu anda berusaha melakukan hal tersebut secara terus menerus sampai akhirnya menjadi suatu kebiasaan.</p>\r\n<p>Mudah-mudahan tips percakapan ini bermanfaat bagi anda sehingga kelak anda dapat menjadi teman bicara yang baik bagi teman-teman atau pasangan anda.</p>', '2016-04-09 19:23:49', 'file_1460204629.jpg', null, 'admin', '3');
INSERT INTO `berita` VALUES ('9', 'Bagaimana Membebaskan Diri Anda dari Gosip', '<p><strong>Bahaya Gosip</strong></p>\r\n<p>Gosip merupakan salah satu masalah paling umum baik di tempat kerja maupun dalam hubungan. Masalah terbesar dari gosip adalah kebanyakan orang tidak menyadari ketika sebuah diskusi berubah menjadi gosip dan lebih parahnya lagi mereka tidak menyadari dampak dari gosip tersebut. Gosip adalah pembunuh sebuah hubungan dan hal ini terjadi lebih sering dari yang anda percayai. Gosip pada dasarnya adalah apapun yang dapat dianggap sebagai hal negatif tentang seseorang yang dibicarakan dengan orang lain dimana mereka tidak mendengarnya langsung dari pihak yang bersangkutan. Gosip bisa berupa sesuatu yang sangat sederhana tanpa adanya niat untuk menyakiti orang tersebut dan bisa pula sesuatu yang membunuh karakter seseorang.</p>\r\n<p>Tidak ada satu hal pun yang positif dari gosip dan gosip cenderung menyukai orang yang dibicarakan dan orang-orang yang terlibat ketika membicarakan gosip tersebut. Ada pula risiko yang timbul jika orang yang dibicarakan mengetahui orang yang menyabarkan gosip tersebut, juga rasa sakit yang muncul akibat informasi negatif yang tersebar. Beberapa bahaya lain yang muncul akibat gosip:</p>\r\n<p>&bull; <a href=\"http://www.akuinginsukses.com/7-cara-mengurangi-stress-hari-ini/\">Stress</a> bagi mereka yang terlibat dalam gosip<br /> &bull; Menyakiti perasaan<br /> &bull; Menghancurkan kerja sama tim<br /> &bull; Membuat orang enggan membagikan kerapuhan mereka<br /> &bull; Menghambat komunikasi yang membutuhkan rasa percaya dengan memberi dorongan bagi orang untuk menjaga mulut mereka<br /> &bull; Menciptakan reputasi yang negatif</p>\r\n<p><strong>Pilihan-pilihan Anda Terhadap Gosip</strong></p>\r\n<p>Dampak-dampak negatif tersebut seharusnya cukup untuk meyakinkan siapapun untuk menghindari gosip, sayangnya, mereka tetap melakukannya. Gosip sangatlah menggoda dan sering terjadi karena terdorong perilaku orang-orang sekitar. Dunia gosip membuka pintu lebar bagi semua gosip baru dan mereka cenderung menjadikan orang-orang yang tidak terlibat dalam gosip yang bersangkutan untuk menjadi korban dari gosip yang lebih baru. Terkadang lebih mudah untuk ikut terlibat dalam gosip daripada mengambil risiko menjadi korban dan bagi kebanyakan orang, dengan berbagai alasan, gosip memiliki daya tarik yang membuat orang tertarik untuk terlibat. Gosip adalah sebuah hal yang egois dan berbahaya karena merendahkan dan menghancurkan seseorang (baik secara langsung maupun tak langsung) untuk membuat gosip tersebut terdengar lebih baik. Inilah alasannya mengapa gosip sangatlah merusak, terutama bagi orang yang digosipkan.</p>\r\n<p>Hal terbaik dari gosip adalah anda bisa dengan mudah menjauhkan diri darinya jika anda memutuskan untuk menghindarinya dan mempelajari beberapa teknik untuk mengenalinya, menanganinya, dan menjaga jarak dari masalah yang ditimbulkan. Jadi bagaimana kita bisa melakukannya?</p>\r\n<p><strong>Kenali Gosip</strong></p>\r\n<p>Seringkali gosip merupakan sesuatu yang jelas dan tidak ditutup-tutupi. Kadang gosip bisa merupakan sebuah pertanyaan sederhana yang diajukan seseorang tentang apa yang anda dengar atau ketahui atau pikirkan mengenai orang lain atau tindakan mereka. Hal tersebut bisa terdengar seperti:</p>\r\n<p>&bull; Apakah kau dengar apa yang Frank katakan mengenai Sally?<br /> &bull; Kau tak akan menyangka apa John lakukan minggu ini?<br /> &bull; Aku dengar Gerry &hellip;<br /> &bull; Apakah kau sudah melihat pacar baru Lisa?</p>\r\n<p>Kata-kata tersebut tidak selalu berakhir dengan gossip negatif namun mereka merupakan pembicaraan mengenai orang lain dan cukup mudah untuk dikenali dalam sebuah percakapan atau awal sebuah gosip. Sayangnya, tidak semua gosip bisa dikenali dengan mudah, dan kadang gosip lebih tersamar. Gosip kadang berawal dari pembicaraan dengan seorang teman atau rekan kerja; diawali dengan pembicaraan yang positif hingga akhirnya berujung pada pembicaraan negatif. Jika anda tidak membicarakan cara untuk membantu orang yang sedang anda bicarakan, mendukung mereka untuk <a href=\"http://www.akuinginsukses.com/teknik-pemecahan-masalah/\">menyelesaikan masalah</a> atau melakukan tindakan positif lain ketika membicarakan orang lain; kemungkinan besar pembicaraan itu akan berakhir menjadi gosip. Pada dasarnya, jika anda sedang membicarakan orang lain, anda perlu berhenti dan memikirkan jika pembicaraan tersebut akan membantu orang tersebut atau tidak. Jika tidak, maka pembicaraan itu adalah gosip dan tidak perlu anda lanjutkan.</p>\r\n<p><strong>Mempengaruhi Gosip</strong></p>\r\n<p>&ldquo;Lidah mempunyai kuasa untuk menyelamatkan hidup atau merusaknya; orang harus menanggung akibat ucapannya.&rdquo;</p>\r\n<p>Karena gosip sangatlah kuat, gosip memiliki pengaruh yang besar dan harus dilawan melalui pengaruh positif dalam meresponnya. Terdapat beberapa tindakan yang bisa anda lakukan untuk melawan gosip.</p>\r\n<p><strong>Acuhkan gosip:</strong></p>\r\n<p>&bull; Hindari orang-orang yang bergosip dan jangan beri mereka kesempatan untuk menyebarkannya<br /> &bull; Tinggalkan ruangan atau pembicaraan saat gosip dimulai<br /> &bull; Jangan merespon pertanyaan yang menanyakan opini mengenai orang lain atau jebakan gosip lainnya<br /> &bull; Acuhkan gosip dan jangan memulai sebuah percakapan yang berujung menjadi gosip</p>\r\n<p><strong>Cegah gosip:</strong></p>\r\n<p>&bull; Jangan pernah memulai gosip dari diri anda<br /> &bull; Ubah topik pembicaraan jika sebuah pembicaraan berubah menjadi gosip<br /> &bull; Tolaklah untuk mendengar atau merespon setiap gosip<br /> &bull; Sembunyikan perasaan sakit atau reaksi dramatis terhadap gosip. Hal tersebut merupakan makanan bagi gosip untuk berlanjut.</p>\r\n<p><strong>Lawan gosip:</strong></p>\r\n<p>&bull; Katakan dengan sopan bahwa lebih baik membicarakan hal tersebut dengan orang yang bersangkutan<br /> &bull; Jika anda tahu darimana gosip tersebut bersumber, temui orang tersebut dan katakan kepada mereka bahwa anda tidak suka dengan gosip tersebut dan hal itu menyebabkan rasa sakit; terlepas dari gosip tersebut disengaja atau tidak<br /> &bull; Jika anda mendengar seseorang memulai sebuah gosip, ajukan diri untuk menemui orang yang dibicarakan dengan orang yang memulai gosip untuk mendiskusikannya<br /> &bull; Jawab gosip dengan, &ldquo;Maukah hal tersebut dibicarakan oleh orang lain tanpa sepengetahuan-mu?&rdquo; lalu pergilah<br /> &bull; Katakan bahwa saya tidak suka membicarakan orang lain karena saya tidak suka orang lain membicarakan saya<br /> &bull; Katakan bahwa anda tidak suka membicarakan orang lain kecuali pembicaraan tersebut dapat membantu atau mendukung mereka<br /> &bull; Katakan bahwa anda tidak mau membicarakan hal-hal negatif mengenai orang lain kecuali orang tersebut terlibat dalam percakapan</p>', '2016-04-09 19:25:33', 'file_1460204733.jpg', null, 'admin', '4');
INSERT INTO `berita` VALUES ('10', 'Bagaimana Membentuk Pola Pikir yang Baru', '<p>Pola pikir kita (atau kadang-kadang disebut paradigma kita) adalah jumlah total keyakinan, nilai, identitas, harapan, sikap, kebiasaan, keputusan, pendapat, dan pola-pola pemikiran kita &mdash; tentang diri kita sendiri, orang lain, dan bagaimana kehidupan bekerja. Ini adalah saringan yang dengannya kita menafsirkan apa yang kita lihat dan alami. Pola pikir Anda membentuk kehidupan Anda dan menarik kepada diri Anda hasil-hasil yang merupakan refleksi pasti pola pikir itu. Apa yang Anda percayai akan terjadi, benar-benar terjadi.</p>\r\n<p>Kita mendekati, bereaksi, dan pada kenyataannya menciptakan dunia kita berdasarkan pola pikir individual kita sendiri. Pola pikir kita memberitahu kita bagaimana permainan hidup ini harus dimainkan, dan mengatur apakah kita memainkannya secara berhasil atau tidak. Kita mungkin memiliki pola pikir, misalnya, yang memberitahu kita, &ldquo;Kehidupan ini sangat keras, dan aku harus berjuang hanya sekadar untuk hidup pas-pasan.&rdquo; Atau kita mungkin memiliki pola pikir yang lebih positif, seperti, &ldquo;Aku punya kemampuan yang hebat dan orang-orang ingin bekerja sama denganku.&rdquo;</p>\r\n<p>Pikiran adalah magnet yang sangat kuat. Apa pun yang diberitahukan pola pikir kita kepada kita adalah apa yang kita tarik, baik kita menyadarinya atau tidak! Jika Anda memiliki keyakinan bahwa, &ldquo;Kehidupan ini sangat keras, dan aku harus berjuang hanya sekadar untuk hidup pas-pasan,&rdquo; misalnya, Anda tidak perlu menyadari akan keyakinan itu untuk mengalami perjuangan dalam hidup Anda. Pada kenyataannya, jika Anda ingin melihat apa pola pikir Anda sebenarnya, Anda hanya perlu melihat hidup Anda dan hasil-hasil Anda. Hasil yang kita peroleh sesuai dengan apa yang kita yakini.</p>\r\n<p>Jika kita tidak memeriksa pola pikir kita dan bertanya apakah pola pikir itu mendukung atau membatasi kita, kita beroperasi &ldquo;secara otomatis.&rdquo; Kita tidak lagi memilih keyakinan dan pola pikir kita, tetapi keyakinan dan pola pikir itu menyebabkan kita menjalani hidup dengan cara tertentu. Kita menciptakan pola pikir kita sendiri, tetapi pada saat yang sama, pola pikir kita menciptakan diri kita. Jika kita tidak mempertanyakan keyakinan yang menyebutkan bahwa &ldquo;kehidupan ini sulit,&rdquo; misalnya, kita akan terus berjuang bahkan tanpa mengetahui penyebabnya.</p>\r\n<p>Kita semua memiliki keyakinan lama yang tersembunyi. Banyak dari keyakinan itu diperoleh pada masa kanak-kanak dan tidak lagi berguna bagi kita atau mendukung keberhasilan kita. Ketika Alice mulai memeriksa pola pikirnya, ia menyadari ia memiliki keyakinan bahwa &ldquo;Uang berasal dari kedua orangtua saya.&rdquo; Ketika ia masih kecil dan ingin es krim, mainan, atau boneka, dari orangtuanyalah uang berasal. Ketika remaja, dari orangtuanyalah uang tunjangannya berasal. Ketika dewasa, ia sering menemukan dirinya dalam kesulitan finansial dan terpaksa meminjam sejumlah besar uang kepada kedua orangtuanya.</p>\r\n<p>Joel Arthur Barker menulis dalam Paradigms, &ldquo;Mengabaikan kekuatan paradigma untuk memengaruhi pendapat Anda berarti menempatkan diri Anda dalam risiko ketika menjajaki masa depan. Agar mampu membentuk masa depan, Anda harus siap dan mampu mengubah paradigma Anda.&rdquo;</p>\r\n<p>Pola pikir menggerakkan perilaku kita. Jika Anda ingin melihat pola pikir Anda sendiri dan keluarga serta teman-teman Anda, cobalah mengadakan permainan kartu dengan keluarga selama liburan. Kemungkinan besar orang-orang akan melakukan di sekeliling meja kartu apa yang mereka lakukan dalam hidup mereka. Apakah beberapa orang bersikap jemu? Kompetitif? Santai? Apakah mereka ingin menyelamatkan muka atau bersikap tenang, atau apakah mereka mengambil risiko menyinggung perasaan orang lain agar dapat mengendalikan dan mendominasi? Apakah mereka malu-malu atau menguasai? Bagaimana mereka memandang orang lain akan bertindak terhadap mereka? Apakah beberapa orang berpikir mereka akan dimanfaatkan atau dibuat tampak bodoh? Apakah mereka berpikir orang lain bodoh atau berperilaku buruk? Semua perilaku ini mencerminkan pola pikir tertentu, cara melihat diri sendiri, orang lain, dan dunia.</p>\r\n<p>Kita dapat mempercayai apa pun yang ingin kita percayai. Dan kita dapat menemukan banyak bukti untuk mendukung keyakinan atau pola pikir apa pun yang kita pilih, jadi kita juga dapat memilih keyakinan yang memperkuat kita dan menggerakkan kita untuk maju. Kita mulai berhasil ketika kita memahami bahwa kita mempunyai sebuah pilihan, karena, pada saat itu, kita dapat mulai memilih keyakinan yang membawa kita ke mana kita ingin pergi. William James, bapak psikologi modern, berkata, &ldquo;Yakinlah bahwa hidup Anda berharga, maka keyakinan Anda akan menciptakan faktanya.&rdquo;</p>\r\n<p>Agar berhasil, Anda perlu memahami pola pikir Anda. Anda harus membawanya ke tingkat sadar, memerhatikannya dengan baik, dan melihat apakah ada sesuatu yang ingin Anda ubah. Jika tidak, keyakinan Anda yang tersembunyi akan mengendalikan Anda. Jika Anda tidak mengetahui pola pikir Anda, Anda tidak dapat melakukan apa pun terhadapnya. Jika Anda ingin mengubah hasil-hasil Anda, Anda harus mengubah pola pikir Anda.</p>\r\n<p>Pergeseran pola pikir berarti berubah dari satu pola pikir kepada pola pikir yang lain. Dalam Ilmu Sukses, ini berarti beralih dari satu pola pikir yang menghalangi <a href=\"http://www.akuinginsukses.com/keberhasilan-adalah-arah-yang-anda-pilih/\">keberhasilan</a> ke cara berpikir yang mendorong dan menarik keberhasilan.</p>\r\n<p>Ketika menggeser pola pikir Anda, Anda beralih ke sebuah permainan baru dan seperangkat aturan yang baru. Ketika permainan Anda dan aturan berubah, seluruh dunia Anda mulai berubah. Anda mulai mengeluarkan energi yang berbeda, sehingga Anda menarik jenis orang-orang dan situasi yang berbeda ke dalam hidup Anda. Ketika Anda mentransformasi pemikiran Anda, Anda mentransformasi dunia Anda. Oliver Wendell Holmes pernah berkata, &ldquo;Pikiran manusia yang dibentangkan ke sebuah gagasan baru tidak pernah kembali ke dimensi asalnya.&rdquo;</p>\r\n<p>Banyak orang mengatakan mereka ingin mengubah hidup mereka. Mereka menghadiri ceramah pembicara motivasi atau membuat janji Tahun Baru dan menjadi sangat gembira dengan semua perubahan yang mereka lihat untuk diri mereka sendiri. Atau mereka pergi ke seminar atau membaca buku dan melihat bahwa mereka ingin mulai melakukan hal-hal secara berbeda. Mereka bahkan mungkin melakukan beberapa perubahan dalam beberapa minggu pertama. Tetapi kemudian energi mereka tampak berkurang. Antusiasme mereka merosot. Sebelum Anda mengetahui hal itu, mereka kembali ke dalam rutinitas lama mereka. Ketika ini terjadi, penyebabnya adalah mereka mencoba untuk memanipulasi akibat-akibat dari kehidupan mereka, dan bukannya mencari sebabnya. Mereka mencoba untuk mengubah hasil tanpa mengubah pola pikir mereka.</p>\r\n<p>Untuk memberikan hasil yang dramatis dan permanen, Anda harus mengubah cara berpikir. Jika tidak ada pergeseran pola pikir, setiap perubahan atau perbaikan hanya akan bersifat minimal dan/atau berjangka pendek.</p>\r\n<p><strong>Pikiran Bawah Sadar Anda</strong></p>\r\n<p>Pikiran bawah sadar adalah pusat kekuatan Anda, bagian yang paling menakjubkan dari diri Anda. Pikiran itu adalah sisi spiritual diri kita, dan beberapa orang bahkan menyebutnya &ldquo;jiwa.&rdquo; Pikiran bawah sadar mengekspresikan diri melalui perasaan dan intuisi. Ia tidak memiliki batas-batas kecuali yang ditempatkan atasnya oleh pikiran sadar Anda pada waktu pikiran sadar itu memilih pikiran atau oleh pengondisian Anda sebelumnya. Pikiran bawah sadar adalah karunia terbesar yang Anda miliki, peti harta karun yang memiliki potensi yang sangat besar.</p>\r\n<p>Pikiran bawah sadar berfungsi dalam setiap sel tubuh Anda. Cobalah eksperimen ini: Gerakkan lengan kanan Anda secara memutar. Pada waktu Anda melakukannya, pikirkanlah fakta bahwa pikiran bawah sadar Andalah yang melakukan perintah ini. Tidak ada cara bagi Anda untuk dapat menggerakkan kurang lebih 157 otot antara bahu dan pergelangan tangan Anda secara sadar. Itu terlalu banyak bagi pikiran sadar Anda untuk mengaturnya. Terlalu rumit untuk mengatakan, &ldquo;Nah, mari kita putar otot No. 63 sepuluh derajat ke kanan, otot No. 32 sebelas derajat ke kiri, dan seterusnya.&rdquo;</p>\r\n<p>Pikiran bawah sadar Anda hanya menerima pengarahan, &ldquo;Gerakkan lengan kanan Anda secara memutar&rdquo; dan melaksanakannya, sama seperti jantung Anda tetap berdenyut dan paru-paru Anda bernapas bahkan sementara Anda tidur. Pikiran sadar Anda memberikan perintah untuk menggerakkan lengan, tetapi pikiran bawah sadar melaksanakannya.</p>\r\n<p>Proses ini terjadi ribuan, bahkan ratusan ribu, kali setiap hari. Setiap kali pikiran sadar Anda menerima sebuah pikiran, pikiran bawah sadar Anda mulai melaksanakannya dan mewujudkannya di dunia di sekitar Anda. Inilah alasan mengapa sangat penting memilih pikiran Anda dengan hati-hati. Apa pun yang disimpan di dalam pikiran sadar langsung melewati pikiran bawah sadar dan mulai menggerakkan tubuh dan kekuatan yang tak terlihat menjadi tindakan.</p>\r\n<p>Pikiran bawah sadar tidak memiliki kemampuan untuk menyensor atau menolak informasi. Ia langsung bertindak atas perintah apa pun yang diberikan padanya. Pikiran bawah sadar tidak dapat mengetahui perbedaan antara sesuatu yang benar-benar terjadi dan sesuatu yang dibayangkan dengan jelas.</p>\r\n<p>Setiap pikiran yang secara terus-menerus Anda tanamkan pada pikiran bawah sadar Anda menjadi tetap dan membentuk kebiasaan. Gagasan dan kebiasaan yang tetap ini menjadi pola pikir Anda. Pola pikir kita berada dalam pikiran bawah sadar. Pola pikir terus mengekspresikan diri dan menggerakkan hasil-hasil kita tanpa bantuan pikiran sadar sampai diganti secara sengaja. Sering kali, kita bahkan tidak menyadari keberadaan mereka, tetapi mereka aktif di dalam pikiran bawah sadar dan mendikte tingkat keberhasilan kita sampai kita dengan sadar menggantinya.</p>\r\n<p>Pikiran bawah sadar dan pikiran sadar seperti kebun dan tukang kebun. Pikiran sadar adalah tukang kebunnya. Anda dapat menggunakannya untuk memilih benih apa, atau pikiran apa, yang ingin Anda tanam. Pikiran bawah sadar akan menanam benih tersebut dan memberikan hasil yang persis mencerminkan jenis pikiran yang Anda tanam. Pikiran apa pun yang Anda terima dan pelihara akan tumbuh dalam kebun dan dilaksanakan oleh pikiran bawah sadar Anda.</p>\r\n<p><strong>Jalan Menuju Hasil</strong></p>\r\n<p>Inilah cara kerjanya. Kita memilih sebuah pikiran dalam pikiran sadar dan menjadi terlibat secara emosional dengan pikiran itu. Pada waktu kita terus memilih pikiran itu dan menanamkannya di dalam pikiran bawah sadar, pikiran bawah sadar mulai menggerakkan tubuh untuk bertindak. Itulah tepatnya apa yang terjadi beberapa menit yang lalu ketika Anda menggerakkan lengan Anda. Anda secara sadar memilih pikiran itu dan merasakan Anda ingin melakukannya. Anda memberikan perintah dan menanamkannya di dalam pikiran bawah sadar Anda, yang mengaktifkan semua otot yang diperlukan untuk menggerakkan lengan Anda. Dengan cara inilah semua hasil tercipta. Pikiran menciptakan perasaan dalam pikiran bawah sadar Anda. Perasaaan menciptakan tindakan, dan tindakan menciptakan hasil.</p>\r\n<p>Ubahlah pemikiran Anda, dan Anda mengubah hasil Anda. Setiap pikiran yang terus-menerus Anda pikirkan akhirnya berakhir dalam bentuk fisik. Jika pikiran Anda berubah, hasil Anda pasti berubah.</p>\r\n<p>PIKIRAN =&gt; PERASAAN =&gt; TINDAKAN =&gt; HASIL</p>\r\n<p><strong>Memilih Pola Pikir Anda Yang Baru</strong></p>\r\n<p>Bagaimana Anda mendapatkan pola pikir yang baru? Bagaimana Anda memilih pikiran baru untuk menggantikan pikiran lama Anda yang membatasi? Berikut ini adalah beberapa petunjuk untuk menciptakan pola pikir Anda yang baru:</p>\r\n<p><strong>1. Buatlah pola pikir Anda senyata, sekonkret, dan sekomprehensif mungkin</strong>.</p>\r\n<p>Itu berarti menuliskannya dengan tepat sebagaimana yang Anda inginkan. Keyakinan baru apa yang ingin Anda jalani? Sikap atau pendapat baru apa yang ingin Anda terapkan? Kebiasaan mental dan pola baru apa yang akan bermanfaat untuk dimasukkan ke dalam hidup Anda? Apa nilai-nilai Anda yang sesungguhnya? Harapan-harapan apa yang akan membawa Anda kepada keberhasilan? Ingin menjadi siapakah Anda? Ketika Anda membaca pola pikir Anda yang baru dan gambar <a href=\"http://www.akuinginsukses.com/10-hukum-kehidupan-paling-populer/\">kehidupan</a> yang Anda inginkan, bagaimana rupa gambar itu? Di mana diri Anda? Bagaimana perasaan Anda? Apa yang Anda lihat? Siapa yang ada di dekat Anda? Akan seperti apakah suatu hari yang Anda jalani jika Anda menjalani hidup dengan sikap, keyakinan, dan pikiran baru itu?</p>\r\n<p>Mulailah dengan menulis, &ldquo;Aku sangat gembira, dan bersyukur sekarang karena&hellip;&rdquo; Kemudian lanjutkan untuk menggambarkan keyakinan, sikap, pendapat, kebiasaan mental, nilai-nilai, dan harapan-harapan Anda tepat seperti yang Anda inginkan.</p>\r\n<p><strong>2. Berpikirlah secara tidak terbatas.</strong></p>\r\n<p>Biarkan diri Anda membayangkan masa depan dan sikap Anda terhadap diri sendiri, orang lain, dan bagaimana dunia bekerja tepat seperti yang Anda inginkan. Jangan sekadar berusaha mendapatkan apa yang Anda pikir dapat Anda peroleh. Wujudkan kehidupan yang benar-benar Anda inginkan!</p>\r\n<p><strong>3. Pastikan untuk menuliskannya dalam kalimat seolah-olah Anda sudah memilikinya. </strong></p>\r\n<p>Anda tidak boleh berpikir dalam bentuk &ldquo;suatu hari,&rdquo; atau menulis &ldquo;Aku akan.&rdquo; Tulislah dan alamilah, seolah-olah hal itu terjadi saat ini, sekalipun hasilnya belum terwujud. Tulislah, misalnya, &ldquo;Aku suka menghasilkan <a href=\"http://www.akuinginsukses.com/kenyataan-tentang-uang-dan-kebahagiaan/\">uang</a> dan menjalankan bisnis yang berhasil, karena hal itu memungkinkan aku bermurah hati kepada orang lain.&rdquo; Berikan pikiran bawah sadar Anda pesan bahwa realitas ini sudah nyata dalam hidup Anda.</p>\r\n<p>Ingatlah, pikiran bawah sadar menerima segala sesuatu yang diberikan kepadanya, tanpa menyunting, menyensor, atau menilai. Jika Anda menuliskan bahwa itu akan terjadi nanti, hal itu memberitahukan pikiran bawah sadar Anda bahwa Anda tidak memiliki apa yang Anda inginkan, dan Anda belum menjadi orang yang Anda inginkan. Ketika Anda mengatakan, &ldquo;Aku akan,&rdquo; Anda sedang mengatakan kepada pikiran bawah sadar Anda bahwa Anda tidak demikian. Saya pernah membaca pernyataan misi sebuah organisasi yang mengatakan mereka &ldquo;berjuang untuk menjadi nomor satu.&rdquo; Terkalah apa yang selalu mereka lakukan. Berjuang! Dengan pernyataan misi itu, mereka selalu berjuang, tetapi tidak pernah menjadi nomor satu! Jika Anda mendapatkan diri Anda tergelincir dan menuliskan dalam bentuk masa mendatang, kembalilah dan bawa gambaran pola pikir Anda ke dalam bentuk saat ini.</p>\r\n<p><strong>4. Buatlah pola pikir Anda bersifat emosional. </strong></p>\r\n<p>Selain menuliskan dalam bentuk sekarang, sertakan kata-kata emosional dan terlibatlah secara emosional dengan apa yang sedang Anda tulis. Ingatlah, perasaan adalah pintu gerbang menuju pikiran bawah sadar, dan pikiran bawah sadar Anda adalah kekuatan yang sesungguhnya di balik keberhasilan Anda. Emosi menciptakan motivasi. Anda harus menjadi bersemangat. Jika Anda tidak bersemangat dengan pola pikir Anda yang baru, jika Anda tidak benar-benar jatuh cinta dengan pola pikir yang baru itu, pola pikir yang baru itu tidak akan terbentuk dalam bentuk fisik. Semangat manusia tidak akan menginvestasikan upayanya untuk sesuatu yang biasa-biasa saja! Jika Anda tidak merasa penuh semangat setelah menuliskan pola pikir Anda yang baru, kembalilah dan kerjakan ulang apa yang telah Anda tuliskan. Ketika hal itu benar-benar menggerakkan Anda, Anda siap membuatnya menjadi kenyataan.</p>\r\n<p><strong>5. Berhati-hatilah agar Anda menyatakan apa yang benar-benar Anda inginkan, bukan apa yang tidak Anda inginkan.</strong></p>\r\n<p>Pikiran kita tidak dapat memproses kata tidak. Jika saya mengatakan pada Anda untuk tidak berpikir tentang es krim, apa yang Anda pikirkan? Terlebih dahulu Anda pasti berpikir tentang apa yang saya katakan untuk tidak Anda pikirkan, sebelum Anda dapat mengatakan pada pikiran Anda untuk tidak berpikir tentang hal itu! Semua pemikiran ini akan membuat Anda menarik hal yang benar-benar tidak Anda inginkan. Jadi ingatlah untuk menyatakan apa yang benar-benar Anda inginkan.</p>\r\n<p><strong>6. Ciptakan sebuah gambar tentang pola pikir Anda dan beradalah dalam gambar itu, bukan sekadar menjadi pengamat yang melihat ke gambar itu.</strong></p>\r\n<p>Rata-rata orang yang melakukan latihan ini, mereka hampir selalu mendapati bahwa mereka melihat diri mereka dalam gambar itu. Itu tidak akan berhasil. Anda harus berada dalam gambar pola pikir Anda yang baru itu. Jika Anda melihat ke diri sendiri dalam gambar itu, Anda mengatakan pada pikiran bawah sadar Anda bahwa itu bukan benar-benar diri Anda, Anda belum benar-benar berada di sana. Ketika Anda benar- benar berada dalam gambar itu, Anda sedang merasakan emosi dan hasil yang telah Anda peroleh dalam hidup baru Anda. Anda mengatakan pada pikiran bawah sadar Anda, &ldquo;Ini nyata!&rdquo; Pikiran bawah sadar Anda segera mulai menciptakan realitas itu. Lihatlah apa yang Anda lihat jika Anda berada dalam gambar itu, bukan melihat ke diri Anda sendiri dalam gambar itu.</p>\r\n<p>Ketika Anda mulai menjalani kehidupan berdasarkan pola pikir Anda yang baru, Anda mulai mengambil keputusan yang berbeda. Anda mungkin mulai berhubungan dengan berbagai jenis orang, dan Anda menarik lingkungan yang berbeda ke dalam hidup Anda. Semakin sering dan bersemangat Anda memasukkan pola pikir Anda ke dalam pikiran Anda, semakin cepat pola pikir itu akan bermanifestasi.</p>\r\n<p>Tips ini efektif apakah Anda sedang membuat pola pikir yang baru atau visi yang baru, semoga bermanfaat!</p>', '2016-04-09 19:27:04', 'file_1460204824.jpg', null, 'admin', '3');

-- ----------------------------
-- Table structure for galeri
-- ----------------------------
DROP TABLE IF EXISTS `galeri`;
CREATE TABLE `galeri` (
  `id_galeri` int(11) NOT NULL AUTO_INCREMENT,
  `jdl_galeri` varchar(200) DEFAULT NULL,
  `gbr_galeri` varchar(40) DEFAULT NULL,
  `albumid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_galeri`),
  KEY `albumid` (`albumid`),
  CONSTRAINT `galeri_ibfk_1` FOREIGN KEY (`albumid`) REFERENCES `album` (`idalbum`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of galeri
-- ----------------------------
INSERT INTO `galeri` VALUES ('2', 'Enjoy in the morning at Telaga Dewi', 'file_1462540960.jpg', '4');
INSERT INTO `galeri` VALUES ('3', 'Make your life be enjoy', 'file_1462540975.jpg', '4');
INSERT INTO `galeri` VALUES ('4', 'Waterfall at Singgalang Mountain', 'file_1460301447.jpg', '3');

-- ----------------------------
-- Table structure for kategori_paket
-- ----------------------------
DROP TABLE IF EXISTS `kategori_paket`;
CREATE TABLE `kategori_paket` (
  `id_kategori` int(11) NOT NULL AUTO_INCREMENT,
  `kategori` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kategori_paket
-- ----------------------------
INSERT INTO `kategori_paket` VALUES ('1', 'Reguler');
INSERT INTO `kategori_paket` VALUES ('2', 'Paket Khusus');

-- ----------------------------
-- Table structure for metode_bayar
-- ----------------------------
DROP TABLE IF EXISTS `metode_bayar`;
CREATE TABLE `metode_bayar` (
  `id_metode` int(11) NOT NULL AUTO_INCREMENT,
  `metode` varchar(80) DEFAULT NULL,
  `bank` varchar(50) DEFAULT NULL,
  `norek` varchar(50) DEFAULT NULL,
  `atasnama` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id_metode`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of metode_bayar
-- ----------------------------
INSERT INTO `metode_bayar` VALUES ('2', 'Transfer Bank', 'Mandiri', '5485-01-007458-53-6', 'M Fikri Setiadi');
INSERT INTO `metode_bayar` VALUES ('3', 'Transfer Bank', 'BNI', '5485-01-007458-53-6', 'M Fikri Setiadi');
INSERT INTO `metode_bayar` VALUES ('4', 'Transfer Bank', 'BCA', '5485-01-007458-53-6', 'M Fikri Setiadi');
INSERT INTO `metode_bayar` VALUES ('5', 'Transfer Bank', 'BRI', '5485-01-007458-53-6', 'M Fikri Setiadi');
INSERT INTO `metode_bayar` VALUES ('6', 'Transfer Bank', 'Mega', '5485-01-007458-53-6', 'M Fikri Setiadi');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id_order` varchar(15) NOT NULL,
  `nama` varchar(80) DEFAULT NULL,
  `jenkel` varchar(2) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `notelp` varchar(20) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `berangkat` date DEFAULT NULL,
  `kembali` date DEFAULT NULL,
  `adult` int(11) DEFAULT NULL,
  `kids` int(11) DEFAULT NULL,
  `metode_id` int(11) DEFAULT NULL,
  `paket_id_order` int(11) DEFAULT NULL,
  `keterangan` varchar(200) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `status` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`id_order`),
  KEY `paket_id_order` (`paket_id_order`),
  KEY `metode_id` (`metode_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`paket_id_order`) REFERENCES `paket` (`idpaket`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('INV040516000001', 'M Fikri Setiadi', 'L', 'Jl. Damar 42', '081277159401', 'fikri.fiver@yahoo.co.id', '2016-05-04', '2016-05-05', '1', '0', '2', '5', '', '2016-05-04', 'LUNAS');
INSERT INTO `orders` VALUES ('INV050516000002', 'Thomas Muller', 'L', 'Berlin', '081277159401', 'fikri.fiver@yahoo.co.id', '2016-05-05', '2016-05-05', '1', '2', '3', '5', '', '2016-05-05', 'LUNAS');
INSERT INTO `orders` VALUES ('INV050516000003', 'Mario Gotze', 'L', 'Munich', '081277159401', 'fikri.fiver@yahoo.co.id', '2016-05-05', '2016-05-05', '2', '0', '2', '3', '', '2016-05-05', 'LUNAS');
INSERT INTO `orders` VALUES ('INV050516000004', 'Thomas Muller', 'L', '-', '081277159401', 'fikri.fiver@yahoo.co.id', '2016-05-05', '2016-05-06', '1', '0', '2', '4', '', '2016-05-05', 'LUNAS');

-- ----------------------------
-- Table structure for paket
-- ----------------------------
DROP TABLE IF EXISTS `paket`;
CREATE TABLE `paket` (
  `idpaket` int(11) NOT NULL AUTO_INCREMENT,
  `nama_paket` varchar(100) DEFAULT NULL,
  `hrg_dewasa` double DEFAULT NULL,
  `hrg_anak` double DEFAULT NULL,
  `deskripsi` longtext,
  `kategori_id` int(11) DEFAULT NULL,
  `gambar` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`idpaket`),
  KEY `kategori_id` (`kategori_id`),
  CONSTRAINT `paket_ibfk_1` FOREIGN KEY (`kategori_id`) REFERENCES `kategori_paket` (`id_kategori`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of paket
-- ----------------------------
INSERT INTO `paket` VALUES ('2', 'Paket One Day Trip Pulau Pagang - Pasumpahan', '250000', '250000', '<p>FASILITAS PAKET TERMASUK:</p>\r\n<p>- Boat ke Pulau pulang-pergi</p>\r\n<p>- Tiket masuk pulau</p>\r\n<p>- Jacket Pelampung</p>\r\n<p>- Makan siang (nasi bungkus / box) + air mineral</p>\r\n<p>- Coffe break (teh panas / kopi panas)</p>\r\n<p>- Free banana boat</p>\r\n<p>- Snorkling + foto underwater di pulau pagang</p>\r\n<p>- Tempat parkir dan tempat bilas</p>\r\n<p>- P3K</p>\r\n<p>- Crew boat / Pemandu yang berpengalaman dan ramah</p>\r\n<p>&nbsp;Keterangan :</p>\r\n<ul>\r\n<li>BERANGKAT SETIAP HARI : Mulai hari Senin sampai hari Jumat minimal 7 orang / lebih dan hari Sabtu dan hari Minggu bisa minimal 2 orang / lebih</li>\r\n</ul>\r\n<ul>\r\n<li>Berkumpul antara jam 08.00 - 09.00 pagi dan kembali antara jam 15.00 - 16.00 sore</li>\r\n</ul>\r\n<ul>\r\n<li>Lokasi berangkat : bungus teluk kabung km 20, jalan raya Bungus - Painan</li>\r\n</ul>\r\n<!-- [if gte mso 10]>\r\n<style>\r\n /* Style Definitions */\r\n table.MsoNormalTable\r\n	{mso-style-name:\"Table Normal\";\r\n	mso-tstyle-rowband-size:0;\r\n	mso-tstyle-colband-size:0;\r\n	mso-style-noshow:yes;\r\n	mso-style-priority:99;\r\n	mso-style-qformat:yes;\r\n	mso-style-parent:\"\";\r\n	mso-padding-alt:0cm 5.4pt 0cm 5.4pt;\r\n	mso-para-margin-top:0cm;\r\n	mso-para-margin-right:0cm;\r\n	mso-para-margin-bottom:10.0pt;\r\n	mso-para-margin-left:0cm;\r\n	line-height:115%;\r\n	mso-pagination:widow-orphan;\r\n	font-size:11.0pt;\r\n	font-family:\"Calibri\",\"sans-serif\";\r\n	mso-ascii-font-family:Calibri;\r\n	mso-ascii-theme-font:minor-latin;\r\n	mso-fareast-font-family:\"Times New Roman\";\r\n	mso-fareast-theme-font:minor-fareast;\r\n	mso-hansi-font-family:Calibri;\r\n	mso-hansi-theme-font:minor-latin;\r\n	mso-bidi-font-family:\"Times New Roman\";\r\n	mso-bidi-theme-font:minor-bidi;}\r\n</style>\r\n<![endif]-->', '1', 'file_1463326657.png');
INSERT INTO `paket` VALUES ('3', 'Paket One Day Trip Pulau Pagang - Swarnadwipa - Pasumpahan', '270000', '270000', '<p>Fasilitas Termasuk : <br />- Transportasi boat PP, makan siang ( nasi box / bungkus ) + air mineral ,<br />- banana boat, snorkling, foto underwater, tiket masuk pulau ( di pulau pagang )<br />- Coffe break ( kopi / teh panas )<br />- Tempat parkir dan bilas <br />- Crew boat / pemandu <br />- Keberangkatan jam 08.00 pagi dan pulang antara jam 16.00 - 17.00 sore ( disesuaikan)<br />- Tempat di pantai bungus teluk kabung km 20<br /><br /></p>', '1', 'file_1463326701.png');
INSERT INTO `paket` VALUES ('4', 'Paket One Day Trip Pulau Pagang - Swarnadwipa - Pasumpahan', '280000', '280000', '<p>FASILITAS PAKET :<br />- Transportasi boat PP, makan siang ( nasi box / bungkus ) + air mineral ,<br />- banana boat, snorkling, foto underwater, tiket masuk pulau ( di pulau pagang )<br />- Coffe break ( kopi / teh panas )<br />- Tempat parkir dan bilas <br />- Crew boat / pemandu <br />- Keberangkatan jam 08.00 pagi dan pulang antara jam 16.00 - 17.00 sore ( disesuaikan)<br />- Tempat di pantai bungus teluk kabung km 20<br />&nbsp;<br /><br />- BERANGKAT SETIAP HARI : Mulai hari Senin sampai hari Jumat minimal 7 orang / lebih dan hari Sabtu dan hari Minggu bisa minimal 2 orang / lebih<br /><br />- Berkumpul antara jam 08.00 - 09.00 pagi dan kembali antara jam 15.00 - 16.00 sore<br /><br />- Lokasi berangkat : bungus teluk kabung km 20, jalan raya Bungus - Painan<br /><br />- TIDAK TERMASUK TRANSPORTASI DARI DAERAH MASING - MASING / DARI KOTA PADANG KE DERMAGA</p>', '1', 'file_1463326717.png');
INSERT INTO `paket` VALUES ('5', 'Paket Kelas Bisnis One Day Trip Pulau Pagang', '550000', '550000', '<p>HARGA PAKET KELAS BISNIS KE PULAU PAGANG ( 1 PULAU )<br /><br />Harga Paket&nbsp; minimal 10 Orang : Rp. 550.000 / Orang<br /><br />Paket Termasuk : <br /><br />- Makan siang , air mineral , buah<br /><br />- Tiket masuk Pulau Pagang, Alat snorkeling, Foto Underwater<br /><br />- Banana boat ( belum termasuk )<br /><br />- Menggunakan Kapal ber AC ( Lebih Nyaman )<br /><br />* Keberangkatan dari Pelabuhan Muara Padang ( dekat Kota Padang )<br /><br />* Berkumpul sekitar antara jam 08.00 - 09.00 dan kembali antara 15.00 - 16.00 sore<br /><br />* Jika ada tambahan kunjungan ke pulau lain ( Pulau Suwarnadwipa / Pulau Pasumpahan )<br /><br />&nbsp; dikenakan biaya : Rp. 20.000 / orang / pulau</p>', '2', 'file_1461739325.jpg');

-- ----------------------------
-- Table structure for pembayaran
-- ----------------------------
DROP TABLE IF EXISTS `pembayaran`;
CREATE TABLE `pembayaran` (
  `id_bayar` int(11) NOT NULL AUTO_INCREMENT,
  `tgl_bayar` date DEFAULT NULL,
  `metode_id_bayar` int(11) DEFAULT NULL,
  `order_id` varchar(15) DEFAULT NULL,
  `jumlah` double DEFAULT NULL,
  `pengirim` varchar(70) DEFAULT NULL,
  `bukti_transfer` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_bayar`),
  KEY `order_id` (`order_id`),
  KEY `metode_id_bayar` (`metode_id_bayar`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pembayaran
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_inbox
-- ----------------------------
INSERT INTO `tbl_inbox` VALUES ('2', 'M Fikri Setiadi', 'fikrifiver97@gmail.com', '-', 'Ping !', '2017-06-21 03:44:12', '0');
INSERT INTO `tbl_inbox` VALUES ('7', 'M Fikri Setiadi', 'fikrifiver97@gmail.com', '-', 'Hi, there!', '2017-07-01 07:28:08', '0');
INSERT INTO `tbl_inbox` VALUES ('11', 'Okki', 'okkisetyawan@gmail.com', '089610595064', 'oye', '2017-07-28 16:28:54', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=909 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_pengunjung
-- ----------------------------
INSERT INTO `tbl_pengunjung` VALUES ('1', '2016-08-11 23:52:20', '127.0.0.1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('2', '2016-08-12 17:14:20', '127.0.0.1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('3', '2016-08-13 05:23:19', '127.0.0.1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('4', '2016-08-13 05:27:05', '127.0.0.1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('5', '2016-08-13 05:27:37', '127.0.0.1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('6', '2016-08-13 06:54:58', '127.0.0.1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('7', '2016-08-13 06:55:59', '127.0.0.1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('8', '2016-08-13 07:00:06', '127.0.0.1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('9', '2016-08-13 07:00:34', '127.0.0.1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('10', '2016-09-18 20:24:39', '127.0.0.1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('11', '2016-09-18 20:24:43', '127.0.0.1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('12', '2016-09-18 20:24:43', '127.0.0.1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('13', '2016-09-18 20:24:43', '127.0.0.1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('14', '2016-09-18 20:24:43', '127.0.0.1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('15', '2016-09-18 20:24:43', '127.0.0.1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('16', '2016-09-18 20:24:43', '127.0.0.1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('17', '2016-09-18 20:24:43', '127.0.0.1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('18', '2016-09-18 20:24:43', '127.0.0.1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('19', '2016-09-18 20:24:43', '127.0.0.1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('20', '2016-09-18 20:24:43', '127.0.0.1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('21', '2016-09-18 20:24:43', '127.0.0.1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('22', '2016-09-18 20:24:43', '127.0.0.1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('23', '2016-09-18 20:24:43', '127.0.0.1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('24', '2017-02-04 18:06:52', '::1', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('25', '2017-02-04 18:07:16', '127.0.0.1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('26', '2017-02-04 18:08:31', '::1', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('27', '2017-02-05 19:33:14', '::1', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('28', '2017-02-05 20:20:59', '127.0.0.1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('29', '2017-02-06 18:21:08', '::1', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('30', '2017-02-09 01:07:51', '::1', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('31', '2017-02-10 20:12:05', '::1', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('32', '2017-02-20 20:46:21', '::1', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('33', '2017-02-22 04:04:16', '::1', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('34', '2017-02-27 18:47:25', '::1', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('35', '2017-03-02 06:09:25', '::1', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('36', '2017-03-04 08:18:51', '::1', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('37', '2017-03-12 20:40:32', '::1', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('38', '2017-03-13 20:34:32', '::1', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('39', '2017-03-23 04:08:15', '::1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('40', '2017-03-25 09:39:02', '::1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('41', '2017-03-25 10:16:45', '::1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('42', '2017-03-28 14:11:23', '::1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('43', '2017-03-29 22:39:17', '::1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('44', '2017-03-30 10:52:11', '::1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('45', '2017-03-31 22:48:46', '::1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('46', '2017-04-06 22:33:58', '::1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('47', '2017-04-08 00:25:37', '::1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('48', '2017-04-08 10:00:14', '::1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('49', '2017-04-09 10:06:03', '::1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('50', '2017-04-10 12:20:50', '::1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('51', '2017-04-11 11:46:50', '117.102.64.98', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('52', '2017-04-11 11:46:57', '125.165.129.35', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('53', '2017-04-11 12:52:18', '69.171.225.46', 'Other');
INSERT INTO `tbl_pengunjung` VALUES ('54', '2017-04-11 12:54:33', '69.171.225.12', 'Other');
INSERT INTO `tbl_pengunjung` VALUES ('55', '2017-04-11 12:55:04', '69.171.225.21', 'Other');
INSERT INTO `tbl_pengunjung` VALUES ('56', '2017-04-11 12:55:18', '69.171.225.18', 'Other');
INSERT INTO `tbl_pengunjung` VALUES ('57', '2017-04-11 13:03:44', '36.83.246.250', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('58', '2017-04-11 13:05:55', '202.62.17.121', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('59', '2017-04-11 13:06:45', '106.187.46.205', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('60', '2017-04-11 13:06:47', '173.252.98.28', 'Other');
INSERT INTO `tbl_pengunjung` VALUES ('61', '2017-04-11 13:10:36', '107.167.103.241', 'Opera');
INSERT INTO `tbl_pengunjung` VALUES ('62', '2017-04-11 13:16:14', '202.67.41.244', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('63', '2017-04-11 13:18:24', '36.72.192.194', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('64', '2017-04-11 13:19:40', '112.215.175.62', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('65', '2017-04-11 13:20:09', '173.252.102.112', 'Other');
INSERT INTO `tbl_pengunjung` VALUES ('66', '2017-04-11 13:20:17', '112.215.154.56', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('67', '2017-04-11 13:20:26', '158.140.170.23', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('68', '2017-04-11 13:22:33', '36.81.37.52', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('69', '2017-04-11 13:23:14', '120.188.65.243', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('70', '2017-04-11 13:26:16', '124.153.33.11', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('71', '2017-04-11 13:26:21', '112.215.172.240', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('72', '2017-04-11 13:27:34', '132.255.240.27', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('73', '2017-04-11 13:28:22', '103.213.131.147', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('74', '2017-04-11 13:29:38', '36.84.225.114', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('75', '2017-04-11 13:29:45', '180.253.158.87', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('76', '2017-04-11 13:33:35', '173.252.84.52', 'Other');
INSERT INTO `tbl_pengunjung` VALUES ('77', '2017-04-11 13:34:51', '202.67.35.20', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('78', '2017-04-11 13:37:02', '202.67.40.210', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('79', '2017-04-11 13:39:43', '120.188.76.26', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('80', '2017-04-11 13:41:05', '173.252.123.186', 'Other');
INSERT INTO `tbl_pengunjung` VALUES ('81', '2017-04-11 13:45:29', '110.139.8.41', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('82', '2017-04-11 13:53:12', '202.80.216.219', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('83', '2017-04-11 13:55:16', '223.255.230.13', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('84', '2017-04-11 13:55:38', '36.78.69.101', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('85', '2017-04-11 14:02:53', '180.251.173.137', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('86', '2017-04-11 14:03:05', '125.161.185.216', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('87', '2017-04-11 14:16:22', '139.192.226.49', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('88', '2017-04-11 14:18:10', '107.167.112.88', 'Opera');
INSERT INTO `tbl_pengunjung` VALUES ('89', '2017-04-11 14:18:13', '180.247.26.15', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('90', '2017-04-11 14:20:04', '204.44.65.210', 'Internet Explorer');
INSERT INTO `tbl_pengunjung` VALUES ('91', '2017-04-11 14:22:58', '36.78.96.198', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('92', '2017-04-11 14:23:40', '138.197.192.28', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('93', '2017-04-11 14:24:07', '112.215.151.61', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('94', '2017-04-11 14:25:46', '202.51.104.154', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('95', '2017-04-11 14:32:42', '202.67.44.7', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('96', '2017-04-11 14:36:53', '118.136.122.84', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('97', '2017-04-11 14:39:25', '61.247.21.51', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('98', '2017-04-11 14:41:38', '114.124.180.250', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('99', '2017-04-11 14:41:55', '120.188.64.226', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('100', '2017-04-11 14:43:14', '180.247.204.243', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('101', '2017-04-11 14:44:48', '125.161.179.203', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('102', '2017-04-11 14:46:06', '114.125.55.58', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('103', '2017-04-11 14:50:14', '158.140.182.11', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('104', '2017-04-11 14:54:09', '202.67.33.22', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('105', '2017-04-11 14:58:44', '120.188.65.30', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('106', '2017-04-11 14:59:55', '120.188.77.153', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('107', '2017-04-11 15:02:32', '125.167.185.147', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('108', '2017-04-11 15:04:23', '118.136.84.45', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('109', '2017-04-11 15:04:41', '110.136.129.138', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('110', '2017-04-11 15:04:52', '36.75.108.223', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('111', '2017-04-11 15:05:46', '36.72.38.146', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('112', '2017-04-11 15:06:31', '120.188.5.85', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('113', '2017-04-11 15:09:53', '180.253.90.210', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('114', '2017-04-11 15:12:18', '107.167.99.179', 'Opera');
INSERT INTO `tbl_pengunjung` VALUES ('115', '2017-04-11 15:12:49', '112.215.171.165', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('116', '2017-04-11 15:14:55', '203.166.201.206', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('117', '2017-04-11 15:15:21', '107.167.99.208', 'Opera');
INSERT INTO `tbl_pengunjung` VALUES ('118', '2017-04-11 15:15:25', '36.73.194.145', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('119', '2017-04-11 15:16:25', '107.167.113.164', 'Opera');
INSERT INTO `tbl_pengunjung` VALUES ('120', '2017-04-11 15:16:42', '120.92.32.177', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('121', '2017-04-11 15:17:23', '180.245.132.122', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('122', '2017-04-11 15:17:56', '120.188.80.236', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('123', '2017-04-11 15:17:57', '114.125.89.57', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('124', '2017-04-11 15:18:01', '139.0.186.187', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('125', '2017-04-11 15:18:25', '125.166.215.131', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('126', '2017-04-11 15:18:29', '120.188.6.216', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('127', '2017-04-11 15:19:06', '125.161.98.148', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('128', '2017-04-11 15:20:10', '36.73.9.148', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('129', '2017-04-11 15:20:15', '114.125.182.65', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('130', '2017-04-11 15:21:07', '114.125.40.100', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('131', '2017-04-11 15:21:45', '120.188.86.219', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('132', '2017-04-11 15:22:35', '118.136.103.194', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('133', '2017-04-11 15:23:47', '36.81.10.230', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('134', '2017-04-11 15:23:47', '114.125.164.4', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('135', '2017-04-11 15:24:28', '107.167.112.218', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('136', '2017-04-11 15:24:50', '107.167.98.132', 'Opera');
INSERT INTO `tbl_pengunjung` VALUES ('137', '2017-04-11 15:25:44', '180.246.19.210', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('138', '2017-04-11 15:26:12', '120.188.1.85', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('139', '2017-04-11 15:27:50', '139.195.66.235', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('140', '2017-04-11 15:28:06', '115.178.198.211', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('141', '2017-04-11 15:28:17', '115.178.235.88', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('142', '2017-04-11 15:28:49', '36.84.87.138', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('143', '2017-04-11 15:29:05', '114.121.232.136', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('144', '2017-04-11 15:29:23', '118.96.227.216', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('145', '2017-04-11 15:29:45', '36.68.184.231', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('146', '2017-04-11 15:30:18', '120.188.3.198', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('147', '2017-04-11 15:32:44', '61.94.133.70', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('148', '2017-04-11 15:32:44', '8.37.235.44', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('149', '2017-04-11 15:33:19', '110.136.254.232', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('150', '2017-04-11 15:34:17', '36.83.28.90', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('151', '2017-04-11 15:34:25', '120.188.80.239', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('152', '2017-04-11 15:34:50', '114.125.72.8', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('153', '2017-04-11 15:34:59', '180.247.33.166', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('154', '2017-04-11 15:35:10', '180.214.232.22', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('155', '2017-04-11 15:35:47', '61.5.92.125', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('156', '2017-04-11 15:36:22', '36.69.222.51', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('157', '2017-04-11 15:36:24', '182.253.139.130', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('158', '2017-04-11 15:36:36', '120.188.86.170', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('159', '2017-04-11 15:36:56', '139.228.97.115', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('160', '2017-04-11 15:37:18', '36.67.61.15', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('161', '2017-04-11 15:37:20', '114.4.78.184', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('162', '2017-04-11 15:38:09', '202.67.40.221', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('163', '2017-04-11 15:39:03', '112.215.172.66', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('164', '2017-04-11 15:39:11', '36.74.207.97', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('165', '2017-04-11 15:39:36', '64.233.173.4', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('166', '2017-04-11 15:40:07', '36.84.136.234', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('167', '2017-04-11 15:41:24', '202.62.16.49', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('168', '2017-04-11 15:41:28', '125.167.120.95', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('169', '2017-04-11 15:41:46', '168.235.207.168', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('170', '2017-04-11 15:41:52', '120.188.64.235', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('171', '2017-04-11 15:42:10', '120.188.81.204', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('172', '2017-04-11 15:42:26', '125.162.245.169', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('173', '2017-04-11 15:43:20', '180.242.10.170', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('174', '2017-04-11 15:44:03', '64.233.173.6', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('175', '2017-04-11 15:44:11', '112.215.174.87', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('176', '2017-04-11 15:44:37', '36.71.46.157', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('177', '2017-04-11 15:45:07', '103.56.235.74', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('178', '2017-04-11 15:45:18', '120.188.66.124', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('179', '2017-04-11 15:45:25', '69.171.225.33', 'Other');
INSERT INTO `tbl_pengunjung` VALUES ('180', '2017-04-11 15:46:14', '114.125.202.40', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('181', '2017-04-11 15:46:45', '120.188.87.93', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('182', '2017-04-11 15:46:46', '118.136.85.176', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('183', '2017-04-11 15:46:51', '64.233.173.8', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('184', '2017-04-11 15:47:32', '36.79.200.132', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('185', '2017-04-11 15:48:01', '120.188.35.53', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('186', '2017-04-11 15:49:39', '110.138.153.190', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('187', '2017-04-11 15:49:44', '114.125.73.228', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('188', '2017-04-11 15:49:52', '36.81.119.196', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('189', '2017-04-11 15:50:22', '120.188.65.140', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('190', '2017-04-11 15:51:05', '125.161.188.27', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('191', '2017-04-11 15:51:23', '124.40.251.74', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('192', '2017-04-11 15:51:31', '139.228.108.66', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('193', '2017-04-11 15:51:33', '180.254.57.164', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('194', '2017-04-11 15:53:07', '180.247.95.40', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('195', '2017-04-11 15:53:20', '103.205.56.66', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('196', '2017-04-11 15:53:20', '103.56.232.196', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('197', '2017-04-11 15:53:52', '180.241.167.242', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('198', '2017-04-11 15:53:54', '112.215.171.106', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('199', '2017-04-11 15:55:12', '114.125.214.65', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('200', '2017-04-11 15:55:40', '36.71.48.50', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('201', '2017-04-11 15:57:12', '103.9.227.1', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('202', '2017-04-11 15:57:16', '202.62.17.134', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('203', '2017-04-11 15:57:40', '36.74.110.84', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('204', '2017-04-11 15:57:54', '112.215.173.135', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('205', '2017-04-11 15:58:17', '36.80.43.86', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('206', '2017-04-11 15:59:04', '45.76.207.98', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('207', '2017-04-11 15:59:23', '180.214.233.30', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('208', '2017-04-11 15:59:28', '36.78.97.242', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('209', '2017-04-11 15:59:58', '61.94.220.130', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('210', '2017-04-11 16:00:03', '8.37.230.63', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('211', '2017-04-11 16:00:20', '125.162.99.169', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('212', '2017-04-11 16:00:31', '223.255.227.25', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('213', '2017-04-11 16:01:07', '114.121.244.144', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('214', '2017-04-11 16:01:24', '114.125.214.143', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('215', '2017-04-11 16:01:43', '8.37.235.230', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('216', '2017-04-11 16:01:49', '120.188.86.129', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('217', '2017-04-11 16:02:10', '120.188.74.41', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('218', '2017-04-11 16:02:25', '115.178.239.193', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('219', '2017-04-11 16:02:49', '202.67.46.8', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('220', '2017-04-11 16:02:56', '36.80.211.28', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('221', '2017-04-11 16:03:54', '139.195.162.58', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('222', '2017-04-11 16:04:16', '202.154.180.10', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('223', '2017-04-11 16:04:34', '114.125.184.7', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('224', '2017-04-11 16:05:01', '120.188.85.253', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('225', '2017-04-11 16:05:32', '139.195.209.21', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('226', '2017-04-11 16:05:57', '120.188.33.114', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('227', '2017-04-11 16:06:03', '8.37.233.52', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('228', '2017-04-11 16:06:09', '36.79.130.99', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('229', '2017-04-11 16:06:21', '36.74.24.2', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('230', '2017-04-11 16:06:43', '114.125.186.131', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('231', '2017-04-11 16:06:45', '202.62.17.197', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('232', '2017-04-11 16:07:31', '118.96.232.253', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('233', '2017-04-11 16:08:05', '36.79.188.51', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('234', '2017-04-11 16:08:13', '36.74.122.45', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('235', '2017-04-11 16:08:23', '36.84.110.69', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('236', '2017-04-11 16:08:23', '112.215.172.153', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('237', '2017-04-11 16:08:37', '36.82.30.206', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('238', '2017-04-11 16:09:03', '180.214.232.2', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('239', '2017-04-11 16:09:38', '107.167.112.128', 'Opera');
INSERT INTO `tbl_pengunjung` VALUES ('240', '2017-04-11 16:09:40', '36.70.178.105', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('241', '2017-04-11 16:09:55', '139.195.130.19', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('242', '2017-04-11 16:10:31', '114.125.57.214', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('243', '2017-04-11 16:10:41', '120.188.85.184', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('244', '2017-04-11 16:10:52', '125.163.107.41', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('245', '2017-04-11 16:11:15', '114.125.41.144', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('246', '2017-04-11 16:11:21', '61.94.103.59', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('247', '2017-04-11 16:12:08', '36.76.30.210', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('248', '2017-04-11 16:12:26', '36.73.134.193', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('249', '2017-04-11 16:12:31', '112.215.173.16', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('250', '2017-04-11 16:13:18', '120.188.92.195', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('251', '2017-04-11 16:13:20', '125.163.92.209', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('252', '2017-04-11 16:14:19', '182.253.142.24', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('253', '2017-04-11 16:14:28', '120.188.86.148', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('254', '2017-04-11 16:14:56', '182.253.163.61', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('255', '2017-04-11 16:16:02', '36.74.148.31', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('256', '2017-04-11 16:16:57', '8.37.233.156', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('257', '2017-04-11 16:17:04', '114.125.56.121', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('258', '2017-04-11 16:17:12', '158.140.165.20', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('259', '2017-04-11 16:17:17', '125.164.97.226', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('260', '2017-04-11 16:17:18', '120.188.92.249', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('261', '2017-04-11 16:17:26', '118.137.208.31', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('262', '2017-04-11 16:17:30', '180.244.71.107', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('263', '2017-04-11 16:17:37', '120.188.87.220', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('264', '2017-04-11 16:17:57', '112.215.172.199', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('265', '2017-04-11 16:18:23', '110.138.44.236', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('266', '2017-04-11 16:18:35', '168.235.195.254', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('267', '2017-04-11 16:18:40', '180.245.98.188', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('268', '2017-04-11 16:18:58', '114.125.183.102', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('269', '2017-04-11 16:19:18', '125.164.38.13', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('270', '2017-04-11 16:19:27', '114.121.239.102', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('271', '2017-04-11 16:20:03', '168.235.206.137', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('272', '2017-04-11 16:20:32', '202.80.213.87', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('273', '2017-04-11 16:21:18', '180.246.73.3', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('274', '2017-04-11 16:22:02', '36.75.32.145', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('275', '2017-04-11 16:22:04', '112.215.154.115', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('276', '2017-04-11 16:22:09', '36.73.96.185', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('277', '2017-04-11 16:22:38', '8.37.232.215', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('278', '2017-04-11 16:22:53', '36.68.233.0', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('279', '2017-04-11 16:23:08', '36.84.224.73', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('280', '2017-04-11 16:23:29', '66.220.151.86', 'Other');
INSERT INTO `tbl_pengunjung` VALUES ('281', '2017-04-11 16:24:01', '120.188.75.121', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('282', '2017-04-11 16:24:19', '207.241.226.233', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('283', '2017-04-11 16:24:35', '36.73.181.116', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('284', '2017-04-11 16:25:38', '198.186.192.44', 'Other');
INSERT INTO `tbl_pengunjung` VALUES ('285', '2017-04-11 16:25:56', '114.4.78.117', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('286', '2017-04-11 16:26:38', '36.72.95.85', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('287', '2017-04-11 16:27:26', '120.188.81.107', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('288', '2017-04-11 16:28:19', '114.124.149.112', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('289', '2017-04-11 16:28:29', '114.125.205.41', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('290', '2017-04-11 16:28:54', '125.163.78.202', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('291', '2017-04-11 16:29:17', '114.125.52.130', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('292', '2017-04-11 16:29:45', '114.4.78.150', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('293', '2017-04-11 16:29:47', '114.121.156.129', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('294', '2017-04-11 16:29:51', '112.215.172.8', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('295', '2017-04-11 16:30:30', '114.125.166.163', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('296', '2017-04-11 16:30:35', '139.195.187.141', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('297', '2017-04-11 16:30:53', '36.72.21.12', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('298', '2017-04-11 16:32:34', '8.37.225.108', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('299', '2017-04-11 16:32:39', '180.248.6.118', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('300', '2017-04-11 16:33:44', '8.37.233.95', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('301', '2017-04-11 16:34:16', '120.188.80.6', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('302', '2017-04-11 16:34:52', '211.227.156.112', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('303', '2017-04-11 16:34:54', '125.167.187.126', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('304', '2017-04-11 16:35:32', '107.167.112.72', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('305', '2017-04-11 16:35:57', '112.215.152.98', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('306', '2017-04-11 16:36:06', '180.251.167.150', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('307', '2017-04-11 16:36:27', '36.82.76.215', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('308', '2017-04-11 16:37:45', '168.235.206.238', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('309', '2017-04-11 16:38:09', '124.153.33.39', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('310', '2017-04-11 16:38:39', '168.235.197.19', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('311', '2017-04-11 16:38:44', '36.73.87.46', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('312', '2017-04-11 16:38:45', '188.166.218.174', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('313', '2017-04-11 16:39:03', '36.78.54.201', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('314', '2017-04-11 16:39:24', '139.228.95.10', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('315', '2017-04-11 16:39:24', '120.188.80.114', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('316', '2017-04-11 16:39:35', '182.253.203.58', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('317', '2017-04-11 16:39:54', '36.78.66.34', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('318', '2017-04-11 16:40:56', '120.188.79.185', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('319', '2017-04-11 16:41:35', '118.96.235.203', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('320', '2017-04-11 16:41:44', '180.253.236.103', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('321', '2017-04-11 16:43:18', '125.161.188.207', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('322', '2017-04-11 16:44:08', '36.66.72.178', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('323', '2017-04-11 16:44:16', '36.84.13.131', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('324', '2017-04-11 16:44:46', '112.215.45.240', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('325', '2017-04-11 16:45:01', '49.182.76.246', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('326', '2017-04-11 16:45:09', '180.247.77.200', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('327', '2017-04-11 16:45:19', '36.88.158.84', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('328', '2017-04-11 16:45:38', '202.62.17.12', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('329', '2017-04-11 16:46:05', '182.253.163.51', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('330', '2017-04-11 16:46:11', '139.195.94.117', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('331', '2017-04-11 16:46:41', '114.4.83.68', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('332', '2017-04-11 16:47:30', '114.125.37.46', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('333', '2017-04-11 16:47:32', '173.252.74.105', 'Other');
INSERT INTO `tbl_pengunjung` VALUES ('334', '2017-04-11 16:49:04', '112.215.200.30', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('335', '2017-04-11 16:50:22', '120.188.81.20', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('336', '2017-04-11 16:50:32', '120.188.33.140', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('337', '2017-04-11 16:51:06', '114.4.79.120', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('338', '2017-04-11 16:51:27', '139.194.221.74', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('339', '2017-04-11 16:51:29', '120.188.87.99', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('340', '2017-04-11 16:51:48', '36.73.62.30', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('341', '2017-04-11 16:51:53', '112.215.45.120', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('342', '2017-04-11 16:51:54', '112.215.153.184', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('343', '2017-04-11 16:51:59', '36.78.67.111', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('344', '2017-04-11 16:52:31', '120.188.80.165', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('345', '2017-04-11 16:52:37', '61.94.100.166', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('346', '2017-04-11 16:52:48', '180.252.168.2', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('347', '2017-04-11 16:52:50', '36.84.64.22', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('348', '2017-04-11 16:52:56', '198.144.107.187', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('349', '2017-04-11 16:53:42', '120.188.80.158', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('350', '2017-04-11 16:54:47', '180.244.55.126', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('351', '2017-04-11 16:55:18', '107.167.112.118', 'Opera');
INSERT INTO `tbl_pengunjung` VALUES ('352', '2017-04-11 16:55:43', '36.73.63.156', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('353', '2017-04-11 16:56:44', '125.167.92.123', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('354', '2017-04-11 16:58:15', '180.247.136.78', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('355', '2017-04-11 16:59:23', '114.124.148.228', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('356', '2017-04-11 16:59:44', '120.188.80.220', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('357', '2017-04-11 16:59:50', '180.248.179.126', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('358', '2017-04-11 17:00:03', '36.78.194.86', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('359', '2017-04-11 17:00:12', '202.67.46.46', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('360', '2017-04-11 17:00:34', '113.210.202.42', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('361', '2017-04-11 17:01:47', '114.120.233.30', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('362', '2017-04-11 17:02:34', '202.182.55.230', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('363', '2017-04-11 17:02:44', '180.244.73.72', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('364', '2017-04-11 17:03:16', '49.213.16.227', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('365', '2017-04-11 17:04:03', '36.73.177.201', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('366', '2017-04-11 17:04:12', '112.215.152.124', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('367', '2017-04-11 17:08:38', '120.188.0.47', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('368', '2017-04-11 17:09:43', '36.84.58.187', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('369', '2017-04-11 17:12:18', '111.94.229.133', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('370', '2017-04-11 17:12:31', '118.136.18.255', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('371', '2017-04-11 17:13:11', '36.74.212.125', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('372', '2017-04-11 17:13:20', '103.206.245.142', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('373', '2017-04-11 17:14:21', '36.71.129.27', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('374', '2017-04-11 17:18:44', '180.252.123.165', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('375', '2017-04-11 17:19:01', '180.253.138.223', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('376', '2017-04-11 17:19:11', '66.249.79.83', 'Googlebot');
INSERT INTO `tbl_pengunjung` VALUES ('377', '2017-04-11 17:19:27', '36.80.242.230', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('378', '2017-04-11 17:19:54', '223.255.231.154', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('379', '2017-04-11 17:19:55', '114.125.200.74', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('380', '2017-04-11 17:21:24', '66.249.79.78', 'Googlebot');
INSERT INTO `tbl_pengunjung` VALUES ('381', '2017-04-11 17:21:45', '114.4.83.180', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('382', '2017-04-11 17:23:55', '139.192.11.235', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('383', '2017-04-11 17:24:10', '125.160.66.244', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('384', '2017-04-11 17:24:17', '112.215.170.139', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('385', '2017-04-11 17:25:01', '112.215.153.158', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('386', '2017-04-11 17:25:29', '110.139.187.176', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('387', '2017-04-11 17:25:38', '111.94.122.151', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('388', '2017-04-11 17:25:46', '112.215.153.252', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('389', '2017-04-11 17:27:24', '112.215.170.48', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('390', '2017-04-11 17:28:36', '125.160.51.241', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('391', '2017-04-11 17:29:53', '66.249.79.85', 'Googlebot');
INSERT INTO `tbl_pengunjung` VALUES ('392', '2017-04-11 17:30:04', '120.188.83.178', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('393', '2017-04-11 17:30:26', '112.215.170.170', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('394', '2017-04-11 17:30:27', '139.228.17.159', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('395', '2017-04-11 17:30:32', '107.167.112.5', 'Opera');
INSERT INTO `tbl_pengunjung` VALUES ('396', '2017-04-11 17:31:33', '180.249.17.245', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('397', '2017-04-11 17:31:38', '182.253.163.14', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('398', '2017-04-11 17:32:08', '202.80.215.217', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('399', '2017-04-11 17:32:45', '120.188.95.126', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('400', '2017-04-11 17:32:55', '118.136.247.154', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('401', '2017-04-11 17:33:04', '66.102.6.211', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('402', '2017-04-11 17:33:04', '66.102.6.207', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('403', '2017-04-11 17:33:05', '66.102.6.209', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('404', '2017-04-11 17:34:10', '36.84.9.122', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('405', '2017-04-11 17:34:34', '120.188.94.195', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('406', '2017-04-11 17:34:55', '36.84.2.91', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('407', '2017-04-11 17:35:12', '125.164.16.170', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('408', '2017-04-11 17:35:35', '125.164.15.224', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('409', '2017-04-11 17:36:04', '114.125.70.243', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('410', '2017-04-11 17:36:29', '180.241.222.250', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('411', '2017-04-11 17:36:55', '112.215.44.57', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('412', '2017-04-11 17:39:53', '114.4.82.125', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('413', '2017-04-11 17:39:58', '120.188.5.175', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('414', '2017-04-11 17:40:27', '103.233.157.202', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('415', '2017-04-11 17:44:13', '37.34.62.205', 'Other');
INSERT INTO `tbl_pengunjung` VALUES ('416', '2017-04-11 17:45:37', '120.188.32.191', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('417', '2017-04-11 17:46:53', '168.235.198.107', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('418', '2017-04-11 17:47:00', '36.84.0.75', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('419', '2017-04-11 17:47:43', '182.253.163.7', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('420', '2017-04-11 17:47:49', '36.68.52.209', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('421', '2017-04-11 17:48:03', '103.47.132.52', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('422', '2017-04-11 17:49:58', '36.66.211.11', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('423', '2017-04-11 17:50:12', '112.215.171.166', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('424', '2017-04-11 17:51:49', '103.4.167.243', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('425', '2017-04-11 17:51:51', '120.188.85.6', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('426', '2017-04-11 17:52:02', '120.188.81.83', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('427', '2017-04-11 17:52:52', '120.188.83.233', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('428', '2017-04-11 17:53:37', '125.165.48.195', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('429', '2017-04-11 17:54:20', '203.130.236.249', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('430', '2017-04-11 17:54:28', '115.178.238.196', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('431', '2017-04-11 17:54:49', '202.179.189.74', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('432', '2017-04-11 17:56:50', '182.253.62.114', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('433', '2017-04-11 17:57:37', '112.215.154.28', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('434', '2017-04-11 17:57:53', '110.137.169.204', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('435', '2017-04-11 17:57:56', '223.255.227.26', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('436', '2017-04-11 17:58:01', '112.215.63.20', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('437', '2017-04-11 17:58:46', '139.194.53.216', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('438', '2017-04-11 17:59:15', '27.50.17.11', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('439', '2017-04-11 17:59:34', '182.253.163.50', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('440', '2017-04-11 17:59:47', '36.76.123.254', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('441', '2017-04-11 18:00:20', '103.47.132.22', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('442', '2017-04-11 18:00:30', '8.37.233.83', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('443', '2017-04-11 18:00:46', '114.125.180.165', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('444', '2017-04-11 18:01:39', '180.252.143.230', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('445', '2017-04-11 18:01:45', '163.53.185.146', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('446', '2017-04-11 18:02:33', '114.125.207.121', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('447', '2017-04-11 18:02:40', '36.72.9.120', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('448', '2017-04-11 18:04:44', '61.5.60.185', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('449', '2017-04-11 18:04:46', '36.80.153.97', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('450', '2017-04-11 18:05:41', '180.252.239.223', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('451', '2017-04-11 18:07:10', '120.188.33.120', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('452', '2017-04-11 18:07:10', '118.97.50.22', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('453', '2017-04-11 18:08:05', '118.97.50.23', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('454', '2017-04-11 18:09:09', '36.84.229.118', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('455', '2017-04-11 18:09:12', '114.125.11.225', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('456', '2017-04-11 18:09:49', '182.23.59.66', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('457', '2017-04-11 18:10:16', '118.97.50.24', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('458', '2017-04-11 18:10:59', '175.111.91.19', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('459', '2017-04-11 18:11:01', '121.101.131.66', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('460', '2017-04-11 18:11:16', '2.235.170.197', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('461', '2017-04-11 18:11:43', '180.247.185.142', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('462', '2017-04-11 18:12:38', '36.80.179.43', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('463', '2017-04-11 18:12:53', '36.75.240.166', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('464', '2017-04-11 18:13:31', '118.97.241.130', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('465', '2017-04-11 18:13:31', '101.128.85.22', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('466', '2017-04-11 18:13:48', '182.253.122.110', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('467', '2017-04-11 18:14:31', '120.188.65.57', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('468', '2017-04-11 18:14:38', '115.164.60.248', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('469', '2017-04-11 18:14:42', '180.250.206.226', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('470', '2017-04-11 18:15:06', '125.165.103.49', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('471', '2017-04-11 18:15:25', '104.237.243.90', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('472', '2017-04-11 18:15:30', '180.254.241.158', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('473', '2017-04-11 18:15:50', '36.85.5.162', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('474', '2017-04-11 18:15:56', '120.188.67.11', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('475', '2017-04-11 18:15:58', '38.80.23.2', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('476', '2017-04-11 18:16:01', '61.94.194.3', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('477', '2017-04-11 18:16:02', '222.124.22.228', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('478', '2017-04-11 18:16:07', '180.178.93.249', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('479', '2017-04-11 18:16:32', '36.80.213.229', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('480', '2017-04-11 18:17:27', '175.184.250.82', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('481', '2017-04-11 18:17:56', '103.31.109.2', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('482', '2017-04-11 18:18:11', '168.235.202.213', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('483', '2017-04-11 18:18:43', '120.188.85.102', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('484', '2017-04-11 18:18:49', '61.5.84.239', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('485', '2017-04-11 18:18:51', '36.73.220.140', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('486', '2017-04-11 18:18:57', '180.247.181.120', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('487', '2017-04-11 18:19:50', '36.73.22.116', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('488', '2017-04-11 18:21:09', '36.84.229.80', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('489', '2017-04-11 18:21:23', '120.188.67.170', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('490', '2017-04-11 18:21:24', '36.85.13.189', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('491', '2017-04-11 18:22:18', '66.96.246.66', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('492', '2017-04-11 18:22:48', '111.68.27.251', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('493', '2017-04-11 18:23:31', '202.80.212.117', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('494', '2017-04-11 18:23:59', '112.215.171.69', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('495', '2017-04-11 18:24:35', '222.124.214.250', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('496', '2017-04-11 18:24:53', '140.0.203.15', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('497', '2017-04-11 18:24:58', '116.254.126.142', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('498', '2017-04-11 18:25:13', '120.188.66.255', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('499', '2017-04-11 18:25:33', '168.235.194.213', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('500', '2017-04-11 18:25:48', '114.125.9.160', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('501', '2017-04-11 18:25:54', '112.215.201.184', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('502', '2017-04-11 18:25:57', '125.163.255.80', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('503', '2017-04-11 18:26:09', '168.235.200.204', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('504', '2017-04-11 18:26:37', '128.199.233.142', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('505', '2017-04-11 18:28:11', '112.215.154.169', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('506', '2017-04-11 18:28:25', '168.235.195.242', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('507', '2017-04-11 18:29:06', '223.25.97.210', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('508', '2017-04-11 18:30:24', '203.176.183.20', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('509', '2017-04-11 18:30:50', '180.253.126.127', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('510', '2017-04-11 18:31:06', '36.78.129.171', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('511', '2017-04-11 18:33:51', '14.102.152.234', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('512', '2017-04-11 18:34:09', '8.37.230.53', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('513', '2017-04-11 18:34:27', '112.215.172.183', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('514', '2017-04-11 18:35:45', '112.215.65.96', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('515', '2017-04-11 18:36:42', '110.5.102.56', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('516', '2017-04-11 18:37:05', '114.121.246.246', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('517', '2017-04-11 18:37:17', '110.139.27.171', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('518', '2017-04-11 18:39:05', '120.188.65.207', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('519', '2017-04-11 18:39:31', '180.254.64.231', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('520', '2017-04-11 18:39:34', '202.133.6.54', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('521', '2017-04-11 18:40:40', '36.68.41.249', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('522', '2017-04-11 18:43:08', '125.163.57.73', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('523', '2017-04-11 18:44:21', '114.121.157.148', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('524', '2017-04-11 18:44:46', '140.0.229.214', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('525', '2017-04-11 18:46:15', '103.55.216.76', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('526', '2017-04-11 18:47:25', '120.188.4.116', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('527', '2017-04-11 18:48:03', '202.124.205.203', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('528', '2017-04-11 18:48:11', '202.80.212.84', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('529', '2017-04-11 18:48:52', '36.74.26.7', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('530', '2017-04-11 18:48:52', '210.57.215.142', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('531', '2017-04-11 18:48:56', '202.43.183.130', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('532', '2017-04-11 18:49:16', '61.94.50.125', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('533', '2017-04-11 18:50:14', '139.192.185.41', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('534', '2017-04-11 18:50:46', '36.72.118.174', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('535', '2017-04-11 18:51:16', '118.136.225.170', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('536', '2017-04-11 18:51:48', '202.67.46.40', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('537', '2017-04-11 18:52:04', '182.253.33.51', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('538', '2017-04-11 18:52:06', '180.254.26.52', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('539', '2017-04-11 18:52:07', '36.66.168.63', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('540', '2017-04-11 18:52:24', '112.215.45.116', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('541', '2017-04-11 18:52:52', '112.215.172.67', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('542', '2017-04-11 18:54:21', '180.245.67.128', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('543', '2017-04-11 18:55:01', '36.83.178.178', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('544', '2017-04-11 18:55:10', '118.96.213.178', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('545', '2017-04-11 18:56:30', '114.125.170.252', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('546', '2017-04-11 18:56:43', '124.153.32.100', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('547', '2017-04-11 18:57:11', '120.188.74.139', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('548', '2017-04-11 18:57:47', '124.153.33.42', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('549', '2017-04-11 18:58:44', '36.78.128.112', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('550', '2017-04-11 18:59:10', '103.228.26.4', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('551', '2017-04-11 19:00:17', '36.82.101.17', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('552', '2017-04-11 19:01:21', '139.0.54.49', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('553', '2017-04-11 19:01:23', '180.252.103.36', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('554', '2017-04-11 19:01:33', '117.102.64.82', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('555', '2017-04-11 19:03:59', '202.67.44.8', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('556', '2017-04-11 19:04:16', '114.125.26.15', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('557', '2017-04-11 19:04:23', '180.246.224.105', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('558', '2017-04-11 19:05:05', '112.215.170.35', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('559', '2017-04-11 19:05:33', '180.251.217.107', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('560', '2017-04-11 19:06:35', '36.84.39.119', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('561', '2017-04-11 19:07:10', '103.241.206.74', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('562', '2017-04-11 19:08:18', '203.160.128.8', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('563', '2017-04-11 19:09:24', '36.71.230.230', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('564', '2017-04-11 19:09:33', '118.136.40.213', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('565', '2017-04-11 19:10:26', '8.37.225.146', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('566', '2017-04-11 19:10:27', '180.251.6.162', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('567', '2017-04-11 19:10:34', '112.215.201.35', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('568', '2017-04-11 19:10:40', '120.188.64.132', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('569', '2017-04-11 19:11:13', '112.215.151.179', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('570', '2017-04-11 19:11:34', '107.167.99.205', 'Opera');
INSERT INTO `tbl_pengunjung` VALUES ('571', '2017-04-11 19:11:48', '210.211.18.82', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('572', '2017-04-11 19:11:51', '112.215.174.151', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('573', '2017-04-11 19:12:02', '120.188.73.159', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('574', '2017-04-11 19:13:39', '36.81.46.228', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('575', '2017-04-11 19:15:31', '36.77.89.224', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('576', '2017-04-11 19:16:10', '107.167.112.144', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('577', '2017-04-11 19:16:23', '125.165.178.198', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('578', '2017-04-11 19:16:50', '139.192.58.131', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('579', '2017-04-11 19:16:54', '36.69.12.48', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('580', '2017-04-11 19:17:14', '202.179.190.162', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('581', '2017-04-11 19:17:26', '36.78.33.42', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('582', '2017-04-11 19:17:48', '103.213.131.160', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('583', '2017-04-11 19:17:55', '36.85.24.1', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('584', '2017-04-11 19:18:13', '202.158.89.154', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('585', '2017-04-11 19:19:02', '36.70.91.134', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('586', '2017-04-11 19:19:15', '114.125.30.235', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('587', '2017-04-11 19:19:52', '125.163.174.117', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('588', '2017-04-11 19:20:01', '103.17.246.48', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('589', '2017-04-11 19:21:22', '36.88.134.156', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('590', '2017-04-11 19:22:53', '120.188.5.152', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('591', '2017-04-11 19:23:28', '114.124.33.225', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('592', '2017-04-11 19:23:44', '112.215.200.147', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('593', '2017-04-11 19:24:23', '180.253.125.143', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('594', '2017-04-11 19:24:30', '36.69.83.3', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('595', '2017-04-11 19:25:24', '36.68.118.78', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('596', '2017-04-11 19:25:36', '180.245.99.108', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('597', '2017-04-11 19:26:15', '8.37.225.106', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('598', '2017-04-11 19:26:16', '58.10.55.252', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('599', '2017-04-11 19:27:07', '36.73.65.61', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('600', '2017-04-11 19:27:18', '202.62.18.53', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('601', '2017-04-11 19:27:39', '180.243.101.157', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('602', '2017-04-11 19:29:40', '180.249.209.233', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('603', '2017-04-11 19:31:13', '120.188.7.226', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('604', '2017-04-11 19:31:29', '36.85.139.235', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('605', '2017-04-11 19:32:43', '203.142.64.87', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('606', '2017-04-11 19:33:19', '107.167.112.181', 'Opera');
INSERT INTO `tbl_pengunjung` VALUES ('607', '2017-04-11 19:34:05', '182.253.73.4', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('608', '2017-04-11 19:34:16', '110.136.57.170', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('609', '2017-04-11 19:38:24', '112.215.200.152', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('610', '2017-04-11 19:38:37', '168.235.205.184', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('611', '2017-04-11 19:39:48', '125.164.109.171', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('612', '2017-04-11 19:39:50', '36.73.58.152', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('613', '2017-04-11 19:40:16', '202.62.16.15', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('614', '2017-04-11 19:41:57', '36.73.54.54', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('615', '2017-04-11 19:42:26', '36.80.151.109', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('616', '2017-04-11 19:43:14', '202.67.40.199', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('617', '2017-04-11 19:43:29', '114.4.83.133', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('618', '2017-04-11 19:43:31', '173.193.202.116', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('619', '2017-04-11 19:44:18', '202.62.16.181', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('620', '2017-04-11 19:45:13', '167.114.233.118', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('621', '2017-04-11 19:45:30', '180.241.24.74', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('622', '2017-04-11 19:47:01', '125.166.212.190', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('623', '2017-04-11 19:47:21', '180.241.179.220', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('624', '2017-04-11 19:47:27', '125.167.75.246', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('625', '2017-04-11 19:47:48', '168.235.194.226', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('626', '2017-04-11 19:52:01', '118.97.137.170', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('627', '2017-04-11 19:52:53', '180.247.208.196', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('628', '2017-04-11 19:54:25', '103.9.124.211', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('629', '2017-04-11 19:56:29', '120.188.94.118', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('630', '2017-04-11 19:56:33', '36.73.12.186', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('631', '2017-04-11 19:56:44', '36.66.254.39', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('632', '2017-04-11 19:57:28', '120.188.81.56', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('633', '2017-04-11 19:59:02', '36.82.7.245', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('634', '2017-04-11 19:59:36', '103.212.43.138', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('635', '2017-04-11 20:00:38', '139.193.114.21', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('636', '2017-04-11 20:00:50', '112.215.175.249', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('637', '2017-04-11 20:01:24', '120.188.33.237', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('638', '2017-04-11 20:01:53', '36.80.106.53', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('639', '2017-04-11 20:02:10', '36.84.0.88', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('640', '2017-04-11 20:03:00', '103.57.192.122', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('641', '2017-04-11 20:04:55', '36.72.190.47', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('642', '2017-04-11 20:06:41', '125.163.105.25', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('643', '2017-04-11 20:07:06', '115.178.234.139', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('644', '2017-04-11 20:07:31', '114.120.234.114', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('645', '2017-04-11 20:08:50', '202.67.46.227', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('646', '2017-04-11 20:09:22', '36.77.160.216', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('647', '2017-04-11 20:10:14', '139.193.15.145', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('648', '2017-04-11 20:10:47', '112.215.172.245', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('649', '2017-04-11 20:10:50', '207.241.226.232', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('650', '2017-04-11 20:11:07', '120.188.0.239', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('651', '2017-04-11 20:11:09', '180.251.99.141', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('652', '2017-04-11 20:11:13', '125.162.56.58', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('653', '2017-04-11 20:11:39', '36.72.50.199', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('654', '2017-04-11 20:12:20', '139.194.66.128', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('655', '2017-04-11 20:12:55', '36.78.127.45', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('656', '2017-04-11 20:13:00', '36.74.170.244', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('657', '2017-04-11 20:13:59', '36.83.123.80', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('658', '2017-04-11 20:14:36', '36.84.13.207', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('659', '2017-04-11 20:14:50', '112.198.68.78', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('660', '2017-04-11 20:15:20', '180.251.88.168', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('661', '2017-04-11 20:15:32', '119.110.69.226', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('662', '2017-04-11 20:16:00', '36.85.65.250', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('663', '2017-04-11 20:16:43', '112.78.141.82', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('664', '2017-04-11 20:16:57', '125.163.59.51', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('665', '2017-04-11 20:17:19', '116.197.132.78', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('666', '2017-04-11 20:17:39', '120.188.67.180', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('667', '2017-04-11 20:18:27', '114.4.83.35', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('668', '2017-04-11 20:18:28', '125.162.19.20', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('669', '2017-04-11 20:18:29', '182.253.3.140', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('670', '2017-04-11 20:21:45', '36.78.130.219', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('671', '2017-04-11 20:24:05', '180.246.25.27', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('672', '2017-04-11 20:25:03', '202.150.146.82', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('673', '2017-04-11 20:25:05', '125.162.222.87', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('674', '2017-04-11 20:25:34', '120.188.86.20', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('675', '2017-04-11 20:25:43', '125.163.109.106', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('676', '2017-04-11 20:26:12', '120.188.81.160', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('677', '2017-04-11 20:29:23', '175.111.89.10', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('678', '2017-04-11 20:30:27', '114.121.245.17', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('679', '2017-04-11 20:32:54', '110.139.200.11', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('680', '2017-04-11 20:33:00', '114.125.52.89', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('681', '2017-04-11 20:33:25', '36.74.177.233', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('682', '2017-04-11 20:33:44', '180.254.162.29', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('683', '2017-04-11 20:33:53', '125.160.100.4', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('684', '2017-04-11 20:34:59', '202.77.111.104', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('685', '2017-04-11 20:35:16', '36.69.153.83', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('686', '2017-04-11 20:35:19', '180.254.13.225', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('687', '2017-04-11 20:35:24', '180.251.214.117', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('688', '2017-04-11 20:35:27', '36.74.134.188', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('689', '2017-04-11 20:35:41', '107.167.103.167', 'Opera');
INSERT INTO `tbl_pengunjung` VALUES ('690', '2017-04-11 20:36:56', '139.193.222.23', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('691', '2017-04-11 20:36:59', '182.253.72.87', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('692', '2017-04-11 20:37:10', '101.255.64.210', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('693', '2017-04-11 20:38:20', '36.69.60.79', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('694', '2017-04-11 20:38:34', '36.84.229.27', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('695', '2017-04-11 20:41:28', '202.62.16.239', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('696', '2017-04-11 20:41:42', '36.81.58.185', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('697', '2017-04-11 20:41:44', '112.215.152.52', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('698', '2017-04-11 20:42:08', '36.74.224.172', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('699', '2017-04-11 20:42:11', '112.215.200.247', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('700', '2017-04-11 20:42:34', '112.215.153.115', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('701', '2017-04-11 20:42:58', '223.164.0.178', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('702', '2017-04-11 20:42:58', '36.72.62.17', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('703', '2017-04-11 20:43:38', '103.209.131.44', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('704', '2017-04-11 20:43:43', '139.195.33.29', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('705', '2017-04-11 20:44:51', '103.61.248.82', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('706', '2017-04-11 20:46:50', '175.103.43.86', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('707', '2017-04-11 20:47:49', '120.188.94.79', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('708', '2017-04-11 20:47:53', '202.169.46.130', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('709', '2017-04-11 20:48:37', '158.140.170.38', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('710', '2017-04-11 20:49:55', '180.245.193.140', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('711', '2017-04-11 20:50:24', '180.246.157.179', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('712', '2017-04-11 20:51:51', '36.76.23.139', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('713', '2017-04-11 20:52:06', '202.67.41.213', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('714', '2017-04-11 20:52:34', '36.78.163.149', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('715', '2017-04-11 20:53:12', '158.140.166.0', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('716', '2017-04-11 20:55:36', '207.244.86.209', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('717', '2017-04-11 20:56:35', '120.188.79.122', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('718', '2017-04-11 20:58:11', '36.73.104.74', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('719', '2017-04-11 20:58:21', '222.124.22.251', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('720', '2017-04-11 20:58:32', '120.188.93.249', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('721', '2017-04-11 21:02:03', '120.188.33.199', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('722', '2017-04-11 21:02:06', '125.161.64.96', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('723', '2017-04-11 21:03:41', '182.253.122.125', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('724', '2017-04-11 21:04:06', '36.68.234.47', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('725', '2017-04-11 21:04:33', '36.72.94.211', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('726', '2017-04-11 21:04:48', '125.163.125.211', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('727', '2017-04-11 21:04:52', '180.248.243.155', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('728', '2017-04-11 21:04:58', '182.253.34.175', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('729', '2017-04-11 21:05:28', '103.24.49.225', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('730', '2017-04-11 21:06:42', '180.248.250.226', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('731', '2017-04-11 21:09:06', '36.84.157.255', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('732', '2017-04-11 21:09:09', '202.152.156.210', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('733', '2017-04-11 21:09:41', '114.125.53.87', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('734', '2017-04-11 21:09:43', '120.188.7.170', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('735', '2017-04-11 21:11:29', '152.118.148.226', 'Internet Explorer');
INSERT INTO `tbl_pengunjung` VALUES ('736', '2017-04-11 21:11:43', '182.253.188.125', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('737', '2017-04-11 21:12:47', '5.254.97.108', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('738', '2017-04-11 21:13:23', '120.188.3.109', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('739', '2017-04-11 21:14:38', '180.246.199.52', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('740', '2017-04-11 21:15:05', '210.211.17.14', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('741', '2017-04-11 21:15:59', '36.82.201.211', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('742', '2017-04-11 21:16:14', '103.23.102.111', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('743', '2017-04-11 21:17:19', '36.81.75.68', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('744', '2017-04-11 21:18:59', '114.125.39.153', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('745', '2017-04-11 21:20:34', '222.124.52.127', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('746', '2017-04-11 21:21:13', '180.248.199.49', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('747', '2017-04-11 21:22:00', '125.163.114.139', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('748', '2017-04-11 21:25:37', '107.167.99.151', 'Opera');
INSERT INTO `tbl_pengunjung` VALUES ('749', '2017-04-11 21:26:05', '114.125.116.95', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('750', '2017-04-11 21:26:49', '202.62.18.115', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('751', '2017-04-11 21:26:50', '61.8.69.82', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('752', '2017-04-11 21:28:31', '113.161.224.83', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('753', '2017-04-11 21:28:45', '103.47.132.24', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('754', '2017-04-11 21:29:03', '120.188.64.12', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('755', '2017-04-11 21:30:03', '103.47.134.26', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('756', '2017-04-11 21:30:29', '202.9.85.34', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('757', '2017-04-11 21:31:59', '182.253.62.142', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('758', '2017-04-11 21:32:07', '36.88.45.251', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('759', '2017-04-11 21:32:24', '114.121.133.17', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('760', '2017-04-11 21:33:18', '190.233.193.231', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('761', '2017-04-11 21:33:41', '202.80.215.57', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('762', '2017-04-11 21:34:18', '115.178.216.124', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('763', '2017-04-11 21:37:01', '222.165.226.122', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('764', '2017-04-11 21:38:07', '36.82.13.155', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('765', '2017-04-11 21:38:30', '202.182.59.185', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('766', '2017-04-11 21:38:42', '103.21.206.66', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('767', '2017-04-11 21:39:14', '36.69.87.71', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('768', '2017-04-11 21:39:42', '43.247.13.202', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('769', '2017-04-11 21:40:08', '66.102.7.143', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('770', '2017-04-11 21:43:21', '168.235.195.74', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('771', '2017-04-11 21:44:11', '103.8.12.99', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('772', '2017-04-11 21:44:14', '180.252.137.203', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('773', '2017-04-11 21:44:27', '36.87.53.20', 'Safari');
INSERT INTO `tbl_pengunjung` VALUES ('774', '2017-04-11 21:45:06', '114.125.87.178', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('775', '2017-04-11 21:46:04', '158.140.172.34', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('776', '2017-04-11 21:46:12', '61.94.132.66', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('777', '2017-04-11 21:47:36', '101.255.60.254', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('778', '2017-04-11 21:49:09', '36.74.102.19', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('779', '2017-04-11 21:49:42', '180.246.244.93', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('780', '2017-04-11 21:49:52', '118.97.151.193', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('781', '2017-04-11 21:50:01', '117.102.122.242', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('782', '2017-04-11 21:50:51', '36.71.249.134', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('783', '2017-04-11 21:51:54', '112.215.171.45', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('784', '2017-04-11 21:52:18', '103.241.5.116', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('785', '2017-04-11 21:52:31', '36.78.103.212', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('786', '2017-04-11 21:53:09', '36.72.80.127', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('787', '2017-04-11 21:54:12', '36.78.123.228', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('788', '2017-04-11 21:54:16', '36.68.235.225', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('789', '2017-04-11 21:54:37', '125.161.181.154', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('790', '2017-04-11 21:55:13', '36.80.164.131', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('791', '2017-04-11 21:56:15', '180.245.211.69', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('792', '2017-04-11 21:56:16', '125.167.186.204', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('793', '2017-04-11 21:57:34', '114.125.119.153', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('794', '2017-04-11 21:59:59', '114.121.234.35', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('795', '2017-04-11 22:02:26', '107.167.103.67', 'Opera');
INSERT INTO `tbl_pengunjung` VALUES ('796', '2017-04-11 22:02:47', '36.80.9.250', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('797', '2017-04-11 22:02:50', '36.88.62.43', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('798', '2017-04-11 22:02:57', '114.125.184.105', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('799', '2017-04-11 22:03:07', '185.182.81.53', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('800', '2017-04-11 22:04:44', '66.102.7.141', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('801', '2017-04-11 22:04:57', '36.88.158.219', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('802', '2017-04-11 22:06:25', '36.73.34.208', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('803', '2017-04-11 22:07:58', '36.74.20.46', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('804', '2017-04-11 22:08:28', '36.82.100.128', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('805', '2017-04-11 22:09:30', '112.215.65.245', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('806', '2017-04-11 22:09:42', '114.4.78.119', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('807', '2017-04-11 22:09:46', '110.137.171.177', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('808', '2017-04-11 22:09:47', '140.0.198.87', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('809', '2017-04-11 22:10:20', '103.47.134.18', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('810', '2017-04-11 22:10:43', '36.66.46.34', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('811', '2017-04-11 22:11:32', '180.246.96.230', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('812', '2017-04-11 22:13:26', '146.185.31.213', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('813', '2017-04-11 22:18:49', '163.53.186.186', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('814', '2017-04-11 22:19:24', '202.62.16.98', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('815', '2017-04-11 22:21:09', '36.70.200.11', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('816', '2017-04-11 22:24:10', '112.215.45.58', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('817', '2017-04-11 22:25:14', '66.96.234.91', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('818', '2017-04-11 22:25:55', '103.66.199.34', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('819', '2017-04-11 22:26:53', '182.253.163.82', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('820', '2017-04-11 22:28:37', '103.3.44.1', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('821', '2017-04-11 22:29:22', '36.88.90.200', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('822', '2017-04-11 22:30:19', '180.254.255.166', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('823', '2017-04-11 22:30:24', '115.178.200.226', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('824', '2017-04-11 22:30:45', '120.188.1.120', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('825', '2017-04-11 22:32:14', '103.195.142.26', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('826', '2017-04-11 22:33:33', '120.188.0.9', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('827', '2017-04-11 22:35:18', '120.188.81.213', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('828', '2017-04-11 22:36:20', '182.253.131.41', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('829', '2017-04-11 22:36:24', '8.37.234.123', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('830', '2017-04-11 22:36:27', '36.72.34.63', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('831', '2017-04-11 22:36:36', '115.178.239.80', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('832', '2017-04-11 22:36:54', '103.58.111.34', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('833', '2017-04-11 22:38:16', '8.37.225.224', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('834', '2017-04-11 22:38:19', '112.215.200.93', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('835', '2017-04-11 22:39:20', '120.188.92.156', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('836', '2017-04-11 22:39:27', '114.125.103.119', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('837', '2017-04-11 22:40:08', '107.167.112.73', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('838', '2017-04-11 22:42:02', '120.188.66.2', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('839', '2017-04-11 22:42:44', '36.72.134.144', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('840', '2017-04-11 22:43:13', '36.66.215.5', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('841', '2017-04-11 22:44:26', '114.125.101.241', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('842', '2017-04-11 22:45:36', '182.253.37.186', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('843', '2017-04-11 22:46:05', '114.125.117.183', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('844', '2017-04-11 22:46:05', '114.125.101.71', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('845', '2017-04-11 22:46:05', '114.125.101.255', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('846', '2017-04-11 22:47:28', '114.124.34.31', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('847', '2017-04-11 22:48:28', '202.62.17.122', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('848', '2017-04-11 22:48:41', '139.192.131.90', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('849', '2017-04-11 22:52:52', '120.188.3.158', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('850', '2017-04-11 22:53:10', '200.77.128.224', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('851', '2017-04-11 22:54:26', '112.215.151.215', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('852', '2017-04-11 22:55:40', '114.4.82.59', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('853', '2017-04-11 22:55:50', '36.79.229.121', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('854', '2017-04-11 22:57:41', '118.136.224.179', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('855', '2017-04-11 23:00:38', '202.67.41.242', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('856', '2017-04-11 23:01:11', '36.77.191.150', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('857', '2017-04-11 23:01:26', '125.166.214.129', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('858', '2017-04-11 23:03:25', '202.93.231.81', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('859', '2017-04-11 23:03:40', '36.68.69.52', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('860', '2017-04-11 23:03:59', '112.215.152.222', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('861', '2017-04-11 23:04:55', '36.79.42.167', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('862', '2017-04-11 23:05:30', '103.47.134.3', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('863', '2017-04-11 23:10:29', '139.59.96.104', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('864', '2017-04-11 23:11:56', '36.73.101.192', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('865', '2017-04-11 23:12:39', '180.252.110.204', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('866', '2017-04-11 23:14:25', '36.84.224.105', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('867', '2017-04-11 23:15:20', '112.215.172.91', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('868', '2017-04-11 23:15:29', '43.252.159.29', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('869', '2017-04-11 23:16:19', '114.124.2.201', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('870', '2017-04-11 23:16:52', '103.77.50.21', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('871', '2017-04-11 23:18:18', '114.125.215.48', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('872', '2017-04-11 23:19:02', '202.62.17.10', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('873', '2017-04-11 23:20:03', '202.93.231.70', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('874', '2017-04-11 23:20:33', '103.47.134.15', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('875', '2017-04-11 23:22:24', '120.188.77.49', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('876', '2017-04-11 23:22:51', '120.188.3.239', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('877', '2017-04-11 23:24:00', '180.189.162.131', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('878', '2017-04-11 23:24:20', '36.83.36.137', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('879', '2017-04-11 23:26:02', '175.111.89.42', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('880', '2017-04-11 23:26:56', '213.171.207.70', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('881', '2017-04-11 23:27:42', '180.252.173.112', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('882', '2017-04-11 23:28:22', '115.178.234.185', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('883', '2017-04-11 23:28:28', '36.77.83.38', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('884', '2017-04-11 23:29:16', '103.248.248.86', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('885', '2017-04-11 23:29:32', '180.254.74.221', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('886', '2017-04-11 23:29:39', '36.78.55.37', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('887', '2017-04-11 23:29:48', '112.78.191.34', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('888', '2017-04-11 23:30:04', '120.188.81.161', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('889', '2017-04-11 23:30:08', '115.178.201.60', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('890', '2017-04-11 23:31:14', '36.72.202.102', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('891', '2017-04-11 23:31:58', '120.188.79.93', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('892', '2017-04-11 23:33:26', '36.80.202.16', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('893', '2017-04-11 23:35:32', '139.194.22.183', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('894', '2017-04-11 23:38:11', '120.188.87.248', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('895', '2017-04-11 23:38:30', '182.253.163.75', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('896', '2017-04-11 23:39:26', '103.213.128.19', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('897', '2017-04-11 23:40:11', '202.169.53.3', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('898', '2017-04-11 23:41:53', '202.67.40.1', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('899', '2017-04-11 23:43:22', '120.188.66.119', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('900', '2017-04-11 23:43:42', '36.74.115.169', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('901', '2017-04-11 23:46:07', '103.47.132.27', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('902', '2017-04-11 23:46:19', '180.241.75.46', 'Mozilla');
INSERT INTO `tbl_pengunjung` VALUES ('903', '2017-04-11 23:46:19', '36.84.228.213', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('904', '2017-04-11 23:46:44', '118.136.88.249', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('905', '2017-04-11 23:49:50', '120.188.83.242', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('906', '2017-04-11 23:49:52', '36.77.137.120', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES ('907', '2017-07-10 09:07:19', '::1', 'Firefox');
INSERT INTO `tbl_pengunjung` VALUES ('908', '2017-07-28 16:22:44', '::1', 'Firefox');

-- ----------------------------
-- Table structure for testimoni
-- ----------------------------
DROP TABLE IF EXISTS `testimoni`;
CREATE TABLE `testimoni` (
  `idtestimoni` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) DEFAULT NULL,
  `email` varchar(70) DEFAULT NULL,
  `pesan` text,
  `status` varchar(2) DEFAULT NULL,
  `tgl_post` date DEFAULT NULL,
  PRIMARY KEY (`idtestimoni`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of testimoni
-- ----------------------------
INSERT INTO `testimoni` VALUES ('1', 'M Fikri Setiadi', 'fikrifiver97@gail.com', 'Sangat Membantu Orang awam untuk berkunjung kepulau', '1', '2016-04-26');
INSERT INTO `testimoni` VALUES ('2', 'M Fikri Setiadi', 'fikrifiver97@gail.com', 'Awesome', '1', '2016-04-26');
INSERT INTO `testimoni` VALUES ('3', 'Muller', 'muller@gmail.com', 'Good Stuff!', '1', '2017-07-09');

-- ----------------------------
-- Table structure for wisata
-- ----------------------------
DROP TABLE IF EXISTS `wisata`;
CREATE TABLE `wisata` (
  `idwisata` int(11) NOT NULL AUTO_INCREMENT,
  `nama_wisata` varchar(100) DEFAULT NULL,
  `deskripsi` text,
  `gambar` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idwisata`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of wisata
-- ----------------------------
INSERT INTO `wisata` VALUES ('2', 'Pulau Pagang', '<p>Pulau Pagang terletak didaerah Bungus, masih wilayah Kotamadya Padang, secara administrasi Pulau Pagang termasuk daerah Tarusan Pesisir Selatan,tapi lebih familiar termasuk wilayah Pagang, baru populer 1 tahun belakangan ini, setelah pulau Sikuai yang terkenal itu ,ditutup untuk umum dikarenakan permasalahan manajemen, sayang sekali memang pulau yg sudah lengkap fasilitasnya ini sekarang sudah menjadi semak belukar,tapi hikmah dibalik itu pulau berada sebelah kiri Sikuai ini menjadi lebih terkenal..</p>\r\n<p>Perjalanan lebih kurang 40 menit menggunakan boat kita sudah sampai di pulau berpasir putih dan halus ini, seolah tidak sabar utk berenang di airnya yang jernih, wisatawan biasanya langsung melompat sebelum boat sampai di bibir pantai..</p>\r\n<p>Aktivitas air yang biasa dilakukan wisatawan di pulau Pagang ini adalah banana boat, mengelilingi pulau, snorkling dan fasilitas foto underwater, memancing, berenang di airnya yang jernih.</p>\r\n<p>Pulau Pagang memiliki luas + 10 hektar dan merupakan pulau yang masih asri. Pulau Pagang langsung berhadapan dengan Samudera Hindia serta memiliki&nbsp; keindahan yang mempesona diantaranya hamparan pasir putih berpadu dengan jernih dan birunya air laut memberikan pesona tersendiri.</p>\r\n<p>Selain itu pengunjungpun dapat bermain di tepian pantai yang dangkal dan jernih, memancing dan juga menikmati perbukitan yang hijau&nbsp; di seberang Pulau Pagang.</p>\r\n<p>Kegiatan snorkling di Pulau Pagang ini juga cukup menarik karena pulau ini kaya akan terumbu karang. Sebagaimana dikutip dari website Kementerian Kelautan dan Perikanan, Pulau Pagang didominasi oleh kelompok karang diantaranya Genus Foliose, seperti&nbsp;&nbsp;<em>Montipora foliosa, Montipora danae, Encrusing Genus Montipora, Asreopora sp., Oxypora lacare, Massive Genus, Favites sp, Porites sp, Porites lute, Goniastre sp</em>&nbsp;dan&nbsp;<em>Favia sp</em>.</p>\r\n<p>Selain kaya akan terumbu karang, Pulau Pagang juga memiliki jenis ikan diantaranya&nbsp;<em>Chatedon trifasciatus, Acanthurus pyroferus, Ctenochaetus striatus, Caesio cunning, Scolopsis bilinett</em>a, dan masih banyak lagi kekayaan biota bawah laut.</p>\r\n<p>Untuk menuju pulau ini, Anda dapat menggunakan&nbsp; perahu nelayan maupun perahu wisata, dari pelabuhan Muaro di Kota Padang, dengan waktu tempuh + 1 jam. Anda dapat pula melalui Pelabuhan Bungus, Teluk Kabung + 40 Menit.</p>\r\n<p>Sumatera Barat merupakan salah satu daerah tujuan wisata yang patut untuk dipertimbangkan mengisi waktu libur mendatang. Selain indahnya pesona alam,&nbsp; Sumatera Barat juga memiliki daerah tujuan wisata kuliner yang dapat mengoyang lidah kita. Wisata budayanya&nbsp; dapat menambah pengetahuan budaya kita, sedang wisata sejarah&nbsp; mengingatkan kita akan perjuangan para pahlawan&nbsp; meraih kemerdekaan.</p>', 'file_1463326038.png');
INSERT INTO `wisata` VALUES ('3', 'Pulau Pasumpahan', '<p><strong>Pulau Pasumpahan</strong>&nbsp;adalah sebuah pulau&nbsp;yang berada di perairan kecamatan Bungus Teluk Kabung, kota Padang, provinsi Sumatera Barat, Indonesia&nbsp;. Klaim akan keindahan lautnya membuat pulau ini mulai dikenal oleh wisatawan lokal dan internasional.</p>\r\n<p>Pulau Pasumpahan berada sekitar 200 meter dari Pulau Sikuai. Pulau ini memiliki obyek wisata pantai pasir putih dengan terumbu karang&nbsp;yang masih terjaga.</p>\r\n<p>Pulau ini diharapkan akan menjadi daerah tujuan wisata unggulan di provinsi Sumatera Barat. Pulau ini terletak di sebelah barat Pulau Setan Kecil, untuk menempuh pulau ini memakan waktu 10 menit dari Sungai Pisang dengan mesin 45 PK.</p>\r\n<p>Potensi wisata bawah laut di kawasan wisata bahari pantai barat Kota Padang adalah kawasan ekosistem terumbu karang yang terdapat hampir di setiap pulau, di antaranya di Pulau Gosong. Selain dari terumbu karang berbagai jenis ikan karang/ikan-ikan hias juga sangat menarik untuk dinikmati oleh wisatawan. Di perairan Kota Padang ditemukan 21 jenis ikan kepe-kepe yang didominasi oleh Chaetodon trifascialis. Lokasi-Iokasi penyelaman yang sudah mulai dipasarkan kepada wisatawan antara lain Pulau Gosong, Pulau Ular, Pulau Sirandah, dan Pulan Pandan.</p>\r\n<p>Pasumpahan kini tengah diincar investor asing untuk dikembangkan sebagai obyek wisata yang di unggulkan di daerah sumatera barat. Fasilitas pendukung untuk itu tengah dibangun di pulau ini.</p>', 'file_1463322397.png');
INSERT INTO `wisata` VALUES ('4', 'Pulau Pamutusan', '<p>Sebagian orang mungkin belum pernah mendengar, apalagi mengunjungi&nbsp;<strong>Pulau Pamutusan</strong>&nbsp;di Sumatera Barat. Tapi, bagi yang pernah berkunjung ke pulau yang ada di Sumatera Barat itu, bisa jadi sudah merencanakan untuk kembali ke sana.<br /> <br /> Memang, Sumatera Barat terkenal dengan kawasan yang dikelilingi ratusan pulau kecil yang dihiasi tekstur perbukitan dan biota laut yang mengagumkan. Salah satunya&nbsp;<strong>Pulau Pamutusan</strong>.<br /> <br /> Terletak di kawasan Bungus Teluk Kabung, Padang atau sekitar satu jam perjalanan dari Kota Padang, pulau ini dikenal dengan surga tersembunyi yang belum banyak terjamah wisatawan.<br /> <strong><br /> Pulau Pamutusan</strong>&nbsp;bisa ditempuh dengan menggunakan kapal kecil dari Pelabuhan Muara Kota Padang sekitar satu jam perjalanan laut. Pulau dengan luas 8 hektare ini memiliki pasir putih serta tumbuhan pohon kelapa dan tanaman mangrove serta perbukitan yang masih hijau.<br /> <br /> Pulau ini diberi nama Pamutusan karena terdapat semenanjung yang berubah menjadi daratan berpasir putih ketika air laut surut.<br /> <br /> Untuk menjaga kebersihan pulau tersebut, dipungut retribusi untuk setiap tamu yang datang oleh seorang penjaga pulau yang sehari-hari menetap di sana.<br /> &nbsp;<br /> Pulau ini ibarat sepotong surga yang tersembunyi di tengah Samudera Hindia yang belum banyak dijamah oleh wisatawan karena belum pernah terekspose. Pulau ini cocok bagi wisatawan penggemar landscape atau fotografer karena banyak terdapat spot-spot cantik dengan hamparan pemandangan nan asri dan indah, walaupun ditempuh dengan sedikit tracking untuk mencapai puncak bukitnya.<br /> <br /> Selain itu, biota ikan hias dan terumbu karang yang terdapat di dalam laut di sekitar pulau ini juga menjadi daya tarik tersendiri bagi penggemar snorkling. Nah, untuk melepas kepenatan setelah berwisata, terdapat sebuah cottage yang bisa disinggahi dan bersantai menikmati pemandangan alam pulau-pulau kecil yang menghampar di depannya.</p>', 'file_1463317841.png');
