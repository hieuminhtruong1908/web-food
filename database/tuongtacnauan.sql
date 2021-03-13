-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2020 at 01:50 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tuongtacnauan`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unsigned_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'Món ngon mỗi ngày',
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `unsigned_name`, `icon`, `note`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Ăn sáng', 'an sang', 'ansang.png', 'Món ngon mỗi ngày', 1, NULL, '2019-09-30 01:28:44'),
(2, 'Ăn vặt', 'an vat', 'anvat.png', 'Món ngon mỗi ngày', 1, NULL, NULL),
(3, 'Khai vị', 'khai vi', 'khaivi.png', 'Món ngon mỗi ngày', 1, NULL, NULL),
(4, 'Món chay', 'mon chay', 'anchay.png', 'Món ngon mỗi ngày', 1, NULL, NULL),
(5, 'Món chính', 'mon chinh', 'monchinh.png', 'Món ngon mỗi ngày', 1, '2019-09-18 00:32:32', '2019-09-18 00:32:32'),
(6, 'Thức uống', 'thuc uong', 'xAGR_thucuong.png', 'Món ngon mỗi ngày', 1, '2019-09-18 00:35:35', '2019-09-18 00:35:35'),
(7, 'Salad', 'salad', '2i4e_salad.png', 'Món ngon mỗi ngày', 1, '2019-09-18 01:07:03', '2019-09-18 01:36:40');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `id_recipe` int(10) UNSIGNED NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dish`
--

CREATE TABLE `dish` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unsigned_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_category` int(10) UNSIGNED NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dish`
--

