-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2021 at 12:59 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_mushollabm`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id`, `username`, `password`) VALUES
(2, 'admin100', '5136b96817648b5b81008f6a984284a7');

-- --------------------------------------------------------

--
-- Table structure for table `tb_inventaris`
--

CREATE TABLE `tb_inventaris` (
  `id` int(11) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `foto` text NOT NULL,
  `update_tanggal` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_inventaris`
--

INSERT INTO `tb_inventaris` (`id`, `nama_barang`, `jumlah`, `keterangan`, `foto`, `update_tanggal`) VALUES
(9, 'Kursi', 20, 'Tidak ada yang rusak', 'kursi-balero-tb.jpg', ''),
(10, 'Meja', 5, 'Rusak Satu', 'meja.jpg', ''),
(11, 'Microphone', 2, 'Tidak ada yang rusak', 'OIP.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kegiatan`
--

CREATE TABLE `tb_kegiatan` (
  `id` int(11) NOT NULL,
  `nama_kegiatan` varchar(255) NOT NULL,
  `tempat` varchar(255) DEFAULT NULL,
  `waktu` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_kegiatan`
--

INSERT INTO `tb_kegiatan` (`id`, `nama_kegiatan`, `tempat`, `waktu`, `deskripsi`, `foto`) VALUES
(34, 'Bodo Kupatan', 'Halaman Musholla', '23-11-2021', 'Bodo Kupatan ini adalah salah satu bentuk rasa syukur kepada Allah yang telah melimpahkan rahmat serta karunianya kepda kita semua mulai dari lahir hingga kita sekarang. Bodo Kupatan ini adalah salah satu bentuk rasa syukur kepada Allah yang telah melimpahkan rahmat serta karunianya kepda kita semua mulai dari lahir hingga kita sekarang. Bodo Kupatan ini adalah salah satu bentuk rasa syukur kepada Allah yang telah melimpahkan rahmat serta karunianya kepda kita semua mulai dari lahir hingga kita sekarang.', '2980815804.jpg'),
(35, 'Maulid Nabi Muhammad', 'Musholla Baitul', '24-11-2021', 'Maulid adalah sebuah bentuk penghormatan atas kelahiran nabi muhammad. Maulid adalah sebuah bentuk penghormatan atas kelahiran nabi muhammad. Maulid adalah sebuah bentuk penghormatan atas kelahiran nabi muhammad. Maulid adalah sebuah bentuk penghormatan atas kelahiran nabi muhammad', 'grebeg muludan 3.jpg'),
(37, 'Rabu Wekasan', 'Halaman Musholla ', '30-11-2021', 'Rabu Wekasan merupakan sebuah bentuk rasa syukur kepada tuhan yang telah memberikan rahmat serta hidayahnya kepada kita Rabu Wekasan merupakan sebuah bentuk rasa syukur kepada tuhan yang telah memberikan rahmat serta hidayahnya kepada kita Rabu Wekasan merupakan sebuah bentuk rasa syukur kepada tuhan yang telah memberikan rahmat serta hidayahnya kepada kita', 'Upacara-Rabu-Pungkasan-di-Yogyakarta-Memiliki-Nilai-Historis-Tinggi.jpg'),
(39, 'Satu Syuro', 'Rumah Masing\"', '27-11-2021', 'kamu kita aaaaaaaaaLorem ipsum dolor sit amet consectetur adipisicing elit. Corrupti labore dolores iure accusamus eos cupiditate at dicta magni fuga ex aspernatur cumque, voluptas molestias, explicabo expedita esse ipsum nulla provident quas, optio amet ad animi laudantium vero. Explicabo at distinctio minus mollitia deserunt voluptates officia tempora nesciunt necessitatibus, amet sit, eum exercitationem? Suscipit, laudantium? Similique nam quaerat, ipsam ducimus quasi perferendis, ex incidunt expedita sint debitis aperiam minus quam natus suscipit doloremque aliquid totam fugit vel necessitatibus quos. Voluptates ab amet doloremque officiis officia et architecto dicta! Veritatis, vel. Molestias facere reprehenderit quam quo magnam voluptatem mollitia accusantium veniam veritatis. Iure dolorum quae iusto est aperiam consequuntur dignissimos vero molestias a. Perspiciatis dolore maiores ipsam! Atque quibusdam delectus possimus sapiente perferendis, error maxime molestias odio ullam dolores excepturi numquam expedita aspernatur reiciendis ipsum impedit dignissimos quo eveniet nobis harum, modi quaerat officia deserunt rem? Error tempore voluptatem ullam? Fugiat quod libero recusandae autem blanditiis mollitia, quaerat, adipisci beatae cupiditate harum sequi fugit cum unde eaque pariatur dolore, tempora alias iure ut facilis exercitationem deleniti. Laborum sit veritatis quaerat quia praesentium doloremque, eveniet odio quos commodi? Sed, sit? Id debitis consequatur blanditiis sapiente, maiores delectus ad nostrum totam quibusdam reiciendis architecto sint itaque atque. Autem nemo nobis nam quasi perspiciatis! Nisi sint exercitationem qui quo eaque atque numquam voluptas mollitia animi excepturi fugiat, inventore quam veniam a aspernatur architecto natus ex non, tempora adipisci modi. Blanditiis commodi sapiente ipsam at earum illo vero autem suscipit quam necessitatibus soluta deleniti aperiam assumenda sit animi, ducimus eaque? Omnis maiores accusamus itaque sequi optio fugit quos vitae totam. Reiciendis veniam est labore eaque impedit laboriosam eum illum vero harum possimus, totam ratione quae deserunt facere, aliquam quis sit esse recusandae nulla! Expedita eaque, distinctio itaque qui voluptatibus, natus veritatis porro officia at harum aut impedit obcaecati doloremque consequatur corporis repellendus! Doloremque temporibus quos sunt suscipit natus eos illum similique, optio necessitatibus facere accusamus, veritatis hic praesentium? Eveniet sed quasi tempore. Ea soluta repudiandae minima nisi animi ipsum fuga dolore, blanditiis sit porro ad dolores. Quidem, quaerat perferendis sequi iste reprehenderit tenetur culpa quibusdam libero eum sunt cum accusamus quae ullam ipsa nobis sapiente modi hic? Quae assumenda nam provident facilis eaque ea sed eos, quisquam dolorum earum voluptatum. Quas quis sed minus, error est quae non ducimus eveniet mollitia dolorem ipsum fugiat dicta eius possimus. Officia error possimus culpa omnis nemo ea id. Voluptatem.\r\n', 'syukuran-ulang-tahun.jpg'),
(40, 'Pengajian Akbar', 'Lapangan Balai Desa', '26-11-2021', '', 'pengajian_01-1024x474.jpg'),
(41, 'Sholawatan Sabtu Malam', 'Halaman Musholla', '18-11-2021', '', '98d4765328a0777807c61617b87d4aa3-14-image_1510643751_5a0a982790b07.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengurus`
--

CREATE TABLE `tb_pengurus` (
  `id` int(11) NOT NULL,
  `nama_lengkap` varchar(255) DEFAULT NULL,
  `posisi` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `foto` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pengurus`
--

INSERT INTO `tb_pengurus` (`id`, `nama_lengkap`, `posisi`, `keterangan`, `foto`) VALUES
(46, 'Bintoro Sp.d', 'Penanggung Jawab', '', 'R (1).jpg'),
(48, 'Jefri Kurniawannnnnnn', 'Ketua Pengurus', 'a', 'R (2).jpg'),
(49, 'Brian Andrean', 'Wakil Ketua', '', 'Matt-Savage.jpg'),
(50, 'Sandiansyah', 'Sekertaris', '', 'famous-people-with-narcolepsy-u2.jpg'),
(52, 'Fanny Reyan', 'Anggota 2', '', 'R.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_inventaris`
--
ALTER TABLE `tb_inventaris`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_kegiatan`
--
ALTER TABLE `tb_kegiatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pengurus`
--
ALTER TABLE `tb_pengurus`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_inventaris`
--
ALTER TABLE `tb_inventaris`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tb_kegiatan`
--
ALTER TABLE `tb_kegiatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `tb_pengurus`
--
ALTER TABLE `tb_pengurus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
