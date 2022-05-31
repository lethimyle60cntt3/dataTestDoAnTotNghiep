-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 31, 2022 lúc 06:47 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `lvnhatrang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(10) UNSIGNED NOT NULL,
  `from_day` date NOT NULL,
  `to_day` date NOT NULL,
  `seat` tinyint(4) NOT NULL,
  `booking_note` varchar(255) NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brand`
--

CREATE TABLE `brand` (
  `brand_id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brand`
--

INSERT INTO `brand` (`brand_id`, `brand_name`, `brand_logo`) VALUES
(1, 'Mazda', 'mazda.jpg'),
(2, 'Toyota', 'toyota.png'),
(3, 'KIA', 'kia.jpg'),
(4, 'Hyundai', 'hyundai.jpg'),
(5, 'Honda', 'honda.png'),
(6, 'BMW', 'bmw.png'),
(7, 'Ford', 'ford.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `car`
--

CREATE TABLE `car` (
  `car_id` int(10) UNSIGNED NOT NULL,
  `car_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `num_of_seat` tinyint(4) NOT NULL,
  `license_plate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rental_price` int(11) NOT NULL,
  `main_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` int(4) DEFAULT NULL,
  `registration_deadline` date DEFAULT NULL,
  `c_i_t_insurance` date DEFAULT NULL,
  `car_status` tinyint(4) NOT NULL,
  `car_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` int(10) UNSIGNED NOT NULL,
  `color_id` int(10) UNSIGNED NOT NULL,
  `storage_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `car`
--

INSERT INTO `car` (`car_id`, `car_name`, `num_of_seat`, `license_plate`, `rental_price`, `main_image`, `year`, `registration_deadline`, `c_i_t_insurance`, `car_status`, `car_description`, `brand_id`, `color_id`, `storage_id`, `created_at`, `updated_at`) VALUES
(4, 'HATCHBACK', 4, '99E - 742.31', 700000, '1651713935-car-img.jpg', 2018, '2022-05-14', '2022-05-25', 2, '<p>Hatchback là một kiểu thân xe ô tô gồm 2 khoang: khoang động cơ phía trước và khoang hành khách và hành lý chung phía sau. Loại xe này có thể có 3 hoặc 5 cửa trong đó có 1 cửa phía sau để tiện cho việc cất vào hay lấy hành lý ra.</p>', 1, 1, 1, '2022-05-05 01:25:35', '2022-05-23 15:53:35'),
(5, 'MAZDA2', 4, '69M - 623.34', 600000, '1651714131-car-img.jpg', 2020, '2022-05-29', '2022-05-29', 1, '<p>Kích thước: 4.060-4.340&nbsp;mm D x 1.695&nbsp;mm R x 1.470-1.515&nbsp;mm C</p><p>Dung tích bình nhiên liệu: 44&nbsp;l</p><p>Trọng lượng không tải: 1.049 - 1.074&nbsp;kg</p>', 1, 2, 1, '2022-05-05 01:28:51', '2022-05-05 06:28:04'),
(6, 'Elentra (số tự động)', 4, '56H - 486.17', 700000, '1651729137-car-img.jpg', 2016, '2022-05-29', '2022-05-29', 2, NULL, 4, 2, 1, '2022-05-05 05:38:57', '2022-05-23 17:06:24'),
(7, 'Rio MT', 4, '85D - 155.15', 600000, '1651729382-car-img.jpg', 2016, '2022-06-01', '2022-12-31', 2, NULL, 3, 3, 1, '2022-05-05 05:43:02', '2022-05-27 03:25:52'),
(8, 'Rio AT', 4, '12Z - 161.81', 650000, '1651729503-car-img.jpg', 2016, '2022-06-01', '2022-12-31', 1, NULL, 3, 2, 1, '2022-05-05 05:45:03', '2022-05-05 05:45:03'),
(9, 'Accent', 4, '84P - 127.48', 750000, '1651729725-car-img.jpg', 2022, '2022-06-01', NULL, 1, '<p>Dung tích bình nhiên liệu: 45&nbsp;l</p><p>Mức tiêu thụ nhiên liệu: kết hợp 6,2-6,3 l/100km (trong đô thị 8,3-8,5, ngoài đô thị 4,9-5,2)</p><p>Kích thước: 4.440&nbsp;mm D x 1.729&nbsp;mm R x 1.460&nbsp;mm C</p><p>Trọng lượng không tải: 1.095 - 1.190&nbsp;kg</p>', 4, 2, 1, '2022-05-05 05:48:45', '2022-05-05 06:26:35'),
(10, 'Elantra', 5, '45N - 861.50', 800000, '1651729991-car-img.jpg', 2019, NULL, '2022-12-31', 2, '<p>Kiểu dáng: Sedan<br>Dung tích bình nhiên liệu: 50 l<br>Mức tiêu thụ nhiên liệu: kết hợp 6,9-7,7 l/100km (trong đô thị 8,8-9,9, ngoài đô thị 5,4-6,4)<br>Kích thước: 4.620 mm D x 1.800 mm R x 1.450 mm C</p>', 4, 2, 2, '2022-05-05 05:53:11', '2022-05-29 03:33:51'),
(11, 'Vios', 5, '16B - 361.28', 750000, '1651730280-car-img.jpg', NULL, '2022-06-01', NULL, 1, '<p>Dung tích bình nhiên liệu: 42&nbsp;l</p><p>Mức tiêu thụ nhiên liệu: kết hợp 5,7-5,9 l/100km (trong đô thị 7,5-7,8, ngoài đô thị 4,7-4,9)</p><p>Trọng lượng không tải: 1.075 - 1.110&nbsp;kg</p><p>Kích thước: 4.425&nbsp;mm D x 1.730&nbsp;mm R x 1.475&nbsp;mm C</p>', 2, 5, 2, '2022-05-05 05:58:00', '2022-05-05 06:23:32'),
(12, 'Rondo AT', 7, '63D - 263.11', 800000, '1652550532-car-img.jpg', 2016, '2022-08-15', '2022-07-20', 2, '<p>Nổi bật với những đường gân dập nổi mạnh mẽ vuốt dọc thân xe, KIA Rondo chính là sự pha trộn tuyệt vời giữa nét tinh tế của cảm xúc với tiện nghi của các tính năng. Có thể nói, đây chính là dòng sản phẩm xe dành cho cuộc sống năng động và thân thiện với môi trường. Hơn hết, Rondo tuyệt đối thu hút sự chú ý từ mọi góc nhìn với kiểu dáng sang trọng được lấy cảm hứng thiết kế từ Châu Âu.</p>', 3, 2, 2, '2022-05-14 17:48:52', '2022-05-23 17:06:24'),
(13, 'City AT', 5, '96E - 644.27', 700000, '1652550782-car-img.jpg', 2019, '2022-06-10', '2022-06-10', 1, '<p>Xe 05 chỗ số sàn - số tự động</p>', 5, 2, 1, '2022-05-14 17:53:03', '2022-05-14 17:53:03'),
(14, 'Cerato AT', 5, '82P - 309.81', 700000, '1652551093-car-img.jpg', 2019, '2022-08-05', '2022-09-08', 2, NULL, 3, 2, 1, '2022-05-14 17:58:13', '2022-05-28 08:44:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `car_image`
--

CREATE TABLE `car_image` (
  `car_image_id` int(10) UNSIGNED NOT NULL,
  `car_id` int(10) UNSIGNED NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `car_image`
--

INSERT INTO `car_image` (`car_image_id`, `car_id`, `file_name`) VALUES
(8, 6, '1651729137-car-img1.jpg'),
(9, 6, '1651729137-car-img2.jpg'),
(10, 5, '1651729215-car-img1.jpg'),
(11, 8, '1651729503-car-img1.jpg'),
(12, 9, '1651729725-car-img1.jpg'),
(13, 10, '1651729991-car-img1.jpg'),
(14, 10, '1651729992-car-img2.jpg'),
(15, 11, '1651730280-car-img1.jpg'),
(16, 11, '1651730280-car-img2.jpg'),
(17, 12, '1652550532-car-img1.jpg'),
(18, 12, '1652550532-car-img2.jpg'),
(19, 13, '1652550783-car-img1.jpg'),
(20, 14, '1652551093-car-img1.jpg'),
(22, 14, '1652551128-car-img1.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `color`
--

CREATE TABLE `color` (
  `color_id` int(10) UNSIGNED NOT NULL,
  `color_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color_css` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `color`
--

INSERT INTO `color` (`color_id`, `color_name`, `color_css`) VALUES
(1, 'Đen', '#000000'),
(2, 'Trắng', '#FFFFFF'),
(3, 'Màu bạc', '#C0C0C0'),
(4, 'Đen nhám', '#202020'),
(5, 'Đỏ đậm', '#B22222');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contract`
--

CREATE TABLE `contract` (
  `contract_id` int(10) UNSIGNED NOT NULL,
  `car_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `driver_id` int(10) UNSIGNED DEFAULT NULL,
  `start_time` date NOT NULL DEFAULT current_timestamp(),
  `end_time` date NOT NULL DEFAULT current_timestamp(),
  `rental_per_day` int(11) NOT NULL,
  `rental_period` int(11) NOT NULL,
  `total_service_fee` int(11) NOT NULL,
  `amount_paid` int(11) NOT NULL,
  `rental_purpose` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contract_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contract_status` tinyint(4) NOT NULL,
  `rated` tinyint(4) DEFAULT NULL,
  `content_rated` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contract`
--

INSERT INTO `contract` (`contract_id`, `car_id`, `customer_id`, `driver_id`, `start_time`, `end_time`, `rental_per_day`, `rental_period`, `total_service_fee`, `amount_paid`, `rental_purpose`, `contract_note`, `contract_status`, `rated`, `content_rated`, `created_at`, `updated_at`) VALUES
(28, 7, 12, 1, '2022-05-27', '2022-05-29', 600000, 3, 100000, 10000000, 'thuê xe cho công việc', NULL, 4, NULL, NULL, '2022-05-18 09:39:51', '2022-05-30 08:18:59'),
(31, 6, 9, 4, '2022-05-20', '2022-05-21', 700000, 2, 300000, 5500000, '.', NULL, 4, NULL, NULL, '2022-05-19 17:01:22', '2022-05-21 17:03:47'),
(35, 9, 10, 1, '2022-06-01', '2022-06-01', 750000, 1, 0, 5000000, 'Chở người yêu đi chơi lễ Quốc tế thiếu nhi', NULL, 1, NULL, NULL, '2022-05-20 06:46:32', '2022-05-20 16:15:13'),
(39, 4, 2, 1, '2022-05-28', '2022-05-29', 700000, 2, 100000, 5000000, 'test', NULL, 4, NULL, NULL, '2022-05-20 16:01:01', '2022-05-30 08:18:59'),
(40, 10, 7, 12, '2022-05-22', '2022-05-22', 800000, 1, 100000, 5000000, 'THuê đi chơi', NULL, 3, NULL, NULL, '2022-05-21 04:31:34', '2022-05-23 09:11:15'),
(43, 8, 13, 4, '2022-05-31', '2022-05-31', 650000, 1, 300000, 10000000, 'TEST THUÊ TÀI XẾ', NULL, 1, NULL, NULL, '2022-05-21 05:29:11', '2022-05-21 05:29:11'),
(44, 10, 3, 5, '2022-05-31', '2022-06-01', 800000, 2, 300000, 5000000, 'thuê cho vui', NULL, 1, NULL, NULL, '2022-05-21 05:31:12', '2022-05-21 05:31:12'),
(45, 12, 1, 7, '2022-05-24', '2022-05-31', 800000, 8, 400000, 5000000, 'test thuê tài xế', NULL, 2, NULL, NULL, '2022-05-21 05:53:23', '2022-05-23 17:06:24'),
(52, 6, 1, 4, '2022-05-24', '2022-05-29', 700000, 6, 1900000, 5000000, 'thuê cho vui', NULL, 4, NULL, NULL, '2022-05-23 16:01:26', '2022-05-30 08:18:59'),
(58, 14, 16, 1, '2022-05-28', '2022-06-04', 700000, 8, 100000, 5000000, 'Khách hàng tự lái', NULL, 2, NULL, NULL, '2022-05-27 15:01:10', '2022-05-28 08:44:56'),
(59, 12, 17, 7, '2022-06-04', '2022-06-04', 800000, 1, 400000, 5000000, 'Thuê tài xế', NULL, 1, NULL, NULL, '2022-05-27 15:59:46', '2022-05-27 15:59:46'),
(60, 10, 20, 1, '2022-05-29', '2022-05-30', 800000, 2, 0, 5000000, 'vvvvv', NULL, 2, NULL, NULL, '2022-05-28 09:32:01', '2022-05-29 03:33:51'),
(62, 13, 4, 3, '2022-06-04', '2022-06-07', 700000, 4, 1300000, 5000000, 'thuê cho dui', NULL, 1, NULL, NULL, '2022-05-29 05:08:35', '2022-05-29 05:08:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contract_detail`
--

CREATE TABLE `contract_detail` (
  `contract_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contract_detail`
--

INSERT INTO `contract_detail` (`contract_id`, `user_id`, `content`, `created_at`, `updated_at`) VALUES
(28, 5, 'Khách hàng đã đặt cọc số tiền 10000000 cho hợp đồng', '2022-05-18 09:40:56', '2022-05-18 09:40:56'),
(28, 5, 'Hợp đồng đã được duyệt bởi Võ Đình Chí', '2022-05-18 09:41:00', '2022-05-18 09:41:00'),
(31, 5, 'Võ Đình Chí đã chọn tài xế Phan Tấn Tài cho hợp đồng', '2022-05-19 17:03:58', '2022-05-19 17:03:58'),
(31, 5, 'Khách hàng đã đặt cọc số tiền 5500000 cho hợp đồng', '2022-05-19 17:04:14', '2022-05-19 17:04:14'),
(31, 5, 'Hợp đồng đã được duyệt bởi Võ Đình Chí', '2022-05-19 17:08:04', '2022-05-19 17:08:04'),
(31, 5, 'Hợp đồng bắt đầu có hiệu lực lúc 2022-05-20 06:00:00', '2022-05-19 17:08:11', '2022-05-19 17:08:11'),
(28, 1, 'Khách hàng vừa bổ sung Sổ hộ khẩu', '2022-05-20 05:00:06', '2022-05-20 05:00:06'),
(28, 1, 'Khách hàng vừa bổ sung text', '2022-05-20 05:00:40', '2022-05-20 05:00:40'),
(39, 1, 'Hợp đồng đã được tạo bởi Lê Xuân Vũ', '2022-05-20 16:01:01', '2022-05-20 16:01:01'),
(35, 1, 'Hợp đồng đã được duyệt bởi Lê Xuân Vũ', '2022-05-20 16:15:13', '2022-05-20 16:15:13'),
(40, 5, 'Hợp đồng đã được tạo bởi Võ Đình Chí', '2022-05-21 04:31:34', '2022-05-21 04:31:34'),
(43, 5, 'Hợp đồng đã được tạo bởi Võ Đình Chí', '2022-05-21 05:29:11', '2022-05-21 05:29:11'),
(44, 5, 'Hợp đồng đã được tạo bởi Võ Đình Chí', '2022-05-21 05:31:12', '2022-05-21 05:31:12'),
(45, 5, 'Hợp đồng đã được tạo bởi Võ Đình Chí', '2022-05-21 05:53:23', '2022-05-21 05:53:23'),
(40, 5, 'Hợp đồng bắt đầu có hiệu lực lúc 2022-05-22 06:00:00', '2022-05-21 17:03:47', '2022-05-21 17:03:47'),
(31, 5, 'Hợp đồng đã hết hạn lúc 2022-05-21 23:59:59', '2022-05-21 17:03:47', '2022-05-21 17:03:47'),
(40, 2, 'Hợp đồng đã hết hạn lúc 2022-05-22 23:59:59', '2022-05-22 17:22:10', '2022-05-22 17:22:10'),
(40, 5, 'Võ Đình Chí đã trả lại tiền còn dư sau thuê cho khách hàng.', '2022-05-23 08:33:41', '2022-05-23 08:33:41'),
(40, 5, 'Hợp đồng đã kết thúc.', '2022-05-23 08:33:41', '2022-05-23 08:33:41'),
(40, 5, 'Võ Đình Chí đã trả lại tiền còn dư sau thuê cho khách hàng.', '2022-05-23 08:36:56', '2022-05-23 08:36:56'),
(40, 5, 'Hợp đồng đã kết thúc.', '2022-05-23 08:36:56', '2022-05-23 08:36:56'),
(40, 5, 'Võ Đình Chí đã trả lại tiền còn dư sau thuê cho khách hàng.', '2022-05-23 08:45:38', '2022-05-23 08:45:38'),
(40, 5, 'Hợp đồng đã kết thúc.', '2022-05-23 08:45:38', '2022-05-23 08:45:38'),
(40, 5, 'Võ Đình Chí đã trả lại tiền còn dư sau thuê cho khách hàng.', '2022-05-23 09:09:41', '2022-05-23 09:09:41'),
(40, 5, 'Võ Đình Chí đã trả lại tiền còn dư sau thuê cho khách hàng.', '2022-05-23 09:11:15', '2022-05-23 09:11:15'),
(40, 5, 'Hợp đồng đã kết thúc.', '2022-05-23 09:11:15', '2022-05-23 09:11:15'),
(52, 5, 'Hợp đồng đã được tạo bởi Võ Đình Chí', '2022-05-23 16:01:26', '2022-05-23 16:01:26'),
(45, 3, 'Hợp đồng bắt đầu có hiệu lực lúc 2022-05-24 06:00:00', '2022-05-23 17:06:24', '2022-05-23 17:06:24'),
(52, 3, 'Hợp đồng bắt đầu có hiệu lực lúc 2022-05-24 06:00:00', '2022-05-23 17:06:24', '2022-05-23 17:06:24'),
(28, 3, 'Hợp đồng bắt đầu có hiệu lực lúc 2022-05-27 06:00:00', '2022-05-27 03:25:52', '2022-05-27 03:25:52'),
(58, 3, 'Hợp đồng đã được tạo bởi La Thị Hoài Hoa', '2022-05-27 15:01:10', '2022-05-27 15:01:10'),
(59, 4, 'Hợp đồng đã được tạo bởi Nguyễn Văn Hùng', '2022-05-27 15:59:46', '2022-05-27 15:59:46'),
(39, 5, 'Hợp đồng bắt đầu có hiệu lực lúc 2022-05-28 06:00:00', '2022-05-28 08:44:56', '2022-05-28 08:44:56'),
(58, 5, 'Hợp đồng bắt đầu có hiệu lực lúc 2022-05-28 06:00:00', '2022-05-28 08:44:56', '2022-05-28 08:44:56'),
(60, 5, 'Hợp đồng đã được tạo bởi Võ Đình Chí', '2022-05-28 09:32:01', '2022-05-28 09:32:01'),
(60, 5, 'Hợp đồng bắt đầu có hiệu lực lúc 2022-05-29 06:00:00', '2022-05-29 03:33:51', '2022-05-29 03:33:51'),
(62, 5, 'Hợp đồng đã được tạo bởi Võ Đình Chí', '2022-05-29 05:08:35', '2022-05-29 05:08:35'),
(62, 5, 'Khách hàng vừa bổ sung tài sản cá nhân xe máy cá nhân', '2022-05-29 10:19:04', '2022-05-29 10:19:04'),
(62, 5, 'Khách hàng vừa bổ sung tài sản cá nhân xe máy cá nhân', '2022-05-29 10:19:04', '2022-05-29 10:19:04'),
(62, 5, 'Khách hàng vừa bổ sung tài sản cá nhân a', '2022-05-29 10:25:01', '2022-05-29 10:25:01'),
(62, 5, 'Võ Đình Chí vừa xóa a ra khỏi danh sách chứng từ.', '2022-05-29 10:25:09', '2022-05-29 10:25:09'),
(31, 5, 'Khách hàng vừa bổ sung tài sản cá nhân xe cá nhân', '2022-05-29 10:27:41', '2022-05-29 10:27:41'),
(28, 5, 'Hợp đồng đã hết hạn lúc 2022-05-29 23:59:59', '2022-05-30 08:18:59', '2022-05-30 08:18:59'),
(39, 5, 'Hợp đồng đã hết hạn lúc 2022-05-29 23:59:59', '2022-05-30 08:18:59', '2022-05-30 08:18:59'),
(52, 5, 'Hợp đồng đã hết hạn lúc 2022-05-29 23:59:59', '2022-05-30 08:18:59', '2022-05-30 08:18:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_date_of_birth` date DEFAULT NULL,
  `customer_gender` tinyint(4) DEFAULT NULL,
  `customer_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_identity_card` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_issue_indentity` date DEFAULT NULL,
  `place_of_issue_indentity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_driving_license` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expires` date DEFAULT NULL,
  `customer_status` tinyint(4) NOT NULL,
  `group_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `customer_phone`, `customer_date_of_birth`, `customer_gender`, `customer_address`, `customer_email`, `customer_identity_card`, `date_of_issue_indentity`, `place_of_issue_indentity`, `customer_driving_license`, `expires`, `customer_status`, `group_name`, `position`, `created_at`, `updated_at`) VALUES
(1, 'Từ Quang Thắng', '0987654321', '2001-01-01', 1, 'Vạn Giã', '', '121212121212', '2012-12-12', 'Khánh Hòa', '123456789012', '2012-12-12', 1, NULL, NULL, '2022-05-04 05:11:27', '2022-05-10 17:31:38'),
(2, 'Lê Thị Thanh Nga', '0384203600', '1990-07-07', 2, 'Thị Trấn Diên Khánh, Diên Khánh, Khánh Hòa', '', '928310213121', '2021-10-10', 'Công an huyện Diên Khánh', 'AAA1111111111', '2023-10-20', 2, 'Biv Marketing CN Nha Trang', 'Quản lý', '2022-05-04 12:24:38', '2022-05-20 16:01:01'),
(3, 'Nguyen Thi Thuy Trang', '0373663800', '1974-09-01', 2, 'Thôn Cư Thạnh, Xã Suối Hiệp, Huyện Diên Khánh, Tỉnh Khánh Hòa', '', '225718888', '2000-04-02', 'Diên Khánh', '1231231231231', '2050-10-10', 2, NULL, NULL, '2022-05-07 17:49:33', '2022-05-21 05:31:12'),
(4, 'Ngọc Khanh Huỳnh', '0342949299', '1998-06-01', 2, 'Cam Ranh, Khánh Hòa', 'khanhngochuynh@gmail.com', '204929503', '2002-04-27', 'Cam Ranh, Khánh Hòa', NULL, NULL, 2, NULL, NULL, '2022-05-07 17:54:58', '2022-05-29 05:08:35'),
(5, 'Nguyễn Thị Ý Hòa', '0452345949', NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-05-07 17:56:41', '2022-05-10 03:14:22'),
(6, 'Từ Quang Thắng', '0248318128', NULL, 0, 'Vạn Ninh, Khánh Hòa', '', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-05-08 04:01:58', '2022-05-10 03:14:22'),
(7, 'Huỳnh Thị Yến Phượng', '0378249274', '1990-01-01', 2, 'Cam Ranh, Khánh Hòa', '', '225777722', '2008-12-20', 'Bộ Công An TP Cam Ranh', '1242301213', '2040-02-10', 1, 'Công ti KOMEGA-X', 'Kế toán', '2022-05-08 15:46:55', '2022-05-23 08:33:41'),
(8, 'Trương Tấn Sang', '0924294871', '1988-12-21', 1, 'p. Vĩnh Hải, tp. Nha Trang', '', '2301012913', '2000-05-16', 'Nha Trang', NULL, NULL, 1, NULL, NULL, '2022-05-09 04:55:13', '2022-05-21 05:56:38'),
(9, 'Nguyễn Đình Quốc Bảo', '0123472311', '1992-05-20', 1, 'Ninh Hòa, Khánh Hòa', '', '245423186', '2010-05-11', 'Ninh Hòa, Khánh Hòa', NULL, NULL, 2, NULL, NULL, '2022-05-10 18:30:59', '2022-05-19 17:08:04'),
(10, 'Võ Đình Vinh', '0987079094', '1972-03-03', 1, 'Vĩnh Phương, Nha Trang, Khánh Hòa', '', '329281381', '1992-03-03', 'Vĩnh Phương, Nha Trang', '241423547398', '2040-05-05', 2, NULL, NULL, '2022-05-12 16:57:48', '2022-05-20 16:15:13'),
(11, 'Phạm Long Thiên Tài', '0942838189', '1999-12-31', 1, 'Nha Trang, Khánh Hòa', '', '858675585757', '2021-04-24', 'Nha Trang, Khánh Hòa', '585757758681', '2031-12-12', 1, NULL, NULL, '2022-05-14 08:04:01', '2022-05-23 15:56:29'),
(12, 'Hồ Tấn Huy', '0231349492', '1987-02-01', 1, 'Phan Rang, Tháp Chàm', '', '3402024020', '2005-10-27', 'Phan Rang', '9240298618203', '2030-05-21', 2, 'Công Ty Tnhh Công Nghệ Thực Phẩm Tuấn Long', 'Quản Lý', '2022-05-18 09:30:21', '2022-05-18 09:41:00'),
(13, 'Khúc Gia Thịnh', '0242455928', '1975-03-01', 1, 'Xã Đồng Kỳ, Huyện Yên Thế, Bắc Giang', 'thinh0301@gmail.com', '439213929', '2000-03-12', 'Yên Thế, Bắc Giang', NULL, NULL, 2, NULL, NULL, '2022-05-21 04:34:11', '2022-05-21 05:29:11'),
(16, 'alipapa', '0989891030', '2000-05-27', 1, 'Nha Trang', 'alipapa@gmail.com', '234900234902', '2022-05-27', 'Nha Trang', '234900234902', '2022-05-28', 1, NULL, NULL, '2022-05-27 03:24:45', '2022-05-27 14:54:28'),
(17, 'Lê Thị Mỹ Lê', '0923482719', '1990-09-09', 2, 'Ninh Hòa', 'lethimyle@gmail.com', '234234344242', '2008-05-05', 'Ninh Hòa', NULL, NULL, 2, NULL, NULL, '2022-05-27 15:42:14', '2022-05-27 15:59:46'),
(20, 'Minh Tâm', '0394828492', '2022-05-28', 1, 'TX.Ninh Hòa', 'minhtam@gmail.com', '452352342342', '2008-05-28', 'TX.Ninh Hòa', '452352342342', '2022-05-28', 2, NULL, NULL, '2022-05-28 08:49:57', '2022-05-29 03:35:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `driver`
--

CREATE TABLE `driver` (
  `driver_id` int(10) UNSIGNED NOT NULL,
  `driver_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `driver_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driver_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driver_identity_card` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_issue_indentity` date DEFAULT NULL,
  `place_of_issue_indentity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driver_driving_license` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expires` date DEFAULT NULL,
  `driver_status` tinyint(4) NOT NULL,
  `is_customer` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `driver`
--

INSERT INTO `driver` (`driver_id`, `driver_name`, `driver_phone`, `driver_address`, `driver_identity_card`, `date_of_issue_indentity`, `place_of_issue_indentity`, `driver_driving_license`, `expires`, `driver_status`, `is_customer`, `created_at`, `updated_at`) VALUES
(1, 'Khách hàng tự lái', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL),
(2, 'Khách thuê tài xế của cửa hàng', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL),
(3, 'Huỳnh Anh Tuấn', '0971313112', 'Diên An, Diên Khánh, Khánh Hòa', '131120102001', '2010-12-13', 'BCA huyện Diên Khánh', '130901201920', '2059-12-13', 1, 0, '2022-05-10 16:23:10', '2022-05-10 16:23:10'),
(4, 'Phan Tấn Tài', '0123113423', 'Diên Sơn, Diên Khánh, Khánh Hòa', '131121212', '2018-12-12', 'DK', '131212121213', '2040-01-10', 1, 0, '2022-05-10 16:24:28', '2022-05-10 16:24:28'),
(5, 'Nguyễn Nhật Khoa', '0731212311', 'Ninh Hòa, Khánh Hòa', '984598329423', '2003-03-13', 'Ninh Hòa, Khánh Hòa', '141209433333', '2040-02-13', 1, 0, '2022-05-10 16:26:53', '2022-05-10 16:26:53'),
(6, 'Nguyễn Hữu Trí', '0134212313', 'Diên Lâm, Diên Khánh, Khánh Hòa', '387234934239', '2020-02-12', 'Diên Khánh', '234232342390', '2030-12-12', 1, 0, '2022-05-10 16:19:33', '2022-05-10 16:19:33'),
(7, 'Nguyễn Hữu Khôi', '03929493040', 'Diên Lâm, Diên Khánh, Khánh Hòa', '502301312', '2021-12-12', 'Diên Khánh', '502301312030', '2043-02-12', 1, 0, '2022-05-13 09:12:02', '2022-05-13 09:12:02'),
(8, 'Lại Thành Hiếu', '0523811812', 'Cam Ranh, Khánh Hòa', '1233422234221', '2015-05-06', 'Cam Ranh, Khánh Hòa', '1233455555221', '2032-05-20', 1, 0, '2022-05-14 07:40:16', '2022-05-14 07:40:22'),
(12, 'Huỳnh Quốc Cường', NULL, 'Xã Long Thành Bắc, Huyện Hòa Thành, Tây Ninh', '203829193', '2019-05-19', 'Hòa Thành, Tây Ninh', '231523012938', '2040-06-04', 1, 1, '2022-05-21 04:31:34', '2022-05-21 04:31:34'),
(13, 'Mang Quang Danh', NULL, 'Xã Tân Thành, Huyện Krông Nô, Đắc Nông', '023681307548', '1977-05-25', 'Krông Nô, Đắc Nông', '023681307548', '2040-06-03', 1, 1, '2022-05-21 16:53:36', '2022-05-21 16:53:36'),
(14, 'test', '0999999999', 'ABC', '123123124312', '2022-05-20', 'abc', '349230203421', '2022-05-25', 1, 0, '2022-05-25 12:00:53', '2022-05-25 12:00:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(110, '2014_10_12_000000_create_users_table', 1),
(111, '2014_10_12_100000_create_password_resets_table', 1),
(112, '2019_08_19_000000_create_failed_jobs_table', 1),
(113, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(114, '2022_05_02_060630_create_color_table', 1),
(115, '2022_05_02_060777_create_car_type_table', 1),
(116, '2022_05_02_060959_create_storage_table', 1),
(117, '2022_05_02_061047_create_brand_table', 1),
(118, '2022_05_02_061156_create_car_table', 1),
(119, '2022_05_02_065036_create_car_image_table', 1),
(120, '2022_05_02_065451_create_car_schedule_table', 1),
(121, '2022_05_03_013004_create_customer_table', 1),
(122, '2022_05_03_014031_create_driver_table', 1),
(123, '2022_05_03_015228_create_driver_schedule_table', 1),
(124, '2022_05_03_015800_create_contract_table', 1),
(125, '2022_05_03_022934_create_transaction_table', 1),
(126, '2022_05_03_023851_create_contract_detail_table', 1),
(127, '2022_05_03_024205_create_receipt_table', 1),
(128, '2022_05_03_024828_create_service_table', 1),
(129, '2022_05_03_025226_create_services_of_contract_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `news_id` int(10) NOT NULL,
  `news_image` varchar(255) NOT NULL,
  `news_title` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  `source` varchar(255) DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `views` int(10) NOT NULL,
  `news_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`news_id`, `news_image`, `news_title`, `detail`, `source`, `user_id`, `views`, `news_status`, `created_at`, `updated_at`) VALUES
(1, '1653844789-news-img.jpg', 'News1', '<p>News1News1News1News1News1News1News1News1News1</p>', NULL, 1, 0, 1, '2022-05-29 17:19:49', '2022-05-29 17:19:49'),
(2, '1653844837-news-img.png', 'News2', '<p>News2</p>', 'News2', 1, 0, 2, '2022-05-29 17:20:37', '2022-05-29 17:20:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `receipt`
--

CREATE TABLE `receipt` (
  `receipt_id` int(10) UNSIGNED NOT NULL,
  `receipt_type` tinyint(3) UNSIGNED NOT NULL,
  `receipt_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `receipt_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receipt_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contract_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `receipt`
--

INSERT INTO `receipt` (`receipt_id`, `receipt_type`, `receipt_name`, `receipt_note`, `receipt_image`, `contract_id`, `created_at`, `updated_at`) VALUES
(11, 2, 'xe máy cá nhân', NULL, '1653819544-receipt-.jpg', 62, '2022-05-29 10:19:04', '2022-05-29 10:19:04'),
(13, 2, 'xe cá nhân', NULL, '1653820061-receipt-.jpg', 31, '2022-05-29 10:27:41', '2022-05-29 10:27:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service`
--

CREATE TABLE `service` (
  `service_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `only_once` tinyint(4) NOT NULL,
  `service_des` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL,
  `service_status` tinyint(4) NOT NULL,
  `hidden` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `service`
--

INSERT INTO `service` (`service_id`, `service_name`, `only_once`, `service_des`, `price`, `service_status`, `hidden`, `created_at`, `updated_at`) VALUES
('giao_xe_15km', 'Giao xe tận nhà (trong khu vực TP.Nha Trang)', 0, 'Khu vực bán kính 15km từ trung tâm TP. Nha Trang', 150000, 2, 0, '2022-05-05 03:45:28', '2022-05-24 17:36:10'),
('rua_xe', 'Rửa xe', 1, 'Rửa xe khi trả xe 100K/lượt', 100000, 1, 0, '2022-05-10 09:09:24', '2022-05-10 09:09:24'),
('thue_tai_xe', 'Thuê tài xế', 0, '', 300000, 1, 1, '2022-05-05 03:39:43', '2022-05-05 04:07:06'),
('trang_tri_xe_hoa', 'Trang trí xe cưới', 1, 'Hoa Trang Trí Xe Đám Cưới Hình Trái Tim Phong Cách Lãng Mạn - Hoa Hồng Nhựa PE', 500000, 1, 0, '2022-05-07 06:33:51', '2022-05-07 06:33:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `services_of_contract`
--

CREATE TABLE `services_of_contract` (
  `service_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contract_id` int(10) UNSIGNED NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `service_fee` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `services_of_contract`
--

INSERT INTO `services_of_contract` (`service_id`, `contract_id`, `price`, `quantity`, `service_fee`) VALUES
('rua_xe', 28, 100000, 1, 100000),
('thue_tai_xe', 31, 300000, 1, 300000),
('rua_xe', 39, 100000, 1, 100000),
('rua_xe', 40, 100000, 1, 100000),
('thue_tai_xe', 43, 300000, 1, 300000),
('thue_tai_xe', 44, 300000, 1, 300000),
('rua_xe', 45, 100000, 1, 100000),
('thue_tai_xe', 45, 300000, 1, 300000),
('rua_xe', 52, 100000, 1, 100000),
('thue_tai_xe', 52, 300000, 6, 300000),
('rua_xe', 58, 100000, 1, 100000),
('rua_xe', 59, 100000, 1, 100000),
('thue_tai_xe', 59, 300000, 1, 300000),
('rua_xe', 62, 100000, 1, 100000),
('thue_tai_xe', 62, 300000, 4, 1200000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `storage`
--

CREATE TABLE `storage` (
  `storage_id` int(10) UNSIGNED NOT NULL,
  `storage_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `storage_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `storage`
--

INSERT INTO `storage` (`storage_id`, `storage_name`, `storage_address`) VALUES
(1, 'Bãi xe 1 - Chi nhánh chính', '46 Củ Chi - P. Vĩnh Phước - Tp. Nha Trang - Khánh Hòa'),
(2, 'Bãi xe 2', '549 đường 2/4 Phường Vĩnh Phước , Nha Trang , Khánh Hoà ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transaction`
--

CREATE TABLE `transaction` (
  `transaction_id` int(10) UNSIGNED NOT NULL,
  `contract_id` int(10) UNSIGNED NOT NULL,
  `transaction_type` tinyint(4) NOT NULL,
  `transaction_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_fee` int(11) NOT NULL,
  `payment_method` tinyint(4) NOT NULL,
  `transaction_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `transaction`
--

INSERT INTO `transaction` (`transaction_id`, `contract_id`, `transaction_type`, `transaction_name`, `transaction_fee`, `payment_method`, `transaction_note`, `created_at`, `updated_at`) VALUES
(25, 40, 1, 'Phụ thu tiền phạt trễ hạn 1 ngày.', 880000, 0, NULL, '2022-05-23 09:11:15', '2022-05-23 09:11:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_gender` tinyint(4) NOT NULL,
  `user_date_of_birth` date NOT NULL,
  `permission` tinyint(4) NOT NULL,
  `user_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`user_id`, `user_image`, `user_fullname`, `user_phone`, `user_email`, `password`, `user_address`, `user_gender`, `user_date_of_birth`, `permission`, `user_status`, `created_at`, `updated_at`) VALUES
(1, 'user-avatar-default.jpg', 'Lê Xuân Vũ', '0938610222', 'chi.vd.60cntt@ntu.edu.vn', '$2y$10$DgjyqrZ6f9ctq1k/RVe.3.RyS604kL5WrfyWqpgypxyMO0F.CjVnC', 'Vĩnh Phước, TP.Nha Trang', 1, '1990-02-22', 1, 1, '2022-05-04 15:47:19', '2022-05-25 11:18:06'),
(2, '1653240160-user.jpg', 'Lê Thị Mỹ Lê', '0111111111', 'lele@gmail.com', '$2y$10$cWL75ROhNinliaLgRHZOAOz5vdCgbOxQ173963m06fNoQogcVe/T6', 'Khánh Hòa', 2, '2000-09-09', 2, 1, '2022-05-04 16:03:23', '2022-05-22 17:22:40'),
(3, '1653239993-user.jpg', 'La Thị Hoài Hoa', '0222222222', 'hoahoa@gmail.com', '$2y$10$i3n1ycxUfOEy/YLRoefCseCB6Q.DRxepnaAzMTTMkzKG7ImxZPOgG', 'Khánh Hòa', 2, '2000-09-10', 2, 1, '2022-05-04 16:04:12', '2022-05-22 17:19:53'),
(4, 'user-avatar-default.jpg', 'Nguyễn Văn Hùng', '0898399146', 'hung@gmail.com', '$2y$10$eZO79qMoRYOR4KMaGilbV.mP/LcZrT1YzJv9Jsw2FkzcAPKrP7V9C', 'TP.Nha Trang, Khánh Hòa', 1, '2000-04-09', 3, 1, '2022-05-04 16:14:27', '2022-05-04 16:14:27'),
(5, 'user-avatar-default.jpg', 'Võ Đình Chí', '0373663800', 'chi@gmail.com', '$2y$10$J3AuaRXZyPbfXUs18BrBE.UHM3dBLKDfsskQI0gsRQuOTfLtFTNa2', 'Diên Khánh, Khánh Hòa', 1, '2000-04-02', 3, 1, '2022-05-04 16:22:25', '2022-05-22 16:56:36');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Chỉ mục cho bảng `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Chỉ mục cho bảng `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`car_id`),
  ADD KEY `car_brand_id_foreign` (`brand_id`),
  ADD KEY `car_color_id_foreign` (`color_id`),
  ADD KEY `car_storage_id_foreign` (`storage_id`);

--
-- Chỉ mục cho bảng `car_image`
--
ALTER TABLE `car_image`
  ADD PRIMARY KEY (`car_image_id`),
  ADD KEY `car_image_car_id_foreign` (`car_id`);

--
-- Chỉ mục cho bảng `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`color_id`);

--
-- Chỉ mục cho bảng `contract`
--
ALTER TABLE `contract`
  ADD PRIMARY KEY (`contract_id`),
  ADD KEY `contract_customer_id_foreign` (`customer_id`),
  ADD KEY `contract_car_id_foreign` (`car_id`),
  ADD KEY `driver_id` (`driver_id`);

--
-- Chỉ mục cho bảng `contract_detail`
--
ALTER TABLE `contract_detail`
  ADD KEY `contract_detail_contract_id_foreign` (`contract_id`),
  ADD KEY `contract_detail_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Chỉ mục cho bảng `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`driver_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`);

--
-- Chỉ mục cho bảng `receipt`
--
ALTER TABLE `receipt`
  ADD PRIMARY KEY (`receipt_id`),
  ADD KEY `receipt_contract_id_foreign` (`contract_id`);

--
-- Chỉ mục cho bảng `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`service_id`);

--
-- Chỉ mục cho bảng `services_of_contract`
--
ALTER TABLE `services_of_contract`
  ADD KEY `services_of_contract_service_id_foreign` (`service_id`),
  ADD KEY `services_of_contract_contract_id_foreign` (`contract_id`);

--
-- Chỉ mục cho bảng `storage`
--
ALTER TABLE `storage`
  ADD PRIMARY KEY (`storage_id`);

--
-- Chỉ mục cho bảng `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `transaction_contract_id_foreign` (`contract_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `users_user_phone_unique` (`user_phone`),
  ADD UNIQUE KEY `users_user_email_unique` (`user_email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `brand`
--
ALTER TABLE `brand`
  MODIFY `brand_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `car`
--
ALTER TABLE `car`
  MODIFY `car_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `car_image`
--
ALTER TABLE `car_image`
  MODIFY `car_image_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `color`
--
ALTER TABLE `color`
  MODIFY `color_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `contract`
--
ALTER TABLE `contract`
  MODIFY `contract_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `driver`
--
ALTER TABLE `driver`
  MODIFY `driver_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `receipt`
--
ALTER TABLE `receipt`
  MODIFY `receipt_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `storage`
--
ALTER TABLE `storage`
  MODIFY `storage_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transaction_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);

--
-- Các ràng buộc cho bảng `car`
--
ALTER TABLE `car`
  ADD CONSTRAINT `car_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`brand_id`),
  ADD CONSTRAINT `car_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `color` (`color_id`),
  ADD CONSTRAINT `car_storage_id_foreign` FOREIGN KEY (`storage_id`) REFERENCES `storage` (`storage_id`);

--
-- Các ràng buộc cho bảng `car_image`
--
ALTER TABLE `car_image`
  ADD CONSTRAINT `car_image_car_id_foreign` FOREIGN KEY (`car_id`) REFERENCES `car` (`car_id`);

--
-- Các ràng buộc cho bảng `contract`
--
ALTER TABLE `contract`
  ADD CONSTRAINT `contract_car_id_foreign` FOREIGN KEY (`car_id`) REFERENCES `car` (`car_id`),
  ADD CONSTRAINT `contract_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `contract_ibfk_1` FOREIGN KEY (`driver_id`) REFERENCES `driver` (`driver_id`);

--
-- Các ràng buộc cho bảng `contract_detail`
--
ALTER TABLE `contract_detail`
  ADD CONSTRAINT `contract_detail_contract_id_foreign` FOREIGN KEY (`contract_id`) REFERENCES `contract` (`contract_id`),
  ADD CONSTRAINT `contract_detail_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Các ràng buộc cho bảng `receipt`
--
ALTER TABLE `receipt`
  ADD CONSTRAINT `receipt_contract_id_foreign` FOREIGN KEY (`contract_id`) REFERENCES `contract` (`contract_id`);

--
-- Các ràng buộc cho bảng `services_of_contract`
--
ALTER TABLE `services_of_contract`
  ADD CONSTRAINT `services_of_contract_contract_id_foreign` FOREIGN KEY (`contract_id`) REFERENCES `contract` (`contract_id`),
  ADD CONSTRAINT `services_of_contract_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `service` (`service_id`);

--
-- Các ràng buộc cho bảng `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_contract_id_foreign` FOREIGN KEY (`contract_id`) REFERENCES `contract` (`contract_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