INSERT INTO `dish` (`id`, `name`, `unsigned_name`, `image`, `id_category`, `note`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Thịt băm bọc trứng cút sốt cà chua phô mai', 'Thit bam boc trung cut sot ca chua pho mai', 'Thịt băm bọc trứng cút sốt cà chua phô mai.jpg', 5, 'món ngon', 1, NULL, '2019-09-18 10:43:08'),
(2, 'Bánh canh Nam Phổ xứ Huế', 'banh canh nam pho xu hue', 'zRKz_4-Bánh canh Nam Phổ xứ Huế.jpg', 3, '\"Bánh Canh Nam Phổ Xứ Huế - món ăn ngon đặc sản của người dân cố đô.', 1, '2019-09-18 10:12:08', '2019-11-08 08:31:37'),
(3, 'Bánh canh cá bớp', 'banh canh ca bop', 'i7FV_Bánh canh cá bớp.jpg', 1, 'Bánh canh ngon lành', 1, '2019-09-19 09:55:42', '2019-09-19 09:55:42'),
(4, 'Bánh canh chả cá thơm ngon dễ làm cho bữa sáng', 'banh canh cha ca thom ngon de lam cho bua sang', 'LQ3S_Bánh canh chả cá thơm ngon dễ làm cho bữa sáng.jpg', 1, 'Bánh canh chả cá thơm ngon', 1, '2019-09-19 09:56:24', '2019-09-19 09:56:24'),
(5, 'Bánh tiêu', 'banh tieu', 'banhtieungon.jpg', 1, 'Bánh tiêu ngon', 1, '2019-09-19 09:56:43', '2019-11-09 11:05:47'),
(6, 'Gà bó xôi chiên giòn', 'ga bo xoi chien gion', 'gaboxoi.jpg', 1, 'ngon lành cho bữa sáng', 1, '2019-09-19 09:57:07', '2019-11-09 11:05:29'),
(7, 'Bánh chocolate hạt khô', 'banh chocolate hat kho', 'qvyS_Bánh chocolate hạt khô.jpg', 2, 'ăn mọi lúc mọi nơi', 1, '2019-09-19 09:57:33', '2019-09-19 09:57:33'),
(8, 'Bánh chocolate không cần lò nướng', 'banh chocolate khong can lo nuong', 'Pvrk_Bánh chocolate không cần lò nướng.jpg', 2, 'Bánh chocolate ngon', 1, '2019-09-19 09:58:06', '2019-09-19 09:58:06'),
(9, 'Kimbap Hàn Quốc', 'kimbap han quoc', 'mOjx_Kimbap Hàn Quốc.jpg', 2, 'đậm hương vị Hàn Quốc', 1, '2019-09-19 09:58:38', '2019-09-19 09:58:38'),
(10, 'Lê chưng mát ngọt', 'le chung mat ngot', 'S8jk_Lê chưng mát ngọt.jpg', 2, 'Ngọt lịm', 1, '2019-09-19 09:58:54', '2019-09-24 21:59:24'),
(11, 'Sa kê chiên giòn', 'sa ke chien gion', '19YF_jPLO_Sa kê chiên giòn.jpg', 2, 'giòn trong từng miếng cắn', 1, '2019-09-19 09:59:14', '2019-11-09 11:07:40'),
(12, 'Chân gà ngâm sả tắc cay', 'chan ga ngam sa tac cay', 'j79D_Chân gà ngâm sả tắc cay.jpg', 3, 'Chân gà cay', 1, '2019-09-19 09:59:45', '2019-09-19 10:03:26'),
(13, 'Cơm cháy chà bông giòn rụm', 'com chay cha bong gion rum', 'zSMP_Cơm cháy chà bông giòn rụm.jpg', 3, 'Cơm cháy đặc sản', 1, '2019-09-19 10:00:04', '2019-09-19 10:00:04'),
(14, 'Gỏi thịt bò trộn rau càng cua', 'goi thit bo tron rau cang cua', 'Rpph_Gỏi thịt bò trộn rau càng cua.jpg', 3, 'ngon ngon', 1, '2019-09-19 10:00:32', '2019-09-19 10:03:02'),
(15, 'Trứng chén nướng', 'trung chen nuong', '0Ml8_Trứng chén nướng.jpg', 3, 'ngon ngon', 1, '2019-09-19 10:00:47', '2019-09-19 10:00:47'),
(16, 'Trứng cút lộn xào me', 'trung cut lon xao me', 'LHxH_Trứng cút lộn xào me.jpg', 3, 'ăn với cơm ngon lành', 1, '2019-09-19 10:01:06', '2019-09-19 10:01:06'),
(17, 'Cá chạch kho nghệ', 'ca chach kho nghe', 'J9rW_Cá chạch kho nghệ.jpg', 5, 'ăn với cơm là tuyệt vời', 1, '2019-09-19 10:01:29', '2019-09-19 10:01:29'),
(18, 'Cơm gà xối mỡ', 'com ga xoi mo', 'TSwK_Cơm gà xối mỡ.jpg', 5, 'ăn với cơm', 1, '2019-09-19 10:01:47', '2019-09-19 10:01:47'),
(19, 'Lẩu kim chi Hàn Quốc', 'lau kim chi han quoc', 'yRcl_Lẩu kim chi Hàn Quốc.jpg', 5, 'lẩu ngon cho ngày đông giá lạnh', 1, '2019-09-19 10:04:20', '2019-09-19 10:04:20'),
(20, 'Mì xào giòn thập cẩm', 'mi xao gion thap cam', 'Agdx_Mì xào giòn thập cẩm.jpg', 5, 'mì xào', 1, '2019-09-19 10:04:34', '2019-09-19 10:04:34'),
(21, 'Nước ép cóc', 'nuoc ep coc', 'fBOs_Nước ép cóc.jpg', 6, 'nước ép cóc', 1, '2019-09-19 10:04:56', '2019-09-19 10:04:56'),
(22, 'Pina colada cocktail', 'pina colada cocktail', 'olFm_Pina colada cocktail.jpg', 6, 'Pina colada', 1, '2019-09-19 10:05:11', '2019-09-19 10:05:11'),
(23, 'Siro dâu tằm', 'siro dau tam', 'v3gH_Siro dâu tằm.jpg', 6, 'Siro dâu', 1, '2019-09-19 10:05:27', '2019-09-19 10:05:27'),
(24, 'Sữa gạo rang', 'sua gao rang', 'd5Yj_Sữa gạo rang.jpg', 6, 'Sữa gạo', 1, '2019-09-19 10:05:41', '2019-09-19 10:05:41'),
(25, 'Sữa hạnh nhân ngọt ngào', 'sua hanh nhan ngot ngao', 'Ereu_Sữa hạnh nhân ngọt ngào.jpg', 6, 'Sữa hạnh nhân', 1, '2019-09-19 10:05:57', '2019-09-19 10:05:57'),
(26, 'Trà sữa hoàng gia', 'tra sua hoang gia', 'BeuF_Trà sữa hoàng gia.jpg', 6, 'Trà sữa', 1, '2019-09-19 10:06:09', '2019-09-19 10:06:09'),
(27, 'Bánh canh trứng cút', 'banh canh trung cut', 'CC6j_1-Bánh canh trứng cút.jpg', 1, '\"Bánh Canh Trứng Cút nóng hổi, cực ngon miệng trong những ngày se lạnh.\"', 1, '2019-10-01 06:52:40', '2019-10-02 03:13:52'),
(28, 'Xôi vò', 'xoi vo', 'nzxh_vxOw_2-Xôi vò.jpg', 1, 'Xôi vò là món ngon bữa sáng quen thuộc, bổ dưỡng của người Việt.', 1, '2019-10-01 06:53:14', '2019-11-09 11:08:03'),
(29, 'Bánh canh thịt vịt', 'banh canh thit vit', '9gJr_3-Bánh canh thịt vịt.jpg', 1, '\"Bánh Canh Thịt Vịt là một trong những món bánh canh ngon, hấp dẫn và hương vị mới lạ.\"', 1, '2019-10-01 06:53:40', '2019-10-02 03:15:03'),
(30, 'Bánh canh chả cá', 'banh canh cha ca', 'tZmR_4-Bánh canh chả cá.jpg', 1, 'Bánh canh chả cá là món ngon bữa sáng hấp dẫn, bổ dưỡng, giúp cung cấp nguồn năng lượng dồi dào cho cả ngày dài học tập và làm việc.', 1, '2019-10-01 06:54:13', '2019-10-02 03:15:39'),
(31, 'Bánh canh cá lóc Quảng Trị', 'banh canh ca loc quang tri', 'CGuO_5-Bánh canh cá lóc Quảng Trị.jpg', 1, 'Bánh Canh Cá Lóc Quảng Trị được đánh giá là một trong những món ăn lot vào trong top 50 món ăn ngon của Việt Nam.', 1, '2019-10-01 06:54:41', '2019-10-02 03:16:03'),
(32, 'Bánh burger thịt heo', 'banh burger thit heo', 'xx8g_6-Bánh burger thịt heo.jpg', 1, 'Bánh hamburger là món ăn nhanh được rất nhiều bạn trẻ yêu thích hiện nay. Phần vỏ bánh mềm, xốp, giòn bọc lấy phần nhân thịt heo được tẩm ướp đậm đà.', 1, '2019-10-01 07:16:18', '2019-10-02 03:16:27'),
(33, 'Bánh canh cá lóc miền Tây', 'banh canh ca loc mien tay', 'brFn_7.0-Bánh canh cá lóc miền Tây.jpg', 1, 'Bánh Canh Cá Lóc Miền Tây vừa ngon vừa giúp thanh nhiệt ngày hè cho cả gia đình.', 1, '2019-10-01 07:16:46', '2019-10-02 03:16:54'),
(34, 'Bánh burger mini', 'banh burger mini', 'banhbergermini.jpg', 1, 'Chiếc bánh burger nhỏ xinh hóa ra làm dễ quá trời.', 1, '2019-10-01 07:17:12', '2019-11-09 11:09:55'),
(35, 'Bánh canh cá lóc', 'banh canh ca loc', 'OaIC_5-Bánh canh cá lóc Quảng Trị.jpg', 1, 'Bánh Canh Cá Lóc là một trong những món bánh canh ngon và phổ biến của miền Tây.', 1, '2019-10-01 07:17:38', '2019-11-09 11:10:27'),
(36, 'Bánh canh bột xắt nước dừa nấu tôm', 'banh canh bot xat nuoc dua nau tom', 'M1P1_11-Bánh canh bột xắt nước dừa nấu tôm.jpg', 1, 'Bánh Canh Bột Xắt Nước Dừa Nấu Tôm là một trong những món ngon đặc trưng của miền Tây.', 1, '2019-10-01 07:18:38', '2019-10-02 03:18:15'),
(37, 'Bánh canh bột lọc', 'banh canh bot loc', '52jt_12-Bánh canh bột lọc.jpg', 1, 'Bánh Canh Bột Lọc với hương vị hấp dẫn, đặc trưng cho bữa sáng đầy đủ dinh dưỡng.', 1, '2019-10-01 07:19:46', '2019-10-02 03:18:33'),
(38, 'Bánh mì Việt Nam', 'banh mi viet nam', 'oaH9_13-Bánh mì Việt Nam.jpg', 1, 'Bánh mì Việt Nam là món ăn sáng quen thuộc của nhiều người Việt', 1, '2019-10-01 07:20:12', '2019-10-02 03:18:54'),
(39, 'Bún mắm miền tây đúng điệu', 'bun mam mien tay dung dieu', 'AXHm_14-Bún mắm miền tây đúng điệu.jpg', 1, 'Bún Mắm Miền Tây đúng điệu, thơm ngon, hấp dẫn cho bữa tiệc cả nhà đây.', 1, '2019-10-01 07:20:32', '2019-10-02 03:19:14'),
(40, 'Súp cua thập cẩm', 'sup cua thap cam', 'UMLf_15-Súp cua thập cẩm.jpg', 1, 'Súp cua thập cẩm là món ăn ngon dùng khai vị cho bữa tiệc gia đình thêm ngon miệng hoặc làm món ăn sáng nóng hổi trong những ngày lạnh.', 1, '2019-10-01 07:20:56', '2019-10-02 04:07:29'),
(41, 'Bánh bột nếp chiên', 'banh bot nep chien', 'GHyx_16-Bánh bột nếp chiên.jpg', 1, 'Bánh bột nếp chiên là món ăn sáng và ăn vặt dẻo dẻo, dai dai, béo ngon, cực hấp dẫn.', 1, '2019-10-01 07:44:19', '2019-10-02 04:07:56'),
(42, 'Bún riêu thịt', 'bun rieu thit', 'SEYF_17-Bún riêu thịt.jpg', 1, 'Bún riêu thịt là món ăn ngon hoàn toàn khác với bún riêu cua.', 1, '2019-10-01 07:44:44', '2019-10-02 04:08:11'),
(43, 'Bánh bột chiên béo thơm', 'banh bot chien beo thom', 'UIxL_18-Bánh bột chiên béo thơm.jpg', 1, 'Bánh Bột Chiên là món ngon ăn vặt đặc trưng của người Sài Gòn.', 1, '2019-10-01 07:45:11', '2019-10-02 04:08:27'),
(44, 'Salad rau trộn sốt mayonnaise', 'salad rau tron sot mayonnaise', 'Riym_Salad rau trộn sốt mayonnaise.jpg', 7, 'Salad Rau Trộn Sốt Mayonnaise - Món salad ngon, cực hấp dẫn tại nhà.', 1, '2019-10-01 08:16:33', '2019-10-02 03:21:57'),
(45, 'Salad tôm', 'salad tom', 'LHgP_5.7.jpg', 7, 'Một đĩa salad tôm chua chua, ngọt ngọt, ăn rất ngon miệng sẽ khiến cả nhà bạn phải thèm cho mà xem.', 1, '2019-10-01 08:17:42', '2019-11-09 11:10:46'),
(46, 'Salad gà', 'salad ga', 'ZM4N_Salad tôm.jpg', 7, 'Salad gà với vị giòn giòn, thanh mát của rau kết hợp với vị ngọt của thịt gà và vị ngậy của sốt Mayonaise kèm thêm chút cay của tương ớt.', 1, '2019-10-01 08:18:20', '2019-11-09 11:11:11'),
(47, 'Salad cà rốt', 'salad ca rot', 'xsh1_Salad cà rốt.jpg', 7, 'Sự giòn ngọt của cà rốt cùng vị béo, bùi của trái bơ giàu vitamin sẽ tạo cảm giác vừa ngon vừa lạ cho món salad, làm mát dịu những ngày hè oi bức.', 1, '2019-10-01 08:18:59', '2019-10-02 03:22:52'),
(48, 'Salad khoai tây', 'salad khoai tay', 'cXpb_Salad khoai tây.jpg', 7, 'Salad khoai tây trộn trông thật bắt mắt. Đây là một cách biến tấu làm salad khoai tây không bị chán mà trở nên hấp dẫn và lạ miệng hơn rất nhiều.', 1, '2019-10-01 08:19:34', '2019-11-09 11:11:29'),
(49, 'Salad đậu que', 'salad dau que', 'VYbc_Salad đậu que.jpg', 7, 'Những món ăn có nguồn gốc từ thực vật luôn cung cấp nhiều vitamin cũng như các khoáng chất thiết yếu cho cơ thể', 1, '2019-10-01 08:20:27', '2019-10-02 03:24:29'),
(50, 'Bánh chiffon cam', 'banh chiffon cam', 'Rr8s_Salad cà rốt.jpg', 3, 'Chiffon cam là loại bánh mềm xốp, nhẹ và thơm thơm mùi cam, vị ngon ngọt của bánh hài hòa cùng với vị chua ngọt của cam sẽ khiến bạn chẳng thể chối từ.', 1, '2019-11-08 08:29:36', '2019-11-09 11:11:54'),
(51, 'Súp bắp cua', 'sup bap cua', 'KQKa_3-Súp bắp cua.jpg', 3, 'Tự tay chế biến súp bắp cua ở nhà không hề khó chút nào. Mời bạn tham khảo cách làm sau đây để chuẩn bị bữa sáng ngon lành cho cả nhà nhé.', 1, '2019-11-08 08:29:57', '2019-11-08 08:29:57'),
(52, 'Kim chi Hàn Quốc', 'kim chi han quoc', '8Gmv_5-Kim chi Hàn Quốc.jpg', 3, 'Kim chi Hàn Quốc là một món ăn ngon nổi tiếng của xứ sở Kim Chi.', 1, '2019-11-08 08:32:12', '2019-11-08 08:32:12'),
(53, 'Bánh chả cua', 'banh cha cua', 'sbjz_6-Bánh chả cua.jpg', 3, 'Bánh chả cua là sự kết hợp của nhiều nguyên liệu, gia vị với thịt cua là đặc trưng khiến cho món ăn thêm phần hấp dẫn và cuốn hút bởi màu sắc bắt mắt.', 1, '2019-11-08 08:32:32', '2019-11-08 08:32:32'),
(54, 'Chả lụa thịt gà', 'cha lua thit ga', 'ucxD_10-Chả lụa thịt gà.jpg', 3, 'Được biến tấu từ món giò heo, rất nhiều nguyên liệu như bò, gà được dùng làm giò ngày Tết.', 1, '2019-11-08 08:33:55', '2019-11-08 08:33:55'),
(55, 'Bắp bò nhúng mẻ', 'bap bo nhung me', 'n1RW_11-Bắp bò nhúng mẻ.jpg', 3, 'Lẩu bắp bò nhúng mẻ vị chua chua, thanh thanh ăn cùng những loại rau vườn, khế chua, chuối chát thì đúng là \"đặc sản\" của quê nhà.', 1, '2019-11-08 08:34:21', '2019-11-08 08:34:21'),
(56, 'Gỏi củ hũ dừa tôm thịt', 'goi cu hu dua tom thit', '6tJP_12-Gỏi củ hũ dừa tôm thịt.jpg', 3, 'Gỏi củ hũ dừa tôm thịt mà Cooky giới thiệu hôm nay ngoài vị giòn giòn sừng sựt của các loại rau củ còn có sự thơm ngọt của tôm và thịt, tô điểm thêm rau răm, đậu phộng rang và 1 ít hành phi, làm món khai vị ngon khó cưỡng lại được.', 1, '2019-11-08 08:34:59', '2019-11-08 08:34:59'),
(57, 'Bánh bột lọc đậu xanh', 'banh bot loc dau xanh', 'U0Gl_14-Bánh bột lọc đậu xanh.jpg', 3, 'Bánh Bột Lọc Đậu Xanh với đậu xanh béo béo, bùi bùi, dễ kết hợp với nhiều món nên luôn là nguyên liệu được ưu ái trong những món ăn Việt.', 1, '2019-11-08 08:35:52', '2019-11-08 08:35:52'),
(58, 'Gỏi gà bắp cải', 'goi ga bap cai', '33UQ_15-Gỏi gà bắp cải.jpg', 3, 'Gỏi gà bắp cải là món ngon từ gà rất được ưa chuộng, thích hợp dùng làm món ăn khai vị cho bữa cơm gia đình, hoặc các bữa tiệc liên hoan, sum họp cùng bạn bè.', 1, '2019-11-08 08:36:12', '2019-11-08 08:36:12'),
(59, 'Bánh bột mì Ấn Độ', 'banh bot mi an do', 'cjTx_16-Bánh bột mì Ấn Độ.jpg', 3, 'Bánh Bột Mì Ấn Độ là món ăn sáng lạ miệng, thơm ngon, cho cả nhà. Với thời gian làm bánh siêu tốc, cách làm bánh bột mì Ấn Độ cũng khá đơn giản, chấm cùng mật ong, nhâm nhi cực thỏa thích.', 1, '2019-11-08 08:36:34', '2019-11-08 08:36:34');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `message`, `created_at`, `updated_at`) VALUES
(1, 18, 'alo', '2019-10-24 11:27:08', '2019-10-24 11:27:08'),
(2, 18, 'hehe', '2019-10-24 11:32:10', '2019-10-24 11:32:10'),
(3, 18, 'hi', '2019-10-24 11:33:55', '2019-10-24 11:33:55'),
(4, 2, 'alo', '2019-10-24 11:39:33', '2019-10-24 11:39:33'),
(5, 18, 'hi', '2019-10-24 11:41:15', '2019-10-24 11:41:15'),
(6, 2, 'kaka', '2019-10-24 11:44:00', '2019-10-24 11:44:00'),
(7, 18, 'vc', '2019-10-24 11:44:04', '2019-10-24 11:44:04'),
(8, 18, 'Cái méo gì vậy', '2019-10-24 11:44:44', '2019-10-24 11:44:44'),
(9, 18, 'hehe được rồi nè', '2019-10-24 11:45:56', '2019-10-24 11:45:56'),
(10, 2, 'làm gì được đâu', '2019-10-24 11:49:48', '2019-10-24 11:49:48'),
(11, 18, 'hjx', '2019-10-24 12:06:15', '2019-10-24 12:06:15'),
(12, 18, 'nản vãi', '2019-10-24 12:06:19', '2019-10-24 12:06:19'),
(13, 18, 'nản r', '2019-10-24 12:08:33', '2019-10-24 12:08:33'),
(14, 2, 'hello', '2019-10-25 01:11:19', '2019-10-25 01:11:19'),
(15, 15, 'hihihiih', '2019-10-25 01:11:25', '2019-10-25 01:11:25'),
(16, 2, 'kaka', '2019-10-25 01:12:02', '2019-10-25 01:12:02'),
(17, 2, 'hhhhhhhhhhh', '2019-10-25 01:12:09', '2019-10-25 01:12:09'),
(18, 2, 'alo', '2019-10-25 01:15:26', '2019-10-25 01:15:26'),
(20, 2, 'hi', '2019-10-28 09:25:09', '2019-10-28 09:25:09'),
(21, 2, 'kaka', '2019-10-28 09:25:17', '2019-10-28 09:25:17'),
(22, 2, 'hihi', '2019-10-28 09:25:58', '2019-10-28 09:25:58'),
(23, 2, 'kaka', '2019-10-28 09:26:01', '2019-10-28 09:26:01'),
(24, 2, 'kaka', '2019-10-28 22:58:47', '2019-10-28 22:58:47'),
(25, 2, 'hehe', '2019-10-28 22:58:59', '2019-10-28 22:58:59'),
(26, 2, 'hello', '2019-10-30 01:07:57', '2019-10-30 01:07:57'),
(27, 15, 'chào nha', '2019-10-30 01:08:04', '2019-10-30 01:08:04'),
(28, 15, 'hihihih', '2019-10-30 01:08:39', '2019-10-30 01:08:39'),
(29, 3, 'chào tất cả mọi người', '2019-10-30 02:17:25', '2019-10-30 02:17:25'),
(30, 4, 'hello mn', '2019-10-30 02:20:43', '2019-10-30 02:20:43'),
(31, 2, 'alo', '2019-10-30 02:28:18', '2019-10-30 02:28:18'),
(32, 2, 'hello', '2019-10-30 23:03:07', '2019-10-30 23:03:07'),
(33, 15, 'chào nha', '2019-10-30 23:03:35', '2019-10-30 23:03:35'),
(34, 2, 'oh ho', '2019-10-30 23:03:42', '2019-10-30 23:03:42'),
(35, 15, 'chào mn nhé', '2019-10-30 23:23:49', '2019-10-30 23:23:49'),
(36, 2, 'uk chào', '2019-10-30 23:23:55', '2019-10-30 23:23:55'),
(37, 15, 'chào mọi người nha hôm nay mới online', '2019-11-01 07:22:56', '2019-11-01 07:22:56'),
(38, 2, 'hi', '2019-11-04 01:02:45', '2019-11-04 01:02:45'),
(39, 3, 'chao mn', '2019-11-04 01:02:56', '2019-11-04 01:02:56'),
(40, 2, 'hello', '2019-11-04 01:03:16', '2019-11-04 01:03:16'),
(41, 3, 'hôm nay bà tan vlog sẽ làm món mì siêu cay khổng lồ', '2019-11-04 01:04:11', '2019-11-04 01:04:11'),
(42, 2, 'alo', '2019-11-05 20:24:58', '2019-11-05 20:24:58'),
(43, 2, 'hello', '2019-11-06 07:53:09', '2019-11-06 07:53:09'),
(44, 2, 'alo alo', '2019-11-09 10:10:04', '2019-11-09 10:10:04'),
(45, 2, '11/11/2019', '2019-11-10 22:09:51', '2019-11-10 22:09:51'),
(46, 2, 'alo alo alo', '2019-11-10 22:43:05', '2019-11-10 22:43:05'),
(47, 15, 'hi', '2019-11-11 01:24:46', '2019-11-11 01:24:46'),
(48, 19, 'alo', '2019-11-11 07:12:37', '2019-11-11 07:12:37'),
(49, 20, '?????', '2019-11-12 05:15:42', '2019-11-12 05:15:42'),
(50, 20, '123', '2019-11-12 05:16:03', '2019-11-12 05:16:03');

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
(3, '2019_09_16_102024_slide', 1),
(4, '2019_09_16_171140_category', 1),
(5, '2019_09_17_161407_dish', 1),
(6, '2019_09_17_161736_recipes', 1),
(9, '2019_10_24_142140_create_websockets_statistics_entries_table', 3),
(16, '2020_02_29_124914_create_recipe_table', 4),
(17, '2020_02_29_124947_create_comments_table', 4),
(18, '2020_02_29_125008_create_steps_table', 4);

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
-- Table structure for table `recipe`
--

