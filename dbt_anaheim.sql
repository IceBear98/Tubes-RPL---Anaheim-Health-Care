-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Jun 2021 pada 13.50
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbt_anaheim`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `idAdmin` varchar(50) NOT NULL,
  `Nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanan_dokter`
--

CREATE TABLE `pemesanan_dokter` (
  `idDokter` varchar(50) NOT NULL,
  `NamaDokter` varchar(50) NOT NULL,
  `Spesialisasi` varchar(50) NOT NULL,
  `id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanan_kamar`
--

CREATE TABLE `pemesanan_kamar` (
  `id` varchar(50) NOT NULL,
  `idRuangan` varchar(50) NOT NULL,
  `namaRuangan` varchar(50) NOT NULL,
  `kelas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pemesanan_kamar`
--

INSERT INTO `pemesanan_kamar` (`id`, `idRuangan`, `namaRuangan`, `kelas`) VALUES
('1301164623', '1234562734', 'Mawar 02', 'A');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanan_obat`
--

CREATE TABLE `pemesanan_obat` (
  `id` varchar(50) NOT NULL,
  `idObat` varchar(50) NOT NULL,
  `NamaObat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pemesanan_obat`
--

INSERT INTO `pemesanan_obat` (`id`, `idObat`, `NamaObat`) VALUES
('1301164623', '1231233223', 'Decolgen');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jeniskelamin` varchar(50) NOT NULL,
  `umur` varchar(50) NOT NULL,
  `keluhan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id`, `nama`, `jeniskelamin`, `umur`, `keluhan`) VALUES
('12345566', 'Galih', 'Perempuan', '21', 'batuk'),
('1301164623', 'Galih', 'pria', '21', 'batuk');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idAdmin`);

--
-- Indeks untuk tabel `pemesanan_dokter`
--
ALTER TABLE `pemesanan_dokter`
  ADD PRIMARY KEY (`idDokter`),
  ADD KEY `id` (`id`);

--
-- Indeks untuk tabel `pemesanan_kamar`
--
ALTER TABLE `pemesanan_kamar`
  ADD PRIMARY KEY (`idRuangan`),
  ADD KEY `id` (`id`);

--
-- Indeks untuk tabel `pemesanan_obat`
--
ALTER TABLE `pemesanan_obat`
  ADD PRIMARY KEY (`idObat`),
  ADD KEY `id` (`id`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pemesanan_dokter`
--
ALTER TABLE `pemesanan_dokter`
  ADD CONSTRAINT `pemesanan_dokter_ibfk_1` FOREIGN KEY (`id`) REFERENCES `siswa` (`id`);

--
-- Ketidakleluasaan untuk tabel `pemesanan_kamar`
--
ALTER TABLE `pemesanan_kamar`
  ADD CONSTRAINT `pemesanan_kamar_ibfk_1` FOREIGN KEY (`id`) REFERENCES `siswa` (`id`);

--
-- Ketidakleluasaan untuk tabel `pemesanan_obat`
--
ALTER TABLE `pemesanan_obat`
  ADD CONSTRAINT `pemesanan_obat_ibfk_1` FOREIGN KEY (`id`) REFERENCES `siswa` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
