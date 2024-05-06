-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 23, 2023 at 04:41 AM
-- Server version: 10.3.36-MariaDB-cll-lve
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demoroyal_clean_service`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) NOT NULL,
  `header_title` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `experience` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `header_title`, `title`, `experience`, `description`, `number`, `photo`) VALUES
(1, 'make your area amazing', 'One Stop Commercial Cleaning Company', 55, 'Cleaning or maintaining the cleanliness of our surroundings is a practice that all of us are accustomed to. But more often than not, people of our country make the mistake of taking the job of a professional cleaner into their own hands. People tend to do such a thing is because they find hiring a cleaning service company too expensive. Even if they do end up hiring a cleaning service, they tend to cheap out on this. Doing so can result in spending more money than you initially thought. So, let us find out how choosing the proper cleaning services can benefit you in more ways than you are thinking.', '01700000000', '17109821751678613825.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verify_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verify_token`, `phone`, `photo`, `role_id`, `role`, `status`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '', '09000000', '5021030811679304831.png', '0', 'Administrator', 1, '$2y$10$XRwVDuEISDfSl5ATNW59yOlGAb2h/9PJDX5WKErChklrQeDi0wb.i', '1lRvNs4z5D8GCRrY8fFCTekIFaJgMTfUKq3KVArwmgEphBrePgID2umKzQ4R', NULL, '2023-03-20 16:34:21'),
(3, 'showrav Hasan', 'showrabhasan715@gmail.com', NULL, NULL, NULL, NULL, 'Farhad', 1, '$2y$10$WpCFoErUffgj0T59dorrKuJH5Nef6z7PCpgY52XPNbpWUVBrTw/6C', NULL, '2023-03-20 16:32:09', '2023-03-20 16:32:09');

-- --------------------------------------------------------

--
-- Table structure for table `admin_languages`
--

