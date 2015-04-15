-- phpMyAdmin SQL Dump
-- version 4.2.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 14, 2015 at 04:18 PM
-- Server version: 5.6.21
-- PHP Version: 5.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `isabella_princ`
--

-- --------------------------------------------------------

--
-- Table structure for table `isab_antiflood`
--

CREATE TABLE IF NOT EXISTS `isab_antiflood` (
  `ip_addr` varchar(48) NOT NULL DEFAULT '',
  `time` varchar(14) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `isab_antiflood`
--

INSERT INTO `isab_antiflood` (`ip_addr`, `time`) VALUES
('127.0.0.1', '1199042792');

-- --------------------------------------------------------

--
-- Table structure for table `isab_authors`
--

CREATE TABLE IF NOT EXISTS `isab_authors` (
  `aid` varchar(25) NOT NULL DEFAULT '',
  `name` varchar(50) DEFAULT NULL,
  `url` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `pwd` varchar(40) DEFAULT NULL,
  `counter` int(11) NOT NULL DEFAULT '0',
  `radminsuper` tinyint(1) NOT NULL DEFAULT '1',
  `admlanguage` varchar(30) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `isab_authors`
--

INSERT INTO `isab_authors` (`aid`, `name`, `url`, `email`, `pwd`, `counter`, `radminsuper`, `admlanguage`) VALUES
('admin', 'God', 'http://', 'email@email.com', '43723bb0b9a4539590ea93b64967e5b6', 0, 1, ''),
('Fabio_A', 'God', 'http://www.videoconvert.com.br', 'fabio@videoconvert.com.br', 'd745dbd1f4e039a1400229154e108194', -1, 1, ''),
('marcelo_t', 'Marcelo Tomaz', 'www.convertpublicidade.com.br', 'marcelo@convertpublicidade.com.br', '3f21d5ea2f3a79648f090773eeecbc25', 0, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `isab_autonews`
--

CREATE TABLE IF NOT EXISTS `isab_autonews` (
`anid` int(11) NOT NULL,
  `catid` int(11) NOT NULL DEFAULT '0',
  `aid` varchar(30) NOT NULL DEFAULT '',
  `title` varchar(80) NOT NULL DEFAULT '',
  `time` varchar(19) NOT NULL DEFAULT '',
  `hometext` text NOT NULL,
  `bodytext` text NOT NULL,
  `topic` int(3) NOT NULL DEFAULT '1',
  `informant` varchar(20) NOT NULL DEFAULT '',
  `notes` text NOT NULL,
  `ihome` int(1) NOT NULL DEFAULT '0',
  `alanguage` varchar(30) NOT NULL DEFAULT '',
  `acomm` int(1) NOT NULL DEFAULT '0',
  `associated` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `isab_blocks`
--

CREATE TABLE IF NOT EXISTS `isab_blocks` (
`bid` int(10) NOT NULL,
  `bkey` varchar(15) NOT NULL DEFAULT '',
  `title` varchar(60) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `url` varchar(200) NOT NULL DEFAULT '',
  `bposition` char(1) NOT NULL DEFAULT '',
  `weight` int(10) NOT NULL DEFAULT '1',
  `active` int(1) NOT NULL DEFAULT '1',
  `refresh` int(10) NOT NULL DEFAULT '0',
  `time` varchar(14) NOT NULL DEFAULT '0',
  `blanguage` varchar(30) NOT NULL DEFAULT '',
  `blockfile` varchar(255) NOT NULL DEFAULT '',
  `view` int(1) NOT NULL DEFAULT '0',
  `groups` text NOT NULL,
  `expire` varchar(14) NOT NULL DEFAULT '0',
  `action` char(1) NOT NULL DEFAULT '',
  `subscription` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `isab_blocks`
--

INSERT INTO `isab_blocks` (`bid`, `bkey`, `title`, `content`, `url`, `bposition`, `weight`, `active`, `refresh`, `time`, `blanguage`, `blockfile`, `view`, `groups`, `expire`, `action`, `subscription`) VALUES
(2, 'admin', 'Administration', '<strong>·</strong> <a href="\\admin.php\\">Administration</a><br /> <strong>·</strong> <a href="\\admin.php?op=adminStory\\">NEW Story</a><br /> <strong>·</strong> <a href="\\admin.php?op=create\\">Change Survey</a><br /> <strong>·</strong> <a href="\\admin.php?op=content\\">Content</a><br /> <strong>·</strong> <a href="\\admin.php?op=logout\\">Logout</a>', '', 'r', 7, 0, 0, '985591188', '', '', 2, '', '0', 'd', 0),
(8, 'userbox', 'User''s Custom Box', '', '', 'r', 9, 0, 0, '', '', '', 1, '', '0', 'd', 0),
(15, '', 'Main Menu', '', '', 'r', 4, 0, 0, '', '', 'block-Main_Menu.php', 0, '', '0', 'd', 0),
(16, '', 'Quick Access', '', '', 'r', 8, 0, 0, '', '', 'block-Quick_Access.php', 2, '', '0', 'd', 0),
(18, '', 'Lateral-Direita', '', '', 'r', 2, 0, 0, '', '', 'block-Lateral-Direita.php', 0, '', '0', 'd', 0),
(20, '', 'Quick Conteudo', '', '', 'r', 5, 0, 0, '', '', 'block-Quick_Conteudo.php', 0, '', '0', 'd', 0),
(21, '', 'Conteudo', '', '', 'r', 6, 0, 3600, '', '', 'block-Conteudo.php', 0, '', '0', 'd', 0),
(22, '', 'Menu', '', '', 'r', 1, 0, 0, '', '', 'block-menu.php', 0, '', '0', 'd', 0),
(23, '', 'Lateral', '', '', 'r', 3, 0, 3600, '', '', 'block-Lateral.php', 0, '', '0', 'd', 0);

-- --------------------------------------------------------

--
-- Table structure for table `isab_cities`
--

CREATE TABLE IF NOT EXISTS `isab_cities` (
  `id` mediumint(4) NOT NULL DEFAULT '0',
  `local_id` mediumint(3) NOT NULL DEFAULT '0',
  `city` varchar(65) NOT NULL DEFAULT '',
  `cc` char(2) NOT NULL DEFAULT '',
  `country` varchar(35) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `isab_cnbc_auto`
--

CREATE TABLE IF NOT EXISTS `isab_cnbc_auto` (
`aid` int(10) NOT NULL,
  `uid` int(10) NOT NULL DEFAULT '0',
  `pid` int(10) NOT NULL DEFAULT '0',
  `see` int(1) NOT NULL DEFAULT '0',
  `edit` int(1) NOT NULL DEFAULT '0',
  `criate` tinyint(1) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `delete` tinyint(1) NOT NULL DEFAULT '0',
  `permission` tinyint(1) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `isab_cnbc_autof`
--

CREATE TABLE IF NOT EXISTS `isab_cnbc_autof` (
`aid` int(10) NOT NULL,
  `uid` int(10) NOT NULL DEFAULT '0',
  `cid` int(10) NOT NULL DEFAULT '0',
  `see` int(1) NOT NULL DEFAULT '0',
  `edit` int(1) NOT NULL DEFAULT '0',
  `criate` tinyint(1) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `delete` tinyint(1) NOT NULL DEFAULT '0',
  `permission` tinyint(1) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `isab_cnbc_config`
--

CREATE TABLE IF NOT EXISTS `isab_cnbc_config` (
  `config_name` varchar(255) NOT NULL DEFAULT '',
  `config_value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `isab_cnbc_config`
--

INSERT INTO `isab_cnbc_config` (`config_name`, `config_value`) VALUES
('allowfck', '0'),
('nson', '1'),
('showcopyright', '0'),
('showsubfiles', '1'),
('showview', '0'),
('showdate', '0'),
('allowblock', '1'),
('allowtheme', '0'),
('backupnumber', '100'),
('showhistoric', '0'),
('wikilinks', '1'),
('showway', '1');

-- --------------------------------------------------------

--
-- Table structure for table `isab_cnbc_folder`
--

CREATE TABLE IF NOT EXISTS `isab_cnbc_folder` (
`cid` int(10) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT 'title',
  `description` text,
  `mid` int(10) NOT NULL DEFAULT '0',
  `son` int(10) NOT NULL DEFAULT '0',
  `wiki` tinyint(1) NOT NULL DEFAULT '0',
  `active` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `isab_cnbc_folder`
--

INSERT INTO `isab_cnbc_folder` (`cid`, `title`, `description`, `mid`, `son`, `wiki`, `active`) VALUES
(1, 'Isabella', '', 0, 0, 0, 1),
(2, 'Tecidos', '', 0, 0, 0, 1),
(3, 'Bolsas', '', 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `isab_cnbc_links`
--

CREATE TABLE IF NOT EXISTS `isab_cnbc_links` (
  `page` int(10) NOT NULL DEFAULT '0',
  `link` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `isab_cnbc_my_uploads`
--

CREATE TABLE IF NOT EXISTS `isab_cnbc_my_uploads` (
  `info` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `isab_cnbc_my_uploads`
--

INSERT INTO `isab_cnbc_my_uploads` (`info`, `type`) VALUES
('1048576', 'limit'),
('1', 'howtoban'),
('gif', 'banned'),
('jpg', 'banned'),
('png', 'banned'),
('pdf', 'banned'),
('txt', 'banned'),
('doc', 'banned'),
('xls', 'banned'),
('ppt', 'banned'),
('zip', 'banned'),
('gz', 'banned'),
('tar', 'banned'),
('pages/', 'directory'),
('http://www.yoursite.com/pages/', 'url'),
('4.0', 'version'),
('0', 'user_type'),
('1048576', 'limit'),
('1', 'howtoban'),
('gif', 'banned'),
('jpg', 'banned'),
('png', 'banned'),
('pdf', 'banned'),
('txt', 'banned'),
('doc', 'banned'),
('xls', 'banned'),
('ppt', 'banned'),
('zip', 'banned'),
('gz', 'banned'),
('tar', 'banned'),
('pages/', 'directory'),
('http://www.yoursite.com/pages/', 'url'),
('4.0', 'version'),
('0', 'user_type');

-- --------------------------------------------------------

--
-- Table structure for table `isab_cnbc_my_uploads_users`
--

CREATE TABLE IF NOT EXISTS `isab_cnbc_my_uploads_users` (
  `user_id` int(11) NOT NULL DEFAULT '0',
  `size` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `isab_cnbc_pages`
--

CREATE TABLE IF NOT EXISTS `isab_cnbc_pages` (
`pid` int(10) NOT NULL,
  `cid` int(10) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT 'empty',
  `subtitle` varchar(255) NOT NULL DEFAULT '',
  `page_header` text NOT NULL,
  `text` longtext NOT NULL,
  `page_footer` text NOT NULL,
  `signature` text NOT NULL,
  `atitle` tinyint(1) NOT NULL DEFAULT '0',
  `asubtitle` tinyint(1) NOT NULL DEFAULT '0',
  `apage_header` tinyint(1) NOT NULL DEFAULT '0',
  `atext` tinyint(1) NOT NULL DEFAULT '1',
  `apage_footer` tinyint(1) NOT NULL DEFAULT '0',
  `asignature` tinyint(1) NOT NULL DEFAULT '0',
  `dateadd` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dateedit` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `useradd` int(10) NOT NULL DEFAULT '0',
  `useredit` int(10) NOT NULL DEFAULT '0',
  `counter` int(10) NOT NULL DEFAULT '0',
  `clanguage` varchar(30) DEFAULT '',
  `theme` varchar(25) DEFAULT NULL,
  `mid` int(10) NOT NULL DEFAULT '0',
  `son` int(10) NOT NULL DEFAULT '0',
  `active` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `isab_cnbc_pages`
--

INSERT INTO `isab_cnbc_pages` (`pid`, `cid`, `title`, `subtitle`, `page_header`, `text`, `page_footer`, `signature`, `atitle`, `asubtitle`, `apage_header`, `atext`, `apage_footer`, `asignature`, `dateadd`, `dateedit`, `useradd`, `useredit`, `counter`, `clanguage`, `theme`, `mid`, `son`, `active`) VALUES
(1, 1, 'Tecidos', 'subtitulo', 'cabecalho', '<table border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" width=\\"890\\" align=\\"center\\">      <tbody><tr>     <td align=\\"center\\" valign=\\"top\\"><object classid=\\"clsid:D27CDB6E-AE6D-11cf-96B8-444553540000\\" codebase=\\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0\\" width=\\"920\\" height=\\"380\\"><param name=\\"movie\\" value=\\"UserFiles/Flash/tecidos.swf\\" /><param name=\\"quality\\" value=\\"high\\" /><param name=\\"menu\\" value=\\"false\\" /><param name=\\"wmode\\" value=\\"\\" /><embed src=\\"UserFiles/Flash/tecidos.swf\\" wmode=\\"\\" quality=\\"high\\" menu=\\"false\\" pluginspage=\\"http://www.macromedia.com/go/getflashplayer\\" type=\\"application/x-shockwave-flash\\" width=\\"920\\" height=\\"380\\"></embed></object></td>   </tr>           <tr>       <td class=\\"separador\\" height=\\"50\\">&nbsp;</td>     </tr>           </tbody></table>', '', '', 1, 0, 0, 1, 0, 0, '2009-08-10 14:04:14', '2009-08-20 13:08:39', 2, 2, 114, '', '', 0, 0, 1),
(2, 1, 'Bolsas', 'Bolsas feitas com tecido de garrafas pet e tecidos reciclados.', 'O atelier Arte T&ecirc;xtil Isabella Carvalho lan&ccedil;a uma nova cole&ccedil;&atilde;o de bolsas com materiais 100% reciclados.', '<table border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" width=\\"890\\" align=\\"center\\">      <tbody><tr>     <td align=\\"center\\" valign=\\"top\\"><object classid=\\"clsid:D27CDB6E-AE6D-11cf-96B8-444553540000\\" codebase=\\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0\\" width=\\"920\\" height=\\"380\\"><param name=\\"movie\\" value=\\"UserFiles/Flash/bolsas.swf\\" /><param name=\\"quality\\" value=\\"high\\" /><param name=\\"menu\\" value=\\"false\\" /><param name=\\"wmode\\" value=\\"\\" /><embed src=\\"UserFiles/Flash/bolsas.swf\\" wmode=\\"\\" quality=\\"high\\" menu=\\"false\\" pluginspage=\\"http://www.macromedia.com/go/getflashplayer\\" type=\\"application/x-shockwave-flash\\" width=\\"920\\" height=\\"380\\"></embed></object></td>   </tr>      <tr>     <td class=\\"separador\\" height=\\"50\\">&nbsp;</td>   </tr> </tbody></table>', '', '', 1, 0, 0, 1, 0, 0, '2009-08-10 14:05:20', '2009-08-19 16:28:38', 2, 2, 77, '', '', 0, 0, 1),
(3, 1, 'Ateliê', 'Lorem ipsum dolor ', 'Lorem ipsum dolor ', '<table border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" width=\\"80%\\" align=\\"center\\"><tbody><tr><td>&nbsp;<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce auctor elementum nulla, quis tincidunt augue sodales non. Praesent pellentesque dui quis massa tristique nec convallis massa pretium. Sed dapibus iaculis ornare. Proin eget magna elit, nec tempor urna. Sed placerat, mauris sit amet pretium adipiscing, metus risus blandit arcu, vitae pharetra leo enim eu augue. Nulla ante est, venenatis sit amet scelerisque commodo, cursus eget arcu. Morbi convallis tristique leo, interdum dapibus massa congue tempus. Proin nec metus vel elit commodo sodales. Curabitur tristique laoreet convallis. In facilisis malesuada urna nec aliquet. Quisque blandit iaculis nisl, non tempor ante commodo ac. Integer fermentum fringilla augue vel imperdiet. Cras nec orci nisi. Proin risus felis, ullamcorper ac venenatis in, bibendum quis lorem. Vivamus lacus dui, porta vitae elementum nec, facilisis venenatis tellus. Pellentesque non felis diam. </p> <p>Curabitur laoreet nunc egestas massa auctor vel elementum purus laoreet. Cras augue quam, commodo et elementum sed, fringilla ac augue. Pellentesque sagittis sollicitudin volutpat. Curabitur vestibulum aliquet laoreet. Phasellus eu justo lectus. Sed sed bibendum ligula. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed dictum justo sed arcu malesuada gravida. Aliquam sit amet arcu sed lorem mattis tristique. Mauris ultrices condimentum elit, nec interdum turpis tempor et. Quisque sit amet velit in tortor porta sodales. Mauris in est ipsum, eget malesuada mi. In ante nibh, tristique quis porttitor nec, vehicula a orci. Pellentesque a vulputate diam. Mauris sollicitudin, nunc tempor fermentum imperdiet, massa purus euismod velit, quis pellentesque nisi lacus nec risus. Quisque nulla arcu, semper in commodo ut, varius at nunc. In ipsum dolor, lacinia sed ultricies a, mollis quis dolor. </p></td></tr></tbody></table>', '', '', 1, 1, 0, 1, 0, 0, '2009-08-10 14:05:31', '2009-08-27 08:56:29', 2, 2, 37, '', '', 0, 0, 1),
(4, 1, 'Aplicações', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Nullam condimentum tempor elementum. Nullam at elementum risus. Nulla tincidunt tincidunt volutpat. ', '<table border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" width=\\"100%\\">      <tbody><tr>     <td align=\\"center\\" valign=\\"top\\"><img src=\\"UserFiles/Image/aplicacao/sofa.jpg\\" border=\\"0\\" width=\\"250\\" height=\\"182\\" /></td>     <td align=\\"center\\" valign=\\"top\\"><img src=\\"UserFiles/Image/aplicacao/puff.png\\" border=\\"0\\" width=\\"200\\" height=\\"206\\" /></td>   </tr>   <tr>     <td align=\\"center\\" valign=\\"top\\">&nbsp;</td>     <td align=\\"center\\" valign=\\"top\\">&nbsp;</td>   </tr>   <tr>     <td align=\\"center\\" valign=\\"top\\"><img src=\\"UserFiles/Image/aplicacao/papelparede_1.jpg\\" border=\\"0\\" width=\\"250\\" height=\\"333\\" /></td>     <td align=\\"center\\" valign=\\"top\\"><img src=\\"UserFiles/Image/aplicacao/papelparede_2.jpg\\" border=\\"0\\" width=\\"250\\" height=\\"333\\" /></td>   </tr> </tbody></table>', '', '', 1, 1, 1, 1, 0, 0, '2009-08-10 15:05:13', '2009-08-10 16:02:00', 2, 2, 39, '', '', 1, 1, 1),
(5, 1, 'A Artista', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ', 'Nullam condimentum tempor elementum. Nullam at elementum risus. Nulla tincidunt tincidunt volutpat. ', '', '', '', 1, 1, 1, 1, 0, 0, '2009-08-10 15:11:36', '2009-08-10 16:02:37', 2, 2, 11, '', '', 0, 0, 1),
(6, 1, 'O Ateliê', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ', 'Nullam condimentum tempor elementum. Nullam at elementum risus. Nulla tincidunt tincidunt volutpat. Quisque quis ante eros, vitae porta felis. Vivamus pulvinar lacinia nulla quis scelerisque. Suspendisse egestas blandit consectetur.', '', '', '', 1, 1, 1, 1, 0, 0, '2009-08-10 15:12:06', '2009-08-10 16:03:14', 2, 2, 6, '', '', 0, 0, 1),
(7, 2, 'Lançamentos', '', '', '<table border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" width=\\"100%\\">      <tbody><tr>     <td align=\\"center\\" valign=\\"top\\"><img src=\\"UserFiles/Image/bolsas.jpg\\" border=\\"0\\" width=\\"580\\" height=\\"395\\" /></td>   </tr> </tbody></table>', '', '', 1, 0, 0, 1, 0, 0, '2009-08-10 15:13:39', '2009-08-10 16:04:59', 2, 2, 6, '', '', 0, 0, 1),
(8, 2, 'Coleções', '', '', '<table border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" width=\\"100%\\">      <tbody><tr>     <td align=\\"center\\" valign=\\"top\\"><img src=\\"UserFiles/Image/bolsas.jpg\\" border=\\"0\\" width=\\"580\\" height=\\"395\\" /></td>   </tr> </tbody></table>', '', '', 1, 0, 0, 1, 0, 0, '2009-08-10 15:13:48', '2009-08-10 16:04:52', 2, 2, 9, '', '', 0, 0, 1),
(9, 2, 'Tipos', '', '', '<table border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" width=\\"100%\\">      <tbody><tr>     <td align=\\"center\\" valign=\\"top\\"><img src=\\"UserFiles/Image/bolsas.jpg\\" border=\\"0\\" width=\\"580\\" height=\\"395\\" /></td>   </tr> </tbody></table>', '', '', 1, 0, 0, 1, 0, 0, '2009-08-10 15:14:15', '2009-08-10 16:05:08', 2, 2, 3, '', '', 0, 0, 1),
(10, 1, 'Localização', '', '', '<table border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" width=\\"890\\" align=\\"center\\">      <tbody><tr>     <td align=\\"center\\" valign=\\"top\\"><table border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" width=\\"100%\\">       <tbody><tr>         <td width=\\"255\\"><img src=\\"UserFiles/Image/mapa.jpg\\" border=\\"0\\" width=\\"250\\" height=\\"178\\" /></td>         <td width=\\"72%\\" align=\\"center\\" valign=\\"middle\\"><table border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" width=\\"80%\\">           <tbody><tr>             <td><span class=\\"boxtitle\\">R. Iperoig, 409</span><br />               Perdizes - S&atilde;o Paulo - SP<br />               05016-000, Brasil<br />               <span class=\\"boxtitle\\">tel.: + 55 11 3871.4670</span></td>           </tr>           <tr>             <td>&nbsp;</td>           </tr>           <tr>             <td><a href=\\"localiza.php\\">Clique aqui</a> para ver o mapa</td>           </tr>         </tbody></table></td>       </tr>     </tbody></table></td>   </tr>      <tr>     <td class=\\"separador\\" height=\\"50\\">&nbsp;</td>   </tr> </tbody></table>', '', '', 1, 0, 0, 1, 0, 0, '2009-08-27 09:11:16', '2009-08-27 09:15:56', 2, 2, 12, '', '', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `isab_cnbc_pages_b`
--

CREATE TABLE IF NOT EXISTS `isab_cnbc_pages_b` (
`bid` int(10) NOT NULL,
  `pid` int(10) NOT NULL DEFAULT '0',
  `cid` int(10) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT 'empty',
  `subtitle` varchar(255) NOT NULL DEFAULT '',
  `page_header` text NOT NULL,
  `text` longtext NOT NULL,
  `page_footer` text NOT NULL,
  `signature` text NOT NULL,
  `atitle` tinyint(1) NOT NULL DEFAULT '0',
  `asubtitle` tinyint(1) NOT NULL DEFAULT '0',
  `apage_header` tinyint(1) NOT NULL DEFAULT '0',
  `atext` tinyint(1) NOT NULL DEFAULT '1',
  `apage_footer` tinyint(1) NOT NULL DEFAULT '0',
  `asignature` tinyint(1) NOT NULL DEFAULT '0',
  `dateadd` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dateedit` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `useradd` int(10) NOT NULL DEFAULT '0',
  `useredit` int(10) NOT NULL DEFAULT '0',
  `counter` int(10) NOT NULL DEFAULT '0',
  `clanguage` varchar(30) DEFAULT '',
  `theme` varchar(25) DEFAULT NULL,
  `mid` int(10) NOT NULL DEFAULT '0',
  `son` int(10) NOT NULL DEFAULT '0',
  `active` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `isab_cnbc_pages_b`
--

INSERT INTO `isab_cnbc_pages_b` (`bid`, `pid`, `cid`, `title`, `subtitle`, `page_header`, `text`, `page_footer`, `signature`, `atitle`, `asubtitle`, `apage_header`, `atext`, `apage_footer`, `asignature`, `dateadd`, `dateedit`, `useradd`, `useredit`, `counter`, `clanguage`, `theme`, `mid`, `son`, `active`) VALUES
(1, 1, 1, 'Tecidos', '', '', '', '', '', 1, 0, 0, 1, 0, 0, '2009-08-10 14:04:14', '2009-08-10 14:04:14', 2, 2, 4, '', '', 0, 0, 1),
(2, 8, 2, 'Promoções', '', '', '', '', '', 1, 0, 0, 1, 0, 0, '2009-08-10 15:13:48', '2009-08-10 15:13:48', 2, 2, 2, '', '', 0, 0, 1),
(3, 1, 1, 'Tecidos', 'subtitulo', 'cabecalho', '<table border="0" cellspacing="0" cellpadding="0" width="100%">      <tbody><tr>     <td align="center" valign="top"><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="580" height="620"><param name="movie" value="UserFiles/Flash/tecidos.swf" /><param name="quality" value="high" /><param name="menu" value="false" /><param name="wmode" value="" /><embed src="UserFiles/Flash/tecidos.swf" wmode="" quality="high" menu="false" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="580" height="620"></embed></object></td>   </tr> </tbody></table>', '', '', 1, 1, 1, 1, 0, 0, '2009-08-10 14:04:14', '2009-08-10 15:03:14', 2, 2, 21, '', '', 0, 0, 1),
(4, 1, 1, 'Tecidos', 'subtitulo', 'cabecalho', '<table border="0" cellspacing="0" cellpadding="0" width="100%">      <tbody><tr>     <td align="center" valign="top"><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="580" height="620"><param name="movie" value="UserFiles/Flash/tecidos.swf" /><param name="quality" value="high" /><param name="menu" value="false" /><param name="wmode" value="" /><embed src="UserFiles/Flash/tecidos.swf" wmode="" quality="high" menu="false" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="580" height="620"></embed></object></td>   </tr> </tbody></table>', '', '', 0, 0, 1, 1, 0, 0, '2009-08-10 14:04:14', '2009-08-10 15:33:25', 2, 2, 22, '', '', 0, 0, 1),
(5, 2, 1, 'Bolsas', '', '', '', '', '', 1, 0, 0, 1, 0, 0, '2009-08-10 14:05:20', '2009-08-10 14:05:20', 2, 2, 2, '', '', 0, 0, 1),
(6, 2, 1, 'Bolsas', '', '', '<table border="0" cellspacing="0" cellpadding="0" width="100%">      <tbody><tr>     <td align="center" valign="top"><img src="UserFiles/Image/bolsas.jpg" border="0" width="580" height="395" /></td>   </tr> </tbody></table>', '', '', 1, 0, 0, 1, 0, 0, '2009-08-10 14:05:20', '2009-08-10 15:45:07', 2, 2, 3, '', '', 0, 0, 1),
(7, 4, 1, 'Aplicações', '', '', 'Aplica&ccedil;&otilde;es do tecido', '', '', 1, 0, 0, 1, 0, 0, '2009-08-10 15:05:13', '2009-08-10 15:05:13', 2, 2, 14, '', '', 1, 1, 1),
(8, 4, 1, 'Aplicações', '', '', '<table border="0" cellspacing="0" cellpadding="0" width="100%">      <tbody><tr>     <td align="center" valign="top"><img src="UserFiles/Image/aplicacao/sofa.jpg" border="0" width="250" height="182" /></td>     <td align="center" valign="top"><img src="UserFiles/Image/aplicacao/puff.png" border="0" width="200" height="206" /></td>   </tr> </tbody></table>', '', '', 1, 0, 0, 1, 0, 0, '2009-08-10 15:05:13', '2009-08-10 15:57:33', 2, 2, 16, '', '', 1, 1, 1),
(9, 4, 1, 'Aplicações', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Nullam condimentum tempor elementum. Nullam at elementum risus. Nulla tincidunt tincidunt volutpat. ', '<table border="0" cellspacing="0" cellpadding="0" width="100%">      <tbody><tr>     <td align="center" valign="top"><img src="UserFiles/Image/aplicacao/sofa.jpg" border="0" width="250" height="182" /></td>     <td align="center" valign="top"><img src="UserFiles/Image/aplicacao/puff.png" border="0" width="200" height="206" /></td>   </tr> </tbody></table>', '', '', 1, 1, 1, 1, 0, 0, '2009-08-10 15:05:13', '2009-08-10 15:59:56', 2, 2, 17, '', '', 1, 1, 1),
(10, 5, 1, 'A Artista', '', '', '', '', '', 1, 0, 0, 1, 0, 0, '2009-08-10 15:11:36', '2009-08-10 15:11:36', 2, 2, 3, '', '', 0, 0, 1),
(11, 6, 1, 'O Ateliê', '', '', '', '', '', 1, 0, 0, 1, 0, 0, '2009-08-10 15:12:06', '2009-08-10 15:12:06', 2, 2, 2, '', '', 0, 0, 1),
(12, 6, 1, 'O Ateliê', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ', 'Nullam condimentum tempor elementum. Nullam at elementum risus. Nulla tincidunt tincidunt volutpat. Quisque quis ante eros, vitae porta felis. Vivamus pulvinar lacinia nulla quis scelerisque. Suspendisse egestas blandit consectetur.', '', '', '', 1, 1, 0, 1, 0, 0, '2009-08-10 15:12:06', '2009-08-10 16:03:05', 2, 2, 3, '', '', 0, 0, 1),
(13, 3, 1, 'Mídia', '', '', '', '', '', 1, 0, 0, 1, 0, 0, '2009-08-10 14:05:31', '2009-08-10 14:05:31', 2, 2, 3, '', '', 0, 0, 1),
(14, 8, 2, 'Coleções', '', '', '', '', '', 1, 0, 0, 1, 0, 0, '2009-08-10 15:13:48', '2009-08-10 15:14:00', 2, 2, 4, '', '', 0, 0, 1),
(15, 7, 2, 'Lançamentos', '', '', '', '', '', 1, 0, 0, 1, 0, 0, '2009-08-10 15:13:39', '2009-08-10 15:13:39', 2, 2, 2, '', '', 0, 0, 1),
(16, 9, 2, 'Tipos', '', '', '', '', '', 1, 0, 0, 1, 0, 0, '2009-08-10 15:14:15', '2009-08-10 15:14:15', 2, 2, 2, '', '', 0, 0, 1),
(17, 2, 1, 'Bolsas Ecológicas', 'Bolsas feitas com tecido de garrafas pet e tecidos reciclados.', 'O atelier Arte T&ecirc;xtil Isabella Carvalho lan&ccedil;a uma nova cole&ccedil;&atilde;o de bolsas com materiais 100% reciclados.', '<table border="0" cellspacing="0" cellpadding="0" width="100%">      <tbody><tr>     <td align="center" valign="top"><img src="UserFiles/Image/bolsas.jpg" border="0" width="580" height="395" /></td>   </tr> </tbody></table>', '', '', 1, 1, 1, 1, 0, 0, '2009-08-10 14:05:20', '2009-08-10 15:50:11', 2, 2, 34, '', '', 0, 0, 1),
(18, 2, 1, 'Bolsas Ecológicas', 'Bolsas feitas com tecido de garrafas pet e tecidos reciclados.', 'O atelier Arte T&ecirc;xtil Isabella Carvalho lan&ccedil;a uma nova cole&ccedil;&atilde;o de bolsas com materiais 100% reciclados.', '<table border="0" cellspacing="0" cellpadding="0" width="890" align="center">      <tbody><tr>     <td align="center" valign="top"><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="920" height="380"><param name="movie" value="UserFiles/Flash/bolsas.swf" /><param name="quality" value="high" /><param name="menu" value="false" /><param name="wmode" value="" /><embed src="UserFiles/Flash/bolsas.swf" wmode="" quality="high" menu="false" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="920" height="380"></embed></object></td>   </tr>      <tr>     <td class="separador" height="50">&nbsp;</td>   </tr> </tbody></table>', '', '', 1, 1, 1, 1, 0, 0, '2009-08-10 14:05:20', '2009-08-19 16:25:27', 2, 2, 37, '', '', 0, 0, 1),
(19, 2, 1, 'Bolsas', 'Bolsas feitas com tecido de garrafas pet e tecidos reciclados.', 'O atelier Arte T&ecirc;xtil Isabella Carvalho lan&ccedil;a uma nova cole&ccedil;&atilde;o de bolsas com materiais 100% reciclados.', '<table border="0" cellspacing="0" cellpadding="0" width="890" align="center">      <tbody><tr>     <td align="center" valign="top"><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="920" height="380"><param name="movie" value="UserFiles/Flash/bolsas.swf" /><param name="quality" value="high" /><param name="menu" value="false" /><param name="wmode" value="" /><embed src="UserFiles/Flash/bolsas.swf" wmode="" quality="high" menu="false" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="920" height="380"></embed></object></td>   </tr>      <tr>     <td class="separador" height="50">&nbsp;</td>   </tr> </tbody></table>', '', '', 1, 1, 1, 1, 0, 0, '2009-08-10 14:05:20', '2009-08-19 16:28:25', 2, 2, 38, '', '', 0, 0, 1),
(20, 1, 1, 'Tecidos', 'subtitulo', 'cabecalho', '<table border="0" cellspacing="0" cellpadding="0" width="100%">      <tbody><tr>     <td align="center" valign="top"><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="580" height="620"><param name="movie" value="UserFiles/Flash/tecidos.swf" /><param name="quality" value="high" /><param name="menu" value="false" /><param name="wmode" value="" /><embed src="UserFiles/Flash/tecidos.swf" wmode="" quality="high" menu="false" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="580" height="620"></embed></object></td>   </tr> </tbody></table>', '', '', 1, 0, 0, 1, 0, 0, '2009-08-10 14:04:14', '2009-08-10 15:33:37', 2, 2, 59, '', '', 0, 0, 1),
(21, 1, 1, 'Tecidos', 'subtitulo', 'cabecalho', '<table border="0" cellspacing="0" cellpadding="0" width="890" align="center">      <tbody><tr>     <td align="center" valign="top"><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="920" height="380"><param name="movie" value="UserFiles/Flash/tecidos.swf" /><param name="quality" value="high" /><param name="menu" value="false" /><param name="wmode" value="" /><embed src="UserFiles/Flash/tecidos.swf" wmode="" quality="high" menu="false" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="920" height="380"></embed></object></td>   </tr>      <tr>     <td class="separador" height="50">&nbsp;</td>   </tr> </tbody></table>', '', '', 1, 0, 0, 1, 0, 0, '2009-08-10 14:04:14', '2009-08-20 10:01:46', 2, 2, 60, '', '', 0, 0, 1),
(22, 1, 1, 'Tecidos', 'subtitulo', 'cabecalho', '<table border="0" cellspacing="0" cellpadding="0" width="890" align="center">      <tbody><tr>     <td align="center" valign="top"><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="920" height="380"><param name="movie" value="UserFiles/Flash/tecidos.swf" /><param name="quality" value="high" /><param name="menu" value="false" /><param name="wmode" value="" /><embed src="UserFiles/Flash/tecidos.swf" wmode="" quality="high" menu="false" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="920" height="380"></embed></object></td>   </tr>           <tr>       <td class="separador" height="50">&nbsp;</td>     </tr>     <tr>       <td class="boxtitle" align="center" valign="middle">Consulte-nos sobre cores e estampas dispon&iacute;veis</td>     </tr>     <tr>     <td align="center" valign="middle">As estampas podem ser aplicadas em diversas superf&iacute;cies de tecidos</td>    </tr> </tbody></table>', '', '', 1, 0, 0, 1, 0, 0, '2009-08-10 14:04:14', '2009-08-20 10:03:33', 2, 2, 74, '', '', 0, 0, 1),
(23, 3, 1, 'Mídia', '', '', '<table border="0" cellspacing="0" cellpadding="0" width="100%">      <tbody><tr>     <td align="center" valign="top"><img src="UserFiles/Image/aplicacao/midia.jpg" border="0" width="450" height="1082" /></td>   </tr> </tbody></table>', '', '', 1, 0, 0, 1, 0, 0, '2009-08-10 14:05:31', '2009-08-10 16:04:29', 2, 2, 19, '', '', 0, 0, 1),
(24, 3, 1, 'Ateliê', '', '', '<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce auctor elementum nulla, quis tincidunt augue sodales non. Praesent pellentesque dui quis massa tristique nec convallis massa pretium. Sed dapibus iaculis ornare. Proin eget magna elit, nec tempor urna. Sed placerat, mauris sit amet pretium adipiscing, metus risus blandit arcu, vitae pharetra leo enim eu augue. Nulla ante est, venenatis sit amet scelerisque commodo, cursus eget arcu. Morbi convallis tristique leo, interdum dapibus massa congue tempus. Proin nec metus vel elit commodo sodales. Curabitur tristique laoreet convallis. In facilisis malesuada urna nec aliquet. Quisque blandit iaculis nisl, non tempor ante commodo ac. Integer fermentum fringilla augue vel imperdiet. Cras nec orci nisi. Proin risus felis, ullamcorper ac venenatis in, bibendum quis lorem. Vivamus lacus dui, porta vitae elementum nec, facilisis venenatis tellus. Pellentesque non felis diam. </p> <p>Curabitur laoreet nunc egestas massa auctor vel elementum purus laoreet. Cras augue quam, commodo et elementum sed, fringilla ac augue. Pellentesque sagittis sollicitudin volutpat. Curabitur vestibulum aliquet laoreet. Phasellus eu justo lectus. Sed sed bibendum ligula. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed dictum justo sed arcu malesuada gravida. Aliquam sit amet arcu sed lorem mattis tristique. Mauris ultrices condimentum elit, nec interdum turpis tempor et. Quisque sit amet velit in tortor porta sodales. Mauris in est ipsum, eget malesuada mi. In ante nibh, tristique quis porttitor nec, vehicula a orci. Pellentesque a vulputate diam. Mauris sollicitudin, nunc tempor fermentum imperdiet, massa purus euismod velit, quis pellentesque nisi lacus nec risus. Quisque nulla arcu, semper in commodo ut, varius at nunc. In ipsum dolor, lacinia sed ultricies a, mollis quis dolor. </p>', '', '', 1, 0, 0, 1, 0, 0, '2009-08-10 14:05:31', '2009-08-27 08:54:46', 2, 2, 20, '', '', 0, 0, 1),
(25, 3, 1, 'Ateliê', '', '', '<table border="0" cellspacing="0" cellpadding="0" width="80%" align="center"><tbody><tr><td>&nbsp;<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce auctor elementum nulla, quis tincidunt augue sodales non. Praesent pellentesque dui quis massa tristique nec convallis massa pretium. Sed dapibus iaculis ornare. Proin eget magna elit, nec tempor urna. Sed placerat, mauris sit amet pretium adipiscing, metus risus blandit arcu, vitae pharetra leo enim eu augue. Nulla ante est, venenatis sit amet scelerisque commodo, cursus eget arcu. Morbi convallis tristique leo, interdum dapibus massa congue tempus. Proin nec metus vel elit commodo sodales. Curabitur tristique laoreet convallis. In facilisis malesuada urna nec aliquet. Quisque blandit iaculis nisl, non tempor ante commodo ac. Integer fermentum fringilla augue vel imperdiet. Cras nec orci nisi. Proin risus felis, ullamcorper ac venenatis in, bibendum quis lorem. Vivamus lacus dui, porta vitae elementum nec, facilisis venenatis tellus. Pellentesque non felis diam. </p> <p>Curabitur laoreet nunc egestas massa auctor vel elementum purus laoreet. Cras augue quam, commodo et elementum sed, fringilla ac augue. Pellentesque sagittis sollicitudin volutpat. Curabitur vestibulum aliquet laoreet. Phasellus eu justo lectus. Sed sed bibendum ligula. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed dictum justo sed arcu malesuada gravida. Aliquam sit amet arcu sed lorem mattis tristique. Mauris ultrices condimentum elit, nec interdum turpis tempor et. Quisque sit amet velit in tortor porta sodales. Mauris in est ipsum, eget malesuada mi. In ante nibh, tristique quis porttitor nec, vehicula a orci. Pellentesque a vulputate diam. Mauris sollicitudin, nunc tempor fermentum imperdiet, massa purus euismod velit, quis pellentesque nisi lacus nec risus. Quisque nulla arcu, semper in commodo ut, varius at nunc. In ipsum dolor, lacinia sed ultricies a, mollis quis dolor. </p></td></tr></tbody></table>', '', '', 1, 0, 0, 1, 0, 0, '2009-08-10 14:05:31', '2009-08-27 08:55:32', 2, 2, 21, '', '', 0, 0, 1),
(26, 3, 1, 'Ateliê', 'Lorem ipsum dolor ', 'Lorem ipsum dolor ', '<table border="0" cellspacing="0" cellpadding="0" width="80%" align="center"><tbody><tr><td>&nbsp;<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce auctor elementum nulla, quis tincidunt augue sodales non. Praesent pellentesque dui quis massa tristique nec convallis massa pretium. Sed dapibus iaculis ornare. Proin eget magna elit, nec tempor urna. Sed placerat, mauris sit amet pretium adipiscing, metus risus blandit arcu, vitae pharetra leo enim eu augue. Nulla ante est, venenatis sit amet scelerisque commodo, cursus eget arcu. Morbi convallis tristique leo, interdum dapibus massa congue tempus. Proin nec metus vel elit commodo sodales. Curabitur tristique laoreet convallis. In facilisis malesuada urna nec aliquet. Quisque blandit iaculis nisl, non tempor ante commodo ac. Integer fermentum fringilla augue vel imperdiet. Cras nec orci nisi. Proin risus felis, ullamcorper ac venenatis in, bibendum quis lorem. Vivamus lacus dui, porta vitae elementum nec, facilisis venenatis tellus. Pellentesque non felis diam. </p> <p>Curabitur laoreet nunc egestas massa auctor vel elementum purus laoreet. Cras augue quam, commodo et elementum sed, fringilla ac augue. Pellentesque sagittis sollicitudin volutpat. Curabitur vestibulum aliquet laoreet. Phasellus eu justo lectus. Sed sed bibendum ligula. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed dictum justo sed arcu malesuada gravida. Aliquam sit amet arcu sed lorem mattis tristique. Mauris ultrices condimentum elit, nec interdum turpis tempor et. Quisque sit amet velit in tortor porta sodales. Mauris in est ipsum, eget malesuada mi. In ante nibh, tristique quis porttitor nec, vehicula a orci. Pellentesque a vulputate diam. Mauris sollicitudin, nunc tempor fermentum imperdiet, massa purus euismod velit, quis pellentesque nisi lacus nec risus. Quisque nulla arcu, semper in commodo ut, varius at nunc. In ipsum dolor, lacinia sed ultricies a, mollis quis dolor. </p></td></tr></tbody></table>', '', '', 1, 1, 1, 1, 0, 0, '2009-08-10 14:05:31', '2009-08-27 08:55:50', 2, 2, 22, '', '', 0, 0, 1),
(27, 3, 1, 'Ateliê', 'Lorem ipsum dolor ', 'Lorem ipsum dolor ', '<table border="0" cellspacing="0" cellpadding="0" width="80%" align="center"><tbody><tr><td>&nbsp;<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce auctor elementum nulla, quis tincidunt augue sodales non. Praesent pellentesque dui quis massa tristique nec convallis massa pretium. Sed dapibus iaculis ornare. Proin eget magna elit, nec tempor urna. Sed placerat, mauris sit amet pretium adipiscing, metus risus blandit arcu, vitae pharetra leo enim eu augue. Nulla ante est, venenatis sit amet scelerisque commodo, cursus eget arcu. Morbi convallis tristique leo, interdum dapibus massa congue tempus. Proin nec metus vel elit commodo sodales. Curabitur tristique laoreet convallis. In facilisis malesuada urna nec aliquet. Quisque blandit iaculis nisl, non tempor ante commodo ac. Integer fermentum fringilla augue vel imperdiet. Cras nec orci nisi. Proin risus felis, ullamcorper ac venenatis in, bibendum quis lorem. Vivamus lacus dui, porta vitae elementum nec, facilisis venenatis tellus. Pellentesque non felis diam. </p> <p>Curabitur laoreet nunc egestas massa auctor vel elementum purus laoreet. Cras augue quam, commodo et elementum sed, fringilla ac augue. Pellentesque sagittis sollicitudin volutpat. Curabitur vestibulum aliquet laoreet. Phasellus eu justo lectus. Sed sed bibendum ligula. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed dictum justo sed arcu malesuada gravida. Aliquam sit amet arcu sed lorem mattis tristique. Mauris ultrices condimentum elit, nec interdum turpis tempor et. Quisque sit amet velit in tortor porta sodales. Mauris in est ipsum, eget malesuada mi. In ante nibh, tristique quis porttitor nec, vehicula a orci. Pellentesque a vulputate diam. Mauris sollicitudin, nunc tempor fermentum imperdiet, massa purus euismod velit, quis pellentesque nisi lacus nec risus. Quisque nulla arcu, semper in commodo ut, varius at nunc. In ipsum dolor, lacinia sed ultricies a, mollis quis dolor. </p></td></tr></tbody></table>', '', '', 1, 1, 0, 1, 0, 0, '2009-08-10 14:05:31', '2009-08-27 08:56:06', 2, 2, 23, '', '', 0, 0, 1),
(28, 10, 1, 'Localização', '', '', '<table border="0" cellspacing="0" cellpadding="0" width="890" align="center">      <tbody><tr>     <td align="center" valign="top"><table border="0" cellspacing="0" cellpadding="0" width="100%">       <tbody><tr>         <td width="255"><img src="UserFiles/Image/mapa.jpg" border="0" width="250" height="178" /></td>         <td width="72%">&nbsp;</td>       </tr>     </tbody></table></td>   </tr>      <tr>     <td class="separador" height="50">&nbsp;</td>   </tr> </tbody></table>', '', '', 1, 0, 0, 1, 0, 0, '2009-08-27 09:11:16', '2009-08-27 09:11:16', 2, 2, 1, '', '', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `isab_comments`
--

CREATE TABLE IF NOT EXISTS `isab_comments` (
`tid` int(11) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `name` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) DEFAULT NULL,
  `url` varchar(60) DEFAULT NULL,
  `host_name` varchar(60) DEFAULT NULL,
  `subject` varchar(85) NOT NULL DEFAULT '',
  `comment` text NOT NULL,
  `score` tinyint(4) NOT NULL DEFAULT '0',
  `reason` tinyint(4) NOT NULL DEFAULT '0',
  `last_moderation_ip` varchar(15) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `isab_comments_moderated`
--

CREATE TABLE IF NOT EXISTS `isab_comments_moderated` (
`tid` int(11) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `name` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) DEFAULT NULL,
  `url` varchar(60) DEFAULT NULL,
  `host_name` varchar(60) DEFAULT NULL,
  `subject` varchar(85) NOT NULL DEFAULT '',
  `comment` text NOT NULL,
  `score` tinyint(4) NOT NULL DEFAULT '0',
  `reason` tinyint(4) NOT NULL DEFAULT '0',
  `last_moderation_ip` varchar(15) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `isab_config`
--

CREATE TABLE IF NOT EXISTS `isab_config` (
  `sitename` varchar(255) NOT NULL DEFAULT '',
  `nukeurl` varchar(255) NOT NULL DEFAULT '',
  `site_logo` varchar(255) NOT NULL DEFAULT '',
  `slogan` varchar(255) NOT NULL DEFAULT '',
  `startdate` varchar(50) NOT NULL DEFAULT '',
  `adminmail` varchar(255) NOT NULL DEFAULT '',
  `anonpost` tinyint(1) NOT NULL DEFAULT '0',
  `Default_Theme` varchar(255) NOT NULL DEFAULT '',
  `foot1` text NOT NULL,
  `foot2` text NOT NULL,
  `foot3` text NOT NULL,
  `commentlimit` int(9) NOT NULL DEFAULT '4096',
  `anonymous` varchar(255) NOT NULL DEFAULT '',
  `minpass` tinyint(1) NOT NULL DEFAULT '5',
  `pollcomm` tinyint(1) NOT NULL DEFAULT '1',
  `articlecomm` tinyint(1) NOT NULL DEFAULT '1',
  `broadcast_msg` tinyint(1) NOT NULL DEFAULT '1',
  `my_headlines` tinyint(1) NOT NULL DEFAULT '1',
  `top` int(3) NOT NULL DEFAULT '10',
  `storyhome` int(2) NOT NULL DEFAULT '10',
  `user_news` tinyint(1) NOT NULL DEFAULT '1',
  `oldnum` int(2) NOT NULL DEFAULT '30',
  `ultramode` tinyint(1) NOT NULL DEFAULT '0',
  `banners` tinyint(1) NOT NULL DEFAULT '1',
  `backend_title` varchar(255) NOT NULL DEFAULT '',
  `backend_language` varchar(10) NOT NULL DEFAULT '',
  `language` varchar(100) NOT NULL DEFAULT '',
  `locale` varchar(10) NOT NULL DEFAULT '',
  `multilingual` tinyint(1) NOT NULL DEFAULT '0',
  `useflags` tinyint(1) NOT NULL DEFAULT '0',
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `notify_email` varchar(255) NOT NULL DEFAULT '',
  `notify_subject` varchar(255) NOT NULL DEFAULT '',
  `notify_message` varchar(255) NOT NULL DEFAULT '',
  `notify_from` varchar(255) NOT NULL DEFAULT '',
  `moderate` tinyint(1) NOT NULL DEFAULT '0',
  `admingraphic` tinyint(1) NOT NULL DEFAULT '1',
  `httpref` tinyint(1) NOT NULL DEFAULT '1',
  `httprefmax` int(5) NOT NULL DEFAULT '1000',
  `CensorMode` tinyint(1) NOT NULL DEFAULT '3',
  `CensorReplace` varchar(10) NOT NULL DEFAULT '',
  `copyright` text NOT NULL,
  `Version_Num` varchar(25) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `isab_config`
--

INSERT INTO `isab_config` (`sitename`, `nukeurl`, `site_logo`, `slogan`, `startdate`, `adminmail`, `anonpost`, `Default_Theme`, `foot1`, `foot2`, `foot3`, `commentlimit`, `anonymous`, `minpass`, `pollcomm`, `articlecomm`, `broadcast_msg`, `my_headlines`, `top`, `storyhome`, `user_news`, `oldnum`, `ultramode`, `banners`, `backend_title`, `backend_language`, `language`, `locale`, `multilingual`, `useflags`, `notify`, `notify_email`, `notify_subject`, `notify_message`, `notify_from`, `moderate`, `admingraphic`, `httpref`, `httprefmax`, `CensorMode`, `CensorReplace`, `copyright`, `Version_Num`) VALUES
('..:: Isabella Carvalho | Arte Têxtil ::..', 'http://www.isabellacarvalho.com/', 'logo.jpg', '..:: Isabella Carvalho | Arte Têxtil ::..55 11 38714670', 'Agosto 2009', 'fabio@convertpublicidade.com.br', 0, '3035', 'Todos os logos e marcas são de propriedade dos respectivos proprietários. Todos os direitos reservados © 2005-2007', '', '', 4096, 'Anonymous', 5, 0, 0, 0, 0, 10, 10, 0, 30, 1, 1, '..:: Isabella Carvalho | Arte Têxtil ::..55 11 38714670', 'pt_BR', 'brazilian', 'pt_BR', 0, 0, 0, 'fabio@convertpublicidade.com.br', 'Notícias para o meu site', 'Ola!Tem uma not&iacute;cia para voc&ecirc;!', 'webmaster', 0, 1, 1, 100, 0, '*****', '<a href="http://phpnuke.org"><font class="footmsg_l">PHP-Nuke</font></a> Copyright &copy; 2005-2006 by Francisco Burzi. This is free software, and you may redistribute it under the <a href="http://phpnuke.org/files/gpl.txt"><font class="footmsg_l">GPL</font></a>.<br> PHP-Nuke comes with absolutely no warranty, for details, see the <a href="http://phpnuke.org/files/gpl.txt"><font class="footmsg_l">license</font></a>.', '8.0.3.3 Special Edition');

-- --------------------------------------------------------

--
-- Table structure for table `isab_confirm`
--

CREATE TABLE IF NOT EXISTS `isab_confirm` (
  `confirm_id` char(32) NOT NULL DEFAULT '',
  `session_id` char(32) NOT NULL DEFAULT '',
  `code` char(6) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `isab_counter`
--

CREATE TABLE IF NOT EXISTS `isab_counter` (
  `type` varchar(80) NOT NULL DEFAULT '',
  `var` varchar(80) NOT NULL DEFAULT '',
  `count` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `isab_faqanswer`
--

CREATE TABLE IF NOT EXISTS `isab_faqanswer` (
`id` tinyint(4) NOT NULL,
  `id_cat` tinyint(4) NOT NULL DEFAULT '0',
  `question` varchar(255) DEFAULT '',
  `answer` text
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `isab_faqanswer`
--

INSERT INTO `isab_faqanswer` (`id`, `id_cat`, `question`, `answer`) VALUES
(1, 1, 'O QUE &Eacute; DEPEND&Ecirc;NCIA?', 'Depend&ecirc;ncia &eacute; o impulso que leva a pessoa a usar uma droga de forma cont&iacute;nua (sempre) ou peri&oacute;dica (freq&uuml;entemente) para obter prazer. Alguns indiv&iacute;duos podem tamb&eacute;m fazer uso constante de uma droga para aliviar tens&otilde;es, ansiedades, medos, sensa&ccedil;&otilde;es f&iacute;sicas desagrad&aacute;veis, etc. O dependente caracteriza-se por n&atilde;o conseguir controlar o consumo de drogas, agindo de forma impulsiva e repetitiva.  <br /><br />Para compreendermos melhor a depend&ecirc;ncia, vamos analisar as duas formas principais em que ela se apresenta: a f&iacute;sica e a psicol&oacute;gica.  <br /><br />A depend&ecirc;ncia f&iacute;sica caracteriza-se pela presen&ccedil;a de sintomas e sinais f&iacute;sicos que aparecem quando o indiv&iacute;duo p&aacute;ra de tomar a droga ou diminui bruscamente o seu uso: &eacute; a s&iacute;ndrome de abstin&ecirc;ncia. Os sinais e sintomas de abstin&ecirc;ncia dependem do tipo de subst&acirc;ncia utilizada e aparecem algumas horas ou dias depois que ela foi consumida pela &uacute;ltima vez. No caso dos dependentes do &aacute;lcool, por exemplo, a abstin&ecirc;ncia pode ocasionar desde um simples tremor nas m&atilde;os a n&aacute;useas, v&ocirc;mitos e at&eacute; um quadro de abstin&ecirc;ncia mais grave denominado delirium tremens, com risco de morte, em alguns casos.  <br /><br />J&aacute; a depend&ecirc;ncia psicol&oacute;gica corresponde a um estado de mal-estar e desconforto que surge quando o dependente interrompe o uso de uma droga. Os sintomas mais comuns s&atilde;o ansiedade, sensa&ccedil;&atilde;o de vazio, dificuldade de concentra&ccedil;&atilde;o, mas que podem variar de pessoa para pessoa. <br /><br />Com os medicamentos existentes atualmente, a maioria dos casos relacionados &agrave; depend&ecirc;ncia f&iacute;sica podem ser tratados. Por outro lado, o que quase sempre faz com que uma pessoa volte a usar drogas &eacute; a depend&ecirc;ncia psicol&oacute;gica, de dif&iacute;cil tratamento e n&atilde;o pode ser resolvida de forma relativamente r&aacute;pida e simples como a depend&ecirc;ncia f&iacute;sica .'),
(2, 1, 'O EFEITO DE UMA DROGA &Eacute; O MESMO PARA QUALQUER PESSOA?', 'N&atilde;o. Os efeitos dependem basicamente de tr&ecirc;s fatores:<p>&nbsp;</p>           <blockquote><strong>* da droga;<br />             * do usu&aacute;rio;<br />             * do meio ambiente.</strong></blockquote>           <p>Cada tipo de droga, com suas caracter&iacute;sticas qu&iacute;micas, tende a produzir efeitos diferentes no organismo. A forma como uma subst&acirc;ncia &eacute; utilizada, assim como a quantidade consumida e o seu grau de pureza tamb&eacute;m ter&atilde;o influ&ecirc;ncia no efeito.</p>           <p>Cada usu&aacute;rio, com suas caracter&iacute;sticas biol&oacute;gicas (f&iacute;sicas) e psicol&oacute;gicas, tende a apresentar rea&ccedil;&otilde;es diversas sob a a&ccedil;&atilde;o de drogas. S&atilde;o extremamente importantes o estado emocional do usu&aacute;rio e suas expectativas com rela&ccedil;&atilde;o &agrave; droga no momento do uso.</p>           <p>O meio ambiente tamb&eacute;m influencia o tipo de rea&ccedil;&atilde;o que a droga pode produzir. Dessa maneira, o local, as pessoas &ndash; enfim, toda a situa&ccedil;&atilde;o onde o uso acontece &ndash; poder&atilde;o interferir nos efeitos que a droga vai produzir.</p>         <p>Por exemplo, uma pessoa ansiosa (usu&aacute;rio) que consome grande quantidade de maconha (droga) em um lugar p&uacute;blico (meio ambiente) ter&aacute; grande chance de se sentir perseguido (&quot;paran&oacute;ia&quot;). Por outro lado, um indiv&iacute;duo que consome maconha quando est&aacute; tranq&uuml;ilamente em casa, na companhia de amigos, ter&aacute; menor probabilidade de apresentar rea&ccedil;&otilde;es desagrad&aacute;veis.</p>'),
(3, 1, 'EXISTEM DROGAS SEGURAS E INOFENSIVAS, QUE N&Atilde;O CAUSAM NENHUM PROBLEMA?', 'Mesmo as drogas consideradas leves por algumas pessoas, como a maconha, por exemplo, podem causar danos. Tudo depende de quem as usa e da maneira como cada droga &eacute; consumida.');

-- --------------------------------------------------------

--
-- Table structure for table `isab_faqcategories`
--

CREATE TABLE IF NOT EXISTS `isab_faqcategories` (
`id_cat` tinyint(3) NOT NULL,
  `categories` varchar(255) DEFAULT NULL,
  `flanguage` varchar(30) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `isab_faqcategories`
--

INSERT INTO `isab_faqcategories` (`id_cat`, `categories`, `flanguage`) VALUES
(1, 'Perguntas Frequentes', 'brazilian');

-- --------------------------------------------------------

--
-- Table structure for table `isab_groups`
--

CREATE TABLE IF NOT EXISTS `isab_groups` (
`id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `points` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `isab_groups_points`
--

CREATE TABLE IF NOT EXISTS `isab_groups_points` (
`id` int(10) NOT NULL,
  `points` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `isab_groups_points`
--

INSERT INTO `isab_groups_points` (`id`, `points`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(11, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(18, 0),
(19, 0),
(20, 0),
(21, 0);

-- --------------------------------------------------------

--
-- Table structure for table `isab_headlines`
--

CREATE TABLE IF NOT EXISTS `isab_headlines` (
`hid` int(11) NOT NULL,
  `sitename` varchar(30) NOT NULL DEFAULT '',
  `headlinesurl` varchar(200) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `isab_headlines`
--

INSERT INTO `isab_headlines` (`hid`, `sitename`, `headlinesurl`) VALUES
(1, 'AbsoluteGames', 'http://files.gameaholic.com/agfa.rdf'),
(2, 'BSDToday', 'http://www.bsdtoday.com/backend/bt.rdf'),
(3, 'BrunchingShuttlecocks', 'http://www.brunching.com/brunching.rdf'),
(4, 'DailyDaemonNews', 'http://daily.daemonnews.org/ddn.rdf.php3'),
(5, 'DigitalTheatre', 'http://www.dtheatre.com/backend.php3?xml=yes'),
(6, 'DotKDE', 'http://dot.kde.org/rdf'),
(7, 'FreeDOS', 'http://www.freedos.org/channels/rss.cgi'),
(8, 'Freshmeat', 'http://rss.freshmeat.net/freshmeat/feeds/fm-releases-global'),
(9, 'Gnome Desktop', 'http://www.gnomedesktop.org/backend.php'),
(10, 'HappyPenguin', 'http://happypenguin.org/html/news.rdf'),
(11, 'HollywoodBitchslap', 'http://hollywoodbitchslap.com/hbs.rdf'),
(12, 'Learning Linux', 'http://www.learninglinux.com/backend.php'),
(13, 'LinuxCentral', 'http://linuxcentral.com/backend/lcnew.rdf'),
(14, 'LinuxJournal', 'http://www.linuxjournal.com/news.rss'),
(15, 'LinuxWeelyNews', 'http://lwn.net/headlines/rss'),
(16, 'Listology', 'http://listology.com/recent.rdf'),
(17, 'MozillaNewsBot', 'http://www.mozilla.org/newsbot/newsbot.rdf'),
(18, 'NewsForge', 'http://www.newsforge.com/newsforge.rdf'),
(19, 'NukeResources', 'http://www.nukeresources.com/backend.php'),
(20, 'WebReference', 'http://webreference.com/webreference.rdf'),
(21, 'PDABuzz', 'http://www.pdabuzz.com/netscape.txt'),
(22, 'PHP-Nuke', 'http://phpnuke.org/backend.php'),
(23, 'PHP.net', 'http://www.php.net/news.rss'),
(24, 'PHPBuilder', 'http://phpbuilder.com/rss_feed.php'),
(25, 'PerlMonks', 'http://www.perlmonks.org/headlines.rdf'),
(26, 'TheNextLevel', 'http://www.the-nextlevel.com/rdf/tnl.rdf'),
(27, 'PHP-Nuke Indonesia', 'http://www.phpnuke-indonesia.info/backend.php');

-- --------------------------------------------------------

--
-- Table structure for table `isab_imggal`
--

CREATE TABLE IF NOT EXISTS `isab_imggal` (
`imid` int(10) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `imagem` varchar(255) NOT NULL,
  `active` int(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `isab_imggal`
--

INSERT INTO `isab_imggal` (`imid`, `thumb`, `imagem`, `active`) VALUES
(1, 'thumb_01.jpg', 'image_01.jpg', 1),
(2, 'thumb_02.jpg', 'image_02.jpg', 1),
(3, 'thumb_03.jpg', 'image_03.jpg', 1),
(4, 'thumb_04.jpg', 'image_04.jpg', 1),
(5, 'thumb_05.jpg', 'image_05.jpg', 1),
(6, 'thumb_06.jpg', 'image_06.jpg', 1),
(7, 'thumb_07.jpg', 'image_07.jpg', 1),
(8, 'thumb_08.jpg', 'image_08.jpg', 1),
(9, 'thumb_09.jpg', 'image_09.jpg', 1),
(10, 'thumb_10.jpg', 'image_10.jpg', 1),
(11, 'thumb_11.jpg', 'image_11.jpg', 1),
(12, 'thumb_12.jpg', 'image_12.jpg', 0),
(13, 'thumb_13.jpg', 'image_13.jpg', 1),
(14, 'thumb_14.jpg', 'image_14.jpg', 0),
(15, 'thumb_15.jpg', 'image_15.jpg', 0),
(16, 'thumb_16.jpg', 'image_16.jpg', 0),
(17, 'thumb_17.jpg', 'image_17.jpg', 1),
(18, 'thumb_18.jpg', 'image_18.jpg', 1),
(19, 'thumb_19.jpg', 'image_19.jpg', 1),
(20, 'thumb_20.jpg', 'image_20.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `isab_links`
--

CREATE TABLE IF NOT EXISTS `isab_links` (
`lid` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime DEFAULT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `hits` int(11) NOT NULL DEFAULT '0',
  `submitter` varchar(60) NOT NULL DEFAULT '',
  `linkratingsummary` double(6,4) NOT NULL DEFAULT '0.0000',
  `totalvotes` int(11) NOT NULL DEFAULT '0',
  `totalcomments` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `isab_links`
--

INSERT INTO `isab_links` (`lid`, `cid`, `sid`, `title`, `url`, `description`, `date`, `name`, `email`, `hits`, `submitter`, `linkratingsummary`, `totalvotes`, `totalcomments`) VALUES
(1, 1, 1, 'Amor Exigente', 'http://www.amorexigente.org.br/home.asp', 'Ser um programa de proteção social, que apoia e facilita as mudanças comportamentais na familia e na sociedade, visando a prevenção e qualidade de vida', NULL, '', '', 0, '', 0.0000, 0, 0),
(2, 1, 1, 'Grupos Familiares Al-Anon', 'http://www.al-anon.org.br/', 'Os Grupos Familiares Al-Anon são uma associação de parentes e amigos de alcoólicos que compartilham sua experiência, força e esperanças, afim de solucionar os problemas que têm em comum. A família pode ajudar muito para se ajudar, quer o alcoólicos procure ajuda ou não.', NULL, '', '', 0, '', 0.0000, 0, 0),
(3, 1, 1, 'Alcoólicos Anônimos', 'http://www.alcoolicosanonimos.org.br/', 'Alcoólicos Anônimos é uma irmandade de homens e mulheres que compartilham suas experiências, forças e esperanças, a fim de resolver seu problema comum e ajudar outros a se recuperarem do alcoolismo.', NULL, '', '', 0, '', 0.0000, 0, 0),
(4, 1, 1, 'Narcóticos Anônimos', 'http://www.na.org.br/portal/', 'NA é uma irmandade mundial, sem fins lucrativos, ativa em mais de 130 países. Somos adictos em recuperação, que nos reunimos regularmente, sobrevivendo a todas as adversidades. Percebemos que, finalmente há esperança para nós. ', NULL, '', '', 0, '', 0.0000, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `isab_main`
--

CREATE TABLE IF NOT EXISTS `isab_main` (
  `main_module` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `isab_main`
--

INSERT INTO `isab_main` (`main_module`) VALUES
('0home');

-- --------------------------------------------------------

--
-- Table structure for table `isab_message`
--

CREATE TABLE IF NOT EXISTS `isab_message` (
`mid` int(11) NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `date` varchar(14) NOT NULL DEFAULT '',
  `expire` int(7) NOT NULL DEFAULT '0',
  `active` int(1) NOT NULL DEFAULT '1',
  `view` int(1) NOT NULL DEFAULT '1',
  `groups` text NOT NULL,
  `mlanguage` varchar(30) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `isab_modules`
--

CREATE TABLE IF NOT EXISTS `isab_modules` (
`mid` int(10) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `custom_title` varchar(255) NOT NULL DEFAULT '',
  `active` int(1) NOT NULL DEFAULT '0',
  `view` int(1) NOT NULL DEFAULT '0',
  `groups` text NOT NULL,
  `inmenu` tinyint(1) NOT NULL DEFAULT '1',
  `mod_group` int(10) DEFAULT '0',
  `admins` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `isab_modules`
--

INSERT INTO `isab_modules` (`mid`, `title`, `custom_title`, `active`, `view`, `groups`, `inmenu`, `mod_group`, `admins`) VALUES
(12, 'Recommend_Us', 'Recomende-nos', 1, 0, '', 0, 0, ''),
(22, 'Your_Account', 'Sua Conta', 1, 0, '', 0, 0, ''),
(28, 'Conteudo', 'Conteudo', 1, 0, '', 0, 0, ''),
(30, 'Contato', 'Contato', 1, 0, '', 0, 0, ''),
(31, 'Content', 'Content', 0, 0, '', 1, 0, ''),
(35, 'Orcamento', 'Orcamento', 1, 0, '', 0, 0, ''),
(50, '0home', 'Principal', 1, 0, '', 1, 0, ''),
(52, 'MapaSite', 'MapaSite', 1, 0, '', 1, 0, ''),
(53, 'galeria', 'Galeria de Fotos', 1, 0, '', 1, 0, ''),
(54, 'Depoimentos', 'Depoimentos', 1, 0, '', 1, 0, ''),
(55, 'Dep_Detalhe', 'Dep_Detalhe', 0, 0, '', 1, 0, ''),
(56, 'Links', 'Links', 1, 0, '', 1, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `isab_pages`
--

CREATE TABLE IF NOT EXISTS `isab_pages` (
`pid` int(10) NOT NULL,
  `cid` int(10) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `subtitle` varchar(255) NOT NULL DEFAULT '',
  `active` int(1) NOT NULL DEFAULT '0',
  `page_header` text NOT NULL,
  `text` text NOT NULL,
  `page_footer` text NOT NULL,
  `signature` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `counter` int(10) NOT NULL DEFAULT '0',
  `clanguage` varchar(30) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `isab_pages_categories`
--

CREATE TABLE IF NOT EXISTS `isab_pages_categories` (
`cid` int(10) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `isab_public_messages`
--

CREATE TABLE IF NOT EXISTS `isab_public_messages` (
`mid` int(10) NOT NULL,
  `content` varchar(255) NOT NULL DEFAULT '',
  `date` varchar(14) DEFAULT NULL,
  `who` varchar(25) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `isab_queue`
--

CREATE TABLE IF NOT EXISTS `isab_queue` (
`qid` smallint(5) unsigned NOT NULL,
  `uid` mediumint(9) NOT NULL DEFAULT '0',
  `uname` varchar(40) NOT NULL DEFAULT '',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `story` text,
  `storyext` text NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `topic` varchar(20) NOT NULL DEFAULT '',
  `alanguage` varchar(30) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `isab_referer`
--

CREATE TABLE IF NOT EXISTS `isab_referer` (
`rid` int(11) NOT NULL,
  `url` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `isab_related`
--

CREATE TABLE IF NOT EXISTS `isab_related` (
`rid` int(11) NOT NULL,
  `tid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL DEFAULT '',
  `url` varchar(200) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `isab_related`
--

INSERT INTO `isab_related` (`rid`, `tid`, `name`, `url`) VALUES
(1, 1, 'God', 'http://');

-- --------------------------------------------------------

--
-- Table structure for table `isab_reviews`
--

CREATE TABLE IF NOT EXISTS `isab_reviews` (
`id` int(10) NOT NULL,
  `date` date NOT NULL DEFAULT '0000-00-00',
  `title` varchar(150) NOT NULL DEFAULT '',
  `text` text NOT NULL,
  `reviewer` varchar(20) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `score` int(10) NOT NULL DEFAULT '0',
  `cover` varchar(100) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL DEFAULT '',
  `url_title` varchar(50) NOT NULL DEFAULT '',
  `hits` int(10) NOT NULL DEFAULT '0',
  `rlanguage` varchar(30) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `isab_reviews_add`
--

CREATE TABLE IF NOT EXISTS `isab_reviews_add` (
`id` int(10) NOT NULL,
  `date` date DEFAULT NULL,
  `title` varchar(150) NOT NULL DEFAULT '',
  `text` text NOT NULL,
  `reviewer` varchar(20) NOT NULL DEFAULT '',
  `email` varchar(60) DEFAULT NULL,
  `score` int(10) NOT NULL DEFAULT '0',
  `url` varchar(100) NOT NULL DEFAULT '',
  `url_title` varchar(50) NOT NULL DEFAULT '',
  `rlanguage` varchar(30) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `isab_session`
--

CREATE TABLE IF NOT EXISTS `isab_session` (
  `uname` varchar(25) NOT NULL DEFAULT '',
  `time` varchar(14) NOT NULL DEFAULT '',
  `host_addr` varchar(48) NOT NULL DEFAULT '',
  `guest` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `isab_session`
--

INSERT INTO `isab_session` (`uname`, `time`, `host_addr`, `guest`) VALUES
('Fabio_A', '1253181182', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `isab_stats_date`
--

CREATE TABLE IF NOT EXISTS `isab_stats_date` (
  `year` smallint(6) NOT NULL DEFAULT '0',
  `month` tinyint(4) NOT NULL DEFAULT '0',
  `date` tinyint(4) NOT NULL DEFAULT '0',
  `hits` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `isab_stats_date`
--

INSERT INTO `isab_stats_date` (`year`, `month`, `date`, `hits`) VALUES
(2009, 1, 1, 0),
(2009, 1, 2, 0),
(2009, 1, 3, 0),
(2009, 1, 4, 0),
(2009, 1, 5, 0),
(2009, 1, 6, 0),
(2009, 1, 7, 0),
(2009, 1, 8, 0),
(2009, 1, 9, 0),
(2009, 1, 10, 0),
(2009, 1, 11, 0),
(2009, 1, 12, 0),
(2009, 1, 13, 0),
(2009, 1, 14, 0),
(2009, 1, 15, 0),
(2009, 1, 16, 0),
(2009, 1, 17, 0),
(2009, 1, 18, 0),
(2009, 1, 19, 0),
(2009, 1, 20, 0),
(2009, 1, 21, 0),
(2009, 1, 22, 0),
(2009, 1, 23, 0),
(2009, 1, 24, 0),
(2009, 1, 25, 0),
(2009, 1, 26, 0),
(2009, 1, 27, 0),
(2009, 1, 28, 0),
(2009, 1, 29, 0),
(2009, 1, 30, 0),
(2009, 1, 31, 0),
(2009, 2, 1, 0),
(2009, 2, 2, 0),
(2009, 2, 3, 0),
(2009, 2, 4, 0),
(2009, 2, 5, 0),
(2009, 2, 6, 0),
(2009, 2, 7, 0),
(2009, 2, 8, 0),
(2009, 2, 9, 0),
(2009, 2, 10, 0),
(2009, 2, 11, 0),
(2009, 2, 12, 0),
(2009, 2, 13, 0),
(2009, 2, 14, 0),
(2009, 2, 15, 0),
(2009, 2, 16, 0),
(2009, 2, 17, 0),
(2009, 2, 18, 0),
(2009, 2, 19, 0),
(2009, 2, 20, 0),
(2009, 2, 21, 0),
(2009, 2, 22, 0),
(2009, 2, 23, 0),
(2009, 2, 24, 0),
(2009, 2, 25, 0),
(2009, 2, 26, 0),
(2009, 2, 27, 0),
(2009, 2, 28, 0),
(2009, 3, 1, 0),
(2009, 3, 2, 0),
(2009, 3, 3, 0),
(2009, 3, 4, 0),
(2009, 3, 5, 0),
(2009, 3, 6, 0),
(2009, 3, 7, 0),
(2009, 3, 8, 0),
(2009, 3, 9, 0),
(2009, 3, 10, 0),
(2009, 3, 11, 0),
(2009, 3, 12, 24),
(2009, 3, 13, 15),
(2009, 3, 14, 90),
(2009, 3, 15, 11),
(2009, 3, 16, 57),
(2009, 3, 17, 180),
(2009, 3, 18, 90),
(2009, 3, 19, 0),
(2009, 3, 20, 0),
(2009, 3, 21, 0),
(2009, 3, 22, 0),
(2009, 3, 23, 0),
(2009, 3, 24, 0),
(2009, 3, 25, 0),
(2009, 3, 26, 0),
(2009, 3, 27, 0),
(2009, 3, 28, 0),
(2009, 3, 29, 0),
(2009, 3, 30, 0),
(2009, 3, 31, 0),
(2009, 4, 1, 0),
(2009, 4, 2, 0),
(2009, 4, 3, 0),
(2009, 4, 4, 0),
(2009, 4, 5, 0),
(2009, 4, 6, 0),
(2009, 4, 7, 0),
(2009, 4, 8, 0),
(2009, 4, 9, 0),
(2009, 4, 10, 0),
(2009, 4, 11, 0),
(2009, 4, 12, 0),
(2009, 4, 13, 0),
(2009, 4, 14, 0),
(2009, 4, 15, 0),
(2009, 4, 16, 0),
(2009, 4, 17, 0),
(2009, 4, 18, 0),
(2009, 4, 19, 0),
(2009, 4, 20, 0),
(2009, 4, 21, 0),
(2009, 4, 22, 0),
(2009, 4, 23, 0),
(2009, 4, 24, 0),
(2009, 4, 25, 0),
(2009, 4, 26, 0),
(2009, 4, 27, 0),
(2009, 4, 28, 0),
(2009, 4, 29, 0),
(2009, 4, 30, 0),
(2009, 5, 1, 0),
(2009, 5, 2, 0),
(2009, 5, 3, 0),
(2009, 5, 4, 0),
(2009, 5, 5, 0),
(2009, 5, 6, 70),
(2009, 5, 7, 0),
(2009, 5, 8, 0),
(2009, 5, 9, 0),
(2009, 5, 10, 0),
(2009, 5, 11, 0),
(2009, 5, 12, 0),
(2009, 5, 13, 0),
(2009, 5, 14, 0),
(2009, 5, 15, 0),
(2009, 5, 16, 0),
(2009, 5, 17, 0),
(2009, 5, 18, 0),
(2009, 5, 19, 0),
(2009, 5, 20, 0),
(2009, 5, 21, 0),
(2009, 5, 22, 0),
(2009, 5, 23, 0),
(2009, 5, 24, 0),
(2009, 5, 25, 0),
(2009, 5, 26, 0),
(2009, 5, 27, 0),
(2009, 5, 28, 0),
(2009, 5, 29, 0),
(2009, 5, 30, 0),
(2009, 5, 31, 0),
(2009, 6, 1, 0),
(2009, 6, 2, 0),
(2009, 6, 3, 0),
(2009, 6, 4, 0),
(2009, 6, 5, 0),
(2009, 6, 6, 0),
(2009, 6, 7, 0),
(2009, 6, 8, 0),
(2009, 6, 9, 0),
(2009, 6, 10, 0),
(2009, 6, 11, 0),
(2009, 6, 12, 0),
(2009, 6, 13, 0),
(2009, 6, 14, 1),
(2009, 6, 15, 0),
(2009, 6, 16, 0),
(2009, 6, 17, 0),
(2009, 6, 18, 0),
(2009, 6, 19, 0),
(2009, 6, 20, 0),
(2009, 6, 21, 0),
(2009, 6, 22, 17),
(2009, 6, 23, 0),
(2009, 6, 24, 0),
(2009, 6, 25, 0),
(2009, 6, 26, 0),
(2009, 6, 27, 0),
(2009, 6, 28, 0),
(2009, 6, 29, 2),
(2009, 6, 30, 67),
(2009, 7, 1, 0),
(2009, 7, 2, 0),
(2009, 7, 3, 0),
(2009, 7, 4, 0),
(2009, 7, 5, 0),
(2009, 7, 6, 0),
(2009, 7, 7, 0),
(2009, 7, 8, 0),
(2009, 7, 9, 0),
(2009, 7, 10, 0),
(2009, 7, 11, 0),
(2009, 7, 12, 0),
(2009, 7, 13, 0),
(2009, 7, 14, 0),
(2009, 7, 15, 0),
(2009, 7, 16, 0),
(2009, 7, 17, 0),
(2009, 7, 18, 0),
(2009, 7, 19, 0),
(2009, 7, 20, 0),
(2009, 7, 21, 0),
(2009, 7, 22, 0),
(2009, 7, 23, 0),
(2009, 7, 24, 0),
(2009, 7, 25, 0),
(2009, 7, 26, 0),
(2009, 7, 27, 0),
(2009, 7, 28, 0),
(2009, 7, 29, 0),
(2009, 7, 30, 0),
(2009, 7, 31, 0),
(2009, 8, 1, 0),
(2009, 8, 2, 0),
(2009, 8, 3, 0),
(2009, 8, 4, 0),
(2009, 8, 5, 24),
(2009, 8, 6, 12),
(2009, 8, 7, 32),
(2009, 8, 8, 3),
(2009, 8, 9, 0),
(2009, 8, 10, 480),
(2009, 8, 11, 12),
(2009, 8, 12, 0),
(2009, 8, 13, 0),
(2009, 8, 14, 0),
(2009, 8, 15, 0),
(2009, 8, 16, 4),
(2009, 8, 17, 0),
(2009, 8, 18, 35),
(2009, 8, 19, 20),
(2009, 8, 20, 39),
(2009, 8, 21, 2),
(2009, 8, 22, 0),
(2009, 8, 23, 0),
(2009, 8, 24, 31),
(2009, 8, 25, 9),
(2009, 8, 26, 0),
(2009, 8, 27, 57),
(2009, 8, 28, 3),
(2009, 8, 29, 0),
(2009, 8, 30, 0),
(2009, 8, 31, 0),
(2009, 9, 1, 8),
(2009, 9, 2, 11),
(2009, 9, 3, 24),
(2009, 9, 4, 0),
(2009, 9, 5, 0),
(2009, 9, 6, 0),
(2009, 9, 7, 2),
(2009, 9, 8, 6),
(2009, 9, 9, 5),
(2009, 9, 10, 1),
(2009, 9, 11, 2),
(2009, 9, 12, 0),
(2009, 9, 13, 0),
(2009, 9, 14, 1),
(2009, 9, 15, 0),
(2009, 9, 16, 1),
(2009, 9, 17, 1),
(2009, 9, 18, 0),
(2009, 9, 19, 0),
(2009, 9, 20, 0),
(2009, 9, 21, 0),
(2009, 9, 22, 0),
(2009, 9, 23, 0),
(2009, 9, 24, 0),
(2009, 9, 25, 0),
(2009, 9, 26, 0),
(2009, 9, 27, 0),
(2009, 9, 28, 0),
(2009, 9, 29, 0),
(2009, 9, 30, 0),
(2009, 10, 1, 0),
(2009, 10, 2, 0),
(2009, 10, 3, 0),
(2009, 10, 4, 0),
(2009, 10, 5, 0),
(2009, 10, 6, 0),
(2009, 10, 7, 0),
(2009, 10, 8, 0),
(2009, 10, 9, 0),
(2009, 10, 10, 0),
(2009, 10, 11, 0),
(2009, 10, 12, 0),
(2009, 10, 13, 0),
(2009, 10, 14, 0),
(2009, 10, 15, 0),
(2009, 10, 16, 0),
(2009, 10, 17, 0),
(2009, 10, 18, 0),
(2009, 10, 19, 0),
(2009, 10, 20, 0),
(2009, 10, 21, 0),
(2009, 10, 22, 0),
(2009, 10, 23, 0),
(2009, 10, 24, 0),
(2009, 10, 25, 0),
(2009, 10, 26, 0),
(2009, 10, 27, 0),
(2009, 10, 28, 0),
(2009, 10, 29, 0),
(2009, 10, 30, 0),
(2009, 10, 31, 0),
(2009, 11, 1, 0),
(2009, 11, 2, 0),
(2009, 11, 3, 0),
(2009, 11, 4, 0),
(2009, 11, 5, 0),
(2009, 11, 6, 0),
(2009, 11, 7, 0),
(2009, 11, 8, 0),
(2009, 11, 9, 0),
(2009, 11, 10, 0),
(2009, 11, 11, 0),
(2009, 11, 12, 0),
(2009, 11, 13, 0),
(2009, 11, 14, 0),
(2009, 11, 15, 0),
(2009, 11, 16, 0),
(2009, 11, 17, 0),
(2009, 11, 18, 0),
(2009, 11, 19, 0),
(2009, 11, 20, 0),
(2009, 11, 21, 0),
(2009, 11, 22, 0),
(2009, 11, 23, 0),
(2009, 11, 24, 0),
(2009, 11, 25, 0),
(2009, 11, 26, 0),
(2009, 11, 27, 0),
(2009, 11, 28, 0),
(2009, 11, 29, 0),
(2009, 11, 30, 0),
(2009, 12, 1, 0),
(2009, 12, 2, 0),
(2009, 12, 3, 0),
(2009, 12, 4, 0),
(2009, 12, 5, 0),
(2009, 12, 6, 0),
(2009, 12, 7, 0),
(2009, 12, 8, 0),
(2009, 12, 9, 0),
(2009, 12, 10, 0),
(2009, 12, 11, 0),
(2009, 12, 12, 0),
(2009, 12, 13, 0),
(2009, 12, 14, 0),
(2009, 12, 15, 0),
(2009, 12, 16, 0),
(2009, 12, 17, 0),
(2009, 12, 18, 0),
(2009, 12, 19, 0),
(2009, 12, 20, 0),
(2009, 12, 21, 0),
(2009, 12, 22, 0),
(2009, 12, 23, 0),
(2009, 12, 24, 0),
(2009, 12, 25, 0),
(2009, 12, 26, 0),
(2009, 12, 27, 0),
(2009, 12, 28, 0),
(2009, 12, 29, 0),
(2009, 12, 30, 0),
(2009, 12, 31, 0);

-- --------------------------------------------------------

--
-- Table structure for table `isab_stats_hour`
--

CREATE TABLE IF NOT EXISTS `isab_stats_hour` (
  `year` smallint(6) NOT NULL DEFAULT '0',
  `month` tinyint(4) NOT NULL DEFAULT '0',
  `date` tinyint(4) NOT NULL DEFAULT '0',
  `hour` tinyint(4) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `isab_stats_hour`
--

INSERT INTO `isab_stats_hour` (`year`, `month`, `date`, `hour`, `hits`) VALUES
(2009, 3, 12, 0, 0),
(2009, 3, 12, 1, 0),
(2009, 3, 12, 2, 0),
(2009, 3, 12, 3, 0),
(2009, 3, 12, 4, 0),
(2009, 3, 12, 5, 0),
(2009, 3, 12, 6, 0),
(2009, 3, 12, 7, 0),
(2009, 3, 12, 8, 1),
(2009, 3, 12, 9, 5),
(2009, 3, 12, 10, 5),
(2009, 3, 12, 11, 10),
(2009, 3, 12, 12, 2),
(2009, 3, 12, 13, 1),
(2009, 3, 12, 14, 0),
(2009, 3, 12, 15, 0),
(2009, 3, 12, 16, 0),
(2009, 3, 12, 17, 0),
(2009, 3, 12, 18, 0),
(2009, 3, 12, 19, 0),
(2009, 3, 12, 20, 0),
(2009, 3, 12, 21, 0),
(2009, 3, 12, 22, 0),
(2009, 3, 12, 23, 0),
(2009, 3, 13, 0, 0),
(2009, 3, 13, 1, 0),
(2009, 3, 13, 2, 0),
(2009, 3, 13, 3, 0),
(2009, 3, 13, 4, 0),
(2009, 3, 13, 5, 0),
(2009, 3, 13, 6, 0),
(2009, 3, 13, 7, 0),
(2009, 3, 13, 8, 1),
(2009, 3, 13, 9, 0),
(2009, 3, 13, 10, 0),
(2009, 3, 13, 11, 0),
(2009, 3, 13, 12, 0),
(2009, 3, 13, 13, 0),
(2009, 3, 13, 14, 12),
(2009, 3, 13, 15, 0),
(2009, 3, 13, 16, 2),
(2009, 3, 13, 17, 0),
(2009, 3, 13, 18, 0),
(2009, 3, 13, 19, 0),
(2009, 3, 13, 20, 0),
(2009, 3, 13, 21, 0),
(2009, 3, 13, 22, 0),
(2009, 3, 13, 23, 0),
(2009, 3, 14, 0, 0),
(2009, 3, 14, 1, 0),
(2009, 3, 14, 2, 0),
(2009, 3, 14, 3, 0),
(2009, 3, 14, 4, 0),
(2009, 3, 14, 5, 0),
(2009, 3, 14, 6, 0),
(2009, 3, 14, 7, 0),
(2009, 3, 14, 8, 0),
(2009, 3, 14, 9, 1),
(2009, 3, 14, 10, 0),
(2009, 3, 14, 11, 0),
(2009, 3, 14, 12, 2),
(2009, 3, 14, 13, 0),
(2009, 3, 14, 14, 0),
(2009, 3, 14, 15, 0),
(2009, 3, 14, 16, 0),
(2009, 3, 14, 17, 0),
(2009, 3, 14, 18, 60),
(2009, 3, 14, 19, 27),
(2009, 3, 14, 20, 0),
(2009, 3, 14, 21, 0),
(2009, 3, 14, 22, 0),
(2009, 3, 14, 23, 0),
(2009, 3, 15, 0, 0),
(2009, 3, 15, 1, 0),
(2009, 3, 15, 2, 0),
(2009, 3, 15, 3, 0),
(2009, 3, 15, 4, 0),
(2009, 3, 15, 5, 0),
(2009, 3, 15, 6, 0),
(2009, 3, 15, 7, 0),
(2009, 3, 15, 8, 0),
(2009, 3, 15, 9, 2),
(2009, 3, 15, 10, 0),
(2009, 3, 15, 11, 0),
(2009, 3, 15, 12, 0),
(2009, 3, 15, 13, 0),
(2009, 3, 15, 14, 0),
(2009, 3, 15, 15, 0),
(2009, 3, 15, 16, 0),
(2009, 3, 15, 17, 0),
(2009, 3, 15, 18, 0),
(2009, 3, 15, 19, 0),
(2009, 3, 15, 20, 2),
(2009, 3, 15, 21, 0),
(2009, 3, 15, 22, 7),
(2009, 3, 15, 23, 0),
(2009, 3, 16, 0, 0),
(2009, 3, 16, 1, 0),
(2009, 3, 16, 2, 0),
(2009, 3, 16, 3, 0),
(2009, 3, 16, 4, 0),
(2009, 3, 16, 5, 0),
(2009, 3, 16, 6, 0),
(2009, 3, 16, 7, 1),
(2009, 3, 16, 8, 0),
(2009, 3, 16, 9, 18),
(2009, 3, 16, 10, 38),
(2009, 3, 16, 11, 0),
(2009, 3, 16, 12, 0),
(2009, 3, 16, 13, 0),
(2009, 3, 16, 14, 0),
(2009, 3, 16, 15, 0),
(2009, 3, 16, 16, 0),
(2009, 3, 16, 17, 0),
(2009, 3, 16, 18, 0),
(2009, 3, 16, 19, 0),
(2009, 3, 16, 20, 0),
(2009, 3, 16, 21, 0),
(2009, 3, 16, 22, 0),
(2009, 3, 16, 23, 0),
(2009, 3, 17, 0, 0),
(2009, 3, 17, 1, 0),
(2009, 3, 17, 2, 0),
(2009, 3, 17, 3, 0),
(2009, 3, 17, 4, 0),
(2009, 3, 17, 5, 0),
(2009, 3, 17, 6, 0),
(2009, 3, 17, 7, 0),
(2009, 3, 17, 8, 0),
(2009, 3, 17, 9, 0),
(2009, 3, 17, 10, 4),
(2009, 3, 17, 11, 46),
(2009, 3, 17, 12, 3),
(2009, 3, 17, 13, 23),
(2009, 3, 17, 14, 6),
(2009, 3, 17, 15, 68),
(2009, 3, 17, 16, 30),
(2009, 3, 17, 17, 0),
(2009, 3, 17, 18, 0),
(2009, 3, 17, 19, 0),
(2009, 3, 17, 20, 0),
(2009, 3, 17, 21, 0),
(2009, 3, 17, 22, 0),
(2009, 3, 17, 23, 0),
(2009, 3, 18, 0, 0),
(2009, 3, 18, 1, 0),
(2009, 3, 18, 2, 0),
(2009, 3, 18, 3, 0),
(2009, 3, 18, 4, 0),
(2009, 3, 18, 5, 0),
(2009, 3, 18, 6, 0),
(2009, 3, 18, 7, 0),
(2009, 3, 18, 8, 0),
(2009, 3, 18, 9, 11),
(2009, 3, 18, 10, 9),
(2009, 3, 18, 11, 13),
(2009, 3, 18, 12, 2),
(2009, 3, 18, 13, 19),
(2009, 3, 18, 14, 36),
(2009, 3, 18, 15, 0),
(2009, 3, 18, 16, 0),
(2009, 3, 18, 17, 0),
(2009, 3, 18, 18, 0),
(2009, 3, 18, 19, 0),
(2009, 3, 18, 20, 0),
(2009, 3, 18, 21, 0),
(2009, 3, 18, 22, 0),
(2009, 3, 18, 23, 0),
(2009, 5, 6, 0, 0),
(2009, 5, 6, 1, 0),
(2009, 5, 6, 2, 0),
(2009, 5, 6, 3, 0),
(2009, 5, 6, 4, 0),
(2009, 5, 6, 5, 0),
(2009, 5, 6, 6, 0),
(2009, 5, 6, 7, 0),
(2009, 5, 6, 8, 0),
(2009, 5, 6, 9, 0),
(2009, 5, 6, 10, 0),
(2009, 5, 6, 11, 0),
(2009, 5, 6, 12, 54),
(2009, 5, 6, 13, 16),
(2009, 5, 6, 14, 0),
(2009, 5, 6, 15, 0),
(2009, 5, 6, 16, 0),
(2009, 5, 6, 17, 0),
(2009, 5, 6, 18, 0),
(2009, 5, 6, 19, 0),
(2009, 5, 6, 20, 0),
(2009, 5, 6, 21, 0),
(2009, 5, 6, 22, 0),
(2009, 5, 6, 23, 0),
(2009, 6, 14, 0, 0),
(2009, 6, 14, 1, 0),
(2009, 6, 14, 2, 0),
(2009, 6, 14, 3, 0),
(2009, 6, 14, 4, 0),
(2009, 6, 14, 5, 0),
(2009, 6, 14, 6, 0),
(2009, 6, 14, 7, 0),
(2009, 6, 14, 8, 0),
(2009, 6, 14, 9, 0),
(2009, 6, 14, 10, 1),
(2009, 6, 14, 11, 0),
(2009, 6, 14, 12, 0),
(2009, 6, 14, 13, 0),
(2009, 6, 14, 14, 0),
(2009, 6, 14, 15, 0),
(2009, 6, 14, 16, 0),
(2009, 6, 14, 17, 0),
(2009, 6, 14, 18, 0),
(2009, 6, 14, 19, 0),
(2009, 6, 14, 20, 0),
(2009, 6, 14, 21, 0),
(2009, 6, 14, 22, 0),
(2009, 6, 14, 23, 0),
(2009, 6, 22, 0, 0),
(2009, 6, 22, 1, 0),
(2009, 6, 22, 2, 0),
(2009, 6, 22, 3, 0),
(2009, 6, 22, 4, 0),
(2009, 6, 22, 5, 0),
(2009, 6, 22, 6, 0),
(2009, 6, 22, 7, 0),
(2009, 6, 22, 8, 0),
(2009, 6, 22, 9, 0),
(2009, 6, 22, 10, 0),
(2009, 6, 22, 11, 0),
(2009, 6, 22, 12, 0),
(2009, 6, 22, 13, 0),
(2009, 6, 22, 14, 0),
(2009, 6, 22, 15, 0),
(2009, 6, 22, 16, 0),
(2009, 6, 22, 17, 0),
(2009, 6, 22, 18, 0),
(2009, 6, 22, 19, 8),
(2009, 6, 22, 20, 9),
(2009, 6, 22, 21, 0),
(2009, 6, 22, 22, 0),
(2009, 6, 22, 23, 0),
(2009, 6, 29, 0, 0),
(2009, 6, 29, 1, 0),
(2009, 6, 29, 2, 0),
(2009, 6, 29, 3, 0),
(2009, 6, 29, 4, 0),
(2009, 6, 29, 5, 0),
(2009, 6, 29, 6, 0),
(2009, 6, 29, 7, 0),
(2009, 6, 29, 8, 0),
(2009, 6, 29, 9, 0),
(2009, 6, 29, 10, 0),
(2009, 6, 29, 11, 0),
(2009, 6, 29, 12, 0),
(2009, 6, 29, 13, 0),
(2009, 6, 29, 14, 0),
(2009, 6, 29, 15, 0),
(2009, 6, 29, 16, 0),
(2009, 6, 29, 17, 0),
(2009, 6, 29, 18, 2),
(2009, 6, 29, 19, 0),
(2009, 6, 29, 20, 0),
(2009, 6, 29, 21, 0),
(2009, 6, 29, 22, 0),
(2009, 6, 29, 23, 0),
(2009, 6, 30, 0, 0),
(2009, 6, 30, 1, 0),
(2009, 6, 30, 2, 0),
(2009, 6, 30, 3, 0),
(2009, 6, 30, 4, 0),
(2009, 6, 30, 5, 0),
(2009, 6, 30, 6, 0),
(2009, 6, 30, 7, 0),
(2009, 6, 30, 8, 0),
(2009, 6, 30, 9, 0),
(2009, 6, 30, 10, 0),
(2009, 6, 30, 11, 0),
(2009, 6, 30, 12, 0),
(2009, 6, 30, 13, 0),
(2009, 6, 30, 14, 0),
(2009, 6, 30, 15, 1),
(2009, 6, 30, 16, 0),
(2009, 6, 30, 17, 0),
(2009, 6, 30, 18, 0),
(2009, 6, 30, 19, 30),
(2009, 6, 30, 20, 36),
(2009, 6, 30, 21, 0),
(2009, 6, 30, 22, 0),
(2009, 6, 30, 23, 0),
(2009, 8, 5, 0, 0),
(2009, 8, 5, 1, 0),
(2009, 8, 5, 2, 0),
(2009, 8, 5, 3, 0),
(2009, 8, 5, 4, 0),
(2009, 8, 5, 5, 0),
(2009, 8, 5, 6, 0),
(2009, 8, 5, 7, 0),
(2009, 8, 5, 8, 0),
(2009, 8, 5, 9, 0),
(2009, 8, 5, 10, 0),
(2009, 8, 5, 11, 0),
(2009, 8, 5, 12, 0),
(2009, 8, 5, 13, 0),
(2009, 8, 5, 14, 0),
(2009, 8, 5, 15, 0),
(2009, 8, 5, 16, 0),
(2009, 8, 5, 17, 21),
(2009, 8, 5, 18, 3),
(2009, 8, 5, 19, 0),
(2009, 8, 5, 20, 0),
(2009, 8, 5, 21, 0),
(2009, 8, 5, 22, 0),
(2009, 8, 5, 23, 0),
(2009, 8, 6, 0, 0),
(2009, 8, 6, 1, 0),
(2009, 8, 6, 2, 0),
(2009, 8, 6, 3, 0),
(2009, 8, 6, 4, 0),
(2009, 8, 6, 5, 0),
(2009, 8, 6, 6, 0),
(2009, 8, 6, 7, 0),
(2009, 8, 6, 8, 0),
(2009, 8, 6, 9, 0),
(2009, 8, 6, 10, 0),
(2009, 8, 6, 11, 10),
(2009, 8, 6, 12, 0),
(2009, 8, 6, 13, 0),
(2009, 8, 6, 14, 0),
(2009, 8, 6, 15, 1),
(2009, 8, 6, 16, 1),
(2009, 8, 6, 17, 0),
(2009, 8, 6, 18, 0),
(2009, 8, 6, 19, 0),
(2009, 8, 6, 20, 0),
(2009, 8, 6, 21, 0),
(2009, 8, 6, 22, 0),
(2009, 8, 6, 23, 0),
(2009, 8, 7, 0, 0),
(2009, 8, 7, 1, 0),
(2009, 8, 7, 2, 0),
(2009, 8, 7, 3, 0),
(2009, 8, 7, 4, 0),
(2009, 8, 7, 5, 0),
(2009, 8, 7, 6, 0),
(2009, 8, 7, 7, 0),
(2009, 8, 7, 8, 0),
(2009, 8, 7, 9, 7),
(2009, 8, 7, 10, 13),
(2009, 8, 7, 11, 2),
(2009, 8, 7, 12, 1),
(2009, 8, 7, 13, 7),
(2009, 8, 7, 14, 0),
(2009, 8, 7, 15, 1),
(2009, 8, 7, 16, 0),
(2009, 8, 7, 17, 1),
(2009, 8, 7, 18, 0),
(2009, 8, 7, 19, 0),
(2009, 8, 7, 20, 0),
(2009, 8, 7, 21, 0),
(2009, 8, 7, 22, 0),
(2009, 8, 7, 23, 0),
(2009, 8, 8, 0, 1),
(2009, 8, 8, 1, 0),
(2009, 8, 8, 2, 0),
(2009, 8, 8, 3, 0),
(2009, 8, 8, 4, 0),
(2009, 8, 8, 5, 0),
(2009, 8, 8, 6, 0),
(2009, 8, 8, 7, 0),
(2009, 8, 8, 8, 0),
(2009, 8, 8, 9, 0),
(2009, 8, 8, 10, 0),
(2009, 8, 8, 11, 0),
(2009, 8, 8, 12, 0),
(2009, 8, 8, 13, 0),
(2009, 8, 8, 14, 0),
(2009, 8, 8, 15, 0),
(2009, 8, 8, 16, 0),
(2009, 8, 8, 17, 0),
(2009, 8, 8, 18, 0),
(2009, 8, 8, 19, 0),
(2009, 8, 8, 20, 1),
(2009, 8, 8, 21, 0),
(2009, 8, 8, 22, 0),
(2009, 8, 8, 23, 1),
(2009, 8, 10, 0, 0),
(2009, 8, 10, 1, 0),
(2009, 8, 10, 2, 0),
(2009, 8, 10, 3, 0),
(2009, 8, 10, 4, 0),
(2009, 8, 10, 5, 0),
(2009, 8, 10, 6, 0),
(2009, 8, 10, 7, 0),
(2009, 8, 10, 8, 0),
(2009, 8, 10, 9, 3),
(2009, 8, 10, 10, 13),
(2009, 8, 10, 11, 45),
(2009, 8, 10, 12, 43),
(2009, 8, 10, 13, 94),
(2009, 8, 10, 14, 30),
(2009, 8, 10, 15, 97),
(2009, 8, 10, 16, 76),
(2009, 8, 10, 17, 25),
(2009, 8, 10, 18, 54),
(2009, 8, 10, 19, 0),
(2009, 8, 10, 20, 0),
(2009, 8, 10, 21, 0),
(2009, 8, 10, 22, 0),
(2009, 8, 10, 23, 0),
(2009, 8, 11, 0, 0),
(2009, 8, 11, 1, 0),
(2009, 8, 11, 2, 0),
(2009, 8, 11, 3, 0),
(2009, 8, 11, 4, 0),
(2009, 8, 11, 5, 0),
(2009, 8, 11, 6, 0),
(2009, 8, 11, 7, 0),
(2009, 8, 11, 8, 0),
(2009, 8, 11, 9, 0),
(2009, 8, 11, 10, 0),
(2009, 8, 11, 11, 3),
(2009, 8, 11, 12, 9),
(2009, 8, 11, 13, 0),
(2009, 8, 11, 14, 0),
(2009, 8, 11, 15, 0),
(2009, 8, 11, 16, 0),
(2009, 8, 11, 17, 0),
(2009, 8, 11, 18, 0),
(2009, 8, 11, 19, 0),
(2009, 8, 11, 20, 0),
(2009, 8, 11, 21, 0),
(2009, 8, 11, 22, 0),
(2009, 8, 11, 23, 0),
(2009, 8, 16, 0, 0),
(2009, 8, 16, 1, 0),
(2009, 8, 16, 2, 0),
(2009, 8, 16, 3, 0),
(2009, 8, 16, 4, 0),
(2009, 8, 16, 5, 0),
(2009, 8, 16, 6, 0),
(2009, 8, 16, 7, 0),
(2009, 8, 16, 8, 0),
(2009, 8, 16, 9, 0),
(2009, 8, 16, 10, 0),
(2009, 8, 16, 11, 0),
(2009, 8, 16, 12, 0),
(2009, 8, 16, 13, 0),
(2009, 8, 16, 14, 0),
(2009, 8, 16, 15, 0),
(2009, 8, 16, 16, 0),
(2009, 8, 16, 17, 0),
(2009, 8, 16, 18, 0),
(2009, 8, 16, 19, 0),
(2009, 8, 16, 20, 0),
(2009, 8, 16, 21, 0),
(2009, 8, 16, 22, 0),
(2009, 8, 16, 23, 4),
(2009, 8, 18, 0, 0),
(2009, 8, 18, 1, 0),
(2009, 8, 18, 2, 0),
(2009, 8, 18, 3, 0),
(2009, 8, 18, 4, 0),
(2009, 8, 18, 5, 0),
(2009, 8, 18, 6, 0),
(2009, 8, 18, 7, 0),
(2009, 8, 18, 8, 0),
(2009, 8, 18, 9, 0),
(2009, 8, 18, 10, 4),
(2009, 8, 18, 11, 0),
(2009, 8, 18, 12, 0),
(2009, 8, 18, 13, 0),
(2009, 8, 18, 14, 24),
(2009, 8, 18, 15, 7),
(2009, 8, 18, 16, 0),
(2009, 8, 18, 17, 0),
(2009, 8, 18, 18, 0),
(2009, 8, 18, 19, 0),
(2009, 8, 18, 20, 0),
(2009, 8, 18, 21, 0),
(2009, 8, 18, 22, 0),
(2009, 8, 18, 23, 0),
(2009, 8, 19, 0, 0),
(2009, 8, 19, 1, 0),
(2009, 8, 19, 2, 0),
(2009, 8, 19, 3, 0),
(2009, 8, 19, 4, 0),
(2009, 8, 19, 5, 0),
(2009, 8, 19, 6, 0),
(2009, 8, 19, 7, 0),
(2009, 8, 19, 8, 0),
(2009, 8, 19, 9, 0),
(2009, 8, 19, 10, 0),
(2009, 8, 19, 11, 1),
(2009, 8, 19, 12, 0),
(2009, 8, 19, 13, 0),
(2009, 8, 19, 14, 0),
(2009, 8, 19, 15, 0),
(2009, 8, 19, 16, 13),
(2009, 8, 19, 17, 2),
(2009, 8, 19, 18, 3),
(2009, 8, 19, 19, 1),
(2009, 8, 19, 20, 0),
(2009, 8, 19, 21, 0),
(2009, 8, 19, 22, 0),
(2009, 8, 19, 23, 0),
(2009, 8, 20, 0, 0),
(2009, 8, 20, 1, 0),
(2009, 8, 20, 2, 0),
(2009, 8, 20, 3, 0),
(2009, 8, 20, 4, 0),
(2009, 8, 20, 5, 0),
(2009, 8, 20, 6, 0),
(2009, 8, 20, 7, 0),
(2009, 8, 20, 8, 0),
(2009, 8, 20, 9, 5),
(2009, 8, 20, 10, 11),
(2009, 8, 20, 11, 5),
(2009, 8, 20, 12, 4),
(2009, 8, 20, 13, 8),
(2009, 8, 20, 14, 6),
(2009, 8, 20, 15, 0),
(2009, 8, 20, 16, 0),
(2009, 8, 20, 17, 0),
(2009, 8, 20, 18, 0),
(2009, 8, 20, 19, 0),
(2009, 8, 20, 20, 0),
(2009, 8, 20, 21, 0),
(2009, 8, 20, 22, 0),
(2009, 8, 20, 23, 0),
(2009, 8, 21, 0, 0),
(2009, 8, 21, 1, 0),
(2009, 8, 21, 2, 0),
(2009, 8, 21, 3, 0),
(2009, 8, 21, 4, 0),
(2009, 8, 21, 5, 0),
(2009, 8, 21, 6, 0),
(2009, 8, 21, 7, 0),
(2009, 8, 21, 8, 2),
(2009, 8, 21, 9, 0),
(2009, 8, 21, 10, 0),
(2009, 8, 21, 11, 0),
(2009, 8, 21, 12, 0),
(2009, 8, 21, 13, 0),
(2009, 8, 21, 14, 0),
(2009, 8, 21, 15, 0),
(2009, 8, 21, 16, 0),
(2009, 8, 21, 17, 0),
(2009, 8, 21, 18, 0),
(2009, 8, 21, 19, 0),
(2009, 8, 21, 20, 0),
(2009, 8, 21, 21, 0),
(2009, 8, 21, 22, 0),
(2009, 8, 21, 23, 0),
(2009, 8, 24, 0, 0),
(2009, 8, 24, 1, 0),
(2009, 8, 24, 2, 0),
(2009, 8, 24, 3, 0),
(2009, 8, 24, 4, 0),
(2009, 8, 24, 5, 0),
(2009, 8, 24, 6, 1),
(2009, 8, 24, 7, 0),
(2009, 8, 24, 8, 0),
(2009, 8, 24, 9, 0),
(2009, 8, 24, 10, 0),
(2009, 8, 24, 11, 6),
(2009, 8, 24, 12, 0),
(2009, 8, 24, 13, 2),
(2009, 8, 24, 14, 18),
(2009, 8, 24, 15, 0),
(2009, 8, 24, 16, 4),
(2009, 8, 24, 17, 0),
(2009, 8, 24, 18, 0),
(2009, 8, 24, 19, 0),
(2009, 8, 24, 20, 0),
(2009, 8, 24, 21, 0),
(2009, 8, 24, 22, 0),
(2009, 8, 24, 23, 0),
(2009, 8, 25, 0, 0),
(2009, 8, 25, 1, 0),
(2009, 8, 25, 2, 0),
(2009, 8, 25, 3, 0),
(2009, 8, 25, 4, 0),
(2009, 8, 25, 5, 0),
(2009, 8, 25, 6, 0),
(2009, 8, 25, 7, 0),
(2009, 8, 25, 8, 0),
(2009, 8, 25, 9, 0),
(2009, 8, 25, 10, 0),
(2009, 8, 25, 11, 2),
(2009, 8, 25, 12, 0),
(2009, 8, 25, 13, 0),
(2009, 8, 25, 14, 1),
(2009, 8, 25, 15, 0),
(2009, 8, 25, 16, 0),
(2009, 8, 25, 17, 0),
(2009, 8, 25, 18, 6),
(2009, 8, 25, 19, 0),
(2009, 8, 25, 20, 0),
(2009, 8, 25, 21, 0),
(2009, 8, 25, 22, 0),
(2009, 8, 25, 23, 0),
(2009, 8, 27, 0, 0),
(2009, 8, 27, 1, 0),
(2009, 8, 27, 2, 0),
(2009, 8, 27, 3, 0),
(2009, 8, 27, 4, 0),
(2009, 8, 27, 5, 0),
(2009, 8, 27, 6, 0),
(2009, 8, 27, 7, 0),
(2009, 8, 27, 8, 18),
(2009, 8, 27, 9, 20),
(2009, 8, 27, 10, 0),
(2009, 8, 27, 11, 15),
(2009, 8, 27, 12, 3),
(2009, 8, 27, 13, 0),
(2009, 8, 27, 14, 0),
(2009, 8, 27, 15, 0),
(2009, 8, 27, 16, 1),
(2009, 8, 27, 17, 0),
(2009, 8, 27, 18, 0),
(2009, 8, 27, 19, 0),
(2009, 8, 27, 20, 0),
(2009, 8, 27, 21, 0),
(2009, 8, 27, 22, 0),
(2009, 8, 27, 23, 0),
(2009, 8, 28, 0, 0),
(2009, 8, 28, 1, 0),
(2009, 8, 28, 2, 0),
(2009, 8, 28, 3, 0),
(2009, 8, 28, 4, 2),
(2009, 8, 28, 5, 0),
(2009, 8, 28, 6, 0),
(2009, 8, 28, 7, 0),
(2009, 8, 28, 8, 1),
(2009, 8, 28, 9, 0),
(2009, 8, 28, 10, 0),
(2009, 8, 28, 11, 0),
(2009, 8, 28, 12, 0),
(2009, 8, 28, 13, 0),
(2009, 8, 28, 14, 0),
(2009, 8, 28, 15, 0),
(2009, 8, 28, 16, 0),
(2009, 8, 28, 17, 0),
(2009, 8, 28, 18, 0),
(2009, 8, 28, 19, 0),
(2009, 8, 28, 20, 0),
(2009, 8, 28, 21, 0),
(2009, 8, 28, 22, 0),
(2009, 8, 28, 23, 0),
(2009, 9, 1, 0, 0),
(2009, 9, 1, 1, 0),
(2009, 9, 1, 2, 0),
(2009, 9, 1, 3, 0),
(2009, 9, 1, 4, 0),
(2009, 9, 1, 5, 0),
(2009, 9, 1, 6, 0),
(2009, 9, 1, 7, 0),
(2009, 9, 1, 8, 0),
(2009, 9, 1, 9, 0),
(2009, 9, 1, 10, 0),
(2009, 9, 1, 11, 8),
(2009, 9, 1, 12, 0),
(2009, 9, 1, 13, 0),
(2009, 9, 1, 14, 0),
(2009, 9, 1, 15, 0),
(2009, 9, 1, 16, 0),
(2009, 9, 1, 17, 0),
(2009, 9, 1, 18, 0),
(2009, 9, 1, 19, 0),
(2009, 9, 1, 20, 0),
(2009, 9, 1, 21, 0),
(2009, 9, 1, 22, 0),
(2009, 9, 1, 23, 0),
(2009, 9, 2, 0, 0),
(2009, 9, 2, 1, 0),
(2009, 9, 2, 2, 0),
(2009, 9, 2, 3, 0),
(2009, 9, 2, 4, 0),
(2009, 9, 2, 5, 0),
(2009, 9, 2, 6, 0),
(2009, 9, 2, 7, 0),
(2009, 9, 2, 8, 0),
(2009, 9, 2, 9, 0),
(2009, 9, 2, 10, 6),
(2009, 9, 2, 11, 0),
(2009, 9, 2, 12, 0),
(2009, 9, 2, 13, 0),
(2009, 9, 2, 14, 0),
(2009, 9, 2, 15, 0),
(2009, 9, 2, 16, 0),
(2009, 9, 2, 17, 0),
(2009, 9, 2, 18, 0),
(2009, 9, 2, 19, 5),
(2009, 9, 2, 20, 0),
(2009, 9, 2, 21, 0),
(2009, 9, 2, 22, 0),
(2009, 9, 2, 23, 0),
(2009, 9, 3, 0, 0),
(2009, 9, 3, 1, 0),
(2009, 9, 3, 2, 0),
(2009, 9, 3, 3, 0),
(2009, 9, 3, 4, 0),
(2009, 9, 3, 5, 0),
(2009, 9, 3, 6, 0),
(2009, 9, 3, 7, 0),
(2009, 9, 3, 8, 0),
(2009, 9, 3, 9, 9),
(2009, 9, 3, 10, 15),
(2009, 9, 3, 11, 0),
(2009, 9, 3, 12, 0),
(2009, 9, 3, 13, 0),
(2009, 9, 3, 14, 0),
(2009, 9, 3, 15, 0),
(2009, 9, 3, 16, 0),
(2009, 9, 3, 17, 0),
(2009, 9, 3, 18, 0),
(2009, 9, 3, 19, 0),
(2009, 9, 3, 20, 0),
(2009, 9, 3, 21, 0),
(2009, 9, 3, 22, 0),
(2009, 9, 3, 23, 0),
(2009, 9, 7, 0, 0),
(2009, 9, 7, 1, 0),
(2009, 9, 7, 2, 0),
(2009, 9, 7, 3, 0),
(2009, 9, 7, 4, 0),
(2009, 9, 7, 5, 0),
(2009, 9, 7, 6, 0),
(2009, 9, 7, 7, 0),
(2009, 9, 7, 8, 0),
(2009, 9, 7, 9, 0),
(2009, 9, 7, 10, 0),
(2009, 9, 7, 11, 0),
(2009, 9, 7, 12, 0),
(2009, 9, 7, 13, 0),
(2009, 9, 7, 14, 0),
(2009, 9, 7, 15, 0),
(2009, 9, 7, 16, 0),
(2009, 9, 7, 17, 0),
(2009, 9, 7, 18, 2),
(2009, 9, 7, 19, 0),
(2009, 9, 7, 20, 0),
(2009, 9, 7, 21, 0),
(2009, 9, 7, 22, 0),
(2009, 9, 7, 23, 0),
(2009, 9, 8, 0, 0),
(2009, 9, 8, 1, 0),
(2009, 9, 8, 2, 0),
(2009, 9, 8, 3, 0),
(2009, 9, 8, 4, 0),
(2009, 9, 8, 5, 0),
(2009, 9, 8, 6, 0),
(2009, 9, 8, 7, 0),
(2009, 9, 8, 8, 0),
(2009, 9, 8, 9, 3),
(2009, 9, 8, 10, 0),
(2009, 9, 8, 11, 0),
(2009, 9, 8, 12, 0),
(2009, 9, 8, 13, 0),
(2009, 9, 8, 14, 0),
(2009, 9, 8, 15, 0),
(2009, 9, 8, 16, 3),
(2009, 9, 8, 17, 0),
(2009, 9, 8, 18, 0),
(2009, 9, 8, 19, 0),
(2009, 9, 8, 20, 0),
(2009, 9, 8, 21, 0),
(2009, 9, 8, 22, 0),
(2009, 9, 8, 23, 0),
(2009, 9, 9, 0, 0),
(2009, 9, 9, 1, 0),
(2009, 9, 9, 2, 0),
(2009, 9, 9, 3, 0),
(2009, 9, 9, 4, 0),
(2009, 9, 9, 5, 0),
(2009, 9, 9, 6, 0),
(2009, 9, 9, 7, 0),
(2009, 9, 9, 8, 0),
(2009, 9, 9, 9, 0),
(2009, 9, 9, 10, 0),
(2009, 9, 9, 11, 0),
(2009, 9, 9, 12, 0),
(2009, 9, 9, 13, 0),
(2009, 9, 9, 14, 0),
(2009, 9, 9, 15, 5),
(2009, 9, 9, 16, 0),
(2009, 9, 9, 17, 0),
(2009, 9, 9, 18, 0),
(2009, 9, 9, 19, 0),
(2009, 9, 9, 20, 0),
(2009, 9, 9, 21, 0),
(2009, 9, 9, 22, 0),
(2009, 9, 9, 23, 0),
(2009, 9, 10, 0, 0),
(2009, 9, 10, 1, 0),
(2009, 9, 10, 2, 0),
(2009, 9, 10, 3, 0),
(2009, 9, 10, 4, 0),
(2009, 9, 10, 5, 0),
(2009, 9, 10, 6, 0),
(2009, 9, 10, 7, 0),
(2009, 9, 10, 8, 0),
(2009, 9, 10, 9, 0),
(2009, 9, 10, 10, 0),
(2009, 9, 10, 11, 1),
(2009, 9, 10, 12, 0),
(2009, 9, 10, 13, 0),
(2009, 9, 10, 14, 0),
(2009, 9, 10, 15, 0),
(2009, 9, 10, 16, 0),
(2009, 9, 10, 17, 0),
(2009, 9, 10, 18, 0),
(2009, 9, 10, 19, 0),
(2009, 9, 10, 20, 0),
(2009, 9, 10, 21, 0),
(2009, 9, 10, 22, 0),
(2009, 9, 10, 23, 0),
(2009, 9, 11, 0, 0),
(2009, 9, 11, 1, 0),
(2009, 9, 11, 2, 0),
(2009, 9, 11, 3, 0),
(2009, 9, 11, 4, 0),
(2009, 9, 11, 5, 0),
(2009, 9, 11, 6, 0),
(2009, 9, 11, 7, 0),
(2009, 9, 11, 8, 0),
(2009, 9, 11, 9, 0),
(2009, 9, 11, 10, 2),
(2009, 9, 11, 11, 0),
(2009, 9, 11, 12, 0),
(2009, 9, 11, 13, 0),
(2009, 9, 11, 14, 0),
(2009, 9, 11, 15, 0),
(2009, 9, 11, 16, 0),
(2009, 9, 11, 17, 0),
(2009, 9, 11, 18, 0),
(2009, 9, 11, 19, 0),
(2009, 9, 11, 20, 0),
(2009, 9, 11, 21, 0),
(2009, 9, 11, 22, 0),
(2009, 9, 11, 23, 0),
(2009, 9, 14, 0, 0),
(2009, 9, 14, 1, 0),
(2009, 9, 14, 2, 0),
(2009, 9, 14, 3, 0),
(2009, 9, 14, 4, 0),
(2009, 9, 14, 5, 0),
(2009, 9, 14, 6, 0),
(2009, 9, 14, 7, 0),
(2009, 9, 14, 8, 0),
(2009, 9, 14, 9, 0),
(2009, 9, 14, 10, 1),
(2009, 9, 14, 11, 0),
(2009, 9, 14, 12, 0),
(2009, 9, 14, 13, 0),
(2009, 9, 14, 14, 0),
(2009, 9, 14, 15, 0),
(2009, 9, 14, 16, 0),
(2009, 9, 14, 17, 0),
(2009, 9, 14, 18, 0),
(2009, 9, 14, 19, 0),
(2009, 9, 14, 20, 0),
(2009, 9, 14, 21, 0),
(2009, 9, 14, 22, 0),
(2009, 9, 14, 23, 0),
(2009, 9, 16, 0, 0),
(2009, 9, 16, 1, 0),
(2009, 9, 16, 2, 0),
(2009, 9, 16, 3, 0),
(2009, 9, 16, 4, 0),
(2009, 9, 16, 5, 0),
(2009, 9, 16, 6, 0),
(2009, 9, 16, 7, 0),
(2009, 9, 16, 8, 0),
(2009, 9, 16, 9, 0),
(2009, 9, 16, 10, 0),
(2009, 9, 16, 11, 1),
(2009, 9, 16, 12, 0),
(2009, 9, 16, 13, 0),
(2009, 9, 16, 14, 0),
(2009, 9, 16, 15, 0),
(2009, 9, 16, 16, 0),
(2009, 9, 16, 17, 0),
(2009, 9, 16, 18, 0),
(2009, 9, 16, 19, 0),
(2009, 9, 16, 20, 0),
(2009, 9, 16, 21, 0),
(2009, 9, 16, 22, 0),
(2009, 9, 16, 23, 0),
(2009, 9, 17, 0, 0),
(2009, 9, 17, 1, 0),
(2009, 9, 17, 2, 0),
(2009, 9, 17, 3, 0),
(2009, 9, 17, 4, 0),
(2009, 9, 17, 5, 0),
(2009, 9, 17, 6, 1),
(2009, 9, 17, 7, 0),
(2009, 9, 17, 8, 0),
(2009, 9, 17, 9, 0),
(2009, 9, 17, 10, 0),
(2009, 9, 17, 11, 0),
(2009, 9, 17, 12, 0),
(2009, 9, 17, 13, 0),
(2009, 9, 17, 14, 0),
(2009, 9, 17, 15, 0),
(2009, 9, 17, 16, 0),
(2009, 9, 17, 17, 0),
(2009, 9, 17, 18, 0),
(2009, 9, 17, 19, 0),
(2009, 9, 17, 20, 0),
(2009, 9, 17, 21, 0),
(2009, 9, 17, 22, 0),
(2009, 9, 17, 23, 0);

-- --------------------------------------------------------

--
-- Table structure for table `isab_stats_month`
--

CREATE TABLE IF NOT EXISTS `isab_stats_month` (
  `year` smallint(6) NOT NULL DEFAULT '0',
  `month` tinyint(4) NOT NULL DEFAULT '0',
  `hits` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `isab_stats_month`
--

INSERT INTO `isab_stats_month` (`year`, `month`, `hits`) VALUES
(2009, 1, 0),
(2009, 2, 0),
(2009, 3, 467),
(2009, 4, 0),
(2009, 5, 70),
(2009, 6, 87),
(2009, 7, 0),
(2009, 8, 763),
(2009, 9, 62),
(2009, 10, 0),
(2009, 11, 0),
(2009, 12, 0);

-- --------------------------------------------------------

--
-- Table structure for table `isab_stats_year`
--

CREATE TABLE IF NOT EXISTS `isab_stats_year` (
  `year` smallint(6) NOT NULL DEFAULT '0',
  `hits` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `isab_stats_year`
--

INSERT INTO `isab_stats_year` (`year`, `hits`) VALUES
(2009, 1449);

-- --------------------------------------------------------

--
-- Table structure for table `isab_stories`
--

CREATE TABLE IF NOT EXISTS `isab_stories` (
`sid` int(11) NOT NULL,
  `catid` int(11) NOT NULL DEFAULT '0',
  `aid` varchar(30) NOT NULL DEFAULT '',
  `title` varchar(80) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `hometext` text,
  `bodytext` text NOT NULL,
  `comments` int(11) DEFAULT '0',
  `counter` mediumint(8) unsigned DEFAULT NULL,
  `topic` int(3) NOT NULL DEFAULT '1',
  `informant` varchar(20) NOT NULL DEFAULT '',
  `notes` text NOT NULL,
  `ihome` int(1) NOT NULL DEFAULT '0',
  `alanguage` varchar(30) NOT NULL DEFAULT '',
  `acomm` int(1) NOT NULL DEFAULT '0',
  `haspoll` int(1) NOT NULL DEFAULT '0',
  `pollID` int(10) NOT NULL DEFAULT '0',
  `score` int(10) NOT NULL DEFAULT '0',
  `ratings` int(10) NOT NULL DEFAULT '0',
  `rating_ip` varchar(15) DEFAULT '0',
  `associated` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `isab_stories_cat`
--

CREATE TABLE IF NOT EXISTS `isab_stories_cat` (
`catid` int(11) NOT NULL,
  `title` varchar(20) NOT NULL DEFAULT '',
  `counter` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `isab_stories_cat`
--

INSERT INTO `isab_stories_cat` (`catid`, `title`, `counter`) VALUES
(1, 'Conteúdo do Site', 0);

-- --------------------------------------------------------

--
-- Table structure for table `isab_subscriptions`
--

CREATE TABLE IF NOT EXISTS `isab_subscriptions` (
`id` int(10) NOT NULL,
  `userid` int(10) DEFAULT '0',
  `subscription_expire` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `isab_topics`
--

CREATE TABLE IF NOT EXISTS `isab_topics` (
`topicid` int(3) NOT NULL,
  `topicname` varchar(20) DEFAULT NULL,
  `topicimage` varchar(100) NOT NULL DEFAULT '',
  `topictext` varchar(40) DEFAULT NULL,
  `counter` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `isab_topics`
--

INSERT INTO `isab_topics` (`topicid`, `topicname`, `topicimage`, `topictext`, `counter`) VALUES
(1, 'Convert', 'convert.gif', 'Conteúdo Site', 1);

-- --------------------------------------------------------

--
-- Table structure for table `isab_users`
--

CREATE TABLE IF NOT EXISTS `isab_users` (
`user_id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL DEFAULT '',
  `username` varchar(25) NOT NULL DEFAULT '',
  `user_email` varchar(255) NOT NULL DEFAULT '',
  `femail` varchar(255) NOT NULL DEFAULT '',
  `user_website` varchar(255) NOT NULL DEFAULT '',
  `user_avatar` varchar(255) NOT NULL DEFAULT '',
  `user_regdate` varchar(20) NOT NULL DEFAULT '',
  `user_icq` varchar(15) DEFAULT NULL,
  `user_occ` varchar(100) DEFAULT NULL,
  `user_from` varchar(100) DEFAULT NULL,
  `user_interests` varchar(150) NOT NULL DEFAULT '',
  `user_sig` varchar(255) DEFAULT NULL,
  `user_viewemail` tinyint(2) DEFAULT NULL,
  `user_theme` int(3) DEFAULT NULL,
  `user_aim` varchar(18) DEFAULT NULL,
  `user_yim` varchar(25) DEFAULT NULL,
  `user_msnm` varchar(25) DEFAULT NULL,
  `user_password` varchar(40) NOT NULL DEFAULT '',
  `storynum` tinyint(4) NOT NULL DEFAULT '10',
  `umode` varchar(10) NOT NULL DEFAULT '',
  `uorder` tinyint(1) NOT NULL DEFAULT '0',
  `thold` tinyint(1) NOT NULL DEFAULT '0',
  `noscore` tinyint(1) NOT NULL DEFAULT '0',
  `bio` tinytext NOT NULL,
  `ublockon` tinyint(1) NOT NULL DEFAULT '0',
  `ublock` tinytext NOT NULL,
  `theme` varchar(255) NOT NULL DEFAULT '',
  `commentmax` int(11) NOT NULL DEFAULT '4096',
  `counter` int(11) NOT NULL DEFAULT '0',
  `newsletter` int(1) NOT NULL DEFAULT '0',
  `user_posts` int(10) NOT NULL DEFAULT '0',
  `user_attachsig` int(2) NOT NULL DEFAULT '0',
  `user_rank` int(10) NOT NULL DEFAULT '0',
  `user_level` int(10) NOT NULL DEFAULT '1',
  `broadcast` tinyint(1) NOT NULL DEFAULT '1',
  `popmeson` tinyint(1) NOT NULL DEFAULT '0',
  `user_active` tinyint(1) DEFAULT '1',
  `user_session_time` int(11) NOT NULL DEFAULT '0',
  `user_session_page` smallint(5) NOT NULL DEFAULT '0',
  `user_lastvisit` int(11) NOT NULL DEFAULT '0',
  `user_timezone` tinyint(4) NOT NULL DEFAULT '10',
  `user_style` tinyint(4) DEFAULT NULL,
  `user_lang` varchar(255) NOT NULL DEFAULT 'english',
  `user_dateformat` varchar(14) NOT NULL DEFAULT 'D M d, Y g:i a',
  `user_new_privmsg` smallint(5) unsigned NOT NULL DEFAULT '0',
  `user_unread_privmsg` smallint(5) unsigned NOT NULL DEFAULT '0',
  `user_last_privmsg` int(11) NOT NULL DEFAULT '0',
  `user_emailtime` int(11) DEFAULT NULL,
  `user_allowhtml` tinyint(1) DEFAULT '1',
  `user_allowbbcode` tinyint(1) DEFAULT '1',
  `user_allowsmile` tinyint(1) DEFAULT '1',
  `user_allowavatar` tinyint(1) NOT NULL DEFAULT '1',
  `user_allow_pm` tinyint(1) NOT NULL DEFAULT '1',
  `user_allow_viewonline` tinyint(1) NOT NULL DEFAULT '1',
  `user_notify` tinyint(1) NOT NULL DEFAULT '0',
  `user_notify_pm` tinyint(1) NOT NULL DEFAULT '0',
  `user_popup_pm` tinyint(1) NOT NULL DEFAULT '0',
  `user_avatar_type` tinyint(4) NOT NULL DEFAULT '3',
  `user_sig_bbcode_uid` varchar(10) DEFAULT NULL,
  `user_actkey` varchar(32) DEFAULT NULL,
  `user_newpasswd` varchar(32) DEFAULT NULL,
  `points` int(10) DEFAULT '0',
  `last_ip` varchar(15) NOT NULL DEFAULT '0',
  `karma` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `isab_users`
--

INSERT INTO `isab_users` (`user_id`, `name`, `username`, `user_email`, `femail`, `user_website`, `user_avatar`, `user_regdate`, `user_icq`, `user_occ`, `user_from`, `user_interests`, `user_sig`, `user_viewemail`, `user_theme`, `user_aim`, `user_yim`, `user_msnm`, `user_password`, `storynum`, `umode`, `uorder`, `thold`, `noscore`, `bio`, `ublockon`, `ublock`, `theme`, `commentmax`, `counter`, `newsletter`, `user_posts`, `user_attachsig`, `user_rank`, `user_level`, `broadcast`, `popmeson`, `user_active`, `user_session_time`, `user_session_page`, `user_lastvisit`, `user_timezone`, `user_style`, `user_lang`, `user_dateformat`, `user_new_privmsg`, `user_unread_privmsg`, `user_last_privmsg`, `user_emailtime`, `user_allowhtml`, `user_allowbbcode`, `user_allowsmile`, `user_allowavatar`, `user_allow_pm`, `user_allow_viewonline`, `user_notify`, `user_notify_pm`, `user_popup_pm`, `user_avatar_type`, `user_sig_bbcode_uid`, `user_actkey`, `user_newpasswd`, `points`, `last_ip`, `karma`) VALUES
(1, '', 'Anonymous', '', '', '', 'gallery/blank.gif', 'Oct 28, 2006', '', '', '', '', '', 0, 0, '', '', '', '', 10, '', 0, 0, 0, '', 0, '', '', 4096, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 10, NULL, 'english', 'D M d, Y g:i a', 0, 0, 0, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 0, 3, NULL, NULL, NULL, 0, '0', 0),
(2, 'F&aacute;bio Batista', 'Fabio_A', 'fabio_redskins@yahoo.com.br', '', '', '', 'Oct 27, 2007', '0', '', '', '', '', 0, NULL, '', '', '', 'd745dbd1f4e039a1400229154e108194', 10, '', 0, 0, 0, '', 0, '', '', 4096, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1193496638, 0, 1193496638, 10, NULL, 'english', 'D M d, Y g:i a', 0, 0, 1193496638, NULL, 1, 1, 1, 1, 1, 1, 0, 0, 0, 3, NULL, NULL, NULL, 0, '201.27.115.32', 0),
(3, 'Marcelo Tomaz', 'marcelo_t', 'marcelo@convertpublicidade.com.br', '', '', '', 'Oct 10, 2008', '0', '', '', '', '', 0, NULL, '', '', '', '3f21d5ea2f3a79648f090773eeecbc25', 10, '', 0, 0, 0, '', 0, '', '', 4096, 0, 1, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 10, NULL, 'english', 'D M d, Y g:i a', 0, 0, 0, NULL, 1, 1, 1, 1, 1, 1, 0, 0, 0, 3, NULL, NULL, NULL, 0, '201.27.111.141', 0);

-- --------------------------------------------------------

--
-- Table structure for table `isab_users_temp`
--

CREATE TABLE IF NOT EXISTS `isab_users_temp` (
`user_id` int(10) NOT NULL,
  `username` varchar(25) NOT NULL DEFAULT '',
  `user_email` varchar(255) NOT NULL DEFAULT '',
  `user_password` varchar(40) NOT NULL DEFAULT '',
  `user_regdate` varchar(20) NOT NULL DEFAULT '',
  `check_num` varchar(50) NOT NULL DEFAULT '',
  `time` varchar(14) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE IF NOT EXISTS `newsletter` (
`id` int(11) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `isab_antiflood`
--
ALTER TABLE `isab_antiflood`
 ADD KEY `ip_addr` (`ip_addr`), ADD KEY `time` (`time`);

--
-- Indexes for table `isab_authors`
--
ALTER TABLE `isab_authors`
 ADD PRIMARY KEY (`aid`), ADD KEY `aid` (`aid`);

--
-- Indexes for table `isab_autonews`
--
ALTER TABLE `isab_autonews`
 ADD PRIMARY KEY (`anid`), ADD KEY `anid` (`anid`);

--
-- Indexes for table `isab_blocks`
--
ALTER TABLE `isab_blocks`
 ADD PRIMARY KEY (`bid`), ADD KEY `bid` (`bid`), ADD KEY `title` (`title`);

--
-- Indexes for table `isab_cities`
--
ALTER TABLE `isab_cities`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `isab_cnbc_auto`
--
ALTER TABLE `isab_cnbc_auto`
 ADD PRIMARY KEY (`aid`), ADD KEY `aid` (`aid`);

--
-- Indexes for table `isab_cnbc_autof`
--
ALTER TABLE `isab_cnbc_autof`
 ADD PRIMARY KEY (`aid`), ADD KEY `aid` (`aid`);

--
-- Indexes for table `isab_cnbc_config`
--
ALTER TABLE `isab_cnbc_config`
 ADD UNIQUE KEY `config_name` (`config_name`);

--
-- Indexes for table `isab_cnbc_folder`
--
ALTER TABLE `isab_cnbc_folder`
 ADD PRIMARY KEY (`cid`), ADD KEY `cid` (`cid`);

--
-- Indexes for table `isab_cnbc_links`
--
ALTER TABLE `isab_cnbc_links`
 ADD KEY `page` (`page`), ADD KEY `link` (`link`);

--
-- Indexes for table `isab_cnbc_my_uploads_users`
--
ALTER TABLE `isab_cnbc_my_uploads_users`
 ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `isab_cnbc_pages`
--
ALTER TABLE `isab_cnbc_pages`
 ADD PRIMARY KEY (`pid`), ADD KEY `pid` (`pid`), ADD KEY `cid` (`cid`);

--
-- Indexes for table `isab_cnbc_pages_b`
--
ALTER TABLE `isab_cnbc_pages_b`
 ADD PRIMARY KEY (`bid`), ADD KEY `bid` (`bid`), ADD KEY `pid` (`pid`), ADD KEY `cid` (`cid`);

--
-- Indexes for table `isab_comments`
--
ALTER TABLE `isab_comments`
 ADD PRIMARY KEY (`tid`), ADD KEY `tid` (`tid`), ADD KEY `pid` (`pid`), ADD KEY `sid` (`sid`);

--
-- Indexes for table `isab_comments_moderated`
--
ALTER TABLE `isab_comments_moderated`
 ADD PRIMARY KEY (`tid`), ADD KEY `tid` (`tid`), ADD KEY `pid` (`pid`), ADD KEY `sid` (`sid`);

--
-- Indexes for table `isab_config`
--
ALTER TABLE `isab_config`
 ADD PRIMARY KEY (`sitename`);

--
-- Indexes for table `isab_confirm`
--
ALTER TABLE `isab_confirm`
 ADD PRIMARY KEY (`session_id`,`confirm_id`);

--
-- Indexes for table `isab_faqanswer`
--
ALTER TABLE `isab_faqanswer`
 ADD PRIMARY KEY (`id`), ADD KEY `id` (`id`), ADD KEY `id_cat` (`id_cat`);

--
-- Indexes for table `isab_faqcategories`
--
ALTER TABLE `isab_faqcategories`
 ADD PRIMARY KEY (`id_cat`), ADD KEY `id_cat` (`id_cat`);

--
-- Indexes for table `isab_groups`
--
ALTER TABLE `isab_groups`
 ADD KEY `id` (`id`);

--
-- Indexes for table `isab_groups_points`
--
ALTER TABLE `isab_groups_points`
 ADD KEY `id` (`id`);

--
-- Indexes for table `isab_headlines`
--
ALTER TABLE `isab_headlines`
 ADD PRIMARY KEY (`hid`), ADD KEY `hid` (`hid`);

--
-- Indexes for table `isab_imggal`
--
ALTER TABLE `isab_imggal`
 ADD PRIMARY KEY (`imid`);

--
-- Indexes for table `isab_links`
--
ALTER TABLE `isab_links`
 ADD PRIMARY KEY (`lid`), ADD KEY `lid` (`lid`), ADD KEY `cid` (`cid`), ADD KEY `sid` (`sid`);

--
-- Indexes for table `isab_message`
--
ALTER TABLE `isab_message`
 ADD PRIMARY KEY (`mid`), ADD UNIQUE KEY `mid` (`mid`);

--
-- Indexes for table `isab_modules`
--
ALTER TABLE `isab_modules`
 ADD PRIMARY KEY (`mid`), ADD KEY `mid` (`mid`), ADD KEY `title` (`title`), ADD KEY `custom_title` (`custom_title`);

--
-- Indexes for table `isab_pages`
--
ALTER TABLE `isab_pages`
 ADD PRIMARY KEY (`pid`), ADD KEY `pid` (`pid`), ADD KEY `cid` (`cid`);

--
-- Indexes for table `isab_pages_categories`
--
ALTER TABLE `isab_pages_categories`
 ADD PRIMARY KEY (`cid`), ADD KEY `cid` (`cid`);

--
-- Indexes for table `isab_public_messages`
--
ALTER TABLE `isab_public_messages`
 ADD PRIMARY KEY (`mid`), ADD KEY `mid` (`mid`);

--
-- Indexes for table `isab_queue`
--
ALTER TABLE `isab_queue`
 ADD PRIMARY KEY (`qid`), ADD KEY `qid` (`qid`), ADD KEY `uid` (`uid`), ADD KEY `uname` (`uname`);

--
-- Indexes for table `isab_referer`
--
ALTER TABLE `isab_referer`
 ADD PRIMARY KEY (`rid`), ADD KEY `rid` (`rid`);

--
-- Indexes for table `isab_related`
--
ALTER TABLE `isab_related`
 ADD PRIMARY KEY (`rid`), ADD KEY `rid` (`rid`), ADD KEY `tid` (`tid`);

--
-- Indexes for table `isab_reviews`
--
ALTER TABLE `isab_reviews`
 ADD PRIMARY KEY (`id`), ADD KEY `id` (`id`);

--
-- Indexes for table `isab_reviews_add`
--
ALTER TABLE `isab_reviews_add`
 ADD PRIMARY KEY (`id`), ADD KEY `id` (`id`);

--
-- Indexes for table `isab_session`
--
ALTER TABLE `isab_session`
 ADD KEY `time` (`time`), ADD KEY `guest` (`guest`);

--
-- Indexes for table `isab_stories`
--
ALTER TABLE `isab_stories`
 ADD PRIMARY KEY (`sid`), ADD KEY `sid` (`sid`), ADD KEY `catid` (`catid`), ADD KEY `counter` (`counter`), ADD KEY `topic` (`topic`);

--
-- Indexes for table `isab_stories_cat`
--
ALTER TABLE `isab_stories_cat`
 ADD PRIMARY KEY (`catid`), ADD KEY `catid` (`catid`);

--
-- Indexes for table `isab_subscriptions`
--
ALTER TABLE `isab_subscriptions`
 ADD KEY `id` (`id`,`userid`);

--
-- Indexes for table `isab_topics`
--
ALTER TABLE `isab_topics`
 ADD PRIMARY KEY (`topicid`), ADD KEY `topicid` (`topicid`);

--
-- Indexes for table `isab_users`
--
ALTER TABLE `isab_users`
 ADD PRIMARY KEY (`user_id`), ADD KEY `uid` (`user_id`), ADD KEY `uname` (`username`), ADD KEY `user_session_time` (`user_session_time`), ADD KEY `karma` (`karma`);

--
-- Indexes for table `isab_users_temp`
--
ALTER TABLE `isab_users_temp`
 ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `isab_autonews`
--
ALTER TABLE `isab_autonews`
MODIFY `anid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `isab_blocks`
--
ALTER TABLE `isab_blocks`
MODIFY `bid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `isab_cnbc_auto`
--
ALTER TABLE `isab_cnbc_auto`
MODIFY `aid` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `isab_cnbc_autof`
--
ALTER TABLE `isab_cnbc_autof`
MODIFY `aid` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `isab_cnbc_folder`
--
ALTER TABLE `isab_cnbc_folder`
MODIFY `cid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `isab_cnbc_pages`
--
ALTER TABLE `isab_cnbc_pages`
MODIFY `pid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `isab_cnbc_pages_b`
--
ALTER TABLE `isab_cnbc_pages_b`
MODIFY `bid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `isab_comments`
--
ALTER TABLE `isab_comments`
MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `isab_comments_moderated`
--
ALTER TABLE `isab_comments_moderated`
MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `isab_faqanswer`
--
ALTER TABLE `isab_faqanswer`
MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `isab_faqcategories`
--
ALTER TABLE `isab_faqcategories`
MODIFY `id_cat` tinyint(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `isab_groups`
--
ALTER TABLE `isab_groups`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `isab_groups_points`
--
ALTER TABLE `isab_groups_points`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `isab_headlines`
--
ALTER TABLE `isab_headlines`
MODIFY `hid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `isab_imggal`
--
ALTER TABLE `isab_imggal`
MODIFY `imid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `isab_links`
--
ALTER TABLE `isab_links`
MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `isab_message`
--
ALTER TABLE `isab_message`
MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `isab_modules`
--
ALTER TABLE `isab_modules`
MODIFY `mid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `isab_pages`
--
ALTER TABLE `isab_pages`
MODIFY `pid` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `isab_pages_categories`
--
ALTER TABLE `isab_pages_categories`
MODIFY `cid` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `isab_public_messages`
--
ALTER TABLE `isab_public_messages`
MODIFY `mid` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `isab_queue`
--
ALTER TABLE `isab_queue`
MODIFY `qid` smallint(5) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `isab_referer`
--
ALTER TABLE `isab_referer`
MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `isab_related`
--
ALTER TABLE `isab_related`
MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `isab_reviews`
--
ALTER TABLE `isab_reviews`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `isab_reviews_add`
--
ALTER TABLE `isab_reviews_add`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `isab_stories`
--
ALTER TABLE `isab_stories`
MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `isab_stories_cat`
--
ALTER TABLE `isab_stories_cat`
MODIFY `catid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `isab_subscriptions`
--
ALTER TABLE `isab_subscriptions`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `isab_topics`
--
ALTER TABLE `isab_topics`
MODIFY `topicid` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `isab_users`
--
ALTER TABLE `isab_users`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `isab_users_temp`
--
ALTER TABLE `isab_users_temp`
MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
