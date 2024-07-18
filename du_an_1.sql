-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 18, 2024 lúc 07:20 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `du_an_1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

CREATE TABLE `account` (
  `account_id` int(11) NOT NULL,
  `account_user` varchar(255) NOT NULL,
  `account_pass` varchar(25) NOT NULL,
  `account_sdt` int(11) NOT NULL,
  `account_email` varchar(255) DEFAULT NULL,
  `account_address` varchar(255) DEFAULT NULL,
  `role` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`account_id`, `account_user`, `account_pass`, `account_sdt`, `account_email`, `account_address`, `role`) VALUES
(62, 'mrminh04', '17032004', 395110845, 'nguyenminhxp2004@gmail.com', 'Bắc Giang', 0),
(64, 'mrminh041', '17032004', 395110845, 'nguyenminhxp2004@gmail.com', 'Bắc Giang', 0),
(65, 'mrminh04', 'hạdhfahashfa', 395110845, 'nguyenminhxp2004@gmail.com', 'Bắc Giang', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'New product'),
(2, 'What hot'),
(3, 'men_product'),
(4, 'men_featured'),
(5, 'women_product'),
(6, 'women_featured'),
(7, 'kid_product'),
(8, 'kid_featured'),
(9, 'sale_product'),
(10, 'sale_featured');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `color`
--

CREATE TABLE `color` (
  `color_id` varchar(255) NOT NULL,
  `color_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `color`
--

INSERT INTO `color` (`color_id`, `color_name`) VALUES
('Black', 'Black'),
('White', 'White');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderr`
--

CREATE TABLE `orderr` (
  `order_id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_addrees` varchar(255) NOT NULL,
  `customer_sdt` int(11) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `order_date` varchar(255) NOT NULL,
  `totol` int(11) NOT NULL,
  `order_pttt` varchar(255) NOT NULL,
  `order_status` tinyint(4) NOT NULL,
  `receive_name` varchar(255) NOT NULL,
  `receive_sdt` int(11) NOT NULL,
  `receive_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orderr`
--

INSERT INTO `orderr` (`order_id`, `customer_name`, `customer_addrees`, `customer_sdt`, `customer_email`, `order_date`, `totol`, `order_pttt`, `order_status`, `receive_name`, `receive_sdt`, `receive_address`) VALUES
(77, '', '', 0, '', '03:00:42pm 09/12/2023', 14100000, 'Thanh toán khi nhận hàng', 0, 'Nguyễn Văn Minh', 395110845, 'Thôn An Phú, 07714, 221,        24'),
(78, '', '', 0, '', '03:04:19pm 09/12/2023', 3200000, 'Thanh toán khi nhận hàng', 0, 'Nguyễn Văn Minh', 4888, 'Thôn An Phú, 07714, 221,        24'),
(79, '', '', 0, '', '05:48:45pm 09/12/2023', 3200000, 'Thanh toán khi nhận hàng', 0, 'Nguyễn Văn Minh', 2147483647, 'Thôn An Phú, 02560, 076,        08'),
(80, '', '', 0, '', '10:34:46am 10/12/2023', 3200000, 'Thanh toán khi nhận hàng', 0, 'Nguyễn Văn Minh', 5636, 'Thôn An Phú, 08476, 236,        25'),
(81, '', '', 0, '', '04:07:36pm 10/12/2023', 3200000, 'Thanh toán khi nhận hàng', 0, 'Nguyễn Văn Minh', 2147483647, 'Thôn An Phú, 06979, 202,        22'),
(84, '', '', 0, '', '04:09:36am 11/12/2023', 3200000, 'Thanh toán khi nhận hàng', 0, 'Nguyễn Văn Minh', 432523956, 'Thôn An Phú, 07564, 219,        24'),
(85, '', '', 0, '', '04:15:44am 11/12/2023', 3400000, 'Thanh toán khi nhận hàng', 0, 'Nguyễn Văn Minh', 848484838, 'Thôn An Phú, 05971, 178,        20'),
(86, '', '', 0, '', '04:36:31am 11/12/2023', 2147483647, 'Thanh toán khi nhận hàng', 0, 'Nguyễn Văn Minh', 432523956, 'Thôn An Phú, 00493, 017,        01'),
(87, '', '', 0, '', '09:34:10am 13/12/2023', 3200000, 'Thanh toán khi nhận hàng', 0, 'Nguyễn Văn Minh', 395110845, 'Thôn An Phú, 07714, 221,        24'),
(88, '', '', 0, '', '02:18:25pm 19/03/2024', 6400000, 'Thanh toán khi nhận hàng', 0, 'Nguyễn Văn Minh', 432523956, 'Thôn An Phú, 07441, 213,        24'),
(89, '', '', 0, '', '06:06:31am 20/03/2024', 3200000, 'Thanh toán khi nhận hàng', 0, 'Nguyễn Văn Minh', 432523956, 'Thôn An Phú, 07654, 220,        24'),
(90, '', '', 0, '', '07:10:39pm 18/07/2024', 10000000, 'Thanh toán khi nhận hàng', 0, 'Nguyễn Văn Minh', 395110845, 'Thôn An Phú, 07714, 221,        24'),
(91, '', '', 0, '', '07:19:55pm 18/07/2024', 3200000, 'Thanh toán khi nhận hàng', 0, 'Nguyễn Văn Minh', 395110845, 'Thôn An Phú, 07114, 205,        22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderr_cart`
--

