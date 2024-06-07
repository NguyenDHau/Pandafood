-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th4 11, 2024 lúc 04:38 AM
-- Phiên bản máy phục vụ: 10.4.20-MariaDB
-- Phiên bản PHP: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `banhang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(8, '2014_10_12_000000_create_users_table', 1),
(9, '2014_10_12_100000_create_password_resets_table', 1),
(10, '2018_06_04_181000_pdf_groups', 1),
(11, '2018_06_04_184103_pdf_users', 1),
(12, '2018_06_05_090158_pdf_shippers', 1),
(13, '2018_06_05_090448_pdf_slides', 1),
(14, '2018_06_05_091026_pdf_blogs', 1),
(15, '2018_06_06_095418_pdf_categories', 2),
(19, '2018_06_08_181531_pdf_products', 3),
(20, '2018_06_13_113509_pdf_information', 4),
(21, '2018_06_24_022102_pdf_orders', 5),
(22, '2018_06_24_022802_pdf_orderdetails', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('pic23130@nezid.com', 'lzMnclyBOZJfMtYXJQBXvyHp53zpL00tmlT3QDIaL1peJxzQK66mU7UpWxb7VMoU', '2023-12-21 10:04:28'),
('jok71298@zbock.com', 'nnbrnMKxuFqeDhJkFq4yzgNpoTtNZnC45PQ1EQnjpOAQJdTQeykbkGytLPyZWlbc', '2023-12-21 10:05:37'),
('dark2795@gmail.com', 'i1QQhMWInmZIZ3XiQR1qOEFHGU0MISFRz3otTPLeKym9TP73mVdTJBFiTAtStXk7', '2024-01-11 12:30:01'),
('dev.huynhnd@gmail.com', 'h1xWHDh41sdWKASFNsJayUEuOUdFSgPrv7dxSD7E4qHLD2qL2LSgxroek7V5vlXT', '2024-01-19 11:45:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pdf_blogs`
--

