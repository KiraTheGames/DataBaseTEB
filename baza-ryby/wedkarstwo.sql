-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Wrz 11, 2024 at 03:00 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wedkarstwo`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `polowy`
--

CREATE TABLE `polowy` (
  `id_polowu` int(11) NOT NULL,
  `id_wedkarza` int(11) NOT NULL,
  `id_ryby` int(11) NOT NULL,
  `data_polowu` date NOT NULL,
  `miejsce_polowu` varchar(300) NOT NULL,
  `typ_lowiska` enum('staw','rzeka','jezioro') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `polowy`
--

INSERT INTO `polowy` (`id_polowu`, `id_wedkarza`, `id_ryby`, `data_polowu`, `miejsce_polowu`, `typ_lowiska`) VALUES
(1, 12, 1, '2024-06-01', 'Dolina Baryczy', 'staw'),
(2, 23, 2, '2024-06-01', 'Dolina Baryczy', 'staw'),
(3, 33, 3, '2024-06-01', 'Dolina Baryczy', 'staw'),
(4, 24, 4, '2024-06-01', 'San', 'rzeka'),
(5, 35, 5, '2024-06-01', 'Dolina Baryczy', 'staw'),
(6, 64, 6, '2024-06-01', 'Dolina Baryczy', 'staw'),
(7, 67, 7, '2024-06-01', 'San', 'rzeka'),
(8, 38, 8, '2024-06-04', 'Śniardwy', 'jezioro'),
(9, 59, 9, '2024-06-05', 'Dolina Baryczy', 'staw'),
(10, 104, 10, '2024-06-05', 'Wigry', 'jezioro'),
(11, 81, 11, '2024-06-05', 'San', 'rzeka'),
(12, 92, 12, '2024-06-05', 'Dolina Baryczy', 'staw'),
(13, 33, 13, '2024-06-05', 'Dolina Baryczy', 'staw'),
(14, 44, 14, '2024-06-05', 'Wigry', 'jezioro'),
(15, 55, 15, '2024-06-05', 'Dolina Baryczy', 'staw'),
(16, 66, 16, '2024-06-08', 'Śniardwy', 'jezioro'),
(17, 27, 17, '2024-06-08', 'Dolina Baryczy', 'staw'),
(18, 58, 18, '2024-06-08', 'Dolina Baryczy', 'staw'),
(19, 69, 19, '2024-06-10', 'San', 'rzeka'),
(20, 70, 20, '2024-06-10', 'Śniardwy', 'jezioro'),
(21, 21, 21, '2024-06-10', 'Dolina Baryczy', 'staw'),
(22, 82, 22, '2024-06-10', 'Wigry', 'jezioro'),
(23, 23, 23, '2024-06-10', 'Dolina Baryczy', 'staw'),
(24, 34, 24, '2024-06-10', 'Śniardwy', 'jezioro'),
(25, 45, 25, '2024-06-10', 'Dolina Baryczy', 'staw'),
(26, 56, 26, '2024-06-10', 'Dolina Baryczy', 'staw'),
(27, 67, 27, '2024-06-12', 'San', 'rzeka'),
(28, 88, 28, '2024-06-12', 'Śniardwy', 'jezioro'),
(29, 39, 29, '2024-06-12', 'Dolina Baryczy', 'staw'),
(30, 33, 30, '2024-06-12', 'Dolina Baryczy', 'staw'),
(31, 113, 31, '2024-06-13', 'San', 'rzeka'),
(32, 3, 32, '2024-06-13', 'Śniardwy', 'jezioro'),
(33, 33, 33, '2024-06-13', 'Dolina Baryczy', 'staw'),
(34, 14, 34, '2024-06-13', 'Wigry', 'jezioro'),
(35, 15, 35, '2024-06-13', 'San', 'rzeka'),
(36, 16, 36, '2024-06-13', 'Dolina Baryczy', 'staw'),
(37, 39, 37, '2024-06-13', 'Dolina Baryczy', 'staw'),
(38, 78, 38, '2024-06-13', 'Wigry', 'jezioro'),
(39, 99, 39, '2024-06-13', 'Dolina Baryczy', 'staw'),
(40, 100, 40, '2024-06-14', 'Śniardwy', 'jezioro'),
(41, 111, 41, '2024-06-14', 'Dolina Baryczy', 'staw'),
(42, 52, 42, '2024-06-14', 'Dolina Baryczy', 'staw'),
(43, 43, 43, '2024-06-15', 'San', 'rzeka'),
(44, 44, 44, '2024-06-15', 'Śniardwy', 'jezioro'),
(45, 75, 45, '2024-06-15', 'Dolina Baryczy', 'staw'),
(46, 6, 46, '2024-06-15', 'Wigry', 'jezioro'),
(47, 7, 47, '2024-06-15', 'Dolina Baryczy', 'staw'),
(48, 4, 48, '2024-06-16', 'San', 'rzeka'),
(49, 19, 49, '2024-06-16', 'Dolina Baryczy', 'staw'),
(50, 10, 50, '2024-06-16', 'Dolina Baryczy', 'staw'),
(51, 21, 51, '2024-06-16', 'San', 'rzeka'),
(52, 32, 52, '2024-06-16', 'Śniardwy', 'jezioro'),
(53, 53, 53, '2024-06-17', 'Dolina Baryczy', 'staw'),
(54, 74, 54, '2024-06-17', 'Dolina Baryczy', 'staw'),
(55, 25, 55, '2024-06-18', 'San', 'rzeka'),
(56, 66, 56, '2024-06-18', 'Śniardwy', 'jezioro'),
(57, 87, 57, '2024-06-18', 'Dolina Baryczy', 'staw'),
(58, 98, 58, '2024-06-18', 'Wigry', 'jezioro'),
(59, 19, 59, '2024-06-18', 'San', 'rzeka'),
(60, 10, 60, '2024-06-20', 'Dolina Baryczy', 'staw'),
(61, 21, 61, '2024-06-21', 'Dolina Baryczy', 'staw'),
(62, 32, 62, '2024-06-21', 'Wigry', 'jezioro'),
(63, 33, 63, '2024-06-24', 'San', 'rzeka'),
(64, 74, 64, '2024-06-24', 'Śniardwy', 'jezioro'),
(65, 15, 65, '2024-06-24', 'Dolina Baryczy', 'staw'),
(66, 86, 66, '2024-06-24', 'San', 'rzeka'),
(67, 47, 67, '2024-06-26', 'Dolina Baryczy', 'staw'),
(68, 88, 68, '2024-06-26', 'Śniardwy', 'jezioro'),
(69, 69, 69, '2024-06-26', 'Dolina Baryczy', 'staw'),
(70, 70, 70, '2024-06-26', 'Dolina Baryczy', 'staw'),
(71, 31, 71, '2024-06-27', 'San', 'rzeka'),
(72, 42, 72, '2024-06-27', 'Dolina Baryczy', 'staw'),
(73, 23, 73, '2024-06-27', 'Dolina Baryczy', 'staw'),
(74, 94, 74, '2024-06-28', 'San', 'rzeka'),
(75, 55, 75, '2024-06-28', 'Śniardwy', 'jezioro'),
(76, 66, 76, '2024-06-28', 'Dolina Baryczy', 'staw'),
(77, 77, 77, '2024-06-28', 'Dolina Baryczy', 'staw'),
(78, 88, 78, '2024-06-28', 'San', 'rzeka'),
(79, 99, 79, '2024-06-28', 'Śniardwy', 'jezioro'),
(80, 100, 80, '2024-06-28', 'Dolina Baryczy', 'staw'),
(81, 111, 81, '2024-06-28', 'Dolina Baryczy', 'staw'),
(82, 52, 82, '2024-06-28', 'San', 'rzeka'),
(83, 43, 83, '2024-06-28', 'Śniardwy', 'jezioro'),
(84, 44, 84, '2024-06-28', 'Dolina Baryczy', 'staw'),
(85, 75, 85, '2024-06-28', 'Dolina Baryczy', 'staw'),
(86, 6, 86, '2024-06-28', 'San', 'rzeka'),
(87, 7, 87, '2024-06-28', 'Śniardwy', 'jezioro'),
(88, 4, 88, '2024-06-28', 'Dolina Baryczy', 'staw'),
(89, 19, 89, '2024-06-28', 'Dolina Baryczy', 'staw'),
(90, 10, 90, '2024-06-28', 'San', 'rzeka'),
(91, 21, 91, '2024-06-28', 'Śniardwy', 'jezioro'),
(92, 32, 92, '2024-06-28', 'Dolina Baryczy', 'staw'),
(93, 33, 93, '2024-06-28', 'Dolina Baryczy', 'staw'),
(94, 74, 94, '2024-06-28', 'San', 'rzeka'),
(95, 15, 95, '2024-06-28', 'Śniardwy', 'jezioro'),
(96, 86, 96, '2024-07-02', 'Dolina Baryczy', 'staw'),
(97, 47, 97, '2024-07-02', 'Dolina Baryczy', 'staw'),
(98, 88, 98, '2024-07-02', 'San', 'rzeka'),
(99, 69, 99, '2024-07-02', 'Śniardwy', 'jezioro'),
(100, 70, 100, '2024-07-02', 'Dolina Baryczy', 'staw'),
(101, 31, 101, '2024-07-02', 'Dolina Baryczy', 'staw'),
(102, 42, 102, '2024-07-02', 'San', 'rzeka'),
(103, 23, 103, '2024-07-02', 'Śniardwy', 'jezioro'),
(104, 94, 104, '2024-07-03', 'Dolina Baryczy', 'staw'),
(105, 55, 105, '2024-07-03', 'Dolina Baryczy', 'staw'),
(106, 66, 106, '2024-07-03', 'San', 'rzeka'),
(107, 77, 107, '2024-07-03', 'Śniardwy', 'jezioro'),
(108, 88, 108, '2024-07-05', 'Dolina Baryczy', 'staw'),
(109, 99, 109, '2024-07-05', 'Dolina Baryczy', 'staw'),
(110, 100, 110, '2024-07-05', 'San', 'rzeka'),
(111, 111, 111, '2024-07-05', 'Śniardwy', 'jezioro'),
(112, 52, 112, '2024-07-05', 'Dolina Baryczy', 'staw'),
(113, 43, 113, '2024-07-05', 'Dolina Baryczy', 'staw'),
(114, 44, 114, '2024-07-05', 'San', 'rzeka'),
(115, 75, 115, '2024-07-06', 'Śniardwy', 'jezioro'),
(116, 6, 116, '2024-07-06', 'Dolina Baryczy', 'staw'),
(117, 7, 117, '2024-07-06', 'Dolina Baryczy', 'staw'),
(118, 4, 118, '2024-07-07', 'San', 'rzeka'),
(119, 19, 119, '2024-07-07', 'Śniardwy', 'jezioro'),
(120, 10, 120, '2024-07-07', 'Dolina Baryczy', 'staw'),
(121, 21, 121, '2024-07-08', 'Dolina Baryczy', 'staw'),
(122, 32, 122, '2024-07-08', 'San', 'rzeka'),
(123, 33, 123, '2024-07-08', 'Śniardwy', 'jezioro'),
(124, 74, 124, '2024-07-08', 'Dolina Baryczy', 'staw'),
(125, 15, 125, '2024-07-09', 'Dolina Baryczy', 'staw'),
(126, 86, 126, '2024-07-10', 'San', 'rzeka'),
(127, 47, 127, '2024-07-10', 'Śniardwy', 'jezioro'),
(128, 88, 128, '2024-07-10', 'Dolina Baryczy', 'staw'),
(129, 69, 129, '2024-07-12', 'Dolina Baryczy', 'staw'),
(130, 70, 130, '2024-07-12', 'San', 'rzeka'),
(131, 31, 131, '2024-07-12', 'Śniardwy', 'jezioro'),
(132, 42, 132, '2024-07-12', 'Dolina Baryczy', 'staw'),
(133, 23, 133, '2024-07-12', 'Dolina Baryczy', 'staw'),
(134, 94, 134, '2024-07-13', 'San', 'rzeka'),
(135, 55, 135, '2024-07-13', 'Śniardwy', 'jezioro'),
(136, 66, 136, '2024-07-13', 'Dolina Baryczy', 'staw'),
(137, 77, 137, '2024-07-14', 'Dolina Baryczy', 'staw'),
(138, 88, 138, '2024-07-14', 'San', 'rzeka'),
(139, 99, 139, '2024-07-14', 'Śniardwy', 'jezioro'),
(140, 100, 140, '2024-07-14', 'Dolina Baryczy', 'staw'),
(141, 111, 141, '2024-07-14', 'Dolina Baryczy', 'staw'),
(142, 52, 142, '2024-07-14', 'San', 'rzeka'),
(143, 43, 143, '2024-07-14', 'Śniardwy', 'jezioro'),
(144, 44, 144, '2024-07-15', 'Dolina Baryczy', 'staw'),
(145, 75, 145, '2024-07-15', 'Dolina Baryczy', 'staw'),
(146, 6, 146, '2024-07-15', 'San', 'rzeka'),
(147, 7, 147, '2024-07-15', 'Śniardwy', 'jezioro'),
(148, 4, 148, '2024-07-15', 'Dolina Baryczy', 'staw'),
(149, 19, 149, '2024-07-16', 'Dolina Baryczy', 'staw'),
(150, 10, 150, '2024-07-16', 'San', 'rzeka'),
(151, 21, 151, '2024-07-17', 'Śniardwy', 'jezioro'),
(152, 32, 152, '2024-07-18', 'Dolina Baryczy', 'staw'),
(153, 33, 153, '2024-07-20', 'Dolina Baryczy', 'staw'),
(154, 74, 154, '2024-07-22', 'San', 'rzeka');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ryby`
--

