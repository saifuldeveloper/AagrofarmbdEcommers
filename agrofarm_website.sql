-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 03, 2024 at 03:21 AM
-- Server version: 10.3.36-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agrofarm_website`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `phone`, `photo`, `role_id`, `password`, `email_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '01629552892', '1716643786376451459_245252438011943_1097821013832096146_n.jpg', 0, '$2y$10$dleWnwZdislZalAL69.uLOuTtDGg9KX2nybDli45nj8GdXzHDVpYO', NULL, '2018-02-28 23:27:08', '2024-05-25 17:29:46'),
(2, 'test', 'test@gmail.com', '09000000', 'BhTv1584160189Brooklyn99-310x310.jpg', 1, '$2y$10$cl6qNdVuAhzJyaaLACVxGOQhlYf7n/UgLrwW0vx9QDGlZyKGM97mm', NULL, '2021-12-05 10:24:50', '2021-12-05 10:24:50');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `item_id`, `name`, `keyword`, `created_at`, `updated_at`) VALUES
(2, 523, 'Color', 'color', NULL, NULL),
(56, 523, 'Size', 'size', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attribute_options`
--

CREATE TABLE `attribute_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double DEFAULT 0,
  `keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stock` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'unlimited'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_options`
--

INSERT INTO `attribute_options` (`id`, `attribute_id`, `name`, `price`, `keyword`, `created_at`, `updated_at`, `stock`) VALUES
(221, 2, 'Red', 5, 'red', NULL, NULL, 'unlimited'),
(222, 2, 'Blue', 6, 'blue', NULL, NULL, 'unlimited'),
(223, 2, 'Black', 7, 'bed', NULL, NULL, 'unlimited'),
(224, 2, 'Pink', 8, 'pink', NULL, NULL, 'unlimited'),
(1082, 56, 'M', 5, 'm', NULL, NULL, 'unlimited'),
(1128, 56, 'L', 6, 'L', NULL, NULL, 'unlimited'),
(1174, 56, 'XL', 7, 'xl', NULL, NULL, 'unlimited'),
(1220, 56, 'XXL', 7, 'xxl', NULL, NULL, 'unlimited');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `subtitle`, `url`, `image`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Shein Womens Clothing 2021 Summer Fashion Design Clothing Manufacturer Lantern Long Sleeve', '45% OFF', '#', '163172091306.jpg', ' Banner 1', 1, NULL, NULL),
(2, 'Casual Minimalist Tie Waist women clothing Denim Halter Midi Pencil Sling Dresses', '70% OFF', '#', '163172090805.jpg', 'Banner 2', 1, NULL, NULL),
(3, 'Top Sale High Quality Newest Designs Custom Women Clothing Wholesale from China Dresses', '60% OFF', '#', '163172090304.jpg', 'Banner 3', 1, NULL, NULL),
(5, '2021 Summer Women Clothing Ropa Sexy Lady Cut Out Halter Mini Dresses', '50% OFF', '#', '163172089704.jpg', 'Banner 4', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bcategories`
--

CREATE TABLE `bcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `is_popular` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `photo`, `status`, `is_popular`, `created_at`, `updated_at`) VALUES
(1, 'Agrofirmbd', 'Agrofirmbd', 'nlUIlogo.png', 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `campaign_items`
--

CREATE TABLE `campaign_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` int(11) NOT NULL,
  `status` tinyint(4) DEFAULT 1,
  `is_feature` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_descriptions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `is_feature` tinyint(4) DEFAULT 1,
  `serial` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `photo`, `meta_keywords`, `meta_descriptions`, `status`, `is_feature`, `serial`, `created_at`, `updated_at`) VALUES
(18, 'Herbs', 'Herbs', '1629616296pexels-juan-mendez-1536619.jpg', '[{\"value\":\"Herbs\"}]', 'Herbs', 1, 1, 0, NULL, NULL),
(19, 'Combo Pack', 'Combo-Pack', '1629616281pexels-moose-photos-1036627.jpg', '[{\"value\":\"Combo Pack\"}]', 'Combo Pack', 1, 1, 1, NULL, NULL),
(21, 'Seeds', 'Seeds', '1629616270computer.jpg', '[{\"value\":\"seeds\"}]', 'seeds', 1, 1, 1, NULL, NULL),
(22, 'Oil', 'Oil', '1631023636ballll.jpg', '[{\"value\":\"oil\"}]', 'oil', 1, 1, 5, NULL, NULL),
(23, 'RAW Products', 'RAW-Products-', 'b6lfHatishur web.jpg', '[{\"value\":\"nut\"},{\"value\":\"RAW Products\"}]', 'RAW Products', 1, 1, 4, NULL, NULL),
(27, 'Spice', 'Spice', 'kERY12.jpeg', '[{\"value\":\"Big-offer\"},{\"value\":\"Spice\"},{\"value\":\"Offer\"}]', 'Spice', 1, 1, 22, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chield_categories`
--

CREATE TABLE `chield_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Afghanistan', NULL, NULL),
(2, 'Albania', NULL, NULL),
(3, 'Algeria', NULL, NULL),
(4, 'American Samoa', NULL, NULL),
(5, 'Andorra', NULL, NULL),
(6, 'Angola', NULL, NULL),
(7, 'Anguilla', NULL, NULL),
(8, 'Antarctica', NULL, NULL),
(9, 'Antigua and Barbuda', NULL, NULL),
(10, 'Argentina', NULL, NULL),
(11, 'Armenia', NULL, NULL),
(12, 'Aruba', NULL, NULL),
(13, 'Australia', NULL, NULL),
(14, 'Austria', NULL, NULL),
(15, 'Azerbaijan', NULL, NULL),
(16, 'Bahamas', NULL, NULL),
(17, 'Bahrain', NULL, NULL),
(18, 'Bangladesh', NULL, NULL),
(19, 'Barbados', NULL, NULL),
(20, 'Belarus', NULL, NULL),
(21, 'Belgium', NULL, NULL),
(22, 'Belize', NULL, NULL),
(23, 'Benin', NULL, NULL),
(24, 'Bermuda', NULL, NULL),
(25, 'Bhutan', NULL, NULL),
(26, 'Bolivia', NULL, NULL),
(27, 'Bosnia and Herzegovina', NULL, NULL),
(28, 'Botswana', NULL, NULL),
(29, 'Bouvet Island', NULL, NULL),
(30, 'Brazil', NULL, NULL),
(31, 'British Indian Ocean Territory', NULL, NULL),
(32, 'Brunei Darussalam', NULL, NULL),
(33, 'Bulgaria', NULL, NULL),
(34, 'Burkina Faso', NULL, NULL),
(35, 'Burundi', NULL, NULL),
(36, 'Cambodia', NULL, NULL),
(37, 'Cameroon', NULL, NULL),
(38, 'Canada', NULL, NULL),
(39, 'Cape Verde', NULL, NULL),
(40, 'Cayman Islands', NULL, NULL),
(41, 'Central African Republic', NULL, NULL),
(42, 'Chad', NULL, NULL),
(43, 'Chile', NULL, NULL),
(44, 'China', NULL, NULL),
(45, 'Christmas Island', NULL, NULL),
(46, 'Cocos (Keeling) Islands', NULL, NULL),
(47, 'Colombia', NULL, NULL),
(48, 'Comoros', NULL, NULL),
(49, 'Democratic Republic of the Congo', NULL, NULL),
(50, 'Republic of Congo', NULL, NULL),
(51, 'Cook Islands', NULL, NULL),
(52, 'Costa Rica', NULL, NULL),
(53, 'Croatia (Hrvatska)', NULL, NULL),
(54, 'Cuba', NULL, NULL),
(55, 'Cyprus', NULL, NULL),
(56, 'Czech Republic', NULL, NULL),
(57, 'Denmark', NULL, NULL),
(58, 'Djibouti', NULL, NULL),
(59, 'Dominica', NULL, NULL),
(60, 'Dominican Republic', NULL, NULL),
(61, 'East Timor', NULL, NULL),
(62, 'Ecuador', NULL, NULL),
(63, 'Egypt', NULL, NULL),
(64, 'El Salvador', NULL, NULL),
(65, 'Equatorial Guinea', NULL, NULL),
(66, 'Eritrea', NULL, NULL),
(67, 'Estonia', NULL, NULL),
(68, 'Ethiopia', NULL, NULL),
(69, 'Falkland Islands (Malvinas)', NULL, NULL),
(70, 'Faroe Islands', NULL, NULL),
(71, 'Fiji', NULL, NULL),
(72, 'Finland', NULL, NULL),
(73, 'France', NULL, NULL),
(74, 'France, Metropolitan', NULL, NULL),
(75, 'French Guiana', NULL, NULL),
(76, 'French Polynesia', NULL, NULL),
(77, 'French Southern Territories', NULL, NULL),
(78, 'Gabon', NULL, NULL),
(79, 'Gambia', NULL, NULL),
(80, 'Georgia', NULL, NULL),
(81, 'Germany', NULL, NULL),
(82, 'Ghana', NULL, NULL),
(83, 'Gibraltar', NULL, NULL),
(84, 'Guernsey', NULL, NULL),
(85, 'Greece', NULL, NULL),
(86, 'Greenland', NULL, NULL),
(87, 'Grenada', NULL, NULL),
(88, 'Guadeloupe', NULL, NULL),
(89, 'Guam', NULL, NULL),
(90, 'Guatemala', NULL, NULL),
(91, 'Guinea', NULL, NULL),
(92, 'Guinea-Bissau', NULL, NULL),
(93, 'Guyana', NULL, NULL),
(94, 'Haiti', NULL, NULL),
(95, 'Heard and Mc Donald Islands', NULL, NULL),
(96, 'Honduras', NULL, NULL),
(97, 'Hong Kong', NULL, NULL),
(98, 'Hungary', NULL, NULL),
(99, 'Iceland', NULL, NULL),
(100, 'India', NULL, NULL),
(101, 'Isle of Man', NULL, NULL),
(102, 'Indonesia', NULL, NULL),
(103, 'Iran (Islamic Republic of)', NULL, NULL),
(104, 'Iraq', NULL, NULL),
(105, 'Ireland', NULL, NULL),
(106, 'Israel', NULL, NULL),
(107, 'Italy', NULL, NULL),
(108, 'Ivory Coast', NULL, NULL),
(109, 'Jersey', NULL, NULL),
(110, 'Jamaica', NULL, NULL),
(111, 'Japan', NULL, NULL),
(112, 'Jordan', NULL, NULL),
(113, 'Kazakhstan', NULL, NULL),
(114, 'Kenya', NULL, NULL),
(115, 'Kiribati', NULL, NULL),
(116, 'Korea, Democratic People\'s Republic of', NULL, NULL),
(118, 'Kosovo', NULL, NULL),
(119, 'Kuwait', NULL, NULL),
(120, 'Kyrgyzstan', NULL, NULL),
(121, 'Lao People\'s Democratic Republic', NULL, NULL),
(122, 'Latvia', NULL, NULL),
(123, 'Lebanon', NULL, NULL),
(124, 'Lesotho', NULL, NULL),
(125, 'Liberia', NULL, NULL),
(126, 'Libyan Arab Jamahiriya', NULL, NULL),
(127, 'Liechtenstein', NULL, NULL),
(128, 'Lithuania', NULL, NULL),
(129, 'Luxembourg', NULL, NULL),
(130, 'Macau', NULL, NULL),
(131, 'North Macedonia', NULL, NULL),
(132, 'Madagascar', NULL, NULL),
(133, 'Malawi', NULL, NULL),
(134, 'Malaysia', NULL, NULL),
(135, 'Maldives', NULL, NULL),
(136, 'Mali', NULL, NULL),
(137, 'Malta', NULL, NULL),
(138, 'Marshall Islands', NULL, NULL),
(139, 'Martinique', NULL, NULL),
(140, 'Mauritania', NULL, NULL),
(141, 'Mauritius', NULL, NULL),
(142, 'Mayotte', NULL, NULL),
(143, 'Mexico', NULL, NULL),
(144, 'Micronesia, Federated States of', NULL, NULL),
(145, 'Moldova, Republic of', NULL, NULL),
(146, 'Monaco', NULL, NULL),
(147, 'Mongolia', NULL, NULL),
(148, 'Montenegro', NULL, NULL),
(149, 'Montserrat', NULL, NULL),
(150, 'Morocco', NULL, NULL),
(151, 'Mozambique', NULL, NULL),
(152, 'Myanmar', NULL, NULL),
(153, 'Namibia', NULL, NULL),
(154, 'Nauru', NULL, NULL),
(155, 'Nepal', NULL, NULL),
(156, 'Netherlands', NULL, NULL),
(157, 'Netherlands Antilles', NULL, NULL),
(158, 'New Caledonia', NULL, NULL),
(159, 'New Zealand', NULL, NULL),
(160, 'Nicaragua', NULL, NULL),
(161, 'Niger', NULL, NULL),
(162, 'Nigeria', NULL, NULL),
(163, 'Niue', NULL, NULL),
(164, 'Norfolk Island', NULL, NULL),
(165, 'Northern Mariana Islands', NULL, NULL),
(166, 'Norway', NULL, NULL),
(167, 'Oman', NULL, NULL),
(168, 'Pakistan', NULL, NULL),
(169, 'Palau', NULL, NULL),
(170, 'Palestine', NULL, NULL),
(171, 'Panama', NULL, NULL),
(172, 'Papua New Guinea', NULL, NULL),
(173, 'Paraguay', NULL, NULL),
(174, 'Peru', NULL, NULL),
(175, 'Philippines', NULL, NULL),
(176, 'Pitcairn', NULL, NULL),
(177, 'Poland', NULL, NULL),
(178, 'Portugal', NULL, NULL),
(179, 'Puerto Rico', NULL, NULL),
(180, 'Qatar', NULL, NULL),
(181, 'Reunion', NULL, NULL),
(182, 'Romania', NULL, NULL),
(183, 'Russian Federation', NULL, NULL),
(184, 'Rwanda', NULL, NULL),
(185, 'Saint Kitts and Nevis', NULL, NULL),
(186, 'Saint Lucia', NULL, NULL),
(187, 'Saint Vincent and the Grenadines', NULL, NULL),
(188, 'Samoa', NULL, NULL),
(189, 'San Marino', NULL, NULL),
(190, 'Sao Tome and Principe', NULL, NULL),
(191, 'Saudi Arabia', NULL, NULL),
(192, 'Senegal', NULL, NULL),
(193, 'Serbia', NULL, NULL),
(194, 'Seychelles', NULL, NULL),
(195, 'Sierra Leone', NULL, NULL),
(196, 'Singapore', NULL, NULL),
(197, 'Slovakia', NULL, NULL),
(198, 'Slovenia', NULL, NULL),
(199, 'Solomon Islands', NULL, NULL),
(200, 'Somalia', NULL, NULL),
(201, 'South Africa', NULL, NULL),
(202, 'South Georgia South Sandwich Islands', NULL, NULL),
(203, 'South Sudan', NULL, NULL),
(204, 'Spain', NULL, NULL),
(205, 'Sri Lanka', NULL, NULL),
(206, 'St. Helena', NULL, NULL),
(207, 'St. Pierre and Miquelon', NULL, NULL),
(208, 'Sudan', NULL, NULL),
(209, 'Suriname', NULL, NULL),
(210, 'Svalbard and Jan Mayen Islands', NULL, NULL),
(211, 'Swaziland', NULL, NULL),
(212, 'Sweden', NULL, NULL),
(213, 'Switzerland', NULL, NULL),
(214, 'Syrian Arab Republic', NULL, NULL),
(215, 'Taiwan', NULL, NULL),
(216, 'Tajikistan', NULL, NULL),
(217, 'Tanzania, United Republic of', NULL, NULL),
(218, 'Thailand', NULL, NULL),
(219, 'Togo', NULL, NULL),
(220, 'Tokelau', NULL, NULL),
(221, 'Tonga', NULL, NULL),
(222, 'Trinidad and Tobago', NULL, NULL),
(223, 'Tunisia', NULL, NULL),
(224, 'Turkey', NULL, NULL),
(225, 'Turkmenistan', NULL, NULL),
(226, 'Turks and Caicos Islands', NULL, NULL),
(227, 'Tuvalu', NULL, NULL),
(228, 'Uganda', NULL, NULL),
(229, 'Ukraine', NULL, NULL),
(230, 'United Arab Emirates', NULL, NULL),
(231, 'United Kingdom', NULL, NULL),
(232, 'United States', NULL, NULL),
(233, 'United States minor outlying islands', NULL, NULL),
(234, 'Uruguay', NULL, NULL),
(235, 'Uzbekistan', NULL, NULL),
(236, 'Vanuatu', NULL, NULL),
(237, 'Vatican City State', NULL, NULL),
(238, 'Venezuela', NULL, NULL),
(239, 'Vietnam', NULL, NULL),
(240, 'Virgin Islands (British)', NULL, NULL),
(241, 'Virgin Islands (U.S.)', NULL, NULL),
(242, 'Wallis and Futuna Islands', NULL, NULL),
(243, 'Western Sahara', NULL, NULL),
(244, 'Yemen', NULL, NULL),
(245, 'Zambia', NULL, NULL),
(246, 'Zimbabwe', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sign` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` double DEFAULT NULL,
  `is_default` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `sign`, `value`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'USD', '$', 1, 0, NULL, NULL),
(8, 'BDT', '৳', 84, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `type`, `subject`, `body`, `created_at`, `updated_at`) VALUES
(1, 'Order', 'Your Have Successfully Placed The Order', '<p>Hello {user_name},</p><p>Your Order Has Been Placed Successfilly.<br>Your Order Number is {transaction_number}.<br></p>', NULL, NULL),
(2, 'Registration', 'Welcome To Omnimart', '<p>Hello ; {user_name},</p><p>You have successfully registered to {site_title}, We wish you will have a wonderful experience using our service.</p><p>Thank You .<br></p>', NULL, NULL),
(3, 'New Order Admin', 'New Order', '<p>You Got a order, Transaction number {transaction_number}</p>', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `extra_settings`
--

CREATE TABLE `extra_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_t4_slider` tinyint(4) DEFAULT 1,
  `is_t4_featured_banner` tinyint(4) DEFAULT 1,
  `is_t4_specialpick` tinyint(4) DEFAULT 1,
  `is_t4_3_column_banner_first` tinyint(4) DEFAULT 1,
  `is_t4_flashdeal` tinyint(4) DEFAULT 1,
  `is_t4_3_column_banner_second` tinyint(4) DEFAULT 1,
  `is_t4_popular_category` tinyint(4) DEFAULT 1,
  `is_t4_2_column_banner` tinyint(4) DEFAULT 1,
  `is_t4_blog_section` tinyint(4) DEFAULT 1,
  `is_t4_brand_section` tinyint(4) DEFAULT 1,
  `is_t4_service_section` tinyint(4) DEFAULT 1,
  `is_t3_slider` tinyint(4) DEFAULT 1,
  `is_t3_service_section` tinyint(4) DEFAULT 1,
  `is_t3_3_column_banner_first` tinyint(4) DEFAULT 1,
  `is_t3_popular_category` tinyint(4) DEFAULT 1,
  `is_t3_flashdeal` tinyint(4) DEFAULT 1,
  `is_t3_3_column_banner_second` tinyint(4) DEFAULT 1,
  `is_t3_pecialpick` tinyint(4) DEFAULT 1,
  `is_t3_brand_section` tinyint(4) DEFAULT 1,
  `is_t3_2_column_banner` tinyint(4) DEFAULT 1,
  `is_t3_blog_section` tinyint(4) DEFAULT 1,
  `is_t2_slider` tinyint(4) DEFAULT 1,
  `is_t2_service_section` tinyint(4) DEFAULT 1,
  `is_t2_3_column_banner_first` tinyint(4) DEFAULT 1,
  `is_t2_flashdeal` tinyint(4) DEFAULT 1,
  `is_t2_new_product` tinyint(4) DEFAULT 1,
  `is_t2_3_column_banner_second` tinyint(4) DEFAULT 1,
  `is_t2_featured_product` tinyint(4) DEFAULT 1,
  `is_t2_bestseller_product` tinyint(4) DEFAULT 1,
  `is_t2_toprated_product` tinyint(4) DEFAULT 1,
  `is_t2_2_column_banner` tinyint(4) DEFAULT 1,
  `is_t2_blog_section` tinyint(4) DEFAULT 1,
  `is_t2_brand_section` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_t1_falsh` tinyint(4) DEFAULT 1,
  `is_t2_falsh` tinyint(4) DEFAULT 1,
  `is_t3_falsh` tinyint(4) DEFAULT 1,
  `is_t4_falsh` tinyint(4) DEFAULT 1,
  `is_t2_three_column_category` tinyint(4) DEFAULT 1,
  `is_t3_three_column_category` tinyint(4) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `extra_settings`
--

INSERT INTO `extra_settings` (`id`, `is_t4_slider`, `is_t4_featured_banner`, `is_t4_specialpick`, `is_t4_3_column_banner_first`, `is_t4_flashdeal`, `is_t4_3_column_banner_second`, `is_t4_popular_category`, `is_t4_2_column_banner`, `is_t4_blog_section`, `is_t4_brand_section`, `is_t4_service_section`, `is_t3_slider`, `is_t3_service_section`, `is_t3_3_column_banner_first`, `is_t3_popular_category`, `is_t3_flashdeal`, `is_t3_3_column_banner_second`, `is_t3_pecialpick`, `is_t3_brand_section`, `is_t3_2_column_banner`, `is_t3_blog_section`, `is_t2_slider`, `is_t2_service_section`, `is_t2_3_column_banner_first`, `is_t2_flashdeal`, `is_t2_new_product`, `is_t2_3_column_banner_second`, `is_t2_featured_product`, `is_t2_bestseller_product`, `is_t2_toprated_product`, `is_t2_2_column_banner`, `is_t2_blog_section`, `is_t2_brand_section`, `created_at`, `updated_at`, `is_t1_falsh`, `is_t2_falsh`, `is_t3_falsh`, `is_t4_falsh`, `is_t2_three_column_category`, `is_t3_three_column_category`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, 1, 1, 1, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_descriptions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `category_id`, `title`, `details`, `meta_keywords`, `meta_descriptions`, `created_at`, `updated_at`) VALUES
(15, 1, 'How can I purchase it ?', 'Voluptatibus enim, aut natus sint porro veniam atque obcaecati ullam, consequatur laboriosam laborum corrupti autem fugit', NULL, NULL, NULL, NULL),
(25, 1, 'Anim pariatur cliche reprehenderit ?', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven\'t heard of them accusamus.', NULL, NULL, NULL, NULL),
(27, 1, 'Smartphones in Every Day Life ?', 'afdads', '[{\"value\":\"ad\"},{\"value\":\"fd\"}]', 'dfa', NULL, NULL),
(28, 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing  ?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', NULL, NULL, NULL, NULL),
(29, 3, 'But I must explain to you how all this mistaken idea ?', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, cons', NULL, NULL, NULL, NULL),
(30, 3, 'Where does it come from ?', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.', NULL, NULL, NULL, NULL),
(31, 4, 'Where can I get some ?', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.', NULL, NULL, NULL, NULL),
(32, 4, 'Why do we use it?', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', NULL, NULL, NULL, NULL),
(33, 4, 'Where can I get some?', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', NULL, NULL, NULL, NULL),
(34, 4, 'Where does it come from?', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', NULL, NULL, NULL, NULL),
(35, 5, 'Where can I get some?', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', NULL, NULL, NULL, NULL),
(36, 5, 'Why do we use it?', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', NULL, NULL, NULL, NULL),
(37, 5, 'Where does it come from?', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', NULL, NULL, NULL, NULL),
(38, 6, 'Where does it come from?', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', NULL, NULL, NULL, NULL),
(39, 6, 'Why do we use it?', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', NULL, NULL, NULL, NULL),
(40, 6, 'Where can I get some?', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', NULL, NULL, NULL, NULL),
(41, 7, 'Where does it come from?', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', NULL, NULL, NULL, NULL),
(42, 7, 'Why do we use it?', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', NULL, NULL, NULL, NULL),
(43, 7, 'Where can I get some?', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fcategories`
--

CREATE TABLE `fcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_descriptions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fcategories`
--

INSERT INTO `fcategories` (`id`, `name`, `text`, `slug`, `meta_keywords`, `meta_descriptions`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Electronics !', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born', 'Electronics-', NULL, NULL, 1, NULL, NULL),
(3, 'Poroduct Delevery !', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born', 'Poroduct-Delevery-', '[{\"value\":\"a\"},{\"value\":\"b\"},{\"value\":\"c\"}]', 'It is a long established fact that a r', 1, NULL, NULL),
(4, 'Discount Policy !', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born', 'Discount-Policy-', NULL, NULL, 1, NULL, NULL),
(5, 'Vat Information !', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born', 'Vat-Information-', NULL, NULL, 1, NULL, NULL),
(6, 'Coupon  Information !', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born', 'Coupon--Information-', NULL, NULL, 1, NULL, NULL),
(7, 'Offer Information !', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born', 'Offer-Information-', NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` int(11) NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `item_id`, `photo`, `created_at`, `updated_at`) VALUES
(79, 523, 'bZ7iScreenshot 2021-11-23 at 10.31.36 PM.png', NULL, NULL),
(96, 603, 'dn3DAssogandha.jpg', NULL, NULL),
(97, 604, 'wGJB17.jpg', NULL, NULL),
(98, 605, 'TXZoAda.jpg', NULL, NULL),
(99, 606, 'InBKAkorkora-3.jpg', NULL, NULL),
(100, 607, 'roJwAlkushi Premium.jpg', NULL, NULL),
(101, 608, 'TBBYAlkushi Regular.jpg', NULL, NULL),
(102, 609, 'VZ5zAmloki 1.1.jpg', NULL, NULL),
(103, 610, 'y3uzArjun gura.jpg', NULL, NULL),
(104, 611, 'C2EKbel.jpg', NULL, NULL),
(105, 612, 'RNy2Bohera 1.jpg', NULL, NULL),
(106, 613, 'ZgZ5daruchini.jpg', NULL, NULL),
(107, 614, 'Vb69Giloy.jpg', NULL, NULL),
(108, 615, 'DQpuGokkhur -2.jpg', NULL, NULL),
(109, 616, 'PSVDHaritaki 1.jpg', NULL, NULL),
(110, 617, 'fT88Isobgul er vushi -1.jpg', NULL, NULL),
(111, 618, '8vZhJam Beez.jpg', NULL, NULL),
(112, 619, 'BP19Jastte Mothu.jpg', NULL, NULL),
(113, 620, 'ScXZKalojira asto.jpg', NULL, NULL),
(114, 621, 'jQ7CKalojira.jpg', NULL, NULL),
(115, 622, '4QUIKochi Mango.jpg', NULL, NULL),
(116, 623, 'a62HMistree DANA.jpg', NULL, NULL),
(117, 624, 'INARNeem.jpg', NULL, NULL),
(118, 625, 'b2tSpink salt guro.jpg', NULL, NULL),
(119, 626, 'Mrv8Pink Salt raw-1.jpg', NULL, NULL),
(120, 627, 'JcV7Shila jut.jpg', NULL, NULL),
(121, 628, 'K7d0440368465_844826947670340_2239043778302246463_n.jpg', NULL, NULL),
(122, 629, '5lKxPudina.jpg', NULL, NULL),
(123, 630, '2hR8Sajne Pata.jpg', NULL, NULL),
(124, 631, 'hy5qShimul gura 2.jpg', NULL, NULL),
(125, 632, '5GCTShonkomull-1.jpg', NULL, NULL),
(126, 633, 't1gfShotomul Premium-1.jpg', NULL, NULL),
(127, 634, 'xnbppancha vut 1.jpg', NULL, NULL),
(128, 635, 'XxgzAmloki P.jpg', NULL, NULL),
(129, 636, 'zJNgSona pata.jpg', NULL, NULL),
(130, 637, 'kprHSona pata raw.jpg', NULL, NULL),
(131, 638, 'zHOJtalmul-3.jpg', NULL, NULL),
(132, 639, 'RVGrtrifola2.jpg', NULL, NULL),
(133, 640, '1O2kBoch.jpg', NULL, NULL),
(134, 641, 'sJjatetul.jpg', NULL, NULL),
(135, 642, 'ceU2tetul-2.jpg', NULL, NULL),
(136, 643, 'frtdBeetroot.jpg', NULL, NULL),
(137, 643, 'PGwEIMG_20231213_134600.jpg', NULL, NULL),
(138, 644, 'MOzPMethi gura.jpg', NULL, NULL),
(139, 645, 'w9ahchirota.jpg', NULL, NULL),
(140, 646, 'aKITtulshi.jpg', NULL, NULL),
(141, 647, 'eyAFTomato raw-2.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `home_cutomizes`
--

CREATE TABLE `home_cutomizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `banner_first` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_secend` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_third` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `popular_category` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_column_category` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feature_category` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `home_page4` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_4_popular_category` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_banner` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_cutomizes`
--

INSERT INTO `home_cutomizes` (`id`, `banner_first`, `banner_secend`, `banner_third`, `popular_category`, `two_column_category`, `feature_category`, `created_at`, `updated_at`, `home_page4`, `home_4_popular_category`, `hero_banner`) VALUES
(1, '{\"title1\":\"Watch\",\"subtitle1\":\"50% OFF\",\"firsturl1\":\"#\",\"title2\":\"Drone\",\"subtitle2\":\"40% OFF\",\"firsturl2\":\"#\",\"title3\":\"Phone\",\"subtitle3\":\"30% OFF\",\"firsturl3\":\"#\",\"img1\":\"Kkydkismis.jpg\",\"img2\":\"0l7Wchinna.jpg\",\"img3\":\"NhOdbb.jpg\"}', '{\"title1\":\"Watch\",\"subtitle1\":\"50% OFF\",\"url1\":\"#\",\"title2\":\"Man\",\"subtitle2\":\"40% OFF\",\"url2\":\"#\",\"title3\":\"Headphone\",\"subtitle3\":\"60% OFF\",\"url3\":\"#\",\"img1\":\"7KIabeetroot.jpg\",\"img2\":\"jFVB3ndT8NpYFLHyqw6wBDPc2u4ZSYo3d8Lg0SKu1pnU.jpg\",\"img3\":\"E1Crslidere.jpeg\"}', '{\"title1\":\"Watch\",\"subtitle1\":\"50% OFF\",\"url1\":\"#\",\"title2\":\"Headphones\",\"subtitle2\":\"40% OFF\",\"url2\":\"#\",\"img1\":\"9j8omodhu.jpg\",\"img2\":\"phqbimportant.jpg\"}', '{\"popular_title\":\"Popular Categories\",\"category_id1\":\"19\",\"subcategory_id1\":null,\"category_id2\":\"18\",\"subcategory_id2\":null,\"category_id3\":\"21\",\"subcategory_id3\":null,\"category_id4\":null,\"subcategory_id4\":null}', '{\"category_id1\":\"27\",\"subcategory_id1\":null,\"childcategory_id1\":null,\"category_id2\":\"22\",\"subcategory_id2\":null,\"childcategory_id2\":null,\"category_id3\":\"21\",\"subcategory_id3\":null,\"childcategory_id3\":null}', '{\"feature_title\":\"Featured Categories\",\"category_id1\":\"18\",\"subcategory_id1\":null,\"childcategory_id1\":null,\"category_id2\":\"27\",\"subcategory_id2\":null,\"childcategory_id2\":null,\"category_id3\":\"21\",\"subcategory_id3\":null,\"childcategory_id3\":null,\"category_id4\":\"22\",\"subcategory_id4\":null,\"childcategory_id4\":null}', NULL, NULL, '{\"label1\":\"FORMAL\",\"url1\":\"#\",\"label2\":\"LIMITEN EDITION\",\"url2\":\"#\",\"label3\":\"WOMEN\'S COLLECTION\",\"url3\":\"#\",\"label4\":\"SMART CASUALS\",\"url4\":\"#\",\"label5\":\"POLO\",\"url5\":\"#\",\"img1\":\"16368975771.jpg\",\"img2\":\"16368975772.jpg\",\"img3\":\"16368975773.jpg\",\"img4\":\"16368975774.jpg\",\"img5\":\"16368975775.jpg\"}', '[\"18\",\"19\",\"21\",\"27\"]', '{\"title1\":\"Watch\",\"subtitle1\":\"Discount\",\"url1\":\"https:\\/\\/agrofarmbd.com\\/product\\/Aliquip%20lorem%20assume\",\"title2\":\"Beetroot\",\"subtitle2\":\"#\",\"url2\":\"#\",\"img2\":\"B9Dnbeetroot.jpg\",\"img1\":\"MWQdChia 1 on.jpg\"}');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) DEFAULT 0,
  `subcategory_id` int(11) DEFAULT 0,
  `childcategory_id` int(11) DEFAULT 0,
  `tax_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT 0,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specification_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specification_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_specification` tinyint(4) DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_price` double DEFAULT 0,
  `previous_price` double DEFAULT 0,
  `stock` int(11) DEFAULT 0,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `is_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_type` enum('file','link') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `license_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'normal',
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `affiliate_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `category_id`, `subcategory_id`, `childcategory_id`, `tax_id`, `brand_id`, `name`, `slug`, `sku`, `tags`, `video`, `sort_details`, `specification_name`, `specification_description`, `is_specification`, `details`, `photo`, `discount_price`, `previous_price`, `stock`, `meta_keywords`, `meta_description`, `status`, `is_type`, `date`, `file`, `link`, `file_type`, `created_at`, `updated_at`, `license_name`, `license_key`, `item_type`, `thumbnail`, `affiliate_link`) VALUES
(603, 18, NULL, NULL, NULL, NULL, 'অশ্বগন্ধা Ashwagandha Powder 100 gm', 'অশ্বগন্ধা-Ashwagandha-Powder-100-gm-', 'XUddNJSewZ', 'অশ্বগন্ধা Ashwagandha,অশ্বগন্ধা', 'https://youtu.be/Kh22dNCMNAE?si=4tc64J12hV997qu7', 'অশ্বগন্ধা Ashwagandha Powder', '[null]', '[null]', 1, '<p>অশ্বগন্ধা Ashwagandha Powder<br>আমরা&nbsp; নিজেদের জমিতে চাষ করে থাকি।&nbsp;<br>বাছাইকৃত মুল থেকে গুড়ো করা হয়।&nbsp;<br>ঘুম ভালো হয়&nbsp;<br>স্নায়ুবিক দুর্বলতা দুর করতে সহায়ক।&nbsp;<br><br></p>', '1716731752Assagandha.jpg', 1.7857142857143, 1.6666666666667, 98, 'অশ্বগন্ধা Ashwagandha,যৌন সমস্যা সমাধান করে', 'অশ্বগন্ধা Ashwagandha', 1, 'undefine', NULL, NULL, NULL, NULL, '2024-05-26 17:55:52', '2024-06-03 00:51:42', NULL, NULL, 'normal', '1716731752Assagandha.jpg', NULL),
(604, 19, NULL, NULL, NULL, NULL, 'Combo Pack পৌরষ কম্বো 600 gm', 'Combo-Pack-পৌরষ-কম্বো-600-gm-', 'wVS9qsAqzz', 'শিমূল মুল গুড়ো 200 গ্রাম তেতুল গুড়ো 200 গ্রাম অশ্বগন্ধা  200 গ্রাম টোটাল 600 গ্রাম', NULL, 'Combo Pack পৌরষ কম্বো 600 gm', NULL, NULL, 0, '<p>Combo Pack পৌরষ কম্বো 600 gm&nbsp;<br>শিমূল মুল গুড়ো 200 গ্রাম&nbsp;<br>তেতুল গুড়ো 200 গ্রাম&nbsp;<br>অশ্বগন্ধা&nbsp; 200 গ্রাম&nbsp;<br>টোটাল 600 গ্রাম<br><br></p><div class=\"\" data-block=\"true\" data-editor=\"5uobm\" data-offset-key=\"1nd66-0-0\" style=\"font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(28, 30, 33); font-size: 14px; white-space-collapse: preserve;\"><div data-offset-key=\"1nd66-0-0\" class=\"_1mf _1mj\" style=\"position: relative; direction: ltr; font-family: inherit;\"><span data-offset-key=\"1nd66-0-0\" style=\"font-family: inherit;\">উপকারিতা </span></div></div><div class=\"\" data-block=\"true\" data-editor=\"5uobm\" data-offset-key=\"92j4t-0-0\" style=\"font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(28, 30, 33); font-size: 14px; white-space-collapse: preserve;\"><div data-offset-key=\"92j4t-0-0\" class=\"_1mf _1mj\" style=\"position: relative; direction: ltr; font-family: inherit;\"><span data-offset-key=\"92j4t-0-0\" style=\"font-family: inherit;\">* যৌ/ন ক্ষমতা বাড়বে</span></div></div><div class=\"\" data-block=\"true\" data-editor=\"5uobm\" data-offset-key=\"5q45n-0-0\" style=\"font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(28, 30, 33); font-size: 14px; white-space-collapse: preserve;\"><div data-offset-key=\"5q45n-0-0\" class=\"_1mf _1mj\" style=\"position: relative; direction: ltr; font-family: inherit;\"><span data-offset-key=\"5q45n-0-0\" style=\"font-family: inherit;\">* বী/র্য গাঢ় করে</span></div></div><div class=\"\" data-block=\"true\" data-editor=\"5uobm\" data-offset-key=\"fgnk4-0-0\" style=\"font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(28, 30, 33); font-size: 14px; white-space-collapse: preserve;\"><div data-offset-key=\"fgnk4-0-0\" class=\"_1mf _1mj\" style=\"position: relative; direction: ltr; font-family: inherit;\"><span data-offset-key=\"fgnk4-0-0\" style=\"font-family: inherit;\">* শু-ক্রাণু সংখ্যা বৃদ্ধি করে</span></div></div><div class=\"\" data-block=\"true\" data-editor=\"5uobm\" data-offset-key=\"7rk07-0-0\" style=\"font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(28, 30, 33); font-size: 14px; white-space-collapse: preserve;\"><div data-offset-key=\"7rk07-0-0\" class=\"_1mf _1mj\" style=\"position: relative; direction: ltr; font-family: inherit;\"><span data-offset-key=\"7rk07-0-0\" style=\"font-family: inherit;\">* হজ/ম শক্তি বাড়বে</span></div></div><div class=\"\" data-block=\"true\" data-editor=\"5uobm\" data-offset-key=\"463bf-0-0\" style=\"font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(28, 30, 33); font-size: 14px; white-space-collapse: preserve;\"><div data-offset-key=\"463bf-0-0\" class=\"_1mf _1mj\" style=\"position: relative; direction: ltr; font-family: inherit;\"><span data-offset-key=\"463bf-0-0\" style=\"font-family: inherit;\">* কো-ষ্ঠ কাঠিন্য ভালো হবে। </span></div></div><div class=\"\" data-block=\"true\" data-editor=\"5uobm\" data-offset-key=\"1tco2-0-0\" style=\"font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(28, 30, 33); font-size: 14px; white-space-collapse: preserve;\"><div data-offset-key=\"1tco2-0-0\" class=\"_1mf _1mj\" style=\"position: relative; direction: ltr; font-family: inherit;\"><span data-offset-key=\"1tco2-0-0\" style=\"font-family: inherit;\">* স্বপ্নদোষ দুর হবে</span></div></div><div class=\"\" data-block=\"true\" data-editor=\"5uobm\" data-offset-key=\"9t7ft-0-0\" style=\"font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(28, 30, 33); font-size: 14px; white-space-collapse: preserve;\"><div data-offset-key=\"9t7ft-0-0\" class=\"_1mf _1mj\" style=\"position: relative; direction: ltr; font-family: inherit;\"><span data-offset-key=\"9t7ft-0-0\" style=\"font-family: inherit;\"><br data-text=\"true\"></span></div></div><div class=\"\" data-block=\"true\" data-editor=\"5uobm\" data-offset-key=\"afnhm-0-0\" style=\"font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(28, 30, 33); font-size: 14px; white-space-collapse: preserve;\"><div data-offset-key=\"afnhm-0-0\" class=\"_1mf _1mj\" style=\"position: relative; direction: ltr; font-family: inherit;\"><span data-offset-key=\"afnhm-0-0\" style=\"font-family: inherit;\"> ঔষধ নয় খাদ্য \r\n\r\nখাবার নিয়ম\r\nসব গুলো ১ সাথে মিক্স করে,\r\n১ চামচ 1 গ্লাস পানিতে মিক্স করে সকাল ও বিকেলে খেতে পারবেন।\r\nপ্রয়োজনে মধু এড করতে পারেন। </span></div></div>', '171674377717.jpg', 5.952380952381, 8.5119047619048, 96, 'Combo Pack পৌরষ কম্বো 600 gm', 'Combo Pack পৌরষ কম্বো 600 gm', 1, 'undefine', NULL, NULL, NULL, NULL, '2024-05-26 21:16:17', '2024-05-29 17:02:59', NULL, NULL, 'normal', '171674377717.jpg', NULL),
(605, 18, NULL, 0, NULL, NULL, 'আদা গুড়ো Ginger (Ada) Powder 100 gm', 'আদা-গুড়ো-Ginger--Ada--Powder-100-gm-', 'qlqfERQwk0', 'আদা গুড়ো Ginger (Ada) Powder', NULL, 'আদা গুড়ো Ginger (Ada) Powder', '[null]', '[null]', 1, '<p>আদা গুড়ো Ginger (Ada) Powder<br></p>', '1716744322Ada.jpg', 1.7857142857143, 1.7857142857143, 100, '', 'আদা গুড়ো Ginger (Ada) Powder\r\nOrigin: china', 1, 'undefine', NULL, NULL, NULL, NULL, '2024-05-26 21:25:22', '2024-05-26 21:25:22', NULL, NULL, 'normal', '1716744322Ada.jpg', NULL),
(606, 18, NULL, 0, NULL, NULL, 'Akorkora Powder আকরকরা 100 gm', 'Akorkora-Powder-আকরকরা-100-gm-', 'h7M2G0dhPt', 'Akorkora Powder আকরকরা', NULL, 'Akorkora Powder আকরকরা', NULL, NULL, 0, '<p>Akorkora Powder আকরকরা&nbsp;<br></p>', '1716744517Akorkora.jpg', 3.5714285714286, 3.6904761904762, 99, 'Akorkora Powder আকরকরা,Akorkora,Akorkora Powder,আকরকরা', 'Akorkora Powder আকরকরা', 1, 'undefine', NULL, NULL, NULL, NULL, '2024-05-26 21:28:37', '2024-05-27 00:37:13', NULL, NULL, 'normal', '1716744517Akorkora.jpg', NULL),
(607, 18, NULL, 0, NULL, NULL, 'আলকুশি দুধে শোধন করা Alkushi Premium 100 gm', 'আলকুশি-দুধে-শোধন-করা-Alkushi-Premium-100-gm-', 'yF5gYKHoIK', 'আলকুশি দুধে শোধন করা Alkushi Premium 100 gm', NULL, 'আলকুশি দুধে শোধন করা Alkushi Premium', NULL, NULL, 0, '<p>আলকুশি দুধে শোধন করা Alkushi Premium 100 gm&nbsp;<br></p>', '1716744760IMG_20240427_094916.jpg', 1.7857142857143, 1.7857142857143, 97, 'আলকুশি দুধে শোধন করা Alkushi Premium 100 gm,আলকুশি,পাহাড়ী আলকুশি,জংলি আলকুশি,সেক্স বাড়ানোর ঔষধ', 'আলকুশি দুধে শোধন করা Alkushi Premium 100 gm', 1, 'undefine', NULL, NULL, NULL, NULL, '2024-05-26 21:32:42', '2024-06-03 00:51:42', NULL, NULL, 'normal', '1716744760IMG_20240427_094916.jpg', NULL),
(608, 18, NULL, 0, NULL, NULL, 'আলকুশি রেগুলার 100 গ্রাম', 'আলকুশি-রেগুলার-100-গ্রাম-', 'Q60bDMWDrt', 'velvet bean,আলকুশি', NULL, 'আলকুশি রেগুলার', NULL, NULL, 0, '<p>আলকুশি রেগুলার&nbsp;<br>দুধে শোধন ছাড়া , খোসা সহ&nbsp;</p>', '1716745212alkushi asto -1.jpg', 0.83333333333333, 0.77380952380952, 100, 'আলকুশি,Alkushi,velvet bean', 'আলকুশি রেগুলার', 1, 'undefine', NULL, NULL, NULL, NULL, '2024-05-26 21:40:12', '2024-05-26 21:40:12', NULL, NULL, 'normal', '1716745212alkushi asto -1.jpg', NULL),
(609, 18, NULL, 0, NULL, NULL, 'Amloki powder আমলকী 100 গ্রাম', 'Amloki-powder-আমলকী-100-গ্রাম-', 'fUgvwGs7oK', 'Amloki powder আমলকী 100 গ্রাম', NULL, 'Amloki powder আমলকী 100 গ্রাম ভেতরের বিচি সহ', NULL, NULL, 0, '<p>Amloki powder আমলকী 100 গ্রাম&nbsp;<br></p>', '1716745448Amloki 2.jpg', 0.77380952380952, 0.77380952380952, 100, 'ভেতরের বিচি সহ,Amloki powder আমলকী,Amloki powder,আমলকী,Amla', 'Amla amloki', 1, 'undefine', NULL, NULL, NULL, NULL, '2024-05-26 21:44:08', '2024-05-26 21:44:08', NULL, NULL, 'normal', '1716745448Amloki 2.jpg', NULL),
(610, 18, NULL, 0, NULL, NULL, 'Arjun Powder অর্জুন 100 gm', 'Arjun-Powder-অর্জুন-100-gm', 'nLHsLMUREO', 'Arjun Powder অর্জুন,দেশি অর্জুন', NULL, 'Arjun Powder অর্জুন', NULL, NULL, 0, '<p>Arjun Powder অর্জুন&nbsp;<br>অর্জুন গাছের ছাল গুড়ো&nbsp;</p>', '1716745634Arjun gura-3.jpg', 0.95238095238095, 0.95238095238095, 100, 'Arjun Powder অর্জুন 100 gm,Arjun Powder,অর্জুন,Arjuna', NULL, 1, 'undefine', NULL, NULL, NULL, NULL, '2024-05-26 21:47:14', '2024-05-26 21:47:14', NULL, NULL, 'normal', '1716745634Arjun gura-3.jpg', NULL),
(611, 18, NULL, NULL, NULL, NULL, 'কচি বেল গুড়ো bell', 'কচি-বেল-গুড়ো-bell-', '36N64YLA0N', 'কচি বেল গুড়ো bell', NULL, 'কচি বেল গুড়ো bell', NULL, NULL, 0, '<p>কচি বেল গুড়ো bell&nbsp;<br></p>', '1716745911bel.jpg', 0.95238095238095, 0.77380952380952, 100, 'কচি বেল গুড়ো bell,কচি বেল,বেল গুড়ো,bal,bel', 'কচি বেল গুড়ো bell', 1, 'undefine', NULL, NULL, NULL, NULL, '2024-05-26 21:51:51', '2024-05-29 19:36:31', NULL, NULL, 'normal', '1716745911bel.jpg', NULL),
(612, 18, NULL, 0, NULL, NULL, 'বহেড়া গুড়ো Bohera Powder 100 gm', 'বহেড়া-গুড়ো-Bohera-Powder-100-gm', 'kCEyxJeUMq', 'বহেড়া গুড়ো Bohera Powder', NULL, 'বহেড়া গুড়ো Bohera Powder', NULL, NULL, 0, '<p>বহেড়া গুড়ো Bohera Powder<br></p>', '1716796688Bohera.jpg', 0.83333333333333, 0.83333333333333, 100, 'বহেড়া গুড়ো Bohera Powder,বহেড়া,Bohera', 'বহেড়া গুড়ো Bohera Powder agrofarmbd agrofirmbd', 1, 'undefine', NULL, NULL, NULL, NULL, '2024-05-27 11:58:08', '2024-05-27 11:58:08', NULL, NULL, 'normal', '1716796688Bohera.jpg', NULL),
(613, 18, NULL, 0, NULL, NULL, 'Cinnamon Powder দারুচিনি গুড়া 100 gm', 'Cinnamon-Powder-দারুচিনি-গুড়া-100-gm-', '6xkHwpP4vT', 'Cinnamon Powder (দারুচিনি গুড়া)', NULL, 'Cinnamon Powder (দারুচিনি গুড়া)', NULL, NULL, 0, '<p>Cinnamon Powder<br><a jsname=\"UWckNb\" href=\"https://organiconline.com.bd/shop/grocery/spice-powder/cinnamon-powder%E0%A6%A6%E0%A6%BE%E0%A6%B0%E0%A7%81%E0%A6%9A%E0%A6%BF%E0%A6%A8%E0%A6%BF-%E0%A6%97%E0%A7%81%E0%A7%9C%E0%A6%BE/\" data-ved=\"2ahUKEwir__byrq2GAxVvzDgGHTNMBkMQFnoECB8QAw\" ping=\"/url?sa=t&amp;source=web&amp;rct=j&amp;opi=89978449&amp;url=https://organiconline.com.bd/shop/grocery/spice-powder/cinnamon-powder%25E0%25A6%25A6%25E0%25A6%25BE%25E0%25A6%25B0%25E0%25A7%2581%25E0%25A6%259A%25E0%25A6%25BF%25E0%25A6%25A8%25E0%25A6%25BF-%25E0%25A6%2597%25E0%25A7%2581%25E0%25A7%259C%25E0%25A6%25BE/&amp;ved=2ahUKEwir__byrq2GAxVvzDgGHTNMBkMQFnoECB8QAw\" style=\"color: var(--JKqx2); -webkit-tap-highlight-color: rgba(0, 0, 0, 0.1); outline: 0px; font-family: arial, sans-serif; font-size: small; background-color: rgb(255, 255, 255);\"></a></p>', '1716797176daruchini.jpg', 1.1904761904762, 1.1904761904762, 50, 'Cinnamon Powder (দারুচিনি গুড়া)', 'Cinnamon Powder (দারুচিনি গুড়া)', 1, 'undefine', NULL, NULL, NULL, NULL, '2024-05-27 12:06:16', '2024-05-27 12:06:16', NULL, NULL, 'normal', '1716797176daruchini.jpg', NULL),
(614, 18, NULL, 0, NULL, NULL, 'গুলঞ্চ Giloy powder 100 gm', 'গুলঞ্চ-Giloy-powder-100-gm-', 'cDpquU3Ej0', 'গুলঞ্চ Giloy powder,gotukola,গতুকলা', NULL, 'গুলঞ্চ Giloy powder', NULL, NULL, 0, '<p>গুলঞ্চ Giloy powder<br></p>', '1716797533Giloy-3.jpg', 1.1904761904762, 1.3095238095238, 100, 'গুলঞ্চ Giloy powder', 'গুলঞ্চ Giloy powder', 1, 'undefine', NULL, NULL, NULL, NULL, '2024-05-27 12:12:13', '2024-05-27 12:12:13', NULL, NULL, 'normal', '1716797533Giloy-3.jpg', NULL),
(615, 18, NULL, 0, NULL, 1, 'গোক্ষুর কাটা Gokkhur powder 100 gm', 'গোক্ষুর-কাটা-Gokkhur-powder-100-gm-', 'jCLDkBFQ6t', 'Gokkhur Powder (গোক্ষুর কাটা গুড়া),Gokkhur Powder', NULL, 'Gokkhur Powder (গোক্ষুর কাটা গুড়া)', NULL, NULL, 0, '<p><br></p>', '1716798112gokkhur -1.jpg', 1.1904761904762, 1.1904761904762, 100, 'Gokkhur Powder,গোক্ষুর কাটা গুড়া', 'Gokkhur Powder গোক্ষুর কাটা গুড়া', 1, 'undefine', NULL, NULL, NULL, NULL, '2024-05-27 12:21:52', '2024-05-27 12:21:52', NULL, NULL, 'normal', '1716798112gokkhur -1.jpg', NULL),
(616, 18, NULL, 0, NULL, 1, 'হরিতকী (Myrobalan) Horitoki powder', 'হরিতকী--Myrobalan--Horitoki-powder-', 'XakMvz6TbH', 'হরিতকী (Myrobalan)', NULL, 'হরিতকী (Myrobalan)', NULL, NULL, 0, '<p><br></p>', '1716799886Haritaki 2.jpg', 0.77380952380952, 0.78571428571429, 100, 'হরিতকী (Myrobalan),Horitoki', 'হরিতকী (Myrobalan)', 1, 'undefine', NULL, NULL, NULL, NULL, '2024-05-27 12:51:26', '2024-05-27 12:51:26', NULL, NULL, 'normal', '1716799886Haritaki 2.jpg', NULL),
(617, 18, NULL, 0, NULL, NULL, 'Psyllium Husk ইসব গুলের ভুষি 50 gm', 'Psyllium-Husk-ইসব-গুলের-ভুষি-50-gm', 'eOLp9lGrAt', 'Psyllium Husk ইসব গুলের ভুষি', NULL, 'Psyllium Husk ইসব গুলের ভুষি', '[\"Psyllium Husk \\u0987\\u09b8\\u09ac \\u0997\\u09c1\\u09b2\\u09c7\\u09b0 \\u09ad\\u09c1\\u09b7\\u09bf\"]', '[\"Psyllium Husk \\u0987\\u09b8\\u09ac \\u0997\\u09c1\\u09b2\\u09c7\\u09b0 \\u09ad\\u09c1\\u09b7\\u09bf\"]', 1, '<p>Psyllium Husk ইসব গুলের ভুষি&nbsp;<br>Frees Quality&nbsp;</p>', '1716800140Isobgul er vushi -3.jpg', 1.9047619047619, 1.9047619047619, 50, 'Psyllium Husk ইসব গুলের ভুষি,Psyllium Husk,Isobguler vushi', 'Psyllium Husk ইসব গুলের ভুষি', 1, 'undefine', NULL, NULL, NULL, NULL, '2024-05-27 12:55:40', '2024-05-27 12:55:40', NULL, NULL, 'normal', '1716800140Isobgul er vushi -3.jpg', NULL),
(618, 18, NULL, 0, NULL, NULL, 'জাম বীজ গুড়ো Jam Beez  100 gm', 'জাম-বীজ-গুড়ো-Jam-Beez--100-gm-', '2RlHZtcZKd', 'জাম বীজ গুড়ো Jam Beez', NULL, 'জাম বীজ গুড়ো Jam Beez', NULL, NULL, 0, '<p><span style=\"font-family: &quot;Source Sans Pro&quot;; font-size: 14px;\">ডায়বেটিস থেকে মুক্তির রক্ষা কবচ ন্যাচারালস জাম বীজ গুড়া। জাম বীজ অত্যন্ত উপকারি একটি প্রাকৃতিক খাদ্য যা বিভিন্ন দূরারোগ্য ব্যাধি নির্মূলে কার্যকর ভূমিকা রাখে।ডায়াবেটিস নিয়ন্ত্রণে স্বাস্থ্য বিশেষজ্ঞরা জামের বীজ ব্যবহারের পরামর্শ দেন।</span><br></p>', '1716800348Jam Beez.jpg', 0.95238095238095, 1.1904761904762, 100, 'জাম বীজ গুড়ো Jam Beez,জাম বীজ', 'জাম বীজ গুড়ো Jam Beez', 1, 'undefine', NULL, NULL, NULL, NULL, '2024-05-27 12:59:08', '2024-05-27 12:59:08', NULL, NULL, 'normal', '1716800348Jam Beez.jpg', NULL),
(619, 18, NULL, 0, NULL, NULL, 'যষ্টিমধু গুড়ো Liquorice  Josti Modhu  100 gm', 'যষ্টিমধু-গুড়ো-Liquorice--Josti-Modhu--100-gm', 'nQJ9LcPvRs', 'যষ্টিমধু গুড়ো Liquorice  Josti Modhu', NULL, 'যষ্টিমধু গুড়ো Liquorice  Josti Modhu', NULL, NULL, 0, '<p>যষ্টিমধু গুড়ো Liquorice&nbsp; Josti Modhu&nbsp;<br></p>', '1716800571jaste modhu 2.jpg', 0.95238095238095, 0.77380952380952, 100, 'যষ্টিমধু,Liquorice,Josti Modhu', 'যষ্টিমধু গুড়ো Liquorice  Josti Modhu', 1, 'undefine', NULL, NULL, NULL, NULL, '2024-05-27 13:02:51', '2024-05-27 13:02:51', NULL, NULL, 'normal', '1716800571jaste modhu 2.jpg', NULL),
(620, 18, NULL, 0, NULL, NULL, 'black seed raw কালোজিরা আস্ত 100 gm', 'black-seed-raw-কালোজিরা-আস্ত-100-gm-', 'idD1uth1mp', 'কালোজিরা আস্ত,black seed raw', NULL, 'black seed raw কালোজিরা আস্ত', NULL, NULL, 0, '<p>black seed raw কালোজিরা আস্ত<br>রং ও ক্যামিক্যাল মুক্ত&nbsp;</p>', '1716800998Kalojira asto.jpg', 0.95238095238095, 0.95238095238095, 100, 'black seed raw কালোজিরা আস্ত', 'black seed raw কালোজিরা আস্ত', 1, 'undefine', NULL, NULL, NULL, NULL, '2024-05-27 13:09:58', '2024-05-27 13:09:58', NULL, NULL, 'normal', '1716800998Kalojira asto.jpg', NULL),
(621, 18, NULL, 0, NULL, NULL, 'black seed  কালোজিরা গুড়ো 100 gm', 'black-seed--কালোজিরা-গুড়ো-100-gm', 'UUxFi25wQ8', 'black seed,কালোজিরা গুড়ো', NULL, 'black seed  কালোজিরা গুড়ো', NULL, NULL, 0, '<p>black seed&nbsp; কালোজিরা গুড়ো<br></p>', '1716801154Kalojira.jpg', 1.1904761904762, 1.1904761904762, 99, 'black seed  কালোজিরা গুড়ো', 'black seed  কালোজিরা গুড়ো', 1, 'undefine', NULL, NULL, NULL, NULL, '2024-05-27 13:12:34', '2024-05-27 18:55:11', NULL, NULL, 'normal', '1716801154Kalojira.jpg', NULL),
(622, 18, NULL, 0, NULL, NULL, 'কচি আম গুড়ো Young Mango 100 gm', 'কচি-আম-গুড়ো-Young-Mango-100-gm', '0AVcI2SQ5V', 'কচি আম গুড়ো Young Mango,Mango,Mango powder,কচি আম', NULL, 'কচি আম গুড়ো Young Mango', NULL, NULL, 0, '<p>কচি আম গুড়ো Young Mango <br></p>', '1716872695aa3afda3592bb05ffc6db666abe36d2e8aa0450359f8af86.jpg', 0.95238095238095, 0.95238095238095, 100, 'children Mango,mango seeds,kochi am,a,ngo powder', 'কচি আম গুড়ো Young Mango', 1, 'undefine', NULL, NULL, NULL, NULL, '2024-05-28 09:04:56', '2024-05-28 09:04:56', NULL, NULL, 'normal', '1716872695aa3afda3592bb05ffc6db666abe36d2e8aa0450359f8af86.jpg', NULL),
(623, 18, NULL, 0, NULL, NULL, 'বির্যমূল মিশ্রিদানা 100 gm powder Birjomoni Powder', 'বির্যমূল-মিশ্রিদানা-100-gm-powder-Birjomoni-Powder', 'zOUP5GtPfo', 'বির্যমূল মিশ্রিদানা 100 gm powder Birjomoni Powder', NULL, 'বির্যমূল মিশ্রিদানা 100 gm powder Birjomoni Powder', NULL, NULL, 0, '<p>বির্যমূল মিশ্রিদানা 100 gm powder Birjomoni Powder<br></p>', '1716873116Mistre DANA-1.jpg', 1.7857142857143, 1.6666666666667, 99, 'বির্যমূল,মিশ্রিদানা,Birjomoni,Birjomull', 'বির্যমূল মিশ্রিদানা 100 gm powder Birjomoni Powder', 1, 'undefine', NULL, NULL, NULL, NULL, '2024-05-28 09:11:56', '2024-05-28 09:18:59', NULL, NULL, 'normal', '1716873116Mistre DANA-1.jpg', NULL),
(624, 18, NULL, NULL, NULL, NULL, 'নিম পাতা গুড়ো Neem Leaf Powder 100 gm', 'নিম-পাতা-গুড়ো-Neem-Leaf-Powder-100-gm', 'klx4RBR8eo', 'নিম পাতা গুড়ো Neem Leaf Powder', 'https://youtube.com/shorts/3wG5Qrw7Hs0?si=8LH5ybUqPELhj0z9', 'নিম পাতা গুড়ো Neem Leaf Powder', NULL, NULL, 0, '<p>নিম পাতা গুড়ো Neem Leaf Powder<br><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; white-space-collapse: preserve; background-color: rgb(240, 240, 240);\">নিম পাতা গুড়ো</span><br></p><p dir=\"auto\" style=\"margin-right: 0px; margin-bottom: 11.5px; margin-left: 0px; line-height: 30px; color: rgb(119, 119, 119); font-family: &quot;Source Sans Pro&quot;; font-size: 14px;\">জাতিসংঘ ঘোষিত একুশ শতকের উদ্ভিদ নিম। নানা রোগের নিরাময়ে নিম অসাধারণ কার্যকর।</p><p dir=\"auto\" style=\"margin-right: 0px; margin-bottom: 11.5px; margin-left: 0px; line-height: 30px; color: rgb(119, 119, 119); font-family: &quot;Source Sans Pro&quot;; font-size: 14px;\"><span style=\"font-weight: 700;\">উপকারিতাসমূহঃ</span><br>১। নিম পাতার গুঁড়া ডায়বেটিস নিয়ন্ত্রণ করে।<br>২। রক্ত পরিষ্কার এবং শরীর থেকে বিষাক্ত পদার্থ বের করতে সাহায্য করে।<br>৩। অ্যালার্জি, একজিমা ও চর্মরোগ নিয়ন্ত্রণে নিম যেন মহৌষধ।<br>৪। জন্ডিস ও ভাইরাল রোগ নিরাময়ে নিমের ব্যবহার বহুকাল ধরে প্রচলিত।<br>৫। ত্বকের ইরিটেশন, ব্রণ ও ক্ষত দূর করে।<br>৬। চুলের সৌন্দর্য বৃদ্ধি, উকুন ও খুশকি দূর করতে যাদুর মতো কাজ করে।<br><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; white-space-collapse: preserve; background-color: rgb(240, 240, 240);\">\r\nসেবন পদ্ধতি: ৫/৭ গ্রাম বা ১ চা চামচ ১ গ্লাস পানিতে ৩০ মিনিট ভিজিয়ে\r\nরেখে শুধু পানি খাবেন। পেষ্ট বানিয়ে চুলে ও ত্বকে ব্যবহার করতে পারেন।\r\n<b>সতর্কতাঃ গর্ভবতী ও শিশুদের কনসালটেন্ট এর পরামর্শ</b>\r\nঅনুযায়ী সেব্য।\r\nসংরক্ষন পদ্ধতি: প্রতি মাসে ১ বার রোদে দিবেন।\r\nসম্ভব হলে কাঁচের জারে রাখবেন।\r\n\r\n</span><br></p>', '1716875317Neem-1.jpg', 0.83333333333333, 0.83333333333333, 100, 'নিম পাতা গুড়ো Neem Leaf Powder,নিম পাতা গুড়ো,Neem Leaf Powder,Neem Leaf', 'নিম পাতা গুড়ো Neem Leaf Powder', 1, 'undefine', NULL, NULL, NULL, NULL, '2024-05-28 09:48:37', '2024-05-29 12:06:50', NULL, NULL, 'normal', '1716875317Neem-1.jpg', NULL),
(625, 18, NULL, NULL, NULL, NULL, 'himalayan pink salt Powder 500 gm মিহি গুড়ো', 'himalayan-pink-salt-Powder-500-gm-মিহি-গুড়ো-', 'LBizAJgmos', 'himalayan pink salt Powder,pink salt', NULL, 'himalayan pink salt Powder', NULL, NULL, 0, '<p>himalayan pink salt Powder&nbsp;<br></p>', '1716875608pink salt guro.jpg', 1.7857142857143, 1.7857142857143, 99, 'himalayan pink salt Powder,himalayan pink s,pink salt', NULL, 1, 'undefine', NULL, NULL, NULL, NULL, '2024-05-28 09:53:33', '2024-06-03 00:51:42', NULL, NULL, 'normal', '1716875608pink salt guro.jpg', NULL),
(626, 18, NULL, 0, NULL, NULL, 'himalayan pink salt raw 500 gm', 'himalayan-pink-salt-raw-500-gm', 'TYyhPzZ0Lu', 'himalayan pink salt raw,পিংক সল্ট', NULL, 'himalayan pink salt raw', NULL, NULL, 0, '<p>himalayan pink salt raw<br></p>', '1716876588Pink Salt raw-1.jpg', 1.4880952380952, 1.4880952380952, 83, 'himalayan pink salt raw', 'himalayan pink salt raw', 1, 'undefine', NULL, NULL, NULL, NULL, '2024-05-28 10:09:48', '2024-05-28 10:29:10', NULL, NULL, 'normal', '1716876588Pink Salt raw-1.jpg', NULL),
(627, 18, NULL, 0, NULL, NULL, 'Shilajut, Shilajit (Refined) শিলাজুত (শোধন করা)100 gm', 'Shilajut--Shilajit--Refined--শিলাজুত--শোধন-করা-100-gm', 'ngHMIngC4k', 'Shilajut,Shilajit (Refined) শিলাজুত (শোধন করা)100 gm', NULL, 'Shilajut, Shilajit (Refined) শিলাজুত (শোধন করা)', NULL, NULL, 0, '<p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-family: SolaimanLipi, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 15px; color: rgb(56, 56, 56);\">শিলাজিৎ একটি খনিজ পদার্থ যা হিমালয় ও হিন্দুকুশ পর্বতমালায় প্রাকৃতিকভাবে পাওয়া যায়। এটি একটি বিরল প্রজাতির রজন যা তৈরি হয় হাজার বছর ধরে পচন ধরা গাছ ও উদ্ভিদের উপকরণ থেকে। এই আটকে থাকা উদ্ভিদ উপকরণ পাথরের ফাঁক থেকে বাদামী থেকে কালো রঙের চটচটে আঠার মত একটি পদার্থ হিসেবে বেরিয়ে আসে। এর স্বাদ হয় তিতকুটে, উৎকট, অদ্ভুত ধরণের।&nbsp; তবে খুবই সামান্য পরিমাণে (এক-আধা গ্রাম) খাওয়া হয় দেখে তেমন একটা সমস্যা মনে হয় না।</p><p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-family: SolaimanLipi, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 15px; color: rgb(56, 56, 56);\">ভারতীয় অঞ্চলের ঐতিহ্যবাহী চিকিৎসাব্যবস্থা আয়ুর্বেদে স্বাস্থ্যবর্ধক বৈশিষ্টের জন্য হাজারো বছর ধরে শিলাজিৎ ব্যবহার করা হচ্ছে। আয়ুর্বেদে এর সার্বিক স্বাস্থ্য উন্নীত করার উপকারিতা উল্লেখ করা হয়েছে।<br><br></p><h3 style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-weight: var(--wd-title-font-weight); font-stretch: inherit; line-height: 1.4; font-family: SolaimanLipi, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 22px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">শিলাজিতের স্বাস্থ্য উপকারিতা</span></h3><p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-family: SolaimanLipi, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 15px; color: rgb(56, 56, 56);\">শিলাজিতের বেশ কিছু নিরাময়কারী উপকারিতা আছে তবে এটি বিশেষতঃ পরিচিত একটি স্বাস্থ্যবর্ধক টনিক হিসেবে। ভাল স্বাস্থ্য উন্নীত করার ক্ষেত্রে শিলাজিতের কিছু ব্যবহার সম্পর্কে একটু খতিয়ে দেখা যাক।</p><ul style=\"margin-right: 0px; margin-bottom: var(--list-mb); margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: var(--li-pl); border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-family: SolaimanLipi, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 15px; list-style-position: initial; list-style-image: initial; --list-mb: 20px; --li-mb: 10px; --li-pl: 17px; color: rgb(56, 56, 56);\"><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">ওজন কমানোয় সহায়তাঃ&nbsp;</span>ক্লিনিকাল গবেষণা ইঙ্গিত করে যে শিলাজিতে কিছু সক্রিয় মৌল রয়েছে যা ওজন কমাতে সাহায্য করে।</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">কোষ্ঠকাঠিণ্য কমায়ঃ&nbsp;</span>শিলাজিৎ শরীরে টনিকের মত কাজ করে যার ফলে এটি অন্ত্রের পেশীগুলিকে শক্ত করে হজমে সাহায্য করে এবং শরীর থেকে খাদ্য নিষ্কাশন করে কোষ্ঠকাঠিণ্য থেকে মুক্তি দেয়ে।</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">শুক্রাণুর গুন্তি বাড়ায়ঃ&nbsp;</span>1.5 মাস ধরে নিয়মিত শিলাজিৎ সেবন করলে তা বীজকোষ উদ্দীপক হরমোন বাড়িয়ে তোলে, যার ফলে দেখা গেছে এটি শুক্রাণুর গুন্তি বাড়ানোর ক্ষেত্রে বিশেষভাবে কার্যকর।</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">পাহাড়ি অসুস্থতা থেকে মুক্তি দেয়ঃ&nbsp;</span>উচ্চতার কারণে হওয়া অসুস্থতার সার্বিক সমাধান হল শিলাজিৎ। এটি যে শুধুমাত্র চাপ ও উদ্বেগ থেকেই মুক্তি দেয় তা নয়, উচ্চতার কারণে হওয়া ফুসফুসের সমস্যা হাইপক্সিয়াও কমিয়ে দেয়।</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">রক্তস্বল্পতার চিকিৎসায়ঃ&nbsp;</span>শিলাজিৎ হল আয়রনের একটি ভাল উৎস, যা হিমোগ্লোবিন ও রক্তের লোহিত কণিকার পরিমাণ বাড়ায়। টনিক হওয়ার কারণে এটি রক্তাল্পতাগ্রস্ত লোকজনদের মধ্যে দুর্বলতা ও ক্লান্তি কমায়।</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">অ্যালজাইমার</span><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">স&nbsp;</span><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">বৃদ্ধি থামায়ঃ&nbsp;</span>গবেষণায় প্রমাণিত তথ্য ইঙ্গিত করে যে শিলাজিতে থাকা ফাল্ভিক অ্যাসিড মস্তিষ্কে টাউ প্রোটিনের অতিরিক্ত পুঞ্জিভূত হওয়া রোধ করে, অন্যভাবে বলতে গেলে যা স্নায়ুক্ষয় ও অ্যালজাইমার’স হওয়ার কারণ, তা প্রতিরোধ করে।</li><li style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">পাকস্থলিতে ঘা হওয়া আটকায়ঃ&nbsp;</span>শিলাজিৎ গ্যাস্ট্রিক নিঃসরণ কমিয়ে পাকস্থলির আস্তরণকে শক্তিশালী করার মাধ্যমে আলসার হওয়া রোধ করে বলে শোনা যায়।</li></ul><p><br></p>', '1716878651Shila jut.jpg', 16.666666666667, 13.095238095238, 49, 'Shilajut,Shilajit (Refined) শিলাজুত (শোধন করা)100 gm,শিলাজুত,Shilajit,Number one shilajut,১ নাম্বার শিলাজুত', 'Shilajut, Shilajit (Refined) শিলাজুত (শোধন করা)', 1, 'undefine', NULL, NULL, NULL, NULL, '2024-05-28 10:44:11', '2024-05-29 08:10:53', NULL, NULL, 'normal', '1716878651Shila jut.jpg', NULL),
(628, 18, NULL, 0, NULL, NULL, 'বিটরুট ও পিংক সল্ট কম্বো প্যাক  চার্জ ফ্রি', 'বিটরুট-ও-পিংক-সল্ট-কম্বো-প্যাক--চার্জ-ফ্রি-', 'VfhI8lvXLx', 'বিটরুট ও পিংক', NULL, 'বিটরুট ও পিংক সল্ট কম্বো প্যাক  200 গ্রাম বিটরুট 1 কেজি আস্ত পিংক সল্ট', NULL, NULL, 0, '<p>বিটরুট ও পিংক সল্ট কম্বো প্যাক&nbsp; 200 গ্রাম বিটরুট 1 কেজি আস্ত পিংক সল্ট&nbsp;<br></p>', '1716879118440368465_844826947670340_2239043778302246463_n.jpg', 10.714285714286, 13.095238095238, 99, 'বিটরুট,পিংক সল্ট', 'বিটরুট ও পিংক সল্ট কম্বো প্যাক  200 গ্রাম বিটরুট 1 কেজি আস্ত পিংক সল্ট', 1, 'undefine', NULL, NULL, NULL, NULL, '2024-05-28 10:51:58', '2024-05-28 21:32:18', NULL, NULL, 'normal', '1716879118440368465_844826947670340_2239043778302246463_n.jpg', NULL),
(629, 18, NULL, 0, NULL, NULL, 'পুদিনা পাতা গুড়ো  Mint leaf', 'পুদিনা-পাতা-গুড়ো--Mint-leaf', 'MkSOL0kCQG', 'পুদিনা পাতা গুড়ো  Mint laef', NULL, 'পুদিনা পাতা গুড়ো  Mint leaf', NULL, NULL, 0, '<p>পুদিনা পাতা গুড়ো&nbsp; Mint leaf<br></p>', '1716970223Pudina pata.jpg', 1.1904761904762, 1.1904761904762, 100, 'পুদিনা পাতা,পুদিনা,Mint leaf', 'পুদিনা পাতা গুড়ো  Mint leaf', 1, 'undefine', NULL, NULL, NULL, NULL, '2024-05-29 12:10:23', '2024-05-29 12:10:23', NULL, NULL, 'normal', '1716970223Pudina pata.jpg', NULL),
(630, 18, NULL, 0, NULL, NULL, 'সজনে পাতা গুড়ো Moringa Leaf  Best Moringa Powder ( মরিঙ্গা গুঁড়া )', 'সজনে-পাতা-গুড়ো-Moringa-Leaf--Best-Moringa-Powder---মরিঙ্গা-গুঁড়া--', 'D3uZ0eqTjo', 'সজনে পাতা,Moringa Leaf,মরিঙ্গা গুঁড়া', NULL, 'সজনে পাতা গুড়ো Moringa Leaf', NULL, NULL, 0, '<p>সজনে পাতা গুড়ো Moringa Leaf&nbsp;</p><p>Best Moringa Powder ( মরিঙ্গা গুঁড়া )<br><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\">Moringa Powder (মরিঙ্গা গুঁড়া)</span><br class=\"html-br\" style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\">সজনে পাতা গুড়ো</span><br class=\"html-br\" style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\">সজিনা পাতা গুঁড়ার উপকারিতা</span><br class=\"html-br\" style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\">১। পুষ্টির আধার বলে সুপরিচিত এই পাতার গুঁড়া দেহে শক্তির যোগান দেয়।</span><br class=\"html-br\" style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\">২। রাতে ঘুমানোর আগে সজিনা পাতার গুঁড়া বেশ উপকারী। এটি ভালো ঘুমের জন্য সহায়ক।</span><br class=\"html-br\" style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\">৩। এতে বিদ্যমান পুষ্টি উপাদানগুলো দেহের রোগ প্রতিরোধ ক্ষমতা বৃদ্ধি করে বহুলাংশে।</span><br class=\"html-br\" style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\">৪। এটি অ্যান্টিঅক্সিডেন্ট এর চমৎকার উৎস। এতে বিদ্যমান অ্যান্টিঅক্সিডেন্ট গুণাবলি অকাল বার্ধক্য প্রতিরোধে ভূমিকা রাখে।</span><br class=\"html-br\" style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\">৫। নারীদের ঋতুস্রাবকালীন সময়ে বেশ কার্যকরী ভূমিকা রাখে।</span><br class=\"html-br\" style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\">৬। ওজন কমাতে এটি এক নতুন মাত্রা যোগ করে।</span><br class=\"html-br\" style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><br class=\"html-br\" style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\">আমাদের Moringa Powder (মরিঙ্গা গুঁড়া) কেন নিবেন ??</span><br class=\"html-br\" style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\">১। বাছাইকৃত সজিনা পাতা থেকে প্রস্তুত করা হয়।</span><br class=\"html-br\" style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\">২। সম্পূর্ণ নিজস্ব তত্ত্বাবধানে সকল প্রক্রিয়া সম্পন্ন করা হয়।</span><br><br></p>', '1716970944Sojnepata-4.jpg', 1.7857142857143, 2.0238095238095, 99, 'সজনে পাতা গুড়ো Moringa Leaf,Moringa Leaf,সজনে পাতা', 'সজনে পাতা গুড়ো Moringa Leaf Best Moringa Powder ( মরিঙ্গা গুঁড়া )', 1, 'undefine', NULL, NULL, NULL, NULL, '2024-05-29 12:22:24', '2024-06-03 00:51:42', NULL, NULL, 'normal', '1716970944Sojnepata-4.jpg', NULL),
(631, 18, NULL, NULL, NULL, NULL, 'শিমূল মুল গুড়ো Shimul Mul 100 gm powder', 'শিমূল-মুল-গুড়ো-Shimul-Mul-100-gm-powder', 'SWuiFBq45T', 'শিমূল মুল,Shimul Mul', NULL, 'শিমূল মুল গুড়ো Shimul Mul 100 gm powder', NULL, NULL, 0, '<p>শিমূল মুল গুড়ো Shimul Mul</p><p><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; white-space-collapse: preserve; background-color: rgb(240, 240, 240);\">ভেষজ গুনাগুন\r\n১. পাতলা পায়খানা ও রক্ত আমাশয়\r\nরোধ করতে সহায়ক।\r\n২. ধাতু দূর্বলতা দুর করতে সাহায্য\r\nসহায়ক।\r\n৩. শারীরিক শক্তি বৃদ্ধি সহায়ক\r\n৪. পাইলস নিরাময়ে সহায়ক ।\r\nসেবন পদ্ধতি ৫ গ্রাম অথবা ১/২ চা চামচ ১ গ্লাস পানিতে\r\nভিজিয়ে প্রতিদিন সকালে ১ বার খাবেন।\r\nসতর্কতাঃ গর্ভবতী ও শিশুদের কনসালটেন্ট এর পরামর্শ\r\nঅনুযায়ী সেব্য।\r\nসংরক্ষন পদ্ধতি: প্রতি মাসে ১ বার রোদে দিবেন।\r\nসম্ভব হলে কাঁচের জারে রাখবেন।</span><br></p><p><br></p><p><br></p>', '1716971176Shimul Gura.jpg', 1.1904761904762, 1.1904761904762, 50, 'Shimul Mul,শিমূল মুল', 'শিমূল মুল গুড়ো Shimul Mul 100 gm powder', 1, 'undefine', NULL, NULL, NULL, NULL, '2024-05-29 12:26:16', '2024-05-29 12:28:47', NULL, NULL, 'normal', '1716971176Shimul Gura.jpg', NULL),
(632, 18, NULL, 0, NULL, NULL, 'shonko Mull শঙ্খমূল গুড়ো 50 gm শঙ্খমনি', 'shonko-Mull-শঙ্খমূল-গুড়ো-50-gm-শঙ্খমনি', 'QqrhfjrTzC', 'shonko Mull শঙ্খমূল গুড়ো,শঙ্খমূল গুড়ো,shonko Mull,shonko moni,শঙ্খমনি', NULL, 'shonko Mull শঙ্খমূল গুড়ো', NULL, NULL, 0, '<p>shonko Mull শঙ্খমূল গুড়ো&nbsp;<br><br></p>', '1716972014shonko raw.jpg', 2.3809523809524, 2.3809523809524, 50, 'শঙ্খমনি,shonko Mull শঙ্খমূল,shonko Mull,Shonko moni', NULL, 1, 'undefine', NULL, NULL, NULL, NULL, '2024-05-29 12:40:14', '2024-05-29 12:40:14', NULL, NULL, 'normal', '1716972014shonko raw.jpg', NULL),
(633, 18, NULL, 0, NULL, NULL, 'শতমূল গুড়ো Sotomul Powder 100 gm', 'শতমূল-গুড়ো-Sotomul-Powder-100-gm', 'BUO2E6y3KQ', 'Sotomul Powder,শতমূল,Sotomul', NULL, 'শতমূল গুড়ো Sotomul', NULL, NULL, 0, '<p>শতমূল গুড়ো Sotomul&nbsp;<br>দেশি শতমূল থেকে পাউডার করা&nbsp;</p>', '1716972207Shotomul Premium.jpg', 1.7857142857143, 2.3809523809524, 100, 'শতমূল গুড়ো,Sotomul Powder,Shotomul,শতভরি,শতভার', 'শতমূল গুড়ো Sotomul Powder', 1, 'undefine', NULL, NULL, NULL, NULL, '2024-05-29 12:43:27', '2024-05-29 12:43:27', NULL, NULL, 'normal', '1716972207Shotomul Premium.jpg', NULL),
(634, 18, NULL, NULL, NULL, NULL, 'পঞ্চভূত  Panchavut 450 gm', 'পঞ্চভূত--Panchavut-450-gm-', '3AFebvPy7X', 'পঞ্চভূত,Panchavut,পন্চভুত,স্বপ্ন দোষ,স্বপ্ন দোষ ভালো করে', NULL, 'পঞ্চভূত  Panchavut 450 gm', NULL, NULL, 0, '<p>পঞ্চভূত&nbsp; Panchavut 450 gm&nbsp;<br></p><div class=\"\" data-block=\"true\" data-editor=\"fduve\" data-offset-key=\"4of92-0-0\" style=\"font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(28, 30, 33); font-size: 14px; white-space-collapse: preserve;\"><div data-offset-key=\"4of92-0-0\" class=\"_1mf _1mj\" style=\"position: relative; direction: ltr; font-family: inherit;\"><span data-offset-key=\"4of92-0-0\" style=\"font-family: inherit;\">পঞ্চভূত ৪৫০ গ্রাম ৬৫০ টাকা </span></div></div><div class=\"\" data-block=\"true\" data-editor=\"fduve\" data-offset-key=\"5avad-0-0\" style=\"font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(28, 30, 33); font-size: 14px; white-space-collapse: preserve;\"><div data-offset-key=\"5avad-0-0\" class=\"_1mf _1mj\" style=\"position: relative; direction: ltr; font-family: inherit;\"><span data-offset-key=\"5avad-0-0\" style=\"font-family: inherit;\">উপাদান: </span></div></div><div class=\"\" data-block=\"true\" data-editor=\"fduve\" data-offset-key=\"739s-0-0\" style=\"font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(28, 30, 33); font-size: 14px; white-space-collapse: preserve;\"><div data-offset-key=\"739s-0-0\" class=\"_1mf _1mj\" style=\"position: relative; direction: ltr; font-family: inherit;\"><span data-offset-key=\"739s-0-0\" style=\"font-family: inherit;\">অশ্বগন্ধা, শিমুল মুল, শতমুল, তালমূল ও তেতুল বিচি চূর্ণ।\r\n\r\n<span style=\"color: rgb(28, 30, 33);\">যে কোন যৌন সমস্যার ,\r\n* টাইমিং উত্তেজনা কম,  \r\nদ্রুত পতন রোধক, স্তবক, উত্থান জনিত সমস্যা,  \r\nঅল্প সময়ে নেতিয়ে পডা, \r\nহস্তমৈথুনের কারনে  সৃষ্ট   সমস্যা,  \r\nপেশাবের আগে পরে  ক্ষয় সমাধান করতে কার্যকর এবং বীর্য গাঢ় করে ।\r\nস্বপ্ন দোষ ভালো করে \r\n</span>\r\n<span style=\"color: rgb(28, 30, 33);\">১ চামচ ১ গ্লাস পানিতে নিয়ে খাবেন প্রতিদিন সকালে ও বিকেলে ভিজিয়ে খাবেন (প্রয়োজনে মধু এড করতে পারেন।)</span>\r\n</span></div></div>', '1716998485pancha vut 1.jpg', 7.7380952380952, 7.9166666666667, 100, 'Panchavut,পঞ্চভূত,স্বপ্ন দোষ ভালো করে,টাইমিং উত্তেজনা কম,টাইমিং উত্তেজনা বাড়ানো,সেক্স টাইম বাড়ানোর ঔষধ', 'পঞ্চভূত  Panchavut', 1, 'undefine', NULL, NULL, NULL, NULL, '2024-05-29 20:01:26', '2024-05-30 09:51:19', NULL, NULL, 'normal', '1716998485pancha vut 1.jpg', NULL),
(635, 18, NULL, 0, NULL, NULL, 'আমলকি প্রিমিয়াম Amloki Premium 100 gm', 'আমলকি-প্রিমিয়াম-Amloki-Premium-100-gm', '4sXC0Gino3', 'আমলকি প্রিমিয়াম,Amloki Premium', NULL, 'আমলকি প্রিমিয়াম', NULL, NULL, 0, '<p>আমলকি প্রিমিয়াম বিচি ছাড়া&nbsp;<br></p><ul class=\"i8Z77e\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: &quot;Google Sans&quot;, arial, sans-serif; font-size: 16px;\"><li class=\"TrT0Xe\" style=\"margin: 0px 0px 4px; padding: 0px; list-style-type: disc;\"><b>আমলকী</b>&nbsp;কেন্দ্রীয় স্নায়ুতন্ত্রের উপর কাজ করে।</li><li class=\"TrT0Xe\" style=\"margin: 0px 0px 4px; padding: 0px; list-style-type: disc;\">বমি বন্ধে কাজ করে।</li><li class=\"TrT0Xe\" style=\"margin: 0px 0px 4px; padding: 0px; list-style-type: disc;\">দীর্ঘমেয়াদি কাশি সর্দি হতে&nbsp;<b>উপকার</b>&nbsp;পাওয়ার জন্য&nbsp;<b>আমলকীর</b>&nbsp;নির্যাস&nbsp;<b>উপকারী</b>।</li><li class=\"TrT0Xe\" style=\"margin: 0px 0px 4px; padding: 0px; list-style-type: disc;\">এটি হৃদযন্ত্র ও মস্তিষ্কের শক্তিবর্ধক।</li><li class=\"TrT0Xe\" style=\"margin: 0px 0px 4px; padding: 0px; list-style-type: disc;\">এটি দাঁত,চুল ও ত্বক ভাল রাখে।</li><li class=\"TrT0Xe\" style=\"margin: 0px 0px 4px; padding: 0px; list-style-type: disc;\">এটি&nbsp;<b>খাওয়ার</b>&nbsp;রুচি বাড়ায়।<br><br>১ চা চামচ ১ গ্লাস পানিতে মিক্স করে খেতে হবে সকাল / বিকেল ( প্রয়োজন এ মধু এড করা যেতে পারে।)&nbsp;</li></ul>', '1716999641Amloki P.jpg', 1.1904761904762, 1.3095238095238, 100, 'আমলকি প্রিমিয়াম Amloki Premium,Amloki Premium,আমলকি প্রিমিয়াম,আমলকি বিচি ছাড়া', 'আমলকি প্রিমিয়াম Amloki Premium', 1, 'undefine', NULL, NULL, NULL, NULL, '2024-05-29 20:20:42', '2024-05-29 20:20:42', NULL, NULL, 'normal', '1716999641Amloki P.jpg', NULL),
(636, 18, NULL, 0, NULL, NULL, 'সোনা পাতা গুড়ো senna leaf 100 gm', 'সোনা-পাতা-গুড়ো-senna-leaf-100-gm', 'og4f0Ogvdf', 'Sona pata,senna leaf,সোনা পাতা', NULL, 'সোনা পাতা গুড়ো senna leaf', NULL, NULL, 0, '<h2 style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-weight: 600; font-stretch: inherit; line-height: 1.4; font-family: lato, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 24px; color: rgb(45, 42, 42);\">সোনাপাতা (Senna Leaf) গুঁড়ার পুষ্টিগুণ</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-family: lato, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 14px; color: rgb(119, 119, 119);\">* সোনা পাতায় এনথ্রানয়েড নামের একটি উপাদান রয়েছে, যা হজম প্রক্রিয়াকে কার্যকর রাখতে সহায়তা করে।<br>* গ্যাস্ট্রিকের সমস্যা রোধ করতে সাহায্য করে।<br>* ওজন কমাতে সাহায্য করে।<br>* কৃমিনাশক হিসেবে কাজ করে।<br>* অর্শ রোগের প্রতিরোধক ও প্রতিষেধক হিসেবে কাজ করে।<br>* উচ্চ রক্তচাপ কমাতে সাহায্য করে।<br><br></p>', '1717000095Sona pata-1.jpg', 0.77380952380952, 0.77380952380952, 200, 'সোনা পাতা গুড়ো senna leaf,সোনা পাতা,senna leaf,Sonapata', 'সোনা পাতা গুড়ো senna leaf', 1, 'undefine', NULL, NULL, NULL, NULL, '2024-05-29 20:28:15', '2024-05-29 20:28:15', NULL, NULL, 'normal', '1717000095Sona pata-1.jpg', NULL);
INSERT INTO `items` (`id`, `category_id`, `subcategory_id`, `childcategory_id`, `tax_id`, `brand_id`, `name`, `slug`, `sku`, `tags`, `video`, `sort_details`, `specification_name`, `specification_description`, `is_specification`, `details`, `photo`, `discount_price`, `previous_price`, `stock`, `meta_keywords`, `meta_description`, `status`, `is_type`, `date`, `file`, `link`, `file_type`, `created_at`, `updated_at`, `license_name`, `license_key`, `item_type`, `thumbnail`, `affiliate_link`) VALUES
(637, 23, NULL, 0, NULL, NULL, 'Senna Leaf Raw সোনা পাতা আস্ত 500 গ্রাম', 'Senna-Leaf-Raw-সোনা-পাতা-আস্ত-500-গ্রাম-', 'tWDMlq6YRc', 'Senna Leaf Raw সোনা পাতা আস্ত', NULL, 'Senna Leaf Raw সোনা পাতা আস্ত', NULL, NULL, 0, '<p>Senna Leaf Raw সোনা পাতা আস্ত&nbsp;<br>অনেক সময় ষ্টকে থাকে না অবশ্যই সময় দিবেন।&nbsp;<br></p><h2 style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-weight: 600; line-height: 1.4; font-size: 24px; text-rendering: optimizelegibility; color: rgb(45, 42, 42); padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-family: lato, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">সোনাপাতা (Senna Leaf) গুঁড়ার পুষ্টিগুণ</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; text-rendering: optimizelegibility; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-family: lato, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 14px; color: rgb(119, 119, 119);\">* সোনা পাতায় এনথ্রানয়েড নামের একটি উপাদান রয়েছে, যা হজম প্রক্রিয়াকে কার্যকর রাখতে সহায়তা করে।<br style=\"text-rendering: optimizelegibility; -webkit-font-smoothing: antialiased;\">* গ্যাস্ট্রিকের সমস্যা রোধ করতে সাহায্য করে।<br style=\"text-rendering: optimizelegibility; -webkit-font-smoothing: antialiased;\">* ওজন কমাতে সাহায্য করে।<br style=\"text-rendering: optimizelegibility; -webkit-font-smoothing: antialiased;\">* কৃমিনাশক হিসেবে কাজ করে।<br style=\"text-rendering: optimizelegibility; -webkit-font-smoothing: antialiased;\">* অর্শ রোগের প্রতিরোধক ও প্রতিষেধক হিসেবে কাজ করে।<br style=\"text-rendering: optimizelegibility; -webkit-font-smoothing: antialiased;\">* উচ্চ রক্তচাপ কমাতে সাহায্য করে।</p>', '1717000955Sona pata raw.jpg', 2.9761904761905, 3.2142857142857, 100, 'Senna Leaf Raw সোনা পাতা আস্ত,Senna Leaf Raw,সোনা পাতা আস্ত,হজম হবার ঔষধ,চিকন হবার ভেষজ', 'Senna Leaf Raw সোনা পাতা আস্ত', 1, 'undefine', NULL, NULL, NULL, NULL, '2024-05-29 20:42:37', '2024-05-29 20:42:37', NULL, NULL, 'normal', '1717000955Sona pata raw.jpg', NULL),
(638, 18, NULL, 0, NULL, NULL, 'তালমুল গুড়ো 100 গ্রাম Talmull Black Musli', 'তালমুল-গুড়ো-100-গ্রাম-Talmull-Black-Musli-', 'Gl8bbcHeFc', 'তালমুল,Talmull,Black Musli,তালমুলী', NULL, 'তালমুল গুড়ো Talmull Black Musli', NULL, NULL, 0, '<p>তালমুল গুড়ো Talmull Black Musli&nbsp;<br></p>', '1717001118talmul.jpg', 3.5714285714286, 4.7619047619048, 100, '', 'তালমুল গুড়ো Talmull Black Musli', 1, 'undefine', NULL, NULL, NULL, NULL, '2024-05-29 20:45:19', '2024-05-29 20:45:19', NULL, NULL, 'normal', '1717001118talmul.jpg', NULL),
(639, 18, NULL, 0, NULL, NULL, 'ত্রিফলা Triphala 100 gm  Regular', 'ত্রিফলা-Triphala-100-gm--Regular', 'MF9AgVLF7I', 'ত্রিফলা Triphala', NULL, 'ত্রিফলা Triphala', NULL, NULL, 0, '<p>ত্রিফলা Triphala&nbsp;<br>আমলকি , হরিতকি ও বহেড়ার এক সঙ্গে মিশিয়ে গুড়ো করা হয়।&nbsp;</p>', '1717001674trifola.jpg', 1.1904761904762, 1.1904761904762, 100, 'Triphala,ত্রিফলা', 'ত্রিফলা Triphala', 1, 'undefine', NULL, NULL, NULL, NULL, '2024-05-29 20:54:34', '2024-05-29 20:54:34', NULL, NULL, 'normal', '1717001674trifola.jpg', NULL),
(640, 23, NULL, 0, NULL, NULL, 'বচ বা বজ মোটা বজ  200 gm', 'বচ-বা-বজ-মোটা-বজ--200-gm', 'TS0QOaiz77', '', NULL, 'বচ', NULL, NULL, 0, '<p><span style=\"background-color: rgba(255, 255, 255, 0.83); color: rgb(58, 58, 58); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Helvetica Neue&quot;, sans-serif; font-size: 16px;\">বচ- একটি গুরুত্বপূর্ণ ঔষধি গাছ এবং একই সাথে উচ্চ চাহিদার উদ্ধিদ। বচ ভেসজ চিকিৎসার পাশাপাশি মশলা হিসাবে ব্যবহার হয়ে থাকে। বড় কবিরাজি দোকান&nbsp; এই এটি পাওয়া যায়। পৃথিবীজুড়ে এটির ব্যবহার ও চাহিদা দিন দিন বৃদ্ধি পাচ্ছে। আয়ুর্বেদিক সাস্ত্রে এই গুণী উদ্ধিদকে গুরুত্বের সাথে আলোচনা করা হয়েছে।</span><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; white-space-collapse: preserve;\"> \r\nবচ জ্বর, সর্দি, মাথাব্যথা ও দাঁতের ব্যথায় ব্যবহার হয়\r\n</span><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; white-space-collapse: preserve;\"> আমবাতে বচ বেটে প্রলেপ দিলে ফোলা ও ব্যথা প্রশমিত হয়\r\n</span><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; white-space-collapse: preserve;\">বচ বহুবর্ষজীবী কন্দমূলীয় স্বল্প কন্দ। এর কাণ্ড মাটির নিচে থাকে। পাতা অনেকটা ধান পাতার মতো সবুজ, পাত মাটির উপরে ঊর্ধমুখী হয়ে থাকে। কন্দ থেকে পাতাগুলি চারদিকে ঘুরে ঘুরে না গজিয়ে বিপরীতমূখী হয়ে গজিয়ে চ্যাপ্টা আকার ধারণ করে। তবে পাতা লোমযুক্ত বা ধারালো নয়, অপেক্ষাকৃৃত মসৃণ। মাটির নিচে গন্ধযুক্ত কন্দ বিস্তার লাভ করে। এটি স্থুল ও গাঁট (node)  বহুল। ফুল স্প্যডিক্স দধরনের এবং ৫-১০ সে.মি. লম্বা পুষ্পদণ্ডে হালকা সবুজ রঙের ছোট ছোট ফুল ফোটে। বর্ষকালে ফূল ও পরে ফল হয়। ফল হালকা হলুদ বর্ণের। ভারতের পশ্চিমবঙ্গে বচকে একসময় ব্যবহার উপযোগী মুখ্য মশলা হিসেবে ধরা হত।</span><br></p>', '1717005997Boch.jpg', 3.5714285714286, 4.7619047619048, 20, 'বচ,boch,বজ', 'বচ', 1, 'undefine', NULL, NULL, NULL, NULL, '2024-05-29 22:06:43', '2024-05-29 22:06:43', NULL, NULL, 'normal', '1717005997Boch.jpg', NULL),
(641, 18, NULL, NULL, NULL, NULL, 'তেতুল বীজ গুড়ো খোসা ছাড়া Tetul Seeds Tamarind Seed 100 gm', 'তেতুল-বীজ-গুড়ো-খোসা-ছাড়া-Tetul-Seeds-Tamarind-Seed-100-gm', 'jlmBNpT2NR', 'তেতুল বীজ গুড়ো খোসা ছাড়া Tetul Seeds Tamarind Seed', NULL, 'তেতুল বীজ গুড়ো খোসা ছাড়া Tetul Seeds Tamarind Seed', NULL, NULL, 0, '<p>তেতুল বীজ গুড়ো খোসা ছাড়া Tetul Seeds Tamarind Seed<br><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; white-space-collapse: preserve; background-color: rgb(240, 240, 240);\">খোসা ছাড়া হবার কারণে দ্রুত কার্যকারিতা শুরু হবে। \r\nউপকারিতা\r\nভিটামিন সি রয়েছে, হজম শক্তি\r\nভালো করে।\r\n২. ধাতু দূর্বলতা দুর করতে সাহায্য\r\nকরে।\r\n৩. শারীরিক শক্তি বৃদ্ধি করে ।\r\n৪. প্রেশার নিয়ন্ত্রন রাখে\r\nসেবন পদ্ধতি: ৫/৭ গ্রাম অথবা ১ চা চামচ ১ গ্লাস পানিতে\r\nভিজিয়ে প্রতিদিন ভরা পেটে ১ বার খাবেন।</span><br></p>', '1717006317tetul.jpg', 1.1904761904762, 1.1904761904762, 100, 'তেতুল বীজ,Tetul Seeds,Tamarind Seed', 'তেতুল বীজ গুড়ো খোসা ছাড়া Tetul Seeds Tamarind Seed', 1, 'undefine', NULL, NULL, NULL, NULL, '2024-05-29 22:11:57', '2024-05-30 09:47:04', NULL, NULL, 'normal', '1717006317tetul.jpg', NULL),
(642, 18, NULL, NULL, NULL, NULL, 'তেতুল বীজ গুড়ো Tetul Seeds Tamarind Seed 100 gm', 'তেতুল-বীজ-গুড়ো-Tetul-Seeds-Tamarind-Seed-100-gm-', '02pnNHkkyV', 'তেতুল বীজ গুড়ো,Tetul Seeds,Tamarind Seed', NULL, 'তেতুল বীজ গুড়ো Tetul Seeds Tamarind Regular', NULL, NULL, 0, '<p>তেতুল বীজ গুড়ো Tetul Seeds Tamarind&nbsp;<br><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; white-space-collapse: preserve; background-color: rgb(240, 240, 240);\">\r\nঔষধি গুনাগুন\r\nভিটামিন সি রয়েছে, হজম শক্তি\r\nভালো করে।\r\n২. ধাতু দূর্বলতা দুর করতে সাহায্য\r\nকরে।\r\n৩. শারীরিক শক্তি বৃদ্ধি করে ।\r\n৪. প্রেশার নিয়ন্ত্রন রাখে\r\nসেবন পদ্ধতি: ৫/৭ গ্রাম অথবা ১ চা চামচ ১ গ্লাস পানিতে\r\nভিজিয়ে প্রতিদিন ভরা পেটে ১ বার খাবেন।</span><br></p>', '1717006470tetul-2.jpg', 0.77380952380952, 0.77380952380952, 100, 'তেতুল বীজ,Tetul Seeds,Tamarind Seed', 'তেতুল বীজ গুড়ো Tetul Seeds Tamarind Seed 100 gm', 1, 'undefine', NULL, NULL, NULL, NULL, '2024-05-29 22:14:30', '2024-05-30 09:47:33', NULL, NULL, 'normal', '1717006470tetul-2.jpg', NULL),
(643, 18, NULL, NULL, NULL, NULL, 'বিটরুট গুড়ো Beetroot Powder 100 gm', 'বিটরুট-গুড়ো-Beetroot-Powder-100-gm', 'x7I94BykhE', 'Beetroot,বিটরুট', NULL, 'বিটরুট গুড়ো Beetroot Powder', NULL, NULL, 0, '<p>বিটরুট গুড়ো Beetroot Powder<br>সোলার টানেল ড্রায়ার শুকিয়ে গুড়ো করা হয় ।<br>সরাসরি রোদ , ধুলাবালি মুক্ত পরিবেশে&nbsp;</p>', '1717007117beetroot 1.jpg', 3.5714285714286, 4.7619047619048, 99, 'বিটরুট,Beetroot,কাচা বিটরুট,১ নাম্বার বিটরুট গুড়ো,প্রেশার কমানোর ভেষজ,হাইপ্রেশার কমানোর ভেষজ', 'বিটরুট গুড়ো Beetroot Powder', 1, 'undefine', NULL, NULL, NULL, NULL, '2024-05-29 22:25:17', '2024-06-03 00:51:42', NULL, NULL, 'normal', '1717007117beetroot 1.jpg', NULL),
(644, 18, NULL, 0, NULL, NULL, 'মেথি গুড়ো  Fenugreek Seed Powder (Methi Gura) 100 gm', 'মেথি-গুড়ো--Fenugreek-Seed-Powder--Methi-Gura--100-gm', 'en9wecb3Wn', 'মেথি গুড়ো  Fenugreek Seed,মেথি গুড়ো', NULL, 'মেথি গুড়ো  Fenugreek Seed', NULL, NULL, 0, '<p>মেথি গুড়ো&nbsp; Fenugreek Seed&nbsp;<br></p>', '1717007544Methi gura.jpg', 0.77380952380952, 0.83333333333333, 100, 'মেথি গুড়ো  Fenugreek Seed,মেথি গুড়ো,fresh Methi,Best Quality,Fenugreek', 'মেথি গুড়ো  Fenugreek Seed', 1, 'undefine', NULL, NULL, NULL, NULL, '2024-05-29 22:32:25', '2024-05-29 22:32:25', NULL, NULL, 'normal', '1717007544Methi gura.jpg', NULL),
(645, 18, NULL, 0, NULL, NULL, 'Chirota Powder (চিরতা গুঁড়া) 50 gm Number one', 'Chirota-Powder--চিরতা-গুঁড়া--50-gm-Number-one-', 'UvECeYbgwJ', 'Chirota Powder (চিরতা গুঁড়া),Indian Chirota', NULL, 'Chirota Powder (চিরতা গুঁড়া)', NULL, NULL, 0, '<p>Chirota Powder (চিরতা গুঁড়া)&nbsp;<br>১ নাম্বার চিরতা গুড়ো&nbsp;<br></p><h2 style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-weight: 600; font-stretch: inherit; line-height: 1.4; font-family: lato, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 24px; color: rgb(45, 42, 42);\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">চিরতা (Chirota) গুঁড়া</span><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">র উপকারিতা-</span></h2><div style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-family: lato, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 14px; color: rgb(119, 119, 119);\">১। এটা ডায়াবেটিস নিয়ন্ত্রণ করে।<br>২। কালাজ্বর প্রতিরোধ করে।<br>৩। রোগ প্রতিরোধ ক্ষমতা বৃদ্ধি করে।<br>৪। অ্যান্টিসেপ্টিক হিসেবে কাজ করে।<br>৫। অ্যালার্জি দমন করে।<br>৬। রক্তপিত্ত জনিত সমস্যা দূর করে।</div>', '1717047911chirota.jpg', 1.7857142857143, 2.3809523809524, 100, 'Chirota Powder (চিরতা গুঁড়া),Chirota Powder', 'চিরতা (Chirota) গুঁড়ার উপকারিতা-\r\n১। এটা ডায়াবেটিস নিয়ন্ত্রণ করে।\r\n২। কালাজ্বর প্রতিরোধ করে।\r\n৩। রোগ প্রতিরোধ ক্ষমতা বৃদ্ধি করে।\r\n৪। অ্যান্টিসেপ্টিক হিসেবে কাজ করে।\r\n৫। অ্যালার্জি দমন করে।\r\n৬। রক্তপিত্ত জনিত সমস্যা দূর করে।', 1, 'undefine', NULL, NULL, NULL, NULL, '2024-05-30 09:45:12', '2024-05-30 09:45:12', NULL, NULL, 'normal', '1717047911chirota.jpg', NULL),
(646, 18, NULL, 0, NULL, NULL, 'তুলশি পাতা গুড়ো Tulsi Tulasi Holy Basil 100 gm', 'তুলশি-পাতা-গুড়ো-Tulsi-Tulasi-Holy-Basil-100-gm', 'rr3cpufPO5', 'তুলশি পাতা,Tulsi Tulasi,Holy Basil,Tulasi', NULL, 'তুলশি পাতা গুড়ো Tulsi Tulasi Holy Basil', NULL, NULL, 0, '<p>তুলশি পাতা গুড়ো Tulsi Tulasi Holy Basil&nbsp;<br>তুলশি পাতা ও ডাল গুড়ো&nbsp;<br><br></p>', '1717048602tulshi.jpg', 1.1904761904762, 1.1904761904762, 100, 'তুলশি পাতা,Tulsi,Tulasi,Holy Basil', 'তুলশি পাতা গুড়ো Tulsi Tulasi Holy Basil', 1, 'undefine', NULL, NULL, NULL, NULL, '2024-05-30 09:56:43', '2024-05-30 09:56:43', NULL, NULL, 'normal', '1717048602tulshi.jpg', NULL),
(647, 18, NULL, 0, NULL, NULL, 'টমেটো গুড়ো Tomato Powder 50 gm', 'টমেটো-গুড়ো-Tomato-Powder-50-gm-', 'rW9VQNjGpj', 'টমেটো গুড়ো,Tomato,Tomato Powder', NULL, 'টমেটো গুড়ো Tomato Powder', NULL, NULL, 0, '<p>টমেটো গুড়ো Tomato Powder<br>সম্পুর্ন হাইজেনিক মেইন্টেন করে শুকানো ও গুড়ো করা হয়<br>সোলার টানেল ড্রায়ার এ শুকানো হয়।&nbsp;</p>', '1717051253Tomato powder.jpg', 1.7857142857143, 1.7857142857143, 19, 'Tomato Powder,টমেটো গুড়ো', 'টমেটো গুড়ো Tomato Powder', 1, 'undefine', NULL, NULL, NULL, NULL, '2024-05-30 10:40:54', '2024-06-03 11:14:04', NULL, NULL, 'normal', '1717051253Tomato powder.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  `rtl` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `language`, `file`, `name`, `is_default`, `rtl`, `created_at`, `updated_at`, `type`) VALUES
(1, 'English', '1647794127lN7PfPAc.json', '1647794127lN7PfPAc', 1, 0, NULL, NULL, 'Website'),
(2, 'Arabic', '1647792286wzAqXQOx.json', '1647792286wzAqXQOx', 0, 1, NULL, NULL, 'Website'),
(3, 'English', '1647794074eEeCbfDD.json', '1647794074eEeCbfDD', 1, 0, NULL, NULL, 'Dashboard'),
(4, 'Arabic', '1638870927JMqjbCXv.json', '1638870927JMqjbCXv', 0, 1, NULL, NULL, 'Dashboard');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `ticket_id`, `user_id`, `message`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'test', '2021-12-03 06:33:29', '2021-12-03 06:33:29');

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
(1, '2021_08_21_073142_create_admins_table', 1),
(2, '2021_08_21_073507_create_users_table', 1),
(3, '2021_09_20_144419_create_items_table', 1),
(4, '2021_09_20_151605_create_settings_table', 1),
(5, '2021_09_21_073848_create_attributes_table', 1),
(6, '2021_09_21_073951_create_attribute_options_table', 1),
(7, '2021_09_21_074028_create_banners_table', 1),
(8, '2021_09_21_074231_create_bcategories_table', 1),
(9, '2021_09_21_074309_create_brands_table', 1),
(10, '2021_09_21_074412_create_campaign_items_table', 1),
(11, '2021_09_21_074536_create_categories_table', 1),
(12, '2021_09_21_074744_create_chield_categories_table', 1),
(13, '2021_09_21_074952_create_countries_table', 1),
(14, '2021_09_21_075024_create_currencies_table', 1),
(15, '2021_09_21_075231_create_email_templates_table', 1),
(16, '2021_09_21_075346_create_faqs_table', 1),
(17, '2021_09_21_075642_create_fcategories_table', 1),
(18, '2021_09_21_080223_create_galleries_table', 1),
(19, '2021_09_21_080320_create_home_cutomizes_table', 1),
(20, '2021_09_21_080454_create_languages_table', 1),
(21, '2021_09_21_080652_create_messages_table', 1),
(22, '2021_09_21_080805_create_notifications_table', 1),
(23, '2021_09_21_090957_create_orders_table', 1),
(25, '2021_09_21_092255_create_payment_settings_table', 1),
(26, '2021_09_21_092722_create_posts_table', 1),
(27, '2021_09_21_092801_create_promo_codes_table', 1),
(28, '2021_09_21_093709_create_reviews_table', 1),
(29, '2021_09_21_093833_create_roles_table', 1),
(30, '2021_09_21_094020_create_services_table', 1),
(31, '2021_09_21_094413_create_shipping_services_table', 1),
(32, '2021_09_21_094517_create_sliders_table', 1),
(33, '2021_09_21_094630_create_socials_table', 1),
(34, '2021_09_21_094739_create_subcategories_table', 1),
(35, '2021_09_21_094831_create_subscribers_table', 1),
(36, '2021_09_21_094903_create_taxes_table', 1),
(37, '2021_09_21_095021_create_tickets_table', 1),
(38, '2021_09_21_095605_create_track_orders_table', 1),
(39, '2021_09_21_095650_create_transactions_table', 1),
(40, '2021_09_21_095836_create_wishlists_table', 1),
(41, '2021_09_21_091316_create_pages_table', 2),
(42, '2021_09_22_095954_add_extra_visibility_to_settings_table', 3),
(43, '2021_09_29_075836_add_theme_to_settings_table', 4),
(44, '2021_09_30_103035_google_chapcha_to_settings__table', 5),
(45, '2021_10_04_141643_add_currency_deraction_to_settings_table', 6),
(46, '2021_10_08_135417_add_theme_field_to_sliders_table', 7),
(51, '2021_10_09_153059_license_to_items_table', 8),
(56, '2021_10_09_173004_remove_item_type_to_items_table', 9),
(57, '2021_10_09_173038_set_item_type_to_items_table', 9),
(58, '2021_10_10_051502_add_scrript_to_settings_table', 10),
(59, '2021_10_10_142339_thumbnail_to_items_table', 11),
(61, '2021_10_10_163455_home_page4_to_home_cutomizes_table', 12),
(62, '2021_10_11_090243_create_extra_settings_table', 13),
(63, '2021_10_12_145150_add_home4populer_category_to_home_cutomizes_table', 14),
(64, '2021_10_13_100048_create_sitemaps_table', 15),
(65, '2021_10_15_140708_add_type_to_promo_codes_table', 16),
(66, '2021_10_15_163958_add_announcement_link_to_settings_table', 17),
(68, '2021_11_21_143624_add_shop_extra_field_to_settings_table', 19),
(69, '2021_11_20_105052_add_stock_to_attribute_options_table', 20),
(71, '2021_11_21_151422_add_home_page_title_to_settings_table', 21),
(72, '2021_11_23_141528_add_type_to_languages_table', 22),
(73, '2021_11_23_144810_add_privacy_terms_to_settings_table', 23),
(74, '2021_11_23_182026_add_guest_checkout_to_settings_table', 24),
(76, '2021_11_24_144859_add_guest_hero_banner_to_home_cutomizes_table', 25),
(77, '2021_11_26_163222_add_affiliate_link_to_items_table', 26),
(78, '2021_11_27_113624_add_css_field_to_settings_table', 27),
(79, '2021_12_05_161222_add_flash_section_to_extra_settings_table', 28),
(82, '2021_12_05_165840_add_popup_field_to_settings_table', 29),
(83, '2021_12_06_141255_add_3column_section_to_extra_settings_table', 30),
(84, '2022_01_03_141239_add_currency_seperator_to_settings_table', 31),
(85, '2022_01_04_142738_create_states_table', 32),
(86, '2022_01_04_145532_add_state_id_to_users_table', 33),
(88, '2022_01_04_161647_add_state_id_to_orders_table', 34),
(89, '2022_01_06_155345_add_disqus_to_settings_table', 35),
(90, '2022_01_16_143429_add_type_to_states_table', 36),
(91, '2022_01_16_153254_add_state_to_orders_table', 37),
(92, '2022_03_01_162121_add_is_decemial_to_settings_table', 38),
(93, '2022_03_20_154807_update_column_to_home_cutomizes_table', 39),
(94, '2023_10_10_151706_order_mail_settings_table', 40),
(95, '2023_10_10_151706_ticket_mail_settings_table', 40);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `is_read` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `order_id`, `user_id`, `is_read`, `created_at`, `updated_at`) VALUES
(8, 159, NULL, 0, '2024-05-27 00:37:13', '2024-05-27 00:37:13'),
(10, 162, NULL, 0, '2024-05-28 09:18:59', '2024-05-28 09:18:59'),
(16, 170, NULL, 0, '2024-05-29 07:13:10', '2024-05-29 07:13:10'),
(17, 171, NULL, 0, '2024-05-29 08:10:53', '2024-05-29 08:10:53'),
(18, NULL, 10, 0, '2024-05-29 08:12:54', '2024-05-29 08:12:54'),
(19, 172, NULL, 0, '2024-05-29 17:02:59', '2024-05-29 17:02:59'),
(20, 173, NULL, 0, '2024-06-03 00:51:42', '2024-06-03 00:51:42'),
(21, 174, NULL, 0, '2024-06-03 11:14:04', '2024-06-03 11:14:04');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cart` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_sign` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `txnid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax` double NOT NULL DEFAULT 0,
  `charge_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_info` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_info` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `state_price` double DEFAULT 0,
  `state` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `cart`, `currency_sign`, `currency_value`, `discount`, `shipping`, `payment_method`, `txnid`, `tax`, `charge_id`, `transaction_number`, `order_status`, `shipping_info`, `billing_info`, `payment_status`, `created_at`, `updated_at`, `state_price`, `state`) VALUES
(159, 0, '{\"606-\":{\"options_id\":[],\"attribute\":{\"names\":[],\"option_name\":[],\"option_price\":[]},\"attribute_price\":0,\"name\":\"Akorkora Powder \\u0986\\u0995\\u09b0\\u0995\\u09b0\\u09be 100 gm\",\"slug\":\"Akorkora-Powder-\\u0986\\u0995\\u09b0\\u0995\\u09b0\\u09be-100-gm-\",\"qty\":\"1\",\"price\":3.571428571428600040604806054034270346164703369140625,\"main_price\":3.571428571428600040604806054034270346164703369140625,\"photo\":\"1716744517Akorkora.jpg\",\"type\":\"normal\",\"item_type\":\"normal\",\"item_l_n\":null,\"item_l_k\":null},\"607-\":{\"options_id\":[],\"attribute\":{\"names\":[],\"option_name\":[],\"option_price\":[]},\"attribute_price\":0,\"name\":\"\\u0986\\u09b2\\u0995\\u09c1\\u09b6\\u09bf \\u09a6\\u09c1\\u09a7\\u09c7 \\u09b6\\u09cb\\u09a7\\u09a8 \\u0995\\u09b0\\u09be Alkushi Premium 100 gm\",\"slug\":\"\\u0986\\u09b2\\u0995\\u09c1\\u09b6\\u09bf-\\u09a6\\u09c1\\u09a7\\u09c7-\\u09b6\\u09cb\\u09a7\\u09a8-\\u0995\\u09b0\\u09be-Alkushi-Premium-100-gm-\",\"qty\":\"2\",\"price\":1.7857142857143000203024030270171351730823516845703125,\"main_price\":1.7857142857143000203024030270171351730823516845703125,\"photo\":\"1716744760IMG_20240427_094916.jpg\",\"type\":\"normal\",\"item_type\":\"normal\",\"item_l_n\":null,\"item_l_k\":null},\"604-\":{\"options_id\":[],\"attribute\":{\"names\":[],\"option_name\":[],\"option_price\":[]},\"attribute_price\":0,\"name\":\"Combo Pack \\u09aa\\u09cc\\u09b0\\u09b7 \\u0995\\u09ae\\u09cd\\u09ac\\u09cb 600 gm\",\"slug\":\"Combo-Pack-\\u09aa\\u09cc\\u09b0\\u09b7-\\u0995\\u09ae\\u09cd\\u09ac\\u09cb-600-gm-\",\"qty\":\"1\",\"price\":5.95238095238099962358546690666116774082183837890625,\"main_price\":5.95238095238099962358546690666116774082183837890625,\"photo\":\"171674377717.jpg\",\"type\":\"normal\",\"item_type\":\"normal\",\"item_l_n\":null,\"item_l_k\":null}}', '৳', '84', '[]', '{\"id\":2,\"title\":\"Out site Dhaka\",\"price\":1.190476190476200013534935351344756782054901123046875,\"minimum_price\":0,\"is_condition\":0,\"status\":1,\"created_at\":null,\"updated_at\":null}', 'Cash On Delivery', NULL, 0, NULL, 'ORD-20240526-159', 'In Progress', '{\"_token\":\"K98nO4BJbvlbn8VYnJVjefc8LNTgJqQnSV09im80\",\"name\":\"Deen Mohammed Raju\",\"ship_email\":\"deenmdubai@gmail.com\",\"ship_phone\":\"01815709799\",\"ship_city\":\"Feni\",\"ship_address\":\"Mollaghata Bazar,  Jailasker,  Dagon Bhuiyan, Feni\"}', 'null', 'Unpaid', '2024-05-27 00:37:13', '2024-05-27 11:47:26', 0, NULL),
(162, 0, '{\"604-\":{\"options_id\":[],\"attribute\":{\"names\":[],\"option_name\":[],\"option_price\":[]},\"attribute_price\":0,\"name\":\"Combo Pack \\u09aa\\u09cc\\u09b0\\u09b7 \\u0995\\u09ae\\u09cd\\u09ac\\u09cb 600 gm\",\"slug\":\"Combo-Pack-\\u09aa\\u09cc\\u09b0\\u09b7-\\u0995\\u09ae\\u09cd\\u09ac\\u09cb-600-gm-\",\"qty\":\"1\",\"price\":5.95238095238099962358546690666116774082183837890625,\"main_price\":5.95238095238099962358546690666116774082183837890625,\"photo\":\"171674377717.jpg\",\"type\":\"normal\",\"item_type\":\"normal\",\"item_l_n\":null,\"item_l_k\":null},\"623-\":{\"options_id\":[],\"attribute\":{\"names\":[],\"option_name\":[],\"option_price\":[]},\"attribute_price\":0,\"name\":\"\\u09ac\\u09bf\\u09b0\\u09cd\\u09af\\u09ae\\u09c2\\u09b2 \\u09ae\\u09bf\\u09b6\\u09cd\\u09b0\\u09bf\\u09a6\\u09be\\u09a8\\u09be 100 gm powder Birjomoni Powder\",\"slug\":\"\\u09ac\\u09bf\\u09b0\\u09cd\\u09af\\u09ae\\u09c2\\u09b2-\\u09ae\\u09bf\\u09b6\\u09cd\\u09b0\\u09bf\\u09a6\\u09be\\u09a8\\u09be-100-gm-powder-Birjomoni-Powder\",\"qty\":\"1\",\"price\":1.7857142857143000203024030270171351730823516845703125,\"main_price\":1.7857142857143000203024030270171351730823516845703125,\"photo\":\"1716873116Mistre DANA-1.jpg\",\"type\":\"normal\",\"item_type\":\"normal\",\"item_l_n\":null,\"item_l_k\":null}}', '৳', '84', '[]', '{\"id\":2,\"title\":\"Out site Dhaka\",\"price\":1.190476190476200013534935351344756782054901123046875,\"minimum_price\":0,\"is_condition\":0,\"status\":1,\"created_at\":null,\"updated_at\":null}', 'Cash On Delivery', NULL, 0, NULL, 'ORD-20240528-162', 'Delivered', '{\"_token\":\"5qmk91i5QyYW91AmYp7B1jAOugRSCa2YoSePwImZ\",\"name\":\"Hossain\",\"ship_phone\":\"01793256555\",\"ship_address\":\"\\u09a8\\u09be\\u099f\\u09cb\\u09b0 \\u0994\\u09b7\\u09a7\\u09bf \\u0997\\u09cd\\u09b0\\u09be\\u09ae\"}', 'null', 'Paid', '2024-05-28 09:18:59', '2024-05-28 09:19:53', 0, NULL),
(170, 0, '{\"604-\":{\"options_id\":[],\"attribute\":{\"names\":[],\"option_name\":[],\"option_price\":[]},\"attribute_price\":0,\"name\":\"Combo Pack \\u09aa\\u09cc\\u09b0\\u09b7 \\u0995\\u09ae\\u09cd\\u09ac\\u09cb 600 gm\",\"slug\":\"Combo-Pack-\\u09aa\\u09cc\\u09b0\\u09b7-\\u0995\\u09ae\\u09cd\\u09ac\\u09cb-600-gm-\",\"qty\":\"1\",\"price\":5.95238095238099962358546690666116774082183837890625,\"main_price\":5.95238095238099962358546690666116774082183837890625,\"photo\":\"171674377717.jpg\",\"type\":\"normal\",\"item_type\":\"normal\",\"item_l_n\":null,\"item_l_k\":null}}', '৳', '84', '[]', '{\"id\":2,\"title\":\"Out site Dhaka\",\"price\":1.190476190476200013534935351344756782054901123046875,\"minimum_price\":0,\"is_condition\":0,\"status\":1,\"created_at\":null,\"updated_at\":null}', 'Cash On Delivery', NULL, 0, NULL, 'ORD-20240529-170', 'In Progress', '{\"_token\":\"5r4t5YZDskmhxtXPdaRXvNtCJltsIoefw4n7ej9I\",\"name\":\"Shamin\",\"ship_phone\":\"01819968478\",\"ship_address\":\"Square Masterbari valuka\"}', 'null', 'Unpaid', '2024-05-29 07:13:10', '2024-05-29 07:59:35', 0, NULL),
(171, 0, '{\"627-\":{\"options_id\":[],\"attribute\":{\"names\":[],\"option_name\":[],\"option_price\":[]},\"attribute_price\":0,\"name\":\"Shilajut, Shilajit (Refined) \\u09b6\\u09bf\\u09b2\\u09be\\u099c\\u09c1\\u09a4 (\\u09b6\\u09cb\\u09a7\\u09a8 \\u0995\\u09b0\\u09be)100 gm\",\"slug\":\"Shilajut--Shilajit--Refined--\\u09b6\\u09bf\\u09b2\\u09be\\u099c\\u09c1\\u09a4--\\u09b6\\u09cb\\u09a7\\u09a8-\\u0995\\u09b0\\u09be-100-gm\",\"qty\":\"1\",\"price\":16.666666666666998253276688046753406524658203125,\"main_price\":16.666666666666998253276688046753406524658203125,\"photo\":\"1716878651Shila jut.jpg\",\"type\":\"normal\",\"item_type\":\"normal\",\"item_l_n\":null,\"item_l_k\":null}}', '৳', '84', '[]', '{\"id\":2,\"title\":\"Out site Dhaka\",\"price\":1.190476190476200013534935351344756782054901123046875,\"minimum_price\":0,\"is_condition\":0,\"status\":1,\"created_at\":null,\"updated_at\":null}', 'Cash On Delivery', NULL, 0, NULL, 'ORD-20240529-171', 'In Progress', '{\"_token\":\"JXLuuyCWbc21mxU4sLMXn3SkGMyWMhQih1TbbeUP\",\"name\":\"MD. MAHFUZUR RAHMAN\",\"ship_phone\":\"01968188545\",\"ship_address\":\"Vill: Sitlai,  Union: Damkura, District : Rajshahi\"}', 'null', 'Unpaid', '2024-05-29 08:10:53', '2024-05-29 11:07:15', 0, NULL),
(172, 0, '{\"604-\":{\"options_id\":[],\"attribute\":{\"names\":[],\"option_name\":[],\"option_price\":[]},\"attribute_price\":0,\"name\":\"Combo Pack \\u09aa\\u09cc\\u09b0\\u09b7 \\u0995\\u09ae\\u09cd\\u09ac\\u09cb 600 gm\",\"slug\":\"Combo-Pack-\\u09aa\\u09cc\\u09b0\\u09b7-\\u0995\\u09ae\\u09cd\\u09ac\\u09cb-600-gm-\",\"qty\":\"1\",\"price\":5.95238095238099962358546690666116774082183837890625,\"main_price\":5.95238095238099962358546690666116774082183837890625,\"photo\":\"171674377717.jpg\",\"type\":\"normal\",\"item_type\":\"normal\",\"item_l_n\":null,\"item_l_k\":null}}', '৳', '84', '[]', '{\"id\":2,\"title\":\"Out site Dhaka\",\"price\":1.190476190476200013534935351344756782054901123046875,\"minimum_price\":0,\"is_condition\":0,\"status\":1,\"created_at\":null,\"updated_at\":null}', 'Cash On Delivery', NULL, 0, NULL, 'ORD-20240529-172', 'In Progress', '{\"_token\":\"rmhwpP8Hdj1TaiUhlUQrvrtVWbEokfxUK3Rnz1GH\",\"name\":\"shahriar\",\"ship_phone\":\"01989242920\",\"ship_address\":\"Duet,Joydebpur, Gazipur\"}', 'null', 'Unpaid', '2024-05-29 17:02:59', '2024-05-29 18:05:22', 0, NULL),
(173, 0, '{\"603-\":{\"options_id\":[],\"attribute\":{\"names\":[],\"option_name\":[],\"option_price\":[]},\"attribute_price\":0,\"name\":\"\\u0985\\u09b6\\u09cd\\u09ac\\u0997\\u09a8\\u09cd\\u09a7\\u09be Ashwagandha Powder 100 gm\",\"slug\":\"\\u0985\\u09b6\\u09cd\\u09ac\\u0997\\u09a8\\u09cd\\u09a7\\u09be-Ashwagandha-Powder-100-gm-\",\"qty\":\"1\",\"price\":1.7857142857143000203024030270171351730823516845703125,\"main_price\":1.7857142857143000203024030270171351730823516845703125,\"photo\":\"1716731752Assagandha.jpg\",\"type\":\"normal\",\"item_type\":\"normal\",\"item_l_n\":null,\"item_l_k\":null},\"607-\":{\"options_id\":[],\"attribute\":{\"names\":[],\"option_name\":[],\"option_price\":[]},\"attribute_price\":0,\"name\":\"\\u0986\\u09b2\\u0995\\u09c1\\u09b6\\u09bf \\u09a6\\u09c1\\u09a7\\u09c7 \\u09b6\\u09cb\\u09a7\\u09a8 \\u0995\\u09b0\\u09be Alkushi Premium 100 gm\",\"slug\":\"\\u0986\\u09b2\\u0995\\u09c1\\u09b6\\u09bf-\\u09a6\\u09c1\\u09a7\\u09c7-\\u09b6\\u09cb\\u09a7\\u09a8-\\u0995\\u09b0\\u09be-Alkushi-Premium-100-gm-\",\"qty\":\"1\",\"price\":1.7857142857143000203024030270171351730823516845703125,\"main_price\":1.7857142857143000203024030270171351730823516845703125,\"photo\":\"1716744760IMG_20240427_094916.jpg\",\"type\":\"normal\",\"item_type\":\"normal\",\"item_l_n\":null,\"item_l_k\":null},\"643-\":{\"options_id\":[],\"attribute\":{\"names\":[],\"option_name\":[],\"option_price\":[]},\"attribute_price\":0,\"name\":\"\\u09ac\\u09bf\\u099f\\u09b0\\u09c1\\u099f \\u0997\\u09c1\\u09dc\\u09cb Beetroot Powder 100 gm\",\"slug\":\"\\u09ac\\u09bf\\u099f\\u09b0\\u09c1\\u099f-\\u0997\\u09c1\\u09dc\\u09cb-Beetroot-Powder-100-gm\",\"qty\":\"1\",\"price\":3.571428571428600040604806054034270346164703369140625,\"main_price\":3.571428571428600040604806054034270346164703369140625,\"photo\":\"1717007117beetroot 1.jpg\",\"type\":\"normal\",\"item_type\":\"normal\",\"item_l_n\":null,\"item_l_k\":null},\"630-\":{\"options_id\":[],\"attribute\":{\"names\":[],\"option_name\":[],\"option_price\":[]},\"attribute_price\":0,\"name\":\"\\u09b8\\u099c\\u09a8\\u09c7 \\u09aa\\u09be\\u09a4\\u09be \\u0997\\u09c1\\u09dc\\u09cb Moringa Leaf  Best Moringa Powder ( \\u09ae\\u09b0\\u09bf\\u0999\\u09cd\\u0997\\u09be \\u0997\\u09c1\\u0981\\u09a1\\u09bc\\u09be )\",\"slug\":\"\\u09b8\\u099c\\u09a8\\u09c7-\\u09aa\\u09be\\u09a4\\u09be-\\u0997\\u09c1\\u09dc\\u09cb-Moringa-Leaf--Best-Moringa-Powder---\\u09ae\\u09b0\\u09bf\\u0999\\u09cd\\u0997\\u09be-\\u0997\\u09c1\\u0981\\u09a1\\u09bc\\u09be--\",\"qty\":\"1\",\"price\":1.7857142857143000203024030270171351730823516845703125,\"main_price\":1.7857142857143000203024030270171351730823516845703125,\"photo\":\"1716970944Sojnepata-4.jpg\",\"type\":\"normal\",\"item_type\":\"normal\",\"item_l_n\":null,\"item_l_k\":null},\"625-\":{\"options_id\":[],\"attribute\":{\"names\":[],\"option_name\":[],\"option_price\":[]},\"attribute_price\":0,\"name\":\"himalayan pink salt Powder 500 gm \\u09ae\\u09bf\\u09b9\\u09bf \\u0997\\u09c1\\u09dc\\u09cb\",\"slug\":\"himalayan-pink-salt-Powder-500-gm-\\u09ae\\u09bf\\u09b9\\u09bf-\\u0997\\u09c1\\u09dc\\u09cb-\",\"qty\":\"1\",\"price\":1.7857142857143000203024030270171351730823516845703125,\"main_price\":1.7857142857143000203024030270171351730823516845703125,\"photo\":\"1716875608pink salt guro.jpg\",\"type\":\"normal\",\"item_type\":\"normal\",\"item_l_n\":null,\"item_l_k\":null}}', '৳', '84', '[]', '{\"id\":1,\"title\":\"Free Delevery\",\"price\":0,\"minimum_price\":9.4047619047618997711879273992963135242462158203125,\"is_condition\":1,\"status\":1,\"created_at\":null,\"updated_at\":null}', 'Cash On Delivery', NULL, 0, NULL, 'ORD-20240602-173', 'Pending', '{\"_token\":\"1y1uOxuhIF9I4JBHA97bDLH819UV2uolVDe3Urnd\",\"name\":\"Shahabuddin\",\"ship_phone\":\"01911666507\",\"ship_address\":\"1557 Hazipara Singapore Market Agrabad Access Road Chattogram 4100\"}', 'null', 'Unpaid', '2024-06-03 00:51:42', '2024-06-03 00:51:42', 0, NULL),
(174, 0, '{\"647-\":{\"options_id\":[],\"attribute\":{\"names\":[],\"option_name\":[],\"option_price\":[]},\"attribute_price\":0,\"name\":\"\\u099f\\u09ae\\u09c7\\u099f\\u09cb \\u0997\\u09c1\\u09dc\\u09cb Tomato Powder 50 gm\",\"slug\":\"\\u099f\\u09ae\\u09c7\\u099f\\u09cb-\\u0997\\u09c1\\u09dc\\u09cb-Tomato-Powder-50-gm-\",\"qty\":\"1\",\"price\":1.7857142857143000203024030270171351730823516845703125,\"main_price\":1.7857142857143000203024030270171351730823516845703125,\"photo\":\"1717051253Tomato powder.jpg\",\"type\":\"normal\",\"item_type\":\"normal\",\"item_l_n\":null,\"item_l_k\":null}}', '৳', '84', '[]', '{\"id\":2,\"title\":\"Out site Dhaka\",\"price\":1.190476190476200013534935351344756782054901123046875,\"minimum_price\":0,\"is_condition\":0,\"status\":1,\"created_at\":null,\"updated_at\":null}', 'Cash On Delivery', NULL, 0, NULL, 'ORD-20240603-174', 'Pending', '{\"_token\":\"vaQRl3kfN0Z2um6sIBmmtkae92OAf3TRN9yDLDOH\",\"name\":\"saiful test order\",\"ship_phone\":\"+1 (952) 472-2641\",\"ship_address\":\"78 Oak Avenue\"}', 'null', 'Unpaid', '2024-06-03 11:14:04', '2024-06-03 11:14:04', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_descriptions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pos` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `details`, `meta_keywords`, `meta_descriptions`, `pos`, `created_at`, `updated_at`) VALUES
(7, 'About Us', 'about-us', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', NULL, NULL, 2, NULL, NULL),
(10, 'Privacy Policy', 'privacy-policy', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', NULL, NULL, 2, NULL, NULL),
(11, 'Terms & Service', 'terms-and-service', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', NULL, NULL, 2, NULL, NULL),
(12, 'Return Policy', 'return-policy', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', NULL, NULL, 2, NULL, NULL),
(14, 'How It Works', 'How-It-Works', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '[{\"value\":\"a\"},{\"value\":\"b\"},{\"value\":\"c\"}]', NULL, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment_settings`
--

CREATE TABLE `payment_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `information` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unique_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_settings`
--

INSERT INTO `payment_settings` (`id`, `name`, `information`, `unique_keyword`, `photo`, `text`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Cash On Delivery', NULL, 'cod', '1631032407index.png', 'Cash on Delivery basically means you will pay the amount of product while you get the item delivered to you.', 1, NULL, NULL),
(14, 'Stripe', '{\"key\":\"pk_test_51HZI80H3jdWvr8gEn3oRtFlnJTqRpecXGQueOyngEArTyF6gjjfOVqbFeFMpAMRoQmKwPPrh81OiWzhDlqtS5nGs00gKycg4Oa\",\"secret\":\"sk_test_51HZI80H3jdWvr8gErqdNWpqUkAgHMQdw7uug1mfUY38vIUfodsAWj4hoBK43rBvHebYETVX4ZCne03o3Ifco1qkR00dhrdpPsh\"}', 'stripe', '1601930611stripe-logo-blue.png', 'Stripe is the faster & safer way to send money. Make an online payment via Stripe.', 0, NULL, NULL),
(15, 'Paypal', '{\"client_id\":\"AUtv8KISHG9l9rmlXB0cSLjt6A91IsGfPACeRreuRpEV3GR-ZRnxIxXnUVKNYIfqVXrxs2uPlGDot0Cc\",\"client_secret\":\"EEdtOBI_NjI2bJzLSIzumsN_xSI7htn8qyAcRz0mvO8Emv-7CdfQeqxNZlDhiDAd0ZhV49e4sOhjtwho\",\"check_sandbox\":1}', 'paypal', '16218678201601930675paypal-784404_960_720.png', 'PayPal is the faster & safer way to send money. Make an online payment via PayPal.', 0, NULL, NULL),
(17, 'Mollie', '{\"key\":\"test_5HcWVs9qc5pzy36H9Tu9mwAyats33J\"}', 'mollie', '1621785282Mollie.jpeg', 'Mollie is a Payment Provider for Belgium and the Netherlands, offering payment methods such as credit card, iDEAL, Bancontact/Mister cash, PayPal, SCT, SDD and others.', 0, NULL, NULL),
(18, 'Paytm', '{\"mercent\":\"tkogux49985047638244\",\"client_secret\":\"LhNGUUKE9xCQ9xY8\",\"website\":\"WEBSTAGING\",\"industry\":\"Retail\",\"is_paytm\":\"1\",\"paytm_mode\":0}', 'paytm', '1631978815images.png', 'Paytm is the faster & safer way to send money. Make an online payment via Paytm.', 0, NULL, NULL),
(19, 'SSLCommerz', '{\"store_id\":\"geniu5e1b00621f81e\",\"store_password\":\"geniu5e1b00621f81e@ssl\",\"check_sandbox\":1}', 'sslcommerz', '1631978716ssl-thumb.jpeg', 'SSL commerz is the faster & safer way to send money. Make an online payment via SSL commerz.', 1, NULL, NULL),
(24, 'Mercadopago', '{\"public_key\":\"TEST-6f72a502-51c8-4e9a-8ca3-cb7fa0addad8\",\"token\":\"TEST-6068652511264159-022306-e78da379f3963916b1c7130ff2906826-529753482\",\"check_sandbox\":1}', 'mercadopago', '1633085560unnamed.jpeg', 'Mercadopago is the faster & safer way to send money. Make an online payment via Mercadopago.', 0, NULL, NULL),
(25, 'Authorize.Net', '{\"login_id\":\"76zu9VgUSxrJ\",\"txn_key\":\"2Vj62a6skSrP5U3X\",\"check_sandbox\":1}', 'authorize', '1633100640seal2.png', 'Authorize.Net is the faster & safer way to send money. Make an online payment via Authorize.Net', 0, NULL, NULL),
(26, 'Paystack', '{\"key\":\"pk_test_162a56d42131cbb01932ed0d2c48f9cb99d8e8e2\",\"email\":\"geniusdevs@gmail.com\"}', 'paystack', '1634237632paystack-opengraph.png', 'Paystack is the faster & safer way to send money. Make an online payment via Paystack.', 0, NULL, NULL),
(27, 'Bank Transfer', NULL, 'bank', '1638530860pngwing.com (1).png', '<p>Account Number : 434 3434 3334</p><p>Pay With Bank Transfer.</p><p>Account Name : Jhon Due</p><p>Account Email : demo@gmail.com</p>', 0, NULL, NULL),
(28, 'Razorpay', '{\"key\":\"rzp_test_xDH74d48cwl8DF\",\"secret\":\"cr0H1BiQ20hVzhpHfHuNbGri\"}', 'razorpay', '1637992878download.jpeg', 'Rezorpay is the faster & safer way to send money. Make an online payment via Rezorpay.', 0, NULL, NULL),
(29, 'Flutter Wave', '{\"public_key\":\"FLWPUBK_TEST-d54c4c69ef195e721af2139e7dfe1a23-X\",\"secret_key\":\"FLWSECK_TEST-86c6484143e62c4c9bc2e8aa08a07c92-X\",\"text\":\"Pay via your Flutter Wave account.\"}', 'flutterwave', '1637998096download.png', 'Flutterwave is the faster & safer way to send money. Make an online payment via Flutterwave.', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_descriptions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `promo_codes`
--

CREATE TABLE `promo_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_of_times` int(11) NOT NULL DEFAULT 0,
  `discount` double NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promo_codes`
--

INSERT INTO `promo_codes` (`id`, `title`, `code_name`, `no_of_times`, `discount`, `status`, `created_at`, `updated_at`, `type`) VALUES
(1, 'Flash Discount', 'ironman', 95, 2, 1, NULL, NULL, NULL),
(2, 'Halloween Carnival', 'superman', 96, 5, 1, NULL, NULL, NULL),
(3, 'Fest Carnival', 'loki', 94, 10, 1, NULL, NULL, 'amount');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `item_id` int(11) NOT NULL DEFAULT 0,
  `review` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` double NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `section`, `created_at`, `updated_at`) VALUES
(1, 'test', '[\"Manage Categories\",\"Manage Products\",\"Manage Orders\",\"Transactions\",\"Ecommerce\",\"Customer List\",\"Manages Tickets\",\"Manage Site\",\"Manage Faqs Contents\",\"Manage Blogs\",\"Manages Pages\",\"Subscribers List\",\"Manage System User\"]', '2021-12-05 10:24:27', '2021-12-05 10:24:27');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `details`, `photo`, `created_at`, `updated_at`) VALUES
(31, 'Secure Online Payment', 'We posess SSL / Secure Certificate', '162196474904.png', NULL, NULL),
(32, '24/7 Customer Support', 'Friendly 24/7 customer support', '162196471103.png', NULL, NULL),
(33, 'Money Back Guarantee', 'We return money within 30 days', '162196467602.png', NULL, NULL),
(34, 'Free Worldwide Shipping', 'Free shipping for all orders over $100 Contrary to popular belie', '162196463701.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loader` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_loader` tinyint(4) DEFAULT 1,
  `feature_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_check` tinyint(4) DEFAULT 0,
  `email_host` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_port` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_encryption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_pass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `overlay` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_analytics_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_shop` tinyint(4) DEFAULT 1,
  `is_blog` tinyint(4) DEFAULT 1,
  `is_faq` tinyint(4) DEFAULT 1,
  `is_contact` tinyint(4) DEFAULT 1,
  `facebook_check` tinyint(4) DEFAULT 1,
  `facebook_client_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_client_secret` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_redirect` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_check` tinyint(4) DEFAULT 1,
  `google_client_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_client_secret` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_redirect` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_price` double DEFAULT 0,
  `max_price` double DEFAULT 100000,
  `footer_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_gateway_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `friday_start` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `friday_end` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `satureday_start` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `satureday_end` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copy_right` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_slider` tinyint(4) DEFAULT 1,
  `is_category` tinyint(4) DEFAULT 1,
  `is_product` tinyint(4) DEFAULT 1,
  `is_top_banner` tinyint(4) DEFAULT 1,
  `is_recent` tinyint(4) DEFAULT 1,
  `is_top` tinyint(4) DEFAULT 1,
  `is_best` tinyint(4) DEFAULT 1,
  `is_flash` tinyint(4) DEFAULT 1,
  `is_brand` tinyint(4) DEFAULT 1,
  `is_blogs` tinyint(4) DEFAULT 1,
  `is_campaign` tinyint(4) DEFAULT 1,
  `is_brands` tinyint(4) DEFAULT 1,
  `is_bottom_banner` tinyint(4) DEFAULT 1,
  `is_service` tinyint(4) DEFAULT 1,
  `campaign_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_end_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_status` tinyint(4) DEFAULT 1,
  `twilio_sid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twilio_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twilio_form_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twilio_country_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_announcement` tinyint(4) DEFAULT 1,
  `announcement` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `announcement_delay` decimal(11,2) NOT NULL DEFAULT 0.00,
  `is_maintainance` tinyint(4) DEFAULT 1,
  `maintainance_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maintainance_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_twilio` tinyint(4) DEFAULT 0,
  `twilio_section` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_three_c_b_first` tinyint(4) NOT NULL DEFAULT 1,
  `is_popular_category` tinyint(4) NOT NULL DEFAULT 1,
  `is_three_c_b_second` tinyint(4) NOT NULL DEFAULT 1,
  `is_highlighted` tinyint(4) NOT NULL DEFAULT 1,
  `is_two_column_category` tinyint(4) NOT NULL DEFAULT 1,
  `is_popular_brand` tinyint(4) NOT NULL DEFAULT 1,
  `is_featured_category` tinyint(4) NOT NULL DEFAULT 1,
  `is_two_c_b` tinyint(4) NOT NULL DEFAULT 1,
  `theme` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_recaptcha_site_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_recaptcha_secret_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recaptcha` tinyint(4) DEFAULT 0,
  `currency_direction` tinyint(4) DEFAULT 1,
  `google_analytics` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_adsense` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_pixel` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_messenger` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_google_analytics` tinyint(4) DEFAULT 0,
  `is_google_adsense` tinyint(4) DEFAULT 0,
  `is_facebook_pixel` tinyint(4) DEFAULT 0,
  `is_facebook_messenger` tinyint(4) DEFAULT 0,
  `announcement_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_attribute_search` tinyint(4) DEFAULT 1,
  `is_range_search` tinyint(4) DEFAULT 1,
  `view_product` int(11) DEFAULT 12,
  `home_page_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Home',
  `is_privacy_trams` tinyint(4) DEFAULT 1,
  `policy_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '''#''',
  `terms_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '''#''',
  `is_guest_checkout` tinyint(4) DEFAULT 1,
  `custom_css` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `announcement_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `announcement_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'banner',
  `is_cookie` tinyint(4) DEFAULT 1,
  `cookie_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `announcement_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `decimal_separator` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '.',
  `thousand_separator` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ',',
  `disqus` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_disqus` tinyint(4) NOT NULL DEFAULT 0,
  `is_decimal` tinyint(4) DEFAULT 1,
  `order_mail` tinyint(4) NOT NULL DEFAULT 0,
  `ticket_mail` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title`, `logo`, `favicon`, `loader`, `is_loader`, `feature_image`, `primary_color`, `smtp_check`, `email_host`, `email_port`, `email_encryption`, `email_user`, `email_pass`, `email_from`, `email_from_name`, `contact_email`, `version`, `overlay`, `google_analytics_id`, `meta_keywords`, `meta_description`, `is_shop`, `is_blog`, `is_faq`, `is_contact`, `facebook_check`, `facebook_client_id`, `facebook_client_secret`, `facebook_redirect`, `google_check`, `google_client_id`, `google_client_secret`, `google_redirect`, `min_price`, `max_price`, `footer_phone`, `footer_address`, `footer_email`, `footer_gateway_img`, `social_link`, `friday_start`, `friday_end`, `satureday_start`, `satureday_end`, `copy_right`, `is_slider`, `is_category`, `is_product`, `is_top_banner`, `is_recent`, `is_top`, `is_best`, `is_flash`, `is_brand`, `is_blogs`, `is_campaign`, `is_brands`, `is_bottom_banner`, `is_service`, `campaign_title`, `campaign_end_date`, `campaign_status`, `twilio_sid`, `twilio_token`, `twilio_form_number`, `twilio_country_code`, `is_announcement`, `announcement`, `announcement_delay`, `is_maintainance`, `maintainance_image`, `maintainance_text`, `is_twilio`, `twilio_section`, `created_at`, `updated_at`, `is_three_c_b_first`, `is_popular_category`, `is_three_c_b_second`, `is_highlighted`, `is_two_column_category`, `is_popular_brand`, `is_featured_category`, `is_two_c_b`, `theme`, `google_recaptcha_site_key`, `google_recaptcha_secret_key`, `recaptcha`, `currency_direction`, `google_analytics`, `google_adsense`, `facebook_pixel`, `facebook_messenger`, `is_google_analytics`, `is_google_adsense`, `is_facebook_pixel`, `is_facebook_messenger`, `announcement_link`, `is_attribute_search`, `is_range_search`, `view_product`, `home_page_title`, `is_privacy_trams`, `policy_link`, `terms_link`, `is_guest_checkout`, `custom_css`, `announcement_title`, `announcement_type`, `is_cookie`, `cookie_text`, `announcement_details`, `decimal_separator`, `thousand_separator`, `disqus`, `is_disqus`, `is_decimal`, `order_mail`, `ticket_mail`) VALUES
(1, 'Agrofirmbd', '1711774428logo.png', '1711775070logo.png', '1711775053logo.png', 1, '1600622296topic.jpg', '#A2D732', 1, 'smtp.mailtrap.io', '2525', 'tls', 'ab7d3fde364e5f', 'aac3f52ada3308', 'omnimartshop@email.com', 'Magicshop', 'contact@email.com', '4.0', NULL, 'UA-106757798-1', 'agrofarmbd,agrofirmbd,agro farm bd,best herbal,herbal,herbal wholesaller,wholesale herbs,নাটোর ঔষধি গ্রাম,নাটোর ভেষজ গ্রাম,ভেষজ পয়েন্ট,ভেষজ ঘর,নাটোর ভেষজ ঘর', 'Agrofarmbd - All kinds of herbal products are supplied all over the country from Natore Medicinal Village.', 1, 1, 1, 1, 1, '643929170080071', '038b2100dff9a2a684c85959c0accf66', 'https://localhost/my/omnimart/auth/facebook/callback', 1, '915191002660-6hjno4cgnbcm5p1kb3t692trh7pc6ngh.apps.googleusercontent.com', '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', 'http://localhost/my/omnimart/auth/google/callback', 0, 10000, '+8801323578017', 'খোলাবাড়ীয়া ঔষধি গ্রাম (কাঠালবাড়ীয়া) লক্ষীপুর হাট  থানা ও জেলা  নাটোর , বিভাগ রাজশাহী ।', 'agrofarmbd2@gmail.com', '16305963101621960148credit-cards-footer.png', '{\"icons\":[\"fab fa-facebook-f\",\"fab fa-twitter\",\"fab fa-youtube\",\"fab fa-linkedin-in\"],\"links\":[\"https:\\/\\/www.facebook.com\\/herbsnatore\\/\",\"https:\\/\\/www.twitter.com\",\"https:\\/\\/youtube.com\\/@agrofarmbd3449?si=Nh_m9_JZ0RtfBE8u\",\"https:\\/\\/www.linkedin.com\"]}', '9:27 PM', '9:27 PM', '9:27 PM', '9:27 PM', 'Agrofarmbd © All rights reserved.', 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 'Deals Of The Week', '10/10/2022', 1, 'AC73e54518487ad4e26da8b465a7614f1f0', '300d787df0c398ae46b84b74ea86f59c', '+15612793758', '+880', 1, '1711791259slider2.jpg', '50.00', 0, '16323327831619241714761747856.jpg', 'We are upgrading our site.  We will come back soon.  \r\nPlease stay with us. \r\nThank you.', 1, '{\"\'purchase\'\":\"Your Order Purchase Successfully. your order number is {order_number}\",\"\'order_status\'\":\"Your Order status update. Order number is {order_number}\"}', NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 'theme1', '6LcnPoEaAAAAAF6QhKPZ8V4744yiEnr41li3SYDn', '6LcnPoEaAAAAACV_xC4jdPqumaYKBnxz9Sj6y0zk', 1, 1, NULL, NULL, NULL, '<!-- Messenger Chat Plugin Code -->\r\n    <div id=\"fb-root\"></div>\r\n\r\n    <!-- Your Chat Plugin code -->\r\n    <div id=\"fb-customer-chat\" class=\"fb-customerchat\">\r\n    </div>\r\n\r\n    <script>\r\n      var chatbox = document.getElementById(\'fb-customer-chat\');\r\n      chatbox.setAttribute(\"page_id\", \"858401617860382\");\r\n      chatbox.setAttribute(\"attribution\", \"biz_inbox\");\r\n      window.fbAsyncInit = function() {\r\n        FB.init({\r\n          xfbml            : true,\r\n          version          : \'v11.0\'\r\n        });\r\n      };\r\n\r\n      (function(d, s, id) {\r\n        var js, fjs = d.getElementsByTagName(s)[0];\r\n        if (d.getElementById(id)) return;\r\n        js = d.createElement(s); js.id = id;\r\n        js.src = \'https://connect.facebook.net/en_US/sdk/xfbml.customerchat.js\';\r\n        fjs.parentNode.insertBefore(js, fjs);\r\n      }(document, \'script\', \'facebook-jssdk\'));\r\n    </script>', 0, 0, 0, 0, 'Blanditiis eius aspe', 1, 1, 16, 'Agrofirmbd', 1, 'http://localhost/my/Agrofarmbd/privacy-policy', 'http://localhost/my/Agrofarmbd/terms-and-service', 1, NULL, 'Et est amet repelle', 'banner', 0, 'Your experience on this site will be improved by allowing cookies.', 'In quia libero ipsum', '.', ',', '<div id=\"disqus_thread\"></div>\r\n<script>\r\n    /**\r\n    *  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.\r\n    *  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables    */\r\n    /*\r\n    var disqus_config = function () {\r\n    this.page.url = PAGE_URL;  // Replace PAGE_URL with your page\'s canonical URL variable\r\n    this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page\'s unique identifier variable\r\n    };\r\n    */\r\n    (function() { // DON\'T EDIT BELOW THIS LINE\r\n    var d = document, s = d.createElement(\'script\');\r\n    s.src = \'https://omnimart.disqus.com/embed.js\';\r\n    s.setAttribute(\'data-timestamp\', +new Date());\r\n    (d.head || d.body).appendChild(s);\r\n    })();\r\n</script>', 1, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_services`
--

CREATE TABLE `shipping_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double NOT NULL DEFAULT 0,
  `minimum_price` double NOT NULL DEFAULT 0,
  `is_condition` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_services`
--

INSERT INTO `shipping_services` (`id`, `title`, `price`, `minimum_price`, `is_condition`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Free Delevery', 0, 9.4047619047619, 1, 1, NULL, NULL),
(2, 'Out site Dhaka', 1.1904761904762, 0, 0, 1, NULL, NULL),
(3, 'Inside Dhaka', 0.71428571428571, 0, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sitemaps`
--

CREATE TABLE `sitemaps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sitemap_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `home_page` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'theme1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `photo`, `title`, `link`, `logo`, `details`, `created_at`, `updated_at`, `home_page`) VALUES
(25, 'vIqtWhatsApp Image 2024-05-26 at 10.15.45 PM (1).jpeg', 'সোলার টানেল ড্রায়ার এ বিট শুকানো হচ্ছে', '#', '5pF6WhatsApp Image 2024-05-26 at 10.15.37 PM (1).jpeg', '#', NULL, NULL, 'theme1');

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `link`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'https://www.facebook.com/', 'fab fa-facebook-square', NULL, NULL),
(2, 'https://twitter.com/', 'fab fa-twitter-square', NULL, NULL),
(3, 'https://www.instagram.com/', 'fab fa-instagram', NULL, NULL),
(10, 'https://www.pinterest.com/', 'fab fa-pinterest-square', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double DEFAULT 0,
  `status` tinyint(4) DEFAULT 1,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `price`, `status`, `type`) VALUES
(6, 'Alaska', 3, 0, 'percentage'),
(7, 'California', 4, 0, 'percentage'),
(8, 'New Mexico', 5, 0, 'percentage'),
(9, 'Utah', 6, 0, 'percentage'),
(10, 'Virginia', 6, 0, 'percentage');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `status` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'user@gmail.com', NULL, NULL),
(3, 'schermerdusenberycmp5p8+3erhqifnf6n8@gmail.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` double DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `name`, `value`, `status`, `created_at`, `updated_at`) VALUES
(1, 'High Tax', 4, 1, NULL, NULL),
(2, 'Low Tax', 1, 1, NULL, NULL),
(3, 'No Tax', 0, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `subject`, `message`, `file`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'I need help', 'I need help', NULL, 1, NULL, '2021-12-03 06:32:39', '2021-12-03 06:32:39');

-- --------------------------------------------------------

--
-- Table structure for table `track_orders`
--

CREATE TABLE `track_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `track_orders`
--

INSERT INTO `track_orders` (`id`, `order_id`, `title`, `created_at`, `updated_at`) VALUES
(347, 159, 'Pending', '2024-05-27 00:37:13', '2024-05-27 00:37:13'),
(348, 159, 'In Progress', '2024-05-27 11:47:26', '2024-05-27 11:47:26'),
(351, 162, 'Pending', '2024-05-28 09:18:59', '2024-05-28 09:18:59'),
(352, 162, 'In Progress', '2024-05-28 09:19:48', '2024-05-28 09:19:48'),
(353, 162, 'Delivered', '2024-05-28 09:19:48', '2024-05-28 09:19:48'),
(361, 170, 'Pending', '2024-05-29 07:13:10', '2024-05-29 07:13:10'),
(362, 170, 'In Progress', '2024-05-29 07:59:35', '2024-05-29 07:59:35'),
(363, 171, 'Pending', '2024-05-29 08:10:53', '2024-05-29 08:10:53'),
(364, 171, 'In Progress', '2024-05-29 11:07:15', '2024-05-29 11:07:15'),
(365, 172, 'Pending', '2024-05-29 17:02:59', '2024-05-29 17:02:59'),
(366, 172, 'In Progress', '2024-05-29 18:05:22', '2024-05-29 18:05:22'),
(367, 173, 'Pending', '2024-06-03 00:51:42', '2024-06-03 00:51:42'),
(368, 174, 'Pending', '2024-06-03 11:14:04', '2024-06-03 11:14:04');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `txn_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `user_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_sign` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_value` double NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `order_id`, `txn_id`, `amount`, `user_email`, `currency_sign`, `currency_value`, `created_at`, `updated_at`) VALUES
(118, '159', '3BgmT1IlNS', 14, 'deenmdubai@gmail.com', '৳', 84, '2024-05-27 00:37:13', '2024-05-27 00:37:13'),
(120, '162', 'ro4YtyfVg0', 9, NULL, '৳', 84, '2024-05-28 09:18:59', '2024-05-28 09:18:59'),
(126, '170', '5XT7M9zbTU', 7, NULL, '৳', 84, '2024-05-29 07:13:10', '2024-05-29 07:13:10'),
(127, '171', 'nnVrAposlI', 18, NULL, '৳', 84, '2024-05-29 08:10:53', '2024-05-29 08:10:53'),
(128, '172', 'G5YsXGCD0j', 7, NULL, '৳', 84, '2024-05-29 17:02:59', '2024-05-29 17:02:59'),
(129, '173', 'cHGXCEn2gb', 11, NULL, '৳', 84, '2024-06-03 00:51:42', '2024-06-03 00:51:42'),
(130, '174', '0apKHywzAr', 3, NULL, '৳', 84, '2024-06-03 11:14:04', '2024-06-03 11:14:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_address1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_address1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `photo`, `email_token`, `password`, `ship_address1`, `ship_address2`, `ship_zip`, `ship_city`, `ship_country`, `ship_company`, `bill_address1`, `bill_address2`, `bill_zip`, `bill_city`, `bill_country`, `bill_company`, `created_at`, `updated_at`, `state_id`) VALUES
(1, 'Alex', 'Smith', '01728332009', 'user@gmail.com', '16385217454444.jpg', NULL, '$2y$10$o2LxRwxTmciQqlKzRhy9O./KERxB8Ht3K8.OHw3WGJu3oDuNQ/xXm', '472 Clark Street,  Bay Shore, New York', NULL, '3444', 'New York', 'United States', NULL, '472 Clark Street,  Bay Shore, New York', NULL, '3444', 'New York', 'United States', NULL, '2021-09-13 07:08:04', '2022-03-01 09:34:58', NULL),
(8, 'showrav', 'Hasan', '017286436', 'teacher@gmail.com', NULL, 'ckKvuX', '$2y$10$zTzmhxGC02sxXgxdp2fDuOaQwKOg.DeHDK3zLDXRSsx1C.T8XX9j.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-19 10:10:00', '2022-03-19 10:10:00', NULL),
(9, 'saiful', 'isalm', '01518987898', 'saiful@gmail.com', '1711780339DS9995.jpg', 'fa523387fdae5e59eccc56f1c245411b', '$2y$10$lC11RKyQ5uO7UAf8tXoHcuV6vCVikwcz9locGUVqkbrjpT31Uq4Lu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 00:26:45', '2024-03-30 00:32:19', NULL),
(10, 'Md Mahfuzur', 'Rahman', '01968188545', 'mahfuzmd601@gmail.com', NULL, '6a3BIE', '$2y$10$CoYjVkbsRkZokuSJB.uZ8u.F7ISo0nKqb4lZzERClvm2LDbozEGGC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-29 08:12:54', '2024-05-29 08:12:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_options`
--
ALTER TABLE `attribute_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bcategories`
--
ALTER TABLE `bcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaign_items`
--
ALTER TABLE `campaign_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chield_categories`
--
ALTER TABLE `chield_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `extra_settings`
--
ALTER TABLE `extra_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fcategories`
--
ALTER TABLE `fcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_cutomizes`
--
ALTER TABLE `home_cutomizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_settings`
--
ALTER TABLE `payment_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promo_codes`
--
ALTER TABLE `promo_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_services`
--
ALTER TABLE `shipping_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sitemaps`
--
ALTER TABLE `sitemaps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `track_orders`
--
ALTER TABLE `track_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `attribute_options`
--
ALTER TABLE `attribute_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1265;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bcategories`
--
ALTER TABLE `bcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `campaign_items`
--
ALTER TABLE `campaign_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `chield_categories`
--
ALTER TABLE `chield_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `extra_settings`
--
ALTER TABLE `extra_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `fcategories`
--
ALTER TABLE `fcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `home_cutomizes`
--
ALTER TABLE `home_cutomizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=648;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `payment_settings`
--
ALTER TABLE `payment_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `promo_codes`
--
ALTER TABLE `promo_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shipping_services`
--
ALTER TABLE `shipping_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sitemaps`
--
ALTER TABLE `sitemaps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `track_orders`
--
ALTER TABLE `track_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=369;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
