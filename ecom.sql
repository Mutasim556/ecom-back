-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2023 at 01:20 PM
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
-- Database: `ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_image` varchar(255) NOT NULL,
  `category_stataus` text NOT NULL DEFAULT 'Active',
  `category_delete` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `category_image`, `category_stataus`, `category_delete`, `created_at`, `updated_at`) VALUES
(1, 'Grocery', 'http://localhost/lv-react/back/public/images/categories/cat1.webp', 'Active', 0, NULL, NULL),
(3, 'Mobiles', 'http://localhost/lv-react/back/public/images/categories/cat2.webp', 'Active', 0, NULL, NULL),
(4, 'Fashion', 'http://localhost/lv-react/back/public/images/categories/cat3.webp', 'Active', 0, NULL, NULL),
(5, 'Electronics', 'http://localhost/lv-react/back/public/images/categories/cat4.webp', 'Active', 0, NULL, NULL),
(6, 'Home', 'http://localhost/lv-react/back/public/images/categories/cat5.webp', 'Active', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `contact_id` bigint(20) UNSIGNED NOT NULL,
  `contact_name` varchar(255) NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `contact_message` text NOT NULL,
  `contact_date` varchar(255) NOT NULL,
  `contact_time` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`contact_id`, `contact_name`, `contact_email`, `contact_message`, `contact_date`, `contact_time`, `created_at`, `updated_at`) VALUES
(22, 'Sumit', 'mutasim@gmail.com', 'test message', '2023-05-31', '11:13:27 am', '2023-05-31 05:13:28', '2023-05-31 05:13:28');

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
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `info_id` bigint(20) UNSIGNED NOT NULL,
  `about` text NOT NULL,
  `refund` text NOT NULL,
  `purchase_guide` text NOT NULL,
  `privacy` text NOT NULL,
  `address` text NOT NULL,
  `android_app_link` varchar(255) NOT NULL,
  `ios_app_link` varchar(255) NOT NULL,
  `facebook_link` varchar(255) NOT NULL,
  `twitter_link` varchar(255) NOT NULL,
  `instagram_link` varchar(255) NOT NULL,
  `copyright_text` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`info_id`, `about`, `refund`, `purchase_guide`, `privacy`, `address`, `android_app_link`, `ios_app_link`, `facebook_link`, `twitter_link`, `instagram_link`, `copyright_text`, `created_at`, `updated_at`) VALUES
