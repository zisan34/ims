-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2019 at 05:03 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ims`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(4, '2014_10_12_000000_create_users_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 1),
(6, '2019_10_22_193011_create_products_table', 1),
(7, '2019_10_22_193628_create_price_timelines_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `price_timelines`
--

CREATE TABLE `price_timelines` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `price_timelines`
--

INSERT INTO `price_timelines` (`id`, `product_id`, `start_date`, `end_date`, `price`, `created_at`, `updated_at`) VALUES
(166, 2, '2019-11-08 18:00:00', '2019-11-09 18:00:00', 131, '2019-11-08 05:20:44', '2019-11-08 05:20:44'),
(167, 2, '2019-11-09 18:00:00', '2019-11-10 18:00:00', 135, '2019-11-08 05:20:44', '2019-11-08 05:20:44'),
(168, 2, '2019-11-10 18:00:00', '2019-11-11 18:00:00', 130, '2019-11-08 05:20:44', '2019-11-08 05:20:44'),
(169, 2, '2019-11-11 18:00:00', '2019-11-12 18:00:00', 127, '2019-11-08 05:20:44', '2019-11-08 05:20:44'),
(170, 2, '2019-11-12 18:00:00', '2019-11-13 18:00:00', 119, '2019-11-08 05:20:44', '2019-11-08 05:20:44'),
(171, 2, '2019-11-13 18:00:00', '2019-11-14 18:00:00', 100, '2019-11-08 05:20:44', '2019-11-08 05:20:44'),
(173, 4, '2019-11-08 18:00:00', '2019-11-09 18:00:00', 119, '2019-11-08 05:20:44', '2019-11-08 05:20:44'),
(174, 4, '2019-11-09 18:00:00', '2019-11-10 18:00:00', 137, '2019-11-08 05:20:44', '2019-11-08 05:20:44'),
(175, 4, '2019-11-10 18:00:00', '2019-11-11 18:00:00', 106, '2019-11-08 05:20:44', '2019-11-08 05:20:44'),
(176, 4, '2019-11-11 18:00:00', '2019-11-12 18:00:00', 133, '2019-11-08 05:20:45', '2019-11-08 05:20:45'),
(177, 4, '2019-11-12 18:00:00', '2019-11-13 18:00:00', 102, '2019-11-08 05:20:45', '2019-11-08 05:20:45'),
(178, 4, '2019-11-13 18:00:00', '2019-11-14 18:00:00', 146, '2019-11-08 05:20:45', '2019-11-08 05:20:45'),
(180, 5, '2019-11-08 18:00:00', '2019-11-09 18:00:00', 147, '2019-11-08 05:20:45', '2019-11-08 05:20:45'),
(181, 5, '2019-11-09 18:00:00', '2019-11-10 18:00:00', 142, '2019-11-08 05:20:45', '2019-11-08 05:20:45'),
(182, 5, '2019-11-10 18:00:00', '2019-11-11 18:00:00', 138, '2019-11-08 05:20:45', '2019-11-08 05:20:45'),
(183, 5, '2019-11-11 18:00:00', '2019-11-12 18:00:00', 130, '2019-11-08 05:20:45', '2019-11-08 05:20:45'),
(184, 5, '2019-11-12 18:00:00', '2019-11-13 18:00:00', 103, '2019-11-08 05:20:45', '2019-11-08 05:20:45'),
(185, 5, '2019-11-13 18:00:00', '2019-11-14 18:00:00', 120, '2019-11-08 05:20:45', '2019-11-08 05:20:45'),
(187, 6, '2019-11-08 18:00:00', '2019-11-09 18:00:00', 149, '2019-11-08 05:20:45', '2019-11-08 05:20:45'),
(188, 6, '2019-11-09 18:00:00', '2019-11-10 18:00:00', 114, '2019-11-08 05:20:45', '2019-11-08 05:20:45'),
(189, 6, '2019-11-10 18:00:00', '2019-11-11 18:00:00', 122, '2019-11-08 05:20:45', '2019-11-08 05:20:45'),
(190, 6, '2019-11-11 18:00:00', '2019-11-12 18:00:00', 115, '2019-11-08 05:20:45', '2019-11-08 05:20:45'),
(191, 6, '2019-11-12 18:00:00', '2019-11-13 18:00:00', 135, '2019-11-08 05:20:45', '2019-11-08 05:20:45'),
(192, 6, '2019-11-13 18:00:00', '2019-11-14 18:00:00', 107, '2019-11-08 05:20:45', '2019-11-08 05:20:45'),
(194, 7, '2019-11-08 18:00:00', '2019-11-09 18:00:00', 109, '2019-11-08 05:20:45', '2019-11-08 05:20:45'),
(195, 7, '2019-11-09 18:00:00', '2019-11-10 18:00:00', 132, '2019-11-08 05:20:45', '2019-11-08 05:20:45'),
(196, 7, '2019-11-10 18:00:00', '2019-11-11 18:00:00', 119, '2019-11-08 05:20:45', '2019-11-08 05:20:45'),
(197, 7, '2019-11-11 18:00:00', '2019-11-12 18:00:00', 133, '2019-11-08 05:20:45', '2019-11-08 05:20:45'),
(198, 7, '2019-11-12 18:00:00', '2019-11-13 18:00:00', 121, '2019-11-08 05:20:45', '2019-11-08 05:20:45'),
(199, 7, '2019-11-13 18:00:00', '2019-11-14 18:00:00', 122, '2019-11-08 05:20:45', '2019-11-08 05:20:45'),
(201, 8, '2019-11-08 18:00:00', '2019-11-09 18:00:00', 148, '2019-11-08 05:20:45', '2019-11-08 05:20:45'),
(202, 8, '2019-11-09 18:00:00', '2019-11-10 18:00:00', 111, '2019-11-08 05:20:45', '2019-11-08 05:20:45'),
(203, 8, '2019-11-10 18:00:00', '2019-11-11 18:00:00', 142, '2019-11-08 05:20:46', '2019-11-08 05:20:46'),
(204, 8, '2019-11-11 18:00:00', '2019-11-12 18:00:00', 150, '2019-11-08 05:20:46', '2019-11-08 05:20:46'),
(205, 8, '2019-11-12 18:00:00', '2019-11-13 18:00:00', 104, '2019-11-08 05:20:46', '2019-11-08 05:20:46'),
(206, 8, '2019-11-13 18:00:00', '2019-11-14 18:00:00', 121, '2019-11-08 05:20:46', '2019-11-08 05:20:46'),
(208, 9, '2019-11-08 18:00:00', '2019-11-09 18:00:00', 145, '2019-11-08 05:20:46', '2019-11-08 05:20:46'),
(209, 9, '2019-11-09 18:00:00', '2019-11-10 18:00:00', 136, '2019-11-08 05:20:46', '2019-11-08 05:20:46'),
(210, 9, '2019-11-10 18:00:00', '2019-11-11 18:00:00', 126, '2019-11-08 05:20:46', '2019-11-08 05:20:46'),
(211, 9, '2019-11-11 18:00:00', '2019-11-12 18:00:00', 125, '2019-11-08 05:20:46', '2019-11-08 05:20:46'),
(212, 9, '2019-11-12 18:00:00', '2019-11-13 18:00:00', 124, '2019-11-08 05:20:46', '2019-11-08 05:20:46'),
(213, 9, '2019-11-13 18:00:00', '2019-11-14 18:00:00', 109, '2019-11-08 05:20:46', '2019-11-08 05:20:46'),
(215, 10, '2019-11-08 18:00:00', '2019-11-09 18:00:00', 104, '2019-11-08 05:20:46', '2019-11-08 05:20:46'),
(216, 10, '2019-11-09 18:00:00', '2019-11-10 18:00:00', 128, '2019-11-08 05:20:46', '2019-11-08 05:20:46'),
(217, 10, '2019-11-10 18:00:00', '2019-11-11 18:00:00', 139, '2019-11-08 05:20:46', '2019-11-08 05:20:46'),
(218, 10, '2019-11-11 18:00:00', '2019-11-12 18:00:00', 118, '2019-11-08 05:20:46', '2019-11-08 05:20:46'),
(219, 10, '2019-11-12 18:00:00', '2019-11-13 18:00:00', 133, '2019-11-08 05:20:46', '2019-11-08 05:20:46'),
(220, 10, '2019-11-13 18:00:00', '2019-11-14 18:00:00', 133, '2019-11-08 05:20:46', '2019-11-08 05:20:46'),
(222, 11, '2019-11-08 18:00:00', '2019-11-09 18:00:00', 111, '2019-11-08 05:20:46', '2019-11-08 05:20:46'),
(223, 11, '2019-11-09 18:00:00', '2019-11-10 18:00:00', 126, '2019-11-08 05:20:46', '2019-11-08 05:20:46'),
(224, 11, '2019-11-10 18:00:00', '2019-11-11 18:00:00', 132, '2019-11-08 05:20:46', '2019-11-08 05:20:46'),
(225, 11, '2019-11-11 18:00:00', '2019-11-12 18:00:00', 140, '2019-11-08 05:20:46', '2019-11-08 05:20:46'),
(226, 11, '2019-11-12 18:00:00', '2019-11-13 18:00:00', 131, '2019-11-08 05:20:46', '2019-11-08 05:20:46'),
(227, 11, '2019-11-13 18:00:00', '2019-11-14 18:00:00', 114, '2019-11-08 05:20:46', '2019-11-08 05:20:46'),
(229, 2, '2019-11-08 18:00:00', '2019-11-07 18:00:00', 121, '2019-11-09 09:41:15', '2019-11-09 09:41:15'),
(230, 2, '2019-11-07 18:00:00', '2019-11-06 18:00:00', 141, '2019-11-09 09:41:15', '2019-11-09 09:41:15'),
(231, 2, '2019-11-06 18:00:00', '2019-11-05 18:00:00', 133, '2019-11-09 09:41:15', '2019-11-09 09:41:15'),
(232, 2, '2019-11-05 18:00:00', '2019-11-04 18:00:00', 134, '2019-11-09 09:41:15', '2019-11-09 09:41:15'),
(233, 2, '2019-11-04 18:00:00', '2019-11-03 18:00:00', 120, '2019-11-09 09:41:15', '2019-11-09 09:41:15'),
(234, 2, '2019-11-03 18:00:00', '2019-11-02 18:00:00', 142, '2019-11-09 09:41:15', '2019-11-09 09:41:15'),
(235, 2, '2019-11-02 18:00:00', '2019-11-01 18:00:00', 110, '2019-11-09 09:41:15', '2019-11-09 09:41:15'),
(236, 4, '2019-11-08 18:00:00', '2019-11-07 18:00:00', 106, '2019-11-09 09:41:15', '2019-11-09 09:41:15'),
(237, 4, '2019-11-07 18:00:00', '2019-11-06 18:00:00', 142, '2019-11-09 09:41:15', '2019-11-09 09:41:15'),
(238, 4, '2019-11-06 18:00:00', '2019-11-05 18:00:00', 148, '2019-11-09 09:41:15', '2019-11-09 09:41:15'),
(239, 4, '2019-11-05 18:00:00', '2019-11-04 18:00:00', 122, '2019-11-09 09:41:15', '2019-11-09 09:41:15'),
(240, 4, '2019-11-04 18:00:00', '2019-11-03 18:00:00', 130, '2019-11-09 09:41:15', '2019-11-09 09:41:15'),
(241, 4, '2019-11-03 18:00:00', '2019-11-02 18:00:00', 121, '2019-11-09 09:41:15', '2019-11-09 09:41:15'),
(242, 4, '2019-11-02 18:00:00', '2019-11-01 18:00:00', 114, '2019-11-09 09:41:15', '2019-11-09 09:41:15'),
(243, 5, '2019-11-08 18:00:00', '2019-11-07 18:00:00', 121, '2019-11-09 09:41:15', '2019-11-09 09:41:15'),
(244, 5, '2019-11-07 18:00:00', '2019-11-06 18:00:00', 100, '2019-11-09 09:41:16', '2019-11-09 09:41:16'),
(245, 5, '2019-11-06 18:00:00', '2019-11-05 18:00:00', 147, '2019-11-09 09:41:16', '2019-11-09 09:41:16'),
(246, 5, '2019-11-05 18:00:00', '2019-11-04 18:00:00', 113, '2019-11-09 09:41:16', '2019-11-09 09:41:16'),
(247, 5, '2019-11-04 18:00:00', '2019-11-03 18:00:00', 143, '2019-11-09 09:41:16', '2019-11-09 09:41:16'),
(248, 5, '2019-11-03 18:00:00', '2019-11-02 18:00:00', 114, '2019-11-09 09:41:16', '2019-11-09 09:41:16'),
(249, 5, '2019-11-02 18:00:00', '2019-11-01 18:00:00', 117, '2019-11-09 09:41:16', '2019-11-09 09:41:16'),
(250, 6, '2019-11-08 18:00:00', '2019-11-07 18:00:00', 103, '2019-11-09 09:41:16', '2019-11-09 09:41:16'),
(251, 6, '2019-11-07 18:00:00', '2019-11-06 18:00:00', 116, '2019-11-09 09:41:16', '2019-11-09 09:41:16'),
(252, 6, '2019-11-06 18:00:00', '2019-11-05 18:00:00', 133, '2019-11-09 09:41:16', '2019-11-09 09:41:16'),
(253, 6, '2019-11-05 18:00:00', '2019-11-04 18:00:00', 132, '2019-11-09 09:41:16', '2019-11-09 09:41:16'),
(254, 6, '2019-11-04 18:00:00', '2019-11-03 18:00:00', 102, '2019-11-09 09:41:16', '2019-11-09 09:41:16'),
(255, 6, '2019-11-03 18:00:00', '2019-11-02 18:00:00', 120, '2019-11-09 09:41:16', '2019-11-09 09:41:16'),
(256, 6, '2019-11-02 18:00:00', '2019-11-01 18:00:00', 137, '2019-11-09 09:41:16', '2019-11-09 09:41:16'),
(257, 7, '2019-11-08 18:00:00', '2019-11-07 18:00:00', 133, '2019-11-09 09:41:16', '2019-11-09 09:41:16'),
(258, 7, '2019-11-07 18:00:00', '2019-11-06 18:00:00', 141, '2019-11-09 09:41:16', '2019-11-09 09:41:16'),
(259, 7, '2019-11-06 18:00:00', '2019-11-05 18:00:00', 142, '2019-11-09 09:41:16', '2019-11-09 09:41:16'),
(260, 7, '2019-11-05 18:00:00', '2019-11-04 18:00:00', 111, '2019-11-09 09:41:16', '2019-11-09 09:41:16'),
(261, 7, '2019-11-04 18:00:00', '2019-11-03 18:00:00', 100, '2019-11-09 09:41:16', '2019-11-09 09:41:16'),
(262, 7, '2019-11-03 18:00:00', '2019-11-02 18:00:00', 140, '2019-11-09 09:41:16', '2019-11-09 09:41:16'),
(263, 7, '2019-11-02 18:00:00', '2019-11-01 18:00:00', 108, '2019-11-09 09:41:16', '2019-11-09 09:41:16'),
(264, 8, '2019-11-08 18:00:00', '2019-11-07 18:00:00', 126, '2019-11-09 09:41:16', '2019-11-09 09:41:16'),
(265, 8, '2019-11-07 18:00:00', '2019-11-06 18:00:00', 132, '2019-11-09 09:41:16', '2019-11-09 09:41:16'),
(266, 8, '2019-11-06 18:00:00', '2019-11-05 18:00:00', 136, '2019-11-09 09:41:16', '2019-11-09 09:41:16'),
(267, 8, '2019-11-05 18:00:00', '2019-11-04 18:00:00', 146, '2019-11-09 09:41:16', '2019-11-09 09:41:16'),
(268, 8, '2019-11-04 18:00:00', '2019-11-03 18:00:00', 127, '2019-11-09 09:41:16', '2019-11-09 09:41:16'),
(269, 8, '2019-11-03 18:00:00', '2019-11-02 18:00:00', 103, '2019-11-09 09:41:16', '2019-11-09 09:41:16'),
(270, 8, '2019-11-02 18:00:00', '2019-11-01 18:00:00', 141, '2019-11-09 09:41:16', '2019-11-09 09:41:16'),
(271, 9, '2019-11-08 18:00:00', '2019-11-07 18:00:00', 111, '2019-11-09 09:41:16', '2019-11-09 09:41:16'),
(272, 9, '2019-11-07 18:00:00', '2019-11-06 18:00:00', 103, '2019-11-09 09:41:17', '2019-11-09 09:41:17'),
(273, 9, '2019-11-06 18:00:00', '2019-11-05 18:00:00', 124, '2019-11-09 09:41:17', '2019-11-09 09:41:17'),
(274, 9, '2019-11-05 18:00:00', '2019-11-04 18:00:00', 123, '2019-11-09 09:41:17', '2019-11-09 09:41:17'),
(275, 9, '2019-11-04 18:00:00', '2019-11-03 18:00:00', 103, '2019-11-09 09:41:17', '2019-11-09 09:41:17'),
(276, 9, '2019-11-03 18:00:00', '2019-11-02 18:00:00', 135, '2019-11-09 09:41:17', '2019-11-09 09:41:17'),
(277, 9, '2019-11-02 18:00:00', '2019-11-01 18:00:00', 138, '2019-11-09 09:41:17', '2019-11-09 09:41:17'),
(278, 10, '2019-11-08 18:00:00', '2019-11-07 18:00:00', 112, '2019-11-09 09:41:17', '2019-11-09 09:41:17'),
(279, 10, '2019-11-07 18:00:00', '2019-11-06 18:00:00', 150, '2019-11-09 09:41:17', '2019-11-09 09:41:17'),
(280, 10, '2019-11-06 18:00:00', '2019-11-05 18:00:00', 150, '2019-11-09 09:41:17', '2019-11-09 09:41:17'),
(281, 10, '2019-11-05 18:00:00', '2019-11-04 18:00:00', 128, '2019-11-09 09:41:17', '2019-11-09 09:41:17'),
(282, 10, '2019-11-04 18:00:00', '2019-11-03 18:00:00', 148, '2019-11-09 09:41:17', '2019-11-09 09:41:17'),
(283, 10, '2019-11-03 18:00:00', '2019-11-02 18:00:00', 100, '2019-11-09 09:41:17', '2019-11-09 09:41:17'),
(284, 10, '2019-11-02 18:00:00', '2019-11-01 18:00:00', 102, '2019-11-09 09:41:17', '2019-11-09 09:41:17'),
(285, 11, '2019-11-08 18:00:00', '2019-11-07 18:00:00', 137, '2019-11-09 09:41:17', '2019-11-09 09:41:17'),
(286, 11, '2019-11-07 18:00:00', '2019-11-06 18:00:00', 111, '2019-11-09 09:41:17', '2019-11-09 09:41:17'),
(287, 11, '2019-11-06 18:00:00', '2019-11-05 18:00:00', 148, '2019-11-09 09:41:17', '2019-11-09 09:41:17'),
(288, 11, '2019-11-05 18:00:00', '2019-11-04 18:00:00', 141, '2019-11-09 09:41:17', '2019-11-09 09:41:17'),
(289, 11, '2019-11-04 18:00:00', '2019-11-03 18:00:00', 118, '2019-11-09 09:41:17', '2019-11-09 09:41:17'),
(290, 11, '2019-11-03 18:00:00', '2019-11-02 18:00:00', 134, '2019-11-09 09:41:17', '2019-11-09 09:41:17'),
(291, 11, '2019-11-02 18:00:00', '2019-11-01 18:00:00', 116, '2019-11-09 09:41:17', '2019-11-09 09:41:17');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `price`, `quantity`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'doloribus new', NULL, 131, 50, '2019-10-26 10:55:08', '2019-11-09 09:53:51', NULL),
(3, 'fugiat', NULL, 1000, 50, '2019-10-26 10:55:08', '2019-11-08 02:40:34', '2019-11-08 02:40:34'),
(4, 'neque', NULL, 119, 50, '2019-10-26 10:55:08', '2019-11-09 09:53:51', NULL),
(5, 'qui', NULL, 147, 100, '2019-10-26 10:55:08', '2019-11-09 09:55:57', NULL),
(6, 'Fossil Watch', NULL, 149, 15, '2019-10-30 14:01:41', '2019-11-09 09:53:51', NULL),
(7, 'Smart Watch', NULL, 109, 6, '2019-10-30 14:02:38', '2019-11-09 09:53:51', NULL),
(8, 'Wallet edited', NULL, 148, 2, '2019-10-30 14:03:24', '2019-11-09 09:53:51', NULL),
(9, 'Book new', NULL, 145, 20, '2019-10-31 23:50:58', '2019-11-09 09:53:51', NULL),
(10, 'kinley water', NULL, 104, 5, '2019-11-04 12:48:24', '2019-11-09 09:53:51', NULL),
(11, 'kinley water 2', NULL, 111, 10, '2019-11-04 12:51:48', '2019-11-09 09:53:51', NULL),
(12, 'kinley water3', NULL, 15, 15, '2019-11-04 12:52:22', '2019-11-05 13:39:32', '2019-11-05 13:39:32'),
(13, 'kinley 4', NULL, 15, 3, '2019-11-04 12:53:58', '2019-11-05 13:38:30', '2019-11-05 13:38:30'),
(14, 'watch 3', NULL, 12, 10, '2019-11-04 13:15:51', '2019-11-05 13:33:27', '2019-11-05 13:33:27'),
(15, 'test_p', NULL, 50, 10, '2019-11-06 09:34:21', '2019-11-06 09:55:43', '2019-11-06 09:55:43'),
(16, 'test_p2', NULL, 10, 30, '2019-11-06 09:35:36', '2019-11-06 09:40:57', '2019-11-06 09:40:57'),
(17, 'test3', NULL, 10, 10, '2019-11-06 09:36:26', '2019-11-06 09:39:29', '2019-11-06 09:39:29'),
(18, 'test4', NULL, 40, 10, '2019-11-06 09:37:35', '2019-11-06 09:38:59', '2019-11-06 09:38:59'),
(19, 'test3', NULL, 30, 3, '2019-11-06 09:39:47', '2019-11-06 09:41:05', '2019-11-06 09:41:05'),
(20, 'test2', NULL, 10, 20, '2019-11-06 09:41:18', '2019-11-06 09:55:55', '2019-11-06 09:55:55'),
(21, 'test3', NULL, 30, 10, '2019-11-06 09:43:25', '2019-11-06 09:55:54', '2019-11-06 09:55:54'),
(22, 'test4', NULL, 10, 34, '2019-11-06 09:45:29', '2019-11-06 09:55:47', '2019-11-06 09:55:47'),
(23, '12', NULL, 133, 123, '2019-11-06 09:53:00', '2019-11-06 09:56:34', '2019-11-06 09:56:34'),
(24, 'test', NULL, 123, 123, '2019-11-06 09:57:00', '2019-11-08 02:42:47', '2019-11-08 02:42:47'),
(25, 'test2 new', NULL, 12, 12, '2019-11-06 09:58:50', '2019-11-08 02:41:20', '2019-11-08 02:41:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `price_timelines`
--
ALTER TABLE `price_timelines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `price_timelines`
--
ALTER TABLE `price_timelines`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=292;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;