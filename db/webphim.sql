-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2024 at 04:22 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webphim`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Phim thuyết minh'),
(2, 'Phim hài hước'),
(3, 'Phim chiến tranh'),
(4, 'Phim âm nhạc'),
(5, 'Phim thiếu nhi'),
(6, 'Phim hoạt hình'),
(7, 'Phim thần thoại'),
(8, 'Phim khoa học'),
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
-- Table structure for table `film`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `film`
--

INSERT INTO `film` (`id`, `name`, `name2`, `status`, `director`, `actor`, `category_id`, `type_movie`, `nation_id`, `year`, `image`, `description`, `duration`, `num_view`, `author`) VALUES
(1, 'Ghét thì yêu thôi', 'VTV3(2017)', ' HD Thuyết Minh', 'Đỗ Thanh Hải', 'Vân Dung, NSUT Chí Trung, Phương Anh, Đình Tú', 1, 1, 2, 2024, 'p7.png', 'Phim Ghét Thì Yêu Thôi sẽ đem đến cho khán giả những tràng cười thú vị thông qua lời thoại dí dỏm, lối diễn hài tự nhiên của các diễn viên và cả những tình huống dở khóc dở cười xảy ra giữa các cặp đôi oan gia. Phim Ghet Thi Yeu Thoi Tap 8 xoay quanh mối tình đầy ắp những rắc rối, tranh cãi giữa hai bạn trẻ vốn coi nhau là \"kẻ thù không đội trời chung\". đôi bạn trẻ Kim (Phương Anh) và Du (Đình Tú). Cuộc tình của họ khởi đầu như một \"cơn ác mộng\" và cả hai coi nhau như là cái gai trong mắt. Tuy nhiên, sau một sự cố bất ngờ, Kim và Du dần dần hiểu nhau hơn và tình cảm đến một cách tự nhiên.', 45, 2, 'Trịnh Lê Phong'),
(2, 'KHÁCH SẠN HUYỀN BÍ 3: KỲ NGHỈ MA CÀ RỒNG', 'Hotel Transylvania 3: Summer Vacation(2018)', 'HD Vietsub + Thuyết Minh', 'Genndy Tartakovsky', 'Steve Buscemi, Selena Gomez, Adam Sandler, Kevin James, Andy Samberg', 6, 2, 1, 2027, 'p9.png', 'Phim Khách Sạn Huyền Bí 3: Kỳ Nghỉ Ma Cà Rồng lần này sẽ là “cuộc chơi lớn” với một phen tiệc tùng sang chảnh hết nấc của gia đình Dracula. Đã quá “ngán” với cường độ làm việc chăm chỉ 365 ngày không nghỉ, bá tước Dracula quyết định đòi “đình công”. Để khai sáng cho người cha trăm tuổi chưa bao giờ bước ra khỏi “lũy tre làng”, vợ chồng nhà Jonathan – Mavis lập một kế hoạch xả hơi táo bạo: Thuê đứt một du thuyền du lịch hạng sang để đưa tất thảy bộ xậu quái vật già trẻ lớn bé làm một chuyến ra khơi nhớ đời.', 99, 3, 'Nguyễn Văn Đạt'),
(3, 'Anh Em Nhà Grimsby', 'Grimsby (2016)', 'Hoàn tất ', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 1, 1, 1, 2027, 'p1.png', 'The Brothers Grimsby (Anh Em Nhà Grimsby) kể về cuộc phối hợp đầy mạo hiểm và các tình tiết vui nhộn của 2 anh em Hooligan nhà Grimsby và đội điệp viên cao cấp', 83, 532, 'Charles Dickens'),
(4, 'Anime Boruto', 'Boruto: Naruto Next Generations (2017)', 'HD Vietsub + Thuyết Minh', 'Quentin Jerome Tarantino', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 1, 1, 2, 2026, 'p2.png', 'Anime Boruto được chuyển thể từ bộ truyện cùng tên được sáng tác bởi hai tác giả Ukyō Kodachi và Mikie Ikemoto. Bộ truyện lần đầu tiên được ra mắt trên Weekly Shonen Jump vào ngày 9 tháng 5 năm 2016. Nội dung của bộ truyện là phần tiếp theo dựa trên nội dung bộ truyện gốc của Masashi Kishimoto, kể về thời đại của Boruto, con trai của Hokage đệ thất Naruto.', 24, 891, 'Charles Dickens'),
(5, 'Hội pháp sư Fairy Tail', 'Fairy Tail (2009)', 'HD Vietsub + Thuyết Minh', 'James Francis Cameron', 'Steve Buscemi, Selena Gomez, Adam Sandler, Kevin James, Andy Samberg', 1, 1, 3, 2025, 'p3.png', 'Câu chuyện về một cô thiếu nữ tên Lucy Heartfilia, khao khát của cô là gia nhập Hội Pháp sư nổi tiếng Fairy Tail. Trên đường phiêu lưu, Lucy đã vô tình gặp gỡ Natsu Salamander Dragneel, một thành viên của Fairy Tail, người sở hữu pháp thuật cổ đại Sát Long. Thế rồi Lucy được Natsu giới thiệu vào Hội Pháp sư Fairy Tail và cùng anh chàng này tham gia vô số nhiệm vụ khó khăn nhưng cũng không kém phần thú vị.', 24, 1436, 'Trịnh Lê Phong'),
(6, 'ĐỘI TRƯỞNG TSUBASA', 'Captain Tsubasa (2018)', 'HD Vietsub + Thuyết Minh', 'Quentin Jerome Tarantino', 'Leonardo DiCaprio, \nMeryl Streep, \nBrad Pitt, \nScarlett Johansson', 8, 1, 4, 2024, 'p4.png', 'Thuyền trưởng Tsubasa là câu chuyện đam mê của một học sinh trường tiểu học có những suy nghĩ và ước mơ xoay quanh hầu hết tình yêu bóng đá. Tsubasa Oozora 11 tuổi bắt đầu chơi bóng ở độ tuổi rất trẻ, và trong khi đó nó chỉ là một môn thể thao giải trí cho bạn bè của mình, đối với anh, nó đã phát triển thành một cái gì đó ám ảnh. ', 24, 1857, 'Charles Dickens'),
(7, 'ĐẤU LA ĐẠI LỤC', 'Dau La Dai Luc (2018)', 'Lồng Tiếng', 'James Francis Cameron', 'Steve Buscemi, Selena Gomez, Adam Sandler, Kevin James, Andy Samberg', 6, 1, 5, 2027, 'p5.png', 'Một đại lục không hề yên bình, một cuộc sống đầy hiểm nguy, phiêu lưu nhưng cũng không kém phần lãng mạn. tình yêu, thù hận, trách nhiệm… Tiếp bước những tiền bối đi trước, Hoắc Vũ Hạo và đời sau sử lai khắc thất quái, bằng niềm tin nhiệt huyết tuổi trẻ đã gây dựng lại đường môn tái lập những huy hoàng xưa kia của các tiền bối đi trước…', 25, 2309, 'Trịnh Lê Phong'),
(8, 'DẠ QUỶ', 'Rampant (2018)', 'Hoàn tất ', 'Quentin Jerome Tarantino', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 7, 1, 6, 2026, 'p6.png', 'Dạ Quỷ là một câu chuyện về hoàng tử Lee (do Huyn Bin thủ vai) ở triều đại Joseon, người nổi tiếng có võ thuật cao cường. Trở về sau khoảng thời gian dài bị đày ải bởi nhà Thanh (Trung Quốc), Ngài đau lòng chứng kiến cả quê hương chìm trong một đại dịch của những “ác quỷ bóng đêm”. Liệu rằng vị hoàng tử Lee có ngăn được cơn cuồng nộ của đội quân quỷ dữ này và cứu được giang sơn?', 129, 2761, 'George Orwell'),
(9, 'TRỞ VỀ MINH TRIỀU LÀM VƯƠNG GIA', 'Royal Highness (2018)', 'Lồng Tiếng', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 8, 1, 7, 2025, 'p7.png', 'Vào những năm Hoằng Trị (niên hiệu của vua Hiếu Tông thời Minh), tú tài Dương Lăng trong ngày cưới của mình đột nhiên ngã xuống đất không dậy nổi. Mấy ngày sau, Dương Lăng khỏi bệnh, nhìn thấy gia cảnh nghèo khó, đối với người vợ mới Hàn Ấu Nương, Dương Lăng đột nhiên thấy xấu hổ, bèn quyết định bán hết đất vườn, lên kinh đi thi. ', 45, 3213, 'Charles Dickens'),
(10, 'MỐC 22', 'Mile 22 (2018)', 'Hoàn tất ', 'James Francis Cameron', 'Steve Buscemi, Selena Gomez, Adam Sandler, Kevin James, Andy Samberg', 5, 1, 8, 2024, 'p8.png', 'Nhóm đặc biệt Ground Branch nhận được nhiệm vụ phải đưa một tình báo nước ngoài từ Đại sứ quán Mỹ tại Đông Nam Á đến một sân bay để về lại Mỹ - cách đó 22 dặm. Khó khăn ở đây chính là kiện hàng này cũng bị truy đuổi bởi một loạt lực lượng hoạt động trong sáng lẫn tối. ', 94, 3665, 'Trịnh Lê Phong'),
(11, 'ĐẶC VỤ BẤT CHẤP', 'Agent Mr. Chan (2018)', 'Hoàn tất ', 'Steven Allan Spielberg', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 4, 1, 9, 2027, 'p9.png', 'Hào hoa và lịch lãm chẳng kém gì James Bond, Mr.Chan là một điệp viên đẳng cấp hàng đầu. Anh chàng được một nữ cảnh sát ngỏ lời giúp đỡ cô trong một vụ án đầy gian nan. Trong suốt hành trình truy tìm ra câu trả lời, cả hai đã gặp phải vô số những pha đụng độ nguy hiểm nhưng cũng không kém phần hài hước.', 101, 4117, 'George Orwell'),
(12, 'QUÁI VẬT VENOM', 'Venom (2018)', 'Hoàn tất ', 'Quentin Jerome Tarantino', 'Steve Buscemi, Selena Gomez, Adam Sandler, Kevin James, Andy Samberg', 2, 1, 10, 2026, 'p10.png', 'Quái Vật Venom là một kẻ thù nguy hiểm và nặng ký của Người nhện trong loạt series của Marvel. Chàng phóng viên Eddie Brock (do Tom Hardy thủ vai) bí mật theo dõi âm mưu xấu xa của một tổ chức và đã không may mắn khi nhiễm phải loại cộng sinh trùng ngoài hành tinh (Symbiote) và từ đó đã không còn làm chủ bản thân về thể chất lẫn tinh thần. Điều này đã dần biến anh thành quái vật đen tối và nguy hiểm nhất chống lại người Nhện - Venom.', 112, 4569, 'Trịnh Lê Phong'),
(13, 'CÔ TIÊN DỌN DẸP', 'Clean With Passion For Now (2018)', 'HD Vietsub + Thuyết Minh', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 2, 1, 1, 2025, 'p11.png', 'Jang Sun Gyeol bị hội chứng sợ vi trùng và đang điều hành một công ty dọn dẹp. Anh ta đã gặp Gil O Sol. Đó là một người con gái có tính cách tươi sáng và không ngại vương bụi bẩn. Với sự giúp đỡ của Gil O Sol, Jang Sun Gyeol đã có thể đối mặt với hội chứng của mình và rơi vào lưới tình với Gil O Sol.', 60, 5021, 'George Orwell'),
(14, 'Anh Em Nhà Grimsby', 'Grimsby (2016)', 'Hoàn tất ', 'Steven Allan Spielberg', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 3, 1, 1, 2027, 'p12.png', 'The Brothers Grimsby (Anh Em Nhà Grimsby) kể về cuộc phối hợp đầy mạo hiểm và các tình tiết vui nhộn của 2 anh em Hooligan nhà Grimsby và đội điệp viên cao cấp', 83, 532, 'Trịnh Lê Phong'),
(15, 'NGÔI NHÀ HOA (PHẦN 1)', 'The House of Flowers (Season 1) (2018)', 'HD Vietsub + Thuyết Minh', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 1, 1, 3, 2027, 'p13.png', 'Ngôi nhà của Hoa là một bộ phim truyền hình hài kịch truyền hình Mexico được tạo ra bởi Manolo Caro. Nó mô tả một gia đình người Mexico cao cấp rối loạn chức năng sở hữu một cửa hàng hoa uy tín. Mùa 13 tập đầu tiên được phát hành vào ngày 10 tháng 8 năm 2018.', 60, 5925, 'George Orwell'),
(16, 'KÊ LONG TIÊN NỮ TRUYỆN', 'Mama Fairy and the Woodcutter / Tale of Gyeryong Fairy(2018)', 'Lồng Tiếng', 'James Francis Cameron', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 1, 1, 4, 2026, 'p14.png', 'Vào thời Goryeo, có một nàng tiên tên là Sun Ok Nam, trong một lần xuống trần gian để tắm trên đỉnh suối nước nóng thì nàng đã bị chàng tiều phu giấu đi bộ quần áo thần tiên của mình khiến cho nàng không thể quay về trời. Sau đó, nàng đã kết hôn với chàng tiều phu và sinh ra 2 đứa con, nhưng trong một lần chồng nàng đã mất vì một tai nạn rơi khỏi vách núi. Sun Ok-Nam đã tiếp tục tìm bộ quần áo của mình nhưng không thể tìm ra, cho nên nàng đã quyết định chờ chồng nàng tái sinh để có thể hỏi vị trí cất giấu quần áo của mình ở đâu.', 60, 6377, 'Trịnh Lê Phong'),
(17, 'THẾ GIỚI PHÉP MÀU', 'Black Clover (2017)', 'HD Vietsub + Thuyết Minh', 'Steven Allan Spielberg', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 1, 1, 5, 2025, 'p15.png', 'Aster và Yuno là hai đứa trẻ bị bỏ rơi ở nhà thờ và cùng nhau lớn lên tại đó. Khi còn nhỏ, chúng đã hứa với nhau xem ai sẽ trở thành Ma pháp vương tiếp theo. Thế nhưng, khi cả hai lớn lên, mọi sô chuyện đã thay đổi. Yuno là thiên tài ma pháp với sức mạnh tuyệt đỉnh trong khi Aster lại không thể sử dụng ma pháp và cố gắng bù đắp bằng thể lực. ', 25, 6829, 'William Shakespear'),
(18, 'HÓA RA ANH VẪN Ở ĐÂY (BẢN TRUYỀN HÌNH)', 'Never Gone (2018)', 'Hoàn tất', 'Steven Allan Spielberg', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 7, 1, 6, 2024, 'p16.png', 'Bộ phim Hóa Ra Anh Vẫn Ở Đây (Bản truyền hình) xoay quanh tình yêu trắc trở của Tô Cẩm Vận, một thiếu nữ thôn quê không mấy xuất sắc nhưng tính tình vô cùng thẳng thắn và Trình Tranh, một chàng trai giàu có, gia thế hoành tráng, đẹp trai học giỏi, mọi mặt đều xuất sắc.', 45, 7281, 'Trịnh Lê Phong'),
(19, 'TÌNH ANH EM', 'Race Gurram (2014)', 'Hoàn tất ', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 18, 1, 7, 2027, 'p17.png', 'Bộ phim kể về hai anh em Ram (Shaam) và Lucky (Allu Arjun). Ram là một anh chàng chân thành đã lớn lên với ước mơ trở thành một cảnh sát trung thực phục vụ người dân của mình. Lucky lại là một chàng trai hạnh phúc may mắn được hưởng cuộc sống với những niềm vui riêng của anh ấy. ', 163, 7733, 'Charles Dickens'),
(20, 'SLIME CHUYỂN SINH', 'That Time I Got Reincarnated as a Slime (2018)', 'HD Vietsub + Thuyết Minh', 'James Francis Cameron', 'Steve Buscemi, Selena Gomez, Adam Sandler, Kevin James, Andy Samberg', 17, 1, 8, 2026, 'p18.png', 'Câu chuyện bắt đầu với anh chàng Satoru Mikami, một nhân viên 37 tuổi sống cuộc sống chán chường và không vui vẻ gì. Trong một lần gặp cướp, anh đã bị mất mạng. Tưởng chừng cuộc sống chán ngắt ấy đã kết thúc, nhưng không! Ấy lại chính là sự khởi đầu của một cuộc sống mới. Mikami thức dậy, thấy mình đang ở trong một thế giới kì lạ. Và điều quái dị là anh không còn hình dạng người nữa, mà anh đã trở thành quái vật slime dẻo quẹo và không có mắt. Khi dần quen với hình dáng mới này, anh bắt đầu khám phá thế giới cùng với những quái vật khác, và công cuộc thay đổi thế giới mới đã bắt đầu.', 25, 8185, 'William Shakespear'),
(21, 'NGŨ NỮ NHẪN GIẢ (PHẦN 2)', 'Senran Kagura 2nd Season (2018)', 'Lồng Tiếng', 'Steven Allan Spielberg', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 1, 1, 9, 2025, 'p19.png', 'Học viện Hanzo là một ngôi trường danh tiếng, nơi đây ẩn chứa một bí mật mà ít ai được biết. Đằng sau bức tường của ngôi trường ấy là lò luyện nhẫn giả (shinobi) - họ đóng vai trò là gián điệp và là sát thủ dưới trướng của những tướng quân thời xa xưa. Ngày nay, nhẫn giả vẫn được lưu truyền trong học viện Hanzo. Senran Kagura theo chân 5 cô gái và hành trình đầy gian nan của họ nhằm kết thúc khoá học đào tạo nhẫn giả và những đối thủ nguy hiểm mà họ phải đối đầu.', 25, 8637, 'Trịnh Lê Phong'),
(22, 'NHỮNG CÔ NÀNG CHEERLEADER', 'Anima Yell! (2018)', 'Lồng Tiếng', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 1, 1, 10, 2024, 'p20.png', 'Câu chuyện kể về cô bé Kohane Hatoya - một cô nàng thích giúp đỡ người khác. Sau khi cô chuyển cấp từ sơ trung lên cao trung, cô bị hấp dẫn bởi bộ môn cổ vũ, và cô đã bắt đầu hoạt động của mình tại câu lạc bộ cổ vũ tại trường mình. Bên cạnh cô còn có cô bạn thời thơ ấu Uki và senpai giàu kinh nghiệm Hizume.', 24, 9089, 'William Shakespear'),
(23, 'ĐẠI TẦN ĐẾ QUỐC 2: CHÍ THIÊN HẠ', 'The Qin Empire 2 (2012)', 'Lồng Tiếng', 'Steven Allan Spielberg', 'Steve Buscemi, Selena Gomez, Adam Sandler, Kevin James, Andy Samberg', 1, 1, 1, 2027, 'p21.png', 'Sau khi cải cách Thương Ưởng, nhà Tần bước vào một kỷ nguyên mới. Nhà Tần ngày càng mạnh mẽ hơn và trở thành mối đe dọa cho 6 nước còn lại. Chiến lược của 6 nước Hàn, Ngụy, Triệu, Sở, Tề, Yên là kết minh “Hợp Tung” nhằm chống lại Tần. Huệ Văn Vương, vị vua trẻ nhà Tần đã quyết định trọng dụng chính trị gia tài giỏi Trương Nghi. Trương Nghi hiến kế, lập ra chiến lược “Liên Hoành”, giúp nhà Tần hết lần này tới lần khác phá giải được tình huống nguy hiểm. Trong thời kỳ do mình cai trị, Huệ Văn Vương chủ trương binh nông hợp nhất, về đối ngoại thì thực hiện liên kết để chia rẽ, vì vậy nhà Tần tuy gặp nguy hiểm nhưng khi giao chiến luôn giành được phần thắng.', 45, 9541, 'Trịnh Lê Phong'),
(24, 'TÀO THÁO', 'Beyond The Heaven (2009)', 'Lồng Tiếng', 'James Francis Cameron', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 1, 1, 2, 2026, 'p22.png', '\'Souten Kouro\' là series anime của Nhật Bản năm 2009, được chuyển thể từ manga cùng tên kể về cuộc đời của Tào Tháo của tác giả King Gonta. Manga được phát hành định kỳ trên tạp chí truyện tranh Weekly Morning của Kodansha từ năm 1994 đến năm 2005. Tổng cộng 409 chap truyện đã được phát hành, tập hợp thành 36 vol. Năm 1998, manga giành giải Manga Kodansha lần thứ 22. Phim do studio Madhouse chuyển thể, được đạo diễn bởi Toyoo Ashida và được phát sóng tại Nhật Bản từ tháng 4 đến tháng 9 năm 2009. ', 23, 9993, 'William Shakespear'),
(25, 'VỊ VUA TRÁI PHÁP', 'Outlaw King (2018)', 'Hoàn tất ', 'Christopher Edward Nolan', 'Steve Buscemi, Selena Gomez, Adam Sandler, Kevin James, Andy Samberg', 13, 1, 3, 2025, 'p23.png', 'Outlaw King dựa trên sự kiện cuộc chiến giữa Scotland và Anh Quốc, một thiên anh hùng ca về Robert the Bruce - vị vua huyền thoại của Scotlands và cuộc chiến giành lại quyền kiểm soát Scotland sau khi ông bị tuyên bố là một người ngoài vòng pháp luật của Vương quốc Anh vì đã giành vương miện Scotland và tạo ra cuộc nội chiến.', 121, 10445, 'Trịnh Lê Phong'),
(26, 'VƯƠNG TRIỀU CUỐI CÙNG (PHẦN 3)', 'The Last Kingdom (Season 3) (2018)', 'Hoàn tất ', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 3, 2, 4, 2024, 'p24.png', 'The Last Kingdom kể về câu chuyện của Uhtred vùng Bebbanburg, từ một cậu bé bị chiếm mất quyền thừa kế, lớn lên cùng với người vikings sau đó chiến đấu cho Vua Alfred Đại Đế và con trai của ông, Edward. Đây là câu chuyện về những cái khiên chắn, máu, trả thù và sự trui rèn từ nhiều vương quốc, về một giấc mơ lớn mà vua Alfred gọi là Anh Quốc.', 60, 10897, 'Charles Dickens'),
(27, 'VƯƠNG TRIỀU CUỐI CÙNG (PHẦN 2)', 'The Last Kingdom (Season 2) (2018)', 'Hoàn tất  ', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 3, 2, 5, 2027, 'p25.png', 'The Last Kingdom kể về câu chuyện của Uhtred vùng Bebbanburg, từ một cậu bé bị chiếm mất quyền thừa kế, lớn lên cùng với người vikings sau đó chiến đấu cho Vua Alfred Đại Đế và con trai của ông, Edward. Đây là câu chuyện về những cái khiên chắn, máu, trả thù và sự trui rèn từ nhiều vương quốc, về một giấc mơ lớn mà vua Alfred gọi là Anh Quốc.', 60, 11349, 'Charles Dickens'),
(28, 'SIÊU TRỘM HOÀNG CUNG', 'The Grand Heist / Gone With The Wind (2012)', 'Hoàn tất ', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 13, 2, 6, 2026, 'p26.png', 'Duk Moo là con trai của một nhà quý tộc, nhưng đồng thời cũng là con của người vợ lẽ. Theo luật và tục lệ vương triều Joseon, Lee Duk Moo không thể có được địa vị trong triều do xuất thân của mẹ', 121, 11801, 'Charles Dickens'),
(29, 'OAN GIA TÌNH', 'Very Ordinary Couple / Romance\'s Temperature (2013)', 'Hoàn tất ', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 3, 2, 7, 2025, 'p27.png', 'Câu chuyện hài hước về bộ đôi phá rối trong công ty. Với cá tính ương bướng, hai người chẳng ai chịu lép, nghĩ ra đủ trò chọc phá, trả đũa lẫn nhau khiến đối phương phát ghét. Nhưng cuối cùng, cặp đôi oan gia phải lòng nhau từ những điều tưởng như khó chấp nhận đó...', 112, 12253, 'Charles Dickens'),
(30, 'MÌNH THÍCH NHAU ĐI', 'Like for Likes / Please Like Me (2016)', 'Hoàn tất ', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 14, 2, 8, 2024, 'p28.png', 'MÌNH “THÍCH” NHAU ĐI là câu chuyện tình yêu nhẹ nhàng nhưng không kém phần lãng mạn, hài hước của 3 cặp đôi hoàn toàn khác biệt: một nữ đạo diễn phim truyền hình tài năng (Lee Mi-yun) với chàng diễn viên trẻ mà tên tuổi đang “nổi như cồn” trong lòng người hâm mô (Yoo Ah-in); một đầu bếp trung niên tài hoa bị vợ sắp cưới từ hôn (Kim Joo-hyuk) “đụng độ” cô nàng tiếp viên hàng không “dở dở ương ương” (Choi Ji-won); và cậu nhạc sĩ trẻ chuyên sáng tác các ca khúc về tình yêu nhưng chưa bao giờ trải nghiệm (Kang Ha-neul) tình cờ “cảm nắng” cô nàng sản xuất phim truyền hình (Lee Som). ', 120, 12705, 'Charles Dickens'),
(31, 'KHÔNG KÍCH', 'Air Strike (2018)', 'Hoàn tất ', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 3, 2, 9, 2027, 'p29.png', 'Lấy bối cảnh năm 1943 tại Trung Quốc thời Thế Chiến 2, Air Strike kể về cuộc đánh bom của Nhật Bản vào Trùng Khánh. 5 người Trung Quốc khác nhau chiến đấu theo cách của riêng họ xuyên suốt các cuộc tấn công của Không quân Nhật Bản để bảo vệ một cỗ máy quân sự quan trọng ở Trùng Khánh.', 97, 13157, 'Charles Dickens'),
(32, 'CON TÀU CUỐI CÙNG (PHẦN 5)', 'The Last Ship (Season 5) (2018)', 'Hoàn tất ', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 3, 2, 10, 2026, 'p30.png', 'The Last Ship phần 5 tiếp tục câu chuyện sau một đại dịch toàn cầu giết chết và làm suy yếu khoảng một nửa dân số thế giới, thủy thủ đoàn (gồm 217 người có cả nam và nữ) trên một tàu khu trục tên lửa dẫn đường của hải quân Mỹ không bị ảnh hưởng. Giờ đây, họ phải cố gắng để tìm cách chữa trị và ngăn chặn vi-rút để cứu nhân loại.', 60, 13609, 'Charles Dickens'),
(33, 'NHẢY LÊN NÀO!', 'Just Dance / Dance Sports Girls (2018)', 'Hoàn tất  ', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 4, 2, 1, 2025, 'p31.png', 'Geoje, tỉnh Gyeongsang Nam, Hàn Quốc, nơi ngành công nghiệp chính của thành phố là đóng tàu. Ngành đóng tàu đang suy thoái. 6 cô gái học cùng một trường trung học. Họ là thành viên của câu lạc bộ thể thao khiêu vũ tại trường. Mục tiêu của họ là để giành chiến thắng trong cuộc thi thể thao khiêu vũ. Sáu cô gái này là Shi-Eun (Park Se-Wan), Hye Jin (Lee Joo-Young), Na-Young (Joo Hae-Eun), Ye-Ji (Shin Do-Hyun), Do-Yeon (Lee Yoo) -Mi) và Young-Ji (Kim Soo-Hyun).', 60, 14061, 'Charles Dickens'),
(34, 'NHỮNG CÔ NÀNG CHEERLEADER', 'Anima Yell! (2018)', 'HD Vietsub + Thuyết Minh', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 4, 2, 2, 2024, 'p32.png', 'Câu chuyện kể về cô bé Kohane Hatoya - một cô nàng thích giúp đỡ người khác. Sau khi cô chuyển cấp từ sơ trung lên cao trung, cô bị hấp dẫn bởi bộ môn cổ vũ, và cô đã bắt đầu hoạt động của mình tại câu lạc bộ cổ vũ tại trường mình. Bên cạnh cô còn có cô bạn thời thơ ấu Uki và senpai giàu kinh nghiệm Hizume.', 24, 14513, 'Charles Dickens'),
(35, 'ZOMBIELAND SAGA', 'Zombieland Saga (2018)', 'HD Vietsub + Thuyết Minh', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 4, 2, 3, 2027, 'p33.png', 'Zombieland Saga – Cuộc sống an bình hàng ngày với âm nhạc của 7 cô gái đã bất ngờ bị phá hủy bởi bàn tay của những Zombie. Bảy cô gái bị kéo vào thế giới Zombie đầy kinh dị và họ chỉ ước rằng mình được sống. Liệu phép màu có xảy ra hay họ sẽ bị xé nhỏ thành từng mảnh?', 24, 14965, 'Charles Dickens'),
(36, 'TIẾNG HÁT VANG DỘI BẦU TRỜI', 'Fukumenkei Noise (2017)', 'HD Vietsub + Thuyết Minh', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 4, 1, 4, 2026, 'p34.png', 'Cô nàng yêu ca hát Nino Arisugawa đã trải qua một cuộc chia tay buồn với người bạn yêu quý Momo sau khi cậu chuyển nhà. Một thời gian sau, Nino kết bạn với Yuzu, một nhà soạn nhạc, nhưng họ cũng sớm phải rời xa nhau. Âm nhạc là mối liên kết duy nhất giữa họ. Cả hai người con trai hứa với Nino rằng họ sẽ tìm ra cô nhờ giọng hát của cô. Nino vẫn ôm ấp hi vọng đó, và luôn nỗ lực để đưa giọng hát của mình đến mọi người. Khi lên cao trung, Nino may mắn hội ngộ với Yuzu, nhưng cô cũng rất mong gặp lại Momo lần nữa...', 24, 15417, 'Charles Dickens'),
(37, 'NHÓM NHẠC CỦA NHỮNG ƯỚC MƠ', 'BanG Dream! (2017)', 'HD Vietsub + Thuyết Minh', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 4, 1, 5, 2025, 'p35.png', 'Khi còn nhỏ, trái tim Kasumi Toyama luôn đập loạn nhịp mỗi khi ngước nhìn lên những ngôi sao, và cô nàng luôn tìm kiếm một điều gì đó có thể mang lại cảm giác giống như thế, nhưng tìm mãi vẫn không ra. Một ngày, cô tình cờ thấy một chiếc đàn guitar hình ngôi sao trong cửa hiệu cầm đồ, và đó là lần đầu tiên Kasumi thấy được cảm xúc mà cô vẫn hằng tìm kiếm. Từ lúc đó, Kasumi quyết tâm thành lập một ban nhạc nữ, và cô đã gặp gỡ được 4 cô nàng cùng chung chí hướng: Saya, Arisa, Rimi, và Tae. Liệu ban nhạc nữ này sẽ đạt được ước mơ siêu sao của mình không?', 24, 15869, 'Charles Dickens'),
(38, 'HOÀNG TỬ HÀO HOA', 'Charming (2018)', 'Hoàn tất ', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 4, 1, 6, 2024, 'p36.png', 'Charming - Hoàng Tử Hào Hoa mang đến cho khán giả một câu chuyện mới, một góc nhìn cực kỳ thú vị, sáng tạo và chưa bao giờ được kể của ba cô gái xinh đẹp trong xứ sở thần tiên nổi tiếng: Bạch Tuyết, Lọ Lem và Công Chúa Ngủ Trong Rừng. Một ngày nọ cả ba khám phá ra rằng những vị hôn phu mà các cô đính hôn thật ra đều là cùng một người đó là Hoàng Tử Charming. Bên cạnh đó còn có hàng triệu cô gái trong vương quốc thầm thương trộm nhớ muốn trở thành vợ của Hoàng Tử.', 90, 16321, 'Charles Dickens'),
(39, 'DỰ ÁN PQ', 'Poppin Q (2016)', 'Hoàn tất ', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 4, 1, 7, 2027, 'p37.png', 'Câu chuyện bắt đầu một ngày trước khi lễ tốt nghiệp. Năm cô gái trung học mỗi bận tâm với cuộc sống hàng ngày thực sự của họ. Những cô gái gặp nhau trong một thế giới tưởng tượng sau khi được gửi ở đó thông qua một sự xuất hiện đột ngột. Ở đó, họ tìm hiểu về cuộc khủng hoảng sắp xảy ra rằng thế giới này đang phải đối mặt. Các cách để ngăn chặn cuộc khủng hoảng này là cho năm hợp tác và mang lại lăm trái tim của họ với nhau như một thông qua khiêu vũ. Tuy nhiên, năm không thể đi đến tình yêu trên thế giới, và không thể nói cảm xúc thật của họ với nhau, vì vậy trái tim của họ không thể đoàn kết. Thời hạn đang đến rất nhanh. điệu nhảy của năm cô gái có thể cứu thế giới? Và họ sẽ có thể tốt nghiệp?', 95, 16773, 'Charles Dickens'),
(40, 'NHỮNG CÔ NÀNG ÂM NHẠC', 'Music Girls (2018)', 'HD Vietsub + Thuyết Minh', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 4, 1, 8, 2026, 'p38.png', 'Bộ anime dựa trên anime ngắn do studio DEEN sản xuất trong dự án Anime Mirai 2015. Câu chuyện kể về cô bé Hanako Yamadaki và cuộc gặp gỡ định mệnh của cô với nhóm idol Ongaku Shoujo - một nhóm nhạc nhỏ bé, vô danh gồm 11 thành viên. Nhà sản xuất Ikehashi nghĩ rằng nhóm cần một thành viên mới. Thế là cô bé Hanako đã gia nhập vào showbiz như thế. Cùng với nhau, nhóm nhạc Ongaku Shoujo nỗ lực từng ngày để gặt hái thành công trong thế giới âm nhạc.', 24, 17225, 'Charles Dickens'),
(41, 'BÓNG RỔ VŨ TRỤ', 'Basquash! (2009)', 'HD Vietsub + Thuyết Minh', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 4, 1, 9, 2025, 'p39.png', 'Cô ấy là bạn thời thơ ấu của Dan và Coco. Cô cũng là một người thợ Big Foot. ', 24, 17677, 'Charles Dickens'),
(42, 'BẬC THẦY CẦU LÔNG', 'The Badminton play of Ayano Hanesaki (2018)', 'HD Vietsub + Thuyết Minh', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 4, 1, 10, 2024, 'p40.png', 'Một người chơi BFB luẩn quẩn với một bao phủ quá khứ những người nắm giữ một mối thù với Dan. Kỹ năng chụp lâu rồi, anh đánh bại kẻ thù của mình bằng cách ném quả bóng về phía họ với tốc độ nghiền. Ông đeo kính và có đôi mắt màu đỏ sẫm. Chơi trò chơi man rợ của mình trái ngược với tính cách bao la của mình ra khỏi Big Foots, là một người mát mẻ và lịch sự ', 24, 18129, 'Charles Dickens'),
(43, 'NGÔI NHÀ HOA (PHẦN 1)', 'The House of Flowers (Season 1) (2018)', 'HD Vietsub + Thuyết Minh', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 5, 1, 1, 2027, 'p41.png', 'Ngôi nhà của Hoa là một bộ phim truyền hình hài kịch truyền hình Mexico được tạo ra bởi Manolo Caro. Nó mô tả một gia đình người Mexico cao cấp rối loạn chức năng sở hữu một cửa hàng hoa uy tín. Mùa 13 tập đầu tiên được phát hành vào ngày 10 tháng 8 năm 2018.', 60, 18581, 'Charles Dickens'),
(44, 'DAE JANG GEUM ĐANG DÕI THEO', 'Dae Jang-Geum Is Watching (2018)', 'HD Vietsub + Thuyết Minh', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 5, 2, 2, 2026, 'p42.png', 'Bộ phim kể về cuộc sống của hai anh em và một em gái là hậu duệ của Dae Jang Geum. Họ đều là những người đam mê ẩm thực. San Hae là anh cả và có một vị giác tuyệt vời. Anh ta làm việc cho một công ty và có dây dưa với một nhân viên mới là Bok Seung A. Jin Mi là chị thứ hai và có thính giác tuyệt diệu. Jung Sik là em út và có kỹ năng nấu nướng xuất sắc. Anh ta là một vlogger trên YouTube.', 60, 19033, 'Charles Dickens'),
(45, 'SỔ TAY LÀM BẢO MẪU CỦA TÔI', 'Hi! I\'m Saori (2018)', 'HD Vietsub + Thuyết Minh', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 5, 2, 3, 2025, 'p43.png', 'Thiếu nữ Saori đánh bại tất cả, giành được chức nghiệp bảo mẫu của ngôi sao nổi tiếng Tô Đạt Hạo, giúp đỡ Tô Đạt Hạo duy trì danh tiếng, sau thời gian chung đụng, Tô Đạt Hạo dần dần nảy sinh tình cảm với cô...', 45, 19485, 'Charles Dickens'),
(46, 'NHÓC TRÙM: ĐI LÀM LẠI (PHẦN 2)', 'The Boss Baby: Back in Business (Season 2) (2018)', 'HD Vietsub + Thuyết Minh', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 5, 2, 4, 2024, 'p44.png', 'Nhóc Trùm: Đi Làm Lại Phần 2 tiếp tục những câu chuyện thú vị, đáng yêu về Nhóc Trùm và đồng bọn, Nhóc Trùm cố gắng cân bằng cuộc sống gia đình với công việc của mình tại trụ sở của Baby Corp.', 25, 19937, 'Charles Dickens'),
(47, 'HACHIKO: CHÚ CHÓ TRUNG THÀNH', 'Hachiko: A Dog\'s Story (2010)', 'Hoàn tất ', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 5, 2, 5, 2027, 'p45.png', 'Hachi là một chú chó nhỏ được gửi sang Mĩ bằng đường tàu hỏa, nhưng khi xuống tàu thì người ta làm rơi mất lồng nhốt cậu và cậu bị lạc. Tại đây, cậu gặp Parker Wilson - một giáo sư đại học đang đi bộ về nhà. Parket đưa Hachi về nhà, Cate Wilson - vợ ông ban đầu không thích sự có mặt của chú chó nhỏ nên đã bảo Parker đăng tin tìm chủ của chú. Nhưng khi thấy Parker trở nên thân thiết với Hachi, Cate đã từ bỏ ý định tìm chủ của Hachi, và Hachi trở thành một thành viên trong gia đình Wilson. ', 93, 20389, 'Charles Dickens'),
(48, 'NHÓC TRÙM: ĐI LÀM LẠI (PHẦN 1)', 'The Boss Baby: Back in Business (Season 1) (2018)', 'HD Vietsub + Thuyết Minh', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 5, 2, 6, 2026, 'p46.png', 'Với sự trợ giúp từ anh trai và đồng bọn của mình, Nhóc Trùm cố gắng cân bằng cuộc sống gia đình với công việc của mình tại trụ sở của Baby Corp.', 25, 20841, 'Charles Dickens'),
(49, 'CUỘC PHIÊU LƯU CỦA GEORGE VÀ GERALD', 'Mouse Story: The Adventures of George and Gerald(2007)', 'Hoàn tất ', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 5, 2, 7, 2025, 'p47.png', 'Gerald - một chú chuột mạnh mẽ và đáng tin cậy. George - một chú chuột đối xử tốt với bạn bè mình những lại vội vã và đãng trí. Hai chú chuột George và Gerald đã có một bài kiểm tra xem ai là người đầu tiên bắt được Rồng Ánh sáng, người chiến thắng sẽ trở thành thủ lĩnh của đại gia đình chuột. Một chú chuột không thích thế giới bên ngoài và một chú chuột ao ước một lần được ra bên ngoài sẽ cùng nhau phiêu lưu để đến được Thung lũng Mặt trăng và bắt Rồng Ánh sáng.', 52, 21293, 'Charles Dickens'),
(50, 'HARRY POTTER VÀ HÒN ĐÁ PHÙ THỦY', 'Harry Potter 1: Harry Potter and the Sorcerer\'s Stone(2001)', 'Hoàn tất ', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 5, 1, 8, 2024, 'p48.png', 'Harry Potter và Hòn Đá Phù Thủy là bộ phim đầu tiên trong series phim “Harry Potter” được xây dựng dựa trên tiểu thuyết của nhà văn J.K.Rowling. Nhân vật chính của phim, Harry Potter - một cậu bé 11 tuổi sau khi mồ côi cha mẹ đã bị gửi đến nhà dì dượng của mình, gia đình Dursley. Tuy nhiên, cậu bé bị ngược đãi và không hề biết về thân phận thực sự của mình. ', 152, 21745, 'Charles Dickens'),
(51, 'YÊU THIỆT MÀ MẸ HỔNG ƯNG', 'Ruk Tae Mae Mai Pleum (2017)', 'HD Vietsub + Thuyết Minh', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 5, 2, 9, 2027, 'p49.png', 'Yêu Thiệt Mà Mẹ Hổng Ưng: Khi Tình yêu không phải là chiếc giường trải đầy hoa hồng bởi vì... nó bị phá hỏng bởi chính mẹ chồng của bạn. Pat (Jes) và Pan (Mo) yêu nhau đã được năm năm, cuối cùng họ quyết định kết thúc cuộc tình đẹp của mình bằng một hôn lễ đáng yêu. Sau khi kết hôn, Pat và Pan chuyển về nhà mẹ của Pat (Sinjai) sống. Nhưng Pan lại không ngờ rằng rắc rối bắt đầu đến từ đây. Vì quá yêu thương con trai của mình, nên mẹ của Pat không muốn chia sẻ anh với con dâu, từ đó trong gia đình thường xuyên xảy ra những trận cải vã giữa mẹ chồng và nàng dâu. ', 25, 22197, 'Matthias Schoenaerts'),
(52, 'CHÚ CHÓ ROBOT', 'A-X-L (2018)', 'Hoàn tất ', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 5, 2, 10, 2026, 'p50.png', 'Trong một lần đi chơi, Miles - cậu thanh niên có niềm đam mê với máy móc và tốc độ phát hiện ra một chú chó máy quân sự được tạo ra với chức năng tấn công những vị trí mà phương tiện cơ giới không thể đến mang tên A-X-L. ', 98, 22649, 'Matthias Schoenaerts'),
(53, 'NGẠ QUỶ TOKYO (PHẦN 3)', 'Tokyo Ghoul: re (Season 3) (2018)', 'HD Vietsub + Thuyết Minh', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 6, 2, 1, 2025, 'p51.png', 'okyo Ghoul: re là phần 3 của bộ anime Tokyo Ghoul do Sui Ishida sáng tác. Tokyo Ghoul: re vẫn xoay quanh cuộc chiến giữa con người (tiêu biểu là CCG) với quỷ ăn thịt (Ghoul - tiêu biểu là Aogiri) nhưng khác với phần trước, cuộc chiến được nhìn nhận dưới con mắt của con người (các thanh tra) thay vì quỷ ăn thịt (ở Anteiku\'s Coffee) như series đầu', 24, 23101, 'Matthias Schoenaerts'),
(54, 'THẾ GIỚI PHÉP MÀU', 'Black Clover (2017)', 'HD Vietsub + Thuyết Minh', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 6, 2, 2, 2024, 'p52.png', 'Aster và Yuno là hai đứa trẻ bị bỏ rơi ở nhà thờ và cùng nhau lớn lên tại đó. Khi còn nhỏ, chúng đã hứa với nhau xem ai sẽ trở thành Ma pháp vương tiếp theo. Thế nhưng, khi cả hai lớn lên, mọi sô chuyện đã thay đổi. Yuno là thiên tài ma pháp với sức mạnh tuyệt đỉnh trong khi Aster lại không thể sử dụng ma pháp và cố gắng bù đắp bằng thể lực', 25, 23553, 'Matthias Schoenaerts'),
(55, 'MOBILE SUIT GUNDAM NT', 'Mobile Suit Gundam Narrative (2018)', 'Lồng Tiếng', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 6, 2, 3, 2027, 'p53.png', 'U.C. 0097, một năm sau khi mở Hộp Laplace. Bất chấp sự mặc khải của Hiến chương Thế kỷ thừa nhận sự tồn tại và quyền của Newtypes, khuôn khổ của thế giới đã không bị thay đổi nhiều. Cuộc xung đột sau này được gọi là Sự cố Laplace được cho là đã kết thúc với sự sụp đổ của những tàn tích Neo Zeon được gọi là Áo. Trong trận chiến cuối cùng của nó, hai bộ đồ di động khung hình đầy đủ tâm lý thể hiện sức mạnh vượt ra khỏi sự hiểu biết của con người. Con lân trắng và con sư tử đen bị phong ấn để loại bỏ nguy hiểm này khỏi tâm thức của mọi người, và bây giờ họ sẽ hoàn toàn bị lãng quên. Tuy nhiên, RX-0 Unicorn Gundam 03, đã biến mất hai năm trước đó, bây giờ sắp xuất hiện trong Earth Sphere một lần nữa. Một phoenix vàng ... tên là Phenex', 90, 24005, 'Matthias Schoenaerts'),
(56, 'CUỘC SĂN VÀNG KHẮC NGHIỆT', 'Golden Kamuy (2018)', 'HD Vietsub + Thuyết Minh', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 6, 2, 4, 2026, 'p54.png', 'Vào đầu thế kỉ 20, cựu chiến binh Saichi Sugimoto Bất tử xuất thân từ cuộc chiến Nga-Nhật hiện đang trải qua những thời điểm khó khăn trong suốt những cuộc đào vàng hậu chiến ở vùng Hokkaido hoang vu. Khi anh biết đến vùng đất xa xôi nơi ẩn giấu kho tàng Ainu bí ẩn, anh quyết định dấn thân vào cuộc hành trình đầy hiểm nguy để tìm kiếm nó. Nhưng Sugimoto không phải là người duy nhất thích thú với kho vàng này, bất cứ ai biết về Ainu đều sẵn sàng chém giết nhau để giành được nó. Đối mặt với cuộc sống khó khăn tại vùng hoang sơ phía Bắc, những tên tội phạm đáng gờm và những tên lính Nhật đểu cáng, để sống sót, Sugimoto sẽ cần phải vận dụng mọi kĩ năng và sự may mắn của mình - cùng với sự trợ giúp của cô gái người Ainu tên là Asirpa', 23, 24457, 'Matthias Schoenaerts'),
(57, 'YÊU THẦN KÝ', 'Tales Of Demons And Gods (2017)', 'HD Vietsub + Thuyết Minh', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 6, 1, 5, 2025, 'p55.png', 'Yêu Thần Ký : Yêu Thần Vừa Xuất, Ai Dám Tranh Phong. Yêu Linh Sư Mạnh Nhất Thánh Linh Đại Lục Nhiếp Li, bởi vì một cuốn sách thần bí Yêu Linh Thời Không mà trở về năm 13 tuổi, tu luyện mạnh nhất công pháp, mạnh nhất yêu linh chi lực, đột phá tới võ đạo đỉnh phong..', 10, 24909, 'Matthias Schoenaerts'),
(58, 'HỌC VIỆN TINH HẢI', 'Charlotte (2015)', 'HD Vietsub + Thuyết Minh', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 6, 2, 6, 2024, 'p56.png', 'Câu chuyện xoay quanh một khả năng đặc biệt chỉ xuất hiện ở vài phần trăm chàng trai và cô gái ở tuổi dậy thì. Yuu Otosaka sử dụng năng lực đó và sống một cuộc sống bình thường cho đến khi Nao Tomori xuất hiện. Định mệnh của những người có năng lực đặc biệt như cậu dần được hé lộ.', 25, 25361, 'Matthias Schoenaerts'),
(59, 'SLIME CHUYỂN SINH', 'That Time I Got Reincarnated as a Slime (2018)', 'HD Vietsub + Thuyết Minh', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 6, 2, 7, 2027, 'p57.png', 'Câu chuyện bắt đầu với anh chàng Satoru Mikami, một nhân viên 37 tuổi sống cuộc sống chán chường và không vui vẻ gì. Trong một lần gặp cướp, anh đã bị mất mạng. Tưởng chừng cuộc sống chán ngắt ấy đã kết thúc, nhưng không! Ấy lại chính là sự khởi đầu của một cuộc sống mới. Mikami thức dậy, thấy mình đang ở trong một thế giới kì lạ. Và điều quái dị là anh không còn hình dạng người nữa, mà anh đã trở thành quái vật slime dẻo quẹo và không có mắt. Khi dần quen với hình dáng mới này, anh bắt đầu khám phá thế giới cùng với những quái vật khác, và công cuộc thay đổi thế giới mới đã bắt đầu.', 25, 25813, 'Matthias Schoenaerts'),
(60, 'MONSTER STRIKE 3', 'Monster Strike: The Fading Cosmos (2018)', 'HD Vietsub + Thuyết Minh', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 6, 2, 8, 2026, 'p58.png', 'Monster Strike là anime dựa trên một tựa game cùng tên ăn khách tại Nhật Bản được ra mắt chính thức trong năm 2013 . Đây là phần 3 Series này . Nội dung kể về những ngày đếm ngược đến tận thế của thế giới con người lẫn thế giới của Monster . Liệu Ren và các bạn sẽ ngăn chặn được chứ ?', 10, 26265, 'Matthias Schoenaerts'),
(61, 'NGŨ NỮ NHẪN GIẢ (PHẦN 2)', 'Senran Kagura 2nd Season (2018)', 'HD Vietsub + Thuyết Minh', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 6, 2, 9, 2025, 'p59.png', 'Học viện Hanzo là một ngôi trường danh tiếng, nơi đây ẩn chứa một bí mật mà ít ai được biết. Đằng sau bức tường của ngôi trường ấy là lò luyện nhẫn giả (shinobi) - họ đóng vai trò là gián điệp và là sát thủ dưới trướng của những tướng quân thời xa xưa. Ngày nay, nhẫn giả vẫn được lưu truyền trong học viện Hanzo. Senran Kagura theo chân 5 cô gái và hành trình đầy gian nan của họ nhằm kết thúc khoá học đào tạo nhẫn giả và những đối thủ nguy hiểm mà họ phải đối đầu.', 25, 26717, 'Matthias Schoenaerts'),
(62, 'BIỆT ĐỘI ĐIỆP VIÊN', 'Release The Spyce (2018)', 'HD Vietsub + Thuyết Minh', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 6, 2, 10, 2024, 'p60.png', 'Bộ anime xoay quanh cô bé Momo - một nữ sinh cao trung tại thành phố Sorasaki. Nhưng đấy chỉ là vỏ bọc của cô thôi. Đằng sau thân phận học sinh, Momo chính là một điệp viên của cục tình báo Tsukikage - nơi bảo vệ thành phố và người dân. Dưới sự dẫn dắt của cấp trên Yuki và những người bạn của mình, họ cùng nhau duy trì trật tự hòa bình của thành phố này. Câu chuyện sẽ theo chân cuộc hành trình của 6 cô gái dũng cảm.', 24, 27169, 'Matthias Schoenaerts'),
(63, 'TẾ CÔNG HÀNG YÊU 2: THẦN LONG TÁI XUẤT', 'The Incredible Monk 2: Dragon Return (2018)', 'Hoàn tất ', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 7, 2, 1, 2027, 'p61.png', 'Tế Công và các liên minh anh hùng, lại một lần nữa hóa giải thảm họa của nhân gian, phàm là không gian đều không thể nhận được an toàn, tranh chấp, chiến tranh vẫn không ngừng. Tướng quân Cao Nhân Kiệt chính là danh tiếng triều đình, đã tham gia nhiều trận lớn nhỏ và giành nhiều chiến thắng, lập được không ít công lao hiển hách, trở thành người anh hùng dân tộc', 88, 27621, 'Matthias Schoenaerts'),
(64, 'ĐƯỜNG THI TAM BÁCH ÁN', 'The Untold Stories Of Tang Dynasty (2018)', 'HD Vietsub + Thuyết Minh', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 7, 2, 2, 2026, 'p113.png', 'Vào thời khai nguyên của Lý Đường, tin đồn Võ hậu chuyển thế nổi lên khắp nơi, tàn trang Thôi Bối Đồ tái hiện ở nhân gian ý chỉ rằng mảnh tàn trang Thôi Bối Đồ thứ 61 tiên đoán Võ hậu sắp chuyển thế, nhất định sẽ cướp đoạt giang sơn của Lý Đường. Lời đồn trực tiếp hướng về phía Ngọc quý phi đang được sủng ái nhất trong hậu cung nói cô ta chính là Võ hậu chuyển thế, đồng thời các thế lực trong triều thay đổi kịch liệt, án mạng liên tiếp xảy ra', 45, 28073, 'Matthias Schoenaerts'),
(65, 'TÂN TÂY DU KÝ (PHẦN 1)', 'The New Legends of Monkey (Season 1) (2018)', 'HD Vietsub + Thuyết Minh', 'Christopher Edward Nolan', 'Leonardo DiCaprio, Meryl Streep, Brad Pitt, Scarlett Johansson', 7, 3, 3, 2025, 'p63.png', 'Phim The New Legends of Monkey (Tân Tây Du Ký) lấy cảm hứng từ cuộc hành trình truyền thuyết Trung Hoa từ thế kỷ 16, kể về một cô gái và ba vị thần sa ngã trên hành trình nguy hiểm khi họ cố gắng chấm dứt một sự thống trị ma quỷ và khôi phục lại sự cân bằng cho thế giới.', 24, 28525, 'Matthias Schoenaerts'),
(66, 'TẾ CÔNG HÀNG YÊU', 'The Incredible Monk (2018)', 'Hoàn tất ', 'Christopher Edward Nolan', 'Leonardo DiCaprio, Meryl Streep, Brad Pitt, Scarlett Johansson', 7, 3, 4, 2024, 'p64.png', 'Yêu quái đại bàng từ địa ngục lên trần gian cùng đồng bọn tác oai tác quái. Nhằm ngăn chặn tai họa, Tế Công xin với Ngọc Đế phái thêm 5 vị tiên nữa cùng ông hàng yêu phục ma. Nào ngờ, Ngọc Đế lại bất cẩm khiến họ rơi vào tính huống dở khóc dở cười vì xuống trần mà mất đi pháp thuật và ký ức thần tiên.', 95, 28977, 'Matthias Schoenaerts'),
(67, 'TẬP YÊU PHÁP HẢI TRUYỆN', 'Fa Hai (2018)', 'Hoàn tất ', 'Christopher Edward Nolan', 'Leonardo DiCaprio, Meryl Streep, Brad Pitt, Scarlett Johansson', 7, 3, 5, 2027, 'p65.png', 'Thời kì hưng thịnh, yêu quái hoành hành, triều đình lập ra tổ chức “Tập Yêu Ti” chuyên lùng bắt yêu quái, từng thành viên đều phải uống máu yêu, để chống lại yêu ma. Nhưng nếu không thể giữ được tấm lòng trong sạch như nước, thì sẽ bị máu yêu phản phệ, hóa thành bán yêu.', 94, 29429, 'Matthias Schoenaerts'),
(68, 'PHONG THẦN CHIẾN KỈ', 'The War Records of Deification (2018)', 'Hoàn tất ', 'Christopher Edward Nolan', 'Leonardo DiCaprio, Meryl Streep, Brad Pitt, Scarlett Johansson', 7, 3, 6, 2026, 'p66.png', 'Khương Thượng sống những ngày vô tư lự, đi khắp nơi giả danh lừa bịp. Nhưng khi sư phụ triệu về thực hiện nhiệm vụ Phong Thần, anh phải đối mặt với thân phận Lữ Vọng của mình – một Lữ Vọng luôn khắc khoải mối thù diệt tộc, nhưng vẫn mong mỗi tạo lập một thế giới không giết chóc, tai ương, nô lệ, con người sống hoà bình với nhau', 93, 29881, 'Matthias Schoenaerts'),
(69, 'KHÁCH TRỌ PHÒNG 1006', 'Meet Me @ 1006 (2018)', 'HD Vietsub + Thuyết Minh', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 7, 2, 7, 2025, 'p67.png', 'Kha Chấn Vũ - một luật sư kiêu ngạo với thành tích bất bại trong các vụ kiện, trong vụ án mạng giết HLV Judo, Kha Chấn Vũ bị cấu kết hãm hại, bị công tố viên Mộ Tư Minh khởi tố tội ngụy tạo bằng chứng khiến thân bại danh liệt. Trong tình trạng bơ vơ, anh chuyển tới một căn hộ thần bí, mỗi tối vào lúc 10h06\' trong nhà sẽ xuất hiện một vị khách nữ, cô gái ấy là người hay là ....?', 45, 30333, 'Matthias Schoenaerts'),
(70, 'THIÊN KÊ CHI BẠCH XÀ TRUYỀN THUYẾT', 'The Destiny of White Snake (2018)', 'HD Vietsub + Thuyết Minh', 'Christopher Edward Nolan', 'Leonardo DiCaprio, Meryl Streep, Brad Pitt, Scarlett Johansson', 7, 3, 8, 2024, 'p68.png', 'Dược sư Hứa Tuyên và sư muội Lãnh Ngưng hành y cứu người, trog buổi lễ hoa đào tình cờ gặp gỡ Bạch Yêu Yêu. Trải qua nhiều gian truân cách trở, Hứa Tuyên và Bạch Yêu Yêu cuối cùng cũng trở thành phu thê. Tuy nhiên, vì cứu Hứa Tuyên, Bạch Yêu Yêu đã trộm tiên thảo, vi phạm thiên quy. ', 45, 30785, 'Matthias Schoenaerts'),
(71, 'KẾT ÁI: MỐI TÌNH ĐẦU CỦA ĐẠI NHÂN THIÊN TUẾ', 'The Love Knot: His Excellency\'s First Love (2018)', 'HD Vietsub + Thuyết Minh', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 7, 2, 9, 2027, 'p69.png', 'Bộ phim xoay quanh mối quan hệ giữa cô phóng viên thực tập Quan Bì Bì và chuyên gia nghiên cứu văn hóa Hạ Lan Tịnh Đình. Ban đầu, Quan Bì Bì xin được phỏng vấn Hạ Lan Tịnh Đình, song liên tục bị anh từ chối.', 25, 31237, 'Matthias Schoenaerts'),
(72, 'PHƯỢNG TÙ HOÀNG', 'Untouchable Lovers (2018)', 'HD Vietsub + Thuyết Minh', 'Christopher Edward Nolan', 'Leonardo DiCaprio, Meryl Streep, Brad Pitt, Scarlett Johansson', 7, 3, 10, 2026, 'p70.png', 'Thiên Cơ Các - một tổ chức hàng đầu muốn lật đổ vị vua đang cai trị thời nhà Lưu Tống là Lưu Tử Nghiệp. Để thực hiện âm mưu, Thiên Cơ Các đã âm thầm thay thế chị gái của Lưu Tử Nghiệp là Sơn Âm công chúa Lưu Sở Ngọc bằng một người giống hệt. Dưới thân phận của Sở Ngọc, cô đã gặp gián điệp của Bắc Ngụy là Dung Chỉ. Trải qua nhiều khó khăn và hiểu lầm, cuối cùng Sở Ngọc và Dung Chỉ cũng nhận ra được tình cảm thật sự. Dung Chỉ sau đó đã giả chết để mong Sở Ngọc tha thứ. Nhưng mọi chuyện vẫn chưa dừng lại ở đó khi cả hai cùng mất đi trí nhớ, mỗi người lưu lạc một nơi. Sau 5 năm, cả hai gặp lại nhau khi Sở Ngọc được chọn gả cho Hoàng tử Bắc Ngụy, người đó không ai khác chính là Dung Chỉ.', 45, 31689, 'Matthias Schoenaerts'),
(73, 'NGƯỜI SỬA CHỮA', 'The Healer (2017)', 'Hoàn tất ', 'Christopher Edward Nolan', 'Leonardo DiCaprio, Meryl Streep, Brad Pitt, Scarlett Johansson', 8, 3, 1, 2025, 'p71.png', 'Alec Bailey là một tay chơi cờ bạc, một thợ sửa chữa điện đã phá sản, người vẫn bị tổn thương bởi cái chết của người anh trai sinh đôi mình, Charlie. Không một xu dính túi và lâm vào cảnh nợ nần chồng chất, đột nhiên anh được người chú bị mất liên lạc lâu năm Richard Heacock chấp nhận giải quyết các khoản nợ nần của Alec với một điều kiện: Rời khỏi Anh và chuyển đến sống tại Halifax, Nova Scotia, Canada trong vòng 1 năm.', 113, 32141, 'Matthias Schoenaerts'),
(74, 'ƯỚC MƠ NHỎ THÔI (PHẦN 2)', 'Tamayura: More Aggressive (2013)', 'HD Vietsub + Thuyết Minh', 'Christopher Edward Nolan', 'Leonardo DiCaprio, Meryl Streep, Brad Pitt, Scarlett Johansson', 8, 3, 2, 2024, 'p72.png', 'Tamayura More Aggressive phần tiếp theo của Tamayura: Hitotose anime nhẹ nhàng về tình bạn. Kanae , một nữ sinh trung học năm ba, một cô nàng nhút nhát và đam mê nhiếp ảnh, Kanae đã gia nhập Club Nhiếp ảnh của trường cùng với bạn mình là Potte. Cuộc sống của một nhiếp ảnh tập sự bắt đầu.', 24, 32593, 'Matthias Schoenaerts'),
(75, 'ƯỚC MƠ NHỎ THÔI (PHẦN 1)', 'Tamayura: Hitotose (2011)', 'HD Vietsub + Thuyết Minh', 'Christopher Edward Nolan', 'Leonardo DiCaprio, Meryl Streep, Brad Pitt, Scarlett Johansson', 8, 3, 3, 2027, 'p73.png', 'Câu chuyện xoay quanh Fu Sawatari, một cô gái sống tại một thị trấn ven vùng biển nội địa Seto và đi chụp ảnh với chiếc máy ảnh sử dụng phim của người cha quá cố. Một ngày kia Fu gặp được Kaoru, Norie và Maon, và họ đã trở thành bạn thân của nhau.', 24, 33045, 'Matthias Schoenaerts'),
(76, 'CÔ BÉ THÔI MIÊN', 'Molly Moon and the Incredible Book of Hypnotism (2015)', 'Hoàn tất ', 'Christopher Edward Nolan', 'Leonardo DiCaprio, Meryl Streep, Brad Pitt, Scarlett Johansson', 8, 3, 4, 2026, 'p74.png', 'Trại trẻ mồ côi tồi tàn nằm gọn trong một trang viên đổ nát lãnh lẽo “Hardwick House” được điều hành bởi cô hiệu trưởng quái gở và luôn bị ám ảnh bởi luật lệ “Quý cô” Adderstone; đây là nơi bắt đầu câu chuyện phép thuật của cô bé Molly Moon. ', 98, 33497, 'Daniel Day-Lewis'),
(77, 'CHARLIE VÀ NHÀ MÁY SÔCÔLA', 'Charlie and the Chocolate Factory (2005)', 'Hoàn tất ', 'Christopher Edward Nolan', 'Leonardo DiCaprio, Meryl Streep, Brad Pitt, Scarlett Johansson', 8, 3, 5, 2025, 'p75.png', 'Willi Wonka là một người sản xuất chocolate nổi tiếng nhất thế giới, mở một cuộc thi mà người thắng giải sẽ được vào tham quan nhà máy sản xuất chocolate của mình. Nhà nghèo, cậu bé Charlie Bucket phải sớm lao động để giúp đỡ gia đình ao ước được ăn thật nhiều kẹo, em tham gia trò chơi may mắn của Willy Wonka, ông chủ nhà máy chocolate tuyệt diệu nhất thế giới. ', 115, 33949, 'Daniel Day-Lewis'),
(78, 'TOM & JERRY: WILLY WONKA VÀ NHÀ MÁY CHOCOLATE', 'Tom and Jerry: Willy Wonka and the Chocolate Factory(2017)', 'Hoàn tất ', 'Christopher Edward Nolan', 'Leonardo DiCaprio, Meryl Streep, Brad Pitt, Scarlett Johansson', 8, 3, 6, 2024, 'p76.png', 'Tom và Jerry sẽ giúp Charlie Bucket đạt được một chiếc vé Vàng và bí mật đi cùng anh ta vào nhà máy sô cô la của Willy Wonka để ngăn chặn một trong những đối thủ của Wonka trộm cắp một viên kẹo đặc biệt gọi là Gobstopper Everlasting.', 79, 34401, 'Daniel Day-Lewis'),
(79, 'CHỈ CÓ THỂ HÌNH DUNG', 'I Can Only Imagine (2018)', 'Hoàn tất ', 'Christopher Edward Nolan', 'Leonardo DiCaprio, Meryl Streep, Brad Pitt, Scarlett Johansson', 8, 3, 7, 2027, 'p77.png', 'Bộ phim dựa trên câu chuyện đằng sau ca khúc của ban nhạc MercyMe, I Can Only Imagine trở thành ca khúc Christian được chơi nhiều nhất mọi thời đại. Bộ phim xoay quanh ca sĩ chính của MercyMe, Bart Millard, và mối quan hệ của anh với cha mình, người đã mất khi anh 18 tuổi và ông là nguồn cảm hứng để anh sáng tác nên bài hát này. Theo giám đốc Andrew Erwin, nó nói lên một câu chuyện cha-con phức tạp.', 110, 34853, 'Daniel Day-Lewis'),
(80, 'CÀ CHUA BI', 'Cherry Tomato (2007)', 'Hoàn tất ', 'Christopher Edward Nolan', 'Leonardo DiCaprio, Meryl Streep, Brad Pitt, Scarlett Johansson', 8, 3, 8, 2026, 'p78.png', 'Park Gu mưu sinh bằng nghề nhặt ve chai để cừng đứa cháu gái sống qua ngày. Tình cảnh của họ ngày càng tồi tệ hơn. Từ khi đứa con trai của ông ấy trở về và đã lấy đi số tiền mà ông ấy dành dụm mấy lâu và rồi chiếc xe ba gác của ông bị bọn côn đồ phá hỏng. Đó là phương tiện duy nhất giúp ông kiếm tiền. Ông ấy quyết định tới tìm người quản lý công trường. Nhưng không may, vì đứa cháu gái quá đói nên ông đành phải ăn cắp đồ ăn đứa bé. Không may đó là đồ ăn chó đã bị người giúp việc của quản lý công trường bỏ độc vì mối căm ghét của cô ta với ông chủ.', 102, 35305, 'Daniel Day-Lewis');
INSERT INTO `film` (`id`, `name`, `name2`, `status`, `director`, `actor`, `category_id`, `type_movie`, `nation_id`, `year`, `image`, `description`, `duration`, `num_view`, `author`) VALUES
(81, 'LIÊN MINH MÀU MÈ', 'Mitsuboshi Colors (2018)', 'HD Vietsub + Thuyết Minh', 'Christopher Edward Nolan', 'Leonardo DiCaprio, Meryl Streep, Brad Pitt, Scarlett Johansson', 8, 3, 9, 2025, 'p79.png', 'Hai cô gái trung học, một lùn và dễ tức giận - Popuko, và Pipimi - cao lớn và bình tĩnh hơn, những chuyện tào lao bắt đầu.', 23, 35757, 'Daniel Day-Lewis'),
(82, 'VUA KHỈ TÁI XUẤT 2', 'Kong: King of the Apes 2 (2018)', 'HD Vietsub + Thuyết Minh', 'Christopher Edward Nolan', 'Leonardo DiCaprio, Meryl Streep, Brad Pitt, Scarlett Johansson', 8, 3, 10, 2024, 'p80.png', 'Vua Khỉ Tái Xuất Phần 2 Vua Của Loài Khỉ được cứu bởi một cậu bé nhỏ Lucas khi dạo chơi trong rừng. Lucas và gia đình của cậu bé nuôi dưỡng Kong nhưng người anh song sinh của Lucas trở nên ganh ghét và cố gắng loại trừ Kong.', 25, 36209, 'Daniel Day-Lewis'),
(83, 'KIẾM TAM – HIỆP CAN NGHĨA ĐẢM THẨM KIẾM TÂM', 'Jian Wang 3 - Xia Gan Yi Dan Shen Jian Xin (2018)', 'HD Vietsub + Thuyết Minh', 'Christopher Edward Nolan', 'Leonardo DiCaprio, Meryl Streep, Brad Pitt, Scarlett Johansson', 9, 3, 1, 2027, 'p81.png', 'Thẩm Kiếm Tâm là một bảo an ở thôn Đạo Hương, bình bình tầm thường lập chí trở thành đại hiệp. Sau khi bái nhập đại phái giang hồ – Thuần Dương cung, lại ma xui quỷ khiến lĩnh hội được tuyệt thế bí tịch tổ truyền của Thuần Dương cung. Nhưng hắn lại không chút cảm kích tuyệt học mình lĩnh ngộ được. Vì thế bước vào giang hồ, từ từ trưởng thành, hiểu biết những mưa gió giang hồ ở Đại Đường thịnh thế. Một tiểu nhân vật có được tuyệt thế võ công, lại sẽ gây nên sóng gió thế nào ở chốn giang hồ?', 21, 36661, 'Daniel Day-Lewis'),
(84, 'TOÀN CHỨC PHÁP SƯ (PHẦN 3)', 'Full-Time Magister 3 (2018)', 'Hoàn tất ', 'Christopher Edward Nolan', 'Leonardo DiCaprio, Meryl Streep, Brad Pitt, Scarlett Johansson', 9, 3, 2, 2026, 'p82.png', 'Mở mắt tỉnh giấc, thế giới đại biến. Một trường cấp 3 quen thuộc giảng dạy Ma pháp, cổ vũ các học sinh phải trở thành Ma pháp sư xuất sắc. Bên ngoài đô thị, lũ yêu ma quỷ quái đăng chằm chằm nhìn loài người như hổ đói, chực chờ tấn công. Thế giới vốn tôn sùng khoa học giờ đây tôn sùng Ma pháp... Mạc Phàm phát hiện hầu hết mọi người chỉ học được một hệ ma thuật, nhưng cậu lại là một pháp sư toàn năng...', 19, 37113, 'Daniel Day-Lewis'),
(85, 'ĐẤU LA ĐẠI LỤC', 'Dau La Dai Luc (2018)', 'HD Vietsub + Thuyết Minh', 'Christopher Edward Nolan', 'Leonardo DiCaprio, Meryl Streep, Brad Pitt, Scarlett Johansson', 9, 3, 3, 2025, 'p83.png', 'Một đại lục không hề yên bình, một cuộc sống đầy hiểm nguy, phiêu lưu nhưng cũng không kém phần lãng mạn. tình yêu, thù hận, trách nhiệm… Tiếp bước những tiền bối đi trước, Hoắc Vũ Hạo và đời sau sử lai khắc thất quái, bằng niềm tin nhiệt huyết tuổi trẻ đã gây dựng lại đường môn tái lập những huy hoàng xưa kia của các tiền bối đi trước…', 25, 37565, 'Daniel Day-Lewis'),
(86, 'SONG NHÂN TRỪ ĐẠO', 'Banana Fish (2018)', 'HD Vietsub + Thuyết Minh', 'Christopher Edward Nolan', 'Leonardo DiCaprio, Meryl Streep, Brad Pitt, Scarlett Johansson', 9, 3, 4, 2024, 'p84.png', 'Banana Fish kể về cuộc gặp gỡ định mệnh giữa chàng trai người Mỹ Ash Lynx và cậu chàng thợ chụp ảnh người Nhật trong sáng Eiji Okamura. Tại thành phố New York năm 80, thiếu niên đẹp trai Ash Lynx được một ông trùm tội phạm khét tiếng “Papa” Dino Golzine nhận nuôi từ nhỏ, nuôi dưỡng cậu trở thành tay sai cũng như một món đồ chơi tình dục của ông ta. ', 23, 38017, 'Daniel Day-Lewis'),
(87, 'CÂU LẠC BỘ CRYSTAL RADIO', 'The Girl in Twilight (2018)', 'HD Vietsub + Thuyết Minh', 'Christopher Edward Nolan', 'Leonardo DiCaprio, Meryl Streep, Brad Pitt, Scarlett Johansson', 9, 3, 5, 2027, 'p85.png', 'Tháng 10 năm 2018, những cô gái sống tại một thành phố nhỏ đã thực hiện một nghi thức đặc biệt. Họ là những cô nàng đến từ câu lạc bộ Crystal Radio - một câu lạc bộ thú vị, nơi cô nàng Asuka Tsuchimiya dành những ngày tháng vui tươi bên bạn bè mình. Nghi thức họ thực hiện chỉ đơn thuần là một tin đồn truyền miệng thôi... Thế nhưng khi các cô gái lần lượt gặp phải những hiện tượng kì bí, mọi chuyện không còn là một trò vui như lúc đầu họ tưởng...', 24, 38469, 'Daniel Day-Lewis'),
(88, 'BẮC ĐẦU THẦN QUYỀN: REGENESIS', 'Souten no Ken Re: Genesis (2018)', 'HD Vietsub + Thuyết Minh', 'Christopher Edward Nolan', 'Leonardo DiCaprio, Meryl Streep, Brad Pitt, Scarlett Johansson', 9, 3, 6, 2026, 'p86.png', 'Ngay trước chiến tranh thế giới thứ 2, Kasumi Kenshiro thuê một giáo sư khá im lăng và hay đãng trí để dạy văn học cho một trường cao đằng nữ sinh nhỏ ở Tokyo. Từng là tông sư đời thứ 62 của Hokuto Shinken Thần quyền của sao phương Bắc và có được Yan Wang là danh hiệu Vua cái chết và người gìn giữ hòa bình ở thành phố ác quỷ. Lả một đấu sĩ của các tên lưu manh và những tên buôn lậu heroin, Kasumi chỉ muốn một cuộc sống bình yên cho đến khi người yêu của anh mất và các anh em, Kasumi buộc phải quay trở lại Thượng Hải để làm tròn số mệnh của mình và trả thù cho những người cậu yêu thương Bắc đầu thẩn quyền', 22, 38921, 'Daniel Day-Lewis'),
(89, 'DẠ QUỶ', 'Rampant (2018)', 'Hoàn tất ', 'Christopher Edward Nolan', 'Leonardo DiCaprio, Meryl Streep, Brad Pitt, Scarlett Johansson', 9, 3, 7, 2025, 'p87.png', 'Dạ Quỷ là một câu chuyện về hoàng tử Lee (do Huyn Bin thủ vai) ở triều đại Joseon, người nổi tiếng có võ thuật cao cường. Trở về sau khoảng thời gian dài bị đày ải bởi nhà Thanh (Trung Quốc), Ngài đau lòng chứng kiến cả quê hương chìm trong một đại dịch của những “ác quỷ bóng đêm”. Liệu rằng vị hoàng tử Lee có ngăn được cơn cuồng nộ của đội quân quỷ dữ này và cứu được giang sơn?', 129, 39373, 'Daniel Day-Lewis'),
(90, 'HỌA GIANG HỒ CHI BẤT LƯƠNG NHÂN (PHẦN 3)', 'Hoa Giang Ho Chi Bat Luong Nhan 3 (2018)', 'HD Vietsub + Thuyết Minh', 'Christopher Edward Nolan', 'Leonardo DiCaprio, Meryl Streep, Brad Pitt, Scarlett Johansson', 9, 3, 8, 2024, 'p88.png', 'Họa Giang Hồ Chi Bất Lương Nhân (Phần 3)', 20, 39825, 'Daniel Day-Lewis'),
(91, 'TINH THẦN BIẾN', 'Stellar Transformation (2018)', 'Lồng Tiếng', 'Christopher Edward Nolan', 'Leonardo DiCaprio, Meryl Streep, Brad Pitt, Scarlett Johansson', 9, 3, 9, 2027, 'p89.png', 'Tinh Thần Biến là một tiểu thuyết võ hiệp có nội dung về một câu Truyện Tiên Hiệp hoành tráng kể về người thanh niên Tần Vũ gian khổ tu luyện, vượt hết khó khăn này đến nguy hiểm khác để lên Thần Giới tìm người yêu.', 24, 40277, 'Daniel Day-Lewis'),
(92, 'SIÊU NHÂN KAMEN RIDER ZI-O', 'Kamen Rider Zi-O (2018)', 'Lồng Tiếng', 'Christopher Edward Nolan', 'Leonardo DiCaprio, Meryl Streep, Brad Pitt, Scarlett Johansson', 9, 3, 10, 2026, 'p90.png', 'Mùa thu năm 2018, một cô gái cùng cỗ máy thời gian xuất hiện trước mặt nhân vật chính của chúng ta, Tokiwa Sougo sinh vào năm 2000 mà cô gái được báo mộng sẽ trở thành Vua. Cô gái bí ẩn xuất hiện từ cỗ máy thời gian nói với main rằng: Tôi đến từ năm 2068. Trong tương lai, thế giới sẽ do Ma Vương thống trị, khiến loài người lầm than, tạo nên một thế giới vô vọng. Cô gái tới năm 2018 với hi vọng thay đổi thế giới tương lai đầy tuyệt vọng mà cô nói. Trong tương lai, cậu sẽ trở thành Zi-O, vị vua thời gian, và cũng là ma vương hủy diệt thế giới.', 25, 40729, 'Daniel Day-Lewis'),
(93, 'ANH EM PHI HÀNH GIA', 'Space Brothers (2012)', 'Lồng Tiếng', 'Christopher Edward Nolan', 'Leonardo DiCaprio, Meryl Streep, Brad Pitt, Scarlett Johansson', 10, 3, 1, 2025, 'p91.png', 'Vào một đêm hè 2006, khi còn là hai chú bé, hai anh em Mutta (1993) và Hibito (1996) đã nhìn thấy một vật thể lạ bay tới mặt trăng. Họ đã quyết định trong đêm đó rằng tương lai sẽ trở thành những phi hành gia bay vào vũ trụ. Năm 2025, Hibito đã trở thành một phi hành gia và chuẩn bị bay lên mặt trăng. Mutta thì còn là một kỹ sư thông thường ở một công ty ô tô. Tuy nhiên, sau một pha bao lực với sếp mình, sự nghiệp của anh đã đi toong. Mất việc, bị đưa vào sổ đen của toàn bộ ngành công nghiệp thế nhưng có lẽ đây lại là cơ hội để Mutta một lần nữa theo đuổi giấc mơ thời thơ bé của mình...', 24, 41181, 'Daniel Day-Lewis'),
(94, 'ĐẢO HẢI TẶC', 'One Piece (1999)', 'Lồng Tiếng', 'Christopher Edward Nolan', 'Leonardo DiCaprio, Meryl Streep, Brad Pitt, Scarlett Johansson', 10, 3, 2, 2024, 'p92.png', 'Phim Đảo Hải Tặc - One Piece là chuyện về cậu bé Monkey D. Luffy do ăn nhầm Trái Ác Quỷ, bị biến thành người cao su và sẽ không bao giờ biết bơi. 10 năm sau sự việc đó, cậu rời quê mình và kiếm đủ 10 thành viên để thành một băng hải tặc, biệt hiệu Hải tặc Mũ Rơm. ', 24, 41633, 'Daniel Day-Lewis'),
(95, 'SỨ MỆNH NGUY HIỂM', 'Serenity (2005)', 'Lồng Tiếng', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 10, 3, 3, 2027, 'p93.png', 'Bộ phim được làm dựa trên kịch bản chuyển thể từ một phim truyền hình tên là Firefly. Phim kể về cuộc phiêu lưu trong không gian của những người điều hành con tàu Serenity gồm thuyền trưởng Malcolm và các nhân viên là Zoe, Wash, Kaylee và Jayne. Khi Malcolm đồng ý chở 2 vị khách là vị bác sĩ trẻ Simon cùng với người chị có tinh thần bất ổn River thì những rắc rối bắt đầu xảy ra.', 119, 42085, 'Daniel Day-Lewis'),
(96, 'NHIỆM VỤ BẤT KHẢ THI: SỤP ĐỔ', 'Mission: Impossible - Fallout (2018)', 'Lồng Tiếng', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 10, 3, 4, 2026, 'p94.png', 'Ba năm sau Mission: Impossible – Rogue Nation, chàng đặc vụ điển trai và hào hoa bậc nhất trên màn ảnh rộng Ethan Hunt sẽ tái xuất màn bạc trong mùa hè 2018. ', 147, 42537, 'Daniel Day-Lewis'),
(97, 'LINH KHẾ', 'Spiritpact (2017)', 'Lồng Tiếng', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 10, 3, 5, 2025, 'p95.png', 'Linh khiết là bộ phim xoay quanh nhân vật chính Dương Kính – Một chàng trai được sinh ra trong gia đình nổi tiếng về trừ tà. Tuy nhiên sau khi cha mẹ mất sớm, thì sự nghiệp trừ tà của gia đình cũng trở nên mai một. Dương Kính phải lăn lộn đủ nghề để kiếm sống. Một đêm nọ, Dương Kính gặp gỡ một pháp sư thần bí là Dương Minh Tư chiến đấu với một hồn quỷ. Cuộc gặp gỡ này đã thay đổi cuộc sống của Dương Kính, sau khi gặp gỡ anh chàng pháp sư thần bí kia, Dương Kính bị tai nạn xe và cuối cùng trở thành một linh thể….', 13, 42989, 'Daniel Day-Lewis'),
(98, 'DŨNG GIẢ ĐẠI MẠO HIỂM: HOÀNG TUYỀN THỦ KÝ', 'Dung Gia Dai Mao Hiem (2015)', 'Lồng Tiếng', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 10, 3, 6, 2024, 'p96.png', 'Chuyện xoay quanh nhân vật chính An Nham, đơn giản là một sinh viên năm 4 an phận thủ thường, một ngày đẹp trời gặp phải zombie trên xe khách, rồi một anh đẹp trai ngời ngời tới diệt quái như quay movie. Rồi cái xe đâm xuống vực và cả An Nham lẫn cái anh đẹp trai kia đều chết rất thảm, được TV đưa tin. Nhưng ngày hôm sau họ vẫn sống sờ sờ, và ko có gì cho thấy họ là ma cả. ', 12, 43441, 'Daniel Day-Lewis'),
(99, 'CUỘC PHIÊU LƯU CỦA GEORGE VÀ GERALD', 'Mouse Story: The Adventures of George and Gerald(2007)', 'Lồng Tiếng', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 10, 3, 7, 2027, 'p97.png', 'Gerald - một chú chuột mạnh mẽ và đáng tin cậy. George - một chú chuột đối xử tốt với bạn bè mình những lại vội vã và đãng trí. Hai chú chuột George và Gerald đã có một bài kiểm tra xem ai là người đầu tiên bắt được Rồng Ánh sáng, người chiến thắng sẽ trở thành thủ lĩnh của đại gia đình chuột. Một chú chuột không thích thế giới bên ngoài và một chú chuột ao ước một lần được ra bên ngoài sẽ cùng nhau phiêu lưu để đến được Thung lũng Mặt trăng và bắt Rồng Ánh sáng.', 52, 43893, 'Daniel Day-Lewis'),
(100, 'ALICE VÀ ÔNG LÃO ZOUROKU', 'Alice to Zouroku (2017)', 'Lồng Tiếng', 'Christopher Edward Nolan', 'Leonardo DiCaprio, Meryl Streep, Brad Pitt, Scarlett Johansson', 10, 3, 8, 2026, 'p98.png', 'Bạn đã nghe qua về năng lực thần bí Giấc mơ Alice chưa? Đó là khả năng biến suy nghĩ của mình thành hiện thực đấy. Đây là năng lực mà một nhóm những cô bé đang sở hữu. Nhưng đáng thương thay, những cô bé này đều bị giam giữ trong bí mật và trở thành vật thí nghiệm. Cho đến ngày kia, một bé đã tìm cách trốn thoát khỏi cái nhà tù này. Cô chính là Sana - người có năng lực phản vật lý cực kì khủng. Và khi cô nàng bướng bỉnh này đụng độ ông lão Zouroku, cuộc sống ngăn nắp, trật tự, thoải mái của ông đã bị đổ vỡ hoàn toàn.', 24, 44345, 'Daniel Day-Lewis'),
(101, 'HARRY POTTER VÀ HÒN ĐÁ PHÙ THỦY', 'Harry Potter 1: Harry Potter and the Sorcerer\'s Stone(2001)', 'Lồng Tiếng', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 10, 3, 9, 2025, 'p99.png', 'Harry Potter và Hòn Đá Phù Thủy là bộ phim đầu tiên trong series phim “Harry Potter” được xây dựng dựa trên tiểu thuyết của nhà văn J.K.Rowling. Nhân vật chính của phim, Harry Potter - một cậu bé 11 tuổi sau khi mồ côi cha mẹ đã bị gửi đến nhà dì dượng của mình, gia đình Dursley. Tuy nhiên, cậu bé bị ngược đãi và không hề biết về thân phận thực sự của mình. ', 152, 44797, 'Tom Hanks'),
(102, 'CHÚ CHÓ ROBOT', 'A-X-L (2018)', 'HD Vietsub + Thuyết Minh', 'Christopher Edward Nolan', 'Leonardo DiCaprio, Meryl Streep, Brad Pitt, Scarlett Johansson', 10, 3, 10, 2024, 'p100.png', 'Trong một lần đi chơi, Miles - cậu thanh niên có niềm đam mê với máy móc và tốc độ phát hiện ra một chú chó máy quân sự được tạo ra với chức năng tấn công những vị trí mà phương tiện cơ giới không thể đến mang tên A-X-L.', 98, 45249, 'Tom Hanks'),
(103, 'MÀN SƯƠNG CHẾT', 'Just A Breath Away (2018)', 'Lồng Tiếng', 'Christopher Edward Nolan', 'Leonardo DiCaprio, Meryl Streep, Brad Pitt, Scarlett Johansson', 11, 3, 1, 2027, 'p101.png', 'Không được báo trước, một trận động đất vô cùng lớn tấn công Paris, cả thành phố sau đó bị bao phủ bởi một lớp sương mù dày đặc. Màn sương chết ấy đang lần lượt cướp đi tính mạng của rất nhiều những người dân nơi đây. ', 89, 45701, 'Tom Hanks'),
(104, 'THANH TRỪ QUỶ DỮ', 'Chrono Crusade (2003)', 'Lồng Tiếng', 'Christopher Edward Nolan', 'Leonardo DiCaprio, Meryl Streep, Brad Pitt, Scarlett Johansson', 11, 3, 2, 2026, 'p102.png', 'Năm 1920, một năm đầy biến động của xã hội. Đó là khoảng thời gian mà phụ nữ được ăn chơi tự do, thoải mái cho dù chính phủ đã ngăn cấm. Đối với tầng lớp thượng lưu, họ phát hiện ra một sự dư thừa xã hội: quỷ dữ. Một tổ chức đặc biệt được thành lập từ thế kỷ trước, Order of Magdalene. Đứng đầu tổ chức là cha Remington và sơ Kate cùng lực lượng là teenrambo(nghĩa đen đấy) được tạo ra với trọng trách nặng nề, “thay chúa hành đạo”, chống lại cái ác bằng... súng máy. Trong khi Rosette và Chrono chiến đấu vì Order of Magdalene thì có 1 con quỷ khủng hơn Chrono đang chờ đợi, sẵn sàng tiêu diệt không chỉ riêng Order of Magdalene mà là tất cả tạo hóa!!', 24, 46153, 'Tom Hanks'),
(105, 'VƯƠNG QUỐC PHÙ THỦY', 'Jester The Adventurer (1999)', 'Lồng Tiếng', 'Christopher Edward Nolan', 'Leonardo DiCaprio, Meryl Streep, Brad Pitt, Scarlett Johansson', 11, 3, 3, 2025, 'p103.png', 'Gokudo - Vương Quốc Phù Thủy , nội dung bắt đầu khi Gokudou đánh cắp một chiếc túi từ một thầy bói , nghĩ rằng nó có chứa một viên ngọc . Thay vào đó , nó quay ra được một tảng đá , từ đó xuất hiện Djinn . Các vị thần cấp Gokudou ba mong muốn tiêu chuẩn, nhưng anti -hero của chúng tôi không nghĩ nhiều về mong muốn của mình. Gokudou không nhận được mong muốn của mình, mặc dù không chính xác trong thời trang mà anh mong đợi. Điều tốt nhất mà ông nhận ra mong muốn của mình là người mạnh nhất trong vương quốc Honou chứ không phải Maken , một thanh kiếm huyền diệu cho phép chủ sở hữu của mình để làm lửa tấn công và nó có thể được triệu tập từ bất cứ nơi nào trên thế giới .', 24, 46605, 'Tom Hanks'),
(106, 'GUNDAM BUILD FIGHTERS TRY', 'Gundam Build Fighters Try (2014)', 'Lồng Tiếng', 'Christopher Edward Nolan', 'Leonardo DiCaprio, Meryl Streep, Brad Pitt, Scarlett Johansson', 11, 3, 4, 2024, 'p104.png', 'Đã 7 năm đã trôi qua kể từ ngày Sei Iori giành giải vô địch Gunpla Battle lần thứ 7. Giải đấu Gunpla Battle được quản lí bởi công ty thương mại Yajima. Với quy định và phương thức chiến đấu mới, Gunpla ngày càng trở nên phổ biến hơn trên thế giới. Tuy nhiên, Học viện Seiho đã cho rằng Sei Iori đã từng tham gia đã thất bại trong việc nắm bắt xu hướng phát triển. Thành viên duy nhất trong Câu lạc bộ Gunpla Battle của nhà trường là hội trưởng, học sinh trung học Fumina Hoshino. Hiện nay để tham gia vào giải đấu Gunpla Battle Championship, người chơi phải ở trong một đội gồm ba thành viên mới được phép tham gia.', 25, 47057, 'Tom Hanks'),
(107, 'HÀNH TINH HUYỀN BÍ', 'Gun x Sword (2005)', 'HD Vietsub + Thuyết Minh', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 11, 1, 5, 2027, 'p105.png', 'Gun X Sword :Hành tinh Endless Illusion huyền bí nằm đâu đó trong vũ trụ, là thiên đường cho bọn cướp, là địa ngục với những người tốt. Trên hành tinh đó, Van - người sở hữu một trong những Armor mạnh nhất - đang trên đường đi tìm kẻ thù của mình. Trong chuyến đi, anh đã gặp được những người bạn đồng hành như: Wendy, Carmen 99... Mỗi nơi Van đi qua, đều có dấu vết của kẻ thù, mỗi nơi hé lộ ra một bí ẩn... Nhưng đằng sau những bí ẩn đó là một âm mưu khủng khiếp ngụy trang bằng một bộ mặt nhân hậu...', 25, 47509, 'Tom Hanks'),
(108, 'CHRISTOPHER ROBIN', 'Christopher Robin (2018)', 'Lồng Tiếng', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 11, 3, 6, 2026, 'p106.png', 'Christopher Robin là một tác phẩm live-action ấm áp về tình cảm gia đình của hãng phim Disney. Bộ phim xoay quanh chuyến phiêu lưu trở lại tuổi thơ cùng những người bạn thuở nhỏ đầy thân thuộc bao gồm Pooh, Tigger, Eeyore và Piglet ở Rừng Trăm Mẫu. ', 104, 47961, 'Tom Hanks'),
(109, 'BẠN MA PHIỀN TOÁI', 'The Soul-Mate / Wonderful Ghost (2018)', 'Lồng Tiếng', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 11, 3, 7, 2025, 'p107.png', 'Jang-su (Ma Dong-seok) và Tae-jin (Kim Young-kwang) sở hữu cá tính hoàn toàn đối lập. Là một võ sư nổi tiếng, nhưng Jang-soo lại tỏ ra ích kỷ và chẳng bao giờ chịu giúp đỡ người hoạn nạn. Tất cả những gì anh quan tâm chỉ là lo lắng chữa trị căn bệnh tim bẩm sinh cho cô con gái nhỏ Do-kyung (Choi Yoo-ri).', 97, 48413, 'Tom Hanks'),
(110, 'YU-GI-OH! VRAINS', 'Yu-Gi-Oh! VRAINS (2017)', 'HD Vietsub + Thuyết Minh', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 11, 1, 8, 2024, 'p108.png', 'Thành phố Den, nơi hệ thống mạng lưới vô cùng phát triển. Tập đoàn Công Nghệ SOL khổng lồ đặt trụ sở tại đó và bằng kĩ thuật công nghệ tiên tiến của mình, nó đã xây dựng một không gian thực tế ảo khổng lồ gọi là LINK VRAINS. Rất nhiều người đã vô cùng phấn khích khi biết rằng họ có thể trải nghiệm một không gian chơi bài hoàn toàn mới. Một tổ chức hacker có tên gọi Kỵ Binh Hanoi đã đột nhập vào mạng lưới này. Mục đích của họ là phá hủy Thế Giới của AI: Cyverse tồn tại nơi nào đó trong mạng lưới.', 25, 48865, 'Tom Hanks'),
(111, 'CHỜ NGÀY LỜI HỨA NỞ HOA', 'Maquia: When the Promised Flower Blooms (2018)', 'Lồng Tiếng', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 11, 3, 9, 2027, 'p109.png', 'Phim lấy bối cảnh thơ mộng của vùng đất huyền diệu nơi tộc người Lorph “trường sinh bất lão” sinh sống, tộc người Lorph sẽ mãi mãi không già, hình dáng của họ ngưng lại ở độ tuổi thiếu niên, họ được gọi với cái tên huyền thoại sống – “Clan of Partings”. Sau một cuộc xâm lăng, cô bé Maquia bị lạc vào vùng đất của con người và bắt gặp một đứa trẻ mồ côi. Từ đó cô quyết định sẽ nuôi nấng em bé mà cô đặt tên là Ariel này bất kể những khó khăn và định kiến của xã hội.', 115, 49317, 'Tom Hanks'),
(112, 'CHÂN NHỎ, BẠN Ở ĐÂU?', 'Smallfoot (2018)', 'Lồng Tiếng', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 11, 3, 10, 2026, 'p110.png', 'Sau lần chạm trán với Percy, một sinh vật với đôi chân bé nhỏ, người tuyết Migo quyết tâm thực hiện chuyến phiêu lưu của mình đến vùng đất xa xôi để chứng minh với cộng đồng của mình rằng Chân Nhỏ là có thật. Liệu Chân Nhỏ có thật sự đáng sợ như họ đã nghĩ? Hãy cùng Migo đi tìm sinh vật huyền bí này vào tháng 9 nhé!', 96, 49769, 'Tom Hanks'),
(113, 'LỮ ĐOÀN SÓI', 'Illang: The Wolf Brigade (2018)', 'Lồng Tiếng', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 12, 1, 1, 2025, 'p111.png', 'Phim lấy bối cảnh tương lai, xoay quanh quyết định thống nhất Nam - Bắc Hàn sau bảy năm đàm phán. Để phản đối việc sáp nhập, những phần tử khủng bố liên kết thành tổ chức lớn, liên tục nổi dậy, ngăn chặn và chống phá. Trước sự hỗn loạn, chính phủ lập lực lượng cảnh sát đặc biệt nhằm đối phó với các phần tử quá khích.', 139, 50221, 'Tom Hanks'),
(114, 'CHIẾN BINH OTOME', 'My Otome (2008)', 'Lồng Tiếng', 'Christopher Edward Nolan', 'Leonardo DiCaprio, Meryl Streep, Brad Pitt, Scarlett Johansson', 12, 1, 2, 2024, 'p112.png', 'Trên hành tinh Earl này, sức mạnh quân sự của các quốc gia phụ thuộc vào bao nhiêu Otome mà họ có, và sức mạnh của mỗi Otome này. Những Otome là những nữ chiến binh sử dụng phép thuật, sẽ phục vụ cho người đứng đầu vương quốc. Otome có một GEM đeo như bông tai bên trái, còn chủ nhân của Otome sẽ có một GEM tương tự trên một chiếc nhẫn. Sức mạnh của những Otome chỉ được giải phóng khi chủ nhân cho phép; ngoại trừ Five Columns là những Otome mạnh nhất, họ không cần chủ nhân và phục vụ cho học viện Garderobe, hoạt động như một lực lượng bảo vệ luật pháp và giúp đỡ những Otome khác. ', 24, 50673, 'Tom Hanks'),
(115, 'MẬT NGỮ DIỆT VONG', 'Doomsday Book (2012)', 'Lồng Tiếng', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 12, 3, 3, 2027, 'p113.png', 'Doomsday Book là tuyển tập các điều kinh khủng nhất mà bạn có thể tưởng trong ngày tận thế: mưa thiên thạch rơi vào trái đất, virus biến nhân loại thành những thây ma, những con robot với cái nhìn huyền bí hoặc những điều kinh dị mà bạn từng biết...', 113, 51125, 'Tom Hanks'),
(116, 'TRƯỚC NGÀY HỦY DIỆT NHÂN LOẠI', 'Before We Vanish / Strolling Invader (2017)', 'Lồng Tiếng', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 12, 3, 4, 2026, 'p114.png', 'Cuộc hôn nhân của Narumi Kase (Masami Nagasawa) và Shinji Kase (Ryuhei Matsuda) đã đến bờ vực rạn nứt. Một ngày nọ, Shinji Kase đột ngột mất tích. Vài ngày sau, anh xuất hiện nhưng có vẻ như đã trở thành một người hoàn toàn khác. Shinji bây giờ tử tế, ngây ngô và dịu dàng hơn trước. Và ngày nào anh ta cũng ra ngoài đi dạo. ', 129, 51577, 'Tom Hanks'),
(117, 'MỘT VÀ HAI', 'One and Two (2015)', 'Lồng Tiếng', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 12, 3, 5, 2025, 'p115.png', 'Zac và Eva sống cùng bố mẹ trong trang trại bí ẩn, được bao quanh bởi một bức tường đồ sộ. Gia đình họ sống và làm việc theo lối những năm 1800 xưa cũ. Khi mẹ của hai anh em bị bệnh nặng, họ khám phá ra những bí mật đen tối ẩn khuất của gia đình và sức mạnh siêu nhiên dịch chuyển tức thời của họ. Tất cả chúng đe dọa sự bình yên của gia đình. “One and Two” là câu chuyện về mối quan hệ khắn khít và yêu thương giữa hai anh em nói riêng và giữa các thành viên trong gia đình nói chung.', 90, 52029, 'Tom Hanks'),
(118, 'SIÊU NHÂN MÙ (PHẦN 3)', 'Daredevil (Season 3) (2018)', 'Lồng Tiếng', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 12, 3, 6, 2024, 'p116.png', 'Daredevil mùa 3 tiếp tục theo chân chàng luật sư khiếm thị Matt Murdock (Charlie Cox), ban ngày anh đấu tranh cho người nghèo ở khu Hell’s Kitchen, nhưng khi màn đêm buông xuống thì anh là Daredevil – siêu anh hùng đường phố dùng vũ lực để đưa kẻ xấu ra ánh sáng và thực hiện những nhiệm vụ mà các siêu anh hùng như Iron Man (Robert Downey Jr.) và Captain America (Chris Evans) không có thời gian để quan tâm đến.', 54, 52481, 'Tom Hanks'),
(119, 'TIA CHỚP ĐEN (PHẦN 1)', 'Black Lightning (Season 1) (2018)', 'Lồng Tiếng', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 12, 1, 7, 2027, 'p117.png', 'Một siêu anh hùng đã về hưu trở thành người bảo vệ công lý. Black Lightning là siêu anh hùng có khả năng có khả năng tạo ra và phóng các tia điện, mặc dù không ai biết được những tia điện này mạnh cỡ nào nhưng nó đủ để làm choáng và thậm chí giết người.', 60, 52933, 'Tom Hanks'),
(120, 'EUREKA SEVEN THE MOVIE', 'Eureka Seven The Movie (2009)', 'Lồng Tiếng', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 12, 1, 8, 2026, 'p118.png', 'Movie của bộ Eureka Seven.', 115, 53385, 'Tom Hanks'),
(121, 'EUREKA SEVEN AO', 'Eureka Seven Astral Ocean (2012)', 'Lồng Tiếng', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 12, 3, 9, 2025, 'p119.png', 'Là sequel của anime nổi tiếng Eureka Seven chiếu năm 2005. Câu chuyện lần này lấy bổi cảnh là đảo Iwado của Okinawa, trong thời gian gần đây bỗng nổi lên 1 phong trào đòi quyền tự trị. Nhân vật chính Ao Fukai sống cùng 1 ông bác sĩ già tên Toshio, cha cậu không rõ đã đi đâu còn mẹ cậu đã bị bắt cóc bởi 1 nhóm người lạ mặt 10 năm về trước. Cậu chơi thân với Naru Arata, 1 cô bạn chứa trong mình 1 sức mạnh có tên “yuta”. Một ngày, 1 thực thể bí ẩn tên “Secret” bỗng dưng xuất hiện và tấn công đảo, bắt buộc Ao phải lái Nirvash để phản công..', 24, 53837, 'Tom Hanks'),
(122, 'NÀNG THƠ CỦA QUỶ', 'Muse (2017)', 'Lồng Tiếng', 'Christopher Edward Nolan', 'Leonardo DiCaprio, \r\nMeryl Streep, \r\nBrad Pitt, \r\nScarlett Johansson', 12, 3, 10, 2024, 'p120.png', 'Muse (Nàng Thơ Của Quỷ) được chuyển thể từ quyển tiểu thuyết rùng rợn The Lady Number Thirteencủa cây bút nổi tiếng José Carlos Somoza. Chuyện phim theo chân vị giáo sư văn học Samuel Salomon(Elliot Cowan đóng). Sau cái chết đầy bi kịch đẫm máu của người bạn gái, ông quyết định gác lại công việc. Trong suốt một năm đó, ông thường xuyên gặp phải ác mộng, Sumuel thường xuyên mơ thấy một nhóm người bí ẩn hành hình theo một nghi lễ chết chóc.', 107, 54289, 'Tom Hanks'),
(132, 'de men', 'de mennnnnn', 'Long Tienggggg', 'Tuiiiiii', 'Tuiii', 18, 2, 2, 2027, 'DeMen.jfif', 'assdad', 111, 111, 'tuiiii');

-- --------------------------------------------------------

--
-- Table structure for table `foods`
--

CREATE TABLE `foods` (
  `id_food` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `foods`
--

INSERT INTO `foods` (`id_food`, `name`, `price`, `status`, `image`) VALUES
(1, 'Bắp rang', 50000, 0, 'images/br.png'),
(2, 'Coca', 30000, 0, 'images/coca.png'),
(3, 'Combo Bắp + Coca', 75000, 0, 'images/combo.png');

-- --------------------------------------------------------

--
-- Table structure for table `nation`
--

CREATE TABLE `nation` (
  `id` int(11) NOT NULL,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `nation`
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
-- Table structure for table `nav-menu`
--

CREATE TABLE `nav-menu` (
  `id` int(20) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `handle` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `nav-menu`
--

INSERT INTO `nav-menu` (`id`, `name`, `handle`) VALUES
(1, 'thể loại', 'category'),
(2, 'quốc gia', 'nation'),
(3, 'phim sắp chiếu', 'single-movie'),
(4, 'phim đang chiếu', 'series-movie'),
(5, 'phim chiếu rạp', 'theater-movie');

-- --------------------------------------------------------

--
-- Table structure for table `screens`
--

CREATE TABLE `screens` (
  `id_screens` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `screens`
--

INSERT INTO `screens` (`id_screens`, `name`, `status`) VALUES
(1, 'Rạp 1', 1),
(2, 'Rạp 2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `seats`
--

CREATE TABLE `seats` (
  `id_seats` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `id_screens` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `series-movie`
--

CREATE TABLE `series-movie` (
  `id` int(20) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `year` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `series-movie`
--

INSERT INTO `series-movie` (`id`, `name`, `year`) VALUES
(1, 'Phim Đang Chiếu 2024', 2024),
(2, 'Phim Đang Chiếu 2025', 2025),
(3, 'Phim Đang Chiếu 2026', 2026),
(4, 'Phim Đang Chiếu 2027', 2027);

-- --------------------------------------------------------

--
-- Table structure for table `showtime`
--

CREATE TABLE `showtime` (
  `id_showtime` int(11) NOT NULL,
  `time` datetime DEFAULT NULL,
  `id_film` int(11) DEFAULT NULL,
  `id_screens` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `showtime`
--

INSERT INTO `showtime` (`id_showtime`, `time`, `id_film`, `id_screens`) VALUES
(1, '2024-11-23 15:45:00', 1, 1),
(2, '2024-11-24 19:30:00', 2, 1),
(11, '2024-11-16 22:23:00', 2, 1),
(12, '2024-11-23 23:26:00', 12, 1),
(13, '2024-11-15 22:27:00', 122, 1),
(15, '2024-11-27 23:31:00', 122, 1),
(16, '2024-11-27 23:31:00', 122, 1),
(17, '2024-11-27 23:31:00', 122, 1),
(18, '2024-11-27 23:31:00', 122, 1),
(19, '2024-11-27 23:31:00', 122, 1),
(20, '2024-11-27 23:31:00', 122, 1),
(21, '2024-11-27 23:31:00', 122, 1),
(22, '2024-11-27 23:31:00', 122, 1),
(23, '2024-11-27 23:31:00', 122, 1),
(24, '2024-11-27 23:31:00', 122, 1);

-- --------------------------------------------------------

--
-- Table structure for table `single-movie`
--

CREATE TABLE `single-movie` (
  `id` int(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `year` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `single-movie`
--

INSERT INTO `single-movie` (`id`, `name`, `year`) VALUES
(1, 'Phim Sắp Chiếu 2024', 2024),
(2, 'Phim Sắp Chiếu 2025', 2025),
(3, 'Phim Sắp Chiếu 2026', 2026),
(4, 'Phim Sắp Chiếu 2027', 2027);

-- --------------------------------------------------------

--
-- Table structure for table `theater-movie`
--

CREATE TABLE `theater-movie` (
  `id` int(20) NOT NULL,
  `name` varchar(255) CHARACTER SET utf32 COLLATE utf32_general_ci NOT NULL,
  `year` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `theater-movie`
--

INSERT INTO `theater-movie` (`id`, `name`, `year`) VALUES
(1, 'Phim Chiếu Rạp 2024', 2024),
(2, 'Phim Chiếu Rạp 2025', 2025),
(3, 'Phim Chiếu Rạp 2026', 2026),
(4, 'Phim Chiếu Rạp 2027', 2027);

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id_ticket` int(11) NOT NULL,
  `booking_time` datetime DEFAULT current_timestamp(),
  `id_user` int(11) DEFAULT NULL,
  `id_showtime` int(11) DEFAULT NULL,
  `seats` varchar(11) DEFAULT NULL,
  `id_film` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id_ticket`, `booking_time`, `id_user`, `id_showtime`, `seats`, `id_film`) VALUES
(48, '2024-11-18 08:25:25', 19, 24, 'A5', 122),
(49, '2024-11-18 08:44:28', 19, 24, 'A2', 122),
(50, '2024-11-18 08:44:28', 19, 24, 'A3', 122),
(51, '2024-11-18 22:56:17', 18, 13, 'A4', 122),
(52, '2024-11-18 22:56:17', 18, 13, 'A5', 122),
(53, '2024-11-18 23:03:16', 18, 15, 'A4', 122),
(54, '2024-11-18 23:03:16', 18, 15, 'A5', 122),
(55, '2024-11-18 23:30:53', 21, 24, 'D4', 122),
(56, '2024-11-18 23:30:53', 21, 24, 'D5', 122),
(61, '2024-11-19 15:26:11', 15, 22, 'C6', 122),
(62, '2024-11-19 15:26:11', 15, 22, 'C7', 122);

-- --------------------------------------------------------

--
-- Table structure for table `type-movie`
--

CREATE TABLE `type-movie` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `type-movie`
--

INSERT INTO `type-movie` (`id`, `name`, `handle`) VALUES
(1, 'Phim Sắp Chiếu', 'single-movie'),
(2, 'Phim Đang Chiếu', 'series-movie'),
(3, 'Phim chiếu rạp', 'theater-movie');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` int(5) NOT NULL,
  `username` varchar(30) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `birthday` date NOT NULL,
  `sex` varchar(10) NOT NULL,
  `usertype` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `username`, `fullname`, `password`, `email`, `birthday`, `sex`, `usertype`) VALUES
