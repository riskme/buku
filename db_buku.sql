-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2019 at 10:07 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_buku`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_buku`
--

CREATE TABLE `tb_buku` (
  `id_buku` int(15) NOT NULL,
  `judul_buku` varchar(50) NOT NULL,
  `pengarang` varchar(30) NOT NULL,
  `penerbit` varchar(30) NOT NULL,
  `harga` int(15) NOT NULL,
  `halaman` int(4) NOT NULL,
  `id_kategori` int(15) NOT NULL,
  `sinopsis` text NOT NULL,
  `stok` int(15) NOT NULL,
  `cover` varchar(100) NOT NULL,
  `rating` int(1) NOT NULL DEFAULT '0',
  `best` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_buku`
--

INSERT INTO `tb_buku` (`id_buku`, `judul_buku`, `pengarang`, `penerbit`, `harga`, `halaman`, `id_kategori`, `sinopsis`, `stok`, `cover`, `rating`, `best`) VALUES
(1, 'Ensiklopedia Balita Cerdas: Dokter', 'Valerie Guidoux', 'Bhuana Ilmu Populer', 37500, 23, 2, 'Pengetahuan seputar profesi dokter yang berhubungan dengan anak-anak. Dilengkapi dengan aktivitas-aktivitas mengasyikkan di akhir cerita.', 15, 'Balita_Dokter.jpg', 5, '1'),
(2, 'Kreasi Cupcakes Cantik dari Sang Maestro', 'Hadi Tuwendi', 'Gramedia Pustaka Utama', 140000, 144, 18, 'Cupcake merupakan makanan populer dan menjadi favorit bagi banyak orang. Apa yang membuat cupcake “dilirik” orang untuk dibeli? Ternyata, topping dan hiasannya mengundang selera. ', 40, 'resep_cupcake.jpg', 4, '1'),
(3, 'Pelaut yang Ternoda', 'Yukio Mishima', 'Ea Books', 66000, 68, 8, '&lt;p&gt;Pelaut yang Ternoda - Kedua matanya berkeliaran di ruangan temaram itu dan ia dibuat kagum oleh jam berwarna keemasan pada rak di atas perapian, tempat lilin kaca berukir yang menggantung dari lelangit, vas-vas berwarna hijau kebiruan yang ditaruh dalam kondisi hampir jatuh di atas rak terbuka: semuanya rawan, dalam keheningan keheningan paripurna. Ia bertanya-tanya berkah apakah yang menjauhkan ruangan itu dari goncangan. Sampai hari kemarin, barang-barang itu tak mempunyai makna apa pun baginya, dan kini ia dan semua barang itu telah terhubungkan. Perantaranya adalah satu lirikan mata seorang perempuan, sebuah sinyal yang dipancarkan dari balik jalinan urat, tenaga hewani dari kelelakiannya sendiri; dan setelah pengetahuan ini ia terselubung misteri seolah matanya melihat sebuah kapal tak dikenal di lautan bebas. Meski tubuhnya sendiri mengatur ikatan ini dengan sengaja namun ketidaknyataan mengagumkan tentang ruangan ini membuatnya gemetar.&lt;/p&gt;', 12, 'asddasdas_4400.jpg', 3, '0'),
(4, 'The Silmarillion', 'J.R.R Tolkien', 'Gramedia Pustaka Utama', 130000, 574, 8, 'Karya epik legendaris Tolkien yang mendahului `THE LORD OF THE RINGS`\r\nKetiga Silmaril adalah batu-batu permata sempurna buatan Feanor, Elf yang paling cemerlang di antara seluruh rasnya. Ketika permata-permata itu dicuri Morgoth, Penguasa Kegelapan pertama, untuk memenuhi maksud dan tujuannya sendiri, Feanor dan kaum kerabatnya mengangkat senjata dan mengobarkan perang dahsyat yang berlangsung sangat lama, untuk merebut kembali ketiga Silmaril. Inilah kisah tentang pemberontakan mereka melawan dewa-dewa, dan sejarah Zaman Pertama yang penuh kepahlawanan di Middle-earth.', 76, 'silmarillion-_the-silmarillion_.jpg', 5, '0'),
(5, 'Devil Survivor 07', 'Matsuba Satoru', 'Komik Warna', 22500, 14, 5, 'Naoya adalah orang yang misterius. Dia seakan tahu segalanya, tapi Kazuya tak pernah tahu apa rahasia yang disimpan saudaranya itu, seperti kenapa Naoya menginginkan Kazuya mennjadi raja Bel.', 78, 'Devil-Survivor-07_4414.jpg', 4, '0'),
(6, 'Dracula', 'Bram Stoker', 'Dian Rakyat', 65000, 525, 8, '&lt;p&gt;Buku ini berisi tentang &lt;em&gt;&lt;strong&gt;&quot;DRACULA&quot;&lt;/strong&gt;&lt;/em&gt;&lt;/p&gt;', 10, 'dracula-cover.jpg', 1, '0'),
(7, 'Perjalanan Lain Menuju Bulan', 'M. Aan Mansyur', 'Bentang', 60000, 112, 8, '&lt;p&gt;Berisi kumpulan puisi yang terinspirasi dari film Another Trip to the Moon karya Ismail Basbeth. Puisi-puisinya akan ditemani dengan ilustrasi, foto-foto, dan lagu-lagu yang juga diinspirasikan dari film tersebut.&lt;/p&gt;', 54, 'perjalanan-lainnya_4444.jpg', 4, '0'),
(8, 'Ensiklopedia Balita Cerdas: Transportasi', 'Jean Michel Billiod', 'Buana Ilmu Populer ', 36000, 24, 2, 'Balita cerdas mengenal macam-macam transportasi', 14, 'anak_transport.jpg', 4, '1'),
(9, 'Seri Cerita Balita: Aku Sayang Adik', 'Eka Wardana', 'DAR! Mizan', 39000, 20, 2, '&lt;p&gt;Buku Aku Sayang Adik menceritakan Ali yang sangat menyayangi adik. Kenapa, ya, Ali sayang adik? Oh, ternyata adik sangat menggemaskan. Wah, seperti apa, ya? Yuk, baca saja!&lt;/p&gt;', 7, 'sayang adik.jpg', 5, '0'),
(14, 'Hujan', 'Tere Liye', 'Gramedia Pustaka Utama', 68000, 318, 8, '<p>Tentang Persahabatan.</p>\r\n<p>Tentang Cinta.</p>\r\n<p>Tentang Perpisahan.</p>\r\n<p>Tentang Melupakan.</p>\r\n<p>Tentang Hujan.</p>', 45, 'hujan.jpg', 5, '1'),
(15, 'Sherlock Holmes: Koleksi Kasus 1', 'Sir Arthur Conan Doyle', 'Gramedia Pustaka Utama', 127000, 832, 8, '&lt;div class=&quot;texform&quot;&gt;\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span id=&quot;freeText11301406540223632291&quot;&gt;Sejak muncul pertama kali tahun 1887, Sherlock Holmes menjadi tokoh fiksi yang paling fenomenal. Dia menjadi jagoan klasik yang legendaris dan menginspirasi dalam budaya pop bahkan hingga abad ke-21. Bersama Dr. John Watson, Sherlock Holmes memecahkan kasus-kasus rumit berdasarkan kemampuannya menemukan petunjuk-petunjuk yang sering diabaikan orang lain.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span id=&quot;freeText11301406540223632291&quot;&gt;&lt;br /&gt;Koleksi Kasus Sherlock Holmes 1 ini dimulai dengan novel pertama Penelusuran Benang Merah yang memperkenalkan Sherlock Holmes si eksentrik yang genius ini dengan Dr. Watson. Empat Pemburu Harta yang menyajikan kejutan penuh teka-teki. Perjumpaannya dengan wanita yang sangat dikaguminya di Petualangan Sherlock Holmes. Peristiwa pertama yang mempertemukannya dengan musuh bebuyutannya, Dr. Moriarty, di Memoar Sherlock Holmes. Dan petualangan dalam Anjing Setan Sherlock Holmes yang menegakkan bulu kuduk.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span id=&quot;freeText11301406540223632291&quot;&gt;&lt;br /&gt;Koleksi Kasus #1 terdiri dari:&lt;/span&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;&lt;span id=&quot;freeText11301406540223632291&quot;&gt;- Penelusuran Benang Merah&lt;/span&gt;&lt;/li&gt;\r\n&lt;li&gt;&lt;span id=&quot;freeText11301406540223632291&quot;&gt;- Empat Pemburu Harta&lt;br /&gt;&lt;/span&gt;&lt;/li&gt;\r\n&lt;li&gt;&lt;span id=&quot;freeText11301406540223632291&quot;&gt;- Petualangan Sherlock Holmes&lt;br /&gt;&lt;/span&gt;&lt;/li&gt;\r\n&lt;li&gt;&lt;span id=&quot;freeText11301406540223632291&quot;&gt;- Memoar Sherlock Holmes&lt;br /&gt;&lt;/span&gt;&lt;/li&gt;\r\n&lt;li&gt;&lt;span id=&quot;freeText11301406540223632291&quot;&gt;- Anjing Setan Sherlock Holmes&lt;/span&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;/div&gt;', 14, '24452572.jpg', 4, '0'),
(16, 'Sherlock Holmes a Study in Scarlet', 'Sir Arthur Conan Doyle', 'Shira Media', 35000, 207, 8, '&lt;p style=&quot;text-align: justify;&quot;&gt;Sherlock Holmes Begins: A Study in Scarlet menceritakan segala mula petualangan duet dari Sherlock Holmes dan Dokter Watson. Pengenalan kedua karakter tersebut dibeberkan dengan detail, juga tentang alur dan motif kejadian pembunuhan yang sedang ditangani mereka. Tak ada yang mustahil untuk diungkap oleh seorang Sherlock Holmes.&amp;nbsp;&lt;/p&gt;', 40, '8629085_0fd04602-db34-4342-ad89-4f7d5c7b3d2d.jpg', 3, '0'),
(17, 'Sherlock Holmes The Valley of Fear', 'Sir Arthur Conan Doyle', 'Shira Media', 49000, 290, 8, '&lt;div class=&quot;texform&quot;&gt;\r\n&lt;p&gt;Buku ini berisi tentang Sherlock Holmes The Valley Of Fear.&lt;/p&gt;\r\n&lt;/div&gt;', 47, 'sherlock_holmes_the_valley_of_fear.jpg', 3, '0'),
(18, 'Why? Italy', 'Yearimdang', ' Elex Media Komputindo', 95000, 185, 3, '&lt;p style=&quot;text-align: justify;&quot;&gt;Italia adalah negara yang memiliki sejarah panjang. Di negara ini, kita bisa menemukan jejak Romawi Kuno yang berjaya ribuan tahun lalu dan melihat suasana megah di zaman Renaisans di mana Leonardo da Vinci dan Michelangelo beraksi. Saat ini Italia telah berkembang menjadi negara adikuasa bahkan menjadi anggota G8. Why? Italy akan menjelaskan berbagal hal tentang Italia, mulai dari sejarah, lingkungan alam, sosial budaya, dan politiknya.&amp;nbsp;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;br /&gt;Yuk, kita ikuti petualangan Ami dan Mir ke negara pizza dan pasta!&lt;/p&gt;', 7, 'Why Italy-500x500.jpg', 2, '0'),
(19, 'Why? Social Contract (Rousseau)', 'Yearimdang', 'Elex Media Komputindo', 95000, 203, 3, '&lt;p style=&quot;text-align: justify;&quot;&gt;Karena muncul hal-hal sulit yang tidak bisa diselesaikan oleh Rousseau seorang diri, maka mau tidak mau Rousseau mengadakan kontrak sosial demi membuat orang-orang bisa menjalani hidup yang lebih baik. Namun, menurut Rousseau &amp;lsquo;Kembali ke Alam&amp;rsquo; merupakan situasi yang paling ideal untuk sebuah negara. Dengan kata lain, Rousseau menginginkan masyarakat yang bebas dan damai dalam keadaan alami.&amp;nbsp;&lt;/p&gt;', 3, 'WHY THE SOCIAL-500x500.jpg', 4, '0'),
(20, '29 Resep Ala Fastfood', 'Kamikoki', 'Gramedia Pustaka Utama', 76000, 0, 18, '&lt;p style=&quot;text-align: justify;&quot;&gt;Pasti banyak gerai dan resto fast food yang sering Anda kunjungi untuk mencicipi beragam menu favorit seperti fried chicken, lasagna, pasta, dan lainnya. Kamikoki mengajak Anda mencoba membuat sajian ala resto fast food sendiri di rumah.&lt;/p&gt;\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;Buku ini berisi 29 resep ala fast food yang beberapa di antaranya pasti menjadi menu kesukaan Anda dan keluarga. Selain dapat berhemat, soal rasa juga tidak kalah dengan resto fast food favorit Anda. Bahkan bisa jadi lebih sehat karena lebih terjamin bahan dan kebersihannya.&lt;/p&gt;', 4, '97135_f.jpg', 1, '0'),
(21, 'Happy Little Soul', 'Retno Hening Palupi', 'Gagas Media', 80000, 194, 2, 'Cerita petualangan Ibuk dan Kirana di Happy Little Soul ini mengajak kita semua—kakak, adik, orangtua, calon ayah atau ibu, dan sebagai apa pun perannya—untuk belajar hal-hal sederhana mengenai kasih sayang dan belajar bersama mewarnai kehidupan dengan lebih baik.', 14, 'anak_kirana.jpg', 5, '1'),
(22, 'Randang Bundo', 'Wynda Dwi Amalia', 'Gramedia Pustaka Utama', 100000, 120, 18, 'Buku Ini Rahasia \r\n\r\nIni adalah buck reset rahasia milik bundo dan di dalam bunu ini terdapat berbagain tips pembuatan rendang yang belang digunakan sejak zaman dahulu, serta tertluis berbagai info yang mungkin bolum banyak orang ketahui. Sangbundo menulis buku resep ini agar nantinya bisa di turunkan kepada generasi masa dean. \r\nPsst... dan ini sancta rahasia.', 11, 'resep_rendang.jpg', 2, '0'),
(23, '5 Guru Kecilku', 'Kiki Barkiah', 'Mastakka Publishing', 89000, 185, 2, 'Buku ini mengangkat kisah-kisah seputar pengasuhan anak yang mungkin sangat umum terjadi dalam keluarga. Namun atas petunjuk Allah SWT penulis mampu menyibak rahasia dan mengumpulkan hikmah yang berserak dari setiap permasalahan yang dihadapi dalam pengasuhan anak sehingga menjadi pelajaran berharga bagi para orang tua.', 38, 'anak_5guru.jpg', 5, '0'),
(24, 'Kontroversi Vaksin', 'PIPRIM B. YANUARSO', 'Mizan Publishing', 110000, 148, 6, 'Buku ini adalah Vaksin dari virus keraguan imunisasi yang mulai menjangkiti masyarakat kita.\r\n\r\n- dr. Gia Pratama, penulis buku #BerhentiDiKamu\r\n\r\nVaksinasi, imunisasi, ... haruskah? Mengapa? Apa saja? Bagaimana? Kapan?', 3, 'sehat_vaksin.jpg', 2, '0'),
(25, 'Hits & Simple: Daily Cooking', 'MEILY FURNIA', ' Visimedia', 148500, 146, 18, 'Siapa bilang masak itu susah? Jangan bilang susah kalau belum coba resep-resep ala Meily Furnia. Seorang ibu rumah tangga, pemilik akun instagram @meily_chin ini sering share menu masakan harian di akun instagramnya. Menu-menu yang disajikan untuk masakan harian keluarga dibuat simple dan menggunakan bumbu non-MSG, tapi rasanya tetap enak dan lezat, lho, Moms.', 32, 'resep_daily.jpg', 5, '1'),
(27, 'Jadi YOUTUBER (A-Z)', 'Jubilee Enterprise', 'Elex Media Komputindo', 72800, 264, 17, 'Youtuber merupakan profesi bergengsi saat ini. Siapa pun bisa menjadi Youtuber tanpa harus memandang usia, gelar pendidikan, jenis kelamin, dan sebagainya. Buku ini dapat mengantar Anda menjadi seorang Youtuber. ', 5, 'komp_youtube.jpg', 4, '0'),
(28, 'Kreasi Asyik Pintar Origami', 'Munnal Hani`ah', 'Laksana', 68000, 80, 4, 'Melalui buku ini, kita akan belajar membuat origami beberapa bentuk. Dari selembar kertas, bisa dibentuk menjadi ikan, kelinci, kepiting, koala, kodok, kamera, bola, wadah kotak, dan lain-lain. Menarik, bukan?\r\n\r\nSetiap keterampilan melipat kertas disajikan dengan gambar-gambar penunjang, sehingga bisa langsung dipraktikkan. Aneka lipatan kertas pada buku ini cocok bagi kalian yang gemar belajar tentang seni melipat kertas, sekaligus menambah keterampilan motorik halus. Selamat berkarya dengan melipat kertas.', 6, 'ket_origami.jpg', 5, '1'),
(29, 'Travel Hacks East Asia', 'Leo Daphne', ' Elex Media Komputindo', 84800, 324, 1, 'Buku ini bukanlah tentang `saya yang sudah traveling` melainkan `Anda yang (akan) traveling`! Benua Asia yang luas memang menarik jika dibedah satu per satu. Bahkan satu buku tidak akan sanggup menampung cerita keelokannya. Maka setelah Anda membaca Travel Hacks South East Asia serta menjelajahi daratan tersebut, kini waktunya kita bergeser ke Asia Timur. Saya menyajikan 4 negara, 24 destinasi, dan 121 informasi tentang benua ini yang bisa mendorong Anda untuk mengeksplorasinya.', 8, 'travel_asia.jpg', 5, '1');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `id_kategori` int(15) NOT NULL,
  `judul_kategori` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kategori`
--

INSERT INTO `tb_kategori` (`id_kategori`, `judul_kategori`) VALUES
(1, 'Travel'),
(2, 'Anak - Anak'),
(3, 'Pendidikan'),
(4, 'Hobi / Keterampilan'),
(5, 'Komik'),
(6, 'Kesehatan'),
(8, 'Fiksi'),
(17, 'Komputer dan Teknologi'),
(18, 'Buku Masakan');

-- --------------------------------------------------------

--
-- Table structure for table `tb_komentar`
--

CREATE TABLE `tb_komentar` (
  `id_komentar` int(15) NOT NULL,
  `id_buku` int(15) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `isi_komentar` text NOT NULL,
  `hapus` int(11) NOT NULL DEFAULT '0',
  `tgl` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_slide`
--

CREATE TABLE `tb_slide` (
  `id_slide` int(15) NOT NULL,
  `judul_slide` varchar(30) NOT NULL,
  `keterangan` text NOT NULL,
  `gambar` text NOT NULL,
  `urutan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_slide`
--

INSERT INTO `tb_slide` (`id_slide`, `judul_slide`, `keterangan`, `gambar`, `urutan`) VALUES
(1, 'Time to Read', 'Waktunya membaca buku kesayangan', 'waktu.jpg', 4),
(3, 'Genre Buku', 'Buku apa yang paling kamu sukai? Temukan disini!', 'genre.jpg', 3),
(4, 'Buku dan Wanita', 'Temukan siapa dirimu di dalam buku..!', 'wanita.jpg', 2),
(5, 'Buku dan Laki-laki', 'Bro...Mas...mari membaca', 'wall.jpg', 1),
(7, 'Buku dan Mimpi', 'Mimpi seperti apa yang dapat kita temukan dalam sebuah buku.', 'quotes.jpg', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `level` enum('admin','member') NOT NULL,
  `avatar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `nama_user`, `username`, `password`, `email`, `level`, `avatar`) VALUES
(5, 'rismi', 'rismi', '123456', 'rismi@gmail.com', 'admin', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_buku`
--
ALTER TABLE `tb_buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indexes for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tb_komentar`
--
ALTER TABLE `tb_komentar`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indexes for table `tb_slide`
--
ALTER TABLE `tb_slide`
  ADD PRIMARY KEY (`id_slide`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_buku`
--
ALTER TABLE `tb_buku`
  MODIFY `id_buku` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  MODIFY `id_kategori` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tb_komentar`
--
ALTER TABLE `tb_komentar`
  MODIFY `id_komentar` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tb_slide`
--
ALTER TABLE `tb_slide`
  MODIFY `id_slide` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
