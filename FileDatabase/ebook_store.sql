-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 03, 2022 lúc 01:33 PM
-- Phiên bản máy phục vụ: 10.4.25-MariaDB
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ebook_store`
--

DELIMITER $$
--
-- Thủ tục
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_book` (`Id` VARCHAR(10), `Des_new` TEXT, `Price_new` FLOAT)   BEGIN 
	UPDATE Book
    SET Description=Des_new, Price=Price_new
	WHERE BookID=Id;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `add`
--

CREATE TABLE `add` (
  `DateAdd` date DEFAULT NULL,
  `CartID` varchar(10) NOT NULL,
  `BookID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `ID` varchar(12) NOT NULL,
  `Salary` float NOT NULL CHECK (`Salary` >= 0),
  `StartTime` datetime DEFAULT NULL,
  `EndTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`ID`, `Salary`, `StartTime`, `EndTime`) VALUES
('1', 10000000, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `author`
--

CREATE TABLE `author` (
  `AuthorID` varchar(12) NOT NULL,
  `AuthorName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `author`
--

INSERT INTO `author` (`AuthorID`, `AuthorName`) VALUES
('DC', 'Dale Carnegie'),
('EO', 'Eiichiro Oda'),
('EP', 'Emma Phạm'),
('GA', 'Gege Akutami'),
('HM', 'Hamish McKenzie'),
('HS', 'Hubert Seipel'),
('JCP', 'Jean Claude Pomonti'),
('JM', 'Jacob Morga'),
('KG', 'Koyoharu Gotouge'),
('Khotudien', 'Khotudien'),
('KM', 'Kenya Matsuda'),
('LTD', 'Lê Thẩm Dương'),
('MT', 'Masato Takeuchi'),
('MW', 'Matthew Walker'),
('NHQ', 'Nguyễn Hồng Quân'),
('NK', 'Nishi Katsuzo'),
('NM', 'Niccolò Machiavelli'),
('NTG', 'Nhiều Tác Giả'),
('NVCS', 'NVCS'),
('PC', 'Paulo Coelho'),
('PR', 'Paul Ricoeur'),
('RCM', 'Robert Cecil Martin'),
('RH', 'Reed Hastings'),
('SGM', 'Steven G Mandis'),
('SL', 'Shifra Lushka'),
('SSRS', 'Sri Sri Ravi Shankar'),
('TA', 'Trang Anh'),
('TDJL', 'TS David J Lieberman'),
('THE', 'T Harv Eker');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `book`
--

CREATE TABLE `book` (
  `BookID` varchar(10) NOT NULL,
  `Type` varchar(40) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `Price` float NOT NULL CHECK (`Price` >= 0),
  `BookName` varchar(50) NOT NULL,
  `PublisherName` varchar(50) DEFAULT NULL,
  `BookFile` varchar(255) NOT NULL,
  `image1` varchar(255) DEFAULT NULL,
  `image2` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `book`
--

INSERT INTO `book` (`BookID`, `Type`, `Description`, `Price`, `BookName`, `PublisherName`, `BookFile`, `image1`, `image2`) VALUES
('01', 'Báo - Tạp Chí', '                    Những người phụ nữ lần đầu mang thai và sắp sửa được làm mẹ, bạn có cảm thấy hoang mang với thời đại này vì quá nhiều thông tin kiến thức liên quan đến thai nhi và kiến thức sinh nở. Cách tốt nhất tôi muốn khuyên bạn rằng: “Hãy thu thập thông tin từ nguồn chính thống và lắng nghe tiếng nói của bản thân mình.”\r\n\r\n“Lần đầu làm mẹ” của bác sĩ sản phụ khoa Masato Takeuchi sẽ giúp bạn thực sự yên tâm hơn với những mối lo lắng của bạn. Tập hợp một cách tỉ mỉ, chi tiết tất cả các vấn đề mà bắt buộc bạn phải biết và trải qua khi lần đầu làm mẹ. Cuốn sách này sẽ giải đáp cho bạn giải quyết được:\r\n\r\nNhững điều lo lắng của những người làm mẹ.\r\n\r\nNhững điều cần biết, nên làm và không nên làm dành cho những người lần đầu làm mẹ.\r\n\r\nNhững dấu hiệu mà người mang thai sẽ phải trải qua\r\n\r\nCó một điều mà các bà mẹ lưu ý đó là vấn đề về quy luật sinh nở tự nhiên. Cách sống và môi trường sống hiện tại là điều làm bạn không thể so sánh với những ông bà ta khi xưa, thế nên bạn phải hiểu đúng về luật sinh nở tự nhiên để mọi thứ sẽ được diễn ra tốt đẹp nhất.\r\n\r\nCuốn sách mặc dù dài 344 trang, bao gồm 8 phần tuy nhiên kiến thức sẽ được tổng hợp thành từng mục và sẽ chia thành 3 phần chính:\r\n\r\nGiới thiệu cụ thể về sự thay đổi của cơ thể khi mang thai và sự phát triển của thai nhi. Trong phần này sẽ có:\r\n\r\nLời dặn dò từ tổng biên tập, bác sĩ Masato Takeuchi: sẽ giúp các mẹ bầu cảm thấy ấm áp, có thêm dũng khí và sức mạnh.\r\n\r\nGiải thích về những thay đổi cơ thể của  thai phụ trong suốt 10 tháng thai kỳ: bằng hình ảnh minh họa và câu chữ súc tích, ngắn gọn. Cũng có những lưu ý về các vấn đề mà thai phụ thường gặp nữa.\r\n\r\nDanh sách tiện lợi: Tập hợp những việc cần làm trong từng giai đoạn. Các danh sách này nằm ở nhiều trang nên có thể dùng như sổ tay ghi nhớ.\r\n\r\nSự phát triển của thai nhi trong 10 tháng thai kỳ: được minh họa bằng hình vẽ với kích cỡ thật. Áp hình vẽ này lên bụng, các mẹ bầu sẽ dễ dàng tưởng tượng em bé đã lớn đến chừng nào rồi.\r\n\r\nGiới thiệu các bước cơ bản trong việc vệ sinh và chăm sóc trẻ sơ sinh: cùng với những vật dụng cần thiết đúng cách, giúp ích cho các cặp đôi lần đầu làm cha mẹ. Giải thích cẩn thận và  rõ ràng các loại bệnh: cũng như các vấn đề thai phụ hay gặp phải trong khi mang thai, sinh nở kèm theo các cách dự phòng và trị liệu.\r\n\r\nBạn có nghĩ rằng việc mang thai một đứa con là một cơ hội tuyệt vời để xem xét lại bản thân mình hay không và đó là một quá trình giúp người mẹ trưởng thành hơn? Vì từ khi có con phải thay đổi mọi thứ từ cách ăn uống, nếp sinh hoạt thường ngày, cách làm việc, quản lý thời gian,…. Và cũng không nên quá lo lắng... ... các sản phụ nên tin tưởng vào sức sống của thai nhi, vào sức mạnh  làm mẹ của chính mình  để trải qua thời  kỳ mang thai  và sinh nở  một cách hạnh  phúc nhé!\r\n\r\nMã hàng	8935280908031\r\nTên Nhà Cung Cấp	Thái Hà\r\nTác giả	Masato Takeuchi\r\nNXB	NXB Lao Động\r\nNăm XB	2021\r\nTrọng lượng (gr)	599\r\nKích Thước Bao Bì	23 x 18 x 2 cm\r\nSố trang	340\r\nHình thức	Bìa Mềm\r\nSản phẩm hiển thị trong	\r\nCửa Tiệm Giấc Mơ - Đồ Chơi\r\nMón Quà Trung Thu\r\nThái Hà\r\nSách Thiếu Nhi - Nuôi Dưỡng Tương Lai\r\nSản phẩm bán chạy nhất	Top 100 sản phẩm Dành Cho Mẹ Bầu bán chạy của tháng\r\nGiá sản phẩm trên Fahasa.com đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như Phụ phí đóng gói, phí vận chuyển, phụ phí hàng cồng kềnh,...\r\nLần Đầu Làm Mẹ\r\n\r\nNhững người phụ nữ lần đầu mang thai và sắp sửa được làm mẹ, bạn có cảm thấy hoang mang với thời đại này vì quá nhiều thông tin kiến thức liên quan đến thai nhi và kiến thức sinh nở. Cách tốt nhất tôi muốn khuyên bạn rằng: “Hãy thu thập thông tin từ nguồn chính thống và lắng nghe tiếng nói của bản thân mình.”\r\n\r\n“Lần đầu làm mẹ” của bác sĩ sản phụ khoa Masato Takeuchi sẽ giúp bạn thực sự yên tâm hơn với những mối lo lắng của bạn. Tập hợp một cách tỉ mỉ, chi tiết tất cả các vấn đề mà bắt buộc bạn phải biết và trải qua khi lần đầu làm mẹ. Cuốn sách này sẽ giải đáp cho bạn giải quyết được:\r\n\r\nNhững điều lo lắng của những người làm mẹ.\r\n\r\nNhững điều cần biết, nên làm và không nên làm dành cho những người lần đầu làm mẹ.\r\n\r\nNhững dấu hiệu mà người mang thai sẽ phải trải qua\r\n\r\nCó một điều mà các bà mẹ lưu ý đó là vấn đề về quy luật sinh nở tự nhiên. Cách sống và môi trường sống hiện tại là điều làm bạn không thể so sánh với những ông bà ta khi xưa, thế nên bạn phải hiểu đúng về luật sinh nở tự nhiên để mọi thứ sẽ được diễn ra tốt đẹp nhất.\r\n\r\nCuốn sách mặc dù dài 344 trang, bao gồm 8 phần tuy nhiên kiến thức sẽ được tổng hợp thành từng mục và sẽ chia thành 3 phần chính:\r\n\r\nGiới thiệu cụ thể về sự thay đổi của cơ thể khi mang thai và sự phát triển của thai nhi. Trong phần này sẽ có:\r\n\r\nLời dặn dò từ tổng biên tập, bác sĩ Masato Takeuchi: sẽ giúp các mẹ bầu cảm thấy ấm áp, có thêm dũng khí và sức mạnh.\r\n\r\nGiải thích về những thay đổi cơ thể của  thai phụ trong suốt 10 tháng thai kỳ: bằng hình ảnh minh họa và câu chữ súc tích, ngắn gọn. Cũng có những lưu ý về các vấn đề mà thai phụ thường gặp nữa.\r\n\r\nDanh sách tiện lợi: Tập hợp những việc cần làm trong từng giai đoạn. Các danh sách này nằm ở nhiều trang nên có thể dùng như sổ tay ghi nhớ.\r\n\r\nSự phát triển của thai nhi trong 10 tháng thai kỳ: được minh họa bằng hình vẽ với kích cỡ thật. Áp hình vẽ này lên bụng, các mẹ bầu sẽ dễ dàng tưởng tượng em bé đã lớn đến chừng nào rồi.\r\n\r\nGiới thiệu các bước cơ bản trong việc vệ sinh và chăm sóc trẻ sơ sinh: cùng với những vật dụng cần thiết đúng cách, giúp ích cho các cặp đôi lần đầu làm cha mẹ. Giải thích cẩn thận và  rõ ràng các loại bệnh: cũng như các vấn đề thai phụ hay gặp phải trong khi mang thai, sinh nở kèm theo các cách dự phòng và trị liệu.\r\n\r\nBạn có nghĩ rằng việc mang thai một đứa con là một cơ hội tuyệt vời để xem xét lại bản thân mình hay không và đó là một quá trình giúp người mẹ trưởng thành hơn? Vì từ khi có con phải thay đổi mọi thứ từ cách ăn uống, nếp sinh hoạt thường ngày, cách làm việc, quản lý thời gian,…. Và cũng không nên quá lo lắng... ... các sản phụ nên tin tưởng vào sức sống của thai nhi, vào sức mạnh  làm mẹ của chính mình  để trải qua thời  kỳ mang thai  và sinh nở  một cách hạnh  phúc nhé!                ', 168000, 'Lần đầu làm mẹ', 'Báo Sinh Viên VN - Hoa Học Trò', 'https://cdn0.fahasa.com/media/catalog/product/i/m/image_235121.jpg', 'https://cdn0.fahasa.com/media/flashmagazine/images/page_images/lan_dau_lam_me/2021_06_04_14_33_33_2-390x510.jpg', 'https://cdn0.fahasa.com/media/flashmagazine/images/page_images/lan_dau_lam_me/2021_06_04_14_33_33_5-390x510.jpg'),
('02', 'Văn Học', 'Tất cả những trải nghiệm trong chuyến phiêu du theo đuổi vận mệnh của mình đã giúp Santiago thấu hiểu được ý nghĩa sâu xa nhất của hạnh phúc, hòa hợp với vũ trụ và con người. \r\n\r\nTiểu thuyết Nhà giả kim của Paulo Coelho như một câu chuyện cổ tích giản dị, nhân ái, giàu chất thơ, thấm đẫm những minh triết huyền bí của phương Đông. Trong lần xuất bản đầu tiên tại Brazil vào năm 1988, sách chỉ bán được 900 bản. Nhưng, với số phận đặc biệt của cuốn sách dành cho toàn nhân loại, vượt ra ngoài biên giới quốc gia, Nhà giả kim đã làm rung động hàng triệu tâm hồn, trở thành một trong những cuốn sách bán chạy nhất mọi thời đại, và có thể làm thay đổi cuộc đời người đọc.\r\n\r\n“Nhưng nhà luyện kim đan không quan tâm mấy đến những điều ấy. Ông đã từng thấy nhiều người đến rồi đi, trong khi ốc đảo và sa mạc vẫn là ốc đảo và sa mạc. Ông đã thấy vua chúa và kẻ ăn xin đi qua biển cát này, cái biển cát thường xuyên thay hình đổi dạng vì gió thổi nhưng vẫn mãi mãi là biển cát mà ông đã biết từ thuở nhỏ. Tuy vậy, tự đáy lòng mình, ông không thể không cảm thấy vui trước hạnh phúc của mỗi người lữ khách, sau bao ngày chỉ có cát vàng với trời xanh nay được thấy chà là xanh tươi hiện ra trước mắt. ‘Có thể Thượng đế tạo ra sa mạc chỉ để cho con người biết quý trọng cây chà là,’ ông nghĩ.”\r\n\r\n- Trích Nhà giả kim\r\n\r\nNhận định\r\n\r\n“Sau Garcia Márquez, đây là nhà văn Mỹ Latinh được đọc nhiều nhất thế giới.” - The Economist, London, Anh\r\n\r\n \r\n\r\n“Santiago có khả năng cảm nhận bằng trái tim như Hoàng tử bé của Saint-Exupéry.” - Frankfurter Allgemeine Zeitung, Đức\r\n\r\nMã hàng	8935235226272\r\nTên Nhà Cung Cấp	Nhã Nam\r\nTác giả	Paulo Coelho\r\nNgười Dịch	Lê Chu Cầu\r\nNXB	NXB Hội Nhà Văn\r\nNăm XB	2020\r\nTrọng lượng (gr)	220\r\nKích Thước Bao Bì	20.5 x 13 cm\r\nSố trang	227\r\nHình thức	Bìa Mềm\r\nSản phẩm hiển thị trong	\r\nĐồ Chơi Cho Bé - Giá Cực Tốt\r\nNhã Nam\r\nTop sách được phiên dịch nhiều nhất\r\nRƯỚC DEAL LINH ĐÌNH VUI ĐÓN TRUNG THU\r\nSản phẩm bán chạy nhất	Top 100 sản phẩm Tiểu thuyết bán chạy của tháng\r\nGiá sản phẩm trên Fahasa.com đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như Phụ phí đóng gói, phí vận chuyển, phụ phí hàng cồng kềnh,...\r\nTất cả những trải nghiệm trong chuyến phiêu du theo đuổi vận mệnh của mình đã giúp Santiago thấu hiểu được ý nghĩa sâu xa nhất của hạnh phúc, hòa hợp với vũ trụ và con người. \r\n\r\nTiểu thuyết Nhà giả kim của Paulo Coelho như một câu chuyện cổ tích giản dị, nhân ái, giàu chất thơ, thấm đẫm những minh triết huyền bí của phương Đông. Trong lần xuất bản đầu tiên tại Brazil vào năm 1988, sách chỉ bán được 900 bản. Nhưng, với số phận đặc biệt của cuốn sách dành cho toàn nhân loại, vượt ra ngoài biên giới quốc gia, Nhà giả kim đã làm rung động hàng triệu tâm hồn, trở thành một trong những cuốn sách bán chạy nhất mọi thời đại, và có thể làm thay đổi cuộc đời người đọc.\r\n\r\n“Nhưng nhà luyện kim đan không quan tâm mấy đến những điều ấy. Ông đã từng thấy nhiều người đến rồi đi, trong khi ốc đảo và sa mạc vẫn là ốc đảo và sa mạc. Ông đã thấy vua chúa và kẻ ăn xin đi qua biển cát này, cái biển cát thường xuyên thay hình đổi dạng vì gió thổi nhưng vẫn mãi mãi là biển cát mà ông đã biết từ thuở nhỏ. Tuy vậy, tự đáy lòng mình, ông không thể không cảm thấy vui trước hạnh phúc của mỗi người lữ khách, sau bao ngày chỉ có cát vàng với trời xanh nay được thấy chà là xanh tươi hiện ra trước mắt. ‘Có thể Thượng đế tạo ra sa mạc chỉ để cho con người biết quý trọng cây chà là,’ ông nghĩ.”\r\n\r\n- Trích Nhà giả kim', 55000, 'Nhà Giả Kim', 'NXB Hội Nhà Văn', 'https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_36793.jpg', 'https://cdn0.fahasa.com/media/catalog/product/8/9/8935235226272_1.jpg', 'https://cdn0.fahasa.com/media/catalog/product/8/9/8935235226272_2.jpg'),
('03', 'Tâm Lý', 'Đắc nhân tâm của Dale Carnegie là quyển sách của mọi thời đại và một hiện tượng đáng kinh ngạc trong ngành xuất bản Hoa Kỳ. Trong suốt nhiều thập kỷ tiếp theo và cho đến tận bây giờ, tác phẩm này vẫn chiếm vị trí số một trong danh mục sách bán chạy nhất và trở thành một sự kiện có một không hai trong lịch sử ngành xuất bản thế giới và được đánh giá là một quyển sách có tầm ảnh hưởng nhất mọi thời đại.\r\n\r\nĐây là cuốn sách độc nhất về thể loại self-help sở hữu một lượng lớn người hâm mộ. Ngoài ra cuốn sách có doanh số bán ra cao nhất được tờ báo The New York Times bình chọn trong nhiều năm. Cuốn sách này không còn là một tác phẩm về nghệ thuật đơn thuần nữa mà là một bước thay đổi lớn trong cuộc sống của mỗi người.\r\n\r\nNhờ có tầm hiểu biết rộng rãi và khả năng ‘ứng xử một cách nghệ thuật trong giao  tiếp’ – Dale Carnegie đã viết ra một quyển sách với góc nhìn độc đáo và mới mẻ trong giao tiếp hàng ngày một cách vô cùng thú vị – Thông qua những mẫu truyện rời rạc nhưng lại đầy lý lẽ thuyết phục. Từ đó tìm ra những kinh nghiệm để đúc kết ra những nguyên tắc vô cùng ‘ngược ngạo’, nhưng cũng rất logic dưới cái nhìn vừa sâu sắc, vừa thực tế.\r\n\r\nHơn thế nữa, Đắc Nhân Tâm còn đưa ra những nghịch lý mà từ lâu con người ta đã hiểu lầm về phương hướng giao tiếp trong mạng lưới xã hội, thì ra, người giao tiếp thông minh không phải là người có thể phát biểu ra những lời hay nhất, mà là những người học được cách mỉm cười, luôn biết cách lắng nghe, và khích lệ câu chuyện của người khác.\r\n\r\nCuốn sách Đắc Nhân Tâm được chia ra làm 4 nội dung chính và mỗi phần cũng là một bài học về cuộc sống.\r\n\r\nPhần 1: Nghệ thuật ứng xử cơ bản\r\n\r\n- Không nên trách móc và than phiền, thù oán\r\n\r\n- Muốn lấy được mật ong thì không nên phá tổ\r\n\r\n- Trách móc một người nào đó là một việc dễ dàng. Thay vào đó, bạn hãy ngó lơ sự phán xét đó mà rộng lượng. Đồng thời tha thứ cho người đó và bỏ qua hết mọi chuyện thì mới đáng được tự hào.\r\n\r\n- Biết khen ngợi và nhận được ơn nghĩa của người khác mới là bí mật lớn nhất về phép cư xử.\r\n\r\n- Bạn cần phải biết khen ngợi và biết ơn người khác một cách thành thật nhất, chính là chìa khóa tạo nên tình nhân ái.\r\n\r\nPhần 2:\r\n\r\n- Bạn nên thật lòng quan tâm đến người khác\r\n\r\n- Mỉm cười đó là cách để tạo ấn tượng tốt nhất\r\n\r\n- Hay ghi nhớ lấy tên của người bạn đã và đang giao tiếp với bạn\r\n\r\n- Bạn nên lắng nghe và khuyến khích người khác để trở thành người có khả năng giao tiếp cao\r\n\r\n- Hãy nói về cái mà người khác để ý sẽ thu hút được người đó\r\n\r\nPhần 3: Cách hướng người khác làm theo suy nghĩ của mình\r\n\r\n- Không được để ra tranh cãi và cách giải quyết tốt nhất đó là không nên để nó xảy ra\r\n\r\n- Tôn trọng ý kiến của mọi người, không bao giờ được nói người khác sai\r\n\r\n- Thừa nhận được sai làm của mình, nếu phạm phải thì bạn cần phải thừa nhận điều đó\r\n\r\n- Bạn cần phải hỏi những câu hỏi cần thiết để họ trả lời bạn bằng tiếng vâng ngay lập tức\r\n\r\n- Khi nói chuyện bạn hãy để cho đối phương cảm nhận được họ làm chủ trong câu chuyện\r\n\r\n- Để nhận được sự hợp tác thì bạn cần phải để họ nghĩ họ là người đưa ra ý tưởng\r\n\r\n- Bạn cần phải đặt mình vào hoàn cảnh của họ để có thể hiểu hết về bản thân của họ\r\n\r\n- Bạn hãy đồng cảm với mong muốn của mọi người\r\n\r\n- Trong cuộc sống bạn hãy gợi lên sự cao thượng\r\n\r\n- Thân thiện trong giao tiếp đó chính là sử dụng mật ngọt để bắt đầu được câu chuyện\r\n\r\n- Bạn nên trình bày một cách rõ ràng và sinh động nhất\r\n\r\n- Trong cuộc sống bạn cần phải vượt lên được thử thách\r\n\r\n- Trước khi phê bình người khác bạn hãy khen ngợi người đó\r\n\r\n- Khi phê bình bạn nên phê bình một cách gián tiếp\r\n\r\n- Bạn nên khen ngợi người khác để có được một cuộc sống xứng đáng\r\n\r\n- Bạn nên mở đường cho người khác để khắc phục sai lầm\r\n\r\n- Bạn nên tôn vinh người khác khi nói chuyện\r\n\r\n- Trước khi phê bình người khác thì bạn nên nhìn nhận lại bản thân của mình\r\n\r\n- Thay vì ra lệnh cho người khác thì bạn hãy gợi ý cho họ\r\n\r\n- Trong mọi chuyện bạn nên giữ thể diện cho người khác\r\n\r\n- Bạn cần phải lưu ý những mối quan hệ của mình\r\n\r\nPhần 4: Chuyển hóa được con người và không tạo lên sự oán hận và chống đối\r\n\r\nBáo chí nhắc gì về “Đắc Nhân Tâm”\r\n\r\n“Nói đến sách nghệ thuật ứng xử thì không thể không nhắc đến \"Đắc nhân tâm\" của Dale Carnegie. Đây là một trong những cuốn sách gối đầu của nhiều thế hệ đi trước và ngày nay. Với chặng đường hơn 80 năm kể từ khi lần đầu được xuất bản, \"Đắc nhân tâm\" đã mang đến cho chúng ta bài học vô cùng giá trị đó là nghệ thuật ứng xử để được lòng người. \"Đắc nhân tâm\" là quyển sách nổi tiếng và bán chạy nhất và có mặt ở hàng trăm quốc gia khác nhau, và hơn thế nữa đây còn là quyển sách liên tục đứng đầu danh mục sách bán chạy nhất do thời báo NewYork Times bình chọn trọng suốt 10 năm liền.” – Cafebiz.vn, 3 cuốn sách nên đọc đi đọc lại trong đời để ngẫm về cuộc sống\r\n\r\n“Đắc Nhân Tâm – của tác giả Dale Carnegie là quyển sách nổi tiếng nhất, bán chạy nhất và có tầm ảnh hưởng nhất của mọi thời đại. Tác phẩm đã được chuyển ngữ sang hầu hết các thứ tiếng trên thế giới và có mặt ở hàng trăm quốc gia. Một khám phá rất thú vị dành cho các bậc phụ huynh khi đọc cuốn sách này là biết cách lắng nghe trò chuyện cùng con, cách trị chứng tè dầm của trẻ nhỏ, hay cách làm cho một đứa trẻ từ quậy phá thành ngoan ngoãn… Đó hẳn là những câu chuyện nuôi dạy trẻ rất đúng, rất hay, rất đời thường đáng để bạn đọc suy ngẫm và chiêm nghiệm”. – Motthegioi.vn, Đắc nhân tâm: ‘Cha đã quên’ nhắc những điều nên nhớ\r\n\r\n“Đắc Nhân Tâm” đưa ra những lời khuyên về cách cư xử, ứng xử và giao tiếp với mọi người để đạt được thành công trong cuộc sống. Đây được coi là một trong những cuốn sách nổi tiếng nhất, bán chạy nhất và có tầm ảnh hưởng nhất mọi thời đại mà bạn không nên bỏ qua.” – Cafef.vn, 20 câu nói vàng đáng nhớ từ tuyệt tác để đời “Đắc Nhân Tâm”\r\n\r\nVề tác giả\r\n\r\nDale Breckenridge Carnegie (24 tháng 11 năm 1888 – 1 tháng 11 năm 1955) là một nhà văn và nhà thuyết trình Mỹ và là người phát triển các lớp tự giáo dục, nghệ thuật bán hàng, huấn luyện đoàn thể, nói trước công chúng và các kỹ năng giao tiếp giữa mọi người. Ra đời trong cảnh nghèo đói tại một trang trại ở Missouri, ông là tác giả cuốn Đắc Nhân Tâm, được xuất bản lần đầu năm 1936, một cuốn sách thuộc hàng bán chạy nhất và được biết đến nhiều nhất cho đến tận ngày nay. Ông cũng viết một cuốn tiểu sử Abraham Lincoln, với tựa đề Lincoln con người chưa biết, và nhiều cuốn sách khác.\r\n\r\nCarnegie là một trong những người đầu tiên đề xuất cái ngày nay được gọi là đảm đương trách nhiệm, dù nó chỉ được đề cập tỉ mỉ trong tác phẩm viết của ông. Một trong những ý tưởng chủ chốt trong những cuốn sách của ông là có thể thay đổi thái độ của người khác khi thay đổi sự đối xử của ta với họ.\r\n\r\nMã hàng	8935086854754\r\nTên Nhà Cung Cấp	FIRST NEWS\r\nTác giả	Dale Carnegie\r\nNgười Dịch	Nguyễn Văn Phước\r\nNXB	NXB Tổng Hợp TPHCM\r\nNăm XB	2021\r\nNgôn Ngữ	Tiếng Việt\r\nTrọng lượng (gr)	350\r\nKích Thước Bao Bì	20.5 x 14.5 cm\r\nSố trang	320\r\nHình thức	Bìa Mềm\r\nSản phẩm hiển thị trong	\r\nTủ Sách Tâm Lý Kỹ Năng\r\nSản phẩm bán chạy nhất	Top 100 sản phẩm Rèn luyện nhân cách bán chạy của tháng\r\nGiá sản phẩm trên Fahasa.com đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như Phụ phí đóng gói, phí vận chuyển, phụ phí hàng cồng kềnh,...\r\nĐắc nhân tâm của Dale Carnegie là quyển sách của mọi thời đại và một hiện tượng đáng kinh ngạc trong ngành xuất bản Hoa Kỳ. Trong suốt nhiều thập kỷ tiếp theo và cho đến tận bây giờ, tác phẩm này vẫn chiếm vị trí số một trong danh mục sách bán chạy nhất và trở thành một sự kiện có một không hai trong lịch sử ngành xuất bản thế giới và được đánh giá là một quyển sách có tầm ảnh hưởng nhất mọi thời đại.\r\n\r\nĐây là cuốn sách độc nhất về thể loại self-help sở hữu một lượng lớn người hâm mộ. Ngoài ra cuốn sách có doanh số bán ra cao nhất được tờ báo The New York Times bình chọn trong nhiều năm. Cuốn sách này không còn là một tác phẩm về nghệ thuật đơn thuần nữa mà là một bước thay đổi lớn trong cuộc sống của mỗi người.\r\n\r\nNhờ có tầm hiểu biết rộng rãi và khả năng ‘ứng xử một cách nghệ thuật trong giao  tiếp’ – Dale Carnegie đã viết ra một quyển sách với góc nhìn độc đáo và mới mẻ trong giao tiếp hàng ngày một cách vô cùng thú vị – Thông qua những mẫu truyện rời rạc nhưng lại đầy lý lẽ thuyết phục. Từ đó tìm ra những kinh nghiệm để đúc kết ra những nguyên tắc vô cùng ‘ngược ngạo’, nhưng cũng rất logic dưới cái nhìn vừa sâu sắc, vừa thực tế.\r\n\r\nHơn thế nữa, Đắc Nhân Tâm còn đưa ra những nghịch lý mà từ lâu con người ta đã hiểu lầm về phương hướng giao tiếp trong mạng lưới xã hội, thì ra, người giao tiếp thông minh không phải là người có thể phát biểu ra những lời hay nhất, mà là những người học được cách mỉm cười, luôn biết cách lắng nghe, và khích lệ câu chuyện của người khác.', 56000, 'Đắc Nhân Tâm', 'NXB Tổng Hợp TPHCM', 'https://cdn0.fahasa.com/media/catalog/product/d/n/dntttttuntitled.jpg', 'https://cdn0.fahasa.com/media/catalog/product/d/a/dacnhantam-03_1_1.jpg', 'https://cdn0.fahasa.com/media/catalog/product/d/a/dacnhantam-04_1_1.jpg'),
('04', 'Kinh Tế', 'Trong cuốn sách này T. Harv Eker sẽ tiết lộ những bí mật tại sao một số người lại đạt được những thành công vượt bậc, được số phận ban cho cuộc sống sung túc, giàu có, trong khi một số người khác phải chật vật, vất vả mới có một cuộc sống qua ngày. Bạn sẽ hiểu được nguồn gốc sự thật và những yếu tố quyết định thành công, thất bại để rồi áp dụng, thay đổi cách suy nghĩ, lên kế hoạch rồi tìm ra cách làm việc, đầu tư, sử dụng nguồn tài chính của bạn theo hướng hiệu quả nhất.\n\nCuốn sách dành cho những ai còn loay hoay muốn tìm đường đến sự giàu có và thành công. “Bí mật tự duy triệu phú” mang đến nhiều tư duy mới cho người đọc về cách suy nghĩ của người giàu hay cách suy nghĩ để trở nên giàu có.\n\nTrong cuốn sách, Eker liệt kê 17 cách thức mà các kế hoạch chi tiết tài chính của những người giàu khác với người nghèo và tầng lớp trung lưu. Một chủ đề được xác định trong sách này là loại bỏ các suy nghĩ đổ lỗi cho sự thất bại. Eker lập luận rằng: Người giàu tin \"Tôi tạo ra cuộc sống của tôi\", còn những người nghèo cho rằng \"Cuộc sống sẽ tự nhiên đến với tôi\"; người giàu tập trung vào các cơ hội trong khi người nghèo tập trung vào những trở ngại; và những người giàu ngưỡng mộ những người giàu có và thành công khác trong khi người dân nghèo ghen tị, bực tức trước những người thành công và giàu có.\n\nBí mật tư duy triệu phú là tác phẩm nổi tiếng thế giới được thời báo New York Times, Wall Street Journal và USB Today bình chọn là cuốn sách hay nhất, bán chạy nhất trong nhiều năm.\n\nNgười nổi tiếng nói về “Bí mật tư duy triệu phú”:\n\n· \"Ai cũng có một cuộc sống, ai cũng làm việc cần cù, ai cũng ước mơ được thành công, nhưng không mấy ai may mắn học được cách tư duy độc đáo và tầm nhìn của những tỷ phú lừng danh đã tiết lộ trong cuốn sách giá trị này...\" - Wall Street Journal\n\n· “Đây chính là một trong những cuốn sách giàu ảnh hưởng, rất thuyết phục và thực tế nhất về cách trở nên giàu có mà các bạn từng đọc được” – Brian Tracy (Tác giả cuốn sách Làm giàu theo cách của bạn)\n\n· “Hãy nghiền ngẫm cuốn sách này như thể cuộc đời rồi sẽ phụ thuộc vào nó… về phương diện tài chính thì khả dĩ lắm đấy” – Anthony Robbins (Nhà diễn thuyết, tác giả cuốn sách nổi tiếng Đánh thức con người phi thường trong bạn)\n\n· “Bạn cần được TÁI - GIÁO DỤC nếu bạn muốn TÁI ĐỊNH NGHĨA số mệnh tài chính của mình.  Đó cũng chính là những thứ bạn sẽ được học tại : BÍ MẬT TƯ DUY TRIỆU PHÚ - MILLIONAIRE MIND INTENSIVE (NWA)” -  Phạm Tuấn Sơn: Doanh Nhân tiêu biểu Việt Nam - Tác giả cuốn Dám làm giàu - Chủ tịch HĐQT công ty CP Babylons \n\nBáo chí nói gì về “Bí mật tư duy triệu phú”:\n\n·“Những tiết lộ cách tư duy độc đáo và tầm nhìn về phương pháp quản lí tiền bạc của triệu phú T. Harv Eker sẽ giúp các bạn thành công hơn trong việc quản lí tài chính hiện tại, tích lũy cho tương lai.” – dantri.com\n\n·“Bí mật tư duy triệu phú của tác giả T.Harv Eker là cuốn cẩm nang sẽ hướng dẫn bạn cách tư duy cũng như thách thức những mặt còn hạn chế của con người trong đó có các suy nghĩ, thói quen, hành động không tích cực liên quan đến tiền bạc.” – doanhnhansaigon.vn\n\n\"Bí mật tư duy triệu phú\" giúp khám phá ra bản kế hoạch tài chính trong tâm thức của mình, phát hiện những niềm tin, suy nghĩ tiêu cực, hạn chế về đồng tiền đã khiến cho họ chưa thành công về tài chính như mong muốn, giúp xóa bỏ ngay những niềm tin, suy nghĩ tiêu cực. – vnexpress.vn\n\n“Sự khác biệt giữa người giàu và người nghèo: Tác giả người Canada T. Harv Eker sẽ giúp bạn trả lời cho câu hỏi điều gì làm nên sự khác nhau đó thông qua cuốn sách \"Bí mật tư duy triệu phú\" – zing.vn\n\n“Bạn có biết 95% triệu phú trên thế giới đều tay trắng làm nên, và 50% trong số họ đều đã từng trắng tay và làm lại từ đầu. Vậy tại sao xuất phát điểm giữa họ và người nghèo đều như nhau mà lại có sự khác biệt như vậy. Một ngày tình cờ tôi được một người bạn giới thiệu “Bí mật tư duy triệu phú” của T.Harv Eker một cuốn sách đã giúp tôi thay đổi hoàn toàn tư duy về sự giàu có” – daututhanhcong.com\n\n“Chương trình \"Tư duy triệu phú\" (Millionaire Mind Intensive - MMI) đã được tổ chức tại hơn 80 nước trên khắp các châu lục, giúp thay đổi cuộc sống của hàng triệu người tham gia. Và Tharv Eker - triệu phú người Mỹ, doanh nhân, diễn giả nổi tiếng, người bán hàng bậc thầy thế giới cũng chính là tác giả cuốn sách nổi tiếng bán chạy nhất \"Bí mật tư duy triệu phú\" (The Secret Of Millionaire Mind)” – ndh.vn \n\nVề tác giả:\n\nT. Harv Eker lớn lên ở Toronto. Bố mẹ ông là người châu Âu nhập cư, họ đến Bắc Mỹ sau chiến tranh thế giới lần thứ hai với toàn bộ tài sản với chỉ vỏn vẹn 30 đô la. Tuổi thơ nghèo khổ, Eker đã phải kiếm sống bằng nhiều việc như đi giao báo, bán kem, bán hàng ở các hội chợ, bán kem chống nắng ở bãi biển khi mới 13 tuổi. Đôi khi, ông hỏi xin tiền bố nhưng chẳng bao giờ nhận được. Sau khi tốt nghiệp trung học ông học 1 năm tại Đại học New York sau đó bỏ giữa chừng.\n\nNhững năm đầu thời thanh niên, Eker sống ở 5 thành phố khác nhau, trong đó có Lake Tahoe và Ft. Lauderdale. Ông làm rất nhiều công việc khác nhau với hơn mười hai ngành nghề. Là một người thông minh và đầy tham vọng, mục tiêu của Eker là thành công với chính công ty mình lập ra và trở thành triệu phú. Nhưng cuối cùng dù có làm gì, làm việc chăm chỉ đến đâu, ông vẫn không thành công.\n\nSau những thất bại đầu tiên, T Harv Eker trở về sống bên cha mẹ. Vào một ngày, khi đang ở trong phòng hầm của nhà mình, người bạn giàu có của cha mình đi xuống gặp ông. Người đàn ông này cảm thấy tiếc cho Eker và ông nói với Eker về bí mật của những người giàu có: \"Eker, khi bằng tuổi cháu, bác còn không làm được nhiều thứ như cháu. Tuy nhiên, mọi thứ đã thay đổi kể từ khi bác biết về những bí mật của người giàu. Và bây giờ, bác muốn kể lại cho cháu\".\n\nChính câu chuyện của người bạn cha mình đã thay đổi cả cuộc đời của Eker sau này. Ông học được sự khác biệt trong suy nghĩ và cách cư xử của người giàu và người nghèo. Kể từ đó, ông bắt đầu suy nghĩ và nghiên cứu về hành vi của người giàu. Ông đã nhận ra lý do vì sao doanh nghiệp của ông lại thất bại. Thất bại của ông không phải là do lỗi của một đối tác vô trách nhiệm hay là sự thiếu may mắn trong kinh doanh mà thất bại đến từ chính cách nghĩ trước đây của ông. Ông đã luôn luôn lo lắng về tiền bạc. Đây là sai lầm phổ biến trong suy nghĩ của những người không có kế hoạch giữ tiền khôn ngoan.\n\nSau khi nhận ra vấn đề của mình, Eker luôn cố gắng suy nghĩ và làm theo cách của người giàu. Khi cảm thấy đã thực sự thấm nhuần được tư tưởng trên, ông bắt tay vào làm kinh doanh. Không có vốn, ông quyết định vay 2.000 đôla và mở một cửa hàng bán đồ thể thao. Thời gian này, ông quản lý cửa hàng theo cách của người giàu, cả trong nguyên tắc kinh doanh và trong suy nghĩ chiến lược.\n\nCuối cùng, ông đã đạt được thành công nhờ nguyên tắc trên. Chỉ trong vòng hai năm chuỗi cửa hàng của ông đã mở rộng thêm 10 chi nhánh. Sau đấy, ông đã bán 1 nửa cổ phần của mình cho Tập đoàn H. J. Heinz với giá 1,6 triệu đô và trở thành triệu phú như mong ước.\n\nTuy nhiên, chỉ không đầy 2 năm sau, toàn bộ số tiền của ông đã ra đi. Nguyên nhân do những khoản đầu tư sai lầm và chi tiêu không kiểm soát. Eker lại một lần nữa trở lại vạch xuất phát. Và chính tại thời điểm đó T. Harv Eker bắt đầu phát triển học thuyết về mối liên hệ giữa tinh thần và cảm xúc của con người với tiền bạc. Ông nhận ra rằng \"nhiệt kế tài chính\" - thước đo mức độ thành công tài chính, được cài đặt ở một con số nhất định trong mỗi người.\n\nKhám phá sâu sắc của ông đó là bản kế hoạch tài chính trong tâm thức của mỗi người có thể được thay đổi được. Eker đã thiết lập lại bản kế hoạch tài chính của mình, nó giúp ông không chỉ đạt thành công mà còn tiếp tục duy trì, phát triển và trở thành triệu triệu phú.\n\nEker là tác giả của cuốn sách bán chạy nhất \"Bí Mật Tư Duy Triệu Phú\" (Secret of Millionaire Mind)  và \"Làm Giàu Nhanh\" (Speed Wealth).\n\nT. Harv Eker là người sáng lập và là giám đốc Công ty Peak Potential Trainning, một trong những công ty đào tạo - nghiên cứu phát triển nhanh và mạnh nhất thế giới.\n\nMã hàng	8935086854624\nTên Nhà Cung Cấp	FIRST NEWS\nTác giả	T Harv Eker\nNXB	NXB Tổng Hợp TPHCM\nNăm XB	2021\nNgôn Ngữ	Tiếng Việt\nTrọng lượng (gr)	300\nKích Thước Bao Bì	20.5 x 14.5 cm\nSố trang	287\nHình thức	Bìa Mềm\nSản phẩm hiển thị trong	\nFIRST NEWS\nSản phẩm bán chạy nhất	Top 100 sản phẩm Quản Trị - Lãnh Đạo bán chạy của tháng\nGiá sản phẩm trên Fahasa.com đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như Phụ phí đóng gói, phí vận chuyển, phụ phí hàng cồng kềnh,...\nTrong cuốn sách này T. Harv Eker sẽ tiết lộ những bí mật tại sao một số người lại đạt được những thành công vượt bậc, được số phận ban cho cuộc sống sung túc, giàu có, trong khi một số người khác phải chật vật, vất vả mới có một cuộc sống qua ngày. Bạn sẽ hiểu được nguồn gốc sự thật và những yếu tố quyết định thành công, thất bại để rồi áp dụng, thay đổi cách suy nghĩ, lên kế hoạch rồi tìm ra cách làm việc, đầu tư, sử dụng nguồn tài chính của bạn theo hướng hiệu quả nhất.\n\nCuốn sách dành cho những ai còn loay hoay muốn tìm đường đến sự giàu có và thành công. “Bí mật tự duy triệu phú” mang đến nhiều tư duy mới cho người đọc về cách suy nghĩ của người giàu hay cách suy nghĩ để trở nên giàu có.\n\nTrong cuốn sách, Eker liệt kê 17 cách thức mà các kế hoạch chi tiết tài chính của những người giàu khác với người nghèo và tầng lớp trung lưu. Một chủ đề được xác định trong sách này là loại bỏ các suy nghĩ đổ lỗi cho sự thất bại. Eker lập luận rằng: Người giàu tin \"Tôi tạo ra cuộc sống của tôi\", còn những người nghèo cho rằng \"Cuộc sống sẽ tự nhiên đến với tôi\"; người giàu tập trung vào các cơ hội trong khi người nghèo tập trung vào những trở ngại; và những người giàu ngưỡng mộ những người giàu có và thành công khác trong khi người dân nghèo ghen tị, bực tức trước những người thành công và giàu có.', 79000, 'Bí Mật Tư Duy Triệu Phú', 'NXB Tổng Hợp TPHCM', 'https://cdn0.fahasa.com/media/catalog/product/i/m/image_188995_1_1.jpg', 'https://cdn0.fahasa.com/media/catalog/product/b/i/bi_mat_tu_duy_trieu_phu_1_1.jpg', 'https://cdn0.fahasa.com/media/catalog/product/b/i/bi_mat_tu_duy_trieu_phu_3_1.jpg'),
('05', 'Quản Trị - Pháp Lý ', 'Đuổi theo hình bóng nguyên Thủ tướng Nobusuke Kishi để nghiên cứu về gia tộc của Shizo Abe! Gia tộc tuyệt đỉnh duy trì “huyết thống gia tộc” bằng việc nhiều lần tiến hành cho – nhận con nuôi giữa 2 dòng họ quyền quý. Khởi đầu bởi “Quái vật Showa” Nobusuke Kishi, ngày nay cháu ngoại của ông là đương kim Thủ tướng Shinzo Abe vẫn đang mải miết phấn đấu trên chính trường với sự hỗ trợ của “Người mẹ thần thánh” Yoko Abe.', 80000, 'Shinzo Abe & Gia Tộc Tuyệt Đỉnh', 'NXB Trẻ', 'https://cdn0.fahasa.com/media/catalog/product/8/9/8934974153023_1.jpg', 'https://cdn0.fahasa.com/media/flashmagazine/images/page_images/shinzo_abe_gia_toc_tuyet_dinh/2021_06_19_11_20_23_1-390x510.jpg', 'https://cdn0.fahasa.com/media/flashmagazine/images/page_images/shinzo_abe_gia_toc_tuyet_dinh/2021_06_19_11_20_23_7-390x510.jpg'),
('06', 'Manga - Comic', 'Tại hiện trường án mạng do chú linh gây ra, Itadori đã gặp gỡ Junpei, cả hai tâm đầu ý hợp. Nhưng Junpei lại tôn sùng chú linh Mahito, thủ phạm của vụ án. Mahito lợi dụng Junpei, hòng li gián cậu và Itadori. Junpei rơi vào cạm bẫy của hắn và...', 24000, 'Chú Thuật Hồi Chiến', 'NXB Kim Đồng', 'https://cdn0.fahasa.com/media/catalog/product/c/h/chu-thuat-hoi-chien---tap-4---ta-se-diet-tru-nguoi---obi.jpg', 'https://cdn0.fahasa.com/media/catalog/product/c/h/chu_thuat_hoi_chien_-_tap_4_-_ta_se_diet_tru_nguoi.jpg', 'https://cdn0.fahasa.com/media/catalog/product/c/h/chu_thuat_hoi_chien_-_tap_4_-_ta_se_diet_tru_nguoi.jpg'),
('07', 'Manga - Comic', 'Cuộc chiến cam go với Thượng huyền nhất cuối cùng cũng đi đến hồi kết!! Sau chiến thắng một cách chật vật, cái giá phải trả là quá lớn… Mặt khác, sâu bên trong thành Vô hạn, thủy tổ của loài quỷ -Kibutsuji Muzan - đã bắt đầu hành động…! Tanjiro sẽ làm gì…!?', 25000, 'Thanh Gươm Diệt Quỷ - Kimetsu No Yaiba', 'NXB Kim Đồng', 'https://cdn0.fahasa.com/media/catalog/product/t/h/thanh-guom-diet-quy---tap-21_1_1.jpg', 'https://cdn0.fahasa.com/media/flashmagazine/images/page_images/thanh_guom_diet_quy___kimetsu_no_yaiba___tap_21_ki_uc_xa_xam_tai_ban/2021_11_18_14_12_58_1-390x510.jpg', 'https://cdn0.fahasa.com/media/flashmagazine/images/page_images/thanh_guom_diet_quy___kimetsu_no_yaiba___tap_21_ki_uc_xa_xam_tai_ban/2021_11_18_14_12_58_3-390x510.jpg'),
('08', 'Manga - Comic', 'Những nhân vật chủ chốt đều đã có mặt trên mái vòm, nhóm Luffy đối đầu với Kaido & Big Mom. Trước liên minh mạnh nhất thế giới, liệu có phép màu nào giúp bọn họ giành chiến thắng hay không!? Tương lai nào sẽ mở ra cho các chiến binh sau trận chiến cực hạn này!? Chỉ biết rằng đảo Quỷ vẫn không ngừng rung chuyển!!\r\n\r\nNhững chuyến phiêu lưu trên đại dương xoay quanh “ONE PIECE” lại bắt đầu!!', 22000, 'One Piece ', 'NXB Kim Đồng', 'https://cdn0.fahasa.com/media/catalog/product/o/n/one-piece---tap-100---bia-gap.jpg', 'https://cdn0.fahasa.com/media/catalog/product/o/n/one_piece_-_tap_100_-_bia_gap.jpg', 'https://cdn0.fahasa.com/media/catalog/product/o/n/one_piece_-_tap_100_-_bia_gap.jpg'),
('09', 'Báo - Tạp Chí', 'Thiên Thần Nhỏ phiên bản MỚI: Cùng BTS khám phá thế giới kỳ thú của những trò chơi\r\n\r\nHHT - Nếu bạn nghĩ rằng trò chơi chỉ là các game trên điện thoại máy tính hay board game thì chưa đủ đâu nhé. Thế giới trò chơi còn rộng lớn và phong phú hơn thế nhiều.\r\n\r\nBạn có đang chơi những trò từ thời ông bà mình?\r\n\r\nViệt Nam chúng mình có rất nhiều trò chơi thú vị, suốt cả trăm năm qua vẫn được lưu truyền và rất có thể tween đang chơi các trò của bố mẹ mình mà chưa biết đấy nhé.\r\n\r\nNếu có dịp lên phố đi bộ ở hồ Hoàn Kiếm, bạn sẽ thấy có một khu vực thu hút rất đông các bạn nhỏ, ai cũng say mê nghiên cứu một bàn cờ được vẽ trên mặt đường và cầm trên tay một nắm sỏi nhỏ rồi rải vào từng ô. Đó chính là ô ăn quan, một trò chơi cổ xưa giúp cho bạn rèn luyện óc tính toán thật nhanh nhạy đấy.\r\n\r\nBạn biết gì về máy chơi game rồi?\r\n\r\nMáy điện tử xếp gạch là chiếc máy chơi game đơn giản nhất, rẻ tiền nhất trong số những cỗ máy chơi game và cũng được biết đến nhiều nhất. Chiếc máy này còn được gọi là máy xếp gạch vàng vì màu vàng của vỏ máy và trong máy chỉ có 1 trò chơi duy nhất là xếp gạch.\r\n\r\nXuất hiện ở những năm cuối thập niên 90, với màn hình đơn sắc, âm thanh 8 bit và sử dụng pin để chạy nhưng thời ấy, chiếc máy này là cả một khoảng trời riêng của những người yêu game.\r\n\r\nChơi game có giúp học tốt?\r\n\r\nCó những trò chơi giúp bạn gia tăng khả năng ghi nhớ, suy nghĩ linh hoạt và học hành sẽ tốt hơn. Chẳng hạn như trò hỏi đáp mà bạn có thể chơi cùng với bố mẹ hoặc bạn bè của mình. Mỗi người sẽ cần chuẩn bị một số câu hỏi thuộc một lĩnh vực nào đó, sau đó sẽ hỏi người cùng chơi.\r\n\r\nBạn có thể tăng thêm độ khó bằng cách dùng đồng hồ để tính thời gian, ai là người trả lời đúng và nhanh nhất sẽ dành chiến thắng. Với trò chơi này, chúng mình sẽ có cơ hội được tiếp cận với nhiều thông tin ở các lĩnh vực khác nhau. Bạn cũng có thể dùng các kiến thức trong sách vừa học trong tuần làm thành câu hỏi để có thể ghi nhớ bài hơn.\r\n\r\nMã hàng	8938507002918\r\nNhà Cung Cấp	BÁO TIỀN PHONG\r\nTác giả	Nhiều Tác Giả\r\nNXB	Báo Sinh Viên VN - Hoa Học Trò\r\nNăm XB	2022\r\nNgôn Ngữ	Tiếng Việt\r\nTrọng lượng (gr)	200\r\nKích Thước Bao Bì	20.5 x 15 cm\r\nSố trang	100\r\nHình thức	Bìa Mềm\r\nSản phẩm hiển thị trong	\r\nHoa Học Trò\r\nSản phẩm bán chạy nhất	Top 100 sản phẩm Báo - Tạp Chí bán chạy của tháng\r\nGiá sản phẩm trên Fahasa.com đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như Phụ phí đóng gói, phí vận chuyển, phụ phí hàng cồng kềnh,...\r\nThiên Thần Nhỏ phiên bản MỚI: Cùng BTS khám phá thế giới kỳ thú của những trò chơi\r\n\r\nHHT - Nếu bạn nghĩ rằng trò chơi chỉ là các game trên điện thoại máy tính hay board game thì chưa đủ đâu nhé. Thế giới trò chơi còn rộng lớn và phong phú hơn thế nhiều.\r\n\r\nBạn có đang chơi những trò từ thời ông bà mình?\r\n\r\nViệt Nam chúng mình có rất nhiều trò chơi thú vị, suốt cả trăm năm qua vẫn được lưu truyền và rất có thể tween đang chơi các trò của bố mẹ mình mà chưa biết đấy nhé.\r\n\r\nNếu có dịp lên phố đi bộ ở hồ Hoàn Kiếm, bạn sẽ thấy có một khu vực thu hút rất đông các bạn nhỏ, ai cũng say mê nghiên cứu một bàn cờ được vẽ trên mặt đường và cầm trên tay một nắm sỏi nhỏ rồi rải vào từng ô. Đó chính là ô ăn quan, một trò chơi cổ xưa giúp cho bạn rèn luyện óc tính toán thật nhanh nhạy đấy.\r\n\r\nBạn biết gì về máy chơi game rồi?\r\n\r\nMáy điện tử xếp gạch là chiếc máy chơi game đơn giản nhất, rẻ tiền nhất trong số những cỗ máy chơi game và cũng được biết đến nhiều nhất. Chiếc máy này còn được gọi là máy xếp gạch vàng vì màu vàng của vỏ máy và trong máy chỉ có 1 trò chơi duy nhất là xếp gạch.\r\n\r\nXuất hiện ở những năm cuối thập niên 90, với màn hình đơn sắc, âm thanh 8 bit và sử dụng pin để chạy nhưng thời ấy, chiếc máy này là cả một khoảng trời riêng của những người yêu game.\r\n\r\nChơi game có giúp học tốt?\r\n\r\nCó những trò chơi giúp bạn gia tăng khả năng ghi nhớ, suy nghĩ linh hoạt và học hành sẽ tốt hơn. Chẳng hạn như trò hỏi đáp mà bạn có thể chơi cùng với bố mẹ hoặc bạn bè của mình. Mỗi người sẽ cần chuẩn bị một số câu hỏi thuộc một lĩnh vực nào đó, sau đó sẽ hỏi người cùng chơi.\r\n\r\nBạn có thể tăng thêm độ khó bằng cách dùng đồng hồ để tính thời gian, ai là người trả lời đúng và nhanh nhất sẽ dành chiến thắng. Với trò chơi này, chúng mình sẽ có cơ hội được tiếp cận với nhiều thông tin ở các lĩnh vực khác nhau. Bạn cũng có thể dùng các kiến thức trong sách vừa học trong tuần làm thành câu hỏi để có thể ghi nhớ bài hơn.\r\n\r\n', 20000, 'Thiên Thần Nhỏ', 'Báo Sinh Viên VN - Hoa Học Trò', 'https://cdn0.fahasa.com/media/catalog/product/8/9/8938507002918.jpg', 'https://cdn0.fahasa.com/media/catalog/product/8/9/8938507002918.jpg', 'https://cdn0.fahasa.com/media/catalog/product/8/9/8938507002918.jpg'),
('10', 'Báo - Tạp Chí', 'HHT - Vậy là mùa Hè đã chính thức rời xa để trả teen về với mái trường “iu dấu”. Nếu vẫn còn vấn vương những ngày nghỉ “ngày hôm qua”, bạn sẽ cần đến Hoa Học Trò 1391 để lấy lại tinh thần để ngập tràn năng lượng cho một năm học mới!\r\n\r\nDu học ngay tại quê nhà\r\n\r\nKhông cần “vi vu” đến quốc gia khác, các bạn hoàn toàn có thể sở hữu một chứng chỉ quốc tế ngay tại Việt Nam với chương trình AP (Advanced Placement). Vừa học cấp Ba và làm quen dần với môi trường Đại học, vừa có cơ hội rút ngắn thời gian học Đại học nhờ AP, quá đỉnh chứ hả! Hãy cùng nhà Hoa khám phá những thông tin về chương trình này, cũng như một số bí kíp “phá đảo” bài thi từ các chiến thần AP nhé!\r\n\r\nLê la sau giờ học: Bỏ túi ngay những trạm tiếp sức “ba ngon”\r\n\r\nKhông còn những ngày “chinh chiến” quán xá mùa Hè nhưng mỗi khi tiếng trống kết thúc giờ học vang lên cũng là lúc các “chiến thần” học đường bắt đầu cuộc hành trình khám phá những hàng quán chuẩn tiêu chí “3 ngon” ngay sát bên trường học: Ngon miệng, ngon mắt, ngon túi tiền! Nghe là thấy mê nên phải đón chờ Hoa Học Trò 1391 ngay thôi!\r\n\r\nCông thức mặc đẹp chuẩn gu crush\r\n\r\nChỉ cần vài tuyệt chiêu phối đồ, các chàng trai sẽ dễ dàng trở thành hình mẫu lý tưởng với ba phong cách hot trend: Indie, Local Brand, Sporty, trong phút chốc trở thành gu của người mình thầm thương trộm nhớ. Phải khui ngay bí kíp này trên Hoa Học Trò 1391 nha!\r\n\r\nMã hàng	8938507002994\r\nNhà Cung Cấp	BÁO TIỀN PHONG\r\nTác giả	Nhiều Tác Giả\r\nNXB	Báo Sinh Viên Việt Nam - Hoa Học Trò\r\nNăm XB	2022\r\nNgôn Ngữ	Tiếng Việt\r\nTrọng lượng (gr)	200\r\nKích Thước Bao Bì	20 x 14 cm\r\nSố trang	100\r\nHình thức	Bìa Mềm\r\nSản phẩm hiển thị trong	\r\nHoa Học Trò\r\nSản phẩm bán chạy nhất	Top 100 sản phẩm Báo - Tạp Chí bán chạy của tháng\r\nGiá sản phẩm trên Fahasa.com đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như Phụ phí đóng gói, phí vận chuyển, phụ phí hàng cồng kềnh,...\r\nĐón đọc Hoa Học Trò số 1391: Chạy đà cho một năm học mới tràn ngập những niềm vui\r\n\r\nHHT - Vậy là mùa Hè đã chính thức rời xa để trả teen về với mái trường “iu dấu”. Nếu vẫn còn vấn vương những ngày nghỉ “ngày hôm qua”, bạn sẽ cần đến Hoa Học Trò 1391 để lấy lại tinh thần để ngập tràn năng lượng cho một năm học mới!\r\n\r\nDu học ngay tại quê nhà\r\n\r\nKhông cần “vi vu” đến quốc gia khác, các bạn hoàn toàn có thể sở hữu một chứng chỉ quốc tế ngay tại Việt Nam với chương trình AP (Advanced Placement). Vừa học cấp Ba và làm quen dần với môi trường Đại học, vừa có cơ hội rút ngắn thời gian học Đại học nhờ AP, quá đỉnh chứ hả! Hãy cùng nhà Hoa khám phá những thông tin về chương trình này, cũng như một số bí kíp “phá đảo” bài thi từ các chiến thần AP nhé!\r\n\r\nLê la sau giờ học: Bỏ túi ngay những trạm tiếp sức “ba ngon”\r\n\r\nKhông còn những ngày “chinh chiến” quán xá mùa Hè nhưng mỗi khi tiếng trống kết thúc giờ học vang lên cũng là lúc các “chiến thần” học đường bắt đầu cuộc hành trình khám phá những hàng quán chuẩn tiêu chí “3 ngon” ngay sát bên trường học: Ngon miệng, ngon mắt, ngon túi tiền! Nghe là thấy mê nên phải đón chờ Hoa Học Trò 1391 ngay thôi!\r\n\r\nCông thức mặc đẹp chuẩn gu crush\r\n\r\nChỉ cần vài tuyệt chiêu phối đồ, các chàng trai sẽ dễ dàng trở thành hình mẫu lý tưởng với ba phong cách hot trend: Indie, Local Brand, Sporty, trong phút chốc trở thành gu của người mình thầm thương trộm nhớ. Phải khui ngay bí kíp này trên Hoa Học Trò 1391 nha!\r\n\r\n', 17000, 'Hoa Học Trò', 'Báo Sinh Viên VN - Hoa Học Trò', 'https://cdn0.fahasa.com/media/catalog/product/8/9/8938507002994.jpg', 'https://cdn0.fahasa.com/media/catalog/product/8/9/8938507002994-600.jpg', 'https://cdn0.fahasa.com/media/catalog/product/8/9/8938507002994-600.jpg'),
('11', 'Báo - Tạp Chí', 'Sau sự thành công của cuốn tạp chí số đầu tiên, ban biên tập WOWWEEKEND đã và đang nỗ lực hết mình để có thể đem đến các độc giả thân thiết số báo tiếp theo trong thời gian ngắn nhất. Và sau hơn ba tháng miệt mài, chúng tôi rất vui mừng khi thông báo tạp chí WOWWEEKEND số thứ hai đã chính thức ra mắt đến với các độc giả. \r\n\r\nVới số thứ hai, tạp chí WOWWEEKEND sẽ một lần nữa đưa các bạn độc giả đến với những trải nghiệm, những cung bậc cảm xúc của mùa Xuân trải dài khắp mọi miền của Tổ quốc từ Bắc vào Nam. Mở đầu chuyến hành trình là Lễ hội Đền Thái Vi ở Ninh Bình cho đến đến Làng chài Bình Lập những ngày cận Tết, chúng tôi mong muốn WOWWEEKEND sẽ trở thành con tàu để đưa các độc giả được hòa mình và trải nghiệm không khí đón Xuân ở khắp mọi miền của đất nước hình chữ “S\".\r\n\r\nKhông chỉ dừng lại ở Việt Nam, tạp chí WOWWEEKEND còn đưa các bạn độc giả khám phá những vùng đất, địa danh nổi tiếng ở châu Âu và đồng thời cung cấp những thông tin bổ ích cũng như những mẹo nhỏ khi đi du lịch ở nơi đây. ', 50000, 'Tạp Chí Wowweekend Vol 2 - Xuân Canh Tý 2020', 'NXB Thông Tấn', 'https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_54343.jpg', 'https://cdn0.fahasa.com/media/catalog/product/t/a/tap_chi_wowweekend_vol_2___xuan_canh_ty_2020_1_2021_11_26_10_44_20.jpg', 'https://cdn0.fahasa.com/media/catalog/product/t/a/tap_chi_wowweekend_vol_2___xuan_canh_ty_2020_2_2021_11_26_10_44_20.jpg'),
('12', 'Tâm Lý', 'Bạn băn khoăn không biết người ngồi đối diện đang nghĩ gì? Họ có đang nói dối bạn không? Đối tác đang ngồi đối diện với bạn trên bàn đàm phán đang nghĩ gì và nói gì tiếp theo?\r\n\r\nĐỌC người khác là một trong những công cụ quan trọng, có giá trị nhất, giúp ích cho bạn trong mọi khía cạnh của cuộc sống. ĐỌC VỊ người khác để:\r\n\r\nHãy chiếm thế thượng phong trong việc chủ động nhận biết điều cần tìm kiếm - ở bất kỳ ai bằng cách “thâm nhập vào suy nghĩ” của người khác. ĐỌC VỊ BẤT KỲ AI là cẩm nang dạy bạn cách thâm nhập vào tâm trí của người khác để biết điều người ta đang nghĩ. Cuốn sách này sẽ không giúp bạn rút ra các kết luận chung về một ai đó dựa vào cảm tính hay sự võ đoán. Những nguyên tắc được chia sẻ trong cuốn sách này không đơn thuần là những lý thuyết hay mẹo vặt chỉ đúng trong một số trường hợp hoặc với những đối tượng nhất định. Các kết quả nghiên cứu trong cuốn sách này được đưa ra dựa trên phương pháp S.N.A.P - cách thức phân tích và tìm hiểu tính cách một cách bài bản trong phạm vi cho phép mà không làm mếch lòng đối tượng được phân tích. Phương pháp này dựa trên những phân tích về tâm lý, chứ không chỉ đơn thuần dựa trên ngôn ngữ cử chỉ, trực giác hay võ đoán.\r\n\r\nCuốn sách được chia làm hai phần và 15 chương:\r\n\r\nPhần 1: Bảy câu hỏi cơ bản: Học cách phát hiện ra điều người khác nghĩ hay cảm nhận một cách dễ dàng và nhanh chóng trong bất kỳ hoàn cảnh nào.\r\n\r\nPhần 2: Những kế hoạch chi tiết cho hoạt động trí óc - hiểu được quá trình ra quyết định. Vượt ra ngoài việc đọc các suy nghĩ và cảm giác đơn thuần: Hãy học cách người khác suy nghĩ để có thể nắm bắt bất kỳ ai, phán đoán hành xử và hiểu được họ còn hơn chính bản thân họ.\r\n\r\nTrích đoạn sách hay:\r\n\r\nMột giám đốc phụ trách bán hàng nghi ngờ một trong những nhân viên kinh doanh của mình đang biển thủ công quỹ. Nếu hỏi trực tiếp “Có phải cô đang lấy trộm đồ của công ty?” sẽ khiến người bị nghi ngờ phòng bị ngay lập tức, việc muốn tìm ra chân tướng sự việc càng trở nên khó khăn hơn. Nếu cô ta không làm việc đó, dĩ nhiên cô ta sẽ nói với người giám đốc mình không lấy trộm. Ngược lại, dù có lấy trộm đi chăng nữa, cô ta cũng sẽ nói dối mình không hề làm vậy. Thay vào việc hỏi trực diện, người giám đốc khôn ngoan nên nói một điều gì đó tưởng chừng vô hại, như “Jill, không biết cô có giúp được tôi việc này không. Có vẻ như dạo này có người trong phòng đang lấy đồ của công ty về nhà phục vụ cho tư lợi cá nhân. Cô có hướng giải quyết nào cho việc này không?” rồi bình tĩnh quan sát phản ứng của người nhân viên.\r\n\r\nNếu cô ta hỏi lại và có vẻ hứng thú với đề tài này, anh ta có thể tạm an tâm rằng cô ta không lấy trộm, còn nếu cô ta đột nhiên trở nên không thoải mái và tìm cách thay đổi đề tài thì rõ ràng cô ta có động cơ không trong sáng.\r\n\r\nNgười giám đốc khi đó sẽ nhận ra sự chuyển hướng đột ngột trong thái độ và hành vi của người nhân viên. Nếu cô gái đó hoàn toàn trong sạch, có lẽ cô ta sẽ đưa ra hướng giải quyết của mình và vui vẻ khi sếp hỏi ý kiến của mình. Ngược lại, cô ta sẽ có biểu hiện không thoải mái rõ ràng và có lẽ sẽ cố cam đoan với sếp rằng cô không đời nào làm việc như vậy. Không có lí do gì để cô ta phải thanh minh như vậy, trừ phi cô là người có cảm giác tội lỗi…\r\n\r\nMã hàng	8935280904262\r\nTên Nhà Cung Cấp	Thái Hà\r\nTác giả	TS David J Lieberman\r\nNXB	NXB Lao Động\r\nNăm XB	2019\r\nTrọng lượng (gr)	250\r\nKích Thước Bao Bì	13 x 20.5 cm\r\nSố trang	223\r\nHình thức	Bìa Mềm\r\nSản phẩm hiển thị trong	\r\nĐồ Chơi Cho Bé - Giá Cực Tốt\r\nThái Hà\r\nTủ Sách Tâm Lý Kỹ Năng\r\nVNPAY\r\nRƯỚC DEAL LINH ĐÌNH VUI ĐÓN TRUNG THU\r\nSản phẩm bán chạy nhất	Top 100 sản phẩm Kỹ năng sống bán chạy của tháng\r\nGiá sản phẩm trên Fahasa.com đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như Phụ phí đóng gói, phí vận chuyển, phụ phí hàng cồng kềnh,...\r\nBạn băn khoăn không biết người ngồi đối diện đang nghĩ gì? Họ có đang nói dối bạn không? Đối tác đang ngồi đối diện với bạn trên bàn đàm phán đang nghĩ gì và nói gì tiếp theo?\r\n\r\nĐỌC người khác là một trong những công cụ quan trọng, có giá trị nhất, giúp ích cho bạn trong mọi khía cạnh của cuộc sống. ĐỌC VỊ người khác để:\r\n\r\nHãy chiếm thế thượng phong trong việc chủ động nhận biết điều cần tìm kiếm - ở bất kỳ ai bằng cách “thâm nhập vào suy nghĩ” của người khác. ĐỌC VỊ BẤT KỲ AI là cẩm nang dạy bạn cách thâm nhập vào tâm trí của người khác để biết điều người ta đang nghĩ. Cuốn sách này sẽ không giúp bạn rút ra các kết luận chung về một ai đó dựa vào cảm tính hay sự võ đoán. Những nguyên tắc được chia sẻ trong cuốn sách này không đơn thuần là những lý thuyết hay mẹo vặt chỉ đúng trong một số trường hợp hoặc với những đối tượng nhất định. Các kết quả nghiên cứu trong cuốn sách này được đưa ra dựa trên phương pháp S.N.A.P - cách thức phân tích và tìm hiểu tính cách một cách bài bản trong phạm vi cho phép mà không làm mếch lòng đối tượng được phân tích. Phương pháp này dựa trên những phân tích về tâm lý, chứ không chỉ đơn thuần dựa trên ngôn ngữ cử chỉ, trực giác hay võ đoán.', 60000, 'Đọc Vị Bất Kỳ Ai', 'NXB Lao Động', 'https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_12542.jpg', 'https://cdn0.fahasa.com/media/flashmagazine/images/page_images/doc_vi_bat_ky_ai_tai_ban_2019/2021_06_22_08_51_36_1-390x510.jpg', 'https://cdn0.fahasa.com/media/flashmagazine/images/page_images/doc_vi_bat_ky_ai_tai_ban_2019/2021_06_22_08_51_36_2-390x510.jpg');
INSERT INTO `book` (`BookID`, `Type`, `Description`, `Price`, `BookName`, `PublisherName`, `BookFile`, `image1`, `image2`) VALUES
('13', 'Văn học', 'TỪ ĐIỂN TIẾNG “EM” – Định nghĩa về thế giới mới!\r\n\r\nBạn sẽ bất ngờ, khi cầm cuốn “từ điển” xinh xinh này trên tay.\r\n\r\nVà sẽ còn ngạc nhiên hơn nữa, khi bắt đầu đọc từng trang sách…\r\n\r\nDĩ nhiên là vì “Từ điển tiếng “Em” không phải là một cuốn từ điển thông thường rồi!\r\n\r\nNói đến “từ điển”, xưa nay chúng ta đều nghĩ về một bộ sách đồ sộ, giải thích ý nghĩa, cách dùng, dịch, cách phát âm, và thường kèm theo các ví dụ về cách sử dụng từ đó.\r\n\r\nTuy nhiên, với cuốn sách “Từ điển tiếng “em”, các bạn sẽ hết sức bất ngờ với những định nghĩa mới, bắt trend, sáng tạo, thông minh và vô cùng hài hước.\r\n\r\nTiếng “em” [danh từ] ở đây là tiếng lòng của những người yêu sự thật, ghét sự giả dối\r\n\r\nCô đơn [ tính từ ] không phải là không có ai bên cạnh, mà là người mình muốn ở cạnh lại không hề ở bên\r\n\r\nSống lỗi [ động từ ] là cách sống của mấy bạn có người yêu cái là bỏ bê bạn bè liền hà...\r\n\r\nNhưng đây không chỉ là cuốn sách chỉ biết nói dăm ba câu chuyện về tình yêu.\r\nCòn nhiều hơn thế!\r\n\r\nLà những câu cửa miệng của giới trẻ thời nay; là hoạt động tưởng vô bổ nhưng cần thiết cho sự sống: ăn, ngủ, tắm, gội cũng được định nghĩa hết sức dí dỏm... Và cũng không thiếu những “tật xấu, thói hư” nghĩ đến đã thấy “tức cái lồng ngực”...\r\n\r\nVà bạn yên tâm, “tập đoàn” Kho Từ Điển điều hành bởi Thịt Kho – Hiệp Thị - 2 chủ xị cho ra đời cuốn sách nhỏ bé xíu xiu nhưng mới mẻ và mặn mà vô cùng này sẽ khiến bạn thoát mác “người tối cổ” cười cả ngày không chán, nhìn bạn bè quanh mình bằng ánh mắt dễ thương, tận hưởng cuộc đời với những định nghĩa hoàn toàn!!!\r\n\r\nCuốn sách này giống như một chiếc hộp Pandora thú vị và hấp dẫn người đọc, vì bạn không thể đoán trước được tác giả sẽ “định nghĩa” câu nói đó theo nghĩa nào, cho ta thêm thích thú với những ngôn từ đáng yêu sử dụng mỗi ngày.\r\nVậy nên, ngay bây giờ, bạn đã sẵn sàng để mở ra những điều thú vị trong cuốn sách này chưa!!!\r\n\r\nMã hàng	8935325000980\r\nTên Nhà Cung Cấp	Skybooks\r\nTác giả	Khotudien\r\nNXB	NXB Phụ Nữ Việt Nam\r\nNăm XB	2021\r\nNgôn Ngữ	Tiếng Việt\r\nTrọng lượng (gr)	300\r\nKích Thước Bao Bì	12 x 10 cm\r\nSố trang	280\r\nHình thức	Bìa Mềm\r\nSản phẩm hiển thị trong	\r\nĐồ Chơi Cho Bé - Giá Cực Tốt\r\nRƯỚC DEAL LINH ĐÌNH VUI ĐÓN TRUNG THU\r\nSản phẩm bán chạy nhất	Top 100 sản phẩm Truyện ngắn - Tản Văn bán chạy của tháng\r\nGiá sản phẩm trên Fahasa.com đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như Phụ phí đóng gói, phí vận chuyển, phụ phí hàng cồng kềnh,...\r\nTỪ ĐIỂN TIẾNG “EM” – Định nghĩa về thế giới mới!\r\n\r\nBạn sẽ bất ngờ, khi cầm cuốn “từ điển” xinh xinh này trên tay.\r\n\r\nVà sẽ còn ngạc nhiên hơn nữa, khi bắt đầu đọc từng trang sách…\r\n\r\nDĩ nhiên là vì “Từ điển tiếng “Em” không phải là một cuốn từ điển thông thường rồi!\r\n\r\nNói đến “từ điển”, xưa nay chúng ta đều nghĩ về một bộ sách đồ sộ, giải thích ý nghĩa, cách dùng, dịch, cách phát âm, và thường kèm theo các ví dụ về cách sử dụng từ đó.\r\n\r\nTuy nhiên, với cuốn sách “Từ điển tiếng “em”, các bạn sẽ hết sức bất ngờ với những định nghĩa mới, bắt trend, sáng tạo, thông minh và vô cùng hài hước.\r\n\r\nTiếng “em” [danh từ] ở đây là tiếng lòng của những người yêu sự thật, ghét sự giả dối\r\n\r\nCô đơn [ tính từ ] không phải là không có ai bên cạnh, mà là người mình muốn ở cạnh lại không hề ở bên\r\n\r\nSống lỗi [ động từ ] là cách sống của mấy bạn có người yêu cái là bỏ bê bạn bè liền hà...\r\n\r\nNhưng đây không chỉ là cuốn sách chỉ biết nói dăm ba câu chuyện về tình yêu.\r\nCòn nhiều hơn thế!\r\n\r\nLà những câu cửa miệng của giới trẻ thời nay; là hoạt động tưởng vô bổ nhưng cần thiết cho sự sống: ăn, ngủ, tắm, gội cũng được định nghĩa hết sức dí dỏm... Và cũng không thiếu những “tật xấu, thói hư” nghĩ đến đã thấy “tức cái lồng ngực”...\r\n\r\nVà bạn yên tâm, “tập đoàn” Kho Từ Điển điều hành bởi Thịt Kho – Hiệp Thị - 2 chủ xị cho ra đời cuốn sách nhỏ bé xíu xiu nhưng mới mẻ và mặn mà vô cùng này sẽ khiến bạn thoát mác “người tối cổ” cười cả ngày không chán, nhìn bạn bè quanh mình bằng ánh mắt dễ thương, tận hưởng cuộc đời với những định nghĩa hoàn toàn!!!\r\n\r\nCuốn sách này giống như một chiếc hộp Pandora thú vị và hấp dẫn người đọc, vì bạn không thể đoán trước được tác giả sẽ “định nghĩa” câu nói đó theo nghĩa nào, cho ta thêm thích thú với những ngôn từ đáng yêu sử dụng mỗi ngày.\r\nVậy nên, ngay bây giờ, bạn đã sẵn sàng để mở ra những điều thú vị trong cuốn sách này chưa!!!', 49000, 'Từ Điển Tiếng “Em”', 'NXB Phụ Nữ Việt Nam', 'https://cdn0.fahasa.com/media/catalog/product/b/i/bia_tudientiengem-_1_.jpg', 'https://cdn0.fahasa.com/media/catalog/product/1/2/122794058_3479567975430769_1331743639861310999_o_1.jpg', 'https://cdn0.fahasa.com/media/catalog/product/1/2/125495151_3288476084615326_7140752655633785953_o_1.jpg'),
('14', 'Văn học', 'Nhà Văn Cục Súc được biết tới là một blogger sở hữu những bài post nghìn like cùng nhiều câu nói hot trend có phần cục súc, hài hước và thú vị được đăng tải trên fanpage cùng tên với hơn 1 triệu lượt theo dõi.\r\n\r\nLấy phong cách hài “mặn” làm chủ đạo, nội dung của Nhà Văn Cục Súc chủ yếu hướng đến giới trẻ và những sự kiện nổi bật thu hút sự quan tâm lớn từ cộng đồng mạng.\r\n\r\n“Lá cây cần quang hợp\r\n\r\ncòn mình thì cần quan tâm”\r\n\r\nCuộc sống mà, lúc nào cũng đầy rẫy những chuyện phức tạp không ngờ đến. Một vấn đề tưởng như nhỏ xíu cũng có thể khiến bạn trở nên quạu cọ, cục súc.\r\n\r\nCục súc không phải vì tỏ tình bị từ chối, mà vì đành bái bị thúi heo cơ.\r\n\r\nCục súc không phải vì phải chờ đợi một ai, mà vì chờ một chiếc điện thoại mới.\r\n\r\nThay vì dồn nén, hãy tìm cách giải tỏa bằng “Đời có mấy tý, sao phải nghĩ” - cuốn sách nhỏ với những trích dẫn hot trend hài hước, “mặn mà” tạo thành xu hướng trên mạng xã hội.\r\n\r\nVì đôi lúc cục súc một chút cũng có sao, cục súc để cuộc đời bớt lao đao thôi mà.\r\n\r\nMã hàng	9786043593181\r\nNhà Cung Cấp	Công Ty Cổ Phần Time Books\r\nTác giả	NVCS\r\nNXB	NXB Hà Nội\r\nNăm XB	2021\r\nNgôn Ngữ	Tiếng Việt\r\nTrọng lượng (gr)	100\r\nKích Thước Bao Bì	12.4 x 10 x 1 cm\r\nSố trang	205\r\nHình thức	Bìa Mềm\r\nSản phẩm bán chạy nhất	Top 100 sản phẩm Truyện ngắn - Tản Văn bán chạy của tháng\r\nGiá sản phẩm trên Fahasa.com đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như Phụ phí đóng gói, phí vận chuyển, phụ phí hàng cồng kềnh,...\r\nĐời Có Mấy Tý, Sao Phải Nghĩ (Tái Bản 2022)\r\n\r\nNhà Văn Cục Súc được biết tới là một blogger sở hữu những bài post nghìn like cùng nhiều câu nói hot trend có phần cục súc, hài hước và thú vị được đăng tải trên fanpage cùng tên với hơn 1 triệu lượt theo dõi.\r\n\r\nLấy phong cách hài “mặn” làm chủ đạo, nội dung của Nhà Văn Cục Súc chủ yếu hướng đến giới trẻ và những sự kiện nổi bật thu hút sự quan tâm lớn từ cộng đồng mạng.\r\n\r\n“Lá cây cần quang hợp\r\n\r\ncòn mình thì cần quan tâm”\r\n\r\nCuộc sống mà, lúc nào cũng đầy rẫy những chuyện phức tạp không ngờ đến. Một vấn đề tưởng như nhỏ xíu cũng có thể khiến bạn trở nên quạu cọ, cục súc.\r\n\r\nCục súc không phải vì tỏ tình bị từ chối, mà vì đành bái bị thúi heo cơ.\r\n\r\nCục súc không phải vì phải chờ đợi một ai, mà vì chờ một chiếc điện thoại mới.\r\n\r\nThay vì dồn nén, hãy tìm cách giải tỏa bằng “Đời có mấy tý, sao phải nghĩ” - cuốn sách nhỏ với những trích dẫn hot trend hài hước, “mặn mà” tạo thành xu hướng trên mạng xã hội.\r\n\r\nVì đôi lúc cục súc một chút cũng có sao, cục súc để cuộc đời bớt lao đao thôi mà.', 63000, 'Đời Có Mấy Tý, Sao Phải Nghĩ', 'NXB Hà Nội', 'https://cdn0.fahasa.com/media/catalog/product/9/7/9786043593181_1.jpg', 'https://cdn0.fahasa.com/media/catalog/product/9/7/9786043593181_2.jpg', 'https://cdn0.fahasa.com/media/catalog/product/9/7/9786043593181_5.jpg'),
('15', 'Kinh Tế', 'Từ trước đến nay chưa từng có công ty nào như Netflix. Họ đã dẫn dắt cuộc cách mạng trong ngành giải trí, thu về hàng tỉ đôla doanh thu hằng năm bằng cách thu hút trí tưởng tượng của hàng trăm triệu khách hàng trên hơn 190 quốc gia.\r\n\r\nRa đời năm 1988 là một dịch vụ cho thuê DVD trực tuyến, nhà sáng lập Reed Hastings của Netflix đã từ bỏ những cách làm truyền thống mà nhiều công ty khác vẫn vận hành. Thay vào đó, ông xây dựng một văn hóa tập trung vào tự do và trách nhiệm, giúp Netflix tự tái tạo hết lần đến lần khác, thích nghi và đổi mới khi nhu cầu của thế giới xung quanh cũng như của các thành viên công ty thay đổi.\r\n\r\nHastings đặt ra những tiêu chuẩn mới, xem trọng con người hơn quy trình, nhấn mạnh đổi mới hơn hiệu quả, và trao cho nhân viên bối cảnh thay vì kiểm soát họ. Netflix không có chính sách ngày phép hay quy định công tác phí. Tại Netflix, người có kết quả làm việc bình thường nhận được gói trợ cấp thôi việc hào phóng, và làm việc chăm chỉ là không cần thiết. Tại Netflix, bạn không cần cố gắng làm hài lòng cấp trên, bạn phải đưa ra phản hồi trung thực.\r\n\r\nLần đầu tiên, trong tác phẩm này, Hastings và Erin Meyer, tác giả cuốn sách \"The Culture Map\" và là một trong những nhà tư tưởng kinh doanh có tầm ảnh hưởng lớn nhất, cùng đi sâu vào các triết lý gây tranh cãi là tâm điểm của tinh thần Netflix. Dựa trên phỏng vấn nhân viên Netflix từ khắp thế giới và những câu chuyện chưa từng được tiết lộ về sự nghiệp của Hastings, \"Netflix: Phá bỏ nguyên tắc để bứt phá\" (tựa gốc: No Rules Rules) là câu chuyện thú vị nhưng chưa từng được kể về một trong những công ty đột phá, sáng tạo, và thành công nhất thế giới.\r\n\r\nVăn hóa độc đáo “Nguyên tắc là không có nguyên tắc” giải thích sự chuyển mình với tốc độ ánh sáng của một dịch vụ cho thuê DVD qua đường bưu điện thành một trong những doanh nghiệp đột phá và thành công nhất trong lịch sử: thống lĩnh thị trường phát trực tuyến toàn cầu, thách thức những công ty như Disney.\r\n\r\nBất cứ ai làm công việc kiến tạo, lãnh đạo, hay khát khao muốn đột phá đều muốn đọc cuốn sách này!\r\n\r\nMã hàng	8934974176091\r\nTên Nhà Cung Cấp	NXB Trẻ\r\nTác giả	Reed Hastings, Erin Meyer\r\nNgười Dịch	Trần Thị Ngân Tuyến\r\nNXB	NXB Trẻ\r\nNăm XB	2022\r\nNgôn Ngữ	Tiếng Việt\r\nTrọng lượng (gr)	560\r\nKích Thước Bao Bì	23 x 15.5 x 1.8 cm\r\nSố trang	405\r\nHình thức	Bìa Mềm\r\nSản phẩm hiển thị trong	\r\nNXB Trẻ\r\nSản phẩm bán chạy nhất	Top 100 sản phẩm Nhân vật - Bài Học Kinh doanh bán chạy của tháng\r\nGiá sản phẩm trên Fahasa.com đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như Phụ phí đóng gói, phí vận chuyển, phụ phí hàng cồng kềnh,...\r\nNetflix: Phá Bỏ Nguyên Tắc Để Bứt Phá\r\n\r\nTừ trước đến nay chưa từng có công ty nào như Netflix. Họ đã dẫn dắt cuộc cách mạng trong ngành giải trí, thu về hàng tỉ đôla doanh thu hằng năm bằng cách thu hút trí tưởng tượng của hàng trăm triệu khách hàng trên hơn 190 quốc gia.\r\n\r\nRa đời năm 1988 là một dịch vụ cho thuê DVD trực tuyến, nhà sáng lập Reed Hastings của Netflix đã từ bỏ những cách làm truyền thống mà nhiều công ty khác vẫn vận hành. Thay vào đó, ông xây dựng một văn hóa tập trung vào tự do và trách nhiệm, giúp Netflix tự tái tạo hết lần đến lần khác, thích nghi và đổi mới khi nhu cầu của thế giới xung quanh cũng như của các thành viên công ty thay đổi.\r\n\r\nHastings đặt ra những tiêu chuẩn mới, xem trọng con người hơn quy trình, nhấn mạnh đổi mới hơn hiệu quả, và trao cho nhân viên bối cảnh thay vì kiểm soát họ. Netflix không có chính sách ngày phép hay quy định công tác phí. Tại Netflix, người có kết quả làm việc bình thường nhận được gói trợ cấp thôi việc hào phóng, và làm việc chăm chỉ là không cần thiết. Tại Netflix, bạn không cần cố gắng làm hài lòng cấp trên, bạn phải đưa ra phản hồi trung thực.\r\n\r\nLần đầu tiên, trong tác phẩm này, Hastings và Erin Meyer, tác giả cuốn sách \"The Culture Map\" và là một trong những nhà tư tưởng kinh doanh có tầm ảnh hưởng lớn nhất, cùng đi sâu vào các triết lý gây tranh cãi là tâm điểm của tinh thần Netflix. Dựa trên phỏng vấn nhân viên Netflix từ khắp thế giới và những câu chuyện chưa từng được tiết lộ về sự nghiệp của Hastings, \"Netflix: Phá bỏ nguyên tắc để bứt phá\" (tựa gốc: No Rules Rules) là câu chuyện thú vị nhưng chưa từng được kể về một trong những công ty đột phá, sáng tạo, và thành công nhất thế giới.\r\n\r\nVăn hóa độc đáo “Nguyên tắc là không có nguyên tắc” giải thích sự chuyển mình với tốc độ ánh sáng của một dịch vụ cho thuê DVD qua đường bưu điện thành một trong những doanh nghiệp đột phá và thành công nhất trong lịch sử: thống lĩnh thị trường phát trực tuyến toàn cầu, thách thức những công ty như Disney.\r\n\r\nBất cứ ai làm công việc kiến tạo, lãnh đạo, hay khát khao muốn đột phá đều muốn đọc cuốn sách này!', 168000, 'No Rules Rules: Netflix And The Culture Of Reinven', 'NXB Trẻ', 'https://cdn0.fahasa.com/media/catalog/product/n/x/nxbtre_full_27202022_112029.jpg', 'https://cdn0.fahasa.com/media/catalog/product/n/x/nxbtre_full_27202022_112029_1.jpg', 'https://cdn0.fahasa.com/media/catalog/product/n/x/nxbtre_full_27202022_112029_1.jpg'),
('16', 'Kinh Tế', 'https://cdn0.fahasa.com/media/flashmagazine/images/page_images/trai_nghiem_nhan_vien_hoan_hao___bi_mat_thu_hut_nhan_tai_cho_doanh_nghiep_cua_ban/2022_05_20_11_18_14_5-390x510.jpg', 141000, 'Trải Nghiệm Nhân Viên Hoàn Hảo - Bí Mật Thu Hút Nh', 'NXB Hồng Đức', 'https://cdn0.fahasa.com/media/catalog/product/z/3/z3263378866403_60a2db061b793362a3ffc7674fc7f53d.jpg', 'https://cdn0.fahasa.com/media/flashmagazine/images/page_images/trai_nghiem_nhan_vien_hoan_hao___bi_mat_thu_hut_nhan_tai_cho_doanh_nghiep_cua_ban/2022_05_20_11_18_14_2-390x510.jpg', 'https://cdn0.fahasa.com/media/flashmagazine/images/page_images/trai_nghiem_nhan_vien_hoan_hao___bi_mat_thu_hut_nhan_tai_cho_doanh_nghiep_cua_ban/2022_05_20_11_18_14_5-390x510.jpg'),
('17', 'Quản Trị - Pháp Lý ', 'Tác giả Paul Ricoeur là triết gia Pháp có vị trí và tầm ảnh hưởng lớn trong nền triết học đương đại. Chuyên gia hàng đầu về Husserl, Heidegger, Jaspers. Tác giả của hàng chục danh tác triết học.\r\n\r\nVấn đề \"Cái ác\" (Le Mal) là cuộc \"vật lộn\" trong suy tư triết học - thần học suốt cả cuộc đời Paul Ricoeur. Tác phẩm Cái Ác là văn bản thuyết trình được Paul Ricoeur trình bày tại Khoa Thần học của Đại học Lausanne (Thụy Sĩ) vào năm 1985.\r\n\r\n\"Hiếm có tập sách mỏng manh nào lại bao quát đến độ dày đặc cả lịch sử tư tưởng lâu dài và phức tạp đến như thế và một chủ đề trọng đại!', 78000, 'Cái Ác', 'NXB Hồng Đức', 'https://cdn0.fahasa.com/media/catalog/product/i/m/image_221494.jpg', 'https://cdn0.fahasa.com/media/flashmagazine/images/page_images/cai_ac/2021_05_10_08_41_29_3-390x510.jpg', 'https://cdn0.fahasa.com/media/flashmagazine/images/page_images/cai_ac/2021_05_10_08_41_29_2-390x510.jpg'),
('18', 'Quản Trị - Pháp Lý ', 'Quân Vương - Thuật Cai Trị (Tái Bản 2018)\n\nĐây là cuốn sách gối đầu giường của rất nhiều thế hệ chính trị gia và lãnh đạo trên thế giới.\n\nCuốn sách nhỏ của Niccolò Machiavelli đã hội tự những nguyên tắc làm nền móng cho khoa học quản trị nói chung và chính trị học nói riêng.\n\nNgười ta sẽ luôn đọc Quân vương chừng nào con người vẫn chưa thôi trò chơi nguy hiểm nhưng hấp dẫn có cái tên \"chính trị\".\n\nQua cuốn sách, độc giả sẽ tìm ra chân dung một vị quân vương hình mẫu : keo kiệt hay rộng lượng, độc ác hay nhân từ, thất hứa hay giữ lời nếu lời hứa đi ngược lại lợi ích của mình, phải làm gì để tránh bị dân chúng căm ghét, phải thực thi những hành động lớn lao để nâng cao uy tín của mình.\n\nCuốn sách bàn về khoa học chính trị của nhà ngoại giao, nhà triết học và nhà quân sự người Ý – Niccolò Machiavelli. Xuất hiện lần đầu tiên vào năm 1513 nhưng mãi đến năm 1532, ấn bản đầu tiên mới được chính thức xuất bản dưới sự cho phép của Giáo hoàng Clement VII.\n\nTÁC GIẢ: Niccolò Machiavelli (1469-1527)\n\nSinh tại thành phố Florence, Italia, được xem là sáng tổ của nền khoa học chính trị hiện đại. Ông phụng sự nền cộng hòa Florence đảm nhận vị trí quan trọng trong ngoại giao và quân sự. Sau khi gia đình Medici trở lại nắm quyền vào năm 1512, ông bị bãi chức. Tác phẩn Quân vương được ông viết để dâng tặng nhà Medici nhằm chứng tỏ sự tận tâm của mình để được tiến cử tham gia chính sự.\n\nMã hàng	8935270700270\nTên Nhà Cung Cấp	Alpha Books\nTác giả	Niccolò Machiavelli\nNgười Dịch	Vũ Thái Hà\nNXB	NXB Thế Giới\nNăm XB	03-2018\nTrọng lượng (gr)	220\nKích Thước Bao Bì	14 x 20.5\nSố trang	200\nHình thức	Bìa Mềm\nSản phẩm hiển thị trong	\nAlpha Books\nFlashsale\nMã Giảm Giá\nTuyển Tập Sách Omega\nRƯỚC DEAL LINH ĐÌNH VUI ĐÓN TRUNG THU\nSản phẩm bán chạy nhất	Top 100 sản phẩm Triết Học- Lý Luận Chính Trị bán chạy của tháng\nGiá sản phẩm trên Fahasa.com đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như Phụ phí đóng gói, phí vận chuyển, phụ phí hàng cồng kềnh,...\nQuân Vương - Thuật Cai Trị (Tái Bản 2018)\n\nĐây là cuốn sách gối đầu giường của rất nhiều thế hệ chính trị gia và lãnh đạo trên thế giới.\n\nCuốn sách nhỏ của Niccolò Machiavelli đã hội tự những nguyên tắc làm nền móng cho khoa học quản trị nói chung và chính trị học nói riêng.\n\nNgười ta sẽ luôn đọc Quân vương chừng nào con người vẫn chưa thôi trò chơi nguy hiểm nhưng hấp dẫn có cái tên \"chính trị\".\n\nQua cuốn sách, độc giả sẽ tìm ra chân dung một vị quân vương hình mẫu : keo kiệt hay rộng lượng, độc ác hay nhân từ, thất hứa hay giữ lời nếu lời hứa đi ngược lại lợi ích của mình, phải làm gì để tránh bị dân chúng căm ghét, phải thực thi những hành động lớn lao để nâng cao uy tín của mình.', 92000, 'Quân Vương - Thuật Cai Trị', 'NXB Thế Giới', 'https://cdn0.fahasa.com/media/catalog/product/q/u/quanvuong-1.jpg', 'https://cdn0.fahasa.com/media/flashmagazine/images/page_images/quan_vuong___thuat_cai_tri_tai_ban_2018/2020_05_06_17_02_15_1-390x510.JPG', 'https://cdn0.fahasa.com/media/flashmagazine/images/page_images/quan_vuong___thuat_cai_tri_tai_ban_2018/2020_05_06_17_02_15_10-390x510.JPG'),
('19', 'Thể Dục Thể Thao ', 'Sutra (trong tiếng Phạn) nghĩa đen là một sợi chỉ hay một sợi dây buộc chặt mọi thứ lại với nhau. Nó ẩn dụ cho những lời nói sâu sắc uyên thâm. Kinh Yoga của Patanjali là một bộ kinh gồm 196 câu được Maharishi Patanjali giảng dạy ngắn gọn nhưng súc tích về nghệ thuật và khoa học của Yoga và Thiền để thức ngộ bản thân.\r\n\r\nChỉ với một sợi dây, người ta có thể điều khiển con diều bay lượn trên độ cao đáng kinh ngạc. Kinh Yoga của Patanjali cũng giống như những sợi dây đó. Mỗi sợi là một công cụ, một nghệ thuật với đầy đủ kiến thức phong phú cho cuộc sống. Những lời kinh không chỉ giúp rèn luyện tâm trí, mà còn hướng dẫn con người phát huy hết tiềm năng của mình giữa lối sống thế kỷ 21.', 72000, 'Kinh Yoga Của Patanjali - Thầy Sri Sri Ravi Shanka', 'NXB Thế Giới', 'https://cdn0.fahasa.com/media/catalog/product/k/i/kinh-yoga-c_a-patanjali---bia-1.jpg', 'https://cdn0.fahasa.com/media/catalog/product/k/i/kinh_yoga_c_a_patanjali_-_bia_1.jpg', 'https://cdn0.fahasa.com/media/catalog/product/k/i/kinh_yoga_c_a_patanjali_-_bia_4.jpg'),
('20', 'Thể Dục Thể Thao ', '“Con đường của Real Madrid” có tiềm năng vượt ra ngoài giới thể thao, là thứ tiềm năng cần phải được khám phá và nhận diện. Những khoản tiền khổng lồ và ánh sáng tỏa ra từ các ngôi sao có xu hướng che mờ những gì mà đội ngũ điều hành của Real Madrid đã thực sự làm được. Trên thực tế, những gì mà họ đã làm xứng đáng được ghi nhận, ngay cả ở bên ngoài địa hạt Real Madrid hay bóng đá.', 114000, 'Con Đường Của Real Madrid ', 'NXB Dân Trí', 'https://cdn0.fahasa.com/media/catalog/product/8/9/8936203361858.jpg', 'https://cdn0.fahasa.com/media/catalog/product/c/o/con_ng_c_a_real_madrid_-_3d.jpg', 'https://cdn0.fahasa.com/media/catalog/product/1/_/1_178_1.jpg'),
('21', 'Khoa Học Kĩ Thuật', 'Chúng ta đã biết gì về định nghĩa “Sống khỏe mạnh”? Và ta đã làm những gì cho sức khỏe của chính mình, cho sức khỏe của người thân yêu trong gia đình và những người bạn xung quanh?\r\n\r\nCuốn sách “Nước ép trị liệu và chế độ ăn theo phương pháp cơ thể tự chữa lành” của tác giả Emma Phạm chính là một món quà, trong đó chứa đựng những nguyên lý giúp bạn và gia đình sống khỏe hơn mỗi ngày.', 169000, 'Sách Nước Ép Trị Liệu Và Chế Độ Ăn Theo Phương Phá', 'NXB Thế Giới', 'https://cdn0.fahasa.com/media/catalog/product/8/9/8935280910980.jpg', 'https://cdn0.fahasa.com/media/catalog/product/n/u/nuoc_ep_tri_lieu_va_che_do_an_theo_phuong_phap_co_the_tu_chua_lanh_1_2022_09_19_11_32_50.jpg', 'https://cdn0.fahasa.com/media/catalog/product/n/u/nuoc_ep_tri_lieu_va_che_do_an_theo_phuong_phap_co_the_tu_chua_lanh_2_2022_09_19_11_32_50.jpg'),
('22', 'Khoa Học Kĩ Thuật', 'Là cuốn sách về giấc ngủ đầu tiên được viết bởi chính một chuyên gia khoa học hàng đầu, giám đốc Trung tâm về Khoa học Giấc ngủ Con người của trường Đại học California, Berkeley, Sao chúng ta lại ngủ trở thành một cuộc khám phá mang tính đột phá về giấc ngủ, giải thích việc chúng ta có thể khai thác được sức mạnh biến đổi của giấc ngủ nhằm làm thay đổi cuộc sống của chúng ta trở nên tốt đẹp hơn như thế nào.', 199000, 'Sao Chúng Ta Lại Ngủ ', 'NXB Lao Động', 'https://cdn0.fahasa.com/media/catalog/product/b/i/biaao-01.jpg', 'https://cdn0.fahasa.com/media/catalog/product/b/i/biaao-01_1.jpg', 'https://cdn0.fahasa.com/media/catalog/product/b/i/biaaon-page-001.jpg'),
('23', 'Khoa Học Kĩ Thuật', 'Hiện nay, lập trình viên là một trong những nghề nghiệp được nhiều người lựa chọn theo đuổi và gắn bó. Đây là công việc đòi hỏi sự tỉ mỉ, nhiều công sức nhưng mang lại giá trị cao và một tương lai công việc hứa hẹn. Là một trong số những chuyên gia giàu kinh nghiệm, điêu luyện và lành nghề trong ngành, tác giả đã đúc rút từ kinh nghiệm của mình, viết về những tình huống trong thực tế, đôi khi có thể trái ngược với lý thuyết để xây dựng nên cuốn cẩm nang này, nhằm hỗ trợ những người đang muốn trở thành một lập trình viên chuyên nghiệp.\r\n\r\nCuốn sách được nhiều lập trình viên đánh giá là quyển sách giá trị nhất mà họ từng đọc trong sự nghiệp của mình. Cuốn sách hướng dẫn cách để viết những đoạn mã có thể hoạt động tốt, cũng như truyền tải được ý định của người viết nên chúng.\r\n\r\nCuốn sách được chia thành ba phần lớn. Phần đầu tiên mô tả các nguyên tắc, mô hình và cách thực hành viết mã sạch. Phần thứ hai gồm nhiều tình huống điển hình với mức độ phức tạp gia tang không ngừng. Mỗi tình huống là một bài tập giúp làm sạch mã, chuyển đổi mã có nhiều vấn đề thành mã có ít vấn đề hơn. Và phần cuối là tuyển tập rất nhiều những dấu hiệu của mã có vấn đề, những tìm tòi, suy nghiệm từ thực tiễn được đúc rút qua cách tình huống điển hình.\r\n\r\n', 299000, 'Clean Code - Mã Sạch Và Con Đường Trở Thành Lập Tr', 'NXB Dân Trí', 'https://cdn0.fahasa.com/media/catalog/product/3/9/393129.jpg', 'https://cdn0.fahasa.com/media/flashmagazine/images/page_images/clean_code___ma_sach_va_con_duong_tro_thanh_lap_trinh_vien_gioi/2022_08_20_11_07_26_1-390x510.jpg', 'https://cdn0.fahasa.com/media/flashmagazine/images/page_images/clean_code___ma_sach_va_con_duong_tro_thanh_lap_trinh_vien_gioi/2022_08_20_11_07_26_6-390x510.jpg'),
('24', 'Khoa Học Kĩ Thuật', 'Nhiều bạn đọc Việt Nam – những độc giả mến trọng của tôi, có thể là đang có trong nhà mình, hoặc đang đọc, hoặc đang trải nghiệm những điều nào đó trong cuốn sách nhỏ “Những phương thức phục hồi sức khỏe theo tự nhiên” của Thầy Nishi Katsuzo. Trong dòng chảy tràn đầy năng lượng mạnh mẽ của yêu thương đang dâng trào từ trái tim; trong niềm khát khao mãnh liệt muốn được cung cấp thêm những thông tin, tôi cho là, khá quan trọng, khá cấp thiết và luôn là thời sự, đến tất cả những ai đang rất quan tâm trong cuộc sống đương đại: Liệu có phương cách nào giúp chúng ta tránh được những căn bệnh hiểm nghèo ngày càng gia tăng, không chỉ ở những người cao tuổi, mà ngay cả những người còn khá trẻ – đang độ tuổi cống hiến nhiều nhất? Thủ phạm của các căn bệnh như nhồi máu cơ tim, tai biến mạch máu não, liệt nửa người, thậm chí chết “bất đắc kỳ tử”… là gì? Những sự ra đi quá đường đột… đã để lại những nỗi đau xé ruột…!!! Mới 3 ngày trước đây tôi vừa hẹn qua điện thoại, sẽ tặng bạn tôi một cuốn sách tôi vừa dịch về sức khỏe… và bạn tôi cũng hẹn sẽ tặng tôi một tập thơ mà bạn tôi vừa xuất bản…\r\n\r\nChúng tôi chưa kịp trao cho nhau những món quà giản dị để sẻ chia… thì được tin bạn tôi đã ra đi một mình, đột ngột trong đêm không một ai biết…!!! Và thế là cả hai chúng tôi đã trở thành người mắc nợ lẫn nhau! Và tôi thì trong suốt cuộc đời mình, cho đến hôm nay, từ sâu thẳm trái tim mình không muốn mắc nợ ai! Nhưng tôi cũng không dám chắc là tôi đã không nợ nần ai. Bằng chứng là trong những ngày này, tôi không dấu nổi những suy nghĩ thôi thúc: “phải cố gắng làm sao để có thể nhanh nhất hoàn tất cuốn sách dịch thứ hai: Làm sạch mạch và máu trong số 4 cuốn sách mà tôi đã được gia đình Thầy Nishi Katsuzo cho bản quyền tác giả xuất bản tại Việt Nam, để nhiều người cùng được đọc.\r\n\r\nMột lần nữa – lần thứ 2, tôi xin trân trọng kính chuyển tới các bạn đọc kính trọng của tôi lòng mong muốn và niềm tin chắc chắn rằng, cuốn sách dịch nhỏ thứ hai này, có thể sẽ cung cấp thêm những thông tin mới đầy ắp tính khoa học, tính thiết thực đối với việc giữ gìn sức khỏe cộng đồng. Hy vọng nó sẽ trở thành người bạn gần gũi, đáng tin cậy, luôn đồng hành cùng các bạn trong cuộc sống hiện tại. Cùng với cuốn “Những phương thức phục hồi sức khỏe theo tự nhiên”, có thể nó sẽ cho các bạn thêm chỗ dựa vững chắc để các bạn nương theo, mà vận dụng sáng tạo phù hợp với điều kiện cụ thể trong việc chăm sóc sức khỏe cho chính bạn, cùng người thân của mình sao luôn giữ cho mình cả sức khỏe thân xác lẫn tâm hồn trong sáng, thanh tao.\r\n\r\nTôi thành tâm hy vọng những trang sách này sẽ đưa các bạn thẳng tới những chỉ dẫn cụ thể về việc ăn, uống, tập luyện thân thể và suy nghĩ nhằm giúp các bạn nhanh chóng “Làm sạch mạch và máu” – thứ mà Thầy Nishi Katsuzo cho là nguyên nhân cơ bản nhất và trực tiếp giúp ta đẩy lùi các bệnh nguy hiểm như đã nêu.\r\n\r\nNishi Katsuzo đã đưa ra các giải thích khoa học (ví dụ: chỉ riêng việc ăn uống) rằng thức ăn đưa vào cơ thể cần phải gồm những loại nào để hội đủ 4 nguyên tố cấu thành nên cơ thể con người. Đó là LỬA (ánh sáng mặt trời) là KHÔNG KHÍ, là ĐẤT và NƯỚC. Tác giả cũng đã khẳng định (ngay trong cuốn sách) là cứ qua mỗi 10 ngày một, khi cơ thể được nuôi dưỡng đúng sẽ nhận được máu mới hoàn toàn tốt, và cơ thể sẽ tự động điều chỉnh đáng kể về sức khỏe theo hướng tích cực. Các chỉ dẫn của ông rất rõ ràng, dễ hiểu. Các nguồn thức ăn mà ông giới thiệu đâu có đắt đỏ và khó kiếm tìm trong thực tế đời sống của chúng ta. Còn lợi ích của nó, các bạn hãy cùng trải nghiệm và tự các bạn sẽ có câu trả lời!\r\n\r\nMã hàng	8935280908109\r\nTên Nhà Cung Cấp	Thái Hà\r\nTác giả	Nishi Katsuzo\r\nNgười Dịch	Trương Thị Thảo\r\nNXB	NXB Lao Động\r\nNăm XB	2021\r\nTrọng lượng (gr)	250\r\nKích Thước Bao Bì	20.5 x 14.5 cm\r\nSố trang	247\r\nHình thức	Bìa Mềm\r\nSản phẩm hiển thị trong	\r\nThái Hà\r\nSản phẩm bán chạy nhất	Top 100 sản phẩm Y học bán chạy của tháng\r\nGiá sản phẩm trên Fahasa.com đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như Phụ phí đóng gói, phí vận chuyển, phụ phí hàng cồng kềnh,...\r\nNhiều bạn đọc Việt Nam – những độc giả mến trọng của tôi, có thể là đang có trong nhà mình, hoặc đang đọc, hoặc đang trải nghiệm những điều nào đó trong cuốn sách nhỏ “Những phương thức phục hồi sức khỏe theo tự nhiên” của Thầy Nishi Katsuzo. Trong dòng chảy tràn đầy năng lượng mạnh mẽ của yêu thương đang dâng trào từ trái tim; trong niềm khát khao mãnh liệt muốn được cung cấp thêm những thông tin, tôi cho là, khá quan trọng, khá cấp thiết và luôn là thời sự, đến tất cả những ai đang rất quan tâm trong cuộc sống đương đại: Liệu có phương cách nào giúp chúng ta tránh được những căn bệnh hiểm nghèo ngày càng gia tăng, không chỉ ở những người cao tuổi, mà ngay cả những người còn khá trẻ – đang độ tuổi cống hiến nhiều nhất? Thủ phạm của các căn bệnh như nhồi máu cơ tim, tai biến mạch máu não, liệt nửa người, thậm chí chết “bất đắc kỳ tử”… là gì? Những sự ra đi quá đường đột… đã để lại những nỗi đau xé ruột…!!! Mới 3 ngày trước đây tôi vừa hẹn qua điện thoại, sẽ tặng bạn tôi một cuốn sách tôi vừa dịch về sức khỏe… và bạn tôi cũng hẹn sẽ tặng tôi một tập thơ mà bạn tôi vừa xuất bản…\r\n', 75000, 'Làm Sạch Mạch Và Máu', 'NXB Lao Động', 'https://cdn0.fahasa.com/media/catalog/product/i/m/image_235288.jpg', 'https://cdn0.fahasa.com/media/catalog/product/i/m/image_235288.jpg', 'https://cdn0.fahasa.com/media/catalog/product/i/m/image_235288.jpg'),
('25', 'Tiểu Sử Hồi Ký', 'Một người Việt trầm lặng của tác giả Jean-Claude Pomonti - thêm một tác phẩm độc đáo với những góc nhìn mới, về Thiếu tướng tình báo Phạm Xuân Ẩn. Một người Việt trầm lặng - món quà tri thức đầy trân trọng và ý nghĩa dành cho độc giả nhân dịp kỷ niệm sự kiện lịch sử 30-4 năm nay. Cùng với cuốn \"X6- Điệp viên hoàn hảo\" của Larry Berman, đây là cuốn không thể thiếu trên kệ sách lịch sử chiến tranh Việt Nam của mỗi gia đình người Việt.', 78000, 'Một Người Việt Trầm Lặng', 'NXB Tổng Hợp TPHCM', 'https://cdn0.fahasa.com/media/catalog/product/i/m/image_225158.jpg', 'https://cdn0.fahasa.com/media/flashmagazine/images/page_images/mot_nguoi_viet_tram_lang/2021_05_10_17_04_19_2-390x510.jpg', 'https://cdn0.fahasa.com/media/flashmagazine/images/page_images/mot_nguoi_viet_tram_lang/2021_05_10_17_04_19_6-390x510.jpg'),
('26', 'Tiểu Sử Hồi Ký', 'Tên gốc của tác phẩm là Putin: Innenansichten der Macht. Sách gồm 21 chương, do Hubert Seipel thực hiện trong 5 năm (từ năm 2010 đến 2015). Tác giả đã có hơn 20 buổi phỏng vấn chuyên sâu với Putin, đồng thời tháp tùng ông trên hàng chục chuyến đi trong, ngoài nước.\r\n\r\nSách mở ra góc nhìn mới về nhà lãnh đạo Nga. Putin: Logic của quyền lực phát hành ở Việt Nam cuối tháng 11, do dịch giả Phan Xuân Loan chuyển ngữ, Nhà xuất bản Tổng hợp phát hành. Hubert Seipel tái hiện những dấu mốc chính trong cuộc đời Putin. Năm 1975, Putin tốt nghiệp khoa Luật Đại học Tổng hợp Quốc gia Saint Petersburg. Năm 1985, ông trở thành nhân viên tình báo đối ngoại của Liên Xô ở Đức. Năm 1994, ông trở thành phó chủ tịch thứ nhất của thành phố quê nhà Saint Petersburg. Năm 1996, ông chuyển đến Moskva và được bổ nhiệm nhiều chức vụ quan trọng trong văn phòng Tổng thống Nga. Cuối năm 1999, ông trở thành Tổng thống Nga.', 142000, 'Putin - Logic Của Quyền Lực', 'NXB Tổng Hợp TPHCM', 'https://cdn0.fahasa.com/media/catalog/product/i/m/image_216008.jpg', 'https://cdn0.fahasa.com/media/flashmagazine/images/page_images/putin___logic_cua_quyen_luc___putin_innenansichten_der_macht/2021_03_31_10_11_38_1-390x510.jpg', 'https://cdn0.fahasa.com/media/flashmagazine/images/page_images/putin___logic_cua_quyen_luc___putin_innenansichten_der_macht/2021_03_31_10_11_38_3-390x510.jpg'),
('27', 'Tiểu Sử Hồi Ký', 'Sau thành công vang dội của các cuốn sách Cảm xúc là kẻ thù số một của thành công, Người truyền cảm hứng, TS Lê Thẩm Dương sẽ cho ra mắt Hồi ký Tiến sĩ Lê Thẩm Dương vào ngày 8/3/2019. Báo Sinh Viên Việt Nam – Hoa Học Trò và Langmaster tiếp tục là các đơn vị phát hành cuốn sách này.\r\n\r\nNhà báo Nguyễn Tuấn Anh – Thư ký Tòa soạn báo Sinh Viên Việt Nam, Trưởng ban biên soạn các bộ sách của TS Lê Thẩm Dương, người chấp bút cuốn sách Hồi ký Tiến sĩ Lê Thẩm Dương cho biết đây sẽ là ấn phẩm đặc biệt nhất, được chờ đợi nhất trong số các cuốn sách của TS Lê Thẩm Dương đã từng được xuất bản: Nội dung cuốn sách được chuẩn bị công phu trong hơn một năm trời với hàng trăm cuộc phỏng vấn ở rất nhiều thời gian, địa điểm khác nhau. Nhiều nội dung được viết theo đơn đặt hàng của bạn đọc và người hâm mộ lần đầu tiên được TS Lê Thẩm Dương tiết lộ. Sách có bìa cứng, bìa áo và gần 300 trang ruột màu.', 238000, 'Hồi Ký Tiến Sĩ Lê Thẩm Dương', 'Báo Sinh Viên VN - Hoa Học Trò', 'https://cdn0.fahasa.com/media/catalog/product/u/n/untitled_1_1.jpg', 'https://cdn0.fahasa.com/media/catalog/product/h/o/hoi-ky-tien-si-le-tham-duong.jpg', 'https://cdn0.fahasa.com/media/catalog/product/h/o/hoi-ky-tien-si-le-tham-duong.jpg'),
('28', 'Tiểu Sử Hồi Ký', 'Cuốn sách “Elon Musk - Đặt cả thế giới lên bốn bánh xe điện” mang đến cho độc giả hành trình chinh phục giấc mơ hoang dã của một công ty khởi nghiệp tại Thung lũng Silicon. Giấc mơ đó có đủ đầy sóng gió, khó khăn và sự thông tuệ của người đứng đầu - Elon Musk.\r\n\r\nTesla, hãng ô tô điện được Elon Musk thành lập, đã đứng lên chống lại sức mạnh không chỉ của các nhà sản xuất xe hơi Detroit được chính phủ hậu thuẫn mà còn cả sức mạnh khổng lồ của Big Oil và những nhà tài phiệt đứng sau nó - anh em nhà Koch khét tiếng. Tesla đã mang đến cho thế giới những nhận thức mới và những thành công đáng ngưỡng mộ bên cạnh tranh cãi về ô tô điện và ô tô truyền thống.\r\n\r\nNăm 2018, Tesla Model 3, chiếc xe điện cao cấp dành cho thị trường đại chúng được bán ra, đã định hình lại nhận thức phổ biến về Tesla và thay đổi mối quan hệ của công chúng với các phương tiện cơ giới - giống như Model T của Ford đã làm gần một thế kỷ trước. Vì thế, nếu như Henry Ford là người “đặt cả thế giới lên bốn bánh xe” thì không ai khác ngoài Elon Musk sẽ là người “đặt cả thế giới lên bốn bánh xe điện”.\r\n\r\nCuốn sách sẽ mang đến một góc nhìn toàn cảnh, chân thực về quá trình phát triển của một biểu tượng công nghệ của thế kỷ mới, hoạt động không khác gì chế độ “Insane Mode” trên Tesla Model S. Nó là bản mô tả hoàn hảo về chu kỳ hoạt động của một công ty đã thề rằng sẽ không ngừng nghỉ cho đến khi mọi chiếc xe ô tô điện hoạt động bình thường.\r\n\r\nĐây là câu chuyện về sự khéo léo tuyệt vời nhất của người Mỹ và tiềm năng làm nên lịch sử của nó. Thắt dây an toàn!\r\n\r\nMã hàng	8936184340170\r\nTên Nhà Cung Cấp	Công ty TNHH Xuất Bản Và Truyền Thông Bestbooks Việt Nam\r\nTác giả	Hamish McKenzie\r\nNgười Dịch	Khánh Trang\r\nNXB	NXB Tài Chính\r\nNăm XB	2020\r\nNgôn Ngữ	Tiếng Việt\r\nTrọng lượng (gr)	500\r\nKích Thước Bao Bì	20.5 x 14.5 cm\r\nSố trang	480\r\nHình thức	Bìa Mềm\r\nSản phẩm hiển thị trong	\r\nCông ty TNHH Xuất Bản Và Truyền Thông Bestbooks Việt Nam\r\nSuper Sale Thương Hiệu\r\nSản phẩm bán chạy nhất	Top 100 sản phẩm Kinh Tế bán chạy của tháng\r\nGiá sản phẩm trên Fahasa.com đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như Phụ phí đóng gói, phí vận chuyển, phụ phí hàng cồng kềnh,...\r\nCuốn sách “Elon Musk - Đặt cả thế giới lên bốn bánh xe điện” mang đến cho độc giả hành trình chinh phục giấc mơ hoang dã của một công ty khởi nghiệp tại Thung lũng Silicon. Giấc mơ đó có đủ đầy sóng gió, khó khăn và sự thông tuệ của người đứng đầu - Elon Musk.\r\n\r\nTesla, hãng ô tô điện được Elon Musk thành lập, đã đứng lên chống lại sức mạnh không chỉ của các nhà sản xuất xe hơi Detroit được chính phủ hậu thuẫn mà còn cả sức mạnh khổng lồ của Big Oil và những nhà tài phiệt đứng sau nó - anh em nhà Koch khét tiếng. Tesla đã mang đến cho thế giới những nhận thức mới và những thành công đáng ngưỡng mộ bên cạnh tranh cãi về ô tô điện và ô tô truyền thống.', 169000, 'Elon Musk - Đặt Cả Thế Giới Lên Bốn Bánh Xe Điện', 'NXB Tài Chính', 'https://cdn0.fahasa.com/media/catalog/product/i/m/image_217967.jpg', 'https://cdn0.fahasa.com/media/catalog/product/8/9/8936184340170.jpg', 'https://cdn0.fahasa.com/media/catalog/product/e/l/elon_musk_-_t_c_th_gi_i_l_n_b_n_b_nh_xe_i_n_b_a_4.jpg'),
('29', 'Tiểu Sử Hồi Ký', 'Cuộc sống không bao giờ là chắc chắn và ước mơ cũng sẽ không chờ đợi ai khi bạn không cố gắng hết mình để theo đuổi. BTS đã nỗ lực không ngừng nghỉ từ con số không để cuối cùng đạt được thứ mà họ chưa từng mường tượng ra trước đó.\r\n\r\nGiống như bất kỳ ai trên thế giới này, BTS cũng chỉ là những con người bình thường, khả năng cộng hưởng với thế hệ trẻ luôn được họ truyền tải một cách nhuần nhuyễn trong các bài hát, cho dù đó là góc nhìn cá nhân, quan điểm chính trị dưới hình thức phê bình hay khía cạnh tạo động lực, hoặc bất kể điều gì. Mỗi ngày qua đi, chúng ta đều đấu tranh với những điều khác nhau, “rơi xuống” từ những độ cao khác nhau và cảm thấy nỗi đau tăng dần theo cấp độ. Thế nhưng, dù chúng ta gặp phải điều gì đi chăng nữa, chỉ cần học cách yêu bản thân rồi mọi chuyện đều sẽ ổn. BTS đã tự lên tiếng cho chính bản thân họ - cũng là thế hệ của chúng ta, dù điều đó chẳng dễ dàng chút nào, nhưng sẽ không có “quả ngọt” nếu như không nỗ lực. Chúng ta mạnh mẽ hơn khi đứng dậy sau mỗi lần vấp ngã.  Bởi đó chính là chiếc chìa khóa cho sự trưởng thành.\r\n\r\nTrưởng thành là một hành trình ly kỳ, phải không? Hãy luôn yêu thương bản thân và cất lên tiếng nói của chính mình, A.R.M.Y nhé!\r\n\r\nBẠN HÃY NHỚ NHÉ: ƯỚC MƠ KHÔNG CHỜ ĐỢI AI!!!\r\n\r\nMã hàng	8936186545610\r\nTên Nhà Cung Cấp	AZ Việt Nam\r\nTác giả	Shifra Lushka\r\nNgười Dịch	Phạm Thùy Dung\r\nNXB	NXB Dân Trí\r\nNăm XB	2020\r\nNgôn Ngữ	Tiếng Việt\r\nTrọng lượng (gr)	280\r\nKích Thước Bao Bì	19 x 13 cm\r\nSố trang	240\r\nHình thức	Bìa Mềm\r\nSản phẩm bán chạy nhất	Top 100 sản phẩm Nghệ Thuật - Giải Trí bán chạy của tháng\r\nGiá sản phẩm trên Fahasa.com đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như Phụ phí đóng gói, phí vận chuyển, phụ phí hàng cồng kềnh,...\r\nBTS Ước Mơ Không Chờ Đợi Ai\r\n\r\nCuộc sống không bao giờ là chắc chắn và ước mơ cũng sẽ không chờ đợi ai khi bạn không cố gắng hết mình để theo đuổi. BTS đã nỗ lực không ngừng nghỉ từ con số không để cuối cùng đạt được thứ mà họ chưa từng mường tượng ra trước đó.\r\n\r\nGiống như bất kỳ ai trên thế giới này, BTS cũng chỉ là những con người bình thường, khả năng cộng hưởng với thế hệ trẻ luôn được họ truyền tải một cách nhuần nhuyễn trong các bài hát, cho dù đó là góc nhìn cá nhân, quan điểm chính trị dưới hình thức phê bình hay khía cạnh tạo động lực, hoặc bất kể điều gì. Mỗi ngày qua đi, chúng ta đều đấu tranh với những điều khác nhau, “rơi xuống” từ những độ cao khác nhau và cảm thấy nỗi đau tăng dần theo cấp độ. Thế nhưng, dù chúng ta gặp phải điều gì đi chăng nữa, chỉ cần học cách yêu bản thân rồi mọi chuyện đều sẽ ổn. BTS đã tự lên tiếng cho chính bản thân họ - cũng là thế hệ của chúng ta, dù điều đó chẳng dễ dàng chút nào, nhưng sẽ không có “quả ngọt” nếu như không nỗ lực. Chúng ta mạnh mẽ hơn khi đứng dậy sau mỗi lần vấp ngã.  Bởi đó chính là chiếc chìa khóa cho sự trưởng thành.', 143000, 'BTS Ước Mơ Không Chờ Đợi Ai', 'NXB Dân Trí', 'https://cdn0.fahasa.com/media/catalog/product/b/_/b_a-1_bts-uoc-mo-khong-cho-doi-ai.jpg', 'https://cdn0.fahasa.com/media/catalog/product/b/_/b_a_1_bts-uoc-mo-khong-cho-doi-ai.jpg', 'https://cdn0.fahasa.com/media/catalog/product/b/i/bia_4_bts-uoc-mo-khong-cho-doi-ai.jpg'),
('30', 'Sách Học Ngoại Ngữ', 'Ngữ pháp và từ vựng là hai mảng không thể thiếu trong quá trình học ngoại ngữ nói chung và học tiếng Anh nói riêng. Hai phạm trù này sẽ góp phần giúp chúng ta đạt được sự thành thạo về ngôn ngữ. Nếu như ngữ pháp có các quy tắc, có cấu trúc để tuân theo thì từ vựng lại không có bất cứ quy tắc nào. Do đó, đa số người học đều thấy rất khó để học và nhớ được từ vựng. Đó là còn chưa kể tới có rất nhiều từ có nghĩa giống nhau nhưng lại được sử dụng trong các ngữ cảnh khác nhau và một từ thì lại có rất nhiều nghĩa.', 110000, '30 Chủ Đề Từ Vựng Tiếng Anh', 'NXB Đại Học Quốc Gia Hà Nội', 'https://cdn0.fahasa.com/media/catalog/product/h/h/hh-30-chu-de-tu-vung-tieng-anh_1.jpg', 'https://cdn0.fahasa.com/media/catalog/product/h/h/hh-30-chu-de-tu-vung-tieng-anh_1.jpg', 'https://cdn0.fahasa.com/media/flashmagazine/images/page_images/30_chu_de_tu_vung_tieng_anh_tap_1/2022_11_03_13_35_58_2-390x510.jpg'),
('31', 'Sách Học Ngoại Ngữ', 'Cuốn sách CẨM NANG CẤU TRÚC TIẾNG ANH gồm 25 phần, mỗi phần là một phạm trù kiến thức trong tiếng Anh được trình bày một cách ngắn gọn, đơn giản, cô đọng và hệ thống hoá dưới dạng sơ đồ, bảng biểu nhằm phát triển khả năng tư duy của người học và từ đó giúp người học nhớ kiến thức nhanh hơn và sâu hơn.\r\n\r\nSau hầu hết các phần lí thuyết đều có 20-30 câu bài tập áp dụng để kiểm tra cũng như khắc sâu kiến thức cho người học.', 65000, 'Cẩm Nang Cấu Trúc Tiếng Anh', 'NXB Đại Học Sư Phạm', 'https://cdn0.fahasa.com/media/catalog/product/i/m/image_187866.jpg', 'https://cdn0.fahasa.com/media/catalog/product/c/a/cam_nang_cau_truc_tieng_anh_2_2020_08_28_16_49_55.jpg', 'https://cdn0.fahasa.com/media/catalog/product/c/a/cam_nang_cau_truc_tieng_anh_8_2020_08_28_16_49_55.jpg'),
('32', 'Sách Học Ngoại Ngữ', 'Giá sản phẩm trên Fahasa.com đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như Phụ phí đóng gói, phí vận chuyển, phụ phí hàng cồng kềnh,...', 170000, 'Tổng Ôn Ngữ Pháp Tiếng Anh', 'NXB Hồng Đức', 'https://cdn0.fahasa.com/media/catalog/product/9/7/9786043519112_1.jpg', 'https://cdn0.fahasa.com/media/catalog/product/9/7/9786043519112_1.jpg', 'https://cdn0.fahasa.com/media/catalog/product/9/7/9786043519112_1.jpg'),
('33', 'Sách Học Ngoại Ngữ', 'Cuốn sách được thiết kế theo các unit tương ứng với các chủ điểm trong sách giáo khoa mới của Bộ Giáo dục và Đào tạo. Nội dung cuốn sách bám sát chuẩn kiến thức, kĩ năng của chương trinh học cấp THPT hiện hành. \r\n\r\nTrong mỗi bài học ( unit) gồm có 02 phần: Phần I ( Theory): Ôn tập và củng cố lí thuyết nền tảng về từ vựng (Vocabulary), luyện âm (pronunciation) và ngữ pháp ( grammar) theo chủ điểm của bài học; Phần II ( Excercises) bao gồm các bài tập ngữ pháp và thực hàng các kĩ năng Listening, Reading, Writing và Speaking. Sau các bài học có các bài tập kiểm tra, củng cố. Ngoài ra, các tác giả còn biên soạn phần đáp án để giúp các em tham khảo trong quá trình tự học và rèn luyện kĩ năng làm bài thi.', 38000, 'Bài Tập Bổ Trợ Và Phát Triển Năng Lực Môn Tiếng An', 'NXB Đại Học Quốc Gia Hà Nội', 'https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_34774.jpg', 'https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_34774.jpg', 'https://cdn0.fahasa.com/media/catalog/product/b/a/bai_tap_bo_tro_va_phat_trien_nang_luc_mon_tieng_anh_lop_12___tap_2_3_2020_10_15_16_54_41.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `CartID` varchar(10) NOT NULL,
  `CusID` varchar(12) DEFAULT NULL,
  `State` varchar(10) DEFAULT NULL CHECK (`State` = 'Paid' or `State` = 'Wait'),
  `TotalPrice` float NOT NULL CHECK (`TotalPrice` >= 0),
  `PayDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `BookID` varchar(10) DEFAULT NULL,
  `CusID` varchar(12) NOT NULL,
  `RateID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `ID` varchar(12) NOT NULL,
  `LoginTime` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`ID`, `LoginTime`) VALUES
('', '2022-12-03'),
('2', '2022-12-01'),
('3', '2022-12-01'),
('4', '2022-12-01'),
('5', '2022-12-01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `manage`
--

CREATE TABLE `manage` (
  `Time` date DEFAULT NULL,
  `ManageType` varchar(20) DEFAULT NULL CHECK (`ManageType` = 'Delete' or `ManageType` = 'Insert'),
  `AdID` varchar(12) NOT NULL,
  `BookID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `paymentaccount`
--

CREATE TABLE `paymentaccount` (
  `CusID` varchar(12) NOT NULL,
  `AccountID` varchar(20) NOT NULL,
  `Money` float DEFAULT NULL,
  `Type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `publisher`
--

CREATE TABLE `publisher` (
  `PublisherName` varchar(50) NOT NULL,
  `Locate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `publisher`
--

INSERT INTO `publisher` (`PublisherName`, `Locate`) VALUES
('Báo Sinh Viên VN - Hoa Học Trò', 'Quảng Ngãi'),
('NXB Dân Trí', 'Madrid '),
('NXB Hà Nội', 'Quảng Ngãi'),
('NXB Hội Nhà Văn', 'TP HCM'),
('NXB Hồng Đức', 'Quảng Ngãi'),
('NXB Kim Đồng', 'Hà Nội\r\n'),
('NXB Lao Động', 'TP HCM'),
('NXB Phụ Nữ Việt Nam', 'Quảng Ngãi'),
('NXB Tài Chính', 'Hà Nội'),
('NXB Thế Giới', 'Quảng Bình '),
('NXB Thông Tấn', 'Quảng Ngãi'),
('NXB Tổng Hợp TPHCM', 'TPHCM'),
('NXB Trẻ', 'Quảng Ngãi'),
('NXB Đại Học Quốc Gia Hà Nội', 'Hà Nội'),
('NXB Đại Học Sư Phạm', 'Hà Nội');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rate`
--

CREATE TABLE `rate` (
  `RateID` varchar(10) NOT NULL,
  `StartNumber` int(11) DEFAULT NULL CHECK (`StartNumber` between 1 and 5),
  `Content` text DEFAULT NULL,
  `RateTime` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `read`
--

CREATE TABLE `read` (
  `DateRead` date DEFAULT NULL,
  `CusID` varchar(12) NOT NULL,
  `BookID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reply`
--

CREATE TABLE `reply` (
  `ReplyTime` date DEFAULT NULL,
  `Content` text DEFAULT NULL,
  `AdID` varchar(12) NOT NULL,
  `RateID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `support`
--

CREATE TABLE `support` (
  `StartSupport` datetime DEFAULT NULL,
  `EndSupport` datetime DEFAULT NULL,
  `SupportContent` text DEFAULT NULL,
  `CusID` varchar(12) NOT NULL,
  `AdID` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `ID` varchar(12) NOT NULL,
  `Gender` char(1) DEFAULT NULL,
  `DoB` date DEFAULT NULL,
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `AccountName` varchar(30) DEFAULT NULL,
  `Password` varchar(30) DEFAULT NULL,
  `PhoneNumber` varchar(10) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`ID`, `Gender`, `DoB`, `FirstName`, `LastName`, `Email`, `AccountName`, `Password`, `PhoneNumber`, `Address`) VALUES
('', 'M', '2002-09-06', '', '', '', '', '', '0123456789', 'Quảng Ngãi'),
('1', 'M', '2002-09-06', 'Nguyễn', 'Bảo', 'bao.nguyenminhbaott5@hcmut.edu', 'admin@gmail.com', '31201021080', '0398841276', 'Quảng Ngãi'),
('2', 'M', '2002-01-01', 'Lâm Điền', 'Chinh', 'chinh@hcmut.edu.vn', 'chinh@gmail.com', '123456789', '0935007758', 'Long An'),
('3', 'M', '2002-01-12', 'Ngụy Thành', 'Nam', 'nam@hcmut.edu.vn', 'nam@gmail.com', '123456789', '0935007758', 'Gia Lai'),
('4', 'M', '2002-03-12', 'Linol', 'Messi', 'messi@hcmut.edu.vn', 'messi@gmail.com', '123456789', '0935007758', 'Agrentina'),
('5', 'M', '0000-00-00', 'Cristiano', 'Ronaldo', 'ronaldo@hcmut.edu.vn', 'ronaldo@gmail.com', '123456789', '0935007758', 'Portugal');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `write`
--

CREATE TABLE `write` (
  `AuthorID` varchar(12) NOT NULL,
  `BookID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `write`
--

INSERT INTO `write` (`AuthorID`, `BookID`) VALUES
('DC', '03'),
('EO', '08'),
('EP', '21'),
('GA', '06'),
('HM', '28'),
('HS', '26'),
('JCP', '25'),
('JM', '16'),
('KG', '07'),
('Khotudien', '13'),
('KM', '05'),
('LTD', '27'),
('MT', '01'),
('MW', '22'),
('NHQ', '33'),
('NK', '24'),
('NM', '18'),
('NTG', '09'),
('NTG', '10'),
('NTG', '11'),
('NVCS', '14'),
('PC', '02'),
('PR', '17'),
('RCM', '23'),
('RH', '15'),
('SGM', '20'),
('SL', '29'),
('SSRS', '19'),
('TA', '30'),
('TA', '31'),
('TA', '32'),
('TDJL', '12'),
('THE', '04');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `add`
--
ALTER TABLE `add`
  ADD PRIMARY KEY (`CartID`,`BookID`),
  ADD KEY `BookID` (`BookID`);

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`AuthorID`);

--
-- Chỉ mục cho bảng `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`BookID`),
  ADD KEY `PublisherName` (`PublisherName`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`CartID`),
  ADD KEY `CusID` (`CusID`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`CusID`,`RateID`),
  ADD KEY `RateID` (`RateID`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `manage`
--
ALTER TABLE `manage`
  ADD PRIMARY KEY (`AdID`,`BookID`),
  ADD KEY `BookID` (`BookID`);

--
-- Chỉ mục cho bảng `paymentaccount`
--
ALTER TABLE `paymentaccount`
  ADD PRIMARY KEY (`CusID`,`AccountID`);

--
-- Chỉ mục cho bảng `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`PublisherName`);

--
-- Chỉ mục cho bảng `rate`
--
ALTER TABLE `rate`
  ADD PRIMARY KEY (`RateID`);

--
-- Chỉ mục cho bảng `read`
--
ALTER TABLE `read`
  ADD PRIMARY KEY (`CusID`,`BookID`),
  ADD KEY `BookID` (`BookID`);

--
-- Chỉ mục cho bảng `reply`
--
ALTER TABLE `reply`
  ADD PRIMARY KEY (`AdID`,`RateID`),
  ADD KEY `RateID` (`RateID`);

--
-- Chỉ mục cho bảng `support`
--
ALTER TABLE `support`
  ADD PRIMARY KEY (`CusID`,`AdID`),
  ADD KEY `AdID` (`AdID`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `AccountName` (`AccountName`);

--
-- Chỉ mục cho bảng `write`
--
ALTER TABLE `write`
  ADD PRIMARY KEY (`AuthorID`,`BookID`),
  ADD KEY `BookID` (`BookID`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `add`
--
ALTER TABLE `add`
  ADD CONSTRAINT `add_ibfk_1` FOREIGN KEY (`CartID`) REFERENCES `cart` (`CartID`),
  ADD CONSTRAINT `add_ibfk_2` FOREIGN KEY (`BookID`) REFERENCES `book` (`BookID`);

--
-- Các ràng buộc cho bảng `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `users` (`ID`);

--
-- Các ràng buộc cho bảng `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`PublisherName`) REFERENCES `publisher` (`PublisherName`);

--
-- Các ràng buộc cho bảng `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`CusID`) REFERENCES `customer` (`ID`);

--
-- Các ràng buộc cho bảng `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`CusID`) REFERENCES `customer` (`ID`),
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`RateID`) REFERENCES `rate` (`RateID`);

--
-- Các ràng buộc cho bảng `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `users` (`ID`);

--
-- Các ràng buộc cho bảng `manage`
--
ALTER TABLE `manage`
  ADD CONSTRAINT `manage_ibfk_1` FOREIGN KEY (`BookID`) REFERENCES `book` (`BookID`),
  ADD CONSTRAINT `manage_ibfk_2` FOREIGN KEY (`AdID`) REFERENCES `admin` (`ID`);

--
-- Các ràng buộc cho bảng `paymentaccount`
--
ALTER TABLE `paymentaccount`
  ADD CONSTRAINT `paymentaccount_ibfk_1` FOREIGN KEY (`CusID`) REFERENCES `customer` (`ID`);

--
-- Các ràng buộc cho bảng `read`
--
ALTER TABLE `read`
  ADD CONSTRAINT `read_ibfk_1` FOREIGN KEY (`CusID`) REFERENCES `customer` (`ID`),
  ADD CONSTRAINT `read_ibfk_2` FOREIGN KEY (`BookID`) REFERENCES `book` (`BookID`);

--
-- Các ràng buộc cho bảng `reply`
--
ALTER TABLE `reply`
  ADD CONSTRAINT `reply_ibfk_1` FOREIGN KEY (`AdID`) REFERENCES `admin` (`ID`),
  ADD CONSTRAINT `reply_ibfk_2` FOREIGN KEY (`RateID`) REFERENCES `rate` (`RateID`);

--
-- Các ràng buộc cho bảng `support`
--
ALTER TABLE `support`
  ADD CONSTRAINT `support_ibfk_1` FOREIGN KEY (`CusID`) REFERENCES `customer` (`ID`),
  ADD CONSTRAINT `support_ibfk_2` FOREIGN KEY (`AdID`) REFERENCES `admin` (`ID`);

--
-- Các ràng buộc cho bảng `write`
--
ALTER TABLE `write`
  ADD CONSTRAINT `write_ibfk_1` FOREIGN KEY (`AuthorID`) REFERENCES `author` (`AuthorID`),
  ADD CONSTRAINT `write_ibfk_2` FOREIGN KEY (`BookID`) REFERENCES `book` (`BookID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
