-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2020 at 09:03 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `safira_autopart_theme`
--

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension`
--

DROP TABLE IF EXISTS `oc_extension`;
CREATE TABLE IF NOT EXISTS `oc_extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(1, 'payment', 'cod'),
(2, 'total', 'shipping'),
(3, 'total', 'sub_total'),
(4, 'total', 'tax'),
(5, 'total', 'total'),
(6, 'module', 'banner'),
(7, 'module', 'carousel'),
(8, 'total', 'credit'),
(9, 'shipping', 'flat'),
(10, 'total', 'handling'),
(11, 'total', 'low_order_fee'),
(12, 'total', 'coupon'),
(13, 'module', 'category'),
(14, 'module', 'account'),
(15, 'total', 'reward'),
(16, 'total', 'voucher'),
(17, 'payment', 'free_checkout'),
(18, 'module', 'featured'),
(19, 'module', 'slideshow'),
(20, 'theme', 'default'),
(21, 'dashboard', 'activity'),
(22, 'dashboard', 'sale'),
(23, 'dashboard', 'recent'),
(24, 'dashboard', 'order'),
(25, 'dashboard', 'online'),
(26, 'dashboard', 'map'),
(27, 'dashboard', 'customer'),
(28, 'dashboard', 'chart'),
(29, 'report', 'sale_coupon'),
(31, 'report', 'customer_search'),
(32, 'report', 'customer_transaction'),
(33, 'report', 'product_purchased'),
(34, 'report', 'product_viewed'),
(35, 'report', 'sale_return'),
(36, 'report', 'sale_order'),
(37, 'report', 'sale_shipping'),
(38, 'report', 'sale_tax'),
(39, 'report', 'customer_activity'),
(40, 'report', 'customer_order'),
(41, 'report', 'customer_reward'),
(42, 'advertise', 'google'),
(43, 'module', 'ptcontrolpanel'),
(44, 'module', 'ptlayoutbuilder'),
(45, 'module', 'ptmenu'),
(46, 'module', 'ptstaticblock'),
(47, 'module', 'ptslider'),
(48, 'module', 'ptblog'),
(50, 'module', 'ptnewsletter'),
(51, 'module', 'ptajaxlogin'),
(52, 'module', 'ptsearch'),
(76, 'module', 'ptproducts'),
(56, 'module', 'html'),
(74, 'module', 'pttestimonial'),
(75, 'module', 'ptfeaturedcate');

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension_install`
--

DROP TABLE IF EXISTS `oc_extension_install`;
CREATE TABLE IF NOT EXISTS `oc_extension_install` (
  `extension_install_id` int(11) NOT NULL AUTO_INCREMENT,
  `extension_download_id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`extension_install_id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_extension_install`
--

INSERT INTO `oc_extension_install` (`extension_install_id`, `extension_download_id`, `filename`, `date_added`) VALUES
(43, 0, 'ptcontrolpanel.ocmod.zip', '2020-09-29 14:43:02'),
(9, 0, 'ptsearch.ocmod.zip', '2019-01-09 19:15:31'),
(40, 0, 'ptthemecustom.ocmod.zip', '2019-11-13 14:21:24');

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension_path`
--

DROP TABLE IF EXISTS `oc_extension_path`;
CREATE TABLE IF NOT EXISTS `oc_extension_path` (
  `extension_path_id` int(11) NOT NULL AUTO_INCREMENT,
  `extension_install_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`extension_path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout`
--

DROP TABLE IF EXISTS `oc_layout`;
CREATE TABLE IF NOT EXISTS `oc_layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout`
--

INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES
(1, 'Autopart 1 - Home Page Layout'),
(2, 'Autopart 1 - Product Page Layout'),
(3, 'Autopart 1 - Category Page Layout'),
(4, 'Autopart 1 - Default Page Layout'),
(6, 'Autopart 1 - Account Page Layout'),
(17, 'Autopart 2 - Blog Post Page Layout'),
(15, 'Autopart 1 - Mobile Layout'),
(16, 'Autopart 2 - Account Page Layout'),
(14, 'Autopart 1 - Blog Post Page Layout'),
(18, 'Autopart 2 - Home Page Layout'),
(19, 'Autopart 2 - Mobile Layout'),
(20, 'Autopart 2 - Product Page Layout'),
(21, 'Autopart 2 - Category Page Layout'),
(22, 'Autopart 2 - Default Page Layout'),
(23, 'Autopart 3 - Account Page Layout'),
(24, 'Autopart 3 - Blog Post Page Layout'),
(25, 'Autopart 3 - Category Page Layout'),
(26, 'Autopart 3 - Default Page Layout'),
(27, 'Autopart 3 - Home Page Layout'),
(28, 'Autopart 3 - Mobile Layout'),
(29, 'Autopart 3 - Product Page Layout'),
(30, 'Autopart 4 - Account Page Layout'),
(31, 'Autopart 4 - Blog Post Page Layout'),
(32, 'Autopart 4 - Category Page Layout'),
(33, 'Autopart 4 - Default Page Layout'),
(34, 'Autopart 4 - Home Page Layout'),
(35, 'Autopart 4 - Mobile Layout'),
(36, 'Autopart 4 - Product Page Layout');

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_module`
--

DROP TABLE IF EXISTS `oc_layout_module`;
CREATE TABLE IF NOT EXISTS `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`layout_module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4630 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout_module`
--

INSERT INTO `oc_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
(4449, 16, 'ptstaticblock.357', 'position6', 0),
(4525, 26, 'ptnewsletter.42', 'position5', 0),
(4540, 28, 'ptstaticblock.357', 'position6', 0),
(4268, 14, 'ptstaticblock.41', 'position7', 0),
(4311, 2, 'ptstaticblock.41', 'position7', 0),
(4467, 21, 'ptstaticblock.41', 'position7', 0),
(4496, 20, 'ptstaticblock.41', 'position7', 0),
(4275, 3, 'ptnewsletter.42', 'position5', 0),
(4310, 2, 'ptstaticblock.357', 'position6', 0),
(4452, 16, 'account', 'column_right', 0),
(4297, 15, 'ptstaticblock.357', 'position6', 0),
(4502, 23, 'ptstaticblock.357', 'position6', 0),
(4489, 19, 'ptstaticblock.41', 'position7', 0),
(4501, 23, 'ptnewsletter.42', 'position5', 0),
(4291, 1, 'ptstaticblock.41', 'position7', 0),
(4284, 4, 'ptstaticblock.41', 'position7', 0),
(4482, 18, 'ptstaticblock.41', 'position7', 0),
(4274, 3, 'ptmenu.35', 'position3', 0),
(4267, 14, 'ptstaticblock.357', 'position6', 0),
(4546, 29, 'ptnewsletter.42', 'position5', 0),
(4481, 18, 'ptstaticblock.357', 'position6', 0),
(4260, 6, 'ptstaticblock.41', 'position7', 0),
(4259, 6, 'ptstaticblock.357', 'position6', 0),
(4296, 15, 'ptnewsletter.42', 'position5', 0),
(4539, 28, 'ptnewsletter.42', 'position5', 0),
(4283, 4, 'ptstaticblock.357', 'position6', 0),
(4290, 1, 'ptstaticblock.357', 'position6', 0),
(4295, 15, 'ptmenu.35', 'position3', 0),
(4273, 3, 'ptmenu.33', 'position2', 0),
(4509, 24, 'ptnewsletter.42', 'position5', 0),
(4517, 25, 'ptmenu.35', 'position3', 0),
(4538, 28, 'ptmenu.35', 'position3', 0),
(4545, 29, 'ptmenu.35', 'position3', 0),
(4294, 15, 'ptmenu.356', 'position1', 0),
(4490, 19, 'ptstaticblock.301', 'position8', 0),
(4488, 19, 'ptstaticblock.357', 'position6', 0),
(4474, 22, 'ptstaticblock.41', 'position7', 0),
(4468, 21, 'ptstaticblock.301', 'position8', 0),
(4458, 17, 'ptstaticblock.41', 'position7', 0),
(4451, 16, 'ptstaticblock.301', 'position8', 0),
(4508, 24, 'ptmenu.35', 'position3', 0),
(4524, 26, 'ptmenu.35', 'position3', 0),
(4500, 23, 'ptmenu.35', 'position3', 0),
(4620, 35, 'ptnewsletter.42', 'position5', 0),
(4609, 33, 'ptstaticblock.41', 'position7', 0),
(4603, 32, 'ptstaticblock.41', 'position7', 0),
(4628, 36, 'ptstaticblock.41', 'position7', 0),
(4289, 1, 'ptnewsletter.42', 'position5', 0),
(4487, 19, 'ptnewsletter.42', 'position5', 0),
(4486, 19, 'ptmenu.35', 'position3', 0),
(4466, 21, 'ptstaticblock.357', 'position6', 0),
(4450, 16, 'ptstaticblock.41', 'position7', 0),
(4523, 26, 'ptmenu.363', 'position2', 0),
(4544, 29, 'ptmenu.363', 'position2', 0),
(4537, 28, 'ptlayoutbuilder.68', 'content_top', 0),
(4516, 25, 'ptmenu.363', 'position2', 0),
(4627, 36, 'ptstaticblock.357', 'position6', 0),
(4499, 23, 'ptmenu.363', 'position2', 0),
(4515, 25, 'ptmenu.365', 'position1', 0),
(4514, 25, 'ptstaticblock.302', 'column_left', 2),
(4595, 31, 'ptstaticblock.41', 'position7', 0),
(4507, 24, 'ptmenu.363', 'position2', 0),
(4608, 33, 'ptstaticblock.357', 'position6', 0),
(4588, 30, 'ptstaticblock.41', 'position7', 0),
(4594, 31, 'ptstaticblock.357', 'position6', 0),
(4587, 30, 'ptstaticblock.357', 'position6', 0),
(4602, 32, 'ptstaticblock.357', 'position6', 0),
(4272, 3, 'ptmenu.356', 'position1', 0),
(4463, 21, 'ptmenu.363', 'position2', 0),
(4532, 27, 'ptmenu.35', 'position3', 0),
(4498, 23, 'ptmenu.365', 'position1', 0),
(4615, 34, 'ptstaticblock.357', 'position6', 0),
(4606, 33, 'ptmenu.35', 'position3', 0),
(4601, 32, 'ptnewsletter.42', 'position5', 0),
(4592, 31, 'ptmenu.35', 'position3', 0),
(4585, 30, 'ptmenu.35', 'position3', 0),
(4448, 16, 'ptnewsletter.42', 'position5', 0),
(4456, 17, 'ptnewsletter.42', 'position5', 0),
(4455, 17, 'ptmenu.35', 'position3', 0),
(4614, 34, 'ptnewsletter.42', 'position5', 0),
(4465, 21, 'ptnewsletter.42', 'position5', 0),
(4464, 21, 'ptmenu.35', 'position3', 0),
(4472, 22, 'ptnewsletter.42', 'position5', 0),
(4471, 22, 'ptmenu.35', 'position3', 0),
(4479, 18, 'ptmenu.35', 'position3', 0),
(4480, 18, 'ptnewsletter.42', 'position5', 0),
(4494, 20, 'ptnewsletter.42', 'position5', 0),
(4493, 20, 'ptmenu.35', 'position3', 0),
(4258, 6, 'ptnewsletter.42', 'position5', 0),
(4257, 6, 'ptmenu.35', 'position3', 0),
(4266, 14, 'ptnewsletter.42', 'position5', 0),
(4265, 14, 'ptmenu.35', 'position3', 0),
(4613, 34, 'ptmenu.35', 'position3', 0),
(4271, 3, 'ptstaticblock.302', 'column_left', 2),
(4282, 4, 'ptnewsletter.42', 'position5', 0),
(4281, 4, 'ptmenu.35', 'position3', 0),
(4288, 1, 'ptmenu.35', 'position3', 0),
(4287, 1, 'ptmenu.33', 'position2', 0),
(4309, 2, 'ptnewsletter.42', 'position5', 0),
(4308, 2, 'ptmenu.35', 'position3', 0),
(4522, 26, 'ptmenu.365', 'position1', 0),
(4531, 27, 'ptmenu.363', 'position2', 0),
(4543, 29, 'ptmenu.365', 'position1', 0),
(4586, 30, 'ptnewsletter.42', 'position5', 0),
(4593, 31, 'ptnewsletter.42', 'position5', 0),
(4600, 32, 'ptmenu.35', 'position3', 0),
(4607, 33, 'ptnewsletter.42', 'position5', 0),
(4612, 34, 'ptmenu.363', 'position2', 0),
(4626, 36, 'ptnewsletter.42', 'position5', 0),
(4506, 24, 'ptmenu.365', 'position1', 0),
(4530, 27, 'ptmenu.365', 'position1', 0),
(4598, 32, 'ptstaticblock.302', 'column_left', 2),
(4619, 35, 'ptmenu.35', 'position3', 0),
(4513, 25, 'ptstaticblock.255', 'column_left', 1),
(4529, 27, 'ptlayoutbuilder.63', 'content_top', 0),
(4599, 32, 'ptmenu.363', 'position2', 0),
(4618, 35, 'ptlayoutbuilder.71', 'content_top', 0),
(4625, 36, 'ptmenu.35', 'position3', 0),
(4256, 6, 'ptmenu.33', 'position2', 0),
(4255, 6, 'ptmenu.356', 'position1', 0),
(4264, 14, 'ptmenu.33', 'position2', 0),
(4263, 14, 'ptmenu.356', 'position1', 0),
(4270, 3, 'ptstaticblock.255', 'column_left', 1),
(4280, 4, 'ptmenu.33', 'position2', 0),
(4279, 4, 'ptmenu.356', 'position1', 0),
(4286, 1, 'ptlayoutbuilder.195', 'content_top', 0),
(4293, 15, 'ptlayoutbuilder.190', 'content_top', 0),
(4261, 6, 'ptstaticblock.301', 'position8', 0),
(4262, 6, 'account', 'column_right', 1),
(4269, 14, 'ptstaticblock.301', 'position8', 0),
(4276, 3, 'ptstaticblock.357', 'position6', 0),
(4277, 3, 'ptstaticblock.41', 'position7', 0),
(4278, 3, 'ptstaticblock.301', 'position8', 0),
(4285, 4, 'ptstaticblock.301', 'position8', 0),
(4292, 1, 'ptstaticblock.301', 'position8', 0),
(4298, 15, 'ptstaticblock.41', 'position7', 0),
(4299, 15, 'ptstaticblock.301', 'position8', 0),
(4307, 2, 'ptmenu.33', 'position2', 0),
(4306, 2, 'ptmenu.356', 'position1', 0),
(4312, 2, 'ptstaticblock.301', 'position8', 0),
(4447, 16, 'ptmenu.35', 'position3', 0),
(4446, 16, 'ptmenu.363', 'position2', 0),
(4454, 17, 'ptmenu.363', 'position2', 0),
(4453, 17, 'ptmenu.362', 'position1', 0),
(4462, 21, 'ptmenu.362', 'position1', 0),
(4470, 22, 'ptmenu.363', 'position2', 0),
(4469, 22, 'ptmenu.362', 'position1', 0),
(4477, 18, 'ptmenu.362', 'position1', 0),
(4485, 19, 'ptmenu.362', 'position1', 0),
(4492, 20, 'ptmenu.363', 'position2', 0),
(4491, 20, 'ptmenu.362', 'position1', 0),
(4445, 16, 'ptmenu.362', 'position1', 0),
(4461, 21, 'ptstaticblock.302', 'column_left', 2),
(4478, 18, 'ptmenu.363', 'position2', 0),
(4484, 19, 'ptlayoutbuilder.62', 'content_top', 0),
(4495, 20, 'ptstaticblock.357', 'position6', 0),
(4457, 17, 'ptstaticblock.357', 'position6', 0),
(4460, 21, 'ptstaticblock.255', 'column_left', 1),
(4473, 22, 'ptstaticblock.357', 'position6', 0),
(4476, 18, 'ptlayoutbuilder.60', 'content_top', 0),
(4459, 17, 'ptstaticblock.301', 'position8', 0),
(4475, 22, 'ptstaticblock.301', 'position8', 0),
(4483, 18, 'ptstaticblock.301', 'position8', 0),
(4497, 20, 'ptstaticblock.301', 'position8', 0),
(4503, 23, 'ptstaticblock.41', 'position7', 0),
(4504, 23, 'ptstaticblock.301', 'position8', 0),
(4505, 23, 'account', 'column_right', 0),
(4510, 24, 'ptstaticblock.357', 'position6', 0),
(4511, 24, 'ptstaticblock.41', 'position7', 0),
(4512, 24, 'ptstaticblock.301', 'position8', 0),
(4518, 25, 'ptnewsletter.42', 'position5', 0),
(4519, 25, 'ptstaticblock.357', 'position6', 0),
(4520, 25, 'ptstaticblock.41', 'position7', 0),
(4521, 25, 'ptstaticblock.301', 'position8', 0),
(4526, 26, 'ptstaticblock.357', 'position6', 0),
(4527, 26, 'ptstaticblock.41', 'position7', 0),
(4528, 26, 'ptstaticblock.301', 'position8', 0),
(4533, 27, 'ptnewsletter.42', 'position5', 0),
(4534, 27, 'ptstaticblock.357', 'position6', 0),
(4535, 27, 'ptstaticblock.41', 'position7', 0),
(4536, 27, 'ptstaticblock.301', 'position8', 0),
(4541, 28, 'ptstaticblock.41', 'position7', 0),
(4542, 28, 'ptstaticblock.301', 'position8', 0),
(4547, 29, 'ptstaticblock.357', 'position6', 0),
(4548, 29, 'ptstaticblock.41', 'position7', 0),
(4549, 29, 'ptstaticblock.301', 'position8', 0),
(4589, 30, 'ptstaticblock.301', 'position8', 0),
(4584, 30, 'ptmenu.363', 'position2', 0),
(4591, 31, 'ptmenu.363', 'position2', 0),
(4597, 32, 'ptstaticblock.255', 'column_left', 1),
(4605, 33, 'ptmenu.363', 'position2', 0),
(4611, 34, 'ptlayoutbuilder.204', 'content_top', 0),
(4624, 36, 'ptmenu.363', 'position2', 0),
(4590, 30, 'account', 'column_right', 0),
(4596, 31, 'ptstaticblock.301', 'position8', 0),
(4604, 32, 'ptstaticblock.301', 'position8', 0),
(4610, 33, 'ptstaticblock.301', 'position8', 0),
(4616, 34, 'ptstaticblock.41', 'position7', 0),
(4617, 34, 'ptstaticblock.301', 'position8', 0),
(4621, 35, 'ptstaticblock.357', 'position6', 0),
(4622, 35, 'ptstaticblock.41', 'position7', 0),
(4623, 35, 'ptstaticblock.301', 'position8', 0),
(4629, 36, 'ptstaticblock.301', 'position8', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_route`
--

DROP TABLE IF EXISTS `oc_layout_route`;
CREATE TABLE IF NOT EXISTS `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=MyISAM AUTO_INCREMENT=814 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout_route`
--

INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(812, 35, 3, 'plaza/responsive/mobile'),
(798, 27, 2, 'common/home'),
(799, 28, 2, 'plaza/responsive/mobile'),
(800, 29, 2, 'product/product'),
(807, 30, 3, 'account/%'),
(808, 31, 3, 'plaza/blog/post'),
(791, 18, 1, 'common/home'),
(810, 33, 3, ''),
(796, 25, 2, 'product/category'),
(797, 26, 2, ''),
(788, 17, 1, 'plaza/blog/post'),
(811, 34, 3, 'common/home'),
(809, 32, 3, 'product/category'),
(794, 23, 2, 'account/%'),
(795, 24, 2, 'plaza/blog/post'),
(787, 16, 1, 'account/%'),
(813, 36, 3, 'product/product'),
(790, 22, 1, ''),
(789, 21, 1, 'product/category'),
(793, 20, 1, 'product/product'),
(792, 19, 1, 'plaza/responsive/mobile'),
(759, 6, 0, 'account/%'),
(761, 3, 0, 'product/category'),
(766, 2, 0, 'product/product'),
(764, 15, 0, 'plaza/responsive/mobile'),
(762, 4, 0, ''),
(760, 14, 0, 'plaza/blog/post'),
(763, 1, 0, 'common/home');

-- --------------------------------------------------------

--
-- Table structure for table `oc_modification`
--