CREATE TABLE `admin_languages` (
  `id` int(191) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `language` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rtl` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_languages`
--

INSERT INTO `admin_languages` (`id`, `is_default`, `language`, `file`, `rtl`) VALUES
(1, 0, 'test', '1638353833MI23H252.json', 0),
(5, 0, 'tet4', '1638353982qIEUykRT.json', 0);

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(191) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `meta_tag` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `category_id`, `title`, `slug`, `photo`, `description`, `source`, `views`, `status`, `meta_tag`, `meta_description`, `tags`, `created_at`, `updated_at`) VALUES
(66, 8, 'Office AC Cooling problem Repair', 'office-ac-cooling-problem-repair', '17799102031678877236.jpg', '<p><span style=\"font-size: 16px; color: rgb(123, 125, 131); font-family: &quot;DM Sans&quot;, sans-serif;\">Cleaning or maintaining the cleanliness of our surroundings is a practice that all of us are accustomed to. But more often than not, people of our country make the mistake of taking the job of a professional cleaner into their own hands. People tend to do such a thing is because they find hiring a cleaning service company too expensive. Even if they do end up hiring a cleaning service, they tend to cheap out on this. Doing so can result in spending more money than you initially thought.</span><br></p><div data-v-3f9453f1=\"\" class=\"service-overview-component\" style=\"margin: 0px 0px 20px; scroll-behavior: smooth; font-family: Poppins, sans-serif; color: rgb(33, 37, 41); font-size: 16px; word-spacing: 1px;\"><h4 data-v-3f9453f1=\"\" class=\"service-overview-component__title\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; line-height: 1.56; font-size: 18px; scroll-behavior: smooth; color: rgba(0, 0, 0, 0.8);\">What\'s Included?</h4><p data-v-3f9453f1=\"\" class=\"service-overview-component__info\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; line-height: 1.5; scroll-behavior: smooth; color: rgb(56, 58, 60);\"></p><div data-v-3f9453f1=\"\" style=\"margin: 0px; scroll-behavior: smooth;\"><ul data-v-3f9453f1=\"\" class=\"list-unordered\" style=\"margin-right: 0px; margin-left: 0px; scroll-behavior: smooth; list-style: none; padding-left: 25px;\"><li data-v-3f9453f1=\"\" style=\"margin: 0px; scroll-behavior: smooth; line-height: 1.5; color: rgb(56, 58, 60); padding-bottom: 10px; padding-left: 0px; position: relative;\"><span data-v-3f9453f1=\"\" style=\"margin: 0px; scroll-behavior: smooth; position: absolute; content: &quot;&quot;; width: 5px; height: 5px; line-height: 16px; border-radius: 50%; background-image: linear-gradient(135deg, rgb(0, 0, 0) 100%, rgb(0, 0, 0) 0px, rgb(0, 0, 0) 0px); color: rgb(255, 255, 255); text-align: center; top: 10px; left: -21px;\"></span>Only service charge</li><li data-v-3f9453f1=\"\" style=\"margin: 0px; scroll-behavior: smooth; line-height: 1.5; color: rgb(56, 58, 60); padding-bottom: 10px; padding-left: 0px; position: relative;\"><span data-v-3f9453f1=\"\" style=\"margin: 0px; scroll-behavior: smooth; position: absolute; content: &quot;&quot;; width: 5px; height: 5px; line-height: 16px; border-radius: 50%; background-image: linear-gradient(135deg, rgb(0, 0, 0) 100%, rgb(0, 0, 0) 0px, rgb(0, 0, 0) 0px); color: rgb(255, 255, 255); text-align: center; top: 10px; left: -21px;\"></span>7 Days service warranty</li></ul></div></div><div data-v-3f9453f1=\"\" class=\"service-overview-component\" style=\"margin: 0px 0px 20px; scroll-behavior: smooth; font-family: Poppins, sans-serif; color: rgb(33, 37, 41); font-size: 16px; word-spacing: 1px;\"><h4 data-v-3f9453f1=\"\" class=\"service-overview-component__title\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; line-height: 1.56; font-size: 18px; scroll-behavior: smooth; color: rgba(0, 0, 0, 0.8);\">What\'s Excluded?</h4><p data-v-3f9453f1=\"\" class=\"service-overview-component__info\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; line-height: 1.5; scroll-behavior: smooth; color: rgb(56, 58, 60);\"></p><div data-v-3f9453f1=\"\" style=\"margin: 0px; scroll-behavior: smooth;\"><ul data-v-3f9453f1=\"\" class=\"list-unordered\" style=\"margin-right: 0px; margin-left: 0px; scroll-behavior: smooth; list-style: none; padding-left: 25px;\"><li data-v-3f9453f1=\"\" style=\"margin: 0px; scroll-behavior: smooth; line-height: 1.5; color: rgb(56, 58, 60); padding-bottom: 10px; padding-left: 0px; position: relative;\"><span data-v-3f9453f1=\"\" style=\"margin: 0px; scroll-behavior: smooth; position: absolute; content: &quot;&quot;; width: 5px; height: 5px; line-height: 16px; border-radius: 50%; background-image: linear-gradient(135deg, rgb(0, 0, 0) 100%, rgb(0, 0, 0) 0px, rgb(0, 0, 0) 0px); color: rgb(255, 255, 255); text-align: center; top: 10px; left: -21px;\"></span>Price of materials or parts</li><li data-v-3f9453f1=\"\" style=\"margin: 0px; scroll-behavior: smooth; line-height: 1.5; color: rgb(56, 58, 60); padding-bottom: 10px; padding-left: 0px; position: relative;\"><span data-v-3f9453f1=\"\" style=\"margin: 0px; scroll-behavior: smooth; position: absolute; content: &quot;&quot;; width: 5px; height: 5px; line-height: 16px; border-radius: 50%; background-image: linear-gradient(135deg, rgb(0, 0, 0) 100%, rgb(0, 0, 0) 0px, rgb(0, 0, 0) 0px); color: rgb(255, 255, 255); text-align: center; top: 10px; left: -21px;\"></span>Transportation cost for carrying new materials/parts</li><li data-v-3f9453f1=\"\" style=\"margin: 0px; scroll-behavior: smooth; line-height: 1.5; color: rgb(56, 58, 60); padding-bottom: 10px; padding-left: 0px; position: relative;\"><span data-v-3f9453f1=\"\" style=\"margin: 0px; scroll-behavior: smooth; position: absolute; content: &quot;&quot;; width: 5px; height: 5px; line-height: 16px; border-radius: 50%; background-image: linear-gradient(135deg, rgb(0, 0, 0) 100%, rgb(0, 0, 0) 0px, rgb(0, 0, 0) 0px); color: rgb(255, 255, 255); text-align: center; top: 10px; left: -21px;\"></span>Warranty given by manufacturer</li></ul></div></div>', NULL, 0, 1, NULL, NULL, NULL, '2023-03-12 05:28:22', '2023-03-22 16:01:37'),
(67, 9, 'Home Electric Cable lines Repair', 'home-electric-cable-lines-repair', '18473780301678877258.jpg', '<p><span style=\"font-size: 16px; color: rgb(123, 125, 131); font-family: &quot;DM Sans&quot;, sans-serif;\">Cleaning or maintaining the cleanliness of our surroundings is a practice that all of us are accustomed to. But more often than not, people of our country make the mistake of taking the job of a professional cleaner into their own hands. People tend to do such a thing is because they find hiring a cleaning service company too expensive. Even if they do end up hiring a cleaning service, they tend to cheap out on this. Doing so can result in spending more money than you initially thought.</span><br></p><div data-v-3f9453f1=\"\" class=\"service-overview-component\" style=\"margin: 0px 0px 20px; scroll-behavior: smooth; font-family: Poppins, sans-serif; color: rgb(33, 37, 41); font-size: 16px; word-spacing: 1px;\"><h4 data-v-3f9453f1=\"\" class=\"service-overview-component__title\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; line-height: 1.56; font-size: 18px; scroll-behavior: smooth; color: rgba(0, 0, 0, 0.8);\">What\'s Included?</h4><p data-v-3f9453f1=\"\" class=\"service-overview-component__info\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; line-height: 1.5; scroll-behavior: smooth; color: rgb(56, 58, 60);\"></p><div data-v-3f9453f1=\"\" style=\"margin: 0px; scroll-behavior: smooth;\"><ul data-v-3f9453f1=\"\" class=\"list-unordered\" style=\"margin-right: 0px; margin-left: 0px; scroll-behavior: smooth; list-style: none; padding-left: 25px;\"><li data-v-3f9453f1=\"\" style=\"margin: 0px; scroll-behavior: smooth; line-height: 1.5; color: rgb(56, 58, 60); padding-bottom: 10px; padding-left: 0px; position: relative;\"><span data-v-3f9453f1=\"\" style=\"margin: 0px; scroll-behavior: smooth; position: absolute; content: &quot;&quot;; width: 5px; height: 5px; line-height: 16px; border-radius: 50%; background-image: linear-gradient(135deg, rgb(0, 0, 0) 100%, rgb(0, 0, 0) 0px, rgb(0, 0, 0) 0px); color: rgb(255, 255, 255); text-align: center; top: 10px; left: -21px;\"></span>Only service charge</li><li data-v-3f9453f1=\"\" style=\"margin: 0px; scroll-behavior: smooth; line-height: 1.5; color: rgb(56, 58, 60); padding-bottom: 10px; padding-left: 0px; position: relative;\"><span data-v-3f9453f1=\"\" style=\"margin: 0px; scroll-behavior: smooth; position: absolute; content: &quot;&quot;; width: 5px; height: 5px; line-height: 16px; border-radius: 50%; background-image: linear-gradient(135deg, rgb(0, 0, 0) 100%, rgb(0, 0, 0) 0px, rgb(0, 0, 0) 0px); color: rgb(255, 255, 255); text-align: center; top: 10px; left: -21px;\"></span>7 Days service warranty</li></ul></div></div><div data-v-3f9453f1=\"\" class=\"service-overview-component\" style=\"margin: 0px 0px 20px; scroll-behavior: smooth; font-family: Poppins, sans-serif; color: rgb(33, 37, 41); font-size: 16px; word-spacing: 1px;\"><h4 data-v-3f9453f1=\"\" class=\"service-overview-component__title\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; line-height: 1.56; font-size: 18px; scroll-behavior: smooth; color: rgba(0, 0, 0, 0.8);\">What\'s Excluded?</h4><p data-v-3f9453f1=\"\" class=\"service-overview-component__info\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; line-height: 1.5; scroll-behavior: smooth; color: rgb(56, 58, 60);\"></p><div data-v-3f9453f1=\"\" style=\"margin: 0px; scroll-behavior: smooth;\"><ul data-v-3f9453f1=\"\" class=\"list-unordered\" style=\"margin-right: 0px; margin-left: 0px; scroll-behavior: smooth; list-style: none; padding-left: 25px;\"><li data-v-3f9453f1=\"\" style=\"margin: 0px; scroll-behavior: smooth; line-height: 1.5; color: rgb(56, 58, 60); padding-bottom: 10px; padding-left: 0px; position: relative;\"><span data-v-3f9453f1=\"\" style=\"margin: 0px; scroll-behavior: smooth; position: absolute; content: &quot;&quot;; width: 5px; height: 5px; line-height: 16px; border-radius: 50%; background-image: linear-gradient(135deg, rgb(0, 0, 0) 100%, rgb(0, 0, 0) 0px, rgb(0, 0, 0) 0px); color: rgb(255, 255, 255); text-align: center; top: 10px; left: -21px;\"></span>Price of materials or parts</li><li data-v-3f9453f1=\"\" style=\"margin: 0px; scroll-behavior: smooth; line-height: 1.5; color: rgb(56, 58, 60); padding-bottom: 10px; padding-left: 0px; position: relative;\"><span data-v-3f9453f1=\"\" style=\"margin: 0px; scroll-behavior: smooth; position: absolute; content: &quot;&quot;; width: 5px; height: 5px; line-height: 16px; border-radius: 50%; background-image: linear-gradient(135deg, rgb(0, 0, 0) 100%, rgb(0, 0, 0) 0px, rgb(0, 0, 0) 0px); color: rgb(255, 255, 255); text-align: center; top: 10px; left: -21px;\"></span>Transportation cost for carrying new materials/parts</li><li data-v-3f9453f1=\"\" style=\"margin: 0px; scroll-behavior: smooth; line-height: 1.5; color: rgb(56, 58, 60); padding-bottom: 10px; padding-left: 0px; position: relative;\"><span data-v-3f9453f1=\"\" style=\"margin: 0px; scroll-behavior: smooth; position: absolute; content: &quot;&quot;; width: 5px; height: 5px; line-height: 16px; border-radius: 50%; background-image: linear-gradient(135deg, rgb(0, 0, 0) 100%, rgb(0, 0, 0) 0px, rgb(0, 0, 0) 0px); color: rgb(255, 255, 255); text-align: center; top: 10px; left: -21px;\"></span>Warranty given by manufacturer</li></ul></div></div>', NULL, 0, 1, NULL, NULL, NULL, '2023-03-12 05:28:44', '2023-03-22 16:00:03'),
(68, 9, 'Early Summer Deal Aircondition Services', 'early-summer-deal-aircondition-services', '7380830931678877270.jpg', '<p><span style=\"font-size: 16px; color: rgb(123, 125, 131); font-family: &quot;DM Sans&quot;, sans-serif;\">Cleaning or maintaining the cleanliness of our surroundings is a practice that all of us are accustomed to. But more often than not, people of our country make the mistake of taking the job of a professional cleaner into their own hands. People tend to do such a thing is because they find hiring a cleaning service company too expensive. Even if they do end up hiring a cleaning service, they tend to cheap out on this. Doing so can result in spending more money than you initially thought.</span><br></p><div data-v-3f9453f1=\"\" class=\"service-overview-component\" style=\"margin: 0px 0px 20px; scroll-behavior: smooth; font-family: Poppins, sans-serif; color: rgb(33, 37, 41); font-size: 16px; word-spacing: 1px;\"><h4 data-v-3f9453f1=\"\" class=\"service-overview-component__title\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; scroll-behavior: smooth; line-height: 1.56; font-size: 18px; color: rgba(0, 0, 0, 0.8);\">What\'s Included?</h4><p data-v-3f9453f1=\"\" class=\"service-overview-component__info\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; scroll-behavior: smooth; line-height: 1.5; color: rgb(56, 58, 60);\"></p><div data-v-3f9453f1=\"\" style=\"margin: 0px; scroll-behavior: smooth;\"><ul data-v-3f9453f1=\"\" class=\"list-unordered\" style=\"margin-right: 0px; margin-left: 0px; scroll-behavior: smooth; list-style: none; padding-left: 25px;\"><li data-v-3f9453f1=\"\" style=\"margin: 0px; scroll-behavior: smooth; line-height: 1.5; color: rgb(56, 58, 60); padding-bottom: 10px; padding-left: 0px; position: relative;\"><span data-v-3f9453f1=\"\" style=\"margin: 0px; scroll-behavior: smooth; position: absolute; content: &quot;&quot;; width: 5px; height: 5px; line-height: 16px; border-radius: 50%; background-image: linear-gradient(135deg, rgb(0, 0, 0) 100%, rgb(0, 0, 0) 0px, rgb(0, 0, 0) 0px); color: rgb(255, 255, 255); text-align: center; top: 10px; left: -21px;\"></span>Only service charge</li><li data-v-3f9453f1=\"\" style=\"margin: 0px; scroll-behavior: smooth; line-height: 1.5; color: rgb(56, 58, 60); padding-bottom: 10px; padding-left: 0px; position: relative;\"><span data-v-3f9453f1=\"\" style=\"margin: 0px; scroll-behavior: smooth; position: absolute; content: &quot;&quot;; width: 5px; height: 5px; line-height: 16px; border-radius: 50%; background-image: linear-gradient(135deg, rgb(0, 0, 0) 100%, rgb(0, 0, 0) 0px, rgb(0, 0, 0) 0px); color: rgb(255, 255, 255); text-align: center; top: 10px; left: -21px;\"></span>7 Days service warranty</li></ul></div></div><div data-v-3f9453f1=\"\" class=\"service-overview-component\" style=\"margin: 0px 0px 20px; scroll-behavior: smooth; font-family: Poppins, sans-serif; color: rgb(33, 37, 41); font-size: 16px; word-spacing: 1px;\"><h4 data-v-3f9453f1=\"\" class=\"service-overview-component__title\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; scroll-behavior: smooth; line-height: 1.56; font-size: 18px; color: rgba(0, 0, 0, 0.8);\">What\'s Excluded?</h4><p data-v-3f9453f1=\"\" class=\"service-overview-component__info\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; scroll-behavior: smooth; line-height: 1.5; color: rgb(56, 58, 60);\"></p><div data-v-3f9453f1=\"\" style=\"margin: 0px; scroll-behavior: smooth;\"><ul data-v-3f9453f1=\"\" class=\"list-unordered\" style=\"margin-right: 0px; margin-left: 0px; scroll-behavior: smooth; list-style: none; padding-left: 25px;\"><li data-v-3f9453f1=\"\" style=\"margin: 0px; scroll-behavior: smooth; line-height: 1.5; color: rgb(56, 58, 60); padding-bottom: 10px; padding-left: 0px; position: relative;\"><span data-v-3f9453f1=\"\" style=\"margin: 0px; scroll-behavior: smooth; position: absolute; content: &quot;&quot;; width: 5px; height: 5px; line-height: 16px; border-radius: 50%; background-image: linear-gradient(135deg, rgb(0, 0, 0) 100%, rgb(0, 0, 0) 0px, rgb(0, 0, 0) 0px); color: rgb(255, 255, 255); text-align: center; top: 10px; left: -21px;\"></span>Price of materials or parts</li><li data-v-3f9453f1=\"\" style=\"margin: 0px; scroll-behavior: smooth; line-height: 1.5; color: rgb(56, 58, 60); padding-bottom: 10px; padding-left: 0px; position: relative;\"><span data-v-3f9453f1=\"\" style=\"margin: 0px; scroll-behavior: smooth; position: absolute; content: &quot;&quot;; width: 5px; height: 5px; line-height: 16px; border-radius: 50%; background-image: linear-gradient(135deg, rgb(0, 0, 0) 100%, rgb(0, 0, 0) 0px, rgb(0, 0, 0) 0px); color: rgb(255, 255, 255); text-align: center; top: 10px; left: -21px;\"></span>Transportation cost for carrying new materials/parts</li><li data-v-3f9453f1=\"\" style=\"margin: 0px; scroll-behavior: smooth; line-height: 1.5; color: rgb(56, 58, 60); padding-bottom: 10px; padding-left: 0px; position: relative;\"><span data-v-3f9453f1=\"\" style=\"margin: 0px; scroll-behavior: smooth; position: absolute; content: &quot;&quot;; width: 5px; height: 5px; line-height: 16px; border-radius: 50%; background-image: linear-gradient(135deg, rgb(0, 0, 0) 100%, rgb(0, 0, 0) 0px, rgb(0, 0, 0) 0px); color: rgb(255, 255, 255); text-align: center; top: 10px; left: -21px;\"></span>Warranty given by manufacturer</li></ul></div></div><p><br></p>', NULL, 0, 1, NULL, NULL, NULL, '2023-03-12 05:28:59', '2023-03-22 15:59:00');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `slug`, `status`) VALUES
(8, 'TV Repair', 'tv-repair', 1),
(9, 'Service', 'service', 1);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `title`, `photo`) VALUES
(1, 'Office', '7970295041678678301.png'),
(2, 'Window', '12589344651678678295.png'),
(3, 'Service', '19893966171678678289.png'),
(4, 'ProfessionalBand', '438772221678781344.png'),
(5, 'Cleaning', '10010777431678781360.png'),
(6, 'Matador', '20136496541678781374.png');

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text NOT NULL,
  `service_id` int(11) DEFAULT NULL,
  `type` varchar(15) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `name`, `email`, `phone`, `subject`, `message`, `service_id`, `type`, `created_at`, `updated_at`) VALUES
