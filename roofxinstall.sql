-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2024 at 09:30 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `roofxinstall`
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
  `experiencelist` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `second_photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `header_title`, `title`, `experience`, `experiencelist`, `description`, `number`, `photo`, `second_photo`) VALUES
(1, 'About Our Company', 'We’re Committed to Roofing Excellence', 55, 'Provide the best roof services,32k Partners have worked us.,Professional and experienced human resources.', 'There are many variations of passages of Lorem Ipsum available, but the majori have suffered alteration in some form, by injected humour, or randomised word which don\'t look even slightly believable.', '01700000000', '17607202901687258466.jpg', '9876191231687258466.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_verify_token` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `role_id` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `source` varchar(191) DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `meta_tag` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `category_id`, `title`, `slug`, `photo`, `description`, `source`, `views`, `status`, `meta_tag`, `meta_description`, `tags`, `created_at`, `updated_at`) VALUES
(66, 8, 'Transforming Your Roof into a Functional Outdoor Space', 'transforming-your-roof-into-a-functional-outdoor-space', '7347976861690964170.jpg', '<p><font color=\"#7b7d83\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\">Your home\'s roof is one of its most vital components, protecting you and your belongings from the elements. Regular roof maintenance is essential to ensure its longevity and keep your home looking beautiful. In this comprehensive blog post, we\'ll walk you through the top 10 roof maintenance tips that will not only extend the life of your roof but also enhance the overall aesthetics of your home.</span></font></p><p><font color=\"#7b7d83\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p><font color=\"#7b7d83\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\">From inspecting for signs of damage to addressing common issues like leaks and loose shingles, our expert tips will empower you to take proactive measures in caring for your roof. We\'ll delve into the importance of clearing debris, maintaining gutters, and ensuring proper ventilation to prevent potential problems and keep your roof in top-notch condition.</span></font></p><p><font color=\"#7b7d83\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p><font color=\"#7b7d83\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\">Furthermore, we\'ll provide guidance on selecting the right roofing materials and how they can impact both the durability and visual appeal of your home. Whether you\'re considering traditional shingles, eco-friendly options like green roofing, or exploring the benefits of solar roofing, we\'ve got you covered with insightful information.</span></font></p><p><font color=\"#7b7d83\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p><font color=\"#7b7d83\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\">You don\'t need to be a roofing expert to follow these maintenance tips. We\'ve simplified each step and included practical advice for homeowners of all experience levels. By incorporating these strategies into your routine, you\'ll not only save money on costly repairs but also maintain the curb appeal and value of your property.</span></font></p><p><font color=\"#7b7d83\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p><font color=\"#7b7d83\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\">Don\'t wait for a major roofing problem to arise; be proactive and take control of your roof\'s health and aesthetics today. Join us on this roof maintenance journey and ensure that your home remains a durable and beautiful haven for years to come.</span></font></p>', NULL, 2, 1, NULL, NULL, NULL, '2023-03-12 05:28:22', '2023-08-02 02:16:10'),
(67, 9, 'How to Protect Your Roof During Extreme Weather', 'how-to-protect-your-roof-during-extreme-weather', '1922878711690958567.jpg', '<p><font color=\"#7b7d83\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\">Extreme weather events, such as hurricanes, heavy storms, snowstorms, and scorching heatwaves, can wreak havoc on your home\'s roof. Safeguarding your roof during these challenging conditions is crucial to prevent costly damages and ensure the safety of your family. In this informative blog post, we provide valuable insights and practical tips on how to protect your roof when facing extreme weather.</span></font></p><p><font color=\"#7b7d83\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p><font color=\"#7b7d83\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\">Our expert advice covers a wide range of weather scenarios, offering comprehensive guidance on preparing your roof before, during, and after extreme events. Learn about the importance of regular roof inspections, identifying weak spots, and reinforcing vulnerable areas to fortify your roof\'s resilience.</span></font></p><p><font color=\"#7b7d83\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p><font color=\"#7b7d83\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\">Discover effective strategies for safeguarding against strong winds, heavy rainfall, and hail damage. From installing hurricane straps and securing loose shingles to ensuring proper drainage, our step-by-step instructions will empower you to take proactive measures in protecting your roof.</span></font></p><p><font color=\"#7b7d83\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p><font color=\"#7b7d83\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\">During winter storms, snow and ice can create significant challenges for roofs. We\'ll outline best practices for snow removal and ice dam prevention to avoid structural stress and water leaks. Additionally, we\'ll explore how proper insulation and ventilation can enhance your roof\'s ability to withstand extreme cold temperatures.</span></font></p><p><font color=\"#7b7d83\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p><font color=\"#7b7d83\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\">For those living in regions prone to wildfires or scorching heatwaves, we\'ll share essential tips on selecting fire-resistant roofing materials and implementing fire safety measures to shield your home from potential disasters.</span></font></p><p><font color=\"#7b7d83\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p><font color=\"#7b7d83\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\">No matter where you live, extreme weather can pose a threat to your roof. By following the advice in this blog, you\'ll gain valuable knowledge and actionable steps to protect your investment and maintain the integrity of your roof during the most challenging weather conditions.</span></font></p><p><font color=\"#7b7d83\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p><font color=\"#7b7d83\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\">Don\'t wait for a storm to strike; be prepared and proactive in safeguarding your roof against extreme weather. Join us in this journey to fortify your roof and ensure that it stands strong and secure through any weather event that comes its way.</span></font></p>', NULL, 2, 1, NULL, NULL, 'Blog', '2023-03-12 05:28:44', '2023-08-02 00:42:47'),
(68, 9, 'Top 10 Roof Maintenance Tips for a Durable and Beautiful Home', 'top-10-roof-maintenance-tips-for-a-durable-and-beautiful-home', '10026718751690958387.jpg', '<p><font color=\"#7b7d83\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\">Your home\'s roof is one of its most vital components, protecting you and your belongings from the elements. Regular roof maintenance is essential to ensure its longevity and keep your home looking beautiful. In this comprehensive blog post, we\'ll walk you through the top 10 roof maintenance tips that will not only extend the life of your roof but also enhance the overall aesthetics of your home.</span></font></p><p><font color=\"#7b7d83\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p><font color=\"#7b7d83\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\">From inspecting for signs of damage to addressing common issues like leaks and loose shingles, our expert tips will empower you to take proactive measures in caring for your roof. We\'ll delve into the importance of clearing debris, maintaining gutters, and ensuring proper ventilation to prevent potential problems and keep your roof in top-notch condition.</span></font></p><p><font color=\"#7b7d83\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p><font color=\"#7b7d83\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\">Furthermore, we\'ll provide guidance on selecting the right roofing materials and how they can impact both the durability and visual appeal of your home. Whether you\'re considering traditional shingles, eco-friendly options like green roofing, or exploring the benefits of solar roofing, we\'ve got you covered with insightful information.</span></font></p><p><font color=\"#7b7d83\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p><font color=\"#7b7d83\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\">You don\'t need to be a roofing expert to follow these maintenance tips. We\'ve simplified each step and included practical advice for homeowners of all experience levels. By incorporating these strategies into your routine, you\'ll not only save money on costly repairs but also maintain the curb appeal and value of your property.</span></font></p><p><font color=\"#7b7d83\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p><font color=\"#7b7d83\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\">Don\'t wait for a major roofing problem to arise; be proactive and take control of your roof\'s health and aesthetics today. Join us on this roof maintenance journey and ensure that your home remains a durable and beautiful haven for years to come.</span></font></p>', NULL, 30, 1, NULL, NULL, 'Blog,Tag', '2023-03-12 05:28:59', '2023-08-02 00:39:47'),
(72, 14, 'Exploring Unique and Stylish Roofing Design Options', 'exploring-unique-and-stylish-roofing-design-options', '17108371493423.jpg', '<p>Extreme weather events, such as hurricanes, heavy storms, snowstorms, and scorching heatwaves, can wreak havoc on your home\'s roof. Safeguarding your roof during these challenging conditions is crucial to prevent costly damages and ensure the safety of your family. In this informative blog post, we provide valuable insights and practical tips on how to protect your roof when facing extreme weather.</p><p><br></p><p>Our expert advice covers a wide range of weather scenarios, offering comprehensive guidance on preparing your roof before, during, and after extreme events. Learn about the importance of regular roof inspections, identifying weak spots, and reinforcing vulnerable areas to fortify your roof\'s resilience.</p><p><br></p><p>Discover effective strategies for safeguarding against strong winds, heavy rainfall, and hail damage. From installing hurricane straps and securing loose shingles to ensuring proper drainage, our step-by-step instructions will empower you to take proactive measures in protecting your roof.</p><p><br></p><p>During winter storms, snow and ice can create significant challenges for roofs. We\'ll outline best practices for snow removal and ice dam prevention to avoid structural stress and water leaks. Additionally, we\'ll explore how proper insulation and ventilation can enhance your roof\'s ability to withstand extreme cold temperatures.</p><p><br></p><p>For those living in regions prone to wildfires or scorching heatwaves, we\'ll share essential tips on selecting fire-resistant roofing materials and implementing fire safety measures to shield your home from potential disasters.</p><p><br></p><p>No matter where you live, extreme weather can pose a threat to your roof. By following the advice in this blog, you\'ll gain valuable knowledge and actionable steps to protect your investment and maintain the integrity of your roof during the most challenging weather conditions.</p><p><br></p><p>Don\'t wait for a storm to strike; be prepared and proactive in safeguarding your roof against extreme weather. Join us in this journey to fortify your roof and ensure that it stands strong and secure through any weather event that comes its way.</p>', NULL, 0, 1, NULL, NULL, 'Blog,Blog Tag', '2023-08-02 02:18:32', '2024-03-19 02:32:29');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `slug`, `status`) VALUES
(8, 'Roof Repairs 101', 'roof-repairs-101', 1),
(9, 'Weathering the Storm', 'weathering-the-storm', 1),
(13, 'Rooftop Renovations', 'rooftop-renovations', 1),
(14, 'Preventing Roof Leaks', 'preventing-roof-leaks', 1),
(15, 'Roofing Safety', 'roofing-safety', 1);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `title`, `photo`) VALUES
(1, 'Office', '18870181751687254874.png'),
(2, 'Window', '19801867251687254867.png'),
(3, 'Service', '9109954631687254859.png'),
(4, 'ProfessionalBand', '4075842061687254851.png'),
(5, 'Cleaning', '16399467211687254844.png'),
(6, 'Matador', '4599468961687254837.png'),
(8, 'Today', '2542370731687254888.png'),
(9, 'Askimat', '18769126691687254904.png'),
(10, 'Martino', '7672074811687254916.png');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `slug`, `status`) VALUES
(5, 'I\'m a startup and need a new website', '1594459091710840907.jpg', 'im-a-startup-and-need-a-new-website', 1),
(6, 'I want to grow my business with digital marketing', '2223224541710840921.jpg', 'i-want-to-grow-my-business-with-digital-marketing', 1),
(7, 'My website is not working. Need makeover', '15842264131710840761.jpg', 'my-website-is-not-working-need-makeover', 1);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_pages`
--

INSERT INTO `contact_pages` (`id`, `email1`, `email2`, `phone1`, `phone2`, `address`, `photo`, `title`, `map_link`) VALUES
(1, 'Envatodemo@gmail.com', 'Envatodemo2@gmail.com', '+23 (000) 68 603', '+21 (000) 68 703', '66 broklyn golden street 600 New york. USA!', '1916769731689157627.jpg', 'Contact for Services', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d96811.54759587669!2d-74.01263924803828!3d406880494567041!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f131!3m3!1m2!1s0x89c25bae694479a3%3A0xb9949385da52e69e!2sBarclays%20Center!5e0!3m2!1sen!2sbd!4v1636195194646!5m2!1sen!2sbd');

-- --------------------------------------------------------

--
-- Table structure for table `counters`
--

CREATE TABLE `counters` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `counter_number` int(11) NOT NULL DEFAULT 0,
  `icon` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `email_type` varchar(255) DEFAULT NULL,
  `email_subject` mediumtext DEFAULT NULL,
  `email_body` longtext DEFAULT NULL,
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
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `photo` varchar(255) NOT NULL,
  `status` tinyint(2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `generalsettings`
--

CREATE TABLE `generalsettings` (
  `id` int(191) NOT NULL,
  `logo` varchar(191) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `copyright_text` varchar(255) DEFAULT NULL,
  `header_logo` varchar(255) DEFAULT NULL,
  `error_banner` varchar(255) DEFAULT NULL,
  `favicon` varchar(191) NOT NULL,
  `breadcumb` varchar(255) DEFAULT NULL,
  `title` varchar(191) NOT NULL,
  `loader` varchar(191) NOT NULL,
  `smtp_host` varchar(255) DEFAULT NULL,
  `mail_type` varchar(255) DEFAULT NULL,
  `smtp_port` varchar(255) DEFAULT NULL,
  `smtp_user` varchar(255) DEFAULT NULL,
  `smtp_pass` varchar(255) DEFAULT NULL,
  `mail_encryption` varchar(255) DEFAULT NULL,
  `from_email` varchar(255) DEFAULT NULL,
  `from_name` varchar(255) DEFAULT NULL,
  `theme_color` varchar(255) DEFAULT NULL,
  `theme` varchar(191) NOT NULL DEFAULT 'theme1',
  `is_debug` tinyint(4) NOT NULL DEFAULT 0,
  `is_disqus` tinyint(4) NOT NULL DEFAULT 0,
  `disqus` varchar(255) DEFAULT NULL,
  `is_tawk` tinyint(4) NOT NULL DEFAULT 0,
  `tawk_id` varchar(222) DEFAULT NULL,
  `is_verify` tinyint(4) DEFAULT 0,
  `is_cookie` tinyint(4) NOT NULL DEFAULT 0,
  `cookie_btn_text` varchar(255) DEFAULT NULL,
  `cookie_text` text DEFAULT NULL,
  `is_popup` tinyint(255) NOT NULL DEFAULT 0,
  `popup_image` text DEFAULT NULL,
  `popup_title` varchar(255) DEFAULT NULL,
  `popup_url` varchar(255) DEFAULT NULL,
  `is_maintenance` tinyint(4) DEFAULT 0,
  `maintenance` text DEFAULT NULL,
  `maintenance_photo` varchar(191) DEFAULT NULL,
  `menu` text DEFAULT NULL,
  `working_hour` varchar(191) DEFAULT NULL,
  `header_text` varchar(255) DEFAULT NULL,
  `contact_section_photo` varchar(255) DEFAULT NULL,
  `contact_section_header_title` varchar(255) DEFAULT NULL,
  `contact_section_title` varchar(255) DEFAULT NULL,
  `footer_logo` varchar(191) DEFAULT NULL,
  `footer_bg` varchar(255) DEFAULT NULL,
  `faq_photo` varchar(191) DEFAULT NULL,
  `counter_photo` varchar(100) DEFAULT NULL,
  `social_links` text DEFAULT NULL,
  `hero_banner` varchar(255) DEFAULT NULL,
  `hero_title` varchar(255) DEFAULT NULL,
  `hero_text` varchar(255) DEFAULT NULL,
  `hero_btn_text` varchar(255) DEFAULT NULL,
  `hero_btn_link` varchar(255) DEFAULT NULL,
  `testimonial_photo` varchar(255) DEFAULT NULL,
  `want_to_header` varchar(255) DEFAULT NULL,
  `want_to_sub` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `generalsettings`
--

INSERT INTO `generalsettings` (`id`, `logo`, `phone`, `email`, `address`, `copyright_text`, `header_logo`, `error_banner`, `favicon`, `breadcumb`, `title`, `loader`, `smtp_host`, `mail_type`, `smtp_port`, `smtp_user`, `smtp_pass`, `mail_encryption`, `from_email`, `from_name`, `theme_color`, `theme`, `is_debug`, `is_disqus`, `disqus`, `is_tawk`, `tawk_id`, `is_verify`, `is_cookie`, `cookie_btn_text`, `cookie_text`, `is_popup`, `popup_image`, `popup_title`, `popup_url`, `is_maintenance`, `maintenance`, `maintenance_photo`, `menu`, `working_hour`, `header_text`, `contact_section_photo`, `contact_section_header_title`, `contact_section_title`, `footer_logo`, `footer_bg`, `faq_photo`, `counter_photo`, `social_links`, `hero_banner`, `hero_title`, `hero_text`, `hero_btn_text`, `hero_btn_link`, `testimonial_photo`, `want_to_header`, `want_to_sub`) VALUES
(1, '1571567292logo.png', '01700000000', 'genius@gmail.com', '380 St, New York, USA', 'Copyright © 2023 Reserved Passion by GeniusOcean', '13240911911691043969.png', 'nx0dgfsa1dfsfa.jpg', '10552372151678610812.png', '15653222411687242749.jpg', 'Genius Service', '1564224328loading3.gif', 'smtp.mailtrap.io000', 'php_mail', '25', '72c114620aa8c0000', '2822701e2d8d9900', 'ssl', 'geniustest11@gmail.com', 'GeniusTest', '#18E57A', 'theme1', 1, 1, 'test', 0, 'twad', 1, 1, 'Submit', 'This website collects cookies to deliver better user experience', 0, 'IMn1588136843organizer.png', 'test', 'test', 0, 'Site Down', '19675019431679304578.png', '{\"Blog\":{\"title\":\"Blog\",\"dropdown\":\"no\",\"href\":\"http:\\/\\/localhost\\/work\\/foodpa\\/blog\",\"target\":\"self\"},\"Contact\":{\"title\":\"Contact\",\"dropdown\":\"no\",\"href\":\"http:\\/\\/localhost\\/work\\/foodpa\\/contact\",\"target\":\"self\"},\"Categories\":{\"title\":\"Categories\",\"dropdown\":\"yes\",\"href\":null,\"target\":\"self\"},\"Home\":{\"title\":\"Home\",\"dropdown\":\"no\",\"href\":\"ROUTE HERE\",\"target\":\"self\"},\"Return-Policy\":{\"title\":\"Return Policy\",\"dropdown\":\"no\",\"href\":\"http:\\/\\/localhost\\/work\\/foodpa\\/return-policy\",\"target\":\"self\"},\"test\":{\"title\":\"test\",\"dropdown\":\"no\",\"href\":\"Route Here\",\"target\":\"self\"}}', 'working hours : Mon-sat (8.00am - 6.00PM)', 'best cleaning company website forever!', '7824961511687426242.png', 'Your roof require professional attention', 'Book Your Appointment', '1471592251691044018.png', '3689839211687251534.jpg', '16389497441678873938.png', '13332160141687424315.jpg', NULL, '8794014411710833717.jpg', 'We Build Websites That Build Your Business', 'Affordable. Fast Turnaround.', 'Contact', 'https://project.geniusocean.com/roof/', '3578604961687427779.jpg', 'Website Design and Development', '<div style=\"text-align: center; color:#fff\">Imagine 14 days from today you could have your own high converting website.  A website that will open new possibilities for your business.\r\n</div><br>\r\n<div style=\"text-align: center; color:#fff\">\r\nStop wasting time procrastinating and trying to figure out how it all works.  Instead, concentrate on what you do best and we will do what we’re good at – creating awesome websites!</div>');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
  `migration` varchar(255) NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
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
  `instagram` varchar(255) DEFAULT NULL,
  `end_date` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `slug`, `photo`, `category_id`, `client`, `date`, `details`, `facebook`, `twitter`, `linkedin`, `instagram`, `end_date`, `website`, `email`, `address`, `phone`) VALUES
(1, 'Roof Designing', 'roof-designing', '17916299141687415381.jpg', 2, 'Mr. Apa', '2023-03-23', '<p class=\"info-one\" style=\"margin-bottom: 15px; line-height: var(--tg-body-line-height);\"><font color=\"#61657e\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\">Fixing roof damage requires careful assessment, preparation, and execution to ensure a safe and effective repair. Here\'s a step-by-step description of how to fix roof damage:</span></font></p><p class=\"info-one\" style=\"margin-bottom: 15px; line-height: var(--tg-body-line-height);\"><font color=\"#61657e\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p class=\"info-one\" style=\"margin-bottom: 15px; line-height: var(--tg-body-line-height);\"><font color=\"#61657e\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\"><span style=\"font-weight: bolder;\">Safety Precautions:</span>&nbsp;</span></font><span style=\"font-size: 16px; color: rgb(97, 101, 126); font-family: &quot;DM Sans&quot;, sans-serif;\">Before starting any repair work, prioritize safety. Use appropriate personal protective equipment (PPE) such as gloves, safety goggles, and a sturdy ladder. Ensure the roof and surrounding area are clear of debris and hazards.</span></p><p class=\"info-one\" style=\"margin-bottom: 15px; line-height: var(--tg-body-line-height);\"><font color=\"#61657e\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p class=\"info-one\" style=\"margin-bottom: 15px; line-height: var(--tg-body-line-height);\"><font color=\"#61657e\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\"><span style=\"font-weight: bolder;\">Inspection:</span>&nbsp;</span></font><span style=\"font-size: 16px; color: rgb(97, 101, 126); font-family: &quot;DM Sans&quot;, sans-serif;\">Thoroughly inspect the roof for any signs of damage, such as missing or damaged shingles, leaks, sagging areas, or loose flashing. Identifying the extent of the damage will help you plan for the necessary repairs.</span></p><p class=\"info-one\" style=\"margin-bottom: 15px; line-height: var(--tg-body-line-height);\"><font color=\"#61657e\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p class=\"info-one\" style=\"margin-bottom: 15px; line-height: var(--tg-body-line-height);\"><font color=\"#61657e\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\"><span style=\"font-weight: bolder;\">Gather Materials:</span>&nbsp;</span></font><span style=\"font-size: 16px; color: rgb(97, 101, 126); font-family: &quot;DM Sans&quot;, sans-serif;\">Make a list of the materials needed for the repair, based on the type of damage and roof material. Common repair materials include replacement shingles, roofing nails, roofing cement or sealant, and flashing.</span></p><p class=\"info-two\" style=\"margin-bottom: 25px; font-size: 16px; line-height: var(--tg-body-line-height); font-style: italic; font-family: var(--tg-heading-font-family);\"><b style=\"\"><font color=\"rgba(0, 0, 0, 0)\">On the other hand, we denounce with </font><font color=\"#ff9c00\">righteous&nbsp;indignation and dislike men&nbsp;who are so our beguiled</font><font color=\"rgba(0, 0, 0, 0)\"> and demor alized by the charms of&nbsp;</font><span style=\"color: var(--tg-primary-color);\">pleasure of the moment</span><font color=\"rgba(0, 0, 0, 0)\">, so blinded by desire, that they cannot foresee.</font></b></p>', NULL, NULL, NULL, NULL, '2023-06-30', 'avabil.com', 'avabil@gmail.com', '374 FA Tower, William S Blvd 2721, IL, USA', '+(323) 750-1234'),
(2, 'Damage Roof Repair', 'damage-roof-repair', '9845320141687414016.jpg', 1, 'Mr. Apa', '2023-03-25', '<p class=\"info-one\" style=\"margin-bottom: 15px; line-height: var(--tg-body-line-height);\"><font color=\"#61657e\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\">Fixing roof damage requires careful assessment, preparation, and execution to ensure a safe and effective repair. Here\'s a step-by-step description of how to fix roof damage:</span></font></p><p class=\"info-one\" style=\"margin-bottom: 15px; line-height: var(--tg-body-line-height);\"><font color=\"#61657e\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p class=\"info-one\" style=\"margin-bottom: 15px; line-height: var(--tg-body-line-height);\"><font color=\"#61657e\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\"><span style=\"font-weight: bolder;\">Safety Precautions:</span>&nbsp;</span></font><span style=\"font-size: 16px; color: rgb(97, 101, 126); font-family: &quot;DM Sans&quot;, sans-serif;\">Before starting any repair work, prioritize safety. Use appropriate personal protective equipment (PPE) such as gloves, safety goggles, and a sturdy ladder. Ensure the roof and surrounding area are clear of debris and hazards.</span></p><p class=\"info-one\" style=\"margin-bottom: 15px; line-height: var(--tg-body-line-height);\"><font color=\"#61657e\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p class=\"info-one\" style=\"margin-bottom: 15px; line-height: var(--tg-body-line-height);\"><font color=\"#61657e\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\"><span style=\"font-weight: bolder;\">Inspection:</span>&nbsp;</span></font><span style=\"font-size: 16px; color: rgb(97, 101, 126); font-family: &quot;DM Sans&quot;, sans-serif;\">Thoroughly inspect the roof for any signs of damage, such as missing or damaged shingles, leaks, sagging areas, or loose flashing. Identifying the extent of the damage will help you plan for the necessary repairs.</span></p><p class=\"info-one\" style=\"margin-bottom: 15px; line-height: var(--tg-body-line-height);\"><font color=\"#61657e\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p class=\"info-one\" style=\"margin-bottom: 15px; line-height: var(--tg-body-line-height);\"><font color=\"#61657e\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\"><span style=\"font-weight: bolder;\">Gather Materials:</span>&nbsp;</span></font><span style=\"font-size: 16px; color: rgb(97, 101, 126); font-family: &quot;DM Sans&quot;, sans-serif;\">Make a list of the materials needed for the repair, based on the type of damage and roof material. Common repair materials include replacement shingles, roofing nails, roofing cement or sealant, and flashing.</span></p><p class=\"info-two\" style=\"margin-bottom: 25px; font-size: 16px; line-height: var(--tg-body-line-height); font-style: italic; font-family: var(--tg-heading-font-family);\"><b style=\"\"><font color=\"rgba(0, 0, 0, 0)\">On the other hand, we denounce with righteous&nbsp;</font><span style=\"color: var(--tg-primary-color);\">indignation and </span><font color=\"#ff9c00\">dislike men&nbsp;who are so our beguiled and demor alized by the charms</font><font color=\"rgba(0, 0, 0, 0)\"> of&nbsp;</font><span style=\"color: var(--tg-primary-color);\">pleasure of the moment</span><font color=\"rgba(0, 0, 0, 0)\">, so blinded by desire, that they cannot foresee.</font></b></p>', 'https://www.facebook.com/', 'https://www.twitter.com/', 'https://www.facebook.com/', 'adfadsf', '2023-06-30', 'avabil.com', 'avabil@gmail.com', '374 FA Tower, William S Blvd 2721, IL, USA', '+(323) 750-1234'),
(3, 'Modern Roofing Style', 'modern-roofing-style', '17642289321687413992.jpg', 2, 'Mr. Apa', '2023-03-23', '<p class=\"info-one\" style=\"margin-bottom: 15px; line-height: var(--tg-body-line-height);\"><font color=\"#61657e\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\">Fixing roof damage requires careful assessment, preparation, and execution to ensure a safe and effective repair. Here\'s a step-by-step description of how to fix roof damage:</span></font></p><p class=\"info-one\" style=\"margin-bottom: 15px; line-height: var(--tg-body-line-height);\"><font color=\"#61657e\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p class=\"info-one\" style=\"margin-bottom: 15px; line-height: var(--tg-body-line-height);\"><font color=\"#61657e\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\"><span style=\"font-weight: bolder;\">Safety Precautions:</span>&nbsp;</span></font><span style=\"font-size: 16px; color: rgb(97, 101, 126); font-family: &quot;DM Sans&quot;, sans-serif;\">Before starting any repair work, prioritize safety. Use appropriate personal protective equipment (PPE) such as gloves, safety goggles, and a sturdy ladder. Ensure the roof and surrounding area are clear of debris and hazards.</span></p><p class=\"info-one\" style=\"margin-bottom: 15px; line-height: var(--tg-body-line-height);\"><font color=\"#61657e\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p class=\"info-one\" style=\"margin-bottom: 15px; line-height: var(--tg-body-line-height);\"><font color=\"#61657e\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\"><span style=\"font-weight: bolder;\">Inspection:</span>&nbsp;</span></font><span style=\"font-size: 16px; color: rgb(97, 101, 126); font-family: &quot;DM Sans&quot;, sans-serif;\">Thoroughly inspect the roof for any signs of damage, such as missing or damaged shingles, leaks, sagging areas, or loose flashing. Identifying the extent of the damage will help you plan for the necessary repairs.</span></p><p class=\"info-one\" style=\"margin-bottom: 15px; line-height: var(--tg-body-line-height);\"><font color=\"#61657e\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p class=\"info-one\" style=\"margin-bottom: 15px; line-height: var(--tg-body-line-height);\"><font color=\"#61657e\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\"><span style=\"font-weight: bolder;\">Gather Materials:</span>&nbsp;</span></font><span style=\"font-size: 16px; color: rgb(97, 101, 126); font-family: &quot;DM Sans&quot;, sans-serif;\">Make a list of the materials needed for the repair, based on the type of damage and roof material. Common repair materials include replacement shingles, roofing nails, roofing cement or sealant, and flashing.</span></p><p class=\"info-two\" style=\"margin-bottom: 25px; font-size: 16px; line-height: var(--tg-body-line-height); font-style: italic; font-family: var(--tg-heading-font-family);\"><b style=\"\"><font color=\"rgba(0, 0, 0, 0)\">On the other hand, we denounce with righteous</font><font color=\"#ff9c00\">&nbsp;indignation and dislike men&nbsp;who are so our beguiled and demor</font><font color=\"rgba(0, 0, 0, 0)\"> alized by the charms of&nbsp;</font><span style=\"color: var(--tg-primary-color);\">pleasure of the moment</span><font color=\"rgba(0, 0, 0, 0)\">, so blinded by desire, that they cannot foresee.</font></b></p>', NULL, NULL, NULL, NULL, '2023-07-01', 'avabil.com', 'avabil@gmail.com', '374 FA Tower, William S Blvd 2721, IL, USA', '+(323) 750-1234'),
(4, 'Fixing of Roof Damage', 'fixing-of-roof-damage', '2465749051687413826.jpg', 1, 'pronobsarker16@gmail.com', '2023-03-25', '<p class=\"info-one\" style=\"margin-bottom: 15px; line-height: var(--tg-body-line-height);\"><font color=\"#61657e\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\">Fixing roof damage requires careful assessment, preparation, and execution to ensure a safe and effective repair. Here\'s a step-by-step description of how to fix roof damage:</span></font></p><p class=\"info-one\" style=\"margin-bottom: 15px; line-height: var(--tg-body-line-height);\"><font color=\"#61657e\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p class=\"info-one\" style=\"margin-bottom: 15px; line-height: var(--tg-body-line-height);\"><font color=\"#61657e\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\"><b>Safety Precautions:</b>&nbsp;</span></font><span style=\"font-size: 16px; color: rgb(97, 101, 126); font-family: &quot;DM Sans&quot;, sans-serif;\">Before starting any repair work, prioritize safety. Use appropriate personal protective equipment (PPE) such as gloves, safety goggles, and a sturdy ladder. Ensure the roof and surrounding area are clear of debris and hazards.</span></p><p class=\"info-one\" style=\"margin-bottom: 15px; line-height: var(--tg-body-line-height);\"><font color=\"#61657e\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p class=\"info-one\" style=\"margin-bottom: 15px; line-height: var(--tg-body-line-height);\"><font color=\"#61657e\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\"><b>Inspection:</b>&nbsp;</span></font><span style=\"font-size: 16px; color: rgb(97, 101, 126); font-family: &quot;DM Sans&quot;, sans-serif;\">Thoroughly inspect the roof for any signs of damage, such as missing or damaged shingles, leaks, sagging areas, or loose flashing. Identifying the extent of the damage will help you plan for the necessary repairs.</span></p><p class=\"info-one\" style=\"margin-bottom: 15px; line-height: var(--tg-body-line-height);\"><font color=\"#61657e\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p class=\"info-one\" style=\"margin-bottom: 15px; line-height: var(--tg-body-line-height);\"><font color=\"#61657e\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\"><b>Gather Materials:</b>&nbsp;</span></font><span style=\"font-size: 16px; color: rgb(97, 101, 126); font-family: &quot;DM Sans&quot;, sans-serif;\">Make a list of the materials needed for the repair, based on the type of damage and roof material. Common repair materials include replacement shingles, roofing nails, roofing cement or sealant, and flashing.</span></p><p class=\"info-two\" style=\"margin-bottom: 25px; font-size: 16px; line-height: var(--tg-body-line-height); font-style: italic; font-family: var(--tg-heading-font-family);\"><b style=\"\"><font color=\"rgba(0, 0, 0, 0)\">On the other hand, we denounce with righteous&nbsp;</font><span style=\"color: var(--tg-primary-color);\">indignation and </span><font color=\"#ff9c00\">dislike men&nbsp;who are so our beguiled and demor</font><font color=\"rgba(0, 0, 0, 0)\"> alized by the charms of&nbsp;</font><span style=\"color: var(--tg-primary-color);\">pleasure of the moment</span><font color=\"rgba(0, 0, 0, 0)\">, so blinded by desire, that they cannot foresee.</font></b></p>', 'https://www.facebook.com/', 'https://www.twitter.com/', 'https://www.facebook.com/', 'https://www.twitter.com/', '2023-06-21', 'avabil.com', 'avabil@gmail.com', '374 FA Tower, William S Blvd 2721, IL, USA', '+(323) 750-1234');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `attribute` varchar(555) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `is_feature` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_faqs`
--

