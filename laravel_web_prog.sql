-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2017 at 09:30 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `laravel_web_prog`
--

-- --------------------------------------------------------

--
-- Table structure for table `achievements`
--

CREATE TABLE IF NOT EXISTS `achievements` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `achievements`
--

INSERT INTO `achievements` (`id`, `name`, `image`, `description`, `created_at`, `updated_at`) VALUES
(2, '1 Exercise', '291216040641.png', 'Berhasil menyelesaikan exercise pertama', '2016-12-28 21:06:41', '2016-12-28 21:06:41'),
(3, '3 Exercise', '291216040731.png', 'Berhasil menyelesaikan 3 exercise', '2016-12-28 21:07:31', '2016-12-28 21:07:31'),
(4, '5 Exercise', '291216040746.png', 'Berhasil menyelesaikan 5 exercise', '2016-12-28 21:07:46', '2016-12-28 21:07:46'),
(5, 'Pengenalan CSS', '291216040812.png', 'Berhasil menyelesaikan course Pengenalan CSS', '2016-12-28 21:08:12', '2016-12-28 23:05:45'),
(6, 'Pengenalan HTML', '291216040830.png', 'Berhasil menyelesaikan course Pengenalan HTML', '2016-12-28 21:08:30', '2016-12-28 23:05:51');

-- --------------------------------------------------------

--
-- Table structure for table `achievement_user`
--

