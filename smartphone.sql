-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2024 at 07:04 PM
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
-- Database: `smartphone`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `id` int(10) NOT NULL,
  `iduser` int(10) NOT NULL DEFAULT 0,
  `bill_name` varchar(255) NOT NULL,
  `bill_address` varchar(255) NOT NULL,
  `bill_tel` varchar(50) NOT NULL,
  `bill_email` varchar(100) NOT NULL,
  `bill_pttt` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1.Thanh toán trực tiếp \r\n2.Chuyển khoản\r\n3.Thanh toán online\r\n',
  `ngaydathang` varchar(50) NOT NULL,
  `total` int(10) NOT NULL DEFAULT 0,
  `bill_status` tinyint(1) DEFAULT 0 COMMENT '0.Đơn hàng mới \r\n1.Đang xử lý\r\n2.Đang giao hàng\r\n3.Đã giao hàng',
  `receive_name` varchar(255) DEFAULT NULL,
  `receive_address` varchar(255) DEFAULT NULL,
  `receive_tel` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`id`, `iduser`, `bill_name`, `bill_address`, `bill_tel`, `bill_email`, `bill_pttt`, `ngaydathang`, `total`, `bill_status`, `receive_name`, `receive_address`, `receive_tel`) VALUES
(15, 0, 'Võ Thị Thanh Thương', 'Nguyễn Lương Bằng , hòa Khánh Bắc , Liên Chiểu, Đà Nẵng', '0364941253', 'tthuong05@gmail.com', 0, '09:23:05am 17/12/2023', 420000, 0, NULL, NULL, NULL),
(16, 1, 'Tram', 'phường Hòa Khánh Nam ,quận Liên Chiểu, tp Đà Nẵng', '0946283611', 'vothithanhtram03@gmail.com', 0, '09:24:33am 17/12/2023', 790000, 0, NULL, NULL, NULL),
(17, 0, 'nguyễn văn A', '12 Nguyễn Chánh - Liên Chiểu', '0876543212', 'nguyenvana@gmai.com', 0, '05:23:42pm 20/12/2023', 2480000, 0, NULL, NULL, NULL),
(18, 5, 'tramvo', '1223 nguyễn lương bằng', '098765432345', 'vothanhtram@gmail.com', 0, '05:54:56pm 22/12/2023', 2340000, 0, NULL, NULL, NULL),
(19, 6, 'tramm', '1235 nam cao liên chiểu', '09872345', 'vothitram@gmail.com', 0, '06:32:42pm 22/12/2023', 790000, 0, NULL, NULL, NULL),
(20, 0, 'tram', '123', '0987654321', 'vothithanhtram03@gmail.com', 0, '08:36:06am 14/05/2024', 760000, 0, NULL, NULL, NULL);

--
--- Table structure for table `binhluan`
--

CREATE TABLE `binhluan` (
  `id` int(10) NOT NULL,
  `noidung` varchar(255) NOT NULL,
  `iduser` int(10) NOT NULL,
  `idpro` int(10) NOT NULL,
  `ngaybinhluan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `binhluan`
--

INSERT INTO `binhluan` (`id`, `noidung`, `iduser`, `idpro`, `ngaybinhluan`) VALUES
(2, 'e', 0, 4, '08:29:31am 07/12/2023'),
(9, 'ssssaaa', 0, 4, '08:35:19am 07/12/2023'),
(10, 'quua tuyet voi', 0, 4, '08:39:26am 07/12/2023'),
(11, 'hay du trời ', 0, 4, '08:39:39am 07/12/2023'),
(13, 'mình muốn mua tiếp những sản phẩm này', 0, 2, '08:40:57am 07/12/2023'),
(14, '2222222222', 0, 4, '09:10:09am 07/12/2023'),
(15, '3333', 0, 4, '09:10:13am 07/12/2023'),
(16, '11111', 0, 4, '09:10:20am 07/12/2023');

-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `iduser` int(10) NOT NULL,
  `idpro` int(10) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` int(10) NOT NULL DEFAULT 0,
  `soluong` int(3) NOT NULL,
  `thanhtien` int(10) NOT NULL,
  `idbill` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `iduser`, `idpro`, `img`, `name`, `price`, `soluong`, `thanhtien`, `idbill`) VALUES
(34, 0, 67, 'Itel it9010-3.jpg', 'Itel it9010', 420000, 1, 420000, 15),
(35, 1, 59, 'Mobell Rock 4 -1.jpg', 'Mobell Rock 4 ', 790000, 1, 790000, 16),
(36, 0, 65, 'Itel L6502-1.jpg', ' Itel L6502', 1690000, 1, 1690000, 17),
(37, 0, 64, 'Mobell M539-6.jpg', 'Mobell M539', 790000, 1, 790000, 17),
(38, 5, 58, 'Masstel Fami 12 4G-6.webp', 'Masstel Fami 12 4G', 650000, 1, 650000, 18),
(39, 5, 65, 'Itel L6502-1.jpg', ' Itel L6502', 1690000, 1, 1690000, 18),
(40, 6, 64, 'Mobell M539-6.jpg', 'Mobell M539', 790000, 1, 790000, 19),
(41, 0, 60, 'Mobell F309 4G-2.jpg', ' Mobell F309 4G', 760000, 1, 760000, 20);

---- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `name`) VALUES
(2, 'SAMSUNG'),
(4, 'IPHONE'),
(9, 'OPPO'),
(11, 'XIAOMI'),
(13, 'VIVO'),
(14, 'REALME'),
(19, 'NOKIA'),
(20, 'MASSTEL'),
(21, 'MOBELL'),
(22, 'ITEL');

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double(10,2) DEFAULT 0.00,
  `soluong` int(11) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `mota` text DEFAULT NULL,
  `luotxem` int(11) DEFAULT 0,
  `iddm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id`, `name`, `price`, `soluong`, `img`, `mota`, `luotxem`, `iddm`) VALUES
(6, 'Samsung Galaxy A05 128GB ', 3990000.00, 0, 'SamsungGalaxyA05128GB-1.webp', 'Tận hưởng những công nghệ mới ở tầm giá phải chăng cùng Galaxy A05. Từ diện mạo trẻ trung, năng động đến màn hình rộng lớn 6.7 inch, bộ đôi camera 50MP sắc nét, pin “trâu” sử dụng cả ngày dài và dung lượng bộ nhớ lớn, Samsung Galaxy A05 là lựa chọn lý tưởng ở phân khúc giá rẻ trong năm 2023.', 0, 2),
(8, 'Samsung Galaxy A34 5G ', 6990000.00, 0, 'Samsung Galaxy A34 5G-2.webp', 'Sở hữu những tính năng hàng đầu trong phân khúc, đi kèm mức giá hợp lý, Samsung Galaxy A34 là “chiến hữu” kề vai sát cánh cùng Gen Z, sẵn sàng cân mọi hoạt động, chinh phục mọi thử thách. Hãy trải nghiệm Galaxy A34 5G, bạn sẽ thấy sự khác biệt từ thiết kế hiện đại, màn hình 120Hz, bộ 3 camera 48MP sắc nét đến hiệu năng Dimensity 1080 mạnh mẽ.', 0, 2),
(9, 'Samsung Galaxy S23 Plus 5G 256GB', 17990000.00, 0, 'Samsung Galaxy S23 Plus 5G 256GB-3.webp', 'Khám phá những công nghệ tiên tiến nhất trên thiết bị Galaxy S23 Plus, bạn sẽ có trải nghiệm toàn năng từ thiết kế bền vững, camera Mắt thần bóng đêm cao cấp, bộ vi xử lý Snapdragon 8 Gen 2 for Galaxy mạnh mẽ đến viên pin bền bỉ và màn hình lớn sắc nét. Một sự kết hợp hoàn hảo, hội tụ mọi điểm ấn tượng trên thế hệ di động thông minh 2023.', 0, 2),
(10, 'Samsung Galaxy Z Flip4 5G 128GB', 11990000.00, 0, 'Samsung Galaxy Z Flip4 5G 128GB-4.webp', 'Nhỏ gọn và tinh tế, Samsung Galaxy Z Flip4 là chiếc smartphone sinh ra dành cho các tín đồ thời trang. Cơ chế gập duyên dáng, bộ màu sắc nhẹ nhàng và loạt chức năng quay chụp sẽ làm say lòng những người yêu cái đẹp.', 0, 2),
(11, 'Samsung Galaxy Z Fold4 5G 256GB', 22990000.00, 0, 'Samsung Galaxy Z Fold4 5G 256GB-5.webp', 'Với Samsung Galaxy Z Fold4, smartphone màn hình gập đã trở nên thân thiện, tiện dụng và bền bỉ hơn rất nhiều. Những cải tiến thiết thực trong từng khía cạnh giúp sản phẩm biến hóa linh hoạt hơn và đem lại những trải nghiệm không thể tìm thấy ở đâu khác.', 0, 2),
(12, 'Samsung Galaxy Z Flip4 5G 256GB Bespoke Edition ', 12990000.00, 0, 'Samsung Galaxy Z Flip4 5G 256GB Bespoke Edition -6.webp', 'Samsung Galaxy Z Flip4 5G Bespoke Edition là bản giới hạn được bán độc quyền tại FPT Shop. Đây là sự kết hợp đặc biệt giữa sắc màu thời thượng và tinh hoa công nghệ của chiếc điện thoại gập yêu thích nhất, mang tới cho người dùng đa dạng sự lựa chọn và những trải nghiệm thú vị, để bạn có thể linh hoạt \"biến hóa vạn style\", sẵn sàng dẫn đầu mọi xu hướng.', 0, 2),
(14, 'iPhone 15 Pro Max 256GB', 33990000.00, 0, 'iPhone 15 Pro Max 256GB-2.jpg', 'iPhone 15 Pro Max là chiếc iPhone cao cấp nhất với màn hình lớn nhất, thời lượng pin tốt nhất, cấu hình mạnh nhất và thiết kế khung Titan chuẩn hàng không vũ trụ siêu bền, siêu nhẹ. iPhone 15 Pro Max sở hữu những điểm vượt trội nhất nhà Apple. Theo đó, người dùng sẽ trải nghiệm chiếc iPhone cao cấp với hiệu năng “khủng” chip A17 Pro, khung titan, khả năng zoom nâng cấp, nút tác vụ mới,…', 0, 4),
(15, 'iPhone 14 Pro Max 128GB', 27490000.00, 0, 'iPhone 14 Pro Max 128GB-1.jpg', 'iPhone 14 Pro Max đem đến những trải nghiệm không thể tìm thấy trên mọi thế hệ iPhone trước đó với màu Tím Deep Purple sang trọng, camera 48MP lần đầu xuất hiện, chip A16 Bionic và màn hình “viên thuốc” Dynamic Island linh hoạt, nịnh mắt.', 100, 4),
(16, 'iPhone 14 Plus 128GB', 21390000.00, 0, 'iPhone 14 Plus 128GB-3.jpg', 'Sự hấp dẫn của chiếc iPhone thế hệ mới 2022 với màn hình lớn, pin xuất sắc nhất từ trước đến nay, chụp đêm ấn tượng và loạt công nghệ đỉnh cao, điện thoại iPhone 14 Plus mang người dùng vào những trải nghiệm di động tiên tiến, sẵn sàng cho cuộc sống năng động, thông minh và tiện lợi.', 80, 4),
(17, 'iPhone 13 128GB', 15990000.00, 0, 'iPhone 13 128GB-4.jpg', 'iPhone 13 sở hữu hệ thống camera kép xuất sắc nhất từ trước đến nay, bộ vi xử lý Apple A15 nhanh nhất thế giới smartphone cùng thời lượng pin cực khủng, sẵn sàng đồng hành cùng bạn suốt cả ngày.\r\n\r\n', 0, 4),
(18, 'iPhone 12 64GB', 13190000.00, 0, 'iPhone 12 64GB-5.jpg', 'iPhone 12 ra mắt với vai trò mở ra một kỷ nguyên hoàn toàn mới. Tốc độ mạng 5G siêu tốc, bộ vi xử lý A14 Bionic nhanh nhất thế giới smartphone, màn hình OLED tràn cạnh tuyệt đẹp và camera siêu chụp đêm, tất cả đều có mặt trên điện thoại iPhone 12.', 0, 4),
(19, 'iPhone 11 64GB ', 10790000.00, 0, 'iPhone 11 64GB - 6.jpg', 'Điện thoại iPhone 11 với 6 phiên bản màu sắc, camera có khả năng chụp ảnh vượt trội, thời lượng pin cực dài và bộ vi xử lý mạnh nhất từ trước đến nay sẽ mang đến trải nghiệm tuyệt vời dành cho bạn.', 0, 4),
(20, 'OPPO Find N3 Flip 5G 12GB-256GB', 2299000.00, 0, 'OPPO Find N3 Flip 5G 12GB-256GB-1.jpg', 'Thế hệ gập OPPO Find N3 Flip mới với loạt công nghệ hiện đại kết hợp thiết kế thời thượng, sang trọng giúp người dùng luôn tỏa sáng mọi lúc, mọi nơi. Đặc biệt, điện thoại còn có hệ thống 3 camera đẳng cấp lần đầu tiên để bạn thỏa thích trải nghiệm nhiếp ảnh chuyên nghiệp. Đây sẽ là tuyệt phẩm smartphone gập mà bạn không thể bỏ qua.', 90, 9),
(21, 'OPPO Find N3 5G 16GB-512GB', 44900000.00, 0, 'OPPO Find N3 5G 16GB-512GB-2.webp', 'OPPO Find N3 mở ra trải nghiệm smartphone gập đẳng cấp - siêu mỏng nhẹ và cực kỳ mạnh mẽ. Điện thoại hội tụ những đột phá công nghệ vượt trội của nhà OPPO. Từ vẻ ngoài sang trọng, tinh tế, camera Hasselblad cho đến hiệu năng dẫn đầu. Tất cả sẽ cho bạn một sản phẩm gập “bậc thầy”, trải nghiệm tuyệt đỉnh mà không thể tìm thấy ở chiếc điện thoại nào.', 101, 9),
(23, 'OPPO A58 6GB-128GB', 6790845.00, 0, 'OPPO A58 6GB-128GB-4.webp', 'Không chỉ ghi điểm nhờ thiết kế thanh lịch mà độc đáo, OPPO A58 còn thể hiện sự xuất sắc với màn hình rộng 6.72 inch Full HD, loa âm thanh nổi sống động, pin 5.000 mAh mạnh mẽ cùng chế độ sạc SuperVOOC 33W siêu tốc. Hệ thống camera kép 50MP hỗ trợ bởi AI sẽ cho bạn những khuôn hình ưng ý trong mọi khoảnh khắc.', 0, 9),
(24, 'OPPO A17k 3GB-64GB', 3900000.00, 0, 'OPPO A17k 3GB-64GB-5.webp', 'Nổi bật bởi thiết kế hiện đại, tràn đầy năng lượng, OPPO A17k ghi điểm với bạn ngay lần đầu nhìn thấy. Đồng thời, smartphone còn ẩn chứa vô vàn trải nghiệm ấn tượng trong tầm giá với viên pin lớn, RAM mở rộng đa nhiệm mượt mà, cảm biến vân tay cạnh bên hiện đại và chống nước IPX4 bền bỉ.', 0, 9),
(25, 'OPPO Find N2 Flip ', 4999999.00, 0, 'OPPO Find N2 Flip -6.webp', 'OPPO Find N2 Flip thời thượng, hiện đại khi nhìn bên ngoài và nổi bật khi gập lại nhỏ gọn. Bạn có thể đặt OPPO Find N2 Flip vừa vặn trong túi quần hay túi xách mà không cảm thấy vướng vịu, khó chịu. Khi cần thiết, một màn hình lớn tiện lợi sẽ xuất hiện, tạo ra chuẩn không gian smartphone thường, để bạn thực hiện mọi hoạt động. Màu sắc còn tôn lên Find N2 Flip với sắc màu tím cuốn hút, bên cạnh sắc đen tối giản, tinh tế, sang trọng.', 0, 9),
(26, 'OPPO Reno8 T 4G 256GB', 8900000.00, 0, 'OPPO Reno8 T 4G 256GB -1.webp', 'Chuyên gia chân dung thế hệ mới OPPO Reno8 T 4G cho trải nghiệm hoàn hảo với camera đến 100MP, mang tới khả năng chụp ảnh chuẩn nét trong từng điểm ảnh. Kết hợp đó là loạt ưu điểm sáng giá khác từ thiết kế da sợi thủy tinh đặc biệt cho đến viên pin lớn 5.000mAh và chứng nhận 48 tháng mượt mà.', 0, 9),
(29, 'Xiaomi 13T 12GB-256GB ', 11490000.00, 0, 'Xiaomi 13T 12GB-256GB -3.webp', 'Xiaomi 13T xứng đáng là tuyệt tác trong tầm tay bạn nhờ vào hệ thống ống kính Leica mang trải nghiệm hình ảnh hàng đầu, một cấu hình mạnh mẽ và một thiết kế mang đậm tính sáng tạo. Điện thoại Xiaomi mới này sẽ luôn đồng hành cùng bạn trên mọi chặng hành trình với mọi cung bậc cảm xúc khác nhau. ', 0, 11),
(30, 'Xiaomi Redmi 10 4GB-128GB', 2690000.00, 0, 'Xiaomi Redmi 10 4GB-128GB-4.webp', 'Redmi 10 đã chính thức quay trở lại với phiên bản năm 2022, điện thoại thừa hưởng những thông số của phiên bản trước và đi kèm với mức giá không đổi. Với màn hình 90Hz, bộ 4 camera và vi xử lý 8 nhân, Redmi 10 2022 tiếp tục mang sứ mệnh lớn của nhà Xiaomi, hứa hẹn sẽ chinh phục lượng lớn người dùng trong phân khúc. ', 0, 11),
(31, 'Xiaomi Redmi Note 11S 8GB - 128GB', 4690000.00, 0, 'Xiaomi Redmi Note 11S 8GB - 128GB-5.webp', 'Xiaomi đã trình làng Redmi Note 11S và chiếc điện thoại này mang nhiều cải tiến về mọi mặt so với người tiền nhiệm. Camera chính chuyên nghiệp, sạc nhanh siêu tốc, màn hình mượt mà cùng hiệu năng ấn tượng sẽ tạo nên một sự toàn diện đáng kinh ngạc, tất cả sẽ có trong chiếc smartphone tầm trung này.', 0, 11),
(32, 'Xiaomi Redmi 10A 3GB-64GB', 1890000.00, 0, 'Xiaomi Redmi 10A 3GB-64GB-6.webp', 'Redmi 10A là sản phẩm giá rẻ tiếp theo Xiaomi đem đến cho người dùng. Ở phân khúc giá, chiếc điện thoại này sở hữu một màn hình lớn, camera kép, dung lượng pin khủng và một thiết kế độc đáo. Đây sẽ là lựa chọn không thể tốt hơn dành cho người dùng phổ thông. ', 0, 11),
(33, 'Xiaomi Redmi Note 12 4GB-128GB', 3990000.00, 0, 'Xiaomi Redmi Note 12 4GB-128GB-2.webp', 'trang bị màn hình AMOLED với kích thước lên đến 6.67 inch, những nội dung yêu thích của bạn sẽ luôn sống động và màu đen sâu hơn kết hợp cùng khả năng tái tạo màu rực rỡ. Không những vậy, thiết bị sẽ có gam màu rộng chuẩn DCI-P3, có thể sử dụng ngoài trời nhờ độ sáng cao đến 1200nits và đạt chuẩn chứng chỉ Netflix HD. \r\n\r\n', 0, 11),
(34, 'Xiaomi Redmi 13C 6GB-128GB', 3290000.00, 0, 'Xiaomi Redmi 13C 6GB-128GB-1.webp', 'Redmi 13C sẽ là lựa chọn cực tốt cho người dùng phổ thông cho thời điểm cuối năm 2023. Máy được trang bị cấu hình mạnh, hệ thống camera chất lượng cùng thời lượng pin không thua kém sản phẩm nào. Điện thoại Xiaomi này hứa hẹn sẽ tạo nên cơn sốt lớn như những sản phẩm của thương hiệu này đã từng làm. ', 98, 11),
(35, 'Vivo V25e 8GB - 128GB', 6490000.00, 0, 'Vivo V25e 8GB - 128GB-1.webp', 'Như thông lệ, vivo V25 series sẽ là dòng V tiếp theo của vivo sẽ ra mắt vào năm nay. vivo V25e sẽ mang đến nhiều cải tiến mới so với người tiền nhiệm, mang trong mình một thiết kế “hút hồn”, cụm camera vượt ngoài mong đợi, hiệu năng sử dụng mượt mà và hơn thế nữa. Bạn sẽ không khỏi bất ngờ bởi những gì mà chiếc điện thoại mới toanh này mang lại. ', 0, 13),
(36, 'Vivo T1x 4GB-64GB', 3490000.00, 0, 'Vivo T1x 4GB-64GB-2.webp', 'vivo T1x mang đến khả năng chơi game ấn tượng trên tay bạn, biến bạn trở thành một game thủ chuyên nghiệp với những trận game cực cháy. Điện thoại tầm trung này còn thừa hưởng nhiều điểm nổi bật khác mà vivo đã thành công ở các dòng sản phẩm trước đây như khả năng chụp ảnh, pin trâu, màn hình sắc nét và thiết kế mỏng nhẹ.', 0, 13),
(37, 'Vivo Y22s 8GB-128GB ', 4990000.00, 0, 'Vivo Y22s 8GB-128GB -3.webp', 'Y-series của vivo đang chiếm được lòng tin của người dùng Việt Nam với hàng loạt sản phẩm cấu hình tốt trong phân khúc giá rẻ. vivo Y22s là sản phẩm tiếp theo được giới thiệu cho người dùng với nhiều cải tiến mới mẻ, từ thiết kế tạo trào lưu, camera chụp thiếu sáng ấn tượng đến khả năng vận hành trơn tru. Chiếc điện thoại này cho thấy được tiềm năng của mình trong nửa cuối năm 2022. ', 0, 13),
(38, 'Vivo Y16 4GB-128GB', 3790000.00, 0, 'Vivo Y16 4GB-128GB-4.webp', 'vivo Y16 là sản phẩm tiếp theo sử dụng thiết kế hợp xu hướng mà vivo tạo ra, chiếc điện thoại này được định vị trong phân khúc giá rẻ nhưng sở hữu nhiều thông số ấn tượng từ camera đến hiệu năng và hiệu suất năng lượng. Cùng với vivo Y02s và vivo Y22s, chúng cho thấy đây là những lựa chọn hợp lý cho phân khúc từ 3-6 triệu đồng. ', 0, 13),
(39, 'Vivo Y15s 3GB - 32GB ', 2290000.00, 0, 'Vivo Y15s 3GB - 32GB -5.webp', 'Tha hồ giải trí suốt cả ngày với dung lượng pin lớn 5000mAh, vivo Y15s sẽ cùng bạn tận hưởng những niềm vui với thiết kế mỏng nhẹ, trải nghiệm mượt mà trên màn hình tràn Halo 6,51 inch cực đã.', 0, 13),
(40, 'Vivo V25 Pro 5G 8GB-128GB', 8190000.00, 0, 'Vivo V25 Pro 5G 8GB-128GB-6.webp', 'Chiếc flagship vivo V25 Pro 5G đã sẵn sàng để cùng bạn khám phá thế giới, mọi thứ tạo nên một chiếc điện thoại hoàn hảo, từ thiết kế đổi màu cao cấp, camera dẫn đầu xu hướng đến hiệu năng 5G mạnh mẽ. Những trải nghiệm tuyệt vời nhất sẽ luôn bên bạn nếu có chiếc điện thoại này trên tay. ', 0, 13),
(41, 'realme 11 Pro 5G 8GB-256GB', 10690000.00, 0, 'realme 11 Pro 5G 8GB-256GB-1.webp', 'realme 11 Pro 5G gia nhập đường đua với nhiều lợi thế lớn, chiếc smartphone realme mới nhất này hứa hẹn sẽ khuấy đảo phân khúc cận cao cấp trong nửa cuối năm 2023 này. Từ thiết kế cao cấp với màn hình cong bóng bẩy, camera OIS ấn tượng đến hiệu năng 5G mạnh mẽ, tất cả sẽ tạo nên một realme 11 Pro đáng gờm. ', 0, 14),
(42, 'realme 11 4G 8GB-128GB', 6490000.00, 0, 'realme 11 4G 8GB-128GB-2.webp', 'realme 11 lần đầu được công bố tại thị trường toàn cầu với loạt thay đổi so với người tiền nhiệm. Từ thiết kế phong cách mới, màn hình lớn đến hệ thống camera 108MP siêu chất lượng, chiếc smartphone realme này sẽ là lựa chọn hoàn hảo trong phân khúc tầm trung. ', 0, 14),
(43, 'realme C55 6GB-128GB', 4190000.00, 0, 'realme C55 6GB-128GB-3.webp', 'Mở màn cho những trải nghiệm mới trên điện thoại Realme trong năm 2023, tân binh Realme C55 chinh phục người dùng bởi camera kép 64MP, màn hình lớn giải trí sắc nét, sạc nhanh 33W cùng ngôn ngữ thiết kế trẻ trung, hiện đại và ấn tượng ngay lần đầu gặp gỡ.', 0, 14),
(44, 'realme C51 3GB-64GB ', 2790000.00, 0, 'realme C51 3GB-64GB -4.webp', 'Không chỉ tạo điểm nhấn qua phong cách thiết kế trẻ trung, realme C51 còn gây ấn tượng bởi camera AI 50MP với khả năng chụp ảnh xuất sắc. Sản phẩm sở hữu viên pin lớn 5.000 mAh kết hợp cùng sạc nhanh 33W, màn hình 6.74 inch tần số quét 90Hz sẽ đem lại trải nghiệm đã mắt trong mọi tác vụ giải trí.', 0, 14),
(45, 'realme C30s 3GB-64GB ', 2290000.00, 0, 'realme C30s 3GB-64GB -5.webp', 'Realme C30s cho trải nghiệm công nghệ ấn tượng ở tầm giá rẻ, từ viên pin lớn 5.000mAh, màn hình lớn, mở khóa vân tay cạnh bên cho đến thiết kế trẻ trung với sắc màu thời trang, sẵn sàng đồng hành cùng bạn chinh phục mọi thử thách.\r\n\r\n', 0, 14),
(46, 'realme C30s 3GB-64GB', 2990000.00, 0, 'Realme-C30s-1-6.jpg', 'Realme C30s cho trải nghiệm công nghệ ấn tượng ở tầm giá rẻ, từ viên pin lớn 5.000mAh, màn hình lớn, mở khóa vân tay cạnh bên cho đến thiết kế trẻ trung với sắc màu thời trang, sẵn sàng đồng hành cùng bạn chinh phục mọi thử thách.', 0, 14),
(47, 'Nokia C32', 3090000.00, 0, 'Nokia C32-1.webp', 'Nokia C32 sẽ giúp bạn trải nghiệm trọn vẹn những giá trị làm nên thương hiệu của nhà sản xuất Phần Lan, bao gồm cả độ bền bỉ về chất lượng khung vỏ cũng như thời lượng pin. Chiếc điện thoại tập trung vào các trải nghiệm cốt lõi và mang tới giao diện thân thiện nhờ hệ điều hành Android 13.', 0, 19),
(48, 'Nokia 5710 XpressAudio', 1590000.00, 0, 'Nokia 5710 XpressAudio-2.webp', 'Nokia 5710 XpressAudio là một chiếc điện thoại phổ thông được tích hợp sẵn tai nghe không dây và các nút điều chỉnh âm nhạc chuyên dụng, cho phép bạn thưởng thức âm nhạc ở bất kỳ đâu. Sản phẩm cũng có thiết kế bền bỉ, phần mềm dễ sử dụng và bàn phím vật lý cổ điển.', 0, 19),
(49, 'Nokia 215 DS 4G', 990000.00, 0, 'Nokia 215 DS 4G-3.webp', 'Giờ đây với Nokia 215 4G, bạn đã có thể tận hưởng mạng 4G siêu tốc trên chiếc điện thoại phổ thông nhỏ gọn và bền bỉ. Tha hồ truy cập mạng Internet tốc độ cao ở bất cứ nơi đâu.Với mạng 4G, bạn có thể gọi điện VoLTE chuẩn, duyệt web nhanh chóng, chơi game và lướt Facebook mượt mà. Mạng 4G giúp trải nghiệm Internet trên điện thoại phổ thông lên một tầm cao mới. Cùng mức giá siêu rẻ, Nokia 215 4G thực sự mang đến những điều trọn vẹn.', 0, 19),
(50, 'Nokia 110 DS Pro 4G ', 700000.00, 0, 'Nokia 110 DS Pro 4G -4.webp', 'Nokia 110 DS Pro 4G tự tin với một thiết kế mới lạ, cao cấp nhất so với các mẫu điện thoại phổ thông hiện nay và những nâng cấp về khả năng đàm thoại, pin cũng như tích hợp camera chụp ảnh sẽ giúp cho Nokia 110 DS Pro 4G sớm trở thành điện thoại phổ thông quốc dân trong tương lai. ', 0, 19),
(51, 'Nokia 110 DS 4G', 670000.00, 0, 'Nokia 110 DS 4G-5.webp', 'Một chiếc điện thoại phổ thông nhưng vẫn có thiết kế nổi bật, Nokia 110 DS 4G thổi một luồng gió mới cho dòng điện thoại cơ bản. Bất ngờ hơn nữa, chiếc điện thoại siêu nhỏ gọn, pin “trâu” của bạn còn có thể kết nối 4G, vào mạng Internet tốc độ cao mọi lúc mọi nơi.', 0, 19),
(52, 'Nokia 105 DS Pro 4G', 660000.00, 0, 'Nokia 105 DS Pro 4G-6.webp', 'Nokia 105 DS Pro 4G hỗ trợ cuộc gọi thoại HD 4G VoLTE và loạt tính năng ấn tượng trên một chiếc điện thoại phổ thông. Điện thoại Nokia này giúp bạn có thêm một lựa chọn hoàn hảo để đàm thoại và sử dụng như một chiếc máy phụ. \r\n\r\n', 0, 19),
(53, 'Masstel Izi 15 4G ', 390000.00, 0, 'Masstel Izi 15 4G -1.webp', 'Với khả năng kết nối 4G, lưu danh bạ 2.000 số và kết nối 2 SIM 2 sóng, chiếc điện thoại Masstel IZI 15 là giải pháp liên lạc nhỏ nhắn, bền bỉ và cơ động hơn nhiều so với smartphone. Cơ chế HD Call sẽ đảm bảo mọi cuộc gọi của bạn luôn rõ ràng sắc nét, duy trì liên lạc xuyên suốt nhờ thời lượng pin bền bỉ vượt trội.', 0, 20),
(54, 'Masstel Lux 20 4G', 650000.00, 0, 'Masstel Lux 20 4G-2.webp', 'Đúng như tên gọi luxury, Masstel LUX 20 4G có diện mạo đậm chất cao cấp. Với phong cách sang trọng, hỗ trợ liên lạc 4G, có thời lượng pin dài lâu và mức giá cực kỳ phải chăng, sản phẩm sẽ giúp bạn có cái nhìn hoàn toàn mới về những giá trị mà một chiếc điện thoại phổ thông có thể đem lại.', 0, 20),
(55, 'Masstel Fami 60 4G', 700000.00, 0, 'Masstel Fami 60 4G-3.webp', 'Masstel Fami 60 là chiếc điện thoại cơ bản cực kỳ phù hợp dành cho các bậc phụ huynh khi sở hữu thiết kế màn hình lớn, bàn phím số rõ ràng, danh bạ lưu 500 số điện thoại và sở hữu tới hai đèn pin siêu sáng. Sản phẩm được trang bị loa lớn và công nghệ 4G kết nối nhanh, ổn định.', 0, 20),
(56, 'Masstel izi 30 4G ', 600000.00, 0, 'Masstel izi 30 4G -4.webp', 'Masstel IZI 30 4G đem đến cho bạn giải pháp liên lạc bền bỉ, rõ ràng thông qua công nghệ 4G chất lượng cao. Sản phẩm sở hữu màn hình màu với phông chữ lớn dễ nhìn, hỗ trợ nghe đài FM mọi nơi mọi lúc và có đèn pin LED siêu sáng. Bạn sẽ thoải mái lưu danh bạ 500 số điện thoại, dễ dàng tra cứu và nghe gọi bất cứ lúc nào.', 0, 20),
(57, 'Masstel Izi 15 4G ', 650000.00, 0, 'Masstel Izi 15 4G -5.webp', 'Với khả năng kết nối 4G, lưu danh bạ 2.000 số và kết nối 2 SIM 2 sóng, chiếc điện thoại Masstel IZI 15 là giải pháp liên lạc nhỏ nhắn, bền bỉ và cơ động hơn nhiều so với smartphone. Cơ chế HD Call sẽ đảm bảo mọi cuộc gọi của bạn luôn rõ ràng sắc nét, duy trì liên lạc xuyên suốt nhờ thời lượng pin bền bỉ vượt trội.', 0, 20),
(58, 'Masstel Fami 12 4G', 650000.00, 0, 'Masstel Fami 12 4G-6.webp', 'Là một trong những mẫu điện thoại phổ thông sáng giá nhất hiện tại, Masstel Fami 12 4G có giá bán rất phải chăng, sở hữu màn hình 1.77 inch QVGA, có viên pin lớn cho thời gian đàm thoại 5 tiếng và hỗ trợ đèn pin LED chiếu sáng tiện dụng. Đây sẽ là công cụ tuyệt vời cho những ai muốn sắm sửa thiết bị chuyên phục vụ nghe gọi hoặc cho đối tượng người dùng lớn tuổi.', 0, 20),
(59, 'Mobell Rock 4 ', 790000.00, 0, 'Mobell Rock 4 -1.jpg', 'Mobell Rock 4 được xem là một trong những chiếc điện thoại bền bỉ nhất mà nhà Mobell chính thức cho ra mắt trên thị trường, sở hữu diện mạo cứng cáp cùng viên pin cực trâu giúp máy có thể đồng hành cùng bạn trong suốt một thời gian dài.', 0, 21),
(60, ' Mobell F309 4G', 760000.00, 0, 'Mobell F309 4G-2.jpg', 'Chiếc điện thoại Mobell F309 là sự lựa chọn phù hợp cho khách hàng đang tìm kiếm một thiết bị di động nhỏ gọn để liên lạc, hỗ trợ mạng di động 4G VoLTE và có thể sử dụng hai SIM nano giúp cho nhu cầu liên lạc bằng việc nghe gọi/nhắn tin được đáp ứng tốt.', 0, 21),
(61, ' Mobell M239 4G ', 390000.00, 0, 'Mobell M239 4G -3.jpg', 'Mobell chính thức trình làng điện thoại phổ thông Mobell M239, mang ưu điểm với một thiết kế gọn gàng và màu sắc trẻ trung.\r\nThiết kế đơn giản, cứng cáp\r\nMobell M239 sở hữu ngoại hình quen thuộc của dòng điện thoại phổ thông, khi sử dụng chất liệu nhựa được tinh chỉnh giúp máy trở nên trẻ trung và vô cùng chắc chắn.', 0, 21),
(62, 'Mobell M331 4G ', 550000.00, 0, 'Mobell M331 4G -4.jpg', 'Mobell M331 chiếc điện thoại phổ thông mới nhất được hãng Mobell tung ra thị trường vào nửa cuối năm 2023. Chiếc điện thoại sẽ phù hợp cho những bạn đang tìm kiếm một sản phẩm với thiết kế nhỏ gọn, âm thanh nghe gọi to rõ và một viên pin trâu.Máy được làm từ nhựa và được hoàn thiện tốt nên khi sử dụng máy không xuất hiện tình trạng ọp ẹp. Đồng thời, tối ưu được khối lượng để bạn có thể cầm nắm một cách nhẹ nhàng hơn.\r\n\r\nPhần mặt trước sẽ có một khu vực bàn phím được thiết kế với các phím nổi, có viền bo cong nhẹ và được sát lại với nhau để tạo ra một bề mặt lớn hơn, giúp bạn thao tác nhấn và giữ phím dễ dàng hơn.', 0, 21),
(63, 'Mobell F209 ', 650000.00, 0, 'Mobell F209 -5.jpg', 'Bên cạnh sự chạy đua về công nghệ trên những mẫu smartphone, thì đâu đó trên thị trường vẫn còn sót lại một vài hãng còn tiếp tục cải tiến và sản xuất những mẫu điện thoại phổ thông với mục tiêu đáp ứng nhu cầu sử dụng cơ bản. Nổi trội trong đó có thể kể đến chiếc Mobell F209 với màn hình to rõ, viên pin lớn cùng công nghệ mạng di động 4G VoLTE.', 0, 21),
(64, 'Mobell M539', 790000.00, 0, 'Mobell M539-6.jpg', 'Mobell M539 - chiếc điện thoại phổ thông vừa được ra mắt phù hợp cho ai đang tìm kiếm cho mình một thiết bị nhỏ gọn phục vụ tốt trong việc liên lạc bởi máy có hỗ trợ mạng di động 4G VoLTE cùng khả năng trang bị 2 nano SIM', 0, 21),
(71, 'Mobell M539', 5000000.00, 0, 'Mobell M539-6.jpg', 'điện thoại mobell', 0, 21),
(72, 'iPhone 14 Plus 128GB', 99999999.99, 0, 'iPhone 14 Plus 128GB-3.jpg', 'điện thoại iphone', 0, 4),
(74, 'itel it 1080', 9000000.00, 0, 'Itel it9210-2.jpg', 'điện thoại itel giá rẻ', 0, 22);

---- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int(10) NOT NULL,
  `user` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `role` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `user`, `pass`, `email`, `address`, `tel`, `role`) VALUES
(1, 'Tram', '123456', 'vothithanhtram03@gmail.com', 'phường Hòa Khánh Nam ,quận Liên Chiểu, tp Đà Nẵng', '0946283611', 1),
(3, 'tram', '2604', 'tram03@gmail.com', NULL, NULL, 0),
(4, 'Thanhtram', '12345', 'thanhtram@gmai.com', NULL, NULL, 0),
(5, 'tramvo', '260403', 'vothanhtram@gmail.com', NULL, NULL, 0),
(6, 'tramm', '26042003', 'vothitram@gmail.com', NULL, NULL, 0),
(7, 'vo thi thanh tram', '26042003', 'vothanhtram03@gmail.com', NULL, NULL, 0),
(8, 'Vo thi thanh tram', 'tram2003', 'vothithanhtram03@gmail.com', NULL, NULL, 0),
(9, 'admin123', '123456', 'tram@gmail.com', NULL, NULL, 0);


ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`);
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`);

---- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lk_sanpham_danhmuc` (`iddm`);

-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

---- Indexes for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

---- AUTO_INCREMENT for table `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `lk_sanpham_danhmuc` FOREIGN KEY (`iddm`) REFERENCES `danhmuc` (`id`);
COMMIT;
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;
-- AUTO_INCREMENT for table `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