(1, 'thinhphuc', 'Tran Nguyen Phuc Thinh', '$2y$10$Pnacjhsa20qZ2Fa0p3meBnuJ4xtDolXWbJ3MnU7NOn/eN7PRK7Micm', 'thinh123@gmail.com', '2018-11-13', 'female', 20),
(4, 'phucthinh', 'Tran Nguyen Phuc Thinh', '$2y$10$YdhanckqZ2Fa0p3meBnuJ4xtDolXWbJ3MnU7NOn/eN7PRK7Micm', 'phucthinh@gmail.com', '2018-11-04', 'male', 20),
(5, 'trinh', 'Vo Thi Trinh', '$2y$10$Jdocalkdwco20qZ2Fa0p3meBnuJ4xtDolXWbJ3MnU7NOn/eN7PRK7Micm', 'chinhchinh@gmail.com', '2018-11-04', 'female', 20),
(6, 'thien', 'Tran Van Thien', '$2y$10$Hdhadwcoo20qZ2Fa0p3meBnuJ4xtDolXWbJ3MnU7NOn/eN7PRK7Micm', 'thienle4444@gmail.com', '2018-11-05', 'male', 20),
(8, 'thinh', 'Tran Nguyen Phuc Thinh', '$2y$10$Dkaskj0qZ2djksadJ4xtDolXWbJ3MnU7NOn/esadscedasd', 'thinh@gmail.com', '1997-11-20', 'male', 99),
(14, 'aaa', 'Tran Nguyen Phuc Thinh', '$2y$10$Y2jUnt9rcmJJCAMzQsQ7cOwwbDXZyoJ5Kst7.rs75a8dUfWTxIB2m', 'thinhphuc2704@gmail.com', '2024-11-08', 'male', 20),
(15, 'test', 'Tran Nguyen Phuc Thinh', '$2y$10$KDBizdWdqd1RztnN5ugEMu26MvYadYonN.I/E.h1HcbHIiY76Pm9m', 'thinhb2203636@student.ctu.edu.vn', '2024-11-13', 'male', 20),
(17, 'abc', 'Tran Nguyen Phuc Thinh', '$2y$10$vVmf7q6Iou3ej4UO9wv46uCtHuruIpSLPxknLaNZba22vPzNdnEYy', 'thinhphuc2704@gmail.com', '2024-11-08', 'male', 99),
(18, 'nam', 'Nguyen Nam', '$2y$10$vpNWoUggTNf2tc.RhMGwUOulx3adOGdJYQH2EPlsm7ujHNBWVla26', 'nam@gmail.com', '2003-03-11', 'male', 99),
(19, 'nammmm', 'nam', '$2y$10$wmwm8oL7jmhSFJezTwGd4eNWeR2FsGGBjm6KEchFlQJA.YJJdGKPy', 'nam123@gmail.com', '2003-03-01', 'male', 20),
(21, 'Phuongvy0410', 'Nguyen Ngoc Phuong Vy', '$2y$10$EW0ATqQ6fGCmZI4waOVYCuNfBqIWx7qijCKTuizQX91fm/h4gCT4e', 'pvy8460@gmail.com', '2002-04-10', 'female', 20);

