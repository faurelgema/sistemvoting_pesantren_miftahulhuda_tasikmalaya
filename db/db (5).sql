-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Okt 2020 pada 15.03
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pilkasis`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `datapemilihan`
--

CREATE TABLE `datapemilihan` (
  `idpemilihan` int(5) NOT NULL,
  `tipe` varchar(5) COLLATE latin1_general_ci NOT NULL,
  `idpemilih` varchar(9) COLLATE latin1_general_ci DEFAULT NULL,
  `idkandidat` varchar(2) COLLATE latin1_general_ci NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `datapemilihan`
--

INSERT INTO `datapemilihan` (`idpemilihan`, `tipe`, `idpemilih`, `idkandidat`, `waktu`) VALUES
(9, 'Siswa', '122', '6', '2020-10-11 15:21:37'),
(8, 'Siswa', '1101', '4', '2020-10-11 14:27:49'),
(7, 'Siswa', '115', '3', '2020-10-08 06:45:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `nip` varchar(9) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jk` varchar(1) NOT NULL,
  `mengajar` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `hp` varchar(15) NOT NULL,
  `memilih` varchar(1) NOT NULL,
  `aktif` enum('Y','T') NOT NULL DEFAULT 'T',
  `foto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`nip`, `username`, `password`, `nama`, `jk`, `mengajar`, `email`, `hp`, `memilih`, `aktif`, `foto`) VALUES
('0123', 'dedi', 'c5897fbcc14ddcf30dca31b2735c3d7e', 'Dedi S', '', 'Biologi', '', '089', '', 'Y', 'AllahWithUs.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kandidat`
--

CREATE TABLE `kandidat` (
  `idkandidat` int(2) NOT NULL,
  `username` varchar(25) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(32) COLLATE latin1_general_ci NOT NULL,
  `nama` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `nokandidat` varchar(2) COLLATE latin1_general_ci NOT NULL,
  `jumlahsuara` varchar(4) COLLATE latin1_general_ci NOT NULL DEFAULT '0',
  `visi` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `misi` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','T') COLLATE latin1_general_ci NOT NULL DEFAULT 'T',
  `foto` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `idkelas` int(2) NOT NULL,
  `kelas` varchar(7) CHARACTER SET latin1 NOT NULL,
  `jumlah` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `idpengguna` int(2) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jabatan` varchar(30) NOT NULL,
  `hp` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `hakakses` varchar(15) NOT NULL,
  `aktif` enum('Y','T') NOT NULL DEFAULT 'T',
  `foto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`idpengguna`, `username`, `password`, `nama`, `jabatan`, `hp`, `email`, `hakakses`, `aktif`, `foto`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Robi', 'Administrator', '08999999', 'robii@gmail.com', 'Admin', 'Y', 'muhidin.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `nis` varchar(20) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jk` varchar(1) NOT NULL,
  `tempatlahir` varchar(30) NOT NULL,
  `tanggallahir` date NOT NULL,
  `idkelas` varchar(2) NOT NULL,
  `email` varchar(50) NOT NULL,
  `hp` varchar(15) NOT NULL,
  `aktif` enum('Y','T') NOT NULL DEFAULT 'T',
  `memilih` varchar(1) NOT NULL,
  `foto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`nis`, `username`, `password`, `nama`, `jk`, `tempatlahir`, `tanggallahir`, `idkelas`, `email`, `hp`, `aktif`, `memilih`, `foto`) VALUES