CREATE TABLE `orderr_cart` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_thanhtien` int(11) NOT NULL,
  `product_color` varchar(255) NOT NULL,
  `product_size` int(11) NOT NULL,
  `order_cart_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orderr_cart`
--

INSERT INTO `orderr_cart` (`id`, `product_id`, `product_quantity`, `product_thanhtien`, `product_color`, `product_size`, `order_cart_id`) VALUES
(51, 76, 1, 4300000, 'White', 36, 77),
(52, 68, 1, 3400000, 'Black', 36, 77),
(53, 67, 2, 6400000, 'Black', 38, 77),
(54, 67, 1, 3200000, 'White', 36, 78),
(55, 67, 1, 3200000, 'White', 36, 79),
(56, 67, 1, 3200000, 'White', 37, 80),
(57, 67, 1, 3200000, 'White', 36, 81),
(60, 67, 1, 3200000, 'Black', 37, 84),
(61, 68, 1, 3400000, 'Black', 36, 85),
(62, 67, 1000, 2147483647, 'White', 36, 86),
(63, 68, 1, 3400000, 'White', 37, 86),
(64, 68, 1, 3400000, 'Black', 36, 86),
(65, 67, 1, 3200000, 'White', 36, 87),
(66, 67, 1, 3200000, 'Black', 36, 88),
(67, 67, 1, 3200000, 'Black', 37, 88),
(68, 67, 1, 3200000, 'Black', 36, 89),
(69, 67, 1, 3200000, 'Black', 37, 90),
(70, 68, 2, 6800000, 'Black', 37, 90),
(71, 67, 1, 3200000, 'Black', 36, 91);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_image2` varchar(255) NOT NULL,
  `product_image3` varchar(255) NOT NULL,
  `product_image4` varchar(255) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_describe` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_image`, `product_image2`, `product_image3`, `product_image4`, `product_price`, `product_describe`, `product_quantity`, `product_category`) VALUES