(1, '<p>If you&#39;re looking for an&nbsp;<strong>alternative to Google Docs</strong>&nbsp;real-time collaboration, but you also need HTML output, CKEditor 5 is a go! You can use it to comment on selected parts of the content, text, images, tables or suggest edits with its track changes feature.</p>\r\n\r\n<p>To&nbsp;<strong>collaborate with your colleagues</strong>&nbsp;or friends all you have to do is to share the link. Each time you load the page, a special document ID gets attached to the URL. Each document ID and its content stays active for an hour after the last user disconnects from it so you do not immediately lose your content. Also, there isn&#39;t a limit for the number of collaborators!</p>\r\n\r\n<p>Collaboration makes it easier to&nbsp;<strong>create your content quickly and efficiently</strong>. With CKEditor 5, where you write, comment, discuss and proofread the content are unified so you don&#39;t lose time switching between applications to edit and discuss. If some of your collaborators prefer Markdown, CKEditor 5 has you covered there too!</p>', '<p>Your Return and Refund Policy should include important details about when you accept returns, what the conditions of return are, and how you issue refunds.</p>\r\n\r\n<p>Remember that people are not inclined to read lengthy and boring legal documents online. However, it is vital to give all necessary information.</p>\r\n\r\n<p>It&#39;s a good idea to divide your Return and Refund Policy into smaller parts. This will make the document easier to read, help customers find what they need, and protect you legally.</p>\r\n\r\n<p>When considering what to put in your Return and Refund Policy, think about the fact that there are many advantages to ensuring it is customer-centric. Innovative businesses know that a customer-centric return program is an effective marketing tool.</p>\r\n\r\n<p>For instance,&nbsp;<a href=\"https://www.ups.com/assets/resources/media/en_GB/UPS_POTOS_EU_EN_linked.pdf\">as reported by the UPS</a>&nbsp;in 2017, 68% of online shoppers verify a website&#39;s exchange and return policy before they make a purchase. Many brands advertise that they offer &quot;free,&quot; &quot;easy,&quot; and &quot;no-hassle exchanges and returns to increase conversion rates.</p>\r\n\r\n<p>In other words, the evidence shows that businesses that have a Return and Refund Policy that benefits customers often have higher return purchase rates than those which do not.</p>\r\n\r\n<p>A return or exchange may actually cost a business on the first purchase. However, a better customer experience will lead to higher retention rates and long-term revenue growth.</p>\r\n\r\n<p>To ensure that happens, here&#39;s what you need to know about how to create your Return and Refund Policy.</p>\r\n', '<p>Your Return and Refund Policy should include important details about when you accept returns, what the conditions of return are, and how you issue refunds.</p>\r\n\r\n<p>Remember that people are not inclined to read lengthy and boring legal documents online. However, it is vital to give all necessary information.</p>\r\n\r\n<p>It&#39;s a good idea to divide your Return and Refund Policy into smaller parts. This will make the document easier to read, help customers find what they need, and protect you legally.</p>\r\n\r\n<p>When considering what to put in your Return and Refund Policy, think about the fact that there are many advantages to ensuring it is customer-centric. Innovative businesses know that a customer-centric return program is an effective marketing tool.</p>\r\n\r\n<p>For instance,&nbsp;<a href=\"https://www.ups.com/assets/resources/media/en_GB/UPS_POTOS_EU_EN_linked.pdf\">as reported by the UPS</a>&nbsp;in 2017, 68% of online shoppers verify a website&#39;s exchange and return policy before they make a purchase. Many brands advertise that they offer &quot;free,&quot; &quot;easy,&quot; and &quot;no-hassle exchanges and returns to increase conversion rates.</p>\r\n\r\n\r\n', '<p>You need to let your customers know ahead of time if there are any requirements they need to meet before you can process their returns.</p>\r\n\r\n<p>By way of example, if they must ensure that all products are returned unopened and in their original packaging, that&#39;s something you should state explicitly in your Return and Refund Policy.</p>\r\n\r\n<p>Other common conditions include things such as customers needing an:</p>\r\n\r\n<ul>\r\n	<li>Authorization number</li>\r\n	<li>Purchase receipt</li>\r\n</ul>\r\n\r\n<p>Whether it&#39;s these or other criteria, you should clearly state what they are. A system to handle returns, which has become common in recent years, is a&nbsp;<a href=\"https://www.termsfeed.com/blog/return-merchandise-authorization-rma/\">Return Merchandise Authorization</a>&nbsp;(RMA) system.</p>\r\n\r\n<p>This system allows you to ask your customers for information and images of the products they wish to return. Once you review the information and pictures, you can choose to either accept or deny the return. It also allows you to provide your customers with a shipping label once you&#39;ve made an authorization.</p>\r\n', '<p>40 Shahid Tajuddin Ahmed Sarani<br />\r\nTejgaon I/A, Dhaka-1208. Bangladesh</p>\r\n', 'https://play.google.com/store/games', 'https://www.apple.com/app-store/', 'http://www.facebook.com/', 'http://www.twitter.com/', 'http://www.instagram.com/', 'Copyright © 2023 Mutasim Naib. All right reserved', NULL, NULL);

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_05_30_074430_create_sessions_table', 1),
(7, '2023_05_30_075401_create_visitors_table', 2),
(8, '2023_05_31_072510_create_contacts_table', 3),
(9, '2023_06_01_054831_create_infos_table', 4),
(10, '2023_06_01_102933_create_categories_table', 5),
(11, '2023_06_01_103014_create_subcategories_table', 5);

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('CIYznIPhUXv6lUsTHbX9WqsvwANOYIpkuC9vXmoM', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiZHVQMDQ5ZW1Icmp6T1QxenRVUkt0TG9GZ2xZSTNmNUo5c0pNQ0lXYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly9sb2NhbGhvc3QvbHYtcmVhY3QvYmFjay9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJEtWVVNrR2UyandRR0FUMXhUT3cuUC5aRXV6SkZTQzg1TnhBV3R4SnpnOVpDLkVQRHBzMy9pIjt9', 1685441128),
('x7XgKvDLIRJrW1toeN3FZsAlKRpca4eeweDEhEJO', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQm11Ym5EVlRLazN3U28xZkYwVXducEgyVktDRVpkV1ZYcmJ2VmZxdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3QvbHYtcmVhY3QvYmFjayI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1685616945);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `sub_category_name` varchar(255) NOT NULL,
  `sub_category_image` varchar(255) DEFAULT NULL,
  `sub_category_stataus` text NOT NULL DEFAULT 'Active',
  `sub_category_delete` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `category_name`, `sub_category_name`, `sub_category_image`, `sub_category_stataus`, `sub_category_delete`, `created_at`, `updated_at`) VALUES
(1, 4, 'Fashion', 'Mens Top', NULL, 'Active', 0, NULL, NULL),
(2, 4, 'Fashion', 'Mens Bottom', NULL, 'Active', 0, NULL, NULL),
(3, 5, 'Electronics', 'Audio', NULL, 'Active', 0, NULL, NULL),
(4, 5, 'Electronics', 'Storage', NULL, 'Active', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Mutasim', 'super@gmail.com', NULL, '$2y$10$KVUSkGe2jwQGAT1xTOw.P.ZEuzJFSC85NxAWtxJzg9ZC.EPDps3/i', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-30 01:48:02', '2023-05-30 01:48:02');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `visitor_ip` varchar(255) NOT NULL,
  `visit_time` varchar(255) NOT NULL,
  `visit_date` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `visitor_ip`, `visit_time`, `visit_date`, `created_at`, `updated_at`) VALUES
(7, '::1', '2023-05-30', '04:09:30 pm', '2023-05-30 10:01:44', '2023-05-30 10:09:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`info_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `contact_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `info_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
