-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Сен 23 2023 г., 00:47
-- Версия сервера: 10.4.28-MariaDB
-- Версия PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `invoice`
--

-- --------------------------------------------------------

--
-- Структура таблицы `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `customers`
--

INSERT INTO `customers` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Prof. Dennis Bruen', '2023-09-21 13:48:47', '2023-09-21 13:48:47'),
(2, 'Prof. Lupe Rosenbaum V', '2023-09-21 13:48:47', '2023-09-21 13:48:47'),
(3, 'Prof. Forest Rodriguez IV', '2023-09-21 13:48:47', '2023-09-21 13:48:47'),
(4, 'Prof. Waylon Hackett DVM', '2023-09-21 13:48:47', '2023-09-21 13:48:47'),
(5, 'Dean Lesch', '2023-09-21 13:48:47', '2023-09-21 13:48:47'),
(6, 'Miss Antonia Krajcik DVM', '2023-09-21 13:48:47', '2023-09-21 13:48:47'),
(7, 'Uriel Schiller', '2023-09-21 13:48:47', '2023-09-21 13:48:47'),
(8, 'Monty Beahan', '2023-09-21 13:48:47', '2023-09-21 13:48:47'),
(9, 'Hillary Koss', '2023-09-21 13:48:47', '2023-09-21 13:48:47'),
(10, 'Addison Wuckert', '2023-09-21 13:48:47', '2023-09-21 13:48:47'),
(11, 'Miss Jody Rodriguez Sr.', '2023-09-21 13:48:47', '2023-09-21 13:48:47'),
(12, 'Delphia Bayer', '2023-09-21 13:48:47', '2023-09-21 13:48:47'),
(13, 'Hallie Wilkinson', '2023-09-21 13:48:47', '2023-09-21 13:48:47'),
(14, 'Viola Ondricka', '2023-09-21 13:48:47', '2023-09-21 13:48:47'),
(15, 'Clare Collier', '2023-09-21 13:48:47', '2023-09-21 13:48:47'),
(16, 'Prof. Toni Wyman', '2023-09-21 13:48:47', '2023-09-21 13:48:47'),
(17, 'Miller Rodriguez', '2023-09-21 13:48:47', '2023-09-21 13:48:47'),
(18, 'Cathy Goyette', '2023-09-21 13:48:47', '2023-09-21 13:48:47'),
(19, 'Celine Witting', '2023-09-21 13:48:47', '2023-09-21 13:48:47'),
(20, 'Odie Zemlak DVM', '2023-09-21 13:48:47', '2023-09-21 13:48:47');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
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
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_09_19_182901_create_customers_table', 2),
(6, '2023_09_19_182916_create_sessions_table', 2),
(7, '2023_09_19_184147_add_customer_id_to_users_table', 3),
(8, '2023_09_21_164734_create_sessions_table', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
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
-- Структура таблицы `sessions`
--

CREATE TABLE `sessions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `activated` varchar(255) DEFAULT NULL,
  `appointment` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sessions`
--

INSERT INTO `sessions` (`id`, `activated`, `appointment`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '2023-09-22', NULL, 1, '2023-09-21 15:00:43', '2023-09-21 15:00:43'),
(2, '2023-09-19', NULL, 1, '2023-09-21 15:00:43', '2023-09-21 15:00:43'),
(3, '2023-09-20', '2023-09-20', 1, '2023-09-21 15:00:43', '2023-09-21 15:00:43'),
(4, '2023-09-19', '2023-09-19', 1, '2023-09-21 15:00:43', '2023-09-21 15:00:43'),
(5, NULL, '2023-09-20', 2, '2023-09-21 15:01:37', '2023-09-21 15:01:37'),
(6, '2023-09-22', '2023-09-20', 2, '2023-09-21 15:01:38', '2023-09-21 15:01:38'),
(7, '2023-09-19', NULL, 2, '2023-09-21 15:01:38', '2023-09-21 15:01:38'),
(8, '2023-09-19', '2023-09-19', 2, '2023-09-21 15:01:38', '2023-09-21 15:01:38'),
(9, '2023-09-19', '2023-09-19', 2, '2023-09-21 15:01:38', '2023-09-21 15:01:38'),
(10, '2023-09-25', '2023-09-20', 6, '2023-09-21 16:37:47', '2023-09-21 16:37:47'),
(11, '2023-09-22', NULL, 6, '2023-09-21 16:37:47', '2023-09-21 16:37:47'),
(12, '2023-09-19', '2023-09-20', 6, '2023-09-21 16:37:47', '2023-09-21 16:37:47'),
(13, NULL, '2023-09-19', 6, '2023-09-21 16:37:47', '2023-09-21 16:37:47'),
(14, '2023-09-19', '2023-09-19', 6, '2023-09-21 16:37:47', '2023-09-21 16:37:47'),
(15, '2023-09-25', NULL, 4, '2023-09-22 11:06:34', '2023-09-22 11:06:34');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `customer_id`) VALUES
(1, 'Miss Tressa Keebler', 'ima.bogisich@example.org', '2023-09-21 13:54:55', '$2y$10$RPUgY4HXd0kL59TIjvnIUOTv98jVFkmp6k8rVaHLnyJEn/gyuf8FK', 'vdbVigKJ8T', '2023-09-21 13:54:56', '2023-09-21 13:54:56', 3),
(2, 'Raymundo Olson', 'rodriguez.polly@example.net', '2023-09-21 13:54:56', '$2y$10$GuKzCa/ewOdOH8j8QeuwnuAX3G3a8RlF9/dKVEu8P/6buPmdwk4zu', 'u7EXaRNfM5', '2023-09-21 13:54:56', '2023-09-21 13:54:56', 3),
(3, 'Kari Mueller', 'natalie08@example.org', '2023-09-21 13:54:56', '$2y$10$UkF/LR55mpbTczcNzE1W/.LiHmvX3oeH3jWbD3PgDx6e5XlEDvSwm', 'd356dVkho2', '2023-09-21 13:54:56', '2023-09-21 13:54:56', 3),
(4, 'Mikayla Medhurst', 'irutherford@example.net', '2023-09-21 13:54:56', '$2y$10$l9dhjBpJr5GyiPAPqv/.BOVjEop07vcz3IAfwWozNQ2KKVThRvjUS', 'hFNhUlTR67', '2023-09-21 13:54:56', '2023-09-21 13:54:56', 3),
(5, 'Cale Bauch', 'era05@example.org', '2023-09-21 13:54:56', '$2y$10$A0UB9.H9dOCE11zMPi4Y7.Qbvc5XkpJFuXBnY9cjnXm8kpy0UYHbK', 'wZzXy0sVR6', '2023-09-21 13:54:56', '2023-09-21 13:54:56', 3),
(6, 'Mr. Pierce Renner V', 'achamplin@example.com', '2023-09-21 13:55:22', '$2y$10$.ix7.3nzPDTolj.ietBHOu7fy4btt.A2m6Ej7F.YRqqlYsGaCgfli', 'cGT5OxQR6q', '2023-09-21 13:55:23', '2023-09-21 13:55:23', 1),
(7, 'Heloise Grady', 'xstokes@example.org', '2023-09-21 13:55:22', '$2y$10$bpxnp23i0AnpDQVHFc4NM.eHsg9M.Swx8xpSiY0ZluS/Z/yO6HdBq', 'mdcdNvQgqj', '2023-09-21 13:55:23', '2023-09-21 13:55:23', 1),
(8, 'Lisa Breitenberg', 'purdy.noah@example.org', '2023-09-21 13:55:22', '$2y$10$BFJu8o.Z/wx1aMpv65FAf.reD6GbsqOlNSekQC1DPjnBU4Ejs4iOW', 'P88ZqmqNDW', '2023-09-21 13:55:23', '2023-09-21 13:55:23', 1),
(9, 'Quincy Volkman', 'dwight.abernathy@example.com', '2023-09-21 13:55:22', '$2y$10$SngAPbokyd4If.Ax7KAOfufFNK9PQzLe3./RJMxuSBfzIC907HQlO', 'XPhTJ3qduU', '2023-09-21 13:55:23', '2023-09-21 13:55:23', 1),
(10, 'Prof. Geoffrey Hilpert', 'qfahey@example.com', '2023-09-21 13:55:23', '$2y$10$zDw1N3sk.XSRk2/0ftrXfeuGCb9cTBxAhVJvqxa0obocc0f.2VPfu', 'BwOQIKswMS', '2023-09-21 13:55:23', '2023-09-21 13:55:23', 1),
(11, 'Mrs. Glenna Reinger', 'ecasper@example.net', '2023-09-21 13:55:29', '$2y$10$mkJK9tmHH4iv0MfCNzG7hO0h00kZOZYVPURohJyBXZaVPer2HBdT6', 'UcRP5qvzoT', '2023-09-21 13:55:30', '2023-09-21 13:55:30', 2),
(12, 'Isobel Bins', 'sadie40@example.net', '2023-09-21 13:55:30', '$2y$10$HSA3/b3V1fR5k7H/FgbX8eQPfZH2pUIs44lQzYSXD6JBQo5FVrCuu', 'khP4yO9ZPL', '2023-09-21 13:55:30', '2023-09-21 13:55:30', 2),
(13, 'Dr. Keyshawn Bartell', 'cronin.dimitri@example.net', '2023-09-21 13:55:30', '$2y$10$PCq1vEnaM3Hh37rSSnzUge.nnP.e21NgAzN6xYG5veZo089ggeQaS', 'oeQCzRRilO', '2023-09-21 13:55:30', '2023-09-21 13:55:30', 2),
(14, 'Emanuel Hartmann', 'quinn22@example.com', '2023-09-21 13:55:30', '$2y$10$gYPuR2sody6B80tJ1gIC..eno48xCp8ahcAhdjXFrDqvPvrq.XtCa', 'Z2uOTf667z', '2023-09-21 13:55:30', '2023-09-21 13:55:30', 2),
(15, 'Prof. Demarcus Mills PhD', 'mohr.anissa@example.net', '2023-09-21 13:55:30', '$2y$10$9L7VWUmhPxELa.BqwLbCX.ZknkGU5Tca3V0N2FkJ2RAw6/56TfQia', 'oLM0uCcKZ8', '2023-09-21 13:55:30', '2023-09-21 13:55:30', 2),
(16, 'Marques Koch', 'cormier.laila@example.net', '2023-09-21 13:55:37', '$2y$10$ksrmA2dANM.HmCzv.EhW4O4Bg1A4rCPvY90BhhkVKH7lgTU5NsnBO', 'i6GgQqGQQe', '2023-09-21 13:55:38', '2023-09-21 13:55:38', 4),
(17, 'Annetta Schuppe', 'etha.walker@example.com', '2023-09-21 13:55:37', '$2y$10$txczMRz0xmxEM5vCbmGS3Oqlnf3.2gY4M7Wm.VXirZwY5UnFsOEhu', 'pxdQHq0b9z', '2023-09-21 13:55:38', '2023-09-21 13:55:38', 4),
(18, 'Lysanne Daniel', 'auer.jake@example.org', '2023-09-21 13:55:37', '$2y$10$.sgv92dt6vDHC7mSkfL/9O3oN/5h2cFLf1hy/yM7zo1TsgdrBFKpK', 'OaqhQsJBAW', '2023-09-21 13:55:38', '2023-09-21 13:55:38', 4),
(19, 'Prof. Sherman Cartwright', 'myrtle.rowe@example.org', '2023-09-21 13:55:37', '$2y$10$/D9PXfL.Xx5heURXT4kCnei/Basjw/MJAEagvZb7O7fex9RkmZfD2', 'u02ZlVZQCR', '2023-09-21 13:55:38', '2023-09-21 13:55:38', 4),
(20, 'Cornelius Jerde', 'bashirian.dell@example.org', '2023-09-21 13:55:37', '$2y$10$8AJFCbFB3qVrzc7CVnmFCuE8jlUurHfdn/aiwSAq733JjoiaDGGh.', 'Ov2auCRZs2', '2023-09-21 13:55:38', '2023-09-21 13:55:38', 4);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_foreign` (`user_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_customer_id_foreign` (`customer_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `sessions`
--
ALTER TABLE `sessions`
  ADD CONSTRAINT `sessions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
