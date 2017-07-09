-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2017-07-09 10:23:56
-- 服务器版本： 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `boke`
--

-- --------------------------------------------------------

--
-- 表的结构 `article`
--

CREATE TABLE `article` (
  `id` int(12) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `ctime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `uid` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `article`
--

INSERT INTO `article` (`id`, `title`, `content`, `ctime`, `uid`) VALUES
(1, '博客系统开发1', '<div><p>Bootstrap 提供了两种形式的压缩包，</p></div>', '2017-07-09 07:39:08', '1'),
(2, '博客系统开发2', '<div><p>上面展示的就是 Bootstrap 的基本文件结构：预编译文件可以直接使用到任何 web 项目中。我们提供了编译好的 CSS 和 JS (bootstrap.*) 文件，还有经过压缩的 CSS 和 JS (bootstrap.min.*) 文件。同时还提供了 CSS 源码映射表 (bootstrap.*.map) ，可以在某些浏览器的开发工具中使用。同时还包含了来自 Glyphicons 的图标字体，在附带的 Bootstrap 主题中使用到了这些图标。</p></div>', '2017-07-09 07:39:08', '2'),
(3, '博客系统开发3', '<div><p><img src="/boke/boke/public/img/7cfcb1ecf63a556375315a838fcf7ef0.png" style="max-width:100%;"><br></p></div><p><br></p>', '2017-07-09 07:39:08', '3'),
(4, '博客系统开发4', '<div><p>第一段</p></div>', '2017-07-09 07:39:08', '4'),
(5, '博客系统开发5', '<div><p>第一段</p></div>', '2017-07-09 07:39:08', '5');

-- --------------------------------------------------------

--
-- 表的结构 `article_info`
--

CREATE TABLE `article_info` (
  `id` int(12) NOT NULL,
  `good` int(12) DEFAULT NULL,
  `bad` int(12) DEFAULT NULL,
  `ctime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `article_id` int(12) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `article_info`
--

INSERT INTO `article_info` (`id`, `good`, `bad`, `ctime`, `article_id`) VALUES
(1, 12, 5, '2017-07-09 07:39:08', 1),
(2, 0, 0, '2017-07-09 07:39:08', 2),
(3, 2, 1, '2017-07-09 07:39:08', 3),
(4, 0, 0, '2017-07-09 07:39:08', 4),
(5, 0, 0, '2017-07-09 07:39:08', 5);

-- --------------------------------------------------------

--
-- 替换视图以便查看 `article_view`
-- (See below for the actual view)
--
CREATE TABLE `article_view` (
`id` int(12)
,`title` varchar(255)
,`content` varchar(255)
,`ctime` timestamp
,`uid` varchar(255)
,`good` int(12)
,`bad` int(12)
);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `id` int(12) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `name`, `password`) VALUES
(1, 'asd', 'asd'),
(2, 'asd', '123456');

-- --------------------------------------------------------

--
-- 视图结构 `article_view`
--
DROP TABLE IF EXISTS `article_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `article_view`  AS  select `a`.`id` AS `id`,`a`.`title` AS `title`,`a`.`content` AS `content`,`a`.`ctime` AS `ctime`,`a`.`uid` AS `uid`,`b`.`good` AS `good`,`b`.`bad` AS `bad` from (`article` `a` join `article_info` `b`) where (`a`.`id` = `b`.`article_id`) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `article_info`
--
ALTER TABLE `article_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `article`
--
ALTER TABLE `article`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `article_info`
--
ALTER TABLE `article_info`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