CREATE TABLE `pdf_blogs` (
  `blog_id` int(10) UNSIGNED NOT NULL,
  `blog_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `blog_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `blog_description` text COLLATE utf8_unicode_ci NOT NULL,
  `blog_content` text COLLATE utf8_unicode_ci NOT NULL,
  `blog_img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `pdf_blogs`
--

INSERT INTO `pdf_blogs` (`blog_id`, `blog_title`, `blog_slug`, `blog_description`, `blog_content`, `blog_img`, `user_id`, `created_at`, `updated_at`) VALUES
(4, '5 LỢI ÍCH THIẾT THỰC KHI ÁP DỤNG CHẾ ĐỘ ĂN CHAY', '5-loi-ich-thiet-thuc-khi-ap-dung-che-do-an-chay', '<p>Việc &aacute;p dụng chế độ ăn chay c&oacute; thể l&agrave; một c&aacute;ch tuyệt vời để cải thiện sức khoẻ. Chế độ ăn chay c&oacute; li&ecirc;n quan đến việc ti&ecirc;u thụ nhiều chất xơ, axit folic, vitamin C v&agrave; E, magi&ecirc;, chất b&eacute;o chưa b&atilde;o h&ograve;a v&agrave; v&ocirc; số hợp chất tự nhi&ecirc;n c&oacute; nguồn gốc thực vật (phytochemical). Cũng ch&iacute;nh v&igrave; thế những người ăn chay thường c&oacute; lượng cholesterol thấp, kh&ocirc;ng bị b&eacute;o ph&igrave;, huyết &aacute;p thấp hơn v&agrave; giảm nguy cơ mắc c&aacute;c bệnh tim mạch.</p>\r\n\r\n<p>C&ugrave;ng Sunfood kh&aacute;m ph&aacute; một số lợi &iacute;ch kh&aacute;c của việc &aacute;p dụng chế độ ăn chay đối với sức khỏe người.</p>\r\n', '<h2 style=\"text-align:justify\">1. C&oacute; thể cải thiện T&acirc;m trạng</h2>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"Ăn chay tâm trạng tốt hơn\" src=\"http://file.hstatic.net/1000198833/file/i-thuc-pham-an-ngay-hom-nay-se-giup-ban-cam-thay-tot-hon-vao-ngay-mai-_large.png\" /></p>\r\n\r\n<p style=\"text-align:justify\">Axit Arachidonic l&agrave; một chất c&oacute; trong c&aacute;c thức ăn nguồn gốc động vật v&igrave; vậy chế độ ăn chay kh&ocirc;ng c&oacute; axit arachidonic. Điều n&agrave;y c&oacute; thể c&oacute; lợi, v&igrave; nghi&ecirc;n cứu đ&atilde; chỉ ra mối li&ecirc;n hệ giữa axit arachidonic v&agrave; rối loạn t&acirc;m trạng. C&aacute;c nh&agrave; nghi&ecirc;n cứu tại Đại học Benedictine đ&atilde; tiến h&agrave;nh một th&iacute; nghiệm v&agrave; chỉ ra rằng việc hạn chế c&aacute;c thức ăn c&oacute; nguồn gốc động vật c&oacute; thể cải thiện t&acirc;m trạng con người.</p>\r\n\r\n<p style=\"text-align:justify\">Th&ecirc;m v&agrave;o đ&oacute;, Viện Nghi&ecirc;n cứu Y khoa v&agrave; Sức khoẻ Nghề nghiệp Croatia tiến h&agrave;nh điều tra sức khoẻ t&acirc;m thần giữa những người ăn chay v&agrave; ph&aacute;t hiện họ c&oacute; nguy cơ bị bệnh về thần kinh thấp hơn.</p>\r\n\r\n<h2 style=\"text-align:justify\">2. C&oacute; thể Giảm nguy cơ bệnh tiểu đường</h2>\r\n\r\n<p style=\"text-align:justify\">Theo Trường Y tế C&ocirc;ng cộng Loma Linda, chế độ ăn chay c&oacute; li&ecirc;n quan đến việc giảm đ&aacute;ng kể tỷ lệ mắc bệnh tiểu đường. Th&ocirc;ng tin do Trường Y khoa Đại học George Washington c&ocirc;ng bố cũng khẳng định rằng chế độ ăn chay mang lại lợi &iacute;ch quan trọng cho việc quản l&yacute; bệnh tiểu đường v&agrave; thậm ch&iacute; c&oacute; thể l&agrave;m giảm khả năng ph&aacute;t triển ph&aacute;t triển của bệnh đi một nửa.</p>\r\n\r\n<h2 style=\"text-align:justify\">3. Giảm nguy cơ ph&aacute;t triển đục thủy tinh thể</h2>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"Ăn rau củ quả sạch\" src=\"http://file.hstatic.net/1000198833/file/60_large.png\" /></p>\r\n\r\n<p style=\"text-align:justify\">C&aacute;c nghi&ecirc;n cứu do Ph&ograve;ng Y học l&acirc;m s&agrave;ng của Nuffield thuộc Đại học Oxford đ&atilde; chỉ ra mối li&ecirc;n hệ chặt chẽ giữa nguy cơ mắc bệnh đục thuỷ tinh thể v&agrave; chế độ ăn uống, theo đ&oacute; những người ăn nhiều thịt c&aacute; c&oacute; tỉ lệ rủi ro mắc bệnh đục thủy tinh thể cao hơn l&agrave; nh&oacute;m người ăn chay.</p>\r\n\r\n<h2 style=\"text-align:justify\">4. Giảm nguy cơ đột quỵ v&agrave; bệnh b&eacute;o ph&igrave;</h2>\r\n\r\n<p style=\"text-align:justify\">Tất nhi&ecirc;n lu&ocirc;n c&oacute; những ngoại lệ, nhưng một chế độ ăn &iacute;t hoặc kh&ocirc;ng c&oacute; thịt c&aacute; thay v&agrave;o đ&oacute; l&agrave; lượng rau xanh sạch sẽ g&oacute;p phần giảm cholesteron xấu nguy&ecirc;n nh&acirc;n ch&iacute;nh g&acirc;y ra động quỵ . B&ecirc;n cạnh đ&oacute; thực phẩm chay lu&ocirc;n &iacute;t calo hơn v&igrave; thế&nbsp; người ăn chay c&oacute; khả năng giảm c&aacute;c nguy cơ bị b&eacute;o ph&igrave;</p>\r\n\r\n<h2 style=\"text-align:justify\">5. Giảm nguy cơ sỏi thận.</h2>\r\n\r\n<p style=\"text-align:justify\">Trung t&acirc;m Y tế Langone của Đại học New York khẳng định rằng việc loại bỏ sự ti&ecirc;u thụ protein động vật thay v&agrave;o đ&oacute; l&agrave; sử dụng thức ăn rau củ sẽ dẫn đến pH nước tiểu cao hơn; trong khi pH nước tiểu thấp l&agrave; một trong những l&yacute; do h&igrave;nh th&agrave;nh sỏi thận.</p>\r\n\r\n<p style=\"text-align:justify\">N&ecirc;n lựa chọn những&nbsp;cửa h&agrave;ng thực phẩm sạch uy t&iacute;n&nbsp;để&nbsp;mua rau củ quả&nbsp;cho chế độ ăn chay đảm bảo an to&agrave;n.</p>\r\n\r\n<p style=\"text-align:justify\">Cửa h&agrave;ng thực phẩm sạch PandaFood&nbsp;- Cho mỗi ng&agrave;y tươi s&aacute;ng!</p>\r\n', '1_9ca63c687c784a2eb2c6d17170d3d772_large.jpg', 1, '2018-06-16 07:50:33', '2018-06-16 07:56:19'),
(5, 'CANH CHUA CÁ DÌA CHUẨN HƯƠNG VỊ MIỀN TRUNG', 'canh-chua-ca-dia-chuan-huong-vi-mien-trung', '<p style=\"text-align:justify\">C&aacute; d&igrave;a c&aacute;i t&ecirc;n đậm chất qu&ecirc; của người d&acirc;n Trung bộ. Mặc d&ugrave; hiện nay đ&atilde; kh&aacute; phổ biến ở nhiều nơi nhưng mỗi lần nhắc đến canh chua c&oacute; lẽ sẽ c&oacute; rất nhiều người d&acirc;n miền Trung nghĩ ngay đến hương vị canh chua c&aacute; d&igrave;a ng&agrave;y xưa mẹ nấu. Canh mang vị chua ngọt đậm đ&agrave; của me, bạc h&agrave;, thơm, rau m&ugrave;i, c&agrave; chua với vị thịt c&aacute; thơm m&agrave; kh&ocirc;ng tanh.&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">C&ugrave;ng PandaFood&nbsp;tham khảo c&aacute;ch l&agrave;m m&oacute;n canh hấp dẫn n&agrave;y nh&eacute;!</p>\r\n', '<h2 style=\"text-align:justify\">Chuẩn bị nguy&ecirc;n liệu:</h2>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"Nguyên liệu\" src=\"http://file.hstatic.net/1000198833/file/nguyenlieu_large.png\" /></p>\r\n\r\n<p style=\"text-align:justify\">C&aacute; d&igrave;a: 500g</p>\r\n\r\n<p style=\"text-align:justify\">Me: 2 quả</p>\r\n\r\n<p style=\"text-align:justify\">Thơm: 1/4 quả</p>\r\n\r\n<p style=\"text-align:justify\">C&agrave; chua: 3 quả</p>\r\n\r\n<p style=\"text-align:justify\">Bạc h&agrave;: 2 t&eacute;p</p>\r\n\r\n<p style=\"text-align:justify\">Gừng, tỏi kh&ocirc;, th&igrave; l&agrave;, ớt, h&agrave;nh l&aacute;</p>\r\n\r\n<p style=\"text-align:justify\">Gia vị: bột n&ecirc;m, bột canh, hạt ti&ecirc;u</p>\r\n\r\n<h2 style=\"text-align:justify\">Sơ chế nguy&ecirc;n liệu nấu canh chua c&aacute; d&igrave;a</h2>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"Sơ chế\" src=\"http://file.hstatic.net/1000198833/file/so-che_large.png\" /></p>\r\n\r\n<p style=\"text-align:justify\">Đầu ti&ecirc;n bạn l&agrave;m sạch c&aacute; d&igrave;a bằng c&aacute;ch cắt bỏ hết đường ch&eacute;o từ ph&iacute;a dưới v&acirc;y ở đến gần hết phần miệng c&aacute;, rồi mổ bụng, d&ugrave;ng dao gạt bỏ hết ph&agrave;n ruột c&aacute;. Sau đ&oacute; bạn mang rửa lại c&aacute; d&igrave;a c&ugrave;ng với nước muối pha lo&atilde;ng, vớt ra v&agrave; để r&aacute;o nước</p>\r\n\r\n<p style=\"text-align:justify\">Gừng, tỏi bạn b&oacute;c vỏ, d&ugrave;ng dao băm nhỏ. Ớt rửa sạch v&agrave; th&aacute;i miếng nhỏ. H&agrave;nh, th&igrave; l&agrave; bạn nhặt v&agrave; rửa sạch rồi th&aacute;i nhỏ</p>\r\n\r\n<p style=\"text-align:justify\">Sau đ&oacute; bạn tiến h&agrave;nh ướp c&aacute; d&igrave;a c&ugrave;ng với gia vị gồm: một ch&uacute;t muối, hạt n&ecirc;m v&agrave; tỏi, gừng tươi d&ugrave;ng dao băm nhỏ trong khoảng chừng 30 ph&uacute;t cho c&aacute; d&igrave;a c&oacute; thể ngấm đều gia vị.</p>\r\n\r\n<p style=\"text-align:justify\">Sơ chế dứa, me v&agrave; c&agrave; chua</p>\r\n\r\n<p style=\"text-align:justify\">Dứa bạn d&ugrave;ng dao gọt sạch vỏ, cắt bỏ hết phần mắt, rồi d&ugrave;ng dao th&aacute;i miếng vừa ăn</p>\r\n\r\n<p style=\"text-align:justify\">Me v&agrave; c&agrave; chua bạn đều mang rửa sạch, c&agrave; chua bạn d&ugrave;ng dao bổ m&uacute;i cau.</p>\r\n\r\n<h2 style=\"text-align:justify\">Qu&aacute; tr&igrave;nh nấu canh chua c&aacute; d&igrave;a</h2>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"Chế biến canh chua cá dìa\" src=\"http://file.hstatic.net/1000198833/file/che-bien_large.png\" /></p>\r\n\r\n<p style=\"text-align:justify\">Đun s&ocirc;i một lượng nước lọc sao cho đủ ăn, rồi cho c&aacute;c nguy&ecirc;n liệu gồm: tr&aacute;i me, dứa v&agrave; c&agrave; chua v&agrave;o nấu c&ugrave;ng rồi cho th&ecirc;m v&agrave;i l&aacute;t ớt v&agrave;o</p>\r\n\r\n<p style=\"text-align:justify\">Nấu canh chua c&aacute; d&igrave;a</p>\r\n\r\n<p style=\"text-align:justify\">Sau đ&oacute; bạn cho tiếp c&aacute; d&igrave;a v&agrave; c&aacute;c loại gia vị đ&atilde; ướp c&ugrave;ng với c&aacute; v&agrave;o, n&ecirc;m th&ecirc;m một ch&uacute;t gia vị. Đun s&ocirc;i nồi canh c&aacute; l&ecirc;n trong khoảng chừng 10 ph&uacute;t</p>\r\n\r\n<p style=\"text-align:justify\">Tiếp đ&oacute; bạn thả hết h&agrave;nh l&aacute;, th&igrave; l&agrave; th&aacute;i nhỏ v&agrave;o nấu c&ugrave;ng, n&ecirc;m th&ecirc;m ch&uacute;t nước mắm, hạt n&ecirc;m sao cho vừa miệng rồi tắt bếp</p>\r\n\r\n<h2 style=\"text-align:justify\">Thưởng thức th&ocirc;i n&agrave;o!</h2>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><img src=\"http://file.hstatic.net/1000198833/file/1388575078-canh-rieu-ca-dia10_grande.png\" /></p>\r\n\r\n<p style=\"text-align:justify\">Cuối c&ugrave;ng bạn vớt tr&aacute;i me ra một chiếc b&aacute;t, d&ugrave;ng th&igrave;a dằm n&aacute;t rồi lọc bỏ hết phần b&atilde;, lấy nước cốt me đổ lại nồi canh v&agrave; d&ugrave;ng th&igrave;a khuấy đều</p>\r\n\r\n<p style=\"text-align:justify\">Vậy l&agrave; bạn đ&atilde; c&oacute; m&oacute;n canh chua c&aacute; d&igrave;a đặc trưng của người miền Trung với vị chua thanh ngọt m&aacute;t v&agrave; thơm lừng của m&oacute;n canh n&agrave;y m&agrave; bất k&igrave; ai cũng sẽ cảm nhận vị ngon ngất ng&acirc;y v&agrave; kh&ocirc;ng thể cưỡng lại nổi nh&eacute;.</p>\r\n\r\n<p style=\"text-align:justify\">Ch&uacute;c bạn th&agrave;nh c&ocirc;ng với m&oacute;n&nbsp;<strong>canh chua c&aacute; d&igrave;a</strong>&nbsp;si&ecirc;u hấp dẫn của m&igrave;nh.</p>\r\n', '1388575078-canh-rieu-ca-dia10_grande.png', 1, '2018-06-16 07:59:45', '2018-06-16 08:01:50'),
(6, 'TẠI SAO KHÔNG NÊN SỬ DỤNG THỰC PHẨM BIẾN ĐỔI GEN (GMO)', 'tai-sao-khong-nen-su-dung-thuc-pham-bien-doi-gen-gmo', '<p style=\"text-align:justify\">Rất nhiều người nghĩ rằng thực phẩm biến đổi gen ho&agrave;n to&agrave;n giống c&aacute;ch lai tạo tự nhi&ecirc;n m&agrave; h&agrave;ng ng&agrave;n năm nay &ocirc;ng cha ta vẫn sử dụng nhưng chỉ l&agrave; r&uacute;t ngắn thời gian v&agrave; ổn định giống qua c&aacute;c đời sau. C&ugrave;ng PandaFood t&igrave;m hiểu thực hư của quan điểm n&agrave;y v&agrave; r&uacute;t ra những đ&uacute;c kết kinh nghiệm về việc c&oacute; n&ecirc;n sử dụng thực phẩm biến đổi gen (GMO) hay kh&ocirc;ng nh&eacute;.</p>\r\n', '<h2 style=\"text-align:justify\">Thực phẩm biến đổi gen (GMO) l&agrave; g&igrave;?</h2>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"GMO\" src=\"http://file.hstatic.net/1000198833/file/1_large.jpg\" /></p>\r\n\r\n<p style=\"text-align:justify\">GMO (Genetically Modified Organism) l&agrave; phương ph&aacute;p sử dụng c&ocirc;ng nghệ sinh học hiện đại tạo ra giống mới dựa tr&ecirc;n sự kết hợp ADN của những giống lo&agrave;i kh&aacute;c nhau nhằm đạt được những phẩm chất mong muốn như khả năng chống s&acirc;u bệnh, cỏ dại hay tăng h&agrave;m lượng chất dinh dưỡng. V&iacute; dụ phối hợp gen di truyền từ vi khuẩn Bacillus thuringiensis với bắp ng&ocirc; để tạo ra giống ng&ocirc; chống với s&acirc;u bệnh, hay n&oacute;i c&aacute;ch kh&aacute;c l&agrave; cấy một loại thuốc trừ s&acirc;u sinh học v&agrave;o c&acirc;y ng&ocirc; v&agrave; loại thuốc trừ s&acirc;u n&agrave;y sẽ kh&ocirc;ng bị tan đi theo thời gian.</p>\r\n\r\n<h2 style=\"text-align:justify\">Giống lai tự nhi&ecirc;n c&oacute; g&igrave; kh&aacute;c GMO?</h2>\r\n\r\n<p style=\"text-align:justify\">Đ&oacute; l&agrave; sự kết hợp giữa hai c&aacute; thể tương th&iacute;ch c&ugrave;ng họ hoặc c&ugrave;ng lo&agrave;i để cho ra đời giống mới c&oacute; những ưu điểm của cả hai giống cũ. V&iacute; dụ một giống l&uacute;a c&oacute; khả năng chống mặn lai với một giống l&uacute;a c&oacute; năng suất cao cho cho ra một giống l&uacute;a mới c&oacute; cả 2 ưu điểm tr&ecirc;n. Tuy nhi&ecirc;n kh&aacute;c với&nbsp;<strong>thực phẩm biến đổi gen GMO</strong>, ưu điểm của giống mới n&agrave;y kh&ocirc;ng thể duy tr&igrave; tiếp tục ở những đời sau.</p>\r\n\r\n<h2 style=\"text-align:justify\">Những nguy cơ khi sử dụng thực phẩm biến đổi gen GMO</h2>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"Biến đổi gen thực phẩm\" src=\"http://file.hstatic.net/1000198833/file/diem-mat-thuc-pham-gmo-pho-bien-trong-mam-com-viet-hinh-8_large.jpg\" /></p>\r\n\r\n<p style=\"text-align:justify\">Cho đến nay vẫn chưa c&oacute; bằng chứng cụ thể về việc sử dụng thực phẩm GMO tuy nhi&ecirc;n, c&oacute; một số ảnh hưởng tiềm ẩn đến sức khỏe khi đưa một gen mới v&agrave;o trong cơ thể.</p>\r\n\r\n<h3 style=\"text-align:justify\">Dị ứng thực phẩm</h3>\r\n\r\n<p style=\"text-align:justify\">Theo Trung t&acirc;m th&ocirc;ng tin c&ocirc;ng nghệ sinh học quốc gia Mỹ (NCBI) dị ứng ảnh hưởng đến khoảng 5% trẻ em v&agrave; 2% người trưởng th&agrave;nh ở Hoa Kỳ v&agrave; l&agrave; một mối đe dọa sức khoẻ cộng đồng đ&aacute;ng kể. C&aacute;c phản ứng dị ứng ở người xảy ra khi một protein b&igrave;nh thường kh&ocirc;ng độc hại x&acirc;m nhập v&agrave;o cơ thể v&agrave; k&iacute;ch th&iacute;ch phản ứng miễn dịch. Nếu protein mới trong thực phẩm biến đổi gen xuất ph&aacute;t từ một nguồn g&acirc;y ra dị ứng ở người hoặc nguồn m&agrave; chưa bao giờ được sử dụng l&agrave;m thực phẩm cho con người th&igrave; c&oacute; thể phản ứng miễn dịch ở người sẽ xảy ra.</p>\r\n\r\n<h3 style=\"text-align:justify\">Tăng độc t&iacute;nh</h3>\r\n\r\n<p style=\"text-align:justify\">Nếu c&aacute;c gen kh&aacute;c trong c&acirc;y bị hư hỏng trong qu&aacute; tr&igrave;nh ch&egrave;n &eacute;p một đoạn m&atilde; gen mới, n&oacute; c&oacute; thể l&agrave;m cho c&acirc;y trồng biến đổi v&agrave; &nbsp;sản xuất ra c&aacute;c chất độc. Chẳng hạn, khoai t&acirc;y được nu&ocirc;i cấy chủ yếu để tăng sức đề kh&aacute;ng của bệnh đ&atilde; tạo ra mức glycoalkaloids cao hơn (theo GEO-PIE).</p>\r\n\r\n<h3 style=\"text-align:justify\">Kh&aacute;ng kh&aacute;ng sinh</h3>\r\n\r\n<p style=\"text-align:justify\">Trong những năm gần đ&acirc;y, c&aacute;c chuy&ecirc;n gia y tế cho biết lượng vi khuẩn kh&aacute;ng kh&aacute;ng sinh đang tăng trong cơ thể người. Vi khuẩn ph&aacute;t triển kh&aacute;ng thuốc kh&aacute;ng sinh bằng c&aacute;ch tạo ra gen kh&aacute;ng thuốc kh&aacute;ng sinh th&ocirc;ng qua đột biến tự nhi&ecirc;n. Trong khi đ&oacute; để nhận biết m&atilde; gen mới c&oacute; hợp nhất với bộ gen của c&aacute; thể cần biến đổi kh&ocirc;ng, c&aacute;c nh&agrave; sinh vật học đ&atilde; nu&ocirc;i c&aacute; thể mới n&agrave;y trong dung dịch chứa gen kh&aacute;ng kh&aacute;ng sinh nhằm kiểm tra sự hoạt động của gen mới, nếu c&acirc;u sống s&oacute;t chứng tỏ gen mới đ&atilde; được hợp nhất. Điều n&agrave;y mang lại 1 rủi ro, trong qu&aacute; tr&igrave;nh hợp nhất gen, c&oacute; thể gen kh&aacute;ng kh&aacute;ng sinh cũng đ&atilde; được hợp nhất trong sản phẩm mới, v&agrave; người sử dụng sản phẩm đ&oacute; sẽ c&oacute; nguy cơ kh&aacute;ng kh&aacute;ng sinh (theo một nghi&ecirc;n cứu của trường y tế cộng đồng&nbsp;bang Minnesota).</p>\r\n\r\n<p style=\"text-align:justify\">Ngo&agrave;i ra, giống biến đổi gen GMO cũng c&oacute; thể l&agrave; nguy&ecirc;n nh&acirc;n g&acirc;y ra mất c&acirc;n bằng sinh học bởi những t&aacute;c động của n&oacute; đối với những lo&agrave;i kh&aacute;c.</p>\r\n\r\n<h2 style=\"text-align:justify\">Vậy c&oacute; n&ecirc;n sử dụng thực phẩm GMO?</h2>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"Trái cây GMO\" src=\"http://file.hstatic.net/1000198833/file/gmo-hero_large.jpg\" /></p>\r\n\r\n<p style=\"text-align:justify\">Thực phẩm biến đổi gen GMO được xem l&agrave; một bước tiến của c&ocirc;ng nghệ sinh học, tuy nhi&ecirc;n ở thời điểm hiện tại, n&oacute; vẫn c&ograve;n tồn đọng rất nhiều vấn đề chưa được giải quyết, v&igrave; vậy người ti&ecirc;u d&ugrave;ng n&ecirc;n c&acirc;n nhắc kỹ trước khi lựa chọn những thực phẩm c&oacute; nguồn gốc GMO, tốt nhất vẫn n&ecirc;n sử dụng những thực phẩm được nu&ocirc;i trồng theo phương thức truyền thống, những sản phẩm tự nhi&ecirc;n hoặc sản xuất theo hướng hữu cơ để lu&ocirc;n đảm bảo sức khỏe cho bản th&acirc;n v&agrave; gia đ&igrave;nh.</p>\r\n', 'su_nguy_hiem_cua_thuc_pham_bien_doi_gen_3_fqit_large.png', 1, '2018-06-16 08:03:34', '2018-06-16 08:03:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pdf_categories`
--

CREATE TABLE `pdf_categories` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `pdf_categories`
--

INSERT INTO `pdf_categories` (`category_id`, `category_title`, `category_slug`, `created_at`, `updated_at`) VALUES
(14, 'Trái cây Việt Nam', 'trai-cay-viet-nam', '2018-06-16 08:33:12', '2018-06-16 08:33:12'),
(15, 'Trái cây nhập khẩu', 'trai-cay-nhap-khau', '2018-06-16 08:33:27', '2018-06-16 08:33:27'),
(16, 'Rau - Củ - Quả', 'rau-cu-qua', '2018-06-16 08:34:16', '2018-06-16 08:34:16'),
(17, 'Thịt heo, bò sạch', 'thit-heo-bo-sach', '2018-06-16 08:35:09', '2018-06-16 08:35:09'),
(18, 'Hải sản sạch', 'hai-san-sach', '2018-06-16 08:35:56', '2018-06-16 08:35:56'),
(19, 'Thực phẩm khô', 'thuc-pham-kho', '2018-06-16 08:36:30', '2018-06-16 08:36:30'),
(22, 'test', 'test', '2024-01-18 14:35:21', '2024-01-18 14:35:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pdf_groups`
--

CREATE TABLE `pdf_groups` (
  `group_id` int(10) UNSIGNED NOT NULL,
  `group_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `pdf_groups`
--

INSERT INTO `pdf_groups` (`group_id`, `group_name`) VALUES
(1, 'Quản trị viên'),
(2, 'Khách hàng'),
(3, 'Shop');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pdf_information`
--

CREATE TABLE `pdf_information` (
  `info_id` int(10) UNSIGNED NOT NULL,
  `info_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `info_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `info_phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `info_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `info_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `info_imgmain` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `info_imgtitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `info_facebook` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `info_googleplus` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `info_embedcode` text COLLATE utf8_unicode_ci NOT NULL,
  `info_owner` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `info_keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `info_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `pdf_information`
--

INSERT INTO `pdf_information` (`info_id`, `info_name`, `info_title`, `info_phone`, `info_email`, `info_address`, `info_imgmain`, `info_imgtitle`, `info_facebook`, `info_googleplus`, `info_embedcode`, `info_owner`, `info_keywords`, `info_description`, `created_at`, `updated_at`) VALUES
(1, 'DanaFood', 'Cửa hàng thực phẩm sạch DanaFood', '(+84)0166', 'danafoodshopvn@gmail.com', '15 Ngô Thì Nhậm', 'lgpdf.png', 'lgpandafood.png', '', '', '', 'HuynhND', 'danafood, thuc pham, thuc pham sach, cua hang thuc pham sach', 'Cửa hàng thực phẩm sạch DanaFood chuyên cung các loại thực phẩm sạch có chất lượng tốt, nguồn gốc rõ ràng', NULL, '2023-12-19 13:05:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pdf_orderdetails`
--

CREATE TABLE `pdf_orderdetails` (
  `detail_id` int(10) UNSIGNED NOT NULL,
  `detail_qty` int(11) NOT NULL,
  `detail_price` int(11) NOT NULL,
  `detail_subtotal` int(11) NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `pdf_orderdetails`
--

INSERT INTO `pdf_orderdetails` (`detail_id`, `detail_qty`, `detail_price`, `detail_subtotal`, `product_id`, `order_id`, `created_at`, `updated_at`) VALUES
(15, 7, 70000, 490000, 23, 39, '2018-06-24 20:28:10', '2018-06-24 20:28:10'),
(17, 3, 23000, 69000, 12, 40, '2018-06-25 06:40:48', '2018-06-25 06:40:48'),
(18, 7, 129000, 903000, 14, 41, '2018-06-25 06:53:52', '2018-06-25 06:53:52'),
(19, 4, 70000, 280000, 23, 41, '2018-06-25 06:53:52', '2018-06-25 06:53:52'),
(21, 1, 70000, 70000, 23, 43, '2023-12-19 12:51:18', '2023-12-19 12:51:18'),
(22, 1, 89000, 89000, 15, 45, '2024-01-11 13:19:54', '2024-01-11 13:19:54'),
(23, 12, 70000, 840000, 23, 45, '2024-01-11 13:20:19', '2024-01-11 13:20:19'),
(24, 7, 12000, 84000, 29, 46, '2024-01-11 14:59:15', '2024-01-11 14:59:15'),
(25, 1, 70000, 70000, 23, 47, '2024-01-12 08:56:58', '2024-01-12 08:56:58'),
(26, 5, 12000, 60000, 29, 48, '2024-01-12 09:49:12', '2024-01-12 09:49:12'),
(27, 2, 20000, 40000, 31, 48, '2024-01-12 09:49:12', '2024-01-12 09:49:12'),
(28, 6, 10000, 60000, 30, 48, '2024-01-12 09:49:12', '2024-01-12 09:49:12'),
(31, 3, 127000, 381000, 35, 50, '2024-01-18 14:42:19', '2024-01-18 14:42:19'),
(32, 1, 263000, 263000, 20, 51, '2024-01-19 16:16:39', '2024-01-19 16:16:39'),
(33, 1, 89000, 89000, 15, 51, '2024-01-19 16:16:39', '2024-01-19 16:16:39'),
(34, 3, 30000, 90000, 36, 52, '2024-01-19 16:26:05', '2024-01-19 16:26:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pdf_orders`
--

CREATE TABLE `pdf_orders` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `order_total` int(11) NOT NULL,
  `order_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order_phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order_note` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order_receivetime` timestamp NULL DEFAULT NULL,
  `order_methodpayment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order_billoflanding` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `shop_id` int(10) NOT NULL,
  `shipper_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `pdf_orders`
--

INSERT INTO `pdf_orders` (`order_id`, `order_total`, `order_name`, `order_phone`, `order_address`, `order_note`, `order_receivetime`, `order_methodpayment`, `order_status`, `order_billoflanding`, `user_id`, `shop_id`, `shipper_id`, `created_at`, `updated_at`) VALUES
(39, 490000, 'Nguyễn Đức Huynh', '01663971006', 'tổ 6, Bình Quế, Thăng Bình, Quảng Nam', '', '2018-06-28 20:28:10', 'Thanh toán tiền mặt khi nhận hàng', '0', NULL, 1, 5, 0, '2018-06-24 20:28:10', '2018-06-24 20:28:10'),
(40, 185000, 'Nguyễn Đức Huynh', '01663971006', 'tổ 6, Bình Quế, Thăng Bình, Quảng Nam', '', '2018-06-29 06:40:48', 'Thanh toán tiền mặt khi nhận hàng', '0', NULL, 2, 5, 0, '2018-06-25 06:40:48', '2018-06-25 06:40:48'),
(41, 1183000, 'Nguyễn Đức Huynh', '01663971006', 'tổ 6, Bình Quế, Thăng Bình, Quảng Nam', '', '2018-06-29 06:53:52', 'Thanh toán tiền mặt khi nhận hàng', '0', NULL, 2, 5, 0, '2018-06-25 06:53:52', '2018-06-25 06:53:52'),
(42, 210000, 'Nguyễn Đức Huynh', '01663971006', 'tổ 6, Bình Quế, Thăng Bình, Quảng Nam', '', '2018-06-29 08:39:54', 'Thanh toán tiền mặt khi nhận hàng', '0', NULL, 2, 5, 0, '2018-06-25 08:39:54', '2018-06-25 08:39:54'),
(43, 84700, 'Nguyễn Đức Huynh', '0377545091', 'tổ 6, Bình Quế, Thăng Bình, Quảng Nam', '', '2023-12-23 12:51:18', 'Thanh toán tiền mặt khi nhận hàng', '0', NULL, 1, 5, 0, '2023-12-19 12:51:18', '2023-12-19 12:51:18'),
(44, 107690, 'DaNa Fresh', '01663971006', 'tổ 6, Bình Quế, Thăng Bình, Quảng Nam', '', '2024-01-15 13:19:54', 'Thanh toán tiền mặt khi nhận hàng', '0', NULL, 4, 5, 0, '2024-01-11 13:19:54', '2024-01-11 13:19:54'),
(45, 1016400, 'DaNa Fresh', '01663971006', 'tổ 6, Bình Quế, Thăng Bình, Quảng Nam', '', '2024-01-15 13:20:19', 'Thanh toán tiền mặt khi nhận hàng', '4', '', 4, 5, 0, '2024-01-11 13:20:19', '2024-01-11 13:45:44'),
(50, 461010, 'Trần Văn A', '0935789876', '12 Hùng Vương, Đà Nẵng', '', '2024-01-22 14:42:19', 'Thanh toán tiền mặt khi nhận hàng', '4', '', 31, 34, 0, '2024-01-18 14:42:19', '2024-01-18 14:43:24'),
(51, 425920, 'Khách Hàng', '0987857467', '48 Cao Thắng - Hải Châu - Đà Nẵng', '', '2024-01-23 16:16:39', 'Thanh toán tiền mặt khi nhận hàng', '0', NULL, 34, 5, 0, '2024-01-19 16:16:39', '2024-01-19 16:16:39'),
(52, 108900, 'Trần Thị Thu Phương', '0935789876', '12 Hùng Vương, Đà Nẵng', '', '2024-01-23 16:26:05', 'Thanh toán tiền mặt khi nhận hàng', '0', NULL, 31, 31, 0, '2024-01-19 16:26:05', '2024-01-19 16:26:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pdf_products`
--

CREATE TABLE `pdf_products` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_unit` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_promotion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_condition` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_featured` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_description` text COLLATE utf8_unicode_ci NOT NULL,
  `product_content` text COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `pdf_products`
--

INSERT INTO `pdf_products` (`product_id`, `product_name`, `product_slug`, `product_unit`, `product_price`, `product_promotion`, `product_condition`, `product_featured`, `product_img`, `product_description`, `product_content`, `category_id`, `user_id`, `created_at`, `updated_at`) VALUES
(11, 'Bơ Booth.', 'bo-booth', 'kg', 79000, '', '1', '1', 'bobooth.jpg', 'Bơ Booth xuất xứ Đắc Lắc- Sản phẩm được cung cấp bởi Thực phẩm an toàn PandaFood', '<p>Bơ Booth xuất xứ Đắc Lắc- Sản phẩm được cung cấp bởi Thực phẩm an to&agrave;n PandaFood</p>\r\n', 14, 4, '2018-06-16 08:39:25', '2024-01-11 13:36:39'),
(12, 'Chuối Gold Đà Lạt', 'chuoi-gold-da-lat', 'kg', 23000, '', '1', '1', 'chuoigo_420.jpg', 'Chuối Gold Đà Lạt, sản phẩm được cung cấp bởi Thực phẩm an toàn PandaFood', '<p>Chuối Gold Đ&agrave; Lạt, sản phẩm được cung cấp bởi Thực phẩm an to&agrave;n PandaFood</p>\r\n', 14, 4, '2018-06-16 08:46:43', '2018-06-16 08:46:43'),
(13, 'Bưởi da xanh', 'buoi-da-xanh', 'kg', 89000, '', '1', '1', 'buoi_da_xanh2_master.jpg', 'Bưởi da xanh là loại trái cây thuộc cùng họ với cam,quýt. Đây là loại trái cây hình tròn, võ màu xanh, ruột màu hồng, mọng nước, ăn bưởi có mùi thơm, vị hơi chua pha lẫn ngọt thanh. Ăn bưởi da xanh có nhiều tác dụng có lợi cho sức khỏe và được người tiêu dùng đánh giá là loại trái cây lành nhất trong thế giới hoa quả.  Chính vì thế mà vài năm trở lại đây bưởi da xanh là loại trái cây không thể thiếu trong các gia đình sau bữa ăn, làm thức uống hàng ngày và cũng là loại trái cây thay thế cho trái dưa hấu để cúng trong những ngày tết cổ truyền của Việt Nam.', '<p style=\"text-align:justify\">Bưởi da xanh&nbsp;c&oacute; nguồn gốc từ &ocirc;ng s&aacute;u Lu&ocirc;ng, một người n&ocirc;ng d&acirc;n ở ấp An Thuận, x&atilde; Mỹ Thạnh An, th&agrave;nh phố Bến Tre. Từ một người ch&aacute;u ruột của &ocirc;ng S&aacute;u Lu&ocirc;ng kể lại rằng: v&agrave;o những năm 1940 sau một lần đi ăn đ&aacute;m giỗ ở x&atilde; Ti&ecirc;n Thũy (H&agrave;m Lu&ocirc;ng).&nbsp; Sau khi ăn miếng bưởi &ocirc;ng S&aacute;u qu&aacute; bất ngờ với vị ngon của loại tr&aacute;i c&acirc;y n&agrave;y v&agrave; cố t&igrave;nh lấy hạt bỏ v&agrave;o t&uacute;i v&agrave; đem về nh&agrave; ương l&ecirc;n v&agrave; trồng tại vườn nh&agrave;. Sau v&agrave;i năm trồng th&igrave; c&acirc;y đ&atilde; cho tr&aacute;i v&agrave; c&oacute; vị ngon, ngọt như &ocirc;ng đ&atilde; từng ăn. Thế l&agrave; c&acirc;y bưởi được nh&acirc;n giống ra cho một số người th&acirc;n quen của &ocirc;ng bằng c&aacute;ch chiếc c&agrave;nh. Dần theo thời gian th&igrave; bưởi da xanh được nh&acirc;n rộng khắp cả nước&nbsp; như ng&agrave;y h&ocirc;m nay v&agrave; thường được gọi với t&ecirc;n bưởi da xanh Bến Tre.</p>\r\n\r\n<p style=\"text-align:justify\">Bưởi da xanh l&agrave; loại tr&aacute;i c&acirc;y thuộc c&ugrave;ng họ với cam,qu&yacute;t. Đ&acirc;y l&agrave; loại tr&aacute;i c&acirc;y h&igrave;nh tr&ograve;n, v&otilde; m&agrave;u xanh, ruột m&agrave;u hồng, mọng nước, ăn bưởi c&oacute; m&ugrave;i thơm, vị hơi chua pha lẫn ngọt thanh. Ăn bưởi da xanh c&oacute; nhiều t&aacute;c dụng c&oacute; lợi cho sức khỏe v&agrave; được người ti&ecirc;u d&ugrave;ng đ&aacute;nh gi&aacute; l&agrave; loại tr&aacute;i c&acirc;y l&agrave;nh nhất trong thế giới hoa quả. Ch&iacute;nh v&igrave; thế m&agrave; v&agrave;i năm trở lại đ&acirc;y bưởi da xanh l&agrave; loại tr&aacute;i c&acirc;y kh&ocirc;ng thể thiếu trong c&aacute;c gia đ&igrave;nh sau bữa ăn, l&agrave;m thức uống h&agrave;ng ng&agrave;y v&agrave; cũng l&agrave; loại tr&aacute;i c&acirc;y thay thế cho tr&aacute;i dưa hấu để c&uacute;ng trong những ng&agrave;y tết cổ truyền của Việt Nam.</p>\r\n', 14, 4, '2018-06-16 08:48:04', '2018-06-16 08:48:04'),
(14, 'Cam Cara Mỹ', 'cam-cara-my', 'kg', 129000, '', '1', '1', 'cam-cara_be56c53a95f8497db96939a99aa18f92_master.jpg', 'Cam ruột đỏ không hạt Mỹ thuộc giống Cara Cara có vị ngọt đặc biệt, hương thơm của cam ruột đỏ dễ làm người ta liên tưởng đến hương bưởi. Với đặc trưng nhiều nước và vị ngọt khá lạ, Cam ruột đỏ được ưa chuộng hơn nhiều so với người anh em Navel.\r\n\r\nThuộc giống Cara cara, lớp vỏ của cam ruột đỏ không hạt dễ làm người ta liên tưởng tới cam navel, nhưng khác với navel, cam cara cara không hề có phần “rốn” và nếu để ý kỹ, các bạn sẽ thấy phần vỏ trơn láng của cam ruột đỏ không hạt hơi có sắc hồng.', '<h4 style=\"text-align:justify\">CAM CARA RUỘT ĐỎ</h4>\r\n\r\n<h4 style=\"text-align:justify\">LỢI &Iacute;CH KHI ĂN CAM CAM CARA RUỘT ĐỎ</h4>\r\n\r\n<h4 style=\"text-align:justify\">► Chống l&atilde;o h&oacute;a da</h4>\r\n\r\n<p style=\"text-align:justify\">Trong quả cam cara ruột đỏ chứa h&agrave;m lượng vitamin C rất lớn 130% nhu cầu vitamin C h&agrave;ng ng&agrave;y n&ecirc;n rất tốt cho da, chống l&atilde;o h&oacute;a rất th&iacute;ch hợp cho người mệt mỏi v&igrave; tăng cường sức đề kh&aacute;ng</p>\r\n\r\n<h4 style=\"text-align:justify\">► Ngăn ngừa ung thư</h4>\r\n\r\n<p style=\"text-align:justify\">Chất Lycopene l&agrave; một loại chất chống oxy h&oacute;a gi&uacute;p ngăn ngừa c&aacute;c bệnh ung thư v&agrave; gi&uacute;p hệ tim mạch lu&ocirc;n khỏe mạnh</p>\r\n\r\n<h4 style=\"text-align:justify\">►Ph&ograve;ng chống t&aacute;o b&oacute;n</h4>\r\n\r\n<p style=\"text-align:justify\">Chất xơ trong cam gi&uacute;p ph&ograve;ng chống t&aacute;o b&oacute;n, gi&uacute;p hệ ti&ecirc;u h&oacute;a khỏe mạnh, gi&uacute;p l&agrave;n da lu&ocirc;n khỏe khoắn</p>\r\n\r\n<p style=\"text-align:justify\">Ngo&agrave;i ra trong cam cara n&agrave;y c&ograve;n chứa nhiều chất dinh dưỡng kh&aacute;c như vitamin A,B, canxi, Magie, sắt, đồng, iot..</p>\r\n', 15, 5, '2018-06-16 08:50:52', '2018-06-16 08:50:52'),
(15, 'Lê Nâu Hàn Quốc', 'le-nau-han-quoc', 'kg', 89000, '', '1', '1', 'le-han-quoc-01_master.jpg', 'Lê nâu Hàn Quốc là hoa quả nhập khẩu có dáng quả tròn to, kích thước lớn, mỗi quả nặng từ 600- 750 gram. Vỏ khá mỏng, mịn và có màu vàng nâu nhạt, khi bổ ra có màu trắng mọng nước.', '<p style=\"text-align:justify\">L&ecirc; n&acirc;u H&agrave;n Quốc&nbsp;l&agrave;&nbsp;hoa quả nhập khẩu&nbsp;c&oacute; d&aacute;ng quả tr&ograve;n to, k&iacute;ch thước lớn, mỗi quả nặng từ 600- 750 gram. Vỏ kh&aacute; mỏng, mịn v&agrave; c&oacute; m&agrave;u v&agrave;ng n&acirc;u nhạt, khi bổ ra c&oacute; m&agrave;u trắng mọng nước.</p>\r\n\r\n<p style=\"text-align:justify\">L&ecirc; n&acirc;u H&agrave;n Quốc kh&ocirc;ng những thơm ngon m&agrave; c&ograve;n c&oacute; nhiều t&aacute;c dụng chữa bệnh m&agrave; nhiều người chưa biết đến:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<h4 style=\"text-align:justify\">Ngăn ngừa bệnh tiểu đường.</h4>\r\n	</li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\">Trong l&ecirc; n&acirc;u c&oacute; chứa nhiều chất xơ dễ h&ograve;a tan n&ecirc;n ngăn ngừa được sự ph&aacute;t triển của bệnh tiểu đường.&nbsp;Đối với c&aacute;c bệnh nh&acirc;n bệnh tiểu đường th&igrave; l&ecirc; n&acirc;u vừa l&agrave; loại tr&aacute;i c&acirc;y ngon miệng lại vừa chữa bệnh rất tốt.</p>\r\n\r\n<ul>\r\n	<li>\r\n	<h4 style=\"text-align:justify\">Thanh nhiệt, giải độc, tăng cường sức khỏe.</h4>\r\n	</li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\">L&agrave; loại tr&aacute;i c&acirc;y c&oacute; nhiều vitamin A, E, C, nước, l&ecirc; n&acirc;u gi&uacute;p tăng cường sức khỏe, bổ sung dưỡng chất, nước cho cơ thể. Đặc biệt, đối với những người lao động nặng hoặc vận động nhiều th&igrave; việc ăn l&ecirc; n&acirc;u H&agrave;n Quốc thường xuy&ecirc;n sẽ v&ocirc; c&ugrave;ng tốt.</p>\r\n\r\n<ul>\r\n	<li>\r\n	<h4 style=\"text-align:justify\">L&agrave;m đẹp da</h4>\r\n	</li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\">Thường xuy&ecirc;n ăn l&ecirc; n&acirc;u sẽ gi&uacute;p l&agrave;n da căng mịn, s&aacute;ng b&oacute;ng do được bổ sung vitamin E v&agrave; nước từ quả l&ecirc;.B&ecirc;n cạnh đ&oacute;, chị em c&oacute; thể sử dụng l&ecirc; n&acirc;u để l&agrave;m mặt nạ dưỡng da gi&uacute;p căng da, giảm nếp nhăn, ngăn ngừa mụn, giảm độ nhờn v&agrave; trắng da.</p>\r\n\r\n<p style=\"text-align:justify\">L&ecirc; n&acirc;u H&agrave;n Quốc&nbsp;l&agrave; sản phẩm rất được người d&acirc;n h&agrave;n Quốc y&ecirc;u th&iacute;ch. Đến nay, sản phẩm n&agrave;y đ&atilde; xuất hiện nhiều ở Việt Nam v&agrave; ng&agrave;y c&agrave;ng được người ti&ecirc;u d&ugrave;ng ưa chuộng.&nbsp;H&atilde;y bổ sung sản phẩm n&agrave;y&nbsp;v&agrave;o thực đơn hằng ng&agrave;y để đảm bảo sức khỏe cho cả gia đ&igrave;nh, đặc biệt l&agrave; trẻ nhỏ v&agrave; người lao động với cường độ cao.</p>\r\n', 15, 5, '2018-06-16 08:51:57', '2018-06-16 08:51:57'),
(18, 'Ba rọi bò Mỹ', 'ba-roi-bo-my', 'kg', 200000, '', '1', '1', 'baroibomy1_master.jpg', 'Thịt bò Mỹ nổi tiếng khắp thế giới nhờ hương vị và vân mỡ đặc trưng cũng như khả năng cung ứng linh hoạt hơn và chuyên biệt hơn, nhờ vào hệ thống sản xuất, chế biến và phân phối thịt hiệu quả nhất thế giới.', '<p style=\"text-align:justify\">Thịt b&ograve; Mỹ nổi tiếng khắp thế giới nhờ hương vị v&agrave; v&acirc;n mỡ đặc trưng cũng như khả năng cung ứng linh hoạt hơn v&agrave; chuy&ecirc;n biệt hơn, nhờ v&agrave;o hệ thống sản xuất, chế biến v&agrave; ph&acirc;n phối thịt hiệu quả nhất thế giới. Thịt b&ograve; Mỹ l&agrave; sự lựa chọn tốt nhất v&igrave; ch&uacute;ng ta biết c&oacute; thể tin tưởng v&agrave;o hệ thống ti&ecirc;u chuẩn chất lượng lu&ocirc;n được duy tr&igrave; ở mức cao. Thịt b&ograve; được nhập khẩu trực tiếp, theo ti&ecirc;u chuẩn của Bộ N&ocirc;ng Nghiệp Hoa Kỳ (USDA). Tất cả đều thuộc ph&acirc;n hạng Cao Cấp.</p>\r\n\r\n<p style=\"text-align:justify\">M&oacute;n B&ograve; Mỹ cuộn nấm kim ch&acirc;m&nbsp;<br />\r\nTrụng sơ nấm kim ch&acirc;m trong nước s&ocirc;i khoảng 30 gi&acirc;y. Sau đ&oacute; lấy ra dĩa, th&ecirc;m một &iacute;t muối cho vừa ăn.<br />\r\nTrải l&aacute;t ba rọi b&ograve; ra, bỏ nấm kim ch&acirc;m v&agrave;o v&agrave; cuộn lại. Bạn c&oacute; thể d&ugrave;ng tăm xi&ecirc;n qua để giữ thịt b&ograve; v&agrave; nấm, hoặc d&ugrave;ng nấm kim ch&acirc;m để buộc miếng b&ograve; lại.<br />\r\nĐun n&oacute;ng một &iacute;t dầu ăn tr&ecirc;n chảo, sau đ&oacute; chi&ecirc;n thịt b&ograve; cuộn nấm kim ch&acirc;m cho đến khi v&agrave;ng gi&ograve;n.&nbsp;<br />\r\nNgon hơn khi d&ugrave;ng với sốt v&agrave; phục vụ khi m&oacute;n ăn c&ograve;n n&oacute;ng.</p>\r\n', 17, 4, '2018-06-16 08:57:00', '2018-06-16 08:57:00'),
(19, 'Sườn bò Mỹ có xương', 'suon-bo-my-co-xuong', 'kg', 413000, '', '1', '1', 'suon_bo_my_master.jpg', 'Thịt bò Mỹ nổi tiếng khắp thế giới nhờ hương vị và vân mỡ đặc trưng cũng như khả năng cung ứng linh hoạt hơn và chuyên biệt hơn, nhờ vào hệ thống sản xuất, chế biến và phân phối thịt hiệu quả nhất thế giới. Thịt bò Mỹ là sự lựa chọn tốt nhất vì chúng ta biết có thể tin tưởng vào hệ thống tiêu chuẩn chất lượng luôn được duy trì ở mức cao. ', '<p>Thịt b&ograve; Mỹ nổi tiếng khắp thế giới nhờ hương vị v&agrave; v&acirc;n mỡ đặc trưng cũng như khả năng cung ứng linh hoạt hơn v&agrave; chuy&ecirc;n biệt hơn, nhờ v&agrave;o hệ thống sản xuất, chế biến v&agrave; ph&acirc;n phối thịt hiệu quả nhất thế giới. Thịt b&ograve; Mỹ l&agrave; sự lựa chọn tốt nhất v&igrave; ch&uacute;ng ta biết c&oacute; thể tin tưởng v&agrave;o hệ thống ti&ecirc;u chuẩn chất lượng lu&ocirc;n được duy tr&igrave; ở mức cao.&nbsp;</p>\r\n', 17, 4, '2018-06-16 08:58:37', '2018-06-16 08:58:37'),
(20, 'CÁ BÒ DA', 'ca-bo-da', 'gói', 263000, '', '1', '1', 'ca-bo-da-sach-1_master.png', '', '<p><strong>C&aacute; B&ograve; Da&nbsp;</strong>được cung cấp bởi&nbsp;cửa h&agrave;ng thực phẩm sạch Pandafood&nbsp;l&agrave; một lo&agrave;i c&aacute; nước mặn, c&oacute; vẻ ngo&agrave;i xấu x&iacute;, nhưng khi qua chế biến lại c&oacute; m&ugrave;i thơm quyến rũ khiến thực kh&aacute;ch kh&oacute; l&ograve;ng cưỡng lại được.</p>\r\n\r\n<p><img alt=\"Cá bò da, được cung cấp bởi cửa hàng thực phẩm sạch Sunfood, sản phẩm đảm bảo an toàn chất lượng và được bảo hiểm 100%\" src=\"http://file.hstatic.net/1000198833/file/ca-bo-da-sach-sunfood_large.png\" /></p>\r\n\r\n<h2>M&oacute;n ăn từ C&aacute; B&ograve; da</h2>\r\n\r\n<p>Nhắc tới c&aacute; b&ograve; da mọi người đều nghĩ ngay tới m&oacute;n nướng muối ớt. C&aacute; b&ograve; da nướng than, c&aacute; b&ograve; da nướng muối ớt, nướng l&aacute; chuối, nướng giấy bạc... Tuy nhi&ecirc;n, c&aacute; b&ograve; da c&ograve;n rất nổi tiếng với nhiều m&oacute;n ăn kh&aacute;c như lẩu, canh chua, đặc biệt l&agrave; m&oacute;n Gỏi c&aacute; b&ograve; da.</p>\r\n\r\n<p><strong>C&aacute; b&ograve; da nguy&ecirc;n con</strong>&nbsp;(từ 0,5kg đến 2,0kg). con c&agrave;ng lớn ăn c&agrave;ng ngon.</p>\r\n\r\n<h2>C&aacute;ch l&agrave;m m&oacute;n canh chua c&aacute; b&ograve; da ngon đ&uacute;ng điệu</h2>\r\n\r\n<p>Nguy&ecirc;n liệu:&nbsp;</p>\r\n\r\n<ul>\r\n	<li>C&aacute; b&ograve; da 1 con&nbsp;</li>\r\n	<li>C&agrave; chua: 2 quả</li>\r\n	<li>Dọc m&ugrave;ng (bạc h&agrave;): 2 lạng</li>\r\n	<li>Bột m&igrave;: 1 lạng</li>\r\n	<li>Dứa thơm: nửa quả</li>\r\n	<li>Đậu bắp&nbsp;</li>\r\n	<li>Gi&aacute; đỗ</li>\r\n	<li>Nước mắm</li>\r\n	<li>Đường</li>\r\n	<li>Bột n&ecirc;m</li>\r\n	<li>Me vắt: nửa lạng</li>\r\n	<li>H&agrave;nh t&iacute;m, h&agrave;nh l&aacute;, ớt tr&aacute;i</li>\r\n	<li>Rau thơm</li>\r\n</ul>\r\n\r\n<p>C&aacute;ch l&agrave;m</p>\r\n\r\n<ul>\r\n	<li>Bước 1: C&aacute; b&ograve; da mua tại cửa h&agrave;ng thực phẩm sạch Sunfood, r&atilde; đ&ocirc;ng Cho c&aacute; b&ograve; da v&agrave;o khay sau đ&oacute; thoa phần bột m&igrave; l&ecirc;n m&igrave;nh c&aacute; rồi vuốt dọc từ đầu đến đu&ocirc;i c&aacute; cho sạch nhớt, rửa c&aacute; lại bằng nước lạnh thật sạch. Cắt kh&uacute;c vừa ăn hoặc cắt l&agrave;m đ&ocirc;i.</li>\r\n	<li>Bước 2: Bạc h&agrave; tước vỏ, cắt kh&uacute;c vừa ăn, b&oacute;p sạch với ch&uacute;t muối. C&agrave; chua bổ m&uacute;i cau, thơm th&aacute;i l&aacute;t. Đậu bắp cắt bỏ cuống, th&aacute;i l&aacute;t vừa ăn.</li>\r\n	<li>Bước 3: Phi thơm h&agrave;nh t&iacute;m với &nbsp;dầu ăn, đổ c&agrave; chua v&agrave;o x&agrave;o ch&iacute;n v&agrave; n&ecirc;m th&ecirc;m một muỗng canh nước mắm. Chế nước s&ocirc;i ngập mặt c&agrave; chua v&agrave; n&ecirc;m gia vị, đường cho vừa khẩu vị.</li>\r\n	<li>Bước 4: Vắt me cho ra t&ocirc;, chế nước d&ugrave;ng c&aacute; v&agrave;o khuấy cho me tan rồi đổ từ từ nước me v&agrave;o nồi nước d&ugrave;ng. Cho thơm v&agrave;o nồi để thơm tiết ra chất l&agrave;m ngọt v&agrave; thơm nước d&ugrave;ng.</li>\r\n	<li>Cuối c&ugrave;ng cho c&aacute; v&agrave;o nồi, đun lửa nhỏ chừng 15 ph&uacute;t. C&aacute; ch&iacute;n vớt ra để ri&ecirc;ng. Th&ecirc;m bạc h&agrave;, đậu bắp v&agrave;o nấu chừng 3 ph&uacute;t cho mềm rồi cho gi&aacute; đỗ v&agrave;o. Canh s&ocirc;i, cho c&aacute; lại v&agrave;o nồi, rắc h&agrave;nh, rau thơm th&aacute;i nhỏ l&ecirc;n v&agrave; tắt bếp.</li>\r\n	<li>\r\n	<p>M&oacute;n canh c&aacute; b&ograve; da nấu chua c&oacute; vị ngọt của nước d&ugrave;ng c&aacute;, chua nhẹ của dứa v&agrave; thơm của h&agrave;nh, rau thơm sẽ chinh phục c&aacute;c bạn ngay trong lần đầu thưởng thức. C&aacute;c bạn c&oacute; thể d&ugrave;ng canh c&aacute; b&ograve; da nấu chua với b&uacute;n hoặc với cơm. Ăn k&egrave;m rau sống v&agrave; nước mắm cay rất ngon nh&eacute;!</p>\r\n	K&iacute;nh ch&uacute;c qu&yacute; kh&aacute;ch c&oacute; một bữa ăn thật ngon miệng c&ugrave;ng gia đ&igrave;nh!</li>\r\n</ul>\r\n', 18, 5, '2018-06-16 09:00:24', '2018-06-16 09:00:24'),
(23, 'Hồng sấy dẻo', 'hong-say-deo', 'Gói 250g', 70000, '', '1', '1', 'hong-say-deo_b8bae8f006ee46879e056e3e19e69285_master.jpg', 'Đặc sản Đà Lạt-Hồng sấy dẻo-được cung cấp bởi thực phẩm an toàn PandaFood\r\n\r\n', '<p style=\"text-align:justify\">Hồng l&agrave; một trong top 4 loại tr&aacute;i c&acirc;y được b&igrave;nh chọn l&agrave; ngon nhất v&agrave; l&agrave; sản phẩm độc đ&aacute;o của v&ugrave;ng đất Đ&agrave; Lạt.</p>\r\n\r\n<p style=\"text-align:justify\">Sản phẩm hồng sấy dẻo được l&agrave;m từ tr&aacute;i hồng cũng l&agrave; một đặc sản được y&ecirc;u th&iacute;ch của kh&aacute;ch du lịch khi đến Đ&agrave; Lạt. C&oacute; hai loại l&agrave; hồng sấy nguy&ecirc;n tr&aacute;i v&agrave; hồng sấy nửa tr&aacute;i (c&ograve;n gọi l&agrave; hồng dẻo miếng)</p>\r\n\r\n<p style=\"text-align:justify\">Để l&agrave;m ra hồng sấy dẻo, phải chọn lựa những tr&aacute;i hồng thật ch&iacute;n, như vậy khi ăn sẽ kh&ocirc;ng bị ch&aacute;t.</p>\r\n\r\n<p style=\"text-align:justify\">Hồng được gọt vỏ rửa sạch, để miếng hồng l&agrave;m ra c&oacute; m&agrave;u sắc rất đỏ đẹp, kh&ocirc;ng bị đen.&nbsp;Sau đ&oacute; tr&aacute;i hồng được đưa v&agrave;o l&ograve; sấy trong nhiều giờ, để hồng được ngon v&agrave; kh&ocirc; đều người sấy phải thường xuy&ecirc;n lật tr&aacute;i hồng. T&ugrave;y theo thời gian sấy sẽ cho ra l&ograve; hồng sấy dẻo hay hồng sấy kh&ocirc; đ&aacute;p ứng nhu cầu của từng kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p style=\"text-align:justify\">Sản phẩm được cung cấp bởi PandaFood</p>\r\n', 19, 5, '2018-06-16 09:04:10', '2024-01-10 11:03:51'),
(35, 'sản phẩm', 'san-pham', 'gói', 127000, '0', '1', '0', 'apple.png', 'mô tả sản phẩm', '', 22, 34, '2024-01-18 14:41:14', '2024-01-19 15:23:18'),
(36, 'phi lê cá hồi', 'phi-le-ca-hoi', 'gam', 30000, '0', '1', '0', 'cahoi.jpg', 'phi lê cá hồi', '<p>acb</p>\r\n\r\n<ol>\r\n	<li><strong>xyz</strong></li>\r\n	<li><strong>123</strong></li>\r\n	<li><strong>123</strong></li>\r\n</ol>\r\n', 18, 31, '2024-01-19 16:23:17', '2024-01-19 16:23:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pdf_shippers`
--

CREATE TABLE `pdf_shippers` (
  `shipper_id` int(10) UNSIGNED NOT NULL,
  `shipper_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shipper_phone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `pdf_shippers`
--

INSERT INTO `pdf_shippers` (`shipper_id`, `shipper_name`, `shipper_phone`) VALUES
(0, 'Đang cập nhật', 0),
(1, 'Viettel Post', 19008095);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pdf_slides`
--

CREATE TABLE `pdf_slides` (
  `slide_id` int(10) UNSIGNED NOT NULL,
  `slide_line1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slide_line2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slide_line3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slide_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slide_img` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `pdf_slides`
--

INSERT INTO `pdf_slides` (`slide_id`, `slide_line1`, `slide_line2`, `slide_line3`, `slide_url`, `slide_img`) VALUES
(3, 'Thực phẩm tươi', 'Hàng nhập khẩu', 'Chất lượng kiểm soát', '/', 'banner1.jpg'),
(4, 'Black Friday', 'Chương trình hạ giá', ' ', '/', 'banner2.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pdf_users`
--

CREATE TABLE `pdf_users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_fullname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_shop_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_phone` int(11) NOT NULL,
  `user_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `group_id` int(10) UNSIGNED NOT NULL,
  `user_active` int(1) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `pdf_users`
--

INSERT INTO `pdf_users` (`user_id`, `user_name`, `user_password`, `user_email`, `user_fullname`, `user_shop_name`, `user_phone`, `user_address`, `group_id`, `user_active`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'huynhnd', '$2y$10$qr9vSN2GnrK5NCuH0e089OTbNt0j/wG2ULs91B705xuOwwWk0PsRy', 'dev.huynhnd@gmail.com', 'Nguyễn Đức Huynh', NULL, 377545091, 'tổ 6, Bình Quế, Thăng Bình, Quảng Nam', 1, 1, 'BI0VCdWeRq2FoKLeSHULWLYmGkIj2fc3qkF9fRkKd7P7xx6Rok5wKc7bEoN3', NULL, '2024-01-19 16:20:07'),
(2, 'khach', '$2y$10$GuDgxoRwpj1r5bpPonSnOe7NM/3j6W0LPmELjhe7hFl8bVHKXPNRm', 'superchip1020@gmail.com', 'Lê Văn Công Quân', NULL, 1663971006, 'tổ 6, Bình Quế, Thăng Bình, Quảng Nam', 2, 1, 'kaUGSFFVql8eYWPfDY9XXIbTZIBJwYMPUPYsxGbeLN4OHnniaxcubgDQZ5ce', NULL, '2024-01-11 14:21:36'),
(4, 'shop1', '$2y$10$J5K33XLKV.6thS4N9/tISeyPOA0hZdD6OuFHNqr6iXCux8lslz3Vy', 'huynhnd.22@gmail.com', 'DaNa Fresh', 'Hoa quả tươi', 1663971006, 'tổ 6, Bình Quế, Thăng Bình, Quảng Nam', 2, 1, 'b6O1aGHjgv55WRdXqNPV3iAwXP87zWfWBN028U4ulCg3oVERmrLdCxZFVQhC', NULL, '2018-06-11 01:27:13'),
(5, 'huynhnd1', '$2y$10$J5K33XLKV.6thS4N9/tISeyPOA0hZdD6OuFHNqr6iXCux8lslz3Vy', 'darkk2795@gmail.com', 'VieFood', 'fresh food', 1663971006, 'tổ 6, Bình Quế, Thăng Bình, Quảng Nam', 3, 1, 'YaOIhuUVxv6u1gHDtUW5MQU6qDpOOgS1IxNCZXIOCvlbkTMmYydf0NoRuh5T', '2018-06-11 04:44:55', '2024-01-11 14:18:31'),
(31, 'phuong', '$2y$10$UAuULgPG4ALRp3Lw1sLlZ.PTVc8dBmhXKA1J0WTZeBFWR58tIeZVG', 'phuongtran140503@gmail.com', 'Trần Thị Thu Phương', 'Thực phẩm DN', 935789876, '12 Hùng Vương, Đà Nẵng', 3, 1, 'nCnfygsoHunoWiX8aPXtt4ZjcqC49lV4Q6J1ZOkzVxmpLnZTlb39IvvpvGzb', '2024-01-11 14:19:23', '2024-01-19 16:27:40'),
(32, 'shop2', '$2y$10$L.gH3J.W3ys1ON4SIrxrWOfhVLj5GRJBvDYgB0VqjVde6C.yDVuE6', 'jpe87673@zslsz.com', 'Trần Phú Thanh', 'Hoa Quả DN', 937947463, '48 Cao thắng Đà Nẵng', 3, 1, NULL, '2024-01-15 13:02:29', '2024-01-15 13:04:05'),
(33, 'account', '$2y$10$rVBzQnSnBVFpIGtug6vX4egxfSAPsjTnW7qdsKHgth3GhrMtVYPVm', 'abc@gmail.com', 'Trần văn B', NULL, 987467365, '48 Cao Thắng', 2, NULL, NULL, '2024-01-18 14:36:45', '2024-01-18 14:37:05'),
(34, 'khachhang', '$2y$10$92rLX8IcamLUeinyIq7fV.4LO67dbgKRLjIcZZquyYrZr1ey6BbWC', 'fjg69803@zbock.com', 'Khách Hàng', 'Thực Phẩm Sạch', 987857467, '48 Cao Thắng - Hải Châu - Đà Nẵng', 3, 1, 'LqcnsWCMrVkZZH7ZOqH5zngOXypICgAaOXN4J4IFxiH1gSu5tiEGjDkRpV6q', '2024-01-18 14:38:17', '2024-01-19 16:18:42'),
(35, '123', '$2y$10$g64u3E1q5J0L3yyPOv.CJO9dxKwpnIa7fdFxv/AgCVEoKWPgKNDvK', '123123@123.com', '123', NULL, 123123123, 'h', 2, NULL, 'PiVmbT9zXmV6r4vffInF6KZFUT0bSKM53B7tKygYLG0n4fL1fBeXVlXQeWkD', '2024-01-19 11:50:50', '2024-01-19 14:47:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_active`
--

CREATE TABLE `user_active` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_active`
--

INSERT INTO `user_active` (`email`, `token`, `created_at`) VALUES
('jjg34516@zslsz.com', 'mjmZhUsgKs82HVrBRwXvlSHMOI11B0CNo6OKeIRDPKyObozoMmEQ9cEp6p4uWBAn', '2023-12-25 09:33:21'),
('raf42431@omeie.com', '6hXFbG8xrc1AkddDRRaq52ASfJnNB7G7x0hVRdKBCkY4z5T3fr5re2IvaiYTLLGt', '2023-12-25 09:37:11'),
('dev.huynhnd@gmail.com', 'kERd9ZXXX2K23fjpbmUbeqptEuCUPjmH5EgPG1yY5nltsJUgr4eWpSYObmQikHuW', '2023-12-25 10:13:37'),
('dev.huynhnd@gmail.com', 'rgZf0gzsBdUXktjK87HwjYeFU9eBgnLvD8dkQ3lwSHTtN8VIbVJHCsruxEyJBmSo', '2023-12-25 10:13:39'),
('dev.huynhnd@gmail.com', 'WfaQXyovU04mE7OzAZelIUdARyBVT8bUoH3ENdVO5eOuLwd740mPjojiYT9J1Pd6', '2023-12-25 10:13:39'),
('dev.huynhnd@gmail.com', 'EtdbpYE0MmNA59iu64n8fY4uNpn8foYv1ks0LFGINJnUpej18g69CiZBfE6Jfjva', '2023-12-25 10:13:40'),
('dev.huynhnd@gmail.com', 'IP72WL3DiKQoGlwfjzIyoXQLIIZAzr3dk8u8vctqSLqW5vFSLhCbo6oQJjUXjw8p', '2023-12-25 10:13:40'),
('dev.huynhnd@gmail.com', 'gqUQotLNHpLLatpZvTGhfnYvTBPgDfydXTiArPld32oZ9QfG47UqdSruiq6GO3ic', '2023-12-25 10:13:40'),
('eni50438@nezid.com', 'C5lMoyADcwb3njfm0J52IawkCKlpx8INGpbyOwGGmN5DKpLJ0wSdBS2HM4zzICkp', '2023-12-25 10:18:20'),
('eni50438@nezid.com', '528000', '2023-12-25 10:56:17'),
('eni50438@nezid.com', '724030', '2023-12-26 09:33:56'),
('xya65128@nezid.com', '563507', '2023-12-26 09:53:42'),
('xya65128@nezid.com', '718326', '2023-12-26 09:56:42'),
('xya65128@nezid.com', '255801', '2023-12-26 09:58:08'),
('xya65128@nezid.com', '473408', '2023-12-26 09:58:33'),
('xya65128@nezid.com', '610376', '2023-12-26 09:59:27'),
('xya65128@nezid.com', '607591', '2023-12-26 10:06:21'),
('lqr91584@nezid.com', '738294', '2023-12-26 10:38:57'),
('lqr91584@nezid.com', '188310', '2023-12-26 10:40:52'),
('lqr91584@nezid.com', '619446', '2023-12-26 11:22:44'),
('levancongquan@gmail.com', '684381', '2023-12-26 11:47:14');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Chỉ mục cho bảng `pdf_blogs`
--
ALTER TABLE `pdf_blogs`
  ADD PRIMARY KEY (`blog_id`),
  ADD KEY `pdf_blogs_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `pdf_categories`
--
ALTER TABLE `pdf_categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `pdf_groups`
--
ALTER TABLE `pdf_groups`
  ADD PRIMARY KEY (`group_id`);

--
-- Chỉ mục cho bảng `pdf_information`
--
ALTER TABLE `pdf_information`
  ADD PRIMARY KEY (`info_id`);

--
-- Chỉ mục cho bảng `pdf_orderdetails`
--
ALTER TABLE `pdf_orderdetails`
  ADD PRIMARY KEY (`detail_id`),
  ADD KEY `pdf_orderdetails_product_id_foreign` (`product_id`),
  ADD KEY `pdf_orderdetails_order_id_foreign` (`order_id`);

--
-- Chỉ mục cho bảng `pdf_orders`
--
ALTER TABLE `pdf_orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `pdf_orders_user_id_foreign` (`user_id`),
  ADD KEY `pdf_orders_shipper_id_foreign` (`shipper_id`);

--
-- Chỉ mục cho bảng `pdf_products`
--
ALTER TABLE `pdf_products`
  ADD PRIMARY KEY (`product_id`),
  ADD UNIQUE KEY `pdf_products_product_name_unique` (`product_name`),
  ADD KEY `pdf_products_category_id_foreign` (`category_id`),
  ADD KEY `pdf_products_users_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `pdf_shippers`
--
ALTER TABLE `pdf_shippers`
  ADD PRIMARY KEY (`shipper_id`);

--
-- Chỉ mục cho bảng `pdf_slides`
--
ALTER TABLE `pdf_slides`
  ADD PRIMARY KEY (`slide_id`);

--
-- Chỉ mục cho bảng `pdf_users`
--
ALTER TABLE `pdf_users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `pdf_users_user_name_unique` (`user_name`),
  ADD UNIQUE KEY `pdf_users_user_email_unique` (`user_email`),
  ADD KEY `pdf_users_group_id_foreign` (`group_id`);

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
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `pdf_blogs`
--
ALTER TABLE `pdf_blogs`
  MODIFY `blog_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `pdf_categories`
--
ALTER TABLE `pdf_categories`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `pdf_groups`
--
ALTER TABLE `pdf_groups`
  MODIFY `group_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `pdf_information`
--
ALTER TABLE `pdf_information`
  MODIFY `info_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `pdf_orderdetails`
--
ALTER TABLE `pdf_orderdetails`
  MODIFY `detail_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `pdf_orders`
--
ALTER TABLE `pdf_orders`
  MODIFY `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT cho bảng `pdf_products`
--
ALTER TABLE `pdf_products`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `pdf_shippers`
--
ALTER TABLE `pdf_shippers`
  MODIFY `shipper_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `pdf_slides`
--
ALTER TABLE `pdf_slides`
  MODIFY `slide_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `pdf_users`
--
ALTER TABLE `pdf_users`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `pdf_blogs`
--
ALTER TABLE `pdf_blogs`
  ADD CONSTRAINT `pdf_blogs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `pdf_users` (`user_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `pdf_orderdetails`
--
ALTER TABLE `pdf_orderdetails`
  ADD CONSTRAINT `pdf_orderdetails_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `pdf_orders` (`order_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pdf_orderdetails_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `pdf_products` (`product_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `pdf_orders`
--
ALTER TABLE `pdf_orders`
  ADD CONSTRAINT `pdf_orders_shipper_id_foreign` FOREIGN KEY (`shipper_id`) REFERENCES `pdf_shippers` (`shipper_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pdf_orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `pdf_users` (`user_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `pdf_products`
--
ALTER TABLE `pdf_products`
  ADD CONSTRAINT `pdf_products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `pdf_categories` (`category_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pdf_products_users_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `pdf_users` (`user_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `pdf_users`
--
ALTER TABLE `pdf_users`
  ADD CONSTRAINT `pdf_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `pdf_groups` (`group_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