('5100032780483110001', 'ulpa', '5100032780483110001', 'Ulpa Rahmawati', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483110002', 'niar', '5100032780483110002', 'Niar Sadidah', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483120001', 'agni', '5100032780483120001', 'Muhammad Agni Arifin', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483120002', 'rusli', '5100032780483120002', 'Rusli Hamzah', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483130001', 'basit', '5100032780483130001', 'Muhammad Abdul Basit', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483130002', 'jajang', '5100032780483130002', 'Jajang Hermawan', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483140001', 'adam', '5100032780483140001', 'Adam Firdaus Sujada', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483140002', 'susi', '5100032780483140002', 'Susi Islamiati', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483140003', 'bidin', '5100032780483140003', 'Dinda Nur Rosyidah', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483140004', 'umi', '5100032780483140004', 'Mia Ummi Salamah', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483140005', 'brengsek', '5100032780483140005', 'Asep Yusuf Maulana', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483140006', 'jana', '5100032780483140006', 'Jana Abdul Mannan', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483140007', 'wahyu', '5100032780483140007', 'Muhammad Dadi Wahyuddin', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483140009', 'syifa', '5100032780483140009', 'Syifa Nafisa Fadila Rohman', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483140010', 'merry', '5100032780483140010', 'Dede Meri Siti Maryam', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483150001', 'hilman', '5100032780483150001', 'Hilman Abdurrahman', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483150002', 'lastri', '5100032780483150002', 'Lastri Sulastri', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483150003', 'econ', '5100032780483150003', 'Muhammad Wildan Fauzi Zimam', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483150004', 'uyeng', '5100032780483150004', 'Muhammad Farhan Syabana', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483150005', 'bilqis', '5100032780483150005', 'Bilqis Hildaziya Mumtaz', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483160001', 'rahma', '5100032780483160001', 'Rahmalia Wati', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483160002', 'rifal', '5100032780483160002', 'Muhammad Rifal', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483160003', 'assyifa', '5100032780483160003', 'Assyifa Nurul Azma', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483160004', 'nurlingga', '5100032780483160004', 'Syifa Nurlingga', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483160005', 'juy', '5100032780483160005', 'Wahyu Khoirul Fikri', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483160006', 'imel', '5100032780483160006', 'Nimal Malika', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483160007', 'faiq', '5100032780483160007', 'Faiq Fiilmillah', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483160008', 'asep', '5100032780483160008', 'Asep Ramdan', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483170001', 'zaky', '5100032780483170001', 'Muhammad Zaki Abdullah', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483170002', 'rexy', '5100032780483170002', 'Rexy Aditya Gunawan', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483170003', 'rika', '5100032780483170003', 'Rika Rahayu', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483170004', 'dani', '5100032780483170004', 'Ahmad Murdanil Arif', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483170005', 'sendi', '5100032780483170005', 'Sendi Kirana', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483170006', 'nala', '5100032780483170006', 'Nala Latifah', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483170007', 'bi_anis', '5100032780483170007', 'Siti Rosmayanti Annisa', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483170008', 'mikus', '5100032780483170008', 'Mia Kusmiati', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483170009', 'gabriel', '5100032780483170009', 'Gabriel Alhirosi', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483170010', 'hapid', '5100032780483170010', 'Abdul Hapid', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483170011', 'beta', '5100032780483170011', 'Appan Septiana', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483170012', 'dzikri', '5100032780483170012', 'Muhammad Dzikri', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483170013', 'zulfa', '5100032780483170013', 'Zulfa Tazkiatulhuda', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483170014', 'dian', '5100032780483170014', 'Dian Darmawan', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483170015', 'syamil', '5100032780483170015', 'Muhammad Syamil Muhajir', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483180001', 'pipit', '5100032780483180001', 'Pipit Nur Azizah', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483180002', 'aida', '5100032780483180002', 'Aida', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483180003', 'aldy', '5100032780483180003', 'Aldy Muhammad Hikam', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483180004', 'paqot', '5100032780483180004', 'Annisa', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483180005', 'lulu', '5100032780483180005', 'Lutfiah Latifatul Huda', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('51000327804831800055', 'papau', '51000327804831800055', 'Neng Siti Fauziah Nailalmuna', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483180006', 'maki', '5100032780483180006', 'Maki Asyari', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483180007', 'amir', '5100032780483180007', 'Amir Nur Wahid', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483180008', 'dj', '5100032780483180008', 'Roby Dikri Jaelani', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483180009', 'alya', '5100032780483180009', 'Alya Rahmawati', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483180010', 'nida', '5100032780483180010', 'Nidaul Hasanah', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483180011', 'goday', '5100032780483180011', 'Nandar Mulyana', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483180012', 'mufti', '5100032780483180012', 'Mufti Sunan Alfarabi', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483180013', 'mumuh', '5100032780483180013', 'Mumuh Muharrom', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483180014', 'aci', '5100032780483180014', 'Astri Fauziah Hindasah', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483180015', 'ciwong', '5100032780483180015', 'Ridwan Febriansyah', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483180016', 'laisya', '5100032780483180016', 'Laisya Qonita Gunawan', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483180017', 'uwid', '5100032780483180017', 'Widya Wulandari', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483180018', 'mira', '5100032780483180018', 'Mira Maulida', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483180019', 'puput', '5100032780483180019', 'Putri Najia Zayyina Zamila', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483180020', 'thibbi', '5100032780483180020', 'Thibbi Qolbi Affandy', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483180021', 'hazmi', '5100032780483180021', 'Muhammad Hazmi Muktafa', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483180022', 'haura', '5100032780483180022', 'Haura Nimatul Udzma', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483180023', 'zidan', '5100032780483180023', 'Abdillah Zidan Khadafi', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483180024', 'asepluthfi', '5100032780483180024', 'Asep Luthfi Fauzan', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483180025', 'naji', '5100032780483180025', 'Muhammad Najiyulloh', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483180026', 'hana', '5100032780483180026', 'Hana Nurhasanah', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483180027', 'hilma', '5100032780483180027', 'Hilma Adila Zulaikho', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483180028', 'hubba', '5100032780483180028', 'Hubbanillah Haseena Kamal', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483180029', 'ikliema', '5100032780483180029', 'Ikliema Alya', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('51000327804831800299', 'cece', '51000327804831800299', 'Malha Aqila Zulaikho', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483190001', 'syifanurulhaq', '5100032780483190001', 'Syifa Nurul Haq', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483190002', 'hilwa', '5100032780483190002', 'Hilma Mutmainnatul Huda', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483190003', 'windi', '5100032780483190003', 'Windi Afifah', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483190004', 'euis', '5100032780483190004', 'Euis Patul Hasanah', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483190005', 'siti', '5100032780483190005', 'Siti Nuraeni', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483190006', 'bopak', '5100032780483190006', 'Ahmad Fadlan', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483190007', 'diana', '5100032780483190007', 'Diana Putri Handini', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483190008', 'giska', '5100032780483190008', 'Giska Ayu Puspitasari', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483190009', 'alvi', '5100032780483190009', 'Alvi Aziz Natasyah', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483190010', 'fasya', '5100032780483190010', 'Muhammad Fasya Danial', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483190011', 'ramdani', '5100032780483190011', 'Dani Ramdani', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483190012', 'dzikriinsan', '5100032780483190012', 'Dzikri Insan Tri Mulyana', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483190013', 'alfin', '5100032780483190013', 'Muhammad Alfin Nurul Azmi', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483190014', 'daud', '5100032780483190014', 'Daud Hidayat', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483190015', 'fauzi', '5100032780483190015', 'Fauzi Muhammad Azhar', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483190016', 'kemed', '5100032780483190016', 'Ahmad Syahid Albanani', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483190017', 'aspar', '5100032780483190017', 'Aspar Aspin Asralian', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483200001', 'ira', '5100032780483200001', 'Ira Rismasari Parisi', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483200002', 'wardini', '5100032780483200002', 'Wardini', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483200003', 'dalva', '5100032780483200003', 'Dalva Zahri Aulia', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483200004', 'firda', '5100032780483200004', 'Firda Nurfadilah', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483200005', 'dini', '5100032780483200005', 'Dini Rohmayani', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483200006', 'zidny', '5100032780483200006', 'Zidny Mubarok Affandy', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483200007', 'hafair', '5100032780483200007', 'Muhammad Hafair', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483200008', 'wasilah', '5100032780483200008', 'Wasilah Wulandari Syaban', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483200009', 'alif', '5100032780483200009', 'Ahmad Alif Faturrohman', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483200010', 'dafa', '5100032780483200010', 'Dafa Darul Rifqi', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483200011', 'lutfia', '5100032780483200011', 'Lutfia Afifah', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483200012', 'tole', '5100032780483200012', 'Muhammad Rizqi', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483200013', 'hawaya', '5100032780483200013', 'Hawaya Najma Nabila Rohimah', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483200014', 'sahil', '5100032780483200014', 'Muhammad Sahil Makarim', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483200015', 'dimas', '5100032780483200015', 'Dimas Adittya', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483200016', 'sitifatimah', '5100032780483200016', 'Siti Fatimah Hamzah', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483200017', 'yanti', '5100032780483200017', 'Yanti Sumiyati', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483200018', 'sandi', '5100032780483200018', 'Sandi Habiburrohman', '', '', '0000-00-00', '', '', '', 'Y', '', ''),
('5100032780483200019', 'candra', '5100032780483200019', 'Candra Idris Darmawan', '', '', '0000-00-00', '', '', '', 'Y', '', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `datapemilihan`
--
ALTER TABLE `datapemilihan`
  ADD PRIMARY KEY (`idpemilihan`);

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`nip`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeks untuk tabel `kandidat`
--
ALTER TABLE `kandidat`
  ADD PRIMARY KEY (`idkandidat`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`idkelas`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`idpengguna`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nis`),
  ADD UNIQUE KEY `pengguna` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `datapemilihan`
--
ALTER TABLE `datapemilihan`
  MODIFY `idpemilihan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `kandidat`
--
ALTER TABLE `kandidat`
  MODIFY `idkandidat` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `idkelas` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `idpengguna` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
