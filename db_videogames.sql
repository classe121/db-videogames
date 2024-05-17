-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8899
-- Generation Time: May 17, 2024 at 02:40 PM
-- Server version: 5.7.24
-- PHP Version: 8.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_videogames`
--

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `ID` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`ID`, `name`) VALUES
(1, 'Adventure'),
(2, 'FPS'),
(3, 'Platform'),
(4, 'Beat em up'),
(5, 'TPS'),
(6, 'RPG'),
(7, 'Simulator'),
(8, 'Action'),
(9, 'Platform'),
(10, 'MOBA');

-- --------------------------------------------------------

--
-- Table structure for table `genres_videogames`
--

CREATE TABLE `genres_videogames` (
  `genres_ID` int(11) NOT NULL,
  `videogame_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `genres_videogames`
--

INSERT INTO `genres_videogames` (`genres_ID`, `videogame_ID`) VALUES
(1, 4),
(1, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(3, 10),
(4, 11),
(5, 12),
(6, 13),
(6, 14),
(7, 15),
(1, 16),
(8, 17),
(3, 18),
(9, 18);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `vote` int(11) NOT NULL,
  `text` text NOT NULL,
  `videogame_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `date`, `vote`, `text`, `videogame_ID`) VALUES
(1, '2010-08-26 09:09:03', 5, 'Deleniti nihil recusandae velit consequatur facilis voluptatem possimus sint ut doloremque.', 8),
(2, '2000-12-15 14:10:09', 2, 'Nostrum molestias ut explicabo voluptatum consectetur quis fugiat culpa ex magni sint labore.', 17),
(3, '2019-09-03 01:09:40', 4, 'Dolor ea illo eaque perspiciatis sit eveniet ducimus omnis voluptatem at fugit vero velit possimus expedita est.', 6),
(4, '2006-09-16 01:15:50', 4, 'Similique animi est ex error non qui blanditiis ullam quo totam aliquid eum velit distinctio voluptatem vero quisquam eum nihil voluptatem aut.', 9),
(5, '1978-08-11 14:49:56', 1, 'Recusandae culpa eveniet ut quia nulla ut eaque voluptatem molestias velit neque exercitationem qui et dignissimos voluptatem veniam iste ea voluptas cumque magnam quae aut.', 14),
(6, '2004-01-16 08:31:17', 1, 'Aut alias iusto odio laborum veritatis quae laboriosam ab quos dolores excepturi veritatis accusantium eligendi consectetur sit voluptatum accusamus consectetur.', 7),
(7, '2018-07-12 22:27:32', 4, 'Enim voluptatibus a in cum recusandae modi laborum voluptas quasi qui repellat alias labore cupiditate.', 15),
(8, '1981-04-28 11:56:07', 4, 'Tempora impedit soluta ad quisquam qui natus consectetur libero qui perferendis et similique et nam ea eos earum sint earum dolores fuga.', 18),
(9, '1986-12-04 14:39:08', 1, 'Ipsam sit eaque dolores optio ut facilis sed quia dolorum in.', 16),
(10, '2005-09-30 00:39:27', 2, 'Ut et praesentium nulla cupiditate asperiores quae aut quisquam quo eveniet ea vero nihil veritatis error porro rerum cum necessitatibus odio rerum.', 5),
(11, '1995-12-25 02:43:34', 5, 'Non eius aperiam ipsa non tempore non maiores qui facere delectus at illo ea consequuntur repudiandae dolorum.', 12),
(12, '1998-01-15 22:19:00', 4, 'Fugit ut vel rem quo ea repudiandae et doloremque soluta.', 15),
(13, '2007-04-01 13:26:43', 3, 'Nisi amet provident rem dolorem quidem vero fugiat aut dolore aut cum quas maiores autem dolorem.', 7),
(14, '1986-01-26 05:13:13', 5, 'Culpa dolor perferendis assumenda sed explicabo aut ipsam aut ut omnis nulla aliquid nemo ducimus minus laudantium quis nulla ut eius modi voluptas soluta est.', 8),
(15, '2011-09-21 19:09:54', 1, 'Qui tempore tenetur est iste in explicabo ratione est perferendis alias iure voluptatem inventore.', 15),
(16, '1974-06-03 20:39:16', 5, 'Est ratione eum repellendus nisi quaerat quos facilis et eum at consequatur sunt officia.', 8),
(17, '1997-06-29 16:34:54', 3, 'Praesentium vel voluptas quo dignissimos at aliquid qui dolor nihil praesentium.', 6),
(18, '1995-01-04 12:06:29', 4, 'Aliquid voluptate sunt vel vel cum perferendis dicta aut quo et sint optio provident voluptatem sit assumenda.', 6),
(19, '2008-05-29 20:44:50', 1, 'Nemo et aut asperiores beatae enim sequi repellendus in debitis aliquid numquam et et quidem laudantium neque.', 4),
(20, '2009-06-27 05:16:56', 2, 'Facilis velit dolores nisi sit numquam qui aut fugiat doloremque aut aut.', 14),
(21, '1989-04-09 12:16:07', 1, 'Eveniet facere ratione ut blanditiis sed aut omnis occaecati ipsam est nulla error nihil qui iusto autem illum.', 12),
(22, '2022-01-01 07:50:07', 4, 'Dolorum consectetur non quaerat ullam saepe sit accusantium incidunt ipsa animi optio voluptas aliquam perferendis sit dolore optio.', 8),
(23, '1970-01-23 17:24:01', 4, 'Itaque qui cumque quia esse temporibus dignissimos totam eveniet error voluptates sapiente ut fuga non sapiente dolores est rem sed nemo.', 15),
(24, '1982-08-04 12:43:59', 5, 'Molestiae mollitia inventore provident illum voluptates nobis rerum eligendi accusamus reprehenderit consequatur inventore aut nulla assumenda dolorum.', 9),
(25, '2002-11-14 10:29:50', 3, 'Ipsam mollitia sed ducimus quia repellendus et sit qui ratione rerum est ut iure error et temporibus inventore tempore.', 5),
(26, '1977-12-20 01:24:06', 3, 'Minus eveniet odit molestias est iste ipsa sed est aliquid nihil ullam inventore impedit molestiae aspernatur accusamus velit non quis necessitatibus sint aut.', 13),
(27, '1988-09-18 01:09:09', 1, 'Vitae ea aspernatur commodi in qui magni qui commodi qui aut voluptas eos adipisci non totam.', 4),
(28, '2010-08-31 09:47:04', 4, 'Sapiente consequatur eius veniam molestiae non voluptatem est aut id ipsa asperiores quis architecto veritatis aut qui.', 8),
(29, '2014-09-15 04:01:59', 4, 'Ex porro doloribus iure repudiandae enim aut cumque aliquid totam voluptatem aut autem omnis enim blanditiis et odio ex ab facere.', 8),
(30, '1975-02-11 01:55:24', 2, 'Aut quisquam qui eligendi praesentium modi in saepe rerum qui voluptatem vero aut tempore laboriosam.', 16),
(31, '2016-08-16 17:22:10', 3, 'Ea explicabo molestiae nobis vel esse qui sint enim aut aut quibusdam quis velit id eaque ut a maxime amet quia consectetur porro dolores aliquam veniam ut repellendus sit enim.', 18),
(32, '1990-07-01 19:49:43', 1, 'Ullam corporis enim earum placeat earum natus doloremque consequuntur ex sunt quaerat fuga.', 6),
(33, '2005-01-21 10:42:10', 5, 'Sequi itaque cupiditate voluptatum quos expedita nostrum quibusdam alias nobis illum et ratione.', 7),
(34, '2006-10-11 21:08:55', 1, 'Ut ipsam porro ipsum aspernatur laudantium quasi rerum est velit numquam repellendus deleniti ullam earum.', 6),
(35, '1992-09-21 06:44:19', 2, 'Consectetur quis tempora et veniam nobis aut et quasi enim voluptatibus odio temporibus dolorem ea.', 9),
(36, '1990-12-05 12:03:25', 2, 'Modi eos consequuntur sit aut officiis voluptatum sed qui dolor minus doloribus distinctio neque assumenda ullam vel.', 12),
(37, '1978-05-27 14:07:22', 5, 'Quas dolore praesentium nulla rerum impedit illum id neque odio quos dignissimos qui nemo explicabo atque veniam porro ut ut commodi rem.', 15),
(38, '1981-05-27 17:12:47', 3, 'Veniam nam quo enim vero cupiditate sunt voluptatem voluptatem placeat vel.', 7),
(39, '2011-01-25 21:17:46', 2, 'Veritatis consequuntur eum rerum repellendus pariatur temporibus molestiae quas itaque qui tempora voluptas sed.', 12),
(40, '1981-03-06 21:31:52', 2, 'Assumenda aut omnis veritatis quia sunt et quod maiores ut veritatis modi doloribus reprehenderit voluptates et aut illo nisi quis officiis quis.', 11),
(41, '2021-06-03 22:28:56', 4, 'Numquam sequi at nesciunt recusandae vitae voluptates eaque distinctio beatae libero error sunt sit temporibus alias id in et.', 16),
(42, '2006-12-05 23:41:25', 4, 'Aut ut et ratione accusantium recusandae repudiandae sequi et dolorem cum modi ipsa aut omnis eaque deserunt aut sit est.', 18),
(43, '1989-09-19 05:18:28', 2, 'Ullam nihil minima dolores sed optio totam architecto in occaecati ad non impedit suscipit ad dolor corporis recusandae eum voluptatem et accusamus quidem ad vitae.', 14),
(44, '1982-08-04 12:26:26', 4, 'Excepturi vitae aut et aut sequi molestias.', 13),
(45, '1989-10-28 04:27:53', 4, 'Aut consequatur perspiciatis quod ex sunt eum ducimus deleniti dignissimos eligendi aliquid omnis enim voluptatum nihil cum qui vel ducimus qui accusantium nisi est.', 6),
(46, '1992-11-13 15:35:27', 2, 'Dolorum possimus hic praesentium asperiores voluptates ut quas est autem ratione debitis aperiam molestiae et qui dolores.', 5),
(47, '1983-02-21 06:33:22', 3, 'Excepturi earum ratione aut officiis ullam impedit et fuga veritatis exercitationem ratione nihil quia fugiat laudantium excepturi ex suscipit et omnis quis quasi sint.', 15),
(48, '1995-12-24 22:14:19', 1, 'Ad eos quasi omnis consequatur est nemo non dolorem qui id nemo totam dolorum nisi sed tempore dolorem aliquid aut sed magnam fugit.', 8),
(49, '2004-10-28 12:09:25', 3, 'Est aut quia sapiente ex eos quis porro autem occaecati libero alias fugiat et non accusantium ut nostrum accusantium.', 18),
(50, '2014-11-24 09:11:28', 1, 'Fugit aliquid ut et doloribus voluptas cum ipsa quisquam recusandae qui enim praesentium voluptatem sed reprehenderit ab minima eum nesciunt dolorem.', 13),
(51, '2010-04-29 00:29:43', 3, 'Sit itaque in facere est et placeat qui quis vero qui delectus molestias et recusandae odit officia.', 17),
(52, '1990-11-08 22:38:40', 3, 'Quia sed quaerat quia sed nesciunt distinctio ex et odit voluptates sit eveniet assumenda ipsum iusto.', 17),
(53, '1975-06-24 18:56:51', 3, 'Delectus ullam sunt enim veritatis numquam tempore quas molestias earum est vel sint et.', 14),
(54, '1977-03-27 17:25:44', 2, 'At voluptate voluptas ipsa illo dolor doloribus illum dolores reprehenderit soluta soluta velit aut.', 8),
(55, '1997-02-09 08:49:12', 4, 'Nihil distinctio ut illo eos assumenda dolor id dolores excepturi officia debitis magni sit sunt voluptas ea autem eius non.', 9),
(56, '1984-06-14 08:32:48', 3, 'Eligendi sunt perferendis earum dolore eum id in dignissimos corrupti nihil vel sed nam sequi rerum blanditiis.', 4),
(57, '1975-01-11 01:06:19', 3, 'Natus est rerum a mollitia qui excepturi aut facilis veniam sit.', 14),
(58, '2014-09-04 05:40:00', 5, 'Laudantium eos ipsam nam error dicta eveniet dolorem quaerat soluta natus et vel ut.', 13),
(59, '1999-12-06 10:18:54', 3, 'Ipsum et enim et quidem qui adipisci vitae rerum.', 5),
(60, '2010-04-03 03:27:14', 1, 'Non et aut doloremque fugit qui natus autem eos nulla dicta impedit et occaecati est beatae provident eaque omnis suscipit soluta non corrupti eius dolores.', 15),
(61, '2017-01-04 12:45:44', 1, 'Ut nisi ea quo accusantium sunt quia maxime sit qui ea quidem explicabo quia quos illo neque nam asperiores iure sit incidunt eum sed optio quam voluptatum qui neque cupiditate.', 10),
(62, '2001-12-18 10:49:46', 2, 'Accusamus distinctio dolor repudiandae corporis eligendi sint error nam ipsa voluptates non iure modi non voluptas blanditiis voluptas voluptatem possimus minus nihil.', 8),
(63, '2020-06-21 23:01:00', 3, 'Nihil cupiditate est fugiat vitae debitis sit sit et dolores eos voluptates laboriosam esse quisquam.', 5),
(64, '2007-10-15 13:43:33', 4, 'Aspernatur et numquam voluptatum voluptatum tempora voluptatem nobis maxime consequatur omnis quis quis voluptatem blanditiis et autem omnis.', 9),
(65, '1981-02-22 00:48:47', 1, 'Exercitationem omnis mollitia a velit pariatur reiciendis rerum expedita dolores nemo quis mollitia voluptate.', 7),
(66, '2004-03-12 08:31:57', 4, 'Dolor corporis deserunt praesentium inventore vel et aliquid aliquam est tempora similique quo quam recusandae vel quis quia at.', 8),
(67, '1995-07-06 03:43:07', 3, 'Qui quas et rerum sint enim esse voluptas aperiam doloribus.', 9),
(68, '1971-02-08 11:23:44', 1, 'Unde ut inventore aut dignissimos non possimus non nostrum tenetur aut quibusdam perferendis dolorum beatae labore eos facere.', 11),
(69, '1980-03-24 23:54:47', 4, 'Dolores iusto dolor nemo nulla eos vel qui molestiae rerum mollitia mollitia ex quibusdam et.', 16),
(71, '2002-02-25 09:52:16', 1, 'Quas adipisci fugiat nostrum porro a modi facilis sequi et ut sapiente facere rem dolorem voluptatem in qui.', 12),
(72, '2003-09-07 10:50:54', 2, 'Quisquam exercitationem qui est et excepturi nemo aut at qui voluptas quae provident explicabo non amet odio.', 7),
(73, '1998-09-09 20:24:29', 4, 'Dolores modi reiciendis corrupti minima natus quibusdam eos consequuntur provident rerum omnis similique dolorem voluptatibus in optio ex quos perspiciatis blanditiis est corporis alias quam.', 17),
(74, '2002-03-19 04:09:24', 5, 'Cupiditate voluptatibus consequatur sapiente architecto sint sed saepe iusto unde cumque ab fugit quia autem error eaque voluptatem deleniti est explicabo a repellat id.', 18),
(75, '1984-03-08 20:11:02', 5, 'Quo animi nemo quia nemo necessitatibus ipsa quos qui eveniet deleniti natus magni provident beatae aliquam eos molestiae voluptates ea ad qui ipsum qui vitae a excepturi ratione impedit modi.', 12),
(76, '1974-06-15 21:29:47', 4, 'Sint deleniti voluptatem consequatur explicabo eveniet reprehenderit nobis pariatur animi qui sit in et voluptas soluta laboriosam quam ut.', 4),
(77, '1974-04-23 03:26:31', 5, 'Libero voluptatum vel minima sit ut nesciunt ea ut explicabo.', 11),
(78, '2000-03-14 19:32:31', 4, 'Optio delectus vel facilis sit sed voluptates sequi eum non perferendis tempora ut quas.', 15),
(79, '1973-08-14 23:11:45', 2, 'Quis sunt dicta et ipsam et ea quis animi corrupti aliquid asperiores sint omnis sint repellat nobis commodi omnis officiis nihil quis accusamus qui sapiente repudiandae quia.', 5),
(80, '2008-06-04 02:40:55', 4, 'Et pariatur similique et et suscipit earum aut dicta ducimus asperiores non est facere eaque velit quia consectetur.', 13),
(81, '1982-10-09 10:42:40', 4, 'Qui aut blanditiis temporibus quia delectus voluptatem ut quia eum nesciunt voluptatem qui sed fugit aperiam aperiam et.', 5),
(82, '1970-07-24 16:02:50', 4, 'Consequatur consequatur laudantium voluptatum quos amet sed qui sint quia ex at a velit vero harum ipsum culpa veniam alias.', 15),
(83, '1998-03-02 18:24:24', 1, 'Quia dignissimos architecto ut sit corporis veniam iste velit tempora officiis laboriosam cum dignissimos voluptas velit tempore exercitationem repellendus aliquam.', 14),
(84, '1985-12-08 05:38:53', 1, 'Sint fugiat ex itaque dolor totam temporibus eius numquam eius.', 6),
(85, '2008-09-02 04:26:36', 3, 'Quis eum quae molestiae facilis accusantium asperiores accusantium sed velit exercitationem sed quod maiores magnam ab doloribus.', 10),
(86, '1989-05-22 23:01:26', 1, 'Aut laborum officia quasi amet dolorem aut sequi atque dolor occaecati veniam inventore ut ut iure officiis.', 7),
(87, '1996-01-04 20:30:40', 1, 'Recusandae nostrum pariatur quia et facere eos quia et non eveniet ipsam nulla sapiente aut omnis labore autem omnis similique vel quibusdam in quod quisquam rerum dicta unde commodi.', 16),
(88, '2014-03-28 16:02:04', 5, 'Dolor distinctio eos officia tempore blanditiis qui molestiae tempore et et cumque praesentium repellat quis.', 8),
(89, '1997-02-26 21:16:15', 1, 'Aut laboriosam vero quia omnis consequatur numquam ipsam et eos esse quae est ipsam omnis eius vitae fugiat beatae aut aut omnis voluptas sint earum cum cupiditate ut officia.', 9),
(90, '2003-05-16 07:57:52', 5, 'Est sit aut vitae ut deleniti minus quibusdam aliquam quis consequuntur dicta aliquam.', 10),
(91, '1985-11-22 05:39:32', 4, 'Aspernatur cupiditate omnis repellat eveniet ut eum fugit laudantium libero sunt perferendis consequatur aut occaecati rem quo aspernatur atque commodi non qui impedit consequatur fuga illum est.', 6),
(92, '1995-03-27 08:53:44', 1, 'A rerum aliquam consequatur voluptatem qui autem et similique sint aliquam nostrum et aperiam ut maxime minima exercitationem eligendi.', 15),
(93, '2000-12-30 02:33:11', 4, 'Optio ut vel facere est perspiciatis omnis quia sapiente et corrupti voluptatum asperiores laudantium.', 13),
(94, '1988-03-23 08:06:01', 5, 'Expedita molestiae enim tempora a aspernatur debitis rem officia omnis qui ipsum unde veritatis exercitationem sunt sed dolore nihil quia molestiae sit et aut voluptatem dolorem.', 17),
(95, '1992-08-19 06:57:52', 2, 'Tenetur qui praesentium minus autem soluta impedit minus enim quis molestiae perferendis qui quam sit deserunt.', 7),
(96, '1983-04-30 03:40:22', 3, 'Eos voluptatem sunt eum dolor quidem molestias inventore sapiente vel omnis est laborum in adipisci atque delectus vero qui rerum neque molestias voluptatum est maiores.', 17),
(97, '1979-03-28 00:33:36', 3, 'Tenetur libero sed non eos corrupti modi itaque omnis cumque qui voluptas et quisquam reiciendis repudiandae voluptas sit.', 4),
(98, '2017-07-15 08:59:50', 2, 'Optio delectus rerum veniam hic ea sit odit expedita nihil tempora amet repellendus omnis quibusdam explicabo animi eaque enim eum laborum asperiores fuga.', 9),
(99, '2018-01-04 02:31:53', 4, 'Non tempore optio aut maiores ullam quae.', 18),
(100, '2013-09-17 07:45:28', 5, 'Nostrum facilis assumenda molestiae architecto repellendus architecto qui deleniti laborum dolor voluptas saepe id inventore sed eos quo qui nesciunt aut quo explicabo aspernatur fugit quia quae tenetur rerum laudantium aut iure quo quia.', 6),
(101, '1979-02-19 18:03:58', 5, 'Fugit suscipit odit qui enim et quae quia.', 14),
(102, '2002-11-26 08:56:01', 4, 'Libero quasi est necessitatibus sunt quis totam et dicta ipsam cupiditate eos suscipit consequatur adipisci ad.', 14),
(103, '1997-05-11 07:28:52', 1, 'Et qui et ullam ratione laudantium id architecto sapiente quia adipisci facere voluptas.', 15),
(104, '2003-04-02 03:21:20', 4, 'Mollitia enim non voluptatem aperiam maiores fuga possimus quo eaque doloribus sapiente porro in voluptate.', 11),
(105, '2001-11-04 00:24:25', 1, 'Voluptatem voluptatibus dolorem esse omnis soluta quisquam ut non ut at dolor temporibus sint repudiandae sit molestias quod rerum totam modi perferendis est consequatur in et.', 10),
(106, '2004-06-14 04:41:48', 1, 'Exercitationem id reiciendis quis dolores libero quaerat nisi voluptas iste molestias asperiores dolorem neque illo.', 6),
(107, '2007-09-29 17:32:41', 3, 'Numquam voluptatibus commodi ratione qui ullam dolorem incidunt labore a perspiciatis quis.', 12),
(108, '1980-04-21 18:14:28', 1, 'Necessitatibus est totam excepturi repellendus id quam praesentium aliquam nihil vitae.', 11),
(109, '1982-05-13 05:07:00', 4, 'Exercitationem quae omnis veniam fugiat quae voluptas et ducimus ea sint corporis possimus culpa qui sapiente et cupiditate sed.', 11),
(110, '1988-05-30 14:10:53', 3, 'Qui officiis ut labore enim et ut blanditiis eligendi.', 5),
(111, '1995-05-04 18:18:28', 1, 'Officia et ea eum perspiciatis saepe sed quia perspiciatis assumenda nobis.', 9),
(112, '1983-12-21 22:30:35', 2, 'Sit rerum distinctio non sed dolores ut et aliquid accusamus impedit.', 11),
(113, '2004-10-10 16:57:18', 3, 'Ea quod sit doloribus aspernatur voluptate sed autem itaque quia tempora quos repellat ut laboriosam autem qui corrupti ullam eos saepe aut tempora ullam.', 10),
(114, '1986-02-07 03:10:03', 1, 'Animi dolor labore impedit iure facilis mollitia incidunt et aut.', 16),
(115, '1985-02-06 16:58:43', 2, 'Esse ut soluta iure ut voluptatem excepturi nihil et ut est eum veritatis aperiam illo distinctio veritatis corrupti reprehenderit et fugit cum iure quod.', 18),
(116, '2017-11-17 14:59:43', 5, 'Iure aliquam est quae placeat explicabo reprehenderit qui earum laudantium vel in non necessitatibus dolor velit repellendus odio aliquid aut.', 14),
(117, '2004-12-29 04:13:01', 2, 'Et illo culpa quia aspernatur nesciunt voluptates qui pariatur ut consequuntur autem voluptatibus enim natus omnis dolore accusamus est optio sunt.', 9),
(118, '1994-12-30 18:05:35', 4, 'Vero quibusdam iusto ipsam assumenda voluptas nihil sed voluptas autem aut debitis amet quaerat vel.', 12),
(119, '1975-07-19 08:27:22', 4, 'Nostrum tempore quas eos sequi enim quo earum ipsa voluptas a molestiae maiores tempora odit dolores eaque.', 18),
(120, '2006-09-30 23:47:26', 1, 'Modi ea sint et molestias placeat est sapiente aut doloribus quisquam ea assumenda accusantium est dignissimos facere eos voluptas natus.', 11),
(121, '1986-11-17 05:44:45', 2, 'Suscipit nihil sit ratione et autem sunt recusandae molestiae illum magni quas qui ipsum sint odio maxime enim adipisci magnam.', 5),
(122, '2016-06-27 06:41:37', 5, 'Debitis nisi neque omnis facere architecto modi voluptatem quos molestias temporibus consequatur quia earum velit excepturi laborum debitis sit sed tempore amet minus sapiente occaecati dolorem.', 17),
(123, '1981-10-16 11:42:16', 5, 'Ducimus voluptates dolorem dolor rerum fugiat voluptatem praesentium quia adipisci nam vero aut.', 4),
(124, '2011-08-04 16:43:19', 4, 'Veniam dolorem molestiae quas porro nulla culpa non vitae eum amet perferendis ea qui dolores maxime eius qui.', 5),
(125, '1997-02-02 02:36:23', 3, 'Similique eaque nam voluptatem suscipit doloremque nisi maiores molestiae et placeat dignissimos aperiam reprehenderit id ut maiores molestias sit.', 18),
(126, '1974-08-16 05:12:04', 5, 'Eius est quia est sit repellat ut odit distinctio omnis nisi ratione enim ut eos.', 15),
(127, '2013-02-18 17:58:22', 2, 'Ad amet neque velit et blanditiis est ea delectus laboriosam quae distinctio maiores veniam dolorum ut aut voluptatem modi quia nulla dolorem et et aperiam occaecati libero harum.', 9),
(128, '1979-01-28 08:08:52', 5, 'Fugit placeat reprehenderit ut assumenda nulla ipsam iste hic et quis sed quis ipsam qui perferendis id.', 11),
(129, '1989-05-05 23:50:37', 2, 'Voluptas omnis esse iure ut harum odit dolore doloribus quasi eum.', 10),
(130, '1998-03-28 07:11:19', 3, 'Quis quidem aut officia quas ipsum reprehenderit sint consequatur corporis amet.', 10),
(131, '2006-10-24 06:15:08', 2, 'Reiciendis id est id autem possimus tempora quos est in ut deserunt recusandae sed.', 6),
(132, '1989-05-09 13:50:41', 2, 'Sit corporis nostrum quasi illo ipsa et quam exercitationem debitis velit aut.', 10),
(133, '1987-03-03 13:59:10', 5, 'Iusto eligendi assumenda accusantium harum perferendis cum non illo eveniet doloribus ipsam eaque cupiditate ducimus molestias fuga minima optio suscipit distinctio tempore sit.', 8),
(134, '1970-05-11 06:42:56', 4, 'Aspernatur qui consequatur voluptatem quibusdam dicta exercitationem dolorum corporis dolore possimus praesentium harum nihil voluptatem ut ipsam.', 4),
(135, '1976-06-09 01:24:27', 2, 'Aut vero delectus est id qui optio delectus reiciendis aut facilis id quos incidunt autem consequatur voluptas rerum sapiente magnam maiores eius.', 16),
(136, '2012-04-20 16:34:09', 2, 'Eum itaque qui velit cupiditate adipisci sed nostrum iusto laborum neque ipsam et aut officia qui dolorem.', 17),
(137, '1981-05-30 01:07:24', 1, 'Aperiam doloremque quidem laborum ut consequatur beatae veritatis aliquid nostrum vel iusto porro at non eos porro a tenetur quidem quisquam maxime adipisci et quis commodi nisi velit alias qui.', 8),
(138, '2015-04-21 15:22:33', 2, 'Eveniet aut ea autem nam labore soluta qui ipsa suscipit quod ut neque eum ad omnis velit occaecati necessitatibus rerum tempore qui numquam quis eius.', 7),
(139, '2006-07-23 23:15:22', 2, 'Error commodi voluptatem minus ut pariatur dolorem autem illum quo deserunt libero.', 9),
(140, '1990-04-19 22:46:46', 2, 'Harum est vero veritatis odio velit perspiciatis veritatis minima iure eius corrupti in et commodi incidunt id qui tempora sed assumenda voluptatibus.', 11),
(141, '2020-04-20 14:51:31', 5, 'Nihil et et qui similique placeat sequi illum.', 13),
(142, '1973-02-25 11:06:09', 5, 'Numquam quod eum maxime rerum reprehenderit dolorum numquam a minima eos vel amet labore reprehenderit.', 10),
(143, '1984-01-21 14:46:51', 3, 'Id at quos atque ut amet sequi amet sint qui perferendis mollitia ex magni est quia totam labore.', 5),
(144, '1997-03-18 05:28:56', 5, 'Placeat voluptatem ab ipsum autem doloribus quas esse ut distinctio excepturi velit consectetur quod tempore nisi ea accusamus nemo nulla.', 16),
(145, '1998-05-11 00:50:05', 4, 'Voluptatem aut quasi dolores accusantium quis earum omnis sed debitis ut beatae error maxime.', 4),
(146, '2004-02-16 15:26:21', 1, 'Dolor doloremque ut nam similique ipsam quo alias et inventore est aliquam expedita nam accusantium velit dolorem inventore voluptatem perferendis et sunt.', 6),
(147, '1993-11-13 20:19:27', 3, 'Laudantium dolores veniam autem libero laborum repellat et aut rerum veniam modi laudantium cum ut rem commodi et dolore facere aut exercitationem consequatur molestiae voluptatem et.', 16),
(148, '2000-11-21 09:05:04', 5, 'Quam possimus nihil perspiciatis reiciendis qui quis iusto ab molestias asperiores ratione debitis rerum assumenda ut.', 5),
(149, '2007-08-08 18:11:17', 5, 'Cum nisi perspiciatis aliquam ipsa tempora voluptatibus cumque quasi et odit et architecto quia fugiat tempore in.', 5),
(150, '1985-02-21 22:33:14', 2, 'Ut eveniet cupiditate sapiente nulla est qui adipisci quia delectus possimus et.', 14),
(151, '1990-10-25 22:36:11', 5, 'Architecto laudantium quia dolorum est et vel quibusdam dolores esse ipsa vitae omnis laborum.', 15),
(152, '1974-02-12 22:33:18', 1, 'Omnis nihil soluta libero rerum non aliquam totam tempore atque et eos delectus distinctio nostrum voluptatibus quod a.', 12),
(153, '1989-07-07 23:06:16', 1, 'Voluptates consequatur aperiam fuga porro quasi praesentium nulla nam optio occaecati rem odit minus aliquam quibusdam corporis eveniet soluta officia.', 14),
(154, '2001-11-11 15:35:37', 1, 'Debitis exercitationem repellendus perferendis sed delectus velit est dolores et doloribus.', 18),
(155, '1979-07-27 01:15:04', 4, 'Totam voluptas omnis in dolores molestiae ea odit doloribus repellat non et expedita consequatur tempora iure ut.', 5),
(156, '1985-04-11 09:56:31', 1, 'Et amet soluta facilis et minima est sunt rem ut aliquid rerum asperiores non.', 10),
(157, '1973-01-02 17:03:14', 1, 'Est omnis eos ex minus perspiciatis voluptas quod et facilis deserunt ut ex molestias voluptas ipsum ea aut est consequatur officiis.', 18),
(158, '2002-06-23 14:38:10', 4, 'Voluptate hic omnis explicabo molestias distinctio et quos ratione recusandae quis aut.', 6),
(159, '1979-12-23 14:56:46', 4, 'Vel facere aliquid velit deserunt facere repellat porro consequatur officiis voluptatem et laboriosam iste repudiandae eos voluptatem.', 16),
(160, '2007-03-12 17:33:08', 4, 'Quo ab aliquid ipsum in ullam ullam sunt consequatur ea ullam quo quis dolores id earum et eveniet velit ea consequuntur sunt sed dolores.', 6),
(161, '1978-08-31 14:03:45', 3, 'Animi omnis molestias suscipit illum et aut iure in vitae numquam rerum cumque veniam aliquid qui at aut soluta sunt.', 5),
(162, '1973-04-15 13:56:08', 4, 'Esse et sunt voluptates soluta at voluptatem sed et et eos tempora voluptas quae nihil quo quam.', 12),
(163, '2018-06-05 07:54:35', 2, 'Tenetur aspernatur id debitis sint velit delectus provident nihil est qui omnis aperiam officia odio facere.', 14),
(164, '2011-09-30 19:35:30', 5, 'Quasi enim cum accusantium quia voluptatem mollitia ut molestiae autem natus.', 18),
(165, '2001-10-12 08:00:26', 3, 'Vel in minima minima dolorem rerum ut et quidem in.', 12),
(166, '2002-03-21 19:27:29', 2, 'Dicta consequatur totam et ut reiciendis occaecati nesciunt sit voluptatibus ullam omnis necessitatibus libero est.', 16),
(167, '1985-05-19 02:33:33', 4, 'Reprehenderit ratione impedit quos ipsam repellat ut possimus corporis cumque fugit facere dicta cum in ipsam.', 14),
(168, '1979-03-25 11:43:56', 3, 'Sit laudantium distinctio harum fugiat consequatur voluptatum ad soluta neque vero sapiente vel repudiandae nesciunt corporis nobis ab repellendus sed voluptatem quasi.', 15),
(169, '2007-04-05 02:45:08', 2, 'Fugiat officiis deserunt consequuntur id et incidunt voluptas similique amet inventore ipsum accusantium necessitatibus odit consequatur molestiae.', 12),
(170, '2011-08-21 08:52:30', 2, 'Esse expedita aspernatur voluptatibus aut et fuga at dolor similique vero animi quam animi culpa in nulla quis.', 13),
(171, '2009-08-13 14:49:18', 4, 'Dicta delectus quia quis a aut dolorum voluptas quia aut unde aut exercitationem odio et mollitia recusandae non nihil maxime dolor.', 8),
(172, '2014-03-01 09:43:00', 4, 'Expedita esse nulla minus optio autem non culpa quia explicabo consequatur eaque beatae sunt.', 7),
(173, '1988-02-07 22:31:02', 2, 'Et ab similique et ducimus eum nam sequi ipsa aut sint molestiae rerum occaecati error animi neque et impedit omnis saepe quibusdam.', 6),
(174, '1980-12-07 14:06:02', 2, 'Totam laborum voluptatem tempore veritatis repellendus dolorem unde rerum aut cumque iusto nam atque.', 17),
(175, '1986-06-19 03:16:09', 3, 'Unde quia excepturi ea ut vel voluptatem suscipit sed accusantium ad debitis possimus et reprehenderit aut dicta rerum.', 4),
(176, '1982-04-12 14:05:09', 2, 'Et voluptatem autem ut aliquam doloribus voluptas ad placeat et nihil molestiae voluptatum ipsa suscipit recusandae odio omnis qui ut rerum velit ullam et.', 9),
(177, '1982-08-06 19:25:34', 1, 'Quo consequatur provident adipisci id facere reiciendis repellendus magni aut suscipit omnis natus ad voluptatem voluptas qui consectetur deleniti natus ratione aut accusantium nam enim rerum enim.', 12),
(178, '1987-09-07 18:36:43', 1, 'Et id perspiciatis dolores ut aut minima distinctio aliquam nihil rerum illum numquam necessitatibus asperiores earum optio recusandae quod blanditiis cum odit et quia reprehenderit aut dolores ullam.', 11),
(179, '2007-04-26 05:21:00', 1, 'Incidunt vitae temporibus molestiae qui accusantium fuga ad quia ratione consequatur aut in dolorem delectus dolorem quia blanditiis cumque quia.', 17),
(180, '2012-01-02 06:37:07', 1, 'Qui ea rem enim et iusto eligendi vero quis.', 7),
(181, '2014-04-02 09:00:01', 3, 'Magni eaque velit soluta qui molestiae quasi labore ipsam nihil culpa adipisci reiciendis officiis non enim cum facilis porro dicta quisquam iste veniam omnis voluptatem ullam libero quis.', 15),
(182, '1977-09-25 15:04:42', 5, 'Deserunt dolore doloribus debitis ullam quia dolor labore voluptates veritatis atque et sed molestias ipsum hic ducimus dolorem qui qui hic aspernatur ab laudantium esse harum debitis expedita.', 6),
(183, '1974-01-05 04:09:27', 3, 'Molestiae doloribus aut consequatur minima voluptatem nisi est aut deserunt non.', 14),
(184, '1989-11-29 16:05:34', 2, 'Impedit laboriosam cupiditate rerum voluptatem et voluptatem reprehenderit voluptas minima deleniti necessitatibus enim aut.', 14),
(185, '2001-02-23 15:26:08', 3, 'Quaerat aperiam nisi et veritatis consectetur ratione est deleniti vitae adipisci amet molestiae ipsum.', 7),
(186, '1980-08-04 01:09:31', 2, 'Corporis excepturi et saepe illo culpa deserunt ipsa vitae nostrum eaque ipsum nihil.', 6),
(187, '2019-07-07 22:26:28', 2, 'Praesentium mollitia sed velit voluptate placeat omnis ducimus.', 9),
(188, '1989-08-10 19:00:57', 2, 'Tenetur dolorum error sed reiciendis ut quae quia autem odit voluptatem culpa facere facilis eius autem qui magni autem.', 6),
(189, '2003-01-26 08:11:45', 4, 'Dolorum ea blanditiis commodi quia sequi occaecati commodi sapiente error facilis quae esse et enim qui quia.', 8),
(190, '2006-01-25 04:14:39', 2, 'Consequatur quae laboriosam sit qui sunt non placeat eum quo sunt provident id ad tempore sunt similique distinctio quia in.', 17),
(191, '1994-03-07 09:00:11', 5, 'Voluptatum consectetur neque similique et placeat recusandae quasi harum facere ut qui aspernatur natus et mollitia ut ullam qui accusamus alias at sequi sint.', 16),
(192, '1977-10-26 09:17:53', 5, 'Vero praesentium autem dicta odit quo deleniti unde ut id vitae neque voluptatem consequatur in.', 18),
(193, '2015-03-10 09:11:23', 1, 'Quisquam consequatur aliquid recusandae voluptatem cumque distinctio soluta facilis et totam non voluptates odio quia non quibusdam quod temporibus similique numquam laboriosam quia quidem aut eum adipisci est eos non quasi rerum.', 18),
(194, '1978-04-23 08:49:21', 5, 'Quidem facere quod doloribus ratione id iusto at placeat provident nemo necessitatibus.', 16),
(195, '1982-08-20 12:58:18', 1, 'Exercitationem eum qui modi alias rem reprehenderit consectetur qui illo doloribus beatae reprehenderit consequatur sed corrupti aliquid quo doloremque.', 18),
(196, '1986-02-14 13:59:11', 1, 'Iusto vero nobis voluptas rerum et explicabo dolores odit quis adipisci quaerat odio sapiente exercitationem architecto voluptate sint non ipsum ipsam delectus dolorem ut.', 5),
(197, '2003-04-07 20:17:17', 2, 'Quas et et magnam ullam illum consequatur magnam excepturi deleniti eum voluptas cum ipsum iure ipsum et laudantium ut aperiam.', 16),
(198, '2007-10-20 14:40:30', 4, 'Autem quisquam labore dolores corrupti odit placeat.', 14),
(199, '1981-10-15 08:29:23', 3, 'Omnis dolor sunt consequatur possimus quod eos et eius libero in ab nostrum exercitationem ducimus alias veniam alias.', 5),
(200, '1985-01-26 12:43:25', 1, 'Et et aspernatur cum ratione ut sint ipsam quidem ut molestiae est dolor adipisci incidunt exercitationem voluptatem sit omnis repellendus cumque natus provident maxime aut eum delectus est officia nesciunt.', 15),
(201, '1976-03-23 08:28:20', 4, 'A corporis eius ipsa at repudiandae in in quam molestiae consequatur recusandae.', 13),
(202, '2013-12-05 07:28:16', 1, 'Eum accusamus libero eos qui voluptas magnam eveniet ut ducimus quis quaerat sunt molestiae facere eos recusandae quisquam reiciendis.', 14),
(203, '2015-03-31 10:20:54', 4, 'Et rerum odit culpa minima quis sint quia tempore aut voluptatibus id corrupti unde quisquam et.', 12),
(204, '1983-05-09 17:04:01', 1, 'Quis autem qui quidem nulla non facilis animi ab consequatur consequatur nisi assumenda est nam ab corporis.', 6),
(205, '2000-04-23 07:59:12', 5, 'Eligendi modi magnam blanditiis est ullam vel consectetur maxime qui laborum voluptates in pariatur et.', 11),
(206, '2013-03-13 16:07:19', 3, 'Architecto voluptas tempora dolorum similique porro repellat culpa omnis eveniet error dolores aperiam quos officiis corporis.', 9),
(207, '1985-05-28 21:39:54', 4, 'Dicta qui sequi repellendus nisi optio et qui doloremque numquam rerum quia perspiciatis repellat qui dicta iste soluta corrupti odio magni.', 9),
(208, '1992-04-06 05:12:56', 5, 'Pariatur distinctio culpa animi repellendus sed omnis vel laborum repudiandae cumque maiores quia sit et numquam eos perspiciatis.', 5),
(209, '1992-04-16 17:33:55', 1, 'Ea itaque modi repellendus inventore est alias soluta facere aut excepturi et commodi corrupti ut est maxime dolor et nisi dolores velit libero.', 17),
(210, '1981-03-08 13:55:04', 4, 'Perspiciatis dolor libero praesentium commodi eos fugiat nihil veritatis sint distinctio aliquam cupiditate accusamus explicabo iure sed nesciunt sed fugit rerum cumque at architecto tenetur similique omnis.', 16),
(211, '2012-11-01 13:12:34', 2, 'Quo dolorem voluptatem dolores modi excepturi quia non ipsa non sunt voluptas sunt assumenda totam est explicabo qui aut molestias.', 5),
(212, '1971-11-26 04:31:17', 3, 'Occaecati aperiam veniam sequi laboriosam sunt quis illum quibusdam consequuntur optio voluptas omnis est cum repellendus tenetur ab occaecati illum deserunt iure eaque veniam repudiandae delectus.', 14),
(213, '1999-03-15 22:12:34', 1, 'Sapiente quis aspernatur ex velit magnam voluptatem illo in culpa adipisci sed.', 16),
(214, '2021-06-26 07:47:32', 2, 'Quae et saepe dolore quasi maiores illum omnis qui facere modi.', 14),
(215, '2004-06-05 17:27:06', 2, 'Sapiente hic nihil commodi assumenda atque omnis illo aliquam eos illo sed eum facere suscipit quaerat quos.', 14),
(216, '1978-12-25 05:46:30', 3, 'Enim et voluptas nihil consequuntur est et facere rerum id repellat quis vitae tempora corporis molestias illum in praesentium blanditiis quibusdam nobis praesentium ullam adipisci dolorem odio repellendus magni eius vel.', 13),
(217, '1991-01-19 01:29:48', 4, 'Omnis ut error quia harum veniam labore suscipit libero odio itaque cumque et eos quo.', 16),
(218, '1983-04-27 14:05:15', 1, 'Cum voluptatum dolor aperiam qui reiciendis dignissimos quia enim et voluptatem aut et temporibus eum quo nostrum nisi sint quae unde.', 17),
(219, '1999-12-11 06:37:48', 2, 'Nihil non eum ut nobis expedita aut nostrum molestiae omnis nesciunt aut recusandae molestias veritatis sed consequatur dolores architecto.', 6),
(220, '1995-12-10 16:48:22', 2, 'Aut corrupti impedit porro velit esse enim ea beatae et earum optio doloribus.', 9),
(221, '2012-08-25 00:56:36', 5, 'Quam voluptas nihil consectetur odio velit reprehenderit fugit quis hic et.', 11),
(222, '1981-09-24 12:36:13', 3, 'Sunt quo tempore magni ratione et molestiae in sint corporis impedit et doloribus et.', 15),
(223, '1975-06-24 05:16:17', 3, 'Enim quisquam aut quasi ea delectus et nihil reiciendis exercitationem qui.', 7),
(224, '1997-04-22 03:51:53', 5, 'Et laboriosam nobis quo fuga et a officiis doloremque quia rerum sed aliquid dolore accusantium eveniet cumque cupiditate provident ea cupiditate placeat assumenda autem iure natus dolores doloribus eos numquam sed in doloribus velit.', 16),
(225, '1978-10-01 20:55:31', 4, 'Deleniti nostrum assumenda iusto ut eum sequi iure inventore sit voluptatibus cum ipsa numquam quia a deserunt et quaerat quis hic earum et dolores aspernatur voluptatem.', 15),
(226, '2009-09-16 08:27:08', 2, 'Rem et adipisci et nulla et dolores consequatur aut et in deleniti et dolor soluta voluptatem eligendi porro voluptates veniam.', 12),
(227, '2021-07-07 22:35:05', 3, 'Recusandae sint dolores cumque accusantium ea fuga similique dolores maxime distinctio voluptas incidunt quae.', 14),
(228, '1973-02-06 21:50:32', 4, 'Corrupti est et repudiandae illo excepturi culpa laboriosam explicabo ut tenetur autem aperiam eaque est aperiam sed.', 6),
(229, '2007-01-17 08:09:23', 5, 'Maxime vero sed iure tempora quasi sit ut ullam esse dicta qui accusantium ut saepe sit rerum totam odit sint suscipit dolor suscipit aperiam ipsam autem dignissimos.', 15),
(230, '1998-04-20 13:39:10', 3, 'Ut est qui impedit esse at molestiae et hic sapiente est error dolorum aspernatur id eum amet dolores necessitatibus sit.', 18),
(231, '1989-02-19 13:49:59', 1, 'Doloribus qui sit suscipit sunt provident quas consequatur et ex eum quia pariatur assumenda voluptate assumenda et culpa perspiciatis sint quod.', 11),
(232, '1983-11-30 10:30:00', 1, 'Sit aliquid accusantium ut eum eos neque non optio assumenda cumque quas omnis neque accusantium quod consequuntur voluptatibus quo laudantium velit hic voluptatem numquam consequatur.', 8),
(233, '1974-06-26 06:37:28', 2, 'Veniam et laborum excepturi eum non accusantium fuga vel eligendi aut nisi rerum unde a rerum dolores placeat enim sit culpa enim id id perspiciatis magnam vitae eveniet et alias velit ex.', 14),
(234, '1996-10-07 14:22:51', 3, 'Aliquid maxime vitae est eligendi cum et neque ipsam id et.', 13),
(235, '1973-01-08 15:37:41', 3, 'Sint illo officiis nihil explicabo qui voluptatum dolore.', 4),
(236, '1979-12-12 18:18:12', 4, 'Eos corporis iste iure molestias rerum assumenda sed quae eaque est nihil ducimus modi cumque inventore rem non.', 18),
(237, '2016-09-05 10:41:44', 3, 'Dignissimos dolorem sit earum corporis maxime id ea.', 9),
(238, '1989-06-08 13:17:10', 1, 'Ea consequatur omnis ducimus doloribus itaque consequuntur iure et quas et inventore aut minus omnis eaque enim vel.', 7),
(239, '2013-04-24 20:05:28', 1, 'Ratione provident a sit nihil qui cupiditate quia quae quis labore quia.', 10),
(240, '2005-12-05 03:39:45', 5, 'Quidem qui aut esse iste veniam fugit soluta dicta omnis aperiam quaerat.', 13),
(241, '1986-05-13 06:39:48', 1, 'Sunt necessitatibus tempore sit dicta nemo beatae dolor necessitatibus omnis voluptas fugiat sunt dolorem culpa eos dolorem doloribus.', 15),
(242, '1980-05-27 16:26:38', 4, 'Atque fugit eaque velit aliquam eligendi possimus id dolore vero qui sint quae molestiae neque recusandae voluptatem eum.', 5),
(243, '1975-10-06 08:41:29', 4, 'Dolores iure in deserunt voluptatem aut et sit cum illo modi sit qui velit ut aut.', 5),
(244, '1970-02-08 16:14:27', 4, 'Quaerat sed id sint doloremque sit eligendi voluptatum assumenda.', 8),
(245, '2016-11-16 22:32:26', 4, 'Praesentium officiis non doloremque vero quae iste est vel sit architecto amet minus autem aut.', 17),
(246, '1986-02-14 18:13:42', 3, 'Et repellat quasi iure itaque repudiandae reiciendis dolor et nostrum voluptas mollitia a voluptatem.', 8),
(247, '2011-01-31 01:16:33', 4, 'Libero cumque voluptatum rerum eum provident sit rem perferendis tenetur sed aliquam dolore possimus eligendi consectetur necessitatibus ipsam qui officia deleniti.', 14),
(248, '2018-08-08 13:19:44', 5, 'Eos enim sed deserunt enim corporis corrupti reiciendis minima voluptas et omnis reprehenderit.', 15),
(249, '1975-08-26 12:21:40', 4, 'Quae nesciunt harum odio labore et qui et ut mollitia aliquid natus qui asperiores harum nobis et earum mollitia nulla voluptas quisquam ut commodi et eos.', 6),
(250, '1996-10-27 16:54:28', 5, 'Animi ut ut et reiciendis recusandae odit porro aut autem harum id.', 4),
(251, '2001-11-04 14:01:34', 3, 'Consequuntur sit et est facere impedit corrupti in qui eum sed rerum.', 10),
(252, '1999-12-13 02:47:24', 4, 'Maiores reprehenderit ea necessitatibus ullam maxime quaerat sit autem ipsa qui ut eaque ut minus facere.', 16),
(253, '2013-11-20 06:54:46', 4, 'Voluptas eum consectetur ut hic impedit alias distinctio molestias qui inventore id.', 11),
(254, '2002-07-04 21:44:23', 3, 'Sit repellendus quisquam ea laborum optio quaerat laboriosam consectetur nisi pariatur consequuntur quia voluptatem qui molestias eveniet.', 16),
(255, '1987-12-06 14:35:45', 5, 'Sit et tempora et et ut ut asperiores nisi doloremque ut provident et maiores ut deserunt sed omnis hic cupiditate porro velit fugit consequuntur officiis facere et natus ad necessitatibus consequatur.', 14),
(256, '1973-07-07 22:27:30', 4, 'Quidem fuga est non et amet in omnis illo ea voluptate dignissimos reiciendis vero natus voluptas.', 9),
(257, '1970-07-03 18:04:07', 5, 'Laudantium sed vero quis voluptas voluptatem sed dolorem repellendus qui minus deleniti ducimus aperiam in voluptatem ipsam eum accusamus laborum molestiae laborum sed ut sit nam sint molestiae distinctio unde illo voluptatum laudantium in eos.', 15),
(258, '1997-06-30 13:27:02', 1, 'Quasi earum pariatur nulla ut molestiae praesentium eum autem nesciunt itaque voluptatem sint saepe illum soluta quia tenetur sunt eveniet aliquid quos in occaecati nihil.', 15),
(259, '1989-08-06 13:41:46', 2, 'Cum vero ipsum et quaerat nam eum ab asperiores quisquam quibusdam vitae repellat sint error dolorem minus quae soluta aut optio fuga aut consequatur iure.', 10),
(260, '1975-02-09 06:12:45', 1, 'Qui necessitatibus enim inventore iste mollitia commodi harum hic asperiores vel autem minima rem non et eius libero iusto eum id veniam.', 17),
(261, '1998-02-06 00:31:45', 2, 'Ad eligendi omnis est sint aut unde illo quia asperiores consequatur ipsa sequi debitis.', 15),
(262, '2007-01-31 14:07:00', 3, 'In occaecati quam eaque tempore itaque maiores ipsum ut eum omnis assumenda.', 8),
(263, '1995-03-06 20:43:58', 3, 'Officia earum voluptatem quidem pariatur dignissimos aut est quibusdam cumque eum.', 13),
(264, '1975-07-09 04:31:19', 2, 'Quaerat et et omnis eaque qui veritatis velit porro molestiae neque dolores et dolorem pariatur incidunt ipsum doloremque unde dolor et dignissimos nam eos.', 6),
(265, '1996-10-31 12:17:17', 1, 'Deserunt fugit corporis perferendis fugit enim similique rerum cum unde fuga quae.', 7),
(266, '1986-02-28 09:53:37', 2, 'Reprehenderit ut vel aut dolores mollitia ipsa placeat debitis iure minima.', 9),
(267, '2005-05-07 05:04:42', 4, 'Recusandae accusamus dolores quis eos ipsam nostrum nemo enim sint maiores hic dignissimos ullam excepturi.', 8),
(268, '2003-11-09 14:55:57', 2, 'Quo aspernatur quia repellat fugiat aperiam vitae eum deleniti autem quibusdam odio iusto porro beatae cupiditate modi autem nostrum dolorem.', 12),
(269, '1993-04-05 15:23:47', 2, 'Provident laudantium exercitationem vitae accusamus nam reprehenderit dolorum quia enim.', 13),
(270, '1991-05-24 10:22:10', 4, 'Officiis aut repudiandae similique voluptas sed recusandae consequatur fugiat laboriosam maiores nesciunt ut cum.', 18),
(271, '2005-03-25 12:02:20', 2, 'Aut totam qui omnis est quia sit aspernatur minima aliquam aut tempore corrupti optio qui facere ut.', 8),
(272, '1977-09-16 09:12:48', 2, 'Aut cumque at deserunt qui optio molestiae harum.', 14),
(273, '2016-06-07 01:01:03', 2, 'Dicta occaecati voluptatum amet cum illo quis sed facere provident enim perspiciatis qui omnis perferendis rem labore omnis necessitatibus facere nihil laudantium totam repellendus.', 8),
(274, '2003-04-17 13:46:58', 4, 'Sunt quam aliquam perferendis molestias voluptas et omnis perferendis aut.', 4),
(275, '2002-05-13 19:04:29', 3, 'Quis iusto tenetur voluptatum natus sapiente quae et aut quia consequatur harum deserunt similique suscipit cumque est at dolorem.', 9),
(276, '1992-07-31 23:00:42', 1, 'Et est distinctio inventore ea quod enim a iusto incidunt est aut quos dolor fuga.', 12),
(277, '1999-10-24 09:01:14', 5, 'Qui totam quaerat eum exercitationem aperiam est architecto laboriosam id et aut et blanditiis sequi quisquam placeat iusto iure possimus maxime in.', 16),
(278, '2000-12-06 20:37:15', 3, 'Ut earum dolores debitis asperiores molestias et maiores enim sint est illo vitae corrupti.', 10),
(279, '2009-01-27 01:51:56', 2, 'Expedita nesciunt laboriosam et eum laborum omnis quos ea aliquid rerum eos perspiciatis rerum ut in molestias velit reprehenderit repellendus harum placeat inventore sunt est.', 15),
(280, '2010-05-31 20:03:11', 2, 'Qui eligendi facilis exercitationem sit officiis qui sed eum quia beatae vel.', 14),
(281, '2010-10-23 18:51:23', 4, 'Ipsam odit tempore adipisci eveniet quod eligendi ad modi praesentium et et sed voluptatem corporis cumque quo commodi dolores nemo a laborum magnam.', 14),
(282, '1973-03-08 12:03:11', 5, 'Officiis rerum sint sit impedit enim dolorem quaerat architecto omnis iusto dolores debitis.', 9),
(283, '2014-05-01 10:34:56', 5, 'Omnis sunt voluptatem aperiam et minus natus accusamus assumenda quo eaque ea quo modi non tempora omnis eos dolor ad voluptas asperiores rerum consequatur deleniti voluptatibus reprehenderit rem quidem nam omnis tempore est.', 15),
(284, '1993-09-30 23:21:04', 2, 'Et exercitationem id earum dolores repellat sint repellat suscipit autem alias qui tempora eum cupiditate aut accusamus qui dolorem quia cupiditate illo quis delectus saepe vel ratione et.', 9),
(285, '1972-07-15 02:14:39', 4, 'Repellat veniam consequatur est laudantium et modi amet ratione nobis libero ea quia maxime.', 18),
(286, '2003-03-05 23:41:36', 3, 'Sit mollitia saepe non eos delectus fuga quae incidunt cum quo.', 5),
(287, '2020-04-03 05:59:31', 4, 'Dolore nemo cumque minus et aut ex consequatur ratione aut accusamus culpa autem enim repellat autem perspiciatis iusto quo perferendis aut sapiente magni odit.', 5),
(288, '1986-07-02 19:55:21', 3, 'Sint consectetur eos officia accusantium laboriosam qui voluptates doloribus.', 5),
(289, '2020-10-21 10:50:05', 1, 'Fugit consequatur alias nisi reprehenderit libero omnis ut nihil harum rerum quia dicta omnis quia ut sit qui optio est minima ad dolorem ea dolorum voluptate et.', 10),
(290, '2007-07-16 20:20:38', 5, 'Dolores sit sit id ab doloremque aut ut magni est et numquam praesentium aut ipsa placeat est alias sed quasi doloremque nostrum sunt rerum.', 15),
(291, '1983-09-27 17:07:33', 1, 'Eos et debitis voluptatibus ad eius aut hic deserunt labore perferendis consequatur repellendus quibusdam sequi amet quasi id rerum eveniet facere soluta molestias.', 9),
(292, '1986-08-17 03:19:37', 3, 'Assumenda voluptatem eligendi repellat commodi sequi sint nulla ipsum quia maxime nihil nobis nihil deserunt asperiores corporis omnis quia eligendi voluptatum maxime non.', 18),
(293, '1970-10-30 21:58:17', 1, 'Veritatis laborum eum aliquam nulla aut sit quisquam dolor eum et.', 16),
(294, '1995-12-16 19:40:48', 3, 'Dolorem omnis asperiores rerum non quaerat omnis sapiente consequatur corrupti omnis enim consequatur ut id molestias.', 10),
(295, '2021-01-29 15:57:49', 2, 'Ratione enim id cumque eos velit earum molestiae ut.', 9),
(296, '1976-05-01 21:33:41', 2, 'Ipsa pariatur in nemo repellat deleniti fuga ipsum alias quo ut saepe velit saepe ipsum ut omnis voluptas ratione quasi culpa rerum fuga iste repudiandae.', 7),
(297, '1991-12-17 15:25:16', 3, 'Eum ipsum tempora asperiores rerum ab quod voluptatem dolor rerum occaecati beatae commodi excepturi itaque ut a officia ut alias sequi voluptatem excepturi et et labore dolorem et quis.', 7),
(298, '1986-09-17 00:50:18', 3, 'Labore dignissimos cupiditate doloremque ut occaecati voluptas ratione expedita omnis quis magnam atque ratione ullam sunt qui molestiae.', 13),
(299, '2015-09-06 07:55:20', 4, 'Quidem fugiat nisi est dolorem ullam deserunt vel fugit dolores nesciunt dolorem.', 7),
(300, '1979-03-14 01:31:17', 5, 'Pariatur laborum laborum est cumque est deleniti sunt voluptas placeat qui quis placeat aut ut tempore consequatur cum ipsam ab.', 13),
(301, '1997-05-02 06:24:36', 1, 'Omnis harum sed harum vitae nostrum ut veniam fugit ad architecto vero vel.', 18),
(302, '2021-06-03 20:43:31', 2, 'Debitis omnis non sit nesciunt rem excepturi labore quos labore sit voluptatem maiores ipsam.', 14),
(303, '2021-02-19 07:10:00', 2, 'Quia illum eum dignissimos voluptas est aut repellendus omnis a doloribus.', 10),
(304, '1985-12-03 17:17:28', 4, 'Aut perspiciatis quo adipisci vero expedita sed laborum dicta ipsa reiciendis aut ea atque rerum aliquam nobis et quod ut.', 10),
(305, '2003-03-26 10:22:31', 5, 'Nisi eum omnis repudiandae voluptatem amet consectetur id sed dolores corrupti officia libero fugit iste ea quis doloremque velit.', 12),
(306, '1986-04-05 13:38:44', 1, 'Blanditiis et provident necessitatibus omnis quis quasi debitis debitis dolorem fugiat tempore quo voluptatem modi non consequuntur aperiam cumque porro omnis porro nostrum est ullam soluta.', 9),
(307, '1986-02-26 23:38:39', 2, 'Labore est ut aut temporibus a et blanditiis quam et nesciunt temporibus esse quasi deleniti accusamus architecto itaque est pariatur.', 9),
(308, '1986-04-09 01:43:21', 4, 'Dolorum inventore voluptas fuga illum cupiditate et provident aspernatur architecto autem saepe iure a neque quidem.', 17),
(309, '2019-11-25 09:27:00', 2, 'Praesentium sed eum aut dolore soluta exercitationem corrupti illum repellat odio ipsam est voluptatibus dicta veniam modi veniam eum quia molestias sed inventore delectus.', 8),
(310, '1987-09-18 11:11:16', 2, 'Quasi deleniti ipsa omnis ratione numquam id ipsum incidunt ut sunt et nesciunt et est natus aut eveniet ipsum dolorum placeat optio repellendus omnis quis maxime tempora non occaecati sequi.', 6),
(311, '1989-05-30 04:46:31', 4, 'Eos omnis enim esse nihil voluptatem aut sint praesentium quisquam odit consequatur impedit adipisci dolorem.', 8),
(312, '1974-07-11 00:28:39', 5, 'Quos deserunt culpa consectetur vel velit sunt tempore quam quidem in suscipit dolor corporis natus rerum delectus ipsum illum commodi modi consequatur.', 15),
(313, '1970-06-20 04:10:48', 3, 'Ut reiciendis sit quam dicta mollitia voluptatibus itaque perferendis voluptatem labore velit rem.', 15),
(314, '1978-06-28 11:29:56', 3, 'Non enim rerum nihil omnis optio commodi alias optio error impedit assumenda dolorum quibusdam sed et.', 7);
INSERT INTO `reviews` (`id`, `date`, `vote`, `text`, `videogame_ID`) VALUES
(315, '2018-05-06 07:23:25', 4, 'Quia consectetur reiciendis earum eum eos soluta libero culpa neque tempora consequuntur dicta praesentium excepturi quisquam qui fugiat ut fuga quod.', 5),
(316, '2020-01-22 09:59:54', 2, 'Perspiciatis in itaque tenetur rerum assumenda fuga.', 15),
(317, '1987-03-22 10:08:48', 1, 'Eos quas vel quis sed atque quidem repellat nihil unde vel provident ipsum sapiente explicabo recusandae repellat voluptas sapiente deleniti cum.', 14),
(318, '1992-07-10 13:24:33', 5, 'Est dolorum debitis perferendis quaerat consequatur id qui quo placeat exercitationem enim occaecati sint facere.', 17),
(319, '2019-11-13 18:21:29', 4, 'Dolores enim veniam consequatur et a quae atque laborum est non occaecati natus.', 7),
(320, '2020-03-02 01:42:02', 1, 'Voluptatum natus laboriosam et quae cupiditate dicta facere architecto perspiciatis qui sed voluptatem placeat aliquid in deserunt neque vitae quaerat velit fugit cumque aliquid facilis labore magnam earum.', 9),
(321, '1996-07-19 21:14:42', 4, 'Vel qui nihil qui minus assumenda ut aut eos autem cupiditate placeat.', 15),
(322, '1992-12-20 21:58:34', 3, 'Voluptatum aut qui aut omnis aperiam fuga ut exercitationem nesciunt est non voluptas velit est amet quia rerum consequatur eum.', 7),
(323, '1978-08-20 05:31:27', 3, 'Asperiores ut in ipsum qui laboriosam sint non et fugit est quasi non ex omnis quia et et ducimus libero iure aut molestias debitis distinctio.', 4),
(324, '1979-03-11 19:31:46', 5, 'Incidunt explicabo id repellat ab deserunt aut accusantium pariatur dolorum repudiandae assumenda aut aut quaerat voluptas illum quae velit voluptatem quas ipsam ut omnis libero aspernatur officia sit fugiat et ratione.', 4),
(325, '2016-07-15 18:33:45', 1, 'A animi soluta atque quia voluptatem velit veritatis quis officiis laborum illo dolore sit ut quibusdam sapiente dolore reprehenderit fugit dolorum in est illum.', 11),
(326, '1974-06-18 01:59:10', 2, 'Sapiente voluptate in ipsum a dolor rerum illum voluptas.', 16),
(327, '2016-04-21 17:10:44', 2, 'Nostrum quidem est fugit ut quis est perferendis voluptates occaecati velit perferendis aut voluptatibus sunt veniam dolorum voluptatem harum ut voluptas ut saepe facilis corrupti dolores perferendis voluptas.', 18),
(328, '1970-09-30 08:10:34', 5, 'Natus dolores aperiam a consequatur enim nesciunt deleniti aut maiores laboriosam nesciunt quibusdam ducimus distinctio excepturi odio quod quos quisquam.', 16),
(329, '1977-11-19 13:46:46', 3, 'Non sint optio est sed inventore et nisi labore est sit sit culpa perferendis voluptas et sed ratione sit dolores at eius sapiente ullam.', 9),
(330, '2016-02-23 21:52:01', 3, 'Facilis non est nihil eum quo delectus animi nisi veniam placeat sunt facilis dolore maiores qui optio dolor illum quod impedit est deserunt mollitia voluptatem.', 14),
(331, '1972-10-27 10:42:24', 2, 'Aut tenetur quos laudantium sunt et qui et et ipsam veritatis eum incidunt nobis saepe aperiam ut et hic ea voluptas cum nesciunt omnis.', 13),
(332, '1984-12-06 08:00:00', 4, 'Iusto in eos beatae inventore enim architecto qui quia voluptatem.', 4),
(333, '1987-07-03 08:57:09', 5, 'Ratione architecto est voluptatem incidunt eaque delectus qui rerum dolor officiis sequi accusamus minima nemo dolore quaerat aut tenetur earum autem.', 16),
(334, '2005-06-09 22:25:28', 1, 'A numquam voluptates quaerat vitae impedit voluptatum nesciunt quo laborum est voluptatum officiis non facere tempora quo distinctio ipsum placeat est saepe quia temporibus corrupti quaerat nisi qui error inventore aperiam.', 13),
(335, '2018-10-06 07:56:57', 1, 'Eaque autem adipisci voluptatum excepturi pariatur consectetur labore et beatae possimus voluptas corrupti.', 17),
(336, '2003-07-21 20:19:55', 4, 'Tempore amet architecto aliquam sit recusandae aut dolorum id mollitia et necessitatibus quia repudiandae ratione aut rerum nulla corporis molestiae inventore minus ut in vero eaque maxime vel temporibus rerum.', 8),
(337, '1999-10-28 13:19:20', 3, 'Sint aut eveniet autem minima iste ea alias eius ipsum aut qui ullam itaque architecto recusandae.', 9),
(338, '1973-04-12 00:44:39', 5, 'Id ea et et est veniam qui amet consequatur quae et illum quis.', 12),
(339, '1992-05-24 05:07:09', 5, 'Odio ex et est unde velit eum officia aut nihil ipsa eos quaerat sit eligendi modi optio.', 10),
(340, '1986-10-05 17:26:47', 4, 'Facere perspiciatis a tenetur ipsam delectus natus sunt.', 17),
(341, '2018-08-22 23:21:20', 1, 'Vel non laboriosam error quod iusto ullam ratione deserunt iure dicta placeat sunt est ut sunt et soluta a enim sed illum nisi reiciendis delectus beatae nihil tempore qui.', 16),
(342, '1990-05-19 19:00:16', 5, 'Nam qui voluptatem recusandae omnis fugiat doloribus id qui veniam nam deserunt repudiandae veniam voluptas officia consequatur facilis.', 4),
(343, '2018-07-08 13:20:26', 4, 'Reiciendis rem eos nisi ea itaque nobis consequatur veniam similique facere quia aliquam.', 12),
(344, '1972-08-17 18:02:20', 2, 'Reprehenderit nemo ea quo porro quisquam aut assumenda totam aspernatur aut nostrum est non aut vel assumenda.', 6),
(345, '1987-12-11 23:05:44', 3, 'Maxime eum natus praesentium voluptatem explicabo reiciendis explicabo dolore asperiores unde iure omnis nobis.', 11),
(346, '1975-06-26 09:35:50', 5, 'Nisi ratione vero rerum ducimus porro quisquam sit consequatur.', 9),
(347, '1975-09-18 15:18:58', 3, 'Quis voluptatem magni esse assumenda commodi deserunt delectus hic consequatur sit voluptas ut officia.', 5),
(348, '2005-03-07 14:49:00', 3, 'Voluptatem repudiandae vel voluptatem autem magni architecto numquam consequatur quidem dolor itaque minus ea vitae quia doloribus ducimus magnam eum.', 6),
(349, '1991-09-06 01:22:24', 5, 'Corporis ut autem earum occaecati aut nihil aut labore voluptates id qui fugiat.', 12),
(350, '1987-01-20 20:18:32', 2, 'Sint quia voluptas enim voluptas et doloribus optio consequatur aut fugit aut accusantium voluptatem hic sapiente inventore aut cupiditate ea voluptatibus sit et aut quaerat.', 17),
(351, '1995-03-20 06:00:30', 2, 'Eos amet blanditiis sed quos distinctio amet cum autem at.', 12),
(352, '2004-02-23 17:56:47', 1, 'Est doloribus quaerat saepe culpa harum voluptates non corrupti rem excepturi eligendi et quisquam ipsum autem iure aut voluptatem ea repellat.', 13),
(353, '2004-05-11 13:25:17', 5, 'Et ipsa tempora et minima molestias quaerat in doloremque sit ullam vitae blanditiis earum aut necessitatibus nobis accusantium eveniet atque qui beatae esse voluptatem.', 16),
(354, '2000-04-19 08:34:54', 3, 'Placeat debitis nam fuga pariatur modi quam hic iure veniam in error optio vero rerum non blanditiis placeat eaque pariatur blanditiis commodi aut qui quod voluptas excepturi amet.', 16),
(355, '1976-10-02 20:10:57', 3, 'Reprehenderit quibusdam nobis consequatur est quos quis numquam aspernatur beatae necessitatibus nobis laboriosam quaerat officia.', 14),
(356, '1977-03-01 06:22:07', 4, 'Ab qui dignissimos porro delectus voluptas quisquam iusto molestiae qui ut inventore.', 15),
(357, '2002-08-30 12:45:49', 5, 'Ut dolores libero error esse est odit ea natus.', 14),
(358, '1974-10-02 13:07:44', 4, 'Voluptas optio et repellendus quasi quae fugit enim quas voluptatem recusandae odio tenetur similique dolores sint nobis excepturi nostrum ratione velit quia et ullam velit molestias debitis officia consequuntur.', 14),
(359, '2009-08-23 02:54:23', 1, 'Aliquid enim vero ab amet fuga in magni quaerat blanditiis nisi cupiditate quidem nam consequatur est et facilis odio consequatur vel non rem sed.', 6),
(360, '1981-03-17 10:33:27', 5, 'Delectus necessitatibus beatae quos distinctio mollitia et asperiores.', 16),
(361, '2000-10-21 19:08:16', 4, 'Est in adipisci impedit earum sit sunt facilis nisi accusantium rem sequi sunt dolorum et earum ea animi accusantium.', 18),
(362, '1985-02-23 09:23:00', 5, 'Commodi deserunt molestias dolores excepturi atque esse quaerat veritatis ut et omnis deleniti cupiditate iure maxime autem voluptatem illo ex maiores ea et distinctio iste.', 15),
(363, '1995-09-27 17:25:22', 1, 'Ipsum iure velit sed neque eius ipsum architecto aut numquam id eveniet nemo et possimus commodi sit eum deleniti velit molestiae est tenetur quaerat architecto perspiciatis id occaecati saepe ratione dicta.', 11),
(364, '1995-07-31 14:26:15', 3, 'Molestiae odit temporibus eos architecto ut dolor dignissimos qui voluptatibus atque consectetur corporis sit qui ut dignissimos sint odio recusandae.', 14),
(365, '1970-06-14 06:29:20', 3, 'Necessitatibus velit architecto animi aperiam in est est est amet dolore quaerat qui aspernatur saepe est.', 14),
(366, '1996-11-07 00:24:18', 5, 'Atque quam fugiat quas ea quisquam dolores quibusdam repellendus quo dicta et tempore et molestiae ab inventore cum.', 15),
(367, '2008-12-04 17:32:15', 4, 'Consequatur et cupiditate sit sint officia voluptas incidunt et voluptatem blanditiis sapiente nobis dignissimos eos aut autem deleniti laboriosam.', 4),
(368, '2011-10-17 22:08:54', 4, 'Enim excepturi aut ab recusandae distinctio quaerat nam numquam eveniet aliquam quis itaque neque inventore maiores temporibus temporibus unde veritatis voluptatem.', 6),
(369, '2014-01-01 23:26:41', 2, 'Molestias aut voluptate voluptatibus at repellat ipsum est quo autem et nam rem et.', 10),
(370, '1994-09-19 01:17:54', 5, 'Et saepe nisi numquam repellat sit magni laboriosam non pariatur temporibus magni culpa rerum illum aut dolor ut.', 4),
(371, '1989-02-14 01:05:30', 3, 'Et blanditiis quo est sed est sequi eos error architecto voluptatibus.', 17),
(372, '2005-05-11 12:57:16', 4, 'Explicabo deleniti expedita aut maiores eum nesciunt velit qui iusto id beatae sit.', 9),
(373, '1971-05-04 19:08:22', 5, 'Dolore voluptate exercitationem ratione et reiciendis rem debitis.', 13),
(374, '1975-12-15 23:35:01', 4, 'Molestiae sed laborum tenetur aut sit id tenetur quasi molestiae eius fuga ex.', 16),
(375, '2013-09-09 15:28:07', 3, 'Consectetur laborum deserunt amet voluptas dignissimos magnam tempora fugiat fugiat id eveniet consequatur corporis accusamus voluptatem consequatur.', 14),
(376, '1974-12-17 21:08:16', 5, 'Sed ut quo aliquid iusto omnis similique non doloribus ut sit est neque labore nihil quas consectetur provident quos omnis sunt similique officiis et aut.', 5),
(377, '1977-01-27 22:16:08', 4, 'Nulla perspiciatis doloribus praesentium ut voluptate voluptatem rerum non ratione cumque ut.', 16),
(378, '1983-12-04 22:52:47', 5, 'Unde et explicabo non ratione veritatis molestiae illum ipsam ut.', 8),
(379, '1981-10-25 16:53:43', 1, 'Possimus veniam omnis maiores facere aut id inventore consequatur sint nulla recusandae est.', 5),
(380, '1999-05-08 13:31:54', 3, 'Dicta doloribus qui nobis vel recusandae omnis aut possimus vel fuga doloremque earum harum et quam nemo aliquam.', 6),
(381, '1994-04-23 10:59:47', 2, 'Et facilis iste nobis nam quia consequatur accusamus voluptate voluptatum quasi rem minus minus ut suscipit necessitatibus distinctio.', 17),
(382, '1988-05-31 12:05:28', 3, 'Sunt quaerat dolor rem repellat omnis aspernatur itaque cum enim voluptatem.', 6),
(383, '2017-04-05 11:34:18', 5, 'Non dolorum laborum a a quis odio tenetur odio consequatur hic aut placeat laudantium ex aperiam et quidem nesciunt corrupti laboriosam.', 11),
(384, '1984-11-03 20:22:51', 1, 'Ducimus cupiditate quis tempora aliquid corrupti impedit ad velit veniam et cumque similique quae eos.', 18),
(385, '1976-12-04 14:59:27', 1, 'Deserunt accusantium quibusdam adipisci quo laudantium facilis consequatur ratione quia ab nulla nihil labore quia repellat beatae odio voluptas totam expedita possimus voluptatem cupiditate cumque totam.', 16),
(386, '2002-10-22 17:24:05', 4, 'Est facere sunt reprehenderit sit adipisci perspiciatis voluptas deserunt aut facilis commodi porro eos sed et omnis rem.', 11),
(387, '2006-01-13 07:29:39', 3, 'Aliquam et fugiat ea earum consectetur tempore quos temporibus at sed consequatur qui eveniet aut omnis rerum.', 6),
(388, '1992-02-27 09:48:43', 4, 'Minima quis quasi non est repudiandae placeat et ab asperiores corporis enim.', 10),
(389, '1989-07-12 04:11:33', 5, 'Nihil doloremque molestias dolores nisi non minima hic nostrum sed.', 9),
(390, '1990-10-19 14:28:28', 5, 'Inventore aperiam laboriosam odio autem nam doloremque ut ad corrupti suscipit maxime commodi quo unde.', 8),
(391, '2005-04-15 10:35:59', 5, 'Asperiores nihil deserunt molestias eaque a quaerat recusandae neque libero omnis facilis voluptatem esse provident ab magnam perspiciatis possimus inventore quis.', 5),
(392, '1997-08-18 19:07:01', 2, 'Aspernatur autem tempore et accusamus ratione exercitationem aut et aspernatur quas explicabo sed sint.', 5),
(393, '1973-05-16 04:38:03', 2, 'Dolor ipsum autem repudiandae eius quibusdam adipisci molestiae illo qui tenetur laboriosam ducimus assumenda sunt suscipit ad nihil est aut quia a accusantium accusamus nihil vel qui ipsam laudantium aspernatur asperiores eum.', 5),
(394, '2018-01-05 23:32:48', 1, 'Reprehenderit expedita natus ea enim deleniti quasi voluptate earum facere quidem consequuntur culpa architecto veniam quaerat dolor laborum voluptatum.', 5),
(395, '2005-01-27 03:41:50', 2, 'Deserunt qui dolores natus nam praesentium impedit quae nihil incidunt odit placeat eum et tempora ea.', 7),
(396, '1998-01-19 03:11:10', 4, 'Molestiae veritatis nobis sunt debitis libero sint sint dignissimos dolorem laboriosam quas alias.', 7),
(397, '1976-11-07 03:36:24', 4, 'Voluptatem aut itaque nihil accusamus sit dolores porro fugit voluptates dolorem et quaerat ut.', 13),
(398, '1998-07-03 03:55:35', 2, 'Eligendi omnis repellat accusamus odio ipsum officiis neque odit ipsum non porro et autem doloremque dignissimos totam quisquam qui dolores.', 7),
(399, '2005-08-29 17:21:00', 4, 'Inventore et est laudantium est omnis nam exercitationem non et quo animi nihil aut.', 15),
(400, '2017-05-22 14:23:23', 4, 'Omnis error velit voluptas impedit ex eaque nisi eum atque voluptatibus modi illum consectetur id quibusdam.', 8),
(401, '1997-04-26 10:30:46', 1, 'Voluptatem architecto expedita quis id tenetur qui porro qui.', 6),
(402, '1981-06-04 16:30:06', 1, 'Quo magnam dolor pariatur est eveniet dolorum et non necessitatibus occaecati in autem optio ratione aperiam consequatur eum ut quaerat dignissimos tenetur rerum rerum.', 6),
(403, '1976-07-16 06:26:01', 2, 'Accusantium quam sit accusamus a libero explicabo et ullam corporis dolorum sequi.', 14),
(404, '2005-12-15 23:34:23', 1, 'Maxime in exercitationem dignissimos in vel nam voluptatem fugit nostrum illo deleniti omnis in et ipsam culpa harum vero earum autem mollitia earum assumenda veritatis.', 18),
(405, '1997-03-04 08:15:08', 4, 'Sunt dignissimos provident sapiente ullam maiores amet dolorem libero facilis voluptas nam dolorem sed laboriosam.', 16),
(406, '1991-02-17 02:19:19', 2, 'Repudiandae aut quis ut omnis sed nobis hic rem ut eum rerum eius nam aut placeat ut est distinctio.', 11),
(407, '2009-07-21 14:01:43', 3, 'Eveniet nemo ea officiis dignissimos et cumque illo ut quasi corporis est nam ut sequi autem quaerat iusto ut enim.', 7),
(408, '1998-11-18 02:24:04', 4, 'Consequatur expedita omnis ad sunt odio error esse quis est voluptatem laudantium voluptatem est.', 7),
(409, '1994-01-02 04:48:56', 3, 'Eum non sed aut laborum aut praesentium quibusdam ducimus dolores velit est qui quo odit ipsa.', 11),
(410, '1995-04-06 16:19:19', 3, 'Quod fuga rem consequatur tenetur quibusdam dolor quos voluptatem explicabo ipsum sed in est amet quis.', 14),
(411, '1970-01-04 14:23:51', 2, 'Amet minus qui a aliquid corrupti dicta et nulla itaque nam consequatur quos velit laboriosam veritatis corrupti deserunt sint.', 6),
(412, '1970-01-31 13:13:38', 2, 'Voluptates earum numquam temporibus ut aut doloribus quis rerum asperiores qui sapiente id aut ut soluta qui veniam error necessitatibus voluptatem aut totam omnis veniam blanditiis enim sit impedit consequatur dolores soluta fugiat exercitationem quibusdam.', 5),
(413, '1985-09-11 06:07:08', 1, 'Voluptate amet animi voluptatem aspernatur minus in commodi dolor ex nobis asperiores et voluptatem dicta.', 17),
(414, '1981-03-18 20:51:00', 1, 'Magnam quia sint minus aspernatur veniam laborum doloremque praesentium voluptas aut nesciunt quos.', 15),
(415, '1971-08-15 22:34:36', 1, 'Occaecati ab id rerum vel soluta quae quod eos amet eum sunt qui ipsam quo rerum sapiente repellat provident molestias deleniti rem possimus.', 13),
(416, '1980-06-06 05:13:56', 1, 'Eius aut repellendus asperiores et mollitia quo excepturi explicabo nemo deleniti corporis fuga assumenda.', 14),
(417, '1991-06-16 23:48:15', 2, 'Dolor mollitia pariatur et dolor et possimus et debitis voluptatem ducimus non sit magni et placeat.', 17),
(418, '2001-12-27 01:44:13', 1, 'Soluta aspernatur velit non qui quis occaecati quo ducimus vel qui est quod incidunt explicabo ut hic.', 7),
(419, '2001-06-24 22:51:50', 3, 'Fugit quis assumenda et qui quisquam est earum incidunt vel iure.', 18),
(420, '2001-04-22 00:55:16', 4, 'Itaque recusandae in neque ex suscipit dolor aut sed est ab commodi ad culpa voluptatem ut hic.', 18),
(421, '2002-05-31 11:06:46', 5, 'Laudantium impedit quisquam facilis neque incidunt iure ea quo voluptatem quas quasi consequuntur non expedita ut labore repellat praesentium.', 5),
(422, '1988-01-07 05:40:22', 1, 'Non perferendis vel et et omnis repellat sunt odio soluta dolor nemo qui deleniti qui quisquam et dignissimos ut occaecati id quia odit non dolores provident fuga.', 12),
(423, '2019-09-08 19:27:31', 2, 'Voluptatem ex amet vitae modi aut repellat earum aliquid tempora aperiam ipsum velit iste nam voluptatem ipsa quod illum voluptatem asperiores id ex consectetur et veritatis.', 12),
(424, '2021-12-12 10:08:38', 4, 'Perspiciatis sequi iure est nemo libero temporibus aspernatur officiis velit ut sint reprehenderit consequatur eveniet.', 4),
(425, '1990-01-10 06:24:51', 4, 'Aut consectetur est blanditiis ut necessitatibus qui suscipit et dolorem qui similique est quibusdam qui repellat.', 4),
(426, '1970-06-07 04:21:28', 3, 'Nam ipsum doloribus nesciunt laboriosam libero accusamus.', 7),
(427, '2014-12-27 14:04:14', 3, 'Unde sunt et provident ea eum voluptas id consequatur dolor officiis sint nihil animi.', 8),
(428, '2006-02-25 03:44:33', 4, 'Ea et cumque dolorem quo qui aperiam aperiam ex voluptates.', 7),
(429, '2017-06-06 08:09:14', 1, 'Vitae atque hic quia quia quibusdam recusandae exercitationem molestiae et est et sapiente qui tempora repellendus accusantium.', 10),
(430, '2005-03-10 00:03:18', 5, 'Autem est qui aut nihil ipsam consectetur deleniti amet consequatur nihil provident eius aut architecto voluptatem doloremque aperiam officiis repudiandae corrupti illo.', 15),
(431, '2020-02-17 11:03:24', 3, 'Provident quo eligendi provident enim id culpa quae corporis necessitatibus quidem aperiam illo.', 16),
(432, '1972-09-25 05:51:01', 3, 'Officia vel sed facere voluptatem ducimus molestias quisquam necessitatibus.', 14),
(433, '1999-04-23 19:35:36', 1, 'Consequuntur placeat rerum laborum enim aspernatur sit exercitationem quibusdam est hic est dicta est ut porro laboriosam unde reprehenderit occaecati.', 4),
(434, '2007-08-28 00:12:28', 2, 'Qui esse aspernatur nulla enim tempora ducimus cumque est necessitatibus voluptas.', 4),
(435, '1975-05-25 16:00:27', 1, 'Nesciunt in animi eos enim pariatur ullam culpa vitae saepe.', 4),
(436, '2010-02-13 08:24:39', 5, 'Minima ea id vel et labore magnam nemo qui at nobis asperiores amet labore architecto sint.', 15),
(437, '2006-11-07 22:28:02', 2, 'Eius blanditiis aliquid autem ducimus ut cupiditate ea nisi eos minus vitae aut libero iure et nesciunt at voluptatem minima qui laborum perferendis sed.', 4),
(438, '2006-01-09 15:11:25', 1, 'Fugit alias qui voluptatem minus excepturi reiciendis at id ut impedit placeat assumenda ullam iusto vel blanditiis magni.', 17),
(439, '2003-07-26 20:01:52', 2, 'Iure enim sit minima praesentium enim velit minima architecto reprehenderit et.', 6),
(440, '1999-07-23 07:25:31', 3, 'Dolor dolores dolorem aut quia aperiam rem magni itaque delectus asperiores neque aut nesciunt et vel quod.', 14),
(441, '1976-02-19 16:59:52', 2, 'Unde ut id odit aut rem quia et recusandae saepe qui temporibus non dolore dicta id consectetur ad alias consequuntur in nam.', 16),
(442, '2009-04-29 09:46:40', 5, 'Numquam suscipit sit voluptatem occaecati inventore qui rerum officia autem quae nostrum placeat tenetur at non voluptas facere.', 18),
(443, '2019-03-30 02:51:57', 5, 'Eum et molestiae doloribus aut quaerat qui dolor quos ut rerum optio molestiae modi cumque voluptatem commodi a beatae impedit.', 15),
(444, '2011-09-10 11:29:12', 1, 'Qui nam sapiente et qui unde laudantium voluptatem voluptatem quis culpa dolorem explicabo qui exercitationem non amet quos dolor voluptatum enim.', 17),
(445, '1997-09-18 13:45:35', 2, 'Quia itaque incidunt quo nostrum sapiente asperiores libero ducimus et harum at omnis et labore nisi ut id itaque.', 4),
(446, '1977-04-18 20:03:24', 4, 'Est quod amet alias aliquam sed aperiam recusandae assumenda magnam ea aut ratione similique aperiam assumenda.', 17),
(447, '2011-12-27 23:23:21', 1, 'Assumenda perspiciatis neque consectetur temporibus molestiae earum voluptatem non omnis id officia rerum ut sed.', 11),
(448, '2021-05-10 15:16:43', 1, 'Aperiam libero culpa veritatis incidunt eveniet adipisci culpa ratione qui sed rerum maiores aut dolorem eveniet laborum voluptatem sunt delectus.', 15),
(449, '1996-01-22 06:50:23', 4, 'Veritatis et dignissimos autem mollitia voluptatem dolorem at quibusdam dolores accusantium perspiciatis facere quos eligendi aliquam non aliquid ipsam deleniti mollitia.', 13),
(450, '1996-10-31 20:19:59', 3, 'Quo maxime perferendis consequatur maiores ipsam odit ea et ut voluptate molestias qui aut laudantium natus sit sunt optio accusantium deleniti iusto et facere provident.', 5),
(451, '1972-03-15 03:40:00', 5, 'Aspernatur odit exercitationem inventore vel nam ut consequuntur non culpa eius labore nostrum ratione non sint nemo esse iure dicta cumque perferendis ipsa.', 13),
(452, '2011-04-06 01:05:15', 2, 'Sint ad earum autem iusto eius consequuntur delectus ut sequi aut rerum et dolorum laudantium eius molestiae aspernatur voluptate accusantium laudantium blanditiis possimus magnam dolore iure est praesentium.', 9),
(453, '1981-02-28 03:51:35', 1, 'Repellendus non autem est enim nam tempore exercitationem maiores aut cumque ut assumenda deserunt sed ratione eum.', 12),
(454, '1976-06-22 22:06:09', 5, 'Nesciunt doloremque eum quia non quo consequatur officia vel.', 5),
(455, '1980-04-18 00:24:31', 2, 'Distinctio voluptas maxime animi facere temporibus esse magnam deleniti vitae ut quidem laboriosam officiis et eum est corrupti quae culpa nulla voluptatum dolores accusantium sed.', 15),
(456, '2001-05-23 16:16:38', 4, 'Non quod officiis ea vitae saepe voluptatibus tempora expedita nesciunt dolorem ea assumenda unde dolores voluptas dolor blanditiis ea.', 16),
(457, '1987-10-06 21:32:55', 4, 'Molestiae harum ut sint quae omnis iusto incidunt repudiandae eos eveniet cum iure.', 16),
(458, '2020-11-30 21:04:33', 2, 'Ex autem ad et error illum saepe commodi molestiae rerum sapiente autem voluptas.', 6),
(459, '2021-09-22 21:26:34', 2, 'Excepturi vero ut et vel placeat nihil ducimus dolor odio molestias unde ea placeat eius reprehenderit nesciunt consequatur non.', 18),
(460, '1980-06-20 03:36:37', 3, 'Reprehenderit aut porro vel reprehenderit sit aspernatur eos commodi expedita quibusdam at quia tempore consequatur est occaecati necessitatibus itaque amet in ipsum qui consequuntur vitae quos.', 14),
(461, '1981-05-14 09:40:05', 2, 'Consectetur aut totam atque earum non impedit fugit corporis quasi repellat aperiam quae adipisci qui magni tempore veritatis in voluptas.', 8),
(462, '2013-10-05 06:08:43', 2, 'Rerum ipsum itaque non ea sit esse qui exercitationem consectetur doloribus libero eius blanditiis vero facere aperiam maiores ut unde velit consequatur.', 6),
(463, '1999-04-25 00:29:06', 3, 'Alias nobis libero et voluptatem beatae voluptates itaque veritatis accusamus ipsa recusandae et quidem ad ducimus dicta.', 15),
(464, '1983-08-02 19:33:30', 4, 'Dolorem et cupiditate non dolores quasi et aut voluptates illo tenetur qui rerum iste et incidunt sapiente culpa.', 16),
(465, '1980-08-20 07:24:17', 2, 'Quidem ducimus fugiat labore quam eveniet quod vero modi maiores quia ut.', 10),
(466, '2003-08-18 10:05:15', 3, 'Voluptate neque dignissimos dicta magni similique beatae quis perspiciatis voluptatem voluptates dignissimos impedit neque.', 15),
(467, '2007-09-11 13:40:19', 1, 'Reiciendis cum unde quasi commodi blanditiis eligendi voluptas rerum quo.', 4),
(468, '1977-05-06 05:06:19', 2, 'Repudiandae dolore quasi dolores non accusantium vitae rem qui nam minima et facere consectetur nulla adipisci quis non earum ea dicta impedit tempore modi cumque voluptatibus est sequi.', 12),
(469, '2010-12-23 00:02:11', 5, 'Aut nesciunt mollitia molestiae et repellendus repudiandae sed iure eos repellendus officia.', 13),
(470, '2003-05-14 08:12:25', 1, 'Rem enim qui sapiente maxime eum sit consequatur ad corporis autem quas doloribus veniam est.', 15),
(471, '2006-11-13 21:16:45', 3, 'Et omnis id placeat repellat id quo expedita libero minima.', 12),
(472, '2004-08-12 13:35:52', 3, 'Aut quas dignissimos pariatur asperiores est tempore quae placeat exercitationem veniam odit sint aut ex qui aut natus numquam.', 9),
(473, '1977-05-02 16:05:27', 3, 'Temporibus quia accusamus facere itaque quae cupiditate occaecati optio sed odio vitae sed iure consequatur alias ut sunt et qui.', 5),
(474, '1987-01-28 14:21:48', 5, 'Tempore amet consectetur sunt non aut iusto dolores sequi et iusto soluta sunt eum cumque.', 7),
(475, '2014-05-07 13:29:41', 5, 'Quod vero ut est officia occaecati laborum eum voluptate ut in at id.', 7),
(476, '1971-05-25 05:23:18', 5, 'Ipsam vero ut veritatis eum ut et optio id aperiam quidem consequatur.', 13),
(477, '2012-04-14 13:34:03', 2, 'Autem cupiditate quidem blanditiis delectus cupiditate nemo et illum omnis veniam voluptas officiis impedit sunt autem cupiditate autem provident ducimus ut.', 11),
(478, '2000-01-03 13:22:30', 4, 'Deleniti assumenda fugit nobis exercitationem ad ullam nihil dolore animi non perspiciatis voluptas et.', 8),
(479, '2014-02-08 06:13:12', 1, 'Non est eos a debitis est enim reiciendis et est dolore dolor occaecati voluptas repudiandae.', 4),
(480, '1982-08-12 20:09:52', 3, 'Est ipsum aut fugiat reiciendis ut qui laborum recusandae nihil ex.', 4),
(481, '2007-11-22 01:17:49', 2, 'Non non et culpa magnam aliquam nulla est cumque rem.', 10),
(482, '1973-06-16 17:05:10', 4, 'Molestiae voluptatum soluta repellendus et quaerat praesentium est voluptatem a rerum est consequatur nihil et et eveniet non autem nihil eos vel.', 11),
(483, '1993-01-21 19:59:29', 5, 'Fugiat nihil recusandae enim voluptatem laudantium quis cum beatae modi ab vero ea ipsa illum et suscipit itaque.', 6),
(484, '2015-10-13 20:02:15', 1, 'Debitis ipsum et beatae facere dolores eveniet illum maxime sed atque sapiente eligendi nisi sint id.', 5),
(485, '2003-08-25 21:42:39', 2, 'Quidem et quibusdam debitis quisquam repudiandae nulla reiciendis libero aut maxime esse culpa necessitatibus culpa.', 4),
(486, '1994-05-30 06:02:53', 1, 'Dolor labore quia eum quidem aut magnam sit aliquam eligendi magnam cupiditate exercitationem eveniet distinctio expedita veritatis porro qui quia accusantium repellendus similique omnis velit.', 15),
(487, '1982-04-04 02:47:30', 1, 'Qui sit non vel eos nihil nemo occaecati asperiores quasi dolores ex ut ea.', 17),
(488, '1978-09-19 12:24:47', 4, 'Ut excepturi aut in ut officiis aliquam optio sapiente quod dicta quis corrupti et at ipsum voluptatem deleniti cum magnam fugiat veritatis dolor rerum enim.', 10),
(489, '1975-11-10 02:38:16', 5, 'At itaque tempora qui fuga laudantium maiores sit sed doloribus qui sit sunt optio sed dolores nihil et laborum corporis ut ex itaque sapiente quas quis sapiente iste voluptatem placeat voluptatem.', 15),
(490, '2009-06-19 22:11:04', 5, 'Beatae quasi commodi ut aut consequatur harum sequi ab aspernatur eum ullam.', 18),
(491, '2004-10-16 21:41:17', 3, 'Itaque assumenda excepturi omnis odit minima ipsum accusamus voluptatem et mollitia laudantium illum cum deserunt dicta architecto quas aliquid.', 4),
(492, '2004-02-13 01:55:26', 3, 'Quidem id ducimus neque consequatur laudantium expedita aliquid doloribus et dolores aliquid in est.', 5),
(493, '2018-02-27 01:58:41', 1, 'Repudiandae ipsum dicta occaecati nihil quo consequuntur aspernatur a architecto porro voluptas accusantium pariatur impedit.', 7),
(494, '2000-09-16 07:20:05', 5, 'Ut ullam ullam repellat dignissimos inventore corrupti accusantium dolor voluptatem maiores.', 7),
(495, '2020-03-14 15:09:46', 2, 'Neque ipsam qui suscipit debitis sit totam voluptas qui commodi natus maxime reprehenderit consequatur voluptatem et ipsam saepe quis corporis voluptatem eos incidunt incidunt repellat consequatur porro assumenda ratione pariatur.', 13),
(496, '1991-12-18 05:59:21', 2, 'Consequatur quam et voluptates rem aut veniam error aut doloremque porro ipsum omnis qui iure qui modi perferendis corporis laudantium voluptatibus molestiae libero itaque est quisquam quas accusantium molestiae laudantium velit.', 5),
(497, '2016-03-18 01:20:44', 2, 'Dolores tempora facilis excepturi vero reprehenderit iste in inventore a odio minus est odio ea quo id voluptas veritatis est et sit dolor incidunt dolorem.', 7),
(498, '1990-03-30 16:03:41', 5, 'Qui est modi dignissimos nesciunt quia quidem reiciendis at recusandae itaque quaerat maxime eaque non voluptas neque aut.', 5),
(499, '1987-01-13 20:57:52', 5, 'Vitae repudiandae at unde consectetur asperiores harum ipsam sapiente mollitia possimus optio sunt ut quam natus perferendis provident quia et et doloribus.', 9),
(500, '2005-12-31 16:12:28', 3, 'Eligendi atque quod quidem quo occaecati nulla molestias natus eligendi dignissimos et pariatur et magnam aliquam.', 4);

-- --------------------------------------------------------

--
-- Table structure for table `software_houses`
--

CREATE TABLE `software_houses` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `country` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `software_houses`
--

INSERT INTO `software_houses` (`id`, `name`, `address`, `country`) VALUES
(1, 'Nintendo', 'Kyoto', 'JP'),
(2, 'Valve Corporation', 'Bellevue', 'US'),
(3, 'Rockstar Games', 'New York City', 'US'),
(4, 'Electronic Arts', 'Redwood City', 'US'),
(5, 'Ubisoft', 'Montreuil', 'FR'),
(6, 'Konami', 'Kyoto', 'JP');

-- --------------------------------------------------------

--
-- Table structure for table `videogames`
--

CREATE TABLE `videogames` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `release_date` date NOT NULL,
  `price` float(5,2) NOT NULL,
  `software_house_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `videogames`
--

INSERT INTO `videogames` (`id`, `title`, `release_date`, `price`, `software_house_ID`) VALUES
(4, 'Pokémon Brilliant Diamond', '2021-11-19', 55.00, 1),
(5, 'The Legend of Zelda', '1986-02-21', 35.00, 1),
(6, 'Half-Life', '1998-06-15', 59.00, 2),
(7, 'Team Fortress Classic', '1999-04-08', 45.00, 2),
(8, 'Counter Strike', '2000-06-14', 60.00, 2),
(9, 'Grand Theft Auto 2', '1999-07-01', 59.99, 3),
(10, 'Earthworm Jim 3D', '1999-03-07', 49.95, 3),
(11, 'The Warriors', '2005-12-10', 39.99, 3),
(12, 'Army of Two: The 40th Day', '2010-01-12', 59.99, 4),
(13, 'Mass Effect 2', '2010-01-26', 59.99, 4),
(14, 'Dragon Age II', '2011-05-24', 49.98, 4),
(15, 'Asphalt: Urban GT 2', '2007-03-22', 69.99, 5),
(16, 'The Dog Island', '2007-04-26', 49.90, 5),
(17, 'Watch Dogs: Legion', '2020-10-29', 75.00, 5),
(18, 'Super Mario Bros.', '1985-09-13', 60.00, 1),
(20, 'Paper Mario', '2010-10-10', 49.99, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `genres_videogames`
--
ALTER TABLE `genres_videogames`
  ADD UNIQUE KEY `genres_ID` (`genres_ID`,`videogame_ID`),
  ADD KEY `videogame_ID` (`videogame_ID`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `videogame_ID` (`videogame_ID`);

--
-- Indexes for table `software_houses`
--
ALTER TABLE `software_houses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videogames`
--
ALTER TABLE `videogames`
  ADD PRIMARY KEY (`id`),
  ADD KEY `software_house_ID` (`software_house_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;

--
-- AUTO_INCREMENT for table `software_houses`
--
ALTER TABLE `software_houses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `videogames`
--
ALTER TABLE `videogames`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `genres_videogames`
--
ALTER TABLE `genres_videogames`
  ADD CONSTRAINT `genres_videogames_ibfk_1` FOREIGN KEY (`genres_ID`) REFERENCES `genres` (`ID`),
  ADD CONSTRAINT `genres_videogames_ibfk_2` FOREIGN KEY (`videogame_ID`) REFERENCES `videogames` (`id`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`videogame_ID`) REFERENCES `videogames` (`id`);

--
-- Constraints for table `videogames`
--
ALTER TABLE `videogames`
  ADD CONSTRAINT `videogames_ibfk_1` FOREIGN KEY (`software_house_ID`) REFERENCES `software_houses` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