-- --------------------------------------------------------

--
-- Table structure for table `usertype`
--

CREATE TABLE `usertype` (
  `type` int(2) NOT NULL,
  `typename` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `usertype`
--

INSERT INTO `usertype` (`type`, `typename`) VALUES
(20, 'Member'),
(99, 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nation_id` (`nation_id`),
  ADD KEY `category` (`category_id`);

--
-- Indexes for table `foods`
--
ALTER TABLE `foods`
  ADD PRIMARY KEY (`id_food`);

--
-- Indexes for table `nation`
--
ALTER TABLE `nation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nav-menu`
--
ALTER TABLE `nav-menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `screens`
--
ALTER TABLE `screens`
  ADD PRIMARY KEY (`id_screens`);

--
-- Indexes for table `seats`
--
ALTER TABLE `seats`
  ADD PRIMARY KEY (`id_seats`),
  ADD KEY `id_screens` (`id_screens`);

--
-- Indexes for table `series-movie`
--
ALTER TABLE `series-movie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `showtime`
--
ALTER TABLE `showtime`
  ADD PRIMARY KEY (`id_showtime`),
  ADD KEY `id_film` (`id_film`),
  ADD KEY `id_screens` (`id_screens`);

--
-- Indexes for table `single-movie`
--
ALTER TABLE `single-movie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `theater-movie`
--
ALTER TABLE `theater-movie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id_ticket`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_showtime` (`id_showtime`);

--
-- Indexes for table `type-movie`
--
ALTER TABLE `type-movie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_ibfk_1` (`usertype`);

--
-- Indexes for table `usertype`
--
ALTER TABLE `usertype`
  ADD PRIMARY KEY (`type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `film`
--
ALTER TABLE `film`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `foods`
--
ALTER TABLE `foods`
  MODIFY `id_food` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `nation`
--
ALTER TABLE `nation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `nav-menu`
--
ALTER TABLE `nav-menu`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `screens`
--
ALTER TABLE `screens`
  MODIFY `id_screens` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `series-movie`
--
ALTER TABLE `series-movie`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `showtime`
--
ALTER TABLE `showtime`
  MODIFY `id_showtime` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `single-movie`
--
ALTER TABLE `single-movie`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `theater-movie`
--
ALTER TABLE `theater-movie`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id_ticket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `type-movie`
--
ALTER TABLE `type-movie`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `film`
--
ALTER TABLE `film`
  ADD CONSTRAINT `film_ibfk_1` FOREIGN KEY (`nation_id`) REFERENCES `nation` (`id`),
  ADD CONSTRAINT `film_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Constraints for table `seats`
--
ALTER TABLE `seats`
  ADD CONSTRAINT `seats_ibfk_1` FOREIGN KEY (`id_screens`) REFERENCES `screens` (`id_screens`);

--
-- Constraints for table `showtime`
--
ALTER TABLE `showtime`
  ADD CONSTRAINT `showtime_ibfk_1` FOREIGN KEY (`id_film`) REFERENCES `film` (`id`),
  ADD CONSTRAINT `showtime_ibfk_2` FOREIGN KEY (`id_screens`) REFERENCES `screens` (`id_screens`);

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`ID`),
  ADD CONSTRAINT `tickets_ibfk_2` FOREIGN KEY (`id_showtime`) REFERENCES `showtime` (`id_showtime`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`usertype`) REFERENCES `usertype` (`type`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