CREATE TABLE `recipe` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_dish` int(10) UNSIGNED NOT NULL,
  `status` int(11) DEFAULT NULL,
  `materials` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `eater` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE `recipes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_dish` int(10) UNSIGNED NOT NULL,
  `id_user` int(11) UNSIGNED NOT NULL,
  `amount` int(11) NOT NULL,
  `materials` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `eater` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `step_1` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `step_2` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `step_3` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `step_4` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `step_5` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `step_6` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_6` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `step_7` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_7` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`id`, `name`, `id_dish`, `id_user`, `amount`, `materials`, `eater`, `time`, `step_1`, `image_1`, `step_2`, `image_2`, `step_3`, `image_3`, `step_4`, `image_4`, `step_5`, `image_5`, `step_6`, `image_6`, `step_7`, `image_7`, `level`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Thịt băm bọc trứng sốt cà chua', 1, 2, 13, 'Thịt heo bằm 100 gr,\r\n Cà chua 2 quả,\r\n Đậu hũ non 50 gr,\r\n Hành tím 10 gr,\r\n Hành lá 5 gr,\r\n Bơ lạt 5 gr,\r\n Dầu ăn 10 ml,\r\n Nước 30 ml,\r\n Hạt nêm 2 muỗng canh,\r\n Đường trắng 2 muỗng cà phê,\r\n Tiêu 1/2 muỗng cà phê,\r\n Nước tương 1 muỗng canh,\r\n Nước mắm 2 muỗng canh', 2, 35, 'Đầu tiên là sơ chế các nguyên liệu. Trứng cút luộc chín sau đó bóc vỏ. Cắt hạt lựu lần lượt đậu hũ non, cà chua; băm nhỏ hành tím và cuối cùng là cắt nhỏ hành lá.', 'Cb8Z_1.jpg', 'Cho 50gr đậu hũ non, 5gr hành tím, 5gr hành lá vào tô thịt bằm. Sau đó nêm thêm 1tbs hạt nêm, 1tsp đường, 1/2 tsp tiêu, 1tbs nước tương, 1tbs nước mắm. Trộn đều các nguyên liệu và sau đó ướp khoảng 10-15 phút cho thịt ngấm đều gia vị bạn nhé. Lấy khoảng 12gr thịt đã tẩm ướp dàn đều lên tay và đặt 1 trái trứng cút vào giữa, vo tròn lại sao cho thịt ôm trọn lấy trứng là thành công nhé các bạn.', '6kqq_2.jpg', 'Làm nóng dầu ăn trên chảo, sau đó cho lần lượt các viên thịt vào, chiên cho thịt chín, bên ngoài vàng đều, cháy xém nhẹ một chút là cực ngon rồi nha.', 'G4H4_3.jpg', 'Phần tiếp theo là làm sốt cà chua phô mai, một phần linh hồn của món ăn đây rồi. Mình làm nóng chảo, rồi cho 5ml dầu ăn vào, tiếp theo đun chảy 10gr bơ lạt. Khi bơ lạt tan chảy thì cũng là lúc mình cho thêm hành tím phi lên cho dậy mùi thì cho cà chua vào chảo. Nêm sốt 1tbs nước mắm, 1/2 tbs đường, 2 tbs hạt nêm, đun tới lúc cà chua mềm nhũn và phấn sốt sền sệt là công đoạn làm sốt đã đi được một nửa rồi.', '1mui_4.jpg', 'Tiếp theo mình cho thêm 10ml nước, 10ml sữa tươi, 5gr sốt phô mai rồi quậy đều cho hỗn hợp hoà quyên với nhau, đun sôi lên thì cho thịt viên vào chảo đảo đều cho thấm sốt. Vậy là mình đã hoàn thành xong món ăn rồi đấy.', 'JOxQ_5.jpg', 'Đây là thành phẩm của mình, trông thiệt ngon mắt phải không nào.', 'U49Z_6.jpg', NULL, NULL, 1, 1, '2019-09-25 23:10:33', '2019-11-05 21:26:09'),
(4, 'Bánh canh trứng cút ngon', 27, 2, 10, 'Bột gạo 400 gr,\r\n Xương heo 300 gr,\r\n Sườn non 300 gr,\r\n Trứng cút 20 quả,\r\n Hành lá 2 cây,\r\n Ngo rí 2 nhánh,\r\n Hạt nêm 1 muỗng canh,\r\n Muối 1/2 muỗng cà phê,\r\n Bột ngọt 1/2 muỗng cà phê,\r\n Tiêu 1/2 muỗng cà phê', 2, 30, 'Rửa sạch hành lá và ngò rí, cắt nhỏ. Luộc chín trứng cút, bóc vỏ.', 'pL9k_1.3.jpg', 'Làm bánh canh: Bột gạo đổ ra 1 tô thật to, chừa 1 chút bột để làm bột áo. Đun nước sôi già rồi rót từ từ vào bột, tỉ lệ khoảng 3 bột 1 nước, rồi nhanh tay nhào bột. Vắt bột thành từng vắt to bằng quả cam, cán bột thành từng miếng mỏng. Lúc cán nhớ cho bột áo để bột không bị dính. Cắt bột thành sợi bánh canh vừa ăn.', 'osiw_1.7.jpg', 'Cách nấu nước dùng bánh canh xương heo: Cho xương vào nồi, nấu khoảng 1 tiếng. Nêm hạt nêm, muối, bột ngọt, tiêu. Chú ý hớt bọt để nước dùng trong. Khi thấy nồi nước đã ngọt, vớt xương ra, cho sườn vào đun thêm 1 lúc cho sườn đủ chín là được.', '8htP_1.9.jpg', 'Dùng 1 chiếc vá như hình trên cho bột vào, rồi nhúng vào nồi nước. Chú ý nhúng sao cho bột ngập nước. Đợi sôi 2 phút.', 'tPTn_1.11.jpg', 'Sau khi sợi bánh canh chín thì cho vào tô. Xếp trứng cút lên, múc nước sườn vào. Rắc hành lá và ngò rí. Nếu thích cay có thể cho thêm ớt. Bánh canh xương trứng cút với hương vị đậm đà, thơm ngon, mời cả nhà ăn sáng rất hấp dẫn đấy nhé!', 'jiJs_1.12.jpg', '', '', NULL, NULL, 1, 1, '2019-10-01 06:58:44', '2019-10-02 03:47:49'),
(5, 'Xôi vò ngon', 28, 2, 5, 'Gạo nếp 500 gr,\r\n Đậu xanh 250 gr,\r\n Muối 1/2 muỗng cà phê,\r\n Đường trắng 2 muỗng canh,\r\n Nước cốt dừa 50 ml', 4, 60, 'Ngâm đậu xanh qua đêm rồi vo sạch, cho vào nồi nấu chín với 1/2 muỗng cà phê muối.\r\n Dùng chày giã nhuyễn đậu xanh đã chín rồi vo lại thành từng nắm.\r\n Bạn cũng có thể dùng muỗng tán nhuyễn mịn đậu xanh nếu không có chày nhé! Xôi vò ngon chính là chọn được đậu xanh còn mới, hạt nhỏ, không bị lẫn nhiều tạp chất.', 'GnlM_2.3.jpg', 'Vo sạch gạo nếp, ngâm qua đêm, để ráo nước.\r\n Bước ngâm gạo nếp qua đêm rất quan trọng. Nhờ bước này, xôi vò khi nấu lên sẽ được dẻo, xốp mềm và không bị sượng.', '4lz8_2.4.jpg', 'Cho gạo nếp vào khăn sạch, lau cho thật ráo nước.\r\n Chọn các loại khăn có độ thấm hút nước tốt để lau. Gạo nếp càng ráo thì nấu xôi vò càng ngon, càng khéo', 'PKj4_2.6.jpg', 'Cho gạo nếp vào khăn sạch, lau cho thật ráo nước.\r\n Chọn các loại khăn có độ thấm hút nước tốt để lau. Gạo nếp càng ráo thì nấu xôi vò càng ngon, càng khéo.\r\n Cách nấu xôi vò: Cho gạo nếp vào chõ hấp xôi vò. Hấp khoảng 15 phút thì cho 2 muỗng canh đường và 50ml nước cốt dừa vào, trộn đều. Hấp thêm khoảng 5-7 phút nữa cho xôi vò chín rồi đổ ra đĩa lớn.\r\n Trong quá trình hấp, nhớ lấy khăn sạch lau khô nắp chõ để nước không đọng, rơi xuống làm ẩm, ướt xôi vò.', 'ps0a_2.7.jpg', 'Nhanh tay dùng đũa xới đều xôi vò với 1/4 đậu xanh bào còn lại. Trộn cho xôi thật tơi.', 'OGRf_2.8.jpg', 'Cho xôi vò ra đĩa và tha hồ thưởng thức. Xôi vò ăn nóng hay nguội đều có vị ngon riêng. Nếu buổi sáng không có thời gian ăn tại nhà thì bạn cho xôi vò vào từng túi và đưa cho mọi người trong gia đình mang đến trường, nơi làm việc để ăn. Cách nấu xôi vò đơn giản quá chừng phải không, có thể bảo quản trong tủ lạnh khoảng 2 ngày. Bạn nhớ bọc kín xôi trong túi zip hoặc đậy đĩa/ tô xôi bằng màng bọc thực phẩm để xôi vò không bị khô nhé!', 'nzxh_vxOw_2-Xôi vò.jpg', NULL, NULL, 3, 1, '2019-10-01 07:05:03', '2019-10-02 03:53:47'),
(6, 'Bánh canh thịt vịt', 29, 2, 14, 'Thịt vịt 1/2 con,\r\n Nấm bào ngư 300 gr,\r\n Gừng 1 củ,\r\n Hành lá 2 cây,\r\n Rượu trắng 200 ml,\r\n Hạt nêm 1/2 muỗng cà phê,\r\n Muối 3/2 muỗng cà phê,\r\n Đường trắng 1 muỗng cà phê,\r\n Hành tím băm 1 muỗng cà phê,\r\nNgo rí 10 gr,\r\n Dầu điều 2 muỗng cà phê,\r\n Bột gạo 400 gr,\r\n Bột năng 50 gr,\r\n Tiêu 1/2 muỗng cà phê', 4, 40, 'Cách làm bánh canh bột xắt: Trộn lẫn bột gạo với bột năng ra thau lớn, thêm 1/2 muỗng cà phê muối, trộn đều. Đổ từ từ nước sôi nóng già, vừa đổ vừa dùng muôi gỗ trộn bột. Dùng tay nhồi đến khi hỗn hợp bột thành mịn, dẻo. Cán cho cục bột dẹt ra, mỏng đều. Dùng dao bén cắt bột thành từng sợi dài, khi cắt nhớ áo một ít bột để chống dính. Cắt bỏ chân nấm, rửa sạch, ngâm vào thau nước lạnh có pha một ít muối khoảng 10 phút. Rửa sạch hành lá và ngò rí, cắt nhỏ.', '34bB_3.5.jpg', 'Rửa sạch gừng, giã gừng, trộn chung với rượu trắng. Vịt rửa sạch, chặt nhỏ, chà hỗn hợp gừng và rượu trắng lên khắp thân vịt, để khoảng 20 phút sau đó rửa lại cho thật sạch, để vịt lên rổ cho ráo nước.', 'n4lP_3.7.jpg', 'Phần vịt sau khi ráo nước, cho ra thau lớn, thêm hành tím băm, 1 muỗng cà phê muối, đường, hạt nêm, tiêu và một ít gừng giã nhuyễn, trộn đều, ướp khoảng 2-3 tiếng.', 'tS3h_3.8.jpg', 'Đun nóng dầu điều, phi tỏi thơm, cho hỗn hợp thịt vịt đã ướp vào nồi, đun lửa lớn đến khi sôi thì đun lửa nhỏ, đổ 1.5 lít nước lạnh vào nồi đun sôi đến khi vịt mềm.', 'mqUw_3.9.jpg', 'Thả nấm vào nồi vịt đang đun, nêm nếm lại gia vị cho vừa ăn. Thả sợi bánh canh đã cắt vào nồi thịt vịt, đun sôi đến khi sợi bánh canh nổi trong, nêm nếm lại gia vị tùy theo khẩu vị.', 'NMpJ_3.10.jpg', 'Tắt bếp, thêm hành lá, ngò rí vào. Múc bánh canh vịt ra chén/tô dùng nóng. Với cách nấu bánh canh vịt, nếu thích bạn có thể thêm tiết lợn, hay trứng cút vào nồi bánh canh, hương vị sẽ thêm thơm ngon nhé. Vào bếp làm ngay bánh canh vịt đãi cả nhà ăn sáng ngon miệng nhé!', 'RyAM_3.11.jpg', NULL, NULL, 2, 1, '2019-10-01 07:09:30', '2019-10-02 03:55:10'),
(7, 'Bánh canh chả cá', 30, 2, 12, 'Bột gạo 2 chén,\r\n Bột năng 250 gr,\r\n Phi lê cá 500 gr\r\n(Cá thác lác),\r\n Ớt 1 trái,\r\n Xương ống 1 kg,\r\n Hành lá 1/2 cây,\r\n Nước mắm 2 muỗng canh,\r\n Đường trắng 1 muỗng cà phê,\r\n Tiêu 1/2 muỗng cà phê,\r\n Ngò rí 5 gr,\r\n Hạt nêm 1 muỗng cà phê,\r\n Muối 1/2 muỗng cà phê', 4, 45, 'Ninh nước dùng từ xương lợn khoảng 2 giờ, trong quá trình đun nhớ vớt bọt để nước dùng được trong.', 'tNWP_4.1.jpg', 'Trộn bột năng với bột gạo với nhau. Đun nước sôi, rưới đều lên bột rồi nhồi đến khi hỗn hợp bột đó mềm mịn, dai là được. Chia bột thành từng viên tròn bằng nắm tay, dùng chai cán mỏng rồi thái thành từng sợi to bằng đầu đũa.\r\n Để tiết kiệm thời gian làm bánh canh chả cá, bạn có thể tìm mua bánh canh bột gạo bán sẵn ở các chợ và siêu thị.', 'PP5u_4.2.jpg', 'Quết nhuyễn thịt phi lê cá với đầu hành, muối, đường, hạt nêm, tiêu. Quết đến khi thấy phần thịt cá dai, dẻo dính vào nhau là được.\r\n Cách làm bánh canh chả cá cực nhất là ở bước này đó. Quết càng mạnh tay và càng lâu thì chả cá càng dai ngon.', 'Lvu6_4.3.jpg', 'Vớt bỏ phần xương trong nước dùng bánh canh chả cá, nêm nước mắm, hạt nêm vào nước dùng cho vừa ăn. Dùng muỗng chia từng viên chả cá thành miếng vừa ăn rồi cho vào nồi nước dùng, khuấy đều.\r\n Nếu có thời gian thì có thể chiên hoặc hấp chả cá để bánh canh chả cá hấp dẫn hơn.', 'xXug_4.4.jpg', 'Đun sôi một nồi nước khác, cho sợi bánh canh vào chần sơ qua. Xả lại bằng nước lạnh rồi để ráo. Khi nước dùng bánh canh chả cá đã chuẩn bị xong, cho tiếp sợi bánh canh đã chần vào rồi đun sôi, nêm nếm lại cho hợp khẩu vị gia đình nếu cần.', 'mvwr_4.5.jpg', 'Múc bánh canh chả cá ra tô và thưởng thức. Bánh canh chả cá dùng nóng với ít hành ngò, thêm chén nước mắm ớt kế bên là hết sảy. Vào những ngày mưa hay tiết trời se lạnh được măm măm 1 tô bánh canh chả cá nóng hôi hổi thì còn gì bằng! Cuối tuần các bạn nhất định phải thử cách làm bánh canh chả cá này để đãi gia đình nhé!\r\n Cho xương lợn vào túi lưới rồi mới cho vào nồi hầm. Túi lưới sẽ giúp nước dùng bánh canh chả cá không bị lẫn những mảnh xương nhỏ, ăn ngon hơn. \"', 'JKMH_4.6.jpg', NULL, NULL, 2, 1, '2019-10-01 07:12:48', '2019-10-02 03:56:36'),
(8, 'Bánh canh cá lóc Quảng Trị', 31, 2, 7, 'Cá 1 con,\r\n Bột gạo 300 gr,\r\n Kẹo caramel 200 lá,\r\n Đường 200 gr,\r\n Tiêu 50 gr,\r\n Cá xay 500 gr,\r\n Ớt 3 trái', 4, 30, 'Chặt cá lóc thành miếng vừa ăn, rửa sạch nguyên liệu. Luộc cá vừa chín tới, vớt cá ra ngoài. Phi hành cùng ớt chín vàng. Cho hỗn hợp vừa phi chín tới vào nước cá đã luộc.', 'ftsb_5.2.jpg', 'Cách nấu bánh canh cá lóc: Tách thịt cá ra khỏi xương lựa phần nạc bỏ riêng sang 1 tô, tiếp tục cho nước đun sôi trong 10 phút. Cho cá xay đã vo viên tròn (nếu các bạn khéo tay tạo hình cho cá viên thành hình tròn sẽ ngon mắt hơn) vào trong nấu chín. Cho gia vị đã chuẩn bị vào nêm vừa ăn. Chú ý: nêm tiêu vào lúc cuối cùng vì tiêu chính là hương vị chính làm dậy mùi của món ăn.', '56Yc_5.5.jpg', 'Cho hành lá đã thái nhỏ lên bên trên, trang trí ra tô. Vậy là đã có món bánh canh cá lóc đúng điệu đất Quảng Trị rồi. Hãy lưu lại cách làm bánh canh cá lóc đặc trưng của vùng đất Quảng Trị nhé. Hứa hẹn sẽ là món banh cá lóc đổi vị cho cả nhà cuối tuần đấy.', 'jkKW_5.7.jpg', '', '', '', '', '', '', NULL, NULL, 1, 1, '2019-10-01 07:15:29', '2019-10-02 03:58:12'),
(9, 'Bánh burger thịt heo', 32, 2, 11, 'Thịt heo bằm 283 gr,\r\n Bánh mì 2 cái\r\n(Burger),\r\n Sốt tương đen 2 muỗng canh,\r\n Gừng 1 miếng,\r\n Giấm 1 muỗng canh,\r\n Củ cải đỏ 85 gr,\r\n Sốt Mayonnaise 2 muỗng canh,\r\n Bông cải xanh 9/4 gr,\r\n Muối 3/2 muỗng cà phê,\r\n Tiêu 3/2 muỗng cà phê,\r\n Dầu olive 1 muỗng canh', 2, 25, 'Rửa sạch củ cải đỏ, bông cải xanh, để ráo nước. Bông cải xanh cắt bỏ phần thân, thái nhỏ. Gừng rửa sạch, gọt vỏ, thái nhỏ. Bánh burger cắt làm đôi. Củ cải thái lát mỏng, cho củ cải vào bát ướp cùng giấm và dầu olive. Trong một chiếc bát nhỏ, cho mayonnaise, 1/2 phần sốt tương đen, 1/2 muỗng cà phê muối và hạt tiêu vào khuấy đều, để riêng.', 'Xong_6.1.jpg', 'Chế biến bông cải xanh: Cho bông cải xanh lên khay nướng, cho dầu olive, 1/2 muỗng cà phê muối và hạt tiêu vào trộn đều. Cho khay súp lơ vào lò và nướng khoảng 16-18 phút hoặc đến khi bông cải chín, chuyển màu. Tắt lò, lấy khay bông cải ra, cho dầu mè vào trộn đều.\r\n Cách làm hamburger thịt heo này ngon hơn là nhờ có bông cải nướng này đó, các bạn không được bỏ qua nha !', 'UF4f_6.2.jpg', 'Cách làm nhân bánh hamburger: Trong một chiếc bát, cho thịt heo xay, gừng thái nhỏ, phần nước sốt tương đen còn lại, thêm 1/2 muỗng cà phê muối và hạt tiêu vào trộn đều. Chia hỗn hợp thịt thành 2 phần bằng nhau có độ dày khoảng 1,25cm. Để riêng ra đĩa. Đun nóng chảo cùng chút dầu olive, cho thịt heo đã viên vào chiên mỗi mặt khoảng 3 - 5 phút hoặc cho đến khi thịt chín, sém cạnh. Gắp ra đĩa, dùng giấy bạc bọc lại để thịt nóng.', '7oZU_6.3.jpg', 'Nướng bánh burger: Cho bánh mì vào áp chảo khoảng 1 - 2 phút cho đến khi bánh mì sém cạnh. Gắp ra đĩa để riêng. Cho bánh mì lên đĩa, rưới nước sốt lên trên bánh mì, xếp thịt heo rồi củ cải đỏ lên rồi kẹp miếng bánh còn lại lên trên cùng. Ăn bánh burger cùng súp lơ xanh vừa nướng sẽ rất ngon, lại đầy đủ dinh dưỡng.', 'tPHf_6.4.jpg', 'Bánh burger thịt heo với lớp vỏ mềm, củ cải giòn, nước sốt béo ngậy bọc lấy nhân thịt heo xay đậm đà, ăn kèm bông cải xanh nướng vừa ngon vừa đầy đủ dinh dưỡng. Cách làm bánh burger heo lại không hề khó, các bạn có thể tự làm ở nhà để giúp bữa ăn sáng của gia đình thêm phần thú vị nha !', 'cAEq_6.6.jpg', '', '', NULL, NULL, 2, 1, '2019-10-01 07:24:08', '2019-10-02 03:58:52'),
(10, 'Bánh canh cá lóc miền Tây', 33, 2, 13, 'Cá lóc 500 gr,\r\n Hạt nêm 1/2 muỗng canh,\r\n Muối 1/2 muỗng canh,\r\n Cà chua 1 trái,\r\n Ngò rí 20 gr,\r\n Tiêu 1 muỗng cà phê,\r\n Hành tím 1 củ,\r\n Chả cá 500 gr,\r\n Hành lá 20 gr,\r\n Hẹ 20 gr,\r\n Giá đỗ 20 gr,\r\n Nước 2 lít,\r\n Bánh canh 400 gr', 4, 25, 'Sơ chế cá lóc, thái mỗi con làm 5 phần. Lưu ý cá lóc khi mua về nên được xát chanh hoặc muối để cá sạch bạn nhé. Bỏ cá lóc vào nồi và đổ khoảng 200ml nước (hoặc 1/3 dung tích nồi nấu). Bật lửa nấu trong khoảng 10 - 15 phút sau đó tắt bếp và vớt cá ra, để ráo khoảng 5 phút.\r\n Sở dĩ không đổ nước vào nhiều là do thịt cá rất dễ bị bở, ngoài ra bước này bạn khoan hãy phi hành. Một số ý cho rằng nên chiên cá hoặc phi hành sẽ khử được mùi tanh, thế nhưng như vậy sẽ khiến bánh canh của bạn trở nên đầy dầu mỡ. Chỉ cần xát chanh và muối ở bước sơ chế là được rồi bạn nhé, cá sẽ giữ được độ ngọt và mềm', 'qne9_7.1.jpg', 'Chuẩn bị nguyên liệu đi kèm, bao gồm: chả cá, giá, hẹ, hành, ngò, cà chua và bánh canh. Chả cá mua ngoài hay bị gắt dầu, tốt hơn hết hãy chần sơ qua nước nóng bạn nhé. Rửa sạch giá, hẹ, hành, ngò và cà chua. Sau đó thái hành, hẹ ra từng khúc, cà chua xắt dọc làm 4 để nấu cùng nước lèo. Về bánh canh, khi mua về hãy chịu khó chần qua nước đun sôi bạn nhé, bánh sẽ ngon hơn và khử được mùi chua vốn có.\r\n Cần rửa sạch gốc hẹ và hành bạn nhé, nên dùng muối để ngâm rau.', 'EToO_7.2.jpg', 'Nấu bánh canh cá lóc miền Tây: dùng lại phần nước đã luộc cá trước đó, đổ gần đầy nồi nấu, bỏ cà chua đã thái vào nồi. Cho 1/2 muỗng canh muối và 1/2 muỗng canh hạt nêm, tùy bạn thích ăn mặn ngọt như nào có thể bổ sung thêm nhé.\r\n Giá, hẹ nên được trần riêng ở nồi nước sôi khác nhé, để tránh nước lèo của bạn có vị \"\"lạ\"\".', 'qL91_7.3.jpg', 'Đậy nắp đung sôi và trong thời gian này bạn có thể tiến hành rút xương cá, chuẩn bị tô cho cả nhà rồi! Tăng hương vị cho nước dùng thông qua hành tím phi và chút ngò, hành nhé.\r\n Khi hành đã được phi xong, bạn tắt bếp và bỏ ngay vào chảo ngò và tiêu nhé, sau đó bỏ hỗn hợp vào nồi nước dùng. Đây là bí kíp khá hay để tăng hương thơm cho các loại nước dùng đấy!', '3nFU_7.6.jpg', 'Bước cuối cùng là đổ nước dùng vào tô đã chuẩn bị sẵn. Bánh canh cá lóc thành phẩm có hương vị thơm ngon, ngọt tự nhiên của cả lóc. Đặc biệt với cách nấu bánh canh cá lóc miền Tây này, nước dùng sẽ cực đậm vị, lại giúp thanh nhiệt cho ngày nắng nóng. Chúc cả nhà thành công!', 'e8hX_7.8.jpg', '', '', NULL, NULL, 1, 1, '2019-10-01 07:26:59', '2019-10-02 03:59:28'),
(11, 'Bánh burger mini', 34, 2, 7, 'Bột mì 200 gr,\r\n Bơ 14 gr,\r\n Muối 5 gr,\r\n Đường trắng 16 gr,\r\n Trứng gà 1 quả,\r\n Sữa tươi 100 gr,\r\n Mè trắng 1 chén', 2, 100, 'Trộn bột làm bánh burger: bột mì, bơ, muối, đường, trứng, sữa tươi vào trộn đều với nhau rồi đem ủ ở nhiệt độ thường khoảng 1 tiếng.', 'g0aZ_8.1.jpg', 'Sau đó chia bột thành 9 phần đều nhau, tiếp tục ủ trong 50 phút nữa trong nhiệt độ (35-40 độ C).', '9j3u_8.2.jpg', 'Sau khi ủ bột xong, rắc mè trắng lên trên rồi đem nướng ở 200 độ C trong 10 phút.', 'deic_8.3.jpg', 'Bánh gurger chín vàng đem ra. Tròn tròn, nhỏ nhắn, thơm thơm, rất tiện để mang đi ăn trong các buổi dã ngoại nữa đấy! Bánh burger sau khi chia bột xong các bạn có thể bọc lại để tủ lạnh sáng rã đông rồi ủ lần 2 cho lớn là nướng bình thường rồi, rất tiện phải không nào. Có thể cắt đôi, kẹp rau xà lách, thịt nguội, phô mai vào trong, ăn chả khác gì ngoài tiệm luôn.', 'qIZK_8.5.jpg', '', '', '', '', NULL, NULL, 2, 1, '2019-10-01 07:28:42', '2019-10-02 03:59:58'),
(12, 'Bánh canh cá bớp', 3, 2, 18, 'Cá bớp 500 gr,\r\n Xương heo 300 gr,\r\n Cà rốt 200 gr,\r\n Củ cải trắng 200 gr,\r\n Nấm rơm 150 gr,\r\n Trứng cút 10 quả,\r\n Bánh canh 300 gr\r\n(Tươi),\r\n Hành lá 50 gr,\r\n Ngo rí 50 gr,\r\n Hành tím 50 gr,\r\n Đường phèn 50 gr,\r\n Muối 1 muỗng cà phê,\r\n Nước mắm 2 muỗng cà phê,\r\n Bột canh 1 muỗng canh,\r\n Tiêu 1 muỗng cà phê,\r\n Dầu ăn 1 muỗng canh,\r\n Ớt 4 quả,\r\n Chanh 1 trái', 4, 55, 'Chặt nhỏ xương heo, rửa sạch, chần qua nước sôi. Sau đó, vớt xương ra rồi cho lượng nước lọc vừa đủ vào nồi để hầm xương.', 'z0NZ_10.1.jpg', 'Gọt vỏ cà rốt, củ cải, rửa sạch tỉa hoa (tùy thích). Rửa sạch nấm rơm, ngâm nước muối 15 phút rồi vớt ra để ráo. Rửa sạch cá bóp thái miếng nhỏ vừa rồi ướp với muối. Luộc trứng cút, bọc vỏ. Cọng bánh canh chần sơ qua nước sôi 2 phút rồi vớt ra để ráo. Hành tím phi thơm, ớt đỏ thái khoanh.', 'tgkU_10.3.jpg', 'Khi nồi xương hầm sôi khoảng 20 phút thì tiếp tục cho cà rốt và củ cải vào nấu cho đến khi chín mềm. Kế tiếp, cho cá bóp vào nấu tiếp trên lửa vừa.', 'id8B_10.9.jpg', 'Khi nồi nước dùng sôi lên lần nữa thì cho nấm rơm vào rồi nêm nếm gia vị muối, bột canh, đường phèn theo liều lượng tùy khẩu vị gia đình. Tiếp đó, cho hành lá và tiêu xay vào thì tắt bếp', 'iuOY_10.10.jpg', 'Cho cọng bánh canh vào tô rồi gắp cá bóp với cà rốt, củ cải, hành ngò vào tô rồi chan nước dùng lên, dùng nóng. Nước dùng thanh ngọt, đậm đà với từng miếng cá tươi ngon, mềm thơm, béo ngậy quyện với những cọng bánh canh trắng ngần, thật hấp dẫn. Đây là món bánh canh cá bớp tươi, thơm ngon, dễ nấu, bạn có thể nấu cho cả nhà thưởng thức mà không tốn quá nhiều thời gian.', 'cGht_10.11.jpg', '', '', NULL, NULL, 1, 1, '2019-10-01 07:31:11', '2019-10-02 04:00:45'),
(13, 'Bánh canh bột xắt nước dừa nấu tôm', 36, 2, 6, 'Dừa nạo 300 gr,\r\n Tôm tươi 300 gr\r\n(Tôm đất),\r\n Bánh canh 500 gr\r\n(Bột gạo),\r\n Nước mắm 1/2 muỗng canh,\r\n Bột ngọt 1/2 muỗng cà phê,\r\n Muối 1/2 muỗng cà phê', 2, 25, 'Cho nước ấm vào vắt dừa ra nước cốt', 'x1bb_11.1.jpg', 'Lột vỏ tôm, giữ lại phần gạch tôm', 'WSAe_11.2.jpg', 'Rửa bánh canh cho sạch phần bột phủ bên ngoài', 'FGsS_11.3.jpg', 'Cách nấu bánh canh bột gạo nước dừa: Cho nồi nước cốt dừa lên bếp, nấu sôi vừa. Nêm muối. Sau đó cho bánh canh vào. Cho tôm vào đảo đều tay, để tôm chín sẽ có màu đỏ cam rất đẹp. Nêm bột ngọt.\r\n Khuấy đều tay, nếu ko bánh canh sẽ dính nồi', 'F4rx_11.5.jpg', 'Múc bánh canh bột xắt nước dừa nấu tôm ra tô, cho hành ngò vào. Nêm mỗi tô 1/2-1 muỗng canh nước mắm tùy theo khẩu vị. Với cách nấu bánh canh bột gạo nước dừa này, cực đơn giản nhưng lại rất thơm ngon đấy nhé. Còn lăn tăn gì mà không làm ngay món bánh canh bột xắt mời cả nhà nào!', 'H3KC_11.6.jpg', '', '', NULL, NULL, 2, 1, '2019-10-01 07:33:44', '2019-10-02 04:01:31'),
(14, 'Bánh canh bột lọc', 37, 2, 11, 'Bột năng 400 gr,\r\n Cá lóc 250 gr,\r\n Hành lá 100 gr,\r\n Hành tím 1 củ,\r\n Dầu ăn 2 muỗng canh,\r\n Ớt 2 trái,\r\n Nước mắm 1 muỗng canh,\r\n Nước màu 1 muỗng canh,\r\n Hạt nêm 1 muỗng cà phê,\r\n Bột ngọt 1/2 muỗng cà phê,\r\n Ớt bột 1/2 muỗng cà phê', 2, 35, 'Làm sạch cá lóc, cho vào nồi nước, luộc chín, giữ lại phần nước luộc cá. Vớt cá lóc ra, róc lấy thịt, bỏ xương, cho ra đĩa.', 'jDyl_12.1.jpg', 'Rửa sạch hành tím, hành lá, ớt, cắt nhỏ, cho ra đĩa.', 'lglD_12.2.jpg', 'Cách làm bánh canh bột lọc: Cho bột năng vào một mặt phẳng rộng, tạo một trũng sâu ở giữa. Đổ từ từ nước nóng vào giữa, dùng tay trộn đều thành một hỗn hợp dẻo, mềm.', 'N6eq_12.4.jpg', 'Cán mỏng bột, dùng dao cắt bột thành sợi dài khoảng 7cm. Sau đó, cho sợi bánh canh vào nồi nước sôi, luộc chín.', 'osrW_12.6.jpg', 'Cách nấu bánh canh bột lọc: Phi thơm hành tím với 2 muỗng canh dầu ăn. Cho cá lóc, 1 muỗng canh nước mắm, 1 muỗng canh nước màu, 1 muỗng cà phê hạt nêm, 1/2 muỗng cà phê bột ngọt, 1/2 muỗng cà phê ớt bột vào, đảo đều 1 phút. Lọc nước luộc cá qua rây, cho vào ngập mặt cá lóc, nấu sôi để làm nước dùng.', 'SvVa_12.7.jpg', 'Vớt sợi bánh canh ra rổ, để ráo, cho vào tô. Cho cá lóc, chan nước vào. Rắc hành lá, ớt lên trên và thưởng thức! Tô bánh canh bột lọc thành phẩm có sợi bánh canh dai dai, cùng với nước dùng đậm vị, thơm lừng, đảm bảo sẽ chiều lòng cả thực khách khó tính nhất đấy!', 'HAKR_12.8.jpg', NULL, NULL, 2, 1, '2019-10-01 07:36:22', '2019-10-02 04:02:13'),
(15, 'Bánh mì Việt Nam', 38, 2, 6, 'Bột mì 300 gr,\r\n Bơ 20 gr,\r\n Men nở 8 gr,\r\n Đường trắng 15 gr,\r\n Muối 4 gr,\r\n Dầu ăn 1 muỗng cà phê', 3, 55, 'Trước khi làm bánh mì Việt Nam cần hoà men nở vào 190ml nước ấm để kích hoạt men khoảng 5 phút (chú ý nước chỉ ấm khoảng 20 độ C). Cách làm bánh mì Việt Nam: Trộn đều bột mì, muối, đường trắng trong 1 cái tô. Sau đó, đổ hỗn hợp men nở vào cùng, trộn đều thành một hỗn hợp bột mềm, mịn.\r\n Cách làm bánh mì không bị vón cục bột: Rây bột qua 1 lần trước khi cho vào tô, bánh mì Việt Nam ra thành phẩm sẽ có phần ruột tơi xốp, mềm mịn.', 'g9mT_13.1.jpg', 'Tiếp tục cho 20gr bơ vào, nhào đều đến khi bột mịn. Rắc tí bột mì ra mặt phẳng bất kì, đặt bột bánh mì lên nhào tiếp khoảng 5-7 phút đến khi bột bánh mì dẻo mịn, không dính tay. Vo tròn khối bột bánh mì. Rưới 1 muỗng cà phê dầu ăn vào tô, đặt miếng bột bánh mì vào, đậy kín, ủ 1 giờ', 'ewEi_13.8.jpg', 'Lúc này, bột bánh mì Việt Nam sẽ nở gấp 3 lần. Tiếp tục rắc bột lên mặt phẳng và nhào lần 2 khoảng 5-7 phút. Đậy kín, ủ thêm 60 phút nữa. Bột bánh mì sau khi ủ sẽ nở thêm ra, sợi bột dai, có thớ', '7e1d_13.9.jpg', 'Tiếp tục nhào bột bánh mì cho vỡ hết bọt khí. Chuẩn bị tạo hình bánh mì Việt Nam. Ngắt bột bánh mì thành những phần nhỏ. Dàn đều bột bánh mì thành miếng tròn mỏng.\r\n Mỗi viên bột mình ngắt tầm 70gr. Nếu thích ăn bánh mì Việt Nam ổ lớn hơn thì bạn ngắt cục bột to hơn nhé!\r\n Gấp 2 bên miếng bột. Gấp phần đỉnh vào rồi cuộn lại. Bím phần mép và 2 đầu. Vo tròn dài, béo bụng.', 'ZZ3b_13.14.jpg', 'Xếp bánh mì lên khay nướng có lót sẵn 1 lớp giấy nến. Đậy khăn ủ 30 phút để bột nở ra.\r\n Làm nóng lò nướng ở nhiệt độ 180 độc C trong khoảng 15 phút trước khi nướng bánh. Làm nóng lò nướng ở nhiệt độ 180 độc C trong khoảng 15 phút trước khi nướng bánh. Rạch nhẹ bánh mì, bánh sẽ tự mở miệng ra sau 30 giây (có thể khía bánh chéo tuỳ thích). Bánh mì Việt Nam nưởng ở nhiệt độ 170 độ trong 10 phút đầu. lấy khay bánh mì nướng ra xịt đẫm nước và nướng tiếp 10-12 phút nữa (nhiệt 150 độ) đến khi vỏ bánh mì Việt Nam vàng đều.\r\n Phun đẫm nước trước khi nướng để bánh mì Việt Nam khi nướng được mỏng vỏ và không bị nứt.', '3xDg_13.16.jpg', 'Lấy vỉ bánh mì Việt Nam nướng ra ngoài, để hơi nguội 1 tí. Bánh mì Việt Nam thành phẩm mỏng vỏ, vàng giòn, ruột mềm xốp, thơm ngon.\r\n Cách làm bánh mì Việt Nam tuy nhiều bước nhưng mỗi bước đều không quá khó để thực hiện. Bắt tay vào làm bánh mì Việt Nam ngay hôm nay bạn nhé!', 'nOxH_13.18.jpg', NULL, NULL, 2, 1, '2019-10-01 07:40:10', '2019-10-02 04:03:14'),
(16, 'Bún mắm miền tây đúng điệu', 39, 2, 15, 'Mắm cá linh 300 gr,\r\n Dừa xiêm 1 trái,\r\n Mắm cá sặc 300 gr,\r\n Xương heo 500 gr,\r\n Cá loc 500 gr,\r\n Cà tím 2 trái,\r\n Cá hú 500 gr,\r\n Mực ống 300 gr,\r\n Tôm tươi 300 gr,\r\n Thịt heo quay 300 gr,\r\n\r\n Tỏi 1 muỗng canh,\r\n Sả băm 100 gr,\r\n Hành tím băm 2 muỗng canh,\r\n Ớt 10 gr,\r\n He 100 gr', 5, 60, 'Để nấu bún mắm ngon trước tiên cần lấy nước 1 trái dừa xiêm nấu cùng 3 lạng mắm cá linh và 3 lạng mắm cá sặc. Nấu riu riu trong gần 1 tiếng để mắm rục rã. Sau đó lọc qua ray để bỏ cặn, lấy nước mắm.\r\n Nếu dừa ít nước, bạn chủ động bạn lấy nước 2 trái cho vào đun cùng. Có thể dùng xương ống hoặc sườn già (khoảng 500gr). Rửa sạch, sau đó cho nước ngập xương kèm theo chút muối, đun sôi lên, để xương ra chất dơ, đổ nước dơ đó đi và bỏ xương lại vào nồi to, cho ngập nước lần nữa, thêm muối. Bắt đầu hầm với lửa nhỏ trong vòng 1 đến 1h30p.\r\n Đặc biệt, khi nấu bún mắm nếu mọi người mua được đầu cá lóc, xương cá để hầm thì càng ngọt nước và đúng vị (mua khoảng 500gr xương cá).', 'X6S9_14.1.jpg', 'Lấy 1 trái cà tím to, cắt miếng vừa ăn và ngâm vào nước muối khoảng 10 phút cho cà không bị đen. Bằm nhuyễn tỏi + ớt + hành tím + sả. Sau đó đun nóng dầu ăn và cho các gia vị này vào xào cho dậy mùi thơm, cuối cùng là cho cà tím vào xào khoảng 5 phút.', '6OSd_14.3.jpg', 'Sau khi hầm xương ra chất ngọt, gắp bỏ xương ra hết và đổ nồi nước mắm vào đun. Khi nước sôi, đổ cà tím và các gia vị vừa xào vào nồi nước, vặn nhỏ lửa, đun riu riu cho nước mắm hòa quyện vào nước hầm xương. Đun khoảng 30 phút đến 1 tiếng, tùy theo bạn nêm nếm nước dùng đã sắc và đậm đà hay chưa, cắt nhỏ vài cọng hẹ vào cho thơm nhé. Gia vị thì cho bột nêm, muối hoặc nước mắm tùy theo khẩu vị nêm nếm của mỗi người. Lúc này, bạn nào muốn nước dùng có vị béo thì có thể cho 2 - 3 khứa cá hú vào đun cùng, chọn khứa cá có chút mỡ sẽ rất ngon.', 'WKLh_14.4.jpg', 'Nấu xong phần nước dùng của món bún mắm là thấy mọi việc nhẹ nhõm. Còn lại chỉ là sơ chế sạch hải sản và luộc chín tôm lột vỏ, mực cắt khoanh bỏ da luộc. Heo quay cắt miếng vừa ăn.\r\n Nước luộc tôm mực, mọi người nên tận dụng đổ luôn vào nồi nước dùng bún mắm sẽ bao ngọt nhé.', 'WNkS_14.5.jpg', 'Rau ăn kèm bún mắm miền Tây thì thôi rồi nhiều vô kể, gồm: rau nhút, rau muống bào, bông súng, kèo nèo, rau má, rau đắng, giá, hẹ, có chỗ còn thêm bông bí, bông điên điển (nói chung ai muốn ăn gì thì mua đó).', 'K7fO_14.6.jpg', 'Thế là từ nay thèm thuồng bún mắm thì không phải chạy khắp nơi tìm quán roài. Ăn bún mắm ở nhà, ai siêng thì làm mắm me, không siêng thì pha chút nước mắm mặn cùng tí bột ngọt, xắt miếng ớt tươi vào cho cay, vắt miếng tắc vào cho chua chua. Rồi thì chấm hải sản mà làm tới thôi. Không nhiều thịt thà như ngoài quán vì em chỉ thích tôm, mực, heo quay nên làm mỗi 3 món này. Khoái bún mắm vì ăn được quá nhiều loại rau 1 lần.', 'zDIg_14.7.jpg', NULL, NULL, 3, 1, '2019-10-01 07:43:06', '2019-10-02 04:04:06'),
(21, 'Sa kê chiên giòn', 11, 2, 6, 'Quả sa kê 300 gr,\r\n Bột chiên giòn 50 gr,\r\n Trứng gà 1 quả,\r\n Mè trắng 2 muỗng canh,\r\n Dầu ăn 1/2 chén,\r\n Muối 1 muỗng cà phê', 35, 60, 'Cách làm sa kê chiên giòn ngon: Chọn mua quả sa kê còn xanh và cứng. Gọt vỏ quả sa kê, cắt làm 4 và bỏ phần lõi. Sau đó, cắt lát dày khoảng 1cm đến 1.5cm, ngâm ngay các miếng sa kê vừa cắt vào nước pha 1 muỗng cà phê muối để khỏi bị thâm đen.', 'yvWm_2.49.jpg', 'Làm hỗn hợp bột chiên sa kê: Đập trứng gà cho ra chén, khuấy đều. Tiếp theo, cho bột chiên giòn, mè trắng vào chén trứng, trộn đều như hình bên.Để làm sa kê chiên giòn ngon thì hỗn hợp bột chiên không pha quá lỏng hay quá sánh đặt. Để nhúng sa kê vào bột dễ bám hơn', 'LHzE_2.51.jpg', 'Cách làm sa kê chiên giòn: Đun nóng nhiều dầu ăn trong chảo (hoặc nồi nhỏ). Nhúng các miếng sa kê vào hỗn hợp trứng, bột chiên và mè đã trộn ở trên. Thả nhẹ nhàng vào chảo. Sa kê tẩm bột chiên ngập dầu cho đến khi vàng giòn đều các mặt thì vớt ra để ráo dầu. Nên chiên sa kê ngập dầu để đảm bảo miếng sa kê chiên giòn đều. Lúc chiên sa kê nên mở lửa nhỏ vừa. Khi sa kê chiên chín thì mới mở to lửa cho sa kê giòn rồi vớt ra ngay.', 'Bsh9_2.52.jpg', 'Cho sa kê chiên giòn ra đĩa, chấm cùng tương ớt hoặc tương cà hay sốt mayonnaise tùy thích. Món sa kê chiên giòn làm món ăn vặt hoặc khai vị cho bữa cơm gia đình đều rất tuyệt. Sa kê chiên xong nên dọn ra và dùng ngay, vì để lâu ngoài không khí dễ bị ỉu mềm. Nếu công phu hơn, bạn có thể làm sa kê lắc phô mai hay xí mụi để ăn vặt rất ngon tuyệt vời đấy.', 'jAyO_2.53.jpg', '', '', '', '', '', '', 2, 1, '2020-02-18 08:17:56', '2020-02-18 08:17:56');

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE `slide` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`id`, `name`, `image`, `content`, `link`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Slide 1', 'Nmki_newsletter-bg.jpg', 'new', 'http://', 1, '2019-09-20 20:44:14', '2019-09-20 20:44:14'),
(2, 'Slide 2', 'IPo6_gallery_08.jpg', 'new 2', 'http://', 1, '2019-09-20 20:48:08', '2019-09-20 20:48:08'),
(4, 'slide 4', 'VfNJ_cooky-ads-637057967324628185.jpg', 'abc xyz', 'asdfghjkl', 1, '2019-10-08 22:51:33', '2019-10-08 22:51:33'),
(5, 'slide 5', 'sacE_cooky-ads-637057953342208300.jpg', 'sữa đậu xanh lá dứa', 'qưertyuio', 1, '2019-10-08 22:57:36', '2019-10-08 22:57:36');

-- --------------------------------------------------------

--
-- Table structure for table `steps`
--

CREATE TABLE `steps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `step` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_recipe` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tukhoa`
--