(1, 'showrav Hasan', 'teacher@gmail.com', '01728332009', 'test', 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.', NULL, 'contact', '2023-03-15 06:24:00', '2023-03-15 06:24:00'),
(2, 'showrav Hasan', 'teacher@gmail.com', '01728332009', 'safasdf', 'asdfasdf', NULL, 'contact', '2023-03-15 06:43:19', '2023-03-15 06:43:19'),
(6, 'Farhad', 'farhadwts@gmail.com', '01779002302', 'asdasd', 'qweqwewq qweqweqwe qwe qweqw eqwe qweqweqw', NULL, 'contact', '2023-03-19 16:57:11', '2023-03-19 16:57:11'),
(9, 'Test Name', 'test@gmail.com', '017000000000', NULL, 'Lorem ipsum dolor sit amet consectetur. Ut tellus suspendisse nulla aliquam. Risus rutrum tellus as eget ultrices amet facilisis.', 4, 'get_in_touch', '2023-03-22 16:40:41', '2023-03-22 16:40:41'),
(10, 'Demo Name', 'demouser@gmail.com', '01800000000', NULL, 'Lorem ipsum dolor sit amet consectetur. Ut tellus suspendisse nulla aliquam. Risus rutrum tellus as eget ultrices amet facilisis.', 3, 'get_in_touch', '2023-03-22 16:41:14', '2023-03-22 16:41:14'),
(11, 'Dummy Name', 'dummy@gmail.com', '01900000000', NULL, 'Lorem ipsum dolor sit amet consectetur. Ut tellus suspendisse nulla aliquam. Risus rutrum tellus as eget ultrices amet facilisis.', 8, 'get_in_touch', '2023-03-22 16:41:44', '2023-03-22 16:41:44');

-- --------------------------------------------------------

--
-- Table structure for table `contact_pages`
--

CREATE TABLE `contact_pages` (
  `id` int(11) NOT NULL,
  `email1` varchar(255) DEFAULT NULL,
  `email2` varchar(255) DEFAULT NULL,
  `phone1` varchar(255) DEFAULT NULL,
  `phone2` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `photo` varchar(191) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `map_link` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_pages`
--

INSERT INTO `contact_pages` (`id`, `email1`, `email2`, `phone1`, `phone2`, `address`, `photo`, `title`, `map_link`) VALUES
(1, 'Envatodemo@gmail.com', 'Envatodemo2@gmail.com', '+23 (000) 68 603', '+21 (000) 68 703', '66 broklyn golden street 600 New york. USA!', '17379546011678780860.jpg', 'Contact for Services', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d96811.54759587669!2d-74.01263924803828!3d406880494567041!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f131!3m3!1m2!1s0x89c25bae694479a3%3A0xb9949385da52e69e!2sBarclays%20Center!5e0!3m2!1sen!2sbd!4v1636195194646!5m2!1sen!2sbd');

-- --------------------------------------------------------

--
-- Table structure for table `counters`
--

CREATE TABLE `counters` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `counter_number` int(11) NOT NULL DEFAULT 0,
  `icon` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `counters`
--

INSERT INTO `counters` (`id`, `title`, `counter_number`, `icon`) VALUES
(1, 'Active Project', 5076, 'fas fa-paint-brush'),
(3, 'Successful Services', 507, 'fas fa-align-left'),
(4, 'Winning Project', 4568, 'fas fa-address-card'),
(5, 'Total Services', 103, 'fas fa-air-freshener');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(191) NOT NULL,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sign` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` double NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `sign`, `value`, `is_default`) VALUES
(1, 'USD', '$', 1, 1),
(4, 'BDT', '৳', 84.63, 0),
(6, 'EUR', '€', 0.89, 0),
(8, 'INR', '₹', 68.95, 0),
(9, 'NGN', '₦', 363.919, 0),
(10, 'BRL', 'R$', 4.02, 0);

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_info` text DEFAULT NULL,
  `status` varchar(111) DEFAULT NULL,
  `txn_id` varchar(222) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `method` varchar(255) NOT NULL,
  `currency_info` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deposits`
--

INSERT INTO `deposits` (`id`, `user_id`, `user_info`, `status`, `txn_id`, `created_at`, `updated_at`, `amount`, `method`, `currency_info`) VALUES
(7, 1, '{\"id\":1,\"name\":\"User Hasan\",\"email\":\"user@gmail.com\",\"photo\":\"TLA1588136853people.png\",\"phone\":\"17283320\",\"country\":\"Belarus\",\"city\":\"add\",\"address\":\"Tangail,Dhaka,Bangladesh\",\"zip\":\"1234\",\"status\":1,\"email_verified\":null,\"verification_link\":null,\"balance\":600,\"created_at\":null,\"updated_at\":\"2022-01-11T11:08:36.000000Z\"}', 'completed', '2813400', '2022-01-11 05:09:59', '2022-01-11 05:09:59', 100, 'flutterwave', '{\"id\":1,\"name\":\"USD\",\"sign\":\"$\",\"value\":1,\"is_default\":1}'),
(8, 1, '{\"id\":1,\"name\":\"User Hasan\",\"email\":\"user@gmail.com\",\"photo\":\"TLA1588136853people.png\",\"phone\":\"17283320\",\"country\":\"Belarus\",\"city\":\"add\",\"address\":\"Tangail,Dhaka,Bangladesh\",\"zip\":\"1234\",\"status\":1,\"email_verified\":null,\"verification_link\":null,\"balance\":700,\"created_at\":null,\"updated_at\":\"2022-01-11T11:09:59.000000Z\"}', 'completed', '955160748', '2022-01-11 21:47:57', '2022-01-11 21:47:57', 0.2747864222533, '0', '{\"id\":9,\"name\":\"NGN\",\"sign\":\"\\u20a6\",\"value\":363.919,\"is_default\":1}'),
(9, 1, '{\"id\":1,\"name\":\"User Hasan\",\"email\":\"user@gmail.com\",\"photo\":\"TLA1588136853people.png\",\"phone\":\"17283320\",\"country\":\"Belarus\",\"city\":\"add\",\"address\":\"Tangail,Dhaka,Bangladesh\",\"zip\":\"1234\",\"status\":1,\"email_verified\":null,\"verification_link\":null,\"balance\":700.27478642225,\"created_at\":null,\"updated_at\":\"2022-01-12T03:47:57.000000Z\"}', 'completed', '85656909', '2022-01-11 21:48:36', '2022-01-11 21:48:36', 0.2747864222533, '0', '{\"id\":9,\"name\":\"NGN\",\"sign\":\"\\u20a6\",\"value\":363.919,\"is_default\":1}'),
(10, 1, '{\"id\":1,\"name\":\"User Hasan\",\"email\":\"user@gmail.com\",\"photo\":\"TLA1588136853people.png\",\"phone\":\"17283320\",\"country\":\"Belarus\",\"city\":\"add\",\"address\":\"Tangail,Dhaka,Bangladesh\",\"zip\":\"1234\",\"status\":1,\"email_verified\":null,\"verification_link\":null,\"balance\":700.5495728445,\"created_at\":null,\"updated_at\":\"2022-01-12T03:48:36.000000Z\"}', 'completed', '40080298343', '2022-01-11 22:07:48', '2022-01-11 22:07:48', 100, '0', '{\"id\":1,\"name\":\"USD\",\"sign\":\"$\",\"value\":1,\"is_default\":1}'),
(11, 1, '{\"id\":1,\"name\":\"User Hasan\",\"email\":\"user@gmail.com\",\"photo\":\"TLA1588136853people.png\",\"phone\":\"17283320\",\"country\":\"Belarus\",\"city\":\"add\",\"address\":\"Tangail,Dhaka,Bangladesh\",\"zip\":\"1234\",\"status\":1,\"email_verified\":null,\"verification_link\":null,\"balance\":800.5495728445,\"created_at\":null,\"updated_at\":\"2022-01-12T04:07:48.000000Z\"}', 'completed', '2951913a35854ea6991f522b6cbe0012', '2022-01-11 23:17:43', '2022-01-11 23:17:43', 100, 'instamojo', '{\"id\":1,\"name\":\"USD\",\"sign\":\"$\",\"value\":1,\"is_default\":1}');

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(11) NOT NULL,
  `email_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_subject` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_body` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `email_type`, `email_subject`, `email_body`, `status`) VALUES
(1, 'new_order', 'Your Order Placed Successfully', '<p>Hello {customer_name},<br>Your Order Number is {order_number}<br>Your order has been placed successfully</p>', 1),
(2, 'new_registration', 'Welcome To Booking Core', '<p>Hello {customer_name},<br>You have successfully registered to {website_title}, We wish you will have a wonderful experience using our service.</p><p>Thank You<br></p>', 1),
(4, 'subscription_warning', 'Your subscrption plan will end after five days', '<p>Hello {customer_name},<br>Your subscription plan duration will end after five days. Please renew your plan otherwise all of your products will be deactivated.</p><p>Thank You<br></p>', 1),
(5, 'user_verification', 'Request for verification.', '<p>Hello {customer_name},<br>You are requested verify your account. Please send us photo of your passport.</p><p>Thank You<br></p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `title`, `details`) VALUES
(3, 'How stay calm from the first time', 'People tend to do such a thing is because they find hiring a cleaning service company too expensive. Even if they do end up hiring a cleaning service, they tend to cheap out on this. Doing so can result in spending more money than you initially thought. So, let us find out how choosing the proper cleaning services can benefit you in more ways than you are thinking.'),
(5, 'Our proprietary enables Quality', 'People tend to do such a thing is because they find hiring a cleaning service company too expensive. Even if they do end up hiring a cleaning service, they tend to cheap out on this. Doing so can result in spending more money than you initially thought. So, let us find out how choosing the proper cleaning services can benefit you in more ways than you are thinking.'),
(6, 'Locate Clean USA Office Near You', 'People tend to do such a thing is because they find hiring a cleaning service company too expensive. Even if they do end up hiring a cleaning service, they tend to cheap out on this. Doing so can result in spending more money than you initially thought. So, let us find out how choosing the proper cleaning services can benefit you in more ways than you are thinking.'),
(7, 'Visit our office and see services', 'People tend to do such a thing is because they find hiring a cleaning service company too expensive. Even if they do end up hiring a cleaning service, they tend to cheap out on this. Doing so can result in spending more money than you initially thought. So, let us find out how choosing the proper cleaning services can benefit you in more ways than you are thinking.'),
(8, 'How to get Services', 'People tend to do such a thing is because they find hiring a cleaning service company too expensive. Even if they do end up hiring a cleaning service, they tend to cheap out on this. Doing so can result in spending more money than you initially thought. So, let us find out how choosing the proper cleaning services can benefit you in more ways than you are thinking.');

-- --------------------------------------------------------

--
-- Table structure for table `generalsettings`
--

CREATE TABLE `generalsettings` (
  `id` int(191) NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `error_banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `breadcumb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `loader` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smtp_host` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_port` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_pass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_encryption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'theme1',
  `is_debug` tinyint(4) NOT NULL DEFAULT 0,
  `is_disqus` tinyint(4) NOT NULL DEFAULT 0,
  `disqus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_tawk` tinyint(4) NOT NULL DEFAULT 0,
  `tawk_id` varchar(222) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_verify` tinyint(4) DEFAULT 0,
  `is_cookie` tinyint(4) NOT NULL DEFAULT 0,
  `cookie_btn_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cookie_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_popup` tinyint(255) NOT NULL DEFAULT 0,
  `popup_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `popup_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `popup_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_maintenance` tinyint(4) DEFAULT 0,
  `maintenance` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maintenance_photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `working_hour` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_section_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_section_header_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_section_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `counter_photo` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_links` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `generalsettings`
--

INSERT INTO `generalsettings` (`id`, `logo`, `phone`, `email`, `address`, `copyright_text`, `header_logo`, `error_banner`, `favicon`, `breadcumb`, `title`, `loader`, `smtp_host`, `mail_type`, `smtp_port`, `smtp_user`, `smtp_pass`, `mail_encryption`, `from_email`, `from_name`, `theme_color`, `theme`, `is_debug`, `is_disqus`, `disqus`, `is_tawk`, `tawk_id`, `is_verify`, `is_cookie`, `cookie_btn_text`, `cookie_text`, `is_popup`, `popup_image`, `popup_title`, `popup_url`, `is_maintenance`, `maintenance`, `maintenance_photo`, `menu`, `working_hour`, `header_text`, `contact_section_photo`, `contact_section_header_title`, `contact_section_title`, `footer_logo`, `faq_photo`, `counter_photo`, `social_links`) VALUES
(1, '1571567292logo.png', '01700000000', 'genius@gmail.com', '380 St, New York, USA', 'Copyright © 2023 Reserved Passion by GeniusOcean', '15232938731678610800.png', 'nx0dgfsa1dfsfa.jpg', '10552372151678610812.png', '1714678581678780997.jpg', 'Genius Service', '1564224328loading3.gif', 'smtp.mailtrap.io000', 'php_mail', '25', '72c114620aa8c0000', '2822701e2d8d9900', 'ssl', 'geniustest11@gmail.com', 'GeniusTest', '#18E57A', 'theme1', 1, 0, 'test', 0, 'twad', 1, 1, 'cookie_btn_text', 'asdddddddff', 0, 'IMn1588136843organizer.png', 'test', 'test', 0, 'Site Down', '19675019431679304578.png', '{\"Blog\":{\"title\":\"Blog\",\"dropdown\":\"no\",\"href\":\"http:\\/\\/localhost\\/work\\/foodpa\\/blog\",\"target\":\"self\"},\"Contact\":{\"title\":\"Contact\",\"dropdown\":\"no\",\"href\":\"http:\\/\\/localhost\\/work\\/foodpa\\/contact\",\"target\":\"self\"},\"Categories\":{\"title\":\"Categories\",\"dropdown\":\"yes\",\"href\":null,\"target\":\"self\"},\"Home\":{\"title\":\"Home\",\"dropdown\":\"no\",\"href\":\"ROUTE HERE\",\"target\":\"self\"},\"Return-Policy\":{\"title\":\"Return Policy\",\"dropdown\":\"no\",\"href\":\"http:\\/\\/localhost\\/work\\/foodpa\\/return-policy\",\"target\":\"self\"},\"test\":{\"title\":\"test\",\"dropdown\":\"no\",\"href\":\"Route Here\",\"target\":\"self\"}}', 'working hours : Mon-sat (8.00am - 6.00PM)', 'best cleaning company website forever!', '15407574641678678201.jpg', 'Get a Free Estimate', 'Contact for Services!', '9882156701678876247.png', '16389497441678873938.png', '2550791501678876170.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hold_orders`
--

CREATE TABLE `hold_orders` (
  `id` bigint(20) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `cart` text DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `shipping` text DEFAULT NULL,
  `package` text DEFAULT NULL,
  `amount` double DEFAULT 0,
  `method` varchar(111) DEFAULT NULL,
  `callback` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `order_number` varchar(255) DEFAULT NULL,
  `txn_id` varchar(255) DEFAULT NULL,
  `charge` double DEFAULT 0,
  `final_amo` double NOT NULL DEFAULT 0,
  `detail` text DEFAULT NULL,
  `btc_amo` varchar(255) DEFAULT NULL,
  `btc_wallet` varchar(255) DEFAULT NULL,
  `try` int(11) NOT NULL DEFAULT 0,
  `admin_feedback` varchar(255) DEFAULT NULL,
  `main_type` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hold_orders`
--

INSERT INTO `hold_orders` (`id`, `user_name`, `user_email`, `address`, `currency`, `cart`, `country`, `shipping`, `package`, `amount`, `method`, `callback`, `status`, `order_number`, `txn_id`, `charge`, `final_amo`, `detail`, `btc_amo`, `btc_wallet`, `try`, `admin_feedback`, `main_type`, `user_id`) VALUES
(15, 'dadf', 'teacher@gmail.com', 'Munshinogor,Delduar,Tangail,Dhaka,Bangladesh', '{\"id\":1,\"name\":\"USD\",\"sign\":\"$\",\"value\":1,\"is_default\":1}', '{\"item\":[{\"id\":1,\"name\":\"Test Product 1\",\"price\":100,\"qty\":1,\"slug\":\"test-product-1\",\"photo\":\"https:\\/\\/images.pexels.com\\/photos\\/9697397\\/pexels-photo-9697397.jpeg\"},{\"id\":2,\"name\":\"Test Product 2\",\"price\":100,\"qty\":1,\"slug\":\"test-product-2\",\"photo\":\"https:\\/\\/images.pexels.com\\/photos\\/10253213\\/pexels-photo-10253213.jpeg\"}]}', 'Bangladesh', '{\"id\":1,\"user_id\":0,\"title\":\"Free Shipping\",\"subtitle\":\"(10 - 12 days)\",\"price\":0}', '{\"id\":1,\"user_id\":0,\"title\":\"Default Packaging\",\"subtitle\":\"Default packaging by store\",\"price\":0}', 100, '15', 'paypal', 0, 'YoSAvjyh', NULL, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(16, 'frtr', 'teacher@gmail.com', 'Munshinogor,Delduar,Tangail,Dhaka,Bangladesh', '{\"id\":1,\"name\":\"USD\",\"sign\":\"$\",\"value\":1,\"is_default\":1}', '{\"item\":[{\"id\":1,\"name\":\"Test Product 1\",\"price\":100,\"qty\":1,\"slug\":\"test-product-1\",\"photo\":\"https:\\/\\/images.pexels.com\\/photos\\/9697397\\/pexels-photo-9697397.jpeg\"},{\"id\":2,\"name\":\"Test Product 2\",\"price\":100,\"qty\":1,\"slug\":\"test-product-2\",\"photo\":\"https:\\/\\/images.pexels.com\\/photos\\/10253213\\/pexels-photo-10253213.jpeg\"}]}', 'Bangladesh', '{\"id\":1,\"user_id\":0,\"title\":\"Free Shipping\",\"subtitle\":\"(10 - 12 days)\",\"price\":0}', '{\"id\":1,\"user_id\":0,\"title\":\"Default Packaging\",\"subtitle\":\"Default packaging by store\",\"price\":0}', 100, '14', 'stripe', 1, '5eZS1Sdm', 'txn_3KDM8rJlIV5dN9n71XY4LO8S', 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(191) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `language` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rtl` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `is_default`, `language`, `file`, `rtl`) VALUES
(1, 1, 'English', '163479343308Fu3jm9.json', 0),
(11, 0, 'test', '1638347401hPc8azyI.json', 0);

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(191) DEFAULT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `name`, `designation`, `message`, `photo`) VALUES
(17, 'Test Productss', 'test', 'test', 'nqD1588136884bv-rm.jpg'),
(18, 'showrav Hasan', 'Designation', 'asdfasd', 'Nv41588136853people.png');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_09_25_053316_create_admins_table', 2),
(6, '2014_10_12_100000_create_password_reset_tokens_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL DEFAULT 0,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `user_id`, `title`, `subtitle`, `price`) VALUES
(1, 0, 'Default Packaging', 'Default packaging by store', 0),
(2, 0, 'Gift Packaging', 'Exclusive Gift packaging', 15);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(191) NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_tag` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `details`, `meta_tag`, `meta_description`) VALUES
(6, 'Terms of use', 'terms-of-use', '<h2 dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 8pt 0pt;\"><span style=\"font-size:13.999999999999998pt;font-family:\'Times New Roman\';color:#212529;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">These Terms of use contain provisions that define your limits, legal rights and obligations with respect to your use of and participation in (i) our website and mobile application, including the classified advertisements, forums, various email functions and Internet links, and all content and our services available through the domain and sub-domains located at this link Its Mobile Apps(collectively referred to herein as the \"Product\"), and (ii) the online transactions between those users of the Product who are offering services (each, a \"SERVICE PROVIDER\") and those users of the Product who are obtaining services (each, a \"SERVICE USER\") through the Product (such services, collectively, the \"Services\"). The Terms of Use described below incorporate the Privacy Policy and apply to all users of the Website, including users who are also contributors of video content, information, private and public messages, advertisements, and other materials or Services on the Product.&nbsp;</span></h2><h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-weight: 400; font-family: DauphinPlain; font-size: 24px; line-height: 24px; color: rgb(0, 0, 0);\"><span id=\"docs-internal-guid-f0f0d7f3-7fff-b0e7-ada5-b7a822937de9\"></span></h2><h2 dir=\"ltr\" style=\"line-height:1.7999999999999998;background-color:#ffffff;margin-top:0pt;margin-bottom:8pt;\"><span style=\"font-size:13.999999999999998pt;font-family:\'Times New Roman\';color:#212529;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">It is your responsibility to review the Terms of Use for any changes and you are encouraged to check the Terms of Use frequently. Your use of the Product following any amendment of the Terms of Use will signify your assent to and acceptance of any revised Terms of Use. If you do not agree to abide by these or any future Terms of Use, please do not use or access the Product.</span></h2><h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-weight: 400; font-family: DauphinPlain; font-size: 24px; line-height: 24px; color: rgb(0, 0, 0);\"><br></h2><h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-weight: 400; font-family: DauphinPlain; font-size: 24px; line-height: 24px; color: rgb(0, 0, 0);\"><br></h2>', NULL, NULL),
(7, 'Privacy Policy', 'privacy-policy', '<h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-weight: 400; line-height: 24px; font-size: 24px; padding: 0px; font-family: DauphinPlain; color: rgb(0, 0, 0);\"><p data-v-1a50ebdc=\"\" style=\"margin-right: 0px; margin-left: 0px; scroll-behavior: smooth; font-family: Poppins, sans-serif; color: rgb(33, 37, 41); font-size: 16px; word-spacing: 1px;\">\"Personal information\" is defined to include information that whether on its own or in combination with other information may be used to readily identify or contact you such as: name, address, email address, phone number etc.</p><p data-v-1a50ebdc=\"\" style=\"margin-right: 0px; margin-left: 0px; scroll-behavior: smooth; font-family: Poppins, sans-serif; color: rgb(33, 37, 41); font-size: 16px; word-spacing: 1px;\">We collect personal information from Service Professionals offering their products and services. This information is partially or completely accessible to all visitors using our website or mobile application, either directly or by submitting a request for a service. Service Professionals and customers are required to create an account to be able to access certain portions of our Website, such as to submit questions, participate in polls or surveys, to request a quote, to submit a bid in response to a quote, and request information. - Service Professionals, if and when they create and use an account with us, will be required to disclose and provide to our account information including personal contact details, bank details, personal identification details and participate in polls or surveys or feedbacks etc. Such information gathered shall be utilized to ensure greater customer satisfaction and help a customer satiate their needs.</p><p data-v-1a50ebdc=\"\" style=\"margin-right: 0px; margin-left: 0px; scroll-behavior: smooth; font-family: Poppins, sans-serif; color: rgb(33, 37, 41); font-size: 16px; word-spacing: 1px;\">The type of personal information that we collect from you varies based on your particular interaction with our Website or mobile application.</p></h2>', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` int(191) NOT NULL,
  `subtitle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('manual','automatic') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'manual',
  `information` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(191) DEFAULT NULL,
  `currency_id` varchar(191) NOT NULL DEFAULT '0',
  `checkout` int(191) NOT NULL DEFAULT 1,
  `deposit` int(191) NOT NULL DEFAULT 1,
  `subscription` int(191) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `subtitle`, `title`, `details`, `name`, `type`, `information`, `keyword`, `currency_id`, `checkout`, `deposit`, `subscription`) VALUES
(1, 'Pay with cash upon delivery.', 'Cash On Delivery', NULL, NULL, 'manual', NULL, 'cod', '0', 1, 0, 0),
(2, '(5 - 6 days)', 'Mobile Money', '<b>Payment Number: </b>69234324233423', NULL, 'manual', NULL, NULL, '0', 1, 1, 1),
(4, NULL, NULL, NULL, 'SSLCommerz', 'automatic', '{\"store_id\":\"geniu5e1b00621f81e\",\"store_password\":\"geniu5e1b00621f81e@ssl\",\"sandbox_check\":1,\"text\":\"Pay Via SSLCommerz.\"}', 'sslcommerz', '[\"4\"]', 1, 1, 1),
(7, NULL, NULL, NULL, 'Mercadopago', 'automatic', '{\"public_key\":\"TEST-6f72a502-51c8-4e9a-8ca3-cb7fa0addad8\",\"token\":\"TEST-6068652511264159-022306-e78da379f3963916b1c7130ff2906826-529753482\",\"sandbox_check\":1,\"text\":\"Pay Via MercadoPago\"}', 'mercadopago', '[\"1\"]', 1, 1, 1),
(8, NULL, NULL, NULL, 'Authorize.Net', 'automatic', '{\"login_id\":\"76zu9VgUSxrJ\",\"txn_key\":\"2Vj62a6skSrP5U3X\",\"sandbox_check\":1,\"text\":\"Pay Via Authorize.Net\"}', 'authorize', '[\"1\"]', 1, 1, 1),
(9, NULL, NULL, NULL, 'Razorpay', 'automatic', '{\"key\":\"rzp_test_xDH74d48cwl8DF\",\"secret\":\"cr0H1BiQ20hVzhpHfHuNbGri\",\"text\":\"Pay via your Razorpay account.\"}', 'razorpay', '[\"8\"]', 1, 1, 1),
(10, NULL, NULL, NULL, 'Mollie Payment', 'automatic', '{\"key\":\"test_5HcWVs9qc5pzy36H9Tu9mwAyats33J\",\"text\":\"Pay with Mollie Payment.\"}', 'mollie', '[\"1\",\"6\"]', 1, 1, 1),
(11, NULL, NULL, NULL, 'Paytm', 'automatic', '{\"merchant\":\"tkogux49985047638244\",\"secret\":\"LhNGUUKE9xCQ9xY8\",\"website\":\"WEBSTAGING\",\"industry\":\"Retail\",\"sandbox_check\":1,\"text\":\"Pay via your Paytm account.\"}', 'paytm', '[\"8\"]', 1, 1, 1),
(12, NULL, NULL, NULL, 'Paystack', 'automatic', '{\"key\":\"pk_test_162a56d42131cbb01932ed0d2c48f9cb99d8e8e2\",\"email\":\"junnuns@gmail.com\",\"text\":\"Pay via your Paystack account.\"}', 'paystack', '[\"9\"]', 1, 1, 1),
(13, NULL, NULL, NULL, 'Instamojo', 'automatic', '{\"key\":\"test_172371aa837ae5cad6047dc3052\",\"token\":\"test_4ac5a785e25fc596b67dbc5c267\",\"sandbox_check\":1,\"text\":\"Pay via your Instamojo account.\"}', 'instamojo', '[\"8\"]', 1, 1, 1),
(14, NULL, NULL, NULL, 'Stripe', 'automatic', '{\"key\":\"pk_test_UnU1Coi1p5qFGwtpjZMRMgJM\",\"secret\":\"sk_test_QQcg3vGsKRPlW6T3dXcNJsor\",\"text\":\"Pay via your Credit Card.\"}', 'stripe', '[\"1\"]', 1, 1, 1),
(15, NULL, NULL, NULL, 'Paypal', 'automatic', '{\"client_id\":\"AcWYnysKa_elsQIAnlfsJXokR64Z31CeCbpis9G3msDC-BvgcbAwbacfDfEGSP-9Dp9fZaGgD05pX5Qi\",\"client_secret\":\"EGZXTq6d6vBPq8kysVx8WQA5NpavMpDzOLVOb9u75UfsJ-cFzn6aeBXIMyJW2lN1UZtJg5iDPNL9ocYE\",\"sandbox_check\":0,\"text\":\"Pay via your PayPal account.\"}', 'paypal', '[\"1\",\"4\"]', 1, 1, 1),
(18, NULL, NULL, NULL, 'Flutter Wave', 'automatic', '{\"public_key\":\"FLWPUBK_TEST-299dc2c8bf4c7f14f7d7f48c32433393-X\",\"secret_key\":\"FLWSECK_TEST-afb1f2a4789002d7c0f2185b830450b7-X\",\"text\":\"Pay via your Flutter Wave account.\"}', 'flutterwave', '0', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pcategories`
--

CREATE TABLE `pcategories` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pcategories`
--

INSERT INTO `pcategories` (`id`, `name`, `slug`, `status`) VALUES
(1, 'Home', 'home', 1),
(2, 'Office', 'office', 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `client` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `slug`, `photo`, `category_id`, `client`, `date`, `details`, `facebook`, `twitter`, `linkedin`, `instagram`) VALUES
(1, 'Kitchen Cleaning', 'kitchen-cleaning', '10130736151678874809.jpg', 2, 'Mr. Apa', '2023-03-23', '<p>Furniture Cleaning</p>', NULL, NULL, NULL, NULL),
(2, 'Furniture Cleaning', 'furniture-cleaning', '6456664971678874771.jpg', 1, 'Mr. Apa', '2023-03-25', '<p>Furniture Cleaning</p>', 'https://www.facebook.com/', 'https://www.twitter.com/', 'https://www.facebook.com/', 'adfadsf'),
(3, 'Car Cleaning', 'car-cleaning', '20635325091678874739.jpg', 2, 'Mr. Apa', '2023-03-23', '<p>asdfadf</p>', NULL, NULL, NULL, NULL),
(4, 'Outdoor Cleaning', 'outdoor-cleaning', '13662220451678874713.jpg', 1, 'Outdoor Cleaning', '2023-03-25', '<p>adsfasdf</p>', 'https://www.facebook.com/', 'https://www.twitter.com/', 'https://www.facebook.com/', 'https://www.twitter.com/');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `seo_settings`
--

CREATE TABLE `seo_settings` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `meta_tag` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_image` varchar(255) DEFAULT NULL,
  `google_analytics` varchar(255) DEFAULT NULL,
  `facebook_pixel` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seo_settings`
--

INSERT INTO `seo_settings` (`id`, `title`, `meta_tag`, `meta_description`, `meta_image`, `google_analytics`, `facebook_pixel`) VALUES
(1, 'Dashboard1', 'a,b,c,d,s', 'test description1', 'fgy1588136884bv-rm.jpg', 'test1', 'test1');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) NOT NULL,
  `category_id` int(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `sort_text` text DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `feature_icon` varchar(191) DEFAULT NULL,
  `description` text NOT NULL,
  `service_quality_text` text DEFAULT NULL,
  `service_quality_photo` varchar(255) DEFAULT NULL,
  `service_quality_before_photo` varchar(191) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `is_feature` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `category_id`, `title`, `slug`, `sort_text`, `photo`, `feature_icon`, `description`, `service_quality_text`, `service_quality_photo`, `service_quality_before_photo`, `status`, `is_feature`) VALUES
(3, NULL, 'Home Combined', 'home-combined', 'Let us find out how choosing the proper cleaning services can benefit you in more ways than you are thinking', '17973969551678877106.jpg', '18822330081678877106.png', '<p><span style=\"color:rgb(123,125,131);font-family:\'DM Sans\', sans-serif;font-size:16px;\">Cleaning or maintaining the cleanliness of our surroundings is a practice that all of us are accustomed to. But more often than not, people of our country make the mistake of taking the job of a professional cleaner into their own hands. People tend to do such a thing is because they find hiring a cleaning service company too expensive. Even if they do end up hiring a cleaning service, they tend to cheap out on this. Doing so can result in spending more money than you initially thought. So, let us find out how choosing the proper cleaning services can benefit you in more ways than you are thinking.</span></p>', 'Cleaning or maintaining the cleanliness of our surroundings is a practice that all of us are accustomed to. But more often than not, people of our country make the mistake of taking the job of a professional cleaner into their own hands. People tend to do such a thing is because they find hiring a cleaning service company too expensive. Even if they do end up hiring a cleaning service, they tend to cheap out on this. Doing so can result in spending more money than you initially thought. So, let us find out how choosing the proper cleaning services can benefit you in more ways than you are thinking.', '21260597191678877106.jpg', '105797651678877106.jpg', 1, 1),
(4, NULL, 'Office Floor', 'office-floor', 'Let us find out how choosing the proper cleaning services can benefit you in more ways than you are thinking', '10421010261678877052.jpg', '21408107831678877053.png', '<p><span style=\"color:rgb(123,125,131);font-family:\'DM Sans\', sans-serif;font-size:16px;\">Cleaning or maintaining the cleanliness of our surroundings is a practice that all of us are accustomed to. But more often than not, people of our country make the mistake of taking the job of a professional cleaner into their own hands. People tend to do such a thing is because they find hiring a cleaning service company too expensive. Even if they do end up hiring a cleaning service, they tend to cheap out on this. Doing so can result in spending more money than you initially thought. So, let us find out how choosing the proper cleaning services can benefit you in more ways than you are thinking.</span></p>', 'Cleaning or maintaining the cleanliness of our surroundings is a practice that all of us are accustomed to. But more often than not, people of our country make the mistake of taking the job of a professional cleaner into their own hands. People tend to do such a thing is because they find hiring a cleaning service company too expensive. Even if they do end up hiring a cleaning service, they tend to cheap out on this. Doing so can result in spending more money than you initially thought. So, let us find out how choosing the proper cleaning services can benefit you in more ways than you are thinking.', '1875766771678877053.jpg', '3466364941678877053.jpg', 1, 1),
(5, NULL, 'Plumbing Services', 'plumbing-services', 'Let us find out how choosing the proper cleaning services can benefit you in more ways than you are thinking.', '1557173531678876957.jpg', '16736568691678876957.png', '<p><span style=\"color:rgb(123,125,131);font-family:\'DM Sans\', sans-serif;font-size:16px;\">Cleaning or maintaining the cleanliness of our surroundings is a practice that all of us are accustomed to. But more often than not, people of our country make the mistake of taking the job of a professional cleaner into their own hands. People tend to do such a thing is because they find hiring a cleaning service company too expensive. Even if they do end up hiring a cleaning service, they tend to cheap out on this. Doing so can result in spending more money than you initially thought. So, let us find out how choosing the proper cleaning services can benefit you in more ways than you are thinking.</span></p>', 'Cleaning or maintaining the cleanliness of our surroundings is a practice that all of us are accustomed to. But more often than not, people of our country make the mistake of taking the job of a professional cleaner into their own hands. People tend to do such a thing is because they find hiring a cleaning service company too expensive. Even if they do end up hiring a cleaning service, they tend to cheap out on this. Doing so can result in spending more money than you initially thought. So, let us find out how choosing the proper cleaning services can benefit you in more ways than you are thinking.', '1924433461678876957.jpg', '15418053351678876957.jpg', 1, 1),
(6, NULL, 'Office AirCondition', 'office-aircondition', 'Let us find out how choosing the proper cleaning services can benefit you in more ways than you are thinking.', '17558547731678876827.jpg', '14385091701678876827.png', '<p style=\"text-align:justify;\"><span style=\"color:rgb(123,125,131);font-family:\'DM Sans\', sans-serif;font-size:16px;\">Cleaning or maintaining the cleanliness of our surroundings is a practice that all of us are accustomed to. But more often than not, people of our country make the mistake of taking the job of a professional cleaner into their own hands. People tend to do such a thing is because they find hiring a cleaning service company too expensive. Even if they do end up hiring a cleaning service, they tend to cheap out on this. Doing so can result in spending more money than you initially thought. So, let us find out how choosing the proper cleaning services can benefit you in more ways than you are thinking.</span><br></p>', 'Cleaning or maintaining the cleanliness of our surroundings is a practice that all of us are accustomed to. But more often than not, people of our country make the mistake of taking the job of a professional cleaner into their own hands. People tend to do such a thing is because they find hiring a cleaning service company too expensive. Even if they do end up hiring a cleaning service, they tend to cheap out on this. Doing so can result in spending more money than you initially thought. So, let us find out how choosing the proper cleaning services can benefit you in more ways than you are thinking.', '8917716821678876827.jpg', '14489758611678876827.jpg', 1, 1),
(7, NULL, 'Plumbing Clean', 'plumbing-clean', 'Let us find out how choosing the proper cleaning services can benefit you in more ways than you are thinking.', '3816256991678871898.jpg', '17708510101678876495.png', '<p><span style=\"color:rgb(123,125,131);font-family:\'DM Sans\', sans-serif;font-size:16px;\">Cleaning or maintaining the cleanliness of our surroundings is a practice that all of us are accustomed to. But more often than not, people of our country make the mistake of taking the job of a professional cleaner into their own hands. People tend to do such a thing is because they find hiring a cleaning service company too expensive. Even if they do end up hiring a cleaning service, they tend to cheap out on this. Doing so can result in spending more money than you initially thought. So, let us find out how choosing the proper cleaning services can benefit you in more ways than you are thinking.</span></p>', 'Cleaning or maintaining the cleanliness of our surroundings is a practice that all of us are accustomed to. But more often than not, people of our country make the mistake of taking the job of a professional cleaner into their own hands. People tend to do such a thing is because they find hiring a cleaning service company too expensive. Even if they do end up hiring a cleaning service, they tend to cheap out on this. Doing so can result in spending more money than you initially thought. So, let us find out how choosing the proper cleaning services can benefit you in more ways than you are thinking.', '7990918081678871898.jpg', '14857765601678871898.jpg', 1, 1),
(8, NULL, 'Home Cleaning', 'home-cleaning', 'Let us find out how choosing the proper cleaning services can benefit you in more ways than you are thinking.', '19180915441678871863.jpg', '5784039161678876435.png', '<p>Cleaning or maintaining the cleanliness of our surroundings is a practice that all of us are accustomed to. But more often than not, people of our country make the mistake of taking the job of a professional cleaner into their own hands. People tend to do such a thing is because they find hiring a cleaning service company too expensive. Even if they do end up hiring a cleaning service, they tend to cheap out on this. Doing so can result in spending more money than you initially thought. So, let us find out how choosing the proper cleaning services can benefit you in more ways than you are thinking.<br></p>', 'Cleaning or maintaining the cleanliness of our surroundings is a practice that all of us are accustomed to. But more often than not, people of our country make the mistake of taking the job of a professional cleaner into their own hands. People tend to do such a thing is because they find hiring a cleaning service company too expensive. Even if they do end up hiring a cleaning service, they tend to cheap out on this. Doing so can result in spending more money than you initially thought. So, let us find out how choosing the proper cleaning services can benefit you in more ways than you are thinking.', '14344097631678871863.jpg', '9041066511678871863.jpg', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `service_faqs`
--

CREATE TABLE `service_faqs` (
  `id` bigint(20) NOT NULL,
  `service_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_faqs`
--

INSERT INTO `service_faqs` (`id`, `service_id`, `title`, `content`) VALUES
(2, 3, 'How stay calm from the first time.', 'Lorem ipsum dolor sit amet consectetur. suspendisse nulla aliquam. Risus rutrum tellus eget ultrices pretium nisi amet facilisis dummy text now.'),
(3, 3, 'How stay calm from the first time.', 'Lorem ipsum dolor sit amet consectetur. suspendisse nulla aliquam. Risus rutrum tellus eget ultrices pretium nisi amet facilisis dummy text now.'),
(4, 3, 'How stay calm from the first time.', 'Lorem ipsum dolor sit amet consectetur. suspendisse nulla aliquam. Risus rutrum tellus eget ultrices pretium nisi amet facilisis dummy text now.'),
(5, 3, 'How stay calm from the first time.', 'Lorem ipsum dolor sit amet consectetur. suspendisse nulla aliquam. Risus rutrum tellus eget ultrices pretium nisi amet facilisis dummy text now.'),
(6, 3, 'How stay calm from the first time.', 'Lorem ipsum dolor sit amet consectetur. suspendisse nulla aliquam. Risus rutrum tellus eget ultrices pretium nisi amet facilisis dummy text now.'),
(7, 2, 'How stay calm from the first time.', 'Lorem ipsum dolor sit amet consectetur. suspendisse nulla aliquam. Risus rutrum tellus eget ultrices pretium nisi amet facilisis dummy text now.'),
(8, 2, 'How stay calm from the first time.', 'Lorem ipsum dolor sit amet consectetur. suspendisse nulla aliquam. Risus rutrum tellus eget ultrices pretium nisi amet facilisis dummy text now.'),
(9, 8, 'How stay calm from the first time.', 'Lorem ipsum dolor sit amet consectetur. suspendisse nulla aliquam. Risus rutrum tellus eget ultrices pretium nisi amet facilisis dummy text now.'),
(10, 4, 'How stay calm from the first time.', 'Lorem ipsum dolor sit amet consectetur. suspendisse nulla aliquam. Risus rutrum tellus eget ultrices pretium nisi amet facilisis dummy text now.'),
(11, 5, 'How stay calm from the first time.', 'Lorem ipsum dolor sit amet consectetur. suspendisse nulla aliquam. Risus rutrum tellus eget ultrices pretium nisi amet facilisis dummy text now.'),
(12, 8, 'How stay calm from the first time.', 'Lorem ipsum dolor sit amet consectetur. suspendisse nulla aliquam. Risus rutrum tellus eget ultrices pretium nisi amet facilisis dummy text now.');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` int(11) NOT NULL,
  `user_id` int(191) NOT NULL DEFAULT 0,
  `title` text DEFAULT NULL,
  `subtitle` text DEFAULT NULL,
  `price` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `user_id`, `title`, `subtitle`, `price`) VALUES
(1, 0, 'Free Shipping', '(10 - 12 days)', 0),
(2, 0, 'Express Shipping', '(5 - 6 days)', 10);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `photo` varchar(191) DEFAULT NULL,
  `btn1_text` varchar(255) DEFAULT NULL,
  `btn1_link` varchar(255) DEFAULT NULL,
  `btn2_text` varchar(255) DEFAULT NULL,
  `btn2_link` varchar(255) DEFAULT NULL,
  `text` text DEFAULT NULL,
  `is_banner` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `subtitle`, `photo`, `btn1_text`, `btn1_link`, `btn2_text`, `btn2_link`, `text`, `is_banner`) VALUES
(2, 'Professional Monthly Cleaning Service', 'Monthly Cleaning Services', '6661206751678613610.jpg', 'DISCOVER MORE', 'https://demo.royalscripts.com/clean_service/', 'OUR SERVICES', 'https://demo.royalscripts.com/clean_service/', 'Are you worried about monthly cleaning? We guarantee regular cleaning as well as cleaning your home or office. Your home and office cleaning services, floor, walls, chairs, tables.', 0),
(3, 'Professional Cleaning Service for your home', 'Home Cleaning Services', '10409202441678613641.jpg', 'DISCOVER MORE', 'https://demo.royalscripts.com/clean_service/', 'OUR SERVICES', 'https://demo.royalscripts.com/clean_service/', 'Are you worried about cleaning your home? We guarantees regular cleaning as well as cleaning your sweet hom. Your home cleaning services, floor, walls, chairs, tables.', 0),
(4, 'Professional Cleaning Service for your office', 'Best Cleaning Services', '15706143311678682298.jpg', 'DISCOVER MORE', 'https://demo.royalscripts.com/clean_service/', 'OUR SERVICES', 'https://demo.royalscripts.com/clean_service/', 'Are you worried about cleaning your office? We guarantees regular cleaning as well as cleaning your new or old office. Your office cleaning services, floor, walls, chairs, tables.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `socialsettings`
--

CREATE TABLE `socialsettings` (
  `id` int(10) UNSIGNED NOT NULL,
  `fclient_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fclient_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fredirect` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclient_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclient_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gredirect` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_icons` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_urls` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_check` tinyint(4) NOT NULL DEFAULT 0,
  `google_check` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socialsettings`
--

INSERT INTO `socialsettings` (`id`, `fclient_id`, `fclient_secret`, `fredirect`, `gclient_id`, `gclient_secret`, `gredirect`, `website_url`, `social_icons`, `social_urls`, `facebook_check`, `google_check`) VALUES
(1, '353155922795407', '55f8379d2e9717b72f862d07e92af8ed', 'http://localhost/booking-laravel-7', '915191002660-okcvhj4qspmbcm4qgn9et4vnu5q3mdei.apps.googleusercontent.com', 'PP-ZuCXvvdIPrpUy2WEDeIck', 'http://localhost/charity/main-charity/auth/google/callback', 'http://localhost/booking-laravel-7', '[\"fab fa-font-awesome\",\"fab fa-fonticons\",\"fas fa-football-ball\"]', '[\"tttt\",\"tttt4\",\"test\"]', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `social_links`
--

CREATE TABLE `social_links` (
  `id` bigint(20) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `social_links`
--

INSERT INTO `social_links` (`id`, `name`, `icon`, `link`) VALUES
(1, 'Facebook', 'fab fa-facebook-f', 'https://getbootstrap.com'),
(2, 'Twitter', 'fab fa-twitter', 'https://getbootstrap.com'),
(3, 'Instagram', 'fab fa-instagram', 'https://getbootstrap.com'),
(4, 'Linkedin', 'fab fa-linkedin-in', '#');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(191) NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`) VALUES
(37, 'owner@gmail.com'),
(38, 'shaon@gmail.com'),
(39, 'showrav@gmail.com'),
(40, 'showrabhasan@gmail.com'),
(41, 'user@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `progress` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `slug`, `designation`, `photo`, `bio`, `phone`, `email`, `address`, `website`, `facebook`, `twitter`, `linkedin`, `instagram`, `progress`) VALUES
(1, 'Jennifer D. Holland', 'jennifer-d-holland', 'Associate Engineer', '3404554231678616702.jpg', '<p><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 16px; word-spacing: 1px;\">This service will help you to clean your home and also help to remove deep stains. Our Service provider will use effective chemicals that will wash your home smoothly and neatly.&nbsp;&nbsp;</span><font color=\"#212529\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; word-spacing: 1px;\">eople tend to do such a thing is because they find hiring a cleaning service company too expensive. Even if they do end up hiring a cleaning service, they tend to cheap out on this. Doing so can result in spending more money than you initially thought. So, let us find out how choosing the proper cleaning services can benefit you in more ways than you are thinking.</span></font><br></p>', '01800000000', 'demo@gmail.com', 'Munshinogor,Delduar,Tangail,Dhaka,Bangladesh', 'https://demo.royalscripts.com/clean_service', 'https://demo.royalscripts.com/clean_service', 'https://demo.royalscripts.com/clean_service', 'https://demo.royalscripts.com/clean_service', 'https://demo.royalscripts.com/clean_service', '{\"\":null}'),
(2, 'Cathryn J. Maxwell', 'cathryn-j-maxwell', 'Jr. Officer', '2745307611678616728.jpg', '<p><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 16px; word-spacing: 1px;\">This service will help you to clean your home and also help to remove deep stains. Our Service provider will use effective chemicals that will wash your home smoothly and neatly.&nbsp;&nbsp;</span><font color=\"#212529\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; word-spacing: 1px;\">eople tend to do such a thing is because they find hiring a cleaning service company too expensive. Even if they do end up hiring a cleaning service, they tend to cheap out on this. Doing so can result in spending more money than you initially thought. So, let us find out how choosing the proper cleaning services can benefit you in more ways than you are thinking.</span></font><br></p>', '01720000000', 'demo@gmail.com', 'Tangail,Dhaka,Bangladesh', 'https://demo.royalscripts.com/clean_service', 'https://www.facebook.com/', 'https://www.twitter.com/', 'https://demo.royalscripts.com/clean_service', NULL, '{\"\":null}'),
(3, 'Nicole J. Mullins', 'nicole-j-mullins', 'Sr. Executive', '15334601571678616720.jpg', '<span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 16px; word-spacing: 1px;\">This service will help you to clean your home and also help to remove deep stains. Our Service provider will use effective chemicals that will wash your home smoothly and neatly.&nbsp;&nbsp;</span><font color=\"#212529\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; word-spacing: 1px;\">eople tend to do such a thing is because they find hiring a cleaning service company too expensive. Even if they do end up hiring a cleaning service, they tend to cheap out on this. Doing so can result in spending more money than you initially thought. So, let us find out how choosing the proper cleaning services can benefit you in more ways than you are thinking.</span></font><br>', '01700000000', 'demo@gmail.com', 'Munshinogor,Delduar,Tangail,Dhaka,Bangladesh', 'https://demo.royalscripts.com/clean_service', 'https://demo.royalscripts.com/clean_service', 'https://demo.royalscripts.com/clean_service', 'https://demo.royalscripts.com/clean_service', 'https://demo.royalscripts.com/clean_service', '{\"Service Quality\":\"95\",\"Plumbing Service\":\"90\",\"Aircondition\":\"85\"}'),
(4, 'Glen S. Buck', 'glen-s-buck', 'UI Designer', '3246590801679471556.jpg', '<p><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 16px; word-spacing: 1px;\">This service will help you to clean your home and also help to remove deep stains. Our Service provider will use effective chemicals that will wash your home smoothly and neatly.&nbsp;&nbsp;</span><font color=\"#212529\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; word-spacing: 1px;\">eople tend to do such a thing is because they find hiring a cleaning service company too expensive. Even if they do end up hiring a cleaning service, they tend to cheap out on this. Doing so can result in spending more money than you initially thought. So, let us find out how choosing the proper cleaning services can benefit you in more ways than you are thinking.</span></font><br></p>', '01720000000', 'demo@gmail.com', 'Tangail,Dhaka,Bangladesh', 'https://demo.royalscripts.com/clean_service', 'https://demo.royalscripts.com/clean_service', 'https://demo.royalscripts.com/clean_service', 'https://demo.royalscripts.com/clean_service', 'https://demo.royalscripts.com/clean_service', '{\"Service Quality\":\"95\",\"Plumbing Service\":\"80\",\"Aircondition\":\"65\"}'),
(5, 'Jhon Charles', 'jhon-charles', 'Chief Executive', '3147957231678616633.jpg', '<p><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 16px; word-spacing: 1px;\">This service will help you to clean your home and also help to remove deep stains. Our Service provider will use effective chemicals that will wash your home smoothly and neatly.&nbsp;&nbsp;</span><font color=\"#212529\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; word-spacing: 1px;\">eople tend to do such a thing is because they find hiring a cleaning service company too expensive. Even if they do end up hiring a cleaning service, they tend to cheap out on this. Doing so can result in spending more money than you initially thought. So, let us find out how choosing the proper cleaning services can benefit you in more ways than you are thinking.</span></font><br></p>', '017000000000', 'demo@gmail.com', 'Munshinogor,Delduar,Tangail,Dhaka,Bangladesh', 'https://demo.royalscripts.com/clean_service', 'https://demo.royalscripts.com/clean_service', 'https://demo.royalscripts.com/clean_service', 'https://demo.royalscripts.com/clean_service', 'https://demo.royalscripts.com/clean_service', '{\"AC Servicing\":\"90\",\"AC Cooling problem\":\"85\"}'),
(6, 'Smith Jhon', 'smith-jhon', 'Web Developer', '17193116451678616620.jpg', '<p><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 16px; word-spacing: 1px;\">This service will help you to clean your home and also help to remove deep stains. Our Service provider will use effective chemicals that will wash your home smoothly and neatly.&nbsp;&nbsp;</span><font color=\"#212529\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; word-spacing: 1px;\">eople tend to do such a thing is because they find hiring a cleaning service company too expensive. Even if they do end up hiring a cleaning service, they tend to cheap out on this. Doing so can result in spending more money than you initially thought. So, let us find out how choosing the proper cleaning services can benefit you in more ways than you are thinking.</span></font><br></p>', '01708302000', 'demo@gmail.com', 'Tangail,Dhaka,Bangladesh', 'https://demo.royalscripts.com/clean_service', 'https://demo.royalscripts.com/clean_service', 'https://demo.royalscripts.com/clean_service', 'https://demo.royalscripts.com/clean_service', 'https://demo.royalscripts.com/clean_service', '{\"TV Repair\":\"70\",\"Refrigerator Repair\":\"82\"}');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `designation`, `photo`, `message`) VALUES
(2, 'Mr. Aashik', 'UI Designer', '9618403561678617327.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'),
(3, 'Jhon Due', 'Creative Director', '2966177251678617322.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'),
(4, 'Mr. Marlie', 'CEO GeniusTeam', '6019306521678617316.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `email_verified` enum('Yes','No') COLLATE utf8mb4_unicode_ci DEFAULT 'No',
  `verification_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance` double NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `photo`, `phone`, `country`, `city`, `address`, `zip`, `status`, `email_verified`, `verification_link`, `password`, `balance`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'User Hasan', 'user@gmail.com', 'TLA1588136853people.png', '17283320', 'Belarus', 'add', 'Tangail,Dhaka,Bangladesh', '1234', 1, NULL, NULL, '$2y$10$bpzr5I3WnA1FKp7SR0meoeJgmXT5Ux7DovdWCUquPvWdNgjXZHS5i', 900.5495728445, NULL, NULL, '2022-01-11 23:17:43'),
(4, 'User Hasan', 'showrabhasan7515@gmail.com', 'JIC1588136853people.png', '17283320', 'Belarus', 'UserRequest', 'Tangail,Dhaka,Bangladesh', '1234', 1, NULL, NULL, '$2y$10$Muu9xoTvxsx6mHh3yjqLTecTKADrG7YMYmGIqWIuz.YbDoR97Cqw.', 0, NULL, NULL, '2021-12-14 00:04:01'),
(5, 'Test Product1', 'shaon@gmail.com', NULL, '172833200', NULL, NULL, NULL, NULL, 1, 'Yes', '521dabcadf15fabf6eb8d08bd960942a', '$2y$10$Tu5YCEh08XdbpaTU8T7Z6OHif/lY0fDfYPHBd/QRTfpmnzExRQMfO', 0, NULL, '2021-12-18 23:30:31', '2021-12-18 23:30:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_languages`
--
ALTER TABLE `admin_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counters`
--
ALTER TABLE `counters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `generalsettings`
--
ALTER TABLE `generalsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hold_orders`
--
ALTER TABLE `hold_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pcategories`
--
ALTER TABLE `pcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo_settings`
--
ALTER TABLE `seo_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_faqs`
--
ALTER TABLE `service_faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socialsettings`
--
ALTER TABLE `socialsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_links`
--
ALTER TABLE `social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
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
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admin_languages`
--
ALTER TABLE `admin_languages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `counters`
--
ALTER TABLE `counters`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `generalsettings`
--
ALTER TABLE `generalsettings`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hold_orders`
--
ALTER TABLE `hold_orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `pcategories`
--
ALTER TABLE `pcategories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `seo_settings`
--
ALTER TABLE `seo_settings`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `service_faqs`
--
ALTER TABLE `service_faqs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `socialsettings`
--
ALTER TABLE `socialsettings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social_links`
--
ALTER TABLE `social_links`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
