-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 06 2020 г., 19:53
-- Версия сервера: 5.6.38
-- Версия PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `inxy-tz`
--

-- --------------------------------------------------------

--
-- Структура таблицы `INXY___failed_jobs`
--

CREATE TABLE `INXY___failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `INXY___migrations`
--

CREATE TABLE `INXY___migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `INXY___migrations`
--

INSERT INTO `INXY___migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_09_03_171716_create_sources_table', 1),
(5, '2020_09_03_171858_create_servers_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `INXY___password_resets`
--

CREATE TABLE `INXY___password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `INXY___servers`
--

CREATE TABLE `INXY___servers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `cpu` varchar(255) DEFAULT NULL,
  `drive` varchar(255) DEFAULT NULL,
  `price` double(8,2) UNSIGNED DEFAULT NULL,
  `source_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `INXY___servers`
--

INSERT INTO `INXY___servers` (`id`, `provider`, `brand`, `location`, `cpu`, `drive`, `price`, `source_id`, `created_at`, `updated_at`) VALUES
(2481, 'SERVER4YOU', 'AMD', 'USA, St. Louis', 'AMD Opteron', '2x2TB SATA', 26.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2482, 'SERVER4YOU', 'AMD', 'France, Strasbourg', 'AMD Opteron', '2x2TB SATA', 26.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2483, 'SERVER4YOU', 'AMD', 'USA, St. Louis', 'AMD Opteron', '2x2TB SATA', 32.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2484, 'SERVER4YOU', 'AMD', 'France, Strasbourg', 'AMD Opteron', '2x2TB SATA', 32.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2485, 'SERVER4YOU', 'AMD', 'USA, St. Louis', 'AMD Opteron', '2x250GB SSD', 34.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2486, 'SERVER4YOU', 'AMD', 'France, Strasbourg', 'AMD Opteron', '2x250GB SSD', 34.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2487, 'SERVER4YOU', 'i5-4590', 'USA, St. Louis', 'i5-4590', '2x3TB SATA', 41.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2488, 'SERVER4YOU', 'i5-4590', 'France, Strasbourg', 'i5-4590', '2x3TB SATA', 41.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2489, 'SERVER4YOU', 'AMD', 'USA, St. Louis', 'AMD Opteron', '2x500GB SSD', 41.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2490, 'SERVER4YOU', 'AMD', 'France, Strasbourg', 'AMD Opteron', '2x500GB SSD', 41.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2491, 'LEASEWEB', 'HP', 'The Netherlands, Amsterdam', 'E3-1230', '2x2TB SATA', 43.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2492, 'SERVER4YOU', 'i5-4590', 'USA, St. Louis', 'i5-4590', '2x500GB SSD', 46.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2493, 'SERVER4YOU', 'i5-4590', 'France, Strasbourg', 'i5-4590', '2x500GB SSD', 46.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2494, 'LEASEWEB', 'DELL', 'Singapore, Singapore', 'E3-1220', '2x1TB SATA', 51.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2495, 'LEASEWEB', 'HP', 'The Netherlands, Amsterdam', 'E3-1240', '2x1TB SATA', 54.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2496, 'LEASEWEB', 'HP', 'UK, London', 'E3-1230', '2x2TB SATA', 57.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2497, 'LEASEWEB', 'HP', 'UK, London', 'E3-1270', '2x1TB SATA', 59.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2498, 'INXY', 'Dell', 'The Netherlands, Amsterdam', 'Quad Core X3220', '2x300GB SAS', 60.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2499, 'INXY', 'Dell', 'USA, Dallas', 'Quad Core X3220', '2x300GB SAS', 60.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2500, 'LEASEWEB', 'HP', 'Singapore, Singapore', 'Pentium G850', '4x1TB SATA', 62.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2501, 'SERVER4YOU', 'i7-6700', 'USA, St. Louis', 'i7-6700', '2x2TB SATA', 63.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2502, 'SERVER4YOU', 'i7-6700', 'France, Strasbourg', 'i7-6700', '2x2TB SATA', 63.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2503, 'LEASEWEB', 'HP', 'USA, Miami', 'E3-1230', '1x1TB SATA', 64.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2504, 'LEASEWEB', 'HP', 'Singapore, Singapore', 'Pentium G850', '4x1TB SATA', 64.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2505, 'LEASEWEB', 'Supermicro', 'USA, Dallas', 'E3-1230v2', '1x1TB SATA', 66.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2506, 'LEASEWEB', 'Supermicro', 'USA, Los Angeles', 'E3-1230v2', '1x1TB SATA', 66.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2507, 'LEASEWEB', 'Supermicro', 'USA, Washington D.C.', 'E3-1230v2', '1x1TB SATA', 66.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2508, 'WEBZILLA', 'Dell', 'USA, Dallas–Fort Worth, TX', 'E3-1231v3', '2x2TB SATA', 67.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2509, 'SERVER4YOU', 'i7-6700', 'USA, St. Louis', 'i7-6700', '2x2TB SATA', 68.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2510, 'SERVER4YOU', 'i7-6700', 'France, Strasbourg', 'i7-6700', '2x2TB SATA', 68.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2511, 'VELIA', 'Intel', 'USA, Los Angeles', 'E3-1230', '2x1TB SATA', 69.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2512, 'VELIA', 'Intel', 'USA, Miami', 'E3-1230 v3', '2x1TB SATA', 69.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2513, 'VELIA', 'Intel', 'France, Strasbourg', 'E3-1230 v5', '2x500GB SSD', 69.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2514, 'VELIA', 'Intel', 'France, Strasbourg', 'E3-1230 v6', '2x1TB SATA', 69.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2515, 'INXY', 'Dell', 'The Netherlands, Amsterdam', '1xE3-1230v2', '2x300GB SAS', 70.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2516, 'LEASEWEB', 'DELL', 'Singapore, Singapore', 'E3-1270v2', '2x1TB SATA', 71.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2517, 'LEASEWEB', 'DELL', 'Singapore, Singapore', 'E3-1220', '2x1TB SATA', 71.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2518, 'WEBZILLA', 'Dell', 'USA, Dallas–Fort Worth, TX', 'E3-1231v3', '2x2TB SATA', 75.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2519, 'VELIA', 'Intel', 'France, Strasbourg', 'E3-1280 v6', '2x1TB SATA', 79.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2520, 'INXY', 'Dell', 'The Netherlands, Amsterdam', 'Quad Core X3220', '2x300GB SAS', 80.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2521, 'INXY', 'Dell', 'USA, Dallas', 'Quad Core X3220', '2x300GB SAS', 80.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2522, 'SERVER4YOU', 'i7-6700', 'USA, St. Louis', 'i7-6700', '2x4TB SATA', 80.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2523, 'SERVER4YOU', 'i7-6700', 'France, Strasbourg', 'i7-6700', '2x4TB SATA', 80.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2524, 'SERVER4YOU', 'i7-6700', 'USA, St. Louis', 'i7-6700', '2x500GB SSD', 80.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2525, 'SERVER4YOU', 'i7-6700', 'France, Strasbourg', 'i7-6700', '2x500GB SSD', 80.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2526, 'LEASEWEB', 'HP', 'UK, London', 'E3-1270v5', '2x2TB SATA', 84.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2527, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', 'E3-1231v3', '2x2TB SATA', 88.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2528, 'VELIA', 'Intel', 'USA, St. Louis', 'E3-1280 v6', '2x1TB SATA', 89.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2529, 'WEBZILLA', 'Dell', 'USA, Dallas–Fort Worth, TX', 'E3-1231v3', '2x2TB SATA', 89.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2530, 'SERVERS.COM', 'Dell', 'USA, Dallas–Fort Worth, TX', 'E3-1231v3', '2x2TB SATA', 89.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2531, 'INXY', 'Dell', 'The Netherlands, Amsterdam', '1xE3-1230v2', '2x300GB SAS', 90.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2532, 'LEASEWEB', 'DELL', 'UK, London', 'E-2274G', '2x4TB SATA', 92.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2533, 'LEASEWEB', 'DELL', 'Germany, Frankfurt', '2xE5-2640V2', '8x1TB SATA', 92.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2534, 'VELIA', 'Intel', 'USA, Miami', 'E3-1230 v3', '2x1TB SATA', 93.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2535, 'VELIA', 'Intel', 'France, Strasbourg', 'E3-1230 v5', '2x500GB SSD', 93.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2536, 'VELIA', 'Intel', 'France, Strasbourg', 'E3-1230 v6', '2x1TB SATA', 93.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2537, 'LEASEWEB', 'HP', 'Germany, Frankfurt', 'E3-1270v5', '2x2TB SATA', 94.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2538, 'WEBZILLA', 'Dell', 'USA, Dallas–Fort Worth, TX', 'E3-1231v3', '2x2TB SATA', 97.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2539, 'SERVERS.COM', 'Dell', 'USA, Dallas–Fort Worth, TX', 'E3-1231v3 ', '2x2TB SATA', 97.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2540, 'SERVERS.COM', 'Dell', 'USA, Washington DC Metropolitan Area, VA', 'E3-1231v3', '2x1TB SATA', 97.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2541, 'SERVERS.COM', 'Dell', 'USA, Washington DC Metropolitan Area, VA', 'E3-1231v3', '2x2TB SATA', 97.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2542, 'SERVERLOFT', 'HPE', 'USA, St. Louis', 'E5-2620v3', '2x2TB SATA', 99.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2543, 'SERVERLOFT', 'HPE', 'France, Strasbourg', 'E5-2620v3', '2x2TB SATA', 99.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2544, 'INXY', 'Supermicro', 'The Netherlands, Amsterdam', 'E3-1230V5', '2x240GB SSD', 100.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2545, 'LEASEWEB', 'HP', 'Australia, Sydney', 'E3-1270v5', '2x2TB SATA', 102.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2546, 'VELIA', 'Intel', 'France, Strasbourg', 'E3-1280 v6', '2x1TB SATA', 103.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2547, 'LEASEWEB', 'HP', 'Germany, Frankfurt', '2xE5-2420', '4x2TB SATA', 106.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2548, 'LEASEWEB', 'Dell', 'Germany, Frankfurt', 'E-2174G', '2x2TB SATA', 106.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2549, 'LEASEWEB', 'DELL', 'Singapore, Singapore', 'E3-1270v6', '2x1TB SATA', 107.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2550, 'SERVERS.COM', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', 'E3-1231v3', '2x2TB SATA', 108.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2551, 'SERVERS.COM', 'Dell', 'Luxembourg, Roost', 'E3-1231v3', '2x2TB SATA', 108.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2552, 'SERVERLOFT', 'HPE', 'USA, St. Louis', 'E5-2620v4', '2x2TB SATA', 109.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2553, 'SERVERLOFT', 'HPE', 'USA, St. Louis', 'E5-2620v3', '2x256GB SSD', 109.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2554, 'SERVERLOFT', 'HPE', 'USA, St. Louis', 'E5-2620v3', '2x2TB SATA', 109.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2555, 'SERVERLOFT', 'HPE', 'France, Strasbourg', 'E5-2620v4', '2x2TB SATA', 109.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2556, 'SERVERLOFT', 'HPE', 'France, Strasbourg', 'E5-2620v3', '2x256GB SSD', 109.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2557, 'SERVERLOFT', 'HPE', 'France, Strasbourg', 'E5-2620v3', '2x2TB SATA', 109.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2558, 'INXY', 'Supermicro', 'The Netherlands, Amsterdam', 'E3-1230V5', '2x240GB SSD', 110.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2559, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', 'E3-1231v3', '2x2TB SATA', 110.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2560, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', 'E3-1231v3', '2x2TB SATA', 110.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2561, 'LEASEWEB', 'Dell', 'Germany, Frankfurt', 'E-2274G', '2x4TB SATA', 110.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2562, 'LEASEWEB', 'HP', 'USA, Los Angeles', 'E3-1270v5', '1x1TB SATA', 116.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2563, 'LEASEWEB', 'HP', 'USA, Chicago', 'E3-1270v5', '2x1TB SATA', 118.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2564, 'SERVERLOFT', 'HPE', 'USA, St. Louis', 'E5-2620v4', '2x256GB SSD', 119.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2565, 'VELIA', 'Intel', 'USA, St. Louis', 'E-2146G', '2x1TB SATA', 119.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2566, 'VELIA', 'Intel', 'USA, St. Louis', 'E5-2640 v4', '2x1TB SATA', 119.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2567, 'VELIA', 'Intel', 'Germany, Frankfurt', 'E-2146G', '2x1TB SATA', 119.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2568, 'VELIA', 'Intel', 'France, Strasbourg', '2xE5-2670', '2x1TB SATA', 119.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2569, 'VELIA', 'Intel', 'France, Strasbourg', 'E-2146G', '2x1TB SATA', 119.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2570, 'SERVERLOFT', 'HPE', 'France, Strasbourg', 'E5-2620v4', '2x256GB SSD', 119.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2571, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', 'E3-1231v3', '2x120GB SSD', 120.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2572, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', 'E3-1231v3', '2x120GB SSD', 120.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2573, 'LEASEWEB', 'HP', 'The Netherlands, Amsterdam', 'E5-1620v3', '2x480GB SSD', 120.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2574, 'LEASEWEB', 'HP', 'Germany, Frankfurt', '2xE5-2650', '4x1TB SATA', 120.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2575, 'MAXIHOST', 'Supermicro', 'USA, Chicago', 'E3-1240v6', '500GB SSD', 123.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2576, 'MAXIHOST', 'Supermicro', 'USA, Miami', 'E3-1240v6', '500GB SSD', 123.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2577, 'INXY', 'Dell', 'The Netherlands, Amsterdam', '1xE3-1230v2', '2x300GB SAS', 125.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2578, 'INXY', 'Dell', 'USA, Dallas', '1xE3-1270', '2x300GB SAS', 125.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2579, 'SERVERS.COM', 'Dell', 'USA, San Jose, CA', 'E-2174G', '1x1TB SATA', 127.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2580, 'LEASEWEB', 'DELL', 'USA, Miami', 'E3-1270v6', '1x1TB SATA', 127.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2581, 'VELIA', 'Intel', 'Germany, Frankfurt', 'E5-2630 v4', '2x4TB SATA', 129.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2582, 'SERVERS.COM', 'Dell', 'USA, Washington DC Metropolitan Area, VA', 'E3-1270v2', '1x480GB SSD', 129.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2583, 'INXY', 'Supermicro', 'USA, Ashburn', 'E3-1230V5', '2x240GB SSD', 130.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2584, 'INXY', 'Dell', 'The Netherlands, Amsterdam', '1xE3-1230v3', '2x300GB SAS', 130.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2585, 'ADVANCED HOSTERS', 'SC813MTQ-350C', 'USA, Ashburn', 'E3-1230V5', '2x240GB SSD', 130.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2586, 'ADVANCED HOSTERS', 'SC813MTQ-350C', 'USA, Ashburn', 'E3-1230V5', '2x240GB SSD', 130.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2587, 'LEASEWEB', 'HP', 'USA, San Francisco', 'E5-1620v4', '1x1TB SATA', 130.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2588, 'LEASEWEB', 'HP', 'USA, Dallas', 'E3-1270v5', '2x1TB SATA', 131.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2589, 'SERVERS.COM', 'Dell', 'Luxembourg, Roost', 'E3-1231v3', '2x2TB SATA', 136.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2590, 'VELIA', 'Intel', 'France, Strasbourg', '2xE5-2695 v2', '2x1TB SATA', 139.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2591, 'LEASEWEB', 'DELL', 'UK, London', 'E-2286G', '2x480GB SSD', 140.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2592, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', 'E3-1231v3', '2x120GB SSD', 142.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2593, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', 'E3-1231v3', '2x120GB SSD', 142.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2594, 'LEASEWEB', 'HP', 'Germany, Frankfurt', '2xE5620', '8x2TB SATA', 142.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2595, 'VELIA', 'Intel', 'France, Strasbourg', '2xE5-2670', '2x1TB SATA', 143.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2596, 'VELIA', 'Intel', 'France, Strasbourg', 'E-2146G', '2x1TB SATA', 143.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2597, 'VELIA', 'Intel', 'Germany, Frankfurt', 'E-2146G', '2x1TB SATA', 143.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2598, 'LEASEWEB', 'DELL', 'The Netherlands, Amsterdam', 'E-2286G', '2x480GB SSD', 143.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2599, 'LEASEWEB', 'DELL', 'Germany, Frankfurt', 'E-2286G', '2x480GB SSD', 143.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2600, 'SERVERS.COM', 'Dell', 'Russia, Moscow', 'E3-1231v3', '2x2TB SATA', 147.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2601, 'SERVERS.COM', 'Dell', 'Russia, Moscow', 'E3-1230v5', '2x2TB SATA', 147.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2602, 'MAXIHOST', 'Supermicro', 'USA, Chicago', 'E3-1240v6', '2x500GB SSD', 147.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2603, 'MAXIHOST', 'Supermicro', 'USA, Los Angeles', 'E3-1240v6', '2x500GB SSD', 147.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2604, 'MAXIHOST', 'Supermicro', 'USA, Miami', 'E3-1240v6', '2x500GB SSD', 147.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2605, 'SERVERS.COM', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', 'E-2174G', '2x1TB SATA', 148.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2606, 'LEASEWEB', 'DELL', 'Germany, Frankfurt', '2xE5-2630v3', '4x2TB SATA', 148.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2607, 'SERVERLOFT', 'HPE', 'USA, St. Louis', 'E5-2620v3', '2x4TB SATA', 149.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2608, 'SERVERLOFT', 'HPE', 'France, Strasbourg', 'E5-2620v3', '2x4TB SATA', 149.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2609, 'INXY', 'Dell', 'The Netherlands, Amsterdam', '1xE3-1230v2', '2x300GB SAS', 150.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2610, 'INXY', 'Dell', 'USA, Dallas', '1xE3-1270', '2x300GB SAS', 150.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2611, 'INXY', 'Dell', 'The Netherlands, Amsterdam', '1xE3-1230v3', '2x300GB SAS', 150.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2612, 'ADVANCED HOSTERS', 'Supermicro', 'USA, Ashburn', 'E3-1270V5', '2x240GB SSD', 150.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2613, 'ADVANCED HOSTERS', 'Supermicro', 'USA, Ashburn', 'E3-1270V5', '2x240GB SSD', 150.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2614, 'LEASEWEB', 'HP', 'China, Hong Kong', '7301', '2x2TB SATA', 150.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2615, 'SERVERS.COM', 'Dell', 'Singapore, Singapore', 'E3-1231v3', '2x2TB SATA', 153.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2616, 'VELIA', 'Intel', 'Germany, Frankfurt', 'E5-2630 v4', '2x4TB SATA', 153.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2617, 'INXY', 'Supermicro', 'USA, Ashburn', 'E3-1230V5', '2x240GB SSD', 155.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2618, 'ADVANCED HOSTERS', 'SC813MTQ-350C', 'USA, Ashburn', 'E3-1230V5', '2x240GB SSD', 155.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2619, 'ADVANCED HOSTERS', 'SC813MTQ-350C', 'USA, Ashburn', 'E3-1230V5', '2x240GB SSD', 155.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2620, 'MAXIHOST', 'Supermicro', 'USA, Chicago', 'E3-1240v6', '500GB SSD', 155.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2621, 'MAXIHOST', 'Supermicro', 'USA, Miami', 'E3-1240v6', '500GB SSD', 155.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2622, 'SERVERLOFT', 'HPE', 'USA, St. Louis', 'E5-2620v4', '2x4TB SATA', 159.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2623, 'SERVERLOFT', 'HPE', 'USA, St. Louis', 'E5-2620v3', '2x512GB SSD', 159.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2624, 'SERVERLOFT', 'HPE', 'France, Strasbourg', 'E5-2620v4', '2x4TB SATA', 159.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2625, 'SERVERLOFT', 'HPE', 'France, Strasbourg', 'E5-2620v3', '2x512GB SSD', 159.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2626, 'VELIA', 'Intel', 'France, Strasbourg', '2xE5-2695 v2', '2x1TB SATA', 163.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2627, 'LEASEWEB', 'DELL', 'Singapore, Singapore', 'E-2186G', '2x480 GB SSD', 164.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2628, 'LEASEWEB', 'DELL', 'China, Hong Kong', 'E-2186G', '2x480GB SSD', 164.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2629, 'LEASEWEB', 'HP', 'Germany, Frankfurt', '7301', '2x480GB SSD', 165.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2630, 'LEASEWEB', 'HUAWEI', 'Germany, Frankfurt', '2xE5-2650v4', '2x1TB SATA', 165.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2631, 'SERVERLOFT', 'HPE', 'USA, St. Louis', 'E5-2620v4', '2x512GB SSD', 169.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2632, 'SERVERLOFT', 'HPE', 'France, Strasbourg', 'E5-2620v4', '2x512GB SSD', 169.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2633, 'ADVANCED HOSTERS', 'Supermicro', 'USA, Ashburn', 'E3-1270V5', '2x240GB SSD', 170.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2634, 'ADVANCED HOSTERS', 'Supermicro', 'USA, Ashburn', 'E3-1270V5', '2x240GB SSD', 170.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2635, 'LEASEWEB', 'HP', 'Singapore, Singapore', '7301', '2x480 GB SSD', 171.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2636, 'MAXIHOST', 'Supermicro', 'USA, Chicago', 'E-2176G', '2x1TB SSD', 173.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2637, 'MAXIHOST', 'Supermicro', 'USA, Los Angeles', 'E-2176G', '2x1TB SSD', 173.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2638, 'MAXIHOST', 'Supermicro', 'USA, Miami', 'E-2176G', '2x1TB SSD', 173.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2639, 'WEBZILLA', 'Dell', 'USA, Dallas–Fort Worth, TX', 'E3-1231v3', '2x480GB SSD', 175.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2640, 'WEBZILLA', 'Dell', 'USA, Dallas–Fort Worth, TX', 'E3-1231v3', '2x480GB SSD', 175.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2641, 'LEASEWEB', 'HP', 'The Netherlands, Amsterdam', 'E5-1650v3', '4x960GB SSD', 175.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2642, 'LEASEWEB', 'HUAWEI', 'The Netherlands, Amsterdam', '2xE5-2620v4', '4x2TB SATA', 175.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2643, 'SERVERS.COM', 'Dell', 'Russia, Moscow', 'E3-1230v6', '2x2TB SATA', 177.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2644, 'MAXIHOST', 'Supermicro', 'USA, Chicago', 'E3-1240v6', '2x500GB SSD', 179.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2645, 'MAXIHOST', 'Supermicro', 'USA, Los Angeles', 'E3-1240v6', '2x500GB SSD', 179.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2646, 'MAXIHOST', 'Supermicro', 'USA, Miami', 'E3-1240v6', '2x500GB SSD', 179.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2647, 'LEASEWEB', 'DELL', 'Germany, Frankfurt', '2xSilver 4114', '2x1TB SATA', 182.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2648, 'LEASEWEB', 'DELL', 'Singapore, Singapore', 'E-2186G', '2x480 GB SSD', 185.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2649, 'MAXIHOST', 'Supermicro', 'USA, Chicago', 'E3-1240v6', '500GB SSD', 187.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2650, 'MAXIHOST', 'Supermicro', 'USA, Miami', 'E3-1240v6', '500GB SSD', 187.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2651, 'SERVERS.COM', 'Dell', 'USA, San Jose, CA', 'E-2174G', '1x480GB SSD', 187.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2652, 'WEBZILLA', 'Dell', 'USA, Dallas–Fort Worth, TX', 'E3-1231v3', '2x480GB SSD', 197.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2653, 'SERVERS.COM', 'Dell', 'USA, Dallas–Fort Worth, TX', 'E3-1231v3 ', '2x480GB SSD', 197.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2654, 'SERVERS.COM', 'Dell', 'Russia, Moscow', 'E3-1231v3', '2x240GB SSD', 198.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2655, 'LEASEWEB', 'HUAWEI', 'Germany, Frankfurt', '2xE5-2620v4', '4x2TB SATA', 198.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2656, 'SERVERLOFT', 'HPE', 'USA, St. Louis', '2xE5-2420', '2x2TB SATA', 199.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2657, 'SERVERLOFT', 'HPE', 'France, Strasbourg', '2xE5-2420', '2x2TB SATA', 199.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2658, 'INXY', 'Dell', 'USA, Dallas', '2xE5620', '2x300GB SAS', 200.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2659, 'LEASEWEB', 'DELL', 'UK, London', '2xE5-2630v4', '2x1TB SATA', 200.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2660, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', 'E3-1231v3', '2x480GB SSD', 202.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2661, 'MAXIHOST', 'Supermicro', 'USA, Chicago', 'E-2176G', '2x1TB SSD', 205.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2662, 'MAXIHOST', 'Supermicro', 'USA, Los Angeles', 'E-2176G', '2x1TB SSD', 205.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2663, 'MAXIHOST', 'Supermicro', 'USA, Miami', 'E-2176G', '2x1TB SSD', 205.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2664, 'LEASEWEB', 'DELL', 'Singapore, Singapore', '2xE5-2620v4', '4x2TB SATA', 206.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2665, 'MAXIHOST', 'Supermicro', 'Brazil, Sao Paulo', 'E3-1240v6', '500GB SSD', 207.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2666, 'INXY', 'Dell', 'The Netherlands, Amsterdam', '2xE5-2430', '2x480 SSD', 210.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2667, 'MAXIHOST', 'Supermicro', 'USA, Chicago', 'E3-1240v6', '2x500GB SSD', 211.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2668, 'MAXIHOST', 'Supermicro', 'USA, Los Angeles', 'E3-1240v6', '2x500GB SSD', 211.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2669, 'MAXIHOST', 'Supermicro', 'USA, Miami', 'E3-1240v6', '2x500GB SSD', 211.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2670, 'LEASEWEB', 'DELL', 'UK, London', '2xSilver 4114', '4x2TB SATA', 212.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2671, 'ADVANCED HOSTERS', 'Supermicro', 'The Netherlands, Amsterdam', 'W-2123', '2x240GB SSD', 213.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2672, 'ADVANCED HOSTERS', 'Supermicro', 'The Netherlands, Amsterdam', 'W-2123', '2x2TB SATA', 213.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2673, 'SERVERS.COM', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', 'E3-1231v3', '2x480GB SSD', 219.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2674, 'LEASEWEB', 'HP', 'Singapore, Singapore', '7301', '2x480 GB SSD', 220.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2675, 'LEASEWEB', 'DELL', 'Germany, Frankfurt', '2xE5-2630v4', '1x480GB SSD', 220.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2676, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', 'E3-1231v3', '2x480GB SSD', 224.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2677, 'INXY', 'Dell', 'USA, Dallas', '2xE5620', '2x300GB SAS', 225.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2678, 'ADVANCED HOSTERS', 'Supermicro', 'The Netherlands, Amsterdam', 'W-2123', '2x480GB SSD', 227.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2679, 'LEASEWEB', 'DELL', 'Singapore, Singapore', '2xE5-2640V2', '2x480 GB SSD', 228.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2680, 'VELIA', 'Intel', 'China, Hong Kong', 'E3-1230 v5', '2x4TB SATA', 229.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2681, 'INXY', 'Dell', 'The Netherlands, Amsterdam', '2xE5-2430', '2x480 SSD', 230.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2682, 'ADVANCED HOSTERS', '6018R-TD8', 'USA, Ashburn', '2xE5-2620V3', '4x4TB SATA + 1x960GB SSD ', 235.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2683, 'MAXIHOST', 'Supermicro', 'USA, Chicago', 'E-2176G', '2x1TB SSD', 237.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2684, 'MAXIHOST', 'Supermicro', 'USA, Los Angeles', 'E-2176G', '2x1TB SSD', 237.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2685, 'MAXIHOST', 'Supermicro', 'USA, Miami', 'E-2176G', '2x1TB SSD', 237.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2686, 'ADVANCED HOSTERS', 'Supermicro', 'USA, Ashburn', 'W-2123', '2x2TB SATA', 239.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2687, 'ADVANCED HOSTERS', 'Supermicro', 'USA, Ashburn', 'W-2123', '2x240GB SSD', 239.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2688, 'SERVERS.COM', 'Dell', 'Russia, Moscow', 'E3-1231v3', '2x480GB SSD', 240.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2689, 'LEASEWEB', 'Supermicro', 'USA, Dallas', 'E5-1650V4', '2x480GB SSD', 243.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2690, 'INXY', 'Dell', 'The Netherlands, Amsterdam', '2xE5620', '4x300GB SAS', 245.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2691, 'ADVANCED HOSTERS', 'Supermicro', 'The Netherlands, Amsterdam', 'W-2123', '2x2TB SATA', 248.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2692, 'ADVANCED HOSTERS', 'Supermicro', 'The Netherlands, Amsterdam', 'W-2123', '2x240GB SSD', 248.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2693, 'SERVERLOFT', 'HPE', 'USA, St. Louis', '2xE5-2620v3', '2x2TB SATA', 249.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2694, 'VELIA', 'Intel', 'Germany, Frankfurt', 'E3-1230', '8x4TB SATA', 249.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2695, 'SERVERLOFT', 'HPE', 'France, Strasbourg', '2xE5-2620v3', '2x2TB SATA', 249.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2696, 'ADVANCED HOSTERS', 'Supermicro', 'USA, Ashburn', 'W-2123', '2x480GB SSD', 251.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2697, 'LEASEWEB', 'HP', 'The Netherlands, Amsterdam', '2xE5-2630v4', '2x480GB SSD', 252.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2698, 'LEASEWEB', 'HUAWEI', 'Australia, Sydney', '2xE5-2620v4', '8x2TB SATA', 252.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2699, 'WEBZILLA', 'Dell', 'USA, Dallas–Fort Worth, TX', '2xE5-2620v4', '2x2TB SATA', 257.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2700, 'SERVERLOFT', 'HPE', 'USA, St. Louis', '2xE5-2620v3', '2x256GB SSD', 259.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2701, 'VELIA', 'Intel', 'Germany, Frankfurt', '2xSilver 4114', '2x1TB SATA', 259.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2702, 'SERVERLOFT', 'HPE', 'France, Strasbourg', '2xE5-2620v3', '2x256GB SSD', 259.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2703, 'ADVANCED HOSTERS', '6018R-TD8', 'USA, Ashburn', '2xE5-2620V3', '4x4TB SATA  + 1x960GB SSD ', 260.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2704, 'LEASEWEB', 'DELL', 'Germany, Frankfurt', '2xGold 5118', '2x1TB SATA', 260.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2705, 'ADVANCED HOSTERS', 'Supermicro', 'The Netherlands, Amsterdam', 'W-2123', '2x480GB SSD', 262.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2706, 'MAXIHOST', 'Supermicro', 'Brazil, Sao Paulo', 'E3-1240v6', '2x500GB SSD', 263.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2707, 'LEASEWEB', 'HP', 'Singapore, Singapore', '2xSilver 4114', '4x2TB SATA', 264.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2708, 'SERVERLOFT', 'HPE', 'USA, St. Louis', '2xE5-2620v4', '2x2TB SATA', 269.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2709, 'ADVANCED HOSTERS', 'Supermicro', 'USA, Ashburn', 'W-2123', '2x240GB SSD', 269.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2710, 'ADVANCED HOSTERS', 'Supermicro', 'USA, Ashburn', 'W-2123', '2x2TB SATA', 269.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2711, 'SERVERLOFT', 'HPE', 'France, Strasbourg', '2xE5-2620v4', '2x2TB SATA', 269.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2712, 'INXY', 'Dell', 'The Netherlands, Amsterdam', '2xE5620', '4x300GB SAS', 270.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2713, 'VELIA', 'Intel', 'Germany, Frankfurt', 'E3-1230', '8x4TB SATA', 273.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2714, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2620v4', '2x2TB SATA', 273.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2715, 'SERVERS.COM', 'Dell', 'Luxembourg, Roost', 'E3-1231v3', '2x480GB SSD', 274.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2716, 'LEASEWEB', 'DELL', 'Germany, Frankfurt', '2xSilver 4214', '4x8TB SATA', 275.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2717, 'LEASEWEB', 'HP', 'USA, New York City', '2xE5-2650', '2x480GB SSD', 278.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2718, 'SERVERLOFT', 'HPE', 'USA, St. Louis', '2xE5-2620v4', '2x256GB SSD', 279.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2719, 'WEBZILLA', 'Dell', 'USA, Dallas–Fort Worth, TX', '2xE5-2620v4', '2x2TB SATA', 279.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2720, 'SERVERLOFT', 'HPE', 'France, Strasbourg', '2xE5-2620v4', '2x256GB SSD', 279.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2721, 'SERVERS.COM', 'Dell', 'USA, Dallas–Fort Worth, TX', '2xE5-2620v4', '2x2TB SATA', 279.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2722, 'SERVERS.COM', 'Dell', 'USA, Washington DC Metropolitan Area, VA', '2xE5-2620v4', '2x2TB SATA', 279.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2723, 'SERVERS.COM', 'Dell', 'USA, Dallas–Fort Worth, TX', '2xSilver-4114', '2x2TB SATA', 279.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2724, 'ADVANCED HOSTERS', 'Supermicro', 'USA, Ashburn', 'W-2123', '2x480GB SSD', 281.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2725, 'VELIA', 'Intel', 'Germany, Frankfurt', '2xSilver 4114', '2x1TB SATA', 283.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2726, 'LEASEWEB', 'HUAWEI', 'The Netherlands, Amsterdam', '2xE5-2650v4', '4x480GB SSD', 285.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2727, 'LEASEWEB', 'DELL', 'Germany, Frankfurt', '2xE5-2650v3', '2x960GB SSD', 286.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2728, 'INXY', 'Supermicro', 'The Netherlands, Amsterdam', '2xE5-2630V3', '2x4TB SATA', 289.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2729, 'SERVERS.COM', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2620v4', '2x2TB SATA', 289.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2730, 'VELIA', 'Intel', 'USA, St. Louis', '2xE5-2640 v4', '2x1TB SSD', 289.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2731, 'SERVERS.COM', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xSilver-4114', '2x1TB SATA', 291.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2732, 'LEASEWEB', 'HP', 'USA, Miami', '2xE5-2630v4', '1x1TB SATA', 292.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2733, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2620v4', '2x2TB SATA', 295.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2734, 'LEASEWEB', 'DELL', 'USA, New York City', '2xE5-2630v4', '1x240GB SSD', 295.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2735, 'SERVERLOFT', 'HPE', 'USA, St. Louis', '2xE5-2620v3', '4x4TB SATA', 299.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2736, 'SERVERLOFT', 'HPE', 'France, Strasbourg', '2xE5-2620v3', '4x4TB SATA', 299.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2737, 'SERVERS.COM', 'Dell', 'USA, Washington DC Metropolitan Area, VA', '2xE5-2630v4', '2x1TB SATA', 300.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2738, 'MAXIHOST', 'Supermicro', 'USA, Chicago', 'E3-1240v6', '500GB SSD', 303.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2739, 'MAXIHOST', 'Supermicro', 'USA, Miami', 'E3-1240v6', '500GB SSD', 303.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2740, 'INXY', 'Dell', 'The Netherlands, Amsterdam', 'Quad Core X3220', '2x300GB SAS', 305.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2741, 'INXY', 'Dell', 'USA, Dallas', 'Quad Core X3220', '2x300GB SAS', 305.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2742, 'LEASEWEB', 'HP', 'The Netherlands, Amsterdam', '2xGold 5118', '4x480GB SSD', 307.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2743, 'SERVERLOFT', 'Dell', 'USA, St. Louis', '2xE5620', '4x512GB SSD', 309.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2744, 'VELIA', 'Dell', 'Germany, Frankfurt', '2xE5620', '2x1TB SATA', 309.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2745, 'SERVERLOFT', 'HPE', 'France, Strasbourg', '2xE5-2620v3', '4x512GB SSD', 309.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2746, 'ADVANCED HOSTERS', 'Supermicro', 'The Netherlands, Amsterdam', '2xSilver 4110 ', '2x240GB SSD', 310.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2747, 'ADVANCED HOSTERS', 'Supermicro', 'The Netherlands, Amsterdam', '2xSilver 4110 ', '2x240GB SSD', 310.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2748, 'ADVANCED HOSTERS', 'Supermicro', 'The Netherlands, Amsterdam', '2xSilver 4110 ', '2x2TB SATA', 310.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2749, 'WEBZILLA', 'Dell', 'USA, Dallas–Fort Worth, TX', 'E3-1231v3', '2x2TB SATA', 314.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2750, 'SERVERS.COM', 'Dell', 'Russia, Moscow', '2xE5-2620v4', '2x2TB SATA', 315.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2751, 'INXY', 'Dell', 'The Netherlands, Amsterdam', '1xE3-1230v2', '2x300GB SAS', 315.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2752, 'ADVANCED HOSTERS', 'Supermicro', 'USA, Ashburn', '2xSilver 4110 ', '2x2TB SATA', 317.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2753, 'ADVANCED HOSTERS', 'Supermicro', 'USA, Ashburn', '2xSilver 4110 ', '2x240GB SSD', 317.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2754, 'ADVANCED HOSTERS', 'Supermicro', 'USA, Ashburn', '2xSilver 4110 ', '2x240GB SSD', 317.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2755, 'MAXIHOST', 'Huawei', 'USA, Los Angeles', '2xE5-2630v4', '2x480GB SSD', 317.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2756, 'MAXIHOST', 'Huawei', 'USA, Chicago', '2xE5-2630v4', '2x1TB SSD', 317.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2757, 'MAXIHOST', 'Huawei', 'USA, Miami', '2xE5-2630v4', '2x1TB SSD', 317.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2758, 'SERVERS.COM', 'Dell', 'UK, Slough', 'E3-1230 v6', '2x4TB SATA', 318.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2759, 'SERVERS.COM', 'Dell', 'UK, Slough', 'E3-1230 v6', '2x480GB SSD', 318.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2760, 'SERVERLOFT', 'HPE', 'USA, St. Louis', '2xE5-2620v4', '4x4TB SATA', 319.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2761, 'SERVERLOFT', 'HPE', 'France, Strasbourg', '2xE5-2620v4', '4x4TB SATA', 319.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2762, 'WEBZILLA', 'Dell', 'USA, Dallas–Fort Worth, TX', 'E3-1231v3', '2x2TB SATA', 322.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2763, 'SERVERS.COM', 'Dell', 'China, Hong Kong', 'E3-1240v5', '2x4TB SATA', 324.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2764, 'ADVANCED HOSTERS', 'Supermicro', 'The Netherlands, Amsterdam', '2xSilver 4110 ', '2x480GB SSD', 324.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2765, 'ADVANCED HOSTERS', 'Supermicro', 'The Netherlands, Amsterdam', '2xSilver 4110 ', '2x480GB SSD', 324.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2766, 'LEASEWEB', 'SSG-6049P-E1CR24H', 'Germany, Frankfurt', '2xSilver 4210', '24x1TB SATA', 326.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2767, 'MAXIHOST', 'Supermicro', 'USA, Chicago', 'E3-1240v6', '2x500GB SSD', 327.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2768, 'MAXIHOST', 'Supermicro', 'USA, Los Angeles', 'E3-1240v6', '2x500GB SSD', 327.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2769, 'MAXIHOST', 'Supermicro', 'USA, Miami', 'E3-1240v6', '2x500GB SSD', 327.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2770, 'SERVERLOFT', 'HPE', 'USA, St. Louis', '2xE5-2620v4', '4x512GB SSD', 329.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2771, 'ADVANCED HOSTERS', 'Supermicro', 'USA, Ashburn', '2xSilver 4110 ', '2x480GB SSD', 329.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2772, 'ADVANCED HOSTERS', 'Supermicro', 'USA, Ashburn', '2xSilver 4110 ', '2x480GB SSD', 329.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2773, 'SERVERLOFT', 'HPE', 'France, Strasbourg', '2xE5-2620v4', '4x512GB SSD', 329.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2774, 'SERVERS.COM', 'Dell', 'USA, Dallas–Fort Worth, TX', '2xSilver-4114', '1x480GB SSD', 329.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2775, 'SERVERS.COM', 'Dell', 'USA, San Jose, CA', '2xSilver-4114', '1x480GB SSD', 329.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2776, 'LEASEWEB', 'DELL', 'UK, London', '2xE5-2667v4', '2x240GB SSD', 330.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2777, 'ADVANCED HOSTERS', 'Supermicro', 'The Netherlands, Amsterdam', '2xSilver 4110 ', '2x2TB SATA', 331.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2778, 'VELIA', 'Intel', 'Germany, Frankfurt', '2xE5-2670 v3', '2x1TB SATA', 333.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2779, 'SERVERS.COM', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2630v3', '2x600GB SAS', 334.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2780, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', 'E3-1231v3', '2x2TB SATA', 335.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2781, 'ADVANCED HOSTERS', 'Supermicro', 'USA, Ashburn', '2xSilver 4110 ', '2x2TB SATA', 335.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2782, 'SERVERS.COM', 'Dell', 'Russia, Moscow', '2xE5-2630v3', '2x2TB SATA', 339.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2783, 'ADVANCED HOSTERS', 'Supermicro', 'The Netherlands, Amsterdam', '2xSilver 4110 ', '2x2TB SATA', 344.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2784, 'ADVANCED HOSTERS', 'Supermicro', 'The Netherlands, Amsterdam', '2xSilver 4110 ', '2x240GB SSD', 344.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2785, 'ADVANCED HOSTERS', 'Supermicro', 'The Netherlands, Amsterdam', '2xSilver 4110 ', '2x240GB SSD', 344.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2786, 'SERVERS.COM', 'Dell', 'China, Hong Kong', 'E3-1240v5', '2x480GB SSD', 345.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2787, 'ADVANCED HOSTERS', 'Supermicro', 'USA, Ashburn', '2xSilver 4110 ', '2x2TB SATA', 347.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2788, 'ADVANCED HOSTERS', 'Supermicro', 'USA, Ashburn', '2xSilver 4110 ', '2x240GB SSD', 347.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2789, 'ADVANCED HOSTERS', 'Supermicro', 'USA, Ashburn', '2xSilver 4110 ', '2x240GB SSD', 347.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2790, 'VELIA', 'Intel', 'Germany, Frankfurt', '2xE5-2620 v3', '2x1TB SATA', 349.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2791, 'VELIA', 'Intel', 'China, Hong Kong', 'E3-1230 v5', '2x4TB SATA', 349.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2792, 'MAXIHOST', 'Huawei', 'USA, Los Angeles', '2xE5-2630v4', '2x480GB SSD', 349.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2793, 'MAXIHOST', 'Huawei', 'USA, Chicago', '2xE5-2630v4', '2x480GB SSD', 349.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2794, 'MAXIHOST', 'Huawei', 'USA, Miami', '2xE5-2630v4', '2x480GB SSD', 349.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2795, 'INXY', 'Supermicro', 'The Netherlands, Amsterdam', 'E3-1230V5', '2x240GB SSD', 350.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2796, 'SERVERS.COM', 'Dell', 'Russia, Moscow', '2xE5-2630v3', '2x2TB SATA', 351.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2797, 'MAXIHOST', 'Supermicro', 'USA, Chicago', 'E-2176G', '2x1TB SSD', 353.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2798, 'MAXIHOST', 'Supermicro', 'USA, Los Angeles', 'E-2176G', '2x1TB SSD', 353.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2799, 'MAXIHOST', 'Supermicro', 'USA, Miami', 'E-2176G', '2x1TB SSD', 353.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2800, 'LEASEWEB', 'DELL', 'UK, London', '2xGold 5118', '4x480GB SSD', 355.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2801, 'SERVERS.COM', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2620v4', '4x2TB SATA', 356.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2802, 'MAXIHOST', 'Supermicro', 'Brazil, Sao Paulo', 'E-2176G', '2x1TB SSD', 357.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2803, 'ADVANCED HOSTERS', 'Supermicro', 'The Netherlands, Amsterdam', '2xSilver 4110 ', '2x480GB SSD', 358.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2804, 'ADVANCED HOSTERS', 'Supermicro', 'The Netherlands, Amsterdam', '2xSilver 4110 ', '2x480GB SSD', 358.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2805, 'ADVANCED HOSTERS', 'Supermicro', 'USA, Ashburn', '2xSilver 4110 ', '2x480GB SSD', 359.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2806, 'ADVANCED HOSTERS', 'Supermicro', 'USA, Ashburn', '2xSilver 4110 ', '2x480GB SSD', 359.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2807, 'SERVERS.COM', 'Dell', 'Luxembourg, Roost', '2xE5-2620v4', '2x2TB SATA', 360.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2808, 'INXY', 'Dell', 'USA, Dallas', '1xE3-1270', '2x300GB SAS', 360.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2809, 'INXY', 'Dell', 'The Netherlands, Amsterdam', '1xE3-1230v2', '2x300GB SAS', 360.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2810, 'INXY', 'Dell', 'The Netherlands, Amsterdam', '1xE3-1230v3', '2x300GB SAS', 365.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2811, 'ADVANCED HOSTERS', 'Supermicro', 'The Netherlands, Amsterdam', '2xSilver 4110 ', '2x2TB SATA', 365.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2812, 'ADVANCED HOSTERS', 'Supermicro', 'USA, Ashburn', '2xSilver 4110 ', '2x2TB SATA', 365.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2813, 'LEASEWEB', 'DELL', 'Germany, Frankfurt', '2x E5-2650v4', '2x1.92TB SSD', 366.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2814, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', 'E3-1231v3', '2x120GB SSD', 367.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2815, 'VELIA', 'Intel', 'Germany, Frankfurt', '2xE5-2620 v3', '2x1TB SATA', 373.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2816, 'LEASEWEB', 'DELL', 'USA, New York City', '2xSilver 4114', '2x1TB SATA', 374.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2817, 'SERVERS.COM', 'Dell', 'UK, Slough', 'E3-1230 v6', '2x4TB SATA', 375.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2818, 'SERVERS.COM', 'Dell', 'UK, Slough', 'E3-1230 v6', '2x960GB SSD', 375.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2819, 'SERVERS.COM', 'Dell', 'UK, Slough', 'E3-1230 v6', '2x480GB SSD', 375.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2820, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2620v4', '2x240GB SSD', 375.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2821, 'LEASEWEB', 'DELL', 'Singapore, Singapore', '2xE5-2650v4', '4x480 GB SSD', 375.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2822, 'INXY', 'Supermicro', 'USA, Ashburn', 'E3-1230V5', '2x240GB SSD', 377.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2823, 'ADVANCED HOSTERS', 'SC813MTQ-350C', 'USA, Ashburn', 'E3-1230V5', '2x240GB SSD ', 377.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2824, 'WEBZILLA', 'Dell', 'USA, Dallas–Fort Worth, TX', '2xE5-2630v3', '2x2TB SATA', 377.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2825, 'WEBZILLA', 'Dell', 'USA, Dallas–Fort Worth, TX', '2xE5-2620v4', '2x240GB SSD', 377.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2826, 'MAXIHOST', 'Huawei', 'USA, Los Angeles', '2xE5-2630v4', '2x480GB SSD', 381.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2827, 'MAXIHOST', 'Huawei', 'USA, Chicago', '2xE5-2630v4', '2x480GB SSD', 381.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2828, 'MAXIHOST', 'Huawei', 'USA, Miami', '2xE5-2630v4', '2x480GB SSD', 381.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2829, 'SERVERS.COM', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2620v4', '2x240GB SSD', 389.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2830, 'WEBZILLA', 'Dell', 'USA, Dallas–Fort Worth, TX', '2xE5-2620v4', '2x240GB SSD', 389.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2831, 'WEBZILLA', 'Dell', 'USA, Dallas–Fort Worth, TX', '2xE5-2630v3', '2x2TB SATA', 389.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2832, 'SERVERS.COM', 'Dell', 'USA, Dallas–Fort Worth, TX', '2xE5-2630v3', '2x2TB SATA', 389.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2833, 'SERVERS.COM', 'Dell', 'USA, Dallas–Fort Worth, TX', '2xE5-2620v4', '2x240GB SSD', 389.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2834, 'SERVERS.COM', 'Dell', 'USA, Washington DC Metropolitan Area, VA', '2xE5-2630v3', '2x2TB SATA', 389.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2835, 'ADVANCED HOSTERS', 'Supermicro', 'USA, Ashburn', 'E3-1270V5', '2x240GB SSD', 390.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2836, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2620v4', '2x240GB SSD', 397.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2837, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2630v3', '2x2TB SATA', 398.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2838, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2630v3', '4x2TB SATA', 398.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2839, 'WEBZILLA', 'Dell', 'USA, Dallas–Fort Worth, TX', '2xE5-2630v3', '2x600GB SAS', 398.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2840, 'WEBZILLA', 'Dell', 'USA, Dallas–Fort Worth, TX', '2xE5-2630v3', '4x2TB SATA', 398.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2841, 'LEASEWEB', 'HP', 'China, Hong Kong', '2xGold 5118', '4x480GB SSD', 398.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2842, 'VELIA', 'Intel', 'China, Hong Kong', '2xE5-2630 v4', '6x480GB SSD', 399.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2843, 'SERVERS.COM', 'Dell', 'Singapore, Singapore', '2xE5-2620v4', '2x2TB SATA', 402.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18');
INSERT INTO `INXY___servers` (`id`, `provider`, `brand`, `location`, `cpu`, `drive`, `price`, `source_id`, `created_at`, `updated_at`) VALUES
(2844, 'SERVERS.COM', 'Dell', 'Russia, Moscow', '2xE5-2620v4', '2x480GB SSD', 409.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2845, 'VELIA', 'Intel', 'Germany, Frankfurt', '2xSilver 4214', '8x4TB SATA', 409.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2846, 'SERVERS.COM', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2630v3', '2x2TB SATA', 411.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2847, 'MAXIHOST', 'Huawei', 'Brazil, Sao Paulo', '2xE5-2630v4', '2x1TB SSD', 413.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2848, 'SERVERS.COM', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xSilver-4114', '2x1TB SATA', 414.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2849, 'LEASEWEB', 'DELL', 'Germany, Frankfurt', '2xGold 5218', '2x1.92TB SSD', 416.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2850, 'LEASEWEB', 'DELL', 'The Netherlands, Amsterdam', '2xGold 5218', '4x960GB SSD', 417.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2851, 'WEBZILLA', 'Dell', 'USA, Dallas–Fort Worth, TX', '2xE5-2630v3', '2x600GB SAS', 419.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2852, 'WEBZILLA', 'Dell', 'USA, Dallas–Fort Worth, TX', '2xE5-2630v3', '4x2TB SATA', 419.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2853, 'SERVERS.COM', 'Dell', 'USA, Dallas–Fort Worth, TX', '2xE5-2630v3 ', '2x600GB SAS ', 419.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2854, 'SERVERS.COM', 'Dell', 'USA, Dallas–Fort Worth, TX', '2xE5-2630v3', '4x2TB SATA', 419.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2855, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2630v3', '2x2TB SATA', 420.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2856, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2630v3', '4x2TB SATA', 420.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2857, 'WEBZILLA', 'Dell', 'USA, Dallas–Fort Worth, TX', 'E3-1231v3', '2x480GB SSD', 422.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2858, 'WEBZILLA', 'Dell', 'USA, Dallas–Fort Worth, TX', '2xE5-2620v4', '2x480GB SSD', 427.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2859, 'LEASEWEB', 'DELL', 'UK, London', '2xGold 6134', '4x480GB SSD', 427.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2860, 'SERVERS.COM', 'Dell', 'UK, Slough', 'E3-1230 v6', '2x960GB SSD', 429.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2861, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2630v3', '2x600GB SAS', 432.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2862, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2620v4', '2x480GB SSD', 432.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2863, 'VELIA', 'Intel', 'Germany, Frankfurt', '2xSilver 4214', '8x4TB SATA', 433.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2864, 'WEBZILLA', 'Dell', 'USA, Dallas–Fort Worth, TX', '2xE5-2630v3', '2x960GB SSD', 437.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2865, 'MAXIHOST', 'Supermicro', 'Brazil, Sao Paulo', 'E3-1240v6', '500GB SSD', 437.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2866, 'LEASEWEB', 'DELL', 'USA, New York City', '2xGold 5118', '2x1TB SATA', 440.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2867, 'LEASEWEB', 'DELL', 'USA, San Francisco', '2xGold 5118', '2x1TB SATA', 440.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2868, 'SERVERS.COM', 'Dell', 'Singapore, Singapore', '2xE5-2630v3', '2x2TB SATA', 444.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2869, 'SERVERS.COM', 'Dell', 'Russia, Moscow', '2xE5-2630v3', '2x480GB SSD', 444.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2870, 'INXY', 'Dell', 'USA, Dallas', '2xE5620', '2x300GB SAS', 445.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2871, 'SERVERS.COM', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2620v4', '2x480GB SSD', 445.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2872, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', 'E3-1231v3', '2x480GB SSD', 449.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2873, 'WEBZILLA', 'Dell', 'USA, Dallas–Fort Worth, TX', '2xE5-2620v4', '2x480GB SSD', 449.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2874, 'SERVERS.COM', 'Dell', 'USA, Dallas–Fort Worth, TX', '2xE5-2620v4', '2x480GB SSD', 449.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2875, 'LEASEWEB', 'Supermicro', 'USA, San Francisco', '2xSilver 4114', '12x4TB SATA', 450.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2876, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2630v3', '2x600GB SAS', 454.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2877, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2620v4', '2x480GB SSD', 454.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2878, 'INXY', 'Dell', 'The Netherlands, Amsterdam', '2xE5-2430', '2x480 SSD', 455.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2879, 'WEBZILLA', 'Dell', 'USA, Dallas–Fort Worth, TX', '2xE5-2630v3', '2x480GB SSD', 457.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2880, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2630v3', '2x600GB SAS', 466.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2881, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2630v3', '2x480GB SSD', 466.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2882, 'WEBZILLA', 'Dell', 'USA, Dallas–Fort Worth, TX', '2xE5-2630v3', '2x600GB SAS', 467.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2883, 'LEASEWEB', 'HP', 'Germany, Frankfurt', '2xGold 6134', '4x480GB SSD', 473.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2884, 'SERVERS.COM', 'Supermicro', 'UK, Slough', '2xE5-2640 v4', '2x480GB SSD', 474.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2885, 'ADVANCED HOSTERS', '6018R-TD8', 'USA, Ashburn', '2xE5-2620V3', '4x4TB SATA  + 1x960GB SSD ', 477.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2886, 'SERVERS.COM', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2630v3', '2x480GB SSD', 478.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2887, 'SERVERS.COM', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2630v3', '2x600GB SAS', 478.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2888, 'WEBZILLA', 'Dell', 'USA, Dallas–Fort Worth, TX', '2xE5-2630v3', '2x480GB SSD', 479.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2889, 'SERVERS.COM', 'Dell', 'USA, Dallas–Fort Worth, TX', '2xE5-2630v3', '2x480GB SSD', 479.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2890, 'ADVANCED HOSTERS', 'Supermicro', 'USA, Ashburn', 'W-2123', '2x240GB SSD', 484.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2891, 'ADVANCED HOSTERS', 'Supermicro', 'USA, Ashburn', 'W-2123', '2x2TB SATA', 484.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2892, 'SERVERS.COM', 'Dell', 'Luxembourg, Roost', '2xE5-2620v4', '2x240GB SSD', 485.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2893, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2630v3', '2x480GB SSD', 488.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2894, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2630v3', '2x600GB SAS', 488.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2895, 'WEBZILLA', 'Dell', 'USA, Dallas–Fort Worth, TX', '2xE5-2630v3', '2x600GB SAS', 489.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2896, 'SERVERS.COM', 'Dell', 'USA, Dallas–Fort Worth, TX', '2xE5-2630v3', '2x600GB SAS ', 489.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2897, 'INXY', 'Dell', 'The Netherlands, Amsterdam', '2xE5620', '4x300GB SAS', 490.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2898, 'MAXIHOST', 'Supermicro', 'Brazil, Sao Paulo', 'E3-1240v6', '2x500GB SSD', 493.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2899, 'SERVERS.COM', 'Dell', 'Russia, Moscow', '2xE5-2630v3', '2x960GB SSD', 495.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2900, 'ADVANCED HOSTERS', 'Supermicro', 'The Netherlands, Amsterdam', 'W-2123', '2x2TB SATA', 495.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2901, 'ADVANCED HOSTERS', 'Supermicro', 'The Netherlands, Amsterdam', 'W-2123', '2x240GB SSD', 495.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2902, 'ADVANCED HOSTERS', 'Supermicro', 'USA, Ashburn', 'W-2123', '2x480GB SSD', 496.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2903, 'MAXIHOST', 'Huawei', 'USA, Los Angeles', '2xE5-2630v4', '2x480GB SSD', 497.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2904, 'MAXIHOST', 'Huawei', 'USA, Chicago', '2xE5-2630v4', '2x480GB SSD', 497.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2905, 'MAXIHOST', 'Huawei', 'USA, Miami', '2xE5-2630v4', '2x480GB SSD', 497.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2906, 'LEASEWEB', 'Dell', 'Germany, Frankfurt', 'E-2174G', '2x240GB SSD', 497.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2907, 'WEBZILLA', 'Dell', 'USA, Dallas–Fort Worth, TX', '2xE5-2630v3', '2x960GB SSD', 498.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2908, 'SERVERS.COM', 'Dell', 'Luxembourg, Roost', '2xE5-2630v3', '2x600GB SAS', 499.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2909, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2630v3', '2x960GB SSD', 500.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2910, 'WEBZILLA', 'Dell', 'USA, Dallas–Fort Worth, TX', '2xE5-2620v4', '2x2TB SATA', 504.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2911, 'ADVANCED HOSTERS', 'Supermicro', 'The Netherlands, Amsterdam', 'W-2123', '2x480GB SSD', 509.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2912, 'INXY', 'Supermicro', 'The Netherlands, Amsterdam', '2xE5-2630V3', '2x4TB SATA', 510.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2913, 'SERVERS.COM', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2630v3 ', '2x960GB SSD', 511.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2914, 'SERVERS.COM', 'Dell', 'Luxembourg, Roost', '2xE5-2630v3', '2x2TB SATA', 514.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2915, 'SERVERS.COM', 'Dell', 'Luxembourg, Roost', '2xE5-2630v3', '4x2TB SATA', 514.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2916, 'ADVANCED HOSTERS', 'Supermicro', 'The Netherlands, Amsterdam', '2xSilver 4110 ', '2x240GB SSD+12x2TB SATA', 517.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2917, 'VELIA', 'Intel', 'China, Hong Kong', '2xE5-2630 v4', '6x480GB SSD', 519.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2918, 'WEBZILLA', 'Dell', 'USA, Dallas–Fort Worth, TX', '2xE5-2630v3', '2x960GB SSD', 519.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2919, 'SERVERS.COM', 'Dell', 'USA, Dallas–Fort Worth, TX', '2xE5-2630v3 ', '2x960GB SSD', 519.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2920, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2620v4', '2x2TB SATA', 520.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2921, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2630v3', '2x960GB SSD', 522.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2922, 'SERVERS.COM', 'Dell', 'Russia, Moscow', '2xE5-2630v3', '2x960GB SSD', 528.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2923, 'INXY', 'Supermicro', 'The Netherlands, Amsterdam', '2xE5-2630V3', '2x4TB SATA', 535.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2924, 'ADVANCED HOSTERS', 'Supermicro', 'The Netherlands, Amsterdam', '2xSilver 4110 ', '2x240GB SSD+12x2TB SATA', 538.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2925, 'ADVANCED HOSTERS', 'Supermicro', 'USA, Ashburn', '2xSilver 4110 ', '2x240GB SSD+12x2TB SATA', 539.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2926, 'ADVANCED HOSTERS', 'Supermicro', 'The Netherlands, Amsterdam', '2xSilver 4110 ', '2x240GB SSD+12x2TB SATA', 551.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2927, 'SERVERS.COM', 'Dell', 'Luxembourg, Roost', '2xE5-2620v4', '2x480GB SSD', 555.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2928, 'ADVANCED HOSTERS', 'Supermicro', 'USA, Ashburn', '2xSilver 4110 ', '2x240GB SSD+12x2TB SATA', 557.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2929, 'WEBZILLA', 'Dell', 'USA, Dallas–Fort Worth, TX', '2xE5-2630v3', '2x960GB SSD', 559.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2930, 'SERVERS.COM', 'Dell', 'USA, Dallas–Fort Worth, TX', '2xE5-2630v3', '2x960GB SSD', 559.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2931, 'ADVANCED HOSTERS', 'Supermicro', 'USA, Ashburn', '2xSilver 4110 ', '2x240GB SSD', 562.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2932, 'ADVANCED HOSTERS', 'Supermicro', 'USA, Ashburn', '2xSilver 4110 ', '2x2TB SATA', 562.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2933, 'ADVANCED HOSTERS', 'Supermicro', 'USA, Ashburn', '2xSilver 4110 ', '2x240GB SSD', 562.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2934, 'SERVERS.COM', 'Dell', 'Russia, Moscow', '2xE5-2680v3', '2x2TB SATA', 567.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2935, 'ADVANCED HOSTERS', 'Supermicro', 'USA, Ashburn', '2xSilver 4110 ', '2x240GB SSD+12x2TB SATA', 569.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2936, 'ADVANCED HOSTERS', 'Supermicro', 'The Netherlands, Amsterdam', '2xSilver 4110 ', '2x240GB SSD+12x2TB SATA', 572.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2937, 'ADVANCED HOSTERS', 'Supermicro', 'USA, Ashburn', '2xSilver 4110 ', '2x480GB SSD', 574.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2938, 'ADVANCED HOSTERS', 'Supermicro', 'USA, Ashburn', '2xSilver 4110 ', '2x480GB SSD', 574.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2939, 'ADVANCED HOSTERS', 'Supermicro', 'USA, Ashburn', '2xSilver 4110 ', '2x2TB SATA', 580.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2940, 'ADVANCED HOSTERS', 'Supermicro', 'USA, Ashburn', '2xSilver 4110 ', '2x240GB SSD+12x2TB SATA', 587.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2941, 'MAXIHOST', 'Supermicro', 'Brazil, Sao Paulo', 'E-2176G', '2x1TB SSD', 587.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2942, 'ADVANCED HOSTERS', 'Supermicro', 'The Netherlands, Amsterdam', '2xSilver 4110 ', '2x240GB SSD', 592.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2943, 'ADVANCED HOSTERS', 'Supermicro', 'The Netherlands, Amsterdam', '2xSilver 4110 ', '2x240GB SSD', 592.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2944, 'ADVANCED HOSTERS', 'Supermicro', 'The Netherlands, Amsterdam', '2xSilver 4110 ', '2x2TB SATA', 592.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2945, 'SERVERS.COM', 'Dell', 'Luxembourg, Roost', '2xE5-2630v3', '2x480GB SSD', 597.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2946, 'SERVERS.COM', 'Dell', 'Luxembourg, Roost', '2xE5-2630v3', '2x600GB SAS', 597.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2947, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2630v3', '2x960GB SSD', 603.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2948, 'ADVANCED HOSTERS', 'Supermicro', 'The Netherlands, Amsterdam', '2xSilver 4110 ', '2x480GB SSD', 605.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2949, 'ADVANCED HOSTERS', 'Supermicro', 'The Netherlands, Amsterdam', '2xSilver 4110 ', '2x480GB SSD', 605.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2950, 'SERVERS.COM', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2630v3', '2x960GB SSD', 612.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2951, 'ADVANCED HOSTERS', 'Supermicro', 'The Netherlands, Amsterdam', '2xSilver 4110 ', '2x2TB SATA', 612.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2952, 'WEBZILLA', 'Dell', 'USA, Dallas–Fort Worth, TX', '2xE5-2630v3', '2x2TB SATA', 614.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2953, 'WEBZILLA', 'Dell', 'USA, Dallas–Fort Worth, TX', '2xE5-2620v4', '2x240GB SSD', 614.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2954, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2620v4', '2x240GB SSD', 622.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2955, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2630v3', '2x960GB SSD', 625.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2956, 'WEBZILLA', 'Dell', 'USA, Dallas–Fort Worth, TX', '2xE5-2680v3', '2x2TB SATA', 627.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2957, 'LEASEWEB', 'DELL', 'Germany, Frankfurt', '2xSilver 4114', '4x480GB SSD', 632.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2958, 'SERVERS.COM', 'Dell', 'Luxembourg, Roost', '2xE5-2630v3', '2x960GB SSD', 636.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2959, 'MAXIHOST', 'Huawei', 'Brazil, Sao Paulo', '2xE5-2630v4', '2x480GB SSD', 643.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2960, 'WEBZILLA', 'Dell', 'USA, Dallas–Fort Worth, TX', '2xE5-2630v3', '4x2TB SATA', 644.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2961, 'WEBZILLA', 'Dell', 'USA, Dallas–Fort Worth, TX', '2xE5-2630v3', '2x600GB SAS', 644.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2962, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2630v3', '4x2TB SATA', 645.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2963, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2630v3', '2x2TB SATA', 645.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2964, 'WEBZILLA', 'Dell', 'USA, Dallas–Fort Worth, TX', '2xE5-2680v3', '2x2TB SATA', 649.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2965, 'SERVERS.COM', 'Dell', 'USA, Dallas–Fort Worth, TX', '2xE5-2680v3', '2x2TB SATA', 649.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2966, 'SERVERS.COM', 'Dell', 'USA, Washington DC Metropolitan Area, VA', '2xE5-2680v3', '2x2TB SATA', 649.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2967, 'SERVERS.COM', 'Dell', 'USA, Washington DC Metropolitan Area, VA', '2xE5-2680v3', '2x2TB SATA', 649.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2968, 'SERVERS.COM', 'Dell', 'Russia, Moscow', '2xE5-2680v3', '2x480GB SSD', 660.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2969, 'MAXIHOST', 'Supermicro', 'Brazil, Sao Paulo', 'E3-1240v6', '500GB SSD', 667.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2970, 'SERVERS.COM', 'Dell', 'China, Hong Kong', '2xE5-2630v4', '2x480GB SSD', 669.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2971, 'SERVERS.COM', 'Dell', 'China, Hong Kong', '2xE5-2630v4', '2x8TB SATA', 669.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2972, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2680v3', '2x2TB SATA', 671.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2973, 'LEASEWEB', 'DELL', 'Germany, Frankfurt', '4xE7-4820v2', '4x960GB SSD', 671.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2974, 'WEBZILLA', 'Dell', 'USA, Dallas–Fort Worth, TX', '2xE5-2620v4', '2x480GB SSD', 674.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2975, 'SERVERS.COM', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2680v3 ', '2x2TB SATA', 675.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2976, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2630v3', '2x600GB SAS', 679.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2977, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2620v4', '2x480GB SSD', 679.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2978, 'WEBZILLA', 'Dell', 'USA, Dallas–Fort Worth, TX', '2xE5-2630v3', '8x4TB SATA', 687.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2979, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2680v3', '2x2TB SATA', 693.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2980, 'SERVERS.COM', 'Dell', 'Luxembourg, Roost', '2xE5-2630v3', '2x960GB SSD', 693.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2981, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2630v3', '8x4TB SATA', 694.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2982, 'SERVERS.COM', 'Dell', 'Singapore, Singapore', '2xE5-2680v3', '2x2TB SATA', 699.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2983, 'SERVERS.COM', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2630v3 ', '8x4TB SATA', 699.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2984, 'WEBZILLA', 'Dell', 'USA, Dallas–Fort Worth, TX', '2xE5-2630v3', '2x480GB SSD', 704.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2985, 'WEBZILLA', 'Dell', 'USA, Dallas–Fort Worth, TX', '2xE5-2630v3', '8x4TB SATA', 709.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2986, 'SERVERS.COM', 'Dell', 'USA, Dallas–Fort Worth, TX', '2xE5-2630v3', '8x4TB SATA ', 709.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2987, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2630v3', '2x480GB SSD', 713.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2988, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2630v3', '2x600GB SAS', 713.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2989, 'WEBZILLA', 'Dell', 'USA, Dallas–Fort Worth, TX', '2xE5-2630v3', '2x600GB SAS', 714.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2990, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2630v3', '8x4TB SATA', 716.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2991, 'MAXIHOST', 'Supermicro', 'Brazil, Sao Paulo', 'E3-1240v6', '2x500GB SSD', 723.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2992, 'WEBZILLA', 'Dell', 'USA, Dallas–Fort Worth, TX', '2xE5-2680v3', '2x480GB SSD', 737.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2993, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2680v3', '2x480GB SSD', 740.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2994, 'SERVERS.COM', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2680v3', '2x480GB SSD ', 741.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2995, 'SERVERS.COM', 'Dell', 'Russia, Moscow', '2xE5-2680v3', '2x960GB SSD', 744.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2996, 'WEBZILLA', 'Dell', 'USA, Dallas–Fort Worth, TX', '2xE5-2630v3', '2x960GB SSD', 744.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2997, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2630v3', '2x960GB SSD', 749.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2998, 'WEBZILLA', 'Dell', 'USA, Dallas–Fort Worth, TX', '2xE5-2680v3', '2x480GB SSD', 759.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(2999, 'SERVERS.COM', 'Dell', 'USA, Dallas–Fort Worth, TX', '2xE5-2680v3', '2x480GB SSD', 759.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3000, 'SERVERS.COM', 'Dell', 'USA, Washington DC Metropolitan Area, VA', '2xE5-2680v3', '2x480GB SSD', 759.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3001, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2680v3', '2x480GB SSD', 762.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3002, 'ADVANCED HOSTERS', 'Supermicro', 'USA, Ashburn', '2xSilver 4110 ', '2x240GB SSD+12x2TB SATA', 784.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3003, 'WEBZILLA', 'Dell', 'USA, Dallas–Fort Worth, TX', '2xE5-2630v3', '2x960GB SSD', 784.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3004, 'ADVANCED HOSTERS', 'Supermicro', 'The Netherlands, Amsterdam', '2xSilver 4110 ', '2x240GB SSD+12x2TB SATA', 799.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3005, 'SERVERS.COM', 'Dell', 'Luxembourg, Roost', '2xE5-2630v3', '4x960GB SSD', 800.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3006, 'ADVANCED HOSTERS', 'Supermicro', 'USA, Ashburn', '2xSilver 4110 ', '2x240GB SSD+12x2TB SATA', 802.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3007, 'WEBZILLA', 'Dell', 'USA, Dallas–Fort Worth, TX', '2xE5-2680v3', '4x600GB SAS', 807.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3008, 'WEBZILLA', 'Dell', 'USA, Dallas–Fort Worth, TX', '2xE5-2680v3', '2x960GB SSD', 817.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3009, 'MAXIHOST', 'Supermicro', 'Brazil, Sao Paulo', 'E-2176G', '2x1TB SSD', 817.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3010, 'ADVANCED HOSTERS', 'Supermicro', 'The Netherlands, Amsterdam', '2xSilver 4110 ', '2x240GB SSD+12x2TB SATA', 819.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3011, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2680v3', '4x600GB SAS', 819.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3012, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2680v3', '2x960GB SSD', 819.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3013, 'SERVERS.COM', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2680v3', '2x960GB SSD', 819.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3014, 'SERVERS.COM', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2680v3', '4x600GB SAS', 819.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3015, 'WEBZILLA', 'Dell', 'USA, Dallas–Fort Worth, TX', '2xE5-2680v3', '4x600GB SAS', 829.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3016, 'SERVERS.COM', 'Dell', 'USA, Dallas–Fort Worth, TX', '2xE5-2680v3', '4x600GB SAS', 829.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3017, 'SERVERS.COM', 'Dell', 'USA, Washington DC Metropolitan Area, VA', '2xE5-2680v3', '4x600GB SAS', 829.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3018, 'WEBZILLA', 'Dell', 'USA, Dallas–Fort Worth, TX', '2xE5-2680v3', '2x960GB SSD', 839.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3019, 'SERVERS.COM', 'Dell', 'USA, Dallas–Fort Worth, TX', '2xE5-2680v3', '2x960GB SSD', 839.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3020, 'SERVERS.COM', 'Dell', 'USA, Washington DC Metropolitan Area, VA', '2xE5-2680v3', '2x960GB SSD', 839.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3021, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2680v3', '4x600GB SAS', 841.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3022, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2680v3', '2x960GB SSD', 841.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3023, 'SERVERS.COM', 'Dell', 'Luxembourg, Roost', '2xE5-2680v3', '2x2TB SATA', 847.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3024, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2630v3', '2x960GB SSD', 850.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3025, 'MAXIHOST', 'Huawei', 'Brazil, Sao Paulo', '2xE5-2630v4', '2x480GB SSD', 873.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3026, 'SERVERS.COM', 'Dell', 'Luxembourg, Roost', '2xE5-2630v3', '8x4TB SATA', 873.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3027, 'WEBZILLA', 'Dell', 'USA, Dallas–Fort Worth, TX', '2xE5-2680v3', '2x2TB SATA', 874.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3028, 'WEBZILLA', 'Dell', 'USA, Dallas–Fort Worth, TX', '2xE5-2680v3', '12x2TB SATA', 877.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3029, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2680v3', '12x2TB SATA', 888.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3030, 'SERVERS.COM', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2680v3', '12x2TB SATA', 888.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3031, 'WEBZILLA', 'Dell', 'USA, Dallas–Fort Worth, TX', '2xE5-2680v3', '12x2TB SATA', 899.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3032, 'SERVERS.COM', 'Dell', 'USA, Dallas–Fort Worth, TX', '2xE5-2680v3', '12x2TB SATA', 899.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3033, 'SERVERS.COM', 'Dell', 'USA, Washington DC Metropolitan Area, VA', '2xE5-2680v3', '12x2TB SATA', 899.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3034, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2680v3', '12x2TB SATA', 910.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3035, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2680v3', '2x2TB SATA', 918.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3036, 'SERVERS.COM', 'Dell', 'Luxembourg, Roost', '2xE5-2680v3', '2x480GB SSD', 927.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3037, 'WEBZILLA', 'Dell', 'USA, Dallas–Fort Worth, TX', '2xE5-2630v3', '8x4TB SATA', 934.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3038, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2630v3', '8x4TB SATA', 941.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3039, 'SERVERS.COM', 'Dell', 'China, Hong Kong', '2xE5-2680v3', '2x8TB SATA', 948.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3040, 'WEBZILLA', 'Dell', 'USA, Dallas–Fort Worth, TX', '2xE5-2680v3', '2x480GB SSD', 984.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3041, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2680v3', '2x480GB SSD', 987.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3042, 'SERVERS.COM', 'Dell', 'Luxembourg, Roost', '2xE5-2680v3', '2x960GB SSD', 1026.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3043, 'SERVERS.COM', 'Dell', 'Luxembourg, Roost', '2xE5-2680v3', '4x600GB SAS', 1026.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3044, 'WEBZILLA', 'Dell', 'USA, Dallas–Fort Worth, TX', '2xE5-2680v3', '4x600GB SAS', 1054.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3045, 'WEBZILLA', 'Dell', 'USA, Dallas–Fort Worth, TX', '2xE5-2680v3', '2x960GB SSD', 1064.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3046, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2680v3', '2x960GB SSD', 1066.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3047, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2680v3', '4x600GB SAS', 1066.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3048, 'SERVERS.COM', 'Dell', 'Luxembourg, Roost', '2xE5-2680v3', '12x2TB SATA', 1107.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3049, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2630v3', '4x3TB SATA+4x120GB SSD', 1117.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3050, 'WEBZILLA', 'Dell', 'USA, Dallas–Fort Worth, TX', '4xE5-4627v2', '2x600GB SAS+2x1TB SATA', 1117.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3051, 'WEBZILLA', 'Dell', 'USA, Dallas–Fort Worth, TX', '2xE5-2680v3', '12x2TB SATA', 1124.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3052, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2680v3', '12x2TB SATA', 1135.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3053, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2630v3', '4x3TB SATA+4x120GB SSD', 1139.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3054, 'WEBZILLA', 'Dell', 'USA, Dallas–Fort Worth, TX', '4xE5-4627v2', '2x600GB SAS+2x1TB SATA', 1139.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3055, 'WEBZILLA', 'Dell', 'USA, Dallas–Fort Worth, TX', '4xE5-4627v2', '2x480GB SSD', 1157.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3056, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '4xE5-4627v2', '2x480GB SSD+2x1TB SATA', 1161.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3057, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '4xE5-4627v2', '2x600GB SAS+2x1TB SATA', 1161.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3058, 'WEBZILLA', 'Dell', 'USA, Dallas–Fort Worth, TX', '4xE5-4627v2', '2x480GB SSD', 1179.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3059, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '4xE5-4627v2', '2x600GB SAS+2x1TB SATA', 1183.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3060, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '4xE5-4627v2', '2x480GB SSD+2x1TB SATA', 1183.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3061, 'SERVERS.COM', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2680v3', '4x480GB SSD + 10x3TB SATA', 1275.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3062, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2680v3', '4x480GB SSD+10x3TB SATA', 1288.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3063, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2680v3', '4x480GB SSD+10x3TB SATA', 1310.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3064, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2630v3', '4x3TB SATA+4x120GB SSD', 1364.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3065, 'WEBZILLA', 'Dell', 'USA, Dallas–Fort Worth, TX', '4xE5-4627v2', '2x600GB SAS+2x1TB SATA', 1364.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3066, 'WEBZILLA', 'Dell', 'USA, Dallas–Fort Worth, TX', '4xE5-4627v2', '2x480GB SSD', 1404.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3067, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '4xE5-4627v2', '2x600GB SAS+2x1TB SATA', 1408.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3068, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '4xE5-4627v2', '2x480GB SSD+2x1TB SATA', 1408.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3069, 'WEBZILLA', 'Dell', 'The Netherlands, Amsterdam Metropolitan Area', '2xE5-2680v3', '4x480GB SSD+10x3TB SATA', 1535.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3070, 'SERVERS.COM', 'Dell', 'Luxembourg, Roost', '2xE5-2680v3', '4x480GB SSD+10x3TB SATA', 1593.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3071, 'MAXIHOST', 'Supermicro', 'Brazil, Sao Paulo', 'E3-1240v6', '500GB SSD', 1707.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3072, 'MAXIHOST', 'Supermicro', 'Brazil, Sao Paulo', 'E3-1240v6', '2x500GB SSD', 1763.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3073, 'MAXIHOST', 'Supermicro', 'Brazil, Sao Paulo', 'E-2176G', '2x1TB SSD', 1857.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3074, 'MAXIHOST', 'Huawei', 'Brazil, Sao Paulo', '2xE5-2630v4', '2x480GB SSD', 1913.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3075, 'ADVANCED HOSTERS', 'Supermicro', 'USA, Ashburn', 'W-2123', '2x2TB SATA', 1934.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3076, 'ADVANCED HOSTERS', 'Supermicro', 'USA, Ashburn', 'W-2123', '2x240GB SSD', 1934.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3077, 'ADVANCED HOSTERS', 'Supermicro', 'USA, Ashburn', 'W-2123', '2x480GB SSD', 1946.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3078, 'INXY', 'Supermicro', 'USA, Ashburn', 'E3-1230V5', '2x240GB SSD', 2000.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3079, 'INXY', 'Supermicro', 'The Netherlands, Amsterdam', 'E3-1230V5', '2x240GB SSD', 2000.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3080, 'ADVANCED HOSTERS', 'Supermicro', 'USA, Ashburn', '2xSilver 4110 ', '2x240GB SSD', 2012.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3081, 'ADVANCED HOSTERS', 'Supermicro', 'USA, Ashburn', '2xSilver 4110 ', '2x240GB SSD', 2012.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3082, 'ADVANCED HOSTERS', 'Supermicro', 'USA, Ashburn', '2xSilver 4110 ', '2x2TB SATA', 2012.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3083, 'ADVANCED HOSTERS', 'Supermicro', 'USA, Ashburn', '2xSilver 4110 ', '2x480GB SSD', 2024.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3084, 'ADVANCED HOSTERS', 'Supermicro', 'USA, Ashburn', '2xSilver 4110 ', '2x480GB SSD', 2024.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3085, 'ADVANCED HOSTERS', 'Supermicro', 'USA, Ashburn', '2xSilver 4110 ', '2x2TB SATA', 2030.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3086, 'ADVANCED HOSTERS', 'Supermicro', 'The Netherlands, Amsterdam', 'W-2123', '2x240GB SSD', 2162.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3087, 'ADVANCED HOSTERS', 'Supermicro', 'The Netherlands, Amsterdam', 'W-2123', '2x2TB SATA', 2163.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3088, 'ADVANCED HOSTERS', 'Supermicro', 'The Netherlands, Amsterdam', 'W-2123', '2x480GB SSD', 2176.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3089, 'ADVANCED HOSTERS', 'Supermicro', 'USA, Ashburn', '2xSilver 4110 ', '2x240GB SSD+12x2TB SATA', 2234.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3090, 'ADVANCED HOSTERS', 'Supermicro', 'USA, Ashburn', '2xSilver 4110 ', '2x240GB SSD+12x2TB SATA', 2252.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3091, 'ADVANCED HOSTERS', 'Supermicro', 'The Netherlands, Amsterdam', '2xSilver 4110 ', '2x2TB SATA', 2259.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3092, 'ADVANCED HOSTERS', 'Supermicro', 'The Netherlands, Amsterdam', '2xSilver 4110 ', '2x240GB SSD', 2259.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3093, 'ADVANCED HOSTERS', 'Supermicro', 'The Netherlands, Amsterdam', '2xSilver 4110 ', '2x240GB SSD', 2259.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3094, 'ADVANCED HOSTERS', 'Supermicro', 'The Netherlands, Amsterdam', '2xSilver 4110 ', '2x480GB SSD', 2273.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3095, 'ADVANCED HOSTERS', 'Supermicro', 'The Netherlands, Amsterdam', '2xSilver 4110 ', '2x480GB SSD', 2273.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3096, 'ADVANCED HOSTERS', 'Supermicro', 'The Netherlands, Amsterdam', '2xSilver 4110 ', '2x2TB SATA', 2280.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3097, 'INXY', 'Supermicro', 'The Netherlands, Amsterdam', '2xE5-2630V3', '2x4TB SATA', 2400.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3098, 'ADVANCED HOSTERS', 'Supermicro', 'The Netherlands, Amsterdam', '2xSilver 4110 ', '2x240GB SSD+12x2TB SATA', 2466.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18'),
(3099, 'ADVANCED HOSTERS', 'Supermicro', 'The Netherlands, Amsterdam', '2xSilver 4110 ', '2x240GB SSD+12x2TB SATA', 2487.00, 3, '2020-09-06 10:57:18', '2020-09-06 10:57:18');

-- --------------------------------------------------------

--
-- Структура таблицы `INXY___sources`
--

CREATE TABLE `INXY___sources` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `INXY___sources`
--

INSERT INTO `INXY___sources` (`id`, `name`, `url`, `created_at`, `updated_at`) VALUES
(3, 'INXY', 'https://old.my.inxy.com/json/servers_catalog.json', '2020-09-06 10:52:19', '2020-09-06 13:49:35');

-- --------------------------------------------------------

--
-- Структура таблицы `INXY___users`
--

CREATE TABLE `INXY___users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `INXY___users`
--

INSERT INTO `INXY___users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '1@1', '2020-09-29 21:00:00', '$2y$10$BuFNdj6U.yf7zFXNLRmv7eg2fwjbUQbVD4TFwvefZEt/xN1yi6FE.', 'bxNksOEP9fmuRYCYqT6ZyaF4zbZWswtTFuv9VN1cBhtgc2ZFCIcCMfBNg0Tu', '2020-09-05 21:00:00', '2020-09-05 21:00:00');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `INXY___failed_jobs`
--
ALTER TABLE `INXY___failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `INXY___migrations`
--
ALTER TABLE `INXY___migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `INXY___password_resets`
--
ALTER TABLE `INXY___password_resets`
  ADD KEY `inxy___password_resets_email_index` (`email`);

--
-- Индексы таблицы `INXY___servers`
--
ALTER TABLE `INXY___servers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inxy___servers_source_id_foreign` (`source_id`);

--
-- Индексы таблицы `INXY___sources`
--
ALTER TABLE `INXY___sources`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `inxy___sources_name_unique` (`name`);

--
-- Индексы таблицы `INXY___users`
--
ALTER TABLE `INXY___users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `inxy___users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `INXY___failed_jobs`
--
ALTER TABLE `INXY___failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `INXY___migrations`
--
ALTER TABLE `INXY___migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `INXY___servers`
--
ALTER TABLE `INXY___servers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3100;

--
-- AUTO_INCREMENT для таблицы `INXY___sources`
--
ALTER TABLE `INXY___sources`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `INXY___users`
--
ALTER TABLE `INXY___users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `INXY___servers`
--
ALTER TABLE `INXY___servers`
  ADD CONSTRAINT `inxy___servers_source_id_foreign` FOREIGN KEY (`source_id`) REFERENCES `INXY___sources` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
