-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 14, 2020 lúc 07:38 AM
-- Phiên bản máy phục vụ: 10.4.8-MariaDB
-- Phiên bản PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `sunhouse8`
--

DELIMITER $$
--
-- Thủ tục
--
CREATE PROCEDURE `popup_bando` ()  NO SQL
select baidang.id,loai.ten_loai,baidang.tieude,baidang.diachi,baidang.sophongngu,baidang.sophongtam,baidang.dientich,baidang.toadoX,baidang.toadoY,baidang.hinhanh,baidang.isChoThue
            from baidang
            join loai
            on loai.id = baidang.loai_id$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baidang`
--

CREATE TABLE `baidang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `tieude` varchar(255) NOT NULL,
  `noidung` longtext NOT NULL,
  `loai_id` bigint(20) UNSIGNED NOT NULL,
  `gia` double NOT NULL,
  `huong` varchar(255) NOT NULL,
  `trangthai` tinyint(1) NOT NULL DEFAULT 1,
  `isChoThue` tinyint(1) NOT NULL,
  `sophongngu` int(11) DEFAULT 0,
  `sophongtam` int(11) DEFAULT 0,
  `namxaydung` int(11) DEFAULT NULL,
  `diachi` text NOT NULL,
  `toadoX` double(8,2) NOT NULL,
  `toadoY` double(8,2) NOT NULL,
  `hinhanh` longtext DEFAULT NULL,
  `ngayhethan` date DEFAULT NULL,
  `choduyet` tinyint(1) NOT NULL,
  `dientich` double NOT NULL,
  `id_goi` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `baidang`
--