CREATE TABLE `service_faqs` (
  `id` bigint(20) NOT NULL,
  `service_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service_faqs`
--

INSERT INTO `service_faqs` (`id`, `service_id`, `title`, `content`) VALUES
(7, 9, 'How stay calm from the first time.', 'Your roof is one of the most crucial components of your home, providing protection from the elements and ensuring the safety of your family.'),
(8, 9, 'How stay calm from the first time.', 'Your roof is one of the most crucial components of your home, providing protection from the elements and ensuring the safety of your family.');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `fclient_id` text DEFAULT NULL,
  `fclient_secret` text DEFAULT NULL,
  `fredirect` text DEFAULT NULL,
  `gclient_id` text DEFAULT NULL,
  `gclient_secret` text DEFAULT NULL,
  `gredirect` text DEFAULT NULL,
  `website_url` varchar(191) DEFAULT NULL,
  `social_icons` text DEFAULT NULL,
  `social_urls` text DEFAULT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`) VALUES
(37, 'owner@gmail.com'),
(38, 'shaon@gmail.com'),
(39, 'showrav@gmail.com'),
(40, 'showrabhasan@gmail.com'),
(41, 'user@gmail.com'),
(43, 'pronob@gmail.com');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `slug`, `designation`, `photo`, `bio`, `phone`, `email`, `address`, `website`, `facebook`, `twitter`, `linkedin`, `instagram`, `progress`) VALUES
(1, 'Jennifer D. Holland', 'jennifer-d-holland', 'Associate Engineer', '11639501841687423559.jpg', '<p><font color=\"#212529\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; word-spacing: 1px;\">When seeking roof repair services, it\'s essential to hire a reputable and experienced roofing contractor to ensure the quality and longevity of the repairs. Always verify their credentials, check for licenses and insurance, and read reviews or testimonials from previous clients to make an informed decision.</span></font><br></p>', '01800000000', 'demo@gmail.com', 'Munshinogor,Delduar,Tangail,Dhaka,Bangladesh', 'https://demo.royalscripts.com/clean_service', 'https://demo.royalscripts.com/clean_service', 'https://demo.royalscripts.com/clean_service', 'https://demo.royalscripts.com/clean_service', 'https://demo.royalscripts.com/clean_service', '{\"Service Quality\":\"95\",\"Roof repair manager\":\"90\",\"Design roof\":\"85\"}'),
(2, 'Cathryn J. Maxwell', 'cathryn-j-maxwell', 'Jr. Officer', '20176089711687423532.jpg', '<p><font color=\"#212529\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; word-spacing: 1px;\">When seeking roof repair services, it\'s essential to hire a reputable and experienced roofing contractor to ensure the quality and longevity of the repairs. Always verify their credentials, check for licenses and insurance, and read reviews or testimonials from previous clients to make an informed decision.</span></font><br></p>', '01720000000', 'demo@gmail.com', 'Tangail,Dhaka,Bangladesh', 'https://demo.royalscripts.com/clean_service', 'https://www.facebook.com/', 'https://www.twitter.com/', 'https://demo.royalscripts.com/clean_service', NULL, '{\"Service Quality\":\"95\",\"Roof Design\":\"90\",\"Chief Executive\":\"85\"}'),
(3, 'Nicole J. Mullins', 'nicole-j-mullins', 'Sr. Executive', '5360407801687423387.jpg', '<font color=\"#212529\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; word-spacing: 1px;\">When seeking roof repair services, it\'s essential to hire a reputable and experienced roofing contractor to ensure the quality and longevity of the repairs. Always verify their credentials, check for licenses and insurance, and read reviews or testimonials from previous clients to make an informed decision.</span></font><br>', '01700000000', 'demo@gmail.com', 'Munshinogor,Delduar,Tangail,Dhaka,Bangladesh', 'https://demo.royalscripts.com/clean_service', 'https://demo.royalscripts.com/clean_service', 'https://demo.royalscripts.com/clean_service', 'https://demo.royalscripts.com/clean_service', 'https://demo.royalscripts.com/clean_service', '{\"Service Quality\":\"95\",\"Roof Design\":\"90\",\"Chief Executive\":\"85\"}'),
(4, 'Glen S. Buck', 'glen-s-buck', 'Replacing Manager', '15256502201687422852.jpg', '<p><font color=\"#212529\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; word-spacing: 1px;\">When seeking roof repair services, it\'s essential to hire a reputable and experienced roofing contractor to ensure the quality and longevity of the repairs. Always verify their credentials, check for licenses and insurance, and read reviews or testimonials from previous clients to make an informed decision.</span></font><br></p>', '01720000000', 'demo@gmail.com', 'Tangail,Dhaka,Bangladesh', 'https://demo.royalscripts.com/clean_service', 'https://demo.royalscripts.com/clean_service', 'https://demo.royalscripts.com/clean_service', 'https://demo.royalscripts.com/clean_service', 'https://demo.royalscripts.com/clean_service', '{\"Service Quality\":\"95\",\"Replace roof\":\"80\",\"Roof design\":\"65\"}'),
(5, 'Jhon Charles', 'jhon-charles', 'Chief Executive', '5041539191687422838.jpg', '<p><font color=\"#212529\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; word-spacing: 1px;\">When seeking roof repair services, it\'s essential to hire a reputable and experienced roofing contractor to ensure the quality and longevity of the repairs. Always verify their credentials, check for licenses and insurance, and read reviews or testimonials from previous clients to make an informed decision.</span></font><br></p>', '017000000000', 'demo@gmail.com', 'Munshinogor,Delduar,Tangail,Dhaka,Bangladesh', 'https://demo.royalscripts.com/clean_service', 'https://demo.royalscripts.com/clean_service', 'https://demo.royalscripts.com/clean_service', 'https://demo.royalscripts.com/clean_service', 'https://demo.royalscripts.com/clean_service', '{\"Chief Executive\":\"90\",\"Roof Damage Repair\":\"85\"}'),
(6, 'Smith Jhon', 'smith-jhon', 'Quality manager', '16755692961687422826.jpg', '<p><font color=\"#212529\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; word-spacing: 1px;\">When seeking roof repair services, it\'s essential to hire a reputable and experienced roofing contractor to ensure the quality and longevity of the repairs. Always verify their credentials, check for licenses and insurance, and read reviews or testimonials from previous clients to make an informed decision.</span></font><br></p>', '01708302000', 'demo@gmail.com', 'Tangail,Dhaka,Bangladesh', 'https://demo.royalscripts.com/clean_service', 'https://demo.royalscripts.com/clean_service', 'https://demo.royalscripts.com/clean_service', 'https://demo.royalscripts.com/clean_service', 'https://demo.royalscripts.com/clean_service', '{\"Roof repair\":\"70\",\"Quality Manager\":\"82\"}');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `zip` varchar(25) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `email_verified` enum('Yes','No') DEFAULT 'No',
  `verification_link` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `balance` double NOT NULL DEFAULT 0,
  `remember_token` varchar(100) DEFAULT NULL,
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
-- Indexes for table `categories`
--
ALTER TABLE `categories`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

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
