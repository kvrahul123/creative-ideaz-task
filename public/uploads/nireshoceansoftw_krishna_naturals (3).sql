-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 20, 2023 at 09:41 AM
-- Server version: 5.7.41-cll-lve
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
-- Database: `nireshoceansoftw_krishna_naturals`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `title`, `slug`, `name`, `description`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'About Us', 'about-us', '', '<p>It\'s tough to establish one all-encompassing template for your About page &mdash; there are so many ways you can go about telling your company story. The good news is, there are some tried-and-true steps to get you started.</p>\r\n<h3>1. Establish a mission statement.</h3>\r\n<p>Your About page can and will be more comprehensive than a single&nbsp;<a href=\"https://blog.hubspot.com/marketing/inspiring-company-mission-statements\" target=\"_blank\" rel=\"noopener\">mission statement</a>, but to draw people in, you need to succinctly state your goal in the industry upfront. What is your business here to do? Why should your website visitors care? This information will give the reader something to remember about your company long after they leave your website.</p>\r\n<h3>2. Outline your company story.</h3>\r\n<p>Every business has a story to tell. Even if you\'re running a start-up, you might not have a long history of changes and growth (yet), but it\'s a nice touch to talk about how you got to where you are on the About page. So, isolate the milestones before your company\'s founding, and use them to give readers some backstory on your current venture.</p>\r\n<h3>3. Reveal how you\'ve evolved.</h3>\r\n<p>There\'s no shame in admitting how your business strategy &mdash; or even your way of thinking &mdash; has changed since you began. In fact, these evolutions can improve the story you tell to website visitors.</p>\r\n<p>About pages are perfect spaces to talk about where you started, how you\'ve grown, and the ideals that have helped your organization mature. Use these moments to further your company story and show people that you\'re always ready to change and adapt to the needs of your industry.</p>\r\n<h3>4. State your \"aha!\" moment.</h3>\r\n<p>Every good company was founded on an idea &mdash; something the current marketplace might not yet offer. What was your idea? Use this \"Aha!\" moment as a pivot point when telling your company story. What was a challenge you faced while developing your company? How did this challenge or discovery shape what you are today?</p>\r\n<h3>5. Explain who you serve.</h3>\r\n<p>As much as you want as many eyeballs on your About page as possible, you won\'t do business with every single one of them. That\'s why you must identify and mention your core customer. This lets your visitors know what your business is dedicated to helping them meet their needs and goals.</p>\r\n<h3>6. Explain what you\'re offering them.</h3>\r\n<p>As you\'re explaining who you serve, make it clear what it is you\'re offering. Companies often generalize their products or services in the website copy, making it hard to understand what it is the customer is actually paying for. Sometimes, businesses are afraid that the literal explanations of their products aren\'t interesting enough or will sound unappealing in writing. And that\'s a fair concern.</p>\r\n<p>However, investing just a sentence or two into telling your potential customers exactly what they\'ll receive can keep them on your website for longer and get them interested in learning more.</p>\r\n<h3>7. Cite examples of clients you\'ve served.</h3>\r\n<p>Got some loyal customers in your portfolio? Use your About page to let the world know who already trusts and benefits from your work. A great way to showcase this is through a&nbsp;<a href=\"https://blog.hubspot.com/marketing/case-studies-marketing\" target=\"_blank\" rel=\"noopener\">case study</a>.</p>\r\n<p>Knowing about your company\'s past successes can influence your prospects\' purchasing decisions because they will be able to envision their success in the success of your past customers.</p>\r\n<h3>8. Describe your values.</h3>\r\n<p>Customers want to be treated like human beings. For that to happen, they need to feel that they\'re being served by human beings. When finishing your About page, describe who you are as a person or a team, and what your personal values are. What\'s your company culture like? What bigger picture in life drives your business?</p>\r\n<p>Keep in mind a secondary audience of your company\'s About page consists of your future employees. This is another reason describing your personal values is a good idea &mdash; the key to your job candidates\' hearts is to show them you have one too.</p>', '/storage/photos/1/ECommerce/6df7639832a0260cb12d4479a155213a.jpg', '2022-04-02 05:16:40', '2022-04-02 05:16:40');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `attribute_type`, `value`, `created_by`, `created_at`, `updated_at`) VALUES
(13, 'COLOUR', 'a:3:{i:0;s:5:\"green\";i:1;s:5:\"brown\";i:2;s:5:\"white\";}', 1, '2022-06-14 06:08:57', '2022-11-01 00:20:15'),
(14, 'SIZE', 'a:3:{i:0;s:8:\"standard\";i:1;s:6:\"medium\";i:2;s:5:\"large\";}', 1, '2022-06-14 06:12:20', '2022-11-01 00:18:51'),
(16, 'WEIGHT', 'a:4:{i:0;s:5:\"20 kg\";i:1;s:6:\"250 Kg\";i:2;s:6:\"28 kgs\";i:3;s:8:\"3.5-5 kg\";}', 1, '2022-08-04 07:04:48', '2022-11-01 00:23:15'),
(19, 'MATERIAL', 'a:9:{i:0;s:15:\"Aluminium Alloy\";i:1;s:2:\"MS\";i:2;s:34:\"Galvanised Pipe with Powder Coated\";i:3;s:2:\"SS\";i:4;s:6:\"Rubber\";i:5;s:9:\"Wood & SS\";i:6;s:10:\"Steel Pipe\";i:7;s:4:\"Wood\";i:8;s:17:\"Leather and Steel\";}', 1, '2022-11-01 01:15:53', '2022-11-01 01:17:58'),
(20, 'MINIMUM ORDER QUANTITY', 'a:2:{i:0;s:1:\"1\";i:1;s:1:\"2\";}', 1, '2022-11-01 01:16:41', '2022-11-01 01:16:41'),
(21, 'COUNTRY OF ORGIN', 'a:1:{i:0;s:5:\"India\";}', 1, '2022-11-01 01:17:29', '2022-11-01 01:17:29');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `photo`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(2, NULL, 'https://gkrishnanatural.com/storage/photos/53/banner1.jpg', 'active', 3, '2023-01-06 05:59:32', '2023-01-27 04:13:04'),
(3, NULL, 'https://gkrishnanatural.com/storage/photos/53/Banner gK.jpg', 'active', 3, '2023-02-06 23:17:15', '2023-02-06 23:18:19');

-- --------------------------------------------------------

--
-- Table structure for table `billing_address`
--

CREATE TABLE `billing_address` (
  `id` int(12) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `billing_name` varchar(255) DEFAULT NULL,
  `customer_id` int(12) DEFAULT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `name_of_address` varchar(255) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `street_1` varchar(255) NOT NULL,
  `street_2` varchar(255) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `billing_address`
--

INSERT INTO `billing_address` (`id`, `order_id`, `billing_name`, `customer_id`, `first_name`, `last_name`, `phone_number`, `name_of_address`, `address`, `email`, `street_1`, `street_2`, `city`, `state`, `pincode`, `created_at`, `updated_at`) VALUES
(1, '1', NULL, 36, 'js', 's', '9876543210', NULL, 'sdsd,', NULL, 'sdsd', NULL, 'chennai', '31', '690511', '2023-01-19 22:30:51', '2023-01-19 22:30:51'),
(2, '2', NULL, 36, 'Jayasuriya', 'S', '88489399', NULL, 'Sree Krishna Bhavanam,Muttom po harippad', NULL, 'Sree Krishna Bhavanam', 'Muttom po harippad', 'Muttom PO Harippad, Alappuzha', '17', '690511', '2023-01-19 22:43:39', '2023-01-19 22:43:39'),
(3, '3', NULL, 36, 'JAYASURIYA', 's', '8848193919', NULL, 'Nil,', NULL, 'Nil', NULL, 'Nil', '17', 'nil', '2023-01-20 00:57:08', '2023-01-20 00:57:08'),
(4, '4', NULL, 36, 'saf', 'sdg', 'sg', NULL, 'fdh,dfh', NULL, 'fdh', 'dfh', 'dfh', '31', 'dfh', '2023-01-20 23:42:19', '2023-01-20 23:42:19'),
(5, '5', NULL, 36, 'Jayasuriya', 'S', '88489399', NULL, 'Sree Krishna Bhavanam,Muttom po harippad', NULL, 'Sree Krishna Bhavanam', 'Muttom po harippad', 'Muttom PO Harippad, Alappuzha', '17', '690511', '2023-01-20 23:48:14', '2023-01-20 23:48:14'),
(6, '6', NULL, 36, 'vasanthi', 'R', '123d4fg7', NULL, 'No 30, 6th street,', NULL, 'No 30, 6th street', NULL, 'Chennai', '31', '600071', '2023-02-07 02:23:48', '2023-02-07 02:23:48');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish_at` date NOT NULL,
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '1=>''publish'',0=>''draft''',
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `title`, `slug`, `description`, `photo`, `publish_at`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Shampoo', 'Shampoo', '<p>Benefit of Hot Ston Spa for your health & life.</p>', '/storage/photos/1/blog/blog1.png', '2022-06-30', '1', 'TOMAS DE MOMEN', '2022-04-01 23:56:55', '2022-04-01 23:56:55'),
(2, 'Face Wash', 'Face Wash', '<p>Facial Scrub is natural treatment for face.</p>', '/storage/photos/1/blog/blog2.png', '2022-06-29', '1', 'TOMAS DE MOMEN', '2022-06-09 22:12:58', '2022-06-29 18:29:36'),
(302, 'Hair oil', 'hair-oil', '<p>Benefit of Hot Ston Spa for your health & life.</p>', '/storage/photos/1/blog/blog3.png', '2022-08-23', '1', 'TOMAS DE MOMEN', '2022-08-08 04:51:16', '2022-08-08 04:51:16');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` int(16) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover_photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `title`, `slug`, `url`, `email`, `phone_number`, `description`, `brand_logo`, `cover_photo`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Tulia', 'tulia', '', '', 0, '', '/storage/photos/1/ECommerce/tulia-logo.png', '', 'active', 0, '2022-04-02 00:58:59', '2022-04-02 00:58:59'),
(2, 'Apple', 'apple', 'https://www.zcart.incevio.cloud/admin/catalog/manufacturer', 'admin@apple.com', 123456789, '<p>welcome to&nbsp;ibm</p>', '/storage/photos/1/61eDXs9QFNL._SL1500_.jpg', '/storage/photos/1/61eDXs9QFNL._SL1500_.jpg', 'active', 0, '2022-06-22 00:45:55', '2022-06-22 00:51:04'),
(3, 'Tulia', 'tulia1659948505-tulia', 'https://demo.textspeed.co.in/', 'jagadeshm23jd@gmail.com', 974548289, '<p>qwertyuioiuytre</p>', '/storage/photos/1/c8b123eaeb46f366eca0f608b6c45d07.jpg', '/storage/photos/1/images (11).jpg', 'active', 1, '2022-08-08 03:18:25', '2022-08-08 03:23:43'),
(4, 'himaliyas', 'himaliyas', 'https://demo.textspeed.co.in/brand/create', 'admin123@gmail.com', 1234567, '<p>qwertyuioolkjhgfdsaaazxcvbnm,</p>', '/storage/photos/1/download.png', '/storage/photos/1/aiShEWuoT6o._UX970_TTW__.jpg', 'active', 1, '2022-08-08 03:22:21', '2022-08-08 03:23:18'),
(5, 'blackberry', 'blackberry', 'https://www.hrtech.sg/events/demo-hour-hrms-for-productivity/', 'jayasuriya@oceansoftwares.in', 2147483647, '<p><strong>fghjkodiuytfdc vbenmskiuy6789</strong></p>', '/storage/photos/1/1556646661-31WK0AWgWoL.jpg', '/storage/photos/1/375x500.38914.jpg', 'active', 1, '2022-08-08 03:28:15', '2022-08-08 03:28:15');

-- --------------------------------------------------------

--
-- Table structure for table `cart_tables`
--

CREATE TABLE `cart_tables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `rowId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `arrtibute_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart_tables`
--

INSERT INTO `cart_tables` (`id`, `customer_id`, `product_id`, `rowId`, `product_name`, `arrtibute_name`, `product_qty`, `price`, `options`, `status`, `created_at`, `updated_at`) VALUES
(35, 36, 23, NULL, 'ANTI LICE OIL', 'default', '1', '480', NULL, 'active', '2023-02-09 22:52:49', '2023-02-09 22:52:49'),
(36, 36, 19, NULL, 'SAFFRON GEL', 'default', '1', '400', NULL, 'active', '2023-02-11 00:28:14', '2023-02-11 00:28:14'),
(37, 36, 20, NULL, 'SAFFRON TONER', 'default', '1', '400', NULL, 'active', '2023-02-11 00:28:14', '2023-02-11 00:28:14'),
(38, 36, 17, NULL, 'PIMPLE GEL', 'default', '1', '350', NULL, 'active', '2023-02-11 00:28:14', '2023-02-11 00:28:14'),
(39, 36, 8, NULL, 'HIBISCUS SHAMPOO', 'default', '1', '325', NULL, 'active', '2023-02-11 00:28:14', '2023-02-11 00:28:14'),
(40, 36, 5, NULL, 'VOLUMIZING SUPHATE FREE SHAMPOO', 'default', '1', '425', NULL, 'active', '2023-02-15 08:15:47', '2023-02-15 08:15:47');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `headerorder` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeorder` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `home` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `header` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `is_parent` int(100) NOT NULL DEFAULT '0',
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `met_title` text COLLATE utf8mb4_unicode_ci,
  `met_description` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `photo`, `headerorder`, `homeorder`, `home`, `description`, `header`, `status`, `is_parent`, `parent_id`, `met_title`, `met_description`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Hair Care', 'hair-care', NULL, '1', '3', 'active', NULL, 'active', 'active', 0, NULL, NULL, NULL, 53, '2023-01-06 01:16:45', '2023-02-06 23:40:59'),
(2, 'Face Care', 'face-care', NULL, '2', '2', 'active', NULL, 'active', 'active', 0, NULL, NULL, NULL, 53, '2023-01-06 01:17:03', '2023-02-06 23:40:59'),
(3, 'Body Care', 'body-care', NULL, '3', '4', 'active', NULL, 'active', 'active', 0, NULL, NULL, NULL, 53, '2023-01-06 01:17:17', '2023-02-06 23:40:59'),
(4, 'Lip Care', 'lip-care', NULL, '4', '5', 'active', NULL, 'active', 'active', 0, NULL, NULL, NULL, 53, '2023-01-06 01:17:37', '2023-02-06 23:40:59'),
(5, 'Eye Care', 'eye-care', NULL, '5', '6', 'active', NULL, 'active', 'active', 0, NULL, NULL, NULL, 53, '2023-01-06 01:17:48', '2023-02-06 23:40:59'),
(6, 'Shop By Concern', 'shop-by-concern', NULL, '6', '1', 'active', NULL, 'active', 'active', 0, NULL, NULL, NULL, 53, '2023-01-06 01:18:04', '2023-02-06 23:40:59'),
(7, 'New Arrivals', 'new-arrivals', NULL, '7', '7', 'active', NULL, 'active', 'active', 0, NULL, NULL, NULL, 53, '2023-01-06 01:18:24', '2023-02-06 23:40:59'),
(8, 'Hair Oil', 'hair-oil', NULL, '', '', 'active', NULL, 'active', 'active', 1, 1, NULL, NULL, 53, '2023-01-06 01:22:54', '2023-01-27 01:01:26'),
(9, 'Shampoo', 'shampoo', NULL, '', '', NULL, NULL, 'active', 'active', 1, 1, NULL, NULL, 53, '2023-01-06 01:23:54', '2023-01-27 01:01:55'),
(10, 'Conditioners', 'conditioners', NULL, '', '', 'active', NULL, 'active', 'active', 1, 1, NULL, NULL, 53, '2023-01-06 01:26:03', '2023-01-27 01:02:23'),
(11, 'SERUMS', 'serums', NULL, '', '', NULL, NULL, 'active', 'active', 1, 7, NULL, NULL, 53, '2023-01-06 01:30:54', '2023-01-06 01:30:54'),
(12, 'HAIR MASK', 'hair-mask', NULL, '', '', NULL, NULL, 'active', 'active', 1, 11, NULL, NULL, 53, '2023-01-06 01:31:12', '2023-01-06 01:31:12'),
(13, 'Hair Gel', 'hair-gel', NULL, '', '', NULL, NULL, 'active', 'active', 1, 1, NULL, NULL, 53, '2023-01-06 01:31:30', '2023-01-27 01:02:44'),
(14, 'NEEM COMB', 'neem-comb', NULL, '', '', NULL, NULL, 'inactive', 'active', 1, 9, NULL, NULL, 53, '2023-01-06 01:32:03', '2023-01-06 01:32:03'),
(15, 'KIT', 'kit', NULL, '', '', NULL, NULL, 'inactive', 'active', 1, 9, NULL, NULL, 53, '2023-01-06 01:32:21', '2023-01-06 01:32:21'),
(16, 'Day Creams', 'day-creams', NULL, '', '', NULL, NULL, 'active', 'active', 1, 2, NULL, NULL, 53, '2023-01-06 01:34:25', '2023-01-27 01:09:02'),
(17, 'Night Gel', 'day-creams1672988682-day-creams', NULL, '', '', NULL, NULL, 'active', 'active', 1, 2, NULL, NULL, 53, '2023-01-06 01:34:42', '2023-01-27 01:09:18'),
(18, 'Face Serums', 'face-serums', NULL, '', '', NULL, NULL, 'active', 'active', 1, 2, NULL, NULL, 53, '2023-01-06 01:35:00', '2023-01-27 01:09:39'),
(19, 'Face Packs', 'face-packs', NULL, '', '', NULL, NULL, 'active', 'active', 1, 2, NULL, NULL, 53, '2023-01-06 01:35:22', '2023-01-27 01:10:06'),
(20, 'FaceWash', 'facewash', NULL, '', '', NULL, NULL, 'active', 'active', 1, 2, NULL, NULL, 53, '2023-01-06 01:35:35', '2023-01-27 01:10:20'),
(21, 'Cleansers', 'cleansers', NULL, '', '', NULL, NULL, 'active', 'active', 1, 2, NULL, NULL, 53, '2023-01-06 01:35:50', '2023-01-27 01:10:36'),
(22, 'Face Moisturizers', 'face-moisturizers', NULL, '', '', NULL, NULL, 'active', 'active', 1, 2, NULL, NULL, 53, '2023-01-06 01:36:08', '2023-01-27 01:11:07'),
(23, 'Face Toners', 'face-toners', NULL, '', '', NULL, NULL, 'active', 'active', 1, 2, NULL, NULL, 53, '2023-01-06 01:36:21', '2023-01-27 01:11:26'),
(24, 'Face Scrubs', 'face-scrubs', NULL, '', '', NULL, NULL, 'active', 'active', 1, 2, NULL, NULL, 53, '2023-01-06 01:36:35', '2023-01-27 01:11:50'),
(25, 'Face Masks', 'face-masks', NULL, '', '', NULL, NULL, 'active', 'active', 1, 2, NULL, NULL, 53, '2023-01-06 01:36:52', '2023-01-27 01:12:19'),
(26, 'Beard Oil', 'beard-oil', NULL, '', '', NULL, NULL, 'active', 'active', 1, 2, NULL, NULL, 53, '2023-01-06 01:37:09', '2023-01-27 01:12:43'),
(27, 'Foot Care', 'foot-care', NULL, '', '', NULL, NULL, 'active', 'active', 1, 3, NULL, NULL, 53, '2023-01-06 01:43:56', '2023-01-27 01:13:33'),
(28, 'Hair Removal Gel', 'hair-removal-gel', NULL, '', '', NULL, NULL, 'active', 'active', 1, 3, NULL, NULL, 53, '2023-01-06 01:44:12', '2023-01-27 01:13:57'),
(29, 'Refreshing Body Wash', 'refreshing-body-wash', NULL, '', '', NULL, NULL, 'active', 'active', 1, 3, NULL, NULL, 53, '2023-01-06 01:44:42', '2023-01-27 01:14:51'),
(30, 'Body Lotions', 'body-lotions', NULL, '', '', NULL, NULL, 'active', 'active', 1, 3, NULL, NULL, 53, '2023-01-06 01:45:05', '2023-01-27 01:15:45'),
(31, 'GOATMILK SOAPS', 'goatmilk-soaps', NULL, '', '', NULL, NULL, 'inactive', 'active', 1, 8, NULL, NULL, 53, '2023-01-06 01:45:28', '2023-01-06 01:45:28'),
(32, 'DONKEYMILK SOAPS', 'donkeymilk-soaps', NULL, '', '', NULL, NULL, 'inactive', 'active', 1, 8, NULL, NULL, 53, '2023-01-06 01:45:43', '2023-01-06 01:45:43'),
(33, 'Lip Balms', 'lip-balms', NULL, '', '', NULL, NULL, 'active', 'active', 1, 4, NULL, NULL, 53, '2023-01-06 01:46:38', '2023-01-27 01:17:40'),
(34, 'Lip Scrubs', 'lip-scrubs', NULL, '', '', NULL, NULL, 'active', 'active', 1, 4, NULL, NULL, 53, '2023-01-06 01:47:00', '2023-01-27 01:18:00'),
(35, 'Lip Serums', 'lip-serums', NULL, '', '', NULL, NULL, 'active', 'active', 1, 4, NULL, NULL, 53, '2023-01-06 01:47:16', '2023-01-27 01:18:19'),
(36, 'Under Eye', 'under-eye', NULL, '', '', NULL, NULL, 'active', 'active', 1, 5, NULL, NULL, 53, '2023-01-06 01:47:36', '2023-01-27 01:18:53'),
(37, 'Eyebrows', 'eyebrows', NULL, '', '', NULL, NULL, 'active', 'active', 1, 5, NULL, NULL, 53, '2023-01-06 01:47:52', '2023-01-27 01:19:17'),
(38, 'HAIRFALL', 'eyebrows1672989530-eyebrows', NULL, '', '', NULL, NULL, 'active', 'active', 1, 6, NULL, NULL, 53, '2023-01-06 01:48:50', '2023-01-06 01:49:16'),
(39, 'DANDRUFF', 'dandruff', NULL, '', '', NULL, NULL, 'active', 'active', 1, 6, NULL, NULL, 53, '2023-01-06 01:49:40', '2023-01-06 01:49:40'),
(40, 'GREY HAIR', 'grey-hair', NULL, '', '', NULL, NULL, 'active', 'active', 1, 6, NULL, NULL, 53, '2023-01-06 01:49:59', '2023-01-06 01:49:59'),
(41, 'ACNE', 'acne', NULL, '', '', NULL, NULL, 'active', 'active', 1, 6, NULL, NULL, 53, '2023-01-06 01:50:34', '2023-01-06 01:50:34'),
(42, 'BLACK SPOTS', 'black-spots', NULL, '', '', NULL, NULL, 'active', 'active', 1, 6, NULL, NULL, 53, '2023-01-06 01:50:52', '2023-01-06 01:50:52'),
(43, 'PIMPLES', 'pimples', NULL, '', '', NULL, NULL, 'active', 'active', 1, 6, NULL, NULL, 53, '2023-01-06 01:51:07', '2023-01-06 01:51:07'),
(44, 'OPEN PORES', 'open-pores', NULL, '', '', NULL, NULL, 'active', 'active', 1, 6, NULL, NULL, 53, '2023-01-06 01:51:27', '2023-01-06 01:51:27'),
(45, 'PIGMENTATION', 'pigmentation', NULL, '', '', NULL, NULL, NULL, 'active', 1, 6, NULL, NULL, 53, '2023-01-06 01:51:40', '2023-01-06 01:51:40'),
(46, 'LIP PIGMENTATION', 'lip-pigmentation', NULL, '', '', NULL, NULL, 'active', 'active', 1, 6, NULL, NULL, 53, '2023-01-06 01:52:37', '2023-01-06 01:52:37'),
(47, 'DARK CIRCLES', 'dark-circles', NULL, '', '', NULL, NULL, 'active', 'active', 1, 6, NULL, NULL, 53, '2023-01-06 01:52:53', '2023-01-06 01:52:53'),
(48, 'new arrivals 1', 'new-arrivals-1', NULL, '', '', NULL, NULL, 'active', 'active', 1, 7, NULL, NULL, 53, '2023-01-09 23:21:13', '2023-01-09 23:21:13'),
(49, 'Serums', 'serums1674801233-serums', NULL, '', '', 'active', NULL, 'active', 'active', 1, 1, NULL, NULL, 53, '2023-01-27 01:03:53', '2023-01-27 01:03:53'),
(50, 'Hair Mask', 'hair-mask1674801260-hair-mask', NULL, '', '', 'active', NULL, 'active', 'active', 1, 1, NULL, NULL, 53, '2023-01-27 01:04:20', '2023-01-27 01:04:20'),
(51, 'Neem Comb', 'neem-comb1674801289-neem-comb', NULL, '', '', 'active', NULL, 'active', 'active', 1, 1, NULL, NULL, 53, '2023-01-27 01:04:49', '2023-01-27 01:04:49'),
(52, 'Kit', 'kit1674801309-kit', NULL, '', '', 'active', NULL, 'active', 'active', 1, 1, NULL, NULL, 53, '2023-01-27 01:05:09', '2023-01-27 01:05:09'),
(53, 'Goatmilk Soaps', 'goatmilk-soaps1674801985-goatmilk-soaps', NULL, '', '', 'active', NULL, 'active', 'active', 1, 3, NULL, NULL, 53, '2023-01-27 01:16:25', '2023-01-27 01:16:25'),
(54, 'Donkey Milk Soaps', 'donkey-milk-soaps', NULL, '', '', 'active', NULL, 'active', 'active', 1, 3, NULL, NULL, 53, '2023-01-27 01:17:06', '2023-01-27 01:17:06');

-- --------------------------------------------------------

--
-- Table structure for table `client_feedback`
--

CREATE TABLE `client_feedback` (
  `id` int(12) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `feedback` text,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client_feedback`
--

INSERT INTO `client_feedback` (`id`, `name`, `phone_number`, `feedback`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Rahul', 'Customer', 'Nice website', 'active', '2022-11-22 02:23:45', '2022-11-22 02:24:27'),
(3, 'vasanthi R', 'retailer', 'one of the good website to purchase physio terapy equipments', 'inactive', '2022-11-22 05:27:06', '2022-11-22 05:27:06'),
(4, 'vasanthi R', 'retailer', 'one of the good website to purchase physio terapy equipments', 'active', '2022-11-22 05:27:06', '2022-11-22 05:48:09'),
(5, 'vasanthi R', 'retailer', 'one of the good website to purchase physio terapy equipments', 'active', '2022-11-22 05:27:06', '2022-11-22 05:46:16'),
(6, 'vasanthi R', 'customer', 'User friendly.', 'active', '2022-11-22 05:27:39', '2022-11-22 05:28:17'),
(7, 'worst', 'worst', 'worst', 'active', '2022-11-22 05:48:37', '2022-11-22 05:54:26'),
(8, 'OS', 'OS', 'Bharat Medical Systems is one of the top most companies offering a wide range of Physiotherapy Equipment’s which are highly used by various orthopedic and physiotherapy doctors.', 'inactive', '2022-11-22 22:37:27', '2022-11-22 22:37:27'),
(9, 'vasanthi', 'customer', 'One of the great website to buy pyshitherapy equipment', 'active', '2022-11-23 06:11:12', '2022-11-23 06:11:38');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `title`, `slug`, `photo`, `address`, `email`, `mobile`, `created_at`, `updated_at`) VALUES
(1, 'Tulia', 'tulia', '/storage/photos/1/ECommerce/pngtree-golden-cosmetics-banner-illustration-image_262197.jpg', 'Ashok Pillar', 'kani@oceansoftwares.in', '9566275091', '2022-04-02 05:25:19', '2022-04-02 05:25:19');

-- --------------------------------------------------------

--
-- Table structure for table `contactform`
--

CREATE TABLE `contactform` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupon`
--

CREATE TABLE `coupon` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_type` enum('fixed','percentage') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `Status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `minimum_order_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupon`
--

INSERT INTO `coupon` (`id`, `coupon_name`, `coupon_code`, `start_date`, `end_date`, `value`, `discount_type`, `Status`, `minimum_order_amount`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'demo', 'ABC123', '2022-04-13', '2022-04-13', '1000', 'fixed', 'active', '500', 0, '2022-04-05 01:54:02', '2022-06-30 00:49:15'),
(2, 'test', 'asdsad', '2022-06-23', '2022-09-27', '18', 'percentage', 'active', '800', 1, '2022-06-30 00:32:44', '2022-06-30 00:41:35');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` int(11) DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `scountry` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spostcode` int(11) DEFAULT NULL,
  `sstate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `saddress` text COLLATE utf8mb4_unicode_ci,
  `snote` mediumtext COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `user_name`, `email`, `email_verified_at`, `password`, `phone`, `status`, `country`, `city`, `postcode`, `state`, `address`, `scountry`, `scity`, `spostcode`, `sstate`, `saddress`, `snote`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Raghu', NULL, 'harireyoo@gmail.com', NULL, '$2y$10$2b.SeBcN8ipE8QCvZEMEnOoNxrapsC4YFVq4K67EzIOk7v.6uA8o6', NULL, 'active', NULL, 'Pondicherry', 605004, 'Province', 'Mudaliarpet', NULL, 'Chennai', 604558, 'asdas', '81 Audayar thottam mudaliarpet', NULL, NULL, '2022-04-02 01:42:08', '2022-07-26 04:04:54'),
(2, 'raghusdsadf', NULL, 'kani@oceansoftwares.in', NULL, '$2y$10$8hYtmCaaVKi9q5pIdf5CiuExIiaanFNRJfkELe1WUzoppvrpADXc2', NULL, 'active', NULL, 'Chennai', 604558, 'asdas', NULL, NULL, 'Chennai', 604558, 'asdas', '81 Audayar thottam mudaliarpet', NULL, NULL, '2022-04-02 04:46:05', '2022-04-06 00:05:47'),
(3, 'ibrahim', 'ibrahim', 'mohammedibrahim@oceansoftwares.in', NULL, '$2y$10$EEcSjDNVQ4UtYguTGEpG2O1I73oUjcGNhWw/azHMmCKu9tpzWJwfG', NULL, 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-04 03:40:53', '2022-04-04 03:40:53'),
(4, 'raghu', NULL, 'reyoo@gmail.com', NULL, '$2y$10$3M1WFlLFwCxLgHpdwUJFCOuM5YPi33tOxB43u2.pjO7OYY58oAxEK', NULL, 'active', NULL, 'erfgrwe', 65735, 'fvbdfg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-06 04:47:16', '2022-04-06 04:48:50'),
(5, 'Kanimozhi', NULL, 'ragu@oceansoftwares.in', NULL, '$2y$10$PKZcJJYx9fLVq2Rt1BQOw.ci5/WK1ShR21jarr9MAkONLEYYNLPi.', NULL, 'active', NULL, 'Chennai', 600070, 'TamilNadu', NULL, NULL, 'Pondicherry', 605004, 'Province', '81A udayar Thottam', NULL, NULL, '2022-04-07 06:47:29', '2022-04-07 06:48:15'),
(6, 'hari', NULL, 'harikutty@gmail.com', NULL, '$2y$10$k8giVcVvZWMRw.2snmzO1.B1S5l742sS2Qiq38BfkKDXSDXhaXDiG', NULL, 'active', NULL, 'Chennai', 604558, 'pondicherry', '3/112 ezhil nagre,nathum main roadSS post nalur Sirkali main road', NULL, 'Chennai', 604558, 'pondicherry', '81 Audayar thottam mudaliarpet', NULL, NULL, '2022-04-09 09:13:19', '2022-04-11 00:00:01'),
(7, 'Rahul', 'Rahul K V', 'rahul@gmail.com', NULL, '$2y$10$1Mr1li4QR6PUSpB/MrXwGu.T0AYVRMJiA/HKj7N9a/sRUdglqKLvS', NULL, 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-26 23:09:07', '2022-07-26 23:09:07'),
(8, 'Sriram', 'Sriram', 'sriram@gmail.com', NULL, '$2y$10$5anHChfLrMYWYjoRAkWUn.3BRn3F1hJSyTdseYdvoXdhrTGqwaeGq', NULL, 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-28 23:53:22', '2022-07-28 23:53:22'),
(9, 'aravindan', 'aravind', 'aravindan@oceansoftwares.in', NULL, '$2y$10$jKtrz/0EqxzyKICVfI4Ii.AF9wb73anJxM/QftUgrdn4AQgh0Os0S', NULL, 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-30 02:45:38', '2022-07-30 02:45:38'),
(10, 'jagadesh', 'jagadeshm', 'jagadeshm23jd@gmail.com', NULL, '$2y$10$1v.zgDezbDwzzqmgBBYYuOsedgdqF8PBhZWwYfNVSXr/mUgIj.lM.', NULL, 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-01 23:32:13', '2022-08-01 23:32:13'),
(11, 'Rahul', 'Rahul k v', 'kvraghul2018@gmail.com', NULL, '$2y$10$NAkJ.HI9pVD7vFu0J/TvOOPUE58cxFOvP915o4iUZ5yVCsKSR/Pg.', NULL, 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-13 02:19:06', '2022-09-13 02:19:06'),
(12, 'admin', 'admin123', 'admin123@gmail.com', NULL, '$2y$10$sLJcpJ5hmScU49btl0W2HeCJrhoWPKM7kbNnYHWlfLaiYwgZJ/HXe', NULL, 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-15 04:36:56', '2022-09-15 04:36:56');

-- --------------------------------------------------------

--
-- Table structure for table `deals_of_day`
--

CREATE TABLE `deals_of_day` (
  `id` int(12) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `days` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `sale_price` decimal(12,2) DEFAULT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'active',
  `product_name` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deals_of_day`
--

INSERT INTO `deals_of_day` (`id`, `description`, `days`, `photo`, `link`, `sale_price`, `status`, `product_name`, `created_by`, `created_at`, `updated_at`) VALUES
(3, NULL, NULL, 'http://niresh.oceansoftwares.in/bms/public/storage/photos/1/01.jpg', NULL, NULL, 'active', NULL, '', '2022-11-22 02:31:58', '2022-11-22 08:19:43'),
(4, NULL, NULL, 'http://niresh.oceansoftwares.in/bms/public/storage/photos/1/banner 2.PNG', NULL, NULL, 'active', NULL, '', '2022-11-22 02:32:17', '2022-11-22 08:20:36'),
(5, NULL, NULL, 'http://niresh.oceansoftwares.in/bms/public/storage/photos/1/04.jpg', NULL, NULL, 'active', NULL, '', '2022-11-22 02:33:27', '2022-11-22 02:33:27'),
(6, NULL, NULL, 'http://niresh.oceansoftwares.in/bms/public/storage/photos/1/ad.jpg', NULL, NULL, 'active', NULL, '', '2022-11-22 02:41:31', '2022-11-22 02:41:31'),
(7, NULL, NULL, 'http://niresh.oceansoftwares.in/bms/public/storage/photos/1/offer 3.PNG', NULL, NULL, 'active', NULL, '', '2022-11-22 02:42:54', '2022-11-22 02:42:54'),
(8, NULL, NULL, 'http://niresh.oceansoftwares.in/bms/public/storage/photos/1/offer2.PNG', NULL, NULL, 'active', NULL, '', '2022-11-22 02:43:14', '2022-11-22 02:43:14'),
(9, NULL, NULL, 'http://niresh.oceansoftwares.in/bms/public/storage/photos/1/contact.PNG', NULL, NULL, 'active', NULL, '', '2022-11-22 02:43:30', '2022-11-22 02:43:30'),
(10, NULL, NULL, 'http://niresh.oceansoftwares.in/bms/public/storage/photos/1/04.jpg', NULL, NULL, 'active', NULL, '', '2022-11-22 02:43:43', '2022-11-22 02:43:43'),
(11, NULL, NULL, 'http://niresh.oceansoftwares.in/bms/public/storage/photos/1/banner 2.PNG', NULL, NULL, 'active', NULL, '', '2022-11-22 02:44:12', '2022-11-22 02:44:12'),
(12, NULL, NULL, 'http://niresh.oceansoftwares.in/bms/public/storage/photos/1/portable-inferential-therapy-unit-500x500__1_-removebg-preview.png', NULL, NULL, 'active', NULL, '', '2022-11-22 02:44:39', '2022-11-22 02:44:39'),
(13, NULL, NULL, 'http://niresh.oceansoftwares.in/bms/public/storage/photos/1/banner bms 1.png', NULL, NULL, 'active', NULL, '', '2022-11-22 02:44:58', '2022-11-22 02:44:58'),
(14, NULL, NULL, 'http://localhost/bms/public/storage/photos/50/bms-user.png', 'https://www.google.co.in/', NULL, 'active', NULL, '', '2022-12-08 03:53:50', '2022-12-08 03:53:50');

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(9, '5392f9fc-4d4e-48a6-8156-bb72216d6238', 'database', 'default', '{\"uuid\":\"5392f9fc-4d4e-48a6-8156-bb72216d6238\",\"displayName\":\"App\\\\Jobs\\\\CustomerEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\CustomerEmailJob\",\"command\":\"O:25:\\\"App\\\\Jobs\\\\CustomerEmailJob\\\":11:{s:10:\\\"\\u0000*\\u0000details\\\";a:4:{s:5:\\\"email\\\";s:22:\\\"kvraghul2018@gmail.com\\\";s:11:\\\"admin_email\\\";s:26:\\\"kvprithviraj2018@gmail.com\\\";s:13:\\\"customer_name\\\";s:5:\\\"Rahul\\\";s:8:\\\"order_id\\\";s:10:\\\"ORD-MTPP7F\\\";}s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Queue\\MaxAttemptsExceededException: App\\Jobs\\CustomerEmailJob has been attempted too many times or run too long. The job may have previously timed out. in C:\\xampp\\htdocs\\tulia\\tulia\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php:750\nStack trace:\n#0 C:\\xampp\\htdocs\\tulia\\tulia\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(504): Illuminate\\Queue\\Worker->maxAttemptsExceededException(Object(Illuminate\\Queue\\Jobs\\DatabaseJob))\n#1 C:\\xampp\\htdocs\\tulia\\tulia\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(418): Illuminate\\Queue\\Worker->markJobAsFailedIfAlreadyExceedsMaxAttempts(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), 1)\n#2 C:\\xampp\\htdocs\\tulia\\tulia\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(378): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#3 C:\\xampp\\htdocs\\tulia\\tulia\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(329): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#4 C:\\xampp\\htdocs\\tulia\\tulia\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->runNextJob(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#5 C:\\xampp\\htdocs\\tulia\\tulia\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#6 C:\\xampp\\htdocs\\tulia\\tulia\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#7 C:\\xampp\\htdocs\\tulia\\tulia\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#8 C:\\xampp\\htdocs\\tulia\\tulia\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#9 C:\\xampp\\htdocs\\tulia\\tulia\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#10 C:\\xampp\\htdocs\\tulia\\tulia\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(653): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#11 C:\\xampp\\htdocs\\tulia\\tulia\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#12 C:\\xampp\\htdocs\\tulia\\tulia\\vendor\\symfony\\console\\Command\\Command.php(298): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#13 C:\\xampp\\htdocs\\tulia\\tulia\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#14 C:\\xampp\\htdocs\\tulia\\tulia\\vendor\\symfony\\console\\Application.php(1024): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#15 C:\\xampp\\htdocs\\tulia\\tulia\\vendor\\symfony\\console\\Application.php(299): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#16 C:\\xampp\\htdocs\\tulia\\tulia\\vendor\\symfony\\console\\Application.php(171): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#17 C:\\xampp\\htdocs\\tulia\\tulia\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(94): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#18 C:\\xampp\\htdocs\\tulia\\tulia\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#19 C:\\xampp\\htdocs\\tulia\\tulia\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#20 {main}', '2022-09-26 04:52:02'),
(10, '31a0d999-482d-4bb1-9824-2e7614465761', 'database', 'default', '{\"uuid\":\"31a0d999-482d-4bb1-9824-2e7614465761\",\"displayName\":\"App\\\\Jobs\\\\CustomerEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\CustomerEmailJob\",\"command\":\"O:25:\\\"App\\\\Jobs\\\\CustomerEmailJob\\\":11:{s:10:\\\"\\u0000*\\u0000details\\\";a:4:{s:5:\\\"email\\\";s:22:\\\"kvraghul2018@gmail.com\\\";s:11:\\\"admin_email\\\";s:26:\\\"kvprithviraj2018@gmail.com\\\";s:13:\\\"customer_name\\\";s:5:\\\"Rahul\\\";s:8:\\\"order_id\\\";s:10:\\\"ORD-WNMLY4\\\";}s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Swift_TransportException: Connection could not be established with host mail.tuliacosmetics.com :stream_socket_client(): SSL: Handshake timed out in C:\\xampp\\htdocs\\tulia\\tulia\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\StreamBuffer.php:261\nStack trace:\n#0 [internal function]: Swift_Transport_StreamBuffer->{closure}(2, \'stream_socket_c...\', \'C:\\\\xampp\\\\htdocs...\', 264)\n#1 C:\\xampp\\htdocs\\tulia\\tulia\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\StreamBuffer.php(264): stream_socket_client(\'ssl://mail.tuli...\', 0, \'\', 30, 4, Resource id #841)\n#2 C:\\xampp\\htdocs\\tulia\\tulia\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\StreamBuffer.php(58): Swift_Transport_StreamBuffer->establishSocketConnection()\n#3 C:\\xampp\\htdocs\\tulia\\tulia\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(143): Swift_Transport_StreamBuffer->initialize(Array)\n#4 C:\\xampp\\htdocs\\tulia\\tulia\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mailer.php(65): Swift_Transport_AbstractSmtpTransport->start()\n#5 C:\\xampp\\htdocs\\tulia\\tulia\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(521): Swift_Mailer->send(Object(Swift_Message), Array)\n#6 C:\\xampp\\htdocs\\tulia\\tulia\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(288): Illuminate\\Mail\\Mailer->sendSwiftMessage(Object(Swift_Message))\n#7 C:\\xampp\\htdocs\\tulia\\tulia\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(187): Illuminate\\Mail\\Mailer->send(\'frontend.pages....\', Array, Object(Closure))\n#8 C:\\xampp\\htdocs\\tulia\\tulia\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#9 C:\\xampp\\htdocs\\tulia\\tulia\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(188): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#10 C:\\xampp\\htdocs\\tulia\\tulia\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(304): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#11 C:\\xampp\\htdocs\\tulia\\tulia\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(258): Illuminate\\Mail\\Mailer->sendMailable(Object(App\\Mail\\CustomerMail))\n#12 C:\\xampp\\htdocs\\tulia\\tulia\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\PendingMail.php(124): Illuminate\\Mail\\Mailer->send(Object(App\\Mail\\CustomerMail))\n#13 C:\\xampp\\htdocs\\tulia\\tulia\\app\\Jobs\\CustomerEmailJob.php(39): Illuminate\\Mail\\PendingMail->send(Object(App\\Mail\\CustomerMail))\n#14 C:\\xampp\\htdocs\\tulia\\tulia\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\CustomerEmailJob->handle()\n#15 C:\\xampp\\htdocs\\tulia\\tulia\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#16 C:\\xampp\\htdocs\\tulia\\tulia\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#17 C:\\xampp\\htdocs\\tulia\\tulia\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#18 C:\\xampp\\htdocs\\tulia\\tulia\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(653): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#19 C:\\xampp\\htdocs\\tulia\\tulia\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#20 C:\\xampp\\htdocs\\tulia\\tulia\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\CustomerEmailJob))\n#21 C:\\xampp\\htdocs\\tulia\\tulia\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\CustomerEmailJob))\n#22 C:\\xampp\\htdocs\\tulia\\tulia\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#23 C:\\xampp\\htdocs\\tulia\\tulia\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\CustomerEmailJob), false)\n#24 C:\\xampp\\htdocs\\tulia\\tulia\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\CustomerEmailJob))\n#25 C:\\xampp\\htdocs\\tulia\\tulia\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\CustomerEmailJob))\n#26 C:\\xampp\\htdocs\\tulia\\tulia\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#27 C:\\xampp\\htdocs\\tulia\\tulia\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\CustomerEmailJob))\n#28 C:\\xampp\\htdocs\\tulia\\tulia\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#29 C:\\xampp\\htdocs\\tulia\\tulia\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(428): Illuminate\\Queue\\Jobs\\Job->fire()\n#30 C:\\xampp\\htdocs\\tulia\\tulia\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(378): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#31 C:\\xampp\\htdocs\\tulia\\tulia\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(329): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#32 C:\\xampp\\htdocs\\tulia\\tulia\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->runNextJob(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#33 C:\\xampp\\htdocs\\tulia\\tulia\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#34 C:\\xampp\\htdocs\\tulia\\tulia\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#35 C:\\xampp\\htdocs\\tulia\\tulia\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#36 C:\\xampp\\htdocs\\tulia\\tulia\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#37 C:\\xampp\\htdocs\\tulia\\tulia\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#38 C:\\xampp\\htdocs\\tulia\\tulia\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(653): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#39 C:\\xampp\\htdocs\\tulia\\tulia\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#40 C:\\xampp\\htdocs\\tulia\\tulia\\vendor\\symfony\\console\\Command\\Command.php(298): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#41 C:\\xampp\\htdocs\\tulia\\tulia\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#42 C:\\xampp\\htdocs\\tulia\\tulia\\vendor\\symfony\\console\\Application.php(1024): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 C:\\xampp\\htdocs\\tulia\\tulia\\vendor\\symfony\\console\\Application.php(299): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 C:\\xampp\\htdocs\\tulia\\tulia\\vendor\\symfony\\console\\Application.php(171): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 C:\\xampp\\htdocs\\tulia\\tulia\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(94): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 C:\\xampp\\htdocs\\tulia\\tulia\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 C:\\xampp\\htdocs\\tulia\\tulia\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 {main}', '2022-09-26 04:53:25');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `title`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Faq', 'faq', '<p>It\'s tough to establish one all-encompassing template for your About page &mdash; there are so many ways you can go about telling your company story. The good news is, there are some tried-and-true steps to get you started.</p>\r\n<h3>1. Establish a mission statement.</h3>\r\n<p>Your About page can and will be more comprehensive than a single&nbsp;<a href=\"https://blog.hubspot.com/marketing/inspiring-company-mission-statements\" target=\"_blank\" rel=\"noopener\">mission statement</a>, but to draw people in, you need to succinctly state your goal in the industry upfront. What is your business here to do? Why should your website visitors care? This information will give the reader something to remember about your company long after they leave your website.</p>\r\n<h3>2. Outline your company story.</h3>\r\n<p>Every business has a story to tell. Even if you\'re running a start-up, you might not have a long history of changes and growth (yet), but it\'s a nice touch to talk about how you got to where you are on the About page. So, isolate the milestones before your company\'s founding, and use them to give readers some backstory on your current venture.</p>\r\n<h3>3. Reveal how you\'ve evolved.</h3>\r\n<p>There\'s no shame in admitting how your business strategy &mdash; or even your way of thinking &mdash; has changed since you began. In fact, these evolutions can improve the story you tell to website visitors.</p>\r\n<p>About pages are perfect spaces to talk about where you started, how you\'ve grown, and the ideals that have helped your organization mature. Use these moments to further your company story and show people that you\'re always ready to change and adapt to the needs of your industry.</p>\r\n<h3>4. State your \"aha!\" moment.</h3>\r\n<p>Every good company was founded on an idea &mdash; something the current marketplace might not yet offer. What was your idea? Use this \"Aha!\" moment as a pivot point when telling your company story. What was a challenge you faced while developing your company? How did this challenge or discovery shape what you are today?</p>\r\n<h3>5. Explain who you serve.</h3>\r\n<p>As much as you want as many eyeballs on your About page as possible, you won\'t do business with every single one of them. That\'s why you must identify and mention your core customer. This lets your visitors know what your business is dedicated to helping them meet their needs and goals.</p>\r\n<h3>6. Explain what you\'re offering them.</h3>\r\n<p>As you\'re explaining who you serve, make it clear what it is you\'re offering. Companies often generalize their products or services in the website copy, making it hard to understand what it is the customer is actually paying for. Sometimes, businesses are afraid that the literal explanations of their products aren\'t interesting enough or will sound unappealing in writing. And that\'s a fair concern.</p>\r\n<p>However, investing just a sentence or two into telling your potential customers exactly what they\'ll receive can keep them on your website for longer and get them interested in learning more.</p>\r\n<h3>7. Cite examples of clients you\'ve served.</h3>\r\n<p>Got some loyal customers in your portfolio? Use your About page to let the world know who already trusts and benefits from your work. A great way to showcase this is through a&nbsp;<a href=\"https://blog.hubspot.com/marketing/case-studies-marketing\" target=\"_blank\" rel=\"noopener\">case study</a>.</p>\r\n<p>Knowing about your company\'s past successes can influence your prospects\' purchasing decisions because they will be able to envision their success in the success of your past customers.</p>\r\n<h3>8. Describe your values.</h3>\r\n<p>Customers want to be treated like human beings. For that to happen, they need to feel that they\'re being served by human beings. When finishing your About page, describe who you are as a person or a team, and what your personal values are. What\'s your company culture like? What bigger picture in life drives your business?</p>\r\n<p>Keep in mind a secondary audience of your company\'s About page consists of your future employees. This is another reason describing your personal values is a good idea &mdash; the key to your job candidates\' hearts is to show them you have one too.</p>', '2022-04-02 05:21:27', '2022-04-02 05:21:27');

-- --------------------------------------------------------

--
-- Table structure for table `headings`
--

CREATE TABLE `headings` (
  `id` int(12) NOT NULL,
  `value` text,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(12) NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `headings`
--

INSERT INTO `headings` (`id`, `value`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, 'we have been an industry-leading champion of diversity, and empowerment, guided by our longstanding company values.', 'products', 'active', '2022-09-12 04:35:28', '2022-09-12 04:35:28'),
(2, 'we have been an industry-leading champion of diversity, and empowerment, guided by our longstanding company values.', 'blogs', 'active', '2022-09-12 04:36:07', '2022-09-12 04:36:07');

-- --------------------------------------------------------

--
-- Table structure for table `inventoryhistroy`
--

CREATE TABLE `inventoryhistroy` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `inventory_id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `voucher_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `open_stock` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `expiry_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` int(11) NOT NULL,
  `buying_price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventoryhistroy`
--

INSERT INTO `inventoryhistroy` (`id`, `inventory_id`, `product_name`, `attribute_name`, `attribute_value`, `warehouse_code`, `warehouse_name`, `voucher_date`, `open_stock`, `quantity`, `expiry_date`, `product_price`, `buying_price`, `created_at`, `updated_at`) VALUES
(1, 1, 'Tulia Girl Beauty Nude Edition 18 Color Eyeshadow and Rose Gold Edition 18 Color Matte and Shiny Pigmented Beauty Eyeshadow Palette', 'Colour', 'Orange Blossom', 'Warehouse-00001', 'Warehouse 2', '2022-04-02', 8, 20, '2022-04-30', 346, 3000, '2022-04-02 04:28:57', '2022-04-02 04:28:57'),
(2, 2, 'Tulia Girl Beauty Nude Edition 18 Color Eyeshadow and Rose Gold Edition 18 Color Matte and Shiny Pigmented Beauty Eyeshadow Palette', 'Colour', 'Orange Blossom', 'Warehouse-00001', 'Warehouse 2', '2022-04-24', 20, 32, '2022-04-16', 346, 3000, '2022-04-09 04:16:40', '2022-04-09 04:16:40');

-- --------------------------------------------------------

--
-- Table structure for table `inventoryloss`
--

CREATE TABLE `inventoryloss` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `loss_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'LOS',
  `inventory_id` bigint(20) UNSIGNED NOT NULL,
  `adjust_date` date NOT NULL,
  `adjust_reason` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventorylossproduct`
--

CREATE TABLE `inventorylossproduct` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `inventory_id` bigint(20) UNSIGNED NOT NULL,
  `vendor_item_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `open_stock` int(11) NOT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buying_price` int(11) NOT NULL,
  `product_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventoryproduct`
--

CREATE TABLE `inventoryproduct` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `inventory_id` bigint(20) UNSIGNED NOT NULL,
  `vendor_item_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `open_stock` int(11) NOT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` int(11) NOT NULL,
  `buying_price` int(11) NOT NULL,
  `product_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_order_id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_date` date NOT NULL,
  `note` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`id`, `purchase_order_id`, `invoice_id`, `invoice_date`, `note`, `payment`, `amount`, `invoice_link`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'IV-00001', '2022-04-02', 'nice', 'Paid', '3000', 'IV-00001-1648893357_2022-04-02.pdf', 'active', '2022-04-02 04:25:58', '2022-04-02 04:26:20');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(71, 'default', '{\"uuid\":\"7f94d4c0-bb0a-4bc6-ba03-f0ea4c391304\",\"displayName\":\"App\\\\Jobs\\\\CustomerEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\CustomerEmailJob\",\"command\":\"O:25:\\\"App\\\\Jobs\\\\CustomerEmailJob\\\":11:{s:10:\\\"\\u0000*\\u0000details\\\";a:4:{s:5:\\\"email\\\";s:22:\\\"kvraghul2018@gmail.com\\\";s:11:\\\"admin_email\\\";s:24:\\\"order@tuliacosmetics.com\\\";s:13:\\\"customer_name\\\";s:5:\\\"Rahul\\\";s:8:\\\"order_id\\\";s:10:\\\"ORD-NX35JV\\\";}s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1664369009, 1664369009),
(72, 'default', '{\"uuid\":\"f278bea6-5723-46da-887d-7278f747b0e7\",\"displayName\":\"App\\\\Jobs\\\\AdminEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\AdminEmailJob\",\"command\":\"O:22:\\\"App\\\\Jobs\\\\AdminEmailJob\\\":11:{s:10:\\\"\\u0000*\\u0000details\\\";a:4:{s:5:\\\"email\\\";s:22:\\\"kvraghul2018@gmail.com\\\";s:11:\\\"admin_email\\\";s:24:\\\"order@tuliacosmetics.com\\\";s:13:\\\"customer_name\\\";s:5:\\\"Rahul\\\";s:8:\\\"order_id\\\";s:10:\\\"ORD-NX35JV\\\";}s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1664369009, 1664369009);

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
(5, '2021_11_26_103302_create_banners_table', 1),
(6, '2021_11_30_074804_create_categories_table', 1),
(7, '2021_12_02_051311_create_brands_table', 1),
(8, '2021_12_03_063632_create_attributes_table', 1),
(9, '2021_12_03_122503_create_products_table', 1),
(10, '2021_12_18_113201_create_coupon_table', 1),
(11, '2021_12_20_092324_create_orders_table', 1),
(12, '2021_12_21_064032_create_product_attributes_table', 1),
(13, '2021_12_21_100453_create_vendor_table', 1),
(14, '2021_12_22_123525_create_vendoritem_table', 1),
(15, '2021_12_28_055022_create_vendoritem_attribute_table', 1),
(16, '2021_12_28_112329_create_purchase_table', 1),
(17, '2021_12_29_073059_create_purchaseproduct_table', 1),
(18, '2022_01_08_063042_create_quotation_table', 1),
(19, '2022_01_28_055801_create_purchase_order_table', 1),
(20, '2022_01_29_063833_create__invoice_table', 1),
(21, '2022_02_07_101035_create__contact_table', 1),
(22, '2022_02_07_105703_create_permission_tables', 1),
(23, '2022_02_07_111811_add_permission_group_id_to_permissions_table', 1),
(24, '2022_02_07_112142_create_permission_groups_table', 1),
(25, '2022_02_08_071237_create__about_table', 1),
(26, '2022_02_08_094738_create__faqs_table', 1),
(27, '2022_02_16_124157_create_blog_table', 1),
(28, '2022_02_18_043552_create_contactform_table', 1),
(29, '2022_02_18_072359_customer', 1),
(30, '2022_02_18_080359_create_terms_table', 1),
(31, '2022_02_18_092636_create_delivery_table', 1),
(32, '2022_02_18_095925_create_privacy_table', 1),
(33, '2022_02_22_060739_create_inventory_reciving_voucher_table', 1),
(34, '2022_02_24_080148_create_inventoryproduct_table', 1),
(35, '2022_02_24_121612_create_inventoryloss_table', 1),
(36, '2022_02_24_121637_create_inventorylossproduct_table', 1),
(37, '2022_02_24_140818_create_warehouse_table', 1),
(38, '2022_02_25_070947_create_inventoryhistroy_table', 1),
(39, '2022_02_28_123643_create_shippings_table', 1),
(40, '2022_03_01_090616_create_order_products_table', 1),
(41, '2022_03_04_045732_create_taxes_table', 1),
(42, '2022_03_10_050814_create_reason_table', 1),
(43, '2022_03_10_121146_create_payment_table', 1),
(44, '2022_03_15_111550_create_wishlists_table', 1),
(45, '2022_03_15_111733_create_cart_tables_table', 1),
(46, '2022_03_15_115133_create_product_reviews_table', 1),
(47, '2022_03_21_061243_create_promos_table', 1),
(48, '2022_03_25_071114_create_payment__method_table', 1),
(49, '2022_03_25_071853_create_transaction_table', 1),
(50, '2022_06_18_103722_create_product_variant_table', 2),
(51, '2022_06_30_065257_create_suppliers_table', 3),
(52, '2022_07_01_113726_create_visitors_table', 4),
(53, '2022_07_19_070740_suborders', 5),
(54, '2022_07_19_071056_subordersitems', 5),
(55, '2022_09_15_135311_create_jobs_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(4, 'App\\Models\\User', 52),
(3, 'App\\Models\\User', 53),
(6, 'App\\Models\\User', 54);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `sub_total` double(8,2) NOT NULL DEFAULT '0.00',
  `tax_rate` double(8,2) NOT NULL DEFAULT '0.00',
  `total` double(8,2) NOT NULL DEFAULT '0.00',
  `discound_amount` double(8,2) NOT NULL DEFAULT '0.00',
  `deliver_charge` double(8,2) DEFAULT '0.00',
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` enum('paid','unpaid') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Pending','Confirmed','Processing','Delivered','Returned','Cancelled','COD') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Processing',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_id`, `customer_id`, `sub_total`, `tax_rate`, `total`, `discound_amount`, `deliver_charge`, `payment_type`, `payment_status`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ORD-JGHZG4', 36, 4985.00, 0.00, 4985.00, 0.00, 3.00, 'cod', 'unpaid', 'Processing', '2023-01-19 22:30:51', '2023-01-19 22:30:51'),
(2, 'ORD-00RCLZ', 36, 960.00, 0.00, 960.00, 0.00, 0.00, 'cod', 'unpaid', 'Processing', '2023-01-19 22:43:39', '2023-01-19 22:43:39'),
(3, 'ORD-SRVNT8', 36, 700.00, 0.00, 700.00, 0.00, 0.00, 'cod', 'unpaid', 'Confirmed', '2023-01-20 00:57:08', '2023-02-07 03:48:09'),
(4, 'ORD-YPDM36', 36, 400.00, 0.00, 400.00, 0.00, 3.00, 'cod', 'unpaid', 'Processing', '2023-01-20 23:42:19', '2023-01-20 23:42:19'),
(5, 'ORD-CSXIVY', 36, 1180.00, 0.00, 1180.00, 0.00, 0.00, 'cod', 'unpaid', 'Processing', '2023-01-20 23:48:14', '2023-01-20 23:48:14'),
(6, 'ORD-ZR3AIC', 36, 1560.00, 0.00, 1560.00, 0.00, 3.00, 'cod', 'paid', 'Delivered', '2023-02-07 02:23:48', '2023-02-07 03:40:23');

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  `cancellation_fee` decimal(12,2) NOT NULL DEFAULT '0.00',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `option` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `tax_rate` decimal(12,2) NOT NULL DEFAULT '0.00',
  `total_tax` decimal(12,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `quantity`, `cancellation_fee`, `status`, `option`, `amount`, `tax_rate`, `total_tax`, `created_at`, `updated_at`) VALUES
(1, 1, 14, 3, '0.00', 'Active', 'default', '350.00', '0.00', '350.00', '2023-01-19 22:30:51', '2023-01-19 22:30:51'),
(2, 1, 3, 1, '0.00', 'Active', 'default', '480.00', '0.00', '480.00', '2023-01-19 22:30:51', '2023-01-19 22:30:51'),
(3, 1, 5, 7, '0.00', 'Active', 'default', '425.00', '0.00', '425.00', '2023-01-19 22:30:51', '2023-01-19 22:30:51'),
(4, 1, 1, 1, '0.00', 'Active', 'default', '480.00', '0.00', '480.00', '2023-01-19 22:30:51', '2023-01-19 22:30:51'),
(5, 2, 1, 2, '0.00', 'Active', 'default', '480.00', '0.00', '480.00', '2023-01-19 22:43:39', '2023-01-19 22:43:39'),
(6, 3, 2, 1, '0.00', 'Active', 'default', '300.00', '0.00', '350.00', '2023-01-20 00:57:08', '2023-01-20 00:57:08'),
(7, 3, 20, 1, '0.00', 'Active', 'default', '400.00', '0.00', '400.00', '2023-01-20 00:57:08', '2023-01-20 00:57:08'),
(8, 4, 10, 1, '0.00', 'Active', 'default', '400.00', '0.00', '400.00', '2023-01-20 23:42:19', '2023-01-20 23:42:19'),
(9, 5, 1, 1, '0.00', 'Active', 'default', '480.00', '0.00', '480.00', '2023-01-20 23:48:14', '2023-01-20 23:48:14'),
(10, 5, 9, 2, '0.00', 'Active', 'default', '350.00', '0.00', '350.00', '2023-01-20 23:48:14', '2023-01-20 23:48:14'),
(11, 6, 38, 2, '0.00', 'Active', 'default', '290.00', '0.00', '290.00', '2023-02-07 02:23:48', '2023-02-07 02:23:48'),
(12, 6, 39, 2, '0.00', 'Active', 'default', '290.00', '0.00', '290.00', '2023-02-07 02:23:48', '2023-02-07 02:23:48'),
(13, 6, 18, 1, '0.00', 'Active', 'default', '400.00', '0.00', '400.00', '2023-02-07 02:23:48', '2023-02-07 02:23:48');

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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `payment_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(8,2) NOT NULL DEFAULT '0.00',
  `payment_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `order_id`, `customer_id`, `payment_id`, `amount`, `payment_type`, `payment_method`, `message`, `email`, `phone`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, '19', 1, '', 308.00, 'RazorPay', '', '', 'harireyoo@gmail.com', '08838934958', '1', '2022-04-04 06:28:11', '2022-04-04 06:28:11'),
(2, '20', 1, 'pay_JFGrJhaztyys3r', 308.00, 'RazorPay', 'netbanking', 'Transaction', 'harireyoo@gmail.com', '08838934958', '2', '2022-04-04 06:28:32', '2022-04-04 06:28:46'),
(3, '1', 1, 'pay_JFGtcpCWUggkcu', 1.00, 'RazorPay', 'netbanking', 'Transaction', 'harireyoo@gmail.com', '08838934958', '2', '2022-04-04 06:30:43', '2022-04-04 06:30:57'),
(4, '2', 2, 'pay_JFwsFg473sfxMP', 1.00, 'RazorPay', 'netbanking', 'Transaction', 'kani@oceansoftwares.in', '8838934958', '2', '2022-04-05 23:33:57', '2022-04-05 23:34:49'),
(5, '3', 2, 'pay_JFwsmGhKUZjeW5', 1.00, 'RazorPay', 'wallet', 'Transaction', 'kani@oceansoftwares.in', '8838934958', '2', '2022-04-05 23:35:00', '2022-04-05 23:35:19'),
(6, '4', 2, '', 1.00, 'RazorPay', '', '', 'kani@oceansoftwares.in', '8838934958', '1', '2022-04-05 23:35:28', '2022-04-05 23:35:28'),
(7, '5', 2, 'pay_JFwvl4VOgIDXUI', 1.00, 'RazorPay', 'card', 'Transaction', 'kani@oceansoftwares.in', '8838934958', '2', '2022-04-05 23:35:56', '2022-04-05 23:38:10'),
(8, '6', 2, 'pay_JFwwvYMOnBaEVR', 1.00, 'RazorPay', 'card', 'Transaction', 'kani@oceansoftwares.in', '8838934958', '2', '2022-04-05 23:38:32', '2022-04-05 23:39:21'),
(9, '7', 2, 'pay_JFx4Nbv77EVTeU', 1.00, 'RazorPay', 'card', 'Transaction', 'kani@oceansoftwares.in', '8838934958', '2', '2022-04-05 23:45:05', '2022-04-05 23:46:21'),
(10, '8', 2, '', 1.00, 'RazorPay', '', '', 'kani@oceansoftwares.in', '8838934958', '1', '2022-04-05 23:51:59', '2022-04-05 23:51:59'),
(11, '9', 2, 'pay_JFxBRtT7U161r8', 1.00, 'RazorPay', 'card', 'Transaction', 'kani@oceansoftwares.in', '9785463210', '2', '2022-04-05 23:52:23', '2022-04-05 23:53:00'),
(12, '10', 2, 'pay_JFxGhLXDXJ1L1L', 1.00, 'RazorPay', 'card', 'Transaction', 'kani@oceansoftwares.in', '8838934958', '2', '2022-04-05 23:56:45', '2022-04-05 23:57:58'),
(13, '11', 2, 'pay_JFxI66oIjFnthE', 1.00, 'RazorPay', 'card', 'Transaction', 'kani@oceansoftwares.in', '8838934958', '2', '2022-04-05 23:58:05', '2022-04-05 23:59:21'),
(14, '12', 2, 'pay_JFxPR2ari7Vcb9', 1.00, 'RazorPay', 'card', 'Transaction', 'kani@oceansoftwares.in', '8838934958', '2', '2022-04-06 00:05:47', '2022-04-06 00:06:14'),
(15, '13', 4, 'pay_JG2EZC63XKT66i', 583.67, 'RazorPay', 'card', 'Transaction', 'reyoo@gmail.com', '81486677791', '2', '2022-04-06 04:48:50', '2022-04-06 04:49:26'),
(16, '35', 1, '', 200.00, 'RazorPay', '', '', 'harireyoo@gmail.com', 're', '1', '2022-07-25 23:10:13', '2022-07-25 23:10:13'),
(17, '41', 1, '', 100.00, 'RazorPay', '', '', 'harireyoo@gmail.com', '56', '1', '2022-07-26 00:44:41', '2022-07-26 00:44:41'),
(18, '42', 1, '', 100.00, 'RazorPay', '', '', 'harireyoo@gmail.com', '56', '1', '2022-07-26 00:44:52', '2022-07-26 00:44:52'),
(19, '43', 1, '', 100.00, 'RazorPay', '', '', 'harireyoo@gmail.com', '56', '1', '2022-07-26 00:45:03', '2022-07-26 00:45:03'),
(20, '44', 1, '', 100.00, 'RazorPay', '', '', 'harireyoo@gmail.com', 'yu', '1', '2022-07-26 00:48:15', '2022-07-26 00:48:15'),
(21, '45', 1, '', 100.00, 'RazorPay', '', '', 'harireyoo@gmail.com', '5', '1', '2022-07-26 01:24:30', '2022-07-26 01:24:30'),
(22, '46', 1, '', 100.00, 'RazorPay', '', '', 'harireyoo@gmail.com', '45', '1', '2022-07-26 01:25:22', '2022-07-26 01:25:22'),
(23, '47', 1, 'pay_JxuAmHCcyDLZKa', 200.00, 'RazorPay', 'upi', 'Transaction', 'harireyoo@gmail.com', 'fg', '2', '2022-07-26 01:31:29', '2022-07-26 01:32:20'),
(24, '48', 1, '', 200.00, 'RazorPay', '', '', 'harireyoo@gmail.com', 'et', '1', '2022-07-26 01:39:34', '2022-07-26 01:39:34'),
(25, '49', 1, '', 300.00, 'RazorPay', '', '', 'harireyoo@gmail.com', 'tr', '1', '2022-07-26 01:45:25', '2022-07-26 01:45:25'),
(26, '51', 1, '', 300.00, 'RazorPay', '', '', 'harireyoo@gmail.com', 'wer', '1', '2022-07-26 01:50:06', '2022-07-26 01:50:06'),
(27, '53', 1, '', 300.00, 'RazorPay', '', '', 'harireyoo@gmail.com', 'et', '1', '2022-07-26 01:56:34', '2022-07-26 01:56:34'),
(28, '54', 1, 'pay_JxucmVMFgQUO5v', 300.00, 'RazorPay', 'upi', 'Transaction', 'harireyoo@gmail.com', '65', '2', '2022-07-26 01:58:09', '2022-07-26 01:58:50'),
(29, '55', 1, 'pay_Jxuk1Y2sYsHx6f', 300.00, 'RazorPay', 'upi', 'Transaction', 'harireyoo@gmail.com', 'gf', '2', '2022-07-26 02:04:59', '2022-07-26 02:05:41'),
(30, '56', 1, '', 300.00, 'RazorPay', '', '', 'harireyoo@gmail.com', '56', '1', '2022-07-26 02:14:13', '2022-07-26 02:14:13'),
(31, '57', 1, 'pay_JxuvRWo8CGPYkK', 300.00, 'RazorPay', 'upi', 'Transaction', 'harireyoo@gmail.com', 'dfg', '2', '2022-07-26 02:15:23', '2022-07-26 02:16:31'),
(32, '58', 1, '', 300.00, 'RazorPay', '', '', 'harireyoo@gmail.com', 'er', '1', '2022-07-26 03:34:41', '2022-07-26 03:34:41'),
(33, '60', 1, 'pay_JxwKpNGnrnydxS', 300.00, 'RazorPay', 'upi', 'Transaction', 'harireyoo@gmail.com', '56', '2', '2022-07-26 03:37:18', '2022-07-26 03:39:14'),
(34, '61', 1, '', 300.00, 'RazorPay', '', '', 'harireyoo@gmail.com', 'et', '1', '2022-07-26 03:42:49', '2022-07-26 03:42:49'),
(35, '62', 1, 'pay_JxwQPd8Oua6mfq', 300.00, 'RazorPay', 'upi', 'Transaction', 'harireyoo@gmail.com', 'et', '2', '2022-07-26 03:43:24', '2022-07-26 03:44:31'),
(36, '63', 1, '', 100.00, 'RazorPay', '', '', 'harireyoo@gmail.com', 'rt4', '1', '2022-07-26 03:48:40', '2022-07-26 03:48:40'),
(37, '64', 1, 'pay_JxwVxt1kUWU5nO', 100.00, 'RazorPay', 'upi', 'Transaction', 'harireyoo@gmail.com', 'rt4', '2', '2022-07-26 03:48:58', '2022-07-26 03:49:46'),
(38, '65', 1, 'pay_Jxwkplfn0VUQs2', 100.00, 'RazorPay', 'upi', 'Transaction', 'harireyoo@gmail.com', 'ry', '2', '2022-07-26 04:03:04', '2022-07-26 04:03:53'),
(39, '66', 1, '', 100.00, 'RazorPay', '', '', 'harireyoo@gmail.com', 'ry', '1', '2022-07-26 04:04:30', '2022-07-26 04:04:30'),
(40, '67', 1, 'pay_JxwmWGgLxwNg68', 100.00, 'RazorPay', 'upi', 'Transaction', 'harireyoo@gmail.com', 'r', '2', '2022-07-26 04:04:54', '2022-07-26 04:05:29');

-- --------------------------------------------------------

--
-- Table structure for table `payment__method`
--

CREATE TABLE `payment__method` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('on','off') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'on',
  `Stripe_Key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Stripe_Secret` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Paypal_Client_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Paypal_Client_Secret` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `RazorPay_Key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `RazorPay_Secret_Key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Paytm_Mercent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Paytm_Website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Paytm_Industry` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Paytm_Is_Paytm` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Paytm_Paytm_Mode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SSLCommerz_Store_Id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SSLCommerz_Store_Password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SSLCommerz_Sandbox_Check` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment__method`
--

INSERT INTO `payment__method` (`id`, `image`, `title`, `status`, `Stripe_Key`, `Stripe_Secret`, `Paypal_Client_ID`, `Paypal_Client_Secret`, `RazorPay_Key`, `RazorPay_Secret_Key`, `Paytm_Mercent`, `Paytm_Website`, `Paytm_Industry`, `Paytm_Is_Paytm`, `Paytm_Paytm_Mode`, `SSLCommerz_Store_Id`, `SSLCommerz_Store_Password`, `SSLCommerz_Sandbox_Check`, `payment_type`, `created_by`, `created_at`, `updated_at`) VALUES
(1, '/storage/photos/1/Top-10-Mobile-Brands-in-World-1-1.jpg', 'cash on delivery', 'on', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Cash_On_Delivery', 1, '2022-04-03 23:11:11', '2022-04-03 23:11:11'),
(2, '/storage/photos/1/bulk-foundation-cream-500x500.jpg', 'tr', 'off', '', '', 'if0045', 'hjhgj', '', '', '', '', '', '', '', '', '', '', 'Paypal', 1, '2022-04-03 23:11:53', '2022-04-03 23:16:07'),
(3, '/storage/photos/1/image.png', 'Razory pay', 'on', '', '', '', '', 'rzp_test_QMgXCOQlVZ7IMP', 'GREQbaYv8kQc1ZeT6PzOXcHT', '', '', '', '', '', '', '', '', 'RazorPay', 1, '2022-04-03 23:12:22', '2022-04-03 23:16:01');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission_group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `permission_group_id`) VALUES
(1, 'Offer Banner Create', 'web', '2022-12-08 04:45:12', '2022-12-08 04:45:12', 1),
(2, 'Offer Banner View', 'web', '2022-12-08 04:45:12', '2022-12-08 04:45:12', 1),
(3, 'Offer Banner Edit', 'web', '2022-12-08 04:45:12', '2022-12-08 04:45:12', 1),
(4, 'Offer Banner Delete', 'web', '2022-12-08 04:45:12', '2022-12-08 04:45:12', 1),
(5, 'Banner Create', 'web', '2022-12-08 04:45:12', '2022-12-08 04:45:12', 2),
(6, 'Banner View', 'web', '2022-12-08 04:45:12', '2022-12-08 04:45:12', 2),
(7, 'Banner Edit', 'web', '2022-12-08 04:45:12', '2022-12-08 04:45:12', 2),
(8, 'Banner Delete', 'web', '2022-12-08 04:45:12', '2022-12-08 04:45:12', 2),
(9, 'Client Feedback View', 'web', '2022-12-08 04:45:12', '2022-12-08 04:45:12', 3),
(10, 'Client Feedback Delete', 'web', '2022-12-08 04:45:12', '2022-12-08 04:45:12', 3),
(11, 'Hot Offer Create', 'web', '2022-12-08 04:45:12', '2022-12-08 04:45:12', 4),
(12, 'Hot Offer View', 'web', '2022-12-08 04:45:12', '2022-12-08 04:45:12', 4),
(13, 'Hot Offer Edit', 'web', '2022-12-08 04:45:12', '2022-12-08 04:45:12', 4),
(14, 'Hot Offer Delete', 'web', '2022-12-08 04:45:12', '2022-12-08 04:45:12', 4),
(15, 'Categories Create', 'web', '2022-12-08 04:45:12', '2022-12-08 04:45:12', 5),
(16, 'Categories View', 'web', '2022-12-08 04:45:12', '2022-12-08 04:45:12', 5),
(17, 'Categories Edit', 'web', '2022-12-08 04:45:12', '2022-12-08 04:45:12', 5),
(18, 'Categories Delete', 'web', '2022-12-08 04:45:13', '2022-12-08 04:45:13', 5),
(19, 'Tax Create', 'web', '2022-12-08 04:45:13', '2022-12-08 04:45:13', 6),
(20, 'Tax View', 'web', '2022-12-08 04:45:13', '2022-12-08 04:45:13', 6),
(21, 'Tax Edit', 'web', '2022-12-08 04:45:13', '2022-12-08 04:45:13', 6),
(22, 'Tax Delete', 'web', '2022-12-08 04:45:13', '2022-12-08 04:45:13', 6),
(23, 'Products Create', 'web', '2022-12-08 04:45:13', '2022-12-08 04:45:13', 7),
(24, 'Products View', 'web', '2022-12-08 04:45:13', '2022-12-08 04:45:13', 7),
(25, 'Products Edit', 'web', '2022-12-08 04:45:13', '2022-12-08 04:45:13', 7),
(26, 'Products Delete', 'web', '2022-12-08 04:45:13', '2022-12-08 04:45:13', 7),
(27, 'Product Reviews View', 'web', '2022-12-08 04:45:13', '2022-12-08 04:45:13', 8),
(28, 'Product Reviews Delete', 'web', '2022-12-08 04:45:13', '2022-12-08 04:45:13', 8),
(29, 'Inventory View', 'web', '2022-12-08 04:45:13', '2022-12-08 04:45:13', 9),
(30, 'Order List', 'web', '2022-12-08 04:45:13', '2022-12-08 04:45:13', 10),
(31, 'Order View', 'web', '2022-12-08 04:45:13', '2022-12-08 04:45:13', 10),
(32, 'Pending List', 'web', '2022-12-08 04:45:13', '2022-12-08 04:45:13', 11),
(33, 'Pending View', 'web', '2022-12-08 04:45:13', '2022-12-08 04:45:13', 11),
(34, 'Confirmed List', 'web', '2022-12-08 04:45:13', '2022-12-08 04:45:13', 12),
(35, 'Confirmed View', 'web', '2022-12-08 04:45:13', '2022-12-08 04:45:13', 12),
(36, 'Progress List', 'web', '2022-12-08 04:45:13', '2022-12-08 04:45:13', 13),
(37, 'Progress View', 'web', '2022-12-08 04:45:13', '2022-12-08 04:45:13', 13),
(38, 'Deliver List', 'web', '2022-12-08 04:45:13', '2022-12-08 04:45:13', 14),
(39, 'Deliver View', 'web', '2022-12-08 04:45:13', '2022-12-08 04:45:13', 14),
(40, 'Return List', 'web', '2022-12-08 04:45:13', '2022-12-08 04:45:13', 15),
(41, 'Return View', 'web', '2022-12-08 04:45:13', '2022-12-08 04:45:13', 15),
(42, 'Cancel List', 'web', '2022-12-08 04:45:13', '2022-12-08 04:45:13', 16),
(43, 'Cancel View', 'web', '2022-12-08 04:45:13', '2022-12-08 04:45:13', 16),
(44, 'COD List', 'web', '2022-12-08 04:45:13', '2022-12-08 04:45:13', 17),
(45, 'COD View', 'web', '2022-12-08 04:45:13', '2022-12-08 04:45:13', 17),
(46, 'Coupon Create', 'web', '2022-12-08 04:45:13', '2022-12-08 04:45:13', 18),
(47, 'Coupon View', 'web', '2022-12-08 04:45:13', '2022-12-08 04:45:13', 18),
(48, 'Coupon Edit', 'web', '2022-12-08 04:45:13', '2022-12-08 04:45:13', 18),
(49, 'Coupon Delete', 'web', '2022-12-08 04:45:13', '2022-12-08 04:45:13', 18),
(50, 'Role Create', 'web', '2022-12-08 04:45:13', '2022-12-08 04:45:13', 19),
(51, 'Role View', 'web', '2022-12-08 04:45:13', '2022-12-08 04:45:13', 19),
(52, 'Role Edit', 'web', '2022-12-08 04:45:14', '2022-12-08 04:45:14', 19),
(53, 'Role Delete', 'web', '2022-12-08 04:45:14', '2022-12-08 04:45:14', 19),
(54, 'User Create', 'web', '2022-12-08 04:45:14', '2022-12-08 04:45:14', 20),
(55, 'User View', 'web', '2022-12-08 04:45:14', '2022-12-08 04:45:14', 20),
(56, 'User Edit', 'web', '2022-12-08 04:45:14', '2022-12-08 04:45:14', 20),
(57, 'User Delete', 'web', '2022-12-08 04:45:14', '2022-12-08 04:45:14', 20),
(58, 'Customer Create', 'web', '2022-12-08 04:45:14', '2022-12-08 04:45:14', 21),
(59, 'Customer View', 'web', '2022-12-08 04:45:14', '2022-12-08 04:45:14', 21),
(60, 'Customer Edit', 'web', '2022-12-08 04:45:14', '2022-12-08 04:45:14', 21),
(61, 'Customer Delete', 'web', '2022-12-08 04:45:14', '2022-12-08 04:45:14', 21),
(62, 'Permission Create', 'web', '2022-12-08 04:45:14', '2022-12-08 04:45:14', 22),
(63, 'Permission View', 'web', '2022-12-08 04:45:14', '2022-12-08 04:45:14', 22),
(64, 'Permission Edit', 'web', '2022-12-08 04:45:14', '2022-12-08 04:45:14', 22),
(65, 'Permission Delete', 'web', '2022-12-08 04:45:14', '2022-12-08 04:45:14', 22);

-- --------------------------------------------------------

--
-- Table structure for table `permission_groups`
--

CREATE TABLE `permission_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_groups`
--

INSERT INTO `permission_groups` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Offer Banner', NULL, NULL),
(2, 'Banner', NULL, NULL),
(3, 'Client Feedback', NULL, NULL),
(4, 'Hot Offer', NULL, NULL),
(5, 'Categories', NULL, NULL),
(6, 'Tax', NULL, NULL),
(7, 'Products', NULL, NULL),
(8, 'Product Review', NULL, NULL),
(9, 'Inventory', NULL, NULL),
(10, 'Order', NULL, NULL),
(11, 'Pending', NULL, NULL),
(12, 'Confirmed', NULL, NULL),
(13, 'Progress', NULL, NULL),
(14, 'Deliver', NULL, NULL),
(15, 'Return', NULL, NULL),
(16, 'Cancel', NULL, NULL),
(17, 'Cod', NULL, NULL),
(18, 'Coupon', NULL, NULL),
(19, 'Role', NULL, NULL),
(20, 'User', NULL, NULL),
(21, 'Customer', NULL, NULL),
(22, 'Permission', NULL, NULL);

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
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `privacy`
--

CREATE TABLE `privacy` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `privacy`
--

INSERT INTO `privacy` (`id`, `title`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Policy', 'policy', '<p>Based out of Gurgaon, Haryana, PolicyBazaar is an insurance broker approved by IRDA of India. We offer an online platform for insurance buyers where they can easily compare different insurance policies such as&nbsp;<a href=\"https://www.policybazaar.com/motor-insurance/car-insurance/\">car insurance</a>,&nbsp;<a href=\"https://www.policybazaar.com/life-insurance/\">life insurance</a>, two-wheeler insurance,&nbsp;<a href=\"https://www.policybazaar.com/life-insurance/term-insurance/\">term insurance</a>, retirement plans etc. They can make an informed choice in a matter of a single click that too from the comfort of their home.</p>\r\n<p>As the insurance sector has taken proactive measures upon the outbreak of COVID-19, PolicyBazaar is also offering&nbsp;<a href=\"https://www.policybazaar.com/life-insurance/term-insurance/coronavirus-term-insurance-policy/\">Coronavirus term insurance</a>&nbsp;and&nbsp;<a href=\"https://www.policybazaar.com/health-insurance/coronavirus-health-insurance/\">coronavirus health insurance</a>.</p>\r\n<p>Moreover, as per the IRDAI regulations, all the health and general insurers are now offering two specific products namely,&nbsp;<a href=\"https://www.policybazaar.com/health-insurance/corona-kavach-policy/\">Corona Kavach Policy</a>&nbsp;and&nbsp;<a href=\"https://www.policybazaar.com/health-insurance/corona-rakshak-policy/\">Corona Rakshak Policy</a>. The policies cover COVID-19 hospitalization, home treatment, Ayush treatment along with the cost of PPE kits, and other expensive consumable items.</p>\r\n<p>This year IRDAI has also introduced another standard health insurance policy for people who cannot afford to pay higher premiums. They can buy&nbsp;<a href=\"https://www.policybazaar.com/health-insurance/arogya-sanjeevani-policy/\">Arogya Sanjeevani Policy</a>&nbsp;from Policybazaar.com</p>\r\n<p>And for the lower-income groups, we also provide&nbsp;<a href=\"https://www.policybazaar.com/health-insurance/articles/ayushman-bharat-yojana/\">PMJAY or Ayushman Bharat Yojana</a>&nbsp;scheme on our platform, which is a big initiative by our PM Narendra Modi to provide insurance to the needy in both rural and urban India.</p>\r\n<p>By comparing insurance plans online, the applicants can avail easy and free access to the availability of information. We have tied up with 50+ insurance companies in India to offer a myriad of options. By making smart use of the latest technology, PolicyBazaar makes insurance buying/ process smooth for insurance buyers.</p>\r\n<p><strong class=\"title\">What\'s more?</strong></p>\r\n<p>Apart from buying insurance online, existing policyholders can renew insurance plans and file a claim. In addition to that, individuals can also opt for best mutual funds,&nbsp;<a href=\"https://www.policybazaar.com/life-insurance/investment-plans/articles/best-investment-options-in-india/\">investment options</a>, and&nbsp;<a href=\"https://www.policybazaar.com/income-tax/tax-saving-investments/\">tax-saving investments</a>&nbsp;at our platform.</p>\r\n<p>At PolicyBazaar, you can easily compare the insurance quotes, get detailed information and zero down plans such as a&nbsp;<a href=\"https://www.policybazaar.com/insurance-companies/lic-india-term-insurance-plans/\">LIC term plan</a>,&nbsp;<a href=\"https://www.policybazaar.com/insurance-companies/lic-of-india/\">LIC</a>, HDFC child plan,&nbsp;<a href=\"https://www.policybazaar.com/insurance-companies/lic-india-pension-plans/\">LIC pension plan</a>, etc. whichever fulfils the requirements.</p>\r\n<p>Our sole objective is to help insurance applicants make an informed decision when they buy a policy online. Insurance companies offer various policies to fulfil the insurance needs of different insurance buyers. To come across the best insurance plan, it is necessary to compare insurance plans based on features, benefits, offered coverage, and premium rates.</p>\r\n<p>Our portal showcases insurance plans offered by 50+ prominent public and private insurers across India, which falls under two categories:</p>\r\n<p><strong class=\"title\">1.&nbsp;<a href=\"https://www.policybazaar.com/life-insurance/\">Life Insurance</a>-</strong>&nbsp;Life insurance is a contract between an insurer and an insured. Under a life insurance plan, in exchange for a premium, the insurer promises to provide the policy nominee with a pre-decided sum of money upon the death of the policyholder (as per applicable terms and conditions).</p>\r\n<p>Life insurance includes term life insurance plan, whole life plans,&nbsp;<a href=\"https://www.policybazaar.com/endowment-policy/\">endowment plans</a>, money back plans,&nbsp;<a href=\"https://www.policybazaar.com/life-insurance/ulip-plans/\">ULIPs</a>,&nbsp;<a href=\"https://www.policybazaar.com/life-insurance/child-plans/\">child Plans</a>,&nbsp;<a href=\"https://www.policybazaar.com/life-insurance/investment-plans/\">investment plans</a>&nbsp;and&nbsp;<a href=\"https://www.policybazaar.com/life-insurance/pension-plans/\">retirement plans</a>.</p>\r\n<p><strong class=\"title\">2. General Insurance&ndash;</strong>&nbsp;Also known as non-life insurance, general insurance is defined as any insurance that that doesn&rsquo;t fall in the category of life insurance. As per applicable terms and conditions, it provides pre-decided insurance coverage to the insured in exchange of a specific premium.</p>\r\n<p>General insurance includes car insurance,&nbsp;<a href=\"https://www.policybazaar.com/health-insurance/health-insurance-india/\">health insurance</a>, two-wheeler insurance, travel insurance, home insurance, corporate insurance, critical illness, and personal accident insurance.</p>\r\n<p><strong class=\"title\">Our Partners</strong></p>\r\n<p>Our partners are from diverse insurance sectors-&nbsp;<a href=\"https://www.policybazaar.com/motor-insurance/\">motor insurance</a>, term insurance, health insurance,&nbsp;<a href=\"https://www.policybazaar.com/travel-insurance/\">travel insurance</a>, and corporate insurance. We have partnered with them in order to be a one-stop solution for all the insurance needs.</p>\r\n<p><strong class=\"title\">Benefits of Buying/ Renewing Insurance through PolicyBazaar</strong></p>\r\n<ul class=\"ulbox\">\r\n<li><strong>Quick Decision Making:</strong>&nbsp;Our online platform helps you make an informed insurance decision simply and conveniently. You can compare the cost and features of the various insurance policies in a matter of a few seconds. Our platform helps you understand each product&rsquo;s features so that you can easily shortlist the plan that suits your needs.</li>\r\n<li><strong>High Coverage at Low Premium:</strong>&nbsp;As compared to the offline mode of buying insurance, we offer high insurance coverage at the lower insurance premium. Since there are no agents involved, no commission is paid to the insurance agent. As a result, you can buy insurance online at the best insurance premium. At PolicyBazaar, you can check various insurer premium rates such as HDFC life premium,&nbsp;<a href=\"https://www.policybazaar.com/insurance-companies/lic-of-india/lic-online-payment-options/\">LIC premium</a>&nbsp;and so forth to make a smart and an informed decision.</li>\r\n<li><strong>Seamless navigation:</strong>&nbsp;We have a strong technological edge that makes the insurance application process seamless. We have online forms that ask questions based on the applicant&rsquo;s demographics and profile.</li>\r\n<li><strong>Error Free Calculation:</strong>&nbsp;The insurance quotes are system generated, which eradicates the scope of human error. Additionally, the time taken to calculate premiums is considerably reduced.</li>\r\n</ul>\r\n<p>No matter what type of insurance policy you intend to buy&mdash;life, health, home, car, or&nbsp;<a href=\"https://www.policybazaar.com/motor-insurance/two-wheeler-insurance/\">two wheeler insurance</a>&nbsp;among others, Policybazaar.com offers an unbiased and data-driven platform to buy insurance hassle-free.</p>', '2022-04-02 05:14:27', '2022-04-02 05:14:27');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `benefits` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ingrediants` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `usage` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `header` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `top_rated_products` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `slug` text COLLATE utf8mb4_unicode_ci,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` int(12) NOT NULL,
  `regular_price` decimal(12,2) DEFAULT NULL,
  `tax_id` int(11) NOT NULL,
  `discount` decimal(12,2) DEFAULT NULL,
  `discount_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `benefits`, `ingrediants`, `usage`, `header`, `top_rated_products`, `slug`, `category`, `subcategory_id`, `brand_name`, `stock`, `regular_price`, `tax_id`, `discount`, `discount_type`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hibiscus Shampoo', '<p><b>QUANTITY :</b><br>100ML</p><p><b>SIZE OF THE CONTAINER/H--DIA IN CM :</b><br>8.5--11.5<br></p>', '<p>BID GOOD BYE TO LICE WITH OUR ANTI LICE OIL ENJOY A FLAWLESS SCALP WITH OUR ADVANCED AND NATURAL CLEANSING FORMULA. FIGHT THE OCCURRENCE OF LIES AND ENSURE A HEALTHY SCALP. <br></p>', 'ALMOND OIL ,LAVENDER OIL,NEEM OIL,CEDARWOOD OIL ,COCONUT OIL ,CAMPHOR ,PEPPERMINT OIL,TEA TREE OIL ,YOGURT POWDER.', '<p>APPLY THE OIL ON YOUR SCALP AND WORK THROUGH THE END OF THE HAIR. LEAVE IT FOR OVERNIGHT AND COMB UP BEFORE WASH THE HAIR YOU WILL NEED TO DO THIS EVERY 2 TO 3 DAYS UNTIL YOU HAVE NO MORE SIGNS OF LICE OR NITS.<br></p>', 'active', 'active', 'hibiscus-shampoo1673520586-hibiscus-shampoo', '1,8', '0', 'Gkrishna', 10, '480.00', 1, '0.00', 'fixed', 'inactive', '2023-01-06 02:07:46', '2023-01-12 05:19:46'),
(2, 'ANTI DANDRUFF HAIR OIL', '<p><b>QUANTITY :</b><br>100ML<br><b>SIZE OF THE CONTAINER/H--DIA IN CM :</b><br>8.5--11.5<br></p>', '<p>GET RID OF YOUR DANDRUFF AND EXPERIENCE EVIDENT DIFFERENCE. OUR ANTI DANDRUFF HAIR OIL IS ENHANCED WITH THE SPECIAL FORMULA THAT REMOVES AND CONTROLS DANDRUFF & FLAKY DANDRUFF REDUCES THE FUNGAL INFECTION.  IT GIVES YOU COMPLETE RELIEF FROM SCALP ITCHING AND DRYNESS.                                                                          <br></p>', '<p>NEEM OIL,ONION OIL,LEMON OIL,BASIL OIL,TRIPHALA POWDER,FENUGREEK,SESAME OIL,COCONUT OIL,CASTOR OIL,YOGURT POWDER,ORANGE PEEL POWDER.<br></p>', '<p>TAKE THE REQUIRED AMOUNT OF  ANTI DANDRUFF OIL & GENTLY MASSAGE INTO THE SCALP AND LEAVE IT OVERNIGHT.AND MORNING CLEANSE YOUR HAIR WITH A DANDRUFF SHAMPOO.USE WEEKLY THRICE FOR BETTER RESULTS.<br></p>', 'active', 'active', 'anti-dandruff-hair-oil1673002575-anti-dandruff-hair-oil', '1,6,8,39', '0', 'Gkrishna', 10, '350.00', 1, '50.00', 'fixed', 'inactive', '2023-01-06 02:23:48', '2023-01-06 05:26:15'),
(3, '3 in 1 HAIR OIL  (with 32 Herbs Extract)', '<p><b>QUANTITY</b><br>200ML<br><b>SIZE OF THE CONTAINER/H--DIA IN CM</b><br>8.5--14.5<br></p>', '<p><br></p><p>HAIR OIL IS THE BEST WAY FOR YOUR HAIR TO GET ITS MUCH-NEEDED WHOLESOME NOURISHMENT, STRENGTHENING THE ROOTS AND ENHANCING HAIR-GROWTH. OUR SPECIALLY FORMULATED HAIR OIL PENETRATES THE SCALP AND REVITALIZES THE DAY AND DAMAGED HAIR,IT PROVIDES A LUMINOUS SHINE TO YOUR HAIR ALSO GIVING IT A SMOOTH TEXTURE AND A SHIMMER.</p>', '<p>COCONUT OIL,COCONUT MILK,CLOVES,OMAM,ONION,CURRY LEAVES,HENNA LEAVES, BHRINGRAJ,VALLARAI,ROSE EXTRACTS,ROSE PETALS,AVARAMPOO,HIBISCUS LEAVES,HIBISCUS FLOWERS,BLACK CUMIN SEEDS,FENUGREEK SEEDS,ALOE VERA,VETTIVER,THIRUNEER PATHINI,BASIL LEAVES,PAPAYA LEAVES,NEEM LEAVES,AMLA,TRIPHALA POWDER,COCOA BUTTER,MANGO BUTTER,CASTOR OIL, ALMOND OIL,MORINGA LEAVES,LICORICE,BANANA LEAVES,FLAXSEED,GUAVA LEAVES.<br></p>', '<p>TAKE THE REQUIRED AMOUNT OF HAIR OIL & GENTLY MASSAGE INTO HAIR ENSURING THAT THE ENTIRE SCALP IS COVERED,AND LEAVE IT OVERNIGHT . REGULAR USAGE OF THE OIL IS REQUIRED FOR OBVIOUS RESULTS & USE OUR FOREHEAD GEL &  FOREHEAD CREAM FOR BETTER RESULTS.<br></p>', 'active', 'active', '3-in-1-hair-oil-with-32-herbs-extract', '1,6,8,38', '0', 'Gkrishna', 10, '480.00', 1, '0.00', 'fixed', 'active', '2023-01-06 02:51:33', '2023-01-06 05:28:21'),
(4, 'DRY SHAMPOO', '<p><b>SIZE OF THE CONTAINER/H--DIA IN CM</b><br></p>', '<p>GIVE YOUR SCALP A SPECIAL CARE EVERY DAY. FROM BASIC CLEANSING TO OVERALL HAIR PROTECTION OUR DRY SHAMPOO PROVIDES YOUR HAIR WITH A COMPLETE HAIR CARE TREATMENT BY OBSERVING THE OIL AND RENDERING A DEEP CLEANSING. IT ALSO INCREASES THE HAIR COLOUR AND AIDS IN THE LENGTHENING OF HAIR.                             <br></p>', '<p>KAPOOR KACHRI POWDER, HIBISCUS POWDER,ROSE PETAL POWDER,NEEM POWDER, NAGARMOTHA, CAMPHOR OIL, ALOE VERA POWDER, AMLA POWDER, BHRINGRAJ POWDER.<br></p>', '<p>APPLY THE SCALP, LEAVE IT FOR 3 MINUTES AND  GENTLY COMB THROUGH YOUR HAIR.<br></p>', 'active', 'active', 'dry-shampoo1673002842-dry-shampoo', '1,6,9,38,39', '0', 'Gkrishna', 10, '400.00', 1, '0.00', 'fixed', 'active', '2023-01-06 02:54:43', '2023-01-06 05:30:42'),
(5, 'VOLUMIZING SUPHATE FREE SHAMPOO', '<p><b>QUANTITY</b><br>200ML<br><b>SIZE OF THE CONTAINER/H--DIA IN CM</b><br>13.5--14<br><br></p>', '<p>VOLUMIZING SULPHATE FREE SHAMPOO IS THE BEST WAY FOR YOUR HAIR TO GET ITS AMPLE NOURISHMENT THAT IT DESERVES AS IT CLEANSES THE SCALP AND ENHANCES HAIR-GROWTH. OUR SULPHATE FREE FORMULA ENRICHES THE SCALP WITHOUT ANY HARSH EFFECTS ALSO GIVING IT A SMOOTH AND SILKY TEXTURE. <br></p>', '<p>SOYA BEAN OIL,GLYCERINE, EDTA, AQUA, POLY QUART-10, SODIUM LAUROYL SARCOSINATE, DECYL GLUCOSIDE, CAPB, PEG-150, CETRIMONIUM CHLORIDE, PHENONIP, PEPTIDESCOCO MONO, COCO DI.<br></p>', '<p>WET YOUR HAIR COMPLETELY. APPLY THE REQUIRED AMOUNT OF SHAMPOO AND MASSAGE IT TO LATHER.   RINSE IT OFF PROPERLY ONCE ITS DONE.  USE OUR CONDITIONER FOR BETTER HAIR SMOOTHNESS.<br></p>', 'active', 'active', 'volumizing-suphate-free-shampoo1673002951-volumizing-suphate-free-shampoo', '1,6,9,38', '0', 'Gkrishna', 10, '425.00', 1, '0.00', 'fixed', 'active', '2023-01-06 02:58:12', '2023-01-06 05:32:31'),
(6, 'ANTI DANDRUFF SHAMPOO', '<p><b>QUANTITY  </b>     <br>200ML                                                       <br><b>SIZE OF THE CONTAINER/H--DIA IN CM</b><br>11--14<br></p>', '<p>BID ADIEU TO YOUR DANDRUFF PROBLEMS WITH OUR ANTI DANDRUFF SHAMPOO WHICH RENDERS COMPLETE CLEANING AND IT REDUCES ITCHING AND DRYNESS & ENSURES THAT THE DANDRUFF IS COMPLETELY WASHED OFF RESULTING IN A FLAWLESS SCALP. <br></p>', '<p>NEEMOIL, ONION OIL, YOGURT POWDER, AMLA EXTRACT,AQUA, GLYCERINE, EDTA, SALICYLIC  ,, FENUGREEK EXTRACT,EGMS, POLYQUATERNIUM-10,SODIUM LAUROYL SARCOSINATE,  CETRIMONIUM CHLORIDE, DECYL GLUCOSIDE, PEG-150, PHENOXY ETHNOL,COCO BETAINE, COCO MONO.<br></p>', '<p>WET YOUR HAIR COMPLETELY. APPLY THE REQUIRED AMOUNT OF SHAMPOO AND MASSAGE IT TO LATHER.   RINSE IT OFF PROPERLY ONCE ITS DONE.  USE OUR CONDITIONER FOR BETTER HAIR SMOOTHNESS.<br></p>', 'active', 'active', 'anti-dandruff-shampoo1673003039-anti-dandruff-shampoo', '1,6,9,39', '0', 'Gkrishna', 10, '425.00', 1, '0.00', 'fixed', 'active', '2023-01-06 03:03:25', '2023-01-06 05:33:59'),
(7, 'HERBAL SULPHATE FREE SHAMPOO', '<p><b>QUANTITY</b><br>200ML  <br><b>SIZE OF THE CONTAINER/H--DIA IN CM</b><br>11-14</p>', '<p>PACKED WITH THE GOODNESS OF THE FINEST NATURAL INGREDIENTS OUR HERBAL SHAMPOO RENDERS A COMPLETE HAIR CARE SOLUTIONS. IT SMOOTHENS THE HAIR, ENHANCES THE GROWTH AND ALSO STRENGTHENS THE ROOT. <br></p>', '<p>CURRY LEAF EXTRACT, BHRINGRAJ EXTRACT, NEEM EXTRACT,GLYCERINE, AQUA, EDTA, POLY QUART, 10, SODIUM LAUROYL SARCOSINATE DECYL GLUCOSIDE, CAPB, COCO MONO, COCO DI, PEG- 150, CETRIMONIUM CHLORIDE, PHENONIP, EGMS, HIBISCUS EXTRACT,  AMLA EXTRACT, COCONUT OIL, CASTOR OIL.<br></p>', 'WET YOUR HAIR COMPLETELY. APPLY THE REQUIRED AMOUNT OF SHAMPOO AND MASSAGE IT TO LATHER.   RINSE IT OFF PROPERLY ONCE ITS DONE.  USE OUR CONDITIONER FOR BETTER HAIR SMOOTHNESS.', 'active', 'active', 'herbal-sulphate-free-shampoo1673003087-herbal-sulphate-free-shampoo', '1,6,9,38', '0', 'Gkrishna', 10, '325.00', 1, '0.00', 'percentage', 'active', '2023-01-06 03:22:47', '2023-01-06 05:34:47'),
(8, 'HIBISCUS SHAMPOO', '<p><b>QUANTITY</b><br>200ML<br><b>SIZE OF THE CONTAINER/H--DIA IN CM</b><br>11-14</p>', '<p>HIBISCUS IS A NATURAL GIFT THAT HELPS IN HAIR GROWTH AND HAIR REPAIR. OUR HIBISCUS SHAMPOO ENRICHED WITH HIBISCUS EXTRACTS AND COCOA BUTTER ENSURE BETTER HAIR GROWTH, REPAIRED BROKEN ENDS, AND REDUCED HAIR FALL WHILE GENTLY CLEANSING YOUR HAIR.</p><div><br></div>', '<p> HIBISCUS EXTRACT,AQUA, GLYCERINE, EDTA, HIBISCUS EXTRACT,EGMS, POLYQUATERNIUM-10,SODIUM LAURYL SARCOSINATE, CETRIMONIUM CHLORIDE, DECYL GLUCOSIDE, PEG-150, COCOA BUTTER,PHENPXY ETHNOL,, COCO BETAINE, COCO MONO<br></p>', '<p>WET YOUR HAIR COMPLETELY. APPLY THE REQUIRED AMOUNT OF SHAMPOO AND MASSAGE IT TO LATHER.   RINSE IT OFF PROPERLY ONCE ITS DONE.  USE OUR CONDITIONER FOR BETTER HAIR SMOOTHNESS.<br></p>', 'active', 'active', 'hibiscus-shampoo1673003221-hibiscus-shampoo', '1,6,9,38', '0', 'Gkrishna', 10, '325.00', 1, '0.00', 'percentage', 'active', '2023-01-06 03:25:36', '2023-01-06 05:37:01'),
(9, 'KERATIN DETANGLE SHAMPOO', '<p><b>QUANTITY  <br></b>200ML<br><b>SIZE OF THE CONTAINER/H--DIA IN CM</b><br>11-14</p>', '<p>KERATIN IS THE NUMBER ONE NOURISHMENT PROTEIN FOR LONG HAIR GROWTH. IT STRENGTHENS THE ROOT AND HELPS THE HAIR GROW LONG, STRONG, AND HEALTHY. OUR KERATIN DETANGLING SHAMPOO ALSO REDUCES THE TANGLES AND SPLIT ENDS ON YOUR HAIR.  IT ENHANCES THE NATURAL SMOOTHNESS AND FIGHTS THE FACTORS THAT CAUSES HAIR DAMAGE AND HELPS RETAINS THE FRESHNESS.        <br></p>', '<p> KERATIN POWDER, RICE WATER , FLAXSEED OIL,AQUA, GLYCERINE, EDTA, POLYQUATERNIUM-10,SODIUM LAUROYL SARCOSINATE, CETRIMONIUM CHLORIDE, DECYL GLUCOSIDE, PEG-150, COCOA BUTTER, PHENOXY ETHNOL, COCO BETAINE, COCO MONO.<br></p>', '<p>WET YOUR HAIR COMPLETELY. APPLY THE REQUIRED AMOUNT OF SHAMPOO AND MASSAGE IT TO LATHER.   RINSE IT OFF PROPERLY ONCE ITS DONE.  USE OUR CONDITIONER FOR BETTER HAIR SMOOTHNESS.<br></p>', 'active', 'active', 'keratin-detangle-shampoo', '1,6,9,38', '0', 'Gkrishna', 8, '350.00', 1, '0.00', 'fixed', 'active', '2023-01-06 03:28:00', '2023-01-27 03:35:45'),
(10, 'GOAT MILK SHAMPOO', '<p><b>QUANTITY</b><br>200ML <br><b>SIZE OF THE CONTAINER/H--DIA IN CM</b><br>11-14</p>', '<p>     GOAT MILK IS AN EXTRAORDINARY SOURCE OF PROTEIN AND IT SHOWS YOU A VISIBLE DIFFERENCE IN YOUR HAIR WITHIN A FEW DAYS OF ITS USE. GOAT MILK ADDS TO THE SMOOTHNESS AND OVERALL HEALTH OF YOUR HAIR, BY REPAIRING SPLIT ENDS, NOURISHING THE ROOTS, AND CLEANSING THE SCALP!   IT ALSO BALANCES THE PH LEVELS AND REPAIRS EXTREME SCALP CONDITIONS.                      <br></p>', '<p> FRESH GOAT MILK , JOJOBA OIL,AQUA, GLYCERINE, EDTA,EGMS,   POLYQUATERNIUM-10,SODIUM LAUROYL SARCOSINATE, COCO BETAINE, CETRIMONIUM CHLORIDE, DECYL GLUCOSIDE, PEG-150, MANGO BUTTER, PHENOXY ETHNOL, COCO MONO.<br></p>', '<p>WET YOUR HAIR COMPLETELY. APPLY THE REQUIRED AMOUNT OF SHAMPOO AND MASSAGE IT TO LATHER.   RINSE IT OFF PROPERLY ONCE ITS DONE.  USE OUR CONDITIONER FOR BETTER HAIR SMOOTHNESS.<br></p>', 'active', 'active', 'goat-milk-shampoo1673003322-goat-milk-shampoo', '1,6,9,38', '0', 'Gkrishna', 10, '400.00', 1, '0.00', 'fixed', 'active', '2023-01-06 03:31:07', '2023-01-06 05:38:42'),
(11, 'ALOEVERA GEL', '<p><b>QUANTITY  </b><br>50 GMS <br><b>SIZE OF THE CONTAINER/H--DIA IN CM</b><br>2.5--16<br></p>', '<p>THE ALOE VERA GEL GETS DEEP IN THE SKIN AND ACTS FROM WITHIN AND REJUVENATES FRESH SKIN CELLS. THE NATURAL EXTRACTS ENHANCES THE GLOW OF THE SKIN, AIDS IN ANTI AGING  AND COMPLETELY AVOIDS THE SKIN GETTING DRY.  <br></p>', '<p>ALOEVERA JUICE , XANTHAN GUM , GUAR GUM ,HYDRAULIC , HONEY, VIRGIN COCONUT OIL, SWEET ALMOND OIL,ROSE OIL.<br></p>', '<p>APPLY THE GEL ON NIGHT TIME,LEAVE IT OVERNIGHT AND WASH IT ON THE MORNING. USE DAILY FOR THE BETTER RESULTS.<br></p>', 'in active', 'active', 'aloevera-gel1673003364-aloevera-gel', '2,6,22,45', '0', 'Gkrishna', 10, '350.00', 1, '0.00', 'fixed', 'active', '2023-01-06 03:42:45', '2023-01-06 05:39:24'),
(12, 'ACNE GEL', '<p>QUANTITY<br>5 GMS  <br>SIZE OF THE CONTAINER/H--DIA IN CM<br>2.5--16<br></p>', '<p>OUR ACNE GEL IS POWERED BY A SPECIAL  ANTIBIOTIC FORMULA THAT PENETRATES DEEP INSIDE THE SKIN AND REMOVES THE ACNE FROM WITHIN. IT ALSO PREVENTS THE OCCURRENCE OF ACNE BY COMPLETELY REMOVING THE TOXINS AND BACTERIA RESPONSIBLE FOR IT AND KEEPING INTACT THE GLOW OF THE SKIN.<br></p>', '<p>ALOE VERA, VITAMIN C OIL, SALICYLIC  , LACTIC  , RATINOL, ROSEHIP OIL , NIACINAMIDE, TEA TREE EXTRACT, ORANGE OIL , BERGAMOT OIL, EUCALYPTUS EXTRACT, PEPPERMINT OIL.<br></p>', '<p>APPLY THE GEL ON NIGHT TIME,LEAVE IT OVERNIGHT AND WASH IT ON THE MORNING.USE DAILY FOR THE BETTER RESULTS.<br></p>', 'in active', 'active', 'acne-gel1673003409-acne-gel', '2,6,17,41', '0', 'Gkrishna', 10, '0.00', 1, '0.00', 'fixed', 'active', '2023-01-06 03:45:47', '2023-01-06 05:40:09'),
(13, 'FACIAL HAIR PREVENTION POWDER', '<p>QUANTITY<br>50 GMS<br>SIZE OF THE CONTAINER/H--DIA IN CM<br>4-19</p>', '<p>LEAVE THE ASIDE THE PAINFUL PROCEDURES TO REMOVE YOUR FACIAL HAIR. OUR FACIAL HAIR PREVENTION POWDER RENDERS UNPARALLELED RESULTS WITH REGULAR USE. PACKED WITH ALL THE NATURAL INGREDIENTS TO PREVENT FACIAL HAIR GROWTH.<br></p>', '<p>NEEM POWDER, KASTHURI MANJAL, POOLANKILANGU, KUPPAIMENI POWDER, AVARAMPOO, ROSE PETAL POWDER,ORANGE PEEL POWDER,LEMONGRASS OIL. <br></p>', '<p>APPLY THE REQUIRED AMOUNT OF FACIAL HAIR PREVENTION POWDER LIKE A FACE PACK ON CLEANSED SKIN BY MIXING WITH RICE WATER OR ROSE WATER AND RINSE OFF AFTER AROUND 30 MINS. USE IT TWICE OR THRICE FOR BETTER RESULTS.<br></p>', 'in active', 'active', 'facial-hair-prevention-powder1673003864-facial-hair-prevention-powder', '2,19', '0', 'Gkrishna', 10, '420.00', 1, '0.00', 'fixed', 'active', '2023-01-06 03:48:57', '2023-01-06 05:47:44'),
(14, 'OPEN PORE GEL', '<p><b>QUANTITY  </b><br>50 GMS<br><b>SIZE OF THE CONTAINER/H--DIA IN CM</b><br>2.5-16</p>', '<p>GET YOUR PORES REDUCED IN THE EASIEST AND NATURAL WAY WITH OUR OPEN PORE GEL. THE GEL PENETRATES INTO OUR SKIN AND REDUCES THE PORES AND ELIMINATES THE OCCURRENCE OF PORES IN THE FUTURE. <br></p>', '<p>CLOVE BUD OIL, ORANGE OIL,GLYCOLIC  , WILLOW BARK EXTRACT, SALICYLIC  , GREEN TEA EXTRACT, OLIVE OIL, LEMON GRASS EXTRACT,  EUCALYPTUS EXTRACT, ROSEHIP OIL .<br></p>', '<p>APPLY THE GEL ON NIGHT TIME,LEAVE IT OVERNIGHT AND WASH IT ON THE MORNING.USE DAILY FOR THE BETTER RESULTS.<br></p>', 'active', 'active', 'open-pore-gel1673003819-open-pore-gel', '2,6,17,44', '0', 'Gkrishna', 10, '350.00', 1, '0.00', 'fixed', 'active', '2023-01-06 03:54:09', '2023-01-06 05:46:59'),
(15, 'BLACK SPOT GEL', '<p>QUANTITY  <br>50 GMS<br>SIZE OF THE CONTAINER/H--DIA IN CM<br>2.5- 16</p>', '<p>THE BLACK SPOT GEL PENETRATES THE PORES, GOES DEEP INTO THE SKIN, AND REMOVES THE BLACK SPOTS, PIGMENTS, SLOWS DOWN AGING  AND BRINGS EVEN SKIN TONE ON YOUR SKIN WITHOUT LEAVING ANY MARKS, GIVING YOU THE GLOW AND FLAWLESS SKIN THAT YOU DESERVE.<br></p>', '<p>ALOE VERA GEL,GERANIUM OIL, SAFFRON OIL,KOJIC , VITAMIN C OIL, RATIONAL,NEEM OIL,  SHEA BUTTER.<br></p>', '<p>APPLY THE GEL ON NIGHT TIME, LEAVE IT OVERNIGHT AND WASH IT ON THE MORNING. USE DAILY FOR THE BETTER RESULTS.<br></p>', 'in active', 'active', 'black-spot-gel1673003788-black-spot-gel', '2,6,17,42', '0', 'Gkrishna', 10, '350.00', 1, '0.00', 'percentage', 'active', '2023-01-06 03:56:18', '2023-01-06 05:46:28'),
(16, 'CLEANSING BALM', '<p><b>QUANTITY  </b><br>50MS<br><b>SIZE OF THE CONTAINER/H--DIA IN CM</b><br>2.5-16</p>', '<p>GET RID OF ALL YOUR PIMPLES INSTANTLY WITH OUR PIMPLE GEL. THE GEL REDUCES SECRETION OF OIL AND STOPS PIMPLES FORMATION WITHIN DAYS. THE NATURAL HERBAL FORMULA FIGHTS THE GROWTH OF MICROBES AND  ALSO LIGHTENS THE MARKS AND BLEMISHES, GIVING YOU A SMOOTH AND EVEN TONED SKIN.<br></p>', '<p>COCONUT OIL,SUNFLOWER OIL, CASTOR OIL, ALMOND OIL, CETYL ALCOHOL,  BTMS  50, OLIVEM- 300, PHENOXYETHANOL, SHEA BUTTER, GRAPE SEED OIL, VITAMIN E OIL.<br></p>', '<p>WASH THE FACE WITH NORMAL WATER, DRY IT AND APPLY THE REQUIRED AMOUNTS OF BALM. MASSAGE IT GENTLY. ALSO CAN BE USED AS A MAKEUP REMOVER.   <br></p>', 'in active', 'active', 'cleansing-balm', '2,21', '0', 'Gkrishna', 10, '270.00', 1, '0.00', 'percentage', 'active', '2023-01-06 03:59:56', '2023-01-06 05:45:53'),
(17, 'PIMPLE GEL', '<p>QUANTITY  <br>50 GMS<br>SIZE OF THE CONTAINER/H--DIA IN CM<br>2.5-16</p>', '<p>GET RID OF ALL YOUR PIMPLES INSTANTLY WITH OUR PIMPLE GEL. THE GEL REDUCES SECRETION OF OIL AND STOPS PIMPLES FORMATION WITHIN DAYS. THE NATURAL HERBAL FORMULA FIGHTS THE GROWTH OF MICROBES AND  ALSO LIGHTENS THE MARKS AND BLEMISHES, GIVING YOU A SMOOTH AND EVEN TONED SKIN.<br></p>', '<p>ALOEVERA , BASIL OIL, SALICYLIC  , HYALURONIC  , NIACINAMIDE,NEEM OIL, MORINGA OIL .<br></p>', '<p>APPLY THE GEL ON NIGHT TIME, LEAVE IT OVERNIGHT AND WASH IT ON THE MORNING. USE DAILY FOR THE BETTER RESULTS.<br></p>', 'in active', 'active', 'pimple-gel1673003721-pimple-gel', '2,6,17,43', '0', 'Gkrishna', 10, '350.00', 1, '0.00', 'percentage', 'active', '2023-01-06 04:03:09', '2023-01-06 05:45:21'),
(18, 'TEA TREE TONER', '<p>QUANTITY  <br>100 ML<br>SIZE OF THE CONTAINER/H--DIA IN CM<br>8-11.5</p>', '<p>OUR TEA TREE TONER IS FINNED WITH THE GOODNESS OF TEA TREE EXTRACTS. IT ENHANCES THE MOISTURE CONTENT AND RETAINS THE RADIANCE OF THE SKIN. ENJOY IT ALSO FIGHTS THE FORMATION OF ACNE AND EVIDENTLY REDUCES THE PORES.  A FLAWLESS AND HEALTHY SKIN WITH OUR TEA TREE TONER. <br></p>', '<p>ROSE WATER,WITCH HAZEL EXTRACT,VETIVER EXTRACT,TEA TREE EXTRACT,GLYCOLIC ,GLYCERINE,LIQUORICE EXTRACT,POMEGRANATE EXTRACT.<br></p>', '<p>SPRAY DIRECTLY ON YOUR FACE TO HYDRATE & REFRESH YOUR SKIN.<br></p>', 'in active', 'active', 'tea-tree-toner1673003682-tea-tree-toner', '2,6,23,41,44', '0', 'Gkrishna', 10, '400.00', 1, '0.00', 'fixed', 'active', '2023-01-06 04:06:06', '2023-01-06 05:44:42'),
(19, 'SAFFRON GEL', '<p>QUANTITY<br>75 GMS  <br>SIZE OF THE CONTAINER/H--DIA IN CM<br>4-19</p>', '<p>OUR SAFFRON GEL CONTAINS SAFFRON BASIL OIL, NIMOY OIL, AND MORINGA OIL, ALL OF WHICH ARE KNOWN FOR THEIR DEPIGMENTATION EFFECTS. THIS INSTANTLY BRIGHTENS THE SKIN, MAKING THE SKIN TONE MORE BALANCE. <br></p>', '<p>ALOE VERA, SAFFRON, ALMOND OIL, GERANIUM OIL, ROSE OIL, NEEM OIL, LAVENDER OIL, WHEAT GERM OIL, SHEA BUTTER.<br></p>', '<p>APPLY THE GEL ON NIGHT TIME, LEAVE IT OVERNIGHT AND WASH IT ON THE MORNING. USE DAILY FOR THE BETTER RESULTS.<br></p>', 'in active', 'active', 'saffron-gel1673003637-saffron-gel', '2,6,17,45', '0', 'Gkrishna', 10, '400.00', 1, '0.00', 'fixed', 'active', '2023-01-06 04:08:39', '2023-01-06 05:43:58'),
(20, 'SAFFRON TONER', '<p><b>QUANTITY </b><br>100 ML<br><b>SIZE OF THE CONTAINER/H--DIA IN CM</b><br>8-11.5</p>', '<p>OUR SAFFRON TONNER ENHANCES THE GLOW AND RETAINS THE FRESHNESS. IT AIDS IN THE SKIN GLOW AND REDUCES THE OCCURRENCE OF TANNED SKIN. PROVIDE YOUR SKIN WITH COMPLETE SKIN CARE WITH OUR SAFFRON TONNER. <br></p>', '<p>ROSE WATER, WITCH HAZEL EXTRACT, VETIVER EXTRACT,   SAFFRON, GLYCOLIC  , GLYCERINE,LIQUORICE EXTRACT, POMEGRANATE EXTRACT.<br></p>', '<p>SPRAY DIRECTLY ON YOUR FACE TO HYDRATE & REFRESH YOUR SKIN.<br></p>', 'in active', 'active', 'saffron-toner1673003473-saffron-toner', '2,6,23,45', '0', 'Gkrishna', 10, '400.00', 1, '0.00', 'fixed', 'active', '2023-01-06 04:11:22', '2023-01-06 05:41:13'),
(21, 'JUICY LIP BALM', '<p><b>Quantity</b><br>10 GMS<br><b>ONLY DIA ONTOP OF HE CAP 2.5</b><br></p>', '<p>THE JUICY LIP BALM MAKES SURE THAT THE LIPS ARE MOISTURIZED THROUGHOUT THE DAY. THE SPECIAL FORMULA SOFTENS THE SKIN AND COMPLETELY AVOIDS THE OCCURRENCE OF DRY SKIN. THE MOISTURE IS LOCKED AND THE LIPS ARE HYDRATED AND GLOWY ALL DAY LONG. <br></p>', '<p>VITAMIN E OIL, AVOCADO BUTTER, SHEA BUTTER,CARNAUBA WAX, CANDELILLA WAX, KOKUM BUTTER, ALMOND OIL, CASTOR OIL,ARGAN OIL, VITAMIN E OIL, VITAMIN C OIL, <br></p>', '<p>APPLY ON THE LIPS WHENEVER NEEDED TO REVEAL SMOOTH AND HYDRATED LIPS.<br></p>', 'in active', 'active', 'juicy-lip-balm1674825578-juicy-lip-balm', '4,33', '0', 'GKrishna', 10, '210.00', 1, '0.00', 'fixed', 'active', '2023-01-06 04:13:41', '2023-01-27 07:49:38'),
(22, 'BODY WASH', '<p><b>Quantity </b><br>250 ml</p>', '<p>KEEP YOUR BODY FRESH ALL DAY WITH OUR BODY WASH, PACKED WITH GOODNESS OF BERRY EXTRACT AND COCONUT OIL. IT PROVIDES DEEP CLEANSING AND MOISTURIZES THE SKIN .IMMERSE YOURSELF IN A REVITALIZING EXPERIENCE.<br></p>', '<p>COCONUT OIL,ORANGE EXTRACT, AQUA, SLES , COCO DI ,  CETYL ALCOHOL, PHENOXY BETHNOL,COCO BETAINE , COCO MONO<br></p>', '<p>TAKE REQUIRED AMOUNT AND  APPLY ALL OVER THE BODY AND SCRUB TO GET COMPLETE CLEANSING. USE LOOFAH FOR BETTER RESULT.<br></p>', 'in active', 'active', 'body-wash', '3', '0', 'GKrishna', 10, '480.00', 1, '0.00', 'fixed', 'active', '2023-01-06 04:16:07', '2023-01-19 08:26:02'),
(23, 'ANTI LICE OIL', '<p><b>QUANTITY </b><br>100ML<br></p><p><b>SIZE OF THE CONTAINER/H--DIA IN CM</b><br>8.5--11.5<br></p>', '<p>BID GOOD BYE TO LICE WITH OUR ANTI LICE OIL ENJOY A FLAWLESS SCALP WITH OUR ADVANCED AND NATURAL CLEANSING FORMULA. FIGHT THE OCCURRENCE OF LIES AND ENSURE A HEALTHY SCALP. <br></p>', 'ALMOND OIL ,LAVENDER OIL,NEEM OIL,CEDARWOOD OIL ,COCONUT OIL ,CAMPHOR ,PEPPERMINT OIL,TEA TREE OIL ,YOGURT POWDER.<br>', '<p>APPLY THE OIL ON YOUR SCALP AND WORK THROUGH THE END OF THE HAIR. LEAVE IT FOR OVERNIGHT AND COMB UP BEFORE WASH THE HAIR YOU WILL NEED TO DO THIS EVERY 2 TO 3 DAYS UNTIL YOU HAVE NO MORE SIGNS OF LICE OR NITS.<br></p>', 'in active', 'active', 'anti-lice-oil1674827143-anti-lice-oil', '1,8', '0', 'Gkrishna', 0, '480.00', 1, '0.00', 'fixed', 'active', '2023-01-27 03:30:24', '2023-01-27 08:15:43'),
(24, 'DAMAGE REPAIR CONDITIONER', '<p><b>QUANTITY</b><br>100ML</p><p><b>QUANTITY  SIZE OF THE CONTAINER/H--DIA IN CM</b><br>10--11.5<br></p>', '<p>OUR DAMAGE REPAIR CONDITIONER RENDERED THE FINEST DAMAGE REPAIR SOLUTIONS TO YOUR HAIR AND TO YOUR SCALP, BY NOURISHING YOUR HAIR AND STRENGTHENING ITS ROOTS. THE CONDITIONER ALSO ENSURES TO RENDER A HOLISTIC HAIR DAMAGE SOLUTIONS.  IT OFFERS INTENSIVE DAMAGE CONTROL AND PROTECTS THE HAIR FROM ALL ELEMENTS CAUSING THE DAMAGE.    <br></p>', '<p>AQUA, COCONUT OIL  , OLIVE OIL, GLNOL - 6830, HYSTRIC , DM WATER, GLYCERINE ,  CERAMIDE C2, OLIVEM - 300 PHENOXYETHANOL,COCONUT OIL PROTEIN , ALMOND OIL.<br></p>', '<p>CLEANSE THE HAIR WITH SHAMPOO AND COMPLETELY WASH IT. APPLY THE CONDITIONER AND MAKE SURE IT IS APPLIED IN ALL PARTS OF THE HAIR. LEAVE IT FOR  FEW MINUTES AND WASH TO GET A SMOOTH  HAIR. <br></p>', 'in active', 'active', 'damage-repair-conditioner1674827104-damage-repair-conditioner', '1,10', '0', 'Gkrishna', 0, '360.00', 1, '0.00', 'fixed', 'active', '2023-01-27 03:42:40', '2023-01-27 08:15:04'),
(25, 'FLAXSEED CONDITIONER', '<p><b>QUANTITY</b><br>100ML</p><p><b>QUANTITY  SIZE OF THE CONTAINER/H--DIA IN CM</b><br>10--11.5<br></p>', '<p>OUR FLAXSEED CONDITIONER PROVIDES YOU WITH YOUR SCALP\'S DAILY DOSE OF OMEGA-3 FATTY  S, HELPING AVOID DRY SCALP WHILE NOURISHING YOUR HAIR. THE FLAXSEED CONDITIONER ALSO ENHANCES HAIR ELASTICITY,TRACK YOUR HAIR SMOOTHNESS BEFORE & AFTER USING FLAXSEED CONDITIONER TO SEE DIFFERENCE YOURSELF. <br></p>', '<p>CLEANSE THE HAIR WITH SHAMPOO AND COMPLETELY WASH IT. APPLY THE CONDITIONER AND MAKE SURE IT IS APPLIED IN ALL PARTS OF THE HAIR. LEAVE IT FOR  FEW MINUTES AND WASH TO GET A SMOOTH  HAIR. <br></p>', '<p>ALMOND OIL,  FLAXSEED OIL,CETYL ALCOHOL,STEARIC  , COCONUT OIL, GLYCERINE, JOJOBA OIL, ALOVERA, AQUA, PHENOXY ETHNOL,OLIVE OIL, SHEA BUTTER.<br></p>', 'in active', 'active', 'flaxseed-conditioner1674827057-flaxseed-conditioner', '1,10', '0', 'Gkrishna', 0, '350.00', 1, '0.00', 'fixed', 'active', '2023-01-27 03:56:03', '2023-01-27 08:14:17'),
(26, 'HIBISCUS CONDITIONER', '<p><b>QUANTITY</b><br>100ML</p><p><b>QUANTITY  SIZE OF THE CONTAINER/H--DIA IN CM</b><br>10--11.5<br></p><p><br><br></p>', '<p>THE HIBISCUS CONDITIONER IS PACKED WITH HIBISCUS EXTRACTS THAT IS RICH IN VITAMINS AND MAGNESIUM. THE ALMOND OIL, AND COCONUT MILK PROTEIN, HELPS IN PROVIDING INTENSIVE NOURISHMENT, KEEPING YOUR HAIR TEXTURE SHIMMERING AND SOFT.<br></p>', '<p>ALMOND OIL,HIBISCUS EXTRACT, COCONUT MILK PROTEIN, CETRIMONIUM CHLORIDE,CETYL ALCOHOL,STEARIC  , COCONUT OIL, GLYCERINE, JOJOBA OIL, ALOE VERA, AQUA, PHENOXY ETHNOL, OLIVE OIL, SHEA BUTTER.<br></p>', '<p>CLEANSE THE HAIR WITH SHAMPOO AND COMPLETELY WASH IT. APPLY THE CONDITIONER AND MAKE SURE IT IS APPLIED IN ALL PARTS OF THE HAIR. LEAVE IT FOR  FEW MINUTES AND WASH TO GET A SMOOTH  HAIR. <br></p>', 'in active', 'active', 'hibiscus-conditioner1674827011-hibiscus-conditioner', '1,10', '0', 'Gkrishna', 0, '350.00', 1, '0.00', 'fixed', 'active', '2023-01-27 03:59:59', '2023-01-27 08:13:31'),
(27, 'FOREHEAD CREAM', '<p><b>QUANTITY</b><br>50GMS<br></p><p><b>QUANTITY  SIZE OF THE CONTAINER/H--DIA IN CM</b><br>2.5--13<br></p>', '<p>THE NEW FOREHEAD CREAM IS EFFECTIVE IN FIGHTING BALDNESS. THE CREAM PENETRATES THE PORES ON YOUR FOREHEAD AND TRIGGERS HAIR-GROWTH, INCREASING HAIR-DENSITY AND STRENGTHENS THE ROOTS,MAKES THE HAIR STRONG WITH COMPLETE NOURISHMENT OF HAIR.<br></p>', '<p>ALOE VERA, BRIJRAJ EXTRACT,AMLA EXTRACT, ROSEMARY EXTRACT,LEMON GRASS EXTRACT, HIBISCUS EXTRACT,ALMOND OIL, MANGO BUTTER .<br></p>', '<p>APPLY A SMALL AMOUNT OF  FOREHEAD CREAM ON THE SCALP AND FOREHEAD HAIRLINE BY GENTLY MASSAGING IT AND USE EVERY DAY.USE DAILY FOR THICK DENSITY HAIR. <br></p>', 'in active', 'active', 'forehead-cream1674826961-forehead-cream', '1', '0', 'Gkrishna', 0, '445.00', 1, '0.00', 'fixed', 'active', '2023-01-27 04:04:58', '2023-01-27 08:12:41'),
(28, 'PASSION FLOWER CONDITIONER', '<p><b>QUANTITY</b><br>100ML</p><p><b>QUANTITY  SIZE OF THE CONTAINER/H--DIA IN CM</b><br>10--11.5<br></p>', '<p>THE GOODNESS OF PASSION FLOWER EXTRACTS, RICE MILK PROTEIN, AND OUR INGREDIENTS PROVIDE THE STRENGTH IT TAKES TO REPAIR YOUR DAMAGED HAIR. THE PASSION FLOWER EXTRACTS IS LOADED WITH PROVITAMINS AND VITAMIN C WHICH IS THE BEST FOR HAIR STRENGTHENING, AND IT ALSO GIVES YOUR HAIR COMPLETE PROTECTION AGAINST POSSIBLE DAMAGES.<br></p>', '<p>ALMOND OIL, OLIVE OIL, SHEA BUTTER, PASSION FLOWER EXTRACT, RICE MILK PROTEIN, CETRIMONIUM CHLORIDE,OLIVEM-300, ALOE VERA, CETYL ALCOHOL,STEARIC  , COCONUT OIL, GLYCERINE, JOJOBA OIL, AQUA.<br></p>', '<p>CLEANSE THE HAIR WITH SHAMPOO AND COMPLETELY WASH IT. APPLY THE CONDITIONER AND MAKE SURE IT IS APPLIED IN ALL PARTS OF THE HAIR. LEAVE IT FOR  FEW MINUTES AND WASH TO GET A SMOOTH  HAIR. <br></p>', 'in active', 'active', 'passion-flower-conditioner1674826900-passion-flower-conditioner', '1,10', '0', 'Gkrishna', 0, '360.00', 1, '0.00', 'fixed', 'active', '2023-01-27 04:08:08', '2023-01-27 08:11:40'),
(29, 'FOREHEAD GEL', '<p><b>QUANTITY</b><br>30GMS</p><p><b>QUANTITY  SIZE OF THE CONTAINER/H--DIA IN CM</b><br>2--16<br></p>', '<p>THE FOREHEAD GEL, FORMULATED AFTER EXTENSIVE RESEARCH WITH SPECIAL INGREDIENTS, HELPS IN STRENGTHENING THE ROOTS.  THE GEL WORKS INSIDE-OUT, EASILY PENETRATING YOUR FOREHEAD AND HELPS IN FIGHTING BALDNESS AND AIDS REJUVENATION OF NEW HAIR.    <br></p>', '<p>ALOE VERA, CASTOR OIL, NEEM OIL, COCONUT OIL, ALMOND OIL, YLANG YLANG OIL, BASIL OIL, ROSEMARY,GERANIUM, FLAXSEED OIL .<br></p>', '<p>APPLY A SMALL AMOUNT OF FOREHEAD GEL ON THE SCALP AND FOREHEAD HAIRLINE BY GENTLY MASSAGING IT. USE EVERY DAY. PREFERABLY AT NIGHT AND LEAVE IT OVERNIGHT. NEXT MORNING CLEANSE WITH MILD SHAMPOO IF PREFERRED.<br></p>', 'in active', 'active', 'forehead-gel', '1,13', '0', 'Gkrishna', 10, '375.00', 1, '0.00', 'fixed', 'active', '2023-01-27 04:11:15', '2023-02-07 01:21:42'),
(30, 'ANTI-FRIZZ SERUM', '<p><b>QUANTITY</b><br>50ML</p><p><b>QUANTITY  SIZE OF THE CONTAINER/H--DIA IN CM</b><br>5.5--11.5<br></p>', '<p>THE ANTI-FRIZZ SERUM REDUCES THE DRYNESS & FRIZZ OF YOUR HAIR BY ACTING RIGHT FROM THE ROOTS. THE GOODNESS OF LAVENDER AND JOJOBA OIL ENSURE THAT YOUR HAIR STAYS SHINY, SMOOTH, AND FRIZZ-FREE FOR THE ENTIRE DAY! IT CONTROLS THE FRIZZINESS AND REDUCES TANGLES. ENHANCING HAIR NATURAL LOOK.WE RECOMMENDED YOU TO  USE IT WITH OUR FLAXSEED CONDITIONER FOR BETTER RESULTS.                                    <br></p>', '<p>LAVENDER OIL,CYCLOPENTASILOXANE, DIMETHICONE, POLYQUATERNIUM-10, POLYSORBATE,  JOJOBA OIL.<br></p>', '<p>TAKE FEW DROPS OF HAIR SERUM TO THE PALM OF YOUR HAND, APPLY TO YOUR HAIR, WORKING FROM THE ENDS UP TO THE MIDDLE OF YOUR STRANDS, BE GENTLE WHEN APPLYING HAIR SERUM.<br></p>', 'in active', 'active', 'anti-frizz-serum', '1,11', '0', 'Gkrishna', 0, '420.00', 1, '0.00', 'fixed', 'active', '2023-01-27 04:17:54', '2023-01-27 08:18:59'),
(31, 'HAIR FALL REDUCTION MASK', '<p><b>QUANTITY</b><br>50gms<br></p>', '<p>A HAIR MASK STRENGTHENS THE HAIR AND LEAVES THE SCALP HEALTHIER. UNLIKE SHAMPOO AND CONDITIONER, HAIR MASKS HAVE THE ABILITY TO GO DEEPER INTO YOUR HAIR STRANDS AND PROTECT HAIR FROM BREAKAGE, HEAL DAMAGED HAIR, ADD NATURAL SHINE AND IMPROVE HAIR ELASTICITY.<br></p>', '<p>ALOE VERA, GREEN TEA EXTRACT, FENUGREEK EXTRACT, YOGURT POWDER, HONEY POWDER,PHENOXYETHANOL, GLYCERINE NEEM OIL, VETIVER EXTRACT, LIQUORICE EXTRACT.<br></p>', '<p>APPLY THE MASK ALL OVER THE SCALP AND FULL LENGTH OF THE OILED HAIR AND LEAVE IT FOR 40 MINUTES AND WASH IT OFF NORMAL WATER.USE TWICE FOR BETTER RESULTS.<br></p>', 'in active', 'active', 'hair-fall-reduction-mask1674826600-hair-fall-reduction-mask', '1,12', '0', 'Gkrishna', 0, '0.00', 1, '0.00', 'fixed', 'active', '2023-01-27 04:25:56', '2023-01-27 08:06:40'),
(32, 'HAIR PROTEIN MASK', '<p><b>QUANTITY</b><br>50gms<br></p>', '<p>STRENGTHEN YOUR HAIR WITH A FINEST BOOST OF PROTEIN. OUR PROTEIN HAIR MASK STRENGTHENS THE HAIR FROM THE ROOTS AND ALSO AID IN THE GROWTH OF LONG AND STRONG HAIR. INCREASES  THE OVERALL ELASTICITY OF THE HAIR AND REDUCES THE BREAKAGE. <br></p>', '<p>ALOEVERA, GLYCERINE, JOJOBA OIL, ALMOND OIL, RICE MILK PROTEIN, COCONUT MILK PROTEIN, CYCLOPENTOXIDE, D PENTHANOL , CETRIMONIUM CHLORIDE, FLAXSEED OIL, OLIVEM -300, SHEA BUTTER.<br></p>', '<p>APPLY THE MASK ALL OVER THE SCALP AND FULL LENGTH OF THE OILED HAIR AND LEAVE IT FOR 40 MINUTES AND WASH IT OFF NORMAL WATER.USE TWICE FOR BETTER RESULTS.<br></p>', 'in active', 'active', 'hair-protein-mask1674826577-hair-protein-mask', '1,12', '0', 'Gkrishna', 0, '0.00', 1, '0.00', 'fixed', 'active', '2023-01-27 04:28:33', '2023-01-27 08:06:17'),
(33, 'HAIR STYLING AND WET GEL', '<p><b>QUANTITY</b><br>50GMS</p><p><b>QUANTITY  SIZE OF THE CONTAINER/H--DIA IN CM</b><br>2--19<br></p>', '<p> NO MORE MESSY HAIR. YOUR HAIRSTYLE IS IN YOUR HANDS. OUR GEL FORMULA HOLDS THE HAIR PERFECTLY ALL DAY LONG WITHOUT DAMAGING ITS STRENGTH.<br></p>', '<p>ALOE VERA, FLAXSEED OIL, GLYCERINE, POLYVINYL PYRROLIDONE, SHEA BUTTER, ALMOND OIL, OLIVE OIL.<br></p>', '<p>APPLY THE HAIR STYLING  GEL ALL OVER THE HAIR AFTER BATH.APPLY ON DAMP AND DRIED HAIR.STYLE YOUR HAIR AS YOU LIKE.<br></p>', 'in active', 'active', 'hair-styling-and-wet-gel1674826480-hair-styling-and-wet-gel', '1,13', '0', 'Gkrishna', 0, '275.00', 1, '0.00', 'fixed', 'active', '2023-01-27 04:31:43', '2023-01-27 08:04:40'),
(34, 'DHOOP', '<p><b>QUANTITY<br></b></p><p><b><br></b></p><p><b>QUANTITY  SIZE OF THE CONTAINER/H--DIA IN CM</b><br><br></p>', '<p>THE USAGE OF ORGANIC DHOOP HAS A LOT OF IMMENSE POSITIVE POSITIVE IMPACTS RANGING FROM INFECTION PROTECTION, STRONGER HAIR GROWTH. IT ALSO HELPS IN REDUCING MIGRAINE.<br></p>', '<p>NAATU SAMBRANI, NEEM, MARUTHANI, VEN KADUKU, VETTIVER, ROSE, HIBISCUS FLOWER POWDER, KARISALANKANNI.<br></p>', '<p>TAKE REQUIRED QUANTITY AND LIGHT IT. POSITION IT SUCH A WAY THAT THE SMOKE COMES IN CONTACT WITH YOUR HAIR. USE IT AFTER BATH TO ENRICH YOUR HAIR. IT CAN ALSO BE USED AS A NATURAL ROOM FRESHENER.  <br></p>', 'in active', 'active', 'dhoop', '1', '0', 'Gkrishna', 0, '0.00', 1, '0.00', 'fixed', 'active', '2023-01-27 04:41:48', '2023-02-06 07:03:03'),
(35, 'DANDRUFF PACK', '<p><b>QUANTITY</b></p><p><b><br></b></p><p><b>QUANTITY&nbsp; SIZE OF THE CONTAINER/H--DIA IN CM</b><br></p>', '<p>THE SPECIAL FORMULA OF OUR DANDRUFF PACK PENETRATES THE SCALP AND GIVES A DEEP CLEANING, WHICH NOT JUST REMOVES THE DANDRUFF BUT ALSO PREVENTS OF THE OCCURRENCE OF DANDRUFF.<br></p>', '<p>YOGURT POWDER, NEEM POWDER, FENUGREEK POWDER, TRIPHALA POWDER, AVARAMPOO POWDER, ROSE PETALS, ROSEMARY OIL, HIBISCUS POWDER, ALOE VERA POWDER.<br></p>', '<p>TAKE A REQUIRED AMOUNT OF PACK AND MIXED WITH ROSE WATER AND APPLY IT ALL OVER THE SCALP , LEAVE IT FOR 30 MINUTES AND WASH IT WITH NORMAL WATER.<br></p>', 'in active', 'active', 'dandruff-pack', '1,12', '0', 'Gkrishna', 0, '0.00', 1, '0.00', 'fixed', 'active', '2023-01-27 04:44:22', '2023-01-27 04:44:22'),
(36, 'BEARD SMOOTH GEL', '<p><b>QUANTITY  SIZE OF THE CONTAINER/H--DIA IN CM<br></b>30GMS<br></p>', '<p>NO MORE TANGLED BEARD. USE OUR BEARD SMOOTHENING GEL FOR COMPLETE BEARD CARE AND GET A PERFECT AND HEALTHY BEARD.  IT RESULTS IN A SMOOTH BEARD AND ALSO REDUCES ITCHINESS. <br></p>', '<p>ALOEVERA, ORGAN OIL, CASTOR OIL,HYALURONIC ,  JOJOBA OIL, ALMOND OIL, OLIVEM-300, CEDARWOOD OIL , CALENDULA OIL.<br></p>', '<p>APPLY THE GEL AFTER BEARD WASH MORNING & NIGHT.USE DAILY FOR THE BETTER RESULTS.<br></p>', 'in active', 'active', 'beard-smooth-gel1674826432-beard-smooth-gel', '2', '0', 'Gkrishna', 0, '275.00', 1, '0.00', 'fixed', 'active', '2023-01-27 04:52:48', '2023-01-27 08:03:52'),
(37, 'WINE TONER', '<p><b>QUANTITY  SIZE OF THE CONTAINER/H--DIA IN CM</b><br>100ML<br>8--11.5<br></p>', '<p>BID GOOD BYE TO ALL CHEMICAL TONERS. OUR WINE TONE IS ENHANCED WITH GOODNESS OF WINE AND IS FILLED WITH NATURAL EXTRACTS. IT RETAINS THE MOISTURE AND KEEPS THE SKIN HYDRATED. IT REDUCES PORES AND IMPROVES THE SKIN TEXTURE. <br></p>', '<p>ROSE WATER, WITCH HAZEL EXTRACT, VETIVER EXTRACT, GLYCOLIC  , GLYCERINELIQUORICE EXTRACT, POMEGRANATE EXTRACT, WINE.<br></p>', '<p>SPRAY DIRECTLY ON YOUR FACE TO HYDRATE & REFRESH YOUR SKIN.<br></p>', 'in active', 'active', 'wine-toner1674826405-wine-toner', '2,23', '0', 'Gkrishna', 0, '400.00', 1, '0.00', 'fixed', 'active', '2023-01-27 04:57:41', '2023-01-27 08:03:25'),
(38, 'JASMINE DAY CREAM', '<p><b>QUANTITY  SIZE OF THE CONTAINER/H--DIA IN CM</b><br>50GMS<br>2--19<br></p>', '<p>JASMIN DAY CREAM ISN\'T JUST ABOUT THE AROMA. IT HAS ENHANCED ABILITIES TO GIVE YOUR SKIN COMPLETE PROTECTION WITH SPF 50. OUR JASMINE DAY CREAM PROTECT SETS THE SKIN FROM HEAT AND KEEPS THE SKIN FRESH AND CONSIDERABLY DECREASES ALL KINDS OF SKIN DAMAGE.<br></p>', '<p> SHEA BUTTER, ALOVERA GEL,EMULSIFYING WAX, CETYL ALCOHOL, STEARIC , NIACINAMIDE, HYALURONIC , JASMINE HYDROSOL , DIMETHICONE, CYCLOPENTASILOXANE, PHENOXYETHANOL, SODIUM PCA ,AQUA, GLYCOLIC  , GLYCERINE.<br></p>', '<p>USE DAILY AFTER BATH ON FACE & NECK AREA.USE DAILY FOR THE BETTER RESULTS.<br></p>', 'in active', 'active', 'jasmine-day-cream1674826374-jasmine-day-cream', '2', '0', 'Gkrishna', 0, '290.00', 1, '0.00', 'fixed', 'active', '2023-01-27 05:00:05', '2023-01-27 08:02:54'),
(39, 'ROSE DAY CREAM', '<p><b>QUANTITY  SIZE OF THE CONTAINER/H--DIA IN CM</b><br>50GMS<br>2--19<br></p>', '<p>ROSE EXTRACTS ARE KNOWN FOR THEIR GENTLE ACTION ON THE SKIN AND RETAINING THE FRESHNESS. OUR ROSE DAY CREAM IS ENHANCED WITH SPF 50 AND THE GOODNESS OF ROSE EXTRACTS. KEEP YOUR SKIN FRESH, MOISTURIZED AND GLOWING ALL DAY LONG WITH OUR ROSE DAY CREAM.  <br></p>', '<p>ROSE OIL,SHEA BUTTER,EMULSIFYING-WAX, CETYL ALCOHOL, STEARIC  ,  AQUA, GLYCOLIC  , GLYCERINE,  NIACINAMIDE, HYALURONIC ,  DIMETHICONE, CYCLOPENTASILOXANE, PHENOXYETHANOL, SODIUM PCA,ALOE VERA GEL,  ROSE WATER.<br></p>', '<p>USE DAILY AFTER BATH ON FACE & NECK AREA.USE DAILY FOR THE BETTER RESULTS.<br></p>', 'in active', 'active', 'rose-day-cream1674826329-rose-day-cream', '2', '0', 'Gkrishna', 0, '290.00', 1, '0.00', 'fixed', 'active', '2023-01-27 05:02:46', '2023-01-27 08:02:09'),
(40, 'MEN\'S DAY CREAM', '<p>QUANTITY  SIZE OF THE CONTAINER/H--DIA IN CM<br>50GMS<br>2--19<br></p>', '<p>PROTECT YOUR SKIN FROM HEAT, DIRT AND OTHER HARMFUL ELEMENTS WITH OUR MEN\'S DAY CREAM. THE SPF 50 FORMS A PROTECTIVE LAYER THAT STOPS THE SKIN FROM BEING EXPOSED TO ANY SKIN DAMAGE BY THE SUN AND HEAT. <br></p>', '<p>-</p>', '<p>USE DAILY AFTER BATH ON FACE & NECK AREA.USE DAILY FOR THE BETTER RESULTS.<br></p>', 'active', 'active', 'mens-day-cream1674826247-mens-day-cream', '2', '0', 'Gkrishna', 0, '290.00', 1, '0.00', 'fixed', 'active', '2023-01-27 05:07:07', '2023-01-27 08:00:47'),
(41, 'ALMOND ALOE SCRUB', '<p><b>QUANTITY  SIZE OF THE CONTAINER/H--DIA IN CM</b><br>50GMS<br></p>', '<p>PACKED WITH THE GOODNESS OF ALMOND AND ENRICHED WITH THE HEALING ABILITIES OF ALOE VERA, THE ALMOND ALOVERA SCRUB PROVIDES INSTANT REFRESHMENT TO THE FACE. THE DEEP CLEANSING ACTION REMOVES THE DEAD CELLS AND BLACK HEADS, WHITE HEADS. IT ALSO ENSURES COMPLETE THE REMOVAL OF OIL & SWEAT AND KEEPS THE SKIN MOISTURIZED AND FRESH. <br></p>', '<p>AQUA, ALOEVERA , ALMOND OIL, VITAMIN E EXTRACT, OLIVE OIL , COCONUT OIL ,EMULSIFYING WAX, STEARIC , CETYL ALCOHOL, LIGHT KAOLIN CLAY, TITANIUM DIOXIDE, SHEA BUTTER, ALMOND., WALNUT SHELL POWDER, MULTANI MITTI, GERANIUM EXTRACT.<br></p>', '<p>APPLY THE SCRUB ON YOUR FACE AND GENTLY MASSAGE IT FOR 5 MINUTES  IN CIRCULAR MOTION AND WASH IT OFF COLD WATER.USE WEEKLY TWICE FOR BETTER RESULTS.<br></p>', 'in active', 'active', 'almond-aloe-scrub1674826187-almond-aloe-scrub', '2,24', '0', 'Gkrishna', 0, '0.00', 1, '0.00', 'fixed', 'active', '2023-01-27 05:16:55', '2023-01-27 07:59:47'),
(42, 'WALNUT SCRUB', '<p><b>QUANTITY  SIZE OF THE CONTAINER/H--DIA IN CM</b><br>50GMS<br></p>', '<p>MAKE WALNUT SCRUB AN INTEGRAL PART OF YOUR MORNING ROUTINE. IT EFFORTLESSLY REMOVES THE DEAD CELLS, BLACK HEADS, WHITE HEADS INSTANTLY EXFOLIATING THE SKIN. IT ENHANCES THE GROWTH OF FRESH SKIN CELLS. IT IMPROVES THE SKIN SLOW AND AIDS IN RETAINING THE BRIGHTNESS ROUND THE CLOCK. IT ALSO CONTROLS OIL SECRETION AND SWEATING. <br></p>', '<p>WALNUT POWDER,ALMOND OIL,SHEA BUTTER,MULTANI MITTI ,BLOOD ORANGE EXTRACT,STEARIC,CETYL ALCOHOL,KAOLIN CLAY ,BENTONITE CLAY, CALAMINE CLAY,TITANIUM DIOXIDE,VITAMIN E OIL,VITAMIN C OIL,EMULSIFYING WAX,AQUA,COCONUT OIL.<br></p>', '<p>WET YOUR FACE AND TAKE A SUFFICIENT AMOUNT OF FACE SCRUB ON YOUR PALM AND GENTLY SCRUB YOUR FACE THOROUGHLY IN A CIRCULAR MOTION FOR ABOUT 5 MINUTES AND RINSE IT OFF.<br></p>', 'in active', 'active', 'walnut-scrub1674826157-walnut-scrub', '2,24', '0', 'Gkrishna', 0, '0.00', 1, '0.00', 'fixed', 'active', '2023-01-27 05:19:39', '2023-01-27 07:59:17'),
(43, 'FACE PACK POWDER', '<p><b>QUANTITY  SIZE OF THE CONTAINER/H--DIA IN CM</b><br>50GMS<br>4--16.5<br></p>', '<p>OUR FACEPACK POWDER IS ENHANCED WITH SPECIAL FORMULA THAT GIVES YOUR SKIN COMPLETE PROTECTION. IT REMOVES THE DEAD CELLS , CLEANSES IT FROM DEEP AND ACCELERATES THE GROWTH OF NEW AND FRESH SKIN CELLS. IT AIDS IN RETAINING THE MOISTURE AND CONTROLS OIL SECRETION. <br></p>', '<p>RICE POWDER, NEEM POWDER, TULASI POWDER, ROSE PETALS, AVARAMPOO, VETTIVER, MINT, SANDALWOOD POWDER, POOLANKILANGU, KASTHURI MANJAL, PEPPERMINT OIL, ROSEMARY OIL, MANJISTHA , UBTAN POWDER, ALOE VERA POWDER, KAOLIN CLAY, BENTONITE CLAY, CALAMINE CLAY, FRENCH CLAYS, ROSE OIL ,WHEAT GERM OIL.                      <br></p>', '<p>TAKE A REQUIRED AMOUNT OF FACE PACK AND MIXED WITH ROSE WATER AND APPLY THE FACE PACK LEAVE IT FOR 30 MINUTES AND WASH IT WITH NORMAL WATER<br></p>', 'in active', 'active', 'face-pack-powder1674826099-face-pack-powder', '2,19', '0', 'Gkrishna', 0, '420.00', 1, '0.00', 'fixed', 'active', '2023-01-27 05:24:36', '2023-01-27 07:58:19'),
(44, 'ALL IN ONE PREMIUM FACE SERUM', '<p><b>QUANTITY  SIZE OF THE CONTAINER/H--DIA IN CM</b><br>30ML</p>', '<p>OUR PREMIUM FACE SERUM IS A ONE STOP SOLUTION FOR ALL IN ALL POSSIBLE SKIN PROBLEMS.  YOUR DREAM OF A FLAWLESS SKIN CAN BECOME TRUE WITH OUR ALL IN ONE PREMIUM FACE WASH. BID ADIEU TO DARK SPOTS, WRINKLES, PIMPLES, ACNE, OPEN PORES AND EXPERIENCE DEEP CLEANSING & IT WILL GIVE NATURAL GLOWNESS.<br></p>', '<p>AQUA, ALOEVERA, ALMOND OIL, AVOCADO BUTTER, RED CLOVER FLOWER EXTRACT, ACAI BERRY EXTRACT, SALICYLIC , NIACINAMIDE, RETINOL, KOJIC DIPALMANATE,  HYALURONIC , PHENONIP, VITAMIN E OIL, VITAMIN C OIL,COCONUT MILK PROTEIN.<br></p>', '<p>WASH IT YOUR FACE , AND APPLY THE SERUM IN NIGHT AND WASH IT ON THE MORNING .USE DAILY FOR THE BETTER RESULTS..<br></p>', 'in active', 'active', 'all-in-one-premium-face-serum1674826044-all-in-one-premium-face-serum', '2,18', '0', 'Gkrishna', 0, '850.00', 1, '0.00', 'fixed', 'active', '2023-01-27 05:28:07', '2023-01-27 07:57:24'),
(45, 'DETAN MASK', '<p><b>QUANTITY  SIZE OF THE CONTAINER/H--DIA IN CM</b><br>50GMS</p>', '<p>WITNESS COMPLETE DISAPPEARANCE OF YOUR TAN WITH OUR DETAN MASK. IT GIVES YOUR SKIN AN OVERALL GLOW, PROTECTS FROM ALL HARMFULNESS AND RETAINS THE FRESHNESS. IT AIDS IN ACHIEVING EVEN SKIN TONE AND ENHANCING THE IT.  <br></p>', '<p>COCONUT OIL, OLIVE OIL, ALMOND OIL,LACTIC  , GLYCOLIC, KOJIC  , E- WAX, CETYL ALCOHOL, STEARIC  ,  AQUA, GLYCERINE, KAOLIN CLAY, BENTONITE CLAY, CALAMINE CLAY, DIMETHICONE, PHENOXYETHANOL, ORANGE EXTRACT  , LIQUORICE EXTRACT, VITAMIN C OIL.<br></p>', '<p>APPLY THE MASK ALL OVER THE FACE AND LEAVE IT FOR 30 MINUTES AND WASH IT YOUR FACE WITH NORMAL WATER.<br></p>', 'in active', 'active', 'detan-mask1674825982-detan-mask', '2', '0', 'Gkrishna', 0, '0.00', 1, '0.00', 'fixed', 'active', '2023-01-27 07:00:47', '2023-01-27 07:56:22'),
(46, 'CHOCOLATE HONEY FACE WASH', '<p><b>QUANTITY  SIZE OF THE CONTAINER/H--DIA IN CM</b><br>100ML<br>10--11.5<br></p>', '<p>THE PERFECT BLEND OF THE GOODNESS OF HONEY AND CHOCOLATE. OUR FACEWASH GIVES A COMPLETE CARE YOUR FACE FROM CLEANSING, BLACKSPOT REMOVAL, PIMPLE PREVENTION, AND OIL CONTROL.  IT ALSO FIGHTS THE GERMS RESULTING IN REDUCTION OF ACNE.<br></p>', '<p>AQUA, SLES , COCO DI , COCO BETAINE , COCO MONO, COCONUT OIL, CETYL ALCOHOL, HONEY, COCOA BUTTER.<br></p>', '<p>WASH YOUR FACE WITH NORMAL WATER. APPLY THE FACEWASH AND GENTLY MASSAGE. USE TWICE FOR BETTER RESULTS.<br></p>', 'in active', 'active', 'chocolate-honey-face-wash1674825963-chocolate-honey-face-wash', '2,20', '0', 'Gkrishna', 0, '270.00', 1, '0.00', 'fixed', 'active', '2023-01-27 07:04:58', '2023-01-27 07:56:03'),
(47, 'NEEM FACE WASH', '<p><b>QUANTITY  SIZE OF THE CONTAINER/H--DIA IN CM</b><br>100ML<br>10--11.5<br></p>', '<p>PUT A PROPER FULL STOP TO YOUR PIMPLE PROBLEMS WITH OUR FACEWASH. IT CLEANSES YOUR SKIN FROM THE INSIDE AND REMOVES THE DIRT, OIL, GREEDINESS AND BLACKHEADS RESULTING IN A FLAWLESS SKIN IN EVERY ASPECT. IT HELPS IN ENHANCING THE RADIANCE OF THE FACE AND TO GET A EVEN SKIN TEXTURE. </p>', '<p> NEEM EXTRACT, TULASI EXTRACT,AQUA , COCO DI , COCO BETAINE , COCO MONO, COCONUT OIL, , SLES,CETYL ALCOHOL, ALOE VERA, MORINGA EXTRACT.<br></p>', '<p>WASH YOUR FACE WITH NORMAL WATER. APPLY THE FACEWASH AND GENTLY MASSAGE. USE TWICE FOR BETTER RESULTS.<br></p>', 'in active', 'active', 'neem-face-wash1674825947-neem-face-wash', '2,20', '0', 'Gkrishna', 0, '270.00', 1, '0.00', 'fixed', 'active', '2023-01-27 07:07:01', '2023-01-27 07:55:47'),
(48, 'SAFFRON FACE WASH', '<p><b>QUANTITY  SIZE OF THE CONTAINER/H--DIA IN CM</b><br>100ML<br>10--11.5<br></p>', '<p>PAMPER YOUR SKIN WITH THE GOOD OF SAFFRON EVERYDAY WITH OUR SAFFRON FACE WASH. THE FACEWASH GIVES IMMEDIATE GLOW AND BRIGHTENS THE SKIN WITH EVERY WASH.  IT FIGHTS THE DARK SPOTS, OIL SECRETION RETAINS THE GLOW OF THE SKIN WITH GENTLE ACTIONS.</p><div><br></div>', '<p>COCONUT OIL, COCO DI , COCO BETAINE ,SLES , COCO MONO,  CETYL ALCOHOL, SAFFRON AQUA, <br></p>', '<p>WASH YOUR FACE WITH NORMAL WATER. APPLY THE FACEWASH AND GENTLY MASSAGE. USE TWICE FOR BETTER RESULTS.<br></p>', 'in active', 'active', 'saffron-face-wash1674825931-saffron-face-wash', '2,20', '0', 'Gkrishna', 0, '270.00', 1, '0.00', 'fixed', 'active', '2023-01-27 07:09:12', '2023-01-27 07:55:31'),
(49, 'WINE FACE WASH', '<p><b>QUANTITY  SIZE OF THE CONTAINER/H--DIA IN CM</b><br>100ML<br>10--11.5<br></p>', '<p>EXPERIENCE THE GOODNESS OF WINE IN EVERY DROP. THE WINE FACE WASH RENDERS COMPLETE SOLUTIONS FOR ALL YOUR SKIN CARE PROBLEMS AND KEEPS YOUR FACE FRESH MOISTURIZED AND BRIGHT WITH ANTIOXIDANTS AND ANTI - INFLAMMATORY PROPERTIES. IT AIDS IN DEEP CLEANSING AND PORES REDUCTION RESULTING IN A FLAWLESS SKIN.</p><div><br></div>', '<p>WINE, AQUA,  COCO DI , COCO BETAINE , COCONUT OIL, SLES ,CETYL ALCOHOL,COCO MONO,  GRAPE SEED OIL.<br></p>', '<p>WASH YOUR FACE WITH NORMAL WATER. APPLY THE FACEWASH AND GENTLY MASSAGE. USE TWICE FOR BETTER RESULTS.<br></p>', 'in active', 'active', 'wine-face-wash1674825917-wine-face-wash', '2,20', '0', 'Gkrishna', 0, '270.00', 1, '0.00', 'fixed', 'active', '2023-01-27 07:11:35', '2023-01-27 07:55:17'),
(50, 'VITAMIN E FACE WASH', '<p><b>QUANTITY  SIZE OF THE CONTAINER/H--DIA IN CM</b><br>100ML<br>10--11.5<br></p>', '<p>GET COMPLETE RECOVERY FROM SKIN DRYNESS AND ENJOY A FRESH AND MOISTURIZED SKIN WITH OUR VITAMIN E FACE WASH DEEP CLEANSING ACTION. THE SPECIAL FORMULA PENETRATES DEEP INSIDE THE SKIN AND CLEANSES THE SKIN AND  REMOVES THE BACTERIAL ELEMENTS .<br></p>', '<p>VITAMIN E OIL, AQUA, SLES , COCO DI , COCO BETAINE ,CETYL ALCOHOL, JOJOBA BEADS,COCO MONO, COCONUT OIL.<br></p>', '<p>WASH YOUR FACE WITH NORMAL WATER. APPLY THE FACEWASH AND GENTLY MASSAGE. USE TWICE FOR BETTER RESULTS.<br></p>', 'in active', 'active', 'vitamin-e-face-wash1674825895-vitamin-e-face-wash', '2,20', '0', 'Gkrishna', 0, '270.00', 1, '0.00', 'fixed', 'active', '2023-01-27 07:13:39', '2023-01-27 07:54:55'),
(51, 'BEARD GROWTH OIL', '<p><b>QUANTITY&nbsp; SIZE OF THE CONTAINER/H--DIA IN CM</b><br>15ML<br>3--9<br></p>', '<p>YOUR WORRIES ABOUT BEARD GROWTH CAN TAKE THE BACK SEAT. OUR BEARD GROWTH OIL RENDERS A COMPLETE SOLUTION. APPLY ON A DAILY BASIS AND EXPERIENCE A EVIDENT DIFFERENCE. IT AIDS IN BEARD GROWTH AND SOFTENS THE BEARD.&nbsp;<br></p>', '<p>ALMOND OIL, CASTOR OIL,&nbsp; PEPPERMINT OIL, YLANG YLANG OIL, ROSEMARY OIL, HENNA OIL , GRAPE SEED OIL, HEMPSEED OIL, EUCALYPTUS OIL, ARGAN OIL, JOJOBA OIL.<br></p>', '<p>TAKE REQUIRED AMOUNT &amp; APPLY ON CHIN AND JAWS AFTER BATH. MASSAGE GENTLY AND MAKE SURE THAT IT IS PROPERLY SPREAD. USE DAILY FOR THE BETTER RESULTS.<br></p>', 'in active', 'active', 'beard-growth-oil', '2,26', '0', 'Gkrishna', 0, '250.00', 1, '0.00', 'fixed', 'active', '2023-01-27 07:17:16', '2023-01-27 07:17:16'),
(52, 'NIGHT MIRACLE SERUM', '<p><b>QUANTITY  SIZE OF THE CONTAINER/H--DIA IN CM</b><br>30ML</p>', '<p>THE RETINOL SERUM REDUCES THE OCCURRENCE OF DARK SPOTS, FINE LINES AND PIGMENTATION. IT\'S A WONDERFUL ANTI-AGING SOLUTION, AND THE ELEMENTS KEEP THE SKIN HEALTHY AND FLAWLESS BY IMPROVING THE COLLAGEN PRODUCTION.<br></p>', '<p>ALOE VERA, BASIL OIL, NEEM OIL, VITAMIN C OIL, SHEA BUTTER,SALICYLIC  , LACTIC  , RATINOL, GLYCOLIC  ,  HYALURONIC  , ALMOND OIL,GRAPE SEED OIL, LAVENDER OIL.<br></p>', '<p>WASH IT YOUR FACE, APPLY THE SERUM IN NIGHT AND WASH IT ON THE MORNING.USE DAILY FOR THE BETTER RESULTS.<br></p>', 'in active', 'active', 'night-miracle-serum1674825879-night-miracle-serum', '2,18', '0', 'Gkrishna', 0, '650.00', 1, '0.00', 'fixed', 'active', '2023-01-27 07:19:13', '2023-01-27 07:54:39'),
(53, 'LIP SCRUB', '<p><b>QUANTITY</b><br>30GMS</p>', '<p>LET YOUR LIPS GLOW WITH AWESOMENESS AND RADIATE  AN UNBLEMISHED GOODNESS. APPLYING  OUR LIP SCRUB IMMEDIATELY ENRICHES THE MOISTURE CONTENT AND REMOVES THE DRYNESS AND HELPS TO REMOVE DEAD SKIN CELLS.<br></p>', '<p>VITAMIN E OIL, SHEA BUTTER,AQUA, CETYL ALCOHOL,  KOKUM BUTTER, WALNUT SHELL POWDER, CETYL ALCOHOL, STEARIC , HONEY, ALMOND OIL, COCONUT OIL.<br></p>', '<p>APPLY THE SCRUB ON YOUR LIPS FOR 2 MINUTES,WASH IT OFF AND APPLY LIP BALM OF YOUR CHOICE. USE WEEKLY THRICE FOR BETTER RESULTS.<br></p>', 'in active', 'active', 'lip-scrub1674825804-lip-scrub', '4,34', '0', 'Gkrishna', 0, '250.00', 1, '0.00', 'fixed', 'active', '2023-01-27 07:22:24', '2023-01-27 07:53:24'),
(54, 'LIP BALM STICK', '<p><b>SIZE OF THE CONTAINER/H--DIA IN CM</b><br>4--5<br></p>', '<p>PREVENT DRYNESS OF YOUR LIPS ON THE GO WITH OUR SPECIAL & COMPACT LIP BALM STICK. JUST ROLL OVER YOUR LIPS AND FEEL THE INSTANT DIFFERENCE WHERE YOUR LIPS LOSSES ITS DRYNESS AND GETS AN EVIDENT GLOW WITH DEEP MOISTURIZING.  <br></p>', '<p>CASTOR OIL, KOKUM BUTTER,BEE WAX, SHEA BUTTER, CANDELILLA WAX, CARNAUBA WAX, CETYL ALCOHOL,  ALMOND OIL, OLIVE OIL.<br></p>', '<p>TRANSFER THE LIP BALM TO YOUR FINGER FIRST, THEN SPREAD IT ACROSS YOUR LIPS. RUB YOUR LIPS TOGETHER TO HELP SPREAD OUT THE LIP GLOSS EVENLY.<br></p>', 'active', 'active', 'lip-balm-stick1674825703-lip-balm-stick', '4,33', '0', 'Gkrishna', 0, '150.00', 1, '0.00', 'fixed', 'active', '2023-01-27 07:24:25', '2023-01-27 07:51:43'),
(55, 'UNDER EYE GEL', '<p><b>QUANTITY</b><br>15GMS</p><p><b>DIA ONLY TOP AND BOTTOM 2.5</b><br></p>', 'THE UNDER EYE GEL RELAXES THE MUSCLES UNDER THE EYE, HELPING REDUCE FINE LINES, WRINKLES AND DARK CIRCLES. REGULAR APPLICATION ALSO HELPS REDUCE DARK CIRCLES AND IT CLEANSES YOUR SKIN BY REMOVING UNWANTED DEAD CELLS. IT GIVES YOUR EYE THE COMPLETE GLOW.', '<p>ALOE VERA, GREEN COFFEE BEAN EXTRACT,CHIA SEED OIL, CAFFEINE,NIACINAMIDE,ORGANO EXTRACT, BASIL OIL.<br></p>', '<p>APPLY THE GEL AROUND YOUR EYES AND LEAVE IT ON OVERNIGHT AND WASH IT ON THE MORNING .<br></p>', 'active', 'active', 'under-eye-gel', '5,36', '0', 'Gkrishna', 0, '210.00', 1, '0.00', 'fixed', 'active', '2023-01-27 07:27:01', '2023-01-27 07:27:01'),
(56, 'EYEBROW EYELASH SERUM', '<p><b>QUANTITY</b><br>15GMS</p><p><b>DIA ONLY TOP AND BOTTOM 2.5</b><br></p>', '<p>THE EYEBROW AND EYELASH SERUM ENHANCES THE GROWTH OF STRONG EYEBROWS AND EYELASHES, ENHANCING THE CONTOURS OF YOUR FACE. IT REACHES THE ROOTS AND IMPACTS FROM WITHIN, AND THE ADVANCED FORMULA HELPS IN PROMOTING THE GROWTH OF EYELASHES AND EYEBROWS.<br></p>', '<p>ALOE VERA GEL, CASTOR OIL, NAGARMOTHA OIL, ARJUN BARK EXTRACT, LAVENDER OIL.<br></p>', '<p><br></p><p>APPLY THE GEL ON YOUR EYEBROWS AND EYELASHES LEAVE IT ON OVERNIGHT AND WASH IT ON THE MORNING.</p>', 'active', 'active', 'eyebrow-eyelash-serum', '5,37', '0', 'Gkrishna', 0, '210.00', 1, '0.00', 'fixed', 'active', '2023-01-27 07:29:13', '2023-01-27 07:53:10');
INSERT INTO `products` (`id`, `name`, `description`, `benefits`, `ingrediants`, `usage`, `header`, `top_rated_products`, `slug`, `category`, `subcategory_id`, `brand_name`, `stock`, `regular_price`, `tax_id`, `discount`, `discount_type`, `status`, `created_at`, `updated_at`) VALUES
(57, 'SLEEP WELL OIL', '<p><b>QUANTITY</b><br>10ML</p><p><b>SIZE OF THE CONTAINER/H--DIA IN CM</b><br>4.5--6<br></p>', '<p>NO MORE SLEEPLESS NIGHTS. OUR SLEEP WELL OIL COMFORTS YOU AND RENDERS A SENSE OF RELAXATION WHICH ENHANCES YOUR SLEEP. IT CALMS DOWN YOUR STRESS AND ANXIETY OUR SLEEP WELL OIL IS THE IDEAL SOLUTION FOR YOUR SLEEPLESSNESS. <br></p>', '<p>LAVENDER OIL, ALMOND OIL, NUTMEG OIL,CHAMPOR, EUCALYPTUS OIL , ROSEMARY OIL, YLANG YLANG OIL, WALNUT OIL.<br></p>', '<p>TAKE TWO TO THREE DROPS OF SLEEP WELL OIL AND APPLY ON BOTH END OF THE FOREHEAD AND GENTLY MASSAGE OR LEAVE TWO OR THREE DROPS ON THE PILLOW TO GET A RELAXED AND DEEP SLEEP. <br></p>', 'in active', 'active', 'sleep-well-oil', '3', '0', 'Gkrishna', 0, '0.00', 1, '0.00', 'fixed', 'active', '2023-01-27 07:31:58', '2023-01-27 07:52:56'),
(58, 'ROSEMARY LOTION', '<p><b>QUANTITY</b><br>100ML</p><p><b>SIZE OF THE CONTAINER/H--DIA IN CM</b><br>10--11.5<br></p>', '<p>YOUR SKIN DESERVES A WHOLESOME CARE AND ROSEMARY LOTION IS THE IDEAL SOLUTION. IT REDUCE THE DARKNESS OF UNDERARM,NECK,INNER-THIGH&nbsp;<br></p>', '<p>SHEA BUTTER, BEETROOT EXTRACT, STRAWBERRY EXTRACT,AQUA, EMULSIFYING WAX, VIRGIN COCONUT OIL, COLD PRESSED OLIVE OIL, PHENOXY ETHNOL, ROSEMARY OIL, ALMOND OIL, AVOCADO OIL , HONEY, LAVENDER OIL, CARROT SEED OIL, CADER WOOD OIL .<br></p>', '<p>AFTER BATH, DRY THE SKIN COMPLETELY AND TAKE REQUIRED AMOUNTS AND APPLY IN UNDERARMS, NECK AND THIGH AREAS TO REDUCE SKIN DARKENING.&nbsp;<br></p>', 'in active', 'active', 'rosemary-lotion', '3,30', '0', 'Gkrishna', 0, '350.00', 1, '0.00', 'fixed', 'active', '2023-01-27 07:35:23', '2023-01-27 07:35:23'),
(59, 'REFRESHING BODY WASH', '<p><b>QUANTITY</b><br>250ML</p>', '<p>KEEP YOURSELF AND SKIN FRESH THROUGHOUT THE DAY WITH OUR REFRESHING BODY WASH. IT EASILY REMOVES THE DIRT AND DEAD CELLS AND GIVES YOUR BODY COMPLETE REJUVENATION. IT RETAINS THE MOISTURE AND KEEP THE SKIN HYDRATED.  <br></p>', '<p>COCONUT OIL, AQUA, SLES , COCO DI , COCO BETAINE , COCO MONO, CETYL ALCOHOL,  PEPPERMINT EXTRACT.<br></p>', '<p>TAKE REQUIRED AMOUNT AND   APPLY ALL OVER THE BODY AND SCRUB TO GET COMPLETE CLEANSING. USE LOOFAH FOR BETTER RESULT.<br></p>', 'in active', 'active', 'refreshing-body-wash1674825668-refreshing-body-wash', '3,29', '0', 'Gkrishna', 0, '480.00', 1, '0.00', 'fixed', 'active', '2023-01-27 07:37:21', '2023-01-27 07:51:08'),
(60, 'GOAT MILK SOAP', '<p><b>QUANTITY</b><br>75GMS</p>', '<p>GIVE YOUR SKIN A DEEP CLEANSING WITH OUR GOAT MILK SOAP ENRICHED WITH THE GOODNESS OF COCONUT OIL AND ALMOND OIL.SMOOTHEN YOUR SKIN REMOVES DRYNESS OF THE SKIN. IT NOURISHES THE SKIN AND KEEPS IT FRESH ALL DAY LONG.<br></p>', '<p>GOAT MILK, GLYCERINE, COCONUT OIL, ALMOND OIL, LYE, NAOH, SODIUM LACTATE,  PROPYLENE GLYCOL,JOJOBA OIL, VITAMIN E EXTRACT.<br></p>', '<p>WET YOUR SKIN AND LATHER THE SOAP. GENTLY MASSAGE THE SKIN WITH THE SOAP. MAKE SURE TO COMPLETELY RINSE IT OFF WITH YOUR WATER<br></p>', 'in active', 'active', 'goat-milk-soap1674825639-goat-milk-soap', '3,53', '0', 'Gkrishna', 0, '120.00', 1, '0.00', 'fixed', 'active', '2023-01-27 07:39:49', '2023-01-27 07:50:39'),
(61, 'DONKEY MILK SOAP', '<p><b>QUANTITY</b><br>75GMS</p>', '<p>SILKY SMOOTH SKIN CAN YOUR WITH OUR DONKEY MILK SOAP. ATTAIN SILKY SMOOTH SKIN AND KEEP YOUR SKIN MOISTURIZED. IT RENDERS DEEP CLEANSING AND HENCE KEEPS THE RADIANT WITH A BEAUTIFUL TEXTURE. <br></p>', '<p>DONKEY MILK, GLYCERINE, COCONUT OIL, ALMOND OIL, LYE, NAOH, PROPYLENE GLYCOL,SODIUM LACTATE, JOJOBA OIL, VITAMIN E EXTRACT.<br></p>', '<p>WET YOUR SKIN AND LATHER THE SOAP. GENTLY MASSAGE THE SKIN WITH THE SOAP. MAKE SURE TO COMPLETELY RINSE IT OFF WITH YOUR WATER.<br></p>', 'in active', 'active', 'donkey-milk-soap1674825610-donkey-milk-soap', '3,54', '0', 'Gkrishna', 0, '220.00', 1, '0.00', 'fixed', 'active', '2023-01-27 07:41:49', '2023-01-27 07:50:10'),
(62, 'HAIR DYE BLACK', '<p><b>QUANTITY</b><br>40GMS</p><p><b>HAIR BLACK FRONT:7*6&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; <br>HAIR BLACK&nbsp; BACK:7*10&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</b>&nbsp;<br></p>', '<p>THE BLEND OF ALL EXCELLENT NATURAL INGREDIENTS THAT ARE PARABEN AND SULPHATE FREE GIVES YOUR HAIR SHINY AND A HEALTHY LOOK BY TURNING THEM GREY&nbsp; TO BLACK ON ITS CONTINUOUS USAGE&nbsp; PERMANENTLY.<br></p>', '<p>indigo,shikakai,henna,brahmi,baheda,bhringraj,amla.<br></p>', '<p>STEP 1 :TAKE&nbsp; THE DYE POWDER IN A CONTAINER MIX IT WITH HOT WATER AND MAKE IT LIKE A PASTE ,APPLY IN YOUR HAIR STRANDS SUCH THAT THEY COVER ALL THE GREY HAIRS. STEP 2 :LET IT DRY FOR AN HOUR OR TWO.STEP 3: WASH YOUR HAIR AFTER 2 HOURS WITH A MILD SHAMPOO. USE BELOW 45 YEARS &amp; USE ONLY HEAD HAIR (NO BEARD &amp; MOUSTACHE)<br></p>', 'active', 'active', 'hair-dye-black', '1,40', '0', 'Gkrishna', 0, '300.00', 1, '0.00', 'fixed', 'active', '2023-01-27 07:45:35', '2023-01-27 07:45:35'),
(63, 'Testing', '<p>testing</p>', '<p>testing<br></p>', '<p>testing<br></p>', '<p>testing<br></p>', 'in active', 'active', 'testing1675750715-testing', '1,2', '0', 'GK', 10, '550.00', 3, '100.00', 'fixed', 'active', '2023-02-07 00:06:15', '2023-02-07 00:48:35');

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

CREATE TABLE `product_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `prod_variant_id` int(11) NOT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `is_thumbnail` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_inventorys`
--

CREATE TABLE `product_inventorys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `prod_variant_id` int(11) NOT NULL,
  `total_stock` int(11) NOT NULL,
  `sold` int(11) NOT NULL,
  `in_stock` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_inventorys`
--

INSERT INTO `product_inventorys` (`id`, `prod_variant_id`, `total_stock`, `sold`, `in_stock`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 500, 0, 500, 'active', '2022-12-29 23:11:39', '2022-12-29 23:11:39'),
(2, 2, 467, 0, 467, 'active', '2022-12-29 23:23:13', '2022-12-29 23:23:13'),
(3, 3, 500, 0, 500, 'active', '2022-12-30 06:37:09', '2022-12-30 06:37:09'),
(4, 4, 467, 0, 467, 'active', '2022-12-30 06:41:33', '2022-12-30 06:41:33'),
(5, 5, 467, 0, 467, 'active', '2022-12-30 06:42:24', '2022-12-30 06:42:24'),
(6, 6, 500, 0, 500, 'active', '2023-01-01 22:17:00', '2023-01-01 22:17:00'),
(7, 7, 500, 0, 500, 'active', '2023-01-01 22:18:25', '2023-01-01 22:18:25'),
(8, 8, 467, 0, 467, 'active', '2023-01-04 02:24:48', '2023-01-04 02:24:48'),
(9, 1, 10, 0, 10, 'active', '2023-01-06 02:07:46', '2023-01-06 02:07:46'),
(10, 2, 10, 0, 10, 'active', '2023-01-06 02:23:48', '2023-01-06 02:23:48'),
(11, 3, 10, 0, 10, 'active', '2023-01-06 02:51:33', '2023-01-06 02:51:33'),
(12, 4, 10, 0, 10, 'active', '2023-01-06 02:54:43', '2023-01-06 02:54:43'),
(13, 5, 10, 0, 10, 'active', '2023-01-06 02:55:14', '2023-01-06 02:55:14'),
(14, 6, 10, 0, 10, 'active', '2023-01-06 02:55:34', '2023-01-06 02:55:34'),
(15, 7, 10, 0, 10, 'active', '2023-01-06 02:58:12', '2023-01-06 02:58:12'),
(16, 8, 10, 0, 10, 'active', '2023-01-06 03:03:25', '2023-01-06 03:03:25'),
(17, 9, 10, 0, 10, 'active', '2023-01-06 03:22:47', '2023-01-06 03:22:47'),
(18, 10, 10, 0, 10, 'active', '2023-01-06 03:25:36', '2023-01-06 03:25:36'),
(19, 11, 10, 0, 10, 'active', '2023-01-06 03:28:00', '2023-01-06 03:28:00'),
(20, 12, 10, 0, 10, 'active', '2023-01-06 03:31:07', '2023-01-06 03:31:07'),
(21, 13, 10, 0, 10, 'active', '2023-01-06 03:42:45', '2023-01-06 03:42:45'),
(22, 14, 10, 0, 10, 'active', '2023-01-06 03:45:47', '2023-01-06 03:45:47'),
(23, 15, 10, 0, 10, 'active', '2023-01-06 03:48:57', '2023-01-06 03:48:57'),
(24, 16, 10, 0, 10, 'active', '2023-01-06 03:54:09', '2023-01-06 03:54:09'),
(25, 17, 10, 0, 10, 'active', '2023-01-06 03:56:18', '2023-01-06 03:56:18'),
(26, 18, 10, 0, 10, 'active', '2023-01-06 03:59:56', '2023-01-06 03:59:56'),
(27, 19, 10, 0, 10, 'active', '2023-01-06 04:00:56', '2023-01-06 04:00:56'),
(28, 20, 10, 0, 10, 'active', '2023-01-06 04:03:09', '2023-01-06 04:03:09'),
(29, 21, 10, 0, 10, 'active', '2023-01-06 04:06:06', '2023-01-06 04:06:06'),
(30, 22, 10, 0, 10, 'active', '2023-01-06 04:08:39', '2023-01-06 04:08:39'),
(31, 23, 10, 0, 10, 'active', '2023-01-06 04:11:22', '2023-01-06 04:11:22'),
(32, 24, 10, 0, 10, 'active', '2023-01-06 04:13:41', '2023-01-06 04:13:41'),
(33, 25, 10, 0, 10, 'active', '2023-01-06 04:16:07', '2023-01-06 04:16:07'),
(34, 26, 10, 0, 10, 'active', '2023-01-06 04:49:04', '2023-01-06 04:49:04'),
(35, 27, 10, 0, 10, 'active', '2023-01-06 05:19:29', '2023-01-06 05:19:29'),
(36, 28, 10, 0, 10, 'active', '2023-01-06 05:26:15', '2023-01-06 05:26:15'),
(37, 29, 10, 0, 10, 'active', '2023-01-06 05:28:21', '2023-01-06 05:28:21'),
(38, 30, 10, 0, 10, 'active', '2023-01-06 05:30:42', '2023-01-06 05:30:42'),
(39, 31, 10, 0, 10, 'active', '2023-01-06 05:32:31', '2023-01-06 05:32:31'),
(40, 32, 10, 0, 10, 'active', '2023-01-06 05:33:59', '2023-01-06 05:33:59'),
(41, 33, 10, 0, 10, 'active', '2023-01-06 05:34:47', '2023-01-06 05:34:47'),
(42, 34, 10, 0, 10, 'active', '2023-01-06 05:37:01', '2023-01-06 05:37:01'),
(43, 35, 10, 0, 10, 'active', '2023-01-06 05:37:58', '2023-01-06 05:37:58'),
(44, 36, 10, 0, 10, 'active', '2023-01-06 05:38:42', '2023-01-06 05:38:42'),
(45, 37, 10, 0, 10, 'active', '2023-01-06 05:39:24', '2023-01-06 05:39:24'),
(46, 38, 10, 0, 10, 'active', '2023-01-06 05:40:09', '2023-01-06 05:40:09'),
(47, 39, 10, 0, 10, 'active', '2023-01-06 05:41:13', '2023-01-06 05:41:13'),
(48, 40, 10, 0, 10, 'active', '2023-01-06 05:43:57', '2023-01-06 05:43:57'),
(49, 41, 10, 0, 10, 'active', '2023-01-06 05:44:42', '2023-01-06 05:44:42'),
(50, 42, 10, 0, 10, 'active', '2023-01-06 05:45:21', '2023-01-06 05:45:21'),
(51, 43, 10, 0, 10, 'active', '2023-01-06 05:45:53', '2023-01-06 05:45:53'),
(52, 44, 10, 0, 10, 'active', '2023-01-06 05:46:28', '2023-01-06 05:46:28'),
(53, 45, 10, 0, 10, 'active', '2023-01-06 05:46:59', '2023-01-06 05:46:59'),
(54, 46, 10, 0, 10, 'active', '2023-01-06 05:47:44', '2023-01-06 05:47:44'),
(55, 47, 10, 0, 10, 'active', '2023-01-06 05:49:23', '2023-01-06 05:49:23'),
(56, 48, 10, 0, 10, 'active', '2023-01-12 04:34:14', '2023-01-12 04:34:14'),
(57, 49, 10, 0, 10, 'active', '2023-01-12 05:17:04', '2023-01-12 05:17:04'),
(58, 50, 10, 0, 10, 'active', '2023-01-12 05:19:46', '2023-01-12 05:19:46'),
(59, 51, 10, 0, 10, 'active', '2023-01-19 08:26:02', '2023-01-19 08:26:02'),
(60, 52, 0, 0, 0, 'active', '2023-01-27 03:30:24', '2023-01-27 03:30:24'),
(61, 53, 8, 0, 8, 'active', '2023-01-27 03:35:45', '2023-01-27 03:35:45'),
(62, 54, 0, 0, 0, 'active', '2023-01-27 03:42:40', '2023-01-27 03:42:40'),
(63, 55, 0, 0, 0, 'active', '2023-01-27 03:56:03', '2023-01-27 03:56:03'),
(64, 56, 0, 0, 0, 'active', '2023-01-27 03:59:59', '2023-01-27 03:59:59'),
(65, 57, 0, 0, 0, 'active', '2023-01-27 04:04:58', '2023-01-27 04:04:58'),
(66, 58, 0, 0, 0, 'active', '2023-01-27 04:08:08', '2023-01-27 04:08:08'),
(67, 59, 0, 0, 0, 'active', '2023-01-27 04:11:15', '2023-01-27 04:11:15'),
(68, 60, 0, 0, 0, 'active', '2023-01-27 04:17:54', '2023-01-27 04:17:54'),
(69, 61, 0, 0, 0, 'active', '2023-01-27 04:25:56', '2023-01-27 04:25:56'),
(70, 62, 0, 0, 0, 'active', '2023-01-27 04:28:33', '2023-01-27 04:28:33'),
(71, 63, 0, 0, 0, 'active', '2023-01-27 04:31:43', '2023-01-27 04:31:43'),
(72, 64, 0, 0, 0, 'active', '2023-01-27 04:41:48', '2023-01-27 04:41:48'),
(73, 65, 0, 0, 0, 'active', '2023-01-27 04:44:22', '2023-01-27 04:44:22'),
(74, 66, 0, 0, 0, 'active', '2023-01-27 04:52:48', '2023-01-27 04:52:48'),
(75, 67, 0, 0, 0, 'active', '2023-01-27 04:57:41', '2023-01-27 04:57:41'),
(76, 68, 0, 0, 0, 'active', '2023-01-27 05:00:05', '2023-01-27 05:00:05'),
(77, 69, 0, 0, 0, 'active', '2023-01-27 05:02:46', '2023-01-27 05:02:46'),
(78, 70, 0, 0, 0, 'active', '2023-01-27 05:07:07', '2023-01-27 05:07:07'),
(79, 71, 0, 0, 0, 'active', '2023-01-27 05:16:55', '2023-01-27 05:16:55'),
(80, 72, 0, 0, 0, 'active', '2023-01-27 05:19:39', '2023-01-27 05:19:39'),
(81, 73, 0, 0, 0, 'active', '2023-01-27 05:24:36', '2023-01-27 05:24:36'),
(82, 74, 0, 0, 0, 'active', '2023-01-27 05:28:07', '2023-01-27 05:28:07'),
(83, 75, 0, 0, 0, 'active', '2023-01-27 06:37:35', '2023-01-27 06:37:35'),
(84, 76, 0, 0, 0, 'active', '2023-01-27 07:00:47', '2023-01-27 07:00:47'),
(85, 77, 0, 0, 0, 'active', '2023-01-27 07:04:58', '2023-01-27 07:04:58'),
(86, 78, 0, 0, 0, 'active', '2023-01-27 07:07:01', '2023-01-27 07:07:01'),
(87, 79, 0, 0, 0, 'active', '2023-01-27 07:09:12', '2023-01-27 07:09:12'),
(88, 80, 0, 0, 0, 'active', '2023-01-27 07:11:35', '2023-01-27 07:11:35'),
(89, 81, 0, 0, 0, 'active', '2023-01-27 07:13:39', '2023-01-27 07:13:39'),
(90, 82, 0, 0, 0, 'active', '2023-01-27 07:17:16', '2023-01-27 07:17:16'),
(91, 83, 0, 0, 0, 'active', '2023-01-27 07:19:13', '2023-01-27 07:19:13'),
(92, 84, 0, 0, 0, 'active', '2023-01-27 07:22:24', '2023-01-27 07:22:24'),
(93, 85, 0, 0, 0, 'active', '2023-01-27 07:24:25', '2023-01-27 07:24:25'),
(94, 86, 0, 0, 0, 'active', '2023-01-27 07:27:01', '2023-01-27 07:27:01'),
(95, 87, 0, 0, 0, 'active', '2023-01-27 07:29:13', '2023-01-27 07:29:13'),
(96, 88, 0, 0, 0, 'active', '2023-01-27 07:31:58', '2023-01-27 07:31:58'),
(97, 89, 0, 0, 0, 'active', '2023-01-27 07:35:23', '2023-01-27 07:35:23'),
(98, 90, 0, 0, 0, 'active', '2023-01-27 07:37:21', '2023-01-27 07:37:21'),
(99, 91, 0, 0, 0, 'active', '2023-01-27 07:39:49', '2023-01-27 07:39:49'),
(100, 92, 0, 0, 0, 'active', '2023-01-27 07:41:49', '2023-01-27 07:41:49'),
(101, 93, 0, 0, 0, 'active', '2023-01-27 07:45:35', '2023-01-27 07:45:35'),
(102, 94, 10, 0, 10, 'active', '2023-01-27 07:49:38', '2023-01-27 07:49:38'),
(103, 95, 0, 0, 0, 'active', '2023-01-27 07:50:10', '2023-01-27 07:50:10'),
(104, 96, 0, 0, 0, 'active', '2023-01-27 07:50:39', '2023-01-27 07:50:39'),
(105, 97, 0, 0, 0, 'active', '2023-01-27 07:51:08', '2023-01-27 07:51:08'),
(106, 98, 0, 0, 0, 'active', '2023-01-27 07:51:43', '2023-01-27 07:51:43'),
(107, 99, 0, 0, 0, 'active', '2023-01-27 07:51:58', '2023-01-27 07:51:58'),
(108, 100, 0, 0, 0, 'active', '2023-01-27 07:52:14', '2023-01-27 07:52:14'),
(109, 101, 0, 0, 0, 'active', '2023-01-27 07:52:56', '2023-01-27 07:52:56'),
(110, 102, 0, 0, 0, 'active', '2023-01-27 07:53:10', '2023-01-27 07:53:10'),
(111, 103, 0, 0, 0, 'active', '2023-01-27 07:53:24', '2023-01-27 07:53:24'),
(112, 104, 0, 0, 0, 'active', '2023-01-27 07:54:39', '2023-01-27 07:54:39'),
(113, 105, 0, 0, 0, 'active', '2023-01-27 07:54:55', '2023-01-27 07:54:55'),
(114, 106, 0, 0, 0, 'active', '2023-01-27 07:55:17', '2023-01-27 07:55:17'),
(115, 107, 0, 0, 0, 'active', '2023-01-27 07:55:31', '2023-01-27 07:55:31'),
(116, 108, 0, 0, 0, 'active', '2023-01-27 07:55:47', '2023-01-27 07:55:47'),
(117, 109, 0, 0, 0, 'active', '2023-01-27 07:56:03', '2023-01-27 07:56:03'),
(118, 110, 0, 0, 0, 'active', '2023-01-27 07:56:22', '2023-01-27 07:56:22'),
(119, 111, 0, 0, 0, 'active', '2023-01-27 07:57:24', '2023-01-27 07:57:24'),
(120, 112, 0, 0, 0, 'active', '2023-01-27 07:58:19', '2023-01-27 07:58:19'),
(121, 113, 0, 0, 0, 'active', '2023-01-27 07:59:17', '2023-01-27 07:59:17'),
(122, 114, 0, 0, 0, 'active', '2023-01-27 07:59:47', '2023-01-27 07:59:47'),
(123, 115, 0, 0, 0, 'active', '2023-01-27 08:00:47', '2023-01-27 08:00:47'),
(124, 116, 0, 0, 0, 'active', '2023-01-27 08:02:09', '2023-01-27 08:02:09'),
(125, 117, 0, 0, 0, 'active', '2023-01-27 08:02:54', '2023-01-27 08:02:54'),
(126, 118, 0, 0, 0, 'active', '2023-01-27 08:03:25', '2023-01-27 08:03:25'),
(127, 119, 0, 0, 0, 'active', '2023-01-27 08:03:52', '2023-01-27 08:03:52'),
(128, 120, 0, 0, 0, 'active', '2023-01-27 08:04:40', '2023-01-27 08:04:40'),
(129, 121, 0, 0, 0, 'active', '2023-01-27 08:06:17', '2023-01-27 08:06:17'),
(130, 122, 0, 0, 0, 'active', '2023-01-27 08:06:40', '2023-01-27 08:06:40'),
(131, 123, 0, 0, 0, 'active', '2023-01-27 08:09:03', '2023-01-27 08:09:03'),
(132, 124, 0, 0, 0, 'active', '2023-01-27 08:10:39', '2023-01-27 08:10:39'),
(133, 125, 0, 0, 0, 'active', '2023-01-27 08:11:40', '2023-01-27 08:11:40'),
(134, 126, 0, 0, 0, 'active', '2023-01-27 08:12:41', '2023-01-27 08:12:41'),
(135, 127, 0, 0, 0, 'active', '2023-01-27 08:13:31', '2023-01-27 08:13:31'),
(136, 128, 0, 0, 0, 'active', '2023-01-27 08:14:17', '2023-01-27 08:14:17'),
(137, 129, 0, 0, 0, 'active', '2023-01-27 08:15:04', '2023-01-27 08:15:04'),
(138, 130, 0, 0, 0, 'active', '2023-01-27 08:15:43', '2023-01-27 08:15:43'),
(139, 131, 0, 0, 0, 'active', '2023-01-27 08:18:59', '2023-01-27 08:18:59'),
(140, 132, 0, 0, 0, 'active', '2023-02-06 07:03:03', '2023-02-06 07:03:03'),
(141, 133, 10, 0, 10, 'active', '2023-02-07 00:06:15', '2023-02-07 00:06:15'),
(142, 134, 10, 0, 10, 'active', '2023-02-07 00:11:19', '2023-02-07 00:11:19'),
(143, 135, 10, 0, 10, 'active', '2023-02-07 00:45:37', '2023-02-07 00:45:37'),
(144, 136, 10, 0, 10, 'active', '2023-02-07 00:48:35', '2023-02-07 00:48:35'),
(145, 137, 12, 0, 12, 'active', '2023-02-07 01:14:06', '2023-02-07 01:14:06'),
(146, 138, 10, 0, 10, 'active', '2023-02-07 01:21:42', '2023-02-07 01:21:42');

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` tinyint(4) NOT NULL DEFAULT '0',
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('accept','reject') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'accept',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `customer_id`, `product_id`, `phone_number`, `rate`, `review`, `name`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 36, 63, 'adda', 4, 'adasd', 'asda', 'addsd', 'reject', '2023-02-07 01:39:39', '2023-02-07 01:48:25'),
(2, 36, 41, '000000000', 5, 'Good product. I am using it for past 1 month the result was amazing.', 'vasanthi', 'vasanthi', 'accept', '2023-02-07 01:50:43', '2023-02-07 02:01:37');

-- --------------------------------------------------------

--
-- Table structure for table `product_specifications`
--

CREATE TABLE `product_specifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `prod_variant_id` int(11) NOT NULL,
  `attribute_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_variants`
--

CREATE TABLE `product_variants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `sku` int(11) DEFAULT NULL,
  `variants` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `regular_price` decimal(12,2) DEFAULT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci,
  `in_stock` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variants`
--

INSERT INTO `product_variants` (`id`, `product_id`, `sku`, `variants`, `regular_price`, `photo`, `in_stock`, `status`, `created_at`, `updated_at`) VALUES
(28, 2, 3143500, 'default', '350.00', 'https://gkrishnanatural.com/storage/photos/53/525501-Anti-Dandruff-Oil-Front-(1).jpg', 9, 'active', '2023-01-06 05:26:15', '2023-01-20 00:57:08'),
(29, 3, 7549331, 'default', '480.00', 'https://gkrishnanatural.com/storage/photos/53/478161-3-in-1-hair-oil-front.jpg,https://gkrishnanatural.com/storage/photos/53/662079-3-in-1-hair-oil-back.jpg', 9, 'active', '2023-01-06 05:28:21', '2023-01-19 22:30:51'),
(30, 4, 3604402, 'default', '400.00', 'https://gkrishnanatural.com/storage/photos/53/840921-Keratin-Detangle-Shampoo-Front.jpg', 10, 'active', '2023-01-06 05:30:42', '2023-01-06 05:30:42'),
(31, 5, 189066, 'default', '425.00', 'https://gkrishnanatural.com/storage/photos/53/176205-volumizing-sulphate-free-shampoo-front.jpg,https://gkrishnanatural.com/storage/photos/53/155557-volumizing-sulphate-free-shampoo-back.jpg', 3, 'active', '2023-01-06 05:32:31', '2023-01-19 22:30:51'),
(32, 6, 2488332, 'default', '425.00', 'https://gkrishnanatural.com/storage/photos/53/818565-Anti-Dandruff-Shampoo-Front.jpg,https://gkrishnanatural.com/storage/photos/53/74087-Anti-Dandruff-Shampoo-Back.jpg', 10, 'active', '2023-01-06 05:33:59', '2023-01-06 05:33:59'),
(33, 7, 1601249, 'default', '325.00', 'https://gkrishnanatural.com/storage/photos/53/367271-Herbal-shampoo-Front.jpg,https://gkrishnanatural.com/storage/photos/53/831857-Herbal-shampoo-Back.jpg', 10, 'active', '2023-01-06 05:34:47', '2023-01-06 05:34:47'),
(34, 8, 432513, 'default', '325.00', 'https://gkrishnanatural.com/storage/photos/53/830631-Hibiscus-Shampoo-Front.jpg,https://gkrishnanatural.com/storage/photos/53/484877-Hibiscus-Shampoo-Back.jpg', 10, 'active', '2023-01-06 05:37:01', '2023-01-06 05:37:01'),
(36, 10, 8728115, 'default', '400.00', 'https://gkrishnanatural.com/storage/photos/53/782127-Goatmilk-Shampoo-Front.jpg,https://gkrishnanatural.com/storage/photos/53/437641-Goatmilk-Shampoo-Back.jpg', 9, 'active', '2023-01-06 05:38:42', '2023-01-20 23:42:19'),
(37, 11, 1636179, 'default', '350.00', 'https://gkrishnanatural.com/storage/photos/53/459697-Aloevera-Gel-Front.jpg', 10, 'active', '2023-01-06 05:39:24', '2023-01-06 05:39:24'),
(38, 12, 9987121, 'default', '0.00', 'https://gkrishnanatural.com/storage/photos/53/582282-Acne-Gel-Front.jpg', 10, 'active', '2023-01-06 05:40:09', '2023-01-06 05:40:09'),
(39, 20, 3269966, 'default', '400.00', 'https://gkrishnanatural.com/storage/photos/53/292777-saffron-toner-front.jpg', 9, 'active', '2023-01-06 05:41:13', '2023-01-20 00:57:08'),
(40, 19, 9853573, 'default', '400.00', 'https://gkrishnanatural.com/storage/photos/53/678403-saffron-gel-front.jpg', 10, 'active', '2023-01-06 05:43:57', '2023-01-06 05:43:57'),
(41, 18, 8226050, 'default', '400.00', 'https://gkrishnanatural.com/storage/photos/53/740022-tea-tree-toner-front.jpg', 9, 'active', '2023-01-06 05:44:42', '2023-02-07 02:23:48'),
(42, 17, 1181601, 'default', '350.00', 'https://gkrishnanatural.com/storage/photos/53/345864-Pimple-Gel-Front.jpg', 10, 'active', '2023-01-06 05:45:21', '2023-01-06 05:45:21'),
(43, 16, 2365115, 'default', '270.00', 'https://gkrishnanatural.com/storage/photos/53/639709-Cleansing-Balm-Front.jpg', 10, 'active', '2023-01-06 05:45:53', '2023-01-06 05:45:53'),
(44, 15, 4839232, 'default', '350.00', 'https://gkrishnanatural.com/storage/photos/53/753283-Blackspot-Gel-Front.jpg', 10, 'active', '2023-01-06 05:46:28', '2023-01-06 05:46:28'),
(45, 14, 584905, 'default', '350.00', 'https://gkrishnanatural.com/storage/photos/53/453843-Open-Pore-Gel-Front.jpg', 7, 'active', '2023-01-06 05:46:59', '2023-01-19 22:30:51'),
(46, 13, 3360435, 'default', '420.00', 'https://gkrishnanatural.com/storage/photos/53/762934-Facepack-Powder-Front.jpg', 10, 'active', '2023-01-06 05:47:44', '2023-01-06 05:47:44'),
(50, 1, 9062361, 'default', '480.00', 'https://gkrishnanatural.com/storage/photos/53/hibiscus shampoo new.jpg', 6, 'active', '2023-01-12 05:19:46', '2023-01-20 23:48:14'),
(51, 22, 9268711, 'default', '480.00', 'https://gkrishnanatural.com/storage/photos/53/292777-saffron-toner-front.jpg,https://gkrishnanatural.com/storage/photos/53/345864-Pimple-Gel-Front.jpg,https://gkrishnanatural.com/storage/photos/53/367271-Herbal-shampoo-Front.jpg,https://gkrishnanatural.com/storage/photos/53/155557-volumizing-sulphate-free-shampoo-back.jpg,https://gkrishnanatural.com/storage/photos/53/176205-volumizing-sulphate-free-shampoo-front.jpg', 10, 'active', '2023-01-19 08:26:02', '2023-01-19 08:26:02'),
(53, 9, 7184613, 'default', '350.00', 'https://gkrishnanatural.com/storage/photos/53/840921-Keratin-Detangle-Shampoo-Front.jpg,https://gkrishnanatural.com/storage/photos/53/850687-Keratin-Detangle-Shampoo-Back.jpg', 8, 'active', '2023-01-27 03:35:45', '2023-01-27 03:35:45'),
(65, 35, 6643644, 'default', '0.00', 'https://gkrishnanatural.com/storage/photos/53/logo (2).png', 0, 'active', '2023-01-27 04:44:22', '2023-01-27 04:44:22'),
(82, 51, 3217679, 'default', '250.00', 'https://gkrishnanatural.com/storage/photos/53/Beard Growth Oil Front.jpg', 0, 'active', '2023-01-27 07:17:16', '2023-01-27 07:17:16'),
(86, 55, 5144912, 'default', '210.00', 'https://gkrishnanatural.com/storage/photos/53/Under Eye Gel Front.jpg', 0, 'active', '2023-01-27 07:27:01', '2023-01-27 07:27:01'),
(89, 58, 4053983, 'default', '350.00', 'https://gkrishnanatural.com/storage/photos/53/rosemary lotion front.jpg,https://gkrishnanatural.com/storage/photos/53/rosemary lotion back.jpg', 0, 'active', '2023-01-27 07:35:23', '2023-01-27 07:35:23'),
(93, 62, 3311489, 'default', '300.00', 'https://gkrishnanatural.com/storage/photos/53/Hair Dye Black Front.jpg,https://gkrishnanatural.com/storage/photos/53/Hair Dye Black Back.jpg', 0, 'active', '2023-01-27 07:45:35', '2023-01-27 07:45:35'),
(94, 21, 1137618, 'default', '210.00', 'https://gkrishnanatural.com/storage/photos/53/R.png', 10, 'active', '2023-01-27 07:49:38', '2023-01-27 07:49:38'),
(95, 61, 5616619, 'default', '220.00', 'https://gkrishnanatural.com/storage/photos/53/R.png', 0, 'active', '2023-01-27 07:50:10', '2023-01-27 07:50:10'),
(96, 60, 3115649, 'default', '120.00', 'https://gkrishnanatural.com/storage/photos/53/R.png', 0, 'active', '2023-01-27 07:50:39', '2023-01-27 07:50:39'),
(97, 59, 2481874, 'default', '480.00', 'https://gkrishnanatural.com/storage/photos/53/R.png', 0, 'active', '2023-01-27 07:51:08', '2023-01-27 07:51:08'),
(98, 54, 7703474, 'default', '150.00', 'https://gkrishnanatural.com/storage/photos/53/R.png', 0, 'active', '2023-01-27 07:51:43', '2023-01-27 07:51:43'),
(101, 57, 9380830, 'default', '0.00', 'https://gkrishnanatural.com/storage/photos/53/R.png', 0, 'active', '2023-01-27 07:52:56', '2023-01-27 07:52:56'),
(102, 56, 7981458, 'default', '210.00', 'https://gkrishnanatural.com/storage/photos/53/R.png', 0, 'active', '2023-01-27 07:53:10', '2023-01-27 07:53:10'),
(103, 53, 8931888, 'default', '250.00', 'https://gkrishnanatural.com/storage/photos/53/R.png', 0, 'active', '2023-01-27 07:53:24', '2023-01-27 07:53:24'),
(104, 52, 7590217, 'default', '650.00', 'https://gkrishnanatural.com/storage/photos/53/R.png', 0, 'active', '2023-01-27 07:54:39', '2023-01-27 07:54:39'),
(105, 50, 2631524, 'default', '270.00', 'https://gkrishnanatural.com/storage/photos/53/R.png', 0, 'active', '2023-01-27 07:54:55', '2023-01-27 07:54:55'),
(106, 49, 8032779, 'default', '270.00', 'https://gkrishnanatural.com/storage/photos/53/R.png', 0, 'active', '2023-01-27 07:55:17', '2023-01-27 07:55:17'),
(107, 48, 1205803, 'default', '270.00', 'https://gkrishnanatural.com/storage/photos/53/R.png', 0, 'active', '2023-01-27 07:55:31', '2023-01-27 07:55:31'),
(108, 47, 9988278, 'default', '270.00', 'https://gkrishnanatural.com/storage/photos/53/R.png', 0, 'active', '2023-01-27 07:55:47', '2023-01-27 07:55:47'),
(109, 46, 443603, 'default', '270.00', 'https://gkrishnanatural.com/storage/photos/53/R.png', 0, 'active', '2023-01-27 07:56:03', '2023-01-27 07:56:03'),
(110, 45, 4922398, 'default', '0.00', 'https://gkrishnanatural.com/storage/photos/53/R.png', 0, 'active', '2023-01-27 07:56:22', '2023-01-27 07:56:22'),
(111, 44, 186313, 'default', '850.00', 'https://gkrishnanatural.com/storage/photos/53/R.png', 0, 'active', '2023-01-27 07:57:24', '2023-01-27 07:57:24'),
(112, 43, 3158521, 'default', '420.00', 'https://gkrishnanatural.com/storage/photos/53/R.png', 0, 'active', '2023-01-27 07:58:19', '2023-01-27 07:58:19'),
(113, 42, 2678998, 'default', '0.00', 'https://gkrishnanatural.com/storage/photos/53/R.png', 0, 'active', '2023-01-27 07:59:17', '2023-01-27 07:59:17'),
(114, 41, 8063787, 'default', '0.00', 'https://gkrishnanatural.com/storage/photos/53/R.png', 0, 'active', '2023-01-27 07:59:47', '2023-01-27 07:59:47'),
(115, 40, 6520831, 'default', '290.00', 'https://gkrishnanatural.com/storage/photos/53/Men\'s Day Cream Front.jpg', 0, 'active', '2023-01-27 08:00:47', '2023-01-27 08:00:47'),
(116, 39, 9074009, 'default', '290.00', 'https://gkrishnanatural.com/storage/photos/53/Rose Day Cream Front (2).jpg', -2, 'active', '2023-01-27 08:02:09', '2023-02-07 02:23:48'),
(117, 38, 1262760, 'default', '290.00', 'https://gkrishnanatural.com/storage/photos/53/Jasmine Day Cream Front.jpg', -2, 'active', '2023-01-27 08:02:54', '2023-02-07 02:23:48'),
(118, 37, 5328596, 'default', '400.00', 'https://gkrishnanatural.com/storage/photos/53/R.png', 0, 'active', '2023-01-27 08:03:25', '2023-01-27 08:03:25'),
(119, 36, 466476, 'default', '275.00', 'https://gkrishnanatural.com/storage/photos/53/R.png', 0, 'active', '2023-01-27 08:03:52', '2023-01-27 08:03:52'),
(120, 33, 2537388, 'default', '275.00', 'https://gkrishnanatural.com/storage/photos/53/Hair Styling and Wet Gel Front.jpg', 0, 'active', '2023-01-27 08:04:40', '2023-01-27 08:04:40'),
(121, 32, 4614069, 'default', '0.00', 'https://gkrishnanatural.com/storage/photos/53/R.png', 0, 'active', '2023-01-27 08:06:17', '2023-01-27 08:06:17'),
(122, 31, 922844, 'default', '0.00', 'https://gkrishnanatural.com/storage/photos/53/R.png', 0, 'active', '2023-01-27 08:06:40', '2023-01-27 08:06:40'),
(125, 28, 1978785, 'default', '360.00', 'https://gkrishnanatural.com/storage/photos/53/passion flower conditioner front.jpg,https://gkrishnanatural.com/storage/photos/53/passion flower conditioner back.jpg', 0, 'active', '2023-01-27 08:11:40', '2023-01-27 08:11:40'),
(126, 27, 9034906, 'default', '445.00', 'https://gkrishnanatural.com/storage/photos/53/Forehead Cream Front.jpg', 0, 'active', '2023-01-27 08:12:41', '2023-01-27 08:12:41'),
(127, 26, 238253, 'default', '350.00', 'https://gkrishnanatural.com/storage/photos/53/Hibiscus Conditioner Front.jpg,https://gkrishnanatural.com/storage/photos/53/Hibiscus Conditioner Back.jpg', 0, 'active', '2023-01-27 08:13:31', '2023-01-27 08:13:31'),
(128, 25, 3191695, 'default', '350.00', 'https://gkrishnanatural.com/storage/photos/53/Flaxseed Conditioner Front.jpg', 0, 'active', '2023-01-27 08:14:17', '2023-01-27 08:14:17'),
(129, 24, 4344871, 'default', '360.00', 'https://gkrishnanatural.com/storage/photos/53/Damage Repair Conditioner Front.jpg,https://gkrishnanatural.com/storage/photos/53/Damage Repair Conditioner Back.jpg', 0, 'active', '2023-01-27 08:15:04', '2023-01-27 08:15:04'),
(130, 23, 3173752, 'default', '480.00', 'https://gkrishnanatural.com/storage/photos/53/R.png', 0, 'active', '2023-01-27 08:15:43', '2023-01-27 08:15:43'),
(131, 30, 8582834, 'default', '420.00', 'https://gkrishnanatural.com/storage/photos/53/Anti Frizz Serum Front.jpg,https://gkrishnanatural.com/storage/photos/53/Anti Frizz Serum Back.jpg', 0, 'active', '2023-01-27 08:18:59', '2023-01-27 08:18:59'),
(132, 34, 5029357, 'default', '0.00', 'https://gkrishnanatural.com/storage/photos/53/R.png', 0, 'active', '2023-02-06 07:03:03', '2023-02-06 07:03:03'),
(136, 63, 1272135, 'default', '550.00', 'https://gkrishnanatural.com/storage/photos/53/R.png,https://gkrishnanatural.com/storage/photos/53/Rose Day Cream Front (1).jpg,https://gkrishnanatural.com/storage/photos/53/Men\'s Day Cream Front.jpg', 10, 'active', '2023-02-07 00:48:35', '2023-02-07 00:48:35'),
(138, 29, 1007171, 'default', '375.00', 'https://gkrishnanatural.com/storage/photos/53/Forehead Gel Front.jpg', 10, 'active', '2023-02-07 01:21:42', '2023-02-07 01:21:42');

-- --------------------------------------------------------

--
-- Table structure for table `promos`
--

CREATE TABLE `promos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Session_left_description1` mediumtext COLLATE utf8mb4_unicode_ci,
  `Session_right_description1` mediumtext COLLATE utf8mb4_unicode_ci,
  `Session_left_description2` mediumtext COLLATE utf8mb4_unicode_ci,
  `Session_right_description2` mediumtext COLLATE utf8mb4_unicode_ci,
  `Session_left_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Session_right_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Session_left_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Session_right_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promos`
--

INSERT INTO `promos` (`id`, `Session_left_description1`, `Session_right_description1`, `Session_left_description2`, `Session_right_description2`, `Session_left_1`, `Session_right_1`, `Session_left_2`, `Session_right_2`, `created_by`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, NULL, '/storage/photos/1/Products/tulia-skin.jpg', '/storage/photos/1/Products/tulia-skin-hair.jpg', '/storage/photos/1/Products/tulia-skin-hair1.jpg', '/storage/photos/1/Products/tulia-hair.jpg', 0, 'active', '2022-04-01 05:45:15', '2022-04-01 05:45:15'),
(2, '<p><span style=\"color: rgb(78, 74, 74); font-weight: 600;\">Promo Image left-1</span><br></p>', '<p><span style=\"color: rgb(78, 74, 74); font-weight: 600;\">Promo Image right-1</span><br></p>', '<p><span style=\"color: rgb(78, 74, 74); font-weight: 600;\">Promo Image left-2</span><br></p>', '<p><span style=\"color: rgb(78, 74, 74); font-weight: 600;\">Promo Image right-2</span><br></p>', '/storage/photos/1/375x500.38914.jpg', '/storage/photos/1/61eDXs9QFNL._SL1500_.jpg', '/storage/photos/1/619dl3bGtRL._SL1001_.jpg', '/storage/photos/1/81Qu0Kq05NL._SX679_.jpg', 1, 'active', '2022-08-08 01:52:29', '2022-08-08 01:52:29');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_request_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_request_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requester` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_id` bigint(20) UNSIGNED NOT NULL,
  `vendor_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_items_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('inactive','active') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`id`, `purchase_request_id`, `purchase_request_name`, `requester`, `vendor_id`, `vendor_name`, `vendor_items_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'PR-00001', 'Cosmetics', '2', 2, 'sandy surya', 'VI-00001', 'inactive', '2022-04-02 04:23:38', '2022-04-02 04:23:38');

-- --------------------------------------------------------

--
-- Table structure for table `purchaseproduct`
--

CREATE TABLE `purchaseproduct` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_request_id` bigint(20) UNSIGNED NOT NULL,
  `vendor_item_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buying_price` int(11) NOT NULL,
  `tax_rate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchaseproduct`
--

INSERT INTO `purchaseproduct` (`id`, `purchase_request_id`, `vendor_item_id`, `product_id`, `product_name`, `attribute_id`, `attribute_name`, `attribute_value`, `quantity`, `buying_price`, `tax_rate`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 5, 'Tulia Girl Beauty Nude Edition 18 Color Eyeshadow and Rose Gold Edition 18 Color Matte and Shiny Pigmented Beauty Eyeshadow Palette', '15', 'Colour', 'Orange Blossom', '12', 3000, '15', '2022-04-02 04:23:38', '2022-04-02 04:23:38');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order`
--

CREATE TABLE `purchase_order` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_order_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_request_id` bigint(20) UNSIGNED NOT NULL,
  `quotation_id` bigint(20) UNSIGNED NOT NULL,
  `order_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_order`
--

INSERT INTO `purchase_order` (`id`, `purchase_order_id`, `purchase_request_id`, `quotation_id`, `order_date`, `delivery_date`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'PO-00001', 1, 1, '2022-04-02 09:54:56', '2022-04-02', 'this is best', 'Products received', '2022-04-02 04:24:56', '2022-04-02 04:44:24');

-- --------------------------------------------------------

--
-- Table structure for table `quotation`
--

CREATE TABLE `quotation` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_request_id` bigint(20) UNSIGNED NOT NULL,
  `estimate_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estimate_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Approved','Not Approved') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Not Approved',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quotation`
--

INSERT INTO `quotation` (`id`, `purchase_request_id`, `estimate_id`, `estimate_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'EST-00001', '2022-04-09', 'Approved', '2022-04-02 04:23:47', '2022-04-02 04:24:49');

-- --------------------------------------------------------

--
-- Table structure for table `reasons`
--

CREATE TABLE `reasons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reasons`
--

INSERT INTO `reasons` (`id`, `order_id`, `description`, `reason`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, 'Order created by mistake', 'active', '2022-04-06 00:07:28', '2022-04-06 00:07:28'),
(2, 2, NULL, 'duplicate', 'active', '2022-04-06 00:07:49', '2022-04-06 00:07:49'),
(3, 9, NULL, 'shipping', 'active', '2022-04-06 00:12:27', '2022-04-06 00:12:27'),
(4, 12, NULL, 'changing', 'active', '2022-04-06 03:18:21', '2022-04-06 03:18:21'),
(5, 11, NULL, 'shipping', 'active', '2022-04-06 03:43:07', '2022-04-06 03:43:07'),
(6, 11, NULL, 'changing', 'active', '2022-04-06 03:58:50', '2022-04-06 03:58:50'),
(7, 33, NULL, 'duplicate', 'active', '2022-07-21 04:59:34', '2022-07-21 04:59:34'),
(8, 33, NULL, NULL, 'active', '2022-07-21 05:46:45', '2022-07-21 05:46:45'),
(9, 31, NULL, NULL, 'active', '2022-07-21 05:49:11', '2022-07-21 05:49:11'),
(10, 31, NULL, 'Wrong Billing Address', 'active', '2022-07-21 06:01:34', '2022-07-21 06:01:34'),
(11, 31, NULL, NULL, 'active', '2022-07-21 07:34:28', '2022-07-21 07:34:28'),
(12, 32, NULL, 'Delivery takes so long', 'active', '2022-07-21 22:46:11', '2022-07-21 22:46:11');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(12) NOT NULL,
  `role` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(3, 'Admin', 'web', '2022-12-08 04:56:58', '2022-12-08 04:56:58'),
(4, 'User', 'web', '2022-12-08 04:57:31', '2022-12-08 04:57:31'),
(6, 'Super Admin', 'web', '2022-12-08 05:15:45', '2022-12-08 05:15:45');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(2, 2),
(3, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(13, 2),
(1, 3),
(2, 3),
(3, 3),
(4, 3),
(5, 3),
(6, 3),
(7, 3),
(8, 3),
(9, 3),
(10, 3),
(11, 3),
(12, 3),
(13, 3),
(14, 3),
(15, 3),
(16, 3),
(17, 3),
(18, 3),
(19, 3),
(20, 3),
(21, 3),
(22, 3),
(23, 3),
(24, 3),
(25, 3),
(26, 3),
(27, 3),
(28, 3),
(29, 3),
(30, 3),
(31, 3),
(32, 3),
(33, 3),
(34, 3),
(35, 3),
(36, 3),
(37, 3),
(38, 3),
(39, 3),
(40, 3),
(41, 3),
(42, 3),
(43, 3),
(44, 3),
(45, 3),
(46, 3),
(47, 3),
(48, 3),
(49, 3),
(50, 3),
(51, 3),
(52, 3),
(53, 3),
(54, 3),
(55, 3),
(56, 3),
(57, 3),
(58, 3),
(59, 3),
(60, 3),
(61, 3),
(62, 3),
(63, 3),
(64, 3),
(65, 3),
(5, 4),
(6, 4),
(7, 4),
(8, 4),
(10, 4),
(1, 6),
(2, 6),
(3, 6),
(4, 6),
(5, 6),
(6, 6),
(7, 6),
(8, 6),
(9, 6),
(10, 6),
(11, 6),
(12, 6),
(13, 6),
(14, 6),
(15, 6),
(16, 6),
(17, 6),
(18, 6),
(19, 6),
(20, 6),
(21, 6),
(22, 6),
(23, 6),
(24, 6),
(25, 6),
(26, 6),
(27, 6),
(28, 6),
(29, 6),
(30, 6),
(31, 6),
(32, 6),
(33, 6),
(34, 6),
(35, 6),
(36, 6),
(37, 6),
(38, 6),
(39, 6),
(40, 6),
(41, 6),
(42, 6),
(43, 6),
(44, 6),
(45, 6),
(46, 6),
(47, 6),
(48, 6),
(49, 6),
(54, 6),
(55, 6),
(56, 6),
(57, 6),
(58, 6),
(59, 6),
(60, 6),
(61, 6),
(62, 6),
(63, 6),
(64, 6),
(65, 6);

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shipping_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deliver_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deliver_charge` double(8,2) NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shipping_address`
--

CREATE TABLE `shipping_address` (
  `id` int(12) NOT NULL,
  `customer_id` int(12) DEFAULT NULL,
  `billing_name` varchar(255) DEFAULT NULL,
  `order_id` varchar(255) NOT NULL,
  `sfirst_name` varchar(255) DEFAULT NULL,
  `slast_name` varchar(255) DEFAULT NULL,
  `scompany_name` varchar(255) DEFAULT NULL,
  `sname_of_address` varchar(255) DEFAULT NULL,
  `semail` varchar(255) DEFAULT NULL,
  `sphone_number` varchar(255) NOT NULL,
  `saddress` varchar(255) DEFAULT NULL,
  `sstreet_1` varchar(255) DEFAULT NULL,
  `sstreet_2` varchar(255) DEFAULT NULL,
  `scity` varchar(255) DEFAULT NULL,
  `sstate` varchar(255) DEFAULT NULL,
  `spincode` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shipping_address`
--

INSERT INTO `shipping_address` (`id`, `customer_id`, `billing_name`, `order_id`, `sfirst_name`, `slast_name`, `scompany_name`, `sname_of_address`, `semail`, `sphone_number`, `saddress`, `sstreet_1`, `sstreet_2`, `scity`, `sstate`, `spincode`, `created_at`, `updated_at`) VALUES
(1, 36, NULL, '1', 'js', 's', NULL, NULL, NULL, '9876543210', 'sdsd,', 'sdsd', NULL, 'chennai', '31', '690511', '2023-01-19 22:30:51', '2023-01-19 22:30:51'),
(2, 36, NULL, '2', 'Jayasuriya', 'S', NULL, NULL, NULL, '88489399', 'Sree Krishna Bhavanam,Muttom po harippad', 'Sree Krishna Bhavanam', 'Muttom po harippad', 'Muttom PO Harippad, Alappuzha', '17', '690511', '2023-01-19 22:43:39', '2023-01-19 22:43:39'),
(3, 36, NULL, '3', 'JAYASURIYA', 's', NULL, NULL, NULL, '8848193919', 'Nil,', 'Nil', NULL, 'Nil', '17', 'nil', '2023-01-20 00:57:08', '2023-01-20 00:57:08'),
(4, 36, NULL, '4', 'saf', 'sdg', NULL, NULL, NULL, 'sg', 'fdh,dfh', 'fdh', 'dfh', 'dfh', '31', 'dfh', '2023-01-20 23:42:19', '2023-01-20 23:42:19'),
(5, 36, NULL, '5', 'Jayasuriya', 'S', NULL, NULL, NULL, '88489399', 'Sree Krishna Bhavanam,Muttom po harippad', 'Sree Krishna Bhavanam', 'Muttom po harippad', 'Muttom PO Harippad, Alappuzha', '17', '690511', '2023-01-20 23:48:14', '2023-01-20 23:48:14'),
(6, 36, NULL, '6', 'vasanthi', 'R', NULL, NULL, NULL, '123d4fg7', 'No 30, 6th street,', 'No 30, 6th street', NULL, 'Chennai', '31', '600071', '2023-02-07 02:23:48', '2023-02-07 02:23:48');

-- --------------------------------------------------------

--
-- Table structure for table `state_list`
--

CREATE TABLE `state_list` (
  `id` int(10) UNSIGNED NOT NULL,
  `state` varchar(50) NOT NULL,
  `shipping_charge` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state_list`
--

INSERT INTO `state_list` (`id`, `state`, `shipping_charge`) VALUES
(1, 'ANDAMAN AND NICOBAR ISLANDS', 0),
(2, 'ANDHRA PRADESH', 0),
(3, 'ARUNACHAL PRADESH', 0),
(4, 'ASSAM', 0),
(5, 'BIHAR', 0),
(6, 'CHATTISGARH', 0),
(7, 'CHANDIGARH', 0),
(8, 'DAMAN AND DIU', 0),
(9, 'DELHI', 0),
(10, 'DADRA AND NAGAR HAVELI', 0),
(11, 'GOA', 0),
(12, 'GUJARAT', 0),
(13, 'HIMACHAL PRADESH', 0),
(14, 'HARYANA', 0),
(15, 'JAMMU AND KASHMIR', 0),
(16, 'JHARKHAND', 0),
(17, 'KERALA', 0),
(18, 'KARNATAKA', 0),
(19, 'LAKSHADWEEP', 0),
(20, 'MEGHALAYA', 0),
(21, 'MAHARASHTRA', 0),
(22, 'MANIPUR', 0),
(23, 'MADHYA PRADESH', 0),
(24, 'MIZORAM', 0),
(25, 'NAGALAND', 0),
(26, 'ORISSA', 0),
(27, 'PUNJAB', 0),
(28, 'PONDICHERRY', 0),
(29, 'RAJASTHAN', 2),
(30, 'SIKKIM', 0),
(31, 'TAMIL NADU', 3),
(32, 'TRIPURA', 0),
(33, 'UTTARAKHAND', 0),
(34, 'UTTAR PRADESH', 0),
(35, 'WEST BENGAL', 0),
(36, 'TELANGANA', 0);

-- --------------------------------------------------------

--
-- Table structure for table `suborders`
--

CREATE TABLE `suborders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `orders_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_id` int(12) DEFAULT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `payment_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` enum('paid','unpaid') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Pending','Confirmed','Processing','Delivered','Returned','Cancelled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Processing',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suborders`
--

INSERT INTO `suborders` (`id`, `orders_id`, `vendor_id`, `customer_id`, `payment_id`, `payment_status`, `status`, `created_at`, `updated_at`) VALUES
(6, '25', 1, 1, '', 'paid', 'Confirmed', '2022-07-20 04:14:47', '2022-07-20 04:14:47'),
(8, '27', 1, 1, '', 'paid', 'Returned', '2022-07-20 04:35:06', '2022-07-20 04:35:06'),
(9, '28', 1, 1, '', 'paid', 'Pending', '2022-07-20 07:03:22', '2022-07-20 07:03:22'),
(10, '29', 1, 1, '', 'paid', 'Confirmed', '2022-07-20 07:20:43', '2022-07-20 07:20:43'),
(11, '30', 1, 1, '', 'unpaid', 'Pending', '2022-07-20 22:51:29', '2022-07-20 22:51:29'),
(12, '31', 1, 1, '', 'unpaid', 'Pending', '2022-07-21 00:10:15', '2022-07-21 00:10:15'),
(13, '32', 1, 1, '', 'unpaid', 'Pending', '2022-07-21 00:16:02', '2022-07-21 00:16:02'),
(14, '33', 1, 1, '', 'unpaid', 'Pending', '2022-07-21 01:04:40', '2022-07-21 01:04:40'),
(15, '34', 1, 1, '', 'unpaid', 'Pending', '2022-07-22 06:41:30', '2022-07-22 06:41:30'),
(16, '35', 1, 1, '', 'unpaid', 'Pending', '2022-07-25 23:10:13', '2022-07-25 23:10:13'),
(17, '36', 1, 1, '', 'unpaid', 'Pending', '2022-07-25 23:11:08', '2022-07-25 23:11:08'),
(18, '41', 1, 1, '', 'unpaid', 'Pending', '2022-07-26 00:44:41', '2022-07-26 00:44:41'),
(19, '42', 1, 1, '', 'unpaid', 'Pending', '2022-07-26 00:44:52', '2022-07-26 00:44:52'),
(20, '43', 1, 1, '', 'unpaid', 'Pending', '2022-07-26 00:45:03', '2022-07-26 00:45:03'),
(21, '44', 1, 1, '', 'unpaid', 'Pending', '2022-07-26 00:48:15', '2022-07-26 00:48:15'),
(22, '45', 1, 1, '', 'unpaid', 'Pending', '2022-07-26 01:24:30', '2022-07-26 01:24:30'),
(23, '46', 1, 1, '', 'unpaid', 'Pending', '2022-07-26 01:25:22', '2022-07-26 01:25:22'),
(24, '47', 1, 1, '', 'unpaid', 'Pending', '2022-07-26 01:31:29', '2022-07-26 01:31:29'),
(25, '48', 1, 1, '', 'unpaid', 'Pending', '2022-07-26 01:39:34', '2022-07-26 01:39:34'),
(26, '49', 1, 1, '', 'unpaid', 'Pending', '2022-07-26 01:45:25', '2022-07-26 01:45:25'),
(27, '50', 1, 1, '', 'unpaid', 'Pending', '2022-07-26 01:48:25', '2022-07-26 01:48:25'),
(28, '51', 1, 1, '', 'unpaid', 'Pending', '2022-07-26 01:50:06', '2022-07-26 01:50:06'),
(29, '52', 1, 1, '', 'unpaid', 'Pending', '2022-07-26 01:50:34', '2022-07-26 01:50:34'),
(30, '53', 1, 1, '', 'unpaid', 'Pending', '2022-07-26 01:56:34', '2022-07-26 01:56:34'),
(31, '54', 1, 1, '', 'unpaid', 'Pending', '2022-07-26 01:58:09', '2022-07-26 01:58:09'),
(32, '55', 1, 1, '', 'unpaid', 'Pending', '2022-07-26 02:04:59', '2022-07-26 02:04:59'),
(33, '56', 1, 1, '', 'unpaid', 'Pending', '2022-07-26 02:14:13', '2022-07-26 02:14:13'),
(34, '57', 1, 1, '', 'unpaid', 'Pending', '2022-07-26 02:15:23', '2022-07-26 02:15:23'),
(35, '58', 1, 1, '', 'unpaid', 'Pending', '2022-07-26 03:34:41', '2022-07-26 03:34:41'),
(36, '59', 1, 1, '', 'unpaid', 'Pending', '2022-07-26 03:35:00', '2022-07-26 03:35:00'),
(37, '60', 1, 1, '', 'unpaid', 'Pending', '2022-07-26 03:37:18', '2022-07-26 03:37:18'),
(38, '61', 1, 1, '', 'unpaid', 'Pending', '2022-07-26 03:42:49', '2022-07-26 03:42:49'),
(39, '62', 1, 1, '', 'unpaid', 'Pending', '2022-07-26 03:43:24', '2022-07-26 03:43:24'),
(40, '63', 1, 1, '', 'unpaid', 'Pending', '2022-07-26 03:48:40', '2022-07-26 03:48:40'),
(41, '64', 1, 1, '', 'unpaid', 'Pending', '2022-07-26 03:48:58', '2022-07-26 03:48:58'),
(42, '65', 1, 1, '', 'unpaid', 'Pending', '2022-07-26 04:03:04', '2022-07-26 04:03:04'),
(43, '66', 1, 1, '', 'unpaid', 'Pending', '2022-07-26 04:04:30', '2022-07-26 04:04:30'),
(44, '67', 1, 1, '', 'unpaid', 'Pending', '2022-07-26 04:04:54', '2022-07-26 04:04:54');

-- --------------------------------------------------------

--
-- Table structure for table `suborders_items`
--

CREATE TABLE `suborders_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `products_id` bigint(20) UNSIGNED NOT NULL,
  `suborders_id` bigint(20) UNSIGNED NOT NULL,
  `cancellation_fee` decimal(12,2) NOT NULL DEFAULT '0.00',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `option` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suborders_items`
--

INSERT INTO `suborders_items` (`id`, `order_id`, `products_id`, `suborders_id`, `cancellation_fee`, `status`, `quantity`, `option`, `amount`, `created_at`, `updated_at`) VALUES
(7, 25, 11, 6, '0.00', 'Active', 3, 'red,L', 333, '2022-07-20 04:14:47', '2022-07-20 04:14:47'),
(8, 25, 10, 6, '0.00', 'Active', 2, 'red,XL', 300, '2022-07-20 04:14:47', '2022-07-20 04:14:47'),
(11, 27, 11, 8, '0.00', 'Active', 4, 'red,L', 222, '2022-07-20 04:35:06', '2022-07-20 04:35:06'),
(12, 27, 10, 8, '0.00', 'Active', 2, 'red,XL', 300, '2022-07-20 04:35:06', '2022-07-20 04:35:06'),
(13, 28, 11, 9, '0.00', 'Active', 2, 'red,L', 444, '2022-07-20 07:03:22', '2022-07-20 07:03:22'),
(14, 28, 10, 9, '0.00', 'Active', 4, 'red,L', 1200, '2022-07-20 07:03:22', '2022-07-20 07:03:22'),
(15, 29, 11, 10, '0.00', 'Active', 2, 'red,L', 444, '2022-07-20 07:20:43', '2022-07-20 07:20:43'),
(16, 30, 10, 11, '0.00', 'Active', 1, 'red,L', 300, '2022-07-20 22:51:29', '2022-07-20 22:51:29'),
(17, 30, 11, 11, '0.00', 'Active', 5, 'red,XL', 1500, '2022-07-20 22:51:29', '2022-07-20 22:51:29'),
(18, 31, 11, 12, '0.00', 'Cancelled', 4, 'red,L', 888, '2022-07-21 00:10:15', '2022-07-21 00:10:15'),
(19, 31, 10, 12, '0.00', 'Active', 3, 'red,L', 900, '2022-07-21 00:10:15', '2022-07-21 00:10:15'),
(20, 32, 11, 13, '0.00', 'Cancellation Requested', 2, 'red,L', 444, '2022-07-21 00:16:02', '2022-07-21 00:16:02'),
(21, 33, 10, 14, '0.00', 'Cancelled', 1, 'red,L', 300, '2022-07-21 01:04:40', '2022-07-21 01:04:40'),
(22, 33, 11, 14, '0.00', 'Cancellation Requested', 4, 'red,L', 888, '2022-07-21 01:04:40', '2022-07-21 01:04:40'),
(23, 34, 11, 15, '0.00', 'Active', 3, 'red,XL', 900, '2022-07-22 06:41:30', '2022-07-22 06:41:30'),
(24, 34, 10, 15, '0.00', 'Active', 2, 'red,L', 600, '2022-07-22 06:41:30', '2022-07-22 06:41:30'),
(25, 35, 11, 16, '0.00', 'Active', 2, 'red,L', 444, '2022-07-25 23:10:13', '2022-07-25 23:10:13'),
(26, 36, 11, 17, '0.00', 'Active', 2, 'red,L', 444, '2022-07-25 23:11:08', '2022-07-25 23:11:08'),
(27, 41, 10, 18, '0.00', 'Active', 1, 'red,XL', 300, '2022-07-26 00:44:41', '2022-07-26 00:44:41'),
(28, 42, 10, 19, '0.00', 'Active', 1, 'red,XL', 300, '2022-07-26 00:44:52', '2022-07-26 00:44:52'),
(29, 43, 10, 20, '0.00', 'Active', 1, 'red,XL', 300, '2022-07-26 00:45:03', '2022-07-26 00:45:03'),
(30, 44, 10, 21, '0.00', 'Active', 1, 'red,XL', 300, '2022-07-26 00:48:15', '2022-07-26 00:48:15'),
(31, 45, 10, 22, '0.00', 'Active', 1, 'red,XL', 300, '2022-07-26 01:24:30', '2022-07-26 01:24:30'),
(32, 46, 10, 23, '0.00', 'Active', 1, 'red,XL', 300, '2022-07-26 01:25:22', '2022-07-26 01:25:22'),
(33, 47, 11, 24, '0.00', 'Active', 2, 'red,XL', 2, '2022-07-26 01:31:29', '2022-07-26 01:31:29'),
(34, 48, 11, 25, '0.00', 'Active', 2, 'red,XL', 2, '2022-07-26 01:39:34', '2022-07-26 01:39:34'),
(35, 49, 11, 26, '0.00', 'Active', 3, 'red,XL', 3, '2022-07-26 01:45:25', '2022-07-26 01:45:25'),
(36, 50, 11, 27, '0.00', 'Active', 3, 'red,XL', 3, '2022-07-26 01:48:25', '2022-07-26 01:48:25'),
(37, 51, 11, 28, '0.00', 'Active', 3, 'red,XL', 3, '2022-07-26 01:50:06', '2022-07-26 01:50:06'),
(38, 52, 11, 29, '0.00', 'Active', 3, 'red,XL', 3, '2022-07-26 01:50:35', '2022-07-26 01:50:35'),
(39, 53, 11, 30, '0.00', 'Active', 3, 'red,XL', 3, '2022-07-26 01:56:34', '2022-07-26 01:56:34'),
(40, 54, 11, 31, '0.00', 'Active', 3, 'red,XL', 3, '2022-07-26 01:58:09', '2022-07-26 01:58:09'),
(41, 55, 11, 32, '0.00', 'Active', 3, 'red,XL', 3, '2022-07-26 02:04:59', '2022-07-26 02:04:59'),
(42, 56, 11, 33, '0.00', 'Active', 3, 'red,XL', 3, '2022-07-26 02:14:13', '2022-07-26 02:14:13'),
(43, 57, 11, 34, '0.00', 'Active', 3, 'red,XL', 3, '2022-07-26 02:15:23', '2022-07-26 02:15:23'),
(44, 58, 11, 35, '0.00', 'Active', 3, 'red,XL', 3, '2022-07-26 03:34:41', '2022-07-26 03:34:41'),
(45, 59, 11, 36, '0.00', 'Active', 3, 'red,XL', 3, '2022-07-26 03:35:00', '2022-07-26 03:35:00'),
(46, 60, 11, 37, '0.00', 'Active', 3, 'red,XL', 3, '2022-07-26 03:37:18', '2022-07-26 03:37:18'),
(47, 61, 11, 38, '0.00', 'Active', 3, 'red,XL', 3, '2022-07-26 03:42:49', '2022-07-26 03:42:49'),
(48, 62, 11, 39, '0.00', 'Active', 3, 'red,XL', 3, '2022-07-26 03:43:24', '2022-07-26 03:43:24'),
(49, 63, 11, 40, '0.00', 'Active', 1, 'red,XL', 1, '2022-07-26 03:48:40', '2022-07-26 03:48:40'),
(50, 64, 11, 41, '0.00', 'Active', 1, 'red,XL', 1, '2022-07-26 03:48:58', '2022-07-26 03:48:58'),
(51, 65, 11, 42, '0.00', 'Active', 1, 'red,XL', 1, '2022-07-26 04:03:04', '2022-07-26 04:03:04'),
(52, 66, 11, 43, '0.00', 'Active', 1, 'red,XL', 1, '2022-07-26 04:04:30', '2022-07-26 04:04:30'),
(53, 67, 11, 44, '0.00', 'Active', 1, 'red,XL', 1, '2022-07-26 04:04:54', '2022-07-26 04:04:54');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(12) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `created_at`, `updated_at`) VALUES
(10, 'kvraghul2018@gmail.com', '2022-09-15 22:22:13', '2022-09-15 22:22:13'),
(11, 'kvprithviraj2018@gmail.com', '2022-09-15 22:23:09', '2022-09-15 22:23:09');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` int(11) DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('inactive','active') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `supplier_id`, `supplier_name`, `email`, `mobile_number`, `website`, `logo`, `address`, `pincode`, `description`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'SUP-00001', 'testing', 'demo@gmail.com', '0123456789', 'http://127.0.0.1:8000/suppliers/create', '/storage/photos/1/61eDXs9QFNL._SL1500_.jpg', 'welcome', 620001, '<div class=\"wrapper\">\r\n<div id=\"myDynamicModal\" class=\"modal fade in\" data-backdrop=\"static\" data-keyboard=\"false\">\r\n<div class=\"modal-dialog modal-lg\">\r\n<div class=\"modal-content\">\r\n<div class=\"modal-body\">\r\n<div class=\"nav-tabs-custom\">\r\n<div class=\"tab-content\">\r\n<div id=\"tab_1\" class=\"tab-pane active\">\r\n<div class=\"box-body\">Consectetur tempore et recusandae consectetur voluptates. Officia aliquam optio sit voluptatem doloremque reiciendis beatae. Voluptas voluptate natus delectus sit. Dolorem magni qui deserunt porro et asperiores. Veniam soluta sunt culpa reiciendis laudantium eveniet. Id atque ea tenetur sit blanditiis. Tempora qui deleniti dolores esse veritatis. Aut eos enim expedita natus neque. Nesciunt veritatis quasi qui. Possimus alias non sit atque est.</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'active', 0, '2022-06-30 01:55:03', '2022-06-30 01:56:26');

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tax_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage` double(8,2) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `tax_name`, `percentage`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Gst', 0.00, 'active', 53, '2023-01-06 01:57:47', '2023-01-06 01:57:47'),
(3, 'Tax', 3.00, 'active', 53, '2023-02-06 23:52:15', '2023-02-06 23:52:15');

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`id`, `title`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Terms & Conditions', 'terms-conditions', '<p>It\'s tough to establish one all-encompassing template for your About page &mdash; there are so many ways you can go about telling your company story. The good news is, there are some tried-and-true steps to get you started.</p>\r\n<h3>1. Establish a mission statement.</h3>\r\n<p>Your About page can and will be more comprehensive than a single&nbsp;<a href=\"https://blog.hubspot.com/marketing/inspiring-company-mission-statements\" target=\"_blank\" rel=\"noopener\">mission statement</a>, but to draw people in, you need to succinctly state your goal in the industry upfront. What is your business here to do? Why should your website visitors care? This information will give the reader something to remember about your company long after they leave your website.</p>\r\n<h3>2. Outline your company story.</h3>\r\n<p>Every business has a story to tell. Even if you\'re running a start-up, you might not have a long history of changes and growth (yet), but it\'s a nice touch to talk about how you got to where you are on the About page. So, isolate the milestones before your company\'s founding, and use them to give readers some backstory on your current venture.</p>\r\n<h3>3. Reveal how you\'ve evolved.</h3>\r\n<p>There\'s no shame in admitting how your business strategy &mdash; or even your way of thinking &mdash; has changed since you began. In fact, these evolutions can improve the story you tell to website visitors.</p>\r\n<p>About pages are perfect spaces to talk about where you started, how you\'ve grown, and the ideals that have helped your organization mature. Use these moments to further your company story and show people that you\'re always ready to change and adapt to the needs of your industry.</p>\r\n<h3>4. State your \"aha!\" moment.</h3>\r\n<p>Every good company was founded on an idea &mdash; something the current marketplace might not yet offer. What was your idea? Use this \"Aha!\" moment as a pivot point when telling your company story. What was a challenge you faced while developing your company? How did this challenge or discovery shape what you are today?</p>\r\n<h3>5. Explain who you serve.</h3>\r\n<p>As much as you want as many eyeballs on your About page as possible, you won\'t do business with every single one of them. That\'s why you must identify and mention your core customer. This lets your visitors know what your business is dedicated to helping them meet their needs and goals.</p>\r\n<h3>6. Explain what you\'re offering them.</h3>\r\n<p>As you\'re explaining who you serve, make it clear what it is you\'re offering. Companies often generalize their products or services in the website copy, making it hard to understand what it is the customer is actually paying for. Sometimes, businesses are afraid that the literal explanations of their products aren\'t interesting enough or will sound unappealing in writing. And that\'s a fair concern.</p>\r\n<p>However, investing just a sentence or two into telling your potential customers exactly what they\'ll receive can keep them on your website for longer and get them interested in learning more.</p>\r\n<h3>7. Cite examples of clients you\'ve served.</h3>\r\n<p>Got some loyal customers in your portfolio? Use your About page to let the world know who already trusts and benefits from your work. A great way to showcase this is through a&nbsp;<a href=\"https://blog.hubspot.com/marketing/case-studies-marketing\" target=\"_blank\" rel=\"noopener\">case study</a>.</p>\r\n<p>Knowing about your company\'s past successes can influence your prospects\' purchasing decisions because they will be able to envision their success in the success of your past customers.</p>\r\n<h3>8. Describe your values.</h3>\r\n<p>Customers want to be treated like human beings. For that to happen, they need to feel that they\'re being served by human beings. When finishing your About page, describe who you are as a person or a team, and what your personal values are. What\'s your company culture like? What bigger picture in life drives your business?</p>\r\n<p>Keep in mind a secondary audience of your company\'s About page consists of your future employees. This is another reason describing your personal values is a good idea &mdash; the key to your job candidates\' hearts is to show them you have one too.</p>', '2022-04-02 05:19:02', '2022-04-02 05:19:02');

-- --------------------------------------------------------

--
-- Table structure for table `today_hotoffer`
--

CREATE TABLE `today_hotoffer` (
  `id` int(12) NOT NULL,
  `title` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `photo` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `start_date` datetime NOT NULL,
  `status` varchar(255) DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `today_hotoffer`
--

INSERT INTO `today_hotoffer` (`id`, `title`, `link`, `photo`, `description`, `start_date`, `status`, `created_at`, `updated_at`) VALUES
(3, 'DEAL FOR THE DAY', NULL, 'http://niresh.oceansoftwares.in/bms/public/storage/photos/1/offer1.PNG,http://niresh.oceansoftwares.in/bms/public/storage/photos/1/offer2.PNG', '<p>CHAIR 50 % OFFER<br><br>CLAIM NOW&nbsp;<br><br>VALID for TODAY ONLY</p>', '0000-00-00 00:00:00', 'active', '2022-11-22 02:58:01', '2022-11-22 02:58:01'),
(5, 'TODAY\'S HOT OFFER -->', NULL, 'http://niresh.oceansoftwares.in/bms/public/storage/photos/1/digi-ift-programmable-500x500.jpg', '<p><span style=\"color: rgb(33, 16, 74); font-family: Impact;\">Digi-IFT-Pro</span></p><div>Features<span style=\"white-space: pre;\">	</span>  Digital<br></div><p>Types<span style=\"white-space:pre\">	</span>          Conventional</p><p>Channels<span style=\"white-space:pre\">	</span>   Dual</p><p>Model<span style=\"white-space:pre\">	</span>           DIGI IFT PRO</p><p>Condition<span style=\"white-space:pre\">	</span>    New</p><p>Warranty<span style=\"white-space:pre\">	</span>     2 YEARS</p><p>Weight<span style=\"white-space:pre\">	</span>             1.5kgs</p><p>Output<span style=\"white-space:pre\">	</span>              2500 Hz Sine wave</p><p>Size(cm)<span style=\"white-space:pre\">	</span>      22.5x21x7.5</p><p>Brand<span style=\"white-space:pre\">	</span>BMS</p>', '0000-00-00 00:00:00', 'active', '2022-11-22 04:03:13', '2022-11-22 04:11:08'),
(6, 'Electrotheraphy products', 'http://niresh.oceansoftwares.in/bms/public/product_details/cp-wooden-chair1669201891-cp-wooden-chair', 'http://niresh.oceansoftwares.in/bms/public/storage/photos/1/digi-ift-programmable-500x500 (1).jpg,http://niresh.oceansoftwares.in/bms/public/storage/photos/1/offer1.PNG', '<p>asdaasdsdfsvsvvcdddd</p>', '0000-00-00 00:00:00', 'active', '2022-12-01 06:18:27', '2022-12-01 06:18:27'),
(7, 'testing', 'http://niresh.oceansoftwares.in/bms/public/product_details/cp-wooden-chair1669201891-cp-wooden-chair', 'http://niresh.oceansoftwares.in/bms/public/storage/photos/1/digi-ift-programmable-500x500 (1).jpg,http://niresh.oceansoftwares.in/bms/public/storage/photos/1/offer 3.PNG', '<p>abcd</p>', '0000-00-00 00:00:00', 'active', '2022-12-01 06:20:24', '2022-12-01 06:20:24');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_status` enum('Pending','Approved') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `order_id`, `customer_id`, `transaction_id`, `message`, `transaction_date`, `transaction_status`, `created_at`, `updated_at`) VALUES
(1, 14, 1, 'pay_JFETD9gJDqNC0p', 'Transaction', '2022-04-04 09:38:35', 'Pending', '2022-04-04 04:08:17', '2022-04-04 04:08:35'),
(2, 15, 1, 'pay_JFGYtWvkR4nDhp', 'Transaction', '2022-04-04 11:41:21', 'Approved', '2022-04-04 06:10:56', '2022-04-04 06:11:21'),
(3, 16, 1, '', '', '', 'Pending', '2022-04-04 06:26:27', '2022-04-04 06:26:27'),
(4, 17, 1, '', '', '', 'Pending', '2022-04-04 06:26:38', '2022-04-04 06:26:38'),
(5, 18, 1, '', '', '', 'Pending', '2022-04-04 06:26:47', '2022-04-04 06:26:47'),
(6, 19, 1, '', '', '', 'Approved', '2022-04-04 06:28:11', '2022-04-04 06:28:11'),
(7, 20, 1, 'pay_JFGrJhaztyys3r', 'Transaction', '2022-04-04 11:58:46', 'Pending', '2022-04-04 06:28:32', '2022-04-04 06:28:46'),
(8, 1, 1, 'pay_JFGtcpCWUggkcu', 'Transaction', '2022-04-04 12:00:57', '', '2022-04-04 06:30:43', '2022-04-07 23:49:43'),
(9, 2, 2, '', '', '', '', '2022-04-05 23:33:57', '2022-04-07 06:39:43'),
(10, 3, 2, '', '', '', '', '2022-04-05 23:35:00', '2023-02-07 03:48:09'),
(11, 4, 2, '', '', '', '', '2022-04-05 23:35:28', '2022-04-06 06:56:08'),
(12, 5, 2, '', '', '', '', '2022-04-05 23:35:56', '2022-04-07 06:44:24'),
(13, 6, 2, '', '', '', '', '2022-04-05 23:38:32', '2023-02-07 03:40:23'),
(14, 7, 2, '', '', '', '', '2022-04-05 23:45:05', '2022-04-07 06:44:10'),
(15, 8, 2, '', '', '', '', '2022-04-05 23:51:59', '2022-04-06 06:55:06'),
(16, 9, 2, '', '', '', '', '2022-04-05 23:52:23', '2022-04-06 00:58:29'),
(17, 10, 2, '', '', '', 'Pending', '2022-04-05 23:56:45', '2022-04-06 06:52:19'),
(18, 11, 2, '', '', '', 'Pending', '2022-04-05 23:58:05', '2022-04-05 23:58:05'),
(19, 12, 2, 'pay_JFxPR2ari7Vcb9', 'Transaction', '2022-04-06 05:36:14', 'Pending', '2022-04-06 00:05:47', '2022-04-06 06:54:33'),
(20, 13, 4, 'pay_JG2EZC63XKT66i', 'Transaction', '2022-04-06 10:19:26', 'Pending', '2022-04-06 04:48:50', '2022-04-06 06:53:03'),
(21, 35, 1, '', '', '', 'Pending', '2022-07-25 23:10:13', '2022-07-25 23:10:13'),
(22, 41, 1, '', '', '', 'Pending', '2022-07-26 00:44:41', '2022-07-26 00:44:41'),
(23, 42, 1, '', '', '', 'Pending', '2022-07-26 00:44:52', '2022-07-26 00:44:52'),
(24, 43, 1, '', '', '', 'Pending', '2022-07-26 00:45:03', '2022-07-26 00:45:03'),
(25, 44, 1, '', '', '', 'Pending', '2022-07-26 00:48:15', '2022-07-26 00:48:15'),
(26, 45, 1, '', '', '', 'Pending', '2022-07-26 01:24:30', '2022-07-26 01:24:30'),
(27, 46, 1, '', '', '', 'Pending', '2022-07-26 01:25:22', '2022-07-26 01:25:22'),
(28, 47, 1, 'pay_JxuAmHCcyDLZKa', 'Transaction', '2022-07-26 07:02:21', 'Approved', '2022-07-26 01:31:29', '2022-07-26 01:32:21'),
(29, 48, 1, '', '', '', 'Pending', '2022-07-26 01:39:34', '2022-07-26 01:39:34'),
(30, 49, 1, '', '', '', 'Pending', '2022-07-26 01:45:25', '2022-07-26 01:45:25'),
(31, 51, 1, '', '', '', 'Pending', '2022-07-26 01:50:06', '2022-07-26 01:50:06'),
(32, 53, 1, '', '', '', 'Pending', '2022-07-26 01:56:34', '2022-07-26 01:56:34'),
(33, 54, 1, 'pay_JxucmVMFgQUO5v', 'Transaction', '2022-07-26 07:28:50', 'Approved', '2022-07-26 01:58:09', '2022-07-26 01:58:50'),
(34, 55, 1, 'pay_Jxuk1Y2sYsHx6f', 'Transaction', '2022-07-26 07:35:41', 'Approved', '2022-07-26 02:04:59', '2022-07-26 02:05:41'),
(35, 56, 1, '', '', '', 'Pending', '2022-07-26 02:14:13', '2022-07-26 02:14:13'),
(36, 57, 1, 'pay_JxuvRWo8CGPYkK', 'Transaction', '2022-07-26 07:46:31', 'Approved', '2022-07-26 02:15:23', '2022-07-26 02:16:31'),
(37, 58, 1, '', '', '', 'Pending', '2022-07-26 03:34:41', '2022-07-26 03:34:41'),
(38, 60, 1, 'pay_JxwKpNGnrnydxS', 'Transaction', '2022-07-26 09:09:14', 'Approved', '2022-07-26 03:37:18', '2022-07-26 03:39:14'),
(39, 61, 1, '', '', '', 'Pending', '2022-07-26 03:42:49', '2022-07-26 03:42:49'),
(40, 62, 1, 'pay_JxwQPd8Oua6mfq', 'Transaction', '2022-07-26 09:14:32', 'Approved', '2022-07-26 03:43:24', '2022-07-26 03:44:32'),
(41, 63, 1, '', '', '', 'Pending', '2022-07-26 03:48:40', '2022-07-26 03:48:40'),
(42, 64, 1, 'pay_JxwVxt1kUWU5nO', 'Transaction', '2022-07-26 09:19:46', 'Approved', '2022-07-26 03:48:58', '2022-07-26 03:49:46'),
(43, 65, 1, 'pay_Jxwkplfn0VUQs2', 'Transaction', '2022-07-26 09:33:53', 'Approved', '2022-07-26 04:03:04', '2022-07-26 04:03:53'),
(44, 66, 1, '', '', '', 'Pending', '2022-07-26 04:04:30', '2022-07-26 04:04:30'),
(45, 67, 1, 'pay_JxwmWGgLxwNg68', 'Transaction', '2022-07-26 09:35:29', 'Approved', '2022-07-26 04:04:54', '2022-07-26 04:05:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` int(11) DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `scountry` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spostcode` int(11) DEFAULT NULL,
  `sstate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `saddress` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `photo`, `phone`, `status`, `country`, `role`, `type`, `city`, `postcode`, `state`, `address`, `scountry`, `scity`, `spostcode`, `sstate`, `saddress`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'vasanthi@oceansoftwares.in', NULL, '$2y$10$iKHnr27TU87ZrgLER.DmMeQe.9g3yJPy4YoYdcciMXWUeXcq8jode', '/storage/photos/1/2048px-Unofficial_JavaScript_logo_2.svg.png', '0123456798', 'active', NULL, NULL, '', NULL, NULL, NULL, 'sdfsddsf', NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-01 03:37:13', '2022-07-01 00:09:34'),
(2, 'kani', 'kani@oceansoftwares.in', NULL, '$2y$10$bfOV7dd5r5vAjt1DVJk7X.nNqbFR4bUqsCkpu0zJpot/weQJAnNju', '/storage/photos/1/c8b123eaeb46f366eca0f608b6c45d07.jpg', '9566275091', 'inactive', NULL, NULL, '', NULL, NULL, NULL, 'Anakaputhur', NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-01 04:32:11', '2022-04-01 04:32:11'),
(3, 'mohammed ibrahim', 'mohammedibrahim@oceansoftwares.in', NULL, '$2y$10$MtnwWgqx.5/i8qmKkXQdPOR0qyfgvEvx3xArMb.dWCKYo96yAmSsW', '/storage/photos/1/2048px-Unofficial_JavaScript_logo_2.svg.png', '1111111111', 'active', NULL, NULL, '', NULL, NULL, NULL, 'ghfghfghf', NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-04 01:58:49', '2022-04-04 01:58:49'),
(5, 'Sandy', 'sandy@gmail.com', NULL, '$2y$10$UYxQZHZPiibB5pxUsbky1utK5WM/x4ys9fyyLVXXk3rldRzvKB4fi', '/storage/photos/1/banner-2.png', '1234567890', 'active', NULL, NULL, '', NULL, NULL, NULL, 'demo', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-10 07:15:33', '2022-06-10 07:15:33'),
(6, 'demo', 'demo@gmail.com', NULL, '$2y$10$yXsDRyoaJCr7GkAR4V4rLek0MwCTb9QoV/3NygroI13H26vsX1zOy', '/storage/photos/1/banner-2 (1).png', '0123456789', 'active', NULL, NULL, '', NULL, NULL, NULL, 'demo', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-10 07:24:05', '2022-06-10 07:24:05'),
(7, 'sample', 'demo1@gmail.com', NULL, '$2y$10$83G7zMq26Zg7PrXuhNEACebN1oTdQY51wFNsPj9fe/TIJ2W.cegQ2', '/storage/photos/1/bulk-foundation-cream-500x500.jpg', '13216547890', 'inactive', NULL, NULL, '', NULL, NULL, NULL, 'demo1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-10 07:29:17', '2022-06-10 07:29:17'),
(9, 'sample', 'demostore@gmail.com', NULL, '$2y$10$pasGaVGsF5Yj/z3kAvJPWu4C13Ly650R7TOhhMGD/jEe7nDX2O7Ge', '/storage/photos/1/face-cream-jar-12840459 (1).jpg', '0123456789', 'inactive', NULL, NULL, '', NULL, NULL, NULL, 'ffdfassadasd', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-29 04:51:02', '2022-06-29 04:51:02'),
(16, 'sandy', 'sandy1@gmail.com', NULL, '$2y$10$RGQfE5pzMTEbHqXSEtMgUuEFCoOktxwzZot90KrEWMyAaguVEvKo6', '/storage/photos/1/61eDXs9QFNL._SL1500_.jpg', '012345679', 'inactive', NULL, NULL, '', NULL, NULL, NULL, 'welcome', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-29 06:14:19', '2022-06-29 06:14:19'),
(17, 'veera', 'veera@gmail.com', NULL, '$2y$10$LuF//xeRPcTcAysQN4UQJOMFx3/l.6ghuw/98BE1vuIjFUavXbrdS', '/storage/photos/1/efc7756bdde2ea05e74dbb07855e55a6acc60c75_high_definition_compact_powder_artdeco_4104_image-image_product_1629828053_1.jpg', '0123456789', 'active', NULL, NULL, '', NULL, NULL, NULL, 'sdasd', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-01 00:08:48', '2022-07-01 00:08:48'),
(21, 'ocean', 'jagadeshm23jd@gmail.com', NULL, '$2y$10$fCiLDLmf0t0YmeXi5kjlyOyzUX9cXeRPYPq1P7FdghQ0bhvs4XRlu', '/storage/photos/1/banner-4.png', '345678988', 'active', NULL, NULL, '', NULL, NULL, NULL, 'dewefrerfg FDVCXZ', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-30 07:09:34', '2022-07-30 07:09:34'),
(24, 'Rahul bhai', 'rahulbhai@gmail.com', NULL, '$2y$10$p8kF67dG.RR1uUAAlGLXKuZ6zcJUAfEIv28iREjHbjW/d8jVNO5hy', '/storage/photos/1/banner-2 (1).png', '3456765234', 'active', NULL, NULL, '', NULL, NULL, NULL, '3wdszxcvgfdsx', NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 03:57:05', '2022-08-08 03:57:05'),
(26, 'customer1', 'customer123@gmail.com', NULL, '$2y$10$FITHoI19qYecKZB88U4/Ru4S5eKOA3OTwcW1c.mXvi.PrRhfIw7Jq', '/storage/photos/1/61eDXs9QFNL._SL1500_.jpg', '56', 'inactive', NULL, NULL, '', NULL, NULL, NULL, 'Mudaliarpet', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-20 22:47:52', '2022-09-20 22:47:52'),
(27, 'customer', 'customer2@gmail.com', NULL, '$2y$10$M6pjHnnib4y.hAV8vZ8qHup4hFWfgeV6nntY196n3FalUymeYEA2m', '/storage/photos/1/banner-1.png', '56', 'active', NULL, NULL, '', NULL, NULL, NULL, 'Mudaliarpet', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-21 01:07:59', '2022-09-21 01:07:59'),
(28, 'demo2', 'demo123@gmail.com', NULL, '$2y$10$VUUnMJc5Y5yr83UM1D6JyuvaxGZHFbEkrELnHjJX/b7lJfwWOUQ2q', '/storage/photos/1/2048px-Unofficial_JavaScript_logo_2.svg.png', '9288283838', 'active', NULL, NULL, '', NULL, NULL, NULL, 'chennai', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-21 07:52:28', '2022-09-21 07:52:28'),
(29, 'vendor3', 'vendor8@gmail.com', NULL, '$2y$10$LlIvpB.ZAPXYR5GHXKhkKu2wawLVyliwzttbnVKY6f1yMfJvcsnui', '/storage/photos/1/2048px-Unofficial_JavaScript_logo_2.svg.png', '9288283838', 'active', NULL, 'vendor', '', NULL, NULL, NULL, 'chennai', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-22 02:06:35', '2022-09-22 02:06:35'),
(30, 'demo123@gmail.com', 'customer3@gmail.com', NULL, '$2y$10$P.XlkHARSIAnKkmXfJqXsuCzviwfIyQ5aPY/F4L.36BulTgfKMo1W', '/storage/photos/1/New_Products/face_wash.png', '4', 'active', NULL, 'user', '', NULL, NULL, NULL, 'chennai', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-22 02:11:43', '2022-09-22 02:11:43'),
(31, 'Rahul', 'rahulkv@gmail.com', NULL, '$2y$10$txZ.2Ty22tnSQxnDqVeAAu3K6VKiOEau7OTOVvnD771xd1mTpZoRK', '/storage/photos/1/banner-1.png', '987654321', 'active', NULL, 'user', '', NULL, NULL, NULL, 'chennai', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-06 08:06:18', '2022-10-06 08:06:18'),
(32, 'vasanthi', 'vasajnthi@oceansoftwares.in', NULL, '$2y$10$.6HcicVdJS/JkDUlccs2auqkAZDjBMYdxXtFqQJrr.S.m.E2oL2xm', NULL, NULL, 'active', NULL, 'customer', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-31 04:03:16', '2022-10-31 04:03:16'),
(34, 'raghul', 'raghul@oceansoftwares.in', NULL, '$2y$10$pRgmZCyrhgXBZ2Hti6Mi1ueisC..YFjFTBjEoV3ZkAeCcdFGWApni', NULL, NULL, 'active', NULL, 'customer', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-08 02:01:05', '2022-11-08 02:01:05'),
(35, 'Jayasuriya S', 'jayasuriya@oceansoftwares.in', NULL, '$2y$10$BVrhPqPo8QYbe2bAy9JUnO/xZJqFFmdPgFsYyd7TAfdvhWI/zg3bi', NULL, NULL, 'active', NULL, 'customer', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-10 01:08:22', '2022-11-10 01:08:22'),
(36, 'Rahul', 'kvraghul2018@gmail.com', NULL, '$2y$10$tYlwXO2Y5WltOU4f4S32G.jXeLcpTlzgkRm0DNpTlWfCNqk7NQWX2', NULL, NULL, 'active', NULL, 'customer', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-18 00:05:14', '2022-11-18 00:05:14'),
(37, 'vasa', 'vasanthi@os.in', NULL, '$2y$10$FLb1JJUtyBlHr8ZN.omvKuUoEWjyirlex2uwxDzwXG9P.rkwV21qa', NULL, NULL, 'active', NULL, 'customer', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-20 23:14:06', '2022-11-20 23:14:06'),
(38, 'testing', 'test@oceansoftwares.in', NULL, '$2y$10$dqTdXGre0n2XxEcuvDAxe.wZmL22jTpbEiQfFL6NS3wXDZl1jeTAG', NULL, NULL, 'active', NULL, 'customer', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-21 01:24:13', '2022-11-21 01:24:13'),
(39, 'testing 1', 'test@gmail.com', NULL, '$2y$10$5LudNHW1VF1oR1cwx1Taa.c3bb37XhT9wMkPN1wt0AWaZU0Exyr.i', NULL, NULL, 'active', NULL, 'customer', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-21 01:25:33', '2022-11-21 01:25:33'),
(40, 'test2', 'test2@gmail.com', NULL, '$2y$10$SvYxBSEGgfqHQeg4luOxoOWsZOTwb44W1cY4kdlrgI.h9zXONS6vC', NULL, NULL, 'active', NULL, 'customer', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-21 01:27:02', '2022-11-21 01:27:02'),
(41, 'test3', 'test3@gmail.com', NULL, '$2y$10$.NFJ5IHCtvqSEt9YZKgauORDvXSz0Sbm5JKMXZ6iNX7wL6cbCldcK', NULL, NULL, 'active', NULL, 'customer', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-21 01:27:43', '2022-11-21 01:27:43'),
(42, 'test4', 'test4@gmail.com', NULL, '$2y$10$qSlVyqaWer272sPtw6bQGOXHrHciZUfNBee5ctAln8m7dtUTR/w8.', NULL, NULL, 'active', NULL, 'customer', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-21 01:29:30', '2022-11-21 01:29:30'),
(43, 'test5', 'test5@gmail.com', NULL, '$2y$10$pAxbKGN7/z.xe6lu889A.exmqrBYTmttKAPDhf1wlBBB7WWUJUqlq', NULL, NULL, 'active', NULL, 'customer', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-21 01:30:13', '2022-11-21 01:30:13'),
(44, 'ABC', 'abc@gmail.com', NULL, '$2y$10$neHPtA0/lCAWAeCxNRJ.KOsdtssZzjosp6q4dRCQn.f21ArSh/7Yu', NULL, '1234567890', 'active', NULL, 'customer', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-23 05:48:40', '2022-11-23 05:48:40'),
(45, 'vasa', 'vasan@gmail.com', NULL, '$2y$10$9b40Hl7nndfxE1eAJxQvuOwM7GjN/hgt/Nvp9o8OnBLibeNTro51m', NULL, '134567890', 'active', NULL, 'customer', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-24 07:28:11', '2022-11-24 07:28:11'),
(46, 'vasa', 'vasanthi', NULL, '$2y$10$NGQGf0BsWAPAbBTYW04P0.P3wRVIM5QJjg3Jsq53CaAobcwwkDiZi', NULL, 'vasa', 'active', NULL, 'customer', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-24 07:31:32', '2022-11-24 07:31:32'),
(47, '123', '123', NULL, '$2y$10$90jwvczKAwl4yb7xJklioOARz7YGgclHNsuzmzx03yDDUYEXPP60C', NULL, '123', 'active', NULL, 'customer', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-24 07:34:54', '2022-11-24 07:34:54'),
(48, '123', '1234', NULL, '$2y$10$UJyZy8GinMjOWBZHURT2wOm33vp8Ice4Lz3SYWrlRGU0zjhIxxCtG', NULL, '123', 'active', NULL, 'customer', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-24 07:35:21', '2022-11-24 07:35:21'),
(49, '1234', '12345', NULL, '$2y$10$BryFRlWbYUR/CIAX5xsrCeJKnMunOFUAnnFN0fbkr0bP79copqvlG', NULL, '1234', 'active', NULL, 'customer', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-24 07:39:28', '2022-11-24 07:39:28'),
(52, 'user', 'user1@gmail.com', NULL, '$2y$10$xUxiDCBpxQl9U5sYBfiYVOukib85urw.h/esveIPQinRc5ZdubKg6', NULL, '987654321', 'active', NULL, 'User', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-08 04:58:51', '2022-12-08 04:59:52'),
(53, 'Admin', 'admin123@gmail.com', NULL, '$2y$10$bZFcZTcYVBl3t96noUF1M.qRBInj/DJp5Pjozsfw2ixTE9/kpNFk6', NULL, '987654321', 'active', NULL, 'Admin', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-08 04:59:35', '2022-12-08 04:59:35'),
(54, 'Super Admin', 'superadmin@gmail.com', NULL, '$2y$10$HvaB4TbFmtMybAhffiiCa.n.4wDeOD4VafDet0MnPzwUXF9OTT4Oi', NULL, '987654321', 'active', NULL, 'Super Admin', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-08 05:16:24', '2022-12-08 05:16:24'),
(55, 'vasanthi', 'vasanthi@gmail.com', NULL, '$2y$10$0/f.9G/kx5HR7vHhLndpFe.iWAF9jSieujaLco5GaznDm/y3UB/N2', NULL, NULL, 'active', NULL, 'customer', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-06 07:51:42', '2023-01-06 07:51:42'),
(56, 'ddd', 'dd@gmail.com', NULL, '$2y$10$rNu4EcFwjKmWd520Ai1NYOMy1v.TZbYdtA7Vp.37S1mPvSal2Zcce', NULL, 'dd', 'active', NULL, 'customer', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-27 02:57:27', '2023-01-27 02:57:27');

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` int(11) DEFAULT NULL,
  `bankname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_holder_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_number` bigint(20) UNSIGNED NOT NULL,
  `ifsc_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pan_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('inactive','active') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`id`, `vendor_id`, `vendor_name`, `shop_name`, `date_of_birth`, `gender`, `email`, `mobile_number`, `website`, `logo`, `address`, `pincode`, `bankname`, `branch`, `account_holder_name`, `account_number`, `ifsc_code`, `tax_name`, `tax_number`, `pan_number`, `user_name`, `password`, `status`, `description`, `created_at`, `updated_at`) VALUES
(1, 'VC-00001', 'kani', 'hi', '', '', 'kani@oceansoftwares.in', '9566275091', 'https://www.oceansoftwares.com/', '/storage/photos/1/ECommerce/download (3).jpg', 'chennia', 600083, 'IOB', 'Pammal', 'kani', 16401000029916, 'IOBA0000164', 'GST-1', '256', '2297545679', 'surya@gmail.com', 'admin@123', 'inactive', '', '2022-04-02 03:07:04', '2022-06-08 03:59:33'),
(2, 'VC-00002', 'sandy surya', '', '', '', 'surya@gmail.com', '9566275091', 'https://www.oceansoftwares.com/', '/storage/photos/1/Banner/1618419306314.jpg', 'Address', 600083, 'IOB', 'Pammal', 'surya', 16401000029916, 'IOBA0000164', 'SMSN', '256', '2297545679', '', '', 'active', '', '2022-04-02 04:15:11', '2022-04-02 04:15:11'),
(3, 'VC-00003', 'Raghu', '', '', '', 'ragu@oceansoftwares.in', '9566275091', 'https://www.oceansoftwares.com/', '/storage/photos/1/Banner/istockphoto-1191990133-170667a.jpg', 'Address', 600083, 'IOB', 'Pammal', 'raghu', 16401000087671, 'IOBA0000164', 'GST-1', '256', '2297545679', '', '', 'active', '', '2022-04-02 04:18:17', '2022-04-02 04:18:17'),
(4, 'VC-00004', 'testing', 'demo', '2022-06-29', 'male', 'test@gmail.com', '0123465789', 'http://127.0.0.1:8000/vendors/create', '/storage/photos/1/61eDXs9QFNL._SL1500_.jpg', 'asdasd', 620001, 'asdas', 'asdsad', 'sadasd', 34234234234, 'dsfsd324234', 'fdasfds', '3432423', '32f23r233', 'test@gmail.com', 'admin!@#', 'active', '<p>welcome</p>', '2022-06-28 07:17:47', '2022-06-29 04:25:36'),
(8, 'VC-00005', 'sample', 'demo store', '2022-06-30', 'male', 'demostore@gmail.com', '0123456789', 'http://127.0.0.1:8000/vendors/create', '/storage/photos/1/face-cream-jar-12840459 (1).jpg', 'ffdfassadasd', 123456, 'asdsa', 'asdas', 'asdas', 23423423423423, 'asxd3433', 'dsas', '23432423423', 'asdfas34234', 'demostore@gmail.com', 'admin@123', 'active', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '2022-06-29 04:51:02', '2022-06-29 04:51:02'),
(15, 'VC-00006', 'sandy', 's', '2022-06-28', 'male', 'sandy@gmail.com', '012345679', 'http://127.0.0.1:8000/vendors/create', '/storage/photos/1/61eDXs9QFNL._SL1500_.jpg', 'welcome', 6200001, 'sadsad', 'sdsa', 'asdsad', 1231231231231, 'dsf32423', 'asdas', '213123123213', 'asd12323123', 'sandy1@gmail.com', 'admin@123', 'active', '<div class=\"wrapper\">\r\n<div id=\"myDynamicModal\" class=\"modal fade in\" data-backdrop=\"static\" data-keyboard=\"false\">\r\n<div class=\"modal-dialog modal-lg\">\r\n<div class=\"modal-content\">\r\n<div class=\"modal-body\">\r\n<div class=\"nav-tabs-custom\">\r\n<div class=\"tab-content\">\r\n<div id=\"description\" class=\"tab-pane active\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2022-06-29 06:14:19', '2022-06-29 06:14:19'),
(17, 'VC-00007', 'OCEAN', 'hdhhdx', '2022-07-14', 'male', 'jagadesh@oceansoftwares.in', '345678988', 'YRTEWR', '/storage/photos/1/banner-4.png', 'dewefrerfg FDVCXZ', 600001, 'icici', 'chennai', 'OCEAN', 8765432345678, 'ICICI456', 'Tax', '65434567', 'HGF4565', 'admin123@gmail.com', 'admin!@#', 'active', '<p>DFSVSVFDF</p>', '2022-07-30 07:05:10', '2022-07-30 07:05:10'),
(20, 'VC-00008', 'tuhur', 'tuhur', '2022-08-20', 'male', 'jayasuriya@oceansoftwares.in', '3456765234', 'HBCTTGVHB', '/storage/photos/1/banner-2.png', '23sdfbvfv', 600020, 'hdfc', 'chennai', 'tuhur', 8765432345678, 'ICICI500', 'Tax-w', '34543223', 'BBHH66', 'jayasuriya@oceansoftwares.in', '123456789', 'active', '<p>ghjiuydfujgf</p>', '2022-07-31 23:05:25', '2022-07-31 23:05:25'),
(21, 'VC-00009', 'Rahul bhai', 'tulia', '2022-08-08', 'male', 'jagadeshm23jd@gmail.com', '3456765234', 'HBCTTGVHB', '/storage/photos/1/banner-2 (1).png', '3wdszxcvgfdsx', 600001, 'sbi', 'kodai', 'Rahul bhai', 7654323456787, 'ICICI1100', 'Tax-w', '34543223', 'HGF4565', 'jagadeshm23jd@gmail.com', '123456789', 'active', '<p><strong><em>qwertyuioiuytrewqasdfghjklkjhgfdsazxcvbnm,mnbvcxz</em></strong></p>', '2022-08-08 03:56:00', '2022-08-08 03:56:00'),
(22, 'VC-000010', 'demo2', 'new', '2022-09-22', 'male', 'demo123@gmail.com', '9288283838', 'TYt', '/storage/photos/1/2048px-Unofficial_JavaScript_logo_2.svg.png', 'chennai', 600053, 'ry', 'dhf', 'dddd', 3333, '3333', '33', '33', '33', 'demo123@gmail.com', 'demo123', 'inactive', '<p>ddddd</p>', '2022-09-21 07:52:28', '2022-09-21 07:52:28'),
(23, 'VC-000011', 'vendor3', 'RR', '2022-09-16', 'male', 'vendor8@gmail.com', '9288283838', 'TYt', '/storage/photos/1/2048px-Unofficial_JavaScript_logo_2.svg.png', 'chennai', 600053, 'wre', 'ryry', 'sdf', 446464, '3455', '4545', '433235', '464664', 'vendor8@gmail.com', 'vendor8', 'active', '<p>dddddddd</p>', '2022-09-22 02:06:15', '2022-09-22 02:06:15'),
(24, 'VC-000011', 'vendor3', 'RR', '2022-09-16', 'male', 'vendor8@gmail.com', '9288283838', 'TYt', '/storage/photos/1/2048px-Unofficial_JavaScript_logo_2.svg.png', 'chennai', 600053, 'wre', 'ryry', 'sdf', 446464, '3455', '4545', '433235', '464664', 'vendor8@gmail.com', 'vendor8', 'active', '<p>dddddddd</p>', '2022-09-22 02:06:35', '2022-09-22 02:06:35');

-- --------------------------------------------------------

--
-- Table structure for table `vendoritem`
--

CREATE TABLE `vendoritem` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_item_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_id` bigint(20) UNSIGNED NOT NULL,
  `vendor_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buying_price` int(11) DEFAULT NULL,
  `tax_rate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendoritem`
--

INSERT INTO `vendoritem` (`id`, `vendor_item_id`, `vendor_id`, `vendor_name`, `product_id`, `product_name`, `buying_price`, `tax_rate`, `created_at`, `updated_at`) VALUES
(1, 'VI-00001', 2, 'sandy surya', 5, 'Tulia Girl Beauty Nude Edition 18 Color Eyeshadow and Rose Gold Edition 18 Color Matte and Shiny Pigmented Beauty Eyeshadow Palette', 0, '15', '2022-04-02 04:20:22', '2022-04-02 04:20:22'),
(2, 'VI-00001', 2, 'sandy surya', 3, 'Tulia Skin Perfect 30+ Anti-Fine Lines Cream', 0, '15', '2022-04-02 04:20:22', '2022-04-02 04:20:22'),
(3, 'VI-00001', 2, 'sandy surya', 5, 'Tulia Girl Beauty Nude Edition 18 Color Eyeshadow and Rose Gold Edition 18 Color Matte and Shiny Pigmented Beauty Eyeshadow Palette', 0, '15', '2022-04-02 04:20:46', '2022-04-02 04:20:46'),
(4, 'VI-00002', 2, 'sandy surya', 4, 'Tulia Brown Perfume Eau de Cologne Classic Original', 0, '10', '2022-04-02 04:22:00', '2022-04-02 04:22:00'),
(5, 'VI-00003', 15, 'sandy', 5, 'Tulia Girl Beauty Nude Edition 18 Color Eyeshadow and Rose Gold Edition 18 Color Matte and Shiny Pigmented Beauty Eyeshadow Palette', 0, '15', '2022-07-11 05:55:18', '2022-07-11 05:55:18'),
(6, 'VI-00003', 15, 'sandy', 5, 'Tulia Girl Beauty Nude Edition 18 Color Eyeshadow and Rose Gold Edition 18 Color Matte and Shiny Pigmented Beauty Eyeshadow Palette', 0, '15', '2022-07-11 05:55:28', '2022-07-11 05:55:28'),
(7, 'VI-00003', 8, 'sample', 5, 'Tulia Girl Beauty Nude Edition 18 Color Eyeshadow and Rose Gold Edition 18 Color Matte and Shiny Pigmented Beauty Eyeshadow Palette', 0, '15', '2022-07-11 05:56:06', '2022-07-11 05:56:06'),
(8, 'VI-00004', 2, 'sandy surya', 45, '', 0, '', '2022-09-22 05:14:45', '2022-09-22 05:14:45'),
(9, 'VI-00004', 2, 'sandy surya', 45, '', 0, '', '2022-09-22 05:15:32', '2022-09-22 05:15:32'),
(10, 'VI-00004', 2, 'sandy surya', 0, '', 0, '', '2022-09-22 05:15:32', '2022-09-22 05:15:32'),
(11, 'VI-00004', 2, 'sandy surya', 0, '', 0, '', '2022-09-22 05:15:32', '2022-09-22 05:15:32'),
(12, 'VI-00004', 2, 'sandy surya', 12, '', 0, '', '2022-09-22 05:15:32', '2022-09-22 05:15:32');

-- --------------------------------------------------------

--
-- Table structure for table `vendoritem_attribute`
--

CREATE TABLE `vendoritem_attribute` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_item_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buying_price` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendoritem_attribute`
--

INSERT INTO `vendoritem_attribute` (`id`, `vendor_item_id`, `attribute_id`, `product_id`, `attribute_name`, `attribute_value`, `quantity`, `status`, `buying_price`, `created_at`, `updated_at`) VALUES
(1, 1, 15, 5, 'Colour', 'Orange Blossom', 12, 'active', 3000, '2022-04-02 04:20:22', '2022-04-02 04:20:22'),
(2, 3, 15, 5, 'Colour', 'Orange Blossom', 12, 'active', 3000, '2022-04-02 04:20:46', '2022-04-02 04:20:46'),
(3, 4, 6, 4, 'Colour', 'Pink Matte', 5, 'active', 400, '2022-04-02 04:22:00', '2022-04-02 04:22:00'),
(4, 4, 7, 4, 'Colour', 'Pink Blush', 5, 'active', 400, '2022-04-02 04:22:00', '2022-04-02 04:22:00'),
(5, 4, 7, 4, 'Colour', 'Wine Voyage', 5, 'active', 450, '2022-04-02 04:22:00', '2022-04-02 04:22:00');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_views` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_visits` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `country`, `ip_address`, `hits`, `page_views`, `last_visits`, `created_at`, `updated_at`) VALUES
(1, 'IN', '115.96.190.243', '12', '161', '20-08-2022', '2022-07-30 02:07:41', '2022-08-20 07:42:03'),
(2, 'IN', '103.89.74.49', '10', '19', '08-02-2023', '2022-07-30 02:25:27', '2023-02-08 01:42:55'),
(3, 'IN', '171.78.140.109', '19', '270', '26-08-2022', '2022-07-30 02:44:19', '2022-08-26 07:48:28'),
(4, 'IN', '115.96.190.44', '2', '7', '08-08-2022', '2022-07-30 03:37:33', '2022-08-08 02:35:28'),
(5, 'IN', '103.44.50.164', '1', '1', '30-07-2022', '2022-07-30 04:20:47', '2022-07-30 04:20:47'),
(6, 'SG', '51.222.253.17', '6', '6', '05-02-2023', '2022-07-30 06:08:17', '2023-02-05 16:58:00'),
(7, 'SG', '51.222.253.2', '5', '8', '07-02-2023', '2022-07-30 06:09:14', '2023-02-07 04:58:19'),
(8, 'SG', '51.222.253.1', '5', '7', '20-08-2022', '2022-07-30 06:14:49', '2022-08-19 23:49:31'),
(9, 'SG', '51.222.253.14', '2', '2', '03-02-2023', '2022-07-30 06:17:14', '2023-02-03 14:40:25'),
(10, 'SG', '51.222.253.9', '5', '6', '04-02-2023', '2022-07-30 06:20:24', '2023-02-04 12:30:01'),
(11, 'NL', '185.162.235.157', '1', '1', '30-07-2022', '2022-07-30 07:37:13', '2022-07-30 07:37:13'),
(12, 'US', '157.55.39.38', '1', '1', '30-07-2022', '2022-07-30 12:21:05', '2022-07-30 12:21:05'),
(13, 'US', '185.191.171.3', '3', '3', '27-08-2022', '2022-07-30 14:45:05', '2022-08-27 03:25:06'),
(14, 'IN', '49.205.87.248', '1', '52', '31-07-2022', '2022-07-30 21:21:49', '2022-07-31 11:42:59'),
(15, 'US', '185.191.171.36', '3', '3', '02-09-2022', '2022-07-30 21:31:55', '2022-09-02 08:57:54'),
(16, 'IN', '157.51.90.203', '1', '2', '31-07-2022', '2022-07-30 23:15:01', '2022-07-30 23:15:42'),
(17, 'IN', '143.244.143.44', '2', '3', '02-08-2022', '2022-07-30 23:45:30', '2022-08-02 07:39:35'),
(18, 'US', '185.191.171.18', '3', '3', '24-08-2022', '2022-07-31 02:43:22', '2022-08-24 06:48:42'),
(19, 'US', '185.191.171.19', '2', '2', '24-08-2022', '2022-07-31 15:49:45', '2022-08-23 20:43:19'),
(20, 'IN', '157.51.82.63', '1', '1', '01-08-2022', '2022-07-31 21:57:29', '2022-07-31 21:57:29'),
(21, 'SG', '51.222.253.7', '3', '4', '21-08-2022', '2022-08-01 03:14:50', '2022-08-21 14:04:35'),
(22, 'SG', '51.222.253.15', '6', '7', '07-02-2023', '2022-08-01 04:33:59', '2023-02-06 20:55:10'),
(23, 'IN', '157.49.205.43', '1', '3', '01-08-2022', '2022-08-01 05:37:15', '2022-08-01 05:54:33'),
(24, 'SG', '51.222.253.8', '5', '5', '06-02-2023', '2022-08-01 05:48:12', '2023-02-06 03:35:07'),
(25, 'SG', '51.222.253.10', '5', '6', '07-02-2023', '2022-08-01 05:50:34', '2023-02-06 22:26:10'),
(26, 'SG', '51.222.253.18', '2', '3', '19-08-2022', '2022-08-01 05:52:55', '2022-08-19 16:26:01'),
(27, 'SG', '51.222.253.20', '3', '3', '07-02-2023', '2022-08-01 05:57:24', '2023-02-06 22:25:33'),
(28, 'SG', '51.222.253.11', '6', '6', '07-02-2023', '2022-08-01 06:02:59', '2023-02-07 08:38:58'),
(29, 'SG', '51.222.253.3', '5', '6', '07-02-2023', '2022-08-01 06:05:19', '2023-02-07 04:58:47'),
(30, 'SG', '51.222.253.12', '7', '9', '07-02-2023', '2022-08-01 06:07:48', '2023-02-07 08:39:16'),
(31, 'SG', '51.222.253.16', '5', '6', '05-02-2023', '2022-08-01 06:38:37', '2023-02-05 16:57:28'),
(32, 'SG', '51.222.253.6', '3', '4', '06-02-2023', '2022-08-01 06:41:13', '2023-02-05 23:58:08'),
(33, 'IN', '49.204.121.97', '3', '5', '04-08-2022', '2022-08-01 10:00:08', '2022-08-04 12:08:05'),
(34, 'US', '207.46.13.13', '4', '6', '10-08-2022', '2022-08-01 21:05:56', '2022-08-10 16:31:27'),
(35, 'SG', '51.222.253.4', '6', '7', '05-02-2023', '2022-08-02 03:05:39', '2023-02-05 16:23:36'),
(36, 'IN', '117.193.217.217', '1', '4', '02-08-2022', '2022-08-02 06:08:33', '2022-08-02 06:11:16'),
(37, 'IN', '106.198.17.101', '1', '9', '02-08-2022', '2022-08-02 06:34:26', '2022-08-02 06:51:40'),
(38, 'IN', '157.49.82.251', '1', '1', '02-08-2022', '2022-08-02 11:29:50', '2022-08-02 11:29:50'),
(39, 'IN', '157.49.82.251', '1', '2', '02-08-2022', '2022-08-02 11:29:50', '2022-08-02 11:30:59'),
(40, 'IN', '157.51.101.141', '1', '1', '02-08-2022', '2022-08-02 11:29:54', '2022-08-02 11:29:54'),
(41, 'IN', '157.49.87.95', '1', '1', '02-08-2022', '2022-08-02 13:07:36', '2022-08-02 13:07:36'),
(42, 'US', '207.46.13.95', '2', '2', '06-08-2022', '2022-08-03 02:26:20', '2022-08-06 02:18:36'),
(43, 'IN', '157.51.125.60', '1', '1', '03-08-2022', '2022-08-03 04:30:26', '2022-08-03 04:30:26'),
(44, 'IN', '61.3.193.85', '1', '5', '03-08-2022', '2022-08-03 04:45:44', '2022-08-03 07:06:57'),
(45, 'IN', '223.228.184.130', '1', '1', '03-08-2022', '2022-08-03 06:46:21', '2022-08-03 06:46:21'),
(46, 'IN', '183.82.24.47', '1', '1', '03-08-2022', '2022-08-03 06:48:41', '2022-08-03 06:48:41'),
(47, 'IN', '182.65.114.76', '1', '1', '03-08-2022', '2022-08-03 06:49:48', '2022-08-03 06:49:48'),
(48, 'US', '142.93.184.220', '1', '1', '03-08-2022', '2022-08-03 12:41:18', '2022-08-03 12:41:18'),
(49, 'IN', '223.228.187.178', '1', '2', '04-08-2022', '2022-08-03 23:08:42', '2022-08-03 23:09:07'),
(50, 'IN', '157.51.99.79', '1', '5', '04-08-2022', '2022-08-04 00:39:48', '2022-08-04 00:42:01'),
(51, 'IN', '157.51.122.219', '1', '1', '04-08-2022', '2022-08-04 01:24:14', '2022-08-04 01:24:14'),
(52, 'IN', '106.198.31.19', '1', '1', '04-08-2022', '2022-08-04 02:16:55', '2022-08-04 02:16:55'),
(53, 'US', '164.90.140.48', '1', '1', '04-08-2022', '2022-08-04 05:12:49', '2022-08-04 05:12:49'),
(54, 'IN', '157.51.168.57', '1', '1', '04-08-2022', '2022-08-04 11:47:37', '2022-08-04 11:47:37'),
(55, 'IN', '157.51.128.217', '1', '2', '04-08-2022', '2022-08-04 12:56:30', '2022-08-04 13:15:49'),
(56, 'IN', '157.51.86.225', '1', '1', '05-08-2022', '2022-08-04 21:25:12', '2022-08-04 21:25:12'),
(57, 'IN', '157.51.80.129', '1', '1', '05-08-2022', '2022-08-05 03:12:46', '2022-08-05 03:12:46'),
(58, 'US', '205.210.31.16', '1', '1', '05-08-2022', '2022-08-05 12:03:36', '2022-08-05 12:03:36'),
(59, 'IN', '157.51.153.34', '1', '2', '05-08-2022', '2022-08-05 13:59:16', '2022-08-05 14:37:47'),
(60, 'IN', '157.51.91.31', '1', '1', '06-08-2022', '2022-08-05 20:36:33', '2022-08-05 20:36:33'),
(61, 'IN', '157.51.69.185', '1', '2', '06-08-2022', '2022-08-05 21:34:10', '2022-08-05 21:34:39'),
(62, 'GB', '3.8.186.160', '1', '1', '06-08-2022', '2022-08-06 02:09:57', '2022-08-06 02:09:57'),
(63, 'GB', '3.8.186.160', '1', '1', '06-08-2022', '2022-08-06 02:09:57', '2022-08-06 02:09:57'),
(64, 'GB', '3.8.186.160', '1', '4', '06-08-2022', '2022-08-06 02:09:57', '2022-08-06 02:12:46'),
(65, 'US', '157.55.39.5', '1', '1', '07-08-2022', '2022-08-07 16:22:31', '2022-08-07 16:22:31'),
(66, 'IN', '27.62.64.107', '1', '1', '08-08-2022', '2022-08-08 01:23:30', '2022-08-08 01:23:30'),
(67, 'IN', '14.97.173.114', '1', '1', '09-08-2022', '2022-08-09 00:10:13', '2022-08-09 00:10:13'),
(68, 'US', '185.191.171.17', '3', '4', '05-09-2022', '2022-08-09 16:11:56', '2022-09-04 18:36:46'),
(69, 'US', '64.225.61.41', '1', '1', '10-08-2022', '2022-08-10 15:18:10', '2022-08-10 15:18:10'),
(70, 'US', '159.203.120.75', '1', '1', '10-08-2022', '2022-08-10 15:58:00', '2022-08-10 15:58:00'),
(71, 'US', '185.191.171.38', '3', '3', '02-09-2022', '2022-08-11 10:45:43', '2022-09-02 01:27:21'),
(72, 'IN', '49.204.129.59', '3', '3', '14-08-2022', '2022-08-11 11:23:29', '2022-08-13 20:49:41'),
(73, 'US', '185.191.171.6', '2', '2', '13-08-2022', '2022-08-11 14:45:02', '2022-08-13 00:05:05'),
(74, 'US', '185.191.171.45', '2', '2', '20-08-2022', '2022-08-12 12:13:11', '2022-08-20 02:20:06'),
(75, 'US', '185.191.171.14', '2', '2', '24-08-2022', '2022-08-12 13:19:03', '2022-08-24 01:23:04'),
(76, 'US', '185.191.171.2', '2', '2', '03-09-2022', '2022-08-12 13:46:07', '2022-09-03 12:17:40'),
(77, 'US', '185.191.171.26', '2', '4', '20-08-2022', '2022-08-12 16:10:44', '2022-08-20 13:01:09'),
(78, 'US', '185.191.171.39', '5', '6', '03-09-2022', '2022-08-12 16:10:49', '2022-09-03 09:40:53'),
(79, 'US', '185.191.171.40', '2', '2', '02-09-2022', '2022-08-12 19:14:37', '2022-09-02 15:15:11'),
(80, 'US', '185.191.171.43', '1', '1', '13-08-2022', '2022-08-12 19:45:38', '2022-08-12 19:45:38'),
(81, 'US', '185.191.171.4', '3', '5', '02-09-2022', '2022-08-12 23:01:40', '2022-09-02 01:32:32'),
(82, 'IN', '157.49.67.78', '1', '4', '13-08-2022', '2022-08-13 03:31:57', '2022-08-13 07:19:31'),
(83, 'US', '185.191.171.12', '1', '1', '13-08-2022', '2022-08-13 07:00:18', '2022-08-13 07:00:18'),
(84, 'US', '185.191.171.33', '1', '1', '13-08-2022', '2022-08-13 09:24:32', '2022-08-13 09:24:32'),
(85, 'US', '185.191.171.21', '2', '2', '24-08-2022', '2022-08-13 10:10:24', '2022-08-24 06:53:33'),
(86, 'US', '157.55.39.21', '4', '4', '22-08-2022', '2022-08-13 22:02:29', '2022-08-22 05:37:08'),
(87, 'US', '207.46.13.76', '1', '1', '14-08-2022', '2022-08-14 12:41:56', '2022-08-14 12:41:56'),
(88, 'US', '205.210.31.138', '1', '1', '16-08-2022', '2022-08-16 11:47:54', '2022-08-16 11:47:54'),
(89, 'US', '205.210.31.25', '1', '1', '17-08-2022', '2022-08-17 11:09:38', '2022-08-17 11:09:38'),
(90, 'US', '40.77.167.30', '1', '3', '18-08-2022', '2022-08-18 03:05:10', '2022-08-18 18:14:09'),
(91, 'US', '185.191.171.7', '3', '3', '04-09-2022', '2022-08-19 03:02:20', '2022-09-04 02:04:38'),
(92, 'US', '185.191.171.24', '2', '2', '27-08-2022', '2022-08-19 04:54:51', '2022-08-27 05:58:45'),
(93, 'US', '185.191.171.42', '2', '2', '02-09-2022', '2022-08-19 13:09:03', '2022-09-02 11:49:19'),
(94, 'TW', '198.235.24.37', '1', '1', '20-08-2022', '2022-08-19 20:13:15', '2022-08-19 20:13:15'),
(95, 'TW', '198.235.24.177', '1', '1', '20-08-2022', '2022-08-20 04:43:30', '2022-08-20 04:43:30'),
(96, 'SG', '51.222.253.13', '3', '3', '03-02-2023', '2022-08-20 13:49:39', '2023-02-03 10:58:16'),
(97, 'US', '205.210.31.59', '1', '1', '20-08-2022', '2022-08-20 14:53:42', '2022-08-20 14:53:42'),
(98, 'US', '207.46.13.12', '1', '2', '20-08-2022', '2022-08-20 18:08:16', '2022-08-20 18:21:38'),
(99, 'US', '185.191.171.8', '2', '2', '23-08-2022', '2022-08-21 05:53:59', '2022-08-23 14:28:15'),
(100, 'IN', '49.205.80.64', '1', '5', '21-08-2022', '2022-08-21 06:04:05', '2022-08-21 06:04:26'),
(101, 'US', '157.55.39.166', '7', '21', '04-09-2022', '2022-08-22 04:28:16', '2022-09-04 07:04:28'),
(102, 'US', '207.46.13.189', '7', '15', '03-09-2022', '2022-08-22 05:21:16', '2022-09-03 03:24:58'),
(103, 'US', '185.191.171.23', '2', '2', '24-08-2022', '2022-08-23 01:02:49', '2022-08-24 00:17:19'),
(104, 'IN', '115.97.56.176', '2', '2', '25-08-2022', '2022-08-24 03:54:58', '2022-08-24 23:07:48'),
(105, 'US', '40.77.167.72', '11', '26', '04-09-2022', '2022-08-24 04:14:12', '2022-09-04 09:51:07'),
(106, 'US', '185.191.171.15', '3', '4', '03-09-2022', '2022-08-24 05:04:19', '2022-09-03 13:55:38'),
(107, 'US', '185.191.171.35', '1', '1', '24-08-2022', '2022-08-24 07:09:24', '2022-08-24 07:09:24'),
(108, 'FR', '51.158.127.119', '1', '1', '24-08-2022', '2022-08-24 09:31:23', '2022-08-24 09:31:23'),
(109, 'IN', '122.164.52.70', '1', '4', '24-08-2022', '2022-08-24 16:51:06', '2022-08-24 16:52:23'),
(110, 'US', '40.77.167.17', '11', '46', '05-09-2022', '2022-08-26 08:11:24', '2022-09-04 21:48:58'),
(111, 'IN', '157.46.90.29', '1', '1', '27-08-2022', '2022-08-26 20:55:46', '2022-08-26 20:55:46'),
(112, 'US', '207.46.13.67', '9', '57', '04-09-2022', '2022-08-27 00:11:17', '2022-09-04 12:15:56'),
(113, 'DE', '81.209.177.145', '1', '7', '27-08-2022', '2022-08-27 14:23:55', '2022-08-27 15:38:48'),
(114, 'US', '207.46.13.89', '6', '7', '03-09-2022', '2022-08-29 04:53:58', '2022-09-02 22:02:57'),
(115, 'US', '185.191.171.41', '1', '1', '02-09-2022', '2022-09-02 03:50:11', '2022-09-02 03:50:11'),
(116, 'US', '185.191.171.16', '1', '1', '02-09-2022', '2022-09-02 06:06:11', '2022-09-02 06:06:11'),
(117, 'US', '185.191.171.13', '2', '2', '03-09-2022', '2022-09-02 07:26:23', '2022-09-03 06:43:45'),
(118, 'US', '23.100.232.233', '1', '2', '02-09-2022', '2022-09-02 09:43:48', '2022-09-02 15:29:20'),
(119, 'US', '185.191.171.5', '1', '1', '03-09-2022', '2022-09-02 20:56:16', '2022-09-02 20:56:16'),
(120, 'US', '185.191.171.9', '1', '1', '03-09-2022', '2022-09-03 09:32:21', '2022-09-03 09:32:21'),
(121, 'US', '185.191.171.1', '1', '1', '03-09-2022', '2022-09-03 14:43:52', '2022-09-03 14:43:52'),
(122, 'US', '165.227.108.3', '1', '1', '04-09-2022', '2022-09-04 07:02:34', '2022-09-04 07:02:34'),
(123, 'IN', '157.51.0.175', '1', '2', '04-09-2022', '2022-09-04 08:38:39', '2022-09-04 08:38:41'),
(124, 'IN', '103.81.236.65', '1', '9', '04-09-2022', '2022-09-04 08:48:02', '2022-09-04 09:00:04'),
(125, 'US', '185.191.171.11', '1', '1', '04-09-2022', '2022-09-04 10:58:10', '2022-09-04 10:58:10'),
(126, 'FR', '163.172.148.199', '1', '1', '05-09-2022', '2022-09-05 07:00:24', '2022-09-05 07:00:24'),
(127, 'FR', '163.172.148.199', '1', '1', '05-09-2022', '2022-09-05 07:00:24', '2022-09-05 07:00:24'),
(128, 'IN', '182.65.154.45', '5', '71', '06-01-2023', '2023-01-01 23:18:57', '2023-01-06 01:44:34'),
(129, 'IN', '183.82.178.29', '1', '1', '03-01-2023', '2023-01-03 10:23:40', '2023-01-03 10:23:40'),
(130, 'IN', '183.82.178.29', '1', '1', '03-01-2023', '2023-01-03 10:23:40', '2023-01-03 10:23:40'),
(131, 'IN', '183.82.178.29', '1', '1', '03-01-2023', '2023-01-03 10:23:40', '2023-01-03 10:23:40'),
(132, 'IN', '49.204.113.253', '2', '2', '05-01-2023', '2023-01-04 02:14:50', '2023-01-05 00:57:09'),
(133, 'IN', '106.208.83.111', '1', '2', '06-01-2023', '2023-01-05 21:47:02', '2023-01-05 21:47:23'),
(134, 'IN', '49.205.86.109', '1', '6', '06-01-2023', '2023-01-05 23:39:02', '2023-01-06 03:18:34'),
(135, 'IN', '115.97.2.81', '1', '63', '06-01-2023', '2023-01-06 01:04:43', '2023-01-06 08:10:48'),
(136, 'IN', '182.65.137.107', '1', '10', '06-01-2023', '2023-01-06 02:07:38', '2023-01-06 02:20:42'),
(137, 'IN', '171.78.187.197', '9', '538', '20-01-2023', '2023-01-06 03:39:28', '2023-01-20 02:49:51'),
(138, 'IN', '60.243.109.166', '1', '10', '06-01-2023', '2023-01-06 06:03:01', '2023-01-06 06:07:09'),
(139, 'IN', '49.205.83.6', '1', '4', '07-01-2023', '2023-01-07 02:06:56', '2023-01-07 02:13:02'),
(140, 'IN', '49.205.83.136', '1', '49', '07-01-2023', '2023-01-07 06:12:34', '2023-01-07 07:10:01'),
(141, 'IN', '49.205.82.193', '1', '63', '07-01-2023', '2023-01-07 07:11:17', '2023-01-07 07:47:48'),
(142, 'IN', '49.204.115.178', '1', '10', '07-01-2023', '2023-01-07 07:50:25', '2023-01-07 08:08:10'),
(143, 'IN', '49.205.84.38', '1', '33', '07-01-2023', '2023-01-07 08:15:18', '2023-01-07 09:12:59'),
(144, 'IN', '157.51.107.173', '1', '7', '07-01-2023', '2023-01-07 08:24:29', '2023-01-07 08:27:57'),
(145, 'IN', '157.51.99.204', '1', '1', '07-01-2023', '2023-01-07 08:53:00', '2023-01-07 08:53:00'),
(146, 'IN', '152.58.223.181', '1', '1', '07-01-2023', '2023-01-07 12:19:11', '2023-01-07 12:19:11'),
(147, 'IN', '152.58.223.147', '1', '1', '07-01-2023', '2023-01-07 12:28:50', '2023-01-07 12:28:50'),
(148, 'IN', '49.205.80.77', '1', '1', '08-01-2023', '2023-01-07 21:23:58', '2023-01-07 21:23:58'),
(149, 'IN', '49.205.80.77', '1', '5', '08-01-2023', '2023-01-07 21:23:58', '2023-01-07 21:24:52'),
(150, 'IN', '49.204.119.141', '1', '13', '08-01-2023', '2023-01-07 21:26:23', '2023-01-07 21:32:08'),
(151, 'IN', '49.204.139.195', '1', '1', '08-01-2023', '2023-01-07 21:33:27', '2023-01-07 21:33:27'),
(152, 'IN', '49.204.143.61', '1', '1', '08-01-2023', '2023-01-08 01:48:36', '2023-01-08 01:48:36'),
(153, 'IN', '49.204.132.147', '1', '38', '08-01-2023', '2023-01-08 02:41:51', '2023-01-08 02:48:52'),
(154, 'IN', '49.205.81.191', '1', '30', '08-01-2023', '2023-01-08 02:50:44', '2023-01-08 03:18:38'),
(155, 'IN', '49.205.82.40', '1', '10', '08-01-2023', '2023-01-08 03:24:00', '2023-01-08 03:30:04'),
(156, 'IN', '115.96.11.156', '1', '1', '09-01-2023', '2023-01-08 22:49:04', '2023-01-08 22:49:04'),
(157, 'IN', '27.4.127.81', '1', '8', '10-01-2023', '2023-01-09 22:49:45', '2023-01-09 22:54:29'),
(158, 'IN', '115.97.12.98', '1', '2', '10-01-2023', '2023-01-09 23:39:44', '2023-01-09 23:39:45'),
(159, 'TW', '66.249.82.79', '1', '2', '10-01-2023', '2023-01-09 23:40:18', '2023-01-10 02:41:29'),
(160, 'TW', '66.249.82.74', '1', '2', '10-01-2023', '2023-01-09 23:40:18', '2023-01-10 02:41:29'),
(161, 'TW', '66.249.82.69', '1', '4', '10-01-2023', '2023-01-09 23:40:23', '2023-01-10 02:41:44'),
(162, 'US', '66.249.82.94', '1', '3', '10-01-2023', '2023-01-09 23:40:23', '2023-01-09 23:40:31'),
(163, 'CA', '172.255.48.142', '1', '2', '10-01-2023', '2023-01-10 02:40:30', '2023-01-10 02:40:33'),
(164, 'TW', '66.249.82.64', '1', '1', '10-01-2023', '2023-01-10 02:41:34', '2023-01-10 02:41:34'),
(165, 'IN', '27.5.156.172', '1', '1', '11-01-2023', '2023-01-10 23:49:51', '2023-01-10 23:49:51'),
(166, 'IN', '115.97.37.233', '1', '1', '11-01-2023', '2023-01-10 23:55:47', '2023-01-10 23:55:47'),
(167, 'IN', '60.243.57.187', '1', '21', '12-01-2023', '2023-01-12 00:48:39', '2023-01-12 05:24:16'),
(168, 'IN', '49.204.116.225', '1', '2', '12-01-2023', '2023-01-12 05:26:13', '2023-01-12 05:32:54'),
(169, 'IN', '49.205.87.225', '1', '2', '12-01-2023', '2023-01-12 09:11:08', '2023-01-12 09:15:06'),
(170, 'IN', '27.4.150.35', '1', '2', '13-01-2023', '2023-01-12 22:40:26', '2023-01-12 23:15:07'),
(171, 'IN', '60.243.27.245', '1', '10', '18-01-2023', '2023-01-17 22:36:27', '2023-01-17 23:14:10'),
(172, 'IN', '152.58.215.156', '1', '1', '18-01-2023', '2023-01-17 22:51:16', '2023-01-17 22:51:16'),
(173, 'IN', '152.58.215.62', '1', '16', '18-01-2023', '2023-01-17 23:16:28', '2023-01-17 23:26:02'),
(174, 'IN', '152.58.214.238', '1', '2', '18-01-2023', '2023-01-17 23:44:27', '2023-01-17 23:44:30'),
(175, 'IN', '116.73.126.160', '1', '3', '18-01-2023', '2023-01-18 06:38:50', '2023-01-18 06:39:56'),
(176, 'IN', '152.58.213.162', '1', '12', '20-01-2023', '2023-01-19 23:50:55', '2023-01-19 23:55:49'),
(177, 'IN', '152.58.212.237', '1', '2', '20-01-2023', '2023-01-20 00:00:54', '2023-01-20 00:01:16'),
(178, 'IN', '152.58.213.211', '1', '3', '20-01-2023', '2023-01-20 00:45:00', '2023-01-20 00:46:46'),
(179, 'IN', '152.58.213.203', '1', '2', '20-01-2023', '2023-01-20 00:57:31', '2023-01-20 00:58:07'),
(180, 'IN', '152.58.213.221', '1', '3', '20-01-2023', '2023-01-20 01:06:46', '2023-01-20 01:09:58'),
(181, 'IN', '152.58.212.76', '1', '23', '20-01-2023', '2023-01-20 01:31:20', '2023-01-20 01:31:52'),
(182, 'IN', '152.58.213.10', '1', '1', '20-01-2023', '2023-01-20 01:40:19', '2023-01-20 01:40:19'),
(183, 'US', '66.249.82.82', '1', '1', '20-01-2023', '2023-01-20 01:57:52', '2023-01-20 01:57:52'),
(184, 'US', '66.249.82.82', '1', '1', '20-01-2023', '2023-01-20 01:57:52', '2023-01-20 01:57:52'),
(185, 'TW', '66.249.82.72', '1', '1', '20-01-2023', '2023-01-20 01:57:57', '2023-01-20 01:57:57'),
(186, 'US', '66.249.82.92', '1', '2', '20-01-2023', '2023-01-20 01:57:57', '2023-01-20 01:58:05'),
(187, 'TW', '66.249.82.67', '1', '1', '20-01-2023', '2023-01-20 01:58:07', '2023-01-20 01:58:07'),
(188, 'CA', '172.255.48.130', '1', '2', '20-01-2023', '2023-01-20 01:59:22', '2023-01-20 01:59:26'),
(189, 'IN', '27.57.41.145', '7', '354', '31-01-2023', '2023-01-20 04:39:56', '2023-01-31 01:53:09'),
(190, 'IN', '106.203.85.54', '1', '2', '20-01-2023', '2023-01-20 06:53:31', '2023-01-20 06:55:36'),
(191, 'IN', '152.58.213.65', '1', '1', '20-01-2023', '2023-01-20 12:36:40', '2023-01-20 12:36:40'),
(192, 'IN', '27.4.17.252', '1', '18', '21-01-2023', '2023-01-20 23:45:13', '2023-01-21 00:19:27'),
(193, 'IN', '115.97.97.11', '1', '111', '21-01-2023', '2023-01-21 00:21:13', '2023-01-21 03:04:19'),
(194, 'IN', '27.5.131.171', '1', '8', '21-01-2023', '2023-01-21 01:02:24', '2023-01-21 01:10:01'),
(195, 'IN', '49.204.130.33', '1', '2', '21-01-2023', '2023-01-21 01:19:01', '2023-01-21 01:28:54'),
(196, 'IN', '49.204.117.54', '1', '10', '21-01-2023', '2023-01-21 04:48:15', '2023-01-21 08:41:02'),
(197, 'IN', '152.58.227.35', '1', '1', '21-01-2023', '2023-01-21 11:22:04', '2023-01-21 11:22:04'),
(198, 'IN', '152.58.227.65', '1', '1', '21-01-2023', '2023-01-21 12:04:41', '2023-01-21 12:04:41'),
(199, 'IN', '152.58.215.126', '1', '1', '21-01-2023', '2023-01-21 13:56:30', '2023-01-21 13:56:30'),
(200, 'IN', '152.58.214.188', '1', '1', '21-01-2023', '2023-01-21 14:19:16', '2023-01-21 14:19:16'),
(201, 'IN', '49.204.117.225', '1', '70', '22-01-2023', '2023-01-22 05:28:36', '2023-01-22 07:11:13'),
(202, 'IN', '115.97.29.78', '1', '4', '23-01-2023', '2023-01-23 01:17:06', '2023-01-23 02:20:53'),
(203, 'IN', '27.4.122.240', '1', '1', '25-01-2023', '2023-01-24 22:51:00', '2023-01-24 22:51:00'),
(204, 'IN', '115.99.50.125', '1', '3', '27-01-2023', '2023-01-26 23:40:25', '2023-01-26 23:45:32'),
(205, 'IN', '115.96.0.152', '1', '24', '27-01-2023', '2023-01-27 00:56:30', '2023-01-27 08:27:13'),
(206, 'IN', '60.243.78.116', '1', '14', '27-01-2023', '2023-01-27 01:22:18', '2023-01-27 06:04:21'),
(207, 'ES', '51.254.49.98', '1', '1', '27-01-2023', '2023-01-27 01:46:48', '2023-01-27 01:46:48'),
(208, 'ES', '51.254.49.100', '1', '1', '27-01-2023', '2023-01-27 01:46:48', '2023-01-27 01:46:48'),
(209, 'ES', '51.254.49.103', '1', '1', '27-01-2023', '2023-01-27 01:47:31', '2023-01-27 01:47:31'),
(210, 'FI', '95.216.161.91', '1', '2', '27-01-2023', '2023-01-27 02:13:48', '2023-01-27 02:13:50'),
(211, 'RU', '89.104.101.111', '1', '2', '27-01-2023', '2023-01-27 04:51:30', '2023-01-27 14:56:14'),
(212, 'IN', '223.182.245.208', '1', '1', '27-01-2023', '2023-01-27 06:10:15', '2023-01-27 06:10:15'),
(213, 'IN', '49.205.84.124', '1', '5', '27-01-2023', '2023-01-27 06:44:31', '2023-01-27 06:47:42'),
(214, 'US', '72.13.62.25', '1', '3', '27-01-2023', '2023-01-27 07:52:50', '2023-01-27 07:52:54'),
(215, 'IN', '27.62.99.109', '1', '1', '27-01-2023', '2023-01-27 09:57:40', '2023-01-27 09:57:40'),
(216, 'US', '205.169.39.251', '1', '2', '27-01-2023', '2023-01-27 13:09:38', '2023-01-27 13:09:58'),
(217, 'RU', '176.53.217.124', '1', '1', '27-01-2023', '2023-01-27 14:56:14', '2023-01-27 14:56:14'),
(218, 'RU', '89.104.100.94', '1', '1', '27-01-2023', '2023-01-27 14:56:19', '2023-01-27 14:56:19'),
(219, 'CA', '173.252.79.20', '1', '1', '27-01-2023', '2023-01-27 16:52:11', '2023-01-27 16:52:11'),
(220, 'RU', '45.135.17.10', '1', '1', '27-01-2023', '2023-01-27 16:52:23', '2023-01-27 16:52:23'),
(221, 'CA', '173.252.79.5', '1', '1', '28-01-2023', '2023-01-27 22:39:03', '2023-01-27 22:39:03'),
(222, 'US', '205.169.39.231', '1', '1', '28-01-2023', '2023-01-27 23:43:00', '2023-01-27 23:43:00'),
(223, 'CN', '180.163.220.114', '1', '2', '28-01-2023', '2023-01-28 00:17:38', '2023-01-28 00:17:50'),
(224, 'IN', '171.60.241.46', '1', '5', '28-01-2023', '2023-01-28 00:29:29', '2023-01-28 00:45:57'),
(225, 'IN', '223.228.134.49', '1', '1', '28-01-2023', '2023-01-28 00:29:50', '2023-01-28 00:29:50'),
(226, 'US', '54.68.1.115', '1', '1', '28-01-2023', '2023-01-28 01:27:04', '2023-01-28 01:27:04'),
(227, 'US', '54.202.168.238', '1', '1', '28-01-2023', '2023-01-28 01:28:45', '2023-01-28 01:28:45'),
(228, 'DE', '5.75.227.177', '1', '1', '28-01-2023', '2023-01-28 08:19:48', '2023-01-28 08:19:48'),
(229, 'RU', '89.104.111.200', '1', '1', '28-01-2023', '2023-01-28 13:52:33', '2023-01-28 13:52:33'),
(230, 'RU', '89.104.111.32', '1', '1', '28-01-2023', '2023-01-28 13:52:35', '2023-01-28 13:52:35'),
(231, 'CA', '173.252.79.17', '1', '1', '28-01-2023', '2023-01-28 16:47:55', '2023-01-28 16:47:55'),
(232, 'SE', '93.158.90.151', '1', '1', '29-01-2023', '2023-01-28 19:33:29', '2023-01-28 19:33:29'),
(233, 'IN', '49.204.112.218', '1', '1', '29-01-2023', '2023-01-29 01:59:31', '2023-01-29 01:59:31'),
(234, 'US', '66.249.70.219', '1', '1', '29-01-2023', '2023-01-29 12:16:55', '2023-01-29 12:16:55'),
(235, 'RU', '176.53.219.206', '1', '1', '29-01-2023', '2023-01-29 13:19:44', '2023-01-29 13:19:44'),
(236, 'CN', '113.125.51.198', '1', '1', '29-01-2023', '2023-01-29 13:49:25', '2023-01-29 13:49:25'),
(237, 'US', '135.148.195.16', '1', '1', '29-01-2023', '2023-01-29 14:21:45', '2023-01-29 14:21:45'),
(238, 'US', '159.203.128.213', '1', '1', '29-01-2023', '2023-01-29 17:20:37', '2023-01-29 17:20:37'),
(239, 'CA', '173.252.95.21', '2', '2', '01-02-2023', '2023-01-29 18:49:39', '2023-02-01 01:00:03'),
(240, 'US', '34.219.244.152', '1', '1', '30-01-2023', '2023-01-30 00:57:52', '2023-01-30 00:57:52'),
(241, 'US', '34.210.43.26', '1', '1', '30-01-2023', '2023-01-30 00:57:53', '2023-01-30 00:57:53'),
(242, 'IN', '49.205.80.104', '1', '7', '30-01-2023', '2023-01-30 01:03:30', '2023-01-30 04:28:42'),
(243, 'IN', '27.5.83.17', '1', '9', '30-01-2023', '2023-01-30 01:03:58', '2023-01-30 01:52:36'),
(244, 'IN', '115.96.7.190', '1', '22', '30-01-2023', '2023-01-30 01:38:01', '2023-01-30 03:57:47'),
(245, 'IN', '152.58.214.248', '1', '6', '30-01-2023', '2023-01-30 04:12:25', '2023-01-30 04:24:04'),
(246, 'US', '205.169.39.146', '1', '2', '30-01-2023', '2023-01-30 04:13:38', '2023-01-30 04:13:51'),
(247, 'IN', '27.5.10.203', '2', '14', '31-01-2023', '2023-01-30 04:23:55', '2023-01-31 01:52:18'),
(248, 'IN', '115.96.4.78', '1', '2', '30-01-2023', '2023-01-30 05:17:42', '2023-01-30 08:04:01'),
(249, 'ES', '46.8.175.9', '1', '1', '30-01-2023', '2023-01-30 07:44:32', '2023-01-30 07:44:32'),
(250, 'BE', '45.154.228.236', '1', '1', '31-01-2023', '2023-01-30 20:08:01', '2023-01-30 20:08:01'),
(251, 'IN', '223.228.191.37', '1', '4', '31-01-2023', '2023-01-31 00:04:31', '2023-01-31 00:05:38'),
(252, 'IN', '124.123.71.177', '5', '36', '06-02-2023', '2023-01-31 01:01:20', '2023-02-06 05:03:16'),
(253, 'IN', '49.205.82.39', '1', '2', '31-01-2023', '2023-01-31 01:36:20', '2023-01-31 01:38:56'),
(254, 'CA', '173.252.79.18', '1', '1', '31-01-2023', '2023-01-31 01:52:26', '2023-01-31 01:52:26'),
(255, 'CA', '173.252.79.116', '1', '1', '31-01-2023', '2023-01-31 01:52:28', '2023-01-31 01:52:28'),
(256, 'CA', '173.252.79.119', '1', '2', '31-01-2023', '2023-01-31 01:52:30', '2023-01-31 01:52:40'),
(257, 'CA', '173.252.79.120', '1', '1', '31-01-2023', '2023-01-31 01:52:41', '2023-01-31 01:52:41'),
(258, 'CA', '173.252.79.10', '1', '1', '31-01-2023', '2023-01-31 01:52:43', '2023-01-31 01:52:43'),
(259, 'CA', '173.252.95.17', '1', '1', '31-01-2023', '2023-01-31 03:05:55', '2023-01-31 03:05:55'),
(260, 'CA', '173.252.95.7', '1', '1', '31-01-2023', '2023-01-31 03:05:55', '2023-01-31 03:05:55'),
(261, 'CA', '173.252.95.17', '1', '1', '31-01-2023', '2023-01-31 03:05:55', '2023-01-31 03:05:55'),
(262, 'CA', '173.252.107.118', '1', '1', '31-01-2023', '2023-01-31 03:06:29', '2023-01-31 03:06:29'),
(263, 'CA', '173.252.107.11', '1', '1', '31-01-2023', '2023-01-31 03:06:29', '2023-01-31 03:06:29'),
(264, 'CA', '173.252.107.117', '1', '1', '31-01-2023', '2023-01-31 03:06:34', '2023-01-31 03:06:34'),
(265, 'CA', '69.171.249.22', '1', '1', '31-01-2023', '2023-01-31 03:17:07', '2023-01-31 03:17:07'),
(266, 'CA', '69.171.249.13', '1', '2', '31-01-2023', '2023-01-31 03:17:09', '2023-01-31 03:17:21'),
(267, 'IN', '106.208.113.82', '1', '1', '31-01-2023', '2023-01-31 05:05:47', '2023-01-31 05:05:47'),
(268, 'US', '52.25.166.235', '1', '1', '31-01-2023', '2023-01-31 05:13:38', '2023-01-31 05:13:38'),
(269, 'IN', '157.45.137.95', '1', '1', '31-01-2023', '2023-01-31 05:13:38', '2023-01-31 05:13:38'),
(270, 'IN', '115.96.5.43', '1', '1', '31-01-2023', '2023-01-31 06:54:56', '2023-01-31 06:54:56'),
(271, 'IN', '106.206.38.86', '1', '1', '31-01-2023', '2023-01-31 07:05:28', '2023-01-31 07:05:28'),
(272, 'IN', '122.185.234.86', '2', '7', '04-02-2023', '2023-01-31 07:05:40', '2023-02-04 02:23:58'),
(273, 'US', '135.148.195.9', '1', '1', '31-01-2023', '2023-01-31 13:36:44', '2023-01-31 13:36:44'),
(274, 'SG', '163.114.133.3', '3', '19', '06-02-2023', '2023-01-31 20:34:05', '2023-02-05 23:18:55'),
(275, 'CN', '123.60.146.214', '1', '1', '01-02-2023', '2023-02-01 00:25:29', '2023-02-01 00:25:29'),
(276, 'US', '34.219.46.24', '1', '1', '01-02-2023', '2023-02-01 00:48:45', '2023-02-01 00:48:45'),
(277, 'US', '54.214.220.112', '1', '1', '01-02-2023', '2023-02-01 00:54:13', '2023-02-01 00:54:13'),
(278, 'US', '54.188.4.80', '1', '1', '01-02-2023', '2023-02-01 00:57:18', '2023-02-01 00:57:18'),
(279, 'IN', '115.97.15.49', '1', '1', '01-02-2023', '2023-02-01 12:27:36', '2023-02-01 12:27:36'),
(280, 'IN', '115.97.15.49', '1', '49', '01-02-2023', '2023-02-01 12:27:36', '2023-02-01 13:30:30'),
(281, 'US', '66.249.70.62', '2', '2', '07-02-2023', '2023-02-01 13:29:02', '2023-02-07 00:07:02'),
(282, 'IN', '115.99.83.14', '5', '91', '09-02-2023', '2023-02-01 22:51:55', '2023-02-08 23:02:32'),
(283, 'IN', '183.82.207.195', '1', '16', '02-02-2023', '2023-02-01 23:37:42', '2023-02-02 05:34:58'),
(284, 'IN', '27.5.76.192', '1', '6', '02-02-2023', '2023-02-02 02:54:11', '2023-02-02 02:56:06'),
(285, 'IN', '49.204.114.91', '1', '2', '02-02-2023', '2023-02-02 04:15:48', '2023-02-02 04:15:56'),
(286, 'SG', '51.222.253.5', '1', '1', '02-02-2023', '2023-02-02 05:07:48', '2023-02-02 05:07:48'),
(287, 'CA', '66.220.149.9', '1', '1', '02-02-2023', '2023-02-02 05:35:57', '2023-02-02 05:35:57'),
(288, 'CA', '66.220.149.4', '1', '1', '02-02-2023', '2023-02-02 05:46:31', '2023-02-02 05:46:31'),
(289, 'CA', '66.220.149.23', '1', '1', '02-02-2023', '2023-02-02 05:46:34', '2023-02-02 05:46:34'),
(290, 'CA', '66.220.149.5', '2', '2', '04-02-2023', '2023-02-02 05:46:47', '2023-02-04 03:18:33'),
(291, 'IN', '157.51.156.208', '1', '2', '02-02-2023', '2023-02-02 10:50:41', '2023-02-02 10:56:23'),
(292, 'NO', '185.181.60.39', '1', '1', '02-02-2023', '2023-02-02 14:40:16', '2023-02-02 14:40:16'),
(293, 'FR', '217.182.192.90', '1', '1', '02-02-2023', '2023-02-02 15:07:27', '2023-02-02 15:07:27'),
(294, 'GB', '193.235.141.158', '1', '1', '03-02-2023', '2023-02-02 19:32:19', '2023-02-02 19:32:19'),
(295, 'CA', '173.252.83.8', '1', '1', '03-02-2023', '2023-02-02 23:06:22', '2023-02-02 23:06:22'),
(296, 'US', '71.91.164.14', '1', '3', '03-02-2023', '2023-02-03 00:33:56', '2023-02-03 00:34:01'),
(297, 'US', '35.167.146.250', '1', '1', '03-02-2023', '2023-02-03 00:45:16', '2023-02-03 00:45:16'),
(298, 'US', '35.89.55.48', '1', '1', '03-02-2023', '2023-02-03 00:45:28', '2023-02-03 00:45:28'),
(299, 'SG', '163.114.133.1', '1', '5', '03-02-2023', '2023-02-03 01:15:54', '2023-02-03 01:16:47'),
(300, 'IN', '183.82.179.149', '1', '2', '03-02-2023', '2023-02-03 06:58:19', '2023-02-03 07:26:47'),
(301, 'US', '205.169.39.91', '1', '2', '04-02-2023', '2023-02-03 19:52:53', '2023-02-03 19:53:24'),
(302, 'SG', '51.222.253.19', '2', '2', '06-02-2023', '2023-02-03 20:47:22', '2023-02-06 03:35:25'),
(303, 'CA', '173.252.79.12', '1', '1', '04-02-2023', '2023-02-03 23:09:19', '2023-02-03 23:09:19'),
(304, 'IN', '60.243.2.67', '1', '6', '04-02-2023', '2023-02-04 02:50:30', '2023-02-04 02:54:54'),
(305, 'CA', '66.220.149.3', '1', '1', '04-02-2023', '2023-02-04 03:07:47', '2023-02-04 03:07:47'),
(306, 'CA', '66.220.149.22', '1', '2', '04-02-2023', '2023-02-04 03:18:16', '2023-02-04 03:18:19'),
(307, 'IN', '49.204.141.62', '1', '1', '04-02-2023', '2023-02-04 06:43:09', '2023-02-04 06:43:09'),
(308, 'IN', '49.204.141.62', '1', '15', '04-02-2023', '2023-02-04 06:43:09', '2023-02-04 08:12:35'),
(309, 'IN', '106.203.71.59', '1', '10', '04-02-2023', '2023-02-04 09:15:38', '2023-02-04 09:24:44'),
(310, 'US', '162.243.128.231', '1', '1', '04-02-2023', '2023-02-04 09:25:12', '2023-02-04 09:25:12'),
(311, 'US', '198.199.110.30', '1', '1', '04-02-2023', '2023-02-04 09:25:12', '2023-02-04 09:25:12'),
(312, 'US', '198.199.118.24', '1', '1', '04-02-2023', '2023-02-04 09:25:12', '2023-02-04 09:25:12'),
(313, 'US', '198.199.98.55', '1', '2', '04-02-2023', '2023-02-04 09:25:12', '2023-02-04 09:25:18'),
(314, 'US', '107.170.221.233', '1', '1', '04-02-2023', '2023-02-04 09:25:15', '2023-02-04 09:25:15'),
(315, 'US', '66.249.84.45', '1', '4', '04-02-2023', '2023-02-04 09:25:15', '2023-02-04 09:25:58'),
(316, 'US', '66.249.84.43', '1', '2', '04-02-2023', '2023-02-04 09:25:15', '2023-02-04 09:25:57'),
(317, 'NL', '185.136.204.197', '1', '1', '05-02-2023', '2023-02-05 02:34:32', '2023-02-05 02:34:32'),
(318, 'GB', '80.7.106.69', '1', '3', '05-02-2023', '2023-02-05 06:03:07', '2023-02-05 06:03:10'),
(319, 'IN', '106.208.40.165', '1', '1', '05-02-2023', '2023-02-05 09:47:26', '2023-02-05 09:47:26'),
(320, 'GB', '193.235.141.127', '1', '1', '05-02-2023', '2023-02-05 11:00:00', '2023-02-05 11:00:00'),
(321, 'FI', '135.181.219.159', '1', '1', '05-02-2023', '2023-02-05 12:06:51', '2023-02-05 12:06:51'),
(322, 'US', '76.72.173.2', '1', '1', '06-02-2023', '2023-02-05 18:59:21', '2023-02-05 18:59:21'),
(323, 'CA', '173.252.111.8', '1', '1', '06-02-2023', '2023-02-05 23:22:17', '2023-02-05 23:22:17'),
(324, 'IN', '183.82.179.147', '1', '94', '06-02-2023', '2023-02-06 01:06:02', '2023-02-06 06:59:53'),
(325, 'IN', '42.111.146.102', '1', '26', '06-02-2023', '2023-02-06 02:28:24', '2023-02-06 02:49:10'),
(326, 'IN', '152.58.224.253', '1', '4', '06-02-2023', '2023-02-06 02:31:06', '2023-02-06 02:33:46'),
(327, 'HK', '203.218.18.119', '1', '1', '06-02-2023', '2023-02-06 03:58:52', '2023-02-06 03:58:52'),
(328, 'BR', '177.190.76.132', '1', '1', '06-02-2023', '2023-02-06 03:58:57', '2023-02-06 03:58:57'),
(329, 'RU', '188.226.47.176', '1', '1', '06-02-2023', '2023-02-06 03:58:59', '2023-02-06 03:58:59'),
(330, 'SE', '93.158.90.69', '1', '1', '06-02-2023', '2023-02-06 04:16:50', '2023-02-06 04:16:50'),
(331, 'IN', '152.58.222.232', '1', '1', '06-02-2023', '2023-02-06 07:01:55', '2023-02-06 07:01:55'),
(332, 'CA', '173.252.83.7', '1', '1', '06-02-2023', '2023-02-06 07:11:22', '2023-02-06 07:11:22'),
(333, 'CA', '173.252.83.15', '1', '2', '06-02-2023', '2023-02-06 07:11:24', '2023-02-06 07:11:35'),
(334, 'US', '50.21.188.34', '1', '1', '07-02-2023', '2023-02-06 20:10:26', '2023-02-06 20:10:26'),
(335, 'US', '50.21.188.4', '1', '1', '07-02-2023', '2023-02-06 20:19:05', '2023-02-06 20:19:05'),
(336, 'US', '50.21.188.44', '1', '2', '07-02-2023', '2023-02-06 20:19:10', '2023-02-06 20:19:20'),
(337, 'US', '50.21.188.24', '1', '2', '07-02-2023', '2023-02-06 20:19:19', '2023-02-06 20:19:31'),
(338, 'US', '50.21.188.14', '1', '3', '07-02-2023', '2023-02-06 20:19:23', '2023-02-06 20:19:40'),
(339, 'US', '66.249.70.58', '1', '1', '07-02-2023', '2023-02-06 20:52:58', '2023-02-06 20:52:58'),
(340, 'IN', '183.82.205.180', '1', '41', '07-02-2023', '2023-02-06 22:27:29', '2023-02-07 01:51:37'),
(341, 'SG', '103.6.151.137', '1', '3', '07-02-2023', '2023-02-06 22:58:08', '2023-02-06 22:59:45'),
(342, 'IE', '176.34.163.241', '1', '1', '07-02-2023', '2023-02-07 08:09:30', '2023-02-07 08:09:30'),
(343, 'IE', '3.252.239.88', '1', '1', '07-02-2023', '2023-02-07 08:34:20', '2023-02-07 08:34:20'),
(344, 'IE', '54.170.238.223', '1', '1', '07-02-2023', '2023-02-07 11:41:43', '2023-02-07 11:41:43'),
(345, 'SE', '128.90.159.201', '1', '1', '07-02-2023', '2023-02-07 13:33:07', '2023-02-07 13:33:07'),
(346, 'US', '185.191.171.20', '1', '1', '07-02-2023', '2023-02-07 15:06:28', '2023-02-07 15:06:28'),
(347, 'US', '66.94.107.177', '1', '1', '08-02-2023', '2023-02-08 00:25:21', '2023-02-08 00:25:21'),
(348, 'US', '193.34.72.216', '1', '1', '08-02-2023', '2023-02-08 00:47:39', '2023-02-08 00:47:39');

-- --------------------------------------------------------

--
-- Table structure for table `warehouse`
--

CREATE TABLE `warehouse` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(10) NOT NULL,
  `business_days` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_pincode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_time` time NOT NULL,
  `close_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warehouse`
--

INSERT INTO `warehouse` (`id`, `warehouse_code`, `warehouse_name`, `email_address`, `phone`, `business_days`, `warehouse_address`, `warehouse_city`, `warehouse_pincode`, `warehouse_note`, `status`, `created_by`, `created_at`, `updated_at`, `open_time`, `close_time`) VALUES
(1, 'Warehouse-00001', 'Warehouse 2', '', 0, '', 'Address', 'Chennai', '600083', 'Note', 'active', 0, '2022-04-02 04:27:34', '2022-04-02 04:27:34', '00:00:00', '00:00:00'),
(2, 'Warehouse-00002', 'test', 'test@gmail.com', 123456789, 'Sun', 'sadasd', 'asdsad', '432123', '<p>asdasd</p>', 'active', 1, '2022-06-30 06:05:37', '2022-06-30 06:05:37', '18:05:00', '20:07:00'),
(3, 'Warehouse-00003', 'test1', 'test1@gmail.com', 123456789, 'Sat,Sun,Mon,Tues,Wed,Thurs', 'sdsad', 'asdsad', '3214123', '<p>qweqwe</p>', 'active', 1, '2022-06-30 06:07:27', '2022-06-30 06:41:16', '18:08:00', '17:07:00');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `arrtibute_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rowId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `arrtibute_option` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `customer_id`, `arrtibute_name`, `rowId`, `arrtibute_option`, `product_id`, `status`, `created_at`, `updated_at`) VALUES
(10, 36, 'default', NULL, NULL, 12, 'active', '2023-02-06 02:40:07', '2023-02-06 02:40:07'),
(11, 36, 'default', NULL, NULL, 2, 'inactive', '2023-02-06 02:43:23', '2023-02-06 02:43:23'),
(12, 36, 'default', NULL, NULL, 1, 'inactive', '2023-02-06 02:44:13', '2023-02-06 02:44:13'),
(14, 36, 'default', NULL, NULL, 5, 'active', '2023-02-06 04:27:56', '2023-02-06 04:27:56'),
(15, 36, 'default', NULL, NULL, 6, 'active', '2023-02-09 22:40:47', '2023-02-09 22:40:47'),
(16, 36, 'default', NULL, NULL, 3, 'active', '2023-02-09 22:52:03', '2023-02-09 22:52:03'),
(17, 36, 'default', NULL, NULL, 23, 'active', '2023-02-09 22:52:52', '2023-02-09 22:52:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `about_slug_unique` (`slug`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billing_address`
--
ALTER TABLE `billing_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_slug_unique` (`slug`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_slug_unique` (`slug`);

--
-- Indexes for table `cart_tables`
--
ALTER TABLE `cart_tables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_tables_customer_id_foreign` (`customer_id`),
  ADD KEY `cart_tables_product_id_foreign` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `client_feedback`
--
ALTER TABLE `client_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contact_slug_unique` (`slug`);

--
-- Indexes for table `contactform`
--
ALTER TABLE `contactform`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customer_email_unique` (`email`);

--
-- Indexes for table `deals_of_day`
--
ALTER TABLE `deals_of_day`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `delivery_slug_unique` (`slug`);

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `faqs_slug_unique` (`slug`);

--
-- Indexes for table `headings`
--
ALTER TABLE `headings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventoryhistroy`
--
ALTER TABLE `inventoryhistroy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventoryhistroy_inventory_id_foreign` (`inventory_id`);

--
-- Indexes for table `inventoryloss`
--
ALTER TABLE `inventoryloss`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventoryloss_inventory_id_foreign` (`inventory_id`);

--
-- Indexes for table `inventorylossproduct`
--
ALTER TABLE `inventorylossproduct`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventorylossproduct_inventory_id_foreign` (`inventory_id`),
  ADD KEY `inventorylossproduct_vendor_item_id_foreign` (`vendor_item_id`),
  ADD KEY `inventorylossproduct_product_id_foreign` (`product_id`);

--
-- Indexes for table `inventoryproduct`
--
ALTER TABLE `inventoryproduct`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventoryproduct_inventory_id_foreign` (`inventory_id`),
  ADD KEY `inventoryproduct_vendor_item_id_foreign` (`vendor_item_id`),
  ADD KEY `inventoryproduct_product_id_foreign` (`product_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_purchase_order_id_foreign` (`purchase_order_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_order_id_unique` (`order_id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_products_product_id_foreign` (`product_id`),
  ADD KEY `order_products_order_id_foreign` (`order_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payments_order_id_unique` (`order_id`);

--
-- Indexes for table `payment__method`
--
ALTER TABLE `payment__method`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `permission_groups`
--
ALTER TABLE `permission_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `privacy`
--
ALTER TABLE `privacy`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `privacy_slug_unique` (`slug`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_attributes_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_inventorys`
--
ALTER TABLE `product_inventorys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_reviews_customer_id_foreign` (`customer_id`),
  ADD KEY `product_reviews_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_specifications`
--
ALTER TABLE `product_specifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_variants_product_id_foreign` (`product_id`);

--
-- Indexes for table `promos`
--
ALTER TABLE `promos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_vendor_id_foreign` (`vendor_id`);

--
-- Indexes for table `purchaseproduct`
--
ALTER TABLE `purchaseproduct`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchaseproduct_purchase_request_id_foreign` (`purchase_request_id`),
  ADD KEY `purchaseproduct_vendor_item_id_foreign` (`vendor_item_id`),
  ADD KEY `purchaseproduct_product_id_foreign` (`product_id`);

--
-- Indexes for table `purchase_order`
--
ALTER TABLE `purchase_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_order_purchase_request_id_foreign` (`purchase_request_id`),
  ADD KEY `purchase_order_quotation_id_foreign` (`quotation_id`);

--
-- Indexes for table `quotation`
--
ALTER TABLE `quotation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quotation_purchase_request_id_foreign` (`purchase_request_id`);

--
-- Indexes for table `reasons`
--
ALTER TABLE `reasons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_address`
--
ALTER TABLE `shipping_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state_list`
--
ALTER TABLE `state_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suborders`
--
ALTER TABLE `suborders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `suborders_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `suborders_items`
--
ALTER TABLE `suborders_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `terms_slug_unique` (`slug`);

--
-- Indexes for table `today_hotoffer`
--
ALTER TABLE `today_hotoffer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_order_id_foreign` (`order_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendoritem`
--
ALTER TABLE `vendoritem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vendoritem_product_id_foreign` (`product_id`),
  ADD KEY `vendoritem_vendor_id_foreign` (`vendor_id`);

--
-- Indexes for table `vendoritem_attribute`
--
ALTER TABLE `vendoritem_attribute`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vendoritem_attribute_attribute_id_foreign` (`attribute_id`),
  ADD KEY `vendoritem_attribute_vendor_item_id_foreign` (`vendor_item_id`),
  ADD KEY `vendoritem_attribute_product_id_foreign` (`product_id`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warehouse`
--
ALTER TABLE `warehouse`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_customer_id_foreign` (`customer_id`),
  ADD KEY `wishlists_product_id_foreign` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `billing_address`
--
ALTER TABLE `billing_address`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=303;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cart_tables`
--
ALTER TABLE `cart_tables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `client_feedback`
--
ALTER TABLE `client_feedback`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contactform`
--
ALTER TABLE `contactform`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupon`
--
ALTER TABLE `coupon`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `deals_of_day`
--
ALTER TABLE `deals_of_day`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `delivery`
--
ALTER TABLE `delivery`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `headings`
--
ALTER TABLE `headings`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `inventoryhistroy`
--
ALTER TABLE `inventoryhistroy`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `inventoryloss`
--
ALTER TABLE `inventoryloss`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventorylossproduct`
--
ALTER TABLE `inventorylossproduct`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventoryproduct`
--
ALTER TABLE `inventoryproduct`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `payment__method`
--
ALTER TABLE `payment__method`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `permission_groups`
--
ALTER TABLE `permission_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `privacy`
--
ALTER TABLE `privacy`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_inventorys`
--
ALTER TABLE `product_inventorys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_specifications`
--
ALTER TABLE `product_specifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `promos`
--
ALTER TABLE `promos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `purchaseproduct`
--
ALTER TABLE `purchaseproduct`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `purchase_order`
--
ALTER TABLE `purchase_order`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `quotation`
--
ALTER TABLE `quotation`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reasons`
--
ALTER TABLE `reasons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shipping_address`
--
ALTER TABLE `shipping_address`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `state_list`
--
ALTER TABLE `state_list`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `suborders`
--
ALTER TABLE `suborders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `suborders_items`
--
ALTER TABLE `suborders_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `today_hotoffer`
--
ALTER TABLE `today_hotoffer`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `vendoritem`
--
ALTER TABLE `vendoritem`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `vendoritem_attribute`
--
ALTER TABLE `vendoritem_attribute`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=349;

--
-- AUTO_INCREMENT for table `warehouse`
--
ALTER TABLE `warehouse`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD CONSTRAINT `product_variants_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