CREATE TABLE `tukhoa` (
  `id` int(11) UNSIGNED NOT NULL,
  `tukhoa` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sex` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int(11) DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `avatar`, `name`, `fullname`, `sex`, `email`, `email_verified_at`, `password`, `role`, `address`, `phone`, `level`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'FPvT_1564476292.jpg', 'Trương Minh Hiếu', NULL, '1', 'hieuminhtruong1908@gmail.com', NULL, '$2y$10$CHktdAN4TGXWnwmTRXZ0JeLFXFAIHqSjX9Mp6PlIzjFWXSFLlJcNy', 1, 'Bắc Ninh', 382788384, 1, 1, NULL, '2019-09-20 21:31:50', '2019-11-10 01:42:18'),
(3, 'PgWn_staff-01.jpg', 'Chuyên gia 1', NULL, '1', 'specialist1@gmail.com', NULL, '$2y$10$CHktdAN4TGXWnwmTRXZ0JeLFXFAIHqSjX9Mp6PlIzjFWXSFLlJcNy', 3, 'Mỹ', 123456789, 10, 1, NULL, '2019-09-20 21:33:07', '2019-09-20 21:33:07'),
(4, '5mKy_staff-02.jpg', 'Chuyên gia 2', NULL, '1', 'specialist2@gmail.com', NULL, '$2y$10$CHktdAN4TGXWnwmTRXZ0JeLFXFAIHqSjX9Mp6PlIzjFWXSFLlJcNy', 3, 'Brazil', 123456789, 10, 1, NULL, '2019-09-20 21:33:40', '2019-09-20 21:33:40'),
(5, 'rzv8_staff-03.jpg', 'Chuyên gia 3', NULL, '1', 'specialist3@gmail.com', NULL, '$2y$10$CHktdAN4TGXWnwmTRXZ0JeLFXFAIHqSjX9Mp6PlIzjFWXSFLlJcNy', 3, 'Nam Phi', 123456789, 10, 1, NULL, '2019-09-20 21:34:06', '2019-09-20 21:34:06'),
(6, 'j290_1564475362.jpg', 'chuyen gia 4', NULL, '1', 'specialist4@gmail.com', NULL, '$2y$10$CHktdAN4TGXWnwmTRXZ0JeLFXFAIHqSjX9Mp6PlIzjFWXSFLlJcNy', 3, 'lalalala', 123456789, 10, 1, NULL, '2019-09-23 02:34:43', '2019-09-23 02:34:43'),
(7, 'waD7_1564475727.jpg', 'chuyên gia 5', NULL, '2', 'specialist5@gmail.com', NULL, '$2y$10$CHktdAN4TGXWnwmTRXZ0JeLFXFAIHqSjX9Mp6PlIzjFWXSFLlJcNy', 3, 'dbjksdbkfl', 123456789, 10, 1, NULL, '2019-09-23 02:35:09', '2019-09-23 02:35:09'),
(9, 'wSYW_1564476279.jpg', 'mai', NULL, '2', 'mai@gmail.com', NULL, '123456', 2, 'address', 123456789, 1, 1, NULL, '2019-09-25 08:36:59', '2019-09-25 09:38:37'),
(10, '2gWy_1564476279.jpg', 'phạm thị lan', NULL, '2', 'lan@gmail.com', NULL, '$2y$10$CHktdAN4TGXWnwmTRXZ0JeLFXFAIHqSjX9Mp6PlIzjFWXSFLlJcNy', 2, 'Hà Nam', 123456789, 1, 1, NULL, '2019-09-25 08:53:54', '2019-10-02 04:04:44'),
(11, 'uX8Q_set thể thao cổ tim - totoshop 3 (2)_thumb.jpg', 'Phạm Thị Dung', NULL, '2', 'dungcute@gmail.com', NULL, '$2y$10$FajV9mL.jlrRDFgjo8qMpuBG.0Aqdsm/vCZkzqMXVOtVEThUkMPBq', 2, 'Thuận Thành', 12356789, 1, 1, NULL, '2019-09-30 01:28:06', '2019-10-02 04:05:04'),
(12, 'AwYo_1564476140.jpg', 'Phạm Thị Huệ', NULL, '2', 'hue1@gmail.com', NULL, '$2y$10$yif/URxdnqoufeLU4Ze0We0T.F2ZazebIFrMgp8Xc4jiXnzvZm/Vy', 2, 'Bắc Giang', 123456789, 1, 1, NULL, '2019-10-01 07:55:19', '2019-10-02 04:05:46'),
(13, 'JDmD_1564474884.jpg', 'Nguyễn Văn Bắc', NULL, '1', 'bac@gmail.com', NULL, '$2y$10$qf/JQiUi6et9I3ykHv9ScuLB5Jo6fsQOqxfg60xZ.xPAPPhtRaBAC', 0, 'hà nam', 123456789, 1, 1, NULL, '2019-10-01 07:55:59', '2019-10-20 23:27:52'),
(14, 'xFUr_chân váy jean lệch tà- totoshop  (1)_thumb.jpg', 'Đoàn Thị Linh', NULL, '2', 'linhlinh@gmail.com', NULL, '$2y$10$xgSz9k6tlpxioSacqsGOD.psA9lwpMGMKANYqxcmfXX5JvLLFtsSC', 1, 'abc xyz', 1234567890, 10, 1, NULL, '2019-10-08 10:02:40', '2019-10-08 10:02:40'),
(21, NULL, 'hieuTM', NULL, '1', 'HieuDepTrai1908@gmail.com', NULL, '$2y$10$Hetf/Iu5uvrk168N/ZbKfOR/ABJCEzviaYOowms4OBWqihOUgyn2G', 4, NULL, NULL, 1, 1, NULL, '2020-02-18 07:31:51', '2020-02-18 07:31:51');

-- --------------------------------------------------------

--
-- Table structure for table `websockets_statistics_entries`
--

CREATE TABLE `websockets_statistics_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `app_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `peak_connection_count` int(11) NOT NULL,
  `websocket_message_count` int(11) NOT NULL,
  `api_message_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comment_id_user_foreign` (`id_user`),
  ADD KEY `comment_id_recipe_foreign` (`id_recipe`);

--
-- Indexes for table `dish`
--
ALTER TABLE `dish`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dish_id_category_foreign` (`id_category`);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `recipe`
--
ALTER TABLE `recipe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recipe_id_dish_foreign` (`id_dish`);

--
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recipes_id_dish_foreign` (`id_dish`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `steps`
--
ALTER TABLE `steps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `steps_id_recipe_foreign` (`id_recipe`);

--
-- Indexes for table `tukhoa`
--
ALTER TABLE `tukhoa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dish`
--
ALTER TABLE `dish`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `recipe`
--
ALTER TABLE `recipe`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `steps`
--
ALTER TABLE `steps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tukhoa`
--
ALTER TABLE `tukhoa`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_id_recipe_foreign` FOREIGN KEY (`id_recipe`) REFERENCES `recipe` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comment_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `dish`
--
ALTER TABLE `dish`
  ADD CONSTRAINT `dish_id_category_foreign` FOREIGN KEY (`id_category`) REFERENCES `category` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `recipe`
--
ALTER TABLE `recipe`
  ADD CONSTRAINT `recipe_id_dish_foreign` FOREIGN KEY (`id_dish`) REFERENCES `dish` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `recipes`
--
ALTER TABLE `recipes`
  ADD CONSTRAINT `recipes_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `recipes_id_dish_foreign` FOREIGN KEY (`id_dish`) REFERENCES `dish` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `steps`
--
ALTER TABLE `steps`
  ADD CONSTRAINT `steps_id_recipe_foreign` FOREIGN KEY (`id_recipe`) REFERENCES `recipe` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
