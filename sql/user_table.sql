-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2021-03-31 10:57:18
-- サーバのバージョン： 10.4.17-MariaDB
-- PHP のバージョン: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `md_db`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `user_table`
--

CREATE TABLE `user_table` (
  `id` int(11) NOT NULL,
  `u_name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `u_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `u_pw` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `life_flg` int(11) NOT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `user_table`
--

INSERT INTO `user_table` (`id`, `u_name`, `u_id`, `u_pw`, `life_flg`, `indate`) VALUES
(1, '山崎', 'yamazaki', 'testtest', 0, '2021-03-16 00:32:13'),
(2, '森川', 'morikawa', 'testtest', 0, '2021-03-31 00:31:16'),
(3, '田中', 'tanaka', 'testtest', 0, '2021-03-31 01:14:30'),
(4, '田代', 'tashiro', 'testtest', 0, '2021-03-31 02:25:54'),
(5, '木村', 'kimura', 'testtest', 0, '2021-03-31 15:24:24'),
(6, '山田', 'yamada', 'testtest', 0, '2021-03-31 15:28:19');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `user_table`
--
ALTER TABLE `user_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
