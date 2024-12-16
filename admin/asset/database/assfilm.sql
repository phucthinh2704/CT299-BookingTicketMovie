-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 03, 2018 lúc 05:24 PM
-- Phiên bản máy phục vụ: 10.1.32-MariaDB
-- Phiên bản PHP: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO"; 
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `assfilm`
--
CREATE DATABASE `assfilm`;
USE `assfilm`;
-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Phim thuyết minh'),
(2, 'Phim hài hước'),
(3, 'Phim chiến tranh'),
(4, 'Phim âm nhạc'),
(5, 'Phim thiếu nhi'),
(6, 'Phim hoạt hình'),
(7, 'Phim thần thoại'),
(8, 'Phim TV Show'),
(9, 'Phim hành động'),
(10, 'Phim phiêu lưu'),
(11, 'Phim viễn tưởng'),
(12, 'Phim bí mật điện ảnh'),
(13, 'Phim Võ Thuật '),
(14, 'Phim Kinh Dị'),
(15, 'Phim Hài Việt'),
(16, 'Phim Cổ Trang'),
(17, 'Phim Tâm Lý'),
(18, 'Phim Hình Sự'),
(19, 'Phim Khoa học Tài liệu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `episode`
--

CREATE TABLE `episode` (
  `id` int(11) NOT NULL,
  `film_id` int(11) NOT NULL,
  `link` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `film`
--

CREATE TABLE `film` (
  `id` int(5) NOT NULL,
  `name` varchar(100) NOT NULL,
  `name2` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `director` varchar(100) NOT NULL,
  `actor` varchar(100) NOT NULL,
  `category_id` int(2) NOT NULL,
  `type_movie` int(20) NOT NULL,
  `nation_id` int(100) NOT NULL,
  `year` int(4) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `duration` int(5) NOT NULL,
  `num_view` int(11) NOT NULL,
  `author` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `film`
--

INSERT INTO `film` (`id`, `name`, `name2`, `status`, `director`, `actor`, `category_id`, `type_movie`, `nation_id`, `year`, `image`, `description`, `duration`, `num_view`, `author`) VALUES
(1, 'Ghét thì yêu thôi', 'VTV3(2017)', 'Tập 28/28 HD Thuyết Minh', 'Đỗ Thanh Hải', 'Vân Dung, MSUT Chí Trung, Phương Anh, Đình Tú', 17, 1, 2, 2018, '', 'Phim Ghét Thì Yêu Thôi sẽ đem đến cho khán giả những tràng cười thú vị thông qua lời thoại dí dỏm, lối diễn hài tự nhiên của các diễn viên và cả những tình huống dở khóc dở cười xảy ra giữa các cặp đôi oan gia. Phim Ghet Thi Yeu Thoi Tap 8 xoay quanh mối tình đầy ắp những rắc rối, tranh cãi giữa hai bạn trẻ vốn coi nhau là \"kẻ thù không đội trời chung\". đôi bạn trẻ Kim (Phương Anh) và Du (Đình Tú). Cuộc tình của họ khởi đầu như một \"cơn ác mộng\" và cả hai coi nhau như là cái gai trong mắt. Tuy nhiên, sau một sự cố bất ngờ, Kim và Du dần dần hiểu nhau hơn và tình cảm đến một cách tự nhiên.', 45, 2, 'ko xác định'),
(2, 'KHÁCH SẠN HUYỀN BÍ 3: KỲ NGHỈ MA CÀ RỒNG', 'Hotel Transylvania 3: Summer Vacation(2018)', 'HD Vietsub + Thuyết Minh', 'Genndy Tartakovsky', 'Steve Buscemi, Selena Gomez, Adam Sandler, Kevin James, Andy Samberg', 6, 2, 1, 2015, 'https://phim3s.pw/phim-le/khach-san-huyen-bi-3-ky-nghi-ma-ca-rong_11298/xem-phim/', 'Phim Khách Sạn Huyền Bí 3: Kỳ Nghỉ Ma Cà Rồng lần này sẽ là “cuộc chơi lớn” với một phen tiệc tùng sang chảnh hết nấc của gia đình Dracula. Đã quá “ngán” với cường độ làm việc chăm chỉ 365 ngày không nghỉ, bá tước Dracula quyết định đòi “đình công”. Để khai sáng cho người cha trăm tuổi chưa bao giờ bước ra khỏi “lũy tre làng”, vợ chồng nhà Jonathan – Mavis lập một kế hoạch xả hơi táo bạo: Thuê đứt một du thuyền du lịch hạng sang để đưa tất thảy bộ xậu quái vật già trẻ lớn bé làm một chuyến ra khơi nhớ đời.', 99, 3, 'Nguyễn Văn Đạt');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nation`
--

CREATE TABLE `nation` (
  `id` int(11) NOT NULL,
  `name` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `nation`
--

INSERT INTO `nation` (`id`, `name`) VALUES
(1, 'Mỹ'),
(2, 'Việt Nam'),
(3, 'Pháp'),
(4, 'Nhật Bản'),
(5, 'Hàn Quốc'),
(6, 'Anh'),
(7, 'Trung Quốc'),
(8, 'Ấn Độ'),
(9, 'Hồng Kông '),
(10, 'Thái Lan');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nav-menu`
--

CREATE TABLE `nav-menu` (
  `id` int(20) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `handle` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `nav-menu`
--

INSERT INTO `nav-menu` (`id`, `name`, `handle`) VALUES
(1, 'thể loại', 'category'),
(2, 'quốc gia', 'nation'),
(3, 'phim lẻ', 'single-movie'),
(4, 'phim bộ', 'series-movie'),
(5, 'phim chiếu rạp', 'theater-movie');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `series-movie`
--

CREATE TABLE `series-movie` (
  `id` int(20) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `year` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `series-movie`
--

INSERT INTO `series-movie` (`id`, `name`, `year`) VALUES
(1, 'Phim Bộ 2018', 2018),
(2, 'Phim Bộ 2017', 2017),
(3, 'Phim Bộ 2016', 2016),
(4, 'Phim Bộ 2015', 2015);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `single-movie`
--

CREATE TABLE `single-movie` (
  `id` int(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `year` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `single-movie`
--

INSERT INTO `single-movie` (`id`, `name`, `year`) VALUES
(1, 'Phim Lẻ 2018', 2018),
(2, 'Phim Lẻ 2017', 2017),
(3, 'Phim Lẻ 2016', 2016),
(4, 'Phim Lẻ 2015', 2015);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theater-movie`
--

CREATE TABLE `theater-movie` (
  `id` int(20) NOT NULL,
  `name` varchar(255) CHARACTER SET utf32 NOT NULL,
  `year` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `theater-movie`
--

INSERT INTO `theater-movie` (`id`, `name`, `year`) VALUES
(1, 'Phim Chiếu Rạp 2018', 2018),
(2, 'Phim Chiếu Rạp 2017', 2017),
(3, 'Phim Chiếu Rạp 2016', 2016),
(4, 'Phim Chiếu Rạp 2015', 2015);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `ID` int(5) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `birthday` date NOT NULL,
  `sex` varchar(10) NOT NULL,
  `usertype` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`ID`, `username`, `password`, `email`, `birthday`, `sex`, `usertype`) VALUES
(1, 'Van', '1234', 'ngthibichvan@gmail.com', '2018-11-13', 'female', 99),
(4, 'quang', '1234', 'quangvo33@gmail.com', '2018-11-04', 'male', 99),
(5, 'trinh', '1234', 'chinhchinh@gmail.com', '2018-11-04', 'female', 20),
(6, 'thien', '1234', 'thienle4444@gmail.com', '2018-11-05', 'male', 20),
(7, 'user', '1234', 'u@gmail.com', '0000-00-00', 'male', 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `usertype`
--

CREATE TABLE `usertype` (
  `type` int(2) NOT NULL,
  `typename` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `usertype`
--

INSERT INTO `usertype` (`type`, `typename`) VALUES
(10, 'Guest'),
(20, 'Member'),
(99, 'Admin');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `episode`
--
ALTER TABLE `episode`
  ADD PRIMARY KEY (`id`,`film_id`),
  ADD KEY `film_id` (`film_id`);

--
-- Chỉ mục cho bảng `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nation_id` (`nation_id`),
  ADD KEY `category` (`category_id`);

--
-- Chỉ mục cho bảng `nation`
--
ALTER TABLE `nation`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nav-menu`
--
ALTER TABLE `nav-menu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `series-movie`
--
ALTER TABLE `series-movie`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `single-movie`
--
ALTER TABLE `single-movie`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `theater-movie`
--
ALTER TABLE `theater-movie`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_ibfk_1` (`usertype`);

--
-- Chỉ mục cho bảng `usertype`
--
ALTER TABLE `usertype`
  ADD PRIMARY KEY (`type`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `film`
--
ALTER TABLE `film`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nation`
--
ALTER TABLE `nation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `nav-menu`
--
ALTER TABLE `nav-menu`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `series-movie`
--
ALTER TABLE `series-movie`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `single-movie`
--
ALTER TABLE `single-movie`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `theater-movie`
--
ALTER TABLE `theater-movie`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `episode`
--
ALTER TABLE `episode`
  ADD CONSTRAINT `episode_ibfk_1` FOREIGN KEY (`film_id`) REFERENCES `film` (`ID`);

--
-- Các ràng buộc cho bảng `film`
--
ALTER TABLE `film`
  ADD CONSTRAINT `film_ibfk_1` FOREIGN KEY (`nation_id`) REFERENCES `nation` (`id`),
  ADD CONSTRAINT `film_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Các ràng buộc cho bảng `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`usertype`) REFERENCES `usertype` (`type`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