(67, 'Air Force 1', 'Air Force 1.webp', 'Air Force 1_2.webp', 'Air Force 1_3.webp', 'Air Force 1_4.webp', 3200000, 'The radiance lives on in the Nike Air Force , the basketball original that puts a fresh spin on what you know best: durably stitched overlays, clean finishes and the perfect amount of flash to make you shine.', 10, 1),
(68, 'Air Jordan 1 Low', 'Air Jordan 1 Low.webp', 'Air Jordan 1 Low_2.webp', 'Air Jordan 1 Low_3.webp', 'Air Jordan 1 Low_4.webp', 3400000, 'The radiance lives on in the Air Jordan 1 Low , the basketball original that puts a fresh spin on what you know best: durably stitched overlays, clean finishes and the perfect amount of flash to make you shine.', 10, 1),
(69, 'Nike Air Max 90', 'Nike Air Max 90.webp', '', '', '', 4300000, 'The radiance lives on in the Nike Go FlyEase , the basketball original that puts a fresh spin on what you know best: durably stitched overlays, clean finishes and the perfect amount of flash to make you shine.', 10, 1),
(70, 'Nike Go FlyEase ', 'Nike Go FlyEase.webp', '', '', '', 5100000, 'The radiance lives on in the Nike Go FlyEase  , the basketball original that puts a fresh spin on what you know best: durably stitched overlays, clean finishes and the perfect amount of flash to make you shine.', 10, 1),
(71, 'Nike Air Huarache Runner', 'Nike Air Huarache Runner.webp', '', '', '', 2600000, 'The radiance lives on in the Nike Air Huarache Runner , the basketball original that puts a fresh spin on what you know best: durably stitched overlays, clean finishes and the perfect amount of flash to make you shine.', 10, 1),
(72, 'Nike Air Max 90', 'Nike Air Max 90.webp', '', '', '', 3500000, 'The radiance lives on in the Nike Air Max 90 , the basketball original that puts a fresh spin on what you know best: durably stitched overlays, clean finishes and the perfect amount of flash to make you shine.', 10, 2),
(73, 'Nike Air Max Pulse Roam', 'Nike Air Max Pulse Roam.webp', '', '', '', 2800000, 'The radiance lives on in the Nike Air Max Pulse Roam , the basketball original that puts a fresh spin on what you know best: durably stitched overlays, clean finishes and the perfect amount of flash to make you shine.', 10, 2),
(74, 'Nike Air Max 1', 'Nike Air Max 1.webp', '', '', '', 3200000, 'The radiance lives on in the Nike Air Max 1 , the basketball original that puts a fresh spin on what you know best: durably stitched overlays, clean finishes and the perfect amount of flash to make you shine.', 10, 2),
(75, 'Jordan Max Aura 5', 'Jordan Max Aura 5.webp', '', '', '', 5300000, 'The radiance lives on in the Jordan Max Aura 5 , the basketball original that puts a fresh spin on what you know best: durably stitched overlays, clean finishes and the perfect amount of flash to make you shine.', 10, 2),
(76, 'Nike Air Trainer 1', 'Nike Air Trainer 1.webp', '', '', '', 4300000, 'The radiance lives on in the Nike Air Trainer 1 , the basketball original that puts a fresh spin on what you know best: durably stitched overlays, clean finishes and the perfect amount of flash to make you shine.', 10, 3),
(77, 'Nike Tanjun', 'Nike Tanjun.webp', '', '', '', 2700000, 'Forget the hype. The Nike Tanjun brings you simplicity at its best. Made from at least 20% recycled content by weight, no detail is overlooked on this one. Lightweight. Airy. Comfortable. This shoe is all you need.', 10, 3),
(78, 'The Vomero 5', 'The Vomero 5.webp', '', '', '', 4600000, 'The Vomero 5 takes early-2000s running to modern heights. A combination of breathable and durable materials stands ready for the rigours of your day, while Zoom Air cushioning delivers a smooth ride.', 10, 3),
(79, 'Air Force 1', 'Air Force 1.webp', '', '', '', 3200000, 'The radiance lives on in the Nike Air Force , the basketball original that puts a fresh spin on what you know best: durably stitched overlays, clean finishes and the perfect amount of flash to make you shine.', 10, 3),
(80, 'Nike Air Flight Lite Mid', 'Nike Air Flight Lite Mid.webp', '', '', '', 4300000, 'The radiance lives on in the Nike Air Flight Lite Mid , the basketball original that puts a fresh spin on what you know best: durably stitched overlays, clean finishes and the perfect amount of flash to make you shine.', 10, 4),
(81, 'Nike Air Huarache Runner', 'Nike Air Huarache Runner.webp', '', '', '', 2600000, 'The radiance lives on in the Nike Air Huarache Runner , the basketball original that puts a fresh spin on what you know best: durably stitched overlays, clean finishes and the perfect amount of flash to make you shine.', 10, 4),
(82, 'Nike Air Max Solo', 'Nike Air Max Solo.webp', '', '', '', 3700000, 'These sneakers are for the Air Max superfans. By combining elements from past Air Max models (like the AM90-inspired heel cup), we created a whole new look. The AM180 influences the textured Air unit, which delivers just the right amount of cushioning. Go', 10, 4),
(84, 'Nike Air Max 1', 'Nike Air Max 1.webp', '', '', '', 3200000, 'The radiance lives on in the Nike Air Max 1 , the basketball original that puts a fresh spin on what you know best: durably stitched overlays, clean finishes and the perfect amount of flash to make you shine.', 10, 4),
(85, 'Nike G.T. Jump 2 EP', 'Nike G.T. Jump 2 EP.webp', '', '', '', 4550000, 'A springy ride for every run, the familiar, just-for-you feel returns to help you accomplish your goals. This milestone version has the same responsiveness you love, but with better comfort in those sensitive areas of your foot, like the arch and toes.', 10, 3),
(86, 'Nike Air Max 95 Essential', '5.webp', '', '', '', 5400000, 'A springy ride for every run, the familiar, just-for-you feel returns to help you accomplish your goals. This milestone version has the same responsiveness you love, but with better comfort in those sensitive areas of your foot, like the arch and toes.', 10, 5),
(87, 'Nike E-Series AD', 'Nike E-Series AD.webp', '', '', '', 3900000, 'A springy ride for every run, the familiar, just-for-you feel returns to help you accomplish your goals. This milestone version has the same responsiveness you love, but with better comfort in those sensitive areas of your foot, like the arch and toes.', 10, 5),
(88, 'Nike Air Max Dawn', 'Nike Air Max Dawn.webp', '', '', '', 4700000, 'A springy ride for every run, the familiar, just-for-you feel returns to help you accomplish your goals. This milestone version has the same responsiveness you love, but with better comfort in those sensitive areas of your foot, like the arch and toes.', 10, 5),
(89, 'Nike TC 7900', '2a344274-603c-4af4-b54d-a0f8945cd05e.webp', '', '', '', 3600000, 'A springy ride for every run, the familiar, just-for-you feel returns to help you accomplish your goals. This milestone version has the same responsiveness you love, but with better comfort in those sensitive areas of your foot, like the arch and toes.', 10, 5),
(90, 'Air Force 1', 'Air Force 1.webp', '', '', '', 3200000, 'The radiance lives on in the Nike Air Force , the basketball original that puts a fresh spin on what you know best: durably stitched overlays, clean finishes and the perfect amount of flash to make you shine.', 10, 6),
(91, 'Air Jordan 1 Low', 'Air Jordan 1 Low.webp', '', '', '', 3400000, 'The radiance lives on in the Air Jordan 1 Low , the basketball original that puts a fresh spin on what you know best: durably stitched overlays, clean finishes and the perfect amount of flash to make you shine.', 10, 6),
(92, 'Nike Air Max 1', 'Nike Air Max 1.webp', '', '', '', 3200000, 'The radiance lives on in the Nike Air Max 1 , the basketball original that puts a fresh spin on what you know best: durably stitched overlays, clean finishes and the perfect amount of flash to make you shine.', 10, 6),
(93, 'Nike Air Trainer 1', 'Nike Air Trainer 1.webp', '', '', '', 4300000, 'The radiance lives on in the Nike Air Trainer 1 , the basketball original that puts a fresh spin on what you know best: durably stitched overlays, clean finishes and the perfect amount of flash to make you shine.', 10, 6),
(94, 'Nike Air Force 1 LV8', 'Nike Air Force 1 LV8.jpg', '', '', '', 4500000, 'A springy ride for every run, the familiar, just-for-you feel returns to help you accomplish your goals. This milestone version has the same responsiveness you love, but with better comfort in those sensitive areas of your foot, like the arch and toes.', 10, 7),
(95, 'Nike Dunk Low SE', 'Nike Dunk Low SE.jpg', '', '', '', 2800000, 'A springy ride for every run, the familiar, just-for-you feel returns to help you accomplish your goals. This milestone version has the same responsiveness you love, but with better comfort in those sensitive areas of your foot, like the arch and toes.', 10, 7),
(96, 'Jordan Nu Retro 1 Low', 'Jordan Nu Retro 1 Low.jpg', '', '', '', 2800000, 'A springy ride for every run, the familiar, just-for-you feel returns to help you accomplish your goals. This milestone version has the same responsiveness you love, but with better comfort in those sensitive areas of your foot, like the arch and toes.', 10, 7),
(97, 'Nike Air Max 90 LTR', 'Nike Air Max 90 LTR.jpg', '', '', '', 4700000, 'A springy ride for every run, the familiar, just-for-you feel returns to help you accomplish your goals. This milestone version has the same responsiveness you love, but with better comfort in those sensitive areas of your foot, like the arch and toes.', 10, 7),
(98, 'Nike Court Borough Low Recraft', 'Nike Court Borough Low Recraft.jpg', '', '', '', 3500000, 'A springy ride for every run, the familiar, just-for-you feel returns to help you accomplish your goals. This milestone version has the same responsiveness you love, but with better comfort in those sensitive areas of your foot, like the arch and toes.', 10, 1),
(99, 'Nike E-Series AD', 'Nike E-Series AD.webp', '', '', '', 3900000, 'A springy ride for every run, the familiar, just-for-you feel returns to help you accomplish your goals. This milestone version has the same responsiveness you love, but with better comfort in those sensitive areas of your foot, like the arch and toes.', 10, 8),
(100, 'Nike TC 7900', '2a344274-603c-4af4-b54d-a0f8945cd05e.webp', '', '', '', 3600000, 'A springy ride for every run, the familiar, just-for-you feel returns to help you accomplish your goals. This milestone version has the same responsiveness you love, but with better comfort in those sensitive areas of your foot, like the arch and toes.', 10, 8),
(101, 'Nike Air Max 1', 'Nike Air Max 1.webp', '', '', '', 3200000, 'The radiance lives on in the Nike Air Max 1 , the basketball original that puts a fresh spin on what you know best: durably stitched overlays, clean finishes and the perfect amount of flash to make you shine.', 10, 8),
(102, 'Air Force 1', 'Air Force 1.webp', '', '', '', 3200000, 'The radiance lives on in the Nike Air Force , the basketball original that puts a fresh spin on what you know best: durably stitched overlays, clean finishes and the perfect amount of flash to make you shine.', 10, 9),
(103, 'Nike Air Flight Lite Mid', 'Nike Air Flight Lite Mid.webp', '', '', '', 4300000, 'The radiance lives on in the Nike Air Flight Lite Mid , the basketball original that puts a fresh spin on what you know best: durably stitched overlays, clean finishes and the perfect amount of flash to make you shine.', 10, 9),
(104, 'Nike Air Huarache Runner', 'Nike Air Huarache Runner.webp', '', '', '', 2600000, 'The radiance lives on in the Nike Air Huarache Runner , the basketball original that puts a fresh spin on what you know best: durably stitched overlays, clean finishes and the perfect amount of flash to make you shine.', 10, 9),
(105, 'Nike Air Max 1', 'Nike Air Max 1.webp', '', '', '', 3200000, 'The radiance lives on in the Nike Air Max 1 , the basketball original that puts a fresh spin on what you know best: durably stitched overlays, clean finishes and the perfect amount of flash to make you shine.', 10, 9),
(106, 'Nike Tanjun', 'Nike Tanjun.webp', '', '', '', 2700000, 'Forget the hype. The Nike Tanjun brings you simplicity at its best. Made from at least 20% recycled content by weight, no detail is overlooked on this one. Lightweight. Airy. Comfortable. This shoe is all you need.', 10, 9),
(107, 'Nike Air Flight Lite Mid', 'Nike Air Flight Lite Mid.webp', '', '', '', 4300000, 'The radiance lives on in the Nike Air Flight Lite Mid , the basketball original that puts a fresh spin on what you know best: durably stitched overlays, clean finishes and the perfect amount of flash to make you shine.', 10, 10),
(108, 'Nike G.T. Jump 2 EP', 'Nike G.T. Jump 2 EP.webp', '', '', '', 4550000, 'A springy ride for every run, the familiar, just-for-you feel returns to help you accomplish your goals. This milestone version has the same responsiveness you love, but with better comfort in those sensitive areas of your foot, like the arch and toes.', 10, 10),
(109, 'Nike Air Max Dawn', 'Nike Air Max Dawn.webp', '', '', '', 4700000, 'A springy ride for every run, the familiar, just-for-you feel returns to help you accomplish your goals. This milestone version has the same responsiveness you love, but with better comfort in those sensitive areas of your foot, like the arch and toes.', 10, 10),
(110, 'Air Force 1', 'Air Force 1.webp', '', '', '', 3200000, 'The radiance lives on in the Nike Air Force , the basketball original that puts a fresh spin on what you know best: durably stitched overlays, clean finishes and the perfect amount of flash to make you shine.', 10, 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `size`
--

CREATE TABLE `size` (
  `size_id` int(11) NOT NULL,
  `size_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `size`
--

INSERT INTO `size` (`size_id`, `size_name`) VALUES
(36, '36'),
(37, '37'),
(38, '38'),
(39, '39'),
(40, '40'),
(41, '41'),
(42, '42'),
(43, '43'),
(44, '44');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`account_id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`color_id`);

--
-- Chỉ mục cho bảng `orderr`
--
ALTER TABLE `orderr`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `orderr_cart`
--
ALTER TABLE `orderr_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_cart_id` (`order_cart_id`),
  ADD KEY `product_size` (`product_size`),
  ADD KEY `product_color` (`product_color`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `product_category` (`product_category`);

--
-- Chỉ mục cho bảng `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`size_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `account`
--
ALTER TABLE `account`
  MODIFY `account_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT cho bảng `orderr`
--
ALTER TABLE `orderr`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT cho bảng `orderr_cart`
--
ALTER TABLE `orderr_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT cho bảng `size`
--
ALTER TABLE `size`
  MODIFY `size_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `orderr_cart`
--
ALTER TABLE `orderr_cart`
  ADD CONSTRAINT `orderr_cart_ibfk_1` FOREIGN KEY (`order_cart_id`) REFERENCES `orderr` (`order_id`),
  ADD CONSTRAINT `orderr_cart_ibfk_2` FOREIGN KEY (`product_size`) REFERENCES `size` (`size_id`),
  ADD CONSTRAINT `orderr_cart_ibfk_3` FOREIGN KEY (`product_color`) REFERENCES `color` (`color_id`),
  ADD CONSTRAINT `orderr_cart_ibfk_4` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`product_category`) REFERENCES `category` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
