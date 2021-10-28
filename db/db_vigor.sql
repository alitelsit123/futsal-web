-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Jul 2019 pada 21.50
-- Versi server: 10.1.40-MariaDB
-- Versi PHP: 7.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_vigor`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tboking`
--

CREATE TABLE `tboking` (
  `kdBoking` bigint(20) NOT NULL,
  `noInvoice` varchar(20) NOT NULL,
  `tglInvoice` date NOT NULL,
  `usernameBoking` varchar(100) NOT NULL,
  `an` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `kontak` varchar(15) NOT NULL,
  `totalBayar` double NOT NULL,
  `statusBayar` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tboking`
--

INSERT INTO `tboking` (`kdBoking`, `noInvoice`, `tglInvoice`, `usernameBoking`, `an`, `alamat`, `email`, `kontak`, `totalBayar`, `statusBayar`) VALUES
(10, 'INV-000001', '2017-03-14', 'Boogye32', 'Budi Hermawan', 'Jl.M.Yamin Gg.Usaha Baru', 'mail.budihermawan@gmail.com', '0821008911', 100000, 'B'),
(11, 'INV-000002', '2017-03-15', 'admin', 'Budi Hermawan', 'jl', 'mail.budihermawan@gmail.com', '0821008911', 100000, 'B'),
(12, 'INV-000003', '2019-07-08', 'admin', 'woww', 'jl. empuh panuluh,pringwulung (Depan SLB YAPPENAS UNIT 2)', 'crowlazy@gmail.com', '085727788983', 100000, 'L'),
(13, 'INV-000004', '2019-07-08', 'admin', 'penyok', 'jl. empuh panuluh,pringwulung (Depan SLB YAPPENAS UNIT 2)', 'crowlazy@gmail.com', '085727788983', 100000, 'B'),
(14, 'INV-000005', '2019-07-08', 'penyok', 'penyookk', 'aaaa', 'penyok@gmail.com', '085555', 100000, 'B');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tboking_temp`
--

CREATE TABLE `tboking_temp` (
  `kdBokingTemp` bigint(20) NOT NULL,
  `kdJadwal` int(5) NOT NULL,
  `nomorLapangan` int(5) NOT NULL,
  `tglBokingTemp` date NOT NULL,
  `jamBokingTemp` varchar(20) NOT NULL,
  `hargaTemp` double NOT NULL,
  `subTotalTemp` double NOT NULL,
  `idSession` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `thalamanstatis`
--

CREATE TABLE `thalamanstatis` (
  `kdHalaman` int(1) NOT NULL,
  `profil` longtext NOT NULL,
  `caraBoking` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tjadwal`
--

CREATE TABLE `tjadwal` (
  `kdJadwal` bigint(20) NOT NULL,
  `tglJadwal` date NOT NULL,
  `kdLapangan` int(5) NOT NULL,
  `kdJam` int(5) NOT NULL,
  `harga` double NOT NULL,
  `statusBoking` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tjadwal`
--

INSERT INTO `tjadwal` (`kdJadwal`, `tglJadwal`, `kdLapangan`, `kdJam`, `harga`, `statusBoking`) VALUES
(7, '2017-03-13', 1, 1, 100000, 'B'),
(8, '2017-03-13', 1, 2, 100000, 'R'),
(9, '2017-03-13', 1, 3, 100000, 'R'),
(10, '2017-03-13', 1, 4, 100000, 'R'),
(11, '2017-03-15', 1, 1, 100000, 'B'),
(12, '2017-03-16', 1, 1, 100000, 'B'),
(13, '2019-10-16', 1, 2, 100000, 'R'),
(14, '0000-00-00', 1, 1, 100000, 'R'),
(15, '2019-07-10', 1, 1, 100000, 'R');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tjam`
--

CREATE TABLE `tjam` (
  `kdJam` int(5) NOT NULL,
  `jam` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tjam`
--

INSERT INTO `tjam` (`kdJam`, `jam`) VALUES
(1, '08:00'),
(2, '09:00'),
(3, '10:00'),
(4, '11:00'),
(5, '12:00'),
(6, '13:00'),
(7, '14:00'),
(8, '15:00'),
(9, '16:00'),
(10, '17:00'),
(11, '18:00'),
(12, '19:00'),
(13, '20:00'),
(14, '21:00'),
(15, '22:00'),
(16, '23:00'),
(17, '24:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tlapangan`
--

CREATE TABLE `tlapangan` (
  `kdLapangan` int(5) NOT NULL,
  `noLapangan` int(5) NOT NULL,
  `gambarLapangan` varchar(1000) NOT NULL,
  `deskripsi` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tlapangan`
--

INSERT INTO `tlapangan` (`kdLapangan`, `noLapangan`, `gambarLapangan`, `deskripsi`) VALUES
(1, 1, '757a91448d779d6a42052f8235338fa4lapangan futsal.jpg', 'Lapangan Footsal Sintesis\r\nTes Konten Tes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes Konten'),
(4, 2, 'e03325851ec8ff3a4ecf664239d4d64116522.jpg', 'tes');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tmember`
--

CREATE TABLE `tmember` (
  `kdMember` bigint(20) NOT NULL,
  `usermember` varchar(100) NOT NULL,
  `passmember` varchar(100) NOT NULL,
  `nmLengkap` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `emailMember` varchar(100) NOT NULL,
  `kontak` varchar(15) NOT NULL,
  `fotoMember` varchar(1000) NOT NULL,
  `aktif` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tmember`
--

INSERT INTO `tmember` (`kdMember`, `usermember`, `passmember`, `nmLengkap`, `alamat`, `emailMember`, `kontak`, `fotoMember`, `aktif`) VALUES
(2, 'member', 'member', 'Budi Hermawan', 'Jl.kebakir', 'mail.budihermawan@gmail.com', '0821008911', 'e2cea35294e2c56ea8ebfa2aaad4acb7profile_user.jpg', 'Y'),
(3, 'aldy', '3b2fb88da8c86baef513883eb2f8fa37', '', '', '', '', '', 'Y'),
(4, 'aldy', '3b2fb88da8c86baef513883eb2f8fa37', 'aldy', 'sakura', 'crowlazy@gmail.com', 'Aldy agil herma', '', 'Y'),
(5, 'coba', 'c3ec0f7b054e729c5a716c8125839829', 'woww', 'dslfsdf', 'crowlazy@gmail.com', '0855555', '', 'Y'),
(6, 'coba', '6c0cbf5029aed0af395ac4b864c6b095', 'sdfsd', 'fgdfg', 'crowlazy@gmail.com', '453456', '', 'Y'),
(7, 'penyok', 'b7e68d2a23c812bbffe678969f79fa35', 'penyok', 'ffff', 'penyok@gmail.com', '0855555', '', 'Y'),
(8, 'suqi', '24c5d94c7fec279773a56973eef3d688', 'suqi', 'gapunya', 'suqi@gmail.com', '0855555258485', 'e03325851ec8ff3a4ecf664239d4d64116522.jpg', 'Y'),
(9, 'thomas', 'ef6e65efc188e7dffd7335b646a85a21', 'thomas reinaldy', 'jl. perumnas no3', 'thomas@gmail.com', '085716547496', '', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tpengguna`
--

CREATE TABLE `tpengguna` (
  `kdPengguna` bigint(20) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nmPengguna` varchar(100) NOT NULL,
  `emailPengguna` varchar(100) NOT NULL,
  `alamatPengguna` varchar(100) NOT NULL,
  `kontak` varchar(15) NOT NULL,
  `aktif` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tpengguna`
--

INSERT INTO `tpengguna` (`kdPengguna`, `username`, `password`, `nmPengguna`, `emailPengguna`, `alamatPengguna`, `kontak`, `aktif`) VALUES
(1, 'admin', 'admin', 'administrator', 'admin@gmail.com', 'Jl.M.Yamin Gg.Usaha Baru', '082188991010', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `trincian_boking`
--

CREATE TABLE `trincian_boking` (
  `kdRincianBoking` bigint(20) NOT NULL,
  `kdBoking` int(5) NOT NULL,
  `noLapangan` int(5) NOT NULL,
  `kdJadwal` int(5) NOT NULL,
  `hargaBoking` double NOT NULL,
  `jamBoking` varchar(15) NOT NULL,
  `tglBoking` varchar(15) NOT NULL,
  `subTotal` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `trincian_boking`
--

INSERT INTO `trincian_boking` (`kdRincianBoking`, `kdBoking`, `noLapangan`, `kdJadwal`, `hargaBoking`, `jamBoking`, `tglBoking`, `subTotal`) VALUES
(10, 10, 1, 11, 100000, '08:00', '2017-03-15', 100000),
(11, 11, 1, 12, 100000, '08:00', '2017-03-16', 100000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tboking`
--
ALTER TABLE `tboking`
  ADD PRIMARY KEY (`kdBoking`);

--
-- Indeks untuk tabel `tboking_temp`
--
ALTER TABLE `tboking_temp`
  ADD PRIMARY KEY (`kdBokingTemp`);

--
-- Indeks untuk tabel `thalamanstatis`
--
ALTER TABLE `thalamanstatis`
  ADD PRIMARY KEY (`kdHalaman`);

--
-- Indeks untuk tabel `tjadwal`
--
ALTER TABLE `tjadwal`
  ADD PRIMARY KEY (`kdJadwal`);

--
-- Indeks untuk tabel `tjam`
--
ALTER TABLE `tjam`
  ADD PRIMARY KEY (`kdJam`);

--
-- Indeks untuk tabel `tlapangan`
--
ALTER TABLE `tlapangan`
  ADD PRIMARY KEY (`kdLapangan`);

--
-- Indeks untuk tabel `tmember`
--
ALTER TABLE `tmember`
  ADD PRIMARY KEY (`kdMember`);

--
-- Indeks untuk tabel `tpengguna`
--
ALTER TABLE `tpengguna`
  ADD PRIMARY KEY (`kdPengguna`);

--
-- Indeks untuk tabel `trincian_boking`
--
ALTER TABLE `trincian_boking`
  ADD PRIMARY KEY (`kdRincianBoking`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tboking`
--
ALTER TABLE `tboking`
  MODIFY `kdBoking` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `tboking_temp`
--
ALTER TABLE `tboking_temp`
  MODIFY `kdBokingTemp` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `thalamanstatis`
--
ALTER TABLE `thalamanstatis`
  MODIFY `kdHalaman` int(1) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tjadwal`
--
ALTER TABLE `tjadwal`
  MODIFY `kdJadwal` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `tjam`
--
ALTER TABLE `tjam`
  MODIFY `kdJam` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `tlapangan`
--
ALTER TABLE `tlapangan`
  MODIFY `kdLapangan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tmember`
--
ALTER TABLE `tmember`
  MODIFY `kdMember` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tpengguna`
--
ALTER TABLE `tpengguna`
  MODIFY `kdPengguna` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `trincian_boking`
--
ALTER TABLE `trincian_boking`
  MODIFY `kdRincianBoking` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