DROP TABLE IF EXISTS `oc_modification`;
CREATE TABLE IF NOT EXISTS `oc_modification` (
  `modification_id` int(11) NOT NULL AUTO_INCREMENT,
  `extension_install_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`modification_id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_modification`
--

INSERT INTO `oc_modification` (`modification_id`, `extension_install_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`) VALUES
(9, 9, 'Plaza Ajax Search', 'plaza_ajax_search', 'Plaza Themes', '1.0', '', '<modification>\r\n    <name>Plaza Ajax Search</name>\r\n	<version>1.0</version>\r\n	<author>Plaza Themes</author>\r\n	<code>plaza_ajax_search</code>\r\n\r\n	<file path=\"catalog/controller/common/header.php\">\r\n		<operation>\r\n			<search ><![CDATA[$data[\'search\'] = $this->load->controller(\'common/search\');]]></search>\r\n			<add position=\"replace\"><![CDATA[\r\n				$search_status = $this->config->get(\'module_ptsearch_status\');\r\n				if($search_status) {\r\n					$data[\'search\'] = $this->load->controller(\'extension/module/ptsearch\');\r\n					$data[\'search_status\'] = true;\r\n				} else {\r\n					$data[\'search\'] = $this->load->controller(\'common/search\');\r\n					$data[\'search_status\'] = false;\r\n				}\r\n			]]></add>\r\n		</operation>\r\n	</file>	\r\n</modification>', 1, '2019-01-09 19:15:33');
INSERT INTO `oc_modification` (`modification_id`, `extension_install_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`) VALUES
(43, 43, 'Plaza Control Panel', 'plaza_control_panel', 'Plaza Themes', '18.12.27', '', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n    <code>plaza_control_panel</code>\r\n    <name>Plaza Control Panel</name>\r\n    <version>18.12.27</version>\r\n    <author>Plaza Themes</author>\r\n\r\n    <!-- Menu Left in Admin -->\r\n    <file path=\"admin/controller/common/column_left.php\">\r\n        <operation>\r\n            <search ><![CDATA[$catalog = array();]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n            $this->load->language(\'plaza/adminmenu\');\r\n\r\n            if($this->user->hasPermission(\'access\', \'extension/module/ptcontrolpanel\')) {\r\n                $data[\'menus\'][] = array(\r\n                    \'id\'       => \'plaza-dashboard\',\r\n                    \'icon\'     => \'fa-plaza\',\r\n                    \'name\'     => $this->language->get(\'text_theme_dashboard\'),\r\n                    \'href\'     => $this->url->link(\'extension/module/ptcontrolpanel\', \'user_token=\' . $this->session->data[\'user_token\'], true)\r\n                );\r\n            }\r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n\r\n    <!-- PRODUCT CONFIGURATION -->\r\n    <file path=\"admin/controller/catalog/product.php\"> <!-- Done -->\r\n        <operation>\r\n            <search ><![CDATA[public function index() {]]></search>\r\n            <add position=\"after\"><![CDATA[\r\n        $this->load->model(\'plaza/controlpanel\');\r\n        $this->model_plaza_controlpanel->setupRotateImage();\r\n        $this->model_plaza_controlpanel->setupColorSwatches();\r\n            ]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search ><![CDATA[$this->load->language(\'catalog/product\');]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n                $this->load->language(\'plaza/rotateimage\');\r\n                $this->load->language(\'extension/module/ptcontrolpanel\');\r\n            ]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search ><![CDATA[\'sort_order\' => $product_image[\'sort_order\']]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n                \'is_rotate\' => $product_image[\'is_rotate\'],\r\n                \'product_option_value_id\' => $product_image[\'product_option_value_id\'],\r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n\r\n    <file path=\"admin/model/catalog/product.php\"> <!-- Done -->\r\n        <operation>\r\n            <search><![CDATA[$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"product_image SET product_id = \'\" . (int)$product_id . \"\', image = \'\" . $this->db->escape($product_image[\'image\']) . \"\', sort_order = \'\" . (int)$product_image[\'sort_order\'] . \"\'\");]]></search>\r\n            <add position=\"replace\">\r\n                <![CDATA[\r\n                    if(isset($product_image[\'product_option_value_id\']) && $product_image[\'product_option_value_id\']) {\r\n                        $this->db->query(\"INSERT INTO \" . DB_PREFIX . \"product_image SET product_id = \'\" . (int)$product_id . \"\', image = \'\" . $this->db->escape($product_image[\'image\']) . \"\', sort_order = \'\" . (int)$product_image[\'sort_order\'] . \"\', is_rotate = \'\" . (int)$product_image[\'is_rotate\'] . \"\', product_option_value_id = \'\" . (int)$product_image[\'product_option_value_id\'] . \"\'\");\r\n                    } else {\r\n                        $this->db->query(\"INSERT INTO \" . DB_PREFIX . \"product_image SET product_id = \'\" . (int)$product_id . \"\', image = \'\" . $this->db->escape($product_image[\'image\']) . \"\', sort_order = \'\" . (int)$product_image[\'sort_order\'] . \"\', is_rotate = \'\" . (int)$product_image[\'is_rotate\'] . \"\'\");\r\n                    }\r\n                ]]>\r\n            </add>\r\n        </operation>\r\n    </file>\r\n\r\n    \r\n\r\n    <file path=\"catalog/controller/product/product.php\"> <!-- Done -->\r\n        <operation>\r\n            <search><![CDATA[$data[\'heading_title\'] = $product_info[\'name\'];]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n            /* Plaza Product Configuration */\r\n            $this->load->model(\'tool/image\');\r\n            $store_id = $this->config->get(\'config_store_id\');\r\n\r\n            /* Catalog Mode */\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_product_price\')[$store_id])) {\r\n                $data[\'show_product_price\'] = (int) $this->config->get(\'module_ptcontrolpanel_product_price\')[$store_id];\r\n            } else {\r\n                $data[\'show_product_price\'] = 0;\r\n            }\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_product_cart\')[$store_id])) {\r\n                $data[\'show_product_button_cart\'] = (int) $this->config->get(\'module_ptcontrolpanel_product_cart\')[$store_id];\r\n            } else {\r\n                $data[\'show_product_button_cart\'] = 0;\r\n            }\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_product_wishlist\')[$store_id])) {\r\n                $data[\'show_product_button_wishlist\'] = (int) $this->config->get(\'module_ptcontrolpanel_product_wishlist\')[$store_id];\r\n            } else {\r\n                $data[\'show_product_button_wishlist\'] = 0;\r\n            }\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_product_compare\')[$store_id])) {\r\n                $data[\'show_product_button_compare\'] = (int) $this->config->get(\'module_ptcontrolpanel_product_compare\')[$store_id];\r\n            } else {\r\n                $data[\'show_product_button_compare\'] = 0;\r\n            }\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_product_options\')[$store_id])) {\r\n                $data[\'show_product_options\'] = (int) $this->config->get(\'module_ptcontrolpanel_product_options\')[$store_id];\r\n            } else {\r\n                $data[\'show_product_options\'] = 0;\r\n            }\r\n\r\n            /* Product Details */\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_related\')[$store_id])) {\r\n                $data[\'show_product_related\'] = (int) $this->config->get(\'module_ptcontrolpanel_related\')[$store_id];\r\n            } else {\r\n                $data[\'show_product_related\'] = 0;\r\n            }\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_social\')[$store_id])) {\r\n                $data[\'show_product_social\'] = (int) $this->config->get(\'module_ptcontrolpanel_social\')[$store_id];\r\n            } else {\r\n                $data[\'show_product_social\'] = 0;\r\n            }\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_tax\')[$store_id])) {\r\n                $data[\'show_product_tax\'] = (int) $this->config->get(\'module_ptcontrolpanel_tax\')[$store_id];\r\n            } else {\r\n                $data[\'show_product_tax\'] = 0;\r\n            }\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_tags\')[$store_id])) {\r\n                $data[\'show_product_tags\'] = (int) $this->config->get(\'module_ptcontrolpanel_tags\')[$store_id];\r\n            } else {\r\n                $data[\'show_product_tags\'] = 0;\r\n            }\r\n\r\n            $use_zoom = (int) $this->config->get(\'module_ptcontrolpanel_use_zoom\')[$store_id];\r\n\r\n            if($use_zoom) {\r\n                $data[\'use_zoom\'] = true;\r\n\r\n                if ($product_info[\'image\']) {\r\n                    $data[\'small_image\'] = $this->model_tool_image->resize($product_info[\'image\'], $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_additional_width\'), $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_additional_height\'));\r\n                } else {\r\n                    $data[\'small_image\'] = \'\';\r\n                }\r\n\r\n                $data[\'popup_dimension\'] = array(\r\n                    \'width\' => $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_popup_width\'),\r\n                    \'height\' => $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_popup_height\')\r\n                );\r\n\r\n                $data[\'thumb_dimension\'] = array(\r\n                    \'width\' => $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_thumb_width\'),\r\n                    \'height\' => $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_thumb_height\')\r\n                );\r\n\r\n                $data[\'small_dimension\'] = array(\r\n                    \'width\' => $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_additional_width\'),\r\n                    \'height\' => $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_additional_height\')\r\n                );\r\n\r\n                if(isset($this->config->get(\'module_ptcontrolpanel_zoom_type\')[$store_id])) {\r\n                    $zoom_type = $this->config->get(\'module_ptcontrolpanel_zoom_type\')[$store_id];\r\n                } else {\r\n                    $zoom_type = \'outer\';\r\n                }\r\n\r\n                if(isset($this->config->get(\'module_ptcontrolpanel_zoom_space\')[$store_id])) {\r\n                    $zoom_space = $this->config->get(\'module_ptcontrolpanel_zoom_space\')[$store_id];\r\n                } else {\r\n                    $zoom_space = \'0\';\r\n                }\r\n\r\n                if(isset($this->config->get(\'module_ptcontrolpanel_zoom_title\')[$store_id])) {\r\n                    $zoom_title = (int) $this->config->get(\'module_ptcontrolpanel_zoom_title\')[$store_id];\r\n                } else {\r\n                    $zoom_title = 0;\r\n                }\r\n\r\n                $data[\'product_zoom_settings\'] = array(\r\n                    \'type\' => $zoom_type,\r\n                    \'space\' => $zoom_space,\r\n                    \'title\' => $zoom_title\r\n                );\r\n\r\n                if (file_exists(\'catalog/view/theme/\' . $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_directory\') . \'/stylesheet/plaza/product/zoom.css\')) {\r\n                    $this->document->addStyle(\'catalog/view/theme/\' . $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_directory\') . \'/stylesheet/plaza/product/zoom.css\');\r\n                } else {\r\n                    $this->document->addStyle(\'catalog/view/theme/default/stylesheet/plaza/product/zoom.css\');\r\n                }\r\n\r\n                $this->document->addStyle(\'catalog/view/javascript/jquery/swiper/css/swiper.min.css\');\r\n                \r\n                $this->document->addScript(\'catalog/view/javascript/jquery/swiper/js/swiper.jquery.js\');\r\n                $this->document->addStyle(\'catalog/view/javascript/plaza/cloudzoom/css/cloud-zoom.css\');\r\n                $this->document->addScript(\'catalog/view/javascript/plaza/cloudzoom/cloud-zoom.1.0.2.min.js\');\r\n                $this->document->addScript(\'catalog/view/javascript/plaza/cloudzoom/zoom.js\');\r\n            } else {\r\n                $data[\'use_zoom\'] = false;\r\n            }\r\n\r\n            $use_swatches = (int) $this->config->get(\'module_ptcontrolpanel_use_swatches\')[$store_id];\r\n\r\n            if($use_swatches) {\r\n                $data[\'use_swatches\'] = true;\r\n                $data[\'icon_swatches_width\'] = $this->config->get(\'module_ptcontrolpanel_swatches_width\')[$store_id];\r\n                $data[\'icon_swatches_height\'] = $this->config->get(\'module_ptcontrolpanel_swatches_height\')[$store_id];\r\n                $data[\'swatches_option\'] = $this->config->get(\'module_ptcontrolpanel_swatches_option\')[$store_id];\r\n\r\n                if (file_exists(\'catalog/view/theme/\' . $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_directory\') . \'/stylesheet/plaza/swatches/swatches.css\')) {\r\n                    $this->document->addStyle(\'catalog/view/theme/\' . $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_directory\') . \'/stylesheet/plaza/swatches/swatches.css\');\r\n                } else {\r\n                    $this->document->addStyle(\'catalog/view/theme/default/stylesheet/plaza/swatches/swatches.css\');\r\n                }\r\n\r\n                $this->document->addScript(\'catalog/view/javascript/plaza/swatches/swatches.js\');\r\n            } else {\r\n                $data[\'use_swatches\'] = false;\r\n            }\r\n            ]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[$data[\'images\'][] = array(]]></search>\r\n            <add position=\"after\"><![CDATA[\r\n                    \'product_option_value_id\' => $result[\'product_option_value_id\'],\r\n                    \'product_image_option\' => $this->model_tool_image->resize($result[\'image\'], $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_thumb_width\'), $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_thumb_height\')),\r\n            ]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[if ((float)$product_info[\'special\']) {]]></search>\r\n            <add position=\"after\"><![CDATA[\r\n                $this->load->model(\'plaza/catalog\');\r\n\r\n				$product_plaza_info = $this->model_plaza_catalog->getProduct($data[\'product_id\']);\r\n\r\n				if (isset($product_plaza_info[\'date_start\']) && $product_plaza_info[\'date_start\']) {\r\n					if($product_plaza_info[\'date_start\'] != \'0000-00-00\') {\r\n						$data[\'date_start\'] = $product_plaza_info[\'date_start\'];\r\n					} else {\r\n						$data[\'date_start\'] = false;\r\n					}\r\n					\r\n				} else {\r\n					$data[\'date_start\'] = false;\r\n				}\r\n\r\n				if(isset($product_plaza_info[\'date_end\']) &&  $product_plaza_info[\'date_end\']) {\r\n					if($product_plaza_info[\'date_end\'] != \'0000-00-00\') {\r\n						$data[\'date_end\'] = $product_plaza_info[\'date_end\'];\r\n					} else {\r\n						$data[\'date_end\'] = false;\r\n					}\r\n				} else {\r\n					$data[\'date_end\'] = false;\r\n				}\r\n\r\n				if($data[\'date_start\'] && $data[\'date_end\']) {\r\n					$this->document->addScript(\'catalog/view/javascript/plaza/countdown/countdown.js\');\r\n				}\r\n            ]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[$data[\'special\'] = false;]]></search>\r\n            <add position=\"after\"><![CDATA[\r\n                $data[\'date_start\'] = false;\r\n				$data[\'date_end\'] = false;\r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n    \r\n    <!-- CATEGORY CONFIGURATION -->\r\n    <file path=\"catalog/controller/product/category.php\">\r\n        <operation>\r\n            <search><![CDATA[$data[\'heading_title\'] = $category_info[\'name\'];]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n            /* Plaza Category Configuration */\r\n            $store_id = $this->config->get(\'config_store_id\');\r\n\r\n            /* Catalog Mode */\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_category_price\')[$store_id])) {\r\n                $data[\'show_cate_price\'] = (int) $this->config->get(\'module_ptcontrolpanel_category_price\')[$store_id];\r\n            } else {\r\n                $data[\'show_cate_price\'] = 0;\r\n            }\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_category_cart\')[$store_id])) {\r\n                $data[\'show_cate_cart\'] = (int) $this->config->get(\'module_ptcontrolpanel_category_cart\')[$store_id];\r\n            } else {\r\n                $data[\'show_cate_cart\'] = 0;\r\n            }\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_category_wishlist\')[$store_id])) {\r\n                $data[\'show_cate_wishlist\'] = (int) $this->config->get(\'module_ptcontrolpanel_category_wishlist\')[$store_id];\r\n            } else {\r\n                $data[\'show_cate_wishlist\'] = 0;\r\n            }\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_category_compare\')[$store_id])) {\r\n                $data[\'show_cate_compare\'] = (int) $this->config->get(\'module_ptcontrolpanel_category_compare\')[$store_id];\r\n            } else {\r\n                $data[\'show_cate_compare\'] = 0;\r\n            }\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_category_prodes\')[$store_id])) {\r\n                $data[\'show_cate_prodes\'] = (int) $this->config->get(\'module_ptcontrolpanel_category_prodes\')[$store_id];\r\n            } else {\r\n                $data[\'show_cate_prodes\'] = 0;\r\n            }\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_category_label\')[$store_id])) {\r\n                $data[\'show_cate_label\'] = (int) $this->config->get(\'module_ptcontrolpanel_category_label\')[$store_id];\r\n            } else {\r\n                $data[\'show_cate_label\'] = 0;\r\n            }\r\n\r\n            /* Category Settings */\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_category_image\')[$store_id])) {\r\n                $data[\'show_cate_img\'] = (int) $this->config->get(\'module_ptcontrolpanel_category_image\')[$store_id];\r\n            } else {\r\n                $data[\'show_cate_img\'] = 0;\r\n            }\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_category_description\')[$store_id])) {\r\n                $data[\'show_cate_des\'] = (int) $this->config->get(\'module_ptcontrolpanel_category_description\')[$store_id];\r\n            } else {\r\n                $data[\'show_cate_des\'] = 0;\r\n            }\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_sub_category\')[$store_id])) {\r\n                $data[\'show_cate_sub\'] = (int) $this->config->get(\'module_ptcontrolpanel_sub_category\')[$store_id];\r\n            } else {\r\n                $data[\'show_cate_sub\'] = 0;\r\n            }\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_use_filter\')[$store_id])) {\r\n                $data[\'use_filter\'] = (int) $this->config->get(\'module_ptcontrolpanel_use_filter\')[$store_id];\r\n            } else {\r\n                $data[\'use_filter\'] = 0;\r\n            }\r\n\r\n            if (!empty($_SERVER[\'HTTPS\'])) {\r\n                // SSL connection\r\n                $common_url = str_replace(\'http://\', \'https://\', $this->config->get(\'config_url\'));\r\n            } else {\r\n                $common_url = $this->config->get(\'config_url\');\r\n            }\r\n\r\n            $data[\'pt_sorts\'] = array();\r\n\r\n            $data[\'pt_limits\'] = array();\r\n\r\n            if($data[\'use_filter\']) {\r\n                \r\n				\r\n				$this->document->addStyle(\'catalog/view/javascript/jquery/css/jquery-ui.css\');\r\n				if (file_exists(\'catalog/view/theme/\' . $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_directory\') . \'/stylesheet/plaza/category/filter.css\')) {\r\n                    $this->document->addStyle(\'catalog/view/theme/\' . $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_directory\') . \'/stylesheet/plaza/category/filter.css\');\r\n                } else {\r\n                    $this->document->addStyle(\'catalog/view/theme/default/stylesheet/plaza/category/filter.css\');\r\n                }\r\n				$this->document->addScript(\'catalog/view/javascript/jquery/jquery-ui.js\');	\r\n                $this->document->addScript(\'catalog/view/javascript/plaza/category/filter.js\');\r\n\r\n                $data[\'pt_sorts\'][] = array(\r\n                    \'text\'  => $this->language->get(\'text_default\'),\r\n                    \'value\' => \'p.sort_order-ASC\',\r\n                    \'href\'  => $common_url . \'index.php?route=plaza/filter/category&path=\' . $category_id . \'&sort=p.sort_order&order=ASC\' . $url\r\n                );\r\n\r\n                $data[\'pt_sorts\'][] = array(\r\n                    \'text\'  => $this->language->get(\'text_name_asc\'),\r\n                    \'value\' => \'pd.name-ASC\',\r\n                    \'href\'  => $common_url . \'index.php?route=plaza/filter/category&path=\' . $category_id . \'&sort=pd.name&order=ASC\' . $url\r\n                );\r\n\r\n                $data[\'pt_sorts\'][] = array(\r\n                    \'text\'  => $this->language->get(\'text_name_desc\'),\r\n                    \'value\' => \'pd.name-DESC\',\r\n                    \'href\'  => $common_url . \'index.php?route=plaza/filter/category&path=\' . $category_id . \'&sort=pd.name&order=DESC\' . $url\r\n                );\r\n\r\n                $data[\'pt_sorts\'][] = array(\r\n                    \'text\'  => $this->language->get(\'text_price_asc\'),\r\n                    \'value\' => \'p.price-ASC\',\r\n                    \'href\'  => $common_url . \'index.php?route=plaza/filter/category&path=\' . $category_id . \'&sort=p.price&order=ASC\' . $url\r\n                );\r\n\r\n                $data[\'pt_sorts\'][] = array(\r\n                    \'text\'  => $this->language->get(\'text_price_desc\'),\r\n                    \'value\' => \'p.price-DESC\',\r\n                    \'href\'  => $common_url . \'index.php?route=plaza/filter/category&path=\' . $category_id . \'&sort=p.price&order=DESC\' . $url\r\n                );\r\n\r\n                if ($this->config->get(\'config_review_status\')) {\r\n                    $data[\'pt_sorts\'][] = array(\r\n                        \'text\'  => $this->language->get(\'text_rating_desc\'),\r\n                        \'value\' => \'rating-DESC\',\r\n                        \'href\'  => $common_url . \'index.php?route=plaza/filter/category&path=\' . $category_id . \'&sort=rating&order=DESC\' . $url\r\n                    );\r\n\r\n                    $data[\'pt_sorts\'][] = array(\r\n                        \'text\'  => $this->language->get(\'text_rating_asc\'),\r\n                        \'value\' => \'rating-ASC\',\r\n                        \'href\'  => $common_url . \'index.php?route=plaza/filter/category&path=\' . $category_id . \'&sort=rating&order=ASC\' . $url\r\n                    );\r\n                }\r\n\r\n                $data[\'pt_sorts\'][] = array(\r\n                    \'text\'  => $this->language->get(\'text_model_asc\'),\r\n                    \'value\' => \'p.model-ASC\',\r\n                    \'href\'  => $common_url . \'index.php?route=plaza/filter/category&path=\' . $category_id . \'&sort=p.model&order=ASC\' . $url\r\n                );\r\n\r\n                $data[\'pt_sorts\'][] = array(\r\n                    \'text\'  => $this->language->get(\'text_model_desc\'),\r\n                    \'value\' => \'p.model-DESC\',\r\n                    \'href\'  => $common_url . \'index.php?route=plaza/filter/category&path=\' . $category_id . \'&sort=p.model&order=DESC\' . $url\r\n                );\r\n\r\n                $data[\'pt_limits\'] = array();\r\n\r\n                $limits = array_unique(array($this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_product_limit\'), 25, 50, 75, 100));\r\n\r\n                sort($limits);\r\n\r\n                foreach($limits as $value) {\r\n                    $data[\'pt_limits\'][] = array(\r\n                        \'text\'  => $value,\r\n                        \'value\' => $value,\r\n                        \'href\'  => $common_url . \'index.php?route=plaza/filter/category&path=\' . $category_id . $url . \'&limit=\' . $value\r\n                    );\r\n                }\r\n\r\n                if(isset($this->config->get(\'module_ptcontrolpanel_loader_img\')[$store_id])) {\r\n                    $data[\'loader_img\'] = $common_url . \'image/\' . $this->config->get(\'module_ptcontrolpanel_loader_img\')[$store_id];\r\n                } else {\r\n                    $data[\'loader_img\'] = $common_url . \'image/plaza/ajax-loader.gif\';;\r\n                }\r\n            }\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_cate_quickview\')[$store_id])) {\r\n	            $data[\'use_quick_view\'] = (int) $this->config->get(\'module_ptcontrolpanel_cate_quickview\')[$store_id];\r\n	        } else {\r\n	            $data[\'use_quick_view\'] = 0;\r\n	        }\r\n\r\n	        if(isset($this->config->get(\'module_ptcontrolpanel_img_effect\')[$store_id])) {\r\n                $data[\'image_effect\'] = $this->config->get(\'module_ptcontrolpanel_img_effect\')[$store_id];\r\n            } else {\r\n                $data[\'image_effect\'] = false;\r\n            }\r\n\r\n            if($data[\'image_effect\'] == \'swatches\') {\r\n                $this->document->addScript(\'catalog/view/javascript/plaza/swatches/swatches.js\');\r\n            }\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_advance_view\')[$store_id])) {\r\n                $data[\'use_advance_view\'] = (int) $this->config->get(\'module_ptcontrolpanel_advance_view\')[$store_id];\r\n            } else {\r\n                $data[\'use_advance_view\'] = 0;\r\n            }\r\n\r\n            if($data[\'use_advance_view\']) {\r\n                $this->document->addScript(\'catalog/view/javascript/plaza/category/grid.js\');\r\n            }\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_default_view\')[$store_id])) {\r\n                $data[\'advance_default_view\'] = $this->config->get(\'module_ptcontrolpanel_default_view\')[$store_id];\r\n            } else {\r\n                $data[\'advance_default_view\'] = false;\r\n            }\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_product_row\')[$store_id])) {\r\n                $data[\'product_p_row\'] = $this->config->get(\'module_ptcontrolpanel_product_row\')[$store_id];\r\n            } else {\r\n                $data[\'product_p_row\'] = false;\r\n            }\r\n			$new_results = $this->model_catalog_product->getLatestProducts(10);\r\n            ]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[$data[\'products\'][] = array(]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n                if($data[\'image_effect\'] == \'hover\') {\r\n                    $this->load->model(\'plaza/rotateimage\');\r\n\r\n                    $product_rotate_image = $this->model_plaza_rotateimage->getProductRotateImage($result[\'product_id\']);\r\n\r\n                    if($product_rotate_image) {\r\n                        $rotate_image = $this->model_tool_image->resize($product_rotate_image, $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_product_width\'), $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_product_height\'));\r\n                    } else {\r\n                        $rotate_image = false;\r\n                    }\r\n                } else {\r\n                    $rotate_image = false;\r\n                }\r\n\r\n                $swatches_images = array();\r\n\r\n                $options = array();\r\n\r\n                if($data[\'image_effect\'] == \'swatches\') {\r\n                    $data[\'icon_swatches_width\'] = $this->config->get(\'module_ptcontrolpanel_cate_swatches_width\')[$store_id];\r\n                    $data[\'icon_swatches_height\'] = $this->config->get(\'module_ptcontrolpanel_cate_swatches_height\')[$store_id];\r\n\r\n                    $this->load->model(\'plaza/swatches\');\r\n\r\n                    $images = $this->model_catalog_product->getProductImages($result[\'product_id\']);\r\n\r\n                    $is_swatches = false;\r\n\r\n                    foreach ($images as $img) {\r\n                        if ($img[\'product_option_value_id\']) {\r\n                            $image_option_id = $this->model_plaza_swatches->getOptionIdByProductOptionValueId($img[\'product_option_value_id\']);\r\n\r\n                            if($image_option_id == $this->config->get(\'module_ptcontrolpanel_swatches_option\')[$store_id]) {\r\n                                $is_swatches = true;\r\n\r\n                                $swatches_images[] = array(\r\n                                    \'product_option_value_id\' => $img[\'product_option_value_id\'],\r\n                                    \'image\' => $this->model_tool_image->resize($img[\'image\'], $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_product_width\'), $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_product_height\'))\r\n                                );\r\n                            }\r\n                        }\r\n                    }\r\n\r\n                    if($is_swatches) {\r\n                        foreach ($this->model_catalog_product->getProductOptions($result[\'product_id\']) as $option) {\r\n                            if($option[\'option_id\'] == $this->config->get(\'module_ptcontrolpanel_swatches_option\')[$store_id]) {\r\n                                $product_option_value_data = array();\r\n\r\n                                foreach ($option[\'product_option_value\'] as $option_value) {\r\n                                    if (!$option_value[\'subtract\'] || ($option_value[\'quantity\'] > 0)) {\r\n                                        $product_option_value_data[] = array(\r\n                                            \'product_option_value_id\' => $option_value[\'product_option_value_id\'],\r\n                                            \'option_value_id\'         => $option_value[\'option_value_id\'],\r\n                                            \'name\'                    => $option_value[\'name\'],\r\n                                            \'image\'                   => $this->model_tool_image->resize($option_value[\'image\'], $data[\'icon_swatches_width\'], $data[\'icon_swatches_height\']),\r\n                                        );\r\n                                    }\r\n                                }\r\n\r\n                                $options[] = array(\r\n                                    \'product_option_id\'    => $option[\'product_option_id\'],\r\n                                    \'product_option_value\' => $product_option_value_data,\r\n                                    \'option_id\'            => $option[\'option_id\'],\r\n                                    \'name\'                 => $option[\'name\'],\r\n                                    \'type\'                 => $option[\'type\'],\r\n                                    \'value\'                => $option[\'value\'],\r\n                                );\r\n                            }\r\n                        }\r\n                    }\r\n                }\r\n				$is_new = false;\r\n				if ($new_results) {\r\n					foreach($new_results as $new_r) {\r\n						if($result[\'product_id\'] == $new_r[\'product_id\']) {\r\n							$is_new = true;\r\n						}\r\n					}\r\n				}\r\n            ]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[$data[\'products\'][] = array(]]></search>\r\n            <add position=\"after\"><![CDATA[\r\n                    \'options\' => $options,\r\n                    \'swatches_images\' => $swatches_images,\r\n                    \'rotate_image\' => $rotate_image,\r\n					\'is_new\'        => $is_new,\r\n            ]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[$pagination = new Pagination();]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n            $pt_pagination = new Pagination();\r\n            $pt_pagination->total = $product_total;\r\n            $pt_pagination->page = $page;\r\n            $pt_pagination->limit = $limit;\r\n            $pt_pagination->url = $common_url . \'index.php?route=plaza/filter/category&path=\' . $category_id . $url . \'&page={page}\';\r\n\r\n            $data[\'pt_pagination\'] = $pt_pagination->render();\r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n\r\n    <file path=\"catalog/controller/common/column_left.php\">\r\n    	<operation>\r\n            <search><![CDATA[if ($route == \'product/category\' && isset($this->request->get[\'path\'])) {]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n       	if ($route == \'product/category\') {\r\n			$store_id = $this->config->get(\'config_store_id\');\r\n\r\n			if(isset($this->config->get(\'module_ptcontrolpanel_use_filter\')[$store_id])) {\r\n				$use_filter = (int) $this->config->get(\'module_ptcontrolpanel_use_filter\')[$store_id];\r\n			} else {\r\n				$use_filter = 0;\r\n			}\r\n\r\n			if(isset($this->config->get(\'module_ptcontrolpanel_filter_position\')[$store_id])) {\r\n				$filter_position = $this->config->get(\'module_ptcontrolpanel_filter_position\')[$store_id];\r\n			} else {\r\n				$filter_position = false;\r\n			}\r\n\r\n			if($use_filter && $filter_position == \'left\') {\r\n				$data[\'use_filter\'] = true;\r\n			} else {\r\n				$data[\'use_filter\'] = false;\r\n			}\r\n\r\n			if($data[\'use_filter\']) {\r\n				$data[\'filter_section\'] = $this->load->controller(\'plaza/filter\');\r\n			}\r\n		} else {\r\n			$data[\'use_filter\'] = false;\r\n		}\r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n\r\n    <file path=\"catalog/controller/common/column_right.php\">\r\n    	<operation>\r\n            <search><![CDATA[if ($route == \'product/category\' && isset($this->request->get[\'path\'])) {]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n       	if ($route == \'product/category\') {\r\n			$store_id = $this->config->get(\'config_store_id\');\r\n\r\n			if(isset($this->config->get(\'module_ptcontrolpanel_use_filter\')[$store_id])) {\r\n				$use_filter = (int) $this->config->get(\'module_ptcontrolpanel_use_filter\')[$store_id];\r\n			} else {\r\n				$use_filter = 0;\r\n			}\r\n\r\n			if(isset($this->config->get(\'module_ptcontrolpanel_filter_position\')[$store_id])) {\r\n				$filter_position = $this->config->get(\'module_ptcontrolpanel_filter_position\')[$store_id];\r\n			} else {\r\n				$filter_position = false;\r\n			}\r\n\r\n			if($use_filter && $filter_position == \'right\') {\r\n				$data[\'use_filter\'] = true;\r\n			} else {\r\n				$data[\'use_filter\'] = false;\r\n			}\r\n\r\n			if($data[\'use_filter\']) {\r\n				$data[\'filter_section\'] = $this->load->controller(\'plaza/filter\');\r\n			}\r\n		} else {\r\n			$data[\'use_filter\'] = false;\r\n		}\r\n\r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n\r\n    <file path=\"catalog/model/catalog/product.php\">\r\n        <operation>\r\n            <search><![CDATA[if (!empty($data[\'filter_manufacturer_id\'])) {]]></search>\r\n            <add position=\"before\">\r\n                <![CDATA[\r\n        /* Price range */\r\n        if  (!empty($data[\'filter_price\'])) {\r\n            $min_price = $data[\'filter_price\'][\'min_price\'];\r\n            $max_price = $data[\'filter_price\'][\'max_price\'];\r\n            $sql_sl_special = \"(SELECT price FROM \" . DB_PREFIX . \"product_special ps WHERE ps.product_id = p.product_id AND ps.customer_group_id = \'\" . (int)$this->config->get(\'config_customer_group_id\') . \"\' AND ((ps.date_start = \'0000-00-00\' OR ps.date_start < NOW()) AND (ps.date_end = \'0000-00-00\' OR ps.date_end > NOW())) ORDER BY ps.priority ASC, ps.price ASC LIMIT 1)\";\r\n            $sql_sl_discount = \"(SELECT price FROM \" . DB_PREFIX . \"product_discount pd2 WHERE pd2.product_id = p.product_id AND pd2.customer_group_id = \'\" . (int)$this->config->get(\'config_customer_group_id\') . \"\' AND pd2.quantity = \'1\' AND ((pd2.date_start = \'0000-00-00\' OR pd2.date_start < NOW()) AND (pd2.date_end = \'0000-00-00\' OR pd2.date_end > NOW())) ORDER BY pd2.priority ASC, pd2.price ASC LIMIT 1)\";\r\n            $sql .= \" AND (CASE WHEN \" . $sql_sl_special . \" IS NOT NULL THEN \" . $sql_sl_special . \" WHEN \" . $sql_sl_discount . \" IS NOT NULL THEN \". $sql_sl_discount . \" ELSE p.price END) >=\'\". $min_price .\"\'\" ;\r\n            $sql .= \" AND (CASE WHEN \" . $sql_sl_special . \" IS NOT NULL THEN \" . $sql_sl_special . \" WHEN \" . $sql_sl_discount . \" IS NOT NULL THEN \". $sql_sl_discount . \" ELSE p.price END) <=\'\". $max_price .\"\'\";\r\n        }\r\n        /* End */\r\n                ]]>\r\n            </add>\r\n        </operation>\r\n    </file>\r\n\r\n    <!-- Plaza THEME OPTION -->\r\n    <file path=\"catalog/controller/common/header.php\">\r\n        <operation>\r\n            <search><![CDATA[return $this->load->view(\'common/header\', $data);]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n        $data[\'store_id\'] = $this->config->get(\'config_store_id\');\r\n		$data[\'email\'] = $this->config->get(\'config_email\');\r\n        /* General */\r\n		if(isset($this->config->get(\'module_ptcontrolpanel_header_layout\')[$data[\'store_id\']])) {\r\n            $data[\'header_layout\'] = (int) $this->config->get(\'module_ptcontrolpanel_header_layout\')[$data[\'store_id\']];\r\n        } else {\r\n            $data[\'header_layout\'] = 1;\r\n        }\r\n		\r\n        /* Sticky Header */\r\n        if(isset($this->config->get(\'module_ptcontrolpanel_sticky_header\')[$data[\'store_id\']])) {\r\n            $data[\'sticky_header\'] = (int) $this->config->get(\'module_ptcontrolpanel_sticky_header\')[$data[\'store_id\']];\r\n        } else {\r\n            $data[\'sticky_header\'] = 0;\r\n        }\r\n\r\n        /* Scroll Top */\r\n        if(isset($this->config->get(\'module_ptcontrolpanel_scroll_top\')[$data[\'store_id\']])) {\r\n            $data[\'scroll_top\'] = (int) $this->config->get(\'module_ptcontrolpanel_scroll_top\')[$data[\'store_id\']];\r\n        } else {\r\n            $data[\'scroll_top\'] = 0;\r\n        }\r\n\r\n        /* Lazy Load */\r\n        if(isset($this->config->get(\'module_ptcontrolpanel_lazy_load\')[$data[\'store_id\']])) {\r\n            $data[\'lazy_load\'] = (int) $this->config->get(\'module_ptcontrolpanel_lazy_load\')[$data[\'store_id\']];\r\n        } else {\r\n            $data[\'lazy_load\'] = 0;\r\n        }\r\n\r\n        /* Catalog Mode */\r\n        /* Header */\r\n        if(isset($this->config->get(\'module_ptcontrolpanel_header_cart\')[$data[\'store_id\']])) {\r\n            $data[\'header_cart\'] = (int) $this->config->get(\'module_ptcontrolpanel_header_cart\')[$data[\'store_id\']];\r\n        } else {\r\n            $data[\'header_cart\'] = 0;\r\n        }\r\n\r\n        if(isset($this->config->get(\'module_ptcontrolpanel_header_currency\')[$data[\'store_id\']])) {\r\n            $data[\'header_currency\'] = (int) $this->config->get(\'module_ptcontrolpanel_header_currency\')[$data[\'store_id\']];\r\n        } else {\r\n            $data[\'header_currency\'] = 0;\r\n        }\r\n\r\n        if(isset($this->config->get(\'module_ptcontrolpanel_module_quickview\')[$data[\'store_id\']])) {\r\n            $module_quick_view = (int) $this->config->get(\'module_ptcontrolpanel_module_quickview\')[$data[\'store_id\']];\r\n        } else {\r\n            $module_quick_view = 0;\r\n        }\r\n\r\n        if(isset($this->config->get(\'module_ptcontrolpanel_cate_quickview\')[$data[\'store_id\']])) {\r\n            $category_quick_view = (int) $this->config->get(\'module_ptcontrolpanel_cate_quickview\')[$data[\'store_id\']];\r\n        } else {\r\n            $category_quick_view = 0;\r\n        }\r\n\r\n        if($module_quick_view || $category_quick_view) {\r\n        	$data[\'use_quick_view\'] = true;\r\n        } else {\r\n			$data[\'use_quick_view\'] = false;\r\n        }\r\n\r\n        /* Advance */\r\n        if(isset($this->config->get(\'module_ptcontrolpanel_custom_js\')[$data[\'store_id\']])) {\r\n            $data[\'custom_js\'] = $this->config->get(\'module_ptcontrolpanel_custom_js\')[$data[\'store_id\']];\r\n        } else {\r\n            $data[\'custom_js\'] = false;\r\n        }\r\n        	]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[$data[\'menu\'] = $this->load->controller(\'common/menu\');]]></search>\r\n            <add position=\"after\"><![CDATA[\r\n                $data[\'header\'] = $this->load->controller(\'plaza/header\');\r\n            ]]></add>\r\n        </operation>\r\n		<operation>\r\n            <search><![CDATA[class ControllerCommonHeader extends Controller {]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n            require_once(DIR_SYSTEM . \'Mobile_Detect.php\');\r\n            ]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[return $this->load->view(\'common/header\', $data);]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n        $detect = new Mobile_Detect;\r\n		if ( $detect->isTablet() ) {\r\n			return $this->load->view(\'common/header\', $data);\r\n		} else {\r\n			if( $detect->isMobile()){\r\n				return $this->load->view(\'plaza/page_section/header_mobile\', $data);\r\n			} else {\r\n				return $this->load->view(\'common/header\', $data);\r\n			}\r\n		}\r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n\r\n    <file path=\"catalog/controller/common/column_left.php\">\r\n        <operation>\r\n            <search><![CDATA[class ControllerCommonColumnLeft extends Controller {]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n            require_once(DIR_SYSTEM . \'Mobile_Detect.php\');\r\n            ]]></add>\r\n        </operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[$route = \'common/home\';]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n            $store_id = $this->config->get(\'config_store_id\');\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_responsive_type\')[$store_id])) {\r\n                $responsive_type = $this->config->get(\'module_ptcontrolpanel_responsive_type\')[$store_id];\r\n            } else {\r\n                $responsive_type = \"\";\r\n            }\r\n\r\n            if($responsive_type == \"specified\") {\r\n                $detect = new Mobile_Detect;\r\n\r\n                if ( $detect->isTablet() ) {\r\n                    $route = \'common/home\';\r\n                } else {\r\n                    if( $detect->isMobile()){\r\n                        $route = \'plaza/responsive/mobile\';\r\n                    } else {\r\n                        $route = \'common/home\';\r\n                    }\r\n                }\r\n            } else {\r\n                $route = \'common/home\';\r\n            }\r\n            ]]></add>\r\n        </operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[if (isset($this->request->get[\'route\'])) {]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n            if (isset($this->request->get[\'route\']) && $this->request->get[\'route\'] != \"common/home\") {\r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n\r\n    <file path=\"catalog/controller/common/column_right.php\">\r\n        <operation>\r\n            <search><![CDATA[class ControllerCommonColumnRight extends Controller {]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n            require_once(DIR_SYSTEM . \'Mobile_Detect.php\');\r\n            ]]></add>\r\n        </operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[if (isset($this->request->get[\'route\'])) {]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n            if (isset($this->request->get[\'route\']) && $this->request->get[\'route\'] != \"common/home\") {\r\n            ]]></add>\r\n        </operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[$route = \'common/home\';]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n            $store_id = $this->config->get(\'config_store_id\');\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_responsive_type\')[$store_id])) {\r\n                $responsive_type = $this->config->get(\'module_ptcontrolpanel_responsive_type\')[$store_id];\r\n            } else {\r\n                $responsive_type = \"\";\r\n            }\r\n\r\n            if($responsive_type == \"specified\") {\r\n                $detect = new Mobile_Detect;\r\n\r\n                if ( $detect->isTablet() ) {\r\n                    $route = \'common/home\';\r\n                } else {\r\n                    if( $detect->isMobile()){\r\n                        $route = \'plaza/responsive/mobile\';\r\n                    } else {\r\n                        $route = \'common/home\';\r\n                    }\r\n                }\r\n            } else {\r\n                $route = \'common/home\';\r\n            }\r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n\r\n    <file path=\"catalog/controller/common/content_bottom.php\">\r\n        <operation>\r\n            <search><![CDATA[class ControllerCommonContentBottom extends Controller {]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n            require_once(DIR_SYSTEM . \'Mobile_Detect.php\');\r\n            ]]></add>\r\n        </operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[if (isset($this->request->get[\'route\'])) {]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n            if (isset($this->request->get[\'route\']) && $this->request->get[\'route\'] != \"common/home\") {\r\n            ]]></add>\r\n        </operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[$route = \'common/home\';]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n            $store_id = $this->config->get(\'config_store_id\');\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_responsive_type\')[$store_id])) {\r\n                $responsive_type = $this->config->get(\'module_ptcontrolpanel_responsive_type\')[$store_id];\r\n            } else {\r\n                $responsive_type = \"\";\r\n            }\r\n\r\n            if($responsive_type == \"specified\") {\r\n                $detect = new Mobile_Detect;\r\n\r\n                if ( $detect->isTablet() ) {\r\n                    $route = \'common/home\';\r\n                } else {\r\n                    if( $detect->isMobile()){\r\n                        $route = \'plaza/responsive/mobile\';\r\n                    } else {\r\n                        $route = \'common/home\';\r\n                    }\r\n                }\r\n            } else {\r\n                $route = \'common/home\';\r\n            }\r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n\r\n    <file path=\"catalog/controller/common/content_top.php\">\r\n        <operation>\r\n            <search><![CDATA[class ControllerCommonContentTop extends Controller {]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n            require_once(DIR_SYSTEM . \'Mobile_Detect.php\');\r\n            ]]></add>\r\n        </operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[if (isset($this->request->get[\'route\'])) {]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n            if (isset($this->request->get[\'route\']) && $this->request->get[\'route\'] != \"common/home\") {\r\n            ]]></add>\r\n        </operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[$route = \'common/home\';]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n            $store_id = $this->config->get(\'config_store_id\');\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_responsive_type\')[$store_id])) {\r\n                $responsive_type = $this->config->get(\'module_ptcontrolpanel_responsive_type\')[$store_id];\r\n            } else {\r\n                $responsive_type = \"\";\r\n            }\r\n\r\n            if($responsive_type == \"specified\") {\r\n                $detect = new Mobile_Detect;\r\n\r\n                if ( $detect->isTablet() ) {\r\n                    $route = \'common/home\';\r\n                } else {\r\n                    if( $detect->isMobile()){\r\n                        $route = \'plaza/responsive/mobile\';\r\n                    } else {\r\n                        $route = \'common/home\';\r\n                    }\r\n                }\r\n            } else {\r\n                $route = \'common/home\';\r\n            }\r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n\r\n    <!-- Layouts Position -->\r\n    <file path=\"admin/controller/design/layout.php\">\r\n        <operation>\r\n            <search><![CDATA[$this->response->setOutput($this->load->view(\'design/layout_form\', $data));]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n                $this->load->language(\'design/layout\');\r\n\r\n                $this->response->setOutput($this->load->view(\'plaza/design/plaza_layout\', $data));\r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n	\r\n	<!-- Fixed URL SEO -->\r\n	\r\n	<file path=\"catalog/controller/startup/seo_url.php\">\r\n		<operation>\r\n			<search index=\"0\"><![CDATA[if ($url[0] == \'information_id\') {]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n			if ($url[0] == \'post_id\') {\r\n				$this->request->get[\'post_id\'] = $url[1];\r\n			}	\r\n			if ($url[0] == \'post_list_id\') {\r\n				$this->request->get[\'post_list_id\'] = $url[1];\r\n			}\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search index=\"0\"><![CDATA[if ($query->row[\'query\'] && $url[0] != \'information_id\' && $url[0] != \'manufacturer_id\' && $url[0] != \'category_id\' && $url[0] != \'product_id\') {]]></search>\r\n			<add position=\"replace\"><![CDATA[\r\n			if ($query->row[\'query\'] && $url[0] != \'information_id\' && $url[0] != \'post_list_id\' && $url[0] != \'post_id\' && $url[0] != \'manufacturer_id\' && $url[0] != \'category_id\' && $url[0] != \'product_id\') {\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search index=\"0\"><![CDATA[$this->request->get[\'route\'] = $query->row[\'query\'];]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			if($query->row[\'query\'] && $url[0] == \'ptblog\') {\r\n				$this->request->get[\'route\'] = \"plaza/blog\";\r\n			}	\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search index=\"0\"><![CDATA[$this->request->get[\'route\'] = \'information/information\';]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				} elseif (isset($this->request->get[\'post_id\'])) {\r\n					$this->request->get[\'route\'] = \'plaza/blog/post\';\r\n				} elseif (isset($this->request->get[\'post_list_id\'])) {\r\n					$this->request->get[\'route\'] = \'plaza/blog/category\';\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search index=\"0\"><![CDATA[if (isset($data[\'route\'])) {]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			if($data[\'route\'] == \'plaza/blog\') {\r\n						$query = $this->db->query(\"SELECT * FROM \" . DB_PREFIX . \"seo_url WHERE `query` = \'ptblog\' AND store_id = \'\" . (int)$this->config->get(\'config_store_id\') . \"\' AND language_id = \'\" . (int)$this->config->get(\'config_language_id\') . \"\'\");\r\n\r\n						if ($query->num_rows && $query->row[\'keyword\']) {\r\n							$url .= \'/\' . $query->row[\'keyword\'];\r\n\r\n							unset($data[$key]);\r\n						}\r\n					}\r\n				}\r\n			}	\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search index=\"0\"><![CDATA[if (($data[\'route\'] == \'product/product\' && $key == \'product_id\') || (($data[\'route\'] == \'product/manufacturer/info\' || $data[\'route\'] == \'product/product\') && $key == \'manufacturer_id\') || ($data[\'route\'] == \'information/information\' && $key == \'information_id\')) {]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n			foreach ($data as $key => $value) {\r\n			if (isset($data[\'route\'])) {\r\n				if($data[\'route\'] == \'plaza/blog/post\' && $key == \'post_id\') {\r\n					$query = $this->db->query(\"SELECT * FROM \" . DB_PREFIX . \"seo_url WHERE `query` = \'\" . $this->db->escape($key . \'=\' . (int)$value) . \"\' AND store_id = \'\" . (int)$this->config->get(\'config_store_id\') . \"\' AND language_id = \'\" . (int)$this->config->get(\'config_language_id\') . \"\'\");\r\n\r\n					if ($query->num_rows && $query->row[\'keyword\']) {\r\n						$url .= \'/\' . $query->row[\'keyword\'];\r\n\r\n						unset($data[$key]);\r\n					}\r\n				}\r\n\r\n				if($data[\'route\'] == \'plaza/blog/category\' && $key == \'post_list_id\') {\r\n					$query = $this->db->query(\"SELECT * FROM \" . DB_PREFIX . \"seo_url WHERE `query` = \'\" . $this->db->escape($key . \'=\' . (int)$value) . \"\' AND store_id = \'\" . (int)$this->config->get(\'config_store_id\') . \"\' AND language_id = \'\" . (int)$this->config->get(\'config_language_id\') . \"\'\");\r\n\r\n					if ($query->num_rows && $query->row[\'keyword\']) {\r\n						$url .= \'/\' . $query->row[\'keyword\'];\r\n\r\n						unset($data[$key]);\r\n					}\r\n				}	\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search index=\"0\"><![CDATA[} elseif ($key == \'path\') {]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n			} elseif ($key == \'route\') {\r\n			$query = $this->db->query(\"SELECT * FROM \" . DB_PREFIX . \"seo_url WHERE `query` = \'\" . $this->db->escape($value) . \"\' AND store_id = \'\" . (int)$this->config->get(\'config_store_id\') . \"\' AND language_id = \'\" . (int)$this->config->get(\'config_language_id\') . \"\'\");\r\n			if ($query->num_rows && $query->row[\'keyword\']) {\r\n				$url .= \'/\' . $query->row[\'keyword\'];\r\n				unset($data[$key]);\r\n			} else if ($data[\'route\'] == \"common/home\") { \r\n			 $url .= \'/\'; \r\n			} 	\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>', 1, '2020-09-29 14:43:05');
INSERT INTO `oc_modification` (`modification_id`, `extension_install_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`) VALUES
(40, 40, 'Plaza Theme Custom', 'plaza_theme_custom', 'Plazathemes', '1.0', '', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n    <code>plaza_theme_custom</code>\r\n    <name>Plaza Theme Custom</name>\r\n    <version>1.0</version>\r\n    <author>Plazathemes</author>\r\n	<!-- Add position in header -->\r\n	<file path=\"catalog/controller/common/header.php\">\r\n		<operation>\r\n			<search><![CDATA[$data[\'menu\'] = $this->load->controller(\'common/menu\');]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				// Plaza Module Postion\r\n					$data[\'position1\'] = $this->load->controller(\'common/position1\');\r\n					$data[\'position2\'] = $this->load->controller(\'common/position2\');\r\n					$data[\'position3\'] = $this->load->controller(\'common/position3\');\r\n					$data[\'position4\'] = $this->load->controller(\'common/position4\');\r\n					$data[\'position5\'] = $this->load->controller(\'common/position5\');\r\n					$data[\'position6\'] = $this->load->controller(\'common/position6\');\r\n					$data[\'position7\'] = $this->load->controller(\'common/position7\');\r\n					$data[\'position8\'] = $this->load->controller(\'common/position8\');\r\n					$data[\'position9\'] = $this->load->controller(\'common/position9\');\r\n					$data[\'position10\'] = $this->load->controller(\'common/position10\');\r\n				// End Plaza Module Postion\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<!-- Add position in footer -->\r\n	<file path=\"catalog/controller/common/footer.php\">\r\n		<operation>\r\n			<search><![CDATA[$data[\'powered\'] = sprintf($this->language->get(\'text_powered\'), $this->config->get(\'config_name\'), date(\'Y\', time()));]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				// Plaza Module Postion\r\n					$data[\'position1\'] = $this->load->controller(\'common/position1\');\r\n					$data[\'position2\'] = $this->load->controller(\'common/position2\');\r\n					$data[\'position3\'] = $this->load->controller(\'common/position3\');\r\n					$data[\'position4\'] = $this->load->controller(\'common/position4\');\r\n					$data[\'position5\'] = $this->load->controller(\'common/position5\');\r\n					$data[\'position6\'] = $this->load->controller(\'common/position6\');\r\n					$data[\'position7\'] = $this->load->controller(\'common/position7\');\r\n					$data[\'position8\'] = $this->load->controller(\'common/position8\');\r\n					$data[\'position9\'] = $this->load->controller(\'common/position9\');\r\n					$data[\'position10\'] = $this->load->controller(\'common/position10\');\r\n				// End Plaza Module Postion\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<!-- Add class page in body tag -->\r\n	<file path=\"catalog/controller/common/header.php\">\r\n		<operation>\r\n			<search><![CDATA[$data[\'menu\'] = $this->load->controller(\'common/menu\');]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				// Add class page in body tag\r\n				if (isset($this->request->get[\'route\'])) {\r\n					if (isset($this->request->get[\'product_id\'])) {\r\n						$class = \'-\' . $this->request->get[\'product_id\'];\r\n					} elseif (isset($this->request->get[\'path\'])) {\r\n						$class = \'-\' . $this->request->get[\'path\'];\r\n					} elseif (isset($this->request->get[\'manufacturer_id\'])) {\r\n						$class = \'-\' . $this->request->get[\'manufacturer_id\'];\r\n					} elseif (isset($this->request->get[\'information_id\'])) {\r\n						$class = \'-\' . $this->request->get[\'information_id\'];\r\n					} else {\r\n						$class = \'\';\r\n					}\r\n\r\n					$data[\'class\'] = str_replace(\'/\', \'-\', $this->request->get[\'route\']);\r\n				} else {\r\n					$data[\'class\'] = \'common-home\';\r\n				}\r\n				// End Add class page in body tag\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<!-- Remove link swipe js,cs in carousel module default -->\r\n	<file path=\"catalog/controller/extension/module/carousel.php\">\r\n		<operation>\r\n			<search><![CDATA[$this->document->addStyle(\'catalog/view/javascript/jquery/swiper/css/swiper.min.css\');]]></search>\r\n			<add position=\"replace\"><![CDATA[\r\n				//$this->document->addStyle(\'catalog/view/javascript/jquery/swiper/css/swiper.min.css\');\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[$this->document->addStyle(\'catalog/view/javascript/jquery/swiper/css/opencart.css\');]]></search>\r\n			<add position=\"replace\"><![CDATA[\r\n				//$this->document->addStyle(\'catalog/view/javascript/jquery/swiper/css/opencart.css\');\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[$this->document->addScript(\'catalog/view/javascript/jquery/swiper/js/swiper.jquery.js\');]]></search>\r\n			<add position=\"replace\"><![CDATA[\r\n				//$this->document->addScript(\'catalog/view/javascript/jquery/swiper/js/swiper.jquery.js\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<!-- Add span tag in category module default -->\r\n	<file path=\"catalog/controller/extension/module/category.php\">\r\n        <operation>\r\n            <search><![CDATA[\'name\' => $child[\'name\'] . ($this->config->get(\'config_product_count\') ? \' (\' . $this->model_catalog_product->getTotalProducts($filter_data) . \')\' : \'\'),]]></search>\r\n            <add position=\"replace\">\r\n                <![CDATA[\r\n                    \'name\' => $child[\'name\'] . ($this->config->get(\'config_product_count\') ? \' <span>\' . $this->model_catalog_product->getTotalProducts($filter_data) . \'</span>\' : \'\'),\r\n                ]]>\r\n            </add>\r\n        </operation>\r\n		<operation>\r\n            <search><![CDATA[\'name\'        => $category[\'name\'] . ($this->config->get(\'config_product_count\') ? \' (\' . $this->model_catalog_product->getTotalProducts($filter_data) . \')\' : \'\'),]]></search>\r\n            <add position=\"replace\">\r\n                <![CDATA[\r\n                    \'name\'        => $category[\'name\'] . ($this->config->get(\'config_product_count\') ? \' <span>\' . $this->model_catalog_product->getTotalProducts($filter_data) . \'</span>\' : \'\'),\r\n                ]]>\r\n            </add>\r\n        </operation>\r\n    </file>\r\n	<!-- Add manufacturer to category,manufacturer,search,special -->\r\n	<file path=\"catalog/controller/product/{category,manufacturer,search,special}*.php\">\r\n		<operation>\r\n			<search><![CDATA[$result[\'rating\'],]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				// Add manufacturer\r\n					\'manufacturer\' => $result[\'manufacturer\'],\r\n					\'manufacturer_href\' => $this->url->link(\'product/manufacturer/info\', \'manufacturer_id=\' . $result[\'manufacturer_id\']),\r\n				// End Add manufacturer\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	\r\n	<!-- Add text_stock to category,manufacturer,search,special -->\r\n	<file path=\"catalog/controller/product/{category,manufacturer,search,special}*.php\">\r\n		<operation>\r\n			<search><![CDATA[$data[\'products\'][] = array(]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n				if ($result[\'quantity\'] <= 0) {\r\n					$stock = $result[\'stock_status\'];\r\n				} elseif ($this->config->get(\'config_stock_display\')) {\r\n					$stock = $result[\'quantity\'];\r\n				} else {\r\n					$stock = $this->language->get(\'text_instock\');\r\n				}\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n            <search><![CDATA[$data[\'products\'][] = array(]]></search>\r\n            <add position=\"after\"><![CDATA[\r\n					\'stock\'		=> $stock,\r\n					\'quantity\'      => (int) $result[\'quantity\'],\r\n            ]]></add>\r\n        </operation>\r\n	</file>\r\n	\r\n	<file path=\"catalog/controller/product/product.php\">\r\n		<!-- Add manufacturer to related product -->\r\n		<operation>\r\n			<search><![CDATA[$rating,]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				// Add manufacturer to related product\r\n					\'manufacturer\' => $result[\'manufacturer\'],\r\n					\'manufacturer_href\' => $this->url->link(\'product/manufacturer/info\', \'manufacturer_id=\' . $result[\'manufacturer_id\']),\r\n				// End Add manufacturer to related product\r\n			]]></add>\r\n		</operation>\r\n		<!-- Add positon to product page -->\r\n		<operation>\r\n			<search><![CDATA[$data[\'breadcrumbs\'] = array();]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				$data[\'position10\'] = $this->load->controller(\'common/position10\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	\r\n	<!-- Add rate_special in category -->\r\n	<file path=\"catalog/controller/product/category.php\">\r\n        <operation>\r\n            <search><![CDATA[$special = $this->currency->format($this->tax->calculate($result[\'special\'], $result[\'tax_class_id\'], $this->config->get(\'config_tax\')), $this->session->data[\'currency\']);]]></search>\r\n            <add position=\"after\">\r\n                <![CDATA[\r\n                    $rate_special = round(($result[\'price\'] - $result[\'special\']) / $result[\'price\'] * 100);\r\n                ]]>\r\n            </add>\r\n        </operation>\r\n		<operation>\r\n            <search><![CDATA[$special = false;]]></search>\r\n            <add position=\"after\">\r\n                <![CDATA[\r\n                    $rate_special = false;\r\n                ]]>\r\n            </add>\r\n        </operation>\r\n		<operation>\r\n            <search><![CDATA[$data[\'products\'][] = array(]]></search>\r\n            <add position=\"after\">\r\n                <![CDATA[\r\n                    \'rate_special\'      => $rate_special,\r\n                ]]>\r\n            </add>\r\n        </operation>	\r\n    </file>\r\n	\r\n	<!-- Fix text headding,empty -->\r\n	<file path=\"catalog/controller/account/{account,address,affiliate,download,edit,forgotten,login,logout,newsletter,order,password,recurring,register,reset,return,reward,success,tracking,transaction,voucher,wishlist}*.php\">\r\n	  <operation>\r\n	   <search><![CDATA[$this->document->setTitle($this->language->get(\'heading_title\'));]]></search>\r\n	   <add position=\"after\"><![CDATA[\r\n		$data[\'heading_title\'] = $this->language->get(\'heading_title\');\r\n	   ]]></add>\r\n	  </operation>\r\n	 </file>\r\n	 \r\n	 <file path=\"catalog/controller/affiliate/{login,register,success,}*.php\">\r\n	  <operation>\r\n	   <search><![CDATA[$this->document->setTitle($this->language->get(\'heading_title\'));]]></search>\r\n	   <add position=\"after\"><![CDATA[\r\n		$data[\'heading_title\'] = $this->language->get(\'heading_title\');\r\n	   ]]></add>\r\n	  </operation>\r\n	 </file>\r\n	 \r\n	 <file path=\"catalog/controller/checkout/{cart,checkout,failure,success}*.php\">\r\n	  <operation>\r\n	   <search><![CDATA[$this->document->setTitle($this->language->get(\'heading_title\'));]]></search>\r\n	   <add position=\"after\"><![CDATA[\r\n		$data[\'heading_title\'] = $this->language->get(\'heading_title\');\r\n	   ]]></add>\r\n	  </operation>\r\n	 </file>\r\n	 \r\n	 <file path=\"catalog/controller/product/{compare,manufacturer,search,special}*.php\">\r\n	  <operation>\r\n	   <search><![CDATA[$this->document->setTitle($this->language->get(\'heading_title\'));]]></search>\r\n	   <add position=\"after\"><![CDATA[\r\n		$data[\'heading_title\'] = $this->language->get(\'heading_title\');\r\n	   ]]></add>\r\n	  </operation>\r\n	 </file>\r\n	 \r\n	 <file path=\"catalog/controller/{common,error}/{maintenance,not_found}*.php\">\r\n	  <operation>\r\n	   <search><![CDATA[$this->document->setTitle($this->language->get(\'heading_title\'));]]></search>\r\n	   <add position=\"after\"><![CDATA[\r\n		$data[\'heading_title\'] = $this->language->get(\'heading_title\');\r\n	   ]]></add>\r\n	  </operation>\r\n	 </file>\r\n	 \r\n	 <file path=\"catalog/controller/extension/{credit_card,payment}/{sagepay_direct,sagepay_server,squareup,amazon_login_pay,klarna_checkout,wechat_pay}*.php\">\r\n	  <operation>\r\n	   <search><![CDATA[$this->document->setTitle($this->language->get(\'heading_title\'));]]></search>\r\n	   <add position=\"after\"><![CDATA[\r\n		$data[\'heading_title\'] = $this->language->get(\'heading_title\');\r\n	   ]]></add>\r\n	  </operation>\r\n	</file>\r\n	<file path=\"catalog/controller/information/{sitemap,contact}*.php\">\r\n	  <operation>\r\n	   <search><![CDATA[$this->document->setTitle($this->language->get(\'heading_title\'));]]></search>\r\n	   <add position=\"after\"><![CDATA[\r\n		$data[\'heading_title\'] = $this->language->get(\'heading_title\');\r\n	   ]]></add>\r\n	  </operation>\r\n	 </file>\r\n	 <file path=\"catalog/controller/account/{address,download,order,recurring,return,reward,transaction,wishlist}*.php\">\r\n		<operation>\r\n			<search><![CDATA[$this->document->setTitle($this->language->get(\'heading_title\'));]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				$data[\'text_empty\'] = $this->language->get(\'text_empty\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/controller/checkout/cart.php\">\r\n		<operation>\r\n			<search><![CDATA[$this->document->setTitle($this->language->get(\'heading_title\'));]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				$data[\'text_empty\'] = $this->language->get(\'text_empty\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/controller/common/cart.php\">\r\n		<operation>\r\n			<search><![CDATA[$this->document->setTitle($this->language->get(\'heading_title\'));]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				$data[\'text_empty\'] = $this->language->get(\'text_empty\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/controller/extension/credit_card/{sagepay_direct,sagepay_server}*.php\">\r\n		<operation>\r\n			<search><![CDATA[$this->document->setTitle($this->language->get(\'heading_title\'));]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				$data[\'text_empty\'] = $this->language->get(\'text_empty\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	\r\n	<file path=\"catalog/controller/product/{category,search}*.php\">\r\n		<operation>\r\n			<search><![CDATA[$data[\'breadcrumbs\'] = array();]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n				$data[\'text_empty\'] = $this->language->get(\'text_empty\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	\r\n	<file path=\"catalog/controller/product/{compare,manufacturer,special}*.php\">\r\n		<operation>\r\n			<search><![CDATA[$this->document->setTitle($this->language->get(\'heading_title\'));]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				$data[\'text_empty\'] = $this->language->get(\'text_empty\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/controller/account/voucher.php\">\r\n		<operation>\r\n			<search><![CDATA[$this->load->language(\'account/voucher\');]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				$data[\'text_agree\'] = $this->language->get(\'text_agree\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/controller/design/layout.php\">\r\n		<operation>\r\n			<search><![CDATA[$this->load->language(\'design/layout\');]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				$data[\'heading_title\'] = $this->language->get(\'heading_title\');\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[protected function getForm() {]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				$this->load->language(\'design/layout\');\r\n				$data[\'heading_title\'] = $this->language->get(\'heading_title\');\r\n			]]></add>\r\n		</operation>\r\n		\r\n	</file>\r\n</modification>', 1, '2019-11-13 14:21:25');

-- --------------------------------------------------------

--
-- Table structure for table `oc_module`
--

DROP TABLE IF EXISTS `oc_module`;
CREATE TABLE IF NOT EXISTS `oc_module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=375 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_module`
--

INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
(30, 'Category', 'banner', '{\"name\":\"Category\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}'),
(29, 'BrandSlider', 'carousel', '{\"name\":\"BrandSlider\",\"banner_id\":\"8\",\"width\":\"164\",\"height\":\"38\",\"status\":\"1\"}'),
(28, 'Home Page', 'featured', '{\"name\":\"Home Page\",\"product\":[\"43\",\"40\",\"42\",\"30\"],\"limit\":\"4\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}'),
(27, 'Home Page', 'slideshow', '{\"name\":\"Home Page\",\"banner_id\":\"7\",\"width\":\"1140\",\"height\":\"380\",\"status\":\"1\"}'),
(31, 'Banner 1', 'banner', '{\"name\":\"Banner 1\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}'),
(195, 'Autopart 1 - Home Page', 'ptlayoutbuilder', '{\"name\":\"Autopart 1 - Home Page\",\"status\":\"1\",\"widget\":[{\"class\":\"slider-group\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptmenu.356\",\"name\":\" Plaza Ultimate Menu &gt; Vertical Menu 01\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/ptmenu&amp;user_token=T1DWsbBNEEmQTnyPfuSfGuisOPtrBtpM&amp;module_id=356\"}]},\"format\":\"3\"},{\"info\":{\"module\":[{\"code\":\"ptajaxlogin\",\"name\":\" Plaza Quick Login\",\"url\":\"http:\\/\\/vogue1.com\\/admin\\/index.php?route=extension\\/module\\/ptajaxlogin&amp;user_token=xnnWteSDvwnsFB0RcuxeKelSkhVzLp3y\"},{\"code\":\"ptnewsletter.43\",\"name\":\" Plaza Newsletter &gt; Newsletter Popup\",\"url\":\"http:\\/\\/vogue1.com\\/admin\\/index.php?route=extension\\/module\\/ptnewsletter&amp;user_token=xnnWteSDvwnsFB0RcuxeKelSkhVzLp3y&amp;module_id=43\"},{\"code\":\"ptslider.36\",\"name\":\" Plaza Slider &gt; Home slideshow 1\",\"url\":\"http:\\/\\/vogue1.com\\/admin\\/index.php?route=extension\\/module\\/ptslider&amp;user_token=xnnWteSDvwnsFB0RcuxeKelSkhVzLp3y&amp;module_id=36\"}]},\"format\":\"9\"}]}]}]},{\"class\":\"\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptstaticblock.38\",\"name\":\" Plaza Static Block &gt; Policy Block\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=T1DWsbBNEEmQTnyPfuSfGuisOPtrBtpM&amp;module_id=38\"},{\"code\":\"ptstaticblock.304\",\"name\":\" Plaza Static Block &gt; Static Top Store1\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=T1DWsbBNEEmQTnyPfuSfGuisOPtrBtpM&amp;module_id=304\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptproducts.355\",\"name\":\" Plaza Products  &gt; Deal Products 01\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=T1DWsbBNEEmQTnyPfuSfGuisOPtrBtpM&amp;module_id=355\"}]},\"format\":\"8\"},{\"info\":{\"module\":[{\"code\":\"ptproducts.354\",\"name\":\" Plaza Products  &gt; Best seller products 01\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=T1DWsbBNEEmQTnyPfuSfGuisOPtrBtpM&amp;module_id=354\"}]},\"format\":\"4\"}]}]}]},{\"class\":\"background-full\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptfeaturedcate.341\",\"name\":\" Plaza Special Categories &gt; Special Categories 03\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/ptfeaturedcate&amp;user_token=T1DWsbBNEEmQTnyPfuSfGuisOPtrBtpM&amp;module_id=341\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptproducts.350\",\"name\":\" Plaza Products  &gt; Product Tabs 01\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=T1DWsbBNEEmQTnyPfuSfGuisOPtrBtpM&amp;module_id=350\"},{\"code\":\"ptstaticblock.249\",\"name\":\" Plaza Static Block &gt; Static Middle Store1\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=T1DWsbBNEEmQTnyPfuSfGuisOPtrBtpM&amp;module_id=249\"},{\"code\":\"ptproducts.347\",\"name\":\" Plaza Products  &gt; Most Viewed Products 01\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=T1DWsbBNEEmQTnyPfuSfGuisOPtrBtpM&amp;module_id=347\"},{\"code\":\"ptblog.277\",\"name\":\" Plaza Blog &gt; Blog 1\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/ptblog&amp;user_token=T1DWsbBNEEmQTnyPfuSfGuisOPtrBtpM&amp;module_id=277\"},{\"code\":\"carousel.29\",\"name\":\"Carousel &gt; BrandSlider\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/carousel&amp;user_token=T1DWsbBNEEmQTnyPfuSfGuisOPtrBtpM&amp;module_id=29\"}]},\"format\":\"12\"}]}]}]}]}'),
(249, 'Static Middle Store1', 'ptstaticblock', '{\"name\":\"Static Middle Store1\",\"status\":\"1\",\"show_title\":\"0\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;pt-block static-middle-store1&quot;&gt;\\r\\n  &lt;div class=&quot;image&quot;&gt;\\r\\n    &lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/img-middle-store1.jpg&quot; alt=&quot;img1&quot;&gt;&lt;\\/a&gt;\\r\\n  &lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n\"},\"2\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;pt-block static-middle-store1&quot;&gt;\\r\\n  &lt;div class=&quot;image&quot;&gt;\\r\\n    &lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/img-middle-store1.jpg&quot; alt=&quot;img1&quot;&gt;&lt;\\/a&gt;\\r\\n  &lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n\"}}}'),
(356, 'Vertical Menu 01', 'ptmenu', '{\"name\":\"Vertical Menu 01\",\"status\":\"1\",\"menu\":\"12\",\"effect\":\"none\",\"menu_bg\":\"F2AD0F\",\"menu_text_color\":\"253237\",\"menu_pd_top\":\"0px\",\"menu_pd_right\":\"0px\",\"menu_pd_bottom\":\"0px\",\"menu_pd_left\":\"0px\",\"item_bg\":\"FFFFFF\",\"item_bg_hover\":\"FFFFFF\",\"item_font_color\":\"253237\",\"item_font_size\":\"1.4rem\",\"item_font_transform\":\"capitalize\",\"item_font_weight\":\"400\",\"item_font_color_hover\":\"F2AD0F\",\"item_font_weight_hover\":\"400\",\"item_pd_top\":\"10px\",\"item_pd_right\":\"15px\",\"item_pd_bottom\":\"10px\",\"item_pd_left\":\"15px\",\"item_show\":\"9\",\"mega_menu_bg\":\"FFFFFF\",\"mega_sub_item_font_color\":\"253237\",\"mega_sub_item_font_size\":\"1.4rem\",\"mega_sub_item_font_transform\":\"capitalize\",\"mega_sub_item_font_weight\":\"700\",\"mega_sub_item_hover_font_color\":\"F2AD0F\",\"mega_sub_item_hover_font_weight\":\"700\",\"mega_sub_sub_item_font_color\":\"888888\",\"mega_sub_sub_item_font_size\":\"1.4rem\",\"mega_sub_sub_item_font_transform\":\"capitalize\",\"mega_sub_sub_item_font_weight\":\"400\",\"mega_sub_sub_item_hover_font_color\":\"F2AD0F\",\"mega_sub_sub_item_hover_font_weight\":\"400\",\"mega_menu_pd_top\":\"16px\",\"mega_menu_pd_right\":\"30px\",\"mega_menu_pd_bottom\":\"18px\",\"mega_menu_pd_left\":\"30px\",\"second_item_bg\":\"FFFFFF\",\"second_item_bg_hover\":\"FFFFFF\",\"second_item_font_color\":\"253237\",\"second_item_font_size\":\"1.4rem\",\"second_item_font_transform\":\"capitalize\",\"second_item_font_weight\":\"700\",\"second_item_font_color_hover\":\"F2AD0F\",\"second_item_font_weight_hover\":\"700\",\"third_item_bg\":\"FFFFFF\",\"third_item_bg_hover\":\"FFFFFF\",\"third_item_font_color\":\"888888\",\"third_item_font_size\":\"1.4rem\",\"third_item_font_transform\":\"capitalize\",\"third_item_font_weight\":\"400\",\"third_item_font_color_hover\":\"F2AD0F\",\"third_item_font_weight_hover\":\"400\"}'),
(33, 'Horizontal Menu 01', 'ptmenu', '{\"name\":\"Horizontal Menu 01\",\"status\":\"1\",\"menu\":\"10\",\"effect\":\"none\",\"menu_bg\":\"FFFFFF\",\"menu_text_color\":\"FFFFFF\",\"menu_pd_top\":\"0px\",\"menu_pd_right\":\"0px\",\"menu_pd_bottom\":\"0px\",\"menu_pd_left\":\"0px\",\"item_bg\":\"FFFFFF\",\"item_bg_hover\":\"FFFFFF\",\"item_font_color\":\"253237\",\"item_font_size\":\"1.4rem\",\"item_font_transform\":\"capitalize\",\"item_font_weight\":\"700\",\"item_font_color_hover\":\"F2AD0F\",\"item_font_weight_hover\":\"700\",\"item_pd_top\":\"5px\",\"item_pd_right\":\"17px\",\"item_pd_bottom\":\"5px\",\"item_pd_left\":\"17px\",\"item_show\":\"5\",\"mega_menu_bg\":\"FFFFFF\",\"mega_sub_item_font_color\":\"253237\",\"mega_sub_item_font_size\":\"1.4rem\",\"mega_sub_item_font_transform\":\"capitalize\",\"mega_sub_item_font_weight\":\"700\",\"mega_sub_item_hover_font_color\":\"F2AD0F\",\"mega_sub_item_hover_font_weight\":\"700\",\"mega_sub_sub_item_font_color\":\"888888\",\"mega_sub_sub_item_font_size\":\"1.4rem\",\"mega_sub_sub_item_font_transform\":\"capitalize\",\"mega_sub_sub_item_font_weight\":\"400\",\"mega_sub_sub_item_hover_font_color\":\"F2AD0F\",\"mega_sub_sub_item_hover_font_weight\":\"400\",\"mega_menu_pd_top\":\"12px\",\"mega_menu_pd_right\":\"30px\",\"mega_menu_pd_bottom\":\"30px\",\"mega_menu_pd_left\":\"30px\",\"second_item_bg\":\"FFFFFF\",\"second_item_bg_hover\":\"FFFFFF\",\"second_item_font_color\":\"253237\",\"second_item_font_size\":\"1.4rem\",\"second_item_font_transform\":\"capitalize\",\"second_item_font_weight\":\"700\",\"second_item_font_color_hover\":\"F2AD0F\",\"second_item_font_weight_hover\":\"700\",\"third_item_bg\":\"FFFFFF\",\"third_item_bg_hover\":\"FFFFFF\",\"third_item_font_color\":\"888888\",\"third_item_font_size\":\"1.4rem\",\"third_item_font_transform\":\"capitalize\",\"third_item_font_weight\":\"400\",\"third_item_font_color_hover\":\"F2AD0F\",\"third_item_font_weight_hover\":\"400\"}'),
(46, 'Home slideshow 2', 'ptslider', '{\"name\":\"Home slideshow 2\",\"status\":\"1\",\"slider\":\"2\",\"width\":\"1110\",\"height\":\"520\"}'),
(47, 'Home slideshow 3', 'ptslider', '{\"name\":\"Home slideshow 3\",\"status\":\"1\",\"slider\":\"3\",\"width\":\"1920\",\"height\":\"610\"}'),
(35, 'Mobile Menu 01', 'ptmenu', '{\"name\":\"Mobile Menu 01\",\"status\":\"1\",\"menu\":\"11\",\"effect\":\"none\",\"menu_bg\":\"FFFFFF\",\"menu_text_color\":\"253237\",\"menu_pd_top\":\"0px\",\"menu_pd_right\":\"0px\",\"menu_pd_bottom\":\"0px\",\"menu_pd_left\":\"0px\",\"item_bg\":\"FFFFFF\",\"item_bg_hover\":\"FFFFFF\",\"item_font_color\":\"253237\",\"item_font_size\":\"1.5rem\",\"item_font_transform\":\"uppercase\",\"item_font_weight\":\"600\",\"item_font_color_hover\":\"F2AD0F\",\"item_font_weight_hover\":\"600\",\"item_pd_top\":\"5px\",\"item_pd_right\":\"0px\",\"item_pd_bottom\":\"5px\",\"item_pd_left\":\"0px\",\"item_show\":\"5\",\"mega_menu_bg\":\"FFFFFF\",\"mega_sub_item_font_color\":\"FFFFFF\",\"mega_sub_item_font_size\":\"1.4rem\",\"mega_sub_item_font_transform\":\"none\",\"mega_sub_item_font_weight\":\"300\",\"mega_sub_item_hover_font_color\":\"FFFFFF\",\"mega_sub_item_hover_font_weight\":\"300\",\"mega_sub_sub_item_font_color\":\"FFFFFF\",\"mega_sub_sub_item_font_size\":\"1.4rem\",\"mega_sub_sub_item_font_transform\":\"none\",\"mega_sub_sub_item_font_weight\":\"300\",\"mega_sub_sub_item_hover_font_color\":\"FFFFFF\",\"mega_sub_sub_item_hover_font_weight\":\"300\",\"mega_menu_pd_top\":\"0px\",\"mega_menu_pd_right\":\"0px\",\"mega_menu_pd_bottom\":\"0px\",\"mega_menu_pd_left\":\"0px\",\"second_item_bg\":\"FFFFFF\",\"second_item_bg_hover\":\"FFFFFF\",\"second_item_font_color\":\"253237\",\"second_item_font_size\":\"1.6rem\",\"second_item_font_transform\":\"capitalize\",\"second_item_font_weight\":\"600\",\"second_item_font_color_hover\":\"F2AD0F\",\"second_item_font_weight_hover\":\"600\",\"third_item_bg\":\"FFFFFF\",\"third_item_bg_hover\":\"FFFFFF\",\"third_item_font_color\":\"888888\",\"third_item_font_size\":\"1.4rem\",\"third_item_font_transform\":\"capitalize\",\"third_item_font_weight\":\"400\",\"third_item_font_color_hover\":\"F2AD0F\",\"third_item_font_weight_hover\":\"400\"}'),
(36, 'Home slideshow 1', 'ptslider', '{\"name\":\"Home slideshow 1\",\"status\":\"1\",\"slider\":\"1\",\"width\":\"1110\",\"height\":\"520\"}'),
(38, 'Policy Block', 'ptstaticblock', '{\"name\":\"Policy Block\",\"status\":\"1\",\"show_title\":\"0\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;policy-block&quot;&gt;\\r\\n  &lt;div class=&quot;inner&quot;&gt;\\r\\n    &lt;div class=&quot;col&quot;&gt;\\r\\n      &lt;div class=&quot;box&quot;&gt;\\r\\n        &lt;div class=&quot;inner&quot;&gt;\\r\\n          &lt;img src=&quot;image\\/catalog\\/ptblock\\/free_shipping.png&quot; alt=&quot;free_shipping&quot;&gt;\\r\\n          &lt;div class=&quot;text&quot;&gt;\\r\\n            &lt;label&gt;Free Shipping&lt;\\/label&gt;\\r\\n            &lt;p&gt;On all orders over $75.00&lt;\\/p&gt;\\r\\n          &lt;\\/div&gt;\\r\\n        &lt;\\/div&gt;\\r\\n      &lt;\\/div&gt;\\r\\n    &lt;\\/div&gt;\\r\\n    &lt;div class=&quot;col&quot;&gt;\\r\\n      &lt;div class=&quot;box&quot;&gt;\\r\\n        &lt;div class=&quot;inner&quot;&gt;\\r\\n          &lt;img src=&quot;image\\/catalog\\/ptblock\\/free_returns.png&quot; alt=&quot;return&quot;&gt;\\r\\n          &lt;div class=&quot;text&quot;&gt;\\r\\n            &lt;label&gt;Free Returns&lt;\\/label&gt;\\r\\n            &lt;p&gt;Returns are free within 9 days&lt;\\/p&gt;\\r\\n          &lt;\\/div&gt;\\r\\n        &lt;\\/div&gt;\\r\\n      &lt;\\/div&gt;\\r\\n    &lt;\\/div&gt;\\r\\n    &lt;div class=&quot;col&quot;&gt;\\r\\n      &lt;div class=&quot;box&quot;&gt;\\r\\n        &lt;div class=&quot;inner&quot;&gt;\\r\\n          &lt;img src=&quot;image\\/catalog\\/ptblock\\/payment_secure.png&quot; alt=&quot;payment-secure&quot;&gt;\\r\\n          &lt;div class=&quot;text&quot;&gt;\\r\\n            &lt;label&gt;100% Payment Secure&lt;\\/label&gt;\\r\\n            &lt;p&gt;Your payment are safe with us.&lt;\\/p&gt;\\r\\n          &lt;\\/div&gt;\\r\\n        &lt;\\/div&gt;\\r\\n      &lt;\\/div&gt;\\r\\n    &lt;\\/div&gt;\\r\\n    &lt;div class=&quot;col&quot;&gt;\\r\\n      &lt;div class=&quot;box&quot;&gt;\\r\\n        &lt;div class=&quot;inner&quot;&gt;\\r\\n          &lt;img src=&quot;image\\/catalog\\/ptblock\\/support247.png&quot; alt=&quot;support247&quot;&gt;\\r\\n          &lt;div class=&quot;text&quot;&gt;\\r\\n            &lt;label&gt;Support 24\\/7&lt;\\/label&gt;\\r\\n            &lt;p&gt;Contact us 24 hours a day&lt;\\/p&gt;\\r\\n          &lt;\\/div&gt;\\r\\n        &lt;\\/div&gt;\\r\\n      &lt;\\/div&gt;\\r\\n    &lt;\\/div&gt;\\r\\n   \\r\\n  &lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\"},\"2\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;policy-block&quot;&gt;\\r\\n  &lt;div class=&quot;inner&quot;&gt;\\r\\n    &lt;div class=&quot;col&quot;&gt;\\r\\n      &lt;div class=&quot;box&quot;&gt;\\r\\n        &lt;div class=&quot;inner&quot;&gt;\\r\\n          &lt;img src=&quot;image\\/catalog\\/ptblock\\/free_shipping.png&quot; alt=&quot;free_shipping&quot;&gt;\\r\\n          &lt;div class=&quot;text&quot;&gt;\\r\\n            &lt;label&gt;Free Shipping&lt;\\/label&gt;\\r\\n            &lt;p&gt;On all orders over $75.00&lt;\\/p&gt;\\r\\n          &lt;\\/div&gt;\\r\\n        &lt;\\/div&gt;\\r\\n      &lt;\\/div&gt;\\r\\n    &lt;\\/div&gt;\\r\\n    &lt;div class=&quot;col&quot;&gt;\\r\\n      &lt;div class=&quot;box&quot;&gt;\\r\\n        &lt;div class=&quot;inner&quot;&gt;\\r\\n          &lt;img src=&quot;image\\/catalog\\/ptblock\\/free_returns.png&quot; alt=&quot;return&quot;&gt;\\r\\n          &lt;div class=&quot;text&quot;&gt;\\r\\n            &lt;label&gt;Free Returns&lt;\\/label&gt;\\r\\n            &lt;p&gt;Returns are free within 9 days&lt;\\/p&gt;\\r\\n          &lt;\\/div&gt;\\r\\n        &lt;\\/div&gt;\\r\\n      &lt;\\/div&gt;\\r\\n    &lt;\\/div&gt;\\r\\n    &lt;div class=&quot;col&quot;&gt;\\r\\n      &lt;div class=&quot;box&quot;&gt;\\r\\n        &lt;div class=&quot;inner&quot;&gt;\\r\\n          &lt;img src=&quot;image\\/catalog\\/ptblock\\/payment_secure.png&quot; alt=&quot;payment-secure&quot;&gt;\\r\\n          &lt;div class=&quot;text&quot;&gt;\\r\\n            &lt;label&gt;100% Payment Secure&lt;\\/label&gt;\\r\\n            &lt;p&gt;Your payment are safe with us.&lt;\\/p&gt;\\r\\n          &lt;\\/div&gt;\\r\\n        &lt;\\/div&gt;\\r\\n      &lt;\\/div&gt;\\r\\n    &lt;\\/div&gt;\\r\\n    &lt;div class=&quot;col&quot;&gt;\\r\\n      &lt;div class=&quot;box&quot;&gt;\\r\\n        &lt;div class=&quot;inner&quot;&gt;\\r\\n          &lt;img src=&quot;image\\/catalog\\/ptblock\\/support247.png&quot; alt=&quot;support247&quot;&gt;\\r\\n          &lt;div class=&quot;text&quot;&gt;\\r\\n            &lt;label&gt;Support 24\\/7&lt;\\/label&gt;\\r\\n            &lt;p&gt;Contact us 24 hours a day&lt;\\/p&gt;\\r\\n          &lt;\\/div&gt;\\r\\n        &lt;\\/div&gt;\\r\\n      &lt;\\/div&gt;\\r\\n    &lt;\\/div&gt;\\r\\n   \\r\\n  &lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\"}}}'),
(41, 'Footer Contact us', 'ptstaticblock', '{\"name\":\"Footer Contact us\",\"status\":\"1\",\"show_title\":\"0\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;footer-contact-us&quot;&gt;\\r\\n  &lt;a href=&quot;#&quot; class=&quot;logo-footer&quot;&gt;&lt;img src=&quot;image\\/catalog\\/logo\\/safira.png&quot; alt=&quot;logo-footer&quot;&gt;&lt;\\/a&gt;\\r\\n  &lt;p&gt;We are a team of designers and developers that create high quality Magento, Prestashop, Opencart.&lt;\\/p&gt;\\r\\n  &lt;div class=&quot;footer-phone&quot;&gt;\\r\\n    &lt;label&gt;NEED HELP?&lt;\\/label&gt;\\r\\n    &lt;p&gt;(+800) 345 678, (+800) 123 456&lt;\\/p&gt;\\r\\n  &lt;\\/div&gt;\\r\\n  &lt;div class=&quot;social-block&quot;&gt;\\r\\n  &lt;div class=&quot;social&quot;&gt;\\r\\n    &lt;a href=&quot;https:\\/\\/www.facebook.com\\/PlazaThemes1\\/&quot; class=&quot;facebook&quot; target=&quot;_blank&quot; title=&quot;Facebook&quot;&gt;&lt;i class=&quot;ion-social-facebook&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;\\r\\n    &lt;a href=&quot;https:\\/\\/twitter.com\\/plazathemes&quot; target=&quot;_blank&quot; class=&quot;twitter&quot; title=&quot;Twitter&quot;&gt;&lt;i class=&quot;ion-social-twitter&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;\\r\\n    &lt;a href=&quot;#&quot; target=&quot;_blank&quot; class=&quot;instagram&quot; title=&quot;Instagram&quot;&gt;&lt;i class=&quot;ion-social-instagram-outline&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;\\r\\n    &lt;a href=&quot;https:\\/\\/www.youtube.com\\/user\\/plazathemes&quot; target=&quot;_blank&quot; class=&quot;youtube&quot; title=&quot;Youtube&quot;&gt;&lt;i class=&quot;ion-social-youtube-outline&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;\\r\\n  &lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n\\r\\n\"},\"2\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;footer-contact-us&quot;&gt;\\r\\n  &lt;a href=&quot;#&quot; class=&quot;logo-footer&quot;&gt;&lt;img src=&quot;image\\/catalog\\/logo\\/safira.png&quot; alt=&quot;logo-footer&quot;&gt;&lt;\\/a&gt;\\r\\n  &lt;p&gt;We are a team of designers and developers that create high quality Magento, Prestashop, Opencart.&lt;\\/p&gt;\\r\\n  &lt;div class=&quot;footer-phone&quot;&gt;\\r\\n    &lt;label&gt;NEED HELP?&lt;\\/label&gt;\\r\\n    &lt;p&gt;(+800) 345 678, (+800) 123 456&lt;\\/p&gt;\\r\\n  &lt;\\/div&gt;\\r\\n  &lt;div class=&quot;social-block&quot;&gt;\\r\\n  &lt;div class=&quot;social&quot;&gt;\\r\\n    &lt;a href=&quot;https:\\/\\/www.facebook.com\\/PlazaThemes1\\/&quot; class=&quot;facebook&quot; target=&quot;_blank&quot; title=&quot;Facebook&quot;&gt;&lt;i class=&quot;ion-social-facebook&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;\\r\\n    &lt;a href=&quot;https:\\/\\/twitter.com\\/plazathemes&quot; target=&quot;_blank&quot; class=&quot;twitter&quot; title=&quot;Twitter&quot;&gt;&lt;i class=&quot;ion-social-twitter&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;\\r\\n    &lt;a href=&quot;#&quot; target=&quot;_blank&quot; class=&quot;instagram&quot; title=&quot;Instagram&quot;&gt;&lt;i class=&quot;ion-social-instagram-outline&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;\\r\\n    &lt;a href=&quot;https:\\/\\/www.youtube.com\\/user\\/plazathemes&quot; target=&quot;_blank&quot; class=&quot;youtube&quot; title=&quot;Youtube&quot;&gt;&lt;i class=&quot;ion-social-youtube-outline&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;\\r\\n  &lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n\\r\\n\"}}}'),
(277, 'Blog 1', 'ptblog', '{\"name\":\"Blog 1\",\"status\":\"1\",\"list\":\"2\",\"width\":\"450\",\"height\":\"277\",\"auto\":\"0\",\"items\":\"3\",\"speed\":\"1000\",\"rows\":\"1\",\"navigation\":\"1\",\"pagination\":\"0\"}'),
(42, 'Newsletter Subscribe', 'ptnewsletter', '{\"name\":\"Newsletter Subscribe\",\"status\":\"1\",\"popup\":\"0\"}'),
(43, 'Newsletter Popup', 'ptnewsletter', '{\"name\":\"Newsletter Popup\",\"status\":\"1\",\"popup\":\"1\"}'),
(364, 'Product Tabs 03', 'ptproducts', '{\"name\":\"Product Tabs 03\",\"status\":\"1\",\"module_title\":{\"en-gb\":\"\",\"de-de\":\"\"},\"module_type\":\"multi_tabs\",\"show_module_description\":\"0\",\"module_description\":{\"en-gb\":\"\",\"de-de\":\"\"},\"slider_width\":\"370\",\"slider_height\":\"370\",\"auto\":\"0\",\"item\":{\"desktop\":\"5\",\"laptop\":\"4\",\"tablet\":\"4\",\"s_tablet\":\"3\",\"mobile\":\"2\",\"s_mobile\":\"2\"},\"row\":{\"desktop\":\"2\",\"laptop\":\"2\",\"tablet\":\"2\",\"s_tablet\":\"2\",\"mobile\":\"2\",\"s_mobile\":\"2\"},\"limit\":\"14\",\"speed\":\"500\",\"navigation\":\"1\",\"pagination\":\"0\",\"layout_type\":\"slider\",\"product_layout_type\":\"grid\",\"layout_classname\":\"nav-style-2\",\"show_price\":\"1\",\"show_cart\":\"1\",\"show_wishlist\":\"1\",\"show_compare\":\"1\",\"show_countdown\":\"0\",\"show_quickview\":\"1\",\"show_hover_image\":\"1\",\"show_swatches_image\":\"0\",\"show_product_description\":\"0\",\"show_label\":\"1\",\"single_product_collection\":\"specified\",\"single_specified_product\":\"\",\"single_category\":\"20\",\"single_category_product_type\":\"all\",\"single_category_product\":\"\",\"single_category_product_special_type\":\"\",\"single_product_special_type\":\"\",\"single_image_width\":\"100\",\"single_image_height\":\"100\",\"single_image\":\"\",\"single_image_link\":\"\",\"tabs\":[{\"title\":{\"en-gb\":\"New Arrivals\",\"de-de\":\"New Arrivals\"},\"title_image\":\"\",\"product_collection\":\"special\",\"category\":\"\",\"category_product_type\":\"all\",\"category_product_special_type\":\"\",\"product_special_type\":\"latest\",\"image_width\":\"100\",\"image_height\":\"100\",\"image\":\"\",\"image_link\":\"\"},{\"title\":{\"en-gb\":\"Random\",\"de-de\":\"Random\"},\"title_image\":\"\",\"product_collection\":\"special\",\"category\":\"\",\"category_product_type\":\"all\",\"category_product_special_type\":\"\",\"product_special_type\":\"random\",\"image_width\":\"100\",\"image_height\":\"100\",\"image\":\"\",\"image_link\":\"\"},{\"title\":{\"en-gb\":\"On Sale\",\"de-de\":\"On Sale\"},\"title_image\":\"\",\"product_collection\":\"special\",\"category\":\"\",\"category_product_type\":\"all\",\"category_product_special_type\":\"\",\"product_special_type\":\"special\",\"image_width\":\"100\",\"image_height\":\"100\",\"image\":\"\",\"image_link\":\"\"}],\"module_id\":364}'),
(301, 'Payment', 'ptstaticblock', '{\"name\":\"Payment\",\"status\":\"1\",\"show_title\":\"0\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;payment&quot;&gt;\\r\\n  &lt;img src=&quot;image\\/catalog\\/ptblock\\/payment.png&quot; alt=&quot;payment&quot;&gt;\\r\\n&lt;\\/div&gt;\"},\"2\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;payment&quot;&gt;\\r\\n  &lt;img src=&quot;image\\/catalog\\/ptblock\\/payment.png&quot; alt=&quot;payment&quot;&gt;\\r\\n&lt;\\/div&gt;\"}}}'),
(302, 'Static Sidebar', 'ptstaticblock', '{\"name\":\"Static Sidebar\",\"status\":\"1\",\"show_title\":\"0\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;pt-block static-sidebar&quot;&gt;\\r\\n  &lt;div class=&quot;image&quot;&gt;\\r\\n    &lt;a href=&quot;#&quot;&gt;\\r\\n      &lt;img src=&quot;image\\/catalog\\/ptblock\\/img-sidebar.jpg&quot; alt=&quot;img-sidebar&quot;&gt;\\r\\n    &lt;\\/a&gt;\\r\\n  &lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\"},\"2\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;pt-block static-sidebar&quot;&gt;\\r\\n  &lt;div class=&quot;image&quot;&gt;\\r\\n    &lt;a href=&quot;#&quot;&gt;\\r\\n      &lt;img src=&quot;image\\/catalog\\/ptblock\\/img-sidebar.jpg&quot; alt=&quot;img-sidebar&quot;&gt;\\r\\n    &lt;\\/a&gt;\\r\\n  &lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\"}}}'),
(255, 'Popular Tags', 'ptstaticblock', '{\"name\":\"Popular Tags\",\"status\":\"1\",\"show_title\":\"0\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;popular-tags&quot;&gt;\\r\\n&lt;div class=&quot;title&quot;&gt;&lt;h3&gt;Popular Tags&lt;\\/h3&gt;&lt;\\/div&gt;\\r\\n\\r\\n&lt;ul&gt;\\r\\n&lt;li&gt;                                                  \\t\\t\\t\\r\\n\\t&lt;a href=&quot;index.php?route=product\\/search&amp;amp;search=Amazon&quot;&gt;Amazon&lt;\\/a&gt;\\r\\n\\t&lt;a href=&quot;index.php?route=product\\/search&amp;amp;search=Apple&quot;&gt;Apple&lt;\\/a&gt;\\r\\n\\t&lt;a href=&quot;index.php?route=product\\/search&amp;amp;search=IPhone&quot;&gt;IPhone&lt;\\/a&gt;\\r\\n\\t&lt;a href=&quot;index.php?route=product\\/search&amp;amp;search=Headphone&quot;&gt;Headphone&lt;\\/a&gt;\\r\\n\\t&lt;a href=&quot;index.php?route=product\\/search&amp;amp;search=Beats&quot;&gt;Beats&lt;\\/a&gt;\\r\\n\\t&lt;a href=&quot;index.php?route=product\\/search&amp;amp;search=Bluetooth&quot;&gt;Bluetooth&lt;\\/a&gt;\\r\\n\\t&lt;a href=&quot;index.php?route=product\\/search&amp;amp;search=Speaker&quot;&gt;Speaker&lt;\\/a&gt;\\r\\n\\t&lt;a href=&quot;index.php?route=product\\/search&amp;amp;search=Bose&quot;&gt;Bose&lt;\\/a&gt;\\r\\n\\r\\n&lt;\\/li&gt;\\r\\n&lt;\\/ul&gt;\\r\\n&lt;\\/div&gt;\"},\"2\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;popular-tags&quot;&gt;\\r\\n&lt;div class=&quot;title&quot;&gt;&lt;h3&gt;Popular Tags&lt;\\/h3&gt;&lt;\\/div&gt;\\r\\n\\r\\n&lt;ul&gt;\\r\\n&lt;li&gt;                                                  \\t\\t\\t\\r\\n\\t&lt;a href=&quot;index.php?route=product\\/search&amp;amp;search=Amazon&quot;&gt;Amazon&lt;\\/a&gt;\\r\\n\\t&lt;a href=&quot;index.php?route=product\\/search&amp;amp;search=Apple&quot;&gt;Apple&lt;\\/a&gt;\\r\\n\\t&lt;a href=&quot;index.php?route=product\\/search&amp;amp;search=IPhone&quot;&gt;IPhone&lt;\\/a&gt;\\r\\n\\t&lt;a href=&quot;index.php?route=product\\/search&amp;amp;search=Headphone&quot;&gt;Headphone&lt;\\/a&gt;\\r\\n\\t&lt;a href=&quot;index.php?route=product\\/search&amp;amp;search=Beats&quot;&gt;Beats&lt;\\/a&gt;\\r\\n\\t&lt;a href=&quot;index.php?route=product\\/search&amp;amp;search=Bluetooth&quot;&gt;Bluetooth&lt;\\/a&gt;\\r\\n\\t&lt;a href=&quot;index.php?route=product\\/search&amp;amp;search=Speaker&quot;&gt;Speaker&lt;\\/a&gt;\\r\\n\\t&lt;a href=&quot;index.php?route=product\\/search&amp;amp;search=Bose&quot;&gt;Bose&lt;\\/a&gt;\\r\\n\\r\\n&lt;\\/li&gt;\\r\\n&lt;\\/ul&gt;\\r\\n&lt;\\/div&gt;\"}}}'),
(50, 'Home slideshow 4', 'ptslider', '{\"name\":\"Home slideshow 4\",\"status\":\"1\",\"slider\":\"4\",\"width\":\"930\",\"height\":\"520\"}'),
(190, 'Autopart 1 - Mobile Home Page', 'ptlayoutbuilder', '{\"name\":\"Autopart 1 - Mobile Home Page\",\"status\":\"1\",\"widget\":[{\"class\":\"\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptslider.56\",\"name\":\" Plaza Slider &gt; Mobile Home slideshow 1\",\"url\":\"http:\\/\\/antomi1.com\\/admin\\/index.php?route=extension\\/module\\/ptslider&amp;user_token=Ikwx42OVfE3CF9nDdtpNnDOAMuLaCq5F&amp;module_id=56\"},{\"code\":\"ptstaticblock.38\",\"name\":\" Plaza Static Block &gt; Policy Block\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=oT9dnYOOV7UMly3b9f887rDVDqUGG6Dv&amp;module_id=38\"},{\"code\":\"ptstaticblock.304\",\"name\":\" Plaza Static Block &gt; Static Top Store1\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=oT9dnYOOV7UMly3b9f887rDVDqUGG6Dv&amp;module_id=304\"},{\"code\":\"ptproducts.355\",\"name\":\" Plaza Products  &gt; Deal Products 01\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=oT9dnYOOV7UMly3b9f887rDVDqUGG6Dv&amp;module_id=355\"},{\"code\":\"ptproducts.354\",\"name\":\" Plaza Products  &gt; Best seller products 01\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=oT9dnYOOV7UMly3b9f887rDVDqUGG6Dv&amp;module_id=354\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"background-full\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptfeaturedcate.341\",\"name\":\" Plaza Special Categories &gt; Special Categories 01\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/ptfeaturedcate&amp;user_token=oT9dnYOOV7UMly3b9f887rDVDqUGG6Dv&amp;module_id=341\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptproducts.350\",\"name\":\" Plaza Products  &gt; Product Tabs 01\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=oT9dnYOOV7UMly3b9f887rDVDqUGG6Dv&amp;module_id=350\"},{\"code\":\"ptstaticblock.249\",\"name\":\" Plaza Static Block &gt; Static Middle Store1\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=oT9dnYOOV7UMly3b9f887rDVDqUGG6Dv&amp;module_id=249\"},{\"code\":\"ptproducts.347\",\"name\":\" Plaza Products  &gt; Most Viewed Products 01\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=oT9dnYOOV7UMly3b9f887rDVDqUGG6Dv&amp;module_id=347\"},{\"code\":\"ptblog.277\",\"name\":\" Plaza Blog &gt; Blog 1\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/ptblog&amp;user_token=oT9dnYOOV7UMly3b9f887rDVDqUGG6Dv&amp;module_id=277\"},{\"code\":\"carousel.29\",\"name\":\"Carousel &gt; BrandSlider\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/carousel&amp;user_token=oT9dnYOOV7UMly3b9f887rDVDqUGG6Dv&amp;module_id=29\"}]},\"format\":\"12\"}]}]}]}]}'),
(56, 'Mobile Home slideshow 1', 'ptslider', '{\"name\":\"Mobile Home slideshow 1\",\"status\":\"1\",\"slider\":\"1\",\"width\":\"767\",\"height\":\"359\"}'),
(57, 'Mobile Home slideshow 2', 'ptslider', '{\"name\":\"Mobile Home slideshow 2\",\"status\":\"1\",\"slider\":\"2\",\"width\":\"767\",\"height\":\"359\"}'),
(58, 'Mobile Home slideshow 3', 'ptslider', '{\"name\":\"Mobile Home slideshow 3\",\"status\":\"1\",\"slider\":\"3\",\"width\":\"767\",\"height\":\"244\"}'),
(59, 'Mobile Home slideshow 4', 'ptslider', '{\"name\":\"Mobile Home slideshow 4\",\"status\":\"1\",\"slider\":\"4\",\"width\":\"767\",\"height\":\"429\"}'),
(60, 'Autopart 2 - Home Page', 'ptlayoutbuilder', '{\"name\":\"Autopart 2 - Home Page\",\"status\":\"1\",\"widget\":[{\"class\":\"slider-group\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"format\":\"3\"},{\"info\":{\"module\":[{\"code\":\"ptajaxlogin\",\"name\":\" Plaza Quick Login\",\"url\":\"http:\\/\\/ocframe.com\\/admin\\/index.php?route=extension\\/module\\/ptajaxlogin&amp;user_token=a8466CsL9pHauWX11EEa5vKAo63tS4d4\"},{\"code\":\"ptnewsletter.43\",\"name\":\" Plaza Newsletter &gt; Newsletter Popup\",\"url\":\"http:\\/\\/ocframe.com\\/admin\\/index.php?route=extension\\/module\\/ptnewsletter&amp;user_token=a8466CsL9pHauWX11EEa5vKAo63tS4d4&amp;module_id=43\"},{\"code\":\"ptslider.46\",\"name\":\" Plaza Slider &gt; Home slideshow 2\",\"url\":\"http:\\/\\/vogue1.com\\/admin\\/index.php?route=extension\\/module\\/ptslider&amp;user_token=GVLYx6rxFhktHdJxIYK69fmLQfVvTPlc&amp;module_id=46\"}]},\"format\":\"9\"}]}]}]},{\"class\":\"\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptstaticblock.359\",\"name\":\" Plaza Static Block &gt; Static Top Store2\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=XAbvyAfRGwSQTafC03KVXGd9v5qk1vYf&amp;module_id=359\"},{\"code\":\"ptproducts.350\",\"name\":\" Plaza Products  &gt; Product Tabs 01\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=XAbvyAfRGwSQTafC03KVXGd9v5qk1vYf&amp;module_id=350\"},{\"code\":\"ptstaticblock.249\",\"name\":\" Plaza Static Block &gt; Static Middle Store1\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=XAbvyAfRGwSQTafC03KVXGd9v5qk1vYf&amp;module_id=249\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"background-full\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptproducts.361\",\"name\":\" Plaza Products  &gt; Deal Products 02\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=XAbvyAfRGwSQTafC03KVXGd9v5qk1vYf&amp;module_id=361\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptproducts.358\",\"name\":\" Plaza Products  &gt; Best seller products 02\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=XAbvyAfRGwSQTafC03KVXGd9v5qk1vYf&amp;module_id=358\"},{\"code\":\"ptstaticblock.360\",\"name\":\" Plaza Static Block &gt; Static Bottom Store2\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=XAbvyAfRGwSQTafC03KVXGd9v5qk1vYf&amp;module_id=360\"},{\"code\":\"ptfeaturedcate.341\",\"name\":\" Plaza Special Categories &gt; Special Categories 01\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/ptfeaturedcate&amp;user_token=XAbvyAfRGwSQTafC03KVXGd9v5qk1vYf&amp;module_id=341\"},{\"code\":\"ptblog.277\",\"name\":\" Plaza Blog &gt; Blog 1\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/ptblog&amp;user_token=XAbvyAfRGwSQTafC03KVXGd9v5qk1vYf&amp;module_id=277\"},{\"code\":\"carousel.29\",\"name\":\"Carousel &gt; BrandSlider\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/carousel&amp;user_token=XAbvyAfRGwSQTafC03KVXGd9v5qk1vYf&amp;module_id=29\"}]},\"format\":\"12\"}]}]}]}]}'),
(339, 'Testimonial 04', 'pttestimonial', '{\"name\":\"Testimonial 04\",\"status\":\"1\",\"width\":\"100\",\"height\":\"100\",\"auto\":\"0\",\"items\":\"1\",\"limit\":\"10\",\"speed\":\"500\",\"rows\":\"1\",\"navigation\":\"0\",\"pagination\":\"0\"}'),
(62, 'Autopart 2 - Mobile Home Page', 'ptlayoutbuilder', '{\"name\":\"Autopart 2 - Mobile Home Page\",\"status\":\"1\",\"widget\":[{\"class\":\"\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptslider.57\",\"name\":\" Plaza Slider &gt; Mobile Home slideshow 2\",\"url\":\"http:\\/\\/ocframe.com\\/admin\\/index.php?route=extension\\/module\\/ptslider&amp;user_token=a8466CsL9pHauWX11EEa5vKAo63tS4d4&amp;module_id=57\"},{\"code\":\"ptstaticblock.359\",\"name\":\" Plaza Static Block &gt; Static Top Store2\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=ZQOCVGH3nV2Ljn82ym8Lg8htWdPrYwoA&amp;module_id=359\"},{\"code\":\"ptproducts.350\",\"name\":\" Plaza Products  &gt; Product Tabs 01\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=ZQOCVGH3nV2Ljn82ym8Lg8htWdPrYwoA&amp;module_id=350\"},{\"code\":\"ptstaticblock.249\",\"name\":\" Plaza Static Block &gt; Static Middle Store1\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=ZQOCVGH3nV2Ljn82ym8Lg8htWdPrYwoA&amp;module_id=249\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"background-full\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptproducts.361\",\"name\":\" Plaza Products  &gt; Deal Products 02\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=ZQOCVGH3nV2Ljn82ym8Lg8htWdPrYwoA&amp;module_id=361\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptproducts.358\",\"name\":\" Plaza Products  &gt; Best seller products 02\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=ZQOCVGH3nV2Ljn82ym8Lg8htWdPrYwoA&amp;module_id=358\"},{\"code\":\"ptstaticblock.360\",\"name\":\" Plaza Static Block &gt; Static Bottom Store2\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=ZQOCVGH3nV2Ljn82ym8Lg8htWdPrYwoA&amp;module_id=360\"},{\"code\":\"ptfeaturedcate.341\",\"name\":\" Plaza Special Categories &gt; Special Categories 01\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/ptfeaturedcate&amp;user_token=ZQOCVGH3nV2Ljn82ym8Lg8htWdPrYwoA&amp;module_id=341\"},{\"code\":\"ptblog.277\",\"name\":\" Plaza Blog &gt; Blog 1\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/ptblog&amp;user_token=ZQOCVGH3nV2Ljn82ym8Lg8htWdPrYwoA&amp;module_id=277\"},{\"code\":\"carousel.29\",\"name\":\"Carousel &gt; BrandSlider\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/carousel&amp;user_token=ZQOCVGH3nV2Ljn82ym8Lg8htWdPrYwoA&amp;module_id=29\"}]},\"format\":\"12\"}]}]}]}]}'),
(350, 'Product Tabs 01', 'ptproducts', '{\"name\":\"Product Tabs 01\",\"status\":\"1\",\"module_title\":{\"en-gb\":\"\",\"de-de\":\"\"},\"module_type\":\"multi_tabs\",\"show_module_description\":\"0\",\"module_description\":{\"en-gb\":\"\",\"de-de\":\"\"},\"slider_width\":\"370\",\"slider_height\":\"370\",\"auto\":\"0\",\"item\":{\"desktop\":\"5\",\"laptop\":\"4\",\"tablet\":\"4\",\"s_tablet\":\"3\",\"mobile\":\"2\",\"s_mobile\":\"2\"},\"row\":{\"desktop\":\"1\",\"laptop\":\"1\",\"tablet\":\"1\",\"s_tablet\":\"1\",\"mobile\":\"1\",\"s_mobile\":\"1\"},\"limit\":\"14\",\"speed\":\"500\",\"navigation\":\"1\",\"pagination\":\"0\",\"layout_type\":\"slider\",\"product_layout_type\":\"grid\",\"layout_classname\":\"nav-style-2\",\"show_price\":\"1\",\"show_cart\":\"1\",\"show_wishlist\":\"1\",\"show_compare\":\"1\",\"show_countdown\":\"0\",\"show_quickview\":\"1\",\"show_hover_image\":\"1\",\"show_swatches_image\":\"0\",\"show_product_description\":\"0\",\"show_label\":\"1\",\"single_product_collection\":\"specified\",\"single_specified_product\":\"\",\"single_category\":\"20\",\"single_category_product_type\":\"all\",\"single_category_product\":\"\",\"single_category_product_special_type\":\"\",\"single_product_special_type\":\"\",\"single_image_width\":\"100\",\"single_image_height\":\"100\",\"single_image\":\"\",\"single_image_link\":\"\",\"tabs\":[{\"title\":{\"en-gb\":\"New Arrivals\",\"de-de\":\"New Arrivals\"},\"title_image\":\"\",\"product_collection\":\"special\",\"category\":\"\",\"category_product_type\":\"all\",\"category_product_special_type\":\"\",\"product_special_type\":\"latest\",\"image_width\":\"100\",\"image_height\":\"100\",\"image\":\"\",\"image_link\":\"\"},{\"title\":{\"en-gb\":\"Random\",\"de-de\":\"Random\"},\"title_image\":\"\",\"product_collection\":\"special\",\"category\":\"\",\"category_product_type\":\"all\",\"category_product_special_type\":\"\",\"product_special_type\":\"random\",\"image_width\":\"100\",\"image_height\":\"100\",\"image\":\"\",\"image_link\":\"\"},{\"title\":{\"en-gb\":\"On Sale\",\"de-de\":\"On Sale\"},\"title_image\":\"\",\"product_collection\":\"special\",\"category\":\"\",\"category_product_type\":\"all\",\"category_product_special_type\":\"\",\"product_special_type\":\"special\",\"image_width\":\"100\",\"image_height\":\"100\",\"image\":\"\",\"image_link\":\"\"}],\"module_id\":\"350\"}'),
(360, 'Static Bottom Store2', 'ptstaticblock', '{\"name\":\"Static Bottom Store2\",\"status\":\"1\",\"show_title\":\"0\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;pt-block static-bottom-store2&quot;&gt;\\r\\n  &lt;div class=&quot;image&quot;&gt;\\r\\n    &lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/img-bottom-store2.jpg&quot; alt=&quot;img1&quot;&gt;&lt;\\/a&gt;\\r\\n  &lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n\"},\"2\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;pt-block static-bottom-store2&quot;&gt;\\r\\n  &lt;div class=&quot;image&quot;&gt;\\r\\n    &lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/img-bottom-store2.jpg&quot; alt=&quot;img1&quot;&gt;&lt;\\/a&gt;\\r\\n  &lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n\"}}}'),
(361, 'Deal Products 02', 'ptproducts', '{\"name\":\"Deal Products 02\",\"status\":\"1\",\"module_title\":{\"en-gb\":\"Deals Of The Day\",\"de-de\":\"Deals Of The Day\"},\"module_type\":\"single_tab\",\"show_module_description\":\"0\",\"module_description\":{\"en-gb\":\"\",\"de-de\":\"\"},\"slider_width\":\"450\",\"slider_height\":\"450\",\"auto\":\"0\",\"item\":{\"desktop\":\"2\",\"laptop\":\"2\",\"tablet\":\"2\",\"s_tablet\":\"1\",\"mobile\":\"1\",\"s_mobile\":\"1\"},\"row\":{\"desktop\":\"1\",\"laptop\":\"1\",\"tablet\":\"1\",\"s_tablet\":\"1\",\"mobile\":\"1\",\"s_mobile\":\"1\"},\"limit\":\"10\",\"speed\":\"500\",\"navigation\":\"1\",\"pagination\":\"0\",\"layout_type\":\"slider\",\"product_layout_type\":\"list\",\"layout_classname\":\"countdown-module nav-style-2\",\"show_price\":\"1\",\"show_cart\":\"1\",\"show_wishlist\":\"1\",\"show_compare\":\"1\",\"show_countdown\":\"1\",\"show_quickview\":\"1\",\"show_hover_image\":\"1\",\"show_swatches_image\":\"0\",\"show_product_description\":\"0\",\"show_label\":\"0\",\"single_product_collection\":\"specified\",\"single_specified_product\":\"\",\"single_specified_products\":[\"41\",\"45\",\"29\"],\"single_category\":\"20\",\"single_category_product_type\":\"all\",\"single_category_product\":\"\",\"single_category_product_special_type\":\"\",\"single_product_special_type\":\"\",\"single_image_width\":\"100\",\"single_image_height\":\"100\",\"single_image\":\"\",\"single_image_link\":\"\",\"module_id\":\"361\"}'),
(354, 'Best seller products 01', 'ptproducts', '{\"name\":\"Best seller products 01\",\"status\":\"1\",\"module_title\":{\"en-gb\":\"Best seller products\",\"de-de\":\"Best seller products\"},\"module_type\":\"single_tab\",\"show_module_description\":\"0\",\"module_description\":{\"en-gb\":\"\",\"de-de\":\"\"},\"slider_width\":\"200\",\"slider_height\":\"200\",\"auto\":\"0\",\"item\":{\"desktop\":\"1\",\"laptop\":\"1\",\"tablet\":\"1\",\"s_tablet\":\"2\",\"mobile\":\"2\",\"s_mobile\":\"1\"},\"row\":{\"desktop\":\"3\",\"laptop\":\"3\",\"tablet\":\"3\",\"s_tablet\":\"3\",\"mobile\":\"3\",\"s_mobile\":\"3\"},\"limit\":\"9\",\"speed\":\"500\",\"navigation\":\"1\",\"pagination\":\"0\",\"layout_type\":\"slider\",\"product_layout_type\":\"list\",\"layout_classname\":\"list-module nav-style-2\",\"show_price\":\"1\",\"show_cart\":\"0\",\"show_wishlist\":\"0\",\"show_compare\":\"0\",\"show_countdown\":\"0\",\"show_quickview\":\"0\",\"show_hover_image\":\"0\",\"show_swatches_image\":\"0\",\"show_product_description\":\"0\",\"show_label\":\"0\",\"single_product_collection\":\"special\",\"single_specified_product\":\"\",\"single_category\":\"20\",\"single_category_product_type\":\"all\",\"single_category_product\":\"\",\"single_category_product_special_type\":\"\",\"single_product_special_type\":\"bestseller\",\"single_image_width\":\"100\",\"single_image_height\":\"100\",\"single_image\":\"\",\"single_image_link\":\"\",\"module_id\":\"354\"}'),
(355, 'Deal Products 01', 'ptproducts', '{\"name\":\"Deal Products 01\",\"status\":\"1\",\"module_title\":{\"en-gb\":\"Hot Deals\",\"de-de\":\"Hot Deals\"},\"module_type\":\"single_tab\",\"show_module_description\":\"0\",\"module_description\":{\"en-gb\":\"\",\"de-de\":\"\"},\"slider_width\":\"445\",\"slider_height\":\"445\",\"auto\":\"0\",\"item\":{\"desktop\":\"1\",\"laptop\":\"1\",\"tablet\":\"1\",\"s_tablet\":\"1\",\"mobile\":\"1\",\"s_mobile\":\"1\"},\"row\":{\"desktop\":\"1\",\"laptop\":\"1\",\"tablet\":\"1\",\"s_tablet\":\"1\",\"mobile\":\"1\",\"s_mobile\":\"1\"},\"limit\":\"5\",\"speed\":\"500\",\"navigation\":\"1\",\"pagination\":\"0\",\"layout_type\":\"slider\",\"product_layout_type\":\"other\",\"layout_classname\":\"countdown-module nav-style-2\",\"show_price\":\"1\",\"show_cart\":\"1\",\"show_wishlist\":\"1\",\"show_compare\":\"1\",\"show_countdown\":\"1\",\"show_quickview\":\"1\",\"show_hover_image\":\"1\",\"show_swatches_image\":\"0\",\"show_product_description\":\"0\",\"show_label\":\"0\",\"single_product_collection\":\"specified\",\"single_specified_product\":\"\",\"single_specified_products\":[\"41\",\"45\",\"29\"],\"single_category\":\"20\",\"single_category_product_type\":\"all\",\"single_category_product\":\"\",\"single_category_product_special_type\":\"\",\"single_product_special_type\":\"\",\"single_image_width\":\"100\",\"single_image_height\":\"100\",\"single_image\":\"\",\"single_image_link\":\"\",\"module_id\":\"355\"}'),
(362, 'Vertical Menu 02', 'ptmenu', '{\"name\":\"Vertical Menu 02\",\"status\":\"1\",\"menu\":\"12\",\"effect\":\"none\",\"menu_bg\":\"F2AD0F\",\"menu_text_color\":\"253237\",\"menu_pd_top\":\"0px\",\"menu_pd_right\":\"0px\",\"menu_pd_bottom\":\"0px\",\"menu_pd_left\":\"0px\",\"item_bg\":\"FFFFFF\",\"item_bg_hover\":\"FFFFFF\",\"item_font_color\":\"253237\",\"item_font_size\":\"1.4rem\",\"item_font_transform\":\"capitalize\",\"item_font_weight\":\"400\",\"item_font_color_hover\":\"F2AD0F\",\"item_font_weight_hover\":\"400\",\"item_pd_top\":\"10px\",\"item_pd_right\":\"15px\",\"item_pd_bottom\":\"10px\",\"item_pd_left\":\"15px\",\"item_show\":\"11\",\"mega_menu_bg\":\"FFFFFF\",\"mega_sub_item_font_color\":\"253237\",\"mega_sub_item_font_size\":\"1.4rem\",\"mega_sub_item_font_transform\":\"capitalize\",\"mega_sub_item_font_weight\":\"700\",\"mega_sub_item_hover_font_color\":\"F2AD0F\",\"mega_sub_item_hover_font_weight\":\"700\",\"mega_sub_sub_item_font_color\":\"888888\",\"mega_sub_sub_item_font_size\":\"1.4rem\",\"mega_sub_sub_item_font_transform\":\"capitalize\",\"mega_sub_sub_item_font_weight\":\"400\",\"mega_sub_sub_item_hover_font_color\":\"F2AD0F\",\"mega_sub_sub_item_hover_font_weight\":\"400\",\"mega_menu_pd_top\":\"16px\",\"mega_menu_pd_right\":\"30px\",\"mega_menu_pd_bottom\":\"18px\",\"mega_menu_pd_left\":\"30px\",\"second_item_bg\":\"FFFFFF\",\"second_item_bg_hover\":\"FFFFFF\",\"second_item_font_color\":\"253237\",\"second_item_font_size\":\"1.4rem\",\"second_item_font_transform\":\"capitalize\",\"second_item_font_weight\":\"700\",\"second_item_font_color_hover\":\"F2AD0F\",\"second_item_font_weight_hover\":\"700\",\"third_item_bg\":\"FFFFFF\",\"third_item_bg_hover\":\"FFFFFF\",\"third_item_font_color\":\"888888\",\"third_item_font_size\":\"1.4rem\",\"third_item_font_transform\":\"capitalize\",\"third_item_font_weight\":\"400\",\"third_item_font_color_hover\":\"F2AD0F\",\"third_item_font_weight_hover\":\"400\"}');
INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
(63, 'Autopart 3 - Home Page', 'ptlayoutbuilder', '{\"name\":\"Autopart 3 - Home Page\",\"status\":\"1\",\"widget\":[{\"class\":\"full-width\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptnewsletter.43\",\"name\":\" Plaza Newsletter &gt; Newsletter Popup\",\"url\":\"http:\\/\\/ocframe.com\\/admin\\/index.php?route=extension\\/module\\/ptnewsletter&amp;user_token=a8466CsL9pHauWX11EEa5vKAo63tS4d4&amp;module_id=43\"},{\"code\":\"ptajaxlogin\",\"name\":\" Plaza Quick Login\",\"url\":\"http:\\/\\/ocframe.com\\/admin\\/index.php?route=extension\\/module\\/ptajaxlogin&amp;user_token=a8466CsL9pHauWX11EEa5vKAo63tS4d4\"},{\"code\":\"ptslider.47\",\"name\":\" Plaza Slider &gt; Home slideshow 3\",\"url\":\"http:\\/\\/ocframe.com\\/admin\\/index.php?route=extension\\/module\\/ptslider&amp;user_token=a8466CsL9pHauWX11EEa5vKAo63tS4d4&amp;module_id=47\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"carousel.29\",\"name\":\"Carousel &gt; BrandSlider\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/carousel&amp;user_token=CxRq6cEGUT26gMveAiEhfJGl59d3X1PE&amp;module_id=29\"},{\"code\":\"ptstaticblock.359\",\"name\":\" Plaza Static Block &gt; Static Top Store2\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=CxRq6cEGUT26gMveAiEhfJGl59d3X1PE&amp;module_id=359\"},{\"code\":\"ptproducts.364\",\"name\":\" Plaza Products  &gt; Product Tabs 03\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=CxRq6cEGUT26gMveAiEhfJGl59d3X1PE&amp;module_id=364\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"special-full\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptfeaturedcate.341\",\"name\":\" Plaza Special Categories &gt; Special Categories 01\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/ptfeaturedcate&amp;user_token=CxRq6cEGUT26gMveAiEhfJGl59d3X1PE&amp;module_id=341\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptproducts.347\",\"name\":\" Plaza Products  &gt; Most Viewed Products 01\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=CxRq6cEGUT26gMveAiEhfJGl59d3X1PE&amp;module_id=347\"},{\"code\":\"ptstaticblock.360\",\"name\":\" Plaza Static Block &gt; Static Bottom Store2\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=CxRq6cEGUT26gMveAiEhfJGl59d3X1PE&amp;module_id=360\"},{\"code\":\"ptblog.277\",\"name\":\" Plaza Blog &gt; Blog 1\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/ptblog&amp;user_token=CxRq6cEGUT26gMveAiEhfJGl59d3X1PE&amp;module_id=277\"}]},\"format\":\"12\"}]}]}]}]}'),
(341, 'Special Categories 01', 'ptfeaturedcate', '{\"name\":\"Special Categories 01\",\"status\":\"1\",\"width\":\"150\",\"height\":\"150\",\"limit\":\"12\",\"item\":\"3\",\"speed\":\"500\",\"autoplay\":\"0\",\"rows\":\"2\",\"shownextback\":\"1\",\"shownav\":\"0\",\"slider\":\"1\",\"showcatedes\":\"0\",\"showsub\":\"1\",\"showsubnumber\":\"4\",\"use_cate_second_image\":\"1\"}'),
(68, 'Autopart 3 - Mobile Home Page', 'ptlayoutbuilder', '{\"name\":\"Autopart 3 - Mobile Home Page\",\"status\":\"1\",\"widget\":[{\"class\":\"full-width\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptslider.58\",\"name\":\" Plaza Slider &gt; Mobile Home slideshow 3\",\"url\":\"http:\\/\\/ocframe.com\\/admin\\/index.php?route=extension\\/module\\/ptslider&amp;user_token=a8466CsL9pHauWX11EEa5vKAo63tS4d4&amp;module_id=58\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"carousel.29\",\"name\":\"Carousel &gt; BrandSlider\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/carousel&amp;user_token=CxRq6cEGUT26gMveAiEhfJGl59d3X1PE&amp;module_id=29\"},{\"code\":\"ptstaticblock.359\",\"name\":\" Plaza Static Block &gt; Static Top Store2\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=CxRq6cEGUT26gMveAiEhfJGl59d3X1PE&amp;module_id=359\"},{\"code\":\"ptproducts.364\",\"name\":\" Plaza Products  &gt; Product Tabs 03\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=CxRq6cEGUT26gMveAiEhfJGl59d3X1PE&amp;module_id=364\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"special-full\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptfeaturedcate.341\",\"name\":\" Plaza Special Categories &gt; Special Categories 01\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/ptfeaturedcate&amp;user_token=CxRq6cEGUT26gMveAiEhfJGl59d3X1PE&amp;module_id=341\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptproducts.347\",\"name\":\" Plaza Products  &gt; Most Viewed Products 01\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=CxRq6cEGUT26gMveAiEhfJGl59d3X1PE&amp;module_id=347\"},{\"code\":\"ptstaticblock.360\",\"name\":\" Plaza Static Block &gt; Static Bottom Store2\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=CxRq6cEGUT26gMveAiEhfJGl59d3X1PE&amp;module_id=360\"},{\"code\":\"ptblog.277\",\"name\":\" Plaza Blog &gt; Blog 1\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/ptblog&amp;user_token=CxRq6cEGUT26gMveAiEhfJGl59d3X1PE&amp;module_id=277\"}]},\"format\":\"12\"}]}]}]}]}'),
(363, 'Horizontal Menu 02', 'ptmenu', '{\"name\":\"Horizontal Menu 02\",\"status\":\"1\",\"menu\":\"10\",\"effect\":\"none\",\"menu_bg\":\"FFFFFF\",\"menu_text_color\":\"FFFFFF\",\"menu_pd_top\":\"0px\",\"menu_pd_right\":\"0px\",\"menu_pd_bottom\":\"0px\",\"menu_pd_left\":\"0px\",\"item_bg\":\"FFFFFF\",\"item_bg_hover\":\"FFFFFF\",\"item_font_color\":\"253237\",\"item_font_size\":\"1.4rem\",\"item_font_transform\":\"capitalize\",\"item_font_weight\":\"700\",\"item_font_color_hover\":\"253237\",\"item_font_weight_hover\":\"700\",\"item_pd_top\":\"5px\",\"item_pd_right\":\"17px\",\"item_pd_bottom\":\"5px\",\"item_pd_left\":\"17px\",\"item_show\":\"5\",\"mega_menu_bg\":\"FFFFFF\",\"mega_sub_item_font_color\":\"253237\",\"mega_sub_item_font_size\":\"1.4rem\",\"mega_sub_item_font_transform\":\"capitalize\",\"mega_sub_item_font_weight\":\"700\",\"mega_sub_item_hover_font_color\":\"F2AD0F\",\"mega_sub_item_hover_font_weight\":\"700\",\"mega_sub_sub_item_font_color\":\"888888\",\"mega_sub_sub_item_font_size\":\"1.4rem\",\"mega_sub_sub_item_font_transform\":\"capitalize\",\"mega_sub_sub_item_font_weight\":\"400\",\"mega_sub_sub_item_hover_font_color\":\"F2AD0F\",\"mega_sub_sub_item_hover_font_weight\":\"400\",\"mega_menu_pd_top\":\"12px\",\"mega_menu_pd_right\":\"30px\",\"mega_menu_pd_bottom\":\"30px\",\"mega_menu_pd_left\":\"30px\",\"second_item_bg\":\"FFFFFF\",\"second_item_bg_hover\":\"FFFFFF\",\"second_item_font_color\":\"253237\",\"second_item_font_size\":\"1.4rem\",\"second_item_font_transform\":\"capitalize\",\"second_item_font_weight\":\"700\",\"second_item_font_color_hover\":\"F2AD0F\",\"second_item_font_weight_hover\":\"700\",\"third_item_bg\":\"FFFFFF\",\"third_item_bg_hover\":\"FFFFFF\",\"third_item_font_color\":\"888888\",\"third_item_font_size\":\"1.4rem\",\"third_item_font_transform\":\"capitalize\",\"third_item_font_weight\":\"400\",\"third_item_font_color_hover\":\"F2AD0F\",\"third_item_font_weight_hover\":\"400\"}'),
(71, 'Autopart 4 - Mobile Home Page', 'ptlayoutbuilder', '{\"name\":\"Autopart 4 - Mobile Home Page\",\"status\":\"1\",\"widget\":[{\"class\":\"\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptslider.59\",\"name\":\" Plaza Slider &gt; Mobile Home slideshow 4\",\"url\":\"http:\\/\\/ocframe.com\\/admin\\/index.php?route=extension\\/module\\/ptslider&amp;user_token=a8466CsL9pHauWX11EEa5vKAo63tS4d4&amp;module_id=59\"},{\"code\":\"ptstaticblock.370\",\"name\":\" Plaza Static Block &gt; Static Top Store4\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=uB45Kr5DjQPWsowEEWB98VqmjHA8blvy&amp;module_id=370\"},{\"code\":\"ptproducts.366\",\"name\":\" Plaza Products  &gt; Product Tabs 04\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=uB45Kr5DjQPWsowEEWB98VqmjHA8blvy&amp;module_id=366\"},{\"code\":\"ptstaticblock.371\",\"name\":\" Plaza Static Block &gt; Static Middle Store4\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=uB45Kr5DjQPWsowEEWB98VqmjHA8blvy&amp;module_id=371\"},{\"code\":\"ptproducts.374\",\"name\":\" Plaza Products  &gt; Deal Products 04\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=uB45Kr5DjQPWsowEEWB98VqmjHA8blvy&amp;module_id=374\"},{\"code\":\"ptproducts.367\",\"name\":\" Plaza Products  &gt; Product Category 1\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=uB45Kr5DjQPWsowEEWB98VqmjHA8blvy&amp;module_id=367\"},{\"code\":\"ptproducts.368\",\"name\":\" Plaza Products  &gt; Product Category 2\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=uB45Kr5DjQPWsowEEWB98VqmjHA8blvy&amp;module_id=368\"},{\"code\":\"carousel.29\",\"name\":\"Carousel &gt; BrandSlider\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/carousel&amp;user_token=uB45Kr5DjQPWsowEEWB98VqmjHA8blvy&amp;module_id=29\"},{\"code\":\"ptstaticblock.372\",\"name\":\" Plaza Static Block &gt; Static Sidebar Home Store4\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=uB45Kr5DjQPWsowEEWB98VqmjHA8blvy&amp;module_id=372\"},{\"code\":\"ptproducts.369\",\"name\":\" Plaza Products  &gt; Most Viewed Products 04\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=uB45Kr5DjQPWsowEEWB98VqmjHA8blvy&amp;module_id=369\"},{\"code\":\"ptblog.373\",\"name\":\" Plaza Blog &gt; Blog 4\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/ptblog&amp;user_token=uB45Kr5DjQPWsowEEWB98VqmjHA8blvy&amp;module_id=373\"},{\"code\":\"pttestimonial.339\",\"name\":\" Plaza Testimonial &gt; Testimonial 04\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/pttestimonial&amp;user_token=uB45Kr5DjQPWsowEEWB98VqmjHA8blvy&amp;module_id=339\"}]},\"format\":\"12\"}]}]}]}]}'),
(204, 'Autopart 4 - Home Page', 'ptlayoutbuilder', '{\"name\":\"Autopart 4 - Home Page\",\"status\":\"1\",\"widget\":[{\"class\":\"slider-group\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptnewsletter.43\",\"name\":\" Plaza Newsletter &gt; Newsletter Popup\",\"url\":\"http:\\/\\/vogue1.com\\/admin\\/index.php?route=extension\\/module\\/ptnewsletter&amp;user_token=ALFfcKAGHiCnUiYCepCm5cOhnDnhJwUo&amp;module_id=43\"},{\"code\":\"ptajaxlogin\",\"name\":\" Plaza Quick Login\",\"url\":\"http:\\/\\/vogue1.com\\/admin\\/index.php?route=extension\\/module\\/ptajaxlogin&amp;user_token=ALFfcKAGHiCnUiYCepCm5cOhnDnhJwUo\"},{\"code\":\"ptslider.50\",\"name\":\" Plaza Slider &gt; Home slideshow 4\",\"url\":\"http:\\/\\/dorno1.com\\/admin\\/index.php?route=extension\\/module\\/ptslider&amp;user_token=GFUMXMjdZ2BK5VckWxKGQmQHuNt7lIpl&amp;module_id=50\"}]},\"format\":\"8\"},{\"info\":{\"module\":[{\"code\":\"ptstaticblock.370\",\"name\":\" Plaza Static Block &gt; Static Top Store4\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=pzsaJFBt0gtSQP2moSNKAmNtMI9HtDEh&amp;module_id=370\"}]},\"format\":\"4\"}]}]}]},{\"class\":\"home-content-store4\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptmenu.356\",\"name\":\" Plaza Ultimate Menu &gt; Vertical Menu 01\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/ptmenu&amp;user_token=pzsaJFBt0gtSQP2moSNKAmNtMI9HtDEh&amp;module_id=356\"},{\"code\":\"ptstaticblock.372\",\"name\":\" Plaza Static Block &gt; Static Sidebar Home Store4\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=pzsaJFBt0gtSQP2moSNKAmNtMI9HtDEh&amp;module_id=372\"},{\"code\":\"ptproducts.369\",\"name\":\" Plaza Products  &gt; Most Viewed Products 04\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=pzsaJFBt0gtSQP2moSNKAmNtMI9HtDEh&amp;module_id=369\"},{\"code\":\"ptblog.373\",\"name\":\" Plaza Blog &gt; Blog 4\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/ptblog&amp;user_token=pzsaJFBt0gtSQP2moSNKAmNtMI9HtDEh&amp;module_id=373\"},{\"code\":\"pttestimonial.339\",\"name\":\" Plaza Testimonial &gt; Testimonial 04\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/pttestimonial&amp;user_token=pzsaJFBt0gtSQP2moSNKAmNtMI9HtDEh&amp;module_id=339\"}]},\"format\":\"3\"},{\"info\":{\"module\":[{\"code\":\"ptproducts.366\",\"name\":\" Plaza Products  &gt; Product Tabs 04\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=pzsaJFBt0gtSQP2moSNKAmNtMI9HtDEh&amp;module_id=366\"},{\"code\":\"ptstaticblock.371\",\"name\":\" Plaza Static Block &gt; Static Middle Store4\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=pzsaJFBt0gtSQP2moSNKAmNtMI9HtDEh&amp;module_id=371\"},{\"code\":\"ptproducts.374\",\"name\":\" Plaza Products  &gt; Deal Products 04\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=lnbCfYk3UbxEXnJze5VmE6YWXornHWRM&amp;module_id=374\"},{\"code\":\"ptproducts.367\",\"name\":\" Plaza Products  &gt; Product Category 1\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=pzsaJFBt0gtSQP2moSNKAmNtMI9HtDEh&amp;module_id=367\"},{\"code\":\"ptproducts.368\",\"name\":\" Plaza Products  &gt; Product Category 2\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=pzsaJFBt0gtSQP2moSNKAmNtMI9HtDEh&amp;module_id=368\"},{\"code\":\"carousel.29\",\"name\":\"Carousel &gt; BrandSlider\",\"url\":\"http:\\/\\/safiraautopart1.com\\/admin\\/index.php?route=extension\\/module\\/carousel&amp;user_token=pzsaJFBt0gtSQP2moSNKAmNtMI9HtDEh&amp;module_id=29\"}]},\"format\":\"9\"}]}]}]}]}'),
(304, 'Static Top Store1', 'ptstaticblock', '{\"name\":\"Static Top Store1\",\"status\":\"1\",\"show_title\":\"0\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;pt-block static-top-store1&quot;&gt;\\r\\n  &lt;div class=&quot;row&quot;&gt;\\r\\n    &lt;div class=&quot;col col-1 col-sm-6 col-xs-12&quot;&gt;\\r\\n      &lt;div class=&quot;image&quot;&gt;\\r\\n        &lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/img1-top-store1.jpg&quot; alt=&quot;img1&quot;&gt;&lt;\\/a&gt;\\r\\n      &lt;\\/div&gt;\\r\\n    &lt;\\/div&gt;\\r\\n    &lt;div class=&quot;col col-2 col-sm-6 col-xs-12&quot;&gt;\\r\\n      &lt;div class=&quot;image&quot;&gt;\\r\\n        &lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/img2-top-store1.jpg&quot; alt=&quot;img2&quot;&gt;&lt;\\/a&gt;\\r\\n      &lt;\\/div&gt;\\r\\n      &lt;div class=&quot;image&quot;&gt;\\r\\n        &lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/img3-top-store1.jpg&quot; alt=&quot;img3&quot;&gt;&lt;\\/a&gt;\\r\\n      &lt;\\/div&gt;\\r\\n    &lt;\\/div&gt;\\r\\n  &lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n\"},\"2\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;pt-block static-top-store1&quot;&gt;\\r\\n  &lt;div class=&quot;row&quot;&gt;\\r\\n    &lt;div class=&quot;col col-1 col-sm-6 col-xs-12&quot;&gt;\\r\\n      &lt;div class=&quot;image&quot;&gt;\\r\\n        &lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/img1-top-store1.jpg&quot; alt=&quot;img1&quot;&gt;&lt;\\/a&gt;\\r\\n      &lt;\\/div&gt;\\r\\n    &lt;\\/div&gt;\\r\\n    &lt;div class=&quot;col col-2 col-sm-6 col-xs-12&quot;&gt;\\r\\n      &lt;div class=&quot;image&quot;&gt;\\r\\n        &lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/img2-top-store1.jpg&quot; alt=&quot;img2&quot;&gt;&lt;\\/a&gt;\\r\\n      &lt;\\/div&gt;\\r\\n      &lt;div class=&quot;image&quot;&gt;\\r\\n        &lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/img3-top-store1.jpg&quot; alt=&quot;img3&quot;&gt;&lt;\\/a&gt;\\r\\n      &lt;\\/div&gt;\\r\\n    &lt;\\/div&gt;\\r\\n  &lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n\"}}}'),
(357, 'Footer Software', 'ptstaticblock', '{\"name\":\"Footer Software\",\"status\":\"1\",\"show_title\":\"0\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;footer-software&quot;&gt;\\r\\n  &lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/apple_store.png&quot; alt=&quot;apple_store&quot;&gt;&lt;\\/a&gt;\\r\\n  &lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/google_play.png&quot; alt=&quot;google_play&quot;&gt;&lt;\\/a&gt;\\r\\n&lt;\\/div&gt;\"},\"2\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;footer-software&quot;&gt;\\r\\n  &lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/apple_store.png&quot; alt=&quot;apple_store&quot;&gt;&lt;\\/a&gt;\\r\\n  &lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/google_play.png&quot; alt=&quot;google_play&quot;&gt;&lt;\\/a&gt;\\r\\n&lt;\\/div&gt;\"}}}'),
(359, 'Static Top Store2', 'ptstaticblock', '{\"name\":\"Static Top Store2\",\"status\":\"1\",\"show_title\":\"0\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;pt-block static-top-store2&quot;&gt;\\r\\n  &lt;div class=&quot;row&quot;&gt;\\r\\n    &lt;div class=&quot;col col-1 col-sm-6 col-xs-12&quot;&gt;\\r\\n      &lt;div class=&quot;image&quot;&gt;\\r\\n        &lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/img1-top-store2.jpg&quot; alt=&quot;img1&quot;&gt;&lt;\\/a&gt;\\r\\n      &lt;\\/div&gt;\\r\\n    &lt;\\/div&gt;\\r\\n    &lt;div class=&quot;col col-2 col-sm-6 col-xs-12&quot;&gt;\\r\\n      &lt;div class=&quot;image&quot;&gt;\\r\\n        &lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/img2-top-store2.jpg&quot; alt=&quot;img2&quot;&gt;&lt;\\/a&gt;\\r\\n      &lt;\\/div&gt;\\r\\n    &lt;\\/div&gt;\\r\\n  &lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n\"},\"2\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;pt-block static-top-store2&quot;&gt;\\r\\n  &lt;div class=&quot;row&quot;&gt;\\r\\n    &lt;div class=&quot;col col-1 col-sm-6 col-xs-12&quot;&gt;\\r\\n      &lt;div class=&quot;image&quot;&gt;\\r\\n        &lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/img1-top-store2.jpg&quot; alt=&quot;img1&quot;&gt;&lt;\\/a&gt;\\r\\n      &lt;\\/div&gt;\\r\\n    &lt;\\/div&gt;\\r\\n    &lt;div class=&quot;col col-2 col-sm-6 col-xs-12&quot;&gt;\\r\\n      &lt;div class=&quot;image&quot;&gt;\\r\\n        &lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/img2-top-store2.jpg&quot; alt=&quot;img2&quot;&gt;&lt;\\/a&gt;\\r\\n      &lt;\\/div&gt;\\r\\n    &lt;\\/div&gt;\\r\\n  &lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n\"}}}'),
(347, 'Most Viewed Products 01', 'ptproducts', '{\"name\":\"Most Viewed Products 01\",\"status\":\"1\",\"module_title\":{\"en-gb\":\"Most Viewed Products\",\"de-de\":\"Most Viewed Products\"},\"module_type\":\"single_tab\",\"show_module_description\":\"0\",\"module_description\":{\"en-gb\":\"&lt;p&gt;Add most viewed products to weekly line up&lt;\\/p&gt;\",\"de-de\":\"&lt;p&gt;Add most viewed products to weekly line up&lt;\\/p&gt;\"},\"slider_width\":\"200\",\"slider_height\":\"200\",\"auto\":\"0\",\"item\":{\"desktop\":\"3\",\"laptop\":\"3\",\"tablet\":\"3\",\"s_tablet\":\"2\",\"mobile\":\"2\",\"s_mobile\":\"1\"},\"row\":{\"desktop\":\"2\",\"laptop\":\"2\",\"tablet\":\"2\",\"s_tablet\":\"2\",\"mobile\":\"2\",\"s_mobile\":\"2\"},\"limit\":\"10\",\"speed\":\"500\",\"navigation\":\"1\",\"pagination\":\"0\",\"layout_type\":\"slider\",\"product_layout_type\":\"list\",\"layout_classname\":\"list-module style2 nav-style-2\",\"show_price\":\"1\",\"show_cart\":\"0\",\"show_wishlist\":\"0\",\"show_compare\":\"0\",\"show_countdown\":\"0\",\"show_quickview\":\"0\",\"show_hover_image\":\"0\",\"show_swatches_image\":\"0\",\"show_product_description\":\"0\",\"show_label\":\"0\",\"single_product_collection\":\"special\",\"single_specified_product\":\"\",\"single_category\":\"20\",\"single_category_product_type\":\"all\",\"single_category_product\":\"\",\"single_category_product_special_type\":\"\",\"single_product_special_type\":\"mostviewed\",\"single_image_width\":\"100\",\"single_image_height\":\"100\",\"single_image\":\"\",\"single_image_link\":\"\",\"module_id\":\"347\"}'),
(358, 'Best seller products 02', 'ptproducts', '{\"name\":\"Best seller products 02\",\"status\":\"1\",\"module_title\":{\"en-gb\":\"Best seller products\",\"de-de\":\"Best seller products\"},\"module_type\":\"single_tab\",\"show_module_description\":\"0\",\"module_description\":{\"en-gb\":\"\",\"de-de\":\"\"},\"slider_width\":\"370\",\"slider_height\":\"370\",\"auto\":\"0\",\"item\":{\"desktop\":\"5\",\"laptop\":\"4\",\"tablet\":\"4\",\"s_tablet\":\"3\",\"mobile\":\"2\",\"s_mobile\":\"2\"},\"row\":{\"desktop\":\"1\",\"laptop\":\"1\",\"tablet\":\"1\",\"s_tablet\":\"1\",\"mobile\":\"1\",\"s_mobile\":\"1\"},\"limit\":\"10\",\"speed\":\"500\",\"navigation\":\"1\",\"pagination\":\"0\",\"layout_type\":\"slider\",\"product_layout_type\":\"grid\",\"layout_classname\":\"nav-style-2\",\"show_price\":\"1\",\"show_cart\":\"1\",\"show_wishlist\":\"1\",\"show_compare\":\"1\",\"show_countdown\":\"0\",\"show_quickview\":\"1\",\"show_hover_image\":\"1\",\"show_swatches_image\":\"0\",\"show_product_description\":\"0\",\"show_label\":\"1\",\"single_product_collection\":\"special\",\"single_specified_product\":\"\",\"single_category\":\"20\",\"single_category_product_type\":\"all\",\"single_category_product\":\"\",\"single_category_product_special_type\":\"\",\"single_product_special_type\":\"bestseller\",\"single_image_width\":\"100\",\"single_image_height\":\"100\",\"single_image\":\"\",\"single_image_link\":\"\",\"module_id\":358}'),
(365, 'Vertical Menu 03', 'ptmenu', '{\"name\":\"Vertical Menu 03\",\"status\":\"1\",\"menu\":\"12\",\"effect\":\"none\",\"menu_bg\":\"253237\",\"menu_text_color\":\"FFFFFF\",\"menu_pd_top\":\"0px\",\"menu_pd_right\":\"0px\",\"menu_pd_bottom\":\"0px\",\"menu_pd_left\":\"0px\",\"item_bg\":\"FFFFFF\",\"item_bg_hover\":\"FFFFFF\",\"item_font_color\":\"253237\",\"item_font_size\":\"1.4rem\",\"item_font_transform\":\"capitalize\",\"item_font_weight\":\"400\",\"item_font_color_hover\":\"F2AD0F\",\"item_font_weight_hover\":\"400\",\"item_pd_top\":\"10px\",\"item_pd_right\":\"15px\",\"item_pd_bottom\":\"10px\",\"item_pd_left\":\"15px\",\"item_show\":\"11\",\"mega_menu_bg\":\"FFFFFF\",\"mega_sub_item_font_color\":\"253237\",\"mega_sub_item_font_size\":\"1.4rem\",\"mega_sub_item_font_transform\":\"capitalize\",\"mega_sub_item_font_weight\":\"700\",\"mega_sub_item_hover_font_color\":\"F2AD0F\",\"mega_sub_item_hover_font_weight\":\"700\",\"mega_sub_sub_item_font_color\":\"888888\",\"mega_sub_sub_item_font_size\":\"1.4rem\",\"mega_sub_sub_item_font_transform\":\"capitalize\",\"mega_sub_sub_item_font_weight\":\"400\",\"mega_sub_sub_item_hover_font_color\":\"F2AD0F\",\"mega_sub_sub_item_hover_font_weight\":\"400\",\"mega_menu_pd_top\":\"16px\",\"mega_menu_pd_right\":\"30px\",\"mega_menu_pd_bottom\":\"18px\",\"mega_menu_pd_left\":\"30px\",\"second_item_bg\":\"FFFFFF\",\"second_item_bg_hover\":\"FFFFFF\",\"second_item_font_color\":\"253237\",\"second_item_font_size\":\"1.4rem\",\"second_item_font_transform\":\"capitalize\",\"second_item_font_weight\":\"700\",\"second_item_font_color_hover\":\"F2AD0F\",\"second_item_font_weight_hover\":\"700\",\"third_item_bg\":\"FFFFFF\",\"third_item_bg_hover\":\"FFFFFF\",\"third_item_font_color\":\"888888\",\"third_item_font_size\":\"1.4rem\",\"third_item_font_transform\":\"capitalize\",\"third_item_font_weight\":\"400\",\"third_item_font_color_hover\":\"F2AD0F\",\"third_item_font_weight_hover\":\"400\"}'),
(366, 'Product Tabs 04', 'ptproducts', '{\"name\":\"Product Tabs 04\",\"status\":\"1\",\"module_title\":{\"en-gb\":\"\",\"de-de\":\"\"},\"module_type\":\"multi_tabs\",\"show_module_description\":\"0\",\"module_description\":{\"en-gb\":\"\",\"de-de\":\"\"},\"slider_width\":\"370\",\"slider_height\":\"370\",\"auto\":\"0\",\"item\":{\"desktop\":\"4\",\"laptop\":\"4\",\"tablet\":\"3\",\"s_tablet\":\"3\",\"mobile\":\"2\",\"s_mobile\":\"2\"},\"row\":{\"desktop\":\"1\",\"laptop\":\"1\",\"tablet\":\"1\",\"s_tablet\":\"1\",\"mobile\":\"1\",\"s_mobile\":\"1\"},\"limit\":\"10\",\"speed\":\"500\",\"navigation\":\"1\",\"pagination\":\"0\",\"layout_type\":\"slider\",\"product_layout_type\":\"grid\",\"layout_classname\":\"nav-style-2\",\"show_price\":\"1\",\"show_cart\":\"1\",\"show_wishlist\":\"1\",\"show_compare\":\"1\",\"show_countdown\":\"0\",\"show_quickview\":\"1\",\"show_hover_image\":\"1\",\"show_swatches_image\":\"0\",\"show_product_description\":\"0\",\"show_label\":\"1\",\"single_product_collection\":\"specified\",\"single_specified_product\":\"\",\"single_category\":\"20\",\"single_category_product_type\":\"all\",\"single_category_product\":\"\",\"single_category_product_special_type\":\"\",\"single_product_special_type\":\"\",\"single_image_width\":\"100\",\"single_image_height\":\"100\",\"single_image\":\"\",\"single_image_link\":\"\",\"tabs\":[{\"title\":{\"en-gb\":\"New Arrivals\",\"de-de\":\"New Arrivals\"},\"title_image\":\"\",\"product_collection\":\"special\",\"category\":\"\",\"category_product_type\":\"all\",\"category_product_special_type\":\"\",\"product_special_type\":\"latest\",\"image_width\":\"100\",\"image_height\":\"100\",\"image\":\"\",\"image_link\":\"\"},{\"title\":{\"en-gb\":\"Random\",\"de-de\":\"Random\"},\"title_image\":\"\",\"product_collection\":\"special\",\"category\":\"\",\"category_product_type\":\"all\",\"category_product_special_type\":\"\",\"product_special_type\":\"random\",\"image_width\":\"100\",\"image_height\":\"100\",\"image\":\"\",\"image_link\":\"\"},{\"title\":{\"en-gb\":\"On Sale\",\"de-de\":\"On Sale\"},\"title_image\":\"\",\"product_collection\":\"special\",\"category\":\"\",\"category_product_type\":\"all\",\"category_product_special_type\":\"\",\"product_special_type\":\"special\",\"image_width\":\"100\",\"image_height\":\"100\",\"image\":\"\",\"image_link\":\"\"}],\"module_id\":\"366\"}'),
(367, 'Product Category 1', 'ptproducts', '{\"name\":\"Product Category 1\",\"status\":\"1\",\"module_title\":{\"en-gb\":\"Brake Parts\",\"de-de\":\"Brake Parts\"},\"module_type\":\"single_tab\",\"show_module_description\":\"0\",\"module_description\":{\"en-gb\":\"\",\"de-de\":\"\"},\"slider_width\":\"370\",\"slider_height\":\"370\",\"auto\":\"0\",\"item\":{\"desktop\":\"3\",\"laptop\":\"3\",\"tablet\":\"2\",\"s_tablet\":\"2\",\"mobile\":\"2\",\"s_mobile\":\"2\"},\"row\":{\"desktop\":\"1\",\"laptop\":\"1\",\"tablet\":\"1\",\"s_tablet\":\"1\",\"mobile\":\"1\",\"s_mobile\":\"1\"},\"limit\":\"10\",\"speed\":\"500\",\"navigation\":\"1\",\"pagination\":\"0\",\"layout_type\":\"image\",\"product_layout_type\":\"grid\",\"layout_classname\":\"nav-style-2\",\"show_price\":\"1\",\"show_cart\":\"1\",\"show_wishlist\":\"1\",\"show_compare\":\"1\",\"show_countdown\":\"0\",\"show_quickview\":\"1\",\"show_hover_image\":\"1\",\"show_swatches_image\":\"0\",\"show_product_description\":\"0\",\"show_label\":\"1\",\"single_product_collection\":\"category\",\"single_specified_product\":\"\",\"single_category\":\"299\",\"single_category_product_type\":\"all\",\"single_category_product\":\"\",\"single_category_product_special_type\":\"\",\"single_product_special_type\":\"\",\"single_image_width\":\"277\",\"single_image_height\":\"490\",\"single_image\":\"catalog\\/image-module\\/img-module1.jpg\",\"single_image_link\":\"#\",\"module_id\":\"367\"}'),
(368, 'Product Category 2', 'ptproducts', '{\"name\":\"Product Category 2\",\"status\":\"1\",\"module_title\":{\"en-gb\":\"Lightings\",\"de-de\":\"Lightings\"},\"module_type\":\"single_tab\",\"show_module_description\":\"0\",\"module_description\":{\"en-gb\":\"\",\"de-de\":\"\"},\"slider_width\":\"370\",\"slider_height\":\"370\",\"auto\":\"0\",\"item\":{\"desktop\":\"3\",\"laptop\":\"3\",\"tablet\":\"2\",\"s_tablet\":\"2\",\"mobile\":\"2\",\"s_mobile\":\"2\"},\"row\":{\"desktop\":\"1\",\"laptop\":\"1\",\"tablet\":\"1\",\"s_tablet\":\"1\",\"mobile\":\"1\",\"s_mobile\":\"1\"},\"limit\":\"10\",\"speed\":\"500\",\"navigation\":\"1\",\"pagination\":\"0\",\"layout_type\":\"image\",\"product_layout_type\":\"grid\",\"layout_classname\":\"nav-style-2\",\"show_price\":\"1\",\"show_cart\":\"1\",\"show_wishlist\":\"1\",\"show_compare\":\"1\",\"show_countdown\":\"0\",\"show_quickview\":\"1\",\"show_hover_image\":\"1\",\"show_swatches_image\":\"0\",\"show_product_description\":\"0\",\"show_label\":\"1\",\"single_product_collection\":\"category\",\"single_specified_product\":\"\",\"single_category\":\"24\",\"single_category_product_type\":\"all\",\"single_category_product\":\"\",\"single_category_product_special_type\":\"\",\"single_product_special_type\":\"\",\"single_image_width\":\"277\",\"single_image_height\":\"490\",\"single_image\":\"catalog\\/image-module\\/img-module2.jpg\",\"single_image_link\":\"#\",\"module_id\":\"368\"}'),
(369, 'Most Viewed Products 04', 'ptproducts', '{\"name\":\"Most Viewed Products 04\",\"status\":\"1\",\"module_title\":{\"en-gb\":\"Most Viewed\",\"de-de\":\"Most Viewed\"},\"module_type\":\"single_tab\",\"show_module_description\":\"0\",\"module_description\":{\"en-gb\":\"\",\"de-de\":\"\"},\"slider_width\":\"200\",\"slider_height\":\"200\",\"auto\":\"0\",\"item\":{\"desktop\":\"1\",\"laptop\":\"1\",\"tablet\":\"1\",\"s_tablet\":\"2\",\"mobile\":\"2\",\"s_mobile\":\"1\"},\"row\":{\"desktop\":\"4\",\"laptop\":\"4\",\"tablet\":\"4\",\"s_tablet\":\"2\",\"mobile\":\"2\",\"s_mobile\":\"4\"},\"limit\":\"12\",\"speed\":\"500\",\"navigation\":\"0\",\"pagination\":\"0\",\"layout_type\":\"slider\",\"product_layout_type\":\"list\",\"layout_classname\":\"list-module\",\"show_price\":\"1\",\"show_cart\":\"0\",\"show_wishlist\":\"0\",\"show_compare\":\"0\",\"show_countdown\":\"0\",\"show_quickview\":\"0\",\"show_hover_image\":\"0\",\"show_swatches_image\":\"0\",\"show_product_description\":\"0\",\"show_label\":\"0\",\"single_product_collection\":\"special\",\"single_specified_product\":\"\",\"single_category\":\"20\",\"single_category_product_type\":\"all\",\"single_category_product\":\"\",\"single_category_product_special_type\":\"\",\"single_product_special_type\":\"mostviewed\",\"single_image_width\":\"100\",\"single_image_height\":\"100\",\"single_image\":\"\",\"single_image_link\":\"\",\"module_id\":\"369\"}'),
(370, 'Static Top Store4', 'ptstaticblock', '{\"name\":\"Static Top Store4\",\"status\":\"1\",\"show_title\":\"0\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;pt-block static-top-store4&quot;&gt;\\r\\n  &lt;div class=&quot;inner&quot;&gt;\\r\\n    &lt;div class=&quot;col col-1&quot;&gt;\\r\\n      &lt;div class=&quot;image&quot;&gt;\\r\\n        &lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/img1-top-store4.jpg&quot; alt=&quot;img1&quot;&gt;&lt;\\/a&gt;\\r\\n      &lt;\\/div&gt;\\r\\n    &lt;\\/div&gt;\\r\\n    &lt;div class=&quot;col col-2 &quot;&gt;\\r\\n      &lt;div class=&quot;image&quot;&gt;\\r\\n        &lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/img2-top-store4.jpg&quot; alt=&quot;img2&quot;&gt;&lt;\\/a&gt;\\r\\n      &lt;\\/div&gt;\\r\\n    &lt;\\/div&gt;\\r\\n  &lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n\"},\"2\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;pt-block static-top-store4&quot;&gt;\\r\\n  &lt;div class=&quot;inner&quot;&gt;\\r\\n    &lt;div class=&quot;col col-1&quot;&gt;\\r\\n      &lt;div class=&quot;image&quot;&gt;\\r\\n        &lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/img1-top-store4.jpg&quot; alt=&quot;img1&quot;&gt;&lt;\\/a&gt;\\r\\n      &lt;\\/div&gt;\\r\\n    &lt;\\/div&gt;\\r\\n    &lt;div class=&quot;col col-2 &quot;&gt;\\r\\n      &lt;div class=&quot;image&quot;&gt;\\r\\n        &lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/img2-top-store4.jpg&quot; alt=&quot;img2&quot;&gt;&lt;\\/a&gt;\\r\\n      &lt;\\/div&gt;\\r\\n    &lt;\\/div&gt;\\r\\n  &lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n\"}}}'),
(371, 'Static Middle Store4', 'ptstaticblock', '{\"name\":\"Static Middle Store4\",\"status\":\"1\",\"show_title\":\"0\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;pt-block static-middle-store4&quot;&gt;\\r\\n  &lt;div class=&quot;image&quot;&gt;\\r\\n    &lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/img-middle-store4.jpg&quot; alt=&quot;img1&quot;&gt;&lt;\\/a&gt;\\r\\n  &lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n\"},\"2\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;pt-block static-middle-store4&quot;&gt;\\r\\n  &lt;div class=&quot;image&quot;&gt;\\r\\n    &lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/img-middle-store4.jpg&quot; alt=&quot;img1&quot;&gt;&lt;\\/a&gt;\\r\\n  &lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n\"}}}'),
(372, 'Static Sidebar Home Store4', 'ptstaticblock', '{\"name\":\"Static Sidebar Home Store4\",\"status\":\"1\",\"show_title\":\"0\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;pt-block static-sidebar-home-store4&quot;&gt;\\r\\n  &lt;div class=&quot;image&quot;&gt;\\r\\n    &lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/img-sidebar-store4.jpg&quot; alt=&quot;img&quot;&gt;&lt;\\/a&gt;\\r\\n  &lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n\"},\"2\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;pt-block static-sidebar-home-store4&quot;&gt;\\r\\n  &lt;div class=&quot;image&quot;&gt;\\r\\n    &lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/img-sidebar-store4.jpg&quot; alt=&quot;img&quot;&gt;&lt;\\/a&gt;\\r\\n  &lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n\"}}}'),
(373, 'Blog 4', 'ptblog', '{\"name\":\"Blog 4\",\"status\":\"1\",\"list\":\"2\",\"width\":\"450\",\"height\":\"277\",\"auto\":\"0\",\"items\":\"1\",\"speed\":\"500\",\"rows\":\"1\",\"navigation\":\"0\",\"pagination\":\"0\"}'),
(374, 'Deal Products 04', 'ptproducts', '{\"name\":\"Deal Products 04\",\"status\":\"1\",\"module_title\":{\"en-gb\":\"Deals Of The Day\",\"de-de\":\"Deals Of The Day\"},\"module_type\":\"single_tab\",\"show_module_description\":\"0\",\"module_description\":{\"en-gb\":\"\",\"de-de\":\"\"},\"slider_width\":\"450\",\"slider_height\":\"450\",\"auto\":\"0\",\"item\":{\"desktop\":\"2\",\"laptop\":\"2\",\"tablet\":\"1\",\"s_tablet\":\"1\",\"mobile\":\"1\",\"s_mobile\":\"1\"},\"row\":{\"desktop\":\"1\",\"laptop\":\"1\",\"tablet\":\"1\",\"s_tablet\":\"1\",\"mobile\":\"1\",\"s_mobile\":\"1\"},\"limit\":\"10\",\"speed\":\"500\",\"navigation\":\"1\",\"pagination\":\"0\",\"layout_type\":\"slider\",\"product_layout_type\":\"list\",\"layout_classname\":\"countdown-module nav-style-2\",\"show_price\":\"1\",\"show_cart\":\"0\",\"show_wishlist\":\"1\",\"show_compare\":\"1\",\"show_countdown\":\"1\",\"show_quickview\":\"1\",\"show_hover_image\":\"0\",\"show_swatches_image\":\"0\",\"show_product_description\":\"0\",\"show_label\":\"0\",\"single_product_collection\":\"specified\",\"single_specified_product\":\"\",\"single_specified_products\":[\"41\",\"45\",\"29\"],\"single_category\":\"20\",\"single_category_product_type\":\"all\",\"single_category_product\":\"\",\"single_category_product_special_type\":\"\",\"single_product_special_type\":\"\",\"single_image_width\":\"100\",\"single_image_height\":\"100\",\"single_image\":\"\",\"single_image_link\":\"\",\"module_id\":\"374\"}');

-- --------------------------------------------------------

--
-- Table structure for table `oc_ptmegamenu`
--

DROP TABLE IF EXISTS `oc_ptmegamenu`;
CREATE TABLE IF NOT EXISTS `oc_ptmegamenu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `menu_type` varchar(255) NOT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_ptmegamenu`
--

INSERT INTO `oc_ptmegamenu` (`menu_id`, `status`, `name`, `menu_type`) VALUES
(10, 1, 'Horizontal Menu 01', 'horizontal'),
(11, 1, 'Mobile Menu 01', 'mobile'),
(12, 1, 'Vertical Menu 01', 'vertical');

-- --------------------------------------------------------

--
-- Table structure for table `oc_ptmegamenu_sub_item`
--

DROP TABLE IF EXISTS `oc_ptmegamenu_sub_item`;
CREATE TABLE IF NOT EXISTS `oc_ptmegamenu_sub_item` (
  `sub_menu_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_menu_item_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `position` int(11) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sub_menu_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_ptmegamenu_sub_item_description`
--

DROP TABLE IF EXISTS `oc_ptmegamenu_sub_item_description`;
CREATE TABLE IF NOT EXISTS `oc_ptmegamenu_sub_item_description` (
  `sub_menu_item_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`sub_menu_item_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_ptmegamenu_top_item`
--

DROP TABLE IF EXISTS `oc_ptmegamenu_top_item`;
CREATE TABLE IF NOT EXISTS `oc_ptmegamenu_top_item` (
  `menu_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `has_title` tinyint(1) NOT NULL DEFAULT '0',
  `has_link` tinyint(1) NOT NULL DEFAULT '0',
  `has_child` tinyint(1) NOT NULL DEFAULT '0',
  `category_id` int(11) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `item_align` varchar(255) NOT NULL,
  `sub_menu_type` varchar(255) NOT NULL,
  `sub_menu_content_type` varchar(255) NOT NULL,
  `sub_menu_content_columns` int(11) DEFAULT NULL,
  `sub_menu_content_width` varchar(100) DEFAULT NULL,
  `sub_menu_content` text,
  PRIMARY KEY (`menu_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=220 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_ptmegamenu_top_item`
--

INSERT INTO `oc_ptmegamenu_top_item` (`menu_item_id`, `menu_id`, `status`, `has_title`, `has_link`, `has_child`, `category_id`, `position`, `name`, `link`, `icon`, `item_align`, `sub_menu_type`, `sub_menu_content_type`, `sub_menu_content_columns`, `sub_menu_content_width`, `sub_menu_content`) VALUES
(194, 10, 1, 1, 1, 0, 0, 0, 'Home', 'index.php?route=common/home', '', 'left', 'mega', 'widget', 1, '', '[]'),
(195, 10, 1, 1, 1, 1, 221, 0, 'Shop', 'index.php?route=product/category&amp;path=221', '', 'left', 'mega', 'category', 1, '1050px', '{\"category\":[{\"name\":\"Concrete Tools\",\"type\":\"category\",\"cols\":\"3\",\"position\":\"0\",\"category_id\":\"274\",\"show_image\":\"0\",\"show_child\":\"1\"},{\"name\":\"Drills\",\"type\":\"category\",\"cols\":\"3\",\"position\":\"1\",\"category_id\":\"222\",\"show_image\":\"0\",\"show_child\":\"1\"},{\"name\":\"Sanders\",\"type\":\"category\",\"cols\":\"3\",\"position\":\"2\",\"category_id\":\"225\",\"show_image\":\"0\",\"show_child\":\"1\"},{\"name\":\"Saws\",\"type\":\"category\",\"cols\":\"3\",\"position\":\"3\",\"category_id\":\"223\",\"show_image\":\"0\",\"show_child\":\"1\"}]}'),
(196, 10, 1, 1, 1, 1, 25, 0, 'Accessories', 'index.php?route=product/category&amp;path=25', '', 'left', 'flyout', 'category', 1, '', '{\"category\":[{\"name\":\"Auto Body Parts\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"0\",\"category_id\":\"29\",\"show_image\":\"0\",\"show_child\":\"1\"},{\"name\":\"Brakes &amp; Steering\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"1\",\"category_id\":\"31\",\"show_image\":\"0\",\"show_child\":\"1\"}]}'),
(197, 10, 1, 1, 1, 0, 0, 0, 'Specials', 'index.php?route=product/special', '', 'left', 'mega', 'widget', 1, '', '[]'),
(198, 10, 1, 1, 1, 0, 0, 0, 'Contact Us', 'index.php?route=information/contact', '', 'left', 'mega', 'widget', 1, '', '[]'),
(199, 10, 1, 1, 1, 0, 0, 0, 'About Us', 'index.php?route=information/information&amp;information_id=4', '', 'left', 'mega', 'widget', 1, '', '[]'),
(200, 10, 1, 1, 1, 1, 0, 0, 'Blog', 'index.php?route=plaza/blog', '', 'left', 'mega', 'widget', 1, '1140px', '{\"widget\":[{\"name\":{\"1\":\"Blog Page With Left Column\",\"2\":\"Blog Page With Left Column\"},\"content\":{\"1\":\"&lt;div class=&quot;pt-block&quot;&gt;&lt;div class=&quot;image&quot;&gt;&lt;a href=&quot;index.php?route=plaza\\/blog&amp;amp;layout=left&quot;&gt;&lt;img src=&quot;image\\/catalog\\/blog-menu\\/blog-page-left-column.jpg&quot; alt=&quot;blog-page-left-column&quot;&gt;&lt;\\/a&gt;&lt;\\/div&gt;&lt;\\/div&gt;\",\"2\":\"&lt;div class=&quot;pt-block&quot;&gt;&lt;div class=&quot;image&quot;&gt;&lt;a href=&quot;index.php?route=plaza\\/blog&amp;amp;layout=left&quot;&gt;&lt;img src=&quot;image\\/catalog\\/blog-menu\\/blog-page-left-column.jpg&quot; alt=&quot;blog-page-left-column&quot;&gt;&lt;\\/a&gt;&lt;\\/div&gt;&lt;\\/div&gt;\"},\"show_title\":\"1\",\"type\":\"html\",\"cols\":\"4\",\"position\":\"0\"},{\"name\":{\"1\":\"Blog Page With Right Column\",\"2\":\"Blog Page With Right Column\"},\"content\":{\"1\":\"&lt;div class=&quot;pt-block&quot;&gt;&lt;div class=&quot;image&quot;&gt;&lt;a href=&quot;index.php?route=plaza\\/blog&amp;amp;layout=right&quot;&gt;&lt;img src=&quot;image\\/catalog\\/blog-menu\\/blog-page-right-column.jpg&quot; alt=&quot;blog-page-right-column&quot;&gt;&lt;\\/a&gt;&lt;\\/div&gt;&lt;\\/div&gt;\",\"2\":\"&lt;div class=&quot;pt-block&quot;&gt;&lt;div class=&quot;image&quot;&gt;&lt;a href=&quot;index.php?route=plaza\\/blog&amp;amp;layout=right&quot;&gt;&lt;img src=&quot;image\\/catalog\\/blog-menu\\/blog-page-right-column.jpg&quot; alt=&quot;blog-page-right-column&quot;&gt;&lt;\\/a&gt;&lt;\\/div&gt;&lt;\\/div&gt;\"},\"show_title\":\"1\",\"type\":\"html\",\"cols\":\"4\",\"position\":\"1\"},{\"name\":{\"1\":\"Blog Page With Grid Style\",\"2\":\"Blog Page With Grid Style\"},\"content\":{\"1\":\"&lt;div class=&quot;pt-block&quot;&gt;&lt;div class=&quot;image&quot;&gt;&lt;a href=&quot;index.php?route=plaza\\/blog&amp;amp;layout=full&amp;amp;content=grid&quot;&gt;&lt;img src=&quot;image\\/catalog\\/blog-menu\\/blog-page-grid-style.jpg&quot; alt=&quot;blog-page-grid-style&quot;&gt;&lt;\\/a&gt;&lt;\\/div&gt;&lt;\\/div&gt;\",\"2\":\"&lt;div class=&quot;pt-block&quot;&gt;&lt;div class=&quot;image&quot;&gt;&lt;a href=&quot;index.php?route=plaza\\/blog&amp;amp;layout=full&amp;amp;content=grid&quot;&gt;&lt;img src=&quot;image\\/catalog\\/blog-menu\\/blog-page-grid-style.jpg&quot; alt=&quot;blog-page-grid-style&quot;&gt;&lt;\\/a&gt;&lt;\\/div&gt;&lt;\\/div&gt;\"},\"show_title\":\"1\",\"type\":\"html\",\"cols\":\"4\",\"position\":\"2\"},{\"name\":{\"1\":\"Blog Page With List Style\",\"2\":\"Blog Page With List Style\"},\"content\":{\"1\":\"&lt;div class=&quot;pt-block&quot;&gt;&lt;div class=&quot;image&quot;&gt;&lt;a href=&quot;index.php?route=plaza\\/blog&amp;amp;layout=full&amp;amp;content=list&quot;&gt;&lt;img src=&quot;image\\/catalog\\/blog-menu\\/blog-page-list-style.jpg&quot; alt=&quot;blog-page-list-style&quot;&gt;&lt;\\/a&gt;&lt;\\/div&gt;&lt;\\/div&gt;\",\"2\":\"&lt;div class=&quot;pt-block&quot;&gt;&lt;div class=&quot;image&quot;&gt;&lt;a href=&quot;index.php?route=plaza\\/blog&amp;amp;layout=full&amp;amp;content=list&quot;&gt;&lt;img src=&quot;image\\/catalog\\/blog-menu\\/blog-page-list-style.jpg&quot; alt=&quot;blog-page-list-style&quot;&gt;&lt;\\/a&gt;&lt;\\/div&gt;&lt;\\/div&gt;\"},\"show_title\":\"1\",\"type\":\"html\",\"cols\":\"4\",\"position\":\"3\"},{\"name\":{\"1\":\"Categories Post Page\",\"2\":\"Categories Post Page\"},\"content\":{\"1\":\"&lt;div class=&quot;pt-block&quot;&gt;&lt;div class=&quot;image&quot;&gt;&lt;a href=&quot;index.php?route=plaza\\/blog\\/category&amp;amp;post_list_id=1&quot;&gt;&lt;img src=&quot;image\\/catalog\\/blog-menu\\/categories-post-page.jpg&quot; alt=&quot;categories-post-page&quot;&gt;&lt;\\/a&gt;&lt;\\/div&gt;&lt;\\/div&gt;\",\"2\":\"&lt;div class=&quot;pt-block&quot;&gt;&lt;div class=&quot;image&quot;&gt;&lt;a href=&quot;index.php?route=plaza\\/blog\\/category&amp;amp;post_list_id=1&quot;&gt;&lt;img src=&quot;image\\/catalog\\/blog-menu\\/categories-post-page.jpg&quot; alt=&quot;categories-post-page&quot;&gt;&lt;\\/a&gt;&lt;\\/div&gt;&lt;\\/div&gt;\"},\"show_title\":\"1\",\"type\":\"html\",\"cols\":\"4\",\"position\":\"4\"},{\"name\":{\"1\":\"Post Page\",\"2\":\"Post Page\"},\"content\":{\"1\":\"&lt;div class=&quot;pt-block&quot;&gt;&lt;div class=&quot;image&quot;&gt;&lt;a href=&quot;index.php?route=plaza\\/blog\\/post&amp;amp;post_id=1&quot;&gt;&lt;img src=&quot;image\\/catalog\\/blog-menu\\/post-page.jpg&quot; alt=&quot;post-page&quot;&gt;&lt;\\/a&gt;&lt;\\/div&gt;&lt;\\/div&gt;\",\"2\":\"&lt;div class=&quot;pt-block&quot;&gt;&lt;div class=&quot;image&quot;&gt;&lt;a href=&quot;index.php?route=plaza\\/blog\\/post&amp;amp;post_id=1&quot;&gt;&lt;img src=&quot;image\\/catalog\\/blog-menu\\/post-page.jpg&quot; alt=&quot;post-page&quot;&gt;&lt;\\/a&gt;&lt;\\/div&gt;&lt;\\/div&gt;\"},\"show_title\":\"1\",\"type\":\"html\",\"cols\":\"4\",\"position\":\"5\"}]}'),
(201, 11, 1, 1, 1, 0, 0, 0, 'Home', 'index.php?route=common/home', '', 'left', 'mega', 'widget', 1, '', '[]'),
(202, 11, 1, 1, 1, 1, 221, 0, 'Shop', 'index.php?route=product/category&amp;path=221', '', 'left', 'mega', 'category', 1, '', '{\"category\":[{\"name\":\"Concrete Tools\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"0\",\"category_id\":\"274\",\"show_image\":\"0\",\"show_child\":\"1\"},{\"name\":\"Drills\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"1\",\"category_id\":\"222\",\"show_image\":\"0\",\"show_child\":\"1\"},{\"name\":\"Sanders\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"2\",\"category_id\":\"225\",\"show_image\":\"0\",\"show_child\":\"1\"},{\"name\":\"Saws\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"3\",\"category_id\":\"223\",\"show_image\":\"0\",\"show_child\":\"1\"}]}'),
(203, 11, 1, 1, 1, 1, 25, 0, 'Accessories', 'index.php?route=product/category&amp;path=25', '', 'left', 'mega', 'category', 1, '', '{\"category\":[{\"name\":\"Auto Body Parts\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"0\",\"category_id\":\"29\",\"show_image\":\"0\",\"show_child\":\"1\"},{\"name\":\"Brakes &amp; Steering\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"1\",\"category_id\":\"31\",\"show_image\":\"0\",\"show_child\":\"1\"}]}'),
(204, 11, 1, 1, 1, 0, 0, 0, 'Specials', 'index.php?route=product/special', '', 'left', 'mega', 'widget', 1, '', '[]'),
(205, 11, 1, 1, 1, 0, 0, 0, 'Contact Us', 'index.php?route=information/contact', '', 'left', 'mega', 'widget', 1, '', '[]'),
(206, 11, 1, 1, 1, 0, 0, 0, 'About Us', 'index.php?route=information/information&amp;information_id=4', '', 'left', 'mega', 'widget', 1, '', '[]'),
(207, 11, 1, 1, 1, 0, 0, 0, 'Blog', 'index.php?route=plaza/blog', '', 'left', 'mega', 'widget', 1, '', '[]'),
(208, 12, 1, 1, 1, 1, 299, 0, 'Brake Parts', 'index.php?route=product/category&amp;path=299', '', 'left', 'flyout', 'category', 1, '600px', '{\"category\":[{\"name\":\"Brake Tools\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"0\",\"category_id\":\"354\",\"show_image\":\"0\",\"show_child\":\"0\"},{\"name\":\"Driveshafts\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"1\",\"category_id\":\"355\",\"show_image\":\"0\",\"show_child\":\"0\"},{\"name\":\"Emergency Brake\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"2\",\"category_id\":\"356\",\"show_image\":\"0\",\"show_child\":\"0\"},{\"name\":\"Spools\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"3\",\"category_id\":\"357\",\"show_image\":\"0\",\"show_child\":\"0\"}]}'),
(209, 12, 1, 1, 1, 1, 292, 0, 'Wheels &amp; Tires', 'index.php?route=product/category&amp;path=292', '', 'left', 'mega', 'category', 1, '600px', '{\"category\":[{\"name\":\"Seals &amp; Hubs\",\"type\":\"category\",\"cols\":\"6\",\"position\":\"0\",\"category_id\":\"353\",\"show_image\":\"0\",\"show_child\":\"1\"},{\"name\":\"Wheel Bearings\",\"type\":\"category\",\"cols\":\"6\",\"position\":\"1\",\"category_id\":\"301\",\"show_image\":\"0\",\"show_child\":\"1\"},{\"name\":\"Wheel Rim Screws\",\"type\":\"category\",\"cols\":\"6\",\"position\":\"2\",\"category_id\":\"224\",\"show_image\":\"0\",\"show_child\":\"1\"},{\"name\":\"Wheel Simulators\",\"type\":\"category\",\"cols\":\"6\",\"position\":\"3\",\"category_id\":\"300\",\"show_image\":\"0\",\"show_child\":\"1\"}]}'),
(210, 12, 1, 1, 1, 1, 247, 0, 'Moto Oil', 'index.php?route=product/category&amp;path=247', '', 'left', 'flyout', 'category', 1, '', '{\"category\":[{\"name\":\"2-Stroke\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"0\",\"category_id\":\"365\",\"show_image\":\"0\",\"show_child\":\"0\"},{\"name\":\"4-Stroke\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"1\",\"category_id\":\"366\",\"show_image\":\"0\",\"show_child\":\"0\"},{\"name\":\"Diesel\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"2\",\"category_id\":\"364\",\"show_image\":\"0\",\"show_child\":\"0\"},{\"name\":\"Gasoline\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"3\",\"category_id\":\"359\",\"show_image\":\"0\",\"show_child\":\"0\"}]}'),
(211, 12, 1, 1, 1, 1, 30, 0, 'Turbo System', 'index.php?route=product/category&amp;path=30', '', 'left', 'flyout', 'category', 1, '', '{\"category\":[{\"name\":\"Turbo Blanket\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"0\",\"category_id\":\"367\",\"show_image\":\"0\",\"show_child\":\"0\"},{\"name\":\"Turbo Kits\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"1\",\"category_id\":\"358\",\"show_image\":\"0\",\"show_child\":\"0\"},{\"name\":\"Turbo Wrap\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"2\",\"category_id\":\"368\",\"show_image\":\"0\",\"show_child\":\"0\"},{\"name\":\"Turbocharger\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"3\",\"category_id\":\"369\",\"show_image\":\"0\",\"show_child\":\"0\"}]}'),
(212, 12, 1, 1, 1, 1, 24, 0, 'Lightings', 'index.php?route=product/category&amp;path=24', '', 'left', 'flyout', 'category', 1, '', '{\"category\":[{\"name\":\"Bulbs\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"0\",\"category_id\":\"360\",\"show_image\":\"0\",\"show_child\":\"0\"},{\"name\":\"Headlights\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"1\",\"category_id\":\"363\",\"show_image\":\"0\",\"show_child\":\"0\"},{\"name\":\"Light Bars\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"2\",\"category_id\":\"362\",\"show_image\":\"0\",\"show_child\":\"0\"},{\"name\":\"Light Kits\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"3\",\"category_id\":\"361\",\"show_image\":\"0\",\"show_child\":\"0\"}]}'),
(213, 12, 1, 1, 1, 0, 0, 0, 'Body Parts', '', '', 'left', 'mega', 'category', 1, '', '[]'),
(214, 12, 1, 1, 1, 0, 69, 0, 'Perfomance Filters', 'index.php?route=product/category&amp;path=69', '', 'left', 'mega', 'category', 1, '', '[]'),
(215, 12, 1, 1, 1, 0, 262, 0, 'Engine Parts', 'index.php?route=product/category&amp;path=262', '', 'left', 'mega', 'category', 1, '', '[]'),
(216, 12, 1, 1, 1, 1, 25, 0, 'Accessories', 'index.php?route=product/category&amp;path=25', '', 'left', 'flyout', 'category', 1, '', '{\"category\":[{\"name\":\"Auto Body Parts\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"0\",\"category_id\":\"29\",\"show_image\":\"0\",\"show_child\":\"1\"},{\"name\":\"Brakes &amp; Steering\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"1\",\"category_id\":\"31\",\"show_image\":\"0\",\"show_child\":\"1\"}]}'),
(217, 12, 1, 1, 1, 0, 298, 0, 'Stools', 'index.php?route=product/category&amp;path=298', '', 'left', 'mega', 'category', 1, '', '[]'),
(218, 12, 1, 1, 1, 0, 374, 0, 'Gifts &amp; Merchandise', 'index.php?route=product/category&amp;path=374', '', 'left', 'mega', 'category', 1, '', '[]'),
(219, 12, 1, 1, 1, 0, 246, 0, 'Car Parts', 'index.php?route=product/category&amp;path=246', '', 'left', 'mega', 'category', 1, '', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `oc_ptmegamenu_top_item_description`
--

DROP TABLE IF EXISTS `oc_ptmegamenu_top_item_description`;
CREATE TABLE IF NOT EXISTS `oc_ptmegamenu_top_item_description` (
  `menu_item_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`menu_item_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_ptmegamenu_top_item_description`
--

INSERT INTO `oc_ptmegamenu_top_item_description` (`menu_item_id`, `language_id`, `title`) VALUES
(194, 1, 'Home'),
(195, 1, 'Shop'),
(196, 1, 'Accessories'),
(197, 1, 'Specials'),
(198, 1, 'Contact Us'),
(199, 1, 'About Us'),
(200, 1, 'Blog'),
(201, 1, 'Home'),
(202, 1, 'Shop'),
(203, 1, 'Accessories'),
(204, 1, 'Specials'),
(205, 1, 'Contact Us'),
(206, 1, 'About Us'),
(207, 1, 'Blog'),
(208, 1, 'Brake Parts'),
(209, 1, 'Wheels &amp; Tires'),
(210, 1, 'Moto Oil'),
(211, 1, 'Turbo System'),
(212, 1, 'Lightings'),
(213, 1, 'Body Parts'),
(214, 1, 'Perfomance Filters'),
(215, 1, 'Engine Parts'),
(216, 1, 'Accessories'),
(217, 1, 'Stools'),
(218, 1, 'Gifts &amp; Merchandise'),
(219, 1, 'Car Parts');

-- --------------------------------------------------------

--
-- Table structure for table `oc_ptnewsletter_email`
--

DROP TABLE IF EXISTS `oc_ptnewsletter_email`;
CREATE TABLE IF NOT EXISTS `oc_ptnewsletter_email` (
  `newsletter_id` int(11) NOT NULL AUTO_INCREMENT,
  `subscribe` tinyint(1) NOT NULL DEFAULT '1',
  `mail` varchar(255) NOT NULL,
  PRIMARY KEY (`newsletter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_ptpost`
--

DROP TABLE IF EXISTS `oc_ptpost`;
CREATE TABLE IF NOT EXISTS `oc_ptpost` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `image` varchar(255) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_ptpost`
--

INSERT INTO `oc_ptpost` (`post_id`, `status`, `sort_order`, `image`, `author`, `date_added`, `date_modified`) VALUES
(1, 1, 1, 'catalog/blog/4.jpg', 'Plaza', '2019-01-18 14:52:58', '2020-08-13 09:37:19'),
(2, 1, 1, 'catalog/blog/1.jpg', 'Plaza', '2019-01-18 14:58:13', '2020-08-13 09:36:50'),
(3, 1, 1, 'catalog/blog/3.jpg', 'Plaza', '2019-01-18 15:38:18', '2020-08-13 09:36:58'),
(4, 1, 1, 'catalog/blog/5.jpg', 'Plaza', '2019-01-18 15:41:48', '2020-08-13 09:37:23'),
(5, 1, 1, 'catalog/blog/7.jpg', 'Plaza', '2019-01-18 15:45:16', '2020-08-13 09:37:31'),
(6, 1, 1, 'catalog/blog/6.jpg', 'Plaza', '2019-01-31 13:48:39', '2020-08-13 09:37:27'),
(7, 1, 1, 'catalog/blog/2.jpg', 'Plaza', '2019-10-03 09:49:40', '2020-08-13 09:36:54'),
(8, 1, 1, 'catalog/blog/8.jpg', 'Plaza', '2019-12-23 09:12:04', '2020-08-13 09:37:35');

-- --------------------------------------------------------

--
-- Table structure for table `oc_ptpost_comment`
--

DROP TABLE IF EXISTS `oc_ptpost_comment`;
CREATE TABLE IF NOT EXISTS `oc_ptpost_comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `reply_comment_id` int(11) DEFAULT NULL,
  `author` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `date_submitted` datetime NOT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_ptpost_description`
--

DROP TABLE IF EXISTS `oc_ptpost_description`;
CREATE TABLE IF NOT EXISTS `oc_ptpost_description` (
  `post_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `intro_text` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`post_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_ptpost_description`
--

INSERT INTO `oc_ptpost_description` (`post_id`, `language_id`, `name`, `description`, `intro_text`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(1, 1, 'Children Left Home Alone For 4 Days In TV Experiment 2', '&lt;p&gt;A new reality show in the UK conducted an experiment to see just how kids and teens would behave after being left home alone for the weekend. The show, called Alone at Home, recruited four families to participate in the experiment. Each couple left their children home alone for four days and cameras were placed all throughout the home to keep watch on the kids.&lt;/p&gt;\r\n&lt;h4&gt;Experiment.&lt;/h4&gt;\r\n&lt;p&gt;Four couples participated in a risky experiment that saw them leaving their kids home alone for four days. The experiment is meant to see how the kids would react with their four days of freedom.&lt;/p&gt;\r\n&lt;h4&gt;Freedom.&lt;/h4&gt;\r\n&lt;p&gt;The kids are between the ages of eight and 16, and all reacted differently to their newfound freedom. The eldest teen from one family ended up taking advantage of her parents’ liquor cabinet, while other kids feasted on sweets.&lt;/p&gt;\r\n&lt;h4&gt;Rules.&lt;/h4&gt;\r\n&lt;p&gt;&quot;There was no-one to say: “No, you can’t do this”, just me. I make my own rules,” said Millie, the 16-year-old daughter of Natalie and Dan. She was left home alone along with siblings 14-year-old Ethan and 13-year-old Laurel.&lt;/p&gt;', '&lt;p&gt;A new reality show in the UK conducted an experiment to see just how kids and teens would behave after being left home...&lt;/p&gt;', 'Children Left Home Alone For 4 Days In TV Experiment 2', 'A new reality show in the UK conducted an experiment to see just how kids and teens would behave after being left home alone for the weekend.', 'Children Left Home,Home Alone'),
(2, 1, 'Celebrity Daughter Opens Up About Having Her Eye Color', '&lt;p&gt;People are constantly changing things about themselves--- from their hair styles to their clothes, to even the way they physically look. There are some things, like the color of your eyes however, that aren’t as easy to change. Here, one reality tv star has opened up about having had her eyes surgically altered to look gray instead of her natural brown. While the procedure was done several years ago, Zonnique Pullins says she has since regretted undergoing the procedure.&lt;/p&gt;\r\n&lt;h4&gt;Procedure.&lt;/h4&gt;\r\n&lt;p&gt;Zonnique Pullins has recently opened up about undergoing a procedure that saw her having her eyes changed from brown to gray. Pullins has since had the procedure reversed and says she wouldn’t recommend it to anyone else.&lt;/p&gt;\r\n&lt;h4&gt;Inspiration.&lt;/h4&gt;\r\n&lt;p&gt;According to Yahoo, Pullins was inspired by her own mother, reality TV star Tameka “Tiny” Harris, who also got the procedure done back in 2014. Shortly after, Pullins had it done herself.&lt;/p&gt;\r\n&lt;h4&gt;Different.&lt;/h4&gt;\r\n&lt;p&gt;“They told me the procedure would be quick, like five or 10 minutes in my eye. They woke me up and it was very blurry, and then it kind of just fades in. I looked in the mirror and I was like, ‘They’re amazing.’ I just wanted to do something different. And I have the right to do that. It’s my body,” Harris told ABC News.&lt;/p&gt;', '&lt;p&gt;People are constantly changing things about themselves--- from their hair styles to their clothes, to even the way they physically look.&lt;/p&gt;', 'Celebrity Daughter Opens Up About Having Her Eye Color Changed', 'People are constantly changing things about themselves--- from their hair styles to their clothes, to even the way they physically look. ', 'Celebrity,Daughter Opens,Eye Color Changed'),
(3, 1, 'Children Left Home Alone For 4 Days In TV Experiment', '&lt;p&gt;A new reality show in the UK conducted an experiment to see just how kids and teens would behave after being left home alone for the weekend. The show, called Alone at Home, recruited four families to participate in the experiment. Each couple left their children home alone for four days and cameras were placed all throughout the home to keep watch on the kids.&lt;/p&gt;\r\n&lt;h4&gt;Experiment.&lt;/h4&gt;\r\n&lt;p&gt;Four couples participated in a risky experiment that saw them leaving their kids home alone for four days. The experiment is meant to see how the kids would react with their four days of freedom.&lt;/p&gt;\r\n&lt;h4&gt;Freedom.&lt;/h4&gt;\r\n&lt;p&gt;The kids are between the ages of eight and 16, and all reacted differently to their newfound freedom. The eldest teen from one family ended up taking advantage of her parents’ liquor cabinet, while other kids feasted on sweets.&lt;/p&gt;\r\n&lt;h4&gt;Rules.&lt;/h4&gt;\r\n&lt;p&gt;&quot;There was no-one to say: “No, you can’t do this”, just me. I make my own rules,” said Millie, the 16-year-old daughter of Natalie and Dan. She was left home alone along with siblings 14-year-old Ethan and 13-year-old Laurel.&lt;/p&gt;', '&lt;p&gt;A new reality show in the UK conducted an experiment to see just how kids and teens would behave after being left home...&lt;/p&gt;', 'Children Left Home Alone For 4 Days In TV Experiment', 'A new reality show in the UK conducted an experiment to see just how kids and teens would behave after being left home alone for the weekend.', 'Children Left Home,Home Alone'),
(4, 1, 'Lotto Winner Offering Up Money To Any Man That Will Date Her', '&lt;p&gt;The UK’s youngest lottery winner has recently revealed she is searching for a boyfriend, and is willing to pay for the right man. Jane Park won the lottery when she was just 17, but now at 23, is looking for someone to settle down. She is currently offering up a generous “allowance” to the right man and has set up a website where men can apply for the coveted position.&lt;/p&gt;\r\n&lt;h4&gt;Settling down.&lt;/h4&gt;\r\n&lt;p&gt;Like many young people, Jane Park is looking for someone to settle down with. Unfortunately, the last few years have left her feeling jaded as she’s had her heart broken multiple times.&lt;/p&gt;\r\n&lt;h4&gt;Relationships.&lt;/h4&gt;\r\n&lt;p&gt;According to the Mirror UK, the 23-year-old has been in relationships in the past, but they’ve always ended because she never knows if the men she dates truly want to be with her or are only in it for the money.&lt;/p&gt;\r\n&lt;h4&gt;Bad luck.&lt;/h4&gt;\r\n&lt;p&gt;“Jane is amazing and has so much to give but she has found herself alone again as since she won, she’s had terrible luck. She’s never sure whether she is being loved for herself or for her bank balance,” a source told the Mirror UK.&lt;/p&gt;', '&lt;p&gt;The UK’s youngest lottery winner has recently revealed she is searching for a boyfriend, and is willing to pay for the right man.&lt;/p&gt;', 'Lotto Winner Offering Up Money To Any Man That Will Date Her', 'The UK’s youngest lottery winner has recently revealed she is searching for a boyfriend, and is willing to pay for the right man.', 'Lotto Winner,Money To Any Man'),
(5, 1, 'People are Willing to Lie When It Comes to Money', '&lt;p&gt;Humans have a problem: we really like to lie. And most of the lies that we tell aren’t even malicious. We frequently tell lies that will make others or ourselves feel better. Research has found that we tell at least one lie a day and about 40 percent of people would happily lie if they knew they could get away with it.&lt;/p&gt;\r\n&lt;h4&gt;Lying.&lt;/h4&gt;\r\n&lt;p&gt;There’s just something about being human that makes us prone to lying. Even if we try to live our lives as honestly as possible, we can’t help but bend the truth. Most of our lies aren’t even told with malicious intent either.&lt;/p&gt;\r\n&lt;h4&gt;Dishonest.&lt;/h4&gt;\r\n&lt;p&gt;New research has found that 40 percent of people are pretty dishonest--and don’t feel bad about it. The study was performed by researchers involved with a new detective show The Heist.&lt;/p&gt;\r\n&lt;h4&gt;Scenario.&lt;/h4&gt;\r\n&lt;p&gt;Two-thousand volunteers were presented with a scenario: if they found money sticking out of an ATM, how would they react? They were given the options of either taking it as though it were their lucky day or be honest and turn it in.&lt;/p&gt;', '&lt;p&gt;Humans have a problem: we really like to lie. And most of the lies that we tell aren’t even malicious. We frequently tell lies...&lt;/p&gt;', 'People are Willing to Lie When It Comes to Money, According to Research', 'Humans have a problem: we really like to lie. And most of the lies that we tell aren’t even malicious.', 'People are Willing to Lie When It Comes to Money'),
(6, 1, 'Lotto Winner Offering Up Money To Any Man That Will Date Her2', '&lt;p&gt;The UK’s youngest lottery winner has recently revealed she is searching for a boyfriend, and is willing to pay for the right man. Jane Park won the lottery when she was just 17, but now at 23, is looking for someone to settle down. She is currently offering up a generous “allowance” to the right man and has set up a website where men can apply for the coveted position.&lt;/p&gt;\r\n&lt;h4&gt;Settling down.&lt;/h4&gt;\r\n&lt;p&gt;Like many young people, Jane Park is looking for someone to settle down with. Unfortunately, the last few years have left her feeling jaded as she’s had her heart broken multiple times.&lt;/p&gt;\r\n&lt;h4&gt;Relationships.&lt;/h4&gt;\r\n&lt;p&gt;According to the Mirror UK, the 23-year-old has been in relationships in the past, but they’ve always ended because she never knows if the men she dates truly want to be with her or are only in it for the money.&lt;/p&gt;\r\n&lt;h4&gt;Bad luck.&lt;/h4&gt;\r\n&lt;p&gt;“Jane is amazing and has so much to give but she has found herself alone again as since she won, she’s had terrible luck. She’s never sure whether she is being loved for herself or for her bank balance,” a source told the Mirror UK.&lt;/p&gt;', '&lt;p&gt;The UK’s youngest lottery winner has recently revealed she is searching for a boyfriend, and is willing to pay for the right man.&lt;/p&gt;', 'Lotto Winner Offering Up Money To Any Man That Will Date Her2', 'The UK’s youngest lottery winner has recently revealed she is searching for a boyfriend, and is willing to pay for the right man.', 'Lotto Winner,Money To Any Man'),
(7, 1, 'Celebrity Daughter Opens Up About Having Her Eye Color 2', '&lt;p&gt;People are constantly changing things about themselves--- from their hair styles to their clothes, to even the way they physically look. There are some things, like the color of your eyes however, that aren’t as easy to change. Here, one reality tv star has opened up about having had her eyes surgically altered to look gray instead of her natural brown. While the procedure was done several years ago, Zonnique Pullins says she has since regretted undergoing the procedure.&lt;/p&gt;\r\n&lt;h4&gt;Procedure.&lt;/h4&gt;\r\n&lt;p&gt;Zonnique Pullins has recently opened up about undergoing a procedure that saw her having her eyes changed from brown to gray. Pullins has since had the procedure reversed and says she wouldn’t recommend it to anyone else.&lt;/p&gt;\r\n&lt;h4&gt;Inspiration.&lt;/h4&gt;\r\n&lt;p&gt;According to Yahoo, Pullins was inspired by her own mother, reality TV star Tameka “Tiny” Harris, who also got the procedure done back in 2014. Shortly after, Pullins had it done herself.&lt;/p&gt;\r\n&lt;h4&gt;Different.&lt;/h4&gt;\r\n&lt;p&gt;“They told me the procedure would be quick, like five or 10 minutes in my eye. They woke me up and it was very blurry, and then it kind of just fades in. I looked in the mirror and I was like, ‘They’re amazing.’ I just wanted to do something different. And I have the right to do that. It’s my body,” Harris told ABC News.&lt;/p&gt;', '&lt;p&gt;People are constantly changing things about themselves--- from their hair styles to their clothes, to even the way they physically look.&lt;/p&gt;', 'Celebrity Daughter Opens Up About Having Her Eye Color Changed 2', 'People are constantly changing things about themselves--- from their hair styles to their clothes, to even the way they physically look. ', 'Celebrity,Daughter Opens,Eye Color Changed'),
(8, 1, 'People are Willing to Lie When It Comes to Money 2', '&lt;p&gt;Humans have a problem: we really like to lie. And most of the lies that we tell aren’t even malicious. We frequently tell lies that will make others or ourselves feel better. Research has found that we tell at least one lie a day and about 40 percent of people would happily lie if they knew they could get away with it.&lt;/p&gt;\r\n&lt;h4&gt;Lying.&lt;/h4&gt;\r\n&lt;p&gt;There’s just something about being human that makes us prone to lying. Even if we try to live our lives as honestly as possible, we can’t help but bend the truth. Most of our lies aren’t even told with malicious intent either.&lt;/p&gt;\r\n&lt;h4&gt;Dishonest.&lt;/h4&gt;\r\n&lt;p&gt;New research has found that 40 percent of people are pretty dishonest--and don’t feel bad about it. The study was performed by researchers involved with a new detective show The Heist.&lt;/p&gt;\r\n&lt;h4&gt;Scenario.&lt;/h4&gt;\r\n&lt;p&gt;Two-thousand volunteers were presented with a scenario: if they found money sticking out of an ATM, how would they react? They were given the options of either taking it as though it were their lucky day or be honest and turn it in.&lt;/p&gt;', '&lt;p&gt;Humans have a problem: we really like to lie. And most of the lies that we tell aren’t even malicious. We frequently tell lies...&lt;/p&gt;', 'People are Willing to Lie When It Comes to Money, According to Research', 'Humans have a problem: we really like to lie. And most of the lies that we tell aren’t even malicious.', 'People are Willing to Lie When It Comes to Money');

-- --------------------------------------------------------

--
-- Table structure for table `oc_ptpost_list`
--

DROP TABLE IF EXISTS `oc_ptpost_list`;
CREATE TABLE IF NOT EXISTS `oc_ptpost_list` (
  `post_list_id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`post_list_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_ptpost_list`
--

INSERT INTO `oc_ptpost_list` (`post_list_id`, `status`, `sort_order`) VALUES
(1, 1, 1),
(2, 1, 1),
(3, 1, 1),
(4, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_ptpost_list_description`
--

DROP TABLE IF EXISTS `oc_ptpost_list_description`;
CREATE TABLE IF NOT EXISTS `oc_ptpost_list_description` (
  `post_list_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`post_list_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_ptpost_list_description`
--

INSERT INTO `oc_ptpost_list_description` (`post_list_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(1, 1, 'Organic', '&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/p&gt;', 'Organic', 'Organic', 'Organic'),
(2, 1, 'Jewelry', '&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/p&gt;', 'Jewelry', 'Jewelry', 'Jewelry'),
(3, 1, 'Fashion', '&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n&lt;/p&gt;', 'Fashion', 'Fashion', 'Fashion'),
(4, 1, 'Digital', '&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n&lt;/p&gt;', 'Digital', 'Digital', 'Digital');

-- --------------------------------------------------------

--
-- Table structure for table `oc_ptpost_list_to_store`
--

DROP TABLE IF EXISTS `oc_ptpost_list_to_store`;
CREATE TABLE IF NOT EXISTS `oc_ptpost_list_to_store` (
  `post_list_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_ptpost_list_to_store`
--

INSERT INTO `oc_ptpost_list_to_store` (`post_list_id`, `store_id`) VALUES
(1, 0),
(1, 1),
(1, 2),
(1, 3),
(3, 0),
(3, 1),
(3, 2),
(3, 3),
(4, 0),
(4, 1),
(4, 2),
(4, 3),
(2, 0),
(2, 1),
(2, 2),
(2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `oc_ptpost_related_post`
--

DROP TABLE IF EXISTS `oc_ptpost_related_post`;
CREATE TABLE IF NOT EXISTS `oc_ptpost_related_post` (
  `post_id` int(11) NOT NULL,
  `related_post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_ptpost_related_post`
--

INSERT INTO `oc_ptpost_related_post` (`post_id`, `related_post_id`) VALUES
(7, 2),
(2, 7),
(3, 2),
(2, 3),
(3, 7),
(7, 3),
(1, 2),
(2, 1),
(1, 7),
(7, 1),
(1, 3),
(3, 1),
(4, 2),
(2, 4),
(4, 7),
(7, 4),
(4, 3),
(3, 4),
(4, 1),
(1, 4),
(6, 2),
(2, 6),
(6, 3),
(3, 6),
(6, 1),
(1, 6),
(5, 2),
(2, 5),
(5, 3),
(3, 5),
(5, 1),
(1, 5),
(5, 4),
(4, 5),
(8, 2),
(2, 8),
(8, 7),
(7, 8),
(8, 3),
(3, 8),
(8, 1),
(1, 8),
(8, 4),
(4, 8);

-- --------------------------------------------------------

--
-- Table structure for table `oc_ptpost_to_list`
--

DROP TABLE IF EXISTS `oc_ptpost_to_list`;
CREATE TABLE IF NOT EXISTS `oc_ptpost_to_list` (
  `post_list_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_ptpost_to_list`
--

INSERT INTO `oc_ptpost_to_list` (`post_list_id`, `post_id`) VALUES
(1, 3),
(1, 1),
(1, 4),
(1, 6),
(1, 5),
(1, 8),
(3, 5),
(3, 8),
(4, 2),
(4, 7),
(4, 3),
(4, 1),
(4, 4),
(4, 6),
(4, 5),
(4, 8),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 7),
(2, 1),
(2, 6),
(2, 8);

-- --------------------------------------------------------

--
-- Table structure for table `oc_ptpost_to_store`
--

DROP TABLE IF EXISTS `oc_ptpost_to_store`;
CREATE TABLE IF NOT EXISTS `oc_ptpost_to_store` (
  `post_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_ptpost_to_store`
--

INSERT INTO `oc_ptpost_to_store` (`post_id`, `store_id`) VALUES
(2, 0),
(2, 1),
(2, 2),
(2, 3),
(7, 0),
(7, 1),
(7, 2),
(7, 3),
(3, 0),
(3, 1),
(3, 2),
(3, 3),
(1, 0),
(1, 1),
(1, 2),
(1, 3),
(4, 0),
(4, 1),
(4, 2),
(4, 3),
(6, 0),
(6, 1),
(6, 2),
(6, 3),
(5, 0),
(5, 1),
(5, 2),
(5, 3),
(8, 0),
(8, 1),
(8, 2),
(8, 3);

-- --------------------------------------------------------

--
-- Table structure for table `oc_ptslider`
--

DROP TABLE IF EXISTS `oc_ptslider`;
CREATE TABLE IF NOT EXISTS `oc_ptslider` (
  `ptslider_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `auto` tinyint(1) DEFAULT NULL,
  `delay` int(11) DEFAULT NULL,
  `hover` tinyint(1) DEFAULT NULL,
  `nextback` tinyint(1) DEFAULT NULL,
  `contrl` tinyint(1) DEFAULT NULL,
  `effect` varchar(64) NOT NULL,
  PRIMARY KEY (`ptslider_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_ptslider`
--

INSERT INTO `oc_ptslider` (`ptslider_id`, `name`, `status`, `auto`, `delay`, `hover`, `nextback`, `contrl`, `effect`) VALUES
(1, 'Home slideshow 1', 1, 1, 5000, 1, 0, 1, ''),
(2, 'Home slideshow 2', 1, 1, 5000, 1, 0, 1, ''),
(3, 'Home slideshow 3', 1, 1, 5000, 1, 0, 1, ''),
(4, 'Home slideshow 4', 1, 1, 5000, 1, 0, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_ptslider_image`
--

DROP TABLE IF EXISTS `oc_ptslider_image`;
CREATE TABLE IF NOT EXISTS `oc_ptslider_image` (
  `ptslider_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `ptslider_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `type` int(11) NOT NULL,
  `slider_store` varchar(110) DEFAULT '0',
  `image` varchar(255) NOT NULL,
  `secondary_image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ptslider_image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=793 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_ptslider_image`
--

INSERT INTO `oc_ptslider_image` (`ptslider_image_id`, `ptslider_id`, `link`, `type`, `slider_store`, `image`, `secondary_image`) VALUES
(785, 1, '#', 1, '0,0', 'catalog/slider/slider1-store1.jpg', NULL),
(786, 1, '#', 2, '0,0', 'catalog/slider/slider2-store1.jpg', NULL),
(787, 2, '#', 1, '1,0,1,0', 'catalog/slider/slider1-store2.jpg', NULL),
(788, 2, '#', 2, '1,0,1,0', 'catalog/slider/slider2-store2.jpg', NULL),
(789, 3, '#   ', 1, '2,0,2,0', 'catalog/slider/slider1-store3.jpg', NULL),
(790, 3, '#', 2, '2,0,2,0', 'catalog/slider/slider2-store3.jpg', NULL),
(791, 4, '#', 1, '3,0,3,0', 'catalog/slider/slider1-store4.jpg', NULL),
(792, 4, '#', 2, '3,0,3,0', 'catalog/slider/slider2-store4.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oc_ptslider_image_description`
--

DROP TABLE IF EXISTS `oc_ptslider_image_description`;
CREATE TABLE IF NOT EXISTS `oc_ptslider_image_description` (
  `ptslider_image_id` int(11) NOT NULL,
  `ptslider_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `sub_title` varchar(64) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`ptslider_image_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_ptslider_image_description`
--

INSERT INTO `oc_ptslider_image_description` (`ptslider_image_id`, `ptslider_id`, `language_id`, `title`, `sub_title`, `description`) VALUES
(785, 1, 1, '', '', '&lt;p class=&quot;text1&quot;&gt;Hight &amp;amp; Quality&lt;/p&gt;\r\n&lt;p class=&quot;text2&quot;&gt;The Parts Of &lt;br&gt;\r\nShock Absorbers&lt;/p&gt;\r\n&lt;p class=&quot;text3&quot;&gt;&amp;amp; Brake Kit&lt;/p&gt;\r\n'),
(786, 1, 1, '', '', '&lt;p class=&quot;text1&quot;&gt;Special offers&lt;/p&gt;\r\n&lt;p class=&quot;text2&quot;&gt;Get $250 Total &lt;br&gt;\r\nDiscounts On&lt;/p&gt;\r\n&lt;p class=&quot;text3&quot;&gt;A New Tires&lt;/p&gt;\r\n'),
(787, 2, 1, '', '', '&lt;p class=&quot;text1&quot;&gt;From Hodgson motor group&lt;/p&gt;\r\n&lt;p class=&quot;text2&quot;&gt;Original Parts &amp;amp;&lt;/p&gt;\r\n&lt;p class=&quot;text3&quot;&gt;Accessories For Toyota&lt;/p&gt;\r\n'),
(788, 2, 1, '', '', '&lt;p class=&quot;text1&quot;&gt;Shop the very best&lt;/p&gt;\r\n&lt;p class=&quot;text2&quot;&gt;Auto Parts &amp;amp;&lt;/p&gt;\r\n&lt;p class=&quot;text3&quot;&gt;Accessories&lt;/p&gt;\r\n'),
(789, 3, 1, '', '', '&lt;p class=&quot;text1&quot;&gt;use Code weekend37&lt;/p&gt;\r\n&lt;p class=&quot;text2&quot;&gt;Just Got Bigger &lt;br&gt;\r\nCar Parts Online&lt;/p&gt;\r\n&lt;p class=&quot;text3&quot;&gt;Excludes Perfomance Parts, Garage Equipment&lt;/p&gt;'),
(790, 3, 1, '', '', '&lt;p class=&quot;text1&quot;&gt;Restart your heart&lt;/p&gt;\r\n&lt;p class=&quot;text2&quot;&gt;New Renault\r\n&lt;b&gt;Capture life&lt;/b&gt;\r\n&lt;/p&gt;\r\n&lt;p class=&quot;text3&quot;&gt;Renault  Megane The Everyday Race&lt;/p&gt;'),
(791, 4, 1, '', '', '&lt;p class=&quot;text1&quot;&gt;Gm 10 &amp;amp; 12 Brake&lt;/p&gt;\r\n&lt;p class=&quot;text2&quot;&gt;Milage &lt;br&gt;\r\nUsed Engines&lt;/p&gt;\r\n&lt;p class=&quot;text3&quot;&gt;For Sale&lt;/p&gt;\r\n'),
(792, 4, 1, '', '', '&lt;p class=&quot;text1&quot;&gt;Gm 10 &amp;amp; 12 Brake&lt;/p&gt;\r\n&lt;p class=&quot;text2&quot;&gt;Bolt Rear &lt;br&gt;\r\nDisc Brake&lt;/p&gt;\r\n&lt;p class=&quot;text3&quot;&gt;Conversions&lt;/p&gt;\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `oc_pttestimonial`
--

DROP TABLE IF EXISTS `oc_pttestimonial`;
CREATE TABLE IF NOT EXISTS `oc_pttestimonial` (
  `pttestimonial_id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pttestimonial_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_pttestimonial`
--

INSERT INTO `oc_pttestimonial` (`pttestimonial_id`, `status`, `sort_order`) VALUES
(1, 1, 1),
(2, 1, 1),
(3, 1, 1),
(4, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_pttestimonial_description`
--

DROP TABLE IF EXISTS `oc_pttestimonial_description`;
CREATE TABLE IF NOT EXISTS `oc_pttestimonial_description` (
  `pttestimonial_id` int(11) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `content` text,
  PRIMARY KEY (`pttestimonial_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_pttestimonial_description`
--

INSERT INTO `oc_pttestimonial_description` (`pttestimonial_id`, `language_id`, `image`, `customer_name`, `content`) VALUES
(1, 0, 'catalog/testimonials/testimonial1.png', 'Sandy Wilcke', 'All Perfect !! I have three sites with magento , this theme is the best !! Excellent support , advice theme installation package , sorry for English, are Italian but I had no problem !! Thank you !'),
(2, 0, 'catalog/testimonials/testimonial2.png', 'Sandy Wilcke', 'Perfect Themes and the best of all that you have many options to choose! Best Support team ever!Very fast responding and experts on their fields! Thank you very much! Are to be congratulated.'),
(3, 0, 'catalog/testimonials/testimonial3.png', 'Sandy Wilcke', 'All Perfect !! I have three sites with magento , this theme is the best !! Excellent support , advice theme installation package , sorry for English, are Italian but I had no problem !! Thank you !'),
(4, 0, 'catalog/testimonials/testimonial1.png', 'Sandy Wilcke', 'Perfect Themes and the best of all that you have many options to choose! Best Support team ever!Very fast responding and experts on their fields! Thank you very much! Are to be congratulated.');

-- --------------------------------------------------------

--
-- Table structure for table `oc_user_group`
--

DROP TABLE IF EXISTS `oc_user_group`;
CREATE TABLE IF NOT EXISTS `oc_user_group` (
  `user_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL,
  PRIMARY KEY (`user_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_user_group`
--

INSERT INTO `oc_user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Administrator', '{\"access\":{\"0\":\"catalog\\/attribute\",\"1\":\"catalog\\/attribute_group\",\"2\":\"catalog\\/category\",\"3\":\"catalog\\/download\",\"4\":\"catalog\\/filter\",\"5\":\"catalog\\/information\",\"6\":\"catalog\\/manufacturer\",\"7\":\"catalog\\/option\",\"8\":\"catalog\\/product\",\"9\":\"catalog\\/recurring\",\"10\":\"catalog\\/review\",\"11\":\"common\\/column_left\",\"12\":\"common\\/developer\",\"13\":\"common\\/filemanager\",\"14\":\"common\\/profile\",\"15\":\"common\\/security\",\"16\":\"customer\\/custom_field\",\"17\":\"customer\\/customer\",\"18\":\"customer\\/customer_approval\",\"19\":\"customer\\/customer_group\",\"20\":\"design\\/banner\",\"21\":\"design\\/layout\",\"22\":\"design\\/theme\",\"23\":\"design\\/translation\",\"24\":\"design\\/seo_url\",\"25\":\"event\\/statistics\",\"26\":\"event\\/theme\",\"27\":\"extension\\/advertise\\/google\",\"28\":\"extension\\/analytics\\/google\",\"29\":\"extension\\/captcha\\/basic\",\"30\":\"extension\\/captcha\\/google\",\"31\":\"extension\\/dashboard\\/activity\",\"32\":\"extension\\/dashboard\\/chart\",\"33\":\"extension\\/dashboard\\/customer\",\"34\":\"extension\\/dashboard\\/map\",\"35\":\"extension\\/dashboard\\/online\",\"36\":\"extension\\/dashboard\\/order\",\"37\":\"extension\\/dashboard\\/recent\",\"38\":\"extension\\/dashboard\\/sale\",\"39\":\"extension\\/extension\\/advertise\",\"40\":\"extension\\/extension\\/analytics\",\"41\":\"extension\\/extension\\/captcha\",\"42\":\"extension\\/extension\\/dashboard\",\"43\":\"extension\\/extension\\/feed\",\"44\":\"extension\\/extension\\/fraud\",\"45\":\"extension\\/extension\\/menu\",\"46\":\"extension\\/extension\\/module\",\"47\":\"extension\\/extension\\/payment\",\"48\":\"extension\\/extension\\/report\",\"49\":\"extension\\/extension\\/shipping\",\"50\":\"extension\\/extension\\/theme\",\"51\":\"extension\\/extension\\/total\",\"52\":\"extension\\/feed\\/google_base\",\"53\":\"extension\\/feed\\/google_sitemap\",\"54\":\"extension\\/feed\\/openbaypro\",\"55\":\"extension\\/fraud\\/fraudlabspro\",\"56\":\"extension\\/fraud\\/ip\",\"57\":\"extension\\/fraud\\/maxmind\",\"58\":\"extension\\/marketing\\/remarketing\",\"59\":\"extension\\/module\\/account\",\"60\":\"extension\\/module\\/amazon_login\",\"61\":\"extension\\/module\\/amazon_pay\",\"62\":\"extension\\/module\\/banner\",\"63\":\"extension\\/module\\/bestseller\",\"64\":\"extension\\/module\\/carousel\",\"65\":\"extension\\/module\\/category\",\"66\":\"extension\\/module\\/divido_calculator\",\"67\":\"extension\\/module\\/ebay_listing\",\"68\":\"extension\\/module\\/featured\",\"69\":\"extension\\/module\\/filter\",\"70\":\"extension\\/module\\/google_hangouts\",\"71\":\"extension\\/module\\/html\",\"72\":\"extension\\/module\\/information\",\"73\":\"extension\\/module\\/klarna_checkout_module\",\"74\":\"extension\\/module\\/latest\",\"75\":\"extension\\/module\\/laybuy_layout\",\"76\":\"extension\\/module\\/pilibaba_button\",\"77\":\"extension\\/module\\/pp_button\",\"78\":\"extension\\/module\\/pp_login\",\"79\":\"extension\\/module\\/sagepay_direct_cards\",\"80\":\"extension\\/module\\/sagepay_server_cards\",\"81\":\"extension\\/module\\/slideshow\",\"82\":\"extension\\/module\\/special\",\"83\":\"extension\\/module\\/store\",\"84\":\"extension\\/openbay\\/amazon\",\"85\":\"extension\\/openbay\\/amazon_listing\",\"86\":\"extension\\/openbay\\/amazon_product\",\"87\":\"extension\\/openbay\\/amazonus\",\"88\":\"extension\\/openbay\\/amazonus_listing\",\"89\":\"extension\\/openbay\\/amazonus_product\",\"90\":\"extension\\/openbay\\/ebay\",\"91\":\"extension\\/openbay\\/ebay_profile\",\"92\":\"extension\\/openbay\\/ebay_template\",\"93\":\"extension\\/openbay\\/etsy\",\"94\":\"extension\\/openbay\\/etsy_product\",\"95\":\"extension\\/openbay\\/etsy_shipping\",\"96\":\"extension\\/openbay\\/etsy_shop\",\"97\":\"extension\\/openbay\\/fba\",\"98\":\"extension\\/payment\\/amazon_login_pay\",\"99\":\"extension\\/payment\\/authorizenet_aim\",\"100\":\"extension\\/payment\\/authorizenet_sim\",\"101\":\"extension\\/payment\\/bank_transfer\",\"102\":\"extension\\/payment\\/bluepay_hosted\",\"103\":\"extension\\/payment\\/bluepay_redirect\",\"104\":\"extension\\/payment\\/cardconnect\",\"105\":\"extension\\/payment\\/cardinity\",\"106\":\"extension\\/payment\\/cheque\",\"107\":\"extension\\/payment\\/cod\",\"108\":\"extension\\/payment\\/divido\",\"109\":\"extension\\/payment\\/eway\",\"110\":\"extension\\/payment\\/firstdata\",\"111\":\"extension\\/payment\\/firstdata_remote\",\"112\":\"extension\\/payment\\/free_checkout\",\"113\":\"extension\\/payment\\/g2apay\",\"114\":\"extension\\/payment\\/globalpay\",\"115\":\"extension\\/payment\\/globalpay_remote\",\"116\":\"extension\\/payment\\/klarna_account\",\"117\":\"extension\\/payment\\/klarna_checkout\",\"118\":\"extension\\/payment\\/klarna_invoice\",\"119\":\"extension\\/payment\\/laybuy\",\"120\":\"extension\\/payment\\/liqpay\",\"121\":\"extension\\/payment\\/nochex\",\"122\":\"extension\\/payment\\/paymate\",\"123\":\"extension\\/payment\\/paypoint\",\"124\":\"extension\\/payment\\/payza\",\"125\":\"extension\\/payment\\/perpetual_payments\",\"126\":\"extension\\/payment\\/pilibaba\",\"127\":\"extension\\/payment\\/pp_express\",\"128\":\"extension\\/payment\\/pp_payflow\",\"129\":\"extension\\/payment\\/pp_payflow_iframe\",\"130\":\"extension\\/payment\\/pp_pro\",\"131\":\"extension\\/payment\\/pp_pro_iframe\",\"132\":\"extension\\/payment\\/pp_standard\",\"133\":\"extension\\/payment\\/realex\",\"134\":\"extension\\/payment\\/realex_remote\",\"135\":\"extension\\/payment\\/sagepay_direct\",\"136\":\"extension\\/payment\\/sagepay_server\",\"137\":\"extension\\/payment\\/sagepay_us\",\"138\":\"extension\\/payment\\/securetrading_pp\",\"139\":\"extension\\/payment\\/securetrading_ws\",\"140\":\"extension\\/payment\\/skrill\",\"141\":\"extension\\/payment\\/twocheckout\",\"142\":\"extension\\/payment\\/web_payment_software\",\"143\":\"extension\\/payment\\/worldpay\",\"144\":\"extension\\/module\\/pp_braintree_button\",\"145\":\"extension\\/payment\\/pp_braintree\",\"146\":\"extension\\/report\\/customer_activity\",\"147\":\"extension\\/report\\/customer_order\",\"148\":\"extension\\/report\\/customer_reward\",\"149\":\"extension\\/report\\/customer_search\",\"150\":\"extension\\/report\\/customer_transaction\",\"151\":\"extension\\/report\\/marketing\",\"152\":\"extension\\/report\\/product_purchased\",\"153\":\"extension\\/report\\/product_viewed\",\"154\":\"extension\\/report\\/sale_coupon\",\"155\":\"extension\\/report\\/sale_order\",\"156\":\"extension\\/report\\/sale_return\",\"157\":\"extension\\/report\\/sale_shipping\",\"158\":\"extension\\/report\\/sale_tax\",\"159\":\"extension\\/shipping\\/auspost\",\"160\":\"extension\\/shipping\\/ec_ship\",\"161\":\"extension\\/shipping\\/fedex\",\"162\":\"extension\\/shipping\\/flat\",\"163\":\"extension\\/shipping\\/free\",\"164\":\"extension\\/shipping\\/item\",\"165\":\"extension\\/shipping\\/parcelforce_48\",\"166\":\"extension\\/shipping\\/pickup\",\"167\":\"extension\\/shipping\\/royal_mail\",\"168\":\"extension\\/shipping\\/ups\",\"169\":\"extension\\/shipping\\/usps\",\"170\":\"extension\\/shipping\\/weight\",\"171\":\"extension\\/theme\\/default\",\"172\":\"extension\\/total\\/coupon\",\"173\":\"extension\\/total\\/credit\",\"174\":\"extension\\/total\\/handling\",\"175\":\"extension\\/total\\/klarna_fee\",\"176\":\"extension\\/total\\/low_order_fee\",\"177\":\"extension\\/total\\/reward\",\"178\":\"extension\\/total\\/shipping\",\"179\":\"extension\\/total\\/sub_total\",\"180\":\"extension\\/total\\/tax\",\"181\":\"extension\\/total\\/total\",\"182\":\"extension\\/total\\/voucher\",\"183\":\"localisation\\/country\",\"184\":\"localisation\\/currency\",\"185\":\"localisation\\/geo_zone\",\"186\":\"localisation\\/language\",\"187\":\"localisation\\/length_class\",\"188\":\"localisation\\/location\",\"189\":\"localisation\\/order_status\",\"190\":\"localisation\\/return_action\",\"191\":\"localisation\\/return_reason\",\"192\":\"localisation\\/return_status\",\"193\":\"localisation\\/stock_status\",\"194\":\"localisation\\/tax_class\",\"195\":\"localisation\\/tax_rate\",\"196\":\"localisation\\/weight_class\",\"197\":\"localisation\\/zone\",\"198\":\"mail\\/affiliate\",\"199\":\"mail\\/customer\",\"200\":\"mail\\/forgotten\",\"201\":\"mail\\/return\",\"202\":\"mail\\/reward\",\"203\":\"mail\\/transaction\",\"204\":\"marketing\\/contact\",\"205\":\"marketing\\/coupon\",\"206\":\"marketing\\/marketing\",\"207\":\"marketplace\\/api\",\"208\":\"marketplace\\/event\",\"209\":\"marketplace\\/extension\",\"210\":\"marketplace\\/install\",\"211\":\"marketplace\\/installer\",\"212\":\"marketplace\\/marketplace\",\"213\":\"marketplace\\/modification\",\"214\":\"marketplace\\/openbay\",\"215\":\"report\\/online\",\"216\":\"report\\/report\",\"217\":\"report\\/statistics\",\"218\":\"sale\\/order\",\"219\":\"sale\\/recurring\",\"220\":\"sale\\/return\",\"221\":\"sale\\/voucher\",\"222\":\"sale\\/voucher_theme\",\"223\":\"setting\\/setting\",\"224\":\"setting\\/store\",\"225\":\"startup\\/error\",\"226\":\"startup\\/event\",\"227\":\"startup\\/login\",\"228\":\"startup\\/permission\",\"229\":\"startup\\/router\",\"230\":\"startup\\/sass\",\"231\":\"startup\\/startup\",\"232\":\"tool\\/backup\",\"233\":\"tool\\/log\",\"234\":\"tool\\/upload\",\"235\":\"user\\/api\",\"236\":\"user\\/user\",\"237\":\"user\\/user_permission\",\"238\":\"extension\\/module\\/ptcontrolpanel\",\"239\":\"plaza\\/blog\",\"240\":\"plaza\\/blog\\/post\",\"241\":\"plaza\\/blog\\/list\",\"242\":\"plaza\\/blog\\/setting\",\"243\":\"plaza\\/slider\",\"245\":\"plaza\\/ultimatemenu\",\"246\":\"plaza\\/featuredcate\",\"247\":\"plaza\\/newsletter\",\"248\":\"plaza\\/module\",\"249\":\"extension\\/module\\/ptlayoutbuilder\",\"250\":\"extension\\/module\\/ptmenu\",\"251\":\"plaza\\/ultimatemenu\",\"252\":\"extension\\/module\\/ptstaticblock\",\"253\":\"extension\\/module\\/ptslider\",\"254\":\"plaza\\/slider\",\"255\":\"extension\\/module\\/ptblog\",\"256\":\"plaza\\/blog\",\"257\":\"plaza\\/blog\\/post\",\"258\":\"plaza\\/blog\\/list\",\"259\":\"plaza\\/blog\\/setting\",\"260\":\"extension\\/module\\/pttestimonial\",\"262\":\"extension\\/module\\/ptnewsletter\",\"263\":\"plaza\\/newsletter\",\"264\":\"extension\\/module\\/ptajaxlogin\",\"265\":\"extension\\/module\\/ptsearch\",\"266\":\"extension\\/module\\/ptinstagram\",\"267\":\"extension\\/module\\/ptproducts\",\"268\":\"extension\\/module\\/ptfeaturedcate\",\"269\":\"extension\\/module\\/html\",\"270\":\"extension\\/module\\/pttweet\",\"271\":\"extension\\/module\\/ptfeaturedcate\",\"272\":\"extension\\/module\\/pttestimonial\",\"274\":\"extension\\/module\\/ptproducts\",\"275\":\"extension\\/module\\/ptproducts\",\"276\":\"extension\\/module\\/ptproducts\",\"277\":\"extension\\/module\\/ptproducts\",\"278\":\"extension\\/module\\/pttestimonial\",\"280\":\"extension\\/module\\/ptinstagram\",\"281\":\"extension\\/module\\/ptproducts\",\"282\":\"extension\\/module\\/pttweet\",\"283\":\"extension\\/module\\/ptfeaturedcate\",\"284\":\"extension\\/module\\/ptproducts\",\"285\":\"extension\\/module\\/ptproducts\",\"286\":\"extension\\/module\\/ptproducts\",\"287\":\"extension\\/module\\/pttestimonial\",\"289\":\"extension\\/module\\/ptfeaturedcate\",\"290\":\"extension\\/module\\/pttestimonial\",\"291\":\"plaza\\/testimonial\",\"292\":\"extension\\/module\\/ptfeaturedcate\",\"293\":\"extension\\/module\\/ptproducts\"},\"modify\":{\"0\":\"catalog\\/attribute\",\"1\":\"catalog\\/attribute_group\",\"2\":\"catalog\\/category\",\"3\":\"catalog\\/download\",\"4\":\"catalog\\/filter\",\"5\":\"catalog\\/information\",\"6\":\"catalog\\/manufacturer\",\"7\":\"catalog\\/option\",\"8\":\"catalog\\/product\",\"9\":\"catalog\\/recurring\",\"10\":\"catalog\\/review\",\"11\":\"common\\/column_left\",\"12\":\"common\\/developer\",\"13\":\"common\\/filemanager\",\"14\":\"common\\/profile\",\"15\":\"common\\/security\",\"16\":\"customer\\/custom_field\",\"17\":\"customer\\/customer\",\"18\":\"customer\\/customer_approval\",\"19\":\"customer\\/customer_group\",\"20\":\"design\\/banner\",\"21\":\"design\\/layout\",\"22\":\"design\\/theme\",\"23\":\"design\\/translation\",\"24\":\"design\\/seo_url\",\"25\":\"event\\/statistics\",\"26\":\"event\\/theme\",\"27\":\"extension\\/advertise\\/google\",\"28\":\"extension\\/analytics\\/google\",\"29\":\"extension\\/captcha\\/basic\",\"30\":\"extension\\/captcha\\/google\",\"31\":\"extension\\/dashboard\\/activity\",\"32\":\"extension\\/dashboard\\/chart\",\"33\":\"extension\\/dashboard\\/customer\",\"34\":\"extension\\/dashboard\\/map\",\"35\":\"extension\\/dashboard\\/online\",\"36\":\"extension\\/dashboard\\/order\",\"37\":\"extension\\/dashboard\\/recent\",\"38\":\"extension\\/dashboard\\/sale\",\"39\":\"extension\\/extension\\/advertise\",\"40\":\"extension\\/extension\\/analytics\",\"41\":\"extension\\/extension\\/captcha\",\"42\":\"extension\\/extension\\/dashboard\",\"43\":\"extension\\/extension\\/feed\",\"44\":\"extension\\/extension\\/fraud\",\"45\":\"extension\\/extension\\/menu\",\"46\":\"extension\\/extension\\/module\",\"47\":\"extension\\/extension\\/payment\",\"48\":\"extension\\/extension\\/report\",\"49\":\"extension\\/extension\\/shipping\",\"50\":\"extension\\/extension\\/theme\",\"51\":\"extension\\/extension\\/total\",\"52\":\"extension\\/feed\\/google_base\",\"53\":\"extension\\/feed\\/google_sitemap\",\"54\":\"extension\\/feed\\/openbaypro\",\"55\":\"extension\\/fraud\\/fraudlabspro\",\"56\":\"extension\\/fraud\\/ip\",\"57\":\"extension\\/fraud\\/maxmind\",\"58\":\"extension\\/marketing\\/remarketing\",\"59\":\"extension\\/module\\/account\",\"60\":\"extension\\/module\\/amazon_login\",\"61\":\"extension\\/module\\/amazon_pay\",\"62\":\"extension\\/module\\/banner\",\"63\":\"extension\\/module\\/bestseller\",\"64\":\"extension\\/module\\/carousel\",\"65\":\"extension\\/module\\/category\",\"66\":\"extension\\/module\\/divido_calculator\",\"67\":\"extension\\/module\\/ebay_listing\",\"68\":\"extension\\/module\\/featured\",\"69\":\"extension\\/module\\/filter\",\"70\":\"extension\\/module\\/google_hangouts\",\"71\":\"extension\\/module\\/html\",\"72\":\"extension\\/module\\/information\",\"73\":\"extension\\/module\\/klarna_checkout_module\",\"74\":\"extension\\/module\\/latest\",\"75\":\"extension\\/module\\/laybuy_layout\",\"76\":\"extension\\/module\\/pilibaba_button\",\"77\":\"extension\\/module\\/pp_button\",\"78\":\"extension\\/module\\/pp_login\",\"79\":\"extension\\/module\\/sagepay_direct_cards\",\"80\":\"extension\\/module\\/sagepay_server_cards\",\"81\":\"extension\\/module\\/slideshow\",\"82\":\"extension\\/module\\/special\",\"83\":\"extension\\/module\\/store\",\"84\":\"extension\\/openbay\\/amazon\",\"85\":\"extension\\/openbay\\/amazon_listing\",\"86\":\"extension\\/openbay\\/amazon_product\",\"87\":\"extension\\/openbay\\/amazonus\",\"88\":\"extension\\/openbay\\/amazonus_listing\",\"89\":\"extension\\/openbay\\/amazonus_product\",\"90\":\"extension\\/openbay\\/ebay\",\"91\":\"extension\\/openbay\\/ebay_profile\",\"92\":\"extension\\/openbay\\/ebay_template\",\"93\":\"extension\\/openbay\\/etsy\",\"94\":\"extension\\/openbay\\/etsy_product\",\"95\":\"extension\\/openbay\\/etsy_shipping\",\"96\":\"extension\\/openbay\\/etsy_shop\",\"97\":\"extension\\/openbay\\/fba\",\"98\":\"extension\\/payment\\/amazon_login_pay\",\"99\":\"extension\\/payment\\/authorizenet_aim\",\"100\":\"extension\\/payment\\/authorizenet_sim\",\"101\":\"extension\\/payment\\/bank_transfer\",\"102\":\"extension\\/payment\\/bluepay_hosted\",\"103\":\"extension\\/payment\\/bluepay_redirect\",\"104\":\"extension\\/payment\\/cardconnect\",\"105\":\"extension\\/payment\\/cardinity\",\"106\":\"extension\\/payment\\/cheque\",\"107\":\"extension\\/payment\\/cod\",\"108\":\"extension\\/payment\\/divido\",\"109\":\"extension\\/payment\\/eway\",\"110\":\"extension\\/payment\\/firstdata\",\"111\":\"extension\\/payment\\/firstdata_remote\",\"112\":\"extension\\/payment\\/free_checkout\",\"113\":\"extension\\/payment\\/g2apay\",\"114\":\"extension\\/payment\\/globalpay\",\"115\":\"extension\\/payment\\/globalpay_remote\",\"116\":\"extension\\/payment\\/klarna_account\",\"117\":\"extension\\/payment\\/klarna_checkout\",\"118\":\"extension\\/payment\\/klarna_invoice\",\"119\":\"extension\\/payment\\/laybuy\",\"120\":\"extension\\/payment\\/liqpay\",\"121\":\"extension\\/payment\\/nochex\",\"122\":\"extension\\/payment\\/paymate\",\"123\":\"extension\\/payment\\/paypoint\",\"124\":\"extension\\/payment\\/payza\",\"125\":\"extension\\/payment\\/perpetual_payments\",\"126\":\"extension\\/payment\\/pilibaba\",\"127\":\"extension\\/payment\\/pp_express\",\"128\":\"extension\\/payment\\/pp_payflow\",\"129\":\"extension\\/payment\\/pp_payflow_iframe\",\"130\":\"extension\\/payment\\/pp_pro\",\"131\":\"extension\\/payment\\/pp_pro_iframe\",\"132\":\"extension\\/payment\\/pp_standard\",\"133\":\"extension\\/payment\\/realex\",\"134\":\"extension\\/payment\\/realex_remote\",\"135\":\"extension\\/payment\\/sagepay_direct\",\"136\":\"extension\\/payment\\/sagepay_server\",\"137\":\"extension\\/payment\\/sagepay_us\",\"138\":\"extension\\/payment\\/securetrading_pp\",\"139\":\"extension\\/payment\\/securetrading_ws\",\"140\":\"extension\\/payment\\/skrill\",\"141\":\"extension\\/payment\\/twocheckout\",\"142\":\"extension\\/payment\\/web_payment_software\",\"143\":\"extension\\/payment\\/worldpay\",\"144\":\"extension\\/module\\/pp_braintree_button\",\"145\":\"extension\\/payment\\/pp_braintree\",\"146\":\"extension\\/report\\/customer_activity\",\"147\":\"extension\\/report\\/customer_order\",\"148\":\"extension\\/report\\/customer_reward\",\"149\":\"extension\\/report\\/customer_search\",\"150\":\"extension\\/report\\/customer_transaction\",\"151\":\"extension\\/report\\/marketing\",\"152\":\"extension\\/report\\/product_purchased\",\"153\":\"extension\\/report\\/product_viewed\",\"154\":\"extension\\/report\\/sale_coupon\",\"155\":\"extension\\/report\\/sale_order\",\"156\":\"extension\\/report\\/sale_return\",\"157\":\"extension\\/report\\/sale_shipping\",\"158\":\"extension\\/report\\/sale_tax\",\"159\":\"extension\\/shipping\\/auspost\",\"160\":\"extension\\/shipping\\/ec_ship\",\"161\":\"extension\\/shipping\\/fedex\",\"162\":\"extension\\/shipping\\/flat\",\"163\":\"extension\\/shipping\\/free\",\"164\":\"extension\\/shipping\\/item\",\"165\":\"extension\\/shipping\\/parcelforce_48\",\"166\":\"extension\\/shipping\\/pickup\",\"167\":\"extension\\/shipping\\/royal_mail\",\"168\":\"extension\\/shipping\\/ups\",\"169\":\"extension\\/shipping\\/usps\",\"170\":\"extension\\/shipping\\/weight\",\"171\":\"extension\\/theme\\/default\",\"172\":\"extension\\/total\\/coupon\",\"173\":\"extension\\/total\\/credit\",\"174\":\"extension\\/total\\/handling\",\"175\":\"extension\\/total\\/klarna_fee\",\"176\":\"extension\\/total\\/low_order_fee\",\"177\":\"extension\\/total\\/reward\",\"178\":\"extension\\/total\\/shipping\",\"179\":\"extension\\/total\\/sub_total\",\"180\":\"extension\\/total\\/tax\",\"181\":\"extension\\/total\\/total\",\"182\":\"extension\\/total\\/voucher\",\"183\":\"localisation\\/country\",\"184\":\"localisation\\/currency\",\"185\":\"localisation\\/geo_zone\",\"186\":\"localisation\\/language\",\"187\":\"localisation\\/length_class\",\"188\":\"localisation\\/location\",\"189\":\"localisation\\/order_status\",\"190\":\"localisation\\/return_action\",\"191\":\"localisation\\/return_reason\",\"192\":\"localisation\\/return_status\",\"193\":\"localisation\\/stock_status\",\"194\":\"localisation\\/tax_class\",\"195\":\"localisation\\/tax_rate\",\"196\":\"localisation\\/weight_class\",\"197\":\"localisation\\/zone\",\"198\":\"mail\\/affiliate\",\"199\":\"mail\\/customer\",\"200\":\"mail\\/forgotten\",\"201\":\"mail\\/return\",\"202\":\"mail\\/reward\",\"203\":\"mail\\/transaction\",\"204\":\"marketing\\/contact\",\"205\":\"marketing\\/coupon\",\"206\":\"marketing\\/marketing\",\"207\":\"marketplace\\/event\",\"208\":\"marketplace\\/api\",\"209\":\"marketplace\\/extension\",\"210\":\"marketplace\\/install\",\"211\":\"marketplace\\/installer\",\"212\":\"marketplace\\/marketplace\",\"213\":\"marketplace\\/modification\",\"214\":\"marketplace\\/openbay\",\"215\":\"report\\/online\",\"216\":\"report\\/report\",\"217\":\"report\\/statistics\",\"218\":\"sale\\/order\",\"219\":\"sale\\/recurring\",\"220\":\"sale\\/return\",\"221\":\"sale\\/voucher\",\"222\":\"sale\\/voucher_theme\",\"223\":\"setting\\/setting\",\"224\":\"setting\\/store\",\"225\":\"startup\\/error\",\"226\":\"startup\\/event\",\"227\":\"startup\\/login\",\"228\":\"startup\\/permission\",\"229\":\"startup\\/router\",\"230\":\"startup\\/sass\",\"231\":\"startup\\/startup\",\"232\":\"tool\\/backup\",\"233\":\"tool\\/log\",\"234\":\"tool\\/upload\",\"235\":\"user\\/api\",\"236\":\"user\\/user\",\"237\":\"user\\/user_permission\",\"238\":\"extension\\/module\\/ptcontrolpanel\",\"239\":\"plaza\\/blog\",\"240\":\"plaza\\/blog\\/post\",\"241\":\"plaza\\/blog\\/list\",\"242\":\"plaza\\/blog\\/setting\",\"243\":\"plaza\\/slider\",\"245\":\"plaza\\/ultimatemenu\",\"246\":\"plaza\\/featuredcate\",\"247\":\"plaza\\/newsletter\",\"248\":\"plaza\\/module\",\"249\":\"extension\\/module\\/ptlayoutbuilder\",\"250\":\"extension\\/module\\/ptmenu\",\"251\":\"plaza\\/ultimatemenu\",\"252\":\"extension\\/module\\/ptstaticblock\",\"253\":\"extension\\/module\\/ptslider\",\"254\":\"plaza\\/slider\",\"255\":\"extension\\/module\\/ptblog\",\"256\":\"plaza\\/blog\",\"257\":\"plaza\\/blog\\/post\",\"258\":\"plaza\\/blog\\/list\",\"259\":\"plaza\\/blog\\/setting\",\"260\":\"extension\\/module\\/pttestimonial\",\"262\":\"extension\\/module\\/ptnewsletter\",\"263\":\"plaza\\/newsletter\",\"264\":\"extension\\/module\\/ptajaxlogin\",\"265\":\"extension\\/module\\/ptsearch\",\"266\":\"extension\\/module\\/ptinstagram\",\"267\":\"extension\\/module\\/ptproducts\",\"268\":\"extension\\/module\\/ptfeaturedcate\",\"269\":\"extension\\/module\\/html\",\"270\":\"extension\\/module\\/pttweet\",\"271\":\"extension\\/module\\/ptfeaturedcate\",\"272\":\"extension\\/module\\/pttestimonial\",\"274\":\"extension\\/module\\/ptproducts\",\"275\":\"extension\\/module\\/ptproducts\",\"276\":\"extension\\/module\\/ptproducts\",\"277\":\"extension\\/module\\/ptproducts\",\"278\":\"extension\\/module\\/pttestimonial\",\"280\":\"extension\\/module\\/ptinstagram\",\"281\":\"extension\\/module\\/ptproducts\",\"282\":\"extension\\/module\\/pttweet\",\"283\":\"extension\\/module\\/ptfeaturedcate\",\"284\":\"extension\\/module\\/ptproducts\",\"285\":\"extension\\/module\\/ptproducts\",\"286\":\"extension\\/module\\/ptproducts\",\"287\":\"extension\\/module\\/pttestimonial\",\"289\":\"extension\\/module\\/ptfeaturedcate\",\"290\":\"extension\\/module\\/pttestimonial\",\"291\":\"plaza\\/testimonial\",\"292\":\"extension\\/module\\/ptfeaturedcate\",\"293\":\"extension\\/module\\/ptproducts\"}}'),
(10, 'Demonstration', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