CREATE TABLE `ryby` (
  `id_ryby` int(11) NOT NULL,
  `nazwa` varchar(300) NOT NULL,
  `gatunek` varchar(300) NOT NULL,
  `waga` float NOT NULL,
  `dlugosc` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `ryby`
--

INSERT INTO `ryby` (`id_ryby`, `nazwa`, `gatunek`, `waga`, `dlugosc`) VALUES
(1, 'Karp', 'Cyprinus carpio', 2.5, 40),
(2, 'Pstrąg', 'Oncorhynchus mykiss', 1.2, 30),
(3, 'Szczupak', 'Esox lucius', 4, 70),
(4, 'Sum', 'Silurus glanis', 10, 100),
(5, 'Leszcz', 'Abramis brama', 1.5, 35),
(6, 'Sandacz', 'Sander lucioperca', 3, 60),
(7, 'Węgorz', 'Anguilla anguilla', 2, 80),
(8, 'Karaś', 'Carassius carassius', 0.8, 25),
(9, 'Płoć', 'Rutilus rutilus', 0.5, 20),
(10, 'Okoń', 'Perca fluviatilis', 1, 30),
(11, 'Troć', 'Salmo trutta', 2.3, 45),
(12, 'Łosoś', 'Salmo salar', 5, 85),
(13, 'Kleń', 'Squalius cephalus', 1.1, 28),
(14, 'Brzana', 'Barbus barbus', 2.7, 50),
(15, 'Lin', 'Tinca tinca', 1.8, 38),
(16, 'Tołpyga', 'Hypophthalmichthys molitrix', 4.5, 75),
(17, 'Amur', 'Ctenopharyngodon idella', 3.8, 65),
(18, 'Jesiotr', 'Acipenser sturio', 6, 90),
(19, 'Pstrąg tęczowy', 'Oncorhynchus mykiss', 1.4, 32),
(20, 'Pstrąg potokowy', 'Salmo trutta fario', 1.6, 34),
(21, 'Pstrąg źródlany', 'Salvelinus fontinalis', 1.3, 31),
(22, 'Sielawa', 'Coregonus albula', 0.7, 22),
(23, 'Sieja', 'Coregonus lavaretus', 1.9, 40),
(24, 'Kiełb', 'Gobio gobio', 0.2, 15),
(25, 'Wzdręga', 'Scardinius erythrophthalmus', 0.6, 21),
(26, 'Boleń', 'Aspius aspius', 2.2, 48),
(27, 'Certa', 'Vimba vimba', 1, 29),
(28, 'Świnka', 'Chondrostoma nasus', 1.5, 36),
(29, 'Uklei', 'Alburnus alburnus', 0.3, 18),
(30, 'Głowacica', 'Hucho hucho', 4.8, 78),
(31, 'Miętus', 'Lota lota', 2.1, 47),
(32, 'Wzdręga', 'Scardinius erythrophthalmus', 0.6, 21),
(33, 'Kiełb', 'Gobio gobio', 0.2, 15),
(34, 'Boleń', 'Aspius aspius', 2.2, 48),
(35, 'Certa', 'Vimba vimba', 1, 29),
(36, 'Świnka', 'Chondrostoma nasus', 1.5, 36),
(37, 'Uklei', 'Alburnus alburnus', 0.3, 18),
(38, 'Głowacica', 'Hucho hucho', 4.8, 78),
(39, 'Miętus', 'Lota lota', 2.1, 47),
(40, 'Wzdręga', 'Scardinius erythrophthalmus', 0.6, 21),
(41, 'Kiełb', 'Gobio gobio', 0.2, 15),
(42, 'Boleń', 'Aspius aspius', 2.2, 48),
(43, 'Certa', 'Vimba vimba', 1, 29),
(44, 'Świnka', 'Chondrostoma nasus', 1.5, 36),
(45, 'Uklei', 'Alburnus alburnus', 0.3, 18),
(46, 'Głowacica', 'Hucho hucho', 4.8, 78),
(47, 'Miętus', 'Lota lota', 2.1, 47),
(48, 'Wzdręga', 'Scardinius erythrophthalmus', 0.6, 21),
(49, 'Kiełb', 'Gobio gobio', 0.2, 15),
(50, 'Boleń', 'Aspius aspius', 2.2, 48),
(51, 'Certa', 'Vimba vimba', 1, 29),
(52, 'Świnka', 'Chondrostoma nasus', 1.5, 36),
(53, 'Uklei', 'Alburnus alburnus', 0.3, 18),
(54, 'Głowacica', 'Hucho hucho', 4.8, 78),
(55, 'Miętus', 'Lota lota', 2.1, 47),
(56, 'Wzdręga', 'Scardinius erythrophthalmus', 0.6, 21),
(57, 'Kiełb', 'Gobio gobio', 0.2, 15),
(58, 'Boleń', 'Aspius aspius', 2.2, 48),
(59, 'Certa', 'Vimba vimba', 1, 29),
(60, 'Świnka', 'Chondrostoma nasus', 1.5, 36),
(61, 'Uklei', 'Alburnus alburnus', 0.3, 18),
(62, 'Głowacica', 'Hucho hucho', 4.8, 78),
(63, 'Miętus', 'Lota lota', 2.1, 47),
(64, 'Wzdręga', 'Scardinius erythrophthalmus', 0.6, 21),
(65, 'Kiełb', 'Gobio gobio', 0.2, 15),
(66, 'Boleń', 'Aspius aspius', 2.2, 48),
(67, 'Certa', 'Vimba vimba', 1, 29),
(68, 'Świnka', 'Chondrostoma nasus', 1.5, 36),
(69, 'Uklei', 'Alburnus alburnus', 0.3, 18),
(70, 'Głowacica', 'Hucho hucho', 4.8, 78),
(71, 'Miętus', 'Lota lota', 2.1, 47),
(72, 'Wzdręga', 'Scardinius erythrophthalmus', 0.6, 21),
(73, 'Kiełb', 'Gobio gobio', 0.2, 15),
(74, 'Boleń', 'Aspius aspius', 2.2, 48),
(75, 'Certa', 'Vimba vimba', 1, 29),
(76, 'Świnka', 'Chondrostoma nasus', 1.5, 36),
(77, 'Uklei', 'Alburnus alburnus', 0.3, 18),
(78, 'Głowacica', 'Hucho hucho', 4.8, 14),
(79, 'Miętus', 'Lota lota', 2.1, 47),
(80, 'Wzdręga', 'Scardinius erythrophthalmus', 0.6, 21),
(81, 'Kiełb', 'Gobio gobio', 0.2, 15),
(82, 'Boleń', 'Aspius aspius', 2.2, 48),
(83, 'Certa', 'Vimba vimba', 1, 29),
(84, 'Świnka', 'Chondrostoma nasus', 1.5, 36),
(85, 'Uklei', 'Alburnus alburnus', 0.3, 18),
(86, 'Głowacica', 'Hucho hucho', 4.8, 78),
(87, 'Miętus', 'Lota lota', 2.1, 47),
(88, 'Wzdręga', 'Scardinius erythrophthalmus', 0.6, 21),
(89, 'Kiełb', 'Gobio gobio', 0.2, 15),
(90, 'Boleń', 'Aspius aspius', 2.2, 48),
(91, 'Certa', 'Vimba vimba', 1, 29),
(92, 'Świnka', 'Chondrostoma nasus', 1.5, 36),
(93, 'Uklei', 'Alburnus alburnus', 0.3, 18),
(94, 'Głowacica', 'Hucho hucho', 4.8, 78),
(95, 'Miętus', 'Lota lota', 2.1, 47),
(96, 'Wzdręga', 'Scardinius erythrophthalmus', 0.6, 21),
(97, 'Kiełb', 'Gobio gobio', 0.2, 40.3),
(98, 'Boleń', 'Aspius aspius', 2.2, 48),
(99, 'Certa', 'Vimba vimba', 1, 29),
(100, 'Świnka', 'Chondrostoma nasus', 1.5, 36),
(101, 'Uklei', 'Alburnus alburnus', 0.3, 18),
(102, 'Głowacica', 'Hucho hucho', 4.8, 78),
(103, 'Miętus', 'Lota lota', 2.1, 47),
(104, 'Wzdręga', 'Scardinius erythrophthalmus', 0.6, 21),
(105, 'Kiełb', 'Gobio gobio', 0.2, 15),
(106, 'Boleń', 'Aspius aspius', 2.2, 48),
(107, 'Certa', 'Vimba vimba', 1, 29),
(108, 'Świnka', 'Chondrostoma nasus', 1.5, 36),
(109, 'Uklei', 'Alburnus alburnus', 0.3, 18),
(110, 'Głowacica', 'Hucho hucho', 4.8, 78),
(111, 'Miętus', 'Lota lota', 2.1, 47),
(112, 'Wzdręga', 'Scardinius erythrophthalmus', 0.6, 21),
(113, 'Kiełb', 'Gobio gobio', 0.2, 15),
(114, 'Boleń', 'Aspius aspius', 2.2, 48),
(115, 'Certa', 'Vimba vimba', 1, 29),
(116, 'Świnka', 'Chondrostoma nasus', 1.5, 36),
(117, 'Uklei', 'Alburnus alburnus', 0.3, 18),
(118, 'Głowacica', 'Hucho hucho', 4.8, 78),
(119, 'Miętus', 'Lota lota', 2.1, 47),
(120, 'Wzdręga', 'Scardinius erythrophthalmus', 0.6, 21),
(121, 'Kiełb', 'Gobio gobio', 0.2, 15),
(122, 'Boleń', 'Aspius aspius', 2.2, 48),
(123, 'Certa', 'Vimba vimba', 1, 29),
(124, 'Świnka', 'Chondrostoma nasus', 1.5, 36),
(125, 'Uklei', 'Alburnus alburnus', 0.3, 18),
(126, 'Głowacica', 'Hucho hucho', 4.8, 78),
(127, 'Miętus', 'Lota lota', 2.1, 47),
(128, 'Wzdręga', 'Scardinius erythrophthalmus', 0.6, 21),
(129, 'Kiełb', 'Gobio gobio', 0.2, 15),
(130, 'Boleń', 'Aspius aspius', 2.2, 48),
(131, 'Certa', 'Vimba vimba', 1, 29),
(132, 'Świnka', 'Chondrostoma nasus', 1.5, 36),
(133, 'Uklei', 'Alburnus alburnus', 0.3, 18),
(134, 'Głowacica', 'Hucho hucho', 4.8, 78),
(135, 'Miętus', 'Lota lota', 2.1, 47),
(136, 'Wzdręga', 'Scardinius erythrophthalmus', 0.6, 21),
(137, 'Kiełb', 'Gobio gobio', 0.2, 15),
(138, 'Boleń', 'Aspius aspius', 2.2, 48),
(139, 'Certa', 'Vimba vimba', 1, 29),
(140, 'Świnka', 'Chondrostoma nasus', 1.5, 36),
(141, 'Uklei', 'Alburnus alburnus', 0.3, 18),
(142, 'Głowacica', 'Hucho hucho', 4.8, 78),
(143, 'Miętus', 'Lota lota', 2.1, 47),
(144, 'Wzdręga', 'Scardinius erythrophthalmus', 0.6, 21),
(145, 'Kiełb', 'Gobio gobio', 0.2, 15),
(146, 'Boleń', 'Aspius aspius', 2.2, 48),
(147, 'Certa', 'Vimba vimba', 1, 29),
(148, 'Świnka', 'Chondrostoma nasus', 1.5, 36),
(149, 'Uklei', 'Alburnus alburnus', 0.3, 18),
(150, 'Głowacica', 'Hucho hucho', 4.8, 78),
(151, 'Miętus', 'Lota lota', 2.1, 47),
(152, 'Wzdręga', 'Scardinius erythrophthalmus', 0.6, 21),
(153, 'Kiełb', 'Gobio gobio', 0.2, 15),
(154, 'Boleń', 'Aspius aspius', 2.2, 3.2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wedkarze`
--

CREATE TABLE `wedkarze` (
  `id_wedkarza` int(11) NOT NULL,
  `imie` varchar(300) NOT NULL,
  `nazwisko` varchar(300) NOT NULL,
  `wiek` int(11) NOT NULL,
  `miasto` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `wedkarze`
--

INSERT INTO `wedkarze` (`id_wedkarza`, `imie`, `nazwisko`, `wiek`, `miasto`) VALUES
(1, 'Jan', 'Kowalski', 45, 'Warszawa'),
(2, 'Piotr', 'Nowak', 34, 'Kraków'),
(3, 'Anna', 'Wiśniewska', 29, 'Gdańsk'),
(4, 'Katarzyna', 'Wójcik', 41, 'Poznań'),
(5, 'Tomasz', 'Kowalczyk', 38, 'Wrocław'),
(6, 'Marek', 'Kamiński', 50, 'Łódź'),
(7, 'Paweł', 'Lewandowski', 33, 'Szczecin'),
(8, 'Magdalena', 'Zielińska', 27, 'Lublin'),
(9, 'Agnieszka', 'Szymańska', 36, 'Katowice'),
(10, 'Michał', 'Woźniak', 42, 'Bydgoszcz'),
(11, 'Joanna', 'Dąbrowska', 31, 'Białystok'),
(12, 'Grzegorz', 'Kozłowski', 39, 'Gdynia'),
(13, 'Monika', 'Jankowska', 28, 'Częstochowa'),
(14, 'Krzysztof', 'Mazur', 47, 'Radom'),
(15, 'Ewa', 'Krawczyk', 35, 'Sosnowiec'),
(16, 'Rafał', 'Piotrowski', 32, 'Toruń'),
(17, 'Beata', 'Grabowska', 40, 'Kielce'),
(18, 'Adam', 'Pawlak', 44, 'Rzeszów'),
(19, 'Dorota', 'Michalska', 30, 'Gliwice'),
(20, 'Łukasz', 'Zając', 37, 'Zabrze'),
(21, 'Sylwia', 'Król', 26, 'Olsztyn'),
(22, 'Wojciech', 'Wieczorek', 48, 'Bielsko-Biała'),
(23, 'Natalia', 'Jabłońska', 33, 'Rybnik'),
(24, 'Marcin', 'Wróbel', 43, 'Ruda Śląska'),
(25, 'Izabela', 'Stępień', 29, 'Racibórz'),
(26, 'Sebastian', 'Górski', 41, 'Tarnów'),
(27, 'Patrycja', 'Kaczmarek', 34, 'Opole'),
(28, 'Dariusz', 'Włodarczyk', 46, 'Legnica'),
(29, 'Karolina', 'Borkowska', 28, 'Grudziądz'),
(30, 'Bartłomiej', 'Sikora', 39, 'Siedlce'),
(31, 'Alicja', 'Lis', 32, 'Płock'),
(32, 'Mariusz', 'Adamski', 45, 'Elbląg'),
(33, 'Justyna', 'Głowacka', 27, 'Wałbrzych'),
(34, 'Artur', 'Czarnecki', 36, 'Zielona Góra'),
(35, 'Paulina', 'Sawicka', 31, 'Koszalin'),
(36, 'Andrzej', 'Szulc', 44, 'Kalisz'),
(37, 'Klaudia', 'Baran', 30, 'Włocławek'),
(38, 'Damian', 'Błaszczyk', 38, 'Gorzów Wielkopolski'),
(39, 'Iwona', 'Chmielewska', 35, 'Nowy Sącz'),
(40, 'Kamil', 'Kubiak', 42, 'Jelenia Góra'),
(41, 'Zuzanna', 'Sokołowska', 29, 'Siedlce'),
(42, 'Przemysław', 'Kucharski', 37, 'Piła'),
(43, 'Aleksandra', 'Urbańska', 33, 'Ostrołęka'),
(44, 'Mateusz', 'Wilk', 40, 'Stalowa Wola'),
(45, 'Barbara', 'Rutkowska', 31, 'Tarnobrzeg'),
(46, 'Jakub', 'Szczepański', 46, 'Przemyśl'),
(47, 'Renata', 'Kowal', 34, 'Mielec'),
(48, 'Szymon', 'Matuszewski', 41, 'Tczew'),
(49, 'Ewelina', 'Kaczmarczyk', 28, 'Świdnica'),
(50, 'Piotr', 'Wysocki', 39, 'Biała Podlaska'),
(51, 'Aneta', 'Kozioł', 32, 'Zamość'),
(52, 'Radosław', 'Kowalik', 45, 'Chełm'),
(53, 'Joanna', 'Kowalewska', 27, 'Leszno'),
(54, 'Tomasz', 'Kowalski', 36, 'Ostrów Wielkopolski'),
(55, 'Magdalena', 'Nowicka', 31, 'Zgierz'),
(56, 'Michał', 'Kowalski', 44, 'Piotrków Trybunalski'),
(57, 'Anna', 'Kowalska', 30, 'Inowrocław'),
(58, 'Katarzyna', 'Kowalska', 38, 'Lublin'),
(59, 'Paweł', 'Kowalski', 35, 'Oświęcim'),
(60, 'Marek', 'Kowalski', 42, 'Olkusz'),
(61, 'Piotr', 'Kowalski', 29, 'Nowa Sól'),
(62, 'Jan', 'Kowalski', 37, 'Świnoujście'),
(63, 'Tomasz', 'Kowalski', 33, 'Kołobrzeg'),
(64, 'Michał', 'Kowalski', 40, 'Kędzierzyn-Koźle'),
(65, 'Anna', 'Kowalska', 31, 'Puławy'),
(66, 'Katarzyna', 'Kowalska', 46, 'Starachowice'),
(67, 'Paweł', 'Kowalski', 34, 'Skierniewice'),
(68, 'Marek', 'Kowalski', 41, 'Sieradz'),
(69, 'Piotr', 'Kowalski', 28, 'Ostróda'),
(70, 'Jan', 'Kowalski', 39, 'Krosno'),
(71, 'Tomasz', 'Kowalski', 32, 'Sanok'),
(72, 'Michał', 'Kowalski', 45, 'Jarosław'),
(73, 'Anna', 'Kowalska', 27, 'Świdnik'),
(74, 'Katarzyna', 'Kowalska', 36, 'Żary'),
(75, 'Paweł', 'Kowalski', 31, 'Żagań'),
(76, 'Marek', 'Kowalski', 44, 'Łomża'),
(77, 'Piotr', 'Kowalski', 30, 'Augustów'),
(78, 'Jan', 'Kowalski', 38, 'Bielsk Podlaski'),
(79, 'Tomasz', 'Kowalski', 35, 'Hajnówka'),
(80, 'Michał', 'Kowalski', 42, 'Łapy'),
(81, 'Anna', 'Kowalska', 29, 'Siemiatycze'),
(82, 'Katarzyna', 'Kowalska', 37, 'Sokółka'),
(83, 'Paweł', 'Kowalski', 34, 'Wysokie Mazowieckie'),
(84, 'Marek', 'Kowalski', 41, 'Zambrów'),
(85, 'Piotr', 'Kowalski', 28, 'Grajewo'),
(86, 'Jan', 'Kowalski', 39, 'Mońki'),
(87, 'Tomasz', 'Kowalski', 32, 'Kolno'),
(88, 'Michał', 'Kowalski', 45, 'Sejny'),
(89, 'Anna', 'Kowalska', 27, 'Suwałki'),
(90, 'Katarzyna', 'Kowalska', 36, 'Ełk'),
(91, 'Paweł', 'Królik', 23, 'Gdańsk'),
(92, 'Krzysztof', 'Kowal', 25, 'Gdynia'),
(93, 'Katarzyna', 'Kowalska', 26, 'Sopot'),
(94, 'Piotr', 'Kowalski', 28, 'Warszawa'),
(95, 'Anna', 'Kowalska', 29, 'Kraków'),
(96, 'Tomasz', 'Kowalski', 30, 'Poznań'),
(97, 'Michał', 'Kowalski', 31, 'Wrocław'),
(98, 'Katarzyna', 'Kowalska', 32, 'Łódź'),
(99, 'Paweł', 'Kowalski', 33, 'Szczecin'),
(100, 'Marek', 'Kowalski', 34, 'Lublin'),
(101, 'Piotr', 'Kowalski', 35, 'Katowice'),
(102, 'Anna', 'Kowalska', 36, 'Bydgoszcz'),
(103, 'Tomasz', 'Kowalski', 37, 'Białystok'),
(104, 'Michał', 'Kowalski', 38, 'Gdynia'),
(105, 'Katarzyna', 'Kowalska', 39, 'Częstochowa'),
(106, 'Paweł', 'Kowalski', 40, 'Radom'),
(107, 'Marek', 'Kowalski', 41, 'Sosnowiec'),
(108, 'Piotr', 'Kowalski', 42, 'Toruń'),
(109, 'Anna', 'Kowalska', 43, 'Kielce'),
(110, 'Tomasz', 'Kowalski', 44, 'Rzeszów'),
(111, 'Michał', 'Kowalski', 45, 'Gliwice'),
(112, 'Katarzyna', 'Kowalska', 46, 'Zabrze'),
(113, 'Paweł', 'Kowalski', 47, 'Olsztyn'),
(114, 'Marek', 'Sacha', 34, 'Gdańsk');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `polowy`
--
ALTER TABLE `polowy`
  ADD PRIMARY KEY (`id_polowu`),
  ADD KEY `FK_wedkarze_id_wedkarze` (`id_wedkarza`),
  ADD KEY `FK_ryby_id_ryby` (`id_ryby`);

--
-- Indeksy dla tabeli `ryby`
--
ALTER TABLE `ryby`
  ADD PRIMARY KEY (`id_ryby`);

--
-- Indeksy dla tabeli `wedkarze`
--
ALTER TABLE `wedkarze`
  ADD PRIMARY KEY (`id_wedkarza`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `polowy`
--
ALTER TABLE `polowy`
  MODIFY `id_polowu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `ryby`
--
ALTER TABLE `ryby`
  MODIFY `id_ryby` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `wedkarze`
--
ALTER TABLE `wedkarze`
  MODIFY `id_wedkarza` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `polowy`
--
ALTER TABLE `polowy`
  ADD CONSTRAINT `FK_ryby_id_ryby` FOREIGN KEY (`id_ryby`) REFERENCES `ryby` (`id_ryby`),
  ADD CONSTRAINT `FK_wedkarze_id_wedkarze` FOREIGN KEY (`id_wedkarza`) REFERENCES `wedkarze` (`id_wedkarza`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