INSERT INTO `baidang` (`id`, `user_id`, `tieude`, `noidung`, `loai_id`, `gia`, `huong`, `trangthai`, `isChoThue`, `sophongngu`, `sophongtam`, `namxaydung`, `diachi`, `toadoX`, `toadoY`, `hinhanh`, `ngayhethan`, `choduyet`, `dientich`, `id_goi`, `created_at`, `updated_at`) VALUES
(1, 9, 'Bài viết thứ 11', 'Quidem iure dolorum qui nobis nihil. Mollitia sit quidem consequatur atque voluptas eum nihil. Libero non sapiente voluptatibus ipsa impedit voluptate. Atque eos temporibus quam odio. Itaque voluptatum ut quaerat ratione eum tempore. Vitae qui impedit non earum. Perferendis omnis dolorem tenetur sunt quidem deserunt tenetur. Velit eaque illo aut veniam laborum. Sapiente illum expedita quibusdam suscipit. Earum incidunt reprehenderit eveniet amet ea. Ut et in et velit. Voluptatibus enim corporis delectus praesentium illo quibusdam animi quo. Amet quibusdam quasi aut repellendus sunt. Quae illo eum ut veritatis eos. Sit reprehenderit eveniet dolore rem nostrum. Eius ut possimus quasi iure velit. Est fugit rerum distinctio mollitia omnis. Vel expedita aut eaque blanditiis labore et. Delectus dolorem ipsam aliquid accusantium voluptatem.', 1, 7405, 'Bắc', 0, 0, 5, 3, 1997, '6032 Zulauf Ramp Apt. 380\nCleoland, HI 74279-4239', 98.00, 8.00, '', NULL, 0, 1497, 7, '1983-09-18 20:56:11', NULL),
(2, 8, 'Bài viết thứ 18', 'Qui dolores doloribus perspiciatis unde rerum dignissimos fugit. Veritatis iste dolores praesentium facere. Dolorem id explicabo culpa vitae. Et dolores qui commodi mollitia itaque. Id placeat cum rerum. Expedita velit voluptas nobis eius quos quasi deserunt. Molestiae hic alias vel inventore ab accusamus quo. Aliquam veritatis recusandae dolorem rerum a aperiam illo. Omnis explicabo deserunt suscipit. Blanditiis ut delectus harum sed magni esse. Eius non incidunt optio et. Atque ipsam autem perspiciatis non sint sequi. Recusandae nostrum nobis non illo sapiente voluptatem aperiam. Dignissimos nulla consequatur doloremque. Et tenetur quisquam voluptas pariatur aut sed eum sed. Voluptas aut voluptatem sed ipsam enim. Et dolores minus est eos consequatur quasi eligendi. Nostrum expedita excepturi blanditiis. Non est molestiae velit voluptatibus natus rerum exercitationem. Dignissimos soluta voluptates voluptate dolores.', 2, 4744, 'Đông Bắc', 0, 1, 3, 3, 1989, '322 Deshawn Mount\nAndersonland, HI 78896-9750', 62.00, 81.00, '', NULL, 1, 1865, 10, '1987-02-03 17:28:46', NULL),
(3, 7, 'Bài viết thứ 17', 'Animi esse amet aut accusamus similique quia. Ipsum quibusdam quidem voluptate sint nemo et eaque. Quibusdam vero similique omnis voluptas. Et fugit sint in reprehenderit. Ea sunt reprehenderit non eaque ipsa. Quaerat cumque ipsum aut vitae veritatis corrupti. Molestiae labore sint ducimus quos nihil sit voluptatem omnis. Molestias eligendi reprehenderit aut occaecati deserunt blanditiis. Et nemo quod quia perspiciatis qui dolores delectus. Dolores et nihil consequatur. Similique aut sint deleniti similique recusandae. Possimus nostrum rerum commodi quasi nemo omnis laudantium. Debitis modi quo aut vel quo dolore mollitia. Consequuntur quos officiis sed et adipisci distinctio. Dicta quisquam enim dolorum tempore rerum dignissimos optio. Porro incidunt id eum rerum ut repellat sunt. Harum delectus atque numquam quibusdam. Aspernatur consequatur laudantium ut odio. Mollitia modi adipisci ut deserunt temporibus. Iusto deserunt et ut perferendis aut qui.', 1, 6565, 'Đông Bắc', 0, 0, 5, 1, 2001, '76930 Rolfson Ferry Suite 038\nToymouth, AR 73857', 40.00, 56.00, '', NULL, 0, 2875, 9, '2016-09-10 20:44:28', NULL),
(4, 9, 'Bài viết thứ 8', 'Impedit voluptates corporis maxime ipsum officia. Fugiat recusandae incidunt qui et corrupti voluptate atque et. Molestias laborum odio voluptatem. Quia ut molestias est eum. Qui quas quidem aut. Voluptas dicta architecto vero cupiditate. Expedita non et quam sunt est fugit et. Voluptatem magni tenetur molestias fugit autem ut. Deleniti accusamus repellendus totam. Qui ullam eum ducimus eos. Iusto id dolores sapiente natus ipsam aut enim. Eum eligendi ea nisi. Doloribus omnis aliquam qui asperiores dolorum. Natus tenetur sed vero assumenda rerum. Voluptate aspernatur deserunt esse. Ut dicta laborum quas earum totam aut. Totam velit perspiciatis ea et necessitatibus. Odio distinctio sunt et et. Quod laudantium voluptas totam. Accusamus id sed alias nostrum et minima fugiat. Tempora magni eum dolores ut. Placeat ducimus iste quam et. Sapiente nulla cumque ut sequi. Quis distinctio et autem.', 1, 7181, 'Đông', 1, 0, 5, 1, 2005, '5084 Gretchen Villages\nLake Ellie, TN 20922-5480', 81.00, 26.00, '', NULL, 0, 216, 6, '1985-09-11 10:10:58', NULL),
(5, 5, 'Bài viết thứ 12', 'Quo in voluptas non dolorem. Fugiat assumenda placeat itaque blanditiis assumenda qui. Veritatis voluptates reiciendis ut architecto voluptatem voluptatem placeat. Beatae enim corrupti velit qui veritatis iste nobis cum. Minima atque laborum possimus. Harum quidem dolores distinctio nam maiores. Officia corrupti nulla tempora perspiciatis nemo. Doloremque facere et placeat laborum. At necessitatibus perspiciatis autem possimus sed quisquam dolor. Consequatur quod quaerat qui mollitia. Tempora sed illo et optio. Vitae quia nisi qui totam distinctio. Aut rem eos tempore rem enim. Mollitia magni et molestias modi maiores. Incidunt illum et nam nulla explicabo alias quia. Quia temporibus beatae suscipit quod natus magnam debitis. Accusamus est rerum ut. Praesentium cupiditate fuga nostrum vitae repellat qui aut. Eum quae doloribus eos beatae ea voluptas et quis. Velit nam numquam nam ea repellendus saepe. Laboriosam fugiat ducimus minima quisquam est.', 4, 6660, 'Đông', 1, 1, 5, 3, 1999, '127 Lily Forks Suite 004\nOberbrunnerbury, NM 58609', 22.00, 20.00, '', NULL, 0, 2039, 7, '1996-06-22 16:53:54', NULL),
(6, 9, 'Bài viết thứ 19', 'Nesciunt non dolorum voluptatem. Eaque quasi et cum quibusdam qui. Quasi maxime voluptatem quia. Et dicta nam quidem sint. Expedita numquam repudiandae consequatur debitis ut porro hic enim. Vero quas cumque cum quia et molestias. Fugit qui qui aut. Unde doloribus ex omnis rem. Ut molestias voluptas soluta sed aliquam nihil cupiditate quia. Sint cumque exercitationem adipisci inventore inventore amet autem. Cumque nisi non ratione sunt enim voluptates. Et est fuga et sapiente aut soluta fugiat. Eum autem consequatur ad dolorum aperiam et suscipit. Enim sunt eius neque et eum molestiae explicabo. Sit incidunt aperiam aut aliquam sit sed. Libero placeat quis veritatis consequuntur. Sint cupiditate et vel exercitationem rerum modi. Ex est qui aspernatur voluptatum. Est mollitia et rem asperiores. Pariatur est architecto voluptatum odit suscipit dolore esse et. Deleniti pariatur repellendus sit repudiandae illum.', 4, 4204, 'Đông Bắc', 1, 0, 2, 3, 1996, '620 Antoinette Drive Apt. 100\nMekhihaven, PA 75346-9206', 94.00, 84.00, '', NULL, 1, 935, 6, '1974-02-05 17:55:47', NULL),
(7, 9, 'Bài viết thứ 7', 'Consequatur et ex eligendi aut labore cumque excepturi molestias. Natus rerum dolorem cupiditate doloremque et unde. Voluptas aliquam dolor dolor eveniet voluptas molestiae nihil. Quo porro et autem iste incidunt. Iure omnis exercitationem velit sunt quo. Iure iste et dicta molestiae quia qui non. Iste voluptatem officiis rerum molestiae qui natus ab. Pariatur temporibus rerum aut aut architecto incidunt. Omnis totam facilis excepturi dolorem omnis aut autem. Illo quia sit debitis et optio illum porro. Ab qui praesentium suscipit officiis. Voluptatem voluptas consequuntur nisi beatae. Voluptatem sed qui placeat consequatur dolorem quo autem. Sunt quis perferendis quos. Aut totam expedita cum ut at. Nam natus dignissimos dolor id. Cupiditate sit dolor nam quo aut facilis provident. Animi labore et rerum corrupti eveniet nesciunt totam qui.', 5, 6187, 'Tây', 0, 1, 3, 1, 2001, '8691 Lehner Light\nPort Lou, GA 66870', 9.00, 76.00, '', NULL, 0, 1133, 9, '2009-09-08 12:59:14', NULL),
(8, 8, 'Bài viết thứ 6', 'Quis quae ut non aut. Maxime facilis qui vel suscipit quam dolore et. Nesciunt possimus illum nemo ipsa dolor qui minima. Error deleniti in commodi nam quos a rerum. Aut eum et dolor esse. Quis optio quas voluptatem fugiat non. Est qui rerum animi ut. Qui voluptatem amet cum corrupti excepturi. Consequatur sit quibusdam exercitationem perspiciatis aut. Voluptatum rerum ipsa rerum blanditiis. Assumenda facilis nam et aut excepturi explicabo vero. Ut in in dolorem doloribus corrupti. Officia fugit doloremque velit. Quasi consequatur delectus error incidunt soluta qui. Nihil sit delectus qui minima omnis. Voluptatem nihil reiciendis nobis quaerat quae. Optio tempora suscipit saepe excepturi quis doloremque. Repellat nulla animi quasi alias provident aspernatur. Qui aliquam ea officiis neque quam aut praesentium non. Id repellendus ut quam alias dolores nesciunt dolorem. Consequatur quis atque dolores voluptates.', 1, 6434, 'Bắc', 1, 1, 4, 2, 1999, '581 Tromp Union Apt. 979\nNew Nathanial, OK 32319', 64.00, 70.00, '', NULL, 1, 2095, 7, '1984-09-15 10:18:31', NULL),
(9, 6, 'Bài viết thứ 1', 'Ullam distinctio ut rerum ut architecto quas. Harum nobis quis nulla quis quisquam expedita minus. Enim quos amet ipsum quo. Dolores hic velit fugit voluptatum est odio ad. Ut maiores quia quas consequuntur. Cum omnis officia possimus nihil nobis perferendis. Rerum maxime ex perspiciatis eos aliquam culpa sint. Sed quo aliquid doloribus et ex doloribus ut. Vero distinctio ducimus deserunt nemo. Accusantium veniam aut commodi non neque dolor ipsam. Et necessitatibus autem itaque nihil magni reprehenderit veniam. Et alias doloribus possimus doloribus iusto voluptas. Ut ex et expedita aut adipisci delectus. Autem repellat exercitationem in omnis necessitatibus. Perspiciatis quia quaerat voluptatem vero nihil tempora provident. Qui fugit omnis odio sapiente facilis aut rerum neque. Eum saepe dolorum molestiae est rerum quae. Hic et nam inventore omnis iure qui blanditiis ad. Ut tenetur quod ipsa.', 3, 6048, 'Đông Bắc', 1, 0, 4, 2, 1980, '850 Jacobson Heights\nLake Isabel, WY 24246-0333', 16.00, 92.00, '', NULL, 0, 1969, 10, '1998-03-04 01:22:18', NULL),
(10, 5, 'Bài viết thứ 4', 'Qui excepturi architecto molestias ullam. Recusandae voluptatem est consequatur quae exercitationem. Porro fuga doloribus dolorum at. Sunt sed qui placeat molestias. Ut et accusantium rerum non eos ullam explicabo. Ipsum cumque reiciendis ab officia amet similique. Consequatur quia quaerat doloribus sint perferendis nihil optio. Accusamus non accusamus sunt delectus eius modi sed quibusdam. Omnis ipsa reprehenderit omnis perferendis recusandae qui fugit aut. Hic in et esse repellendus soluta qui eos. Temporibus animi laudantium autem quod. Vero minus suscipit omnis enim consectetur voluptas. Eum tempore nesciunt pariatur excepturi. Est veritatis sapiente praesentium magnam eveniet. Ipsam quidem tempore eveniet est sit similique consequatur est. Inventore rem culpa error doloribus velit. Non magnam ratione omnis numquam facilis quia. Autem quia exercitationem id.', 4, 6133, 'Tây Nam', 0, 0, 5, 1, 2000, '459 Sandy Turnpike\nNorth Mervinville, ND 03751-2051', 89.00, 17.00, '', NULL, 0, 316, 6, '2002-08-22 04:21:09', NULL),
(11, 6, 'Bài viết thứ 15', 'Numquam rerum architecto nihil odit. Sit quibusdam iste quaerat eveniet voluptatem. Illo nihil voluptate minima saepe repellat. Ratione dicta molestiae est voluptatum odio aut asperiores sint. Eligendi architecto sapiente assumenda est. Doloremque et magnam non excepturi neque. Quidem omnis nulla suscipit sint et molestias soluta. Velit iure molestias quia sint voluptas aliquam. Rerum et recusandae ducimus ipsum deserunt laboriosam. Ad aut occaecati numquam necessitatibus similique sed. Et atque quaerat odio velit. Occaecati odio numquam omnis tempora itaque pariatur quam. Ut voluptatem fugiat voluptas odio quod et tenetur. Quas architecto numquam et fugiat in. Voluptatem ea officiis consequatur quibusdam architecto. Temporibus repudiandae et vel aut. Perferendis nam est adipisci. Eveniet a et blanditiis. Et quidem et iusto et. Porro ut laboriosam itaque quibusdam quibusdam. Unde possimus impedit earum velit quaerat.', 5, 6151, 'Đông Nam', 1, 0, 2, 3, 1997, '19604 Pamela Plaza Suite 664\nBricebury, OR 23615-7628', 48.00, 45.00, '', NULL, 0, 2406, 5, '1979-12-29 18:41:45', NULL),
(12, 10, 'Bài viết thứ 16', 'Facilis eligendi nesciunt eveniet. Earum vero et molestias quo numquam. Voluptatibus molestiae eligendi qui est autem qui nulla. Et quibusdam aut id neque enim in. Quia est inventore explicabo dignissimos vitae nesciunt consequatur in. Atque iure maxime reiciendis dolorem. Quis culpa adipisci autem ratione quas. Doloribus assumenda earum qui asperiores et sed dolore. Voluptatem ratione quia consequuntur et non. Occaecati ut distinctio non ut. Rerum est in aperiam repellat. Eos est praesentium nostrum sequi. Aliquid necessitatibus distinctio beatae id aperiam consequatur dolores suscipit. Laudantium aliquam molestias rerum recusandae architecto. Ullam vitae labore repellat maiores et. Laborum fugit soluta et quaerat consequuntur. Rerum omnis sed blanditiis earum esse. Voluptas exercitationem aut blanditiis. Quisquam quo numquam molestias maiores. Veritatis voluptatem dignissimos quia fugiat quia dolorem in nihil. Ut sit numquam animi ad sed fuga quidem.', 5, 7202, 'Nam', 0, 1, 2, 2, 1990, '1406 Porter Motorway\nMarquardtburgh, GA 09833', 17.00, 43.00, '', NULL, 0, 1910, 6, '2002-02-17 07:21:30', NULL),
(13, 7, 'Bài viết thứ 2', 'Provident sunt quasi tenetur quas et. Qui dolores beatae repellat enim hic sit. Autem dignissimos est provident quia. Voluptatum aut quis et natus et quia. Inventore quam odio pariatur est assumenda quidem. Nihil assumenda reprehenderit eveniet magnam ut. Perferendis et recusandae aliquid consequatur at porro ut. Voluptas rem sunt nemo laboriosam. In alias voluptatem quia pariatur. Est voluptatibus et est. Vel in ea autem quas aliquid. Quisquam provident accusamus provident est voluptate. Sapiente qui quam nesciunt sit. Quia impedit autem impedit laborum voluptas velit asperiores. At et ullam dolores commodi vero. Omnis debitis saepe facere autem dolore vitae amet vitae. Dolorum eveniet officiis impedit veniam consectetur esse sint. Qui veritatis ut architecto. Quod deleniti et rerum consequatur ut est. Pariatur non aut consequuntur quisquam.', 5, 7335, 'Đông Nam', 1, 0, 5, 1, 1990, '49400 Cassidy Wall\nGayleview, NM 08239', 53.00, 75.00, '', NULL, 1, 1744, 8, '1996-11-10 05:28:38', NULL),
(14, 6, 'Bài viết thứ 20', 'Ut illum omnis aut in. Vel libero nulla reprehenderit ratione est sequi ex. Quia architecto a ut ut iste non asperiores. Excepturi sit repellat fugiat aut culpa voluptatem et quae. Dicta voluptates aut quia modi. Unde laboriosam voluptas nisi aliquid dolor repellendus eligendi iure. Ut pariatur corrupti dolores praesentium sapiente. Consequuntur exercitationem eaque assumenda dolorum sed quaerat est enim. Repudiandae omnis eveniet nostrum nobis. Quia possimus eaque ipsa itaque ipsa. Magnam totam omnis tenetur doloremque sit adipisci. Voluptate dolorem saepe quae nihil et et officiis. Et at magni nesciunt enim dolorem similique. Odio mollitia voluptatem voluptates molestias repellat necessitatibus doloribus autem. Commodi laborum sed possimus ad. Aperiam et saepe adipisci tenetur accusantium. Totam accusantium rerum delectus adipisci et saepe fugiat. Possimus excepturi accusamus nostrum maxime est.', 5, 5928, 'Bắc', 0, 1, 4, 2, 1981, '885 Candida Orchard Suite 069\nNorth Graham, NM 40616-3139', 85.00, 51.00, '', NULL, 1, 2337, 10, '1977-01-16 18:55:14', NULL),
(15, 7, 'Bài viết thứ 5', 'Qui autem dolorem et dolorem. Ea totam odio ea sed amet dolorem impedit aut. Expedita fugiat dolor repellendus est corrupti. Sint sed veniam asperiores aut in explicabo suscipit quasi. Aliquid assumenda voluptas ut maiores reiciendis eaque et. Ut quam nemo iste at sed et mollitia. Consequatur sapiente corrupti debitis atque. Quis soluta voluptas animi voluptatem. Esse odit aliquid error quod consectetur harum voluptatum ad. Accusamus sunt nihil asperiores a enim ab. Iste odio quaerat dolor sed placeat fuga nam. Aliquam veritatis dolor ex illo. Eum accusantium dolor et reiciendis. Veniam laboriosam quis odio consequatur et. Veritatis suscipit nesciunt aut rem minus consequatur aperiam. Veniam suscipit saepe quis et. Eveniet sunt corporis harum eos voluptatem voluptas est. Tenetur optio corporis illum doloribus repellat molestiae enim.', 3, 3082, 'Tây Bắc', 0, 1, 4, 1, 1983, '1235 Cedrick Flat Suite 128\nWest Shawna, AL 94065-8166', 67.00, 10.00, '', NULL, 0, 2458, 5, '2009-04-26 18:47:51', NULL),
(16, 5, 'Bài viết thứ 3', 'Voluptas quia quasi impedit dolore quisquam. Aliquid nemo quam porro aperiam voluptas maiores itaque. Corrupti error porro aut at quam culpa. Nam fugit earum temporibus similique repellendus doloremque. Tempora ad impedit ad veniam et maxime sunt. In accusamus dicta ipsum voluptatum vel nulla. Aliquid ex minima consequuntur sapiente a. Sequi excepturi ipsum est aliquam. Atque molestiae cupiditate voluptas. Quia laudantium ea consequatur sed id. Quam facere voluptatem vel dolorum non vel. Consequatur nam ut atque illo fugiat. Necessitatibus molestiae voluptatem nobis placeat. Dolores voluptatum doloribus est sint et dolorem ratione. Quia molestias blanditiis sunt consequatur esse. Temporibus ducimus aut molestiae fugit. Inventore assumenda sed eaque vitae. Beatae sunt est eligendi cum reprehenderit. Doloremque eligendi provident explicabo. Corporis eaque id fugiat quam ab repudiandae.', 3, 3820, 'Tây Bắc', 1, 0, 5, 3, 2006, '5246 Esta Squares Suite 711\nHermannchester, ND 46155', 6.00, 80.00, '', NULL, 0, 1906, 9, '2017-11-05 22:41:30', NULL),
(20, 6, 'Bài viết thứ 13', 'Vel repudiandae sit dolore quis sed aliquid consequatur. Voluptatem maxime voluptatem exercitationem laborum. Non est necessitatibus impedit ut ullam corporis nesciunt. Et et et aut. Qui consequatur voluptatum mollitia consequatur ut. Incidunt inventore ea necessitatibus at. Hic distinctio error neque. Quas animi ut at non soluta fugit. Nemo perferendis distinctio labore sunt culpa ut libero. Nihil occaecati eligendi consequatur quia qui laborum quo. Et rerum neque alias qui alias numquam deserunt et. Delectus cumque voluptatibus libero eos. Ipsam laudantium aut commodi dolorem eligendi quos. Sed dicta dolor asperiores voluptatem. Soluta natus accusantium rerum laborum voluptas quam perferendis assumenda. Eos non quis molestiae. Quo explicabo magni iste ab vel. Sit nesciunt ipsum praesentium quaerat doloremque tempore.', 4, 3217, 'Tây', 1, 0, 5, 2, 1999, '918 Howell Lodge Suite 295\nNorth Ressie, CO 69502', 47.00, 8.00, '', NULL, 1, 961, 6, '1980-06-01 02:59:46', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baocao`
--

CREATE TABLE `baocao` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `baidang_id` bigint(20) UNSIGNED NOT NULL,
  `noidung` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `baidang_id` bigint(20) UNSIGNED NOT NULL,
  `noidung` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`id`, `user_id`, `baidang_id`, `noidung`, `created_at`, `updated_at`) VALUES
(1, 8, 7, 'Quisquam eum rerum ut quam. Est totam earum sed sed explicabo quidem.', '1987-09-21 03:58:03', NULL),
(2, 3, 8, 'Quasi ipsum necessitatibus vel in. Aliquid labore natus aut non aut.', '2011-05-29 13:05:03', NULL),
(3, 7, 8, 'Natus doloremque deleniti qui aut incidunt. Aut magnam voluptas nihil.', '1973-02-01 20:39:42', NULL),
(4, 6, 10, 'Suscipit ullam et voluptas deserunt et. Et molestiae ut atque.', '1974-05-15 00:49:44', NULL),
(5, 6, 7, 'Non in sunt expedita maxime vel quis. Officiis rerum voluptatum ut.', '1997-01-05 06:04:04', NULL),
(6, 4, 8, 'Sunt dolor alias non dolorem doloribus. Sunt possimus similique magni assumenda velit.', '1970-01-24 10:23:59', NULL),
(7, 1, 7, 'Deleniti voluptatem quis est fuga qui voluptas. Nesciunt pariatur maiores cupiditate ut.', '1998-11-27 20:35:35', NULL),
(8, 7, 4, 'Et voluptatem sed pariatur hic impedit. Eaque cum nobis possimus voluptatem corrupti eum.', '1985-01-28 18:44:02', NULL),
(9, 7, 6, 'Voluptatum repellat consequatur debitis enim repudiandae. Nulla quibusdam eum ut amet dolor eos.', '1995-07-15 13:57:19', NULL),
(10, 10, 2, 'Corrupti et non ipsa et quidem. Consequatur quia vitae explicabo dolores ut quia.', '1977-01-15 12:09:20', NULL),
(11, 6, 3, 'Itaque rerum eum adipisci. Laborum et sint fugit et similique.', '2013-04-09 20:05:28', NULL),
(12, 6, 5, 'Vel aut atque harum velit. Consequuntur dolores quas voluptatum autem non qui repudiandae.', '1985-02-11 07:07:23', NULL),
(13, 10, 6, 'Neque dicta eius ipsa iusto. Possimus qui iste odio voluptatibus. Voluptate optio delectus vel.', '1988-08-05 20:06:52', NULL),
(14, 5, 10, 'Sed esse accusamus fugit dolor numquam voluptatem. Aut consequatur et alias.', '2006-08-19 23:16:35', NULL),
(15, 7, 8, 'A sapiente autem voluptatem maxime. Qui placeat rem dolores dolores quod. Sint hic qui aperiam.', '1971-04-10 12:49:37', NULL),
(16, 3, 6, 'Sapiente rem non iure quam sunt vel soluta. Et architecto eveniet at aperiam sed distinctio.', '1989-05-14 13:23:36', NULL),
(17, 3, 9, 'Nesciunt autem qui alias culpa. Velit ex cumque enim quam. Deserunt rerum animi eius nihil.', '1996-05-07 03:51:38', NULL),
(18, 6, 6, 'Repudiandae est pariatur id. Eaque eum et itaque non unde. Sed perspiciatis mollitia fugit.', '2013-05-15 04:08:15', NULL),
(19, 10, 7, 'Illum nulla accusantium reiciendis temporibus. Reiciendis animi culpa possimus est ad beatae.', '2020-05-19 07:50:02', NULL),
(20, 5, 4, 'Inventore sequi iusto dolor. Est atque et magnam qui. Sint id et doloribus.', '1972-03-03 07:22:34', NULL),
(21, 1, 10, 'sadsad', '2020-12-13 00:12:56', '2020-12-13 00:12:56'),
(22, 1, 10, 'sasd', '2020-12-13 00:13:24', '2020-12-13 00:13:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhgia`
--

CREATE TABLE `danhgia` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `baidang_id` bigint(20) UNSIGNED NOT NULL,
  `sao` int(11) DEFAULT NULL,
  `noidung` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `danhgia`
--

INSERT INTO `danhgia` (`id`, `user_id`, `baidang_id`, `sao`, `noidung`, `created_at`, `updated_at`) VALUES
(1, 10, 7, 5, 'Eos et repudiandae inventore alias.', NULL, NULL),
(2, 5, 1, 4, 'Sed tempore eligendi eos quisquam ad.', NULL, NULL),
(3, 1, 1, 4, 'Adipisci repudiandae reiciendis ut unde qui eos.', NULL, NULL),
(4, 4, 7, 4, 'Dicta impedit quia dolor distinctio magni. Sed eius ut fugit sed.', NULL, NULL),
(5, 10, 9, 4, 'In et perferendis ea adipisci est voluptate. Non consequatur distinctio et.', NULL, NULL),
(6, 10, 7, 5, 'Aliquid officia at sed laudantium non excepturi.', NULL, NULL),
(7, 10, 10, 3, 'Repellat omnis consequatur sunt vel. Sit quidem excepturi dolore qui.', NULL, NULL),
(8, 4, 8, 2, 'Nesciunt facere quia consequatur necessitatibus laborum.', NULL, NULL),
(9, 8, 1, 1, 'Libero quia quos est quis sint minus eum.', NULL, NULL),
(10, 3, 4, 1, 'Ut rerum dolorem molestiae sunt dolore voluptatem sed alias.', NULL, NULL),
(11, 3, 6, 4, 'Quia velit aut autem ea illum. Est nostrum rerum et laudantium iste.', NULL, NULL),
(12, 3, 10, 4, 'Quis laboriosam impedit veritatis. Ipsa reprehenderit sunt odit impedit.', NULL, NULL),
(13, 7, 5, 2, 'Consequuntur ab esse laborum aperiam laudantium. Odio non et quam modi.', NULL, NULL),
(14, 6, 3, 1, 'Perspiciatis non velit blanditiis minima est.', NULL, NULL),
(15, 6, 5, 1, 'Omnis nesciunt quo autem excepturi sequi aut qui.', NULL, NULL),
(16, 7, 10, 3, 'Reprehenderit eum repellat dignissimos numquam.', NULL, NULL),
(17, 3, 10, 3, 'Laudantium maxime adipisci quod possimus sed.', NULL, NULL),
(18, 10, 6, 1, 'Aspernatur est fugiat aperiam et dolores dicta.', NULL, NULL),
(19, 8, 9, 4, 'Ratione veniam recusandae et neque quas.', NULL, NULL),
(20, 2, 8, 2, 'Odio excepturi voluptatem consequatur eaque placeat non.', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `duong`
--

CREATE TABLE `duong` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `xaid` varchar(5) NOT NULL,
  `tenduong` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `goi`
--

CREATE TABLE `goi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ten` varchar(255) NOT NULL,
  `gia` double(8,2) NOT NULL,
  `douutien` int(11) NOT NULL,
  `slbaidang` int(11) NOT NULL,
  `hansudung` double(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `goi`
--

INSERT INTO `goi` (`id`, `ten`, `gia`, `douutien`, `slbaidang`, `hansudung`) VALUES
(1, 'Gói thứ1', 2260.00, 1, 6, 4.00),
(2, 'Gói thứ2', 2117.00, 2, 7, 5.00),
(3, 'Gói thứ3', 2398.00, 3, 8, 6.00),
(4, 'Gói thứ4', 2939.00, 4, 9, 7.00),
(5, 'Gói thứ5', 664.00, 5, 10, 8.00),
(6, 'Gói thứ6', 276.00, 6, 11, 9.00),
(7, 'Gói thứ7', 594.00, 7, 12, 10.00),
(8, 'Gói thứ8', 1982.00, 8, 13, 11.00),
(9, 'Gói thứ9', 410.00, 9, 14, 12.00),
(10, 'Gói thứ10', 1190.00, 10, 15, 13.00),
(12, '213123', 321231.00, 1, 1, 1.00),
(14, 'sadsad', 23123.00, 1, 1, 1.00);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai`
--

CREATE TABLE `loai` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ten_loai` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `loai`
--

INSERT INTO `loai` (`id`, `ten_loai`) VALUES
(1, 'Căn hộ'),
(2, 'Biệt thự'),
(3, 'Nhà ở'),
(4, 'Phòng trọ'),
(5, 'Nhà mặt tiền');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `message`
--

CREATE TABLE `message` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `to_user_id` bigint(20) UNSIGNED NOT NULL,
  `noidung` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(85, '2014_10_12_000000_create_users_table', 1),
(86, '2014_10_12_100000_create_password_resets_table', 1),
(87, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(88, '2019_08_19_000000_create_failed_jobs_table', 1),
(89, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(90, '2020_11_17_040902_create_sessions_table', 1),
(91, '2020_11_17_144629_create_table_tinhthanhpho', 1),
(92, '2020_11_17_144709_create_table_quanhuyen', 1),
(93, '2020_11_17_144710_create_table_xaphuongthitran', 1),
(94, '2020_11_17_152633_create_goi', 1),
(95, '2020_11_17_152633_create_table_tiennghi', 1),
(96, '2020_11_17_152634_create_loai_table', 1),
(97, '2020_11_17_154909_create_baidang', 1),
(98, '2020_11_18_004930_create_danhgia_table', 1),
(99, '2020_11_18_004935_create_binhluan_table', 1),
(100, '2020_11_18_005235_create_baocao_table', 1),
(101, '2020_11_18_005338_create_user-goi_table', 1),
(102, '2020_11_18_010031_create_thongtindangky_table', 1),
(103, '2020_11_18_010611_create_duong_table', 1),
(104, '2020_11_18_012319_create_message_table', 1),
(105, '2020_11_20_092249_create_sp', 1),
(106, '2020_12_12_154054_create_table_tiennghi-baidang', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quanhuyen`
--

CREATE TABLE `quanhuyen` (
  `maqh` varchar(5) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(30) NOT NULL,
  `matp` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('EP5xA79zx4ZjxzQdqiPXgZfcmFxMGAZpyqPM31VY', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/91.0.146 Chrome/85.0.4183.146 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiSmFNRDMxcWFLY1o2b3pQdXZ6STd3ZmRYRkhUbkszd1VpaVlsYldxSCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZC91c2VyIjt9czo0OiJsaW5rIjtzOjIyOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvIjtzOjM6InVybCI7YToxOntzOjg6ImludGVuZGVkIjtzOjI0OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYWQiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkOTJJWFVOcGtqTzByT1E1YnlNaS5ZZTRvS29FYTNSbzlsbEMvLm9nL2F0Mi51aGVXRy9pZ2kiO30=', 1607857354),
('JHb0TIMZ4b8PHi28WPsyCyi2J9hEqTbELGZQZXeP', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36 Edg/87.0.664.60', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoieGdEbUZCdnlDSHRpdVdLNDk5UG9DY2kxQ29iMGhmcDdRV29uMUtYZSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1607856530),
('JM00llhl0v3hXGiL9mcuAgDMJAwnauaE2w1OdRju', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36 Edg/87.0.664.60', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYTVLQkxneG5ZZzJKbFBSWFRUN0JHcUxMR0p6NTdjTXhVNkVHWjd3ayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1607857363);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongtindangky`
--

CREATE TABLE `thongtindangky` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `gia` double NOT NULL,
  `loai` varchar(100) NOT NULL,
  `dientich` double NOT NULL,
  `sophongngu` int(11) NOT NULL,
  `sophongtam` int(11) NOT NULL,
  `diachi` text DEFAULT NULL,
  `tiennghi` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tiennghi`
--

CREATE TABLE `tiennghi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ten_tiennghi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tiennghi`
--

INSERT INTO `tiennghi` (`id`, `ten_tiennghi`) VALUES
(5, 'Hồ Bơi'),
(2, 'Lò nướng'),
(3, 'Phòng Gym'),
(4, 'Tủ lạnh'),
(1, 'Điều hòa');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tiennghi-baidang`
--

CREATE TABLE `tiennghi-baidang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tiennghi_id` bigint(20) UNSIGNED NOT NULL,
  `baidang_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tinhthanhpho`
--

CREATE TABLE `tinhthanhpho` (
  `matp` varchar(5) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user-goi`
--

CREATE TABLE `user-goi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `goi_id` bigint(20) UNSIGNED NOT NULL,
  `ngaydangky` date NOT NULL,
  `ngayhethan` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `sdt` varchar(255) DEFAULT NULL,
  `trangthai` tinyint(1) NOT NULL DEFAULT 1,
  `vaitro` enum('user','seller','admin') NOT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `diachi` varchar(255) DEFAULT NULL,
  `namsinh` date DEFAULT NULL,
  `profile_photo_path` text DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `email`, `sdt`, `trangthai`, `vaitro`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `diachi`, `namsinh`, `profile_photo_path`, `remember_token`, `email_verified_at`, `current_team_id`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Carmine Johns V', 'fahey.adah@example.net', '1234566788', 1, 'admin', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, 'profile-photos/JNSO9fUuYLTvfaTrWZzC7ioM8P7iJPodn20d2N1I.png', 'MVXJUpXSZRWBVJDDuL6WwiafSYLzQ3uKiAwoTTzaBbt9gQAvnInA4MsqzI5x', '2020-12-12 08:47:32', NULL, '2020-12-12 08:47:32', '2020-12-13 00:14:43'),
(2, 'user', 'Yvonne Dooley', 'keshawn.lehner@example.org', '512.524.1945', 0, 'user', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'B1tCGC0H1Yo0R8mkqWOWyvzWR8qvRHUDjPRyCw8Wg8eXdSCQtkWtb8n7fgBg', '2020-12-12 08:47:32', NULL, '2020-12-12 08:47:32', '2020-12-13 11:02:31'),
(3, 'zsenger', 'Miss Ashtyn Hessel I', 'durward36@example.org', '838.349.3675', 1, 'user', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'u8HHaF0ICj', '2020-12-12 08:47:32', NULL, '2020-12-12 08:47:32', '2020-12-12 08:47:32'),
(4, 'vprice', 'Mrs. Katlynn Prosacco II', 'champlin.tomas@example.com', '772-270-2505 x591', 0, 'user', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'BXNZxufgmw', '2020-12-12 08:47:32', NULL, '2020-12-12 08:47:32', '2020-12-12 08:47:32'),
(5, 'chadd.hane', 'Dr. Mekhi Fay MD', 'dsenger@example.com', '(296) 668-9425 x921', 0, 'user', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'UvuFUrQH5Y', '2020-12-12 08:47:32', NULL, '2020-12-12 08:47:32', '2020-12-12 08:47:32'),
(6, 'alvera76', 'Adrianna Hamill', 'geo.larson@example.net', '1-627-550-1283 x59715', 0, 'user', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'dUgIcV6bU1', '2020-12-12 08:47:32', NULL, '2020-12-12 08:47:32', '2020-12-12 08:47:32'),
(7, 'ereilly', 'Damian Roberts', 'donnelly.florence@example.net', '467.960.3288', 1, 'user', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'A7GOl4eZ7M', '2020-12-12 08:47:32', NULL, '2020-12-12 08:47:32', '2020-12-12 08:47:32'),
(8, 'wkuphal', 'Ms. Astrid Wiegand', 'carmel00@example.net', '950-919-3177', 1, 'user', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'xsZiwEHmky', '2020-12-12 08:47:32', NULL, '2020-12-12 08:47:32', '2020-12-12 08:47:32'),
(9, 'kozey.neil', 'Annalise Mueller', 'aurelia.rosenbaum@example.org', '+1.870.532.8310', 0, 'user', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'f7Xse7BWf5', '2020-12-12 08:47:32', NULL, '2020-12-12 08:47:32', '2020-12-12 08:47:32'),
(10, 'oaltenwerth', 'Miss Rita Kris', 'zokeefe@example.com', '+1 (435) 239-2289', 0, 'user', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'v0cuxzWhIi', '2020-12-12 08:47:32', NULL, '2020-12-12 08:47:33', '2020-12-13 10:41:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `xaphuongthitran`
--

CREATE TABLE `xaphuongthitran` (
  `xaid` varchar(5) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(30) NOT NULL,
  `maqh` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `baidang`
--
ALTER TABLE `baidang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `baidang_user_id_foreign` (`user_id`),
  ADD KEY `baidang_loai_id_foreign` (`loai_id`),
  ADD KEY `baidang_id_goi_foreign` (`id_goi`);

--
-- Chỉ mục cho bảng `baocao`
--
ALTER TABLE `baocao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `baocao_user_id_foreign` (`user_id`),
  ADD KEY `baocao_baidang_id_foreign` (`baidang_id`);

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `binhluan_user_id_foreign` (`user_id`),
  ADD KEY `binhluan_baidang_id_foreign` (`baidang_id`);

--
-- Chỉ mục cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `danhgia_user_id_foreign` (`user_id`),
  ADD KEY `danhgia_baidang_id_foreign` (`baidang_id`);

--
-- Chỉ mục cho bảng `duong`
--
ALTER TABLE `duong`
  ADD PRIMARY KEY (`id`),
  ADD KEY `duong_xaid_foreign` (`xaid`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `goi`
--
ALTER TABLE `goi`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `loai`
--
ALTER TABLE `loai`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `message_user_id_foreign` (`user_id`),
  ADD KEY `message_to_user_id_foreign` (`to_user_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `quanhuyen`
--
ALTER TABLE `quanhuyen`
  ADD PRIMARY KEY (`maqh`),
  ADD KEY `quanhuyen_matp_foreign` (`matp`);

--
-- Chỉ mục cho bảng `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Chỉ mục cho bảng `thongtindangky`
--
ALTER TABLE `thongtindangky`
  ADD PRIMARY KEY (`id`),
  ADD KEY `thongtindangky_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `tiennghi`
--
ALTER TABLE `tiennghi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tiennghi_ten_tiennghi_unique` (`ten_tiennghi`);

--
-- Chỉ mục cho bảng `tiennghi-baidang`
--
ALTER TABLE `tiennghi-baidang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tiennghi_baidang_tiennghi_id_foreign` (`tiennghi_id`),
  ADD KEY `tiennghi_baidang_baidang_id_foreign` (`baidang_id`);

--
-- Chỉ mục cho bảng `tinhthanhpho`
--
ALTER TABLE `tinhthanhpho`
  ADD PRIMARY KEY (`matp`);

--
-- Chỉ mục cho bảng `user-goi`
--
ALTER TABLE `user-goi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_goi_user_id_foreign` (`user_id`),
  ADD KEY `user_goi_goi_id_foreign` (`goi_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Chỉ mục cho bảng `xaphuongthitran`
--
ALTER TABLE `xaphuongthitran`
  ADD PRIMARY KEY (`xaid`),
  ADD KEY `xaphuongthitran_maqh_foreign` (`maqh`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `baidang`
--
ALTER TABLE `baidang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `baocao`
--
ALTER TABLE `baocao`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `duong`
--
ALTER TABLE `duong`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `goi`
--
ALTER TABLE `goi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `loai`
--
ALTER TABLE `loai`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `message`
--
ALTER TABLE `message`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `thongtindangky`
--
ALTER TABLE `thongtindangky`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tiennghi`
--
ALTER TABLE `tiennghi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tiennghi-baidang`
--
ALTER TABLE `tiennghi-baidang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `user-goi`
--
ALTER TABLE `user-goi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `baidang`
--
ALTER TABLE `baidang`
  ADD CONSTRAINT `baidang_id_goi_foreign` FOREIGN KEY (`id_goi`) REFERENCES `goi` (`id`),
  ADD CONSTRAINT `baidang_loai_id_foreign` FOREIGN KEY (`loai_id`) REFERENCES `loai` (`id`),
  ADD CONSTRAINT `baidang_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `baocao`
--
ALTER TABLE `baocao`
  ADD CONSTRAINT `baocao_baidang_id_foreign` FOREIGN KEY (`baidang_id`) REFERENCES `baidang` (`id`),
  ADD CONSTRAINT `baocao_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `binhluan_baidang_id_foreign` FOREIGN KEY (`baidang_id`) REFERENCES `baidang` (`id`),
  ADD CONSTRAINT `binhluan_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  ADD CONSTRAINT `danhgia_baidang_id_foreign` FOREIGN KEY (`baidang_id`) REFERENCES `baidang` (`id`),
  ADD CONSTRAINT `danhgia_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `duong`
--
ALTER TABLE `duong`
  ADD CONSTRAINT `duong_xaid_foreign` FOREIGN KEY (`xaid`) REFERENCES `xaphuongthitran` (`xaid`);

--
-- Các ràng buộc cho bảng `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `message_to_user_id_foreign` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `message_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `quanhuyen`
--
ALTER TABLE `quanhuyen`
  ADD CONSTRAINT `quanhuyen_matp_foreign` FOREIGN KEY (`matp`) REFERENCES `tinhthanhpho` (`matp`);

--
-- Các ràng buộc cho bảng `thongtindangky`
--
ALTER TABLE `thongtindangky`
  ADD CONSTRAINT `thongtindangky_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `tiennghi-baidang`
--
ALTER TABLE `tiennghi-baidang`
  ADD CONSTRAINT `tiennghi_baidang_baidang_id_foreign` FOREIGN KEY (`baidang_id`) REFERENCES `baidang` (`id`),
  ADD CONSTRAINT `tiennghi_baidang_tiennghi_id_foreign` FOREIGN KEY (`tiennghi_id`) REFERENCES `tiennghi` (`id`);

--
-- Các ràng buộc cho bảng `user-goi`
--
ALTER TABLE `user-goi`
  ADD CONSTRAINT `user_goi_goi_id_foreign` FOREIGN KEY (`goi_id`) REFERENCES `goi` (`id`),
  ADD CONSTRAINT `user_goi_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `xaphuongthitran`
--
ALTER TABLE `xaphuongthitran`
  ADD CONSTRAINT `xaphuongthitran_maqh_foreign` FOREIGN KEY (`maqh`) REFERENCES `quanhuyen` (`maqh`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
