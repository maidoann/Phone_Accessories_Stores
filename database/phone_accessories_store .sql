-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 29, 2024 lúc 04:03 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `phone_accessories_store`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Samsung', '2024-01-30 07:54:41', '2024-01-30 07:54:41'),
(3, 'Xiaomi', '2024-01-30 12:15:16', '2024-01-30 12:15:16'),
(4, 'Oppo', '2024-01-30 12:15:16', '2024-01-30 12:15:16'),
(5, 'Apple', '2024-01-30 12:18:11', '2024-01-30 12:18:11'),
(6, 'Anker', '2024-03-05 02:10:41', '2024-03-05 02:10:41'),
(7, 'Ugreen', '2024-03-08 18:19:28', '2024-03-08 18:19:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 5, '2024-03-04 18:36:55', '2024-03-04 18:36:55'),
(3, 6, '2024-03-07 07:26:17', '2024-03-07 07:26:17'),
(4, 8, '2024-03-15 21:50:07', '2024-03-15 21:50:07'),
(5, 9, '2024-03-17 20:29:24', '2024-03-17 20:29:24'),
(6, 13, '2024-03-18 05:22:44', '2024-03-18 05:22:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart_items`
--

CREATE TABLE `cart_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cart_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cart_items`
--

INSERT INTO `cart_items` (`id`, `cart_id`, `product_id`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(63, 4, 26, 1, 225000.00, '2024-03-15 21:50:07', '2024-03-15 21:50:07'),
(64, 2, 9, 1, 890000.00, '2024-03-16 19:47:32', '2024-03-16 19:47:32'),
(65, 2, 10, 1, 150000.00, '2024-03-16 19:48:13', '2024-03-16 19:48:13'),
(66, 2, 19, 1, 1190000.00, '2024-03-17 07:11:50', '2024-03-17 07:11:50'),
(73, 5, 25, 1, 350000.00, '2024-03-17 20:42:25', '2024-03-17 20:42:25'),
(74, 5, 27, 1, 350000.00, '2024-03-17 20:42:31', '2024-03-17 20:42:31'),
(75, 5, 28, 1, 200000.00, '2024-03-17 20:42:36', '2024-03-17 20:42:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `discount_codes`
--

CREATE TABLE `discount_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `favorites`
--

CREATE TABLE `favorites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `favorites`
--

INSERT INTO `favorites` (`id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 7, '2024-03-08 18:03:00', '2024-03-08 18:03:00'),
(2, 5, '2024-03-15 21:15:35', '2024-03-15 21:15:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `favorite_details`
--

CREATE TABLE `favorite_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `favorite_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `favorite_details`
--

INSERT INTO `favorite_details` (`id`, `favorite_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 1, 28, '2024-03-08 18:03:07', '2024-03-08 18:03:07'),
(9, 2, 9, '2024-03-21 08:39:49', '2024-03-21 08:39:49'),
(10, 2, 7, '2024-03-21 08:40:04', '2024-03-21 08:40:04'),
(11, 2, 18, '2024-03-21 08:51:27', '2024-03-21 08:51:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2024_01_28_134416_create_product_categories_table', 1),
(7, '2024_01_28_140200_create_brands_table', 1),
(8, '2024_01_28_150623_create_products_table', 1),
(9, '2024_01_28_150629_create_product_details_table', 1),
(10, '2024_01_28_150638_create_product_images_table', 1),
(11, '2024_01_28_150644_create_product_comments_table', 1),
(12, '2024_01_28_154015_create_discount_codes_table', 1),
(13, '2024_01_28_154853_create_shipping_units_table', 1),
(14, '2024_01_28_154959_create_orders_table', 1),
(15, '2024_01_28_155032_create_order_details_table', 1),
(17, '2024_01_30_024627_create_product_favorites_table', 1),
(18, '2024_02_24_125309_create_carts_table', 2),
(19, '2024_02_26_164324_create_cart_items_table', 2),
(20, '2024_03_07_100556_create_favorites_table', 3),
(21, '2024_03_07_100605_create_favorite_details_table', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `discount_code_id` bigint(20) UNSIGNED DEFAULT NULL,
  `shipping_unit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `email`, `phone_number`, `address`, `total_price`, `discount_code_id`, `shipping_unit_id`, `created_at`, `updated_at`) VALUES
(7, 5, 'Mai Quốc Đoàn', '2151173764@e.tlu.edu.vn', '0383382592', 'VINH', 2560000.00, NULL, NULL, '2024-03-06 01:48:39', '2024-03-06 01:48:39'),
(8, 5, 'Lê Thị Huế', 'hue@gmail.com', '0972780000', 'Nghệ An', 1869000.00, NULL, NULL, '2024-03-07 07:24:17', '2024-03-07 07:24:17'),
(9, 6, 'Mai Quốc Đoàn', '2151173764@e.tlu.edu.vn', '0383382592', 'VINH', 479000.00, NULL, NULL, '2024-03-07 07:26:31', '2024-03-07 07:26:31'),
(10, 5, 'Mai Quốc Đoàn', '2151173764@e.tlu.edu.vn', '0383382592', 'VINH', 2015000.00, NULL, NULL, '2024-03-08 17:52:09', '2024-03-08 17:52:09'),
(11, 5, 'Phan Văn Hưng', 'hung4f13@gmail.com', '0357048791', 'Học viện cảnh sát , cổ nhuế 2 , bắc từ liêm , hà nội', 11610000.00, NULL, NULL, '2024-03-08 17:55:02', '2024-03-08 17:55:02'),
(12, 5, 'Đậu văn quý', 'maimai@gmail.com', '0357048791', 'Học viện cảnh sát , cổ nhuế 2 , bắc từ liêm , hà nội', 1420000.00, NULL, NULL, '2024-03-08 17:56:34', '2024-03-08 17:56:34'),
(13, 9, 'Phạm Trung', 'trung@gmail.com', '0975548356', 'Đô Lương Nghệ An', 2800000.00, NULL, NULL, '2024-03-17 20:30:35', '2024-03-17 20:30:35'),
(14, 9, 'Nguyễn Tuấn Hiệp', 'hiephang@gmail.con', '0342245876', 'Vinh , Nghệ An', 2260000.00, NULL, NULL, '2024-03-17 20:39:45', '2024-03-17 20:39:45'),
(15, 13, 'Minh Nguyệt', 'huelee2512@gmail.com', '0971788742', 'Số nhà 33, ngách 595/7, ngõ 595, Lĩnh Nam, Hoàng Mai, Hà Nội', 820000.00, NULL, NULL, '2024-03-18 05:23:00', '2024-03-18 05:23:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `color` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `quantity`, `price`, `color`, `created_at`, `updated_at`) VALUES
(13, 7, 7, 1, 550000.00, 'Trắng', '2024-03-06 01:48:39', '2024-03-06 01:48:39'),
(14, 7, 21, 1, 790000.00, 'Đen', '2024-03-06 01:48:39', '2024-03-06 01:48:39'),
(15, 7, 19, 1, 1190000.00, 'Đen', '2024-03-06 01:48:39', '2024-03-06 01:48:39'),
(16, 8, 11, 1, 449000.00, 'Trắng', '2024-03-07 07:24:17', '2024-03-07 07:24:17'),
(17, 8, 14, 1, 1390000.00, 'Xanh', '2024-03-07 07:24:17', '2024-03-07 07:24:17'),
(18, 9, 11, 1, 449000.00, 'Trắng', '2024-03-07 07:26:31', '2024-03-07 07:26:31'),
(19, 10, 8, 1, 795000.00, 'Trong suốt', '2024-03-08 17:52:09', '2024-03-08 17:52:09'),
(20, 10, 17, 1, 1190000.00, 'Đen', '2024-03-08 17:52:09', '2024-03-08 17:52:09'),
(21, 11, 12, 2, 5790000.00, 'Trắng', '2024-03-08 17:55:02', '2024-03-08 17:55:02'),
(22, 12, 14, 1, 1390000.00, 'Xanh', '2024-03-08 17:56:34', '2024-03-08 17:56:34'),
(23, 13, 9, 2, 890000.00, 'Vàng kim', '2024-03-17 20:30:35', '2024-03-17 20:30:35'),
(24, 13, 18, 1, 990000.00, 'Đen', '2024-03-17 20:30:35', '2024-03-17 20:30:35'),
(25, 14, 13, 1, 1290000.00, 'Trắng', '2024-03-17 20:39:45', '2024-03-17 20:39:45'),
(26, 14, 22, 1, 300000.00, 'Đen', '2024-03-17 20:39:45', '2024-03-17 20:39:45'),
(27, 14, 23, 1, 490000.00, 'Trắng', '2024-03-17 20:39:45', '2024-03-17 20:39:45'),
(28, 14, 10, 1, 150000.00, 'Trắng', '2024-03-17 20:39:45', '2024-03-17 20:39:45'),
(29, 15, 21, 1, 790000.00, 'Đen', '2024-03-18 05:23:00', '2024-03-18 05:23:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
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
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `product_category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `details` text DEFAULT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `brand_id`, `product_category_id`, `name`, `description`, `details`, `quantity`, `created_at`, `updated_at`) VALUES
(7, 5, 3, 'Sạc nhanh 20W Apple MHJE3ZA | Chính hãng Apple Việt Nam', 'Sạc nhanh Apple iPhone 20W Type-C PD MHJE3ZA chính hãng tiết kiệm tối đa thời gian sạc điện thoại\r\nNhanh chóng, tiết kiệm tối đa thời gian là những gì mà người dùng iPhone mong đợi ở chiếc sạc pin của mình. Để có thể làm được điều đó thì việc sử dụng củ sạc nhanh Apple iPhone 20W Type-C PD MHJE3ZA chính hãng là điều cần thiết mà bạn không nên bỏ qua.', 'Sạc nhanh Apple iPhone 20W Type-C PD MHJE3ZA chính hãng tiết kiệm tối đa thời gian sạc điện thoại\r\nNhanh chóng, tiết kiệm tối đa thời gian là những gì mà người dùng iPhone mong đợi ở chiếc sạc pin của mình. Để có thể làm được điều đó thì việc sử dụng củ sạc nhanh Apple iPhone 20W Type-C PD MHJE3ZA chính hãng là điều cần thiết mà bạn không nên bỏ qua.', 79, '2024-03-04 18:32:55', '2024-03-04 18:32:55'),
(8, 5, 1, 'Ốp lưng iPhone 14 Pro Apple Silicone Case hỗ trợ sạc Magsafe Clear', 'Ốp lưng iPhone 14 Pro Apple Silicone Case With Magsafe Clear - Bảo vệ tối ưu\r\nỐp lưng iPhone 14 Pro Apple Silicone Case With Magsafe Clear không chỉ giúp chiếc smartphone của bạn được bảo vệ an toàn, cũng như giữ được vẻ đẹp nguyên gốc của thiết bị. Dòng ốp lưng iPhone 14 Pro chính hãng do Apple sản xuất, do đó sản phẩm chắc chắn sẽ là sự lựa chọn phù hợp nhất dành cho thiết bị của bạn', 'Ốp lưng iPhone 14 Pro Apple Silicone Case With Magsafe Clear - Bảo vệ tối ưu\r\nỐp lưng iPhone 14 Pro Apple Silicone Case With Magsafe Clear không chỉ giúp chiếc smartphone của bạn được bảo vệ an toàn, cũng như giữ được vẻ đẹp nguyên gốc của thiết bị. Dòng ốp lưng iPhone 14 Pro chính hãng do Apple sản xuất, do đó sản phẩm chắc chắn sẽ là sự lựa chọn phù hợp nhất dành cho thiết bị của bạn', 49, '2024-03-04 18:41:11', '2024-03-04 18:41:11'),
(9, 5, 1, 'Ốp lưng iPhone 14 Pro UAG Pathfinde', 'Ốp lưng iPhone 14 Pro UAG Pathfinder - Giảm lực tác động hiệu quả\r\nỐp lưng iPhone 14 Pro UAG Pathfinder được cấu tạo như một chiếc lá chắn thép, bởi thiết kế hình dạng khối vuông vức, thể hiện sự an toàn, bền bỉ. Nếu bạn quan tâm tới sản phẩm ốp lưng iPhone 14 Pro này, thì hãy tham khảo phần nội dung phía bên dưới đây nhé.', 'Ốp lưng iPhone 14 Pro UAG Pathfinder - Giảm lực tác động hiệu quả\r\nỐp lưng iPhone 14 Pro UAG Pathfinder được cấu tạo như một chiếc lá chắn thép, bởi thiết kế hình dạng khối vuông vức, thể hiện sự an toàn, bền bỉ. Nếu bạn quan tâm tới sản phẩm ốp lưng iPhone 14 Pro này, thì hãy tham khảo phần nội dung phía bên dưới đây nhé.', 19, '2024-03-04 18:42:30', '2024-03-04 18:42:30'),
(10, 3, 3, 'Cáp Xiaomi USB-A to Type-C 1M', 'Cáp Xiaomi Mi USB-C 1m - Bền bỉ, sạc nhanh tối đa 100W\r\nMuốn sở hữu một chiếc cáp sạc vừa nhanh vừa thuận lợi trong việc truyền tải dữ liệu thì cáp Xiaomi Mi USB-C 1m là một sản phẩm mà người dùng không nên bỏ lỡ. Hãy cùng CellphoneS cùng tìm hiểu rõ hơn về thiết kế cũng như các chức năng của cáp sạc này nhé!', 'Cáp Xiaomi Mi USB-C 1m - Bền bỉ, sạc nhanh tối đa 100W\r\nMuốn sở hữu một chiếc cáp sạc vừa nhanh vừa thuận lợi trong việc truyền tải dữ liệu thì cáp Xiaomi Mi USB-C 1m là một sản phẩm mà người dùng không nên bỏ lỡ. Hãy cùng CellphoneS cùng tìm hiểu rõ hơn về thiết kế cũng như các chức năng của cáp sạc này nhé!', 99, '2024-03-04 18:44:10', '2024-03-04 18:44:10'),
(11, 5, 6, 'Kính cường lực chống nhìn trộm iPhone 14/13/13 Pro Zeelot Solidsleek Privacy', 'Kính cường lực chống va đập nhìn trộm iPhone 14/13/13 Pro Zeelot Solidsleek Privacy - Chống nhìn trộm tối ưu\r\nKính cường lực chống va đập nhìn trộm iPhone 14/13/13 Pro Zeelot Solidsleek Privacy có khả năng 2 trong 1, vừa giúp bảo vệ màn hình khỏi trầy xước, vừa bảo vệ thông tin của người dùng an toàn. Khi điện thoại được trang bị tấm kính cường lực iPhone 14 Series cao cấp này bạn sẽ an tâm hơn trong quá trình sử dụng.', 'Kính cường lực chống va đập nhìn trộm iPhone 14/13/13 Pro Zeelot Solidsleek Privacy - Chống nhìn trộm tối ưu\r\nKính cường lực chống va đập nhìn trộm iPhone 14/13/13 Pro Zeelot Solidsleek Privacy có khả năng 2 trong 1, vừa giúp bảo vệ màn hình khỏi trầy xước, vừa bảo vệ thông tin của người dùng an toàn. Khi điện thoại được trang bị tấm kính cường lực iPhone 14 Series cao cấp này bạn sẽ an tâm hơn trong quá trình sử dụng.', 55, '2024-03-04 18:46:00', '2024-03-04 18:46:00'),
(12, 5, 2, 'Tai nghe Bluetooth Apple AirPods Pro 2 2023 USB-C | Chính hãng Apple Việt Nam', 'Tích hợp chip Apple H2 mang đến chất âm sống động cùng khả năng tái tạo âm thanh 3 chiều vượt trội\r\nCông nghệ Bluetooth 5.3 kết nối ổn định, mượt mà, tiêu thụ năng lượng thấp, giúp tiết kiệm pin đáng kể\r\nChống ồn chủ động loại bỏ tiếng ồn hiệu quả gấp đôi thế hệ trước, giúp nâng cao trải nghiệm nghe nhạc\r\nChống nước chuẩn IP54 trên tai nghe và hộp sạc, giúp bạn thỏa sức tập luyện không cần lo thấm mồ hôi\r\nAirpods Pro 2 Type-C với công nghệ khử tiếng ồn chủ động mang lại khả năng khử ồn lên gấp 2 lần mang lại trải nghiệm nghe - gọi và trải nghiệm âm nhạc ấn tượng. Cùng với đó, điện thoại còn được trang bị công nghệ âm thanh không gian giúp trải nghiệm âm nhạc thêm phần sống động. Airpods Pro 2 Type-C với cổng sạc Type C tiện lợi cùng viên pin mang lại thời gian trải nghiệm lên đến 6 giờ tiện lợi.', 'Tích hợp chip Apple H2 mang đến chất âm sống động cùng khả năng tái tạo âm thanh 3 chiều vượt trội\r\nCông nghệ Bluetooth 5.3 kết nối ổn định, mượt mà, tiêu thụ năng lượng thấp, giúp tiết kiệm pin đáng kể\r\nChống ồn chủ động loại bỏ tiếng ồn hiệu quả gấp đôi thế hệ trước, giúp nâng cao trải nghiệm nghe nhạc\r\nChống nước chuẩn IP54 trên tai nghe và hộp sạc, giúp bạn thỏa sức tập luyện không cần lo thấm mồ hôi\r\nAirpods Pro 2 Type-C với công nghệ khử tiếng ồn chủ động mang lại khả năng khử ồn lên gấp 2 lần mang lại trải nghiệm nghe - gọi và trải nghiệm âm nhạc ấn tượng. Cùng với đó, điện thoại còn được trang bị công nghệ âm thanh không gian giúp trải nghiệm âm nhạc thêm phần sống động. Airpods Pro 2 Type-C với cổng sạc Type C tiện lợi cùng viên pin mang lại thời gian trải nghiệm lên đến 6 giờ tiện lợi.', 45, '2024-03-04 18:59:51', '2024-03-04 18:59:51'),
(13, 2, 2, 'Tai nghe Bluetooth True Wireless Samsung Galaxy Buds FE', 'Samsung Galaxy Buds FE tích hợp chức năng chống ồn chủ động (ANC) đi kèm loa một chiều giúp tạo không gian yên tĩnh và cho chất lượng âm thanh tuyệt vời. Thiết kế in-ear dạng vây cá mập của tai nghe đảm bảo ôm sát và thoải mái. Không chỉ vậy, viên pin dung lượng lớn cho cả tai nghe và hộp sạc đảm bảo nguồn năng lượng cả ngày dài.', 'Samsung Galaxy Buds FE tích hợp chức năng chống ồn chủ động (ANC) đi kèm loa một chiều giúp tạo không gian yên tĩnh và cho chất lượng âm thanh tuyệt vời. Thiết kế in-ear dạng vây cá mập của tai nghe đảm bảo ôm sát và thoải mái. Không chỉ vậy, viên pin dung lượng lớn cho cả tai nghe và hộp sạc đảm bảo nguồn năng lượng cả ngày dài.', 39, '2024-03-04 19:02:33', '2024-03-04 19:02:33'),
(14, 4, 2, 'Tai nghe Bluetooth True Wireless OPPO Enco Air 2 Pro', 'Tai nghe OPPO Enco Air 2 Pro - Thiết kế sành điệu, âm thanh cực “chất”\r\nTai nghe Bluetooth OPPO Enco Air 2 Pro hỗ trợ kết nối Bluetooth 5.2, mang lại khả năng đường truyền âm thanh rất ổn định, nhanh chóng. Nếu bạn quan tâm đến tai nghe Bluetooth này, thì hãy tham khảo phần mô tả phía bên dưới nhé.', 'Tai nghe OPPO Enco Air 2 Pro - Thiết kế sành điệu, âm thanh cực “chất”\r\nTai nghe Bluetooth OPPO Enco Air 2 Pro hỗ trợ kết nối Bluetooth 5.2, mang lại khả năng đường truyền âm thanh rất ổn định, nhanh chóng. Nếu bạn quan tâm đến tai nghe Bluetooth này, thì hãy tham khảo phần mô tả phía bên dưới nhé.', 29, '2024-03-04 19:08:22', '2024-03-04 19:08:22'),
(15, 3, 7, 'Pin sạc dự phòng Xiaomi Redmi 20000mAh sạc nhanh 18W', 'Pin dự phòng Xiaomi Redmi 20000mAh – Phụ kiện pin sạc an toàn, hiệu suất cao\r\nXiaomi là thương hiệu vốn nổi tiếng với nhiều người tiêu dùng không chỉ bởi những chiếc điện thoại chất lượng, cấu hình cao giá rẻ mà còn những phụ kiện pin dự phòng cũng được nhiều người tin dùng. Dung lượng 20000mAh, cùng với khả năng sạc nhanh 18W thì pin sạc dự phòng Xiaomi Redmi 20000mAh sạc nhanh 18W là một lựa chọn hợp lý và hấp dẫn.', 'Pin dự phòng Xiaomi Redmi 20000mAh – Phụ kiện pin sạc an toàn, hiệu suất cao\r\nXiaomi là thương hiệu vốn nổi tiếng với nhiều người tiêu dùng không chỉ bởi những chiếc điện thoại chất lượng, cấu hình cao giá rẻ mà còn những phụ kiện pin dự phòng cũng được nhiều người tin dùng. Dung lượng 20000mAh, cùng với khả năng sạc nhanh 18W thì pin sạc dự phòng Xiaomi Redmi 20000mAh sạc nhanh 18W là một lựa chọn hợp lý và hấp dẫn.', 39, '2024-03-04 19:12:16', '2024-03-04 19:12:16'),
(16, 6, 7, 'Pin sạc dự phòng Anker 633 Magnetic A1641 10.000mAh 20W', 'Pin Dự Phòng Anker 633 Magnetic (Mago) 10.000MAH - A1641 luôn là cái tên nằm trong top những chiếc pin sạc không dây được yêu thích bậc nhất trên thị trường. Sản phẩm pin dự phòng Anker mang đến thiết kế nhỏ gọn cùng khả năng sạc có thể làm hài lòng nhiều khách hàng.\r\n\r\nThiết kế nhỏ gọn, tiện lợi cùng chân đế\r\nPin dự phòng 633 Magnetic (Mago) có có trọng lượng nhẹ, chỉ kích thước với 107mm x 66.5 mm x 18.15 mm. Đây là thiết kế cực kỳ nhỏ gọn, vừa tay và có thể dễ dàng di chuyển, đem đi nhiều nơi sử dụng.', 'Pin Dự Phòng Anker 633 Magnetic (Mago) 10.000MAH - A1641 luôn là cái tên nằm trong top những chiếc pin sạc không dây được yêu thích bậc nhất trên thị trường. Sản phẩm pin dự phòng Anker mang đến thiết kế nhỏ gọn cùng khả năng sạc có thể làm hài lòng nhiều khách hàng.\r\n\r\nThiết kế nhỏ gọn, tiện lợi cùng chân đế\r\nPin dự phòng 633 Magnetic (Mago) có có trọng lượng nhẹ, chỉ kích thước với 107mm x 66.5 mm x 18.15 mm. Đây là thiết kế cực kỳ nhỏ gọn, vừa tay và có thể dễ dàng di chuyển, đem đi nhiều nơi sử dụng.', 25, '2024-03-04 19:13:32', '2024-03-04 19:13:32'),
(17, 2, 7, 'Pin sạc dự phòng Samsung EB P5300x 20000mAh 25W', 'Pin sạc dự phòng Samsung EB P5300x 20000mAh 25W – Sạc nhanh dung lượng lớn\r\nNgoài những chiếc tai nghe thì pin sạc dự phòng chắc chắn là một trong những phụ kiện không thể nào thiếu được đối với người dùng công nghệ. Hãy chọn mua ngay pin sạc dự phòng Samsung EB P5300x 20000mAh 25W để sử dụng, hứa hẹn sẽ là phụ trợ đắc lực cho bạn.', 'Pin sạc dự phòng Samsung EB P5300x 20000mAh 25W – Sạc nhanh dung lượng lớn\r\nNgoài những chiếc tai nghe thì pin sạc dự phòng chắc chắn là một trong những phụ kiện không thể nào thiếu được đối với người dùng công nghệ. Hãy chọn mua ngay pin sạc dự phòng Samsung EB P5300x 20000mAh 25W để sử dụng, hứa hẹn sẽ là phụ trợ đắc lực cho bạn.', 32, '2024-03-04 19:15:29', '2024-03-04 19:15:29'),
(18, 2, 1, 'Ốp lưng kèm dây đeo Samsung Galaxy Z Fold5 chính hãng', 'Ốp lưng kèm dây đeo Samsung Galaxy Z Fold5 - Kiểu dáng sang trọng, tuỳ chỉnh linh hoạt\r\nỐp lưng kèm dây đeo Samsung Galaxy Z Fold5 hiện đang là sản phẩm phụ kiện được săn đón nhất của dòng Samsung gập Z Fold5. Không chỉ giúp bảo vệ máy khỏi những va đập, trầy xước không đáng có mà thế hệ ốp lưng Samsung Galaxy Z Fold5 đặc biệt này còn có thể dễ dàng chuyển đổi từ tay cầm sang giá đỡ, mang tới nhiều sự tiện lợi và trải nghiệm thú vị cho người dùng.', 'Ốp lưng kèm dây đeo Samsung Galaxy Z Fold5 - Kiểu dáng sang trọng, tuỳ chỉnh linh hoạt\r\nỐp lưng kèm dây đeo Samsung Galaxy Z Fold5 hiện đang là sản phẩm phụ kiện được săn đón nhất của dòng Samsung gập Z Fold5. Không chỉ giúp bảo vệ máy khỏi những va đập, trầy xước không đáng có mà thế hệ ốp lưng Samsung Galaxy Z Fold5 đặc biệt này còn có thể dễ dàng chuyển đổi từ tay cầm sang giá đỡ, mang tới nhiều sự tiện lợi và trải nghiệm thú vị cho người dùng.', 21, '2024-03-04 19:17:13', '2024-03-04 19:17:13'),
(19, 2, 1, 'Ốp lưng Samsung Galaxy Z Fold5 UAG chống sốc Civilian', 'Ốp lưng Samsung Galaxy Z Fold 5 UAG chống sốc Civilian - Kiểu dáng sang trọng, bảo vệ tối ưu\r\nĐược kết hợp độc đáo giữa tính năng vượt trội và thẩm mỹ tinh tế, ốp lưng Samsung Galaxy Z Fold 5 UAG chống sốc Civilian đang là một trong những lựa chọn bảo vệ điện thoại tối ưu được nhiều người hướng tới. Với chất liệu chống sốc cao cấp và được thiết kế đúng với tỷ lệ của Z Fold5, thế hệ ốp lưng Samsung Z Fold5 này cho phép bạn tự tin sử dụng điện thoại mà không cần lo ngại về những va chạm không đáng có nữa rồi nhé!', 'Ốp lưng Samsung Galaxy Z Fold 5 UAG chống sốc Civilian - Kiểu dáng sang trọng, bảo vệ tối ưu\r\nĐược kết hợp độc đáo giữa tính năng vượt trội và thẩm mỹ tinh tế, ốp lưng Samsung Galaxy Z Fold 5 UAG chống sốc Civilian đang là một trong những lựa chọn bảo vệ điện thoại tối ưu được nhiều người hướng tới. Với chất liệu chống sốc cao cấp và được thiết kế đúng với tỷ lệ của Z Fold5, thế hệ ốp lưng Samsung Z Fold5 này cho phép bạn tự tin sử dụng điện thoại mà không cần lo ngại về những va chạm không đáng có nữa rồi nhé!', 16, '2024-03-04 19:19:02', '2024-03-04 19:19:02'),
(21, 5, 1, 'Ốp lưng iPhone 15 Pro Max UAG Civilian hỗ trợ sạc Magsafe', 'Ốp lưng iPhone 15 Pro Max UAG Civilian with Magsafe cung cấp khả năng chống sốc bền bỉ dựa theo tiêu chuẩn kiểm định hàng đầu với tính chống trầy xước ưu trội trong thời gian sử dụng. Bên cạnh đó, sự hỗ trợ của vật liệu chống sốc còn giúp nâng cao hiệu quả phân tán lực tốt và bảo vệ bền bỉ những chi tiết trên thân máy một cách tối ưu. Ngoài ra, phụ kiện ốp lưng iPhone 15 Series còn cho phép tương thích Magsafe nhanh chóng mà không cần tháo ốp lưng.\r\n\r\nỐp lưng iPhone 15 Pro Max UAG Civilian with Magsafe – Bảo vệ chuẩn quân đội\r\nỐp lưng iPhone 15 Pro Max UAG Civilian with Magsafe là phụ kiện cao cấp để bảo vệ toàn diện cho mặt lưng của chiếc smartphone “xịn sò” của bạn. Sản phẩm cam kết mang đến hiệu quả chống va đập tuyệt đối, giúp kéo dài tuổi thọ cho máy trong quá trình sử dụng.', 'Ốp lưng iPhone 15 Pro Max UAG Civilian with Magsafe cung cấp khả năng chống sốc bền bỉ dựa theo tiêu chuẩn kiểm định hàng đầu với tính chống trầy xước ưu trội trong thời gian sử dụng. Bên cạnh đó, sự hỗ trợ của vật liệu chống sốc còn giúp nâng cao hiệu quả phân tán lực tốt và bảo vệ bền bỉ những chi tiết trên thân máy một cách tối ưu. Ngoài ra, phụ kiện ốp lưng iPhone 15 Series còn cho phép tương thích Magsafe nhanh chóng mà không cần tháo ốp lưng.\r\n\r\nỐp lưng iPhone 15 Pro Max UAG Civilian with Magsafe – Bảo vệ chuẩn quân đội\r\nỐp lưng iPhone 15 Pro Max UAG Civilian with Magsafe là phụ kiện cao cấp để bảo vệ toàn diện cho mặt lưng của chiếc smartphone “xịn sò” của bạn. Sản phẩm cam kết mang đến hiệu quả chống va đập tuyệt đối, giúp kéo dài tuổi thọ cho máy trong quá trình sử dụng.', 0, '2024-03-04 19:20:23', '2024-03-19 05:18:58'),
(22, 6, 3, 'Củ sạc Anker Charger Gen 2 PD 30W A2639', 'Kích thước nhỏ gọn, tiện dụng khi di chuyển ở mọi nơi\r\nCông suất sạc 30W đảm bảo thời gian sạc nhanh chóng\r\nChip thông minh kiểm soát chống rò rỉ điện, đoản mạch\r\nCổng Type-C tương thích với hầu hết các dòng sản phẩm\r\nCủ sạc nhanh Anker Charger Gen 2 PD 30W A2639 - An toàn, tiết kiệm thời gian\r\nSử dụng củ sạc nhanh Anker Charger Gen 2 PD 30W A2639 cho tất cả các dòng điện thoại, iPad trên thị trường hiện nay. Nếu đang tìm kiếm củ sạc chất lượng, người dùng có thể tham khảo đến sản phẩm tiện lợi như củ sạc Anker.\r\n\r\nTốc độ sạc cực nhanh, kích thước nhỏ gọn', 'Kích thước nhỏ gọn, tiện dụng khi di chuyển ở mọi nơi\r\nCông suất sạc 30W đảm bảo thời gian sạc nhanh chóng\r\nChip thông minh kiểm soát chống rò rỉ điện, đoản mạch\r\nCổng Type-C tương thích với hầu hết các dòng sản phẩm\r\nCủ sạc nhanh Anker Charger Gen 2 PD 30W A2639 - An toàn, tiết kiệm thời gian\r\nSử dụng củ sạc nhanh Anker Charger Gen 2 PD 30W A2639 cho tất cả các dòng điện thoại, iPad trên thị trường hiện nay. Nếu đang tìm kiếm củ sạc chất lượng, người dùng có thể tham khảo đến sản phẩm tiện lợi như củ sạc Anker.\r\n\r\nTốc độ sạc cực nhanh, kích thước nhỏ gọn', 19, '2024-03-04 19:24:43', '2024-03-04 19:24:43'),
(23, 6, 3, 'Củ sạc Anker Powerport III Nano 20W A2633', 'Sạc Anker PowerPort III Nano PD 20W A2633 - Công nghệ sạc nhanh với công xuất 20W mạnh mẽ\r\nBạn là người thường xuyên sử dụng các thiết bị điện tử cả ngày dài. Vấn đề mà bạn đang gặp phải là tình trạng hay hết pin nhưng khi sạc thời gian rất lâu. Vì vậy hàng sản xuất Anker đã cho ra đời sản phẩm sạc Anker PowerPort III Nano PD 20W A2633 phù hợp nhu cầu của bạn.', 'Sạc Anker PowerPort III Nano PD 20W A2633 - Công nghệ sạc nhanh với công xuất 20W mạnh mẽ\r\nBạn là người thường xuyên sử dụng các thiết bị điện tử cả ngày dài. Vấn đề mà bạn đang gặp phải là tình trạng hay hết pin nhưng khi sạc thời gian rất lâu. Vì vậy hàng sản xuất Anker đã cho ra đời sản phẩm sạc Anker PowerPort III Nano PD 20W A2633 phù hợp nhu cầu của bạn.', 19, '2024-03-04 19:25:30', '2024-03-04 19:25:30'),
(24, 3, 3, 'Củ sạc Xiaomi 20W cổng USB-C', 'Sạc Xiaomi USB-C 20W – Phụ kiện sạc nhanh 20W tiện lợi\r\nHiện nay đa số các thiết bị smartphone đều được trang bị công nghệ sạc nhanh rút rút gọn tối đa thời gian sạc. Do đó những phụ kiện cáp - củ sạc nhanh ngày càng được quan tâm. Nắm bắt được điều đó, Xiaomi mới đây đã cho ra mắt củ sạc Xiaomi USB-C hỗ trợ sạc nhanh 20W tiện lợi.', 'Sạc Xiaomi USB-C 20W – Phụ kiện sạc nhanh 20W tiện lợi\r\nHiện nay đa số các thiết bị smartphone đều được trang bị công nghệ sạc nhanh rút rút gọn tối đa thời gian sạc. Do đó những phụ kiện cáp - củ sạc nhanh ngày càng được quan tâm. Nắm bắt được điều đó, Xiaomi mới đây đã cho ra mắt củ sạc Xiaomi USB-C hỗ trợ sạc nhanh 20W tiện lợi.', 16, '2024-03-04 19:27:09', '2024-03-04 19:27:09'),
(25, 5, 6, 'Kính cường lực chống va đập iPhone 14 Plus/13 Pro Max Mipow Premium', 'Kính cường lực chống va đập iPhone 14 Plus/13 Pro Max Mipow Premium - Kính siêu bền, siêu chất lượng\r\nDán cường lực chống va đập Mipow Premium full cao cấp cho iPhone 14 Plus/ 13 Pro Max là sản phẩm chất lượng giúp bảo vệ dế yêu của bạn ăn toàn và trọn vẹn dưới mọi va chạm. dưới đây là thông tin chi tiết về mẫu dán màn hình iPhone 14 Plus độc đáo, chất lượng và vô cùng cao cấp này.', 'Kính cường lực chống va đập iPhone 14 Plus/13 Pro Max Mipow Premium - Kính siêu bền, siêu chất lượng\r\nDán cường lực chống va đập Mipow Premium full cao cấp cho iPhone 14 Plus/ 13 Pro Max là sản phẩm chất lượng giúp bảo vệ dế yêu của bạn ăn toàn và trọn vẹn dưới mọi va chạm. dưới đây là thông tin chi tiết về mẫu dán màn hình iPhone 14 Plus độc đáo, chất lượng và vô cùng cao cấp này.', 15, '2024-03-04 19:32:39', '2024-03-04 19:32:39'),
(26, 5, 6, 'Kinh cường lực iPhone 12 / 12 Pro Kingkong', 'Kính cường lực iPhone 12/12 Pro KingKong – Bảo vệ màn hình iPhone 12/12 Pro trước mọi tác động\r\nMiếng dán chống va đập iPhone 12/12 Pro với chất liệu kính cao cấp, cùng độ bền vượt trội là người bạn đồng hành lý tưởng cho chiếc iPhone 12/12 Pro của bạn. Giúp bạn tư tin sử dụng máy hằng ngày mà không lo lắng đến các tác động bên ngoài có thể ảnh hưởng đến màn hình trên iPhone của mình.', 'Kính cường lực iPhone 12/12 Pro KingKong – Bảo vệ màn hình iPhone 12/12 Pro trước mọi tác động\r\nMiếng dán chống va đập iPhone 12/12 Pro với chất liệu kính cao cấp, cùng độ bền vượt trội là người bạn đồng hành lý tưởng cho chiếc iPhone 12/12 Pro của bạn. Giúp bạn tư tin sử dụng máy hằng ngày mà không lo lắng đến các tác động bên ngoài có thể ảnh hưởng đến màn hình trên iPhone của mình.', 16, '2024-03-04 19:34:21', '2024-03-04 19:34:21'),
(27, 2, 6, 'Kính cường lực Samsung Galaxy S23 Ultra Full UV Loca', 'Dán chống va đập Zeelot UV Loca Full cho Galaxy S23 Ultra - Trong suốt, bám dính tốt\r\nMiếng dán Zeelot UV Loca Full cho Galaxy S23 Ultra có độ truyền dẫn cao, khả năng bảo vệ ấn tượng. Đây là phụ kiện vô cùng cần thiết cho loại màn hình cong của smartphone. Hãy xem đoạn mô tả dưới đây để hiểu rõ hơn về khả năng của miếng dán Zeelot này!', 'Dán chống va đập Zeelot UV Loca Full cho Galaxy S23 Ultra - Trong suốt, bám dính tốt\r\nMiếng dán Zeelot UV Loca Full cho Galaxy S23 Ultra có độ truyền dẫn cao, khả năng bảo vệ ấn tượng. Đây là phụ kiện vô cùng cần thiết cho loại màn hình cong của smartphone. Hãy xem đoạn mô tả dưới đây để hiểu rõ hơn về khả năng của miếng dán Zeelot này!', 48, '2024-03-04 19:35:27', '2024-03-04 19:35:27'),
(28, 2, 6, 'Dán chống va đập cho Samsung Galaxy S21 FE Zeelot Full cao cấp', 'Dán chống va đập Zeelot Full cho Samsung Galaxy S21 FE - Lớp skin bền bỉ\r\nSamsung Galaxy S21 FE là chiếc điện thoại flagship sở hữu công nghệ màn hình rất phức tạp, thậm chí là cong nhẹ để tăng trải nghiệm người dùng. Vì thế không ít khó khăn cho nhà cung cấp dán cường lực trong quá trình sản xuất. Dù vậy, mọi thứ đều trở nên đơn giản hóa với dán chống va đập Zeelot Full cho Samsung Galaxy S21 FE.\r\n\r\nĐộ cứng đạt chuẩn, mỏng nhẹ', 'Dán chống va đập Zeelot Full cho Samsung Galaxy S21 FE - Lớp skin bền bỉ\r\nSamsung Galaxy S21 FE là chiếc điện thoại flagship sở hữu công nghệ màn hình rất phức tạp, thậm chí là cong nhẹ để tăng trải nghiệm người dùng. Vì thế không ít khó khăn cho nhà cung cấp dán cường lực trong quá trình sản xuất. Dù vậy, mọi thứ đều trở nên đơn giản hóa với dán chống va đập Zeelot Full cho Samsung Galaxy S21 FE.\r\n\r\nĐộ cứng đạt chuẩn, mỏng nhẹ', 45, '2024-03-04 19:36:56', '2024-03-04 19:36:56'),
(30, 3, 2, 'Tai nghe Bluetooth True Wireless Xiaomi Redmi Buds 5 Pro', 'Tai nghe không dây Xiaomi Redmi Buds 5 Pro sở hữu chất âm Hi-Fi sống động, được tinh chỉnh bởi Xiaomi để mang lại trải nghiệm nghe nhạc tuyệt vời. Đặc biệt, sản phẩm này trang bị 3 micro AI thông minh giúp hạn chế tiếng ồn xung quanh trong quá trình đàm thoại. Với thời lượng pin lên đến 38 giờ, người dùng có thể thoải mái trải nghiệm âm nhạc. Ngoài ra, khả năng kháng nước và kháng bụi chuẩn IP54 giúp thiết bị trở thành lựa chọn lý tưởng cho những người yêu thể thao.', 'Tai nghe không dây Xiaomi Redmi Buds 5 Pro sở hữu chất âm Hi-Fi sống động, được tinh chỉnh bởi Xiaomi để mang lại trải nghiệm nghe nhạc tuyệt vời. Đặc biệt, sản phẩm này trang bị 3 micro AI thông minh giúp hạn chế tiếng ồn xung quanh trong quá trình đàm thoại. Với thời lượng pin lên đến 38 giờ, người dùng có thể thoải mái trải nghiệm âm nhạc. Ngoài ra, khả năng kháng nước và kháng bụi chuẩn IP54 giúp thiết bị trở thành lựa chọn lý tưởng cho những người yêu thể thao.', 0, '2024-03-18 03:01:14', '2024-03-19 05:17:44'),
(32, 3, 2, 'Tai nghe Bluetooth True Wireless Xiaomi Redmi Buds 5 Pro', 'Tai nghe Bluetooth True Wireless Xiaomi Redmi Buds 5 Pro', 'Tai nghe Bluetooth True Wireless Xiaomi Redmi Buds 5 Pro', 29, '2024-03-19 05:51:52', '2024-03-19 05:51:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Ốp lưng', '2024-01-30 07:57:17', '2024-01-30 07:57:17'),
(2, 'Tai nghe', '2024-01-30 07:57:25', '2024-01-30 07:57:25'),
(3, 'Củ sạc, Cáp sạc', '2024-01-30 07:57:42', '2024-01-30 07:57:42'),
(6, 'Cường lực', '2024-03-05 01:28:51', '2024-03-05 01:28:51'),
(7, 'Pin dự phòng', '2024-03-05 02:09:58', '2024-03-05 02:09:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_comments`
--

CREATE TABLE `product_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `messages` text NOT NULL,
  `rating` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_comments`
--

INSERT INTO `product_comments` (`id`, `product_id`, `user_id`, `name`, `messages`, `rating`, `created_at`, `updated_at`) VALUES
(6, 19, 5, 'Mai Quốc Đoàn', 'sp tốt', 5, '2024-03-06 01:50:27', '2024-03-06 01:50:27'),
(7, 11, 5, 'Mai Quốc Đoàn', 'sp tốt', 5, '2024-03-07 07:24:38', '2024-03-07 07:25:16'),
(8, 11, 6, 'Lê Thị Huế', 'sp bình thường', 3, '2024-03-07 07:26:45', '2024-03-07 07:26:45'),
(9, 17, 5, 'Mai Quốc Đoàn', 'sản phẩm tốt', 5, '2024-03-08 17:52:35', '2024-03-08 17:52:35'),
(10, 12, 5, 'Mai Quốc Đoàn', 'Sản phẩm tạm được', 4, '2024-03-08 17:55:51', '2024-03-08 17:55:51'),
(11, 14, 5, 'Mai Quốc Đoàn', 'sản phẩm tốt', 5, '2024-03-08 17:56:55', '2024-03-08 17:56:55'),
(12, 8, 5, 'Mai Quốc Đoàn', '5s', 5, '2024-03-17 07:12:44', '2024-03-17 07:12:44'),
(13, 21, 5, 'Mai Quốc Đoàn', '3s', 3, '2024-03-17 07:13:00', '2024-03-17 07:13:00'),
(14, 7, 5, 'Mai Quốc Đoàn', 'sp dung oon', 5, '2024-03-17 07:13:41', '2024-03-17 07:13:41'),
(15, 9, 9, 'Phạm Trung', 'cịn , ship nhanh', 5, '2024-03-17 20:31:13', '2024-03-17 20:31:13'),
(16, 18, 9, 'Phạm Trung', 'ship nhanh , sp tốt , lâu dài xem như nào', 5, '2024-03-17 20:37:23', '2024-03-17 20:37:23'),
(17, 13, 9, 'Phạm Trung', 'Đã dùng ổn', 4, '2024-03-17 20:40:34', '2024-03-17 20:40:34'),
(18, 23, 9, 'Phạm Trung', 'ship lâu, sp ổn', 4, '2024-03-17 20:41:10', '2024-03-17 20:41:10'),
(19, 22, 9, 'Phạm Trung', 'sạc nhanh như qc', 5, '2024-03-17 20:41:30', '2024-03-17 20:41:30'),
(20, 10, 9, 'Phạm Trung', 'ổn', 4, '2024-03-17 20:41:59', '2024-03-17 20:41:59'),
(21, 21, 13, 'lee hue', 'sp tot', 5, '2024-03-18 05:23:26', '2024-03-18 05:23:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_details`
--

CREATE TABLE `product_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color` varchar(255) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_details`
--

INSERT INTO `product_details` (`id`, `product_id`, `color`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(7, 7, 'Trắng', 79, 550000.00, '2024-03-04 18:32:55', '2024-03-04 18:32:55'),
(8, 8, 'Trong suốt', 49, 795000.00, '2024-03-04 18:41:11', '2024-03-04 18:41:11'),
(9, 9, 'Vàng kim', 19, 890000.00, '2024-03-04 18:42:30', '2024-03-04 18:42:30'),
(10, 10, 'Trắng', 99, 150000.00, '2024-03-04 18:44:10', '2024-03-04 18:44:10'),
(11, 11, 'Trắng', 55, 449000.00, '2024-03-04 18:46:00', '2024-03-04 18:46:00'),
(12, 12, 'Trắng', 45, 5790000.00, '2024-03-04 18:59:51', '2024-03-04 18:59:51'),
(13, 13, 'Trắng', 39, 1290000.00, '2024-03-04 19:02:34', '2024-03-04 19:02:34'),
(14, 14, 'Xanh', 29, 1390000.00, '2024-03-04 19:08:22', '2024-03-04 19:08:22'),
(15, 15, 'Đen', 39, 590000.00, '2024-03-04 19:12:16', '2024-03-04 19:12:16'),
(16, 16, 'Xanh', 25, 1290000.00, '2024-03-04 19:13:32', '2024-03-04 19:13:32'),
(17, 17, 'Đen', 32, 1190000.00, '2024-03-04 19:15:29', '2024-03-04 19:15:29'),
(18, 18, 'Đen', 21, 990000.00, '2024-03-04 19:17:13', '2024-03-04 19:17:13'),
(19, 19, 'Đen', 16, 1190000.00, '2024-03-04 19:19:03', '2024-03-04 19:19:03'),
(22, 22, 'Đen', 19, 300000.00, '2024-03-04 19:24:43', '2024-03-04 19:24:43'),
(23, 23, 'Trắng', 19, 490000.00, '2024-03-04 19:25:30', '2024-03-04 19:25:30'),
(24, 24, 'Trắng', 16, 300000.00, '2024-03-04 19:27:09', '2024-03-04 19:27:09'),
(25, 25, 'Trắng', 15, 350000.00, '2024-03-04 19:32:39', '2024-03-04 19:32:39'),
(26, 26, 'Trắng', 16, 225000.00, '2024-03-04 19:34:22', '2024-03-04 19:34:22'),
(27, 27, 'Trắng', 48, 350000.00, '2024-03-04 19:35:27', '2024-03-04 19:35:27'),
(28, 28, 'Trắng', 45, 200000.00, '2024-03-04 19:36:56', '2024-03-04 19:36:56'),
(32, 32, 'Đen', 29, 1290000.00, '2024-03-19 05:51:52', '2024-03-19 05:51:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_favorites`
--

CREATE TABLE `product_favorites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `path` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `path`, `created_at`, `updated_at`) VALUES
(12, 7, '1709602375.webp', '2024-03-04 18:32:55', '2024-03-04 18:32:55'),
(13, 8, '1709602871.webp', '2024-03-04 18:41:11', '2024-03-04 18:41:11'),
(14, 9, '1709602950.webp', '2024-03-04 18:42:30', '2024-03-04 18:42:30'),
(15, 10, '1709603050.webp', '2024-03-04 18:44:10', '2024-03-04 18:44:10'),
(16, 11, '1709603160.webp', '2024-03-04 18:46:00', '2024-03-04 18:46:00'),
(17, 12, '1709603991.webp', '2024-03-04 18:59:51', '2024-03-04 18:59:51'),
(18, 13, '1709604154.webp', '2024-03-04 19:02:34', '2024-03-04 19:02:34'),
(19, 14, '1709604502.webp', '2024-03-04 19:08:22', '2024-03-04 19:08:22'),
(20, 15, '1709604736.webp', '2024-03-04 19:12:16', '2024-03-04 19:12:16'),
(21, 16, '1709604812.webp', '2024-03-04 19:13:32', '2024-03-04 19:13:32'),
(22, 17, '1709604929.webp', '2024-03-04 19:15:29', '2024-03-04 19:15:29'),
(23, 18, '1709605033.webp', '2024-03-04 19:17:13', '2024-03-04 19:17:13'),
(24, 19, '1709605142.webp', '2024-03-04 19:19:03', '2024-03-04 19:19:03'),
(26, 21, '1709605223.webp', '2024-03-04 19:20:23', '2024-03-04 19:20:23'),
(27, 22, '1709605483.webp', '2024-03-04 19:24:43', '2024-03-04 19:24:43'),
(28, 23, '1709605530.webp', '2024-03-04 19:25:30', '2024-03-04 19:25:30'),
(29, 24, '1709605629.webp', '2024-03-04 19:27:10', '2024-03-04 19:27:10'),
(30, 25, '1709605959.webp', '2024-03-04 19:32:39', '2024-03-04 19:32:39'),
(31, 26, '1709606061.webp', '2024-03-04 19:34:22', '2024-03-04 19:34:22'),
(32, 27, '1709606127.webp', '2024-03-04 19:35:27', '2024-03-04 19:35:27'),
(33, 28, '1709606216.webp', '2024-03-04 19:36:56', '2024-03-04 19:36:56'),
(35, 30, '1710756074_tai-nghe-khong-day-xiaomi-redmi-buds-5-pro_3_.webp', '2024-03-18 03:01:14', '2024-03-18 03:01:14'),
(36, 30, '1710756074_tai-nghe-khong-day-xiaomi-redmi-buds-5-pro-4.webp', '2024-03-18 03:01:14', '2024-03-18 03:01:14'),
(38, 32, '1710852712_tai-nghe-khong-day-xiaomi-redmi-buds-5-pro_3_.webp', '2024-03-19 05:51:52', '2024-03-19 05:51:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shipping_units`
--

CREATE TABLE `shipping_units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `level` tinyint(4) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `address`, `avatar`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Nguyễn Duy Tài', '0985203883tai@gmail.com', NULL, '$2y$10$RCAo4TvA7a90LDCQD6O3wOYeqVQL.8uDEivHbOzi55JOVufQh6hyO', '0985203883', 'Văn Lâm', '1708792324.png', 1, NULL, NULL, '2024-02-24 09:32:04'),
(3, 'Nguyễn Duy Tài', '2151170551@e.tlu.edu.vn', NULL, '$2y$12$LqcPHg/LF0NA0NuoXFf6jO/jPZ30IwakBfeg4.s4Wh1GjcZzSFSFi', NULL, NULL, NULL, 1, NULL, '2024-02-24 09:49:40', '2024-02-24 09:49:40'),
(4, 'Nguyễn Duy Tài', '0985203883tai1@gmail.com', NULL, '$2y$12$Lvq6wpv00RO5N.ufJrefeuXX0CSb9JRbEaZVyM.1Ty5.Q0gwEk4J2', '0985203883', 'Văn Lâm', '1708793930.png', 1, NULL, '2024-02-24 09:55:42', '2024-02-24 09:58:50'),
(5, 'Mai Quốc Đoàn', 'maidoan1108@outlook.com', NULL, '$2y$12$x2KQRrWL8pJNNhRTCGaxsOgnxOBpgvU4tAREmQsR48mWvLmtZoHcm', '+84383382592', 'VINH', '1709601908.jpg', 1, 'a0A1Fu2MJToFSKGKCgBlVMMVAxCVJ0qxIREpnBnXOvIy1SyBhP282w8IPgCA', '2024-03-03 07:05:52', '2024-03-04 18:25:08'),
(6, 'Lê Thị Huế', 'hue@gmail.com', NULL, '$2y$12$/AzpJWlxnp5aWqR5UK2YaOEiQF16EBqaGnZRiT395qlUw9U8G3KtO', NULL, NULL, NULL, 1, NULL, '2024-03-07 07:25:44', '2024-03-07 07:25:44'),
(7, 'Mai Quốc Đoàn', 'admin@gmail.com', NULL, '$2y$12$9Qg2.4ny3q1YrScRVH3S0.H81RA61rzKM0qTaMw4b7jhPN8Nk3/E.', NULL, NULL, NULL, 0, NULL, '2024-03-08 17:57:42', '2024-03-08 17:57:42'),
(8, 'Hoan', 'lhoan1605@gmail.com', NULL, '$2y$12$Nr5EVfMqmbh3LcgdT9WvHOhkLGfcdDP0.Fym0DfhEzTXAmBweaW4a', NULL, NULL, NULL, 1, NULL, '2024-03-15 21:49:44', '2024-03-15 21:49:44'),
(9, 'Phạm Trung', 'trung@gmail.com', NULL, '$2y$12$wlfSxbjZm/toKlMoUCWx..hRgUsoFBdGqPgTSC6j2rs4mneNiqgH.', NULL, NULL, NULL, 1, NULL, '2024-03-17 20:29:06', '2024-03-17 20:29:06'),
(10, 'nghia', '26063@gmail.com', NULL, '$2y$12$jC3kmXjgnRXiC.h.k0DtU.ZgNVI4vXhyJU7ftkwkdXt980i8VPfdi', NULL, NULL, NULL, 1, NULL, '2024-03-18 04:30:42', '2024-03-18 04:30:42'),
(11, 'nghia8', 'nghia32@gmail', NULL, '$2y$12$5UiUBTyeMW2OsduvGM1r9OqW08Wzhra.kqW2m2MJtxL8bU5QrT43q', NULL, NULL, NULL, 1, NULL, '2024-03-18 04:33:26', '2024-03-18 04:33:26'),
(12, 'test', 'nghia12#$3@gmail.com', NULL, '$2y$12$VipIZVjYSPlR12AUqUXbueHbSlGI8bl.jSPBrsEZtnZdS/N3wgXfG', NULL, NULL, NULL, 1, NULL, '2024-03-18 04:34:24', '2024-03-18 04:34:24'),
(13, 'lee hue', 'huelee2512@gmail.com', NULL, '$2y$12$RcjDKfsVO9DaLlqGtRxq/.w6qOBPJ5IX8qMsHmGWWLEYtz5sZXoz6', NULL, NULL, NULL, 1, NULL, '2024-03-18 05:22:31', '2024-03-18 05:22:31'),
(14, 'Mai Quốc Đoàn', 'maimai@gmail.com', NULL, '$2y$12$HUlGgVcBrznwl40vfCPHcuVyMcHurxxAWbPuJvECkZXtq5N4OwtU.', NULL, NULL, NULL, 1, NULL, '2024-03-18 08:05:32', '2024-03-18 08:05:32');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_items_cart_id_foreign` (`cart_id`),
  ADD KEY `cart_items_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `discount_codes`
--
ALTER TABLE `discount_codes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `discount_codes_code_unique` (`code`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorites_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `favorite_details`
--
ALTER TABLE `favorite_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorite_details_favorite_id_foreign` (`favorite_id`),
  ADD KEY `favorite_details_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_discount_code_id_foreign` (`discount_code_id`),
  ADD KEY `orders_shipping_unit_id_foreign` (`shipping_unit_id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`),
  ADD KEY `order_details_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`),
  ADD KEY `products_product_category_id_foreign` (`product_category_id`);

--
-- Chỉ mục cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_comments`
--
ALTER TABLE `product_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_comments_product_id_foreign` (`product_id`),
  ADD KEY `product_comments_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_details_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `product_favorites`
--
ALTER TABLE `product_favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_favorites_user_id_foreign` (`user_id`),
  ADD KEY `product_favorites_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `shipping_units`
--
ALTER TABLE `shipping_units`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT cho bảng `discount_codes`
--
ALTER TABLE `discount_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `favorite_details`
--
ALTER TABLE `favorite_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `product_comments`
--
ALTER TABLE `product_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `product_details`
--
ALTER TABLE `product_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `product_favorites`
--
ALTER TABLE `product_favorites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `shipping_units`
--
ALTER TABLE `shipping_units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `cart_items`
--
ALTER TABLE `cart_items`
  ADD CONSTRAINT `cart_items_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `favorite_details`
--
ALTER TABLE `favorite_details`
  ADD CONSTRAINT `favorite_details_favorite_id_foreign` FOREIGN KEY (`favorite_id`) REFERENCES `favorites` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `favorite_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_discount_code_id_foreign` FOREIGN KEY (`discount_code_id`) REFERENCES `discount_codes` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `orders_shipping_unit_id_foreign` FOREIGN KEY (`shipping_unit_id`) REFERENCES `shipping_units` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_product_category_id_foreign` FOREIGN KEY (`product_category_id`) REFERENCES `product_categories` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product_comments`
--
ALTER TABLE `product_comments`
  ADD CONSTRAINT `product_comments_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product_details`
--
ALTER TABLE `product_details`
  ADD CONSTRAINT `product_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product_favorites`
--
ALTER TABLE `product_favorites`
  ADD CONSTRAINT `product_favorites_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_favorites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