CREATE TABLE IF NOT EXISTS `achievement_user` (
  `user_id` int(10) unsigned NOT NULL,
  `achievement_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `achievement_user`
--

INSERT INTO `achievement_user` (`user_id`, `achievement_id`) VALUES
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(7, 2),
(7, 3),
(7, 4),
(7, 5),
(7, 6),
(8, 2),
(8, 3),
(8, 4),
(8, 5),
(8, 6),
(11, 2),
(13, 2),
(13, 3),
(13, 6);

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE IF NOT EXISTS `contact_messages` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `name`, `email`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Test', '3tagger95@gmail.com', 'hello', '2016-10-04 19:45:14', '2016-10-04 19:45:14'),
(2, 'Test', '3tagger95@gmail.com', 'hello', '2016-10-04 19:45:44', '2016-10-04 19:45:44'),
(3, 'Test', '3tagger95@gmail.com', 'hello', '2016-10-04 19:47:28', '2016-10-04 19:47:28'),
(4, 'andre', '3tagger95@gmail.com', 'abc', '2016-10-04 20:23:52', '2016-10-04 20:23:52'),
(5, 'test', 'test@gmail.com', 'asd', '2016-10-04 20:53:20', '2016-10-04 20:53:20'),
(6, 'andri', '3tagger95@gmail.com', 'good day sir!', '2016-11-26 22:32:24', '2016-11-26 22:32:24'),
(7, 'andri', '3tagger95@gmail.com', 'good day sir!', '2016-11-26 22:32:57', '2016-11-26 22:32:57'),
(8, 'andri', '3tagger95@gmail.com', 'test', '2016-11-26 22:33:59', '2016-11-26 22:33:59'),
(9, 'andri', '3tagger95@gmail.com', 'test', '2016-11-26 22:35:28', '2016-11-26 22:35:28'),
(10, 'user', 'user@user.com', 'test', '2016-12-05 04:56:33', '2016-12-05 04:56:33'),
(11, 'andri', '3tagger95@gmail.com', 'hello', '2016-12-15 21:15:41', '2016-12-15 21:15:41'),
(12, 'andri', '3tagger95@gmail.com', 'hello 2', '2016-12-15 21:17:59', '2016-12-15 21:17:59'),
(13, 'andri', '3tagger95@gmail.com', 'hello 2', '2016-12-15 21:18:15', '2016-12-15 21:18:15'),
(14, 'andri', '3tagger95@gmail.com', 'hello 3', '2016-12-15 21:19:34', '2016-12-15 21:19:34'),
(15, 'andri', '3tagger95@gmail.com', 'hello 4', '2016-12-15 21:21:08', '2016-12-15 21:21:08'),
(16, 'andri', '3tagger95@gmail.com', 'hello 6', '2016-12-15 21:21:28', '2016-12-15 21:21:28'),
(17, 'andri', '3tagger95@gmail.com', 'hello world', '2017-01-21 06:45:34', '2017-01-21 06:45:34'),
(18, 'andri', '3tagger95@gmail.com', 'test', '2017-01-21 06:45:52', '2017-01-21 06:45:52'),
(19, 'test', '3tagger95@gmail.com', 'test', '2017-01-21 06:48:11', '2017-01-21 06:48:11'),
(20, 'test', '3tagger95@gmail.com', 'test', '2017-01-21 06:52:54', '2017-01-21 06:52:54'),
(21, 'newbie2', 'newbie2@kidswhocode.com', 'test message lagi', '2017-01-21 07:04:20', '2017-01-21 07:04:20');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE IF NOT EXISTS `courses` (
`id` int(10) unsigned NOT NULL,
  `course_topic_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_topic_id`, `name`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'Pengenalan HTML', 'pengenalan-html', 'Tutorial ini akan memperkenalkan anda pada dunia baru, yaitu web develpment. Kita akan memulainya dari yang paling mendasar yaitu HTML', '2016-11-26 21:27:11', '2016-11-26 21:27:11'),
(2, 2, 'Pengenalan CSS', 'pengenalan-css', 'Tutorial ini berisi bagian penting lainnya dari web development, yaitu CSS.\r\n\r\nCSS (Cascading Style Sheet) adalah file yang berisi perintah-perintah agar elemen pada HTML memiliki atribut tertentu, seperti warna, tinggi, border dan lainnya.\r\n\r\nDengan kata lain, CSS memiliki tugas untuk memberi desain pada halaman web.', '2016-12-06 03:51:39', '2016-12-06 03:51:39');

-- --------------------------------------------------------

--
-- Table structure for table `course_topics`
--

CREATE TABLE IF NOT EXISTS `course_topics` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `course_topics`
--

INSERT INTO `course_topics` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'HTML', 'html', '2016-11-26 21:23:22', '2016-11-26 21:23:22'),
(2, 'CSS', 'css', '2016-11-26 21:23:28', '2016-11-26 21:23:28');

-- --------------------------------------------------------

--
-- Table structure for table `discussions`
--

CREATE TABLE IF NOT EXISTS `discussions` (
`id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `exercise_id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_closed` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `discussions`
--

INSERT INTO `discussions` (`id`, `user_id`, `exercise_id`, `title`, `is_closed`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'Hello world', 0, 0, '2016-12-05 03:47:54', '2016-12-05 03:47:54'),
(2, 2, 1, 'test', 0, 0, '2016-12-05 04:04:24', '2016-12-05 04:04:24'),
(3, 2, 1, 'Gabisa buat tag HTML', 1, 0, '2016-12-07 07:43:52', '2017-01-17 02:54:57'),
(4, 2, 2, 'Hello world', 0, 1, '2017-01-04 02:55:06', '2017-01-13 06:02:41'),
(5, 8, 4, 'Kenapa ada tag <pre> ?', 0, 1, '2017-01-06 06:42:44', '2017-01-21 07:03:39'),
(6, 2, 3, 'Mengapa CSS internal tidak dianjurkan ?', 0, 1, '2017-01-06 08:26:44', '2017-01-12 23:32:54'),
(7, 11, 1, 'test', 0, 0, '2017-01-17 03:03:32', '2017-01-17 03:03:32');

-- --------------------------------------------------------

--
-- Table structure for table `discussion_posts`
--

CREATE TABLE IF NOT EXISTS `discussion_posts` (
`id` int(10) unsigned NOT NULL,
  `discussion_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `discussion_posts`
--

INSERT INTO `discussion_posts` (`id`, `discussion_id`, `user_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'yes?', '2016-12-05 03:47:54', '2016-12-05 03:47:54'),
(2, 2, 2, 'Ngapain belajar HTML ?', '2016-12-05 04:04:24', '2016-12-06 03:24:05'),
(3, 2, 2, 'halo', '2016-12-05 04:50:21', '2016-12-05 04:50:21'),
(4, 1, 5, 'test', '2016-12-05 04:55:57', '2016-12-05 04:55:57'),
(5, 2, 2, 'It''s a good day!', '2016-12-05 09:18:14', '2016-12-06 03:20:21'),
(6, 3, 2, 'Caranya gimana ?', '2016-12-07 07:43:52', '2016-12-07 07:43:52'),
(7, 3, 5, 'bikin seperti ini saja pak :\r\n<h1></h1>', '2016-12-07 07:44:32', '2016-12-07 07:44:32'),
(8, 3, 2, 'thx gan\r\n\r\n#test edit', '2016-12-20 09:05:36', '2017-01-06 08:48:26'),
(9, 4, 2, 'test discussion', '2017-01-04 02:55:07', '2017-01-04 02:55:07'),
(10, 5, 8, 'Kalau sudah ada <p> dan <h1>, kenapa kita belajar <pre>?', '2017-01-06 06:42:44', '2017-01-06 06:42:44'),
(11, 5, 2, 'Karena kalau kita menggunakan <p> ataupun <h1>, whitespace (enter, spasi, tab) tidak akan diolah oleh browser.\r\n\r\nJika kita menggunakan <pre></pre>, maka teks yang kita masukkan akan tampil seperti yang kita tulis di dalam tag tersebut.\r\n\r\n#edit, apakah jawaban saya membantu?', '2017-01-06 06:44:44', '2017-01-06 06:45:08'),
(12, 6, 2, 'Mengapa orang-orang seringkali mengatakan bahwa CSS internal tidak boleh dilakukan ?', '2017-01-06 08:26:44', '2017-01-06 08:26:44'),
(13, 7, 11, 'test', '2017-01-17 03:03:32', '2017-01-17 03:03:32');

-- --------------------------------------------------------

--
-- Table structure for table `exercises`
--

CREATE TABLE IF NOT EXISTS `exercises` (
`id` int(10) unsigned NOT NULL,
  `ordering` int(11) NOT NULL,
  `course_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `iframe_file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `default_code` text COLLATE utf8_unicode_ci NOT NULL,
  `experience_point` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `exercises`
--

INSERT INTO `exercises` (`id`, `ordering`, `course_id`, `name`, `slug`, `description`, `iframe_file`, `default_code`, `experience_point`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Demo tag HTML', 'demo-tag-html', 'Selamat! Anda telah memilih untuk mempelajari sebuah keahlian baru, yaitu web development.\r\n\r\nWeb development adalah bidang yang sangat dibutuhkan pada saat ini, sehingga tidak ada ruginya jika anda mempelajarinya.\r\n\r\nTentunya, semua hal harus dimulai dari sesuatu yang sederhana, dalam hal ini HTML.\r\n\r\nHTML adalah HyperText Markup Language, yaitu bahasa yang digunakan untuk menstruktur sebuah website.\r\n\r\nHTML terdiri dari bagian yang disebut tag.\r\n\r\nTag merupakan sesuatu yang diawali dengan &lt; dan diakhiri dengan &gt;.\r\n\r\nUntuk mencobanya, cobalah anda memasukkan &lt;h1&gt;halo&lt;/h1&gt; kedalam text editor di bawah ini.\r\n\r\nTo Do :\r\n1. Masukkan &lt;h1&gt;halo&lt;/h1&gt;', 'demo-tag-html.html', '', 50, '2016-11-26 21:41:08', '2016-11-26 21:41:08'),
(2, 2, 1, 'Demo tag HTML # 2', 'demo-tag-html-2', 'Pada tutorial yang lalu, anda membuat sebuah tag &lt;h1&gt;, yang biasanya digunakan untuk header pada website.\r\n\r\nSelain &lt;h1&gt;, terdapat &lt;h2&gt;, &lt;h3&gt;, &lt;h4&gt;, &lt;h5&gt;, &lt;h6&gt;\r\n\r\nSilahkan coba header-header tersebut, agar anda mengetahui perbedaannya (jangan lupa untuk menutup tag yang sudah dibuka).\r\n\r\nTo Do :\r\n1. Buatlah tag &lt;h2&gt;, &lt;h3&gt;, &lt;h4&gt;, &lt;h5&gt;, &lt;h6&gt;', 'demo-tag-html-2.html', '<h1>halo</h1>', 50, '2016-12-06 03:52:06', '2016-12-06 03:52:06'),
(3, 1, 2, 'Demo CSS', 'demo-css', 'Kita memulai pengenalan CSS dengan memberikan atribut warna.\r\n\r\nDalam contoh ini, kita akan membuat CSS yang berada di dalam HTML, atau disebut juga internal CSS.\r\n\r\nInternal CSS harus dibuat di dalam tag style, agar diproses oleh browser, seperti berikut.\r\n\r\n&lt;style&gt;\r\n     &lt;!-- Disini kita akan menulis perintah CSS --&gt;\r\n&lt;/style&gt;\r\n\r\nKemudian, kita memasukkan perintah-perintah CSS didalamnya.\r\n\r\nPerintah CSS terdiri dari 2 komponen, yaitu :\r\na. selector : merupakan penunjuk elemen yang ingin kita ubah atributnya.\r\nb. attribute : merupakan atribut yang ingin kita ubah.\r\n\r\ncontoh selector : h1, body, pre, dan tag-tag HTML lainnya (tentunya masih ada yang lain, tetapi akan dibahas pada tutorial mendatang).\r\n\r\ncontoh attribute : color untuk warna, font-family untuk jenis font, width untuk lebar dan masih banyak lainnya. Setiap atribut harusi diberikan nilai dan diakhiri dengan tanda ; .\r\n\r\nUntuk saat ini, anda diminta untuk mengubah warna header &lt;h1&gt; menjadi berwarna merah.\r\n\r\nBerikut adalah perintahnya :\r\n\r\nh1 {\r\n   color: red;\r\n}\r\n\r\nTo Do : \r\n1. Buatlah tag &lt;h1&gt; menjadi berwarna merah', 'demo-css.html', '<style>\r\n    \r\n</style>\r\n<h1>selamat belajar CSS</h1>', 50, '2016-12-06 03:52:30', '2016-12-06 03:52:30'),
(4, 3, 1, 'Tag <pre>', 'tag-pre', 'tag &lt;pre&gt; adalah tag yang digunakan untuk mengoutput hasil teks apa adanya pada HTML. Tag ini ada karena HTML tidak akan memproses karakter-karakter seperti spasi, enter, dan tab (golongan karakter ini disebut whitespace) jika berulang. Oleh karena itu, tag ini lumayan penting jika kita ingin mengoutput segala teks yang formatnya tidak boleh diubah, seperti puisi, sajak, code dan sebagainya.\r\n\r\nTo Do :\r\n1. Buatlah tag &lt;pre&gt;&lt;/pre&gt;\r\n2. isilah tag &lt;pre&gt;&lt;/pre&gt; dengan teks berikut : \r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, \r\nsed do eiusmod tempor incididunt ut labore et dolore magna aliqua. \r\nUt enim ad minim veniam, \r\n\r\nquis nostrud exercitation\r\n ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n Duis aute irure dolor in reprehenderit in voluptate velit esse \r\n\r\n\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, \r\nsunt in culpa qui officia deserunt mollit anim id est laborum.', 'tag-pre.html', '', 50, '2016-12-28 22:12:15', '2016-12-28 22:33:27'),
(8, 2, 2, 'Demo CSS 2', 'demo-css-2', 'Selain mengubah warna, CSS memiliki banyak kegunaan lain salah satunya adalah membuat tulisan menjadi rata tengah, rata kanan ataupun rata kiri.\r\n\r\nUntuk membuat tulisan mengikuti arah tersebut, kita menggunakan attribute &#039;text-align&#039;.\r\n\r\nText align ada 4 :\r\n- center, rata tengah\r\n- left, rata kiri\r\n- right, rata kanan\r\n- justify, rata kiri-kanan\r\n\r\nTo Do :\r\n1. Buatlah tag dengan class rata-tengah menjadi rata tengah\r\n2. Buatlah tag dengan class rata-kiri menjadi rata kiri\r\n3. Buatlah tag dengan class rata-kanan menjadi rata kanan\r\n4. Buatlah tag dengan class rata-kiri-kanan menjadi rata kiri-kanan', 'demo-css-2.html', '<p class="rata-tengah">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</p>\r\n<p class="rata-kiri">tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</p>\r\n<p class="rata-kanan">quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</p>\r\n<p class="rata-kiri-kanan">proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 50, '2016-12-28 23:35:55', '2016-12-28 23:35:55');

-- --------------------------------------------------------

--
-- Table structure for table `exercise_user`
--

CREATE TABLE IF NOT EXISTS `exercise_user` (
  `user_id` int(10) unsigned NOT NULL,
  `exercise_id` int(10) unsigned NOT NULL,
  `user_code` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `exercise_user`
--

INSERT INTO `exercise_user` (`user_id`, `exercise_id`, `user_code`) VALUES
(2, 1, '<h1>halo</h1>'),
(2, 2, '<h2></h2>\r\n<h3></h3>\r\n<h4></h4>\r\n<h5></h5>\r\n<h6></h6>'),
(2, 3, '<style>\r\n    h1 {\r\n        color: red;\r\n    }\r\n</style>\r\n<h1>selamat belajar CSS</h1>'),
(2, 4, '<pre>Lorem ipsum dolor sit amet, consectetur adipisicing elit, \r\nsed do eiusmod tempor incididunt ut labore et dolore magna aliqua. \r\nUt enim ad minim veniam, \r\n\r\nquis nostrud exercitation\r\nullamco laboris nisi ut aliquip ex ea commodo consequat.\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse \r\n\r\n\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, \r\nsunt in culpa qui officia deserunt mollit anim id est laborum.</pre>'),
(2, 8, '<style>\r\n    .rata-tengah {\r\n        text-align: center;\r\n    }\r\n    \r\n    .rata-kiri {\r\n        text-align: left;\r\n    }\r\n    \r\n    .rata-kanan {\r\n        text-align: right;\r\n    }\r\n    \r\n    .rata-kiri-kanan {\r\n        text-align: justify;\r\n    }\r\n</style>\r\n\r\n<p class="rata-tengah">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</p>\r\n<p class="rata-kiri">tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</p>\r\n<p class="rata-kanan">quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</p>\r\n<p class="rata-kiri-kanan">proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>'),
(7, 1, '<h1>halo</h1>'),
(7, 2, '<h1>halo</h1>\r\n<h2>halo</h2>\r\n<h3>halo</h3>\r\n<h4>halo</h4>\r\n<h5>halo</h5>\r\n<h6>halo</h6>'),
(7, 3, '<style>\r\n    h1 {\r\n        color: red;\r\n    }\r\n</style>\r\n<h1>selamat belajar CSS</h1>'),
(7, 4, '<pre>Lorem ipsum dolor sit amet, consectetur adipisicing elit, \r\nsed do eiusmod tempor incididunt ut labore et dolore magna aliqua. \r\nUt enim ad minim veniam, \r\n\r\nquis nostrud exercitation\r\nullamco laboris nisi ut aliquip ex ea commodo consequat.\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse \r\n\r\n\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, \r\nsunt in culpa qui officia deserunt mollit anim id est laborum.</pre>'),
(7, 8, '<style>\r\n    .rata-tengah {\r\n        text-align: center;\r\n    }\r\n    \r\n    .rata-kiri {\r\n        text-align: left;\r\n    }\r\n    \r\n    .rata-kanan {\r\n        text-align: right;\r\n    }\r\n    \r\n    .rata-kiri-kanan {\r\n        text-align: justify;\r\n    }\r\n</style>\r\n<p class="rata-tengah">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</p>\r\n<p class="rata-kiri">tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</p>\r\n<p class="rata-kanan">quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</p>\r\n<p class="rata-kiri-kanan">proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>'),
(8, 1, '<h1>halo</h1>'),
(8, 2, '<h2></h2>\r\n<h3></h3>\r\n<h4></h4>\r\n<h5></h5>\r\n<h6></h6>'),
(8, 3, '<style>\r\n    h1 {\r\n        color: red;\r\n    }\r\n</style>\r\n<h1>selamat belajar CSS</h1>'),
(8, 4, '<pre>Lorem ipsum dolor sit amet, consectetur adipisicing elit, \r\nsed do eiusmod tempor incididunt ut labore et dolore magna aliqua. \r\nUt enim ad minim veniam, \r\n\r\nquis nostrud exercitation\r\nullamco laboris nisi ut aliquip ex ea commodo consequat.\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse \r\n\r\n\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, \r\nsunt in culpa qui officia deserunt mollit anim id est laborum.</pre>'),
(8, 8, '<style>\r\n    .rata-tengah {\r\n        text-align: center;\r\n    }\r\n    .rata-kiri {\r\n        text-align: left;\r\n    }\r\n    .rata-kanan {\r\n        text-align: right;\r\n    }\r\n    .rata-kiri-kanan {\r\n        text-align: justify;\r\n    }\r\n</style>\r\n\r\n<p class="rata-tengah">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</p>\r\n<p class="rata-kiri">tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</p>\r\n<p class="rata-kanan">quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</p>\r\n<p class="rata-kiri-kanan">proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>'),
(11, 1, '<h1>halo</h1>'),
(11, 2, '<h1>halo</h1>\r\n<h2>halo</h2>\r\n<h3>halo</h3>\r\n<h4>halo</h4>\r\n<h5>halo</h5>\r\n<h6>halo</h6>'),
(13, 1, '<h1>halo</h1>'),
(13, 2, '<h1>halo</h1>\r\n<h2>halo</h2>\r\n<h3>halo</h3>\r\n<h4>halo</h4>\r\n<h5>halo</h5>\r\n<h6>halo</h6>\r\n'),
(13, 4, '<pre>Lorem ipsum dolor sit amet, consectetur adipisicing elit, \r\nsed do eiusmod tempor incididunt ut labore et dolore magna aliqua. \r\nUt enim ad minim veniam, \r\n\r\nquis nostrud exercitation\r\nullamco laboris nisi ut aliquip ex ea commodo consequat.\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse \r\n\r\n\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, \r\nsunt in culpa qui officia deserunt mollit anim id est laborum.</pre>');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_30_140043_entrust_setup_tables', 1),
('2016_10_02_035820_create_contact_messages_table', 2),
('2016_10_24_123335_add_experience_point_to_users_table', 3),
('2016_10_24_124823_create_titles_table', 4),
('2016_11_23_101118_create_exercises_table', 5),
('2016_11_23_101818_create_courses_table', 5),
('2016_11_27_041222_create_course_topics_table', 5),
('2016_11_27_081652_create_exercise_user_table', 6),
('2016_11_28_073953_create_sessions_table', 7),
('2016_12_03_072110_create_discussions_table', 8),
('2016_12_03_072118_create_discussion_posts_table', 8),
('2016_12_05_112838_add_title_id_to_users_table', 9),
('2016_12_20_152235_create_achievements_table', 10),
('2016_12_20_165305_create_achievement_user_table', 10),
('2017_01_04_094012_create_typing_texts_table', 11),
('2017_01_04_101207_add_typing_score_to_users_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('andri@gmail.com', 'a735d91427d98baf524c5ac56076d0ba0ae4c435cd8406f7b40d507cf8b47419', '2016-11-22 06:36:40'),
('3tagger95@gmail.com', '64949fd67405a5a02d191f751b47db8187ae002e814704bfa5f8b3a69873ae06', '2016-12-05 05:22:55');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE IF NOT EXISTS `permissions` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'access-backend', 'Access Backend', 'User with this permission may access the backend', '2016-09-30 07:41:53', '2016-09-30 07:41:53'),
(2, 'do-courses', 'Do Courses', 'User with this permission may access the Course and do its Exercises', '2016-11-24 13:27:57', '2016-11-24 13:27:59'),
(3, 'do-discussion', 'Do Discussion', 'User with this permission may access discussion on each exercises', '2016-12-03 00:46:02', '2016-12-03 00:46:02'),
(4, 'manage-discussion', 'Manage Discussion', 'User with this permission may manage discussion, such as deleting or blocking a discussion thread', '2016-12-05 02:56:58', '2016-12-05 02:56:58');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(2, 1),
(3, 1),
(1, 2),
(3, 2),
(4, 2),
(2, 3),
(3, 3),
(4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'user', 'User', 'Basic user', '2016-09-30 07:39:43', '2016-09-30 07:39:43'),
(2, 'admin', 'Admin', 'Admin', '2016-09-30 07:40:10', '2016-09-30 07:40:10'),
(3, 'moderator', 'Moderator', 'User with the power to control discussion, such as delete or close a discussion', '2017-01-12 22:43:35', '2017-01-12 22:43:35');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE IF NOT EXISTS `role_user` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(11, 1),
(12, 1),
(13, 1),
(2, 2),
(10, 3);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8_unicode_ci,
  `payload` text COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `titles`
--

CREATE TABLE IF NOT EXISTS `titles` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `titles`
--

INSERT INTO `titles` (`id`, `name`, `level`, `created_at`, `updated_at`) VALUES
(1, 'Newbie', 1, '2016-10-24 06:03:30', '2016-11-22 08:14:57'),
(2, 'Novice', 3, '2016-10-29 08:02:27', '2016-12-28 21:41:40'),
(3, 'Apprentice', 5, '2016-10-29 08:03:14', '2016-12-28 21:41:37'),
(4, 'Moderator', 99, '2017-01-12 22:49:59', '2017-01-21 07:07:42');

-- --------------------------------------------------------

--
-- Table structure for table `typing_texts`
--

CREATE TABLE IF NOT EXISTS `typing_texts` (
`id` int(10) unsigned NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `typing_texts`
--

INSERT INTO `typing_texts` (`id`, `content`) VALUES
(1, 'var temp = document.querySelector(''.time'');\r\nvar button = document.querySelector("button");\r\nvar words = document.querySelector(".words");\r\nvar timerDiv = document.querySelector(".time");\r\nvar scoreDiv = document.querySelector(".score");\r\nvar points = 0;\r\nvar spans = [];\r\nvar typed;\r\nvar seconds = 60;\r\nvar timer;\r\nvar userid;\r\nvar spark = new Audio("lorem");\r\nvar ind = 0;\r\nvar wordCounter = 0;\r\nvar reset = document.getElementById(''restart'');\r\nvar next = document.getElementsByClassName(''next'');\r\nvar score = 0;\r\nvar arrList;\r\nbutton.addEventListener("click", function(e){\r\n    // GET WORDS\r\n    $.get(''typing/get-words'', (words) => {\r\n        const list = words;\r\n        arrList = list.split(/\\s/g).map(tag => tag.trim()).filter(i => i !== '''');\r\n        countdown();\r\n        generateWord();\r\n        button.disabled = true;\r\n    })\r\n});\r\n\r\nfunction countdown() {\r\n    points = 0;\r\n    timer = setInterval(function(){\r\n        button.disabled = true;\r\n        seconds--;\r\n        temp.innerHTML = seconds;\r\n        if (seconds === 0) {\r\n            score += points + seconds;\r\n            // PASSING SCORE BEFORE SHOWING MODAL\r\n            $.ajax({\r\n              method: ''POST'',\r\n              url: '''',\r\n              data: {\r\n                score: score\r\n              }\r\n            })\r\n              .done(() => {\r\n                $(''#modal'').modal(''show'');\r\n                document.getElementsByClassName(''modal-title'')[0].innerHTML = ''Great Job!''\r\n                document.getElementById(''modaltxt'').innerHTML = ''Try Again'';\r\n                document.getElementById(''total'').innerHTML += score;\r\n              })\r\n\r\n            reset.disabled = false;\r\n            reset.style.display = ''inline'';\r\n\r\n            scoreDiv.innerHTML = "0";\r\n            words.innerHTML = "";\r\n            button.disabled = false;\r\n            clearInterval(timer);\r\n            seconds = 60;\r\n            timerDiv.innerHTML = "60";\r\n            button.disabled = false;\r\n        }\r\n    }, 1000);\r\n}\r\n\r\nfunction generateWord() {\r\n    words.innerHTML = "";\r\n    var wordArray = arrList[(ind < arrList.length)? ind++ : ind].trim();\r\n    for (var i = 0; i < wordArray.length; i++) { //building the words with spans around the letters\r\n        var span = document.createElement("span");\r\n        span.classList.add("span");\r\n        span.innerHTML = wordArray[i];\r\n        words.appendChild(span);\r\n    }\r\n    spans = document.querySelectorAll(".span");\r\n}\r\n\r\n\r\nfunction typing(e) {\r\n\r\n    if (e.key === ''<'') typed = ''&lt;'';\r\n    else if (e.key === ''>'') typed = ''&gt;'';\r\n    else typed = e.key;\r\n\r\n    for (var i = 0; i < spans.length; i++) {\r\n        if (spans[i].innerHTML === typed) { // if typed letter is the one from the word\r\n            if (spans[i].classList.contains("bg")) { // if it already has class with the bacground color then check the next one\r\n                continue;\r\n            } else if (spans[i].classList.contains("bg") === false && spans[i-1] === undefined || spans[i-1].classList.contains("bg") !== false ) { // if it dont have class, if it is not first letter or if the letter before it dont have class (this is done to avoid marking the letters who are not in order for being checked, for example if you have two "A"s so to avoid marking both of them if the first one is at the index 0 and second at index 5 for example)\r\n                spans[i].classList.add("bg");\r\n                break;\r\n            }\r\n        }\r\n    }\r\n    check();\r\n}\r\n\r\nfunction check() {\r\n    var checker = 0;\r\n    for (var j = 0; j < spans.length; j++) { //checking if all the letters are typed\r\n        if (spans[j].className === "span bg") {\r\n            checker++;\r\n        }\r\n        if (checker === spans.length) { // if so, animate the words with animate.css class\r\n            spark.pause();\r\n            spark.currentTime = 0;\r\n            spark.play();\r\n            words.classList.add("animated");\r\n            words.classList.add("fadeOut");\r\n            points++; // increment the points\r\n            checker = 0;\r\n            scoreDiv.innerHTML = points; //add points to the points div\r\n            document.removeEventListener("keydown", typing, false);\r\n            setTimeout(function(){\r\n                words.className = "words"; // restart the classes\r\n                if (ind < arrList.length) {\r\n                    generateWord(); // give another word\r\n                    document.addEventListener("keydown", typing, false);\r\n                }\r\n            }, 400);\r\n            wordCounter++;\r\n        }\r\n    }\r\n    if (wordCounter >= arrList.length) {\r\n        clearInterval(timer);\r\n        $(''#modal'').modal(''show'');\r\n        document.getElementsByClassName(''modal-title'')[0].innerHTML = ''Good Job!'';\r\n        document.getElementById(''modaltxt'').innerHTML = ''Pumpin up for next challenge!'';\r\n        document.getElementById(''total'').innerHTML += points + seconds;\r\n\r\n        reset.disabled = true;\r\n        reset.style.display = ''none'';\r\n\r\n    }\r\n}\r\n\r\ndocument.addEventListener("keydown", typing, false);\r\n'),
(2, '\r\nuse App\\Helpers\\Flash;\r\n\r\nuse App\\TypingText;\r\nuse App\\User;\r\n\r\nclass PageController extends Controller\r\n{\r\n    public function index() {\r\n\r\n    	return view(''frontend.index'');\r\n    	\r\n    }\r\n\r\n    public function showContactForm() {\r\n\r\n        $user = auth()->user();\r\n    	return view(''frontend.contact'', compact(''user''));\r\n\r\n    }\r\npublic function test() {\r\n        return view(''coding_test.index'');\r\n    }\r\n\r\n    public function typing() {\r\n        return view(''coding_test.typing'');\r\n    }\r\n\r\n    public function getWords() {\r\n        $text = TypingText::inRandomOrder()->first()->content;\r\n\r\n        return $text;\r\n    }\r\n\r\n    public function updateScore(Request $request) {\r\n\r\n        $user = User::find($request->userid);\r\n        return response()->json([\r\n            ''greater'' => $user->isGreaterScore($request->score)\r\n        ]);\r\n            \r\n\r\n    }'),
(3, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n	<div id="user-css">\r\n        test\r\n	</div>\r\n</head>\r\n<body>\r\n	<div id="user-html">\r\n\r\n	</div>\r\n	<div id="errorMsg" style=''color:red; font-size: 20px; position: absolute; bottom: 0''></div>\r\n\r\n	<script src="../js/expect.js"></script>\r\n	<script src="../js/jquery.js"></script>\r\n	<script src="../js/jquery.expect.min.js"></script>\r\n	<script>\r\n	$(''#user-html'').bind("DOMSubtreeModified",function(){\r\n		test\r\n	});\r\n	</script>\r\n</body>\r\n</html>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `experience_point` int(11) NOT NULL DEFAULT '0',
  `title_id` int(10) unsigned NOT NULL,
  `typing_score` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `level`, `remember_token`, `created_at`, `updated_at`, `experience_point`, `title_id`, `typing_score`) VALUES
(2, 'andri', '3tagger', '3tagger95@gmail.com', '$2y$10$R8LU3QgzBNFPEgJSnGbU3.nhvQWjidnECaSu0g6KQZkddsDjxUHea', 3, '669dT8LDIl53k50LRbgDs6pK0rlc5irYYYcmBNA1q0b4tEKIoo6dtf8IsDBf', '2016-09-30 08:04:26', '2017-01-21 07:13:01', 300, 2, 27),
(3, 'andre', '4tagger', 'andre@gmail.com', '$2y$10$pUz1C9V.1s0VEjrx51gLBeVjOGxNbD9CiO1o1Rd.P4oszEWGABi9y', 1, 'R5wvghDhgHI5oVIfCjeiry5MO4zvUhvlYA6nHEF3npZZdGYqzYbXzGupSWZj', '2016-10-01 04:00:53', '2016-10-01 04:26:31', 0, 1, 0),
(4, 'test', 'test', 'test@gmail.com', '$2y$10$6AYuMqZSHHzZxO2sKJs5Le1i/kEugW5tTbKqs0YzMcoL7CsoKFYda', 1, 'E4ISJ6kk5HU1NeE5e8veeg5yS0sC4cV1vmaeBNFkJrYhvqBzsqRxpw5N861w', '2016-10-04 20:53:49', '2016-10-04 20:53:56', 0, 1, 0),
(5, 'user', 'user', 'user@user.com', '$2y$10$U8Ur0zj8PjEBZGevB/5/6up0lGIhk16s233WElQczfBShpiB9o/Fi', 1, 'vkRdMCvxyCbSmID4tmpg5YaBrQ0YUnijMg43kfYbYYU3sKiPEnJEJfTwXLhI', '2016-11-24 06:30:52', '2016-12-07 07:44:45', 0, 1, 0),
(6, 'baru', 'baru', 'baru@gmail.com', '$2y$10$rlfMCjsz4gSuLx9255j1oOdRYIUTVg3NXxHJkULu3YsIXmEfUjzBK', 1, '78DNAuK49PEw7af1GwERk9Ecju4mxdHOXZD1VJF2uqbskuZkMC5Xu6vp0OS1', '2016-12-15 21:08:26', '2016-12-15 21:08:36', 0, 1, 0),
(7, 'aldy', 'aldy', 'aldy@gmail.com', '$2y$10$YRsKL/4libvAjyYjKCzgfef37B79lIST/TFiHfpVyDJDJF.OCF/Lu', 3, NULL, '2017-01-04 04:14:45', '2017-01-04 04:25:56', 250, 2, 25),
(8, 'albert', 'albert', 'albert@gmail.com', '$2y$10$HGfRKL7cO4i2WTf3mhFhG.zU85Dh.eZHEnkvIAm8js2BBasAVSYlC', 3, 'jum1P3dr92887nN0uPV7XME6SAr6ntJ1IdssP3yjgILuaSyb28ne9A1mX2vP', '2017-01-06 06:36:21', '2017-01-17 02:48:54', 250, 2, 0),
(10, 'moderator', 'Moderator', 'moderator@kids.who.code.com', '$2y$10$ZP5svBa7f4lee/rfkkqMOeeGgrw0PwDl102RJgIYXN8l0mRHE90Di', 99, 'O2kwUH3AmbN2dOVDmfMjURqbNZkuzSmS1VNuZVsTm9Eklxc7kI7vt2t53CIr', '2017-01-12 22:48:53', '2017-01-12 23:30:13', 0, 4, 0),
(11, 'testuser123', 'testuser123', 'testuser123@testuser.com', '$2y$10$uh6jnfpJX4ZVsVN2cheKwumwZf7N8X7hzIDAQm2bomR.Im7sN6RFS', 2, NULL, '2017-01-17 02:49:08', '2017-01-17 02:49:49', 100, 1, 0),
(12, 'newbie', 'newbie', 'newbie@kidswhocode.test.com', '$2y$10$pZJyYditBK.IsHufLYQh1OfjIUdQ4.vZtqae7HWVGqYpw8w/GfvKO', 1, 'nlBw7jlH3eSLrxrGGfC2y6qHBN46WjNP5RKZLgOcPPDOpD87Wp5ONPUdTw4b', '2017-01-21 06:56:41', '2017-01-21 06:59:20', 0, 1, 0),
(13, 'newbie2', 'newbie2', 'newbie2@kidswhocode.com', '$2y$10$FybAnG6wkoL3HKquAbnY8.i0v5gWb/ceCQfRkl.YDyD/VHsie5SF2', 2, '6ep7lTTVn84BaEHPoLadfLHpTBvipF7BiOse9Ki83yf9y0USEm5Gm15NyXBg', '2017-01-21 07:01:11', '2017-01-21 07:16:59', 150, 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `achievements`
--
ALTER TABLE `achievements`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `achievement_user`
--
ALTER TABLE `achievement_user`
 ADD PRIMARY KEY (`user_id`,`achievement_id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `courses_name_unique` (`name`), ADD UNIQUE KEY `courses_slug_unique` (`slug`);

--
-- Indexes for table `course_topics`
--
ALTER TABLE `course_topics`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discussions`
--
ALTER TABLE `discussions`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discussion_posts`
--
ALTER TABLE `discussion_posts`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exercises`
--
ALTER TABLE `exercises`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `exercises_ordering_course_id_unique` (`ordering`,`course_id`), ADD UNIQUE KEY `exercises_name_unique` (`name`), ADD UNIQUE KEY `exercises_slug_unique` (`slug`);

--
-- Indexes for table `exercise_user`
--
ALTER TABLE `exercise_user`
 ADD PRIMARY KEY (`user_id`,`exercise_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
 ADD KEY `password_resets_email_index` (`email`), ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
 ADD PRIMARY KEY (`permission_id`,`role_id`), ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
 ADD PRIMARY KEY (`user_id`,`role_id`), ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
 ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indexes for table `titles`
--
ALTER TABLE `titles`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `titles_level_unique` (`level`);

--
-- Indexes for table `typing_texts`
--
ALTER TABLE `typing_texts`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `achievements`
--
ALTER TABLE `achievements`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `course_topics`
--
ALTER TABLE `course_topics`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `discussions`
--
ALTER TABLE `discussions`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `discussion_posts`
--
ALTER TABLE `discussion_posts`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `exercises`
--
ALTER TABLE `exercises`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `titles`
--
ALTER TABLE `titles`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `typing_texts`
--
ALTER TABLE `typing_texts`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
