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
-- Database: `isabella_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `sh_address`
--

CREATE TABLE IF NOT EXISTS `sh_address` (
`address_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(32) NOT NULL,
  `company_id` varchar(32) NOT NULL,
  `tax_id` varchar(32) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_address`
--

INSERT INTO `sh_address` (`address_id`, `customer_id`, `firstname`, `lastname`, `company`, `company_id`, `tax_id`, `address_1`, `address_2`, `city`, `postcode`, `country_id`, `zone_id`) VALUES
(1, 1, 'Arqfix', 'Adesivos', '', '', '', 'Rua Iperoig', 'Perdizes', 'São Paulo', '05016000', 30, 464),
(2, 2, 'Simone', 'Batista', '', '', '', 'Praça Santa Terezinha 54', 'Tatuapé', 'São Paulo', '03308070', 30, 464),
(3, 3, 'Fábio', 'Batista', '', '', '', 'Rua Apucarana, 971', '', 'São Paulo', '03311000', 30, 464),
(4, 4, 'Deborah Maria ', 'Alves Gertrudes Tavares', '', '', '', 'SHIS QI 28 Conjunto 01 Casa 26', 'Lago Sul', 'Brasilia', '71670210', 30, 446),
(5, 5, 'Yara', 'Fleury', '', '', '', 'Rua Historiador Werneck da Silva, 235 ed Versailles apto 308', 'Recreio dos Bandeirantes', 'Rio de Janeiro', '22790-832', 30, 458),
(6, 6, 'Joana', 'Carvalho', '', '', '', 'Gabriel Vilela Sobrinho 60', 'Centro', 'Barra Pirai', '27123170', 30, 458),
(7, 7, 'claudia', 'laureano', '', '', '', 'Rua Sergio Arouca 235 Cond Quintas do Rio', 'Barra da Tijuca', 'Rio de Janeiro', '22793163', 30, 458),
(8, 8, 'Priscilla', 'Moreira', '', '', '', 'Rua Jardim Botânico 622 bl A apto 304', 'Jardim Botânico', 'Rio de Janeiro', '22461000', 30, 458),
(9, 9, 'Júnia ', 'Pinto', '', '', '', 'Rua Horacio Leonardi', 'centro', 'Barão Geraldo', '13084105', 30, 464),
(10, 10, 'jackelyne ', 'chemin beraldo', '', '', '', 'rua assef garzuze  40', 'jardim california ', 'irati ', '84500000', 30, 455);

-- --------------------------------------------------------

--
-- Table structure for table `sh_affiliate`
--

CREATE TABLE IF NOT EXISTS `sh_affiliate` (
`affiliate_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `company` varchar(32) NOT NULL,
  `website` varchar(255) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sh_affiliate_transaction`
--

CREATE TABLE IF NOT EXISTS `sh_affiliate_transaction` (
`affiliate_transaction_id` int(11) NOT NULL,
  `affiliate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sh_attribute`
--

CREATE TABLE IF NOT EXISTS `sh_attribute` (
`attribute_id` int(11) NOT NULL,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_attribute`
--

INSERT INTO `sh_attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
(1, 6, 1),
(2, 6, 5),
(3, 6, 3),
(4, 3, 1),
(5, 3, 2),
(6, 3, 3),
(7, 3, 4),
(8, 3, 5),
(9, 3, 6),
(10, 3, 7),
(11, 3, 8);

-- --------------------------------------------------------

--
-- Table structure for table `sh_attribute_description`
--

CREATE TABLE IF NOT EXISTS `sh_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_attribute_description`
--

INSERT INTO `sh_attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
(1, 1, 'Description'),
(2, 1, 'No. of Cores'),
(4, 1, 'test 1'),
(5, 1, 'test 2'),
(6, 1, 'test 3'),
(7, 1, 'test 4'),
(8, 1, 'test 5'),
(9, 1, 'test 6'),
(10, 1, 'test 7'),
(11, 1, 'test 8'),
(3, 1, 'Clockspeed'),
(1, 2, 'Description'),
(2, 2, 'No. of Cores'),
(4, 2, 'test 1'),
(5, 2, 'test 2'),
(6, 2, 'test 3'),
(7, 2, 'test 4'),
(8, 2, 'test 5'),
(9, 2, 'test 6'),
(10, 2, 'test 7'),
(11, 2, 'test 8'),
(3, 2, 'Clockspeed');

-- --------------------------------------------------------

--
-- Table structure for table `sh_attribute_group`
--

CREATE TABLE IF NOT EXISTS `sh_attribute_group` (
`attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_attribute_group`
--

INSERT INTO `sh_attribute_group` (`attribute_group_id`, `sort_order`) VALUES
(3, 2),
(4, 1),
(5, 3),
(6, 4);

-- --------------------------------------------------------

--
-- Table structure for table `sh_attribute_group_description`
--

CREATE TABLE IF NOT EXISTS `sh_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_attribute_group_description`
--

INSERT INTO `sh_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
(3, 1, 'Memory'),
(4, 1, 'Technical'),
(5, 1, 'Motherboard'),
(6, 1, 'Processor'),
(3, 2, 'Memory'),
(4, 2, 'Technical'),
(5, 2, 'Motherboard'),
(6, 2, 'Processor');

-- --------------------------------------------------------

--
-- Table structure for table `sh_banner`
--

CREATE TABLE IF NOT EXISTS `sh_banner` (
`banner_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_banner`
--

INSERT INTO `sh_banner` (`banner_id`, `name`, `status`) VALUES
(10, 'Tecidos Categoria', 1),
(9, 'Tecidos Criativos ', 1),
(11, 'Arte Têxtil Flores Eternas', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sh_banner_image`
--

CREATE TABLE IF NOT EXISTS `sh_banner_image` (
`banner_image_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=114 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_banner_image`
--

INSERT INTO `sh_banner_image` (`banner_image_id`, `banner_id`, `link`, `image`) VALUES
(101, 11, 'http://www.isabellacarvalho.com/shop/index.php?route=product/category&amp;path=61', 'data/Banners/banner-1.png');

-- --------------------------------------------------------

--
-- Table structure for table `sh_banner_image_description`
--

CREATE TABLE IF NOT EXISTS `sh_banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_banner_image_description`
--

INSERT INTO `sh_banner_image_description` (`banner_image_id`, `language_id`, `banner_id`, `title`) VALUES
(101, 2, 11, 'Movelaria'),
(101, 1, 11, 'Movelaria');

-- --------------------------------------------------------

--
-- Table structure for table `sh_category`
--

CREATE TABLE IF NOT EXISTS `sh_category` (
`category_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_category`
--

INSERT INTO `sh_category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(76, 'data/jagira.jpg', 78, 1, 1, 7, 1, '2015-03-24 14:25:35', '2015-03-24 19:07:18'),
(80, 'data/1271683_739253042815936_3666132336509119499_o.jpg', 79, 1, 1, 0, 1, '2015-03-25 17:16:02', '2015-03-25 18:04:05'),
(81, 'data/1271683_739253042815936_3666132336509119499_o.jpg', 81, 1, 1, 0, 1, '2015-03-26 15:00:26', '2015-03-31 12:27:51'),
(60, 'data/Produtos/almofada-site.jpg', 0, 1, 1, 1, 1, '2014-04-15 15:15:23', '2014-06-09 11:40:18'),
(82, '', 81, 0, 1, 0, 1, '2015-03-26 16:25:19', '2015-03-26 16:25:19'),
(63, 'data/Almofadas/Jessup-Turquesa_Repolho-Azul.jpg', 60, 0, 1, 0, 1, '2014-05-20 10:54:17', '2014-06-20 12:53:48'),
(64, 'data/Almofadas/ALMOFADAS1.jpg', 60, 0, 1, 0, 1, '2014-05-21 15:17:23', '2014-06-20 12:52:05'),
(66, 'data/Almofadas/Sem-Título-1.jpg', 60, 0, 1, 0, 0, '2014-05-27 15:20:46', '2015-03-20 18:01:48'),
(67, 'data/pil.jpg', 60, 0, 1, 0, 1, '2014-06-06 14:04:10', '2015-03-22 20:13:06'),
(73, 'data/jess.jpg', 60, 0, 1, 0, 1, '2014-06-20 17:21:31', '2015-03-23 16:48:20'),
(79, 'data/bann.jpg', 60, 1, 1, 2, 1, '2015-03-25 08:50:35', '2015-03-25 17:57:45'),
(74, 'data/1271683_739253042815936_3666132336509119499_o.jpg', 60, 0, 10, 1, 1, '2015-03-20 15:40:35', '2015-03-24 14:31:17'),
(78, 'data/laam.jpg', 60, 1, 1, 0, 1, '2015-03-24 17:09:37', '2015-03-24 18:28:20');

-- --------------------------------------------------------

--
-- Table structure for table `sh_category_description`
--

CREATE TABLE IF NOT EXISTS `sh_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_category_description`
--

INSERT INTO `sh_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_description`, `meta_keyword`) VALUES
(60, 1, 'Pillows', '', '', ''),
(79, 1, 'Arte Textil Fabric', '&lt;p&gt;Suede fabric for 1.40 mts wide, stamped manually with water-based ink.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Care: To preserve the original look and ensure product durability wash gently with mild soap and use an iron on low temperature. Only iron inside out.&lt;/p&gt;\r\n', '', ''),
(79, 2, 'TECIDOS ARTE TÊXTIL', '&lt;p&gt;Tecidos com 140cm de largura estampados a mão e digital todos base d´agua&lt;/p&gt;\r\n\r\n&lt;p&gt;Arte Têxtil produz os tecidos estampados Arte Têxtil para estofados e paredes, almofadas e acessórios para interiores exclusivos.&lt;br /&gt;\r\nDesenvolve projetos e estamparia de tecidos em pequenos e grandes formatos.&lt;/p&gt;\r\n\r\n&lt;p&gt;Criando tendências e inovando no mercado da decoração com tecidos exclusivos.&lt;br /&gt;\r\n&lt;br /&gt;\r\nTecidos exclusivos Arte Têxtil.&lt;/p&gt;\r\n', 'Tecidos estampados Arte Têxtil', 'Tecidos estampados para estofados e paredes'),
(63, 2, 'Almofada de Algodão', '&lt;p&gt;Almofada confeccionada em tecido &lt;strong&gt;Algodão&lt;/strong&gt;, estampado manualmente com toque suave e macio.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Fechamento com ziper invisível.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Enchimento em poliester.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Cuidados:&lt;/strong&gt; Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n\r\n&lt;p&gt;Pode haver diferença nas cores devido a calibração de cada monitor.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', '', ''),
(63, 1, 'Cotton Pillow', '&lt;p&gt;&lt;span id=&quot;result_box&quot; lang=&quot;en&quot;&gt;&lt;span class=&quot;hps&quot;&gt;Cushion&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;made ​​of&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;cotton&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;fabric&lt;/span&gt;&lt;span&gt;,&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;hand&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;stamped&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;with&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;smooth and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;soft touch&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;hps&quot;&gt;-&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;Closure with&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;invisible&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;zipper&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;hps&quot;&gt;- Filling&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;polyester&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;hps&quot;&gt;Care&lt;/span&gt;&lt;span&gt;:&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;To preserve&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;the original look&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;ensure&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;product durability&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;wash&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;gently&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;with mild soap&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and use&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;an iron&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;on&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;low temperature&lt;/span&gt;&lt;span&gt;.&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;Only iron&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;inside out&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n', '', ''),
(66, 2, 'Almofada Linho e Panamá', '&lt;p&gt;Almofada confeccionada em Panamá ou Linho, estamparia digital.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Fechamento com ziper invisível.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Enchimento em poliester.&lt;/p&gt;\r\n\r\n&lt;p&gt;Cuidados: Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n\r\n&lt;p&gt;Pode haver diferença nas cores devido a calibração de cada monitor.&lt;/p&gt;\r\n', '', ''),
(66, 1, 'Linen and Panama pillow', '&lt;p&gt;&lt;span id=&quot;result_box&quot; lang=&quot;en&quot;&gt;&lt;span class=&quot;hps&quot;&gt;Cushion&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;made&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;​​in Panama,&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;digital printing&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;hps&quot;&gt;-&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;Closure with&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;invisible&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;zipper&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;hps&quot;&gt;- Filling&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;polyester&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;hps&quot;&gt;Care&lt;/span&gt;&lt;span&gt;:&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;To preserve&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;the original look&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;ensure&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;product durability&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;wash&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;gently&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;with mild soap&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and use&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;an iron&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;on&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;low temperature&lt;/span&gt;&lt;span&gt;.&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;Only iron&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;inside out&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n', '', ''),
(64, 2, 'Almofada de tecido camurça', '&lt;p&gt;Almofada confeccionada em tecido &lt;strong&gt;Camurça&lt;/strong&gt;, estampado manualmente com toque suave e macio.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Fechamento com ziper invisível.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Enchimento em poliester.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Cuidados:&lt;/strong&gt; Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n\r\n&lt;p&gt;Pode haver diferença nas cores devido a calibração de cada monitor.&lt;/p&gt;\r\n', '', ''),
(64, 1, 'Suede cushion fabric', '&lt;div class=&quot;tab-content&quot; id=&quot;tab-description&quot; style=&quot;display: block;&quot;&gt;\r\n&lt;p&gt;Cushion made ​​of suede, hand printed fabric - fabric and stamped manually with zipper. - Ideal for living rooms, bedrooms and other environments. With smooth and soft touch.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;* The option includes the same filling with polyester.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Care: To preserve the original look and ensure durability of the product carefully washing, use mild soap and iron at low temperature. Skip WS.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', ''),
(67, 2, 'Almofadas Exclusivas', '&lt;p&gt;Almofada confeccionada com assemblage de tecido&lt;strong&gt; &lt;/strong&gt;e aplicações, peças ínicas vindas das telas e paniéis da artista Isabella Carvalho&lt;/p&gt;\r\n\r\n&lt;p&gt;- Fechamento com ziper invisível.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Enchimento em poliester.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Cuidados:&lt;/strong&gt; Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n\r\n&lt;p&gt;Pode haver diferença nas cores devido a calibração de cada monitor.&lt;/p&gt;\r\n\r\n&lt;p&gt;Tamanho de 50x50cm&lt;/p&gt;\r\n', '', ''),
(60, 2, 'Almofadas ', '&lt;p&gt;Coloridas, estampadas com texturas, nos diversos tecidos elas fazem a diferença. São práticas e confortáveis com um toque aveludado e macio.&lt;/p&gt;\r\n\r\n&lt;p&gt;Pode haver diferença nas cores devido a calibração de cada monitor.&lt;/p&gt;\r\n', '', ''),
(81, 2, 'TECIDOS ARTE TÊXTIL', '&lt;p&gt;TECIDOS ARTE TÊXTIL&lt;/p&gt;\r\n', 'ARTE', 'TECIDOS'),
(81, 1, 'Arte Textil Fabric', '&lt;p&gt;enabled&lt;/p&gt;\r\n', '', ''),
(82, 2, 'TECIDOS ARTE TÊXTIL', '&lt;p&gt;arte textil&lt;/p&gt;\r\n', 'tecidos', 'arte'),
(82, 1, 'TEXTILE ART FABRICS', '&lt;p&gt;arte&lt;/p&gt;\r\n', 'textile', 'arte'),
(76, 2, 'JOGO AMERICANO', '', '', ''),
(80, 2, 'COLEÇÃO TECIDOS 2015', '&lt;p&gt;TECIDOS ARTE TÊXTIL&amp;nbsp; coleção 2015&lt;/p&gt;\r\n\r\n&lt;p&gt;Florais e geométricos estes tecidos foram inspirados para trazer alegria para o ambiente, estofados ou paredes, Linho e Alogdão, algodão puro e algodão seda, estampas Girassol, Remo, Losango e Rosácea, macios e suáves.&lt;/p&gt;\r\n\r\n&lt;p&gt;Tecidos com 140 cm de largura, desenhos exclusivos do Atelier Arte Têxtil, vendidos a metro e a rolo, atacado e varejo, informe-se sobre as nossas condições para logistas, solicite também o catálogo por e-mail&lt;/p&gt;\r\n\r\n&lt;p&gt;contato@artetextil.net ou se preferir pode nos ligar no telefone 11 2639 8208. das 10:00 às 18:00 horas, de segunda a sexta-feira.&lt;/p&gt;\r\n', 'TECIDOS ESTAMPADOS ', 'COLEÇÃO DE TECIDOS ESTAMPADOS ARTE TÊXTIL '),
(80, 1, '2015 FABRIC COLLECTION', '&lt;pre class=&quot;tw-data-text vk_txt tw-ta tw-text-small&quot; data-fulltext=&quot;&quot; data-placeholder=&quot;Tradução&quot; dir=&quot;ltr&quot; id=&quot;tw-target-text&quot; style=&quot;text-align: left; height: 576px;&quot;&gt;\r\n&lt;span&gt;TEXTILE FABRIC ART Collection 2015\r\n\r\nFloral and geometric these tissues wAS inspired to bring joy to the environment , or upholstered walls , Linen and Cotton , pure cotton and silk cotton, sunflower prints , Remo, Diamond and Roses, soft and smooth .\r\n\r\nFabrics with 140 cm wide , unique designs of Atelier Textile Art ( Arte Têxtil ), sold by the meter and the roll, wholesale and retail, inquire about our conditions for shopkeepers also request the catalog by email\r\n\r\ncontato@artetextil.net or if you prefer you can call us on the phone 0055 11 2639 8208 / 10:00 to 18:00 hours , Monday to Friday.&lt;/span&gt;&lt;/pre&gt;\r\n', '', 'Cotton and linen fabrics Arte Textil Textile Art\r\nMade in Brazil inspired in USA'),
(76, 1, 'CREATIONS', '', '', ''),
(78, 2, 'GOURMET', '', '', ''),
(78, 1, 'GOURMET', '', '', ''),
(73, 2, 'PROMOÇÃO', '&lt;p&gt;Conjunto de Almofadas confeccionada em tecido &lt;strong&gt;Algodão&lt;/strong&gt;, estampados manualmente com toque suave e macio.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Fechamento com ziper invisível.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Enchimento em poliester.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Cuidados:&lt;/strong&gt; Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n\r\n&lt;p&gt;Pode haver diferença nas cores devido a calibração de cada monitor.&lt;/p&gt;\r\n', '', ''),
(73, 1, 'SALE ', '&lt;p&gt;&lt;span id=&quot;result_box&quot; lang=&quot;en&quot;&gt;&lt;span class=&quot;hps&quot;&gt;Set&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;Pillows&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;made ​​of&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;Cotton&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;a&lt;/span&gt;&lt;span&gt;,&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;with soft&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;hand&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;soft touch&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;patterned&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;hps&quot;&gt;-&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;Closure with&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;invisible&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;zipper&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;hps&quot;&gt;- Filling&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;polyester&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;hps&quot;&gt;Care&lt;/span&gt;&lt;span&gt;:&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;To preserve&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;the original look&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;ensure&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;product durability&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;wash&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;gently&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;with mild soap&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and use&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;an iron&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;on&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;low temperature&lt;/span&gt;&lt;span&gt;.&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;Only iron&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;inside out&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;hps&quot;&gt;There may be&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;differences&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;in colors&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;due to the&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;calibration&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;of each&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;monitor.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n', '', ''),
(67, 1, 'Exclusive  pillows', '&lt;p&gt;Unic pieces from the canvas and panels of artist Isabella Carvalho, hese pillows are mede with assemblage of fabrics, full of collorfull amorfic forms with geométrics and flowers style mixed, in the size of 50x50cm.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', '50x50 cm Unique pillows', ''),
(74, 2, 'COLEÇÃO DE ALMOFADAS 2015', '', '', ''),
(74, 1, '2015 pillow collection', '&lt;p&gt;Pillows in cotton and linen fabrics&lt;/p&gt;\r\n', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `sh_category_filter`
--

CREATE TABLE IF NOT EXISTS `sh_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sh_category_path`
--

CREATE TABLE IF NOT EXISTS `sh_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_category_path`
--

INSERT INTO `sh_category_path` (`category_id`, `path_id`, `level`) VALUES
(78, 78, 1),
(80, 60, 0),
(81, 81, 1),
(76, 78, 1),
(78, 60, 0),
(76, 76, 2),
(80, 80, 2),
(79, 60, 0),
(67, 67, 1),
(67, 60, 0),
(66, 60, 0),
(66, 66, 1),
(64, 64, 1),
(64, 60, 0),
(63, 63, 1),
(63, 60, 0),
(82, 81, 1),
(73, 73, 1),
(73, 60, 0),
(60, 60, 0),
(79, 79, 1),
(80, 79, 1),
(74, 60, 0),
(74, 74, 1),
(76, 60, 0),
(82, 82, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sh_category_to_layout`
--

CREATE TABLE IF NOT EXISTS `sh_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_category_to_layout`
--

INSERT INTO `sh_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES
(76, 0, 6);

-- --------------------------------------------------------

--
-- Table structure for table `sh_category_to_store`
--

CREATE TABLE IF NOT EXISTS `sh_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_category_to_store`
--

INSERT INTO `sh_category_to_store` (`category_id`, `store_id`) VALUES
(60, 0),
(63, 0),
(64, 0),
(66, 0),
(67, 0),
(73, 0),
(74, 0),
(76, 0),
(78, 0),
(79, 0),
(80, 0),
(81, 0),
(82, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sh_country`
--

CREATE TABLE IF NOT EXISTS `sh_country` (
`country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=252 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_country`
--

INSERT INTO `sh_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', '', 0, 1),
(2, 'Albania', 'AL', 'ALB', '', 0, 1),
(3, 'Algeria', 'DZ', 'DZA', '', 0, 1),
(4, 'American Samoa', 'AS', 'ASM', '', 0, 1),
(5, 'Andorra', 'AD', 'AND', '', 0, 1),
(6, 'Angola', 'AO', 'AGO', '', 0, 1),
(7, 'Anguilla', 'AI', 'AIA', '', 0, 1),
(8, 'Antarctica', 'AQ', 'ATA', '', 0, 1),
(9, 'Antigua and Barbuda', 'AG', 'ATG', '', 0, 1),
(10, 'Argentina', 'AR', 'ARG', '', 0, 1),
(11, 'Armenia', 'AM', 'ARM', '', 0, 1),
(12, 'Aruba', 'AW', 'ABW', '', 0, 1),
(13, 'Australia', 'AU', 'AUS', '', 0, 1),
(14, 'Austria', 'AT', 'AUT', '', 0, 1),
(15, 'Azerbaijan', 'AZ', 'AZE', '', 0, 1),
(16, 'Bahamas', 'BS', 'BHS', '', 0, 1),
(17, 'Bahrain', 'BH', 'BHR', '', 0, 1),
(18, 'Bangladesh', 'BD', 'BGD', '', 0, 1),
(19, 'Barbados', 'BB', 'BRB', '', 0, 1),
(20, 'Belarus', 'BY', 'BLR', '', 0, 1),
(21, 'Belgium', 'BE', 'BEL', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 0, 1),
(22, 'Belize', 'BZ', 'BLZ', '', 0, 1),
(23, 'Benin', 'BJ', 'BEN', '', 0, 1),
(24, 'Bermuda', 'BM', 'BMU', '', 0, 1),
(25, 'Bhutan', 'BT', 'BTN', '', 0, 1),
(26, 'Bolivia', 'BO', 'BOL', '', 0, 1),
(27, 'Bosnia and Herzegovina', 'BA', 'BIH', '', 0, 1),
(28, 'Botswana', 'BW', 'BWA', '', 0, 1),
(29, 'Bouvet Island', 'BV', 'BVT', '', 0, 1),
(30, 'Brazil', 'BR', 'BRA', '', 0, 1),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', '', 0, 1),
(32, 'Brunei Darussalam', 'BN', 'BRN', '', 0, 1),
(33, 'Bulgaria', 'BG', 'BGR', '', 0, 1),
(34, 'Burkina Faso', 'BF', 'BFA', '', 0, 1),
(35, 'Burundi', 'BI', 'BDI', '', 0, 1),
(36, 'Cambodia', 'KH', 'KHM', '', 0, 1),
(37, 'Cameroon', 'CM', 'CMR', '', 0, 1),
(38, 'Canada', 'CA', 'CAN', '', 0, 1),
(39, 'Cape Verde', 'CV', 'CPV', '', 0, 1),
(40, 'Cayman Islands', 'KY', 'CYM', '', 0, 1),
(41, 'Central African Republic', 'CF', 'CAF', '', 0, 1),
(42, 'Chad', 'TD', 'TCD', '', 0, 1),
(43, 'Chile', 'CL', 'CHL', '', 0, 1),
(44, 'China', 'CN', 'CHN', '', 0, 1),
(45, 'Christmas Island', 'CX', 'CXR', '', 0, 1),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', '', 0, 1),
(47, 'Colombia', 'CO', 'COL', '', 0, 1),
(48, 'Comoros', 'KM', 'COM', '', 0, 1),
(49, 'Congo', 'CG', 'COG', '', 0, 1),
(50, 'Cook Islands', 'CK', 'COK', '', 0, 1),
(51, 'Costa Rica', 'CR', 'CRI', '', 0, 1),
(52, 'Cote D''Ivoire', 'CI', 'CIV', '', 0, 1),
(53, 'Croatia', 'HR', 'HRV', '', 0, 1),
(54, 'Cuba', 'CU', 'CUB', '', 0, 1),
(55, 'Cyprus', 'CY', 'CYP', '', 0, 1),
(56, 'Czech Republic', 'CZ', 'CZE', '', 0, 1),
(57, 'Denmark', 'DK', 'DNK', '', 0, 1),
(58, 'Djibouti', 'DJ', 'DJI', '', 0, 1),
(59, 'Dominica', 'DM', 'DMA', '', 0, 1),
(60, 'Dominican Republic', 'DO', 'DOM', '', 0, 1),
(61, 'East Timor', 'TL', 'TLS', '', 0, 1),
(62, 'Ecuador', 'EC', 'ECU', '', 0, 1),
(63, 'Egypt', 'EG', 'EGY', '', 0, 1),
(64, 'El Salvador', 'SV', 'SLV', '', 0, 1),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', '', 0, 1),
(66, 'Eritrea', 'ER', 'ERI', '', 0, 1),
(67, 'Estonia', 'EE', 'EST', '', 0, 1),
(68, 'Ethiopia', 'ET', 'ETH', '', 0, 1),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', '', 0, 1),
(70, 'Faroe Islands', 'FO', 'FRO', '', 0, 1),
(71, 'Fiji', 'FJ', 'FJI', '', 0, 1),
(72, 'Finland', 'FI', 'FIN', '', 0, 1),
(74, 'France, Metropolitan', 'FR', 'FRA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(75, 'French Guiana', 'GF', 'GUF', '', 0, 1),
(76, 'French Polynesia', 'PF', 'PYF', '', 0, 1),
(77, 'French Southern Territories', 'TF', 'ATF', '', 0, 1),
(78, 'Gabon', 'GA', 'GAB', '', 0, 1),
(79, 'Gambia', 'GM', 'GMB', '', 0, 1),
(80, 'Georgia', 'GE', 'GEO', '', 0, 1),
(81, 'Germany', 'DE', 'DEU', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(82, 'Ghana', 'GH', 'GHA', '', 0, 1),
(83, 'Gibraltar', 'GI', 'GIB', '', 0, 1),
(84, 'Greece', 'GR', 'GRC', '', 0, 1),
(85, 'Greenland', 'GL', 'GRL', '', 0, 1),
(86, 'Grenada', 'GD', 'GRD', '', 0, 1),
(87, 'Guadeloupe', 'GP', 'GLP', '', 0, 1),
(88, 'Guam', 'GU', 'GUM', '', 0, 1),
(89, 'Guatemala', 'GT', 'GTM', '', 0, 1),
(90, 'Guinea', 'GN', 'GIN', '', 0, 1),
(91, 'Guinea-Bissau', 'GW', 'GNB', '', 0, 1),
(92, 'Guyana', 'GY', 'GUY', '', 0, 1),
(93, 'Haiti', 'HT', 'HTI', '', 0, 1),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', '', 0, 1),
(95, 'Honduras', 'HN', 'HND', '', 0, 1),
(96, 'Hong Kong', 'HK', 'HKG', '', 0, 1),
(97, 'Hungary', 'HU', 'HUN', '', 0, 1),
(98, 'Iceland', 'IS', 'ISL', '', 0, 1),
(99, 'India', 'IN', 'IND', '', 0, 1),
(100, 'Indonesia', 'ID', 'IDN', '', 0, 1),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', '', 0, 1),
(102, 'Iraq', 'IQ', 'IRQ', '', 0, 1),
(103, 'Ireland', 'IE', 'IRL', '', 0, 1),
(104, 'Israel', 'IL', 'ISR', '', 0, 1),
(105, 'Italy', 'IT', 'ITA', '', 0, 1),
(106, 'Jamaica', 'JM', 'JAM', '', 0, 1),
(107, 'Japan', 'JP', 'JPN', '', 0, 1),
(108, 'Jordan', 'JO', 'JOR', '', 0, 1),
(109, 'Kazakhstan', 'KZ', 'KAZ', '', 0, 1),
(110, 'Kenya', 'KE', 'KEN', '', 0, 1),
(111, 'Kiribati', 'KI', 'KIR', '', 0, 1),
(112, 'North Korea', 'KP', 'PRK', '', 0, 1),
(113, 'Korea, Republic of', 'KR', 'KOR', '', 0, 1),
(114, 'Kuwait', 'KW', 'KWT', '', 0, 1),
(115, 'Kyrgyzstan', 'KG', 'KGZ', '', 0, 1),
(116, 'Lao People''s Democratic Republic', 'LA', 'LAO', '', 0, 1),
(117, 'Latvia', 'LV', 'LVA', '', 0, 1),
(118, 'Lebanon', 'LB', 'LBN', '', 0, 1),
(119, 'Lesotho', 'LS', 'LSO', '', 0, 1),
(120, 'Liberia', 'LR', 'LBR', '', 0, 1),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', '', 0, 1),
(122, 'Liechtenstein', 'LI', 'LIE', '', 0, 1),
(123, 'Lithuania', 'LT', 'LTU', '', 0, 1),
(124, 'Luxembourg', 'LU', 'LUX', '', 0, 1),
(125, 'Macau', 'MO', 'MAC', '', 0, 1),
(126, 'FYROM', 'MK', 'MKD', '', 0, 1),
(127, 'Madagascar', 'MG', 'MDG', '', 0, 1),
(128, 'Malawi', 'MW', 'MWI', '', 0, 1),
(129, 'Malaysia', 'MY', 'MYS', '', 0, 1),
(130, 'Maldives', 'MV', 'MDV', '', 0, 1),
(131, 'Mali', 'ML', 'MLI', '', 0, 1),
(132, 'Malta', 'MT', 'MLT', '', 0, 1),
(133, 'Marshall Islands', 'MH', 'MHL', '', 0, 1),
(134, 'Martinique', 'MQ', 'MTQ', '', 0, 1),
(135, 'Mauritania', 'MR', 'MRT', '', 0, 1),
(136, 'Mauritius', 'MU', 'MUS', '', 0, 1),
(137, 'Mayotte', 'YT', 'MYT', '', 0, 1),
(138, 'Mexico', 'MX', 'MEX', '', 0, 1),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', '', 0, 1),
(140, 'Moldova, Republic of', 'MD', 'MDA', '', 0, 1),
(141, 'Monaco', 'MC', 'MCO', '', 0, 1),
(142, 'Mongolia', 'MN', 'MNG', '', 0, 1),
(143, 'Montserrat', 'MS', 'MSR', '', 0, 1),
(144, 'Morocco', 'MA', 'MAR', '', 0, 1),
(145, 'Mozambique', 'MZ', 'MOZ', '', 0, 1),
(146, 'Myanmar', 'MM', 'MMR', '', 0, 1),
(147, 'Namibia', 'NA', 'NAM', '', 0, 1),
(148, 'Nauru', 'NR', 'NRU', '', 0, 1),
(149, 'Nepal', 'NP', 'NPL', '', 0, 1),
(150, 'Netherlands', 'NL', 'NLD', '', 0, 1),
(151, 'Netherlands Antilles', 'AN', 'ANT', '', 0, 1),
(152, 'New Caledonia', 'NC', 'NCL', '', 0, 1),
(153, 'New Zealand', 'NZ', 'NZL', '', 0, 1),
(154, 'Nicaragua', 'NI', 'NIC', '', 0, 1),
(155, 'Niger', 'NE', 'NER', '', 0, 1),
(156, 'Nigeria', 'NG', 'NGA', '', 0, 1),
(157, 'Niue', 'NU', 'NIU', '', 0, 1),
(158, 'Norfolk Island', 'NF', 'NFK', '', 0, 1),
(159, 'Northern Mariana Islands', 'MP', 'MNP', '', 0, 1),
(160, 'Norway', 'NO', 'NOR', '', 0, 1),
(161, 'Oman', 'OM', 'OMN', '', 0, 1),
(162, 'Pakistan', 'PK', 'PAK', '', 0, 1),
(163, 'Palau', 'PW', 'PLW', '', 0, 1),
(164, 'Panama', 'PA', 'PAN', '', 0, 1),
(165, 'Papua New Guinea', 'PG', 'PNG', '', 0, 1),
(166, 'Paraguay', 'PY', 'PRY', '', 0, 1),
(167, 'Peru', 'PE', 'PER', '', 0, 1),
(168, 'Philippines', 'PH', 'PHL', '', 0, 1),
(169, 'Pitcairn', 'PN', 'PCN', '', 0, 1),
(170, 'Poland', 'PL', 'POL', '', 0, 1),
(171, 'Portugal', 'PT', 'PRT', '', 0, 1),
(172, 'Puerto Rico', 'PR', 'PRI', '', 0, 1),
(173, 'Qatar', 'QA', 'QAT', '', 0, 1),
(174, 'Reunion', 'RE', 'REU', '', 0, 1),
(175, 'Romania', 'RO', 'ROM', '', 0, 1),
(176, 'Russian Federation', 'RU', 'RUS', '', 0, 1),
(177, 'Rwanda', 'RW', 'RWA', '', 0, 1),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', '', 0, 1),
(179, 'Saint Lucia', 'LC', 'LCA', '', 0, 1),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', '', 0, 1),
(181, 'Samoa', 'WS', 'WSM', '', 0, 1),
(182, 'San Marino', 'SM', 'SMR', '', 0, 1),
(183, 'Sao Tome and Principe', 'ST', 'STP', '', 0, 1),
(184, 'Saudi Arabia', 'SA', 'SAU', '', 0, 1),
(185, 'Senegal', 'SN', 'SEN', '', 0, 1),
(186, 'Seychelles', 'SC', 'SYC', '', 0, 1),
(187, 'Sierra Leone', 'SL', 'SLE', '', 0, 1),
(188, 'Singapore', 'SG', 'SGP', '', 0, 1),
(189, 'Slovak Republic', 'SK', 'SVK', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}', 0, 1),
(190, 'Slovenia', 'SI', 'SVN', '', 0, 1),
(191, 'Solomon Islands', 'SB', 'SLB', '', 0, 1),
(192, 'Somalia', 'SO', 'SOM', '', 0, 1),
(193, 'South Africa', 'ZA', 'ZAF', '', 0, 1),
(194, 'South Georgia &amp; South Sandwich Islands', 'GS', 'SGS', '', 0, 1),
(195, 'Spain', 'ES', 'ESP', '', 0, 1),
(196, 'Sri Lanka', 'LK', 'LKA', '', 0, 1),
(197, 'St. Helena', 'SH', 'SHN', '', 0, 1),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', '', 0, 1),
(199, 'Sudan', 'SD', 'SDN', '', 0, 1),
(200, 'Suriname', 'SR', 'SUR', '', 0, 1),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', '', 0, 1),
(202, 'Swaziland', 'SZ', 'SWZ', '', 0, 1),
(203, 'Sweden', 'SE', 'SWE', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(204, 'Switzerland', 'CH', 'CHE', '', 0, 1),
(205, 'Syrian Arab Republic', 'SY', 'SYR', '', 0, 1),
(206, 'Taiwan', 'TW', 'TWN', '', 0, 1),
(207, 'Tajikistan', 'TJ', 'TJK', '', 0, 1),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', '', 0, 1),
(209, 'Thailand', 'TH', 'THA', '', 0, 1),
(210, 'Togo', 'TG', 'TGO', '', 0, 1),
(211, 'Tokelau', 'TK', 'TKL', '', 0, 1),
(212, 'Tonga', 'TO', 'TON', '', 0, 1),
(213, 'Trinidad and Tobago', 'TT', 'TTO', '', 0, 1),
(214, 'Tunisia', 'TN', 'TUN', '', 0, 1),
(215, 'Turkey', 'TR', 'TUR', '', 0, 1),
(216, 'Turkmenistan', 'TM', 'TKM', '', 0, 1),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', '', 0, 1),
(218, 'Tuvalu', 'TV', 'TUV', '', 0, 1),
(219, 'Uganda', 'UG', 'UGA', '', 0, 1),
(220, 'Ukraine', 'UA', 'UKR', '', 0, 1),
(221, 'United Arab Emirates', 'AE', 'ARE', '', 0, 1),
(222, 'United Kingdom', 'GB', 'GBR', '', 1, 1),
(223, 'United States', 'US', 'USA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', 0, 1),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', '', 0, 1),
(225, 'Uruguay', 'UY', 'URY', '', 0, 1),
(226, 'Uzbekistan', 'UZ', 'UZB', '', 0, 1),
(227, 'Vanuatu', 'VU', 'VUT', '', 0, 1),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', '', 0, 1),
(229, 'Venezuela', 'VE', 'VEN', '', 0, 1),
(230, 'Viet Nam', 'VN', 'VNM', '', 0, 1),
(231, 'Virgin Islands (British)', 'VG', 'VGB', '', 0, 1),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', '', 0, 1),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', '', 0, 1),
(234, 'Western Sahara', 'EH', 'ESH', '', 0, 1),
(235, 'Yemen', 'YE', 'YEM', '', 0, 1),
(237, 'Democratic Republic of Congo', 'CD', 'COD', '', 0, 1),
(238, 'Zambia', 'ZM', 'ZMB', '', 0, 1),
(239, 'Zimbabwe', 'ZW', 'ZWE', '', 0, 1),
(240, 'Jersey', 'JE', 'JEY', '', 1, 1),
(241, 'Guernsey', 'GG', 'GGY', '', 1, 1),
(242, 'Montenegro', 'ME', 'MNE', '', 0, 1),
(243, 'Serbia', 'RS', 'SRB', '', 0, 1),
(244, 'Aaland Islands', 'AX', 'ALA', '', 0, 1),
(245, 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', '', 0, 1),
(246, 'Curacao', 'CW', 'CUW', '', 0, 1),
(247, 'Palestinian Territory, Occupied', 'PS', 'PSE', '', 0, 1),
(248, 'South Sudan', 'SS', 'SSD', '', 0, 1),
(249, 'St. Barthelemy', 'BL', 'BLM', '', 0, 1),
(250, 'St. Martin (French part)', 'MF', 'MAF', '', 0, 1),
(251, 'Canary Islands', 'IC', 'ICA', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sh_coupon`
--

CREATE TABLE IF NOT EXISTS `sh_coupon` (
`coupon_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(10) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_coupon`
--

INSERT INTO `sh_coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
(4, '-10% Discount', '2222', 'P', '10.0000', 0, 0, '0.0000', '2011-01-01', '2012-01-01', 10, '10', 1, '2009-01-27 13:55:03'),
(5, 'Free Shipping', '3333', 'P', '0.0000', 0, 1, '100.0000', '2009-03-01', '2009-08-31', 10, '10', 1, '2009-03-14 21:13:53'),
(6, '-10.00 Discount', '1111', 'F', '10.0000', 0, 0, '10.0000', '1970-11-01', '2020-11-01', 100000, '10000', 1, '2009-03-14 21:15:18');

-- --------------------------------------------------------

--
-- Table structure for table `sh_coupon_category`
--

CREATE TABLE IF NOT EXISTS `sh_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sh_coupon_history`
--

CREATE TABLE IF NOT EXISTS `sh_coupon_history` (
`coupon_history_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sh_coupon_product`
--

CREATE TABLE IF NOT EXISTS `sh_coupon_product` (
`coupon_product_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sh_currency`
--

CREATE TABLE IF NOT EXISTS `sh_currency` (
`currency_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` float(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_currency`
--

INSERT INTO `sh_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(1, 'Pound Sterling', 'GBP', '£', '', '2', 0.21600001, 0, '2015-04-07 19:26:07'),
(2, 'US Dollar', 'USD', '$', '', '2', 0.32020000, 1, '2015-04-07 19:26:08'),
(3, 'Euro', 'EUR', '', '€', '2', 0.29580000, 0, '2015-04-07 19:26:08'),
(4, 'Real (BR)', 'BRL', 'R$ ', '', '2', 1.00000000, 1, '2015-04-07 19:26:08');

-- --------------------------------------------------------

--
-- Table structure for table `sh_customer`
--

CREATE TABLE IF NOT EXISTS `sh_customer` (
`customer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `token` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_customer`
--

INSERT INTO `sh_customer` (`customer_id`, `store_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `password`, `salt`, `cart`, `wishlist`, `newsletter`, `address_id`, `customer_group_id`, `ip`, `status`, `approved`, `token`, `date_added`) VALUES
(1, 0, 'Arqfix', 'Adesivos', 'contato@arqfix.com', '2872 3403', '', 'adce0dbb4c783c906640996c3adca17848049ccb', 'd1338e144', 'a:0:{}', '', 1, 1, 1, '189.120.200.234', 1, 1, '', '2014-06-10 11:57:49'),
(2, 0, 'Simone', 'Batista', 'simone@convertpublicidade.com.br', '11 38813131', '', 'cb5ceaf8a874d26a3438bc329bd54e81f44a259b', 'c2b976520', 'a:1:{s:5:"178::";i:1;}', '', 0, 2, 1, '187.38.146.37', 1, 1, '', '2014-06-26 15:13:16'),
(3, 0, 'Fábio', 'Batista', 'fabio_redskins@yahoo.com.br', '11 3881-3131', '', '2ecc81a0817961edc71d6c538abdc7aadf1f1991', '9a72580cf', 'a:0:{}', '', 0, 3, 1, '187.38.146.37', 1, 1, '', '2014-06-26 15:29:43'),
(4, 0, 'Deborah Maria ', 'Alves Gertrudes Tavares', 'deborah.maria@gmail.com', '6199940581', '', 'dcf677243df621a06e1403382842e40338f45ab1', '825562dda', 'a:1:{s:5:"218::";i:1;}', '', 0, 4, 1, '200.219.132.103', 1, 1, '', '2014-06-27 15:57:38'),
(5, 0, 'Yara', 'Fleury', 'yarafleury@gmail.com', '21 24874063', '', 'fb047ae0db7bcc3b39fe558f5e40020f0e1e74b1', '3526431a3', 'a:0:{}', '', 0, 5, 1, '177.142.223.61', 1, 1, '', '2014-07-30 18:30:01'),
(6, 0, 'Joana', 'Carvalho', 'carvalho.joana@uol.com.br', '24 99939 3739', '', '9baf1f5d07989907d70d95c387230b1ad7f1638e', 'cef0141bd', 'a:1:{s:5:"260::";i:1;}', '', 0, 6, 1, '189.106.240.148', 1, 1, '', '2014-08-17 16:54:06'),
(7, 0, 'claudia', 'laureano', 'claudialaureano@ig.com.br', '21 24312211', '', 'e457ff5c04bb9d00ea6281b9a90cd5425d538f8c', 'ae26443af', 'a:0:{}', '', 0, 7, 1, '177.142.72.10', 1, 1, '', '2014-08-27 21:20:20'),
(8, 0, 'Priscilla', 'Moreira', 'pri.moreira@hotmail.com', '2134962241', '', '006b76fcfb721c3644ec0a54c1893b77e3576212', 'd0958fd9f', 'a:0:{}', '', 1, 8, 1, '191.202.35.34', 1, 1, '', '2014-09-13 15:10:04'),
(9, 0, 'Júnia ', 'Pinto', 'juniafongaro@yahoo.com.br', '19 33816296', '', '9c19a3d4fac726f99c5b340b031bb89f93b3a960', '7ccd39791', 'a:0:{}', '', 1, 9, 1, '187.106.62.12', 1, 1, '', '2014-10-29 16:51:10'),
(10, 0, 'jackelyne ', 'chemin beraldo', 'jack_chemin@hotmai.com', '42 99635200', '', '967c83d16dc45047d6b8d2bc5a7afc9000bd5ec8', 'c3ffe30df', 'a:1:{s:5:"229::";i:1;}', '', 0, 10, 1, '200.150.127.234', 1, 1, '', '2014-12-01 11:19:24');

-- --------------------------------------------------------

--
-- Table structure for table `sh_customer_ban_ip`
--

CREATE TABLE IF NOT EXISTS `sh_customer_ban_ip` (
`customer_ban_ip_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sh_customer_field`
--

CREATE TABLE IF NOT EXISTS `sh_customer_field` (
  `customer_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` int(128) NOT NULL,
  `value` text NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sh_customer_group`
--

CREATE TABLE IF NOT EXISTS `sh_customer_group` (
`customer_group_id` int(11) NOT NULL,
  `approval` int(1) NOT NULL,
  `company_id_display` int(1) NOT NULL,
  `company_id_required` int(1) NOT NULL,
  `tax_id_display` int(1) NOT NULL,
  `tax_id_required` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_customer_group`
--

INSERT INTO `sh_customer_group` (`customer_group_id`, `approval`, `company_id_display`, `company_id_required`, `tax_id_display`, `tax_id_required`, `sort_order`) VALUES
(1, 0, 1, 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sh_customer_group_description`
--

CREATE TABLE IF NOT EXISTS `sh_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_customer_group_description`
--

INSERT INTO `sh_customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
(1, 1, 'Default', 'test'),
(1, 2, 'Default', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `sh_customer_history`
--

CREATE TABLE IF NOT EXISTS `sh_customer_history` (
`customer_history_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sh_customer_ip`
--

CREATE TABLE IF NOT EXISTS `sh_customer_ip` (
`customer_ip_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_customer_ip`
--

INSERT INTO `sh_customer_ip` (`customer_ip_id`, `customer_id`, `ip`, `date_added`) VALUES
(1, 1, '189.120.200.234', '2014-06-10 11:57:50'),
(2, 2, '187.38.146.37', '2014-06-26 15:13:17'),
(3, 3, '187.38.146.37', '2014-06-26 15:29:43'),
(4, 4, '200.219.132.103', '2014-06-27 15:57:39'),
(5, 5, '177.142.223.61', '2014-07-30 18:30:02'),
(6, 6, '189.106.240.148', '2014-08-17 16:54:07'),
(7, 7, '177.142.72.10', '2014-08-27 21:20:21'),
(8, 8, '191.202.35.34', '2014-09-13 15:10:05'),
(9, 9, '187.106.62.12', '2014-10-29 16:51:10'),
(10, 10, '200.150.127.234', '2014-12-01 11:19:26');

-- --------------------------------------------------------

--
-- Table structure for table `sh_customer_online`
--

CREATE TABLE IF NOT EXISTS `sh_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_customer_online`
--

INSERT INTO `sh_customer_online` (`ip`, `customer_id`, `url`, `referer`, `date_added`) VALUES
('180.76.6.54', 0, 'http://www.isabellacarvalho.com/shop/index.php?route=product/product&amp;manufacturer_id=11&amp;page=6&amp;limit=10&amp;product_id=117', '', '2015-04-14 16:11:49'),
('179.159.85.241', 0, 'http://www.artetextil.net/shop/index.php?route=product/category&amp;path=61', 'http://www.artetextil.net/', '2015-04-14 15:25:42'),
('66.249.67.16', 0, 'http://www.isabellacarvalho.com/shop/index.php?route=product/category&amp;path=62_68&amp;sort=p.price&amp;order=ASC', '', '2015-04-14 15:23:26'),
('66.249.67.8', 0, 'http://www.isabellacarvalho.com/shop/index.php?route=product/product&amp;path=63&amp;product_id=212', '', '2015-04-14 15:39:48');

-- --------------------------------------------------------

--
-- Table structure for table `sh_customer_reward`
--

CREATE TABLE IF NOT EXISTS `sh_customer_reward` (
`customer_reward_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sh_customer_transaction`
--

CREATE TABLE IF NOT EXISTS `sh_customer_transaction` (
`customer_transaction_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sh_custom_field`
--

CREATE TABLE IF NOT EXISTS `sh_custom_field` (
`custom_field_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  `location` varchar(32) NOT NULL,
  `position` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sh_custom_field_description`
--

CREATE TABLE IF NOT EXISTS `sh_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sh_custom_field_to_customer_group`
--

CREATE TABLE IF NOT EXISTS `sh_custom_field_to_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sh_custom_field_value`
--

CREATE TABLE IF NOT EXISTS `sh_custom_field_value` (
`custom_field_value_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sh_custom_field_value_description`
--

CREATE TABLE IF NOT EXISTS `sh_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sh_download`
--

CREATE TABLE IF NOT EXISTS `sh_download` (
`download_id` int(11) NOT NULL,
  `filename` varchar(128) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `remaining` int(11) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_download`
--

INSERT INTO `sh_download` (`download_id`, `filename`, `mask`, `remaining`, `date_added`) VALUES
(1, 'Conjunto Remo e Girassol  Linho e 100% algodão em almofadas 30x60 e 50x50cm.jpg.3d4e0166be266c1b42e0433122e16b7e', 'Conjunto Remo e Girassol  Linho e 100% algodão em almofadas 30x60 e 50x50cm.jpg', 1, '2015-03-22 21:15:28');

-- --------------------------------------------------------

--
-- Table structure for table `sh_download_description`
--

CREATE TABLE IF NOT EXISTS `sh_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_download_description`
--

INSERT INTO `sh_download_description` (`download_id`, `language_id`, `name`) VALUES
(1, 2, 'Coleção 2015'),
(1, 1, '2015 Collection');

-- --------------------------------------------------------

--
-- Table structure for table `sh_extension`
--

CREATE TABLE IF NOT EXISTS `sh_extension` (
`extension_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=459 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_extension`
--

INSERT INTO `sh_extension` (`extension_id`, `type`, `code`) VALUES
(22, 'total', 'shipping'),
(57, 'total', 'sub_total'),
(58, 'total', 'tax'),
(59, 'total', 'total'),
(410, 'module', 'banner'),
(426, 'module', 'carousel'),
(390, 'total', 'credit'),
(432, 'shipping', 'correios'),
(349, 'total', 'handling'),
(350, 'total', 'low_order_fee'),
(389, 'total', 'coupon'),
(413, 'module', 'category'),
(411, 'module', 'affiliate'),
(408, 'module', 'account'),
(393, 'total', 'reward'),
(398, 'total', 'voucher'),
(438, 'payment', 'pagseguro'),
(419, 'module', 'slideshow'),
(428, 'module', 'sellegance'),
(429, 'module', 'category_accordion'),
(430, 'module', 'tabbed_products'),
(431, 'module', 'advanced_slideshow'),
(437, 'shipping', 'pickup'),
(436, 'feed', 'google_base'),
(439, 'feed', 'google_sitemap'),
(440, 'module', 'store'),
(455, 'module', 'related'),
(442, 'payment', 'bank_transfer'),
(443, 'payment', 'pp_standard'),
(457, 'module', 'filter');

-- --------------------------------------------------------

--
-- Table structure for table `sh_filter`
--

CREATE TABLE IF NOT EXISTS `sh_filter` (
`filter_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sh_filter_description`
--

CREATE TABLE IF NOT EXISTS `sh_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sh_filter_group`
--

CREATE TABLE IF NOT EXISTS `sh_filter_group` (
`filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sh_filter_group_description`
--

CREATE TABLE IF NOT EXISTS `sh_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sh_geo_zone`
--

CREATE TABLE IF NOT EXISTS `sh_geo_zone` (
`geo_zone_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_geo_zone`
--

INSERT INTO `sh_geo_zone` (`geo_zone_id`, `name`, `description`, `date_modified`, `date_added`) VALUES
(3, 'UK VAT Zone', 'UK VAT', '2010-02-26 22:33:24', '2009-01-06 23:26:25'),
(4, 'UK Shipping', 'UK Shipping Zones', '2010-12-15 15:18:13', '2009-06-23 01:14:53'),
(5, 'Brasil', 'Entrega Nacional', '0000-00-00 00:00:00', '2014-03-17 16:23:30');

-- --------------------------------------------------------

--
-- Table structure for table `sh_information`
--

CREATE TABLE IF NOT EXISTS `sh_information` (
`information_id` int(11) NOT NULL,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_information`
--

INSERT INTO `sh_information` (`information_id`, `bottom`, `sort_order`, `status`) VALUES
(3, 1, 3, 1),
(4, 1, 1, 1),
(5, 1, 4, 1),
(6, 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sh_information_description`
--

CREATE TABLE IF NOT EXISTS `sh_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_information_description`
--

INSERT INTO `sh_information_description` (`information_id`, `language_id`, `title`, `description`) VALUES
(5, 2, 'Termos e Condições', '&lt;p&gt;Os Termos e Condições de uso regulamentam a utilização do Site, que pertencem à Arte Têxtil Tecidos, localizada à Rua Iperoig, 409 - Perdizes, São Paulo - SP&lt;/p&gt;\r\n\r\n&lt;p&gt;Observe atentamente as informações a seguir, elas são essenciais para seu pedido:&lt;/p&gt;\r\n\r\n&lt;p&gt;1- Todas as imagens publicadas neste site são meramente ilustrativas. Os acessórios utilizados na produção das fotos não acompanham o produto;&lt;/p&gt;\r\n\r\n&lt;p&gt;2 - Certifique-se do produto adquirido e de sua composição e/ou componentes verificando o descritivo do mesmo;&lt;/p&gt;\r\n\r\n&lt;p&gt;3 - Fique atento com a descrição exata do produto que você quer comprar;&lt;/p&gt;\r\n\r\n&lt;p&gt;4-&amp;nbsp; Pode haver diferença nas cores devido a calibração de cada monitor;&lt;/p&gt;\r\n\r\n&lt;p&gt;5- Alguns produtos possuem cores sortidas e a foto no site é meramente ilustrativa.&lt;/p&gt;\r\n'),
(6, 2, 'Informações de Entrega', '&lt;p&gt;&lt;b&gt;Cálculo do frete&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Seu frete será calculado durante o processo de finalização da compra, na etapa &quot;Opções de Entrega&quot;. O resultado deste cálculo será somado ao valor da compra, totalizando o valor a ser pago.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Entrega&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Garantimos a entrega em todo o território brasileiro em que os serviços dos Correios atendem.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Prazo de Entrega&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;O prazo de entrega&amp;nbsp;esta entre 5 a 30 dias úteis por se tratar de produto exclusivo e de confecção manual, conforme a disponibilidade do produto em estoque, o local de entrega e a forma de pagamento.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n'),
(6, 1, 'Delivery Information', '&lt;p&gt;&lt;span id=&quot;result_box&quot; lang=&quot;en&quot;&gt;&lt;span class=&quot;hps&quot;&gt;Calculation of&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;Freight&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;hps&quot;&gt;Your&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;shipping&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;will be calculated&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;during the&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;checkout&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;process&lt;/span&gt;&lt;span&gt;,&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;in step&lt;/span&gt; &lt;span class=&quot;hps atn&quot;&gt;&quot;&lt;/span&gt;&lt;span&gt;Delivery Options&lt;/span&gt;&lt;span&gt;&quot;&lt;/span&gt;&lt;span&gt;.&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;The result&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;of this calculation&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;will be added to&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;the purchase amount,&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;totaling the amount&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;to be paid&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;hps&quot;&gt;Delivery&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;hps&quot;&gt;We guarantee delivery&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;throughout the&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;Brazilian territory&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;in which the services&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;of Postal&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;serve.&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;hps&quot;&gt;Delivery&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;hps&quot;&gt;The delivery time&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;varies from&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;5 to 20 days&lt;/span&gt;&lt;span&gt;, subject to availability&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;of the product&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;in stock,&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;delivery location&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;method of payment.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n'),
(3, 2, 'Politica de Privacidade', '&lt;p align=&quot;justify&quot;&gt;O site &lt;a href=&quot;http://www.isabellacarvalho.com/&quot;&gt;www.artetextil.net&amp;nbsp;&lt;/a&gt; possui o compromisso de assegurar a privacidade de seus usuários.&lt;/p&gt;\r\n\r\n&lt;p align=&quot;justify&quot;&gt;Todas as informações fornecidas no ato do cadastro no site ou em qualquer outro momento durante a utilização de nossos serviços serão mantidas em absoluto sigilo.&lt;/p&gt;\r\n\r\n&lt;p align=&quot;justify&quot;&gt;Todas as informações fornecidas pelo usuário são de uso interno,&amp;nbsp; apenas os profissionais autorizados terão acesso às mesmas.&lt;/p&gt;\r\n\r\n&lt;p align=&quot;justify&quot;&gt;Nenhuma informação fornecida pelo usuário será utilizada para outros fins que não os declarados sem a permissão do mesmo.&lt;/p&gt;\r\n'),
(3, 1, 'Privacy Policy', '&lt;p&gt;&lt;span id=&quot;result_box&quot; lang=&quot;en&quot;&gt;&lt;span class=&quot;hps&quot;&gt;The&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;site&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;has&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;www.artetextil.net&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;committed to ensuring&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;the privacy of its&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;users&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;hps&quot;&gt;All information provided&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;when registering&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;on the website or&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;at any other time&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;during the&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;use of&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;our services&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;will be&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;kept in strict confidentiality&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;hps&quot;&gt;All information provided&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;by the user is&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;used internally&lt;/span&gt;&lt;span&gt;,&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and only&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;authorized personnel&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;have&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;access.&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;hps&quot;&gt;No information&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;provided&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;by the user&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;will be used for&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;purposes other than&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;the&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;declared&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;without the permission of&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;same&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n'),
(5, 1, 'Terms &amp; Conditions', '&lt;p&gt;&lt;span id=&quot;result_box&quot; lang=&quot;en&quot;&gt;&lt;span class=&quot;hps&quot;&gt;The Terms&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and Conditions&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;governing the&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;use of the Site&lt;/span&gt;&lt;span&gt;, which&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;belong to the&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;Textile Art&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;Fabrics&lt;/span&gt;&lt;span&gt;, located at&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;Iperoig&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;Street&lt;/span&gt;&lt;span&gt;,&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;409&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;-&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;Jardins&lt;/span&gt;&lt;span&gt;,&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;São&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;Paulo&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;-&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;SP&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;hps&quot;&gt;Carefully note&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;the following information&lt;/span&gt;&lt;span&gt;,&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;they are essential to&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;your request:&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;hps&quot;&gt;1&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;-&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;All images&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;on this site&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;are purely illustrative&lt;/span&gt;&lt;span&gt;.&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;The accessories&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;used in the production&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;of the photos&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;did not&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;come with the product&lt;/span&gt;&lt;span&gt;;&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;hps&quot;&gt;2&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;-&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;Make sure&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;the&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;purchased product&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;its composition&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and / or&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;checking&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;the descriptive&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;components&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;thereof;&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;hps&quot;&gt;3&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;-&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;Stay tuned with&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;the exact description&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;of the product you&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;want to buy&lt;/span&gt;&lt;span&gt;;&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;hps&quot;&gt;4&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;-&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;There may be&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;differences&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;in colors&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;due to the&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;calibration&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;of each&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;monitor;&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;hps&quot;&gt;5&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;-&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;Some products&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;have&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;assorted colors&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;picture on the site&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;is merely illustrative&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n'),
(4, 2, 'Conceito ', '&lt;p&gt;A &lt;strong&gt;Arte Têxtil&lt;/strong&gt; é um atelier criativo que transforma, recicla, estampa, pinta, cola, costura, recorta, esta em movimento constante e atento as necessidades da alma.&lt;/p&gt;\r\n\r\n&lt;p&gt;Produz e desenvolve parcerias com lojistas,&amp;nbsp; designers e arquitetos, tornando seus projetos únicos e personalizados.&lt;/p&gt;\r\n\r\n&lt;div class=&quot;clearfix colelem&quot; id=&quot;u4910-4&quot;&gt;\r\n&lt;p&gt;O resultado é uma variedade de produtos com conceito, que se encontram no atelier Arte Têxtil e nas diversas lojas pelo Brasil.&lt;br /&gt;\r\nAtendemos o atacado e agora pela loja.&lt;/p&gt;\r\n\r\n&lt;p&gt;Arte Têxtil, o primeiro e-commerce de tecidos estampados e criações estampadas a mão para decoração do Brasil.&lt;/p&gt;\r\n\r\n&lt;p&gt;Visite o nosso website &lt;a href=&quot;http://www.artetextil.net&quot;&gt;www.artetextil.net&lt;/a&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;CONCEPT&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span id=&quot;result_box&quot; lang=&quot;en&quot;&gt;&lt;span class=&quot;hps&quot;&gt;Arte Têxtil &lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span id=&quot;result_box&quot; lang=&quot;en&quot;&gt;&lt;span class=&quot;hps&quot;&gt;The&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;Textile Art&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;is&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;a creative&lt;/span&gt; company and industry based in Sao Paulo, Brazil.&lt;br /&gt;\r\n&lt;span class=&quot;hps&quot;&gt;Produces and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;develops partnerships with&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;designers&lt;/span&gt;,&amp;nbsp;&lt;span class=&quot;hps&quot;&gt; architects, shops around South America, United States&lt;/span&gt;&lt;span&gt; of Amercia and Europe, making&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt; unique&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and custom&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;designs&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;\r\n&lt;span class=&quot;hps&quot;&gt;The result of our creations are&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;the &lt;/span&gt;&lt;/span&gt;&lt;span class=&quot;short_text&quot; id=&quot;result_box&quot; lang=&quot;en&quot;&gt;&lt;span class=&quot;hps&quot;&gt;variety&lt;/span&gt;&lt;/span&gt;&lt;span lang=&quot;en&quot;&gt;&lt;span class=&quot;hps&quot;&gt; of&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;products with&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;concept&lt;/span&gt;&lt;span&gt;,&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;found in&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;Textile Art&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;atelier&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;in several stores&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;throughout Brazil&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;\r\n&lt;span class=&quot;hps&quot;&gt;Textile Art&lt;/span&gt;&lt;span&gt;,&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;the first&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;e-commerce&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;patterned fabrics and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;hand&lt;/span&gt; made &lt;span class=&quot;hps&quot;&gt;stamped&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;fabrics for decoration.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Enjoy Arte Têxtil at facebook , &lt;a href=&quot;http://www.facebook.com/Arte Textil&quot;&gt;www.facebook.com/ArteTextil.&lt;/a&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span id=&quot;result_box&quot; lang=&quot;en&quot;&gt;&lt;span class=&quot;hps&quot;&gt;Learn&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;more about&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;our brand&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;also&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;by contacting us contato@isabellacarvalho.com&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span lang=&quot;en&quot;&gt;&lt;span class=&quot;hps&quot;&gt;www.artetextil.net&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;/div&gt;\r\n'),
(4, 1, 'Arte Têxtil Concept', '&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span id=&quot;result_box&quot; lang=&quot;en&quot;&gt;&lt;span class=&quot;hps&quot;&gt;Arte Têxtil &lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span id=&quot;result_box&quot; lang=&quot;en&quot;&gt;&lt;span class=&quot;hps&quot;&gt;The&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;Textile Art&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;is&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;a creative&lt;/span&gt; company and industry based in Sao Paulo, Brazil.&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;hps&quot;&gt;Produces and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;develops partnerships with&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;designers&lt;/span&gt;,&amp;nbsp;&lt;span class=&quot;hps&quot;&gt; architects, shops around South America, United States&lt;/span&gt;&lt;span&gt; and Europe, making&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt; unique&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and custom&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;designs&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;hps&quot;&gt;The result of our creations are&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;the varieties of&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;products with&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;the concept&lt;/span&gt;&lt;span&gt;,&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;found in&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;Textile Art&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;atelier&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;in several stores&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;throughout Brazil&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;\r\n&lt;span class=&quot;hps&quot;&gt;Textile Art&lt;/span&gt;&lt;span&gt;,&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;the first&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;e-commerce&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;patterned fabrics and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;hand&lt;/span&gt; made &lt;span class=&quot;hps&quot;&gt;stamped&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;decoration&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;in&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;Brazil&lt;/span&gt; &lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Enjoy Arte Têxtil at facebook , &lt;a href=&quot;http://www.facebook.com/ArteTextil&quot;&gt;www.facebook.com/ArteTextil.&lt;/a&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span id=&quot;result_box&quot; lang=&quot;en&quot;&gt;&lt;span class=&quot;hps&quot;&gt;Learn&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;more about&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;our brand&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;also&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;by contacting us contato@isabellacarvalho.com&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `sh_information_to_layout`
--

CREATE TABLE IF NOT EXISTS `sh_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sh_information_to_store`
--

CREATE TABLE IF NOT EXISTS `sh_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_information_to_store`
--

INSERT INTO `sh_information_to_store` (`information_id`, `store_id`) VALUES
(3, 0),
(4, 0),
(5, 0),
(6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sh_language`
--

CREATE TABLE IF NOT EXISTS `sh_language` (
`language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `filename` varchar(64) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_language`
--

INSERT INTO `sh_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `filename`, `sort_order`, `status`) VALUES
(1, 'English', 'en', 'en_US.UTF-8,en_US,en-gb,english', 'gb.png', 'english', 'english', 2, 1),
(2, 'Português (BR)', 'pt-br', 'pt_BR.UTF-8,pt_BR,pt-br,pt_br,portuguese,portugues', 'br.png', 'portuguese-br', 'portuguese-br', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sh_layout`
--

CREATE TABLE IF NOT EXISTS `sh_layout` (
`layout_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_layout`
--

INSERT INTO `sh_layout` (`layout_id`, `name`) VALUES
(1, 'Home'),
(2, 'Product'),
(3, 'Category'),
(4, 'Default'),
(5, 'Manufacturer'),
(6, 'Account'),
(7, 'Checkout'),
(8, 'Contact'),
(9, 'Sitemap'),
(10, 'Affiliate'),
(11, 'Information');

-- --------------------------------------------------------

--
-- Table structure for table `sh_layout_route`
--

CREATE TABLE IF NOT EXISTS `sh_layout_route` (
`layout_route_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_layout_route`
--

INSERT INTO `sh_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(30, 6, 0, 'account'),
(17, 10, 0, 'affiliate/'),
(38, 3, 0, 'category/'),
(26, 1, 0, 'common/home'),
(20, 2, 0, 'product/product'),
(24, 11, 0, 'information/information'),
(22, 5, 0, 'product/manufacturer'),
(23, 7, 0, 'checkout/'),
(31, 8, 0, 'information/contact'),
(32, 9, 0, 'information/sitemap'),
(37, 3, 0, 'product/category');

-- --------------------------------------------------------

--
-- Table structure for table `sh_length_class`
--

CREATE TABLE IF NOT EXISTS `sh_length_class` (
`length_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_length_class`
--

INSERT INTO `sh_length_class` (`length_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '10.00000000'),
(3, '0.39370000');

-- --------------------------------------------------------

--
-- Table structure for table `sh_length_class_description`
--

CREATE TABLE IF NOT EXISTS `sh_length_class_description` (
`length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_length_class_description`
--

INSERT INTO `sh_length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Centimeter', 'cm'),
(2, 1, 'Millimeter', 'mm'),
(3, 1, 'Inch', 'in'),
(1, 2, 'Centimeter', 'cm'),
(2, 2, 'Millimeter', 'mm'),
(3, 2, 'Inch', 'in');

-- --------------------------------------------------------

--
-- Table structure for table `sh_manufacturer`
--

CREATE TABLE IF NOT EXISTS `sh_manufacturer` (
`manufacturer_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_manufacturer`
--

INSERT INTO `sh_manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`) VALUES
(11, 'Arte Têxtil Tecidos', 'data/logotipo-arte.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sh_manufacturer_to_store`
--

CREATE TABLE IF NOT EXISTS `sh_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_manufacturer_to_store`
--

INSERT INTO `sh_manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
(11, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sh_option`
--

CREATE TABLE IF NOT EXISTS `sh_option` (
`option_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_option`
--

INSERT INTO `sh_option` (`option_id`, `type`, `sort_order`) VALUES
(4, 'select', 4),
(15, 'select', 0),
(10, 'datetime', 9),
(11, 'select', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sh_option_description`
--

CREATE TABLE IF NOT EXISTS `sh_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_option_description`
--

INSERT INTO `sh_option_description` (`option_id`, `language_id`, `name`) VALUES
(10, 1, 'Date &amp; Time'),
(11, 1, 'Size'),
(4, 2, 'Enchimento'),
(15, 1, 'Cúpula '),
(15, 2, 'Cúpula '),
(10, 2, 'Date &amp; Time'),
(11, 2, 'Size'),
(4, 1, 'Enchimento');

-- --------------------------------------------------------

--
-- Table structure for table `sh_option_value`
--

CREATE TABLE IF NOT EXISTS `sh_option_value` (
`option_value_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_option_value`
--

INSERT INTO `sh_option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
(73, 15, '', 0),
(74, 15, '', 0),
(46, 11, 'no_image.jpg', 1),
(47, 11, 'no_image.jpg', 2),
(48, 11, 'no_image.jpg', 3),
(49, 11, '', 0),
(72, 4, '', 0),
(71, 4, '', 0),
(66, 4, 'no_image.jpg', 0),
(65, 4, 'no_image.jpg', 0),
(70, 4, 'no_image.jpg', 0),
(69, 4, 'no_image.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sh_option_value_description`
--

CREATE TABLE IF NOT EXISTS `sh_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_option_value_description`
--

INSERT INTO `sh_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(74, 1, 15, 'Cúpula Pequena - 18x18cm'),
(74, 2, 15, 'Cúpula Pequena - 18x18cm'),
(48, 1, 11, '50 x 50'),
(48, 2, 11, '50 x 50'),
(47, 1, 11, '40 x 60'),
(73, 1, 15, 'Cúpula Grande - 25x25cm '),
(73, 2, 15, 'Cúpula Grande - 25x25cm '),
(47, 2, 11, '40 x 60'),
(46, 1, 11, '30 x 60'),
(46, 2, 11, '30 x 60'),
(49, 2, 11, '60 x 60'),
(49, 1, 11, '60 x 60'),
(66, 1, 4, '30 x 60 Without Filling'),
(66, 2, 4, '30 x 60 Sem Enchimento'),
(65, 1, 4, '30 x 60 With Stuffing'),
(65, 2, 4, '30 x 60 Com Enchimento'),
(70, 1, 4, '40 x 60 Without Filling'),
(70, 2, 4, '40 x 60 Sem Enchimento'),
(69, 1, 4, '40 x 60 With Stuffing'),
(69, 2, 4, '40 x 60 Com Enchimento'),
(71, 2, 4, '50 x 50  Com Enchimento'),
(71, 1, 4, '50 x 50 With Stuffing'),
(72, 2, 4, '50 x 50 Sem Enchimento'),
(72, 1, 4, '50 x 50 Without Filling');

-- --------------------------------------------------------

--
-- Table structure for table `sh_order`
--

CREATE TABLE IF NOT EXISTS `sh_order` (
`order_id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(32) NOT NULL,
  `payment_company_id` varchar(32) NOT NULL,
  `payment_tax_id` varchar(32) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(32) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_order`
--

INSERT INTO `sh_order` (`order_id`, `invoice_no`, `invoice_prefix`, `store_id`, `store_name`, `store_url`, `customer_id`, `customer_group_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `payment_firstname`, `payment_lastname`, `payment_company`, `payment_company_id`, `payment_tax_id`, `payment_address_1`, `payment_address_2`, `payment_city`, `payment_postcode`, `payment_country`, `payment_country_id`, `payment_zone`, `payment_zone_id`, `payment_address_format`, `payment_method`, `payment_code`, `shipping_firstname`, `shipping_lastname`, `shipping_company`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_postcode`, `shipping_country`, `shipping_country_id`, `shipping_zone`, `shipping_zone_id`, `shipping_address_format`, `shipping_method`, `shipping_code`, `comment`, `total`, `order_status_id`, `affiliate_id`, `commission`, `language_id`, `currency_id`, `currency_code`, `currency_value`, `ip`, `forwarded_ip`, `user_agent`, `accept_language`, `date_added`, `date_modified`) VALUES
(1, 0, 'INV-2013-00', 0, 'Shop | Arte Têxtil', 'http://www.isabellacarvalho.com/shop/', 0, 1, 'Mariana ', 'Giacomo', 'mariana@convert.net.br', '30837320', '', 'Mariana ', 'Giacomo', 'Convert Publicidade ', '', '', 'rua joaquim antunes, 819', 'pinheiros', 'São Paulo', '05415012', 'Brazil', 30, 'São Paulo', 464, '', 'PagSeguro', 'pagseguro', 'Mariana ', 'Giacomo', 'Convert Publicidade ', 'rua joaquim antunes, 819', 'pinheiros', 'São Paulo', '05415012', 'Brazil', 30, 'São Paulo', 464, '', 'SEDEX. Entrega em 11 dias úteis', 'correios.40010', '', '234.1000', 0, 0, '0.0000', 2, 4, 'BRL', '1.00000000', '187.38.146.37', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:28.0) Gecko/20100101 Firefox/28.0', 'pt-BR,pt;q=0.8,en-US;q=0.5,en;q=0.3', '2014-04-23 17:00:13', '2014-04-23 17:00:13'),
(7, 0, 'INV-2013-00', 0, 'Shop | Arte Têxtil', 'http://www.isabellacarvalho.com/shop/', 3, 1, 'Fábio', 'Batista', 'fabio_redskins@yahoo.com.br', '11 3881-3131', '', 'Fábio', 'Batista', '', '', '', 'Rua Apucarana, 971', '', 'São Paulo', '03311000', 'Brazil', 30, 'São Paulo', 464, '', 'PagSeguro', 'pagseguro', 'Fábio', 'Batista', '', 'Rua Apucarana, 971', '', 'São Paulo', '03311000', 'Brazil', 30, 'São Paulo', 464, '', 'PAC. Entrega em 13 dias úteis', 'correios.41106', '', '692.7000', 0, 0, '0.0000', 2, 4, 'BRL', '1.00000000', '187.38.146.37', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:30.0) Gecko/20100101 Firefox/30.0', 'pt-BR,pt;q=0.8,en-US;q=0.5,en;q=0.3', '2014-07-03 12:19:54', '2014-07-03 12:19:54'),
(8, 0, 'INV-2013-00', 0, 'Shop | Arte Têxtil', 'http://www.isabellacarvalho.com/shop/', 3, 1, 'Fábio', 'Batista', 'fabio_redskins@yahoo.com.br', '11 3881-3131', '', 'Fábio', 'Batista', '', '', '', 'Rua Apucarana, 971', '', 'São Paulo', '03311000', 'Brazil', 30, 'São Paulo', 464, '', 'PagSeguro', 'pagseguro', 'Fábio', 'Batista', '', 'Rua Apucarana, 971', '', 'São Paulo', '03311000', 'Brazil', 30, 'São Paulo', 464, '', 'PAC. Entrega em 13 dias úteis', 'correios.41106', '', '692.7000', 0, 0, '0.0000', 2, 4, 'BRL', '1.00000000', '187.38.146.37', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:30.0) Gecko/20100101 Firefox/30.0', 'pt-BR,pt;q=0.8,en-US;q=0.5,en;q=0.3', '2014-07-03 12:21:55', '2014-07-03 12:21:55'),
(15, 0, 'INV-2013-00', 0, 'Shop | Arte Têxtil', 'http://www.isabellacarvalho.com/shop/', 6, 1, 'Joana', 'Carvalho', 'carvalho.joana@uol.com.br', '24 99939 3739', '', 'Joana', 'Carvalho', '', '', '', 'Gabriel Vilela Sobrinho 60', 'Centro', 'Barra Pirai', '27123170', 'Brazil', 30, 'Rio de Janeiro', 458, '', 'Transferência Bancária', 'bank_transfer', 'Joana', 'Carvalho', '', 'Gabriel Vilela Sobrinho 60', 'Centro', 'Barra Pirai', '27123170', 'Brazil', 30, 'Rio de Janeiro', 458, '', 'Retirar na loja', 'pickup.pickup', '', '243.0000', 0, 0, '0.0000', 2, 4, 'BRL', '1.00000000', '189.106.240.148', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.76.4 (KHTML, like Gecko) Version/7.0.4 Safari/537.76.4', 'fr-fr', '2014-08-17 16:55:27', '2014-08-17 16:55:27'),
(4, 0, 'INV-2013-00', 0, 'Shop | Arte Têxtil', 'http://www.isabellacarvalho.com/shop/', 0, 1, 'Tecido', 'Estampado', 'tecidoestampado@hotmail.com', '26398208', '', 'Tecido', 'Estampado', 'Arte', 'Arte', '', 'Rua Iperoig, 409', 'Perdizes', 'São Paulo', '05016000', 'Brazil', 30, 'São Paulo', 464, '', 'PagSeguro', 'pagseguro', 'Tecido', 'Estampado', 'Arte', 'Rua Iperoig, 409', 'Perdizes', 'São Paulo', '05016000', 'Brazil', 30, 'São Paulo', 464, '', 'PAC. Entrega em 13 dias úteis', 'correios.41106', '', '413.7000', 0, 0, '0.0000', 2, 4, 'BRL', '1.00000000', '189.120.200.234', '', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:30.0) Gecko/20100101 Firefox/30.0', 'pt-BR,pt;q=0.8,en-US;q=0.5,en;q=0.3', '2014-07-02 13:02:26', '2014-07-02 13:02:26'),
(10, 0, 'INV-2013-00', 0, 'Shop | Arte Têxtil', 'http://www.isabellacarvalho.com/shop/', 3, 1, 'Fábio', 'Batista', 'fabio_redskins@yahoo.com.br', '11 3881-3131', '', 'Fábio', 'Batista', '', '', '', 'Rua Apucarana, 971', '', 'São Paulo', '03311000', 'Brazil', 30, 'São Paulo', 464, '', 'PagSeguro', 'pagseguro', 'Fábio', 'Batista', '', 'Rua Apucarana, 971', '', 'São Paulo', '03311000', 'Brazil', 30, 'São Paulo', 464, '', 'Retirar na loja', 'pickup.pickup', '', '100.0000', 0, 0, '0.0000', 2, 4, 'BRL', '1.00000000', '187.38.146.37', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:30.0) Gecko/20100101 Firefox/30.0', 'pt-BR,pt;q=0.8,en-US;q=0.5,en;q=0.3', '2014-07-03 14:05:35', '2014-07-03 14:05:35'),
(6, 1, 'INV-2013-00', 0, 'Shop | Arte Têxtil', 'http://www.isabellacarvalho.com/shop/', 0, 1, 'fernanda ', 'spilborghs', 'fespil@ig.com.br', '11 991148004', '', 'fernanda ', 'spilborghs', 'atelie fernanda spilborghs', '', '', 'rua wisard 528 casa 04', 'vl. madalena', 'são paulo', '05434000', 'Brazil', 30, 'São Paulo', 464, '', 'PagSeguro', 'pagseguro', 'fernanda ', 'spilborghs', 'atelie fernanda spilborghs', 'rua wisard 528 casa 04', 'vl. madalena', 'são paulo', '05434000', 'Brazil', 30, 'São Paulo', 464, '', 'PAC. Entrega em 13 dias úteis', 'correios.41106', '', '416.5000', 1, 0, '0.0000', 2, 4, 'BRL', '1.00000000', '186.220.242.187', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36', 'pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4', '2014-07-02 14:22:18', '2014-08-04 13:42:07'),
(11, 0, 'INV-2013-00', 0, 'Shop | Arte Têxtil', 'http://www.isabellacarvalho.com/shop/', 0, 1, 'juliana', 'fanchini', 'jufanchini02@gmail.com', '11 34760110', '', 'juliana', 'fanchini', '', '', '', 'rua sao vicente de paula, 34, ap 11', 'Santa Cecília', 'São Paulo', '01229010', 'Brazil', 30, 'São Paulo', 464, '', 'PagSeguro', 'pagseguro', 'juliana', 'fanchini', '', 'rua sao vicente de paula, 34, ap 11', 'Santa Cecília', 'São Paulo', '01229010', 'Brazil', 30, 'São Paulo', 464, '', 'SEDEX. Entrega em 11 dias úteis', 'correios.40010', '', '48.0000', 0, 0, '0.0000', 2, 4, 'BRL', '1.00000000', '200.170.103.178', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36', 'pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4', '2014-07-30 16:41:47', '2014-07-30 16:41:47'),
(12, 0, 'INV-2013-00', 0, 'Shop | Arte Têxtil', 'http://www.isabellacarvalho.com/shop/', 0, 1, 'juliana', 'fanchini', 'jufanchini02@gmail.com', '11 34760110', '', 'juliana', 'fanchini', '', '', '', 'rua sao vicente de paula, 34, ap 11', 'Santa Cecília', 'São Paulo', '01229010', 'Brazil', 30, 'São Paulo', 464, '', 'PagSeguro', 'pagseguro', 'juliana', 'fanchini', '', 'rua sao vicente de paula, 34, ap 11', 'Santa Cecília', 'São Paulo', '01229010', 'Brazil', 30, 'São Paulo', 464, '', 'SEDEX. Entrega em 11 dias úteis', 'correios.40010', '', '48.0000', 0, 0, '0.0000', 2, 4, 'BRL', '1.00000000', '200.170.103.178', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36', 'pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4', '2014-07-30 16:41:53', '2014-07-30 16:41:53'),
(13, 0, 'INV-2013-00', 0, 'Shop | Arte Têxtil', 'http://www.isabellacarvalho.com/shop/', 5, 1, 'Yara', 'Fleury', 'yarafleury@gmail.com', '21 24874063', '', 'Yara', 'Fleury', '', '', '', 'Rua Historiador Werneck da Silva, 235 ed Versailles apto 308', 'Recreio dos Bandeirantes', 'Rio de Janeiro', '22790-832', 'Brazil', 30, 'Rio de Janeiro', 458, '', 'PagSeguro', 'pagseguro', 'Yara', 'Fleury', '', 'Rua Historiador Werneck da Silva, 235 ed Versailles apto 308', 'Recreio dos Bandeirantes', 'Rio de Janeiro', '22790-832', 'Brazil', 30, 'Rio de Janeiro', 458, '', 'PAC. Entrega em 14 dias úteis', 'correios.41106', '', '113.5000', 0, 0, '0.0000', 2, 4, 'BRL', '1.00000000', '177.142.223.61', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:30.0) Gecko/20100101 Firefox/30.0', 'pt-BR,pt;q=0.8,en-US;q=0.5,en;q=0.3', '2014-07-30 18:30:25', '2014-07-30 18:30:25'),
(14, 0, 'INV-2013-00', 0, 'Shop | Arte Têxtil', 'http://www.isabellacarvalho.com/shop/', 5, 1, 'Yara', 'Fleury', 'yarafleury@gmail.com', '21 24874063', '', 'Yara', 'Fleury', '', '', '', 'Rua Historiador Werneck da Silva, 235 ed Versailles apto 308', 'Recreio dos Bandeirantes', 'Rio de Janeiro', '22790-832', 'Brazil', 30, 'Rio de Janeiro', 458, '', 'PagSeguro', 'pagseguro', 'Yara', 'Fleury', '', 'Rua Historiador Werneck da Silva, 235 ed Versailles apto 308', 'Recreio dos Bandeirantes', 'Rio de Janeiro', '22790-832', 'Brazil', 30, 'Rio de Janeiro', 458, '', 'PAC. Entrega em 14 dias úteis', 'correios.41106', '', '113.5000', 0, 0, '0.0000', 2, 4, 'BRL', '1.00000000', '177.142.223.61', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:30.0) Gecko/20100101 Firefox/30.0', 'pt-BR,pt;q=0.8,en-US;q=0.5,en;q=0.3', '2014-07-30 18:30:29', '2014-07-30 18:30:29'),
(16, 0, 'INV-2013-00', 0, 'Shop | Arte Têxtil', 'http://www.isabellacarvalho.com/shop/', 8, 1, 'Priscilla', 'Moreira', 'pri.moreira@hotmail.com', '2134962241', '', 'Priscilla', 'Moreira', '', '', '', 'Rua Jardim Botânico 622 bl A apto 304', 'Jardim Botânico', 'Rio de Janeiro', '22461000', 'Brazil', 30, 'Rio de Janeiro', 458, '', 'PagSeguro', 'pagseguro', 'Priscilla', 'Moreira', '', 'Rua Jardim Botânico 622 bl A apto 304', 'Jardim Botânico', 'Rio de Janeiro', '22461000', 'Brazil', 30, 'Rio de Janeiro', 458, '', 'PAC. Entrega em 14 dias úteis', 'correios.41106', 'Gostaria que viessem, se possível, embrulhados para presente.\nObrigada.', '86.7000', 0, 0, '0.0000', 2, 4, 'BRL', '1.00000000', '191.202.35.34', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.120 Safari/537.36', 'en-US,en;q=0.8,fr;q=0.6,pt;q=0.4', '2014-09-13 15:12:26', '2014-09-13 15:12:26');

-- --------------------------------------------------------

--
-- Table structure for table `sh_order_download`
--

CREATE TABLE IF NOT EXISTS `sh_order_download` (
`order_download_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `filename` varchar(128) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `remaining` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sh_order_field`
--

CREATE TABLE IF NOT EXISTS `sh_order_field` (
  `order_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` int(128) NOT NULL,
  `value` text NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sh_order_fraud`
--

CREATE TABLE IF NOT EXISTS `sh_order_fraud` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `country_match` varchar(3) NOT NULL,
  `country_code` varchar(2) NOT NULL,
  `high_risk_country` varchar(3) NOT NULL,
  `distance` int(11) NOT NULL,
  `ip_region` varchar(255) NOT NULL,
  `ip_city` varchar(255) NOT NULL,
  `ip_latitude` decimal(10,6) NOT NULL,
  `ip_longitude` decimal(10,6) NOT NULL,
  `ip_isp` varchar(255) NOT NULL,
  `ip_org` varchar(255) NOT NULL,
  `ip_asnum` int(11) NOT NULL,
  `ip_user_type` varchar(255) NOT NULL,
  `ip_country_confidence` varchar(3) NOT NULL,
  `ip_region_confidence` varchar(3) NOT NULL,
  `ip_city_confidence` varchar(3) NOT NULL,
  `ip_postal_confidence` varchar(3) NOT NULL,
  `ip_postal_code` varchar(10) NOT NULL,
  `ip_accuracy_radius` int(11) NOT NULL,
  `ip_net_speed_cell` varchar(255) NOT NULL,
  `ip_metro_code` int(3) NOT NULL,
  `ip_area_code` int(3) NOT NULL,
  `ip_time_zone` varchar(255) NOT NULL,
  `ip_region_name` varchar(255) NOT NULL,
  `ip_domain` varchar(255) NOT NULL,
  `ip_country_name` varchar(255) NOT NULL,
  `ip_continent_code` varchar(2) NOT NULL,
  `ip_corporate_proxy` varchar(3) NOT NULL,
  `anonymous_proxy` varchar(3) NOT NULL,
  `proxy_score` int(3) NOT NULL,
  `is_trans_proxy` varchar(3) NOT NULL,
  `free_mail` varchar(3) NOT NULL,
  `carder_email` varchar(3) NOT NULL,
  `high_risk_username` varchar(3) NOT NULL,
  `high_risk_password` varchar(3) NOT NULL,
  `bin_match` varchar(10) NOT NULL,
  `bin_country` varchar(2) NOT NULL,
  `bin_name_match` varchar(3) NOT NULL,
  `bin_name` varchar(255) NOT NULL,
  `bin_phone_match` varchar(3) NOT NULL,
  `bin_phone` varchar(32) NOT NULL,
  `customer_phone_in_billing_location` varchar(8) NOT NULL,
  `ship_forward` varchar(3) NOT NULL,
  `city_postal_match` varchar(3) NOT NULL,
  `ship_city_postal_match` varchar(3) NOT NULL,
  `score` decimal(10,5) NOT NULL,
  `explanation` text NOT NULL,
  `risk_score` decimal(10,5) NOT NULL,
  `queries_remaining` int(11) NOT NULL,
  `maxmind_id` varchar(8) NOT NULL,
  `error` text NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sh_order_history`
--

CREATE TABLE IF NOT EXISTS `sh_order_history` (
`order_history_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(5) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_order_history`
--

INSERT INTO `sh_order_history` (`order_history_id`, `order_id`, `order_status_id`, `notify`, `comment`, `date_added`) VALUES
(8, 6, 1, 1, '', '2014-07-02 14:22:45');

-- --------------------------------------------------------

--
-- Table structure for table `sh_order_option`
--

CREATE TABLE IF NOT EXISTS `sh_order_option` (
`order_option_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_order_option`
--

INSERT INTO `sh_order_option` (`order_option_id`, `order_id`, `order_product_id`, `product_option_id`, `product_option_value_id`, `name`, `value`, `type`) VALUES
(1, 1, 1, 229, 27, 'Cores', 'Vermelha', 'select'),
(2, 1, 1, 228, 24, 'Size', '60 x 60', 'select'),
(6, 10, 14, 250, 99, 'Enchimento', '30 x 60 Com Enchimento', 'select'),
(5, 6, 7, 274, 180, 'Enchimento', '50 x 50 Sem Enchimento', 'select'),
(7, 13, 17, 331, 412, 'Cúpula ', 'Cúpula Grande - 25x25cm ', 'select'),
(8, 14, 18, 331, 412, 'Cúpula ', 'Cúpula Grande - 25x25cm ', 'select');

-- --------------------------------------------------------

--
-- Table structure for table `sh_order_product`
--

CREATE TABLE IF NOT EXISTS `sh_order_product` (
`order_product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_order_product`
--

INSERT INTO `sh_order_product` (`order_product_id`, `order_id`, `product_id`, `name`, `model`, `quantity`, `price`, `total`, `tax`, `reward`) VALUES
(1, 1, 64, 'Almofada  Circunferência', '015', 1, '220.0000', '220.0000', '0.0000', 0),
(8, 7, 267, 'Conjunto de almofadas 5- 50x50cm', '2024', 1, '330.0000', '330.0000', '0.0000', 0),
(9, 7, 266, 'Conjunto de almofadas11 - 50x50cm e 30x60cm', '2023', 1, '349.0000', '349.0000', '0.0000', 0),
(4, 4, 269, 'Luminária de Teto', '2027', 1, '400.0000', '400.0000', '0.0000', 0),
(7, 6, 94, 'Camurça Floral Laranja 50x50cm - 40x60cm - 30x60cm', '047', 1, '140.0000', '140.0000', '0.0000', 0),
(6, 6, 222, 'Bolsa Transversal 4', '151', 1, '240.0000', '240.0000', '0.0000', 0),
(10, 8, 267, 'Conjunto de almofadas 5- 50x50cm', '2024', 1, '330.0000', '330.0000', '0.0000', 0),
(11, 8, 266, 'Conjunto de almofadas11 - 50x50cm e 30x60cm', '2023', 1, '349.0000', '349.0000', '0.0000', 0),
(19, 15, 260, 'Conjunto de almofadas 6 - 50x50cm', '2010', 1, '243.0000', '243.0000', '0.0000', 0),
(14, 10, 75, 'Algodão Floral Turquesa 30x60cm ', '026', 1, '100.0000', '100.0000', '0.0000', 0),
(15, 11, 179, 'Necessarie Bouquet Pink - 15x24cm', '112', 1, '34.0000', '34.0000', '0.0000', 0),
(16, 12, 179, 'Necessarie Bouquet Pink - 15x24cm', '112', 1, '34.0000', '34.0000', '0.0000', 0),
(17, 13, 238, 'Cúpula Geo Turquesa 25x25cm - 18x18cm', '205', 1, '98.0000', '98.0000', '0.0000', 0),
(18, 14, 238, 'Cúpula Geo Turquesa 25x25cm - 18x18cm', '205', 1, '98.0000', '98.0000', '0.0000', 0),
(20, 16, 150, 'Necessarie Copo de Leite Roxo - 15x24cm', '109', 1, '34.0000', '34.0000', '0.0000', 0),
(21, 16, 155, 'Necessarie Top Azul - 15x24cm', '113', 1, '34.0000', '34.0000', '0.0000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sh_order_recurring`
--

CREATE TABLE IF NOT EXISTS `sh_order_recurring` (
`order_recurring_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `status` tinyint(4) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `profile_name` varchar(255) NOT NULL,
  `profile_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `profile_reference` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sh_order_recurring_transaction`
--

CREATE TABLE IF NOT EXISTS `sh_order_recurring_transaction` (
`order_recurring_transaction_id` int(11) NOT NULL,
  `order_recurring_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sh_order_status`
--

CREATE TABLE IF NOT EXISTS `sh_order_status` (
`order_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_order_status`
--

INSERT INTO `sh_order_status` (`order_status_id`, `language_id`, `name`) VALUES
(2, 1, 'Processing'),
(3, 1, 'Shipped'),
(7, 1, 'Canceled'),
(5, 1, 'Complete'),
(8, 1, 'Denied'),
(9, 1, 'Canceled Reversal'),
(10, 1, 'Failed'),
(11, 1, 'Refunded'),
(12, 1, 'Reversed'),
(13, 1, 'Chargeback'),
(1, 1, 'Pending'),
(16, 1, 'Voided'),
(15, 1, 'Processed'),
(14, 1, 'Expired'),
(2, 2, 'Processing'),
(3, 2, 'Shipped'),
(7, 2, 'Canceled'),
(5, 2, 'Complete'),
(8, 2, 'Denied'),
(9, 2, 'Canceled Reversal'),
(10, 2, 'Failed'),
(11, 2, 'Refunded'),
(12, 2, 'Reversed'),
(13, 2, 'Chargeback'),
(1, 2, 'Pending'),
(16, 2, 'Voided'),
(15, 2, 'Processed'),
(14, 2, 'Expired'),
(17, 1, 'Awaiting payment'),
(18, 1, 'Paid'),
(19, 1, 'Dispute');

-- --------------------------------------------------------

--
-- Table structure for table `sh_order_total`
--

CREATE TABLE IF NOT EXISTS `sh_order_total` (
`order_total_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_order_total`
--

INSERT INTO `sh_order_total` (`order_total_id`, `order_id`, `code`, `title`, `text`, `value`, `sort_order`) VALUES
(1, 1, 'sub_total', 'Sub-Total', 'R$ 220,00', '220.0000', 1),
(2, 1, 'shipping', 'SEDEX. Entrega em 11 dias úteis', 'R$ 14,10', '14.1000', 3),
(3, 1, 'total', 'Total', 'R$ 234,10', '234.1000', 9),
(22, 8, 'sub_total', 'Sub-Total', 'R$ 679,00', '679.0000', 1),
(21, 7, 'total', 'Total', 'R$ 692,70', '692.7000', 9),
(19, 7, 'sub_total', 'Sub-Total', 'R$ 679,00', '679.0000', 1),
(20, 7, 'shipping', 'PAC. Entrega em 13 dias úteis', 'R$ 13,70', '13.7000', 3),
(23, 8, 'shipping', 'PAC. Entrega em 13 dias úteis', 'R$ 13,70', '13.7000', 3),
(10, 4, 'sub_total', 'Sub-Total', 'R$ 400,00', '400.0000', 1),
(11, 4, 'shipping', 'PAC. Entrega em 13 dias úteis', 'R$ 13,70', '13.7000', 3),
(12, 4, 'total', 'Total', 'R$ 413,70', '413.7000', 9),
(44, 15, 'shipping', 'Retirar na loja', 'R$ 0,00', '0.0000', 3),
(24, 8, 'total', 'Total', 'R$ 692,70', '692.7000', 9),
(43, 15, 'sub_total', 'Sub-Total', 'R$ 243,00', '243.0000', 1),
(18, 6, 'total', 'Total', 'R$ 416,50', '416.5000', 9),
(16, 6, 'sub_total', 'Sub-Total', 'R$ 380,00', '380.0000', 1),
(17, 6, 'shipping', 'PAC. Entrega em 13 dias úteis', 'R$ 36,50', '36.5000', 3),
(28, 10, 'sub_total', 'Sub-Total', 'R$ 100,00', '100.0000', 1),
(29, 10, 'shipping', 'Retirar na loja', 'R$ 0,00', '0.0000', 3),
(30, 10, 'total', 'Total', 'R$ 100,00', '100.0000', 9),
(31, 11, 'sub_total', 'Sub-Total', 'R$ 34,00', '34.0000', 1),
(32, 11, 'shipping', 'SEDEX. Entrega em 11 dias úteis', 'R$ 14,00', '14.0000', 3),
(33, 11, 'total', 'Total', 'R$ 48,00', '48.0000', 9),
(34, 12, 'sub_total', 'Sub-Total', 'R$ 34,00', '34.0000', 1),
(35, 12, 'shipping', 'SEDEX. Entrega em 11 dias úteis', 'R$ 14,00', '14.0000', 3),
(36, 12, 'total', 'Total', 'R$ 48,00', '48.0000', 9),
(37, 13, 'sub_total', 'Sub-Total', 'R$ 98,00', '98.0000', 1),
(38, 13, 'shipping', 'PAC. Entrega em 14 dias úteis', 'R$ 15,50', '15.5000', 3),
(39, 13, 'total', 'Total', 'R$ 113,50', '113.5000', 9),
(40, 14, 'sub_total', 'Sub-Total', 'R$ 98,00', '98.0000', 1),
(41, 14, 'shipping', 'PAC. Entrega em 14 dias úteis', 'R$ 15,50', '15.5000', 3),
(42, 14, 'total', 'Total', 'R$ 113,50', '113.5000', 9),
(45, 15, 'total', 'Total', 'R$ 243,00', '243.0000', 9),
(46, 16, 'sub_total', 'Sub-Total', 'R$ 68,00', '68.0000', 1),
(47, 16, 'shipping', 'PAC. Entrega em 14 dias úteis', 'R$ 18,70', '18.7000', 3),
(48, 16, 'total', 'Total', 'R$ 86,70', '86.7000', 9);

-- --------------------------------------------------------

--
-- Table structure for table `sh_order_voucher`
--

CREATE TABLE IF NOT EXISTS `sh_order_voucher` (
`order_voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sh_product`
--

CREATE TABLE IF NOT EXISTS `sh_product` (
`product_id` int(11) NOT NULL,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(13) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL,
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `viewed` int(5) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=326 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_product`
--

INSERT INTO `sh_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `date_added`, `date_modified`, `viewed`) VALUES
(98, '051', '', '', '', '', '', '', 'São Paulo', 5, 7, 'data/Almofadas/CRU-JANETE-50X50.JPG', 11, 1, '130.0000', 0, 0, '2014-05-21', '900.00000000', 2, '50.00000000', '50.00000000', '15.00000000', 1, 1, 1, 1, 1, '2014-05-22 11:26:16', '2015-04-06 20:14:40', 4432),
(143, '100', '', '', '', '', '', '', 'São Paulo', 10, 7, 'data/Produtos/Tecidos Novos/copo-de-leite-azul.jpg', 11, 1, '160.0000', 0, 0, '2014-06-10', '0.00000000', 2, '140.00000000', '100.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-06-11 11:52:44', '2015-03-22 20:06:59', 1934),
(64, '015', '', '', '', '', '', '', 'São Paulo', 6, 7, 'data/Almofadas/turquesa-geo.jpg', 11, 1, '160.0000', 0, 0, '2014-04-21', '900.00000000', 2, '60.00000000', '30.00000000', '15.00000000', 1, 1, 1, 1, 0, '2014-04-22 17:10:57', '2015-03-20 17:53:49', 4655),
(292, '024', '', '', '', '', '', '', 'São Paulo', 10, 7, 'data/ALGODÃO E LINHO.jpg', 11, 1, '130.0000', 0, 0, '2015-03-19', '680000.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2015-03-20 15:42:52', '2015-04-06 18:00:20', 1),
(141, '098', '', '', '', '', '', '', 'São Paulo', 3, 7, 'data/Produtos/Tecidos Novos/LINHO-SAVANA.jpg', 11, 1, '160.0000', 0, 0, '2014-06-10', '0.00000000', 2, '140.00000000', '100.00000000', '0.00000000', 1, 1, 1, 1, 0, '2014-06-11 11:36:29', '2015-03-20 18:06:32', 1679),
(142, '099', '', '', '', '', '', '', 'São Paulo', 3, 7, 'data/Produtos/Tecidos Novos/Imagem-(133).jpg', 11, 1, '160.0000', 0, 0, '2014-06-10', '0.00000000', 2, '140.00000000', '100.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-06-11 11:44:07', '2015-03-25 15:52:08', 1610),
(75, '026', '', '', '', '', '', '', 'São Paulo', 4, 7, 'data/Almofadas/azul-floral.jpg', 11, 1, '70.0000', 0, 0, '2014-05-19', '898.00000000', 2, '60.00000000', '30.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-05-20 17:05:39', '2015-04-06 17:08:49', 4069),
(77, '028', '', '', '', '', '', '', 'São Paulo', 4, 7, 'data/Almofadas/01-01.jpg', 11, 1, '70.0000', 0, 0, '2014-05-20', '750.00000000', 2, '60.00000000', '30.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-05-21 10:03:13', '2015-04-06 17:27:26', 4225),
(147, '105', '', '', '', '', '', '', 'São Paulo', 4, 7, 'data/Almofadas/VERMELHO-REPOLHO--30X60,-ALGODÃO-,-POR-FAVOR-TRATAR-O-FUNDO-E-CORTAR-AS-PONTAS-VE-SE-NA--FOTO-PARA-EQUILIBRAR.jpg', 11, 1, '70.0000', 0, 0, '2014-06-10', '636.00000000', 2, '30.00000000', '60.00000000', '15.00000000', 1, 1, 1, 1, 1, '2014-06-11 13:36:09', '2015-04-06 17:35:03', 1092),
(145, '103', '', '', '', '', '', '', 'São Paulo', 3, 7, 'data/Produtos/Tecidos Novos/marrom-hortência.jpg', 11, 1, '160.0000', 0, 0, '2014-06-10', '0.00000000', 1, '100.00000000', '140.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-06-11 12:01:15', '2015-03-25 15:21:07', 1580),
(115, '068', '', '', '', '', '', '', '', 5, 7, 'data/Almofadas/para-tratar2.jpg', 11, 1, '130.0000', 0, 0, '2014-06-01', '900.00000000', 2, '50.00000000', '50.00000000', '15.00000000', 1, 1, 1, 1, 1, '2014-06-02 09:16:31', '2015-04-06 20:11:01', 3711),
(78, '029', '', '', '', '', '', '', 'São Paulo', 4, 7, 'data/Almofadas/P1190715.jpg', 11, 1, '110.0000', 0, 0, '2014-05-20', '636.00000000', 2, '50.00000000', '50.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-05-21 10:13:50', '2015-04-06 17:26:46', 4218),
(74, '025', '', '', '', '', '', '', 'São Paulo', 4, 7, 'data/Almofadas/BRANCA-FLORAL.jpg', 11, 1, '70.0000', 0, 0, '2014-05-19', '982.00000000', 2, '60.00000000', '30.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-05-20 10:54:45', '2015-04-06 17:07:41', 4390),
(90, '041', '', '', '', '', '', '', 'São Paulo', 4, 7, 'data/Almofadas/CRU-BOUQUET.jpg', 11, 1, '130.0000', 0, 0, '2014-05-21', '645.00000000', 2, '50.00000000', '50.00000000', '15.00000000', 1, 1, 1, 1, 1, '2014-05-22 08:59:33', '2015-04-06 19:41:50', 4177),
(66, '017', '', '', '', '', '', '', 'São Paulo', 5, 7, 'data/Almofadas/ALMOFADAS-8.jpg', 11, 1, '160.0000', 0, 0, '2014-04-22', '900.00000000', 2, '50.00000000', '50.00000000', '15.00000000', 1, 1, 1, 1, 0, '2014-04-23 09:25:47', '2015-03-20 17:54:27', 4009),
(67, '018', '', '', '', '', '', '', 'São Paulo', 5, 7, 'data/Almofadas/P1180758.JPG', 11, 1, '160.0000', 0, 0, '2014-04-23', '900.00000000', 2, '50.00000000', '50.00000000', '15.00000000', 1, 1, 1, 1, 1, '2014-04-24 11:54:31', '2015-04-06 16:30:17', 4067),
(76, '027', '', '', '', '', '', '', 'São Paulo', 4, 7, 'data/jess.jpg', 11, 1, '70.0000', 0, 0, '2014-05-20', '750.00000000', 2, '60.00000000', '30.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-05-21 09:51:56', '2015-04-06 17:31:32', 4534),
(71, '022', '', '', '', '', '', '', 'São Paulo', 3, 7, 'data/Almofadas/bouquet.jpg', 11, 1, '130.0000', 0, 0, '2014-04-23', '645.00000000', 2, '60.00000000', '30.00000000', '15.00000000', 1, 1, 1, 1, 1, '2014-04-24 14:49:33', '2015-04-06 20:06:15', 4655),
(73, '024', '', '', '', '', '', '', '', 5, 7, 'data/Almofadas/P1180768.JPG', 11, 1, '130.0000', 0, 0, '2014-04-23', '645.00000000', 2, '60.00000000', '30.00000000', '15.00000000', 1, 1, 1, 1, 1, '2014-04-24 15:42:58', '2015-04-06 20:02:50', 3767),
(79, '030', '', '', '', '', '', '', 'São Paulo', 4, 7, 'data/Almofadas/2-Folhas-Azul.jpg', 11, 1, '70.0000', 0, 0, '2014-05-20', '750.00000000', 2, '60.00000000', '30.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-05-21 10:27:14', '2015-04-06 17:31:14', 4284),
(80, '031', '', '', '', '', '', '', 'São Paulo', 4, 7, 'data/Almofadas/Folhas-Bege.jpg', 11, 1, '70.0000', 0, 0, '2014-05-20', '750.00000000', 2, '60.00000000', '30.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-05-21 10:30:52', '2015-04-06 17:22:23', 4406),
(81, '032', '', '', '', '', '', '', 'São Paulo', 4, 7, 'data/Almofadas/FloralVerde.jpg', 11, 1, '110.0000', 0, 0, '2014-05-20', '898.00000000', 2, '50.00000000', '50.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-05-21 10:37:04', '2015-04-06 17:11:58', 4688),
(82, '033', '', '', '', '', '', '', 'São Paulo', 4, 7, 'data/Almofadas/AZUL-REPOLHO-50X50-CM.jpg', 11, 1, '110.0000', 0, 0, '2014-05-20', '1.00000000', 2, '50.00000000', '50.00000000', '0.00000000', 1, 1, 1, 1, 0, '2014-05-21 10:40:55', '2015-04-06 17:30:50', 4209),
(83, '034', '', '', '', '', '', '', 'São Paulo', 4, 7, 'data/Almofadas/ALMOFADA-FOLHAGE,-COM-MAIS-GAMA.jpg', 11, 1, '110.0000', 0, 0, '2014-05-20', '898.00000000', 2, '50.00000000', '50.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-05-21 10:45:01', '2015-04-06 17:18:18', 4340),
(84, '035', '', '', '', '', '', '', '', 4, 7, 'data/Almofadas/branco-jessup-50x50-cotton.jpg', 11, 1, '110.0000', 0, 0, '2014-05-20', '898.00000000', 2, '50.00000000', '50.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-05-21 10:52:03', '2015-04-06 17:24:23', 4184),
(85, '036', '', '', '', '', '', '', 'São Paulo', 4, 7, 'data/Almofadas/vermlho-floral-dar-um-rotata-para-enquadrar-50x50-cotton.jpg', 11, 1, '110.0000', 0, 0, '2014-05-20', '898.00000000', 2, '50.00000000', '50.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-05-21 11:26:34', '2015-04-06 17:31:50', 4744),
(86, '036', '', '', '', '', '', '', 'São Paulo', 4, 7, 'data/cotton bege.jpg', 11, 1, '110.0000', 0, 0, '2014-05-20', '636.00000000', 2, '50.00000000', '50.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-05-21 12:06:21', '2015-04-06 18:18:18', 4188),
(87, '037', '', '', '', '', '', '', 'São Paulo', 4, 7, 'data/Almofadas/0-0.jpg', 11, 1, '110.0000', 0, 0, '2014-05-20', '898.00000000', 2, '50.00000000', '50.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-05-21 15:03:03', '2015-04-06 17:25:11', 4357),
(89, '040', '', '', '', '', '', '', 'São Paulo', 4, 7, 'data/Almofadas/Primavera-Laranja,--tirar-fundo.jpg', 11, 1, '70.0000', 0, 0, '2014-05-21', '750.00000000', 2, '60.00000000', '30.00000000', '15.00000000', 1, 1, 1, 1, 1, '2014-05-22 08:46:21', '2015-04-06 17:26:20', 3907),
(91, '042', '', '', '', '', '', '', '', 5, 7, 'data/Almofadas/P1180702.JPG', 11, 1, '140.0000', 0, 0, '2014-05-21', '750.00000000', 1, '60.00000000', '30.00000000', '15.00000000', 1, 1, 1, 1, 0, '2014-05-22 09:04:34', '2015-03-20 17:51:22', 4317),
(92, '043', '', '', '', '', '', '', 'São Paulo', 5, 7, 'data/Almofadas/P1180680.JPG', 11, 1, '160.0000', 0, 0, '2014-05-21', '900.00000000', 2, '50.00000000', '50.00000000', '15.00000000', 1, 1, 1, 1, 0, '2014-05-22 09:20:25', '2015-03-20 17:50:48', 4375),
(93, '046', '', '', '', '', '', '', 'São Paulo', 5, 7, 'data/Almofadas/000ROXO-GEO.jpg', 11, 1, '130.0000', 0, 0, '2014-05-21', '900.00000000', 2, '50.00000000', '50.00000000', '15.00000000', 1, 1, 1, 1, 1, '2014-05-22 09:25:07', '2015-04-06 20:12:19', 4253),
(95, '048', '', '', '', '', '', '', 'São Paulo', 5, 7, 'data/Almofadas/P1180792.JPG', 11, 1, '130.0000', 0, 0, '2014-05-21', '645.00000000', 2, '50.00000000', '50.00000000', '15.00000000', 1, 1, 1, 1, 1, '2014-05-22 09:37:50', '2015-04-06 20:04:45', 4160),
(96, '049', '', '', '', '', '', '', 'São Paulo', 5, 7, 'data/Almofadas/P1180763.JPG', 11, 1, '130.0000', 0, 0, '2014-05-21', '645.00000000', 2, '50.00000000', '50.00000000', '15.00000000', 1, 1, 1, 1, 1, '2014-05-22 09:41:38', '2015-04-06 20:01:08', 4111),
(287, '026', '', '', '', '', '', '', 'São Paulo', 10, 7, 'data/LINHO E ALGODÃO SEDA.jpg', 11, 1, '130.0000', 0, 0, '2015-03-19', '680000.00000000', 2, '50000.00000000', '50000.00000000', '18000.00000000', 1, 1, 1, 1, 1, '2015-03-20 14:44:12', '2015-04-06 17:52:16', 1),
(100, '053', '', '', '', '', '', '', 'São Paulo', 5, 7, 'data/Almofadas/ALMOFADAS1.jpg', 11, 1, '130.0000', 0, 0, '2014-05-26', '900.00000000', 2, '50.00000000', '50.00000000', '15.00000000', 1, 1, 1, 1, 1, '2014-05-27 13:40:09', '2015-04-06 20:13:17', 4084),
(116, '069', '', '', '', '', '', '', '', 5, 7, 'data/Almofadas/CATÁLOGO-DE-ALMOFADAS-ARTE-TÊXTIL.jpg', 11, 1, '160.0000', 0, 0, '2014-06-01', '900.00000000', 2, '50.00000000', '50.00000000', '15.00000000', 1, 1, 1, 1, 0, '2014-06-02 09:43:33', '2015-03-20 17:55:25', 4058),
(102, '055', '', '', '', '', '', '', 'São Paulo', 5, 7, 'data/Almofadas/P1180778.JPG', 11, 1, '160.0000', 0, 0, '2014-05-26', '900.00000000', 2, '50.00000000', '50.00000000', '15.00000000', 1, 1, 1, 1, 0, '2014-05-27 14:00:01', '2015-03-20 17:54:03', 4158),
(106, '059', '', '', '', '', '', '', '', 4, 7, 'data/Almofadas/ALMOFADAS-2.jpg', 11, 1, '130.0000', 0, 0, '2014-05-26', '645.00000000', 2, '50.00000000', '50.00000000', '15.00000000', 1, 1, 1, 1, 1, '2014-05-27 14:53:12', '2015-04-06 18:19:26', 4133),
(108, '061', '', '', '', '', '', '', 'São Paulo', 5, 7, 'data/Almofadas/linho-2.jpg', 11, 1, '148.0000', 0, 0, '2014-05-26', '636.00000000', 2, '30.00000000', '60.00000000', '15.00000000', 1, 1, 1, 1, 0, '2014-05-27 15:30:18', '2015-03-20 18:01:25', 3956),
(109, '062', '', '', '', '', '', '', 'São Paulo', 2, 7, 'data/Almofadas/panama-2.jpg', 11, 1, '168.0000', 0, 0, '2014-05-26', '636.00000000', 2, '60.00000000', '30.00000000', '15.00000000', 1, 1, 1, 1, 0, '2014-05-27 15:58:22', '2015-03-20 18:07:40', 3913),
(284, '023', '', '', '', '', '', '', 'São Paulo', 10, 5, 'data/ALGODÃO E LINHO GIRASSOL.jpg', 11, 1, '130.0000', 0, 0, '2015-03-19', '680000.00000000', 1, '50000.00000000', '50000.00000000', '18000.00000000', 1, 1, 1, 1, 1, '2015-03-20 14:29:22', '2015-04-06 17:53:03', 0),
(285, '024', '', '', '', '', '', '', 'São Paulo', 10, 5, 'data/ALGODÃO E LINHO.jpg', 0, 1, '134.0000', 0, 0, '2015-03-19', '680000.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2015-03-20 14:34:47', '2015-03-20 14:41:01', 0),
(286, '025', '', '', '', '', '', '', 'São Paulo', 10, 7, 'data/aLGODÃO SEDA E LINHO GIRASSOL.jpg', 11, 1, '130.0000', 0, 0, '2015-03-19', '680000.00000000', 1, '50000.00000000', '50000.00000000', '18000.00000000', 1, 1, 1, 1, 1, '2015-03-20 14:39:52', '2015-04-06 17:53:59', 1),
(137, '096', '', '', '', '', '', '', '', 5, 7, 'data/Almofadas/linho.jpg', 11, 1, '168.0000', 0, 0, '2014-06-08', '636.00000000', 2, '50.00000000', '50.00000000', '15.00000000', 1, 1, 1, 1, 0, '2014-06-09 16:43:22', '2015-03-20 18:06:49', 3118),
(138, '075', '', '', '', '', '', '', 'São Paulo', 2, 7, 'data/Almofadas/0-panama.png', 11, 1, '148.0000', 0, 0, '2014-06-08', '482.00000000', 2, '30.00000000', '60.00000000', '15.00000000', 1, 1, 1, 1, 0, '2014-06-09 16:52:08', '2015-03-20 18:07:23', 1182),
(136, '095', '', '', '', '', '', '', 'São Paulo', 8, 7, 'data/Produtos/Tecidos Novos/FLOR-AZUL.jpg', 11, 1, '160.0000', 0, 0, '2014-06-08', '0.00000000', 2, '140.00000000', '100.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-06-09 14:11:53', '2015-03-22 20:06:43', 1870),
(117, '073', '', '', '', '', '', '', 'São Paulo', 3, 7, 'data/Produtos/Tecidos Novos/BouquetCastanho.jpg', 11, 1, '160.0000', 0, 0, '2014-06-04', '0.00000000', 2, '1.00000000', '140.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-06-05 15:48:48', '2014-07-14 13:18:27', 1719),
(118, '074', '', '', '', '', '', '', 'São Paulo', 5, 7, 'data/Produtos/Tecidos Novos/BouquetBranco.jpg', 11, 1, '160.0000', 0, 0, '2014-06-04', '645.00000000', 2, '100.00000000', '140.00000000', '0.00000000', 1, 1, 1, 100, 0, '2014-06-05 15:52:01', '2015-03-25 17:56:49', 1782),
(119, '075', '', '', '', '', '', '', 'São Paulo', 10, 7, 'data/Produtos/Tecidos Novos/AMARELO-COPO-DE-LEITE.jpg', 11, 1, '160.0000', 0, 0, '2014-06-04', '0.00000000', 2, '100.00000000', '140.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-06-05 15:54:24', '2015-03-22 20:06:27', 1892),
(121, '077', '', '', '', '', '', '', 'São Paulo', 3, 7, 'data/Produtos/Tecidos Novos/FloralLaranja.jpg', 11, 1, '160.0000', 0, 0, '2014-06-04', '0.00000000', 2, '100.00000000', '140.00000000', '0.00000000', 1, 1, 1, 1, 0, '2014-06-05 16:01:24', '2014-10-28 18:05:53', 1557),
(122, '078', '', '', '', '', '', '', 'São Paulo', 5, 7, 'data/Produtos/Tecidos Novos/FLORAL--UVACLARO.jpg', 11, 1, '160.0000', 0, 0, '2014-06-04', '0.00000000', 1, '100.00000000', '140.00000000', '0.00000000', 1, 1, 1, 1, 0, '2014-06-05 16:03:51', '2015-03-20 17:57:39', 1912),
(123, '079', '', '', '', '', '', '', 'São Paulo', 5, 7, 'data/Produtos/Tecidos Novos/FloralTurquesa.jpg', 11, 1, '160.0000', 0, 0, '2014-06-04', '0.00000000', 2, '100.00000000', '140.00000000', '0.00000000', 1, 1, 1, 1, 0, '2014-06-05 16:06:10', '2015-03-20 17:55:59', 1967),
(124, '080', '', '', '', '', '', '', 'São Paulo', 10, 7, 'data/Produtos/Tecidos Novos/GEO-ROXO-1.jpg', 11, 1, '160.0000', 0, 0, '2014-06-04', '0.00000000', 2, '100.00000000', '140.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-06-05 16:08:39', '2015-03-25 15:10:32', 2071),
(125, '081', '', '', '', '', '', '', 'São Paulo', 5, 7, 'data/Produtos/Tecidos Novos/onda-laranja.jpg', 11, 1, '160.0000', 0, 0, '2014-06-04', '0.00000000', 2, '100.00000000', '140.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-06-05 16:16:52', '2015-03-25 15:47:48', 744),
(126, '082', '', '', '', '', '', '', 'São Paulo', 5, 7, 'data/Produtos/Tecidos Novos/ONDA-VERDE.jpg', 11, 1, '160.0000', 0, 0, '2014-06-04', '0.00000000', 1, '100.00000000', '140.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-06-05 16:18:54', '2015-03-25 15:46:05', 764),
(127, '083', '', '', '', '', '', '', 'São Paulo', 3, 7, 'data/Produtos/Tecidos Novos/OTOMANO-CASTANHO.jpg', 11, 1, '160.0000', 0, 0, '2014-06-04', '0.00000000', 1, '100.00000000', '140.00000000', '0.00000000', 1, 1, 1, 1, 0, '2014-06-05 16:53:52', '2015-03-20 18:06:16', 746),
(128, '084', '', '', '', '', '', '', 'São Paulo', 5, 7, 'data/Produtos/Tecidos Novos/OTOMANO-VERMELHO.jpg', 11, 1, '160.0000', 0, 0, '2014-06-05', '0.00000000', 2, '100.00000000', '140.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-06-06 10:16:24', '2015-03-25 16:27:43', 687),
(276, '015', '', '', '', '', '', '', 'São Paulo', 10, 7, 'data/ALGODÃO AMARELO.jpg', 11, 1, '130.0000', 0, 0, '2015-03-18', '898.00000000', 1, '50000.00000000', '50000.00000000', '18000.00000000', 1, 1, 1, 1, 1, '2015-03-19 15:50:17', '2015-04-06 17:53:16', 1),
(130, '086', '', '', '', '', '', '', 'São Paulo', 3, 7, 'data/Produtos/Tecidos Novos/TOP--laranja.jpg', 11, 1, '160.0000', 0, 0, '2014-06-05', '0.00000000', 2, '100.00000000', '140.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-06-06 10:28:30', '2015-03-25 16:59:43', 1633),
(131, '087', '', '', '', '', '', '', 'São Paulo', 3, 7, 'data/Produtos/Tecidos Novos/P1200086.jpg', 11, 1, '160.0000', 0, 0, '2014-06-05', '0.00000000', 2, '100.00000000', '140.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-06-06 10:31:09', '2015-03-25 17:00:26', 1614),
(132, '088', '', '', '', '', '', '', 'São Paulo', 8, 7, 'data/Produtos/Tecidos Novos/NOVA-----VERDE-ALLIUM.jpg', 11, 1, '160.0000', 0, 0, '2014-06-05', '0.00000000', 2, '100.00000000', '140.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-06-06 10:34:33', '2015-04-06 17:36:19', 752),
(170, '032', '', '', '', '', '', '', 'São Paulo', 4, 7, 'data/Almofadas/50x50-algodão-vermelho-floral-e-laranja-jardim.jpg', 11, 1, '120.0000', 0, 0, '2014-05-20', '900.00000000', 2, '50.00000000', '50.00000000', '0.00000000', 1, 1, 1, 1, 0, '2014-06-16 15:19:40', '2015-04-06 17:16:54', 3117),
(288, '027', '', '', '', '', '', '', '', 10, 7, 'data/ALMOFADAS LINHO E ALGODÃO.jpg', 11, 1, '130.0000', 0, 0, '2015-03-19', '680000.00000000', 1, '50000.00000000', '50000.00000000', '18000.00000000', 1, 1, 1, 1, 1, '2015-03-20 14:47:43', '2015-04-06 18:00:48', 1),
(135, '094', '', '', '', '', '', '', 'São Paulo', 3, 7, 'data/Produtos/Tecidos Novos/cru-janete.jpg', 11, 1, '160.0000', 0, 0, '2014-06-08', '0.00000000', 2, '100.00000000', '140.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-06-09 10:51:30', '2015-03-25 15:13:46', 1701),
(133, '92', '', '', '', '', '', '', 'São Paulo', 10, 7, 'data/Produtos/Tecidos Novos/P1200791.jpg', 11, 1, '160.0000', 0, 0, '2014-06-08', '0.00000000', 2, '100.00000000', '140.00000000', '0.00000000', 1, 1, 1, 1, 0, '2014-06-09 09:47:57', '2015-03-20 17:56:14', 1610),
(134, '093', '', '', '', '', '', '', 'São Paulo', 5, 7, 'data/Produtos/Tecidos Novos/bege-flor.jpg', 11, 1, '160.0000', 0, 0, '2014-06-08', '0.00000000', 2, '100.00000000', '140.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-06-09 09:50:21', '2015-03-23 21:13:43', 1850),
(148, '106', '', '', '', '', '', '', 'São Paulo', 5, 7, 'data/Almofadas/AZUL-COPO-50X50.jpg', 11, 1, '130.0000', 0, 0, '2014-06-10', '645.00000000', 2, '50.00000000', '50.00000000', '15.00000000', 1, 1, 1, 1, 1, '2014-06-11 14:05:12', '2015-04-06 20:02:03', 2785),
(295, '018', '', '', '', '', '', '', 'São Paulo', 10, 7, 'data/QUEBRA LOSANGO ALGODÃO.jpg', 11, 1, '92.0000', 0, 0, '2015-03-18', '6000000.00000000', 1, '300000.00000000', '600000.00000000', '18000.00000000', 1, 1, 1, 1, 1, '2015-03-20 15:46:59', '2015-04-06 17:57:50', 5),
(296, '016', '', '', '', '', '', '', '', 10, 7, 'data/QUEBRA-RIM ALGODÃO AMARELO.jpg', 11, 1, '92.0000', 0, 0, '2015-03-18', '6000000.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2015-03-20 15:46:59', '2015-04-06 18:03:20', 6),
(280, '019', '', '', '', '', '', '', 'São Paulo', 10, 7, 'data/almofada ALGODÃO - GIRASSOL  50X50.jpg', 11, 1, '130.0000', 0, 0, '2015-03-18', '680000.00000000', 2, '50000.00000000', '50000.00000000', '18000.00000000', 1, 1, 1, 1, 1, '2015-03-19 16:57:44', '2015-04-06 18:02:21', 1),
(281, '020', '', '', '', '', '', '', 'São Paulo', 1, 7, 'data/QUEBRA RIM GIRASSOL.jpg', 11, 1, '92.0000', 0, 0, '2015-03-18', '680000.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2015-03-19 17:14:12', '2015-04-06 18:01:50', 0),
(282, '021', '', '', '', '', '', '', '', 10, 7, 'data/LINHO.jpg', 11, 1, '130.0000', 0, 0, '2015-03-18', '680000.00000000', 2, '50000.00000000', '50000.00000000', '18000.00000000', 1, 1, 1, 1, 1, '2015-03-19 17:17:26', '2015-04-06 18:02:50', 0),
(283, '022', '', '', '', '', '', '', 'São Paulo', 10, 7, 'data/QUEBRA ROSÁCEA.jpg', 11, 1, '92.0000', 0, 0, '2015-03-18', '10000.00000000', 2, '300000.00000000', '600000.00000000', '18000.00000000', 1, 1, 1, 1, 1, '2015-03-19 17:21:29', '2015-04-06 18:03:04', 0),
(322, 'Kit 4 - Jogo americano Remo', '', '', '', '', '', '', 'São Paulo', 10, 7, 'data/prmo7.jpg', 11, 1, '160.0000', 0, 0, '2015-04-05', '500000.00000000', 2, '50000.00000000', '38.00000000', '0.00000000', 1, 1, 1, 1, 1, '2015-04-06 13:17:00', '2015-04-06 20:25:16', 0),
(323, 'Kit 2 - Jogo americano Remo', '', '', '', '', '', '', 'São Paulo', 10, 7, 'data/promo7.jpg', 11, 1, '120.0000', 0, 0, '2015-04-05', '500000.00000000', 2, '43.00000000', '33.00000000', '0.00000000', 1, 1, 1, 1, 1, '2015-04-06 13:22:53', '2015-04-06 20:30:24', 3),
(321, 'Kit 2 - Jogo americano Rosácea', '', '', '', '', '', '', 'São Paulo', 10, 7, 'data/promo1.jpg', 11, 1, '120.0000', 0, 0, '2015-04-05', '500000.00000000', 2, '50000.00000000', '33.00000000', '0.00000000', 1, 1, 1, 1, 1, '2015-04-06 13:09:50', '2015-04-06 20:29:34', 1),
(202, '208', '', '', '', '', '', '', 'São Paulo', 1, 7, 'data/Almofadas/otto-bege.jpg', 11, 1, '160.0000', 0, 0, '2014-04-22', '900.00000000', 2, '50.00000000', '50.00000000', '15.00000000', 1, 1, 1, 1, 0, '2014-06-18 15:45:11', '2015-03-20 18:03:52', 1957),
(205, '208', '', '', '', '', '', '', 'São Paulo', 4, 7, 'data/Almofadas/Jessup-Turquesa_Repolho-Azul.jpg', 11, 1, '120.0000', 0, 0, '2014-05-20', '1.00000000', 2, '50.00000000', '50.00000000', '0.00000000', 1, 1, 1, 1, 0, '2014-06-18 15:55:52', '2015-04-06 17:25:31', 2788),
(208, '209', '', '', '', '', '', '', 'São Paulo', 4, 7, 'data/Almofadas/Folhas-Amarelo_Repolho-Cru.jpg', 11, 1, '120.0000', 0, 0, '2014-05-20', '898.00000000', 2, '50.00000000', '50.00000000', '0.00000000', 1, 1, 1, 1, 0, '2014-06-18 16:04:56', '2015-04-06 17:16:41', 3102),
(212, '209', '', '', '', '', '', '', 'São Paulo', 4, 7, 'data/Almofadas/JessupBranco_FloralVerde.jpg', 11, 1, '100.0000', 0, 0, '2014-05-20', '898.00000000', 2, '50.00000000', '50.00000000', '0.00000000', 1, 1, 1, 1, 0, '2014-06-18 16:21:08', '2015-04-06 17:24:40', 2808),
(213, '210', '', '', '', '', '', '', 'São Paulo', 1, 7, 'data/Almofadas/Floral-Pink.jpg', 11, 1, '160.0000', 0, 0, '2014-05-21', '900.00000000', 2, '50.00000000', '50.00000000', '15.00000000', 1, 1, 1, 1, 0, '2014-06-18 16:28:40', '2015-03-20 17:52:09', 2817),
(297, 'especial', '', '', '', '', '', '', 'São Paulo', 1, 7, 'data/e.jpg', 11, 1, '300.0000', 0, 0, '2015-03-21', '898.00000000', 2, '50000.00000000', '50000.00000000', '18000.00000000', 1, 1, 1, 1, 1, '2015-03-22 20:18:36', '2015-04-06 18:04:09', 7),
(298, 'especial400', '', '', '', '', '', '', 'São Paulo', 1, 7, 'data/e1.jpg', 11, 1, '300.0000', 0, 0, '2015-03-21', '898.00000000', 2, '50000.00000000', '50000.00000000', '18000.00000000', 1, 1, 1, 1, 1, '2015-03-22 20:29:22', '2015-04-06 18:04:20', 1),
(299, 'especial401', '', '', '', '', '', '', 'São Paulo', 1, 7, 'data/e3.jpg', 11, 1, '300.0000', 0, 0, '2015-03-21', '898.00000000', 2, '50000.00000000', '50000.00000000', '18000.00000000', 1, 1, 1, 1, 1, '2015-03-22 20:34:52', '2015-04-06 18:03:50', 0),
(300, 'especial407', '', '', '', '', '', '', 'São Paulo', 1, 7, 'data/e7.jpg', 11, 1, '300.0000', 0, 0, '2015-03-21', '898.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2015-03-22 20:36:57', '2015-04-06 18:05:05', 1),
(221, '212', '', '', '', '', '', '', 'São Paulo', 5, 7, 'data/Almofadas/OttoTurquesa.jpg', 11, 1, '130.0000', 0, 0, '2014-04-22', '900.00000000', 2, '50.00000000', '50.00000000', '15.00000000', 1, 1, 1, 1, 1, '2014-06-18 17:48:20', '2015-04-06 20:15:50', 2429),
(301, 'especial404', '', '', '', '', '', '', 'São Paulo', 1, 7, 'data/e4.jpg', 11, 1, '300.0000', 0, 0, '2015-03-21', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2015-03-22 20:40:28', '2015-04-06 18:05:23', 2),
(302, 'especial402', '', '', '', '', '', '', 'São Paulo', 1, 7, 'data/e444.jpg', 11, 1, '300.0000', 0, 0, '2015-03-21', '898.00000000', 2, '50000.00000000', '50000.00000000', '18000.00000000', 1, 1, 1, 1, 1, '2015-03-22 20:47:41', '2015-04-06 18:05:52', 3),
(303, 'especial408', '', '', '', '', '', '', 'São Paulo', 1, 7, 'data/e33.jpg', 11, 1, '300.0000', 0, 0, '2015-03-21', '898.00000000', 1, '50000.00000000', '50000.00000000', '18000.00000000', 1, 1, 1, 1, 1, '2015-03-22 20:58:59', '2015-04-06 18:06:25', 1),
(325, 'LOSANGO', '', '', '', '', '', '', 'São Paulo', 20, 5, 'data/losa.jpg', 11, 1, '140.0000', 0, 0, '2015-04-05', '500000.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2015-04-06 20:40:39', '2015-04-06 20:41:05', 1),
(305, 'especial410', '', '', '', '', '', '', 'São Paulo', 1, 7, 'data/pil.jpg', 11, 1, '300.0000', 0, 0, '2015-03-22', '680000.00000000', 2, '50000.00000000', '50000.00000000', '18000.00000000', 1, 1, 1, 1, 1, '2015-03-22 21:07:46', '2015-04-06 18:06:12', 4),
(306, 'especial405', '', '', '', '', '', '', 'São Paulo', 1, 5, 'data/e10.jpg', 11, 1, '300.0000', 0, 0, '2015-03-22', '898.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, '2015-03-22 21:10:16', '2015-04-06 18:05:41', 6),
(229, '158', '', '', '', '', '', '', 'São Paulo', 1, 7, 'data/Bolsas/Chelsee-Marrom-COnexão.jpg', 11, 1, '240.0000', 0, 0, '2014-04-23', '800.00000000', 2, '366.00000000', '58.00000000', '0.00000000', 1, 1, 1, 1, 0, '2014-06-20 11:40:27', '2015-04-06 18:13:33', 1003),
(233, '201', '', '', '', '', '', '', '', 5, 7, 'data/Almofadas/0-0-0.jpg', 11, 1, '130.0000', 0, 0, '2014-05-21', '900.00000000', 1, '60.00000000', '30.00000000', '15.00000000', 1, 1, 1, 1, 1, '2014-06-20 16:25:46', '2015-04-06 20:16:32', 2739),
(278, '017', '', '', '', '', '', '', '', 10, 7, 'data/almofada ALGODÃO - LOSANGO 50X50.jpg', 11, 1, '130.0000', 0, 0, '2015-03-18', '680000.00000000', 2, '50000.00000000', '50000.00000000', '18000.00000000', 1, 1, 1, 1, 1, '2015-03-19 16:34:31', '2015-04-06 17:54:36', 1),
(307, 'Linho Girassol', '', '', '', '', '', '', 'São Paulo', 20, 7, 'data/jagira.jpg', 11, 1, '34.0000', 0, 0, '2015-03-22', '200000.00000000', 2, '51000.00000000', '38000.00000000', '0.00000000', 1, 1, 1, 1, 1, '2015-03-23 20:42:21', '2015-04-06 20:22:07', 10),
(308, 'Algodão Remo', '', '', '', '', '', '', 'São Paulo', 20, 7, 'data/laam.jpg', 11, 1, '34.0000', 0, 0, '2015-03-24', '200000.00000000', 2, '50000.00000000', '38000.00000000', '0.00000000', 1, 1, 1, 1, 1, '2015-03-25 14:48:16', '2015-04-06 20:20:43', 3),
(309, 'Linho Rosácea', '', '', '', '', '', '', 'São Paulo', 20, 7, 'data/jarosace1.jpg', 11, 1, '34.0000', 0, 0, '2015-03-24', '200000.00000000', 2, '51000.00000000', '34.00000000', '0.00000000', 1, 1, 1, 1, 1, '2015-03-25 14:53:07', '2015-04-06 20:21:50', 12),
(310, 'Linho Girassol', '', '', '', '', '', '', '', 1, 5, '', 11, 1, '128.0000', 0, 0, '2015-03-24', '10000.00000000', 1, '100.00000000', '45.00000000', '0.00000000', 1, 1, 1, 1, 0, '2015-03-25 15:01:10', '0000-00-00 00:00:00', 0),
(311, 'Linho Girassol', '', '', '', '', '', '', 'São Paulo', 1, 5, 'data/girassol.jpg', 11, 1, '140.0000', 0, 0, '2015-03-24', '0.00000000', 1, '0.00000000', '140000.00000000', '0.00000000', 1, 1, 1, 1, 1, '2015-03-25 17:41:38', '2015-03-25 18:25:48', 3),
(312, 'Linho Rosácea', '', '', '', '', '', '', '', 10, 7, 'data/rosace.jpg', 11, 1, '140.0000', 0, 0, '2015-03-24', '200000.00000000', 2, '140.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2015-03-25 18:16:49', '2015-04-07 10:13:18', 1),
(313, 'Algodão Remo', '', '', '', '', '', '', '', 40, 5, 'data/remo.jpg', 11, 1, '140.0000', 0, 0, '2015-03-24', '0.00000000', 1, '140.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2015-03-25 18:38:22', '2015-04-06 17:29:46', 7),
(314, 'Linho Girassol', '', '', '', '', '', '', 'São Paulo', 5, 7, 'data/PRODUTOS.jpg', 11, 1, '102.0000', 0, 0, '2015-04-01', '680000.00000000', 2, '120000.00000000', '600000.00000000', '0.00000000', 1, 1, 1, 1, 1, '2015-04-02 19:25:29', '2015-04-06 18:09:04', 1),
(315, 'Avental Rosácea', '', '', '', '', '', '', 'São Paulo', 5, 7, 'data/PRODUTOS5.jpg', 11, 1, '102.0000', 0, 0, '2015-04-01', '680000.00000000', 2, '120000.00000000', '600000.00000000', '0.00000000', 1, 1, 1, 1, 1, '2015-04-02 19:29:54', '2015-04-06 18:11:41', 0),
(316, 'Avental Remo', '', '', '', '', '', '', 'São Paulo', 1, 7, 'data/PRODUTOS3.jpg', 11, 1, '96.0000', 0, 0, '2015-04-01', '680000.00000000', 2, '120000.00000000', '600000.00000000', '0.00000000', 1, 1, 1, 1, 1, '2015-04-02 19:31:43', '2015-04-06 18:13:09', 0),
(317, 'Avental Losango', '', '', '', '', '', '', 'São Paulo', 5, 7, 'data/PRODUTOS2.jpg', 11, 1, '96.0000', 0, 0, '2015-04-01', '680000.00000000', 2, '120000.00000000', '600000.00000000', '0.00000000', 1, 1, 1, 1, 1, '2015-04-02 19:33:00', '2015-04-06 18:11:11', 0),
(318, 'Kit 4 - Jogo americano Girassol', '', '', '', '', '', '', 'São Paulo', 10, 7, 'data/prmo5.jpg', 11, 1, '160.0000', 0, 0, '2015-04-01', '0.00000000', 1, '43.00000000', '33.00000000', '0.00000000', 1, 1, 1, 1, 1, '2015-04-02 19:39:12', '2015-04-06 20:29:05', 5),
(319, 'Kit 2 - Jogo americano Girassol', '', '', '', '', '', '', 'São Paulo', 10, 7, 'data/prmo6.jpg', 11, 1, '120.0000', 0, 0, '2015-04-05', '500000.00000000', 2, '40.00000000', '30000.00000000', '0.00000000', 1, 1, 1, 1, 1, '2015-04-06 12:08:56', '2015-04-06 20:31:07', 5),
(320, 'Kit 4 - Jogo americano Rosácea', '', '', '', '', '', '', 'São Paulo', 10, 7, 'data/promo2.jpg', 11, 1, '160.0000', 0, 0, '2015-04-05', '500000.00000000', 2, '42.00000000', '33.00000000', '0.00000000', 1, 1, 1, 1, 1, '2015-04-06 12:45:25', '2015-04-06 20:26:51', 2),
(268, '2024', '', '', '', '', '', '', 'São Paulo', 5, 7, 'data/Almofadas/-030.jpg', 11, 1, '160.0000', 0, 0, '2014-05-26', '900.00000000', 2, '50.00000000', '50.00000000', '15.00000000', 1, 1, 1, 1, 0, '2014-06-24 17:15:52', '2015-03-20 17:48:58', 2512),
(291, '026', '', '', '', '', '', '', 'São Paulo', 10, 7, 'data/LINHO E ALGODÃO SEDA.jpg', 11, 1, '130.0000', 0, 0, '2015-03-19', '680000.00000000', 2, '50000.00000000', '50000.00000000', '18000.00000000', 1, 1, 1, 1, 1, '2015-03-20 15:42:52', '2015-04-06 17:59:30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sh_product_attribute`
--

CREATE TABLE IF NOT EXISTS `sh_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sh_product_description`
--

CREATE TABLE IF NOT EXISTS `sh_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `tag` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_product_description`
--

INSERT INTO `sh_product_description` (`product_id`, `language_id`, `name`, `description`, `meta_description`, `meta_keyword`, `tag`) VALUES
(102, 2, 'Camurça Geo Turquesa e Copo de Leite Amarelo 50x50cm', '&lt;p&gt;50x50cm - R$160,00 | 50x50cm Capa - R$140,00&lt;/p&gt;\r\n\r\n&lt;p&gt;Almofada confeccionada em tecido &lt;strong&gt;Camurça&lt;/strong&gt;, estampado manualmente com toque suave e macio.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Fechamento com ziper invisível.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Enchimento em poliester.&lt;/p&gt;\r\n\r\n&lt;p&gt;Cuidados: Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n', '', '', 'decoração, casa, quarto, criativo, inovador, almofada, camurça'),
(102, 1, 'Camurça Geo Turquesa e Copo de Leite Amarelo  50x50cm', '&lt;p&gt;50x50cm - R$160,00 | 50x50cm Capa - R$140,00&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span id=&quot;result_box&quot; lang=&quot;en&quot;&gt;&lt;span class=&quot;hps&quot;&gt;Cushion&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;made ​​of&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;suede&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;fabric&lt;/span&gt;&lt;span&gt;,&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;hand&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;stamped&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;with&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;smooth and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;soft touch&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;hps&quot;&gt;-&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;Closure with&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;invisible&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;zipper&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;hps&quot;&gt;- Filling&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;polyester&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;hps&quot;&gt;Care&lt;/span&gt;&lt;span&gt;:&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;To preserve&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;the original look&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;ensure&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;product durability&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;wash&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;gently&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;with mild soap&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and use&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;an iron&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;on&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;low temperature&lt;/span&gt;&lt;span&gt;.&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;Only iron&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;inside out&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(96, 2, 'Camurça Copo de Leite Amarelo 50x50cm - 30x60cm', '&lt;p&gt;30x60cm - R$110,00 | 30x60cm Capa - R$100,00&lt;/p&gt;\r\n\r\n&lt;p&gt;50x50cm - R$130,00 | 50x50cm Capa - R$120,00&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;&amp;nbsp;Almofada confeccionada em tecido &lt;strong&gt;Camurça&lt;/strong&gt; Arte Têxtil, estampado manualmente com toque suave e macio.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;- Fechamento&lt;span style=&quot;line-height: 1.6em;&quot;&gt; com ziper invisível.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;- Enchimento em poliester.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;&lt;strong&gt;Cuidados:&lt;/strong&gt; Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n', '', '', 'decoração, casa, quarto, criativo, inovador, almofada, camurça'),
(96, 1, 'Camurça Copo de Leite Amarelo 50x50cm - 40x60cm - 30x60cm', '&lt;p&gt;&amp;nbsp;\r\n&lt;p&gt;Cushion made ​​of suede, hand printed fabric - fabric and stamped manually with zipper. - Ideal for living rooms, bedrooms and other environments. With smooth and soft touch.&amp;nbsp;&lt;/p&gt;\r\n&lt;/p&gt;\r\n\r\n&lt;p&gt;* The option includes the same filling with polyester.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Care: To preserve the original look and ensure durability of the product carefully washing, use mild soap and iron at low temperature. Skip WS.&lt;/p&gt;\r\n', '', '', ''),
(298, 2, 'Almofada única', '&lt;p&gt;Almofada confeccionada com assemblage de tecidos&lt;strong&gt; &lt;/strong&gt;e aplicações, peças únicas vindas das telas e paniéis da artista Isabella Carvalho.&lt;/p&gt;\r\n\r\n&lt;p&gt;Veludo e tecido camurça, puro luxo que compõe imagens de sonho, sofisticação e conforto por excelência.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Fechamento com ziper invisível.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Enchimento em poliester.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Cuidados:&lt;/strong&gt; Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n\r\n&lt;p&gt;Pode haver diferença nas cores devido a calibração de cada monitor.&lt;/p&gt;\r\n\r\n&lt;p&gt;Tamanho de 50x50cm&lt;/p&gt;\r\n', '', '', ''),
(66, 2, 'Camurça Oto Rato 50x50cm - 40x60cm - 30x60cm', '&lt;p&gt;30x60cm - R$140,00 | 30x60cm Capa - R$120,00&lt;/p&gt;\r\n\r\n&lt;p&gt;40x60cm - R$160,00 | 40x60cm Capa - R$140,00&lt;/p&gt;\r\n\r\n&lt;p&gt;50x50cm - R$160,00 | 50x50cm Capa - R$140,00&lt;/p&gt;\r\n\r\n&lt;p&gt;Almofada confeccionada em tecido &lt;strong&gt;Camurça&lt;/strong&gt;, estampado manualmente com toque suave e macio.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Fechamento com ziper invisível.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Enchimento em poliester.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Cuidados:&lt;/strong&gt; Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', '', '', 'decoração, casa, quarto, criativo, inovador, almofada, '),
(66, 1, 'Camurça Oto Rato 50x50cm - 40x60cm - 30x60cm', '&lt;p&gt;30x60cm - R$140,00 | 30x60cm Capa - R$120,00&lt;/p&gt;\r\n\r\n&lt;p&gt;40x60cm - R$160,00 | 40x60cm Capa - R$140,00&lt;/p&gt;\r\n\r\n&lt;p&gt;50x50cm - R$160,00 | 50x50cm Capa - R$140,00&lt;/p&gt;\r\n\r\n&lt;p&gt;Cushion made ​​of suede, hand printed fabric - fabric and stamped manually with zipper. - Ideal for living rooms, bedrooms and other environments. With smooth and soft touch.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;* The option includes the same filling with polyester.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Care: To preserve the original look and ensure durability of the product carefully washing, use mild soap and iron at low temperature. Skip WS.&lt;/p&gt;\r\n', '', '', ''),
(98, 2, 'Camurça Janete Cru 50x50cm  - 30x60cm', '&lt;p&gt;30x60cm - R$110,00 | 30x60cm Capa - R$100,00&lt;/p&gt;\r\n\r\n&lt;p&gt;50x50cm - R$130,00 | 50x50cm Capa - R$120,00&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;&amp;nbsp;Almofada confeccionada em tecido &lt;strong&gt;Camurça&lt;/strong&gt; Arte Têxtil, estampado manualmente com toque suave e macio.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;- Fechamento&lt;span style=&quot;line-height: 1.6em;&quot;&gt; com ziper invisível.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;- Enchimento em poliester.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;&lt;strong&gt;Cuidados:&lt;/strong&gt; Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n', '', '', 'almofada, decoração, casa, quarto, criativo, inovador, almofadas, camurça'),
(98, 1, 'Suede Janete Cru  50x50cm  - 30x60cm', '&lt;p&gt;30x60cm - R$110,00 | 30x60cm Capa - R$100,00&lt;/p&gt;\r\n\r\n&lt;p&gt;50x50cm - R$130,00 | 50x50cm Capa - R$120,00&lt;/p&gt;\r\n\r\n&lt;p&gt;Cushion made ​​of suede, hand printed fabric - fabric and stamped manually with zipper. - Ideal for living rooms, bedrooms and other environments. With smooth and soft touch.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;* The option includes the same filling with polyester.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Care: To preserve the original look and ensure durability of the product carefully washing, use mild soap and iron at low temperature. Skip WS.&lt;/p&gt;\r\n', '', '', 'Pillow, exclusive pillow, arte textil testil art, pillow in Suede'),
(76, 2, 'Algodão Jessup Amarelo 30x60cm ', '&lt;p&gt;30x60cm - R$70,00 - só a capa por R$60,00&lt;/p&gt;\r\n\r\n&lt;p&gt;Almofada confeccionada em tecido &lt;strong&gt;Algodão&lt;/strong&gt;, estampado manualmente com toque suave e macio.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Fechamento com ziper invisível.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Enchimento em poliester.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Cuidados:&lt;/strong&gt; Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n', '', '', 'decoração, casa, quarto, criativo, inovador, almofada, algodão'),
(76, 1, 'Algodão Jessup Amarelo  30x60cm', '&lt;p&gt;30x60cm - R$70,00 only the cover R$60,00&lt;/p&gt;\r\n\r\n&lt;p&gt;Cushion made ​​of cotton and hand printed fabric with zipper. - Ideal for living rooms, bedrooms and other environments. With smooth and soft touch.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;* The option includes the same filling with polyester.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Care: To preserve the original look and ensure durability of the product carefully washing, use mild soap and iron at low temperature. Skip WS.&lt;/p&gt;\r\n', '', '', 'Pillow, exclusive pillow, arte textil  art, pillow in cotton.'),
(77, 2, 'Algodão Primavera Verde 30x60cm ', '&lt;p&gt;30x60cm - R$70,00 | 30x60cm Capa - R$ 60,00&lt;/p&gt;\r\n\r\n&lt;p&gt;Almofada confeccionada em tecido &lt;strong&gt;Algodão&lt;/strong&gt;, estampado manualmente com toque suave e macio.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Fechamento com ziper invisível.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Enchimento em poliester.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Cuidados:&lt;/strong&gt; Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', '', '', 'decoração, casa, quarto, criativo, inovador, almofada, algodão'),
(77, 1, 'Algodão Primavera Verde 30x60cm ', '&lt;p&gt;30x60cm - R$70,00 | 30x60cm Capa - R$ 60,00&lt;/p&gt;\r\n\r\n&lt;p&gt;Cushion made ​​of cotton and hand printed fabric with zipper. - Ideal for living rooms, bedrooms and other environments. With smooth and soft touch.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;* The option includes the same filling with polyester.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Care: To preserve the original look and ensure durability of the product carefully washing, use mild soap and iron at low temperature. Skip WS.&lt;/p&gt;\r\n', '', '', ''),
(78, 2, 'Algodão Primavera Laranja 50x50cm', '&lt;p&gt;50x50cm - R$110,00 | 50x50cm Capa - R$100,00&lt;/p&gt;\r\n\r\n&lt;p&gt;Almofada confeccionada em tecido &lt;strong&gt;Algodão&lt;/strong&gt;, estampado manualmente com toque suave e macio.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Fechamento com ziper invisível.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Enchimento em poliester.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Cuidados:&lt;/strong&gt; Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', '', '', 'decoração, casa, quarto, criativo, inovador, almofada, algodão'),
(78, 1, 'Algodão Primavera Laranja 50x50cm', '&lt;p&gt;50x50cm - R$110,00 | 50x50cm Capa - R$100,00&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;Cushion made ​​of cotton and hand printed fabric with zipper. - Ideal for living rooms, bedrooms and other environments. With smooth and soft touch.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;* The option includes the same filling with polyester.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;Care: To preserve the original look and ensure durability of the product carefully washing, use mild soap and iron at low temperature. Skip WS.&lt;/p&gt;\r\n', '', '', ''),
(79, 2, 'Algodão Folhas Azul 30x60cm', '&lt;div class=&quot;tab-content&quot; id=&quot;tab-description&quot; style=&quot;display: block;&quot;&gt;\r\n&lt;p&gt;30x60cm - R$70,00 , só a capa R$60,00&lt;/p&gt;\r\n\r\n&lt;p&gt;Almofada confeccionada em tecido &lt;strong&gt;Algodão&lt;/strong&gt;, estampado manualmente com toque suave e macio.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Fechamento com ziper invisível.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Enchimento em poliester.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Cuidados:&lt;/strong&gt; Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', '', 'decoração, casa, quarto, criativo, inovador, almofada, algodão'),
(79, 1, 'Algodão Folhas Azul  30x60cm ', '&lt;p&gt;30x60cm - R$70,00 - only the cover R$ 60,00&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;Cushion made ​​of cotton and hand printed fabric with zipper. - Ideal for living rooms, bedrooms and other environments. With smooth and soft touch.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;* The option includes the same filling with polyester.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;Care: To preserve the original look and ensure durability of the product carefully washing, use mild soap and iron at low temperature. Skip WS.&lt;/p&gt;\r\n', '', '', 'Pillow, exclusive pillow, arte textil  art, pillow in pure cotton.'),
(80, 2, 'Algodão Folhas Bege 30x60cm', '&lt;p&gt;30x60cm - R$70,00 só a capa por R$60,00&lt;/p&gt;\r\n\r\n&lt;p&gt;Almofada confeccionada em tecido &lt;strong&gt;Algodão&lt;/strong&gt;, estampado manualmente com toque suave e macio.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Fechamento com ziper invisível.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Enchimento em poliester.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Cuidados:&lt;/strong&gt; Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', '', '', 'decoração, casa, quarto, criativo, inovador, almofada, algodão'),
(80, 1, 'Cotton Folhas Bege 30x60cm ', '&lt;p&gt;30x60cm - R$70,00 | 30x60cm Capa - R$ 60,00&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;Cushion made ​​of cotton and hand printed fabric with zipper. - Ideal for living rooms, bedrooms and other environments. With smooth and soft touch.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;* The option includes the same filling with polyester.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;Care: To preserve the original look and ensure durability of the product carefully washing, use mild soap and iron at low temperature. Skip WS.&lt;/p&gt;\r\n', '', '', ''),
(81, 2, 'Algodão Floral Verde 50x50cm', '&lt;p&gt;50x50cm - R$110,00 | 50x50cm Capa - R$ 100,00&lt;/p&gt;\r\n\r\n&lt;p&gt;Almofada confeccionada em tecido &lt;strong&gt;Algodão&lt;/strong&gt;, estampado manualmente com toque suave e macio.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Fechamento com ziper invisível.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Enchimento em poliester.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Cuidados:&lt;/strong&gt; Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', '', '', 'decoração, casa, quarto, criativo, inovador, almofada, algodão'),
(81, 1, 'Algodão Floral Verde 50x50cm', '&lt;p&gt;50x50cm - R$110,00 | 50x50cm Capa - R$100,00&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;Cushion made ​​of cotton and hand printed fabric with zipper. - Ideal for living rooms, bedrooms and other environments. With smooth and soft touch.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;* The option includes the same filling with polyester.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;Care: To preserve the original look and ensure durability of the product carefully washing, use mild soap and iron at low temperature. Skip WS.&lt;/p&gt;\r\n', '', '', ''),
(82, 2, 'Algodão Repolho Azul 50x50cm', '&lt;p&gt;50x50cm - R$110,00 | 50x50cm Capa - R$100,00&lt;/p&gt;\r\n\r\n&lt;p&gt;Almofada confeccionada em tecido &lt;strong&gt;Algodão&lt;/strong&gt;, estampado manualmente com toque suave e macio.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Fechamento com ziper invisível.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Enchimento em poliester.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Cuidados:&lt;/strong&gt; Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n', '', '', 'decoração, casa, quarto, criativo, inovador, almofada, algodão'),
(82, 1, 'Algodão Repolho Azul 50x50cm', '&lt;p&gt;50x50cm - R$110,00 | 50x50cm Cover - R$100,00&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;Cushion made ​​of cotton and hand printed fabric with zipper. - Ideal for living rooms, bedrooms and other environments. With smooth and soft touch.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;* The option includes the same filling with polyester.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;Care: To preserve the original look and ensure durability of the product carefully washing, use mild soap and iron at low temperature. Skip WS.&lt;/p&gt;\r\n', '', '', 'Pillow, exclusive pillow, arte textil  art, pillow in cotton.'),
(83, 2, 'Algodão Folhas Amarelo 50x50cm', '&lt;p&gt;50x50cm - R$110,00 | 50x50cm Capa - R$100,00&lt;/p&gt;\r\n\r\n&lt;p&gt;Almofada confeccionada em tecido &lt;strong&gt;Algodão&lt;/strong&gt;, estampado manualmente com toque suave e macio.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Fechamento com ziper invisível.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Enchimento em poliester.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Cuidados:&lt;/strong&gt; Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n', '', '', 'decoração, casa, quarto, criativo, inovador, almofada, algodão'),
(83, 1, 'Cotton Folhas Amarelo 50x50cm', '&lt;p&gt;50x50cm – R$110,00 | 50x50cm only the cover - R$100,00&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;Cushion made ​​of cotton and hand printed fabric with zipper. - Ideal for living rooms, bedrooms and other environments. With smooth and soft touch.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;* The option includes the same filling with polyester.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;Care: To preserve the original look and ensure durability of the product carefully washing, use mild soap and iron at low temperature. Skip WS.&lt;/p&gt;\r\n', '', '', ''),
(84, 2, 'Algodão Jessup Branco 50x50cm', '&lt;p&gt;50x50cm - R$110,00 | 50x50cm Capa - R$100,00&lt;/p&gt;\r\n\r\n&lt;p&gt;Almofada confeccionada em tecido &lt;strong&gt;Algodão&lt;/strong&gt;, estampado manualmente com toque suave e macio.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Fechamento com ziper invisível.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Enchimento em poliester.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Cuidados:&lt;/strong&gt; Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', '', '', 'decoração, casa, quarto, criativo, inovador, almofada, algodão'),
(84, 1, 'Algodão Jessup Branco 50x50cm', '&lt;p&gt;50x50cm - R$110,00 | 50x50cm Capa - R$100,00&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;Cushion made ​​of cotton and hand printed fabric with zipper. - Ideal for living rooms, bedrooms and other environments. With smooth and soft touch.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;* The option includes the same filling with polyester.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;Care: To preserve the original look and ensure durability of the product carefully washing, use mild soap and iron at low temperature. Skip WS.&lt;/p&gt;\r\n', '', '', ''),
(85, 2, 'Algodão Floral Vermelho 50x50cm', '&lt;p&gt;50x50cm&amp;nbsp; por&amp;nbsp; R$110,00 sem enchimento R$100,00&lt;/p&gt;\r\n\r\n&lt;p&gt;Almofada confeccionada em tecido &lt;strong&gt;Algodão&lt;/strong&gt;, estampado manualmente com toque suave e macio.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Fechamento com ziper invisível.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Enchimento em poliester.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Cuidados:&lt;/strong&gt; Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', '', '', 'decoração, casa, quarto, criativo, inovador, almofada, algodão'),
(85, 1, 'Cotton  Floral Red  50x50cm', '&lt;p&gt;50x50cm - SALE&amp;nbsp; R$110,00&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;Cushion made ​​of cotton and hand printed fabric with zipper. - Ideal for living rooms, bedrooms and other environments. With smooth and soft touch.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;* The option includes the same filling with polyester.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;Care: To preserve the original look and ensure durability of the product carefully washing, use mild soap and iron at low temperature. Skip WS.&lt;/p&gt;\r\n', '', '', 'Pillow, exclusive pillow, arte textil testil art, pillow in pure cotton'),
(86, 2, 'Algodão Repolho Bege 50x50cm', '&lt;p&gt;50x50cm - R$110,00 - só capa R$100,00&lt;/p&gt;\r\n\r\n&lt;p&gt;Almofada confeccionada em tecido &lt;strong&gt;Algodão&lt;/strong&gt;, estampado manualmente com toque suave e macio.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Fechamento com ziper invisível.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Enchimento em poliester.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Cuidados:&lt;/strong&gt; Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', 'PROMOÇÃO', '', 'decoração, casa, quarto, criativo, inovador, almofada, algodão'),
(86, 1, 'Algodão Repolho Bege 50x50cm', '&lt;p&gt;50x50cm - R$120,00 | 50x50cm Capa - R$100,00&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;Cushion made ​​of cotton and hand printed fabric with zipper. - Ideal for living rooms, bedrooms and other environments. With smooth and soft touch.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;* The option includes the same filling with polyester.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;Care: To preserve the original look and ensure durability of the product carefully washing, use mild soap and iron at low temperature. Skip WS.&lt;/p&gt;\r\n', '', '', 'Pillow, exclusive pillow, arte textil  art, pillow in cotton.'),
(87, 2, 'Algodão Jessup Turquesa 50x50cm', '&lt;p&gt;50x50cm - R$110,00 | 50x50cm Capa - R$100,00&lt;/p&gt;\r\n\r\n&lt;p&gt;Almofada confeccionada em tecido &lt;strong&gt;Algodão&lt;/strong&gt;, estampado manualmente com toque suave e macio.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Fechamento com ziper invisível.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Enchimento em poliester.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Cuidados:&lt;/strong&gt; Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', '', '', 'decoração, casa, quarto, criativo, inovador, almofada, algodão'),
(87, 1, 'Algodão Jessup Turquesa 50x50cm', '&lt;p&gt;50x50cm - R$110,00 | 50x50cm Capa - R$100,00&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;Cushion made ​​of cotton and hand printed fabric with zipper. - Ideal for living rooms, bedrooms and other environments. With smooth and soft touch.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;* The option includes the same filling with polyester.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;Care: To preserve the original look and ensure durability of the product carefully washing, use mild soap and iron at low temperature. Skip WS&lt;/p&gt;\r\n', '', '', ''),
(95, 2, 'Camurça Flor Bege 50x50cm  - 30x60cm', '&lt;p&gt;30x60cm - R$110,00 | 30x60cm Capa - R$100,00&lt;/p&gt;\r\n\r\n&lt;p&gt;50x50cm - R$130,00 | 50x50cm Capa - R$120,00&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;&amp;nbsp;Almofada confeccionada em tecido &lt;strong&gt;Camurça&lt;/strong&gt; Arte Têxtil, estampado manualmente com toque suave e macio.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;- Fechamento&lt;span style=&quot;line-height: 1.6em;&quot;&gt; com ziper invisível.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;- Enchimento em poliester.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;&lt;strong&gt;Cuidados:&lt;/strong&gt; Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n', '', '', 'decoração, casa, quarto, criativo, inovador, almofada, camurça'),
(95, 1, 'Suede  Flower Bege 50x50cm - 30x60cm', '&lt;p&gt;Cushion made ​​of suede, hand printed fabric - fabric and stamped manually with zipper. - Ideal for living rooms, bedrooms and other environments. With smooth and soft touch.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;* The option includes the same filling with polyester.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Care: To preserve the original look and ensure durability of the product carefully washing, use mild soap and iron at low temperature. Skip WS.&lt;/p&gt;\r\n', '', '', 'Pillow, exclusive pillow, arte textil testil art, pillow in Suede'),
(64, 2, 'Camurça Geo Turquesa 50x5c0cm - 40x60cm - 30x60cm', '&lt;p&gt;&amp;nbsp;30x60cm - R$140,00 | 30x60cm Capa - R$120,00&lt;/p&gt;\r\n\r\n&lt;p&gt;40x60cm - R$160,00 | 40x60cm Capa - R$140,00&lt;/p&gt;\r\n\r\n&lt;p&gt;50x50cm - R$160,00 | 50x50cm Capa - R$140,00&lt;/p&gt;\r\n\r\n&lt;p&gt;Almofada confeccionada em tecido &lt;strong&gt;Camurça&lt;/strong&gt;, estampado manualmente com toque suave e macio.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Fechamento com ziper invisível.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Enchimento em poliester.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Cuidados:&lt;/strong&gt; Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', '', '', 'decoração, casa, quarto, criativo, inovador, almofada, camurça'),
(64, 1, 'Camurça Geo Turquesa 50x5c0cm - 40x60cm - 30x60cm', '&lt;p&gt;30x60cm - R$140,00 | 30x60cm Capa - R$120,00&lt;/p&gt;\r\n\r\n&lt;p&gt;40x60cm - R$160,00 | 40x60cm Capa - R$140,00&lt;/p&gt;\r\n\r\n&lt;p&gt;50x50cm - R$160,00 | 50x50cm Capa - R$140,00&lt;/p&gt;\r\n\r\n&lt;p&gt;Cushion made ​​of suede, hand printed fabric - fabric and stamped manually with zipper. - Ideal for living rooms, bedrooms and other environments. With smooth and soft touch.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;* The option includes the same filling with polyester.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Care: To preserve the original look and ensure durability of the product carefully washing, use mild soap and iron at low temperature. Skip WS.&lt;/p&gt;\r\n', '', '', ''),
(90, 2, 'Camurça Bouquet Cru 50x50cm - 40x60cm - 30x60cm', '&lt;p&gt;30x60cm - R$100,00 | 30x60cm Capa - R$90,00&lt;/p&gt;\r\n\r\n&lt;p&gt;50x50cm - R$130,00 | 40x60cm Capa - R$120,00&lt;/p&gt;\r\n\r\n&lt;p&gt;Almofada confeccionada em tecido &lt;strong&gt;Camurça&lt;/strong&gt;, estampado manualmente com toque suave e macio.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Fechamento com ziper invisível.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Enchimento em poliester.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Cuidados:&lt;/strong&gt; Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', '', '', 'decoração, casa, quarto, criativo, inovador, almofada, camurça'),
(90, 1, 'Camurça Bouquet Cru 50x50cm - 40x60cm - 30x60cm', '&lt;p&gt;30x60cm - R$140,00 | 30x60cm Capa - R$120,00&lt;/p&gt;\r\n\r\n&lt;p&gt;40x60cm - R$160,00 | 40x60cm Capa - R$140,00&lt;/p&gt;\r\n\r\n&lt;p&gt;50x50cm - R$160,00 | 40x60cm Capa - R$140,00&lt;/p&gt;\r\n\r\n&lt;p&gt;Cushion made ​​of suede, hand printed fabric - fabric and stamped manually with zipper. - Ideal for living rooms, bedrooms and other environments. With smooth and soft touch.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;* The option includes the same filling with polyester.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Care: To preserve the original look and ensure durability of the product carefully washing, use mild soap and iron at low temperature. Skip WS.&lt;/p&gt;\r\n', '', '', ''),
(91, 2, 'Camurça Floral Cru 30x60cm - 40x60cm', '&lt;p&gt;30x60cm - R$140,00 | 30x60cm Capa - R$120,00&lt;/p&gt;\r\n\r\n&lt;p&gt;40x60cm - R$160,00 | 40x60cm Capa - R$140,00&lt;/p&gt;\r\n\r\n&lt;p&gt;Almofada confeccionada em tecido &lt;strong&gt;Camurça&lt;/strong&gt;, estampado manualmente com toque suave e macio.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Fechamento com ziper invisível.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Enchimento em poliester.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Cuidados:&lt;/strong&gt; Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', '', '', 'decoração, casa, quarto, criativo, inovador, almofada, camurça'),
(91, 1, 'Camurça Floral Cru 30x60cm - 40x60cm', '&lt;p&gt;30x60cm - R$140,00 | 30x60cm Capa - R$120,00&lt;/p&gt;\r\n\r\n&lt;p&gt;40x60cm - R$160,00 | 40x60cm Capa - R$140,00&lt;/p&gt;\r\n\r\n&lt;p&gt;Cushion made ​​of suede, hand printed fabric - fabric and stamped manually with zipper. - Ideal for living rooms, bedrooms and other environments. With smooth and soft touch.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;* The option includes the same filling with polyester.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Care: To preserve the original look and ensure durability of the product carefully washing, use mild soap and iron at low temperature. Skip WS.&lt;/p&gt;\r\n', '', '', ''),
(71, 2, 'Camurça Bouquet Rato 50x50cm  - 30x60cm', '&lt;p&gt;30x60cm - R$110,00 | 30x60cm Capa - R$100,00&lt;/p&gt;\r\n\r\n&lt;p&gt;40x60cm - R$130,00 | 40x60cm Capa - R$120,00&lt;/p&gt;\r\n\r\n&lt;p&gt;Almofada confeccionada em tecido &lt;strong&gt;Camurça&lt;/strong&gt;, estampado manualmente com toque suave e macio.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Fechamento com ziper invisível.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Enchimento em poliester.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Cuidados:&lt;/strong&gt; Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', '', '', 'decoração, casa, quarto, criativo, inovador, almofada, camurça'),
(71, 1, 'Camurça Bouquet Rato 50x50cm - 40x60cm - 30x60cm', '&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Cushion made ​​of suede, hand printed fabric - fabric and stamped manually with zipper. - Ideal for living rooms, bedrooms and other environments. With smooth and soft touch.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;* The option includes the same filling with polyester.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Care: To preserve the original look and ensure durability of the product carefully washing, use mild soap and iron at low temperature. Skip WS.&lt;/p&gt;\r\n', '', '', ''),
(92, 2, 'Camurça Floral Copacabana 50x50cm', '&lt;p&gt;50x50cm - R$160,00 | 50x50cm Capa - R$140,00&lt;/p&gt;\r\n\r\n&lt;p&gt;Almofada confeccionada em tecido &lt;strong&gt;Camurça&lt;/strong&gt;, estampado manualmente com toque suave e macio.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Fechamento com ziper invisível.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Enchimento em poliester.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Cuidados:&lt;/strong&gt; Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', '', '', 'decoração, casa, quarto, criativo, inovador, almofada, camurça'),
(92, 1, 'Camurça Floral Copacabana 50x50cm', '&lt;p&gt;50x50cm - R$160,00 | 50x50cm Capa - R$140,00&lt;/p&gt;\r\n\r\n&lt;p&gt;Cushion made ​​of suede, hand printed fabric - fabric and stamped manually with zipper. - Ideal for living rooms, bedrooms and other environments. With smooth and soft touch.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;* The option includes the same filling with polyester.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Care: To preserve the original look and ensure durability of the product carefully washing, use mild soap and iron at low temperature. Skip WS.&lt;/p&gt;\r\n', '', '', ''),
(93, 2, 'Camurça Geo Roxo 50x50cm  -  30x60cm', '&lt;p&gt;30x60cm - R$110,00 | 30x60cm Capa - R$100,00&lt;/p&gt;\r\n\r\n&lt;p&gt;50x50cm - R$130,00 | 50x50cm Capa - R$120,00&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;Almofada confeccionada em tecido &lt;strong&gt;Camurça&lt;/strong&gt;, estampado manualmente com toque suave e macio.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Fechamento com ziper invisível.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Enchimento em poliester.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Cuidados:&lt;/strong&gt; Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', '', '', 'decoração, casa, quarto, criativo, inovador, almofada, camurça'),
(93, 1, 'Camurça Geo Roxo 50x50cm - 40x60cm - 30x60cm', '&lt;p&gt;30x60cm - R$110,00 | 30x60cm Capa - R$100,00&lt;/p&gt;\r\n\r\n&lt;p&gt;50x50cm - R$130,00 | 50x50cm Capa - R$120,00&lt;/p&gt;\r\n\r\n&lt;p&gt;Cushion made ​​of suede, hand printed fabric - fabric and stamped manually with zipper. - Ideal for living rooms, bedrooms and other environments. With smooth and soft touch.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;* The option includes the same filling with polyester.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Care: To preserve the original look and ensure durability of the product carefully washing, use mild soap and iron at low temperature. Skip WS.&lt;/p&gt;\r\n', '', '', ''),
(67, 2, 'Camurça Onda Laranja 50x50cm - 30x60cm', '&lt;p&gt;30x60cm - R$108,00 | 30x60cm Capa - R$90,00&lt;/p&gt;\r\n\r\n&lt;p&gt;50x50cm - R$130,00 | 50x50cm Capa - R$110,00&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;&amp;nbsp;Almofada confeccionada em tecido &lt;strong&gt;Camurça&lt;/strong&gt; Arte Têxtil, estampado manualmente com toque suave e macio.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;- Fechamento&lt;span style=&quot;line-height: 1.6em;&quot;&gt; com ziper invisível.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;- Enchimento em poliester.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;&lt;strong&gt;Cuidados:&lt;/strong&gt; Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n', '', '', 'decoração, casa, quarto, criativo, inovador, almofada, '),
(67, 1, 'Suede  Orange wave  50x50cm - - 30x60cm', '&lt;p&gt;30x60cm - R$108,00 | 30x60cm&amp;nbsp; Cover - R$ 90,00&lt;/p&gt;\r\n\r\n&lt;p&gt;50x50cm - R$130,00 | 50x50cm&amp;nbsp; Cover- R$110,00&lt;/p&gt;\r\n\r\n&lt;p&gt;Cushion made ​​of suede, hand printed fabric - fabric and stamped manually with zipper. - Ideal for living rooms, bedrooms and other environments. With smooth and soft touch.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;* The option includes the same filling with polyester.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Care: To preserve the original look and ensure durability of the product carefully washing, use mild soap and iron at low temperature. Skip WS.&lt;/p&gt;\r\n', '', '', ''),
(75, 2, 'Algodão Floral Turquesa 30x60cm ', '&lt;p&gt;30x60cm - R$70,00 | 30x60cm Capa - R$ 60,00&lt;/p&gt;\r\n\r\n&lt;p&gt;Almofada confeccionada em tecido &lt;strong&gt;Algodão&lt;/strong&gt;, estampado manualmente com toque suave e macio.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Fechamento com ziper invisível.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Enchimento em poliester.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Cuidados:&lt;/strong&gt; Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', '', '', 'decoração, casa, quarto, criativo, inovador, almofada,'),
(75, 1, 'Cotton  Floral Turquesa 30x60cm', '&lt;p&gt;30x60cm - R$70,00 | 30x60cm Capa - R$ 60,00&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span id=&quot;result_box&quot; lang=&quot;en&quot;&gt;&lt;span class=&quot;hps&quot;&gt;Cushion&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;made ​​of&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;cotton,&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;hand&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;printed fabric&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;with zipper&lt;/span&gt;&lt;span&gt;.&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;-&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;Ideal for&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;living rooms, bedrooms&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and other&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;environments&lt;/span&gt;&lt;span&gt;.&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;With&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;smooth and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;soft touch&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;hps&quot;&gt;The&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;option&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;includes&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;the same&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;filler&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;in&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;polyester&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;br /&gt;\r\n&lt;span lang=&quot;en&quot;&gt;&lt;span class=&quot;hps&quot;&gt;Care&lt;/span&gt;&lt;span&gt;:&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;To preserve&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;the original look&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;ensure durability&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;of the product&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;carefully washing&lt;/span&gt;&lt;span&gt;,&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;use&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;mild soap and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;iron&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;at low temperature&lt;/span&gt;&lt;span&gt;.&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;Skip&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;WS&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n', '', '', 'decoração, casa, quarto, criativo, inovador, almofada, pillow'),
(74, 2, 'Algodão Floral Branco 30x60cm ', '&lt;p&gt;30x60cm - R$70,00 | 30x60cm Capa - R$ 30,00&lt;/p&gt;\r\n\r\n&lt;p&gt;Almofada confeccionada em tecido &lt;strong&gt;Algodão&lt;/strong&gt;, estampado manualmente com toque suave e macio.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Fechamento com ziper invisível.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Enchimento em poliester.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Cuidados:&lt;/strong&gt; Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', '', '', 'decoração, casa, quarto, criativo, inovador, almofada, algodão'),
(74, 1, 'Cotton Floral Branco 30x60cm ', '&lt;p&gt;30x60cm - R$70,00 | 30x60cm Cover - R$ 60,00&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span id=&quot;result_box&quot; lang=&quot;en&quot;&gt;&lt;span class=&quot;hps&quot;&gt;Cushion&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;made ​​of&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;cotton,&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;hand&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;printed fabric&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;with zipper&lt;/span&gt;&lt;span&gt;.&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;-&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;Ideal for&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;living rooms, bedrooms&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and other&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;environments&lt;/span&gt;&lt;span&gt;.&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;With&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;smooth and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;soft touch&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;hps&quot;&gt;The&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;option&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;includes&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;the same&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;filler&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;in&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;polyester&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;br /&gt;\r\n&lt;span lang=&quot;en&quot;&gt;&lt;span class=&quot;hps&quot;&gt;Care&lt;/span&gt;&lt;span&gt;:&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;To preserve&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;the original look&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;ensure durability&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;of the product&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;carefully washing&lt;/span&gt;&lt;span&gt;,&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;use&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;mild soap and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;iron&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;at low temperature&lt;/span&gt;&lt;span&gt;.&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;Skip&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;WS&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(136, 2, 'Flor Azul', '&lt;div class=&quot;tab-content&quot; id=&quot;tab-description&quot; style=&quot;display: block;&quot;&gt;\r\n&lt;p&gt;Tecido camurça de 1,40mts de largura, estampado manualmente com tinta a base d’água.&lt;/p&gt;\r\n\r\n&lt;p&gt;Cuidados: Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', '', 'tecido, camurça'),
(136, 1, 'Flor Azul', '&lt;div class=&quot;tab-content&quot; id=&quot;tab-description&quot; style=&quot;display: block;&quot;&gt;\r\n&lt;p&gt;Suede fabric for 1.40 mts wide, stamped manually with water-based ink.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Care: To preserve the original look and ensure product durability wash gently with mild soap and use an iron on low temperature. Only iron inside out.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', '', ''),
(100, 2, 'Camurça Geo Roxo e  Floral Bege 50x50cm', '&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;50x50cm - R$130,00 | 50x50cm Capa - R$120,00&lt;/p&gt;\r\n\r\n&lt;p&gt;Almofada confeccionada em tecido &lt;strong&gt;Camurça&lt;/strong&gt;, estampado manualmente com toque suave e macio.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;- Fechamento&lt;span style=&quot;line-height: 1.6em;&quot;&gt; com ziper invisível.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;- Enchimento em poliester.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;&lt;strong&gt;Cuidados:&lt;/strong&gt; Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n', '', '', 'decoração, casa, quarto, criativo, inovador, almofada, camurça'),
(73, 2, 'Camurça Flor Azul 50x50cm  - 30x60cm', '&lt;p&gt;30x60cm - R$110,00 | 30x60cm Capa - R$100,00&lt;/p&gt;\r\n\r\n&lt;p&gt;50x50cm - R$130,00 | 50x50cm Capa - R$120,00&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;&amp;nbsp;Almofada confeccionada em tecido &lt;strong&gt;Camurça&lt;/strong&gt; Arte Têxtil, estampado manualmente com toque suave e macio.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;- Fechamento&lt;span style=&quot;line-height: 1.6em;&quot;&gt; com ziper invisível.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;- Enchimento em poliester.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;&lt;strong&gt;Cuidados:&lt;/strong&gt; Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n', '', '', 'decoração, casa, quarto, criativo, inovador, almofada, '),
(73, 1, 'Pllow in Suede- Blue Flower-  50x50cm  -  30x60cm', '&lt;p&gt;30x60cm - R$108,00 | 30x60cm&amp;nbsp; Cover - R$ 90,00&lt;/p&gt;\r\n\r\n&lt;p&gt;50x50cm - R$130,00 | 50x50cm&amp;nbsp; Cover- R$110,00&lt;/p&gt;\r\n\r\n&lt;p&gt;Cushion made ​​of suede, hand printed fabric - fabric and stamped manually with zipper. - Ideal for living rooms, bedrooms and other environments. With smooth and soft touch.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;* The option includes the same filling with polyester.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Care: To preserve the original look and ensure durability of the product carefully washing, use mild soap and iron at low temperature. Skip WS.&lt;/p&gt;\r\n', '', '', ''),
(106, 2, 'Camurça Bouquet Cru e Floral Lilás 50x50cm', '&lt;p&gt;50x50cm - R$130,00 | 50x50cm Capa - R$110,00&lt;/p&gt;\r\n\r\n&lt;p&gt;Almofada confeccionada em tecido &lt;strong&gt;Camurça&lt;/strong&gt;, estampado manualmente com toque suave e macio.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Fechamento com ziper invisível.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Enchimento em poliester.&lt;/p&gt;\r\n\r\n&lt;p&gt;Cuidados: Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n', '', '', 'decoração, casa, quarto, criativo, inovador, almofada, camurça');
INSERT INTO `sh_product_description` (`product_id`, `language_id`, `name`, `description`, `meta_description`, `meta_keyword`, `tag`) VALUES
(106, 1, 'Camurça Bouquet Cru e Floral Lilás 50x50cm', '&lt;p&gt;50x50cm - R$160,00 | 50x50cm Capa - R$140,00&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span id=&quot;result_box&quot; lang=&quot;en&quot;&gt;&lt;span class=&quot;hps&quot;&gt;Cushion&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;made ​​of&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;suede&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;fabric&lt;/span&gt;&lt;span&gt;,&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;hand&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;stamped&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;with&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;smooth and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;soft touch&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;hps&quot;&gt;-&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;Closure with&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;invisible&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;zipper&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;hps&quot;&gt;- Filling&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;polyester&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;hps&quot;&gt;Care&lt;/span&gt;&lt;span&gt;:&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;To preserve&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;the original look&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;ensure&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;product durability&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;wash&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;gently&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;with mild soap&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and use&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;an iron&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;on&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;low temperature&lt;/span&gt;&lt;span&gt;.&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;Only iron&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;inside out&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(302, 2, 'Almofada única', '&lt;p&gt;Almofada confeccionada com assemblage de tecidos&lt;strong&gt; &lt;/strong&gt;e aplicações, peças únicas vindas das telas e paniéis da artista Isabella Carvalho.&lt;/p&gt;\r\n\r\n&lt;p&gt;Em tecido camurça, puro luxo que compões imagens de sonho, sofisticação e conforto por excelência.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Fechamento com ziper invisível.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Enchimento em poliester.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Cuidados:&lt;/strong&gt; Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n\r\n&lt;p&gt;Pode haver diferença nas cores devido a calibração de cada monitor.&lt;/p&gt;\r\n\r\n&lt;p&gt;Tamanho de 50x50cm&lt;/p&gt;\r\n', '', '', ''),
(302, 1, 'Exclusive Pillow', '&lt;p&gt;50x50cm&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;Cushion made ​​assemblage of hand printed suede fabric&amp;nbsp; ---&amp;nbsp;&amp;nbsp;&amp;nbsp; with zipper. - Ideal for living rooms, bedrooms and other environments. With smooth and soft touch.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;* The option includes the same filling with polyester.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;Care: To preserve the original look and ensure durability of the product carefully washing, use mild soap and iron at low temperature. Skip WS&lt;/p&gt;\r\n', '', '', ''),
(303, 2, 'Almofada única', '&lt;p&gt;Almofada confeccionada com assemblage de tecidos&lt;strong&gt; &lt;/strong&gt;e aplicações, peças únicas vindas das telas e paniéis da artista Isabella Carvalho.&lt;/p&gt;\r\n\r\n&lt;p&gt;Em tecido camurça, puro luxo que compões imagens se sonhos, sofisticação e conforto por excelência.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Fechamento com ziper invisível.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Enchimento em poliester.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Cuidados:&lt;/strong&gt; Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n\r\n&lt;p&gt;Pode haver diferença nas cores devido a calibração de cada monitor.&lt;/p&gt;\r\n\r\n&lt;p&gt;Tamanho de 50x50cm&lt;/p&gt;\r\n', '', '', 'Almofadas exclusivas, almofadas Arte Têxtil, decoração, luxo, autoria, linda'),
(303, 1, 'Exclusive Pillow', '&lt;p&gt;50x50cm&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;Cushion made ​​assemblage of hand printed suede fabric with velvet fabric&amp;nbsp; ---&amp;nbsp;&amp;nbsp;&amp;nbsp; with zipper. - Ideal for living rooms, bedrooms and other environments. With smooth and soft touch.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;* The option includes the same filling with polyester.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;Care: To preserve the original look and ensure durability of the product carefully washing, use mild soap and iron at low temperature. Skip WS&lt;/p&gt;\r\n', '', '', ''),
(108, 2, 'Linho 30x60cm', '&lt;p&gt;Almofada confeccionada em&lt;strong&gt; Linho&lt;/strong&gt;, estamparia digital.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Fechamento com ziper invisível.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Enchimento em poliester.&lt;/p&gt;\r\n\r\n&lt;p&gt;Cuidados: Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n', '', '', 'decoração, casa, quarto, criativo, inovador, almofada, linho'),
(108, 1, 'Linho 30x60cm', '&lt;p&gt;&lt;span id=&quot;result_box&quot; lang=&quot;en&quot;&gt;&lt;span class=&quot;hps&quot;&gt;Cushion&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;made&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;​​in Linen,&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;digital printing&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;hps&quot;&gt;-&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;Closure with&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;invisible&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;zipper&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;hps&quot;&gt;- Filling&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;polyester&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;hps&quot;&gt;Care&lt;/span&gt;&lt;span&gt;:&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;To preserve&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;the original look&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;ensure&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;product durability&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;wash&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;gently&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;with mild soap&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and use&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;an iron&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;on&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;low temperature&lt;/span&gt;&lt;span&gt;.&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;Only iron&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;inside out&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(109, 2, 'Panamá 50x50cm', '&lt;div class=&quot;tab-content&quot; id=&quot;tab-description&quot; style=&quot;display: block;&quot;&gt;\r\n&lt;p&gt;Almofada confeccionada com tecido Panamá Arte Têxtil, Estamparia eco-sustentável.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Fechamento com ziper invisível.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Enchimento em poliester.&lt;/p&gt;\r\n\r\n&lt;p&gt;Cuidados: Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', 'Feita em tecido Panamá com estamparia ecológica.\r\nAlmofadas para as áreas externas, como Jardins, também para embarcações, \r\nVeja mais sobre os Tecidos Criativos de Arte Têxtil', 'Almofadas Arte Têxtil, Almofadas com tecido paranamá', 'decoração, casa, quarto, criativo, inovador, almofada,'),
(109, 1, 'Panamá 50x50cm', '&lt;p&gt;&lt;span id=&quot;result_box&quot; lang=&quot;en&quot;&gt;&lt;span class=&quot;hps&quot;&gt;Cushion&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;made&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;​​in Panama,&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;digital printing&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;hps&quot;&gt;-&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;Closure with&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;invisible&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;zipper&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;hps&quot;&gt;- Filling&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;polyester&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;hps&quot;&gt;Care&lt;/span&gt;&lt;span&gt;:&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;To preserve&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;the original look&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;ensure&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;product durability&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;wash&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;gently&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;with mild soap&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and use&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;an iron&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;on&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;low temperature&lt;/span&gt;&lt;span&gt;.&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;Only iron&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;inside out&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n', 'Panamá Fabric for exterior and interior design', '', ''),
(137, 2, 'Linho 50x50cm', '&lt;p&gt;Almofada confeccionada em Linho, estamparia digital.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Fechamento com ziper invisível.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Enchimento em poliester.&lt;/p&gt;\r\n\r\n&lt;p&gt;Cuidados: Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n', '', '', 'decoração, casa, quarto, criativo, inovador, almofada,'),
(137, 1, 'Linho 50x50cm', '&lt;p&gt;&lt;span id=&quot;result_box&quot; lang=&quot;en&quot;&gt;&lt;span class=&quot;hps&quot;&gt;Cushion&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;made&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;​​in Linen,&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;digital printing&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;hps&quot;&gt;-&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;Closure with&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;invisible&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;zipper&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;hps&quot;&gt;- Filling&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;polyester&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;hps&quot;&gt;Care&lt;/span&gt;&lt;span&gt;:&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;To preserve&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;the original look&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;ensure&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;product durability&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;wash&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;gently&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;with mild soap&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and use&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;an iron&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;on&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;low temperature&lt;/span&gt;&lt;span&gt;.&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;Only iron&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;inside out&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(284, 2, 'Almofada 50x50cm - composição em Linho e Algodão', '&lt;p&gt;Almofada com composição em Puro algodão e Linho, ziper invisível, tamanho 50x50cm&lt;/p&gt;\r\n\r\n&lt;p&gt;Estampas Remo e Girassol&lt;/p&gt;\r\n', '', '', ''),
(284, 1, 'Pillow in Linen and cotton 50x50cm', '&lt;p style=&quot;font-size: 13px;&quot;&gt;Cushion made ​​of cotton and linen fabric with zipper. - Ideal for living rooms, bedrooms and other environments. With smooth and soft touch.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;Care: To preserve the original look and ensure durability of the product carefully washing, use mild soap at low temperature.&lt;/p&gt;\r\n', 'Design SunFlower and Remo', '', ''),
(285, 2, 'Almofada 50x50cm - composição em Algodão e Linho', '&lt;p&gt;Almofada com composição em Puro algodão e Linho, ziper invisível, tamanho 50x50cm&lt;/p&gt;\r\n\r\n&lt;p&gt;Estampas Remo e Girassol&lt;/p&gt;\r\n', '', '', ''),
(285, 1, 'Pillow in Linen and cotton 50x50cm', '&lt;p style=&quot;font-size: 13px;&quot;&gt;Cushion made ​​of cotton and linen fabric with zipper. - Ideal for living rooms, bedrooms and other environments. With smooth and soft touch.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;Care: To preserve the original look and ensure durability of the product carefully washing, use mild soap at low temperature.&lt;/p&gt;\r\n', 'Design  Remo and Sun Flower', '', ''),
(286, 2, 'Almofada 50x50cm - composição em Algodão e Linho', '&lt;p&gt;Almofada com composição em Puro algodão e Linho, ziper invisível, tamanho 50x50cm&lt;/p&gt;\r\n\r\n&lt;p&gt;Estampas Losango e Girassol&lt;/p&gt;\r\n', '', '', ''),
(286, 1, 'Pillow in cotton and linen 50x50cm', '&lt;p style=&quot;font-size: 13px;&quot;&gt;Cushion made ​​of cotton and linen fabric with zipper. - Ideal for living rooms, bedrooms and other environments. With smooth and soft touch.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;Care: To preserve the original look and ensure durability of the product carefully washing, use mild soap at low temperature.&lt;/p&gt;\r\n', 'Two fabrics composition, linen and cotton, \r\ndesign &quot;Sun Flower&quot; and &quot;Losango&quot;', '', ''),
(287, 2, 'Almofada 50x50cm - composição em Algodão e Linho', '&lt;p&gt;Almofada com composição em Puro algodão e Linho, ziper invisível, tamanho 50x50cm&lt;/p&gt;\r\n\r\n&lt;p&gt;Estampas Losango e Rosácea&lt;/p&gt;\r\n', '', '', ''),
(287, 1, 'Pillow in linen with cotton 50x50cm', '&lt;p style=&quot;font-size: 13px;&quot;&gt;Cushion made ​​of cotton and linen fabric with zipper. - Ideal for living rooms, bedrooms and other environments. With smooth and soft touch.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;Care: To preserve the original look and ensure durability of the product carefully washing, use mild soap at low temperature.&lt;/p&gt;\r\n', '', '', ''),
(138, 2, 'Panamá 30x60cm', '&lt;div class=&quot;tab-content&quot; id=&quot;tab-description&quot; style=&quot;display: block;&quot;&gt;\r\n&lt;p&gt;Almofada confeccionada em Panamá, estamparia digital.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Fechamento com ziper invisível.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Enchimento em poliester.&lt;/p&gt;\r\n\r\n&lt;p&gt;Cuidados: Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', '', ''),
(138, 1, 'Panamá 30x60cm', '&lt;p&gt;&lt;span id=&quot;result_box&quot; lang=&quot;en&quot;&gt;&lt;span class=&quot;hps&quot;&gt;Cushion&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;made&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;​​in Panama,&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;digital printing&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;hps&quot;&gt;-&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;Closure with&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;invisible&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;zipper&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;hps&quot;&gt;- Filling&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;polyester&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;hps&quot;&gt;Care&lt;/span&gt;&lt;span&gt;:&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;To preserve&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;the original look&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;ensure&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;product durability&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;wash&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;gently&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;with mild soap&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and use&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;an iron&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;on&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;low temperature&lt;/span&gt;&lt;span&gt;.&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;Only iron&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;inside out&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(299, 2, 'Almofada única', '&lt;p&gt;Almofada confeccionada com assemblage de tecidos&lt;strong&gt; &lt;/strong&gt;e aplicações, peças únicas vindas das telas e paniéis da artista Isabella Carvalho.&lt;/p&gt;\r\n\r\n&lt;p&gt;Em tecido camurça, puro luxo que compões imagens se sonhos, sofisticação e conforto por excelência.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Fechamento com ziper invisível.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Enchimento em poliester.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Cuidados:&lt;/strong&gt; Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n\r\n&lt;p&gt;Pode haver diferença nas cores devido a calibração de cada monitor.&lt;/p&gt;\r\n\r\n&lt;p&gt;Tamanho de 50x50cm&lt;/p&gt;\r\n', '', '', 'Arte, exclusivas, Arte Têxtil, luxo, pillows, made in Brazil'),
(299, 1, 'Exclusive Pillow', '&lt;p&gt;50x50cm&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;Cushion made ​​assemblage of hand printed suede fabric with zipper. - Ideal for living rooms, bedrooms and other environments. With smooth and soft touch.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;* The option includes the same filling with polyester.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;Care: To preserve the original look and ensure durability of the product carefully washing, use mild soap and iron at low temperature. Skip WS&lt;/p&gt;\r\n', '', '', ''),
(300, 2, 'Almofada única', '&lt;p&gt;Almofada confeccionada com assemblage de tecidos&lt;strong&gt; &lt;/strong&gt;e aplicações, peças únicas vindas das telas e paniéis da artista Isabella Carvalho.&lt;/p&gt;\r\n\r\n&lt;p&gt;Em tecido camurça,puro luxo que compõe imagens e sofisticação, conforto por excelência.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Fechamento com ziper invisível.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Enchimento em poliester.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Cuidados:&lt;/strong&gt; Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n\r\n&lt;p&gt;Pode haver diferença nas cores devido a calibração de cada monitor.&lt;/p&gt;\r\n\r\n&lt;p&gt;Tamanho de 50x50cm&lt;/p&gt;\r\n', '', '', ''),
(300, 1, 'Exclusive Pillow', '&lt;p&gt;50x50cm&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;Cushion made ​​assemblage of hand printed fabric with zipper. - Ideal for living rooms, bedrooms and other environments. With smooth and soft touch.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;* The option includes the same filling with polyester.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;Care: To preserve the original look and ensure durability of the product carefully washing, use mild soap and iron at low temperature. Skip WS&lt;/p&gt;\r\n', '', '', ''),
(133, 2, 'Geo Turquesa', '&lt;p&gt;Tecido camurça de 1,40mts de largura, estampado manualmente com tinta a base d’água.&lt;/p&gt;\r\n\r\n&lt;p&gt;Cuidados: Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso&lt;/p&gt;\r\n', '', '', 'tecido, camurça'),
(133, 1, 'Geo Turquesa', '&lt;div class=&quot;tab-content&quot; id=&quot;tab-description&quot; style=&quot;display: block;&quot;&gt;\r\n&lt;p&gt;Suede fabric for 1.40 mts wide, stamped manually with water-based ink.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Care: To preserve the original look and ensure product durability wash gently with mild soap and use an iron on low temperature. Only iron inside out.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', '', ''),
(134, 2, 'Flor Bege', '&lt;p&gt;Tecido camurça de 1,40mts de largura, estampado manualmente com tinta a base d’água.&lt;/p&gt;\r\n\r\n&lt;p&gt;Cuidados: Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n', '', '', 'tecido, camurça'),
(134, 1, 'Flor Bege', '&lt;p&gt;Suede fabric for 1.40 mts wide, stamped manually with water-based ink.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Care: To preserve the original look and ensure product durability wash gently with mild soap and use an iron on low temperature. Only iron inside out.&lt;/p&gt;\r\n', '', '', ''),
(322, 1, 'KIT 4  REMO', '&lt;p&gt;Gourmet line Arte Textil&lt;/p&gt;\r\n\r\n&lt;p&gt;Kit with FOUR&amp;nbsp; pieces in 100% cotton fabric&amp;nbsp; in the size 33x43 cm, ecologic printed&lt;/p&gt;\r\n', '', '', ''),
(323, 2, 'KIT 2  REMO', '&lt;p&gt;Linha Gourmet Arte Textil&lt;/p&gt;\r\n\r\n&lt;p&gt;Jogo americano feitos em puro algodão Arte Têxtil, este conjunto compõe uma mesa para quatro pessoas.&lt;/p&gt;\r\n\r\n&lt;p&gt;Cada peça tem as medidas de 33cm x 43 cm&lt;/p&gt;\r\n\r\n&lt;p&gt;Impressão ecológica sobre linho, estampa exclusiva Arte Têxtil.&lt;/p&gt;\r\n\r\n&lt;p&gt;Acompanha uma linda sacola&amp;nbsp; com a mesma estampa.&lt;/p&gt;\r\n', '', '', ''),
(323, 1, 'KIT 2   REMO', '&lt;p&gt;Gourmet line Arte Textil&lt;/p&gt;\r\n\r\n&lt;p&gt;Kit with FOUR&amp;nbsp; pieces in 100% cotton fabric&amp;nbsp; in the size 33x43 cm, ecologic printed.&lt;/p&gt;\r\n', '', '', ''),
(325, 2, 'TECIDO LOSANGO', '&lt;p&gt;NOVA COLEÇÃO DE TECIDOS ESTAMPADOS ARTE TÊXTIL&lt;/p&gt;\r\n\r\n&lt;p&gt;Tecido em Algodão seda, leve, macio com 140 de largura, vendido a metro ou a rolo&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', '', 'estampas exclusivas Arte Têxtil', 'TECIDO  TECIDOS ESTAMPADOS  TECIDO PARA DECORAÇÃO'),
(325, 1, 'LOSANGO FABRIC', '&lt;p&gt;140cm - cotton&lt;/p&gt;\r\n', '', '', ''),
(115, 1, 'Camurça Floral Roxo 50x50cm - 30x60cm', '&lt;div class=&quot;tab-content&quot; id=&quot;tab-description&quot; style=&quot;display: block;&quot;&gt;\r\n&lt;p&gt;30x60cm - R$110,00 | 30x60cm Capa - R$100,00&lt;/p&gt;\r\n\r\n&lt;p&gt;50x50cm - R$130,00 | 50x50cm Capa - R$120,00&lt;/p&gt;\r\n\r\n&lt;p&gt;Cushion made ​​of suede, hand printed fabric - fabric and stamped manually with zipper. - Ideal for living rooms, bedrooms and other environments. With smooth and soft touch.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;* The option includes the same filling with polyester.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Care: To preserve the original look and ensure durability of the product carefully washing, use mild soap and iron at low temperature. Skip WS.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', '', ''),
(117, 2, 'Bouquet Castanho', '&lt;div class=&quot;tab-content&quot; id=&quot;tab-description&quot; style=&quot;display: block;&quot;&gt;\r\n&lt;p&gt;R$ 160,00 / Metro linear&lt;/p&gt;\r\n\r\n&lt;p&gt;Tecido camurça de 1,40 mts de largura,&amp;nbsp; tecido estampado manualmente com tinta a base d’água, sem metal pesado par alta decoração.&lt;/p&gt;\r\n\r\n&lt;p&gt;Estampa Bouquet Castanho&lt;/p&gt;\r\n\r\n&lt;p&gt;Cuidados: Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', '', 'tecido, camurça'),
(117, 1, 'Bouquet Castanho', '&lt;p&gt;Suede fabric for 1.40 mts wide, stamped manually with water-based ink.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Care: To preserve the original look and ensure product durability wash gently with mild soap and use an iron on low temperature. Only iron inside out.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', '', '', ''),
(118, 2, 'Bouquet Branco', '&lt;p&gt;R$ 160,00 / Metro linear&lt;/p&gt;\r\n\r\n&lt;p&gt;Tecido camurça de 1,40mts de largura,&amp;nbsp; tecido estampado manualmente com tinta a base d’água, sem metal pesado.&lt;/p&gt;\r\n\r\n&lt;p&gt;Estampa Bouquet Branco&lt;/p&gt;\r\n\r\n&lt;p&gt;Cuidados: Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n', '', '', 'tecido, camurça'),
(118, 1, 'Bouquet Branco', '&lt;p&gt;Suede fabric for 1.40 mts wide, stamped manually with water-based ink.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Care: To preserve the original look and ensure product durability wash gently with mild soap and use an iron on low temperature. Only iron inside out.&lt;/p&gt;\r\n', '', '', ''),
(119, 2, 'Copo de Leite Amarelo', '&lt;div class=&quot;tab-content&quot; id=&quot;tab-description&quot; style=&quot;display: block;&quot;&gt;\r\n&lt;p&gt;R$ 160,00 / Metro linear&lt;/p&gt;\r\n\r\n&lt;p&gt;Tecido camurça de 1,40mts de largura,&amp;nbsp; tecido estampado manualmente com tinta a base d’água, sem metal pesado.&lt;/p&gt;\r\n\r\n&lt;p&gt;Cuidados: Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', '', 'tecido, camurça'),
(119, 1, 'Copo de Leite Amarelo ', '&lt;p&gt;Suede fabric for 1.40 mts wide, stamped manually with water-based ink.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Care: To preserve the original look and ensure product durability wash gently with mild soap and use an iron on low temperature. Only iron inside out.&lt;/p&gt;\r\n', '', '', ''),
(121, 2, 'Floral Laranja', '&lt;p&gt;Tecido camurça de 1,40mts de largura, estampado manualmente com tinta a base d’água.&lt;/p&gt;\r\n\r\n&lt;p&gt;Cuidados: Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n', '', '', 'tecido, camurça'),
(121, 1, 'Floral Laranja', '&lt;p&gt;Suede fabric for 1.40 mts wide, stamped manually with water-based ink.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Care: To preserve the original look and ensure product durability wash gently with mild soap and use an iron on low temperature. Only iron inside out.&lt;/p&gt;\r\n', '', '', ''),
(122, 2, 'Floral Uva', '&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 9px; font-family: Arial; font-size: 13px; line-height: 18.571430206298828px;&quot;&gt;Tecido camurça de 1,40mts de largura, estampado manualmente com tinta a base d’água.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 9px; font-family: Arial; font-size: 13px; line-height: 18.571430206298828px;&quot;&gt;&lt;strong style=&quot;box-sizing: border-box; color: rgb(119, 119, 119);&quot;&gt;Cuidados:&lt;/strong&gt;&lt;span style=&quot;box-sizing: border-box; color: rgb(119, 119, 119);&quot;&gt;&amp;nbsp;Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', 'tecido, camurça'),
(122, 1, 'Floral Uva', '&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 9px; font-family: Arial; font-size: 13px; line-height: 18.571430206298828px;&quot;&gt;Suede fabric for 1.40 mts wide, stamped manually with water-based ink.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 9px; font-family: Arial; font-size: 13px; line-height: 18.571430206298828px;&quot;&gt;Care: To preserve the original look and ensure product durability wash gently with mild soap and use an iron on low temperature. Only iron inside out.&lt;/p&gt;\r\n', '', '', ''),
(123, 2, 'Floral Turquesa', '&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 9px; font-family: Arial; font-size: 13px; line-height: 18.571430206298828px;&quot;&gt;Tecido camurça de 1,40mts de largura, estampado manualmente com tinta a base d’água.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 9px; font-family: Arial; font-size: 13px; line-height: 18.571430206298828px;&quot;&gt;&lt;strong style=&quot;box-sizing: border-box; color: rgb(119, 119, 119);&quot;&gt;Cuidados:&lt;/strong&gt;&lt;span style=&quot;box-sizing: border-box; color: rgb(119, 119, 119);&quot;&gt;&amp;nbsp;Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', 'tecido, camurça'),
(123, 1, 'Floral Turquesa', '&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 9px; font-family: Arial; font-size: 13px; line-height: 18.571430206298828px;&quot;&gt;Suede fabric for 1.40 mts wide, stamped manually with water-based ink.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 9px; font-family: Arial; font-size: 13px; line-height: 18.571430206298828px;&quot;&gt;Care: To preserve the original look and ensure product durability wash gently with mild soap and use an iron on low temperature. Only iron inside out.&lt;/p&gt;\r\n', '', '', ''),
(124, 2, 'Geo Roxo ', '&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 9px; font-family: Arial; font-size: 13px; line-height: 18.571430206298828px;&quot;&gt;Tecido camurça de 1,40mts de largura, estampado manualmente com tinta a base d’água.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 9px; font-family: Arial; font-size: 13px; line-height: 18.571430206298828px;&quot;&gt;&lt;strong style=&quot;box-sizing: border-box; color: rgb(119, 119, 119);&quot;&gt;Cuidados:&lt;/strong&gt;&lt;span style=&quot;box-sizing: border-box; color: rgb(119, 119, 119);&quot;&gt;&amp;nbsp;Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', 'tecido, camurça'),
(124, 1, 'Geo Roxo', '&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 9px; font-family: Arial; font-size: 13px; line-height: 18.571430206298828px;&quot;&gt;Suede fabric for 1.40 mts wide, stamped manually with water-based ink.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 9px; font-family: Arial; font-size: 13px; line-height: 18.571430206298828px;&quot;&gt;Care: To preserve the original look and ensure product durability wash gently with mild soap and use an iron on low temperature. Only iron inside out.&lt;/p&gt;\r\n', '', '', ''),
(125, 2, 'Onda Laranja', '&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 9px; font-family: Arial; font-size: 13px; line-height: 18.571430206298828px;&quot;&gt;Tecido camurça de 1,40mts de largura, estampado manualmente com tinta a base d’água.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 9px; font-family: Arial; font-size: 13px; line-height: 18.571430206298828px;&quot;&gt;&lt;strong style=&quot;box-sizing: border-box; color: rgb(119, 119, 119);&quot;&gt;Cuidados:&lt;/strong&gt;&lt;span style=&quot;box-sizing: border-box; color: rgb(119, 119, 119);&quot;&gt;&amp;nbsp;Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(125, 1, 'Onda Laranja', '&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 9px; font-family: Arial; font-size: 13px; line-height: 18.571430206298828px;&quot;&gt;Suede fabric for 1.40 mts wide, stamped manually with water-based ink.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 9px; font-family: Arial; font-size: 13px; line-height: 18.571430206298828px;&quot;&gt;Care: To preserve the original look and ensure product durability wash gently with mild soap and use an iron on low temperature. Only iron inside out.&lt;/p&gt;\r\n', '', '', ''),
(126, 2, 'Onda Copacabana', '&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 9px; font-family: Arial; font-size: 13px; line-height: 18.571430206298828px;&quot;&gt;Tecido camurça de 1,40mts de largura, estampado manualmente com tinta a base d’água.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 9px; font-family: Arial; font-size: 13px; line-height: 18.571430206298828px;&quot;&gt;&lt;strong style=&quot;box-sizing: border-box; color: rgb(119, 119, 119);&quot;&gt;Cuidados:&lt;/strong&gt;&lt;span style=&quot;box-sizing: border-box; color: rgb(119, 119, 119);&quot;&gt;&amp;nbsp;Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(126, 1, 'Onda Copacabana', '&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 9px; font-family: Arial; font-size: 13px; line-height: 18.571430206298828px;&quot;&gt;Suede fabric for 1.40 mts wide, stamped manually with water-based ink.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 9px; font-family: Arial; font-size: 13px; line-height: 18.571430206298828px;&quot;&gt;Care: To preserve the original look and ensure product durability wash gently with mild soap and use an iron on low temperature. Only iron inside out.&lt;/p&gt;\r\n', '', '', ''),
(127, 2, 'Oto Rato', '&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 9px; font-family: Arial; font-size: 13px; line-height: 18.571430206298828px;&quot;&gt;Tecido camurça de 1,40mts de largura, estampado manualmente com tinta a base d’água.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 9px; font-family: Arial; font-size: 13px; line-height: 18.571430206298828px;&quot;&gt;&lt;strong style=&quot;box-sizing: border-box; color: rgb(119, 119, 119);&quot;&gt;Cuidados:&lt;/strong&gt;&lt;span style=&quot;box-sizing: border-box; color: rgb(119, 119, 119);&quot;&gt;&amp;nbsp;Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(127, 1, 'Oto Castanho', '&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 9px; font-family: Arial; font-size: 13px; line-height: 18.571430206298828px;&quot;&gt;Suede fabric for 1.40 mts wide, stamped manually with water-based ink.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 9px; font-family: Arial; font-size: 13px; line-height: 18.571430206298828px;&quot;&gt;Care: To preserve the original look and ensure product durability wash gently with mild soap and use an iron on low temperature. Only iron inside out.&lt;/p&gt;\r\n', '', '', ''),
(128, 2, 'Otto Vermelho', '&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 9px; font-family: Arial; font-size: 13px; line-height: 18.571430206298828px;&quot;&gt;Tecido camurça de 1,40mts de largura, estampado manualmente com tinta a base d’água.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 9px; font-family: Arial; font-size: 13px; line-height: 18.571430206298828px;&quot;&gt;&lt;strong style=&quot;box-sizing: border-box; color: rgb(119, 119, 119);&quot;&gt;Cuidados:&lt;/strong&gt;&lt;span style=&quot;box-sizing: border-box; color: rgb(119, 119, 119);&quot;&gt;&amp;nbsp;Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(128, 1, 'Otto Red', '&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 9px; font-family: Arial; font-size: 13px; line-height: 18.571430206298828px;&quot;&gt;Suede fabric for 1.40 mts wide, stamped manually with water-based ink.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 9px; font-family: Arial; font-size: 13px; line-height: 18.571430206298828px;&quot;&gt;Care: To preserve the original look and ensure product durability wash gently with mild soap and use an iron on low temperature. Only iron inside out.&lt;/p&gt;\r\n', '', '', ''),
(276, 2, 'Almofada 50x50cm em  Algodão', '&lt;p&gt;Almofada em Puro algodão, ziper invisível, tamanho 50x50cm&lt;/p&gt;\r\n', 'Toque macio feita em algodão ', '', 'Pure Cotton Cotton, Exclusive, Textile Art, made in Brasil, Made in USA'),
(276, 1, 'Pillow  &quot;Remo&quot; 50x50cm', '&lt;p style=&quot;font-size: 13px;&quot;&gt;Cushion made ​​of cotton fabric with zipper. - Ideal for living rooms, bedrooms and other environments. With smooth and soft touch.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;Care: To preserve the original look and ensure durability of the product carefully washing, use mild soap at low temperature.&lt;/p&gt;\r\n', '100% pure cotton', '', ''),
(278, 2, 'Almofada 50x50cm em Algodão', '&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Almofada confeccionada em tecido algodão seda com toque suave e macio.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Fechamento com ziper invisível.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Enchimento em poliester.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Cuidados:&lt;/strong&gt; Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n', 'Toque macio feita em algodão ', '', ''),
(278, 1, 'Pillow  &quot;Losango &quot; 50x50cm', '&lt;div class=&quot;tab-content&quot; id=&quot;tab-description&quot; style=&quot;display: block;&quot;&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span id=&quot;result_box&quot; lang=&quot;en&quot;&gt;&lt;span class=&quot;hps&quot;&gt;Cushion&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;made ​​of&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;cotton&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt; with&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;smooth and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;soft touch&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;hps&quot;&gt;-&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;Closure with&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;invisible&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;zipper&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;hps&quot;&gt;- Filling&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;polyester&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;hps&quot;&gt;Care&lt;/span&gt;&lt;span&gt;:&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;To preserve&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;the original look&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;ensure&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;product durability&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;wash&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;gently&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;with mild soap&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and use&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;an iron&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;on&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;low temperature&lt;/span&gt;&lt;span&gt;.&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;Only iron&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;inside out&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;/div&gt;\r\n', 'Made in cotton', '', ''),
(130, 2, 'Top Laranja', '&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 9px; font-family: Arial; font-size: 13px; line-height: 18.571430206298828px;&quot;&gt;Tecido camurça de 1,40mts de largura, estampado manualmente com tinta a base d’água.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 9px; font-family: Arial; font-size: 13px; line-height: 18.571430206298828px;&quot;&gt;&lt;strong style=&quot;box-sizing: border-box; color: rgb(119, 119, 119);&quot;&gt;Cuidados:&lt;/strong&gt;&lt;span style=&quot;box-sizing: border-box; color: rgb(119, 119, 119);&quot;&gt;&amp;nbsp;Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', 'tecido, camurça'),
(130, 1, 'Top Laranja', '&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 9px; font-family: Arial; font-size: 13px; line-height: 18.571430206298828px;&quot;&gt;Suede fabric for 1.40 mts wide, stamped manually with water-based ink.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 9px; font-family: Arial; font-size: 13px; line-height: 18.571430206298828px;&quot;&gt;Care: To preserve the original look and ensure product durability wash gently with mild soap and use an iron on low temperature. Only iron inside out.&lt;/p&gt;\r\n', '', '', ''),
(131, 2, 'Top Roxo', '&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 9px; font-family: Arial; font-size: 13px; line-height: 18.571430206298828px;&quot;&gt;Tecido camurça de 1,40mts de largura, estampado manualmente com tinta a base d’água.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 9px; font-family: Arial; font-size: 13px; line-height: 18.571430206298828px;&quot;&gt;&lt;strong style=&quot;box-sizing: border-box; color: rgb(119, 119, 119);&quot;&gt;Cuidados:&lt;/strong&gt;&lt;span style=&quot;box-sizing: border-box; color: rgb(119, 119, 119);&quot;&gt;&amp;nbsp;Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', 'tecido, camurça'),
(131, 1, 'Top Roxo', '&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 9px; font-family: Arial; font-size: 13px; line-height: 18.571430206298828px;&quot;&gt;Suede fabric for 1.40 mts wide, stamped manually with water-based ink.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 9px; font-family: Arial; font-size: 13px; line-height: 18.571430206298828px;&quot;&gt;Care: To preserve the original look and ensure product durability wash gently with mild soap and use an iron on low temperature. Only iron inside out.&lt;/p&gt;\r\n', '', '', ''),
(132, 2, 'Alium Verde', '&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 9px; font-family: Arial; font-size: 13px; line-height: 18.571430206298828px;&quot;&gt;Tecido sarja de 1,40mts de largura, estampado manualmente com tinta a base d’água.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 9px; font-family: Arial; font-size: 13px; line-height: 18.571430206298828px;&quot;&gt;Estampa exclusiva Arte Têxtil.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 9px; font-family: Arial; font-size: 13px; line-height: 18.571430206298828px;&quot;&gt;&lt;strong style=&quot;box-sizing: border-box; color: rgb(119, 119, 119);&quot;&gt;Cuidados:&lt;/strong&gt;&lt;span style=&quot;box-sizing: border-box; color: rgb(119, 119, 119);&quot;&gt;&amp;nbsp;Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/span&gt;&lt;/p&gt;\r\n', 'Cotton fabric', '', 'Tecidos algodão sarja estampada'),
(132, 1, 'Alium Verde', '&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 9px; font-family: Arial; font-size: 13px; line-height: 18.571430206298828px;&quot;&gt;Suede fabric for 1.40 mts wide, stamped manually with water-based ink.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 9px; font-family: Arial; font-size: 13px; line-height: 18.571430206298828px;&quot;&gt;Care: To preserve the original look and ensure product durability wash gently with mild soap and use an iron on low temperature. Only iron inside out.&lt;/p&gt;\r\n', '', '', ''),
(135, 2, 'Janete Cru', '&lt;div class=&quot;tab-content&quot; id=&quot;tab-description&quot; style=&quot;display: block;&quot;&gt;\r\n&lt;p&gt;Tecido camurça de 1,40mts de largura, estampado manualmente com tinta a base d’água.&lt;/p&gt;\r\n\r\n&lt;p&gt;Cuidados: Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', '', 'tecido, camurça'),
(135, 1, 'Janete Cru', '&lt;div class=&quot;tab-content&quot; id=&quot;tab-description&quot; style=&quot;display: block;&quot;&gt;\r\n&lt;p&gt;Suede fabric for 1.40 mts wide, stamped manually with water-based ink.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Care: To preserve the original look and ensure product durability wash gently with mild soap and use an iron on low temperature. Only iron inside out.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', '', ''),
(298, 1, 'Exclusive Pillow', '&lt;p&gt;50x50cm&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;Cushion made ​​assemblage of hand printed fabric with zipper. - Ideal for living rooms, bedrooms and other environments. With smooth and soft touch.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;* The option includes the same filling with polyester.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;Care: To preserve the original look and ensure durability of the product carefully washing, use mild soap and iron at low temperature. Skip WS&lt;/p&gt;\r\n', '', '', ''),
(141, 2, 'Linho Savana', '&lt;div class=&quot;tab-content&quot; id=&quot;tab-description&quot; style=&quot;display: block;&quot;&gt;\r\n&lt;div class=&quot;tab-content&quot; id=&quot;tab-description&quot; style=&quot;display: block;&quot;&gt;\r\n&lt;div class=&quot;almost_half_cell&quot; id=&quot;gt-res-content&quot;&gt;\r\n&lt;div dir=&quot;ltr&quot; style=&quot;zoom:1&quot;&gt;&lt;span id=&quot;result_box&quot; lang=&quot;en&quot;&gt;&lt;span class=&quot;hps&quot;&gt;Linen&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;fabric&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;of 1.40&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;meters in width&lt;/span&gt;&lt;span&gt;,&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;digital print&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;on&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;Linen&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 9px; font-family: Arial; font-size: 13px; line-height: 18.571430206298828px;&quot;&gt;&lt;strong style=&quot;box-sizing: border-box; color: rgb(119, 119, 119);&quot;&gt;Cuidados:&lt;/strong&gt;&lt;span style=&quot;box-sizing: border-box; color: rgb(119, 119, 119);&quot;&gt;&amp;nbsp;Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/span&gt;&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n', '', '', 'tecido, camurça');
INSERT INTO `sh_product_description` (`product_id`, `language_id`, `name`, `description`, `meta_description`, `meta_keyword`, `tag`) VALUES
(141, 1, 'Linho Savana', '&lt;div class=&quot;tab-content&quot; id=&quot;tab-description&quot; style=&quot;display: block;&quot;&gt;\r\n&lt;div class=&quot;tab-content&quot; id=&quot;tab-description&quot; style=&quot;display: block;&quot;&gt;\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 9px; font-family: Arial; font-size: 13px; line-height: 18.571430206298828px;&quot;&gt;Suede fabric for 1.40 mts wide, stamped manually with water-based ink.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 9px; font-family: Arial; font-size: 13px; line-height: 18.571430206298828px;&quot;&gt;Care: To preserve the original look and ensure product durability wash gently with mild soap and use an iron on low temperature. Only iron inside out.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n', '', '', ''),
(142, 2, 'Otto Turquesa', '&lt;div class=&quot;tab-content&quot; id=&quot;tab-description&quot; style=&quot;display: block;&quot;&gt;\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 9px; font-family: Arial; font-size: 13px; line-height: 18.571430206298828px;&quot;&gt;Tecido camurça de 1,40mts de largura, estampado manualmente com tinta a base d’água.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 9px; font-family: Arial; font-size: 13px; line-height: 18.571430206298828px;&quot;&gt;&lt;strong style=&quot;box-sizing: border-box; color: rgb(119, 119, 119);&quot;&gt;Cuidados:&lt;/strong&gt;&lt;span style=&quot;box-sizing: border-box; color: rgb(119, 119, 119);&quot;&gt;&amp;nbsp;Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/span&gt;&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', '', 'tecido, camurça'),
(142, 1, 'Otto Turquesa', '&lt;div class=&quot;tab-content&quot; id=&quot;tab-description&quot; style=&quot;display: block;&quot;&gt;\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 9px; font-family: Arial; font-size: 13px; line-height: 18.571430206298828px;&quot;&gt;Suede fabric for 1.40 mts wide, stamped manually with water-based ink.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 9px; font-family: Arial; font-size: 13px; line-height: 18.571430206298828px;&quot;&gt;Care: To preserve the original look and ensure product durability wash gently with mild soap and use an iron on low temperature. Only iron inside out.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', '', ''),
(143, 2, 'Copo de Leite Azul', '&lt;div class=&quot;tab-content&quot; id=&quot;tab-description&quot; style=&quot;display: block;&quot;&gt;\r\n&lt;div class=&quot;tab-content&quot; id=&quot;tab-description&quot; style=&quot;display: block;&quot;&gt;\r\n&lt;p&gt;R$ 160,00 / Metro linear&lt;/p&gt;\r\n\r\n&lt;p&gt;Tecido camurça de 1,40mts de largura,&amp;nbsp; tecido estampado manualmente com tinta a base d’água, sem metal pesado.&lt;/p&gt;\r\n\r\n&lt;p&gt;Estampa Copo de Leite Azul&lt;/p&gt;\r\n\r\n&lt;p&gt;Cuidados: Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n', '', '', 'tecido, camurça'),
(143, 1, 'Copo de Leite Azul', '&lt;div class=&quot;tab-content&quot; id=&quot;tab-description&quot; style=&quot;display: block;&quot;&gt;\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 9px; font-family: Arial; font-size: 13px; line-height: 18.571430206298828px;&quot;&gt;Suede fabric for 1.40 mts wide, stamped manually with water-based ink.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 9px; font-family: Arial; font-size: 13px; line-height: 18.571430206298828px;&quot;&gt;Care: To preserve the original look and ensure product durability wash gently with mild soap and use an iron on low temperature. Only iron inside out.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', '', ''),
(297, 2, 'Almofada única', '&lt;p&gt;Almofada confeccionada com assemblage de tecidos&lt;strong&gt; &lt;/strong&gt;e aplicações, peças únicas vindas das telas e paniéis da artista Isabella Carvalho.&lt;/p&gt;\r\n\r\n&lt;p&gt;Veludo, tecido camurça, algodão, puro luxo que compões imagens se sonhos, sofisticação e conforto por excelência.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Fechamento com ziper invisível.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Enchimento em poliester.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Cuidados:&lt;/strong&gt; Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n\r\n&lt;p&gt;Pode haver diferença nas cores devido a calibração de cada monitor.&lt;/p&gt;\r\n\r\n&lt;p&gt;Tamanho de 50x50cm&lt;/p&gt;\r\n', '', '', 'Almofadas exclusivas, almofadas Arte Têxtil, decoração, luxo, autoria, linda'),
(297, 1, 'Exclusive Pillow', '&lt;p&gt;50x50cm&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;Cushion made ​​assemblage of hand printed fabric with zipper. - Ideal for living rooms, bedrooms and other environments. With smooth and soft touch.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;* The option includes the same filling with polyester.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;Care: To preserve the original look and ensure durability of the product carefully washing, use mild soap and iron at low temperature. Skip WS&lt;/p&gt;\r\n', '', '', ''),
(145, 2, 'Hortência Marrom', '&lt;div class=&quot;tab-content&quot; id=&quot;tab-description&quot; style=&quot;display: block;&quot;&gt;\r\n&lt;div class=&quot;tab-content&quot; id=&quot;tab-description&quot; style=&quot;display: block;&quot;&gt;\r\n&lt;p&gt;Tecido camurça de 1,40mts de largura, estampado manualmente com tinta a base d’água.&lt;/p&gt;\r\n\r\n&lt;p&gt;Cuidados: Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n', '', '', 'tecido, camurça'),
(145, 1, 'Hortência Marrom', '&lt;div class=&quot;tab-content&quot; id=&quot;tab-description&quot; style=&quot;display: block;&quot;&gt;\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 9px; font-family: Arial; font-size: 13px; line-height: 18.571430206298828px;&quot;&gt;Suede fabric for 1.40 mts wide, stamped manually with water-based ink.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 9px; font-family: Arial; font-size: 13px; line-height: 18.571430206298828px;&quot;&gt;Care: To preserve the original look and ensure product durability wash gently with mild soap and use an iron on low temperature. Only iron inside out.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', '', ''),
(311, 2, 'Linho Girassol', '&lt;p&gt;TECIDOS ARTE TÊXTIL&amp;nbsp; coleção 2015&lt;/p&gt;\r\n\r\n&lt;p&gt;Florais e geométricos estes tecidos foram inspirados para trazer alegria para o ambiente, estofados ou paredes, Linho Girassol, tecidos macios e suáves.&lt;/p&gt;\r\n\r\n&lt;p&gt;Tecidos com 140 cm de largura, desenhos exclusivos do Atelier Arte Têxtil, vendidos a metro e a rolo, atacado e varejo, informe-se sobre as nossas condições para logistas, solicite também o catálogo por e-mail&lt;/p&gt;\r\n\r\n&lt;p&gt;contato@artetextil.net ou se preferir pode nos ligar no telefone 11 2639 8208. das 10:00 às 18:00 horas, de segunda a sexta-feira.&lt;/p&gt;\r\n', 'Linho Arte Têxtil ', 'Tecidos estampados Arte Têxtil nova coleção de tecidos', 'TECIDO  TECIDOS ESTAMPADOS  TECIDO PARA DECORAÇÃO'),
(311, 1, 'SUNFLOWER FABRIC', '&lt;pre class=&quot;tw-data-text vk_txt tw-ta tw-text-small&quot; data-fulltext=&quot;&quot; data-placeholder=&quot;Tradução&quot; dir=&quot;ltr&quot; id=&quot;tw-target-text&quot; style=&quot;text-align: left; height: 576px;&quot;&gt;\r\n&lt;span&gt;TEXTILE FABRIC ART Collection 2015\r\n\r\nFloral and geometric these tissues wAS inspired to bring joy to the environment , or upholstered walls , Linen sunflower FABRIC soft and smooth.\r\n\r\nFabrics with 140 cm wide , unique designs of Atelier Textile Art ( Arte Têxtil ), sold by the meter and the roll, wholesale and retail, inquire about our conditions for shopkeepers also request the catalog by email\r\n\r\ncontato@artetextil.net or if you prefer you can call us on the phone 0055 11 2639 8208 / 10:00 to 18:00 hours , Monday to Friday.&lt;/span&gt;&lt;/pre&gt;\r\n', 'SUEDE ECOPRINTED\r\n', 'SUEDE TEXTILE ARTE\r\n', 'EXCLUSIVE LUXURY CREATIVE FABRIC'),
(148, 2, 'Camurça Copo de Leite Azul 50x50cm - 30x60cm', '&lt;p&gt;30x60cm - R$110,00 | 30x60cm Capa - R$100,00&lt;/p&gt;\r\n\r\n&lt;p&gt;50x50cm - R$130,00 | 50x50cm Capa - R$120,00&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;&amp;nbsp;Almofada confeccionada em tecido &lt;strong&gt;Camurça&lt;/strong&gt; Arte Têxtil, estampado manualmente com toque suave e macio.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;- Fechamento&lt;span style=&quot;line-height: 1.6em;&quot;&gt; com ziper invisível.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;- Enchimento em poliester.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;&lt;strong&gt;Cuidados:&lt;/strong&gt; Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n', '', '', 'decoração, casa, quarto, criativo, inovador, almofada,'),
(148, 1, 'Camurça Copo de Leite Azul 50x50cm - 40x60cm - 30x60cm', '&lt;p&gt;30x60cm - R$108,00 | 30x60cm&amp;nbsp; Cover&amp;nbsp; -&amp;nbsp; R$90,00&lt;/p&gt;\r\n\r\n&lt;p&gt;50x50cm - R$130,00 | 50x50cm Cover&amp;nbsp;&amp;nbsp; -&amp;nbsp; R$110,00&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;Care: To preserve the original look and ensure durability of the product carefully washing, use mild soap and iron at low temperature. Skip WS.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', '', '', 'Pillow, exclusive pillow, arte textil testil art, pillow in Suede'),
(301, 2, 'Almofada única', '&lt;p&gt;Almofada confeccionada com assemblage de tecidos&lt;strong&gt; &lt;/strong&gt;e aplicações, peças únicas vindas das telas e paniéis da artista Isabella Carvalho.&lt;/p&gt;\r\n\r\n&lt;p&gt;Veludo e tecido camurça, puro luxo que compõe imagens de sonho, sofisticação e conforto por excelência.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Fechamento com ziper invisível.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Enchimento em poliester.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Cuidados:&lt;/strong&gt; Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n\r\n&lt;p&gt;Pode haver diferença nas cores devido a calibração de cada monitor.&lt;/p&gt;\r\n\r\n&lt;p&gt;Tamanho de 50x50cm&lt;/p&gt;\r\n', '', '', ''),
(301, 1, 'Exclusive Pillow', '&lt;p&gt;50x50cm&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;Cushion made ​​assemblage of hand printed fabric by the artist Isabella Carvalho&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;with zipper. - Ideal for living rooms, bedrooms and other environments. With smooth and soft touch.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;* The option includes the same filling with polyester.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;Care: To preserve the original look and ensure durability of the product carefully washing, use mild soap and iron at low temperature. Skip WS&lt;/p&gt;\r\n', '', '', ''),
(305, 2, 'Almofada única', '&lt;p&gt;Almofada confeccionada com assemblage de tecidos&lt;strong&gt; &lt;/strong&gt;e aplicações, peças únicas vindas das telas e paniéis da artista Isabella Carvalho.&lt;/p&gt;\r\n\r\n&lt;p&gt;Em tecido camurça, puro luxo que compões imagens se sonhos, sofisticação e conforto por excelência.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Fechamento com ziper invisível.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Enchimento em poliester.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Cuidados:&lt;/strong&gt; Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n\r\n&lt;p&gt;Pode haver diferença nas cores devido a calibração de cada monitor.&lt;/p&gt;\r\n\r\n&lt;p&gt;Tamanho de 50x50cm&lt;/p&gt;\r\n', '', '', ''),
(305, 1, 'Exclusive Pillow', '&lt;p&gt;50x50cm&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;Cushion made ​​assemblage of hand printed suede fabric&amp;nbsp; ---&amp;nbsp;&amp;nbsp;&amp;nbsp; with zipper. - Ideal for living rooms, bedrooms and other environments. With smooth and soft touch.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;* The option includes the same filling with polyester.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;Care: To preserve the original look and ensure durability of the product carefully washing, use mild soap and iron at low temperature. Skip WS&lt;/p&gt;\r\n', '', '', ''),
(306, 2, 'Almofada única', '&lt;p&gt;Almofada confeccionada com assemblage de tecidos&lt;strong&gt; &lt;/strong&gt;e aplicações, peças únicas vindas das telas e paniéis da artista Isabella Carvalho.&lt;/p&gt;\r\n\r\n&lt;p&gt;Em tecido camurça, assemblage de tecidos, puro luxo que compõe imagen de sonhos, conforto por excelência.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Fechamento com ziper invisível.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Enchimento em poliester.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Cuidados:&lt;/strong&gt; Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n\r\n&lt;p&gt;Pode haver diferença nas cores devido a calibração de cada monitor.&lt;/p&gt;\r\n\r\n&lt;p&gt;Tamanho de 50x50cm&lt;/p&gt;\r\n', '', '', ''),
(306, 1, 'Exclusive Pillow', '&lt;p&gt;50x50cm&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;Cushion made ​​assemblage of hand printed suede fabric&amp;nbsp; ---&amp;nbsp;&amp;nbsp;&amp;nbsp; with zipper. - Ideal for living rooms, bedrooms and other environments. With smooth and soft touch.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;* The option includes the same filling with polyester.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;Care: To preserve the original look and ensure durability of the product carefully washing, use mild soap and iron at low temperature. Skip WS&lt;/p&gt;\r\n', '', '', ''),
(317, 1, 'Losango', '&lt;p&gt;120 x 50cm&lt;/p&gt;\r\n', '', '', ''),
(316, 1, 'COTTON  Remo', '&lt;p&gt;&amp;nbsp;1,20 x 50cm&lt;/p&gt;\r\n', '', '', ''),
(115, 2, 'Camurça Floral Roxo 50x50cm - 30x60cm', '&lt;div class=&quot;tab-content&quot; id=&quot;tab-description&quot; style=&quot;display: block;&quot;&gt;\r\n&lt;p&gt;30x60cm - R$110,00 | 30x60cm Capa - R$100,00&lt;/p&gt;\r\n\r\n&lt;p&gt;50x50cm - R$130,00 | 50x50cm Capa - R$120,00&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;&amp;nbsp;Almofada confeccionada em tecido &lt;strong&gt;Camurça&lt;/strong&gt; Arte Têxtil, estampado manualmente com toque suave e macio.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;- Fechamento&lt;span style=&quot;line-height: 1.6em;&quot;&gt; com ziper invisível.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;- Enchimento em poliester.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;&lt;strong&gt;Cuidados:&lt;/strong&gt; Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', 'Almofada confeccionada em tecido Camurça Arte Têxtil, estampado manualmente com toque suave e macio.', '', 'decoração, casa, quarto, criativo, inovador, almofada, camurça'),
(89, 2, 'Algodão Primavera Laranja 30x60cm', '&lt;p&gt;30x60cm - R$70,00 | 30x60cm Capa - R$ 60,00&lt;/p&gt;\r\n\r\n&lt;p&gt;Almofada confeccionada em tecido &lt;strong&gt;Algodão&lt;/strong&gt;, estampado manualmente com toque suave e macio.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Fechamento com ziper invisível.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Enchimento em poliester.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Cuidados:&lt;/strong&gt; Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', '', '', 'decoração, casa, quarto, criativo, inovador, almofada,'),
(89, 1, 'Algodão Primavera Laranja 30x60cm', '&lt;p&gt;30x60cm - R$70,00 | 30x60cm Capa - R$ 60,00&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;Cushion made ​​of cotton and hand printed fabric with zipper. - Ideal for living rooms, bedrooms and other environments. With smooth and soft touch.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;* The option includes the same filling with polyester.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Care: To preserve the original look and ensure durability of the product carefully washing, use mild soap and iron at low temperature. Skip WS&lt;/p&gt;\r\n', '', '', ''),
(147, 2, 'Algodão Repolho Vermelho 30x60cm ', '&lt;p&gt;30x60cm - R$70,00 | 30x60cm Capa - R$ 60,00&lt;/p&gt;\r\n\r\n&lt;p&gt;Almofada confeccionada em tecido &lt;strong&gt;Algodão&lt;/strong&gt;, estampado manualmente com toque suave e macio.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Fechamento com ziper invisível.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Enchimento em poliester.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Cuidados:&lt;/strong&gt; Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n', '', '', ''),
(147, 1, 'Algodão Repolho Vermelho 30x60cm - 40x60cm', '&lt;p&gt;30x60cm - R$70,00 | 30x60cm Capa - R$ 60,00&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;Cushion made ​​of cotton and hand printed fabric with zipper. - Ideal for living rooms, bedrooms and other environments. With smooth and soft touch.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;* The option includes the same filling with polyester.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;Care: To preserve the original look and ensure durability of the product carefully washing, use mild soap and iron at low temperature. Skip WS.&lt;/p&gt;\r\n', '', '', 'Pillow, exclusive pillow, arte textil  art, pillow cotton.'),
(116, 2, 'Camurça Top Vermelho  e Geo Turquesa 50x50cm', '&lt;div class=&quot;tab-content&quot; id=&quot;tab-description&quot; style=&quot;display: block;&quot;&gt;\r\n&lt;p&gt;50x50cm - R$160,00 | 50x50cm Capa - R$140,00&lt;/p&gt;\r\n\r\n&lt;p&gt;Almofada confeccionada em tecido &lt;strong&gt;Camurça&lt;/strong&gt;, estampado manualmente com toque suave e macio.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Fechamento com ziper invisível.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Enchimento em poliester.&lt;/p&gt;\r\n\r\n&lt;p&gt;Cuidados: Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', '', 'decoração, casa, quarto, criativo, inovador, almofada, camurça'),
(116, 1, 'Camurça Top Vermelho  e Geo Turquesa 50x50cm', '&lt;div class=&quot;tab-content&quot; id=&quot;tab-description&quot; style=&quot;display: block;&quot;&gt;\r\n&lt;p&gt;50x50cm - R$160,00 | 50x50cm Capa - R$140,00&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span id=&quot;result_box&quot; lang=&quot;en&quot;&gt;&lt;span class=&quot;hps&quot;&gt;Cushion&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;made ​​of&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;suede&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;fabric&lt;/span&gt;&lt;span&gt;,&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;hand&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;stamped&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;with&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;smooth and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;soft touch&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;hps&quot;&gt;-&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;Closure with&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;invisible&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;zipper&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;hps&quot;&gt;- Filling&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;polyester&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;hps&quot;&gt;Care&lt;/span&gt;&lt;span&gt;:&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;To preserve&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;the original look&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;ensure&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;product durability&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;wash&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;gently&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;with mild soap&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and use&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;an iron&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;on&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;low temperature&lt;/span&gt;&lt;span&gt;.&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;Only iron&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;inside out&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', '', ''),
(170, 2, 'Algodão Floral Vermelho e Primavera Laranja 50x50cm', '&lt;p&gt;50x50cm - R$120,00 | 50x50cm Capa - R$100,00&lt;/p&gt;\r\n\r\n&lt;p&gt;Almofada confeccionada em tecido &lt;strong&gt;Algodão&lt;/strong&gt;, estampado manualmente com toque suave e macio.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Fechamento com ziper invisível.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Enchimento em poliester.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Cuidados:&lt;/strong&gt; Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', '', '', 'decoração, casa, quarto, criativo, inovador, almofada, algodão'),
(170, 1, 'Algodão Floral Vermelho e Primavera Laranja 50x50cm', '&lt;p&gt;50x50cm - R$120,00 | 50x50cm Capa - R$100,00&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;Cushion made ​​of cotton and hand printed fabric with zipper. - Ideal for living rooms, bedrooms and other environments. With smooth and soft touch.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;* The option includes the same filling with polyester.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;Care: To preserve the original look and ensure durability of the product carefully washing, use mild soap and iron at low temperature. Skip WS.&lt;/p&gt;\r\n', '', '', ''),
(291, 2, 'Almofada 50x50cm - composição em Algodão e Linho', '&lt;p&gt;Almofada com composição em Puro algodão e Linho, ziper invisível, tamanho 50x50cm&lt;/p&gt;\r\n\r\n&lt;p&gt;Estampas Losango e Rosácea&lt;/p&gt;\r\n', '', '', 'Almofada  algodão, exclusiva Arte Têxtil, Nova Coleção de almofadas'),
(291, 1, 'Pillow in linen with cotton 50x50cm', '&lt;p style=&quot;font-size: 13px;&quot;&gt;Cushion made ​​of cotton and linen fabric with zipper. - Ideal for living rooms, bedrooms and other environments. With smooth and soft touch.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;Care: To preserve the original look and ensure durability of the product carefully washing, use mild soap at low temperature.&lt;/p&gt;\r\n', '', '', 'decoração, casa, quarto, criativo, inovador, almofada, pillow'),
(292, 2, 'Almofada 50x50cm - composição em Algodão e Linho', '&lt;p&gt;Almofada com composição em Puro algodão e Linho, ziper invisível, tamanho 50x50cm&lt;/p&gt;\r\n\r\n&lt;p&gt;Estampas Remo e Girassol&lt;/p&gt;\r\n', '', '', ''),
(292, 1, 'Pillow in Linen and cotton 50x50cm', '&lt;p style=&quot;font-size: 13px;&quot;&gt;Cushion made ​​of cotton and linen fabric with zipper. - Ideal for living rooms, bedrooms and other environments. With smooth and soft touch.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;Care: To preserve the original look and ensure durability of the product carefully washing, use mild soap at low temperature.&lt;/p&gt;\r\n', 'Design  Remo and Sun Flower', '', ''),
(295, 2, 'Almofada 30x60cm em Algodão', '&lt;p&gt;30x60cm - R$92,00&lt;/p&gt;\r\n\r\n&lt;p&gt;Almofada confeccionada em tecido algodão seda com toque suave e macio.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Fechamento com ziper invisível.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Enchimento em poliester.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Cuidados:&lt;/strong&gt; Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n', 'Algodão Seda', '', ''),
(295, 1, 'Pillow  &quot;Losango &quot; 30x60cm', '&lt;div class=&quot;tab-content&quot; id=&quot;tab-description&quot; style=&quot;display: block;&quot;&gt;\r\n&lt;p&gt;30x60cm - R$92,00&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span id=&quot;result_box&quot; lang=&quot;en&quot;&gt;&lt;span class=&quot;hps&quot;&gt;Cushion&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;made ​​of&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;cotton&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt; with&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;smooth and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;soft touch&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;hps&quot;&gt;-&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;Closure with&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;invisible&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;zipper&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;hps&quot;&gt;- Filling&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;polyester&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;hps&quot;&gt;Care&lt;/span&gt;&lt;span&gt;:&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;To preserve&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;the original look&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;ensure&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;product durability&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;wash&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;gently&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;with mild soap&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and use&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;an iron&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;on&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;low temperature&lt;/span&gt;&lt;span&gt;.&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;Only iron&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;inside out&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', '', ''),
(296, 2, 'Almofada 30x60cm em Algodão', '&lt;p&gt;Almofada feita em puro algodão Arte Têxtil, na medida 50x50cm, estampa exclusiva &quot;Remo&quot;&lt;/p&gt;\r\n\r\n&lt;p&gt;30x60cm - R$92,00 | 30x60cm Capa - R$82,00&lt;/p&gt;\r\n\r\n&lt;p&gt;Almofada confeccionada em tecido &lt;strong&gt;Algodão&lt;/strong&gt;, com toque suave e macio.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Fechamento com ziper invisível.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Enchimento em poliester.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Cuidados:&lt;/strong&gt; Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n', 'Almofada feita em puro algodão Arte Têxtil', 'Almofada de Algodão', ''),
(296, 1, 'Pillow  &quot;Remo&quot; 30x60cm', '&lt;p&gt;Made in 100% Pure Cotton Arte Têxtil,&amp;nbsp; 30x60cm&lt;/p&gt;\r\n\r\n&lt;p&gt;30x60cm - R$140,00 | 30x60cm Capa - R$120,00&lt;/p&gt;\r\n', 'Pure Cotton exclusive pillow by Arte Têxtil', '', 'Pillow, exclusive pillow, arte textil testil art, pillow in pure cotton'),
(100, 1, 'Camurça Geo Roxo e Floral Bege 50x50cm', '&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;50x50cm - R$130,00 | 50x50cm Capa - R$120,00&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span id=&quot;result_box&quot; lang=&quot;en&quot;&gt;&lt;span class=&quot;hps&quot;&gt;Cushion&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;made ​​of&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;suede&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;fabric&lt;/span&gt;&lt;span&gt;,&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;hand&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;stamped&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;with&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;smooth and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;soft touch&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;hps&quot;&gt;-&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;Closure with&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;invisible&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;zipper&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;hps&quot;&gt;- Filling&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;polyester&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;hps&quot;&gt;Care&lt;/span&gt;&lt;span&gt;:&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;To preserve&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;the original look&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;ensure&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;product durability&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;wash&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;gently&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;with mild soap&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and use&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;an iron&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;on&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;low temperature&lt;/span&gt;&lt;span&gt;.&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;Only iron&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;inside out&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(280, 2, 'Almofada em Linho 50x50cm ', '&lt;p&gt;Almofada em linho, ziper invisível, tamanho 50x50cm, toque suave e macio.&lt;/p&gt;\r\n', ' Estampa Girassol', '', ''),
(280, 1, 'Pillow  &quot;SUNFLOWER&quot;   50x50cm', '&lt;p style=&quot;font-size: 13px;&quot;&gt;Cushion made ​​of linen fabric with zipper. - Ideal for living rooms, bedrooms and other environments. With smooth and soft touch.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;Care: To preserve the original look and ensure durability of the product carefully washing, use mild soap at low temperature.&lt;/p&gt;\r\n', 'Made in linen fabric', '', ''),
(281, 2, 'Almofada em Linho 30x60cm ', '&lt;p&gt;Almofada em linho, ziper invisível, tamanho 30x60cm, toque suave e macio.&lt;/p&gt;\r\n', '', '', ''),
(281, 1, 'Pillow  &quot;SUNFLOWER&quot;   30x60cm', '&lt;p&gt;Cushion made ​​of linen fabric with zipper. - Ideal for living rooms, bedrooms and other environments. With smooth and soft touch.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;30X60CM&lt;/p&gt;\r\n', '', '', ''),
(282, 2, 'Almofada em Linho 50x50cm ', '&lt;p&gt;Almofada em linho, ziper invisível, tamanho 50x50cm, toque suave e macio.&lt;/p&gt;\r\n', 'Almofada em linho, estampa Girassol no tamanho de 50x50cm', '', ''),
(282, 1, 'Pillow  &quot; ROSE FLOWER &quot;   50x50cm', '&lt;p style=&quot;font-size: 13px;&quot;&gt;Cushion made ​​of linen fabric with zipper. - Ideal for living rooms, bedrooms and other environments. With smooth and soft touch.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;Care: To preserve the original look and ensure durability of the product carefully washing, use mild soap at low temperature.&lt;/p&gt;\r\n', 'Made in linen fabric', '', ''),
(283, 2, 'Almofada em Linho 30x60cm', '&lt;p&gt;Almofada em linho com a estampa exclusiva do atelier Arte Têxtil,&lt;/p&gt;\r\n\r\n&lt;p&gt;ziper invisível, tamanho 50x50cm, toque suave e macio.&lt;/p&gt;\r\n', 'Almofada em linho, estampa Girassol no tamanho de 30x60cm', '', ''),
(283, 1, 'Pillow  &quot; ROSE FLOWER &quot;   30x60cm', '&lt;p style=&quot;font-size: 13px;&quot;&gt;Cushion made ​​of linen fabric with zipper.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;Exclusive design by Arte Têxtil&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;Ideal for living rooms, bedrooms and other environments. With smooth and soft touch.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;Care: To preserve the original look and ensure durability of the product carefully washing, use mild soap at low temperature.&lt;/p&gt;\r\n', '', '', ''),
(202, 1, 'Camurça Oto Bege 50x50cm', '&lt;p&gt;50x50cm - R$160,00 | 50x50cm Capa - R$140,00&lt;/p&gt;\r\n\r\n&lt;p&gt;Cushion made ​​of suede, hand printed fabric - fabric and stamped manually with zipper. - Ideal for living rooms, bedrooms and other environments. With smooth and soft touch.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;* The option includes the same filling with polyester.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Care: To preserve the original look and ensure durability of the product carefully washing, use mild soap and iron at low temperature. Skip WS.&lt;/p&gt;\r\n', '', '', ''),
(202, 2, 'Camurça Oto Bege 50x50cm', '&lt;p&gt;50x50cm - R$160,00 | 50x50cm Capa - R$140,00&lt;/p&gt;\r\n\r\n&lt;p&gt;Almofada confeccionada em tecido &lt;strong&gt;Camurça&lt;/strong&gt;, estampado manualmente com toque suave e macio.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Fechamento com ziper invisível.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Enchimento em poliester.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Cuidados:&lt;/strong&gt; Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', '', '', 'decoração, casa, quarto, criativo, inovador, almofada, '),
(205, 2, 'Algodão Jessup Turquesa e Repolho Azul 50x50cm', '&lt;p&gt;50x50cm - R$120,00 | 50x50cm Capa - R$100,00&lt;/p&gt;\r\n\r\n&lt;p&gt;Almofada confeccionada em tecido &lt;strong&gt;Algodão&lt;/strong&gt;, estampado manualmente com toque suave e macio.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Fechamento com ziper invisível.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Enchimento em poliester.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Cuidados:&lt;/strong&gt; Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n', '', '', 'decoração, casa, quarto, criativo, inovador, almofada, algodão'),
(205, 1, 'Algodão Jessup Turquesa e Repolho Azul 50x50cm', '&lt;p&gt;50x50cm - R$120,00 | 50x50cm Capa - R$100,00&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;Cushion made ​​of cotton and hand printed fabric with zipper. - Ideal for living rooms, bedrooms and other environments. With smooth and soft touch.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;* The option includes the same filling with polyester.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;Care: To preserve the original look and ensure durability of the product carefully washing, use mild soap and iron at low temperature. Skip WS.&lt;/p&gt;\r\n', '', '', ''),
(208, 2, 'Algodão Folhas Amarelo e Repolho Cru 50x50cm', '&lt;p&gt;50x50cm - R$120,00 | 50x50cm Capa - R$100,00&lt;/p&gt;\r\n\r\n&lt;p&gt;Almofada confeccionada em tecido &lt;strong&gt;Algodão&lt;/strong&gt;, estampado manualmente com toque suave e macio.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Fechamento com ziper invisível.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Enchimento em poliester.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Cuidados:&lt;/strong&gt; Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n', '', '', 'decoração, casa, quarto, criativo, inovador, almofada, algodão'),
(208, 1, 'Algodão Folhas Amarelo e Repolho Cru 50x50cm', '&lt;p&gt;50x50cm - R$120,00 | 50x50cm Capa - R$100,00&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;Cushion made ​​of cotton and hand printed fabric with zipper. - Ideal for living rooms, bedrooms and other environments. With smooth and soft touch.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;* The option includes the same filling with polyester.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;Care: To preserve the original look and ensure durability of the product carefully washing, use mild soap and iron at low temperature. Skip WS.&lt;/p&gt;\r\n', '', '', ''),
(212, 2, 'Algodão Jessup Branco e Floral Verdel 50x50cm', '&lt;p&gt;50x50cm - R$120,00 | 50x50cm Capa - R$100,00&lt;/p&gt;\r\n\r\n&lt;p&gt;Almofada confeccionada em tecido &lt;strong&gt;Algodão&lt;/strong&gt;, estampado manualmente com toque suave e macio.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Fechamento com ziper invisível.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Enchimento em poliester.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Cuidados:&lt;/strong&gt; Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n', '', '', 'decoração, casa, quarto, criativo, inovador, almofada, algodão'),
(212, 1, 'Algodão Jessup Branco e Floral Verdel 50x50cm', '&lt;p&gt;50x50cm - R$120,00 | 50x50cm Capa - R$100,00&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;Cushion made ​​of cotton and hand printed fabric with zipper. - Ideal for living rooms, bedrooms and other environments. With smooth and soft touch.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;* The option includes the same filling with polyester.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;Care: To preserve the original look and ensure durability of the product carefully washing, use mild soap and iron at low temperature. Skip WS.&lt;/p&gt;\r\n', '', '', ''),
(213, 2, 'Camurça Floral Pink 50x50cm', '&lt;p&gt;50x50cm - R$160,00 | 50x50cm Capa - R$140,00&lt;/p&gt;\r\n\r\n&lt;p&gt;Almofada confeccionada em tecido&lt;strong&gt; Camurça&lt;/strong&gt;, estampado manualmente com toque suave e macio.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Fechamento com ziper invisível.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Enchimento em poliester.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Cuidados:&lt;/strong&gt; Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', '', '', 'decoração, casa, quarto, criativo, inovador, almofada, camurça'),
(213, 1, 'Camurça Floral Pink 50x50cm', '&lt;p&gt;50x50cm - R$160,00 | 50x50cm Capa - R$140,00&lt;/p&gt;\r\n\r\n&lt;p&gt;Cushion made ​​of suede, hand printed fabric - fabric and stamped manually with zipper. - Ideal for living rooms, bedrooms and other environments. With smooth and soft touch.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;* The option includes the same filling with polyester.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Care: To preserve the original look and ensure durability of the product carefully washing, use mild soap and iron at low temperature. Skip WS.&lt;/p&gt;\r\n', '', '', ''),
(221, 2, 'Camurça Oto Turquesa  50x50cm  -  30x60cm', '&lt;p&gt;30x60cm - R$110,00 | 30x60cm Capa - R$100,00&lt;/p&gt;\r\n\r\n&lt;p&gt;50x50cm - R$130,00 | 50x50cm Capa - R$120,00&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;&amp;nbsp;Almofada confeccionada em tecido &lt;strong&gt;Camurça&lt;/strong&gt; Arte Têxtil, estampado manualmente com toque suave e macio.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;- Fechamento&lt;span style=&quot;line-height: 1.6em;&quot;&gt; com ziper invisível.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;- Enchimento em poliester.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;&lt;strong&gt;Cuidados:&lt;/strong&gt; Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n', '', '', 'decoração, casa, quarto, criativo, inovador, almofada, '),
(221, 1, 'Suede  Oto Turquesa  50x50cm  - 30x60cm', '&lt;p&gt;30x60cm - R$110,00 | 30x60cm Capa - R$100,00&lt;/p&gt;\r\n\r\n&lt;p&gt;50x50cm - R$130,00 | 50x50cm Capa - R$120,00&lt;/p&gt;\r\n\r\n&lt;p&gt;Cushion made ​​of suede, hand printed fabric - fabric and stamped manually with zipper. - Ideal for living rooms, bedrooms and other environments. With smooth and soft touch.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;* The option includes the same filling with polyester.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Care: To preserve the original look and ensure durability of the product carefully washing, use mild soap and iron at low temperature. Skip WS.&lt;/p&gt;\r\n', '', '', ''),
(229, 2, 'Bolsa Chelsea Conexão Marrom', '&lt;p&gt;Chelsea: R$ 240,00 | 36,6cm x 58cm&lt;/p&gt;\r\n\r\n&lt;p&gt;Bolsa confeccionada em tecido Camurça, estampado manualmente com alça em couro.&lt;/p&gt;\r\n\r\n&lt;p&gt;Cuidados: Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', '', '', 'bolsa, '),
(229, 1, 'Bolsa Chelsea Conexão Marrom', '&lt;p&gt;Chelsea: R$ 240,00 | 36,6cm x 58cm&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span lang=&quot;en&quot;&gt;&lt;span class=&quot;hps&quot;&gt;Bag&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;made ​​of&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;Suede&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;fabric&lt;/span&gt;&lt;span&gt;,&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;leather&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;hand&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;stamped&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;hps&quot;&gt;Care&lt;/span&gt;&lt;span&gt;:&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;To preserve&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;the original look&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;ensure&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;product durability&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;wash&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;gently&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;with mild soap&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and use&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;an iron&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;on&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;low temperature&lt;/span&gt;&lt;span&gt;.&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;Only iron&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;inside out&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(233, 2, 'Camurça Oto Vermelho 50X50cm - 30x60cm - 40x60cm', '&lt;p&gt;30x60cm - R$110,00 | 30x60cm Capa - R$100,00&lt;/p&gt;\r\n\r\n&lt;p&gt;50x50cm - R$130,00 | 50x50cm Capa - R$120,00&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;&amp;nbsp;Almofada confeccionada em tecido &lt;strong&gt;Camurça&lt;/strong&gt; Arte Têxtil, estampado manualmente com toque suave e macio.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;- Fechamento&lt;span style=&quot;line-height: 1.6em;&quot;&gt; com ziper invisível.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;- Enchimento em poliester.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;&lt;strong&gt;Cuidados:&lt;/strong&gt; Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n', '', '', 'decoração, casa, quarto, criativo, inovador, almofada, camurça'),
(233, 1, 'Suede Oto Red  50X50cm - 30x60cm ', '&lt;p&gt;30x60cm - R$110,00 | 30x60cm Capa - R$100,00&lt;/p&gt;\r\n\r\n&lt;p&gt;50x50cm - R$130,00 | 50x50cm Capa - R$120,00&lt;/p&gt;\r\n\r\n&lt;p&gt;Cushion made ​​of suede, hand printed fabric - fabric and stamped manually with zipper. - Ideal for living rooms, bedrooms and other environments. With smooth and soft touch.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;* The option includes the same filling with polyester.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Care: To preserve the original look and ensure durability of the product carefully washing, use mild soap and iron at low temperature. Skip WS.&lt;/p&gt;\r\n', '', '', ''),
(268, 1, 'Camurça Floral Copacabana e Oto Rato 50x50cm', '&lt;p&gt;50x50cm - R$160,00 | 50x50cm Capa - R$140,00&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span id=&quot;result_box&quot; lang=&quot;en&quot;&gt;&lt;span class=&quot;hps&quot;&gt;Cushion&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;made ​​of&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;suede&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;fabric&lt;/span&gt;&lt;span&gt;,&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;hand&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;stamped&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;with&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;smooth and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;soft touch&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;hps&quot;&gt;-&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;Closure with&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;invisible&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;zipper&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;hps&quot;&gt;- Filling&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;polyester&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span class=&quot;hps&quot;&gt;Care&lt;/span&gt;&lt;span&gt;:&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;To preserve&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;the original look&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;ensure&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;product durability&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;wash&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;gently&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;with mild soap&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and use&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;an iron&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;on&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;low temperature&lt;/span&gt;&lt;span&gt;.&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;Only iron&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;inside out&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(268, 2, 'Camurça Floral Copacabana e Oto Rato 50x50cm', '&lt;p&gt;50x50cm - R$160,00 | 50x50cm Capa - R$140,00&lt;/p&gt;\r\n\r\n&lt;p&gt;Almofada confeccionada em tecido &lt;strong&gt;Camurça&lt;/strong&gt;, estampado manualmente com toque suave e macio.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Fechamento com ziper invisível.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Enchimento em poliester.&lt;/p&gt;\r\n\r\n&lt;p&gt;Cuidados: Para conservar o aspecto original e garantir a durabilidade do produto lavar com cuidado, com sabão neutro e utilizar ferro de passar em temperatura baixa. Passar sempre pelo avesso.&lt;/p&gt;\r\n', '', '', 'decoração, casa, quarto, criativo, inovador, almofada, camurça');
INSERT INTO `sh_product_description` (`product_id`, `language_id`, `name`, `description`, `meta_description`, `meta_keyword`, `tag`) VALUES
(307, 2, 'Jogo Americano GIRASSOL', '&lt;p&gt;Jogo americano nas medidas 51x37 cm feitos em linho estampado Arte Têxtil&lt;/p&gt;\r\n\r\n&lt;p&gt;Criamos uma coleção gourmet para deixar a cozinha e as mesas ainda mais alegres.&lt;/p&gt;\r\n', 'COLEÇÃO GOURMET', 'COLEÇÃO GOURMET', 'Jogo Americano, Gourmet, Loja Arte Têxtil'),
(307, 1, 'Jogo americano SUN FLOWER', '&lt;p&gt;Made in linen by Atelier Arte Têxtil with the size 51x38 cm, for collorfull home, basis for dishes.&lt;/p&gt;\r\n', '', '', ''),
(308, 2, 'Jogo Americano REMO', '&lt;p&gt;Jogo americano nas medidas 51x37 cm feitos em linho estampado Arte Têxtil&lt;/p&gt;\r\n\r\n&lt;p&gt;Criamos uma coleção Gourmet para deixar a cozinha e as mesas ainda mais alegres.&lt;/p&gt;\r\n', '', '', 'Jogo Americano, Gourmet, Loja Arte Têxtil'),
(308, 1, 'Jogo americano  REMO', '&lt;p&gt;Made in linen by Atelier Arte Têxtil with the size 51x38 cm, for collorfull home, basis for dishes.&lt;/p&gt;\r\n', '', '', ''),
(309, 2, 'Jogo Americano  ROSÁCEA', '&lt;p&gt;Jogo americano nas medidas 50x37 cm feitos em linho estampado Arte Têxtil&lt;/p&gt;\r\n\r\n&lt;p&gt;Criamos uma coleção Gourmet para deixar a cozinha e as mesas ainda mais alegres.&lt;/p&gt;\r\n', '', '', 'Jogo Americano, Gourmet, Loja Arte Têxtil'),
(309, 1, 'Jogo americano', '&lt;p&gt;Made in linen by Atelier Arte Têxtil with the size 51x38 cm, for collorfull home, basis for dishes.&lt;/p&gt;\r\n', '', '', ''),
(310, 2, 'Corredor de Mesa', '', '', '', ''),
(310, 1, 'Half table', '', '', '', ''),
(312, 2, 'Linho Rosácea', '&lt;p&gt;TECIDOS ARTE TÊXTIL&amp;nbsp; coleção 2015&lt;/p&gt;\r\n\r\n&lt;p&gt;Florais e geométricos estes tecidos foram inspirados para trazer alegria para o ambiente, estofados ou paredes, Linho Rosácea,&amp;nbsp; tecidos macios e suáves.&lt;/p&gt;\r\n\r\n&lt;p&gt;Tecidos com 140 cm de largura, desenhos exclusivos do Atelier Arte Têxtil, vendidos a metro e a rolo, atacado e varejo, informe-se sobre as nossas condições para logistas, solicite também o catálogo por e-mail&lt;/p&gt;\r\n\r\n&lt;p&gt;contato@artetextil.net ou se preferir pode nos ligar no telefone 11 2639 8208. das 10:00 às 18:00 horas, de segunda a sexta-feira.&lt;/p&gt;\r\n', '', '', 'TECIDO  TECIDOS ESTAMPADOS  TECIDO PARA DECORAÇÃO'),
(312, 1, 'ROSES FABRIC', '&lt;pre class=&quot;tw-data-text vk_txt tw-ta tw-text-small&quot; data-fulltext=&quot;&quot; data-placeholder=&quot;Tradução&quot; dir=&quot;ltr&quot; id=&quot;tw-target-text&quot; style=&quot;text-align: left; height: 576px;&quot;&gt;\r\n&lt;span&gt;TEXTILE FABRIC ART Collection 2015\r\n\r\nFloral and geometric these tissues wAS inspired to bring joy to the environment , or upholstered walls , Linen Roses, soft and smooth .\r\n\r\nFabrics with 140 cm wide , unique designs of Atelier Textile Art ( Arte Têxtil ), sold by the meter and the roll, wholesale and retail, inquire about our conditions for shopkeepers also request the catalog by email\r\n\r\ncontato@artetextil.net or if you prefer you can call us on the phone 0055 11 2639 8208 / 10:00 to 18:00 hours , Monday to Friday.&lt;/span&gt;&lt;/pre&gt;\r\n', '', '', ''),
(313, 2, 'Algodão Remo', '&lt;pre class=&quot;tw-data-text vk_txt tw-ta tw-text-small&quot; data-fulltext=&quot;&quot; data-placeholder=&quot;Tradução&quot; dir=&quot;ltr&quot; id=&quot;tw-target-text&quot; style=&quot;text-align: left; height: 576px;&quot;&gt;\r\n&lt;span&gt;NOVA COLEÇÃO DE TECIDOS ARTE TÊXTIL\r\n\r\nTecido 100% algodão, macio e encorpado, com estampas exclusivas do atelier  tem 140 de largura\r\n&lt;/span&gt;&lt;/pre&gt;\r\n\r\n&lt;p&gt;TECIDOS ARTE TÊXTIL&amp;nbsp; coleção 2015&lt;/p&gt;\r\n\r\n&lt;p&gt;Florais e geométricos estes tecidos foram inspirados para trazer alegria para o ambiente, estofados ou paredes, 100% LAGODÃO REMO, tecido macios e suave&lt;/p&gt;\r\n\r\n&lt;p&gt;Tecidos com 140 cm de largura, desenhos exclusivos do Atelier Arte Têxtil, vendidos a metro e a rolo, atacado e varejo, informe-se sobre as nossas condições para logistas, solicite também o catálogo por e-mail&lt;/p&gt;\r\n\r\n&lt;p&gt;contato@artetextil.net ou se preferir pode nos ligar no telefone 11 2639 8208. das 10:00 às 18:00 horas, de segunda a sexta-feira.&lt;/p&gt;\r\n\r\n&lt;pre class=&quot;tw-data-text vk_txt tw-ta tw-text-small&quot; data-fulltext=&quot;&quot; data-placeholder=&quot;Tradução&quot; dir=&quot;ltr&quot; style=&quot;text-align: left; height: 576px;&quot;&gt;\r\n&lt;span&gt;til.net or if you prefer you can call us on the phone 0055 11 2639 8208 / 10:00 to 18:00 hours , Monday to Friday.&lt;/span&gt;&lt;/pre&gt;\r\n', '', 'Tecido algodão, 100% natural, estampa exclusiva, \r\nArte Têxtil Coleção 2015', 'TECIDO  TECIDOS ESTAMPADOS  TECIDO PARA DECORAÇÃO'),
(313, 1, 'COTTON  Remo', '&lt;pre class=&quot;tw-data-text vk_txt tw-ta tw-text-small&quot; data-fulltext=&quot;&quot; data-placeholder=&quot;Tradução&quot; dir=&quot;ltr&quot; id=&quot;tw-target-text&quot; style=&quot;text-align: left; height: 576px;&quot;&gt;\r\n&lt;span&gt;TEXTILE FABRIC ART COLLECTION 2015\r\n\r\nFloral and geometric these tissues wAS inspired to bring joy to the environment , or upholstered walls , 100% Cotton REMO FABRIC soft and smooth.\r\n\r\nFabrics with 140 cm wide , unique designs of Atelier Textile Art ( Arte Têxtil ), sold by the meter and the roll, wholesale and retail, inquire about our conditions for shopkeepers also request the catalog by email\r\n\r\ncontato@artetextil.net or if you prefer you can call us on the phone 0055 11 2639 8208 / 10:00 to 18:00 hours , Monday to Friday.&lt;/span&gt;&lt;/pre&gt;\r\n', '', '', 'EXCLUSIVE LUXURY CREATIVE FABRIC'),
(314, 2, 'Avental  Girassol', '&lt;p&gt;Avental feito em Linho Arte Têxtil na medida de 1,20 x 50cm&lt;/p&gt;\r\n', '', 'Avental feito em linho', 'Avental Gourmet'),
(314, 1, 'SUNFLOWER ', '&lt;p&gt;Na medida de 1,20 x 50cm&lt;/p&gt;\r\n', '', '', ''),
(315, 2, 'Avental  Rosácea', '&lt;p&gt;Na medida de 1,20x50cm&lt;/p&gt;\r\n', '', '', ''),
(315, 1, 'ROSES ', '&lt;p&gt;Na medida de 120 x 50 cm&lt;/p&gt;\r\n', '', 'Avental', ''),
(316, 2, 'Avental Remo', '&lt;p&gt;NOVA COLEÇÃO GOURMET&lt;/p&gt;\r\n\r\n&lt;p&gt;Feito em puro algodão Arte Têxtil, este avental vem com a medida de 1,20 x 50cm&lt;/p&gt;\r\n', '', 'COLEÇÃO GOURMET ARTE TÊXTIL', 'Avental Gourmet'),
(317, 2, 'Avental Losango', '&lt;p&gt;NOVA COLEÇÃO GOURMET ARTE TÊXTIL&lt;/p&gt;\r\n\r\n&lt;p&gt;Avental na medida de 1,20 x 50cm, feito em tecido algodão seda&lt;/p&gt;\r\n', '', 'Série Gourmet', 'Avental Gourmet'),
(318, 2, 'KIT 4  GIRASSOL', '&lt;p&gt;Jogo americano feito em linho Arte Têxtil, este conjunto compõe uma mesa para quatro pessoas.&lt;/p&gt;\r\n\r\n&lt;p&gt;Cada peça tem as medidas de 33cm x 43 cm&lt;/p&gt;\r\n\r\n&lt;p&gt;Impressão ecológica sobre linho, estampa exclusiva Arte Têxtil&lt;/p&gt;\r\n', 'QUATRO PEÇAS DE JOGO AMERICANO EM LINHO', '', 'Jogo Americano, Gourmet, Loja Arte Têxtil'),
(318, 1, 'KIT 4   sunflower', '&lt;p&gt;Gourmet line Arte Textil&lt;/p&gt;\r\n\r\n&lt;p&gt;Kit with four pieces in linen in the size 33x43 cm, ecolohgic printed&lt;/p&gt;\r\n', 'KIT 4  GIRASSOL', '', ''),
(319, 2, 'KIT 2  GIRASSOL', '&lt;p&gt;Jogo americano feitos em linho Arte Têxtil, este conjunto compõe uma mesa para DUAS pessoas.&lt;/p&gt;\r\n\r\n&lt;p&gt;Cada peça tem as medidas de 33cm x 43 cm&lt;/p&gt;\r\n\r\n&lt;p&gt;Impressão ecológica sobre linho, estampa exclusiva Arte Têxtil.&lt;/p&gt;\r\n\r\n&lt;p&gt;Acompanha uma linda sacola em linho com a mesma estampa.&lt;/p&gt;\r\n', 'DUAS PEÇAS DE JOGO AMERICANO EM LINHO ESTAMPADO ARTE TÊXTIL', '', 'Jogo Americano, Gourmet, Loja Arte Têxtil'),
(319, 1, 'KIT 2   sunflower', '&lt;p&gt;Gourmet line Arte Textil&lt;/p&gt;\r\n\r\n&lt;p&gt;Kit with TWO pieces in linen in the size 33x43 cm, ecologic printed&lt;/p&gt;\r\n', 'SUNFLOWER', '', ''),
(320, 2, 'KIT 4  ROSÁCEA', '&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Linha Gourmet Arte Textil&lt;/p&gt;\r\n\r\n&lt;p&gt;Jogo americano feitos em linho Arte Têxtil, este conjunto compõe uma mesa para quatro pessoas.&lt;/p&gt;\r\n\r\n&lt;p&gt;Cada peça tem as medidas de 33cm x 43 cm&lt;/p&gt;\r\n\r\n&lt;p&gt;Impressão ecológica sobre linho, estampa exclusiva Arte Têxtil.&lt;/p&gt;\r\n\r\n&lt;p&gt;Acompanha uma linda sacola em linho com a mesma estampa.&lt;/p&gt;\r\n', '', 'Linha Gourmet Arte Textil', 'Jogo Americano, Gourmet, Loja Arte Têxtil'),
(320, 1, 'KIT 4   ROSES', '&lt;p&gt;Gourmet line Arte Textil&lt;/p&gt;\r\n\r\n&lt;p&gt;Kit with FOUR&amp;nbsp; pieces in linen in the size 33x43 cm, ecologic printed&lt;/p&gt;\r\n', '', '', ''),
(321, 2, 'KIT 2  ROSÁCEA', '&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Linha Gourmet Arte Textil&lt;/p&gt;\r\n\r\n&lt;p&gt;Jogo americano feitos em linho Arte Têxtil, este conjunto compõe uma mesa para quatro pessoas.&lt;/p&gt;\r\n\r\n&lt;p&gt;Cada peça tem as medidas de 33cm x 43 cm&lt;/p&gt;\r\n\r\n&lt;p&gt;Impressão ecológica sobre linho, estampa exclusiva Arte Têxtil.&lt;/p&gt;\r\n', '', '', 'Jogo Americano, Gourmet, Loja Arte Têxtil'),
(321, 1, 'KIT 2   ROSES', '&lt;p&gt;Gourmet TEXTILE Arte Textil&lt;/p&gt;\r\n\r\n&lt;p&gt;Kit with TWO&amp;nbsp; pieces in linen in the size 33x43 cm, ecologic printed&lt;/p&gt;\r\n', '', '', ''),
(322, 2, 'KIT 4 REMO', '&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Linha Gourmet Arte Textil Jogo americano feitos em puro algodão Arte Têxtil, este conjunto compõe uma mesa para quatro pessoas.&lt;/p&gt;\r\n\r\n&lt;p&gt;Cada peça tem as medidas de 33cm x 43 cm&lt;/p&gt;\r\n\r\n&lt;p&gt;Impressão ecológica sobre linho, estampa exclusiva Arte Têxtil.&lt;/p&gt;\r\n\r\n&lt;p&gt;Acompanha uma linda sacola&amp;nbsp; com a mesma estampa.&lt;/p&gt;\r\n', '', 'COLEÇÃO GOURMET DE JOGOS AMERICANOS ARTE TÊXTIL', 'Jogo Americano, Gourmet, Loja Arte Têxtil'),
(288, 2, 'Almofada 50x50cm - composição em Algodão e Linho', '&lt;p&gt;Almofada com composição em Puro algodão e Linho, ziper invisível, tamanho 50x50cm&lt;/p&gt;\r\n\r\n&lt;p&gt;Estampas Remo e Rosácea&lt;/p&gt;\r\n', 'Estampas Rosácea e Remo', '', ''),
(288, 1, 'Pillow in Linen with Cotton 50x50cm', '&lt;p style=&quot;font-size: 13px;&quot;&gt;Cushion made ​​of cotton and linen fabric with zipper. - Ideal for living rooms, bedrooms and other environments. With smooth and soft touch.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;Care: To preserve the original look and ensure durability of the product carefully washing, use mild soap at low temperature.&lt;/p&gt;\r\n', 'Design Roses with Remo', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `sh_product_discount`
--

CREATE TABLE IF NOT EXISTS `sh_product_discount` (
`product_discount_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM AUTO_INCREMENT=450 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sh_product_filter`
--

CREATE TABLE IF NOT EXISTS `sh_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sh_product_image`
--

CREATE TABLE IF NOT EXISTS `sh_product_image` (
`product_image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=4740 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_product_image`
--

INSERT INTO `sh_product_image` (`product_image_id`, `product_id`, `image`, `sort_order`) VALUES
(4650, 316, 'data/PRODUTOS3.jpg', 0),
(4649, 315, 'data/PRODUTOS4.jpg', 0),
(4630, 288, 'data/ALMOFADAS LINHO E ALGODÃO.jpg', 0),
(4633, 282, 'data/LINHO.jpg', 0),
(4595, 83, 'data/Almofadas/50-amarelo-.png', 0),
(4609, 313, 'data/rem.jpg', 0),
(4610, 82, 'data/Almofadas/-medidaazu-azull-repolho.png', 0),
(4593, 170, 'data/Almofadas/FloralVermelhoPrimaveraLaranja50x50.jpg', 0),
(4424, 131, 'data/Produtos/Tecidos Novos/P1200086.jpg', 0),
(4682, 73, 'data/Almofadas/50-AZUL-FLORES-MEDIDA.png', 1),
(4447, 311, 'data/girassol.jpg', 0),
(4599, 80, 'data/Almofadas/30-bege-folhas.png', 0),
(4612, 76, 'data/jess.jpg', 2),
(4611, 79, 'data/co.jpg', 0),
(4573, 67, 'data/Almofadas/50-ondas.png', 1),
(4306, 91, 'data/Almofadas/azul-40x60.png', 2),
(4316, 64, 'data/Almofadas/30-turquesa-geo.png', 3),
(4315, 64, 'data/Almofadas/40-turquesa-geo.png', 2),
(4422, 130, 'data/Produtos/Tecidos Novos/TopLaranja.jpg', 0),
(4615, 147, 'data/Almofadas/30-vermelho-repolho.png', 0),
(4680, 148, 'data/Almofadas/50-copo-de-leite.png', 1),
(4632, 280, 'data/almofada ALGODÃO - GIRASSOL  50X50.jpg', 0),
(4652, 86, 'data/cotton bege.jpg', 0),
(4601, 84, 'data/Almofadas/50-jessup.png', 0),
(4585, 74, 'data/Almofadas/30-branco-floral.png', 0),
(4605, 89, 'data/Almofadas/30-laranja-primavera.png', 0),
(4628, 291, 'data/LINHO E ALGODÃO SEDA.jpg', 0),
(4414, 135, 'data/Produtos/Tecidos Novos/tecido-cru-janete-bordeaux.jpg', 0),
(4686, 71, 'data/Almofadas/50-50-rato-otto.png', 1),
(4681, 73, 'data/Almofadas/30-azul-flores-medida.png', 3),
(4606, 78, 'data/Almofadas/Brancoprimavera2.png', 0),
(4587, 75, 'data/Almofadas/30-turquesa-floral.png', 0),
(4603, 87, 'data/Almofadas/medidas/50-jessup.png', 0),
(4589, 81, 'data/ALGREEN.jpg', 0),
(4613, 85, 'data/Almofadas/50-floral-verm.png', 0),
(4705, 309, 'data/jarosace1.jpg', 0),
(4704, 309, 'data/jarosacea.jpg', 0),
(4659, 90, 'data/Almofadas/30x60.png', 3),
(4658, 90, 'data/Almofadas/50-Bouquet-Cru.jpg', 1),
(4607, 77, 'data/Almofadas/30-verde-primara.png', 0),
(4703, 308, 'data/laamarelo1.jpg', 0),
(4702, 308, 'data/laam.jpg', 0),
(4691, 100, 'data/Almofadas/50-50-50-rosa.png', 0),
(4317, 102, 'data/Almofadas/50-geoturquesa-amarelocopodeleite.png', 0),
(4692, 98, 'data/Almofadas/medidas/30-janete.png', 0),
(4647, 317, 'data/PRODUTOS2.jpg', 0),
(4653, 106, 'data/Almofadas/50-lilasfloras-crubouquet.png', 0),
(4641, 302, 'data/e444.jpg', 0),
(4330, 137, 'data/Almofadas/50-LINHO.png', 0),
(4431, 118, 'no_image.jpg', 0),
(4350, 136, 'data/Produtos/Tecidos Novos/FLOR-AZUL.jpg', 0),
(4636, 297, 'data/e.jpg', 0),
(4331, 138, 'data/Almofadas/30-panam.png', 0),
(4416, 126, 'data/Produtos/Tecidos Novos/ONDA-VERDE.jpg', 0),
(4417, 125, 'data/Produtos/Tecidos Novos/onda-laranja.jpg', 0),
(4420, 142, 'data/otto azul.jpg', 0),
(4321, 116, 'data/Almofadas/0-vermelhotop-turquesa-gfeo.png', 0),
(4042, 117, 'no_image.jpg', 0),
(4631, 281, 'data/QUEBRA RIM GIRASSOL.jpg', 0),
(4304, 92, 'data/Almofadas/50-rosas-turq.png', 0),
(4349, 119, 'no_image.jpg', 0),
(4348, 119, 'no_image.jpg', 0),
(4228, 121, 'no_image.jpg', 0),
(4412, 124, 'no_image.jpg', 0),
(4305, 91, 'data/Almofadas/azul-30-60.png', 1),
(4314, 64, 'data/Almofadas/50-turquesa-geo.png', 1),
(4325, 108, 'data/Almofadas/30-LINHO.png', 0),
(4622, 284, 'data/ALGODÃO E LINHO GIRASSOL.jpg', 0),
(4446, 311, 'data/gira1.jpg', 0),
(4651, 229, 'data/Bolsas/Chelsee-Marrom-COnexão-2.jpg', 0),
(4739, 312, 'data/RR.jpg', 0),
(4710, 322, 'data/prmo7.jpg', 1),
(4706, 307, 'data/jagira1.jpg', 0),
(4707, 307, 'data/jagira.jpg', 0),
(4688, 115, 'data/Almofadas/medidas/30-flor-roxa.png', 3),
(4687, 115, 'data/Almofadas/50-roxo-floral.png', 1),
(4637, 298, 'data/e1.jpg', 0),
(4635, 299, 'data/e3.jpg', 0),
(4638, 300, 'data/e7.jpg', 0),
(4639, 301, 'data/e4.jpg', 0),
(4643, 303, 'data/e33.jpg', 0),
(4329, 202, 'data/Almofadas/medidas/50-otamo-bege.png', 0),
(4604, 205, 'data/Almofadas/medidas/50-jessup=repolpoho.png', 0),
(4592, 208, 'data/Almofadas/medidas/flohas-repolho.png', 0),
(4602, 212, 'data/Almofadas/medidas/50-jessup-floral.png', 0),
(4310, 213, 'data/Almofadas/medidas/50-floral-pink.png', 0),
(4423, 130, 'data/top lar.jpg', 0),
(4572, 67, 'data/Almofadas/medidas/30-onda-laranja.png', 3),
(4675, 96, 'data/Almofadas/50x50.jpg', 1),
(4693, 98, 'data/Almofadas/50-cru-janete.png', 0),
(4319, 66, 'data/Almofadas/50-50-rato.png', 1),
(4320, 66, 'data/Almofadas/medidas/30-otamo-marrom.png', 3),
(4690, 93, 'data/Almofadas/medidas/50-ROXO-GEO.png', 0),
(4695, 221, 'data/Almofadas/medidas/30-otamo-turqeusa.png', 2),
(4697, 233, 'data/Almofadas/50-50-50-50.png', 1),
(4644, 314, 'data/PRODUTOS1.jpg', 0),
(4689, 93, 'data/Almofadas/medidas/30-geo.png', 0),
(4626, 278, 'data/almofada ALGODÃO - LOSANGO 50X50.jpg', 0),
(4620, 287, 'data/LINHO E ALGODÃO SEDA.jpg', 0),
(4678, 148, 'data/Almofadas/medidas/30-copo-de-leite-azul.png', 3),
(4684, 95, 'data/Almofadas/50-rosa.png', 0),
(4627, 295, 'data/QUEBRA LOSANGO ALGODÃO.jpg', 0),
(4634, 296, 'data/QUEBRA-RIM ALGODÃO AMARELO.jpg', 0),
(4677, 96, 'data/Almofadas/medidas/30-copo-de-leite.png', 3),
(4676, 96, 'data/Almofadas/medidas/40-copo-de-leite.png', 2),
(4642, 305, 'data/pil.jpg', 0),
(4640, 306, 'data/e10.jpg', 0),
(4415, 145, 'data/Produtos/Tecidos Novos/marrom-hortência.jpg', 0),
(4318, 66, 'data/Almofadas/medidas/40-otoma-marrokm.png', 2),
(4694, 221, 'data/Almofadas/medidas/50-otamo-turquesa.png', 1),
(4645, 314, 'data/PRODUTOS.jpg', 0),
(4608, 313, 'data/remo.jpg', 0),
(4629, 292, 'data/ALGODÃO E LINHO.jpg', 0),
(4696, 233, 'data/Almofadas/medidas/30-otamo-vermelho.png', 3),
(4297, 268, 'data/Almofadas/50-geoturquesa-amarelocopodeleite.png', 0),
(4421, 128, 'data/Produtos/Tecidos Novos/OTOMANO-VERMELHO.jpg', 0),
(4685, 71, 'data/Almofadas/40-rato.png', 2),
(4256, 285, 'data/ALGODÃO E LINHO.jpg', 0),
(4625, 286, 'data/aLGODÃO SEDA E LINHO GIRASSOL.jpg', 0),
(4738, 312, 'data/rosace.jpg', 0),
(4332, 109, 'data/PANAMA 50X50.jpg', 0),
(4683, 95, 'data/Almofadas/medidas/30-bege.png', 0),
(4648, 315, 'data/PRODUTOS5.jpg', 0),
(4623, 276, 'data/ALGODÃO AMARELO.jpg', 0),
(4571, 67, 'data/Almofadas/medidas/40-onda-laranja.png', 2),
(4679, 148, 'data/Almofadas/medidas/40-copo-de-leite-azul.png', 2),
(4729, 319, 'data/girassol.jpg', 0),
(4730, 319, 'data/jagira.jpg', 0),
(4726, 321, 'data/promo1.jpg', 0),
(4709, 322, 'data/laam.jpg', 0),
(4735, 325, 'data/losa.jpg', 0),
(4734, 325, 'data/losan.jpg', 0),
(4722, 318, 'data/jagira1.jpg', 0),
(4725, 321, 'data/jarosace1.jpg', 0),
(4708, 322, 'data/laamarelo1.jpg', 0),
(4727, 323, 'data/laam.jpg', 0),
(4723, 318, 'data/prmo5.jpg', 0),
(4721, 318, 'data/jagira.jpg', 0),
(4728, 323, 'data/promo7.jpg', 0),
(4724, 321, 'data/jarosacea.jpg', 0),
(4731, 319, 'data/prmo6.jpg', 0),
(4713, 320, 'data/promo2.jpg', 0),
(4714, 320, 'data/promo.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sh_product_option`
--

CREATE TABLE IF NOT EXISTS `sh_product_option` (
`product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value` text NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=347 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_product_option`
--

INSERT INTO `sh_product_option` (`product_option_id`, `product_id`, `option_id`, `option_value`, `required`) VALUES
(261, 86, 4, '', 1),
(260, 85, 4, '', 1),
(258, 83, 4, '', 1),
(259, 84, 4, '', 1),
(257, 82, 4, '', 1),
(256, 81, 4, '', 1),
(255, 80, 4, '', 1),
(254, 79, 4, '', 1),
(253, 78, 4, '', 1),
(250, 75, 4, '', 1),
(249, 74, 4, '', 1),
(265, 89, 4, '', 1),
(264, 64, 4, '', 1),
(281, 100, 4, '', 1),
(278, 66, 4, '', 1),
(273, 67, 4, '', 1),
(279, 98, 4, '', 1),
(252, 77, 4, '', 1),
(272, 93, 4, '', 1),
(269, 71, 4, '', 1),
(251, 76, 4, '', 1),
(267, 91, 4, '', 1),
(266, 90, 4, '', 1),
(271, 92, 4, '', 1),
(270, 73, 4, '', 1),
(262, 87, 4, '', 1),
(275, 95, 4, '', 1),
(276, 96, 4, '', 1),
(283, 102, 4, '', 1),
(287, 106, 4, '', 1),
(289, 108, 4, '', 1),
(290, 109, 4, '', 1),
(298, 138, 4, '', 1),
(296, 115, 4, '', 1),
(297, 116, 4, '', 1),
(299, 137, 4, '', 1),
(301, 147, 4, '', 1),
(302, 148, 4, '', 1),
(303, 170, 4, '', 1),
(317, 202, 4, '', 1),
(318, 205, 4, '', 1),
(319, 208, 4, '', 1),
(320, 212, 4, '', 1),
(321, 213, 4, '', 1),
(323, 221, 4, '', 1),
(327, 233, 4, '', 1),
(340, 268, 4, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sh_product_option_value`
--

CREATE TABLE IF NOT EXISTS `sh_product_option_value` (
`product_option_value_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=451 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_product_option_value`
--

INSERT INTO `sh_product_option_value` (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`) VALUES
(110, 253, 78, 4, 72, 1, 1, '10.0000', '-', 0, '+', '0.00000000', '+'),
(111, 253, 78, 4, 71, 1, 1, '0.0000', '+', 0, '+', '0.44400000', '+'),
(217, 290, 109, 4, 72, 1, 1, '20.0000', '-', 0, '+', '0.00000000', '+'),
(216, 290, 109, 4, 71, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(215, 290, 109, 4, 65, 1, 1, '20.0000', '-', 0, '+', '0.00000000', '+'),
(214, 290, 109, 4, 66, 1, 1, '40.0000', '-', 0, '+', '0.00000000', '+'),
(207, 287, 106, 4, 72, 1, 1, '10.0000', '-', 0, '+', '0.00000000', '+'),
(206, 287, 106, 4, 71, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(198, 283, 102, 4, 71, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(199, 283, 102, 4, 72, 1, 1, '20.0000', '-', 0, '+', '0.00000000', '+'),
(194, 281, 100, 4, 72, 1, 1, '10.0000', '-', 0, '+', '0.00000000', '+'),
(195, 281, 100, 4, 71, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(189, 278, 66, 4, 71, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(188, 278, 66, 4, 72, 1, 1, '20.0000', '-', 0, '+', '0.00000000', '+'),
(145, 264, 64, 4, 71, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(142, 264, 64, 4, 70, 1, 1, '20.0000', '-', 0, '+', '0.00000000', '+'),
(179, 273, 67, 4, 71, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(178, 273, 67, 4, 72, 1, 1, '20.0000', '-', 0, '+', '0.00000000', '+'),
(163, 269, 71, 4, 65, 1, 1, '20.0000', '-', 0, '+', '0.00000000', '+'),
(162, 269, 71, 4, 66, 1, 1, '30.0000', '-', 0, '+', '0.00000000', '+'),
(232, 269, 71, 4, 72, 1, 1, '10.0000', '-', 0, '+', '0.00000000', '+'),
(239, 298, 138, 4, 66, 1, 1, '20.0000', '-', 0, '+', '0.00000000', '+'),
(238, 298, 138, 4, 65, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(210, 289, 108, 4, 66, 1, 1, '20.0000', '-', 0, '+', '0.00000000', '+'),
(211, 289, 108, 4, 65, 1, 1, '0.0000', '-', 0, '+', '0.00000000', '+'),
(103, 251, 76, 4, 66, 1, 1, '10.0000', '-', 0, '+', '0.00000000', '+'),
(102, 251, 76, 4, 65, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(172, 270, 73, 4, 65, 1, 1, '20.0000', '-', 0, '+', '0.00000000', '+'),
(113, 254, 79, 4, 65, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(112, 254, 79, 4, 66, 1, 1, '10.0000', '-', 0, '+', '0.00000000', '+'),
(120, 256, 81, 4, 72, 1, 1, '10.0000', '-', 0, '+', '0.00000000', '+'),
(121, 256, 81, 4, 71, 1, 1, '0.0000', '+', 0, '+', '0.44400000', '+'),
(122, 257, 82, 4, 72, 1, 1, '10.0000', '-', 0, '+', '0.00000000', '+'),
(123, 257, 82, 4, 71, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(125, 258, 83, 4, 71, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(124, 258, 83, 4, 72, 1, 1, '10.0000', '-', 0, '+', '0.00000000', '+'),
(127, 259, 84, 4, 71, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(126, 259, 84, 4, 72, 1, 1, '10.0000', '-', 0, '+', '0.00000000', '+'),
(129, 260, 85, 4, 71, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(128, 260, 85, 4, 72, 1, 1, '10.0000', '-', 0, '+', '0.00000000', '+'),
(130, 261, 86, 4, 72, 1, 1, '10.0000', '-', 0, '+', '0.00000000', '+'),
(131, 261, 86, 4, 71, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(132, 262, 87, 4, 72, 1, 1, '10.0000', '-', 0, '+', '0.00000000', '+'),
(133, 262, 87, 4, 71, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(141, 264, 64, 4, 65, 1, 1, '20.0000', '-', 0, '+', '0.00000000', '+'),
(144, 264, 64, 4, 72, 1, 1, '20.0000', '-', 0, '+', '0.00000000', '+'),
(143, 264, 64, 4, 69, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(140, 264, 64, 4, 66, 1, 1, '40.0000', '-', 0, '+', '0.00000000', '+'),
(157, 267, 91, 4, 69, 1, 1, '20.0000', '+', 0, '+', '0.00000000', '+'),
(156, 267, 91, 4, 70, 1, 1, '0.0000', '-', 0, '+', '0.00000000', '+'),
(154, 267, 91, 4, 66, 1, 1, '20.0000', '-', 0, '+', '0.00000000', '+'),
(155, 267, 91, 4, 65, 1, 1, '0.0000', '-', 0, '+', '0.00000000', '+'),
(170, 270, 73, 4, 71, 1, 1, '0.0000', '-', 0, '+', '0.00000000', '+'),
(169, 270, 73, 4, 72, 1, 1, '10.0000', '-', 0, '+', '0.00000000', '+'),
(254, 270, 73, 4, 66, 1, 1, '30.0000', '-', 0, '+', '0.00000000', '+'),
(175, 271, 92, 4, 71, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(174, 271, 92, 4, 72, 1, 1, '20.0000', '-', 0, '+', '0.00000000', '+'),
(241, 299, 137, 4, 72, 1, 1, '20.0000', '-', 0, '+', '0.00000000', '+'),
(240, 299, 137, 4, 71, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(233, 269, 71, 4, 71, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(237, 297, 116, 4, 72, 1, 1, '20.0000', '-', 0, '+', '0.00000000', '+'),
(236, 297, 116, 4, 71, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(117, 255, 80, 4, 65, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(116, 255, 80, 4, 66, 1, 1, '10.0000', '-', 0, '+', '0.00000000', '+'),
(258, 249, 74, 4, 66, 1, 1, '10.0000', '-', 0, '+', '0.00000000', '+'),
(95, 249, 74, 4, 65, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(99, 250, 75, 4, 65, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(98, 250, 75, 4, 66, 1, 1, '10.0000', '-', 0, '+', '0.00000000', '+'),
(147, 265, 89, 4, 65, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(146, 265, 89, 4, 66, 1, 1, '10.0000', '-', 0, '+', '0.00000000', '+'),
(106, 252, 77, 4, 65, 1, 1, '0.0000', '-', 0, '+', '0.00000000', '+'),
(107, 252, 77, 4, 66, 1, 1, '10.0000', '-', 0, '+', '0.00000000', '+'),
(244, 301, 147, 4, 65, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(245, 301, 147, 4, 66, 1, 1, '70.0000', '-', 0, '+', '0.00000000', '+'),
(274, 303, 170, 4, 72, 1, 1, '20.0000', '-', 0, '+', '0.00000000', '+'),
(273, 303, 170, 4, 71, 1, 1, '0.0000', '+', 0, '+', '0.44400000', '+'),
(277, 266, 90, 4, 72, 1, 1, '10.0000', '-', 0, '+', '0.00000000', '+'),
(278, 266, 90, 4, 72, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(150, 266, 90, 4, 66, 1, 1, '10.0000', '-', 0, '+', '0.00000000', '+'),
(262, 266, 90, 4, 65, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(283, 279, 98, 4, 66, 1, 1, '40.0000', '-', 0, '+', '0.00000000', '+'),
(190, 279, 98, 4, 72, 1, 1, '10.0000', '-', 0, '+', '0.00000000', '+'),
(191, 279, 98, 4, 71, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(284, 279, 98, 4, 65, 1, 1, '20.0000', '-', 0, '+', '0.00000000', '+'),
(317, 317, 202, 4, 72, 1, 1, '20.0000', '-', 0, '+', '0.00000000', '+'),
(318, 317, 202, 4, 71, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(319, 318, 205, 4, 71, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(320, 318, 205, 4, 72, 1, 1, '20.0000', '-', 0, '+', '0.00000000', '+'),
(321, 319, 208, 4, 72, 1, 1, '20.0000', '-', 0, '+', '0.00000000', '+'),
(322, 319, 208, 4, 71, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(324, 320, 212, 4, 71, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(323, 320, 212, 4, 72, 1, 1, '20.0000', '-', 0, '+', '0.00000000', '+'),
(325, 321, 213, 4, 71, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(326, 321, 213, 4, 72, 1, 1, '20.0000', '-', 0, '+', '0.00000000', '+'),
(360, 327, 233, 4, 66, 1, 1, '40.0000', '-', 0, '+', '0.00000000', '+'),
(357, 327, 233, 4, 69, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(358, 327, 233, 4, 70, 1, 1, '20.0000', '-', 0, '+', '0.00000000', '+'),
(362, 272, 93, 4, 65, 1, 1, '20.0000', '-', 0, '+', '0.00000000', '+'),
(361, 272, 93, 4, 66, 1, 1, '40.0000', '-', 0, '+', '0.00000000', '+'),
(176, 272, 93, 4, 72, 1, 1, '20.0000', '-', 0, '+', '0.00000000', '+'),
(177, 272, 93, 4, 71, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(371, 275, 95, 4, 66, 1, 1, '30.0000', '-', 0, '+', '0.00000000', '+'),
(372, 275, 95, 4, 65, 1, 1, '20.0000', '-', 0, '+', '0.00000000', '+'),
(183, 275, 95, 4, 71, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(182, 275, 95, 4, 72, 1, 1, '10.0000', '-', 0, '+', '0.00000000', '+'),
(379, 273, 67, 4, 70, 1, 1, '20.0000', '-', 0, '+', '0.00000000', '+'),
(380, 273, 67, 4, 69, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(381, 273, 67, 4, 66, 1, 1, '40.0000', '-', 0, '+', '0.00000000', '+'),
(382, 273, 67, 4, 65, 1, 1, '20.0000', '-', 0, '+', '0.00000000', '+'),
(386, 276, 96, 4, 65, 1, 1, '20.0000', '-', 0, '+', '0.00000000', '+'),
(383, 276, 96, 4, 66, 1, 1, '30.0000', '-', 0, '+', '0.00000000', '+'),
(185, 276, 96, 4, 71, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(184, 276, 96, 4, 72, 1, 1, '10.0000', '-', 0, '+', '0.00000000', '+'),
(246, 302, 148, 4, 72, 1, 1, '10.0000', '-', 0, '+', '0.00000000', '+'),
(387, 302, 148, 4, 72, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(390, 302, 148, 4, 66, 1, 1, '30.0000', '-', 0, '+', '0.00000000', '+'),
(391, 302, 148, 4, 65, 1, 1, '20.0000', '-', 0, '+', '0.00000000', '+'),
(235, 296, 115, 4, 71, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(234, 296, 115, 4, 72, 1, 1, '10.0000', '-', 0, '+', '0.00000000', '+'),
(398, 296, 115, 4, 66, 1, 1, '30.0000', '-', 0, '+', '0.00000000', '+'),
(399, 296, 115, 4, 65, 1, 1, '20.0000', '-', 0, '+', '0.00000000', '+'),
(400, 278, 66, 4, 66, 1, 1, '40.0000', '-', 0, '+', '0.00000000', '+'),
(401, 278, 66, 4, 65, 1, 1, '20.0000', '-', 0, '+', '0.00000000', '+'),
(403, 278, 66, 4, 69, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(402, 278, 66, 4, 70, 1, 1, '20.0000', '-', 0, '+', '0.00000000', '+'),
(333, 323, 221, 4, 72, 1, 1, '10.0000', '-', 0, '+', '0.00000000', '+'),
(334, 323, 221, 4, 71, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(404, 323, 221, 4, 66, 1, 1, '30.0000', '-', 0, '+', '0.00000000', '+'),
(405, 323, 221, 4, 65, 1, 1, '20.0000', '-', 0, '+', '0.00000000', '+'),
(430, 327, 233, 4, 71, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(429, 327, 233, 4, 72, 1, 1, '20.0000', '-', 0, '+', '0.00000000', '+'),
(359, 327, 233, 4, 65, 1, 1, '20.0000', '-', 0, '+', '0.00000000', '+'),
(432, 340, 268, 4, 72, 1, 1, '20.0000', '-', 0, '+', '0.00000000', '+'),
(431, 340, 268, 4, 71, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+');

-- --------------------------------------------------------

--
-- Table structure for table `sh_product_profile`
--

CREATE TABLE IF NOT EXISTS `sh_product_profile` (
  `product_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sh_product_recurring`
--

CREATE TABLE IF NOT EXISTS `sh_product_recurring` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sh_product_related`
--

CREATE TABLE IF NOT EXISTS `sh_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_product_related`
--

INSERT INTO `sh_product_related` (`product_id`, `related_id`) VALUES
(64, 66),
(64, 67),
(64, 93),
(64, 102),
(64, 202),
(64, 221),
(64, 268),
(66, 64),
(66, 71),
(67, 64),
(67, 77),
(71, 66),
(71, 77),
(71, 80),
(71, 85),
(71, 90),
(71, 202),
(71, 221),
(73, 79),
(73, 80),
(73, 85),
(73, 92),
(73, 95),
(73, 213),
(74, 75),
(74, 80),
(74, 81),
(74, 87),
(74, 170),
(75, 74),
(75, 81),
(75, 85),
(75, 96),
(75, 170),
(76, 77),
(76, 79),
(76, 84),
(76, 87),
(77, 67),
(77, 71),
(77, 76),
(77, 89),
(78, 89),
(79, 73),
(79, 76),
(79, 80),
(79, 83),
(79, 91),
(79, 92),
(79, 233),
(80, 71),
(80, 73),
(80, 74),
(80, 79),
(80, 83),
(80, 213),
(81, 74),
(81, 75),
(81, 85),
(81, 91),
(81, 213),
(81, 233),
(82, 86),
(82, 92),
(82, 93),
(83, 79),
(83, 80),
(83, 84),
(84, 76),
(84, 83),
(84, 87),
(85, 71),
(85, 73),
(85, 75),
(85, 81),
(85, 95),
(85, 170),
(86, 82),
(86, 205),
(86, 208),
(86, 212),
(87, 74),
(87, 76),
(87, 84),
(89, 77),
(89, 78),
(90, 71),
(90, 91),
(90, 106),
(90, 233),
(91, 79),
(91, 81),
(91, 90),
(91, 170),
(92, 73),
(92, 79),
(92, 82),
(92, 115),
(92, 205),
(92, 208),
(92, 212),
(93, 64),
(93, 82),
(93, 100),
(93, 205),
(93, 208),
(93, 212),
(95, 73),
(95, 85),
(95, 100),
(96, 75),
(96, 102),
(96, 268),
(100, 93),
(100, 95),
(100, 102),
(100, 268),
(102, 64),
(102, 96),
(102, 100),
(106, 90),
(108, 109),
(109, 108),
(115, 92),
(115, 213),
(117, 118),
(117, 119),
(118, 117),
(118, 121),
(118, 128),
(119, 117),
(121, 118),
(128, 118),
(170, 74),
(170, 75),
(170, 85),
(170, 91),
(170, 213),
(170, 233),
(202, 64),
(202, 71),
(205, 86),
(205, 92),
(205, 93),
(208, 86),
(208, 92),
(208, 93),
(212, 86),
(212, 92),
(212, 93),
(213, 73),
(213, 80),
(213, 81),
(213, 115),
(213, 170),
(221, 64),
(221, 71),
(233, 79),
(233, 81),
(233, 90),
(233, 170),
(268, 64),
(268, 96),
(268, 100),
(308, 322),
(308, 323),
(309, 320),
(309, 321),
(320, 309),
(321, 309),
(322, 308),
(323, 308);

-- --------------------------------------------------------

--
-- Table structure for table `sh_product_reward`
--

CREATE TABLE IF NOT EXISTS `sh_product_reward` (
`product_reward_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=2941 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_product_reward`
--

INSERT INTO `sh_product_reward` (`product_reward_id`, `product_id`, `customer_group_id`, `points`) VALUES
(2836, 75, 1, 0),
(2661, 64, 1, 0),
(2756, 142, 1, 0),
(2681, 141, 1, 0),
(2913, 148, 1, 0),
(2919, 100, 1, 0),
(2863, 147, 1, 0),
(2613, 285, 1, 0),
(2917, 115, 1, 0),
(2834, 74, 1, 0),
(2855, 78, 1, 0),
(2692, 143, 1, 0),
(2691, 136, 1, 0),
(2751, 145, 1, 0),
(2856, 77, 1, 0),
(2663, 66, 1, 0),
(2828, 67, 1, 0),
(2920, 98, 1, 0),
(2860, 76, 1, 0),
(2916, 71, 1, 0),
(2905, 90, 1, 0),
(2914, 73, 1, 0),
(2859, 79, 1, 0),
(2848, 80, 1, 0),
(2838, 81, 1, 0),
(2858, 82, 1, 0),
(2844, 83, 1, 0),
(2850, 84, 1, 0),
(2861, 85, 1, 0),
(2901, 86, 1, 0),
(2852, 87, 1, 0),
(2854, 89, 1, 0),
(2657, 91, 1, 0),
(2656, 92, 1, 0),
(2918, 93, 1, 0),
(2915, 95, 1, 0),
(2912, 96, 1, 0),
(2842, 170, 1, 0),
(2662, 102, 1, 0),
(2902, 106, 1, 0),
(2677, 108, 1, 0),
(2684, 109, 1, 0),
(2682, 137, 1, 0),
(2871, 284, 1, 0),
(2683, 138, 1, 0),
(2878, 291, 1, 0),
(2664, 116, 1, 0),
(2385, 117, 1, 0),
(2763, 118, 1, 0),
(2690, 119, 1, 0),
(2874, 286, 1, 0),
(2571, 121, 1, 0),
(2667, 122, 1, 0),
(2665, 123, 1, 0),
(2748, 124, 1, 0),
(2753, 125, 1, 0),
(2752, 126, 1, 0),
(2680, 127, 1, 0),
(2757, 128, 1, 0),
(2872, 276, 1, 0),
(2758, 130, 1, 0),
(2759, 131, 1, 0),
(2864, 132, 1, 0),
(2666, 133, 1, 0),
(2737, 134, 1, 0),
(2750, 135, 1, 0),
(2877, 295, 1, 0),
(2875, 278, 1, 0),
(2884, 283, 1, 0),
(2879, 292, 1, 0),
(2883, 282, 1, 0),
(2885, 296, 1, 0),
(2882, 280, 1, 0),
(2881, 281, 1, 0),
(2926, 309, 1, 0),
(2857, 313, 1, 0),
(2899, 316, 1, 0),
(2898, 315, 1, 0),
(2897, 317, 1, 0),
(2895, 314, 1, 0),
(2771, 311, 1, 0),
(2925, 308, 1, 0),
(2679, 202, 1, 0),
(2746, 310, 1, 0),
(2940, 312, 1, 0),
(2853, 205, 1, 0),
(2928, 322, 1, 0),
(2934, 321, 1, 0),
(2841, 208, 1, 0),
(2936, 319, 1, 0),
(2933, 318, 1, 0),
(2930, 320, 1, 0),
(2851, 212, 1, 0),
(2659, 213, 1, 0),
(2889, 300, 1, 0),
(2890, 301, 1, 0),
(2887, 297, 1, 0),
(2894, 303, 1, 0),
(2888, 298, 1, 0),
(2921, 221, 1, 0),
(2886, 299, 1, 0),
(2892, 302, 1, 0),
(2891, 306, 1, 0),
(2893, 305, 1, 0),
(2900, 229, 1, 0),
(2922, 233, 1, 0),
(2935, 323, 1, 0),
(2927, 307, 1, 0),
(2653, 268, 1, 0),
(2938, 325, 1, 0),
(2869, 287, 1, 0),
(2880, 288, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sh_product_special`
--

CREATE TABLE IF NOT EXISTS `sh_product_special` (
`product_special_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM AUTO_INCREMENT=443 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sh_product_to_category`
--

CREATE TABLE IF NOT EXISTS `sh_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_product_to_category`
--

INSERT INTO `sh_product_to_category` (`product_id`, `category_id`) VALUES
(64, 60),
(64, 64),
(66, 60),
(66, 64),
(67, 60),
(67, 64),
(71, 60),
(71, 64),
(73, 60),
(73, 64),
(74, 60),
(74, 63),
(75, 60),
(75, 63),
(76, 60),
(76, 63),
(76, 73),
(77, 60),
(77, 63),
(77, 73),
(78, 60),
(78, 63),
(79, 60),
(79, 63),
(79, 73),
(80, 60),
(80, 63),
(80, 73),
(81, 60),
(81, 63),
(81, 73),
(82, 60),
(82, 63),
(83, 60),
(83, 63),
(84, 60),
(84, 63),
(85, 60),
(85, 63),
(85, 73),
(86, 60),
(86, 63),
(86, 73),
(87, 60),
(87, 63),
(89, 60),
(89, 63),
(90, 60),
(90, 64),
(91, 60),
(91, 64),
(92, 60),
(92, 64),
(93, 60),
(93, 64),
(95, 60),
(95, 64),
(96, 60),
(96, 64),
(98, 60),
(98, 64),
(100, 60),
(100, 64),
(102, 60),
(102, 64),
(106, 60),
(106, 64),
(108, 60),
(108, 66),
(109, 60),
(109, 66),
(115, 60),
(115, 64),
(116, 60),
(116, 64),
(118, 79),
(124, 79),
(125, 79),
(126, 79),
(128, 79),
(130, 79),
(131, 79),
(135, 79),
(137, 60),
(137, 66),
(138, 60),
(138, 66),
(142, 79),
(145, 79),
(147, 60),
(147, 63),
(148, 60),
(148, 64),
(170, 60),
(170, 63),
(202, 60),
(202, 64),
(205, 60),
(205, 63),
(208, 60),
(208, 63),
(212, 60),
(212, 63),
(212, 73),
(213, 60),
(213, 64),
(221, 60),
(221, 64),
(233, 60),
(233, 64),
(268, 60),
(268, 64),
(276, 60),
(276, 74),
(278, 60),
(278, 74),
(280, 60),
(280, 74),
(281, 60),
(281, 74),
(282, 60),
(282, 74),
(283, 60),
(283, 74),
(284, 60),
(284, 74),
(286, 60),
(286, 74),
(287, 60),
(287, 74),
(288, 60),
(288, 74),
(291, 60),
(291, 74),
(292, 60),
(292, 74),
(295, 60),
(295, 74),
(296, 60),
(296, 74),
(297, 60),
(297, 67),
(298, 60),
(298, 67),
(299, 60),
(299, 67),
(300, 60),
(300, 67),
(301, 60),
(301, 67),
(302, 60),
(302, 67),
(303, 60),
(303, 67),
(305, 60),
(305, 67),
(306, 60),
(306, 67),
(307, 78),
(308, 78),
(309, 78),
(310, 78),
(311, 80),
(312, 80),
(313, 80),
(314, 78),
(315, 78),
(316, 78),
(317, 78),
(318, 78),
(319, 78),
(320, 78),
(321, 78),
(322, 78),
(323, 78),
(325, 80);

-- --------------------------------------------------------

--
-- Table structure for table `sh_product_to_download`
--

CREATE TABLE IF NOT EXISTS `sh_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sh_product_to_layout`
--

CREATE TABLE IF NOT EXISTS `sh_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sh_product_to_store`
--

CREATE TABLE IF NOT EXISTS `sh_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_product_to_store`
--

INSERT INTO `sh_product_to_store` (`product_id`, `store_id`) VALUES
(64, 0),
(66, 0),
(67, 0),
(71, 0),
(73, 0),
(74, 0),
(75, 0),
(76, 0),
(77, 0),
(78, 0),
(79, 0),
(80, 0),
(81, 0),
(82, 0),
(83, 0),
(84, 0),
(85, 0),
(86, 0),
(87, 0),
(89, 0),
(90, 0),
(91, 0),
(92, 0),
(93, 0),
(95, 0),
(96, 0),
(98, 0),
(100, 0),
(102, 0),
(106, 0),
(108, 0),
(109, 0),
(115, 0),
(116, 0),
(117, 0),
(118, 0),
(119, 0),
(121, 0),
(122, 0),
(123, 0),
(124, 0),
(125, 0),
(126, 0),
(127, 0),
(128, 0),
(130, 0),
(131, 0),
(132, 0),
(133, 0),
(134, 0),
(135, 0),
(136, 0),
(137, 0),
(138, 0),
(141, 0),
(142, 0),
(143, 0),
(145, 0),
(147, 0),
(148, 0),
(170, 0),
(202, 0),
(205, 0),
(208, 0),
(212, 0),
(213, 0),
(221, 0),
(229, 0),
(233, 0),
(268, 0),
(276, 0),
(278, 0),
(280, 0),
(281, 0),
(282, 0),
(283, 0),
(284, 0),
(285, 0),
(286, 0),
(287, 0),
(288, 0),
(291, 0),
(292, 0),
(295, 0),
(296, 0),
(297, 0),
(298, 0),
(299, 0),
(300, 0),
(301, 0),
(302, 0),
(303, 0),
(305, 0),
(306, 0),
(307, 0),
(308, 0),
(309, 0),
(310, 0),
(311, 0),
(312, 0),
(313, 0),
(314, 0),
(315, 0),
(316, 0),
(317, 0),
(318, 0),
(319, 0),
(320, 0),
(321, 0),
(322, 0),
(323, 0),
(325, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sh_profile`
--

CREATE TABLE IF NOT EXISTS `sh_profile` (
`profile_id` int(11) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) unsigned NOT NULL,
  `cycle` int(10) unsigned NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) unsigned NOT NULL,
  `trial_cycle` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sh_profile_description`
--

CREATE TABLE IF NOT EXISTS `sh_profile_description` (
  `profile_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sh_return`
--

CREATE TABLE IF NOT EXISTS `sh_return` (
`return_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_return`
--

INSERT INTO `sh_return` (`return_id`, `order_id`, `product_id`, `customer_id`, `firstname`, `lastname`, `email`, `telephone`, `product`, `model`, `quantity`, `opened`, `return_reason_id`, `return_action_id`, `return_status_id`, `comment`, `date_ordered`, `date_added`, `date_modified`) VALUES
(1, 0, 0, 0, 'Anjii', 'Anjii', 'horpabjhl@outlook.com', 'ZTV7rMWPIyv6', 'Ql2ALiW37u1J', 'J5YXau5Gie', 1, 0, 2, 0, 2, 'This could not posslbiy have been more helpful!', '0000-00-00', '2015-01-04 10:35:12', '2015-01-04 10:35:12');

-- --------------------------------------------------------

--
-- Table structure for table `sh_return_action`
--

CREATE TABLE IF NOT EXISTS `sh_return_action` (
`return_action_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_return_action`
--

INSERT INTO `sh_return_action` (`return_action_id`, `language_id`, `name`) VALUES
(1, 1, 'Refunded'),
(2, 1, 'Credit Issued'),
(3, 1, 'Replacement Sent'),
(1, 2, 'Refunded'),
(2, 2, 'Credit Issued'),
(3, 2, 'Replacement Sent');

-- --------------------------------------------------------

--
-- Table structure for table `sh_return_history`
--

CREATE TABLE IF NOT EXISTS `sh_return_history` (
`return_history_id` int(11) NOT NULL,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sh_return_reason`
--

CREATE TABLE IF NOT EXISTS `sh_return_reason` (
`return_reason_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_return_reason`
--

INSERT INTO `sh_return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
(1, 1, 'Dead On Arrival'),
(2, 1, 'Received Wrong Item'),
(3, 1, 'Order Error'),
(4, 1, 'Faulty, please supply details'),
(5, 1, 'Other, please supply details'),
(1, 2, 'Dead On Arrival'),
(2, 2, 'Received Wrong Item'),
(3, 2, 'Order Error'),
(4, 2, 'Faulty, please supply details'),
(5, 2, 'Other, please supply details');

-- --------------------------------------------------------

--
-- Table structure for table `sh_return_status`
--

CREATE TABLE IF NOT EXISTS `sh_return_status` (
`return_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_return_status`
--

INSERT INTO `sh_return_status` (`return_status_id`, `language_id`, `name`) VALUES
(1, 1, 'Pending'),
(3, 1, 'Complete'),
(2, 1, 'Awaiting Products'),
(1, 2, 'Pending'),
(3, 2, 'Complete'),
(2, 2, 'Awaiting Products');

-- --------------------------------------------------------

--
-- Table structure for table `sh_review`
--

CREATE TABLE IF NOT EXISTS `sh_review` (
`review_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_review`
--

INSERT INTO `sh_review` (`review_id`, `product_id`, `customer_id`, `author`, `text`, `rating`, `status`, `date_added`, `date_modified`) VALUES
(2, 142, 0, 'vania cardoso', 'Que tecidos lindos! amei! Qual a metragem?', 5, 0, '2014-07-14 14:21:21', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sh_setting`
--

CREATE TABLE IF NOT EXISTS `sh_setting` (
`setting_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `group` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=13077 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_setting`
--

INSERT INTO `sh_setting` (`setting_id`, `store_id`, `group`, `key`, `value`, `serialized`) VALUES
(3284, 0, 'shipping', 'shipping_sort_order', '3', 0),
(2, 0, 'sub_total', 'sub_total_sort_order', '1', 0),
(3, 0, 'sub_total', 'sub_total_status', '1', 0),
(4, 0, 'tax', 'tax_status', '1', 0),
(5, 0, 'total', 'total_sort_order', '9', 0),
(6, 0, 'total', 'total_status', '1', 0),
(7, 0, 'tax', 'tax_sort_order', '5', 0),
(3278, 0, 'bank_transfer', 'bank_transfer_order_status_id', '1', 0),
(3279, 0, 'bank_transfer', 'bank_transfer_geo_zone_id', '5', 0),
(3283, 0, 'shipping', 'shipping_status', '1', 0),
(3282, 0, 'shipping', 'shipping_estimator', '1', 0),
(27, 0, 'coupon', 'coupon_sort_order', '4', 0),
(28, 0, 'coupon', 'coupon_status', '1', 0),
(10907, 0, 'carousel', 'carousel_module', 'a:1:{i:0;a:9:{s:9:"banner_id";s:1:"9";s:5:"limit";s:1:"5";s:6:"scroll";s:1:"3";s:5:"width";s:2:"80";s:6:"height";s:2:"80";s:9:"layout_id";s:1:"1";s:8:"position";s:14:"content_bottom";s:6:"status";s:1:"1";s:10:"sort_order";s:2:"-1";}}', 1),
(3891, 0, 'correios', 'correios_tax_class_id', '0', 0),
(42, 0, 'credit', 'credit_sort_order', '7', 0),
(43, 0, 'credit', 'credit_status', '1', 0),
(53, 0, 'reward', 'reward_sort_order', '2', 0),
(54, 0, 'reward', 'reward_status', '1', 0),
(56, 0, 'affiliate', 'affiliate_module', 'a:1:{i:0;a:4:{s:9:"layout_id";s:2:"10";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}}', 1),
(12767, 0, 'category', 'category_module', 'a:1:{i:0;a:4:{s:9:"layout_id";s:1:"6";s:8:"position";s:11:"content_top";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}}', 1),
(510, 0, 'tabbed_products', 'tabbed_products_module', 'a:1:{i:0;a:11:{s:6:"latest";s:8:"carousel";s:8:"featured";s:8:"carousel";s:10:"bestseller";s:8:"carousel";s:7:"special";s:8:"carousel";s:5:"limit";s:1:"8";s:11:"image_width";s:2:"90";s:12:"image_height";s:2:"90";s:9:"layout_id";s:1:"1";s:8:"position";s:14:"content_bottom";s:6:"status";s:1:"1";s:10:"sort_order";s:0:"";}}', 1),
(60, 0, 'account', 'account_module', 'a:1:{i:0;a:4:{s:9:"layout_id";s:1:"6";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}}', 1),
(3890, 0, 'correios', 'correios_prazo_adicional', '10', 0),
(3888, 0, 'correios', 'correios_declarar_valor', 'n', 0),
(3889, 0, 'correios', 'correios_adicional', '', 0),
(3893, 0, 'correios', 'correios_status', '1', 0),
(7933, 0, 'store', 'store_admin', '1', 0),
(3894, 0, 'correios', 'correios_sort_order', '1', 0),
(3775, 0, 'pagseguro', 'pagseguro_charset', '', 0),
(3776, 0, 'pagseguro', 'pagseguro_log', '1', 0),
(13076, 0, 'config', 'config_google_analytics', '', 0),
(13075, 0, 'config', 'config_error_filename', 'error.txt', 0),
(94, 0, 'voucher', 'voucher_sort_order', '8', 0),
(95, 0, 'voucher', 'voucher_status', '1', 0),
(13074, 0, 'config', 'config_error_log', '1', 0),
(13073, 0, 'config', 'config_error_display', '1', 0),
(13072, 0, 'config', 'config_compression', '0', 0),
(853, 0, 'slideshow', 'slideshow_module', 'a:1:{i:0;a:7:{s:9:"banner_id";s:1:"7";s:5:"width";s:3:"980";s:6:"height";s:3:"280";s:9:"layout_id";s:1:"1";s:8:"position";s:11:"content_top";s:6:"status";s:1:"0";s:10:"sort_order";s:1:"1";}}', 1),
(1889, 0, 'banner', 'banner_module', 'a:1:{i:0;a:7:{s:9:"banner_id";s:1:"9";s:5:"width";s:3:"258";s:6:"height";s:3:"227";s:9:"layout_id";s:1:"3";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"3";}}', 1),
(13068, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/jpeg\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/vnd.microsoft.icon\r\nimage/tiff\r\nimage/tiff\r\nimage/svg+xml\r\nimage/svg+xml\r\napplication/zip\r\napplication/x-rar-compressed\r\napplication/x-msdownload\r\napplication/vnd.ms-cab-compressed\r\naudio/mpeg\r\nvideo/quicktime\r\nvideo/quicktime\r\napplication/pdf\r\nimage/vnd.adobe.photoshop\r\napplication/postscript\r\napplication/postscript\r\napplication/postscript\r\napplication/msword\r\napplication/rtf\r\napplication/vnd.ms-excel\r\napplication/vnd.ms-powerpoint\r\napplication/vnd.oasis.opendocument.text\r\napplication/vnd.oasis.opendocument.spreadsheet', 0),
(13065, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai''hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(13069, 0, 'config', 'config_maintenance', '1', 0),
(13070, 0, 'config', 'config_password', '1', 0),
(13071, 0, 'config', 'config_encryption', 'b35e4f20b145ae61c4fbc47355fa293e', 0),
(13066, 0, 'config', 'config_seo_url', '0', 0),
(13067, 0, 'config', 'config_file_extension_allowed', 'txt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc\r\nrtf\r\nxls\r\nppt\r\nodt\r\nods', 0),
(13064, 0, 'config', 'config_shared', '0', 0),
(13062, 0, 'config', 'config_fraud_status_id', '7', 0),
(13063, 0, 'config', 'config_secure', '0', 0),
(13061, 0, 'config', 'config_fraud_score', '', 0),
(13060, 0, 'config', 'config_fraud_key', '', 0),
(13059, 0, 'config', 'config_fraud_detection', '0', 0),
(13058, 0, 'config', 'config_alert_emails', 'contato@isabellacarvallho.com\r\ncontato@artetextil.net\r\n\r\n\r\n', 0),
(13057, 0, 'config', 'config_account_mail', '0', 0),
(13056, 0, 'config', 'config_alert_mail', '0', 0),
(13055, 0, 'config', 'config_smtp_timeout', '5', 0),
(13054, 0, 'config', 'config_smtp_port', '25', 0),
(13053, 0, 'config', 'config_smtp_password', '', 0),
(13052, 0, 'config', 'config_smtp_username', '', 0),
(13051, 0, 'config', 'config_smtp_host', '', 0),
(13050, 0, 'config', 'config_mail_parameter', '', 0),
(13049, 0, 'config', 'config_mail_protocol', 'mail', 0),
(13048, 0, 'config', 'config_ftp_status', '0', 0),
(13047, 0, 'config', 'config_ftp_root', '', 0),
(13046, 0, 'config', 'config_ftp_password', '', 0),
(13045, 0, 'config', 'config_ftp_username', '', 0),
(13044, 0, 'config', 'config_ftp_port', '21', 0),
(13043, 0, 'config', 'config_ftp_host', 'artextil.net', 0),
(13042, 0, 'config', 'config_image_cart_height', '60', 0),
(13041, 0, 'config', 'config_image_cart_width', '60', 0),
(13040, 0, 'config', 'config_image_wishlist_height', '50', 0),
(13039, 0, 'config', 'config_image_wishlist_width', '50', 0),
(13038, 0, 'config', 'config_image_compare_height', '80', 0),
(13037, 0, 'config', 'config_image_compare_width', '80', 0),
(13036, 0, 'config', 'config_image_related_height', '120', 0),
(13035, 0, 'config', 'config_image_related_width', '120', 0),
(13034, 0, 'config', 'config_image_additional_height', '62', 0),
(13033, 0, 'config', 'config_image_additional_width', '62', 0),
(13032, 0, 'config', 'config_image_product_height', '160', 0),
(13031, 0, 'config', 'config_image_product_width', '160', 0),
(13030, 0, 'config', 'config_image_popup_height', '900', 0),
(13029, 0, 'config', 'config_image_popup_width', '900', 0),
(13028, 0, 'config', 'config_image_thumb_height', '525', 0),
(13027, 0, 'config', 'config_image_thumb_width', '455', 0),
(13026, 0, 'config', 'config_image_category_height', '90', 0),
(13025, 0, 'config', 'config_image_category_width', '90', 0),
(13024, 0, 'config', 'config_icon', 'data/logotipo-arte.png', 0),
(13023, 0, 'config', 'config_logo', 'data/logotipo-arte.png', 0),
(13022, 0, 'config', 'config_return_status_id', '2', 0),
(13021, 0, 'config', 'config_return_id', '0', 0),
(13020, 0, 'config', 'config_commission', '5', 0),
(13019, 0, 'config', 'config_affiliate_id', '4', 0),
(13018, 0, 'config', 'config_stock_status_id', '5', 0),
(8378, 0, 'related', 'related_module', 'a:1:{i:0;a:7:{s:5:"limit";s:1:"5";s:11:"image_width";s:2:"80";s:12:"image_height";s:2:"80";s:9:"layout_id";s:1:"6";s:8:"position";s:11:"content_top";s:6:"status";s:1:"1";s:10:"sort_order";s:0:"";}}', 1),
(13017, 0, 'config', 'config_stock_checkout', '0', 0),
(13016, 0, 'config', 'config_stock_warning', '0', 0),
(12759, 0, 'sellegance', 'sellegance_custom_stylesheet', '1', 0),
(12762, 0, 'filter', 'filter_module', 'a:1:{i:0;a:4:{s:9:"layout_id";s:1:"6";s:8:"position";s:11:"content_top";s:6:"status";s:1:"1";s:10:"sort_order";s:0:"";}}', 1),
(12760, 0, 'sellegance', 'sellegance_custom_css', '', 0),
(12761, 0, 'sellegance', 'sellegance_custom_js', '&lt;script type=&quot;text/javascript&quot;&gt;\r\n\r\n  var _gaq = _gaq || [];\r\n  _gaq.push([''_setAccount'', ''UA-4435028-2'']);\r\n  _gaq.push([''_setDomainName'', ''isabellacarvalho.com'']);\r\n  _gaq.push([''_setAllowLinker'', true]);\r\n  _gaq.push([''_trackPageview'']);\r\n\r\n  (function() {\r\n    var ga = document.createElement(''script''); ga.type = ''text/javascript''; ga.async = true;\r\n    ga.src = (''https:'' == document.location.protocol ? ''https://'' : ''http://'') + ''stats.g.doubleclick.net/dc.js'';\r\n    var s = document.getElementsByTagName(''script'')[0]; s.parentNode.insertBefore(ga, s);\r\n  })();\r\n\r\n&lt;/script&gt;', 0),
(12758, 0, 'sellegance', 'sellegance_copyright', '&lt;p&gt;Copyright Arte Têxtil - Todos os direitos reservados I&amp;nbsp; Desenvolvido por Arte Têxtil - Arqfix Digital Lab&lt;/p&gt;\r\n', 0),
(12757, 0, 'sellegance', 'sellegance_footer_info_text', '&lt;p&gt;Arte Têxtil Social&lt;/p&gt;\r\n', 0),
(12756, 0, 'sellegance', 'sellegance_instagram_username', 'ArteTextil', 0),
(12755, 0, 'sellegance', 'sellegance_pinterest_id', 'artetextil', 0),
(12754, 0, 'sellegance', 'sellegance_gplus_id', '', 0),
(12753, 0, 'sellegance', 'sellegance_skype_username', '', 0),
(12752, 0, 'sellegance', 'sellegance_tumblr_username', '', 0),
(12751, 0, 'sellegance', 'sellegance_youtube_username', '', 0),
(12750, 0, 'sellegance', 'sellegance_twitter_username', 'lojaartetextil', 0),
(12749, 0, 'sellegance', 'sellegance_facebook_icon', '1', 0),
(12748, 0, 'sellegance', 'sellegance_facebook_button', '1', 0),
(12747, 0, 'sellegance', 'sellegance_facebook_page', 'ArteTextil', 0),
(12746, 0, 'sellegance', 'sellegance_select_mobile_menu', 'bootstrap', 0),
(12745, 0, 'sellegance', 'sellegance_logo_position', 'center', 0),
(12744, 0, 'sellegance', 'sellegance_carousel_autoplay', '1', 0),
(12743, 0, 'sellegance', 'sellegance_related_carousel', 'on', 0),
(12742, 0, 'sellegance', 'sellegance_special_carousel', 'on', 0),
(12741, 0, 'sellegance', 'sellegance_latest_carousel', 'on', 0),
(12740, 0, 'sellegance', 'sellegance_bestseller_carousel', 'on', 0),
(12739, 0, 'sellegance', 'sellegance_featured_carousel', 'on', 0),
(12738, 0, 'sellegance', 'sellegance_slider_transition_time', '40000', 0),
(12737, 0, 'sellegance', 'sellegance_slider_speed', '80000', 0),
(12735, 0, 'sellegance', 'sellegance_small_font_size', '12', 0),
(12736, 0, 'sellegance', 'sellegance_slider', 'flexslider', 0),
(12734, 0, 'sellegance', 'sellegance_small_font', 'Arial', 0),
(12733, 0, 'sellegance', 'sellegance_body_font_size', '14', 0),
(12732, 0, 'sellegance', 'sellegance_body_font', 'Arial', 0),
(12731, 0, 'sellegance', 'sellegance_title_font_size', '48', 0),
(12730, 0, 'sellegance', 'sellegance_title_font', 'Abel', 0),
(12729, 0, 'sellegance', 'sellegance_categories_active_color', '#000000', 0),
(12727, 0, 'sellegance', 'sellegance_categories_menu_color', '#333333', 0),
(12728, 0, 'sellegance', 'sellegance_categories_sub_color', '#555555', 0),
(12726, 0, 'sellegance', 'sellegance_onsale_text_color', '#FFFFFF', 0),
(12725, 0, 'sellegance', 'sellegance_onsale_background_color', '#A2C094', 0),
(12724, 0, 'sellegance', 'sellegance_new_price_color', '#FF0000', 0),
(13015, 0, 'config', 'config_stock_display', '0', 0),
(12723, 0, 'sellegance', 'sellegance_old_price_color', '#999999', 0),
(12722, 0, 'sellegance', 'sellegance_normal_price_color', '#333333', 0),
(12720, 0, 'sellegance', 'sellegance_2button_text_color', '#FFFFFF', 0),
(12721, 0, 'sellegance', 'sellegance_product_name_color', '#000000', 0),
(12719, 0, 'sellegance', 'sellegance_2button_border_color', '#373737', 0),
(12718, 0, 'sellegance', 'sellegance_2button_bottom_color', '#191919', 0),
(12717, 0, 'sellegance', 'sellegance_2button_top_color', '#505050', 0),
(12715, 0, 'sellegance', 'sellegance_button_border_color', '#C53727', 0),
(7659, 0, 'advanced_slideshow', 'slider_delay', '8', 0),
(7660, 0, 'advanced_slideshow', 'slider_main_layout', 'fullwidth', 0),
(7661, 0, 'advanced_slideshow', 'slides_quantity', '6', 0),
(7662, 0, 'advanced_slideshow', 'elements_quantity', '2', 0),
(7663, 0, 'advanced_slideshow', 'slider', 'a:6:{i:1;a:2:{i:2;a:6:{s:6:"status";s:1:"1";s:6:"banner";s:13:"data/HEAD.jpg";s:4:"link";s:0:"";s:17:"transition_effect";s:4:"fade";i:1;a:14:{s:6:"status";s:1:"0";s:11:"extra_image";s:0:"";s:5:"video";s:0:"";s:4:"text";s:0:"";s:5:"style";s:10:"small_text";s:12:"animation_in";s:3:"sft";s:13:"animation_out";s:3:"stt";s:6:"easing";s:11:"easeOutBack";s:9:"endeasing";s:11:"easeOutBack";s:12:"randomrotate";s:1:"0";s:5:"speed";s:3:"300";s:5:"start";s:3:"300";s:1:"x";s:3:"100";s:1:"y";s:3:"100";}i:2;a:14:{s:6:"status";s:1:"0";s:11:"extra_image";s:0:"";s:5:"video";s:0:"";s:4:"text";s:0:"";s:5:"style";s:10:"small_text";s:12:"animation_in";s:3:"sft";s:13:"animation_out";s:3:"stt";s:6:"easing";s:11:"easeOutBack";s:9:"endeasing";s:11:"easeOutBack";s:12:"randomrotate";s:1:"0";s:5:"speed";s:3:"300";s:5:"start";s:3:"300";s:1:"x";s:3:"100";s:1:"y";s:3:"100";}}i:1;a:6:{s:6:"status";s:1:"1";s:6:"banner";s:13:"data/HEAD.jpg";s:4:"link";s:0:"";s:17:"transition_effect";s:8:"boxslide";i:1;a:14:{s:6:"status";s:1:"0";s:11:"extra_image";s:0:"";s:5:"video";s:0:"";s:4:"text";s:0:"";s:5:"style";s:10:"small_text";s:12:"animation_in";s:3:"sft";s:13:"animation_out";s:3:"stt";s:6:"easing";s:11:"easeOutBack";s:9:"endeasing";s:11:"easeOutBack";s:12:"randomrotate";s:1:"0";s:5:"speed";s:3:"300";s:5:"start";s:3:"300";s:1:"x";s:3:"100";s:1:"y";s:3:"100";}i:2;a:14:{s:6:"status";s:1:"0";s:11:"extra_image";s:0:"";s:5:"video";s:0:"";s:4:"text";s:0:"";s:5:"style";s:10:"small_text";s:12:"animation_in";s:3:"sft";s:13:"animation_out";s:3:"stt";s:6:"easing";s:11:"easeOutBack";s:9:"endeasing";s:11:"easeOutBack";s:12:"randomrotate";s:1:"0";s:5:"speed";s:3:"300";s:5:"start";s:3:"300";s:1:"x";s:3:"100";s:1:"y";s:3:"100";}}}i:2;a:2:{i:2;a:6:{s:6:"status";s:1:"1";s:6:"banner";s:14:"data/head2.jpg";s:4:"link";s:0:"";s:17:"transition_effect";s:4:"fade";i:1;a:14:{s:6:"status";s:1:"0";s:11:"extra_image";s:0:"";s:5:"video";s:0:"";s:4:"text";s:0:"";s:5:"style";s:10:"small_text";s:12:"animation_in";s:3:"sft";s:13:"animation_out";s:3:"stt";s:6:"easing";s:11:"easeOutBack";s:9:"endeasing";s:11:"easeOutBack";s:12:"randomrotate";s:1:"0";s:5:"speed";s:3:"300";s:5:"start";s:3:"300";s:1:"x";s:3:"100";s:1:"y";s:3:"100";}i:2;a:14:{s:6:"status";s:1:"0";s:11:"extra_image";s:0:"";s:5:"video";s:0:"";s:4:"text";s:0:"";s:5:"style";s:10:"small_text";s:12:"animation_in";s:3:"sft";s:13:"animation_out";s:3:"stt";s:6:"easing";s:11:"easeOutBack";s:9:"endeasing";s:11:"easeOutBack";s:12:"randomrotate";s:1:"0";s:5:"speed";s:3:"300";s:5:"start";s:3:"300";s:1:"x";s:3:"100";s:1:"y";s:3:"100";}}i:1;a:6:{s:6:"status";s:1:"0";s:6:"banner";s:14:"data/head2.jpg";s:4:"link";s:0:"";s:17:"transition_effect";s:6:"random";i:1;a:14:{s:6:"status";s:1:"0";s:11:"extra_image";s:0:"";s:5:"video";s:0:"";s:4:"text";s:0:"";s:5:"style";s:10:"small_text";s:12:"animation_in";s:3:"sft";s:13:"animation_out";s:3:"stt";s:6:"easing";s:11:"easeOutBack";s:9:"endeasing";s:11:"easeOutBack";s:12:"randomrotate";s:1:"0";s:5:"speed";s:3:"300";s:5:"start";s:3:"300";s:1:"x";s:3:"100";s:1:"y";s:3:"100";}i:2;a:14:{s:6:"status";s:1:"0";s:11:"extra_image";s:0:"";s:5:"video";s:0:"";s:4:"text";s:0:"";s:5:"style";s:10:"small_text";s:12:"animation_in";s:3:"sft";s:13:"animation_out";s:3:"stt";s:6:"easing";s:11:"easeOutBack";s:9:"endeasing";s:11:"easeOutBack";s:12:"randomrotate";s:1:"0";s:5:"speed";s:3:"300";s:5:"start";s:3:"300";s:1:"x";s:3:"100";s:1:"y";s:3:"100";}}}i:3;a:2:{i:2;a:6:{s:6:"status";s:1:"1";s:6:"banner";s:14:"data/head3.jpg";s:4:"link";s:0:"";s:17:"transition_effect";s:4:"fade";i:1;a:14:{s:6:"status";s:1:"0";s:11:"extra_image";s:0:"";s:5:"video";s:0:"";s:4:"text";s:0:"";s:5:"style";s:10:"small_text";s:12:"animation_in";s:3:"sft";s:13:"animation_out";s:3:"stt";s:6:"easing";s:11:"easeOutBack";s:9:"endeasing";s:11:"easeOutBack";s:12:"randomrotate";s:1:"0";s:5:"speed";s:3:"300";s:5:"start";s:3:"300";s:1:"x";s:3:"100";s:1:"y";s:3:"100";}i:2;a:14:{s:6:"status";s:1:"0";s:11:"extra_image";s:0:"";s:5:"video";s:0:"";s:4:"text";s:0:"";s:5:"style";s:10:"small_text";s:12:"animation_in";s:3:"sft";s:13:"animation_out";s:3:"stt";s:6:"easing";s:11:"easeOutBack";s:9:"endeasing";s:11:"easeOutBack";s:12:"randomrotate";s:1:"0";s:5:"speed";s:3:"300";s:5:"start";s:3:"300";s:1:"x";s:3:"100";s:1:"y";s:3:"100";}}i:1;a:6:{s:6:"status";s:1:"0";s:6:"banner";s:14:"data/head3.jpg";s:4:"link";s:0:"";s:17:"transition_effect";s:4:"fade";i:1;a:14:{s:6:"status";s:1:"0";s:11:"extra_image";s:0:"";s:5:"video";s:0:"";s:4:"text";s:0:"";s:5:"style";s:10:"small_text";s:12:"animation_in";s:3:"sft";s:13:"animation_out";s:3:"stt";s:6:"easing";s:11:"easeOutBack";s:9:"endeasing";s:11:"easeOutBack";s:12:"randomrotate";s:1:"0";s:5:"speed";s:3:"300";s:5:"start";s:3:"300";s:1:"x";s:3:"100";s:1:"y";s:3:"100";}i:2;a:14:{s:6:"status";s:1:"0";s:11:"extra_image";s:0:"";s:5:"video";s:0:"";s:4:"text";s:0:"";s:5:"style";s:10:"small_text";s:12:"animation_in";s:3:"sft";s:13:"animation_out";s:3:"stt";s:6:"easing";s:11:"easeOutBack";s:9:"endeasing";s:11:"easeOutBack";s:12:"randomrotate";s:1:"0";s:5:"speed";s:3:"300";s:5:"start";s:3:"300";s:1:"x";s:3:"100";s:1:"y";s:3:"100";}}}i:4;a:2:{i:2;a:6:{s:6:"status";s:1:"1";s:6:"banner";s:14:"data/head4.jpg";s:4:"link";s:0:"";s:17:"transition_effect";s:4:"fade";i:1;a:14:{s:6:"status";s:1:"0";s:11:"extra_image";s:0:"";s:5:"video";s:0:"";s:4:"text";s:0:"";s:5:"style";s:10:"small_text";s:12:"animation_in";s:3:"sft";s:13:"animation_out";s:3:"stt";s:6:"easing";s:11:"easeOutBack";s:9:"endeasing";s:11:"easeOutBack";s:12:"randomrotate";s:1:"0";s:5:"speed";s:3:"300";s:5:"start";s:3:"300";s:1:"x";s:3:"100";s:1:"y";s:3:"100";}i:2;a:14:{s:6:"status";s:1:"0";s:11:"extra_image";s:0:"";s:5:"video";s:0:"";s:4:"text";s:0:"";s:5:"style";s:10:"small_text";s:12:"animation_in";s:3:"sft";s:13:"animation_out";s:3:"stt";s:6:"easing";s:11:"easeOutBack";s:9:"endeasing";s:11:"easeOutBack";s:12:"randomrotate";s:1:"0";s:5:"speed";s:3:"300";s:5:"start";s:3:"300";s:1:"x";s:3:"100";s:1:"y";s:3:"100";}}i:1;a:6:{s:6:"status";s:1:"1";s:6:"banner";s:14:"data/head4.jpg";s:4:"link";s:0:"";s:17:"transition_effect";s:4:"fade";i:1;a:14:{s:6:"status";s:1:"0";s:11:"extra_image";s:0:"";s:5:"video";s:0:"";s:4:"text";s:0:"";s:5:"style";s:10:"small_text";s:12:"animation_in";s:3:"sft";s:13:"animation_out";s:3:"stt";s:6:"easing";s:11:"easeOutBack";s:9:"endeasing";s:11:"easeOutBack";s:12:"randomrotate";s:1:"0";s:5:"speed";s:3:"300";s:5:"start";s:3:"300";s:1:"x";s:3:"100";s:1:"y";s:3:"100";}i:2;a:14:{s:6:"status";s:1:"0";s:11:"extra_image";s:0:"";s:5:"video";s:0:"";s:4:"text";s:0:"";s:5:"style";s:10:"small_text";s:12:"animation_in";s:3:"sft";s:13:"animation_out";s:3:"stt";s:6:"easing";s:11:"easeOutBack";s:9:"endeasing";s:11:"easeOutBack";s:12:"randomrotate";s:1:"0";s:5:"speed";s:3:"300";s:5:"start";s:3:"300";s:1:"x";s:3:"100";s:1:"y";s:3:"100";}}}i:5;a:2:{i:2;a:6:{s:6:"status";s:1:"1";s:6:"banner";s:14:"data/head5.jpg";s:4:"link";s:0:"";s:17:"transition_effect";s:4:"fade";i:1;a:14:{s:6:"status";s:1:"0";s:11:"extra_image";s:0:"";s:5:"video";s:0:"";s:4:"text";s:0:"";s:5:"style";s:10:"small_text";s:12:"animation_in";s:3:"sft";s:13:"animation_out";s:3:"stt";s:6:"easing";s:11:"easeOutBack";s:9:"endeasing";s:11:"easeOutBack";s:12:"randomrotate";s:1:"0";s:5:"speed";s:3:"300";s:5:"start";s:3:"300";s:1:"x";s:3:"100";s:1:"y";s:3:"100";}i:2;a:14:{s:6:"status";s:1:"0";s:11:"extra_image";s:0:"";s:5:"video";s:0:"";s:4:"text";s:0:"";s:5:"style";s:10:"small_text";s:12:"animation_in";s:3:"sft";s:13:"animation_out";s:3:"stt";s:6:"easing";s:11:"easeOutBack";s:9:"endeasing";s:11:"easeOutBack";s:12:"randomrotate";s:1:"0";s:5:"speed";s:3:"300";s:5:"start";s:3:"300";s:1:"x";s:3:"100";s:1:"y";s:3:"100";}}i:1;a:6:{s:6:"status";s:1:"1";s:6:"banner";s:14:"data/head5.jpg";s:4:"link";s:0:"";s:17:"transition_effect";s:6:"random";i:1;a:14:{s:6:"status";s:1:"0";s:11:"extra_image";s:0:"";s:5:"video";s:0:"";s:4:"text";s:0:"";s:5:"style";s:10:"small_text";s:12:"animation_in";s:3:"sft";s:13:"animation_out";s:3:"stt";s:6:"easing";s:11:"easeOutBack";s:9:"endeasing";s:11:"easeOutBack";s:12:"randomrotate";s:1:"0";s:5:"speed";s:3:"300";s:5:"start";s:3:"300";s:1:"x";s:3:"100";s:1:"y";s:3:"100";}i:2;a:14:{s:6:"status";s:1:"0";s:11:"extra_image";s:0:"";s:5:"video";s:0:"";s:4:"text";s:0:"";s:5:"style";s:10:"small_text";s:12:"animation_in";s:3:"sft";s:13:"animation_out";s:3:"stt";s:6:"easing";s:11:"easeOutBack";s:9:"endeasing";s:11:"easeOutBack";s:12:"randomrotate";s:1:"0";s:5:"speed";s:3:"300";s:5:"start";s:3:"300";s:1:"x";s:3:"100";s:1:"y";s:3:"100";}}}i:6;a:2:{i:2;a:6:{s:6:"status";s:1:"1";s:6:"banner";s:30:"data/slideshow/home-shop-3.jpg";s:4:"link";s:0:"";s:17:"transition_effect";s:4:"fade";i:1;a:14:{s:6:"status";s:1:"0";s:11:"extra_image";s:0:"";s:5:"video";s:0:"";s:4:"text";s:0:"";s:5:"style";s:10:"small_text";s:12:"animation_in";s:3:"sft";s:13:"animation_out";s:3:"stt";s:6:"easing";s:11:"easeOutBack";s:9:"endeasing";s:11:"easeOutBack";s:12:"randomrotate";s:1:"0";s:5:"speed";s:3:"300";s:5:"start";s:3:"300";s:1:"x";s:3:"100";s:1:"y";s:3:"100";}i:2;a:14:{s:6:"status";s:1:"0";s:11:"extra_image";s:0:"";s:5:"video";s:0:"";s:4:"text";s:0:"";s:5:"style";s:10:"small_text";s:12:"animation_in";s:3:"sft";s:13:"animation_out";s:3:"stt";s:6:"easing";s:11:"easeOutBack";s:9:"endeasing";s:11:"easeOutBack";s:12:"randomrotate";s:1:"0";s:5:"speed";s:3:"300";s:5:"start";s:3:"300";s:1:"x";s:3:"100";s:1:"y";s:3:"100";}}i:1;a:6:{s:6:"status";s:1:"1";s:6:"banner";s:30:"data/slideshow/home-shop-3.jpg";s:4:"link";s:0:"";s:17:"transition_effect";s:6:"random";i:1;a:14:{s:6:"status";s:1:"0";s:11:"extra_image";s:0:"";s:5:"video";s:0:"";s:4:"text";s:0:"";s:5:"style";s:10:"small_text";s:12:"animation_in";s:3:"sft";s:13:"animation_out";s:3:"stt";s:6:"easing";s:11:"easeOutBack";s:9:"endeasing";s:11:"easeOutBack";s:12:"randomrotate";s:1:"0";s:5:"speed";s:3:"300";s:5:"start";s:3:"300";s:1:"x";s:3:"100";s:1:"y";s:3:"100";}i:2;a:14:{s:6:"status";s:1:"0";s:11:"extra_image";s:0:"";s:5:"video";s:0:"";s:4:"text";s:0:"";s:5:"style";s:10:"small_text";s:12:"animation_in";s:3:"sft";s:13:"animation_out";s:3:"stt";s:6:"easing";s:11:"easeOutBack";s:9:"endeasing";s:11:"easeOutBack";s:12:"randomrotate";s:1:"0";s:5:"speed";s:3:"300";s:5:"start";s:3:"300";s:1:"x";s:3:"100";s:1:"y";s:3:"100";}}}}', 1),
(12716, 0, 'sellegance', 'sellegance_button_text_color', '#FFFFFF', 0),
(12714, 0, 'sellegance', 'sellegance_button_bottom_color', '#D14836', 0),
(12713, 0, 'sellegance', 'sellegance_button_top_color', '#DD4B39', 0),
(12712, 0, 'sellegance', 'sellegance_footer_links_color', '#777777', 0),
(12711, 0, 'sellegance', 'sellegance_footer_text_color', '#333333', 0),
(12710, 0, 'sellegance', 'sellegance_lighttext_color', '#777777', 0),
(12709, 0, 'sellegance', 'sellegance_content_links_color', '#333333', 0),
(3887, 0, 'correios', 'correios_aviso_recebimento', 's', 0),
(3886, 0, 'correios', 'correios_mao_propria', 'n', 0),
(3885, 0, 'correios', 'correios_contrato_senha', '', 0),
(3883, 0, 'correios', 'correios_41106', '1', 0),
(3777, 0, 'pagseguro', 'pagseguro_directory', '', 0),
(3774, 0, 'pagseguro', 'pagseguro_url_notification', 'http://www.isabellacarvalho.com/shop/index.php?route=payment/pagseguro_notification', 0),
(3773, 0, 'pagseguro', 'pagseguro_forwarding', 'http://www.isabellacarvalho.com/shop/index.php?route=checkout/success', 0),
(3772, 0, 'pagseguro', 'pagseguro_token', '5A628BAA87FE4470828407B771B7EF47', 0),
(3771, 0, 'pagseguro', 'pagseguro_email', 'pagseguro@isabellacarvalho.com', 0),
(3884, 0, 'correios', 'correios_contrato_codigo', '', 0),
(13014, 0, 'config', 'config_complete_status_id', '5', 0),
(2416, 0, 'pickup', 'pickup_sort_order', '2', 0),
(2415, 0, 'pickup', 'pickup_status', '1', 0),
(2414, 0, 'pickup', 'pickup_geo_zone_id', '5', 0),
(3280, 0, 'bank_transfer', 'bank_transfer_status', '1', 0),
(3277, 0, 'bank_transfer', 'bank_transfer_total', 'R$ 40,00', 0),
(2845, 0, 'google_base', 'google_base_status', '1', 0),
(3276, 0, 'bank_transfer', 'bank_transfer_bank_1', 'Banco do Brasil\r\n\r\nAgência:            4328-1\r\nConta corrente  1084-7', 0),
(2846, 0, 'google_sitemap', 'google_sitemap_status', '1', 0),
(13013, 0, 'config', 'config_order_status_id', '1', 0),
(13012, 0, 'config', 'config_invoice_prefix', 'INV-2013-00', 0),
(13011, 0, 'config', 'config_order_edit', '100', 0),
(13010, 0, 'config', 'config_checkout_id', '5', 0),
(13009, 0, 'config', 'config_guest_checkout', '1', 0),
(13008, 0, 'config', 'config_cart_weight', '1', 0),
(13007, 0, 'config', 'config_account_id', '3', 0),
(13006, 0, 'config', 'config_customer_price', '0', 0),
(13005, 0, 'config', 'config_customer_group_display', 'a:1:{i:0;s:1:"1";}', 1),
(13004, 0, 'config', 'config_customer_group_id', '1', 0),
(13003, 0, 'config', 'config_customer_online', '1', 0),
(13002, 0, 'config', 'config_tax_customer', 'shipping', 0),
(13001, 0, 'config', 'config_tax_default', 'shipping', 0),
(13000, 0, 'config', 'config_vat', '0', 0),
(12999, 0, 'config', 'config_tax', '1', 0),
(12998, 0, 'config', 'config_voucher_max', '1000', 0),
(12997, 0, 'config', 'config_voucher_min', '1', 0),
(12996, 0, 'config', 'config_download', '0', 0),
(12995, 0, 'config', 'config_review_status', '1', 0),
(12994, 0, 'config', 'config_product_count', '1', 0),
(12993, 0, 'config', 'config_admin_limit', '20', 0),
(12992, 0, 'config', 'config_catalog_limit', '10', 0),
(12991, 0, 'config', 'config_weight_class_id', '1', 0),
(12990, 0, 'config', 'config_length_class_id', '1', 0),
(12989, 0, 'config', 'config_currency_auto', '1', 0),
(12988, 0, 'config', 'config_currency', 'BRL', 0),
(12987, 0, 'config', 'config_admin_language', 'pt-br', 0),
(12985, 0, 'config', 'config_zone_id', '464', 0),
(12986, 0, 'config', 'config_language', 'pt-br', 0),
(12984, 0, 'config', 'config_country_id', '30', 0),
(12983, 0, 'config', 'config_layout_id', '2', 0),
(12982, 0, 'config', 'config_template', 'sellegance', 0),
(12981, 0, 'config', 'config_meta_description', 'Shop | Arte Têxtil\r\nLoja de tecidos, almofadas e criações do Atelier Arte Têxtil', 0),
(12980, 0, 'config', 'config_title', 'Shop | Arte Têxtil', 0),
(7658, 0, 'advanced_slideshow', 'slider_height', '420', 0),
(7657, 0, 'advanced_slideshow', 'slider_general_status', '1', 0),
(3770, 0, 'pagseguro', 'pagseguro_sort_order', 'Arte Textil', 0),
(3769, 0, 'pagseguro', 'pagseguro_status', '1', 0),
(3281, 0, 'bank_transfer', 'bank_transfer_sort_order', '', 0),
(3275, 0, 'bank_transfer', 'bank_transfer_bank_2', 'Banco do Brasil\r\n\r\nAgência:            4328-1\r\nConta corrente  1084-7\r\n\r\nCNPJ 13929933/0001-00', 0),
(12979, 0, 'config', 'config_fax', '', 0),
(12978, 0, 'config', 'config_telephone', '(11) 2639-8208', 0),
(12974, 0, 'config', 'config_name', 'Shop | Arte Têxtil', 0),
(12975, 0, 'config', 'config_owner', 'Arte Têxtil', 0),
(12708, 0, 'sellegance', 'sellegance_bodytext_color', '#333333', 0),
(12707, 0, 'sellegance', 'sellegance_title_color', '#333333', 0),
(12706, 0, 'sellegance', 'sellegance_background_color', '#FFFFFF', 0),
(12705, 0, 'sellegance', 'sellegance_thickbar_color', '#FFFFFF', 0),
(12704, 0, 'sellegance', 'sellegance_dropdown_hover', '#555555', 0),
(12703, 0, 'sellegance', 'sellegance_dropdown_color', '#333333', 0),
(12702, 0, 'sellegance', 'sellegance_menu_hover', '#D14836', 0),
(12701, 0, 'sellegance', 'sellegance_menu_color', '#333333', 0),
(12700, 0, 'sellegance', 'sellegance_custom_colors', '1', 0),
(12699, 0, 'sellegance', 'sellegance_full_background', '1', 0),
(12698, 0, 'sellegance', 'sellegance_custom_image', '', 0),
(12697, 0, 'sellegance', 'sellegance_custom_pattern', '', 0),
(12696, 0, 'sellegance', 'sellegance_pattern_overlay', 'none', 0),
(12695, 0, 'sellegance', 'sellegance_skins', 'minimal', 0),
(12694, 0, 'sellegance', 'sellegance_show_sale_bubble', '1', 0),
(12693, 0, 'sellegance', 'sellegance_show_compare', '1', 0),
(12692, 0, 'sellegance', 'sellegance_show_wishlist', '1', 0),
(12691, 0, 'sellegance', 'sellegance_toggle_sidebar', '1', 0),
(12690, 0, 'sellegance', 'sellegance_quickview_zoom', '1', 0),
(12689, 0, 'sellegance', 'sellegance_quickview_modules', '1', 0),
(12688, 0, 'sellegance', 'sellegance_quickview_categories', '1', 0),
(12687, 0, 'sellegance', 'sellegance_zoom_autosize', '1', 0),
(12686, 0, 'sellegance', 'sellegance_zoom_height', '', 0),
(12685, 0, 'sellegance', 'sellegance_zoom_width', '', 0),
(12682, 0, 'sellegance', 'sellegance_product_details_layout', 'accordion', 0),
(12684, 0, 'sellegance', 'sellegance_zoom_position', 'inside', 0),
(3892, 0, 'correios', 'correios_geo_zone_id', '5', 0),
(3882, 0, 'correios', 'correios_40010', '1', 0),
(3881, 0, 'correios', 'correios_postcode', '05016-000', 0),
(12977, 0, 'config', 'config_email', 'contato@artetextil.net', 0),
(12683, 0, 'sellegance', 'sellegance_cloud_zoom', '1', 0),
(12681, 0, 'sellegance', 'sellegance_subcat_thumb_height', '120', 0),
(12679, 0, 'sellegance', 'sellegance_subcat_thumbnails_status', '1', 0),
(12680, 0, 'sellegance', 'sellegance_subcat_thumb_width', '120', 0),
(12678, 0, 'sellegance', 'sellegance_subcat_status', '1', 0),
(12677, 0, 'sellegance', 'sellegance_product_columns', '4', 0),
(12676, 0, 'sellegance', 'sellegance_category_style', 'list', 0),
(12976, 0, 'config', 'config_address', 'Rua Iperoig, 409 - Perdizes, São Paulo/SP\r\nCEP 05016-000 - Tel.: (11) 2639-8208 contato@isabellacarvalho.com\r\ncontato@artetextil.net\r\n\r\nwww.artetextil.net', 0),
(12674, 0, 'sellegance', 'sellegance_status', '1', 0),
(12675, 0, 'sellegance', 'sellegance_main_layout', 'large', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sh_stock_status`
--

CREATE TABLE IF NOT EXISTS `sh_stock_status` (
`stock_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_stock_status`
--

INSERT INTO `sh_stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
(7, 1, 'In Stock'),
(8, 1, 'Pre-Order'),
(5, 1, 'Out Of Stock'),
(6, 1, '2 - 3 Days'),
(7, 2, 'In Stock'),
(8, 2, 'Pre-Order'),
(5, 2, 'Out Of Stock'),
(6, 2, '2 - 3 Days');

-- --------------------------------------------------------

--
-- Table structure for table `sh_store`
--

CREATE TABLE IF NOT EXISTS `sh_store` (
`store_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sh_tax_class`
--

CREATE TABLE IF NOT EXISTS `sh_tax_class` (
`tax_class_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_tax_class`
--

INSERT INTO `sh_tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
(9, 'Taxable Goods', 'Taxed Stuff', '2009-01-06 23:21:53', '2011-09-23 14:07:50'),
(10, 'Downloadable Products', 'Downloadable', '2011-09-21 22:19:39', '2011-09-22 10:27:36');

-- --------------------------------------------------------

--
-- Table structure for table `sh_tax_rate`
--

CREATE TABLE IF NOT EXISTS `sh_tax_rate` (
`tax_rate_id` int(11) NOT NULL,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_tax_rate`
--

INSERT INTO `sh_tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES
(86, 3, 'VAT (17.5%)', '17.5000', 'P', '2011-03-09 21:17:10', '2011-09-22 22:24:29'),
(87, 3, 'Eco Tax (-2.00)', '2.0000', 'F', '2011-09-21 21:49:23', '2011-09-23 00:40:19');

-- --------------------------------------------------------

--
-- Table structure for table `sh_tax_rate_to_customer_group`
--

CREATE TABLE IF NOT EXISTS `sh_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_tax_rate_to_customer_group`
--

INSERT INTO `sh_tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES
(86, 1),
(87, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sh_tax_rule`
--

CREATE TABLE IF NOT EXISTS `sh_tax_rule` (
`tax_rule_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_tax_rule`
--

INSERT INTO `sh_tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES
(121, 10, 86, 'payment', 1),
(120, 10, 87, 'store', 0),
(128, 9, 86, 'shipping', 1),
(127, 9, 87, 'shipping', 2);

-- --------------------------------------------------------

--
-- Table structure for table `sh_url_alias`
--

CREATE TABLE IF NOT EXISTS `sh_url_alias` (
`url_alias_id` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=798 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_url_alias`
--

INSERT INTO `sh_url_alias` (`url_alias_id`, `query`, `keyword`) VALUES
(791, 'information_id=4', 'www.artetextil.net'),
(792, 'manufacturer_id=11', 'www.artetextil.net'),
(797, 'category_id=80', 'TECIDOS ESTAMPADOS'),
(796, 'category_id=76', 'Jogo Amerciano');

-- --------------------------------------------------------

--
-- Table structure for table `sh_user`
--

CREATE TABLE IF NOT EXISTS `sh_user` (
`user_id` int(11) NOT NULL,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_user`
--

INSERT INTO `sh_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `code`, `ip`, `status`, `date_added`) VALUES
(5, 10, 'LOJA VIRTUAL', 'aad30812f9d22bd82523d7edcb4a7889d08367c6', 'e2d4b47ce', 'Fernando', 'Mendes', 'contato@lojavirtual.digital', '', '', 1, '2015-04-07 11:48:00'),
(4, 1, 'Isabella', 'beeb5f51a08c56b308901a8abf182313c051311d', '47a60fb8a', 'Isabella', 'Carvalho', 'contato@isabellacarvalho.com', '', '201.52.178.250', 1, '2014-06-30 14:24:20');

-- --------------------------------------------------------

--
-- Table structure for table `sh_user_group`
--

CREATE TABLE IF NOT EXISTS `sh_user_group` (
`user_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_user_group`
--

INSERT INTO `sh_user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Top Administrator', 'a:2:{s:6:"access";a:179:{i:0;s:14:"amazon/listing";i:1;s:14:"amazon/product";i:2;s:16:"amazonus/listing";i:3;s:16:"amazonus/product";i:4;s:17:"catalog/attribute";i:5;s:23:"catalog/attribute_group";i:6;s:16:"catalog/category";i:7;s:16:"catalog/download";i:8;s:14:"catalog/filter";i:9;s:19:"catalog/information";i:10;s:20:"catalog/manufacturer";i:11;s:14:"catalog/option";i:12;s:15:"catalog/product";i:13;s:15:"catalog/profile";i:14;s:14:"catalog/review";i:15;s:18:"common/filemanager";i:16;s:13:"design/banner";i:17;s:19:"design/custom_field";i:18;s:13:"design/layout";i:19;s:12:"ebay/profile";i:20;s:13:"ebay/template";i:21;s:14:"extension/feed";i:22;s:17:"extension/manager";i:23;s:16:"extension/module";i:24;s:17:"extension/openbay";i:25;s:17:"extension/payment";i:26;s:18:"extension/shipping";i:27;s:15:"extension/total";i:28;s:16:"feed/google_base";i:29;s:19:"feed/google_sitemap";i:30;s:20:"localisation/country";i:31;s:21:"localisation/currency";i:32;s:21:"localisation/geo_zone";i:33;s:21:"localisation/language";i:34;s:25:"localisation/length_class";i:35;s:25:"localisation/order_status";i:36;s:26:"localisation/return_action";i:37;s:26:"localisation/return_reason";i:38;s:26:"localisation/return_status";i:39;s:25:"localisation/stock_status";i:40;s:22:"localisation/tax_class";i:41;s:21:"localisation/tax_rate";i:42;s:25:"localisation/weight_class";i:43;s:17:"localisation/zone";i:44;s:14:"module/account";i:45;s:16:"module/affiliate";i:46;s:29:"module/amazon_checkout_layout";i:47;s:13:"module/banner";i:48;s:17:"module/bestseller";i:49;s:15:"module/carousel";i:50;s:15:"module/category";i:51;s:18:"module/ebaydisplay";i:52;s:15:"module/featured";i:53;s:13:"module/filter";i:54;s:18:"module/google_talk";i:55;s:18:"module/information";i:56;s:13:"module/latest";i:57;s:16:"module/pp_layout";i:58;s:16:"module/slideshow";i:59;s:14:"module/special";i:60;s:12:"module/store";i:61;s:14:"module/welcome";i:62;s:14:"openbay/amazon";i:63;s:16:"openbay/amazonus";i:64;s:15:"openbay/openbay";i:65;s:12:"openbay/play";i:66;s:23:"payment/amazon_checkout";i:67;s:24:"payment/authorizenet_aim";i:68;s:21:"payment/bank_transfer";i:69;s:14:"payment/cheque";i:70;s:11:"payment/cod";i:71;s:21:"payment/free_checkout";i:72;s:22:"payment/klarna_account";i:73;s:22:"payment/klarna_invoice";i:74;s:14:"payment/liqpay";i:75;s:20:"payment/moneybookers";i:76;s:14:"payment/nochex";i:77;s:15:"payment/paymate";i:78;s:16:"payment/paypoint";i:79;s:13:"payment/payza";i:80;s:26:"payment/perpetual_payments";i:81;s:18:"payment/pp_express";i:82;s:25:"payment/pp_payflow_iframe";i:83;s:14:"payment/pp_pro";i:84;s:21:"payment/pp_pro_iframe";i:85;s:17:"payment/pp_pro_pf";i:86;s:17:"payment/pp_pro_uk";i:87;s:19:"payment/pp_standard";i:88;s:15:"payment/sagepay";i:89;s:22:"payment/sagepay_direct";i:90;s:18:"payment/sagepay_us";i:91;s:19:"payment/twocheckout";i:92;s:28:"payment/web_payment_software";i:93;s:16:"payment/worldpay";i:94;s:10:"play/order";i:95;s:12:"play/product";i:96;s:27:"report/affiliate_commission";i:97;s:22:"report/customer_credit";i:98;s:22:"report/customer_online";i:99;s:21:"report/customer_order";i:100;s:22:"report/customer_reward";i:101;s:24:"report/product_purchased";i:102;s:21:"report/product_viewed";i:103;s:18:"report/sale_coupon";i:104;s:17:"report/sale_order";i:105;s:18:"report/sale_return";i:106;s:20:"report/sale_shipping";i:107;s:15:"report/sale_tax";i:108;s:14:"sale/affiliate";i:109;s:12:"sale/contact";i:110;s:11:"sale/coupon";i:111;s:13:"sale/customer";i:112;s:20:"sale/customer_ban_ip";i:113;s:19:"sale/customer_group";i:114;s:10:"sale/order";i:115;s:14:"sale/recurring";i:116;s:11:"sale/return";i:117;s:12:"sale/voucher";i:118;s:18:"sale/voucher_theme";i:119;s:15:"setting/setting";i:120;s:13:"setting/store";i:121;s:16:"shipping/auspost";i:122;s:17:"shipping/citylink";i:123;s:14:"shipping/fedex";i:124;s:13:"shipping/flat";i:125;s:13:"shipping/free";i:126;s:13:"shipping/item";i:127;s:23:"shipping/parcelforce_48";i:128;s:15:"shipping/pickup";i:129;s:19:"shipping/royal_mail";i:130;s:12:"shipping/ups";i:131;s:13:"shipping/usps";i:132;s:15:"shipping/weight";i:133;s:11:"tool/backup";i:134;s:14:"tool/error_log";i:135;s:12:"total/coupon";i:136;s:12:"total/credit";i:137;s:14:"total/handling";i:138;s:16:"total/klarna_fee";i:139;s:19:"total/low_order_fee";i:140;s:12:"total/reward";i:141;s:14:"total/shipping";i:142;s:15:"total/sub_total";i:143;s:9:"total/tax";i:144;s:11:"total/total";i:145;s:13:"total/voucher";i:146;s:9:"user/user";i:147;s:20:"user/user_permission";i:148;s:17:"module/sellegance";i:149;s:25:"module/category_accordion";i:150;s:22:"module/tabbed_products";i:151;s:25:"module/advanced_slideshow";i:152;s:17:"shipping/correios";i:153;s:17:"payment/pagseguro";i:154;s:21:"payment/bank_transfer";i:155;s:19:"payment/pp_standard";i:156;s:16:"feed/google_base";i:157;s:15:"shipping/pickup";i:158;s:17:"payment/pagseguro";i:159;s:19:"feed/google_sitemap";i:160;s:12:"module/store";i:161;s:18:"module/google_talk";i:162;s:21:"payment/bank_transfer";i:163;s:19:"payment/pp_standard";i:164;s:18:"module/information";i:165;s:16:"module/pp_layout";i:166;s:13:"shipping/item";i:167;s:29:"module/amazon_checkout_layout";i:168;s:13:"module/latest";i:169;s:14:"module/special";i:170;s:14:"shipping/fedex";i:171;s:13:"module/latest";i:172;s:14:"module/welcome";i:173;s:14:"module/related";i:174;s:13:"module/filter";i:175;s:14:"module/related";i:176;s:14:"module/welcome";i:177;s:13:"module/filter";i:178;s:13:"module/latest";}s:6:"modify";a:179:{i:0;s:14:"amazon/listing";i:1;s:14:"amazon/product";i:2;s:16:"amazonus/listing";i:3;s:16:"amazonus/product";i:4;s:17:"catalog/attribute";i:5;s:23:"catalog/attribute_group";i:6;s:16:"catalog/category";i:7;s:16:"catalog/download";i:8;s:14:"catalog/filter";i:9;s:19:"catalog/information";i:10;s:20:"catalog/manufacturer";i:11;s:14:"catalog/option";i:12;s:15:"catalog/product";i:13;s:15:"catalog/profile";i:14;s:14:"catalog/review";i:15;s:18:"common/filemanager";i:16;s:13:"design/banner";i:17;s:19:"design/custom_field";i:18;s:13:"design/layout";i:19;s:12:"ebay/profile";i:20;s:13:"ebay/template";i:21;s:14:"extension/feed";i:22;s:17:"extension/manager";i:23;s:16:"extension/module";i:24;s:17:"extension/openbay";i:25;s:17:"extension/payment";i:26;s:18:"extension/shipping";i:27;s:15:"extension/total";i:28;s:16:"feed/google_base";i:29;s:19:"feed/google_sitemap";i:30;s:20:"localisation/country";i:31;s:21:"localisation/currency";i:32;s:21:"localisation/geo_zone";i:33;s:21:"localisation/language";i:34;s:25:"localisation/length_class";i:35;s:25:"localisation/order_status";i:36;s:26:"localisation/return_action";i:37;s:26:"localisation/return_reason";i:38;s:26:"localisation/return_status";i:39;s:25:"localisation/stock_status";i:40;s:22:"localisation/tax_class";i:41;s:21:"localisation/tax_rate";i:42;s:25:"localisation/weight_class";i:43;s:17:"localisation/zone";i:44;s:14:"module/account";i:45;s:16:"module/affiliate";i:46;s:29:"module/amazon_checkout_layout";i:47;s:13:"module/banner";i:48;s:17:"module/bestseller";i:49;s:15:"module/carousel";i:50;s:15:"module/category";i:51;s:18:"module/ebaydisplay";i:52;s:15:"module/featured";i:53;s:13:"module/filter";i:54;s:18:"module/google_talk";i:55;s:18:"module/information";i:56;s:13:"module/latest";i:57;s:16:"module/pp_layout";i:58;s:16:"module/slideshow";i:59;s:14:"module/special";i:60;s:12:"module/store";i:61;s:14:"module/welcome";i:62;s:14:"openbay/amazon";i:63;s:16:"openbay/amazonus";i:64;s:15:"openbay/openbay";i:65;s:12:"openbay/play";i:66;s:23:"payment/amazon_checkout";i:67;s:24:"payment/authorizenet_aim";i:68;s:21:"payment/bank_transfer";i:69;s:14:"payment/cheque";i:70;s:11:"payment/cod";i:71;s:21:"payment/free_checkout";i:72;s:22:"payment/klarna_account";i:73;s:22:"payment/klarna_invoice";i:74;s:14:"payment/liqpay";i:75;s:20:"payment/moneybookers";i:76;s:14:"payment/nochex";i:77;s:15:"payment/paymate";i:78;s:16:"payment/paypoint";i:79;s:13:"payment/payza";i:80;s:26:"payment/perpetual_payments";i:81;s:18:"payment/pp_express";i:82;s:25:"payment/pp_payflow_iframe";i:83;s:14:"payment/pp_pro";i:84;s:21:"payment/pp_pro_iframe";i:85;s:17:"payment/pp_pro_pf";i:86;s:17:"payment/pp_pro_uk";i:87;s:19:"payment/pp_standard";i:88;s:15:"payment/sagepay";i:89;s:22:"payment/sagepay_direct";i:90;s:18:"payment/sagepay_us";i:91;s:19:"payment/twocheckout";i:92;s:28:"payment/web_payment_software";i:93;s:16:"payment/worldpay";i:94;s:10:"play/order";i:95;s:12:"play/product";i:96;s:27:"report/affiliate_commission";i:97;s:22:"report/customer_credit";i:98;s:22:"report/customer_online";i:99;s:21:"report/customer_order";i:100;s:22:"report/customer_reward";i:101;s:24:"report/product_purchased";i:102;s:21:"report/product_viewed";i:103;s:18:"report/sale_coupon";i:104;s:17:"report/sale_order";i:105;s:18:"report/sale_return";i:106;s:20:"report/sale_shipping";i:107;s:15:"report/sale_tax";i:108;s:14:"sale/affiliate";i:109;s:12:"sale/contact";i:110;s:11:"sale/coupon";i:111;s:13:"sale/customer";i:112;s:20:"sale/customer_ban_ip";i:113;s:19:"sale/customer_group";i:114;s:10:"sale/order";i:115;s:14:"sale/recurring";i:116;s:11:"sale/return";i:117;s:12:"sale/voucher";i:118;s:18:"sale/voucher_theme";i:119;s:15:"setting/setting";i:120;s:13:"setting/store";i:121;s:16:"shipping/auspost";i:122;s:17:"shipping/citylink";i:123;s:14:"shipping/fedex";i:124;s:13:"shipping/flat";i:125;s:13:"shipping/free";i:126;s:13:"shipping/item";i:127;s:23:"shipping/parcelforce_48";i:128;s:15:"shipping/pickup";i:129;s:19:"shipping/royal_mail";i:130;s:12:"shipping/ups";i:131;s:13:"shipping/usps";i:132;s:15:"shipping/weight";i:133;s:11:"tool/backup";i:134;s:14:"tool/error_log";i:135;s:12:"total/coupon";i:136;s:12:"total/credit";i:137;s:14:"total/handling";i:138;s:16:"total/klarna_fee";i:139;s:19:"total/low_order_fee";i:140;s:12:"total/reward";i:141;s:14:"total/shipping";i:142;s:15:"total/sub_total";i:143;s:9:"total/tax";i:144;s:11:"total/total";i:145;s:13:"total/voucher";i:146;s:9:"user/user";i:147;s:20:"user/user_permission";i:148;s:17:"module/sellegance";i:149;s:25:"module/category_accordion";i:150;s:22:"module/tabbed_products";i:151;s:25:"module/advanced_slideshow";i:152;s:17:"shipping/correios";i:153;s:17:"payment/pagseguro";i:154;s:21:"payment/bank_transfer";i:155;s:19:"payment/pp_standard";i:156;s:16:"feed/google_base";i:157;s:15:"shipping/pickup";i:158;s:17:"payment/pagseguro";i:159;s:19:"feed/google_sitemap";i:160;s:12:"module/store";i:161;s:18:"module/google_talk";i:162;s:21:"payment/bank_transfer";i:163;s:19:"payment/pp_standard";i:164;s:18:"module/information";i:165;s:16:"module/pp_layout";i:166;s:13:"shipping/item";i:167;s:29:"module/amazon_checkout_layout";i:168;s:13:"module/latest";i:169;s:14:"module/special";i:170;s:14:"shipping/fedex";i:171;s:13:"module/latest";i:172;s:14:"module/welcome";i:173;s:14:"module/related";i:174;s:13:"module/filter";i:175;s:14:"module/related";i:176;s:14:"module/welcome";i:177;s:13:"module/filter";i:178;s:13:"module/latest";}}'),
(10, 'Demonstration', '');

-- --------------------------------------------------------

--
-- Table structure for table `sh_voucher`
--

CREATE TABLE IF NOT EXISTS `sh_voucher` (
`voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sh_voucher_history`
--

CREATE TABLE IF NOT EXISTS `sh_voucher_history` (
`voucher_history_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sh_voucher_theme`
--

CREATE TABLE IF NOT EXISTS `sh_voucher_theme` (
`voucher_theme_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_voucher_theme`
--

INSERT INTO `sh_voucher_theme` (`voucher_theme_id`, `image`) VALUES
(8, 'data/demo/canon_eos_5d_2.jpg'),
(7, 'data/demo/gift-voucher-birthday.jpg'),
(6, 'data/demo/apple_logo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sh_voucher_theme_description`
--

CREATE TABLE IF NOT EXISTS `sh_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_voucher_theme_description`
--

INSERT INTO `sh_voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
(6, 1, 'Christmas'),
(7, 1, 'Birthday'),
(8, 1, 'General'),
(6, 2, 'Christmas'),
(7, 2, 'Birthday'),
(8, 2, 'General');

-- --------------------------------------------------------

--
-- Table structure for table `sh_weight_class`
--

CREATE TABLE IF NOT EXISTS `sh_weight_class` (
`weight_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000'
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_weight_class`
--

INSERT INTO `sh_weight_class` (`weight_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '1000.00000000'),
(5, '2.20460000'),
(6, '35.27400000');

-- --------------------------------------------------------

--
-- Table structure for table `sh_weight_class_description`
--

CREATE TABLE IF NOT EXISTS `sh_weight_class_description` (
`weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_weight_class_description`
--

INSERT INTO `sh_weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Kilogram', 'kg'),
(2, 1, 'Gram', 'g'),
(5, 1, 'Pound ', 'lb'),
(6, 1, 'Ounce', 'oz'),
(1, 2, 'Kilogram', 'kg'),
(2, 2, 'Gram', 'g'),
(5, 2, 'Pound ', 'lb'),
(6, 2, 'Ounce', 'oz');

-- --------------------------------------------------------

--
-- Table structure for table `sh_zone`
--

CREATE TABLE IF NOT EXISTS `sh_zone` (
`zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=4033 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_zone`
--

INSERT INTO `sh_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1, 1, 'Badakhshan', 'BDS', 1),
(2, 1, 'Badghis', 'BDG', 1),
(3, 1, 'Baghlan', 'BGL', 1),
(4, 1, 'Balkh', 'BAL', 1),
(5, 1, 'Bamian', 'BAM', 1),
(6, 1, 'Farah', 'FRA', 1),
(7, 1, 'Faryab', 'FYB', 1),
(8, 1, 'Ghazni', 'GHA', 1),
(9, 1, 'Ghowr', 'GHO', 1),
(10, 1, 'Helmand', 'HEL', 1),
(11, 1, 'Herat', 'HER', 1),
(12, 1, 'Jowzjan', 'JOW', 1),
(13, 1, 'Kabul', 'KAB', 1),
(14, 1, 'Kandahar', 'KAN', 1),
(15, 1, 'Kapisa', 'KAP', 1),
(16, 1, 'Khost', 'KHO', 1),
(17, 1, 'Konar', 'KNR', 1),
(18, 1, 'Kondoz', 'KDZ', 1),
(19, 1, 'Laghman', 'LAG', 1),
(20, 1, 'Lowgar', 'LOW', 1),
(21, 1, 'Nangrahar', 'NAN', 1),
(22, 1, 'Nimruz', 'NIM', 1),
(23, 1, 'Nurestan', 'NUR', 1),
(24, 1, 'Oruzgan', 'ORU', 1),
(25, 1, 'Paktia', 'PIA', 1),
(26, 1, 'Paktika', 'PKA', 1),
(27, 1, 'Parwan', 'PAR', 1),
(28, 1, 'Samangan', 'SAM', 1),
(29, 1, 'Sar-e Pol', 'SAR', 1),
(30, 1, 'Takhar', 'TAK', 1),
(31, 1, 'Wardak', 'WAR', 1),
(32, 1, 'Zabol', 'ZAB', 1),
(33, 2, 'Berat', 'BR', 1),
(34, 2, 'Bulqize', 'BU', 1),
(35, 2, 'Delvine', 'DL', 1),
(36, 2, 'Devoll', 'DV', 1),
(37, 2, 'Diber', 'DI', 1),
(38, 2, 'Durres', 'DR', 1),
(39, 2, 'Elbasan', 'EL', 1),
(40, 2, 'Kolonje', 'ER', 1),
(41, 2, 'Fier', 'FR', 1),
(42, 2, 'Gjirokaster', 'GJ', 1),
(43, 2, 'Gramsh', 'GR', 1),
(44, 2, 'Has', 'HA', 1),
(45, 2, 'Kavaje', 'KA', 1),
(46, 2, 'Kurbin', 'KB', 1),
(47, 2, 'Kucove', 'KC', 1),
(48, 2, 'Korce', 'KO', 1),
(49, 2, 'Kruje', 'KR', 1),
(50, 2, 'Kukes', 'KU', 1),
(51, 2, 'Librazhd', 'LB', 1),
(52, 2, 'Lezhe', 'LE', 1),
(53, 2, 'Lushnje', 'LU', 1),
(54, 2, 'Malesi e Madhe', 'MM', 1),
(55, 2, 'Mallakaster', 'MK', 1),
(56, 2, 'Mat', 'MT', 1),
(57, 2, 'Mirdite', 'MR', 1),
(58, 2, 'Peqin', 'PQ', 1),
(59, 2, 'Permet', 'PR', 1),
(60, 2, 'Pogradec', 'PG', 1),
(61, 2, 'Puke', 'PU', 1),
(62, 2, 'Shkoder', 'SH', 1),
(63, 2, 'Skrapar', 'SK', 1),
(64, 2, 'Sarande', 'SR', 1),
(65, 2, 'Tepelene', 'TE', 1),
(66, 2, 'Tropoje', 'TP', 1),
(67, 2, 'Tirane', 'TR', 1),
(68, 2, 'Vlore', 'VL', 1),
(69, 3, 'Adrar', 'ADR', 1),
(70, 3, 'Ain Defla', 'ADE', 1),
(71, 3, 'Ain Temouchent', 'ATE', 1),
(72, 3, 'Alger', 'ALG', 1),
(73, 3, 'Annaba', 'ANN', 1),
(74, 3, 'Batna', 'BAT', 1),
(75, 3, 'Bechar', 'BEC', 1),
(76, 3, 'Bejaia', 'BEJ', 1),
(77, 3, 'Biskra', 'BIS', 1),
(78, 3, 'Blida', 'BLI', 1),
(79, 3, 'Bordj Bou Arreridj', 'BBA', 1),
(80, 3, 'Bouira', 'BOA', 1),
(81, 3, 'Boumerdes', 'BMD', 1),
(82, 3, 'Chlef', 'CHL', 1),
(83, 3, 'Constantine', 'CON', 1),
(84, 3, 'Djelfa', 'DJE', 1),
(85, 3, 'El Bayadh', 'EBA', 1),
(86, 3, 'El Oued', 'EOU', 1),
(87, 3, 'El Tarf', 'ETA', 1),
(88, 3, 'Ghardaia', 'GHA', 1),
(89, 3, 'Guelma', 'GUE', 1),
(90, 3, 'Illizi', 'ILL', 1),
(91, 3, 'Jijel', 'JIJ', 1),
(92, 3, 'Khenchela', 'KHE', 1),
(93, 3, 'Laghouat', 'LAG', 1),
(94, 3, 'Muaskar', 'MUA', 1),
(95, 3, 'Medea', 'MED', 1),
(96, 3, 'Mila', 'MIL', 1),
(97, 3, 'Mostaganem', 'MOS', 1),
(98, 3, 'M''Sila', 'MSI', 1),
(99, 3, 'Naama', 'NAA', 1),
(100, 3, 'Oran', 'ORA', 1),
(101, 3, 'Ouargla', 'OUA', 1),
(102, 3, 'Oum el-Bouaghi', 'OEB', 1),
(103, 3, 'Relizane', 'REL', 1),
(104, 3, 'Saida', 'SAI', 1),
(105, 3, 'Setif', 'SET', 1),
(106, 3, 'Sidi Bel Abbes', 'SBA', 1),
(107, 3, 'Skikda', 'SKI', 1),
(108, 3, 'Souk Ahras', 'SAH', 1),
(109, 3, 'Tamanghasset', 'TAM', 1),
(110, 3, 'Tebessa', 'TEB', 1),
(111, 3, 'Tiaret', 'TIA', 1),
(112, 3, 'Tindouf', 'TIN', 1),
(113, 3, 'Tipaza', 'TIP', 1),
(114, 3, 'Tissemsilt', 'TIS', 1),
(115, 3, 'Tizi Ouzou', 'TOU', 1),
(116, 3, 'Tlemcen', 'TLE', 1),
(117, 4, 'Eastern', 'E', 1),
(118, 4, 'Manu''a', 'M', 1),
(119, 4, 'Rose Island', 'R', 1),
(120, 4, 'Swains Island', 'S', 1),
(121, 4, 'Western', 'W', 1),
(122, 5, 'Andorra la Vella', 'ALV', 1),
(123, 5, 'Canillo', 'CAN', 1),
(124, 5, 'Encamp', 'ENC', 1),
(125, 5, 'Escaldes-Engordany', 'ESE', 1),
(126, 5, 'La Massana', 'LMA', 1),
(127, 5, 'Ordino', 'ORD', 1),
(128, 5, 'Sant Julia de Loria', 'SJL', 1),
(129, 6, 'Bengo', 'BGO', 1),
(130, 6, 'Benguela', 'BGU', 1),
(131, 6, 'Bie', 'BIE', 1),
(132, 6, 'Cabinda', 'CAB', 1),
(133, 6, 'Cuando-Cubango', 'CCU', 1),
(134, 6, 'Cuanza Norte', 'CNO', 1),
(135, 6, 'Cuanza Sul', 'CUS', 1),
(136, 6, 'Cunene', 'CNN', 1),
(137, 6, 'Huambo', 'HUA', 1),
(138, 6, 'Huila', 'HUI', 1),
(139, 6, 'Luanda', 'LUA', 1),
(140, 6, 'Lunda Norte', 'LNO', 1),
(141, 6, 'Lunda Sul', 'LSU', 1),
(142, 6, 'Malange', 'MAL', 1),
(143, 6, 'Moxico', 'MOX', 1),
(144, 6, 'Namibe', 'NAM', 1),
(145, 6, 'Uige', 'UIG', 1),
(146, 6, 'Zaire', 'ZAI', 1),
(147, 9, 'Saint George', 'ASG', 1),
(148, 9, 'Saint John', 'ASJ', 1),
(149, 9, 'Saint Mary', 'ASM', 1),
(150, 9, 'Saint Paul', 'ASL', 1),
(151, 9, 'Saint Peter', 'ASR', 1),
(152, 9, 'Saint Philip', 'ASH', 1),
(153, 9, 'Barbuda', 'BAR', 1),
(154, 9, 'Redonda', 'RED', 1),
(155, 10, 'Antartida e Islas del Atlantico', 'AN', 1),
(156, 10, 'Buenos Aires', 'BA', 1),
(157, 10, 'Catamarca', 'CA', 1),
(158, 10, 'Chaco', 'CH', 1),
(159, 10, 'Chubut', 'CU', 1),
(160, 10, 'Cordoba', 'CO', 1),
(161, 10, 'Corrientes', 'CR', 1),
(162, 10, 'Distrito Federal', 'DF', 1),
(163, 10, 'Entre Rios', 'ER', 1),
(164, 10, 'Formosa', 'FO', 1),
(165, 10, 'Jujuy', 'JU', 1),
(166, 10, 'La Pampa', 'LP', 1),
(167, 10, 'La Rioja', 'LR', 1),
(168, 10, 'Mendoza', 'ME', 1),
(169, 10, 'Misiones', 'MI', 1),
(170, 10, 'Neuquen', 'NE', 1),
(171, 10, 'Rio Negro', 'RN', 1),
(172, 10, 'Salta', 'SA', 1),
(173, 10, 'San Juan', 'SJ', 1),
(174, 10, 'San Luis', 'SL', 1),
(175, 10, 'Santa Cruz', 'SC', 1),
(176, 10, 'Santa Fe', 'SF', 1),
(177, 10, 'Santiago del Estero', 'SD', 1),
(178, 10, 'Tierra del Fuego', 'TF', 1),
(179, 10, 'Tucuman', 'TU', 1),
(180, 11, 'Aragatsotn', 'AGT', 1),
(181, 11, 'Ararat', 'ARR', 1),
(182, 11, 'Armavir', 'ARM', 1),
(183, 11, 'Geghark''unik''', 'GEG', 1),
(184, 11, 'Kotayk''', 'KOT', 1),
(185, 11, 'Lorri', 'LOR', 1),
(186, 11, 'Shirak', 'SHI', 1),
(187, 11, 'Syunik''', 'SYU', 1),
(188, 11, 'Tavush', 'TAV', 1),
(189, 11, 'Vayots'' Dzor', 'VAY', 1),
(190, 11, 'Yerevan', 'YER', 1),
(191, 13, 'Australian Capital Territory', 'ACT', 1),
(192, 13, 'New South Wales', 'NSW', 1),
(193, 13, 'Northern Territory', 'NT', 1),
(194, 13, 'Queensland', 'QLD', 1),
(195, 13, 'South Australia', 'SA', 1),
(196, 13, 'Tasmania', 'TAS', 1),
(197, 13, 'Victoria', 'VIC', 1),
(198, 13, 'Western Australia', 'WA', 1),
(199, 14, 'Burgenland', 'BUR', 1),
(200, 14, 'Kärnten', 'KAR', 1),
(201, 14, 'Nieder&ouml;sterreich', 'NOS', 1),
(202, 14, 'Ober&ouml;sterreich', 'OOS', 1),
(203, 14, 'Salzburg', 'SAL', 1),
(204, 14, 'Steiermark', 'STE', 1),
(205, 14, 'Tirol', 'TIR', 1),
(206, 14, 'Vorarlberg', 'VOR', 1),
(207, 14, 'Wien', 'WIE', 1),
(208, 15, 'Ali Bayramli', 'AB', 1),
(209, 15, 'Abseron', 'ABS', 1),
(210, 15, 'AgcabAdi', 'AGC', 1),
(211, 15, 'Agdam', 'AGM', 1),
(212, 15, 'Agdas', 'AGS', 1),
(213, 15, 'Agstafa', 'AGA', 1),
(214, 15, 'Agsu', 'AGU', 1),
(215, 15, 'Astara', 'AST', 1),
(216, 15, 'Baki', 'BA', 1),
(217, 15, 'BabAk', 'BAB', 1),
(218, 15, 'BalakAn', 'BAL', 1),
(219, 15, 'BArdA', 'BAR', 1),
(220, 15, 'Beylaqan', 'BEY', 1),
(221, 15, 'Bilasuvar', 'BIL', 1),
(222, 15, 'Cabrayil', 'CAB', 1),
(223, 15, 'Calilabab', 'CAL', 1),
(224, 15, 'Culfa', 'CUL', 1),
(225, 15, 'Daskasan', 'DAS', 1),
(226, 15, 'Davaci', 'DAV', 1),
(227, 15, 'Fuzuli', 'FUZ', 1),
(228, 15, 'Ganca', 'GA', 1),
(229, 15, 'Gadabay', 'GAD', 1),
(230, 15, 'Goranboy', 'GOR', 1),
(231, 15, 'Goycay', 'GOY', 1),
(232, 15, 'Haciqabul', 'HAC', 1),
(233, 15, 'Imisli', 'IMI', 1),
(234, 15, 'Ismayilli', 'ISM', 1),
(235, 15, 'Kalbacar', 'KAL', 1),
(236, 15, 'Kurdamir', 'KUR', 1),
(237, 15, 'Lankaran', 'LA', 1),
(238, 15, 'Lacin', 'LAC', 1),
(239, 15, 'Lankaran', 'LAN', 1),
(240, 15, 'Lerik', 'LER', 1),
(241, 15, 'Masalli', 'MAS', 1),
(242, 15, 'Mingacevir', 'MI', 1),
(243, 15, 'Naftalan', 'NA', 1),
(244, 15, 'Neftcala', 'NEF', 1),
(245, 15, 'Oguz', 'OGU', 1),
(246, 15, 'Ordubad', 'ORD', 1),
(247, 15, 'Qabala', 'QAB', 1),
(248, 15, 'Qax', 'QAX', 1),
(249, 15, 'Qazax', 'QAZ', 1),
(250, 15, 'Qobustan', 'QOB', 1),
(251, 15, 'Quba', 'QBA', 1),
(252, 15, 'Qubadli', 'QBI', 1),
(253, 15, 'Qusar', 'QUS', 1),
(254, 15, 'Saki', 'SA', 1),
(255, 15, 'Saatli', 'SAT', 1),
(256, 15, 'Sabirabad', 'SAB', 1),
(257, 15, 'Sadarak', 'SAD', 1),
(258, 15, 'Sahbuz', 'SAH', 1),
(259, 15, 'Saki', 'SAK', 1),
(260, 15, 'Salyan', 'SAL', 1),
(261, 15, 'Sumqayit', 'SM', 1),
(262, 15, 'Samaxi', 'SMI', 1),
(263, 15, 'Samkir', 'SKR', 1),
(264, 15, 'Samux', 'SMX', 1),
(265, 15, 'Sarur', 'SAR', 1),
(266, 15, 'Siyazan', 'SIY', 1),
(267, 15, 'Susa', 'SS', 1),
(268, 15, 'Susa', 'SUS', 1),
(269, 15, 'Tartar', 'TAR', 1),
(270, 15, 'Tovuz', 'TOV', 1),
(271, 15, 'Ucar', 'UCA', 1),
(272, 15, 'Xankandi', 'XA', 1),
(273, 15, 'Xacmaz', 'XAC', 1),
(274, 15, 'Xanlar', 'XAN', 1),
(275, 15, 'Xizi', 'XIZ', 1),
(276, 15, 'Xocali', 'XCI', 1),
(277, 15, 'Xocavand', 'XVD', 1),
(278, 15, 'Yardimli', 'YAR', 1),
(279, 15, 'Yevlax', 'YEV', 1),
(280, 15, 'Zangilan', 'ZAN', 1),
(281, 15, 'Zaqatala', 'ZAQ', 1),
(282, 15, 'Zardab', 'ZAR', 1),
(283, 15, 'Naxcivan', 'NX', 1),
(284, 16, 'Acklins', 'ACK', 1),
(285, 16, 'Berry Islands', 'BER', 1),
(286, 16, 'Bimini', 'BIM', 1),
(287, 16, 'Black Point', 'BLK', 1),
(288, 16, 'Cat Island', 'CAT', 1),
(289, 16, 'Central Abaco', 'CAB', 1),
(290, 16, 'Central Andros', 'CAN', 1),
(291, 16, 'Central Eleuthera', 'CEL', 1),
(292, 16, 'City of Freeport', 'FRE', 1),
(293, 16, 'Crooked Island', 'CRO', 1),
(294, 16, 'East Grand Bahama', 'EGB', 1),
(295, 16, 'Exuma', 'EXU', 1),
(296, 16, 'Grand Cay', 'GRD', 1),
(297, 16, 'Harbour Island', 'HAR', 1),
(298, 16, 'Hope Town', 'HOP', 1),
(299, 16, 'Inagua', 'INA', 1),
(300, 16, 'Long Island', 'LNG', 1),
(301, 16, 'Mangrove Cay', 'MAN', 1),
(302, 16, 'Mayaguana', 'MAY', 1),
(303, 16, 'Moore''s Island', 'MOO', 1),
(304, 16, 'North Abaco', 'NAB', 1),
(305, 16, 'North Andros', 'NAN', 1),
(306, 16, 'North Eleuthera', 'NEL', 1),
(307, 16, 'Ragged Island', 'RAG', 1),
(308, 16, 'Rum Cay', 'RUM', 1),
(309, 16, 'San Salvador', 'SAL', 1),
(310, 16, 'South Abaco', 'SAB', 1),
(311, 16, 'South Andros', 'SAN', 1),
(312, 16, 'South Eleuthera', 'SEL', 1),
(313, 16, 'Spanish Wells', 'SWE', 1),
(314, 16, 'West Grand Bahama', 'WGB', 1),
(315, 17, 'Capital', 'CAP', 1),
(316, 17, 'Central', 'CEN', 1),
(317, 17, 'Muharraq', 'MUH', 1),
(318, 17, 'Northern', 'NOR', 1),
(319, 17, 'Southern', 'SOU', 1),
(320, 18, 'Barisal', 'BAR', 1),
(321, 18, 'Chittagong', 'CHI', 1),
(322, 18, 'Dhaka', 'DHA', 1),
(323, 18, 'Khulna', 'KHU', 1),
(324, 18, 'Rajshahi', 'RAJ', 1),
(325, 18, 'Sylhet', 'SYL', 1),
(326, 19, 'Christ Church', 'CC', 1),
(327, 19, 'Saint Andrew', 'AND', 1),
(328, 19, 'Saint George', 'GEO', 1),
(329, 19, 'Saint James', 'JAM', 1),
(330, 19, 'Saint John', 'JOH', 1),
(331, 19, 'Saint Joseph', 'JOS', 1),
(332, 19, 'Saint Lucy', 'LUC', 1),
(333, 19, 'Saint Michael', 'MIC', 1),
(334, 19, 'Saint Peter', 'PET', 1),
(335, 19, 'Saint Philip', 'PHI', 1),
(336, 19, 'Saint Thomas', 'THO', 1),
(337, 20, 'Brestskaya (Brest)', 'BR', 1),
(338, 20, 'Homyel''skaya (Homyel'')', 'HO', 1),
(339, 20, 'Horad Minsk', 'HM', 1),
(340, 20, 'Hrodzyenskaya (Hrodna)', 'HR', 1),
(341, 20, 'Mahilyowskaya (Mahilyow)', 'MA', 1),
(342, 20, 'Minskaya', 'MI', 1),
(343, 20, 'Vitsyebskaya (Vitsyebsk)', 'VI', 1),
(344, 21, 'Antwerpen', 'VAN', 1),
(345, 21, 'Brabant Wallon', 'WBR', 1),
(346, 21, 'Hainaut', 'WHT', 1),
(347, 21, 'Liège', 'WLG', 1),
(348, 21, 'Limburg', 'VLI', 1),
(349, 21, 'Luxembourg', 'WLX', 1),
(350, 21, 'Namur', 'WNA', 1),
(351, 21, 'Oost-Vlaanderen', 'VOV', 1),
(352, 21, 'Vlaams Brabant', 'VBR', 1),
(353, 21, 'West-Vlaanderen', 'VWV', 1),
(354, 22, 'Belize', 'BZ', 1),
(355, 22, 'Cayo', 'CY', 1),
(356, 22, 'Corozal', 'CR', 1),
(357, 22, 'Orange Walk', 'OW', 1),
(358, 22, 'Stann Creek', 'SC', 1),
(359, 22, 'Toledo', 'TO', 1),
(360, 23, 'Alibori', 'AL', 1),
(361, 23, 'Atakora', 'AK', 1),
(362, 23, 'Atlantique', 'AQ', 1),
(363, 23, 'Borgou', 'BO', 1),
(364, 23, 'Collines', 'CO', 1),
(365, 23, 'Donga', 'DO', 1),
(366, 23, 'Kouffo', 'KO', 1),
(367, 23, 'Littoral', 'LI', 1),
(368, 23, 'Mono', 'MO', 1),
(369, 23, 'Oueme', 'OU', 1),
(370, 23, 'Plateau', 'PL', 1),
(371, 23, 'Zou', 'ZO', 1),
(372, 24, 'Devonshire', 'DS', 1),
(373, 24, 'Hamilton City', 'HC', 1),
(374, 24, 'Hamilton', 'HA', 1),
(375, 24, 'Paget', 'PG', 1),
(376, 24, 'Pembroke', 'PB', 1),
(377, 24, 'Saint George City', 'GC', 1),
(378, 24, 'Saint George''s', 'SG', 1),
(379, 24, 'Sandys', 'SA', 1),
(380, 24, 'Smith''s', 'SM', 1),
(381, 24, 'Southampton', 'SH', 1),
(382, 24, 'Warwick', 'WA', 1),
(383, 25, 'Bumthang', 'BUM', 1),
(384, 25, 'Chukha', 'CHU', 1),
(385, 25, 'Dagana', 'DAG', 1),
(386, 25, 'Gasa', 'GAS', 1),
(387, 25, 'Haa', 'HAA', 1),
(388, 25, 'Lhuntse', 'LHU', 1),
(389, 25, 'Mongar', 'MON', 1),
(390, 25, 'Paro', 'PAR', 1),
(391, 25, 'Pemagatshel', 'PEM', 1),
(392, 25, 'Punakha', 'PUN', 1),
(393, 25, 'Samdrup Jongkhar', 'SJO', 1),
(394, 25, 'Samtse', 'SAT', 1),
(395, 25, 'Sarpang', 'SAR', 1),
(396, 25, 'Thimphu', 'THI', 1),
(397, 25, 'Trashigang', 'TRG', 1),
(398, 25, 'Trashiyangste', 'TRY', 1),
(399, 25, 'Trongsa', 'TRO', 1),
(400, 25, 'Tsirang', 'TSI', 1),
(401, 25, 'Wangdue Phodrang', 'WPH', 1),
(402, 25, 'Zhemgang', 'ZHE', 1),
(403, 26, 'Beni', 'BEN', 1),
(404, 26, 'Chuquisaca', 'CHU', 1),
(405, 26, 'Cochabamba', 'COC', 1),
(406, 26, 'La Paz', 'LPZ', 1),
(407, 26, 'Oruro', 'ORU', 1),
(408, 26, 'Pando', 'PAN', 1),
(409, 26, 'Potosi', 'POT', 1),
(410, 26, 'Santa Cruz', 'SCZ', 1),
(411, 26, 'Tarija', 'TAR', 1),
(412, 27, 'Brcko district', 'BRO', 1),
(413, 27, 'Unsko-Sanski Kanton', 'FUS', 1),
(414, 27, 'Posavski Kanton', 'FPO', 1),
(415, 27, 'Tuzlanski Kanton', 'FTU', 1),
(416, 27, 'Zenicko-Dobojski Kanton', 'FZE', 1),
(417, 27, 'Bosanskopodrinjski Kanton', 'FBP', 1),
(418, 27, 'Srednjebosanski Kanton', 'FSB', 1),
(419, 27, 'Hercegovacko-neretvanski Kanton', 'FHN', 1),
(420, 27, 'Zapadnohercegovacka Zupanija', 'FZH', 1),
(421, 27, 'Kanton Sarajevo', 'FSA', 1),
(422, 27, 'Zapadnobosanska', 'FZA', 1),
(423, 27, 'Banja Luka', 'SBL', 1),
(424, 27, 'Doboj', 'SDO', 1),
(425, 27, 'Bijeljina', 'SBI', 1),
(426, 27, 'Vlasenica', 'SVL', 1),
(427, 27, 'Sarajevo-Romanija or Sokolac', 'SSR', 1),
(428, 27, 'Foca', 'SFO', 1),
(429, 27, 'Trebinje', 'STR', 1),
(430, 28, 'Central', 'CE', 1),
(431, 28, 'Ghanzi', 'GH', 1),
(432, 28, 'Kgalagadi', 'KD', 1),
(433, 28, 'Kgatleng', 'KT', 1),
(434, 28, 'Kweneng', 'KW', 1),
(435, 28, 'Ngamiland', 'NG', 1),
(436, 28, 'North East', 'NE', 1),
(437, 28, 'North West', 'NW', 1),
(438, 28, 'South East', 'SE', 1),
(439, 28, 'Southern', 'SO', 1),
(440, 30, 'Acre', 'AC', 1),
(441, 30, 'Alagoas', 'AL', 1),
(442, 30, 'Amapá', 'AP', 1),
(443, 30, 'Amazonas', 'AM', 1),
(444, 30, 'Bahia', 'BA', 1),
(445, 30, 'Ceará', 'CE', 1),
(446, 30, 'Distrito Federal', 'DF', 1),
(447, 30, 'Espírito Santo', 'ES', 1),
(448, 30, 'Goiás', 'GO', 1),
(449, 30, 'Maranhão', 'MA', 1),
(450, 30, 'Mato Grosso', 'MT', 1),
(451, 30, 'Mato Grosso do Sul', 'MS', 1),
(452, 30, 'Minas Gerais', 'MG', 1),
(453, 30, 'Pará', 'PA', 1),
(454, 30, 'Paraíba', 'PB', 1),
(455, 30, 'Paraná', 'PR', 1),
(456, 30, 'Pernambuco', 'PE', 1),
(457, 30, 'Piauí', 'PI', 1),
(458, 30, 'Rio de Janeiro', 'RJ', 1),
(459, 30, 'Rio Grande do Norte', 'RN', 1),
(460, 30, 'Rio Grande do Sul', 'RS', 1),
(461, 30, 'Rondônia', 'RO', 1),
(462, 30, 'Roraima', 'RR', 1),
(463, 30, 'Santa Catarina', 'SC', 1),
(464, 30, 'São Paulo', 'SP', 1),
(465, 30, 'Sergipe', 'SE', 1),
(466, 30, 'Tocantins', 'TO', 1),
(467, 31, 'Peros Banhos', 'PB', 1),
(468, 31, 'Salomon Islands', 'SI', 1),
(469, 31, 'Nelsons Island', 'NI', 1),
(470, 31, 'Three Brothers', 'TB', 1),
(471, 31, 'Eagle Islands', 'EA', 1),
(472, 31, 'Danger Island', 'DI', 1),
(473, 31, 'Egmont Islands', 'EG', 1),
(474, 31, 'Diego Garcia', 'DG', 1),
(475, 32, 'Belait', 'BEL', 1),
(476, 32, 'Brunei and Muara', 'BRM', 1),
(477, 32, 'Temburong', 'TEM', 1),
(478, 32, 'Tutong', 'TUT', 1),
(479, 33, 'Blagoevgrad', '', 1),
(480, 33, 'Burgas', '', 1),
(481, 33, 'Dobrich', '', 1),
(482, 33, 'Gabrovo', '', 1),
(483, 33, 'Haskovo', '', 1),
(484, 33, 'Kardjali', '', 1),
(485, 33, 'Kyustendil', '', 1),
(486, 33, 'Lovech', '', 1),
(487, 33, 'Montana', '', 1),
(488, 33, 'Pazardjik', '', 1),
(489, 33, 'Pernik', '', 1),
(490, 33, 'Pleven', '', 1),
(491, 33, 'Plovdiv', '', 1),
(492, 33, 'Razgrad', '', 1),
(493, 33, 'Shumen', '', 1),
(494, 33, 'Silistra', '', 1),
(495, 33, 'Sliven', '', 1),
(496, 33, 'Smolyan', '', 1),
(497, 33, 'Sofia', '', 1),
(498, 33, 'Sofia - town', '', 1),
(499, 33, 'Stara Zagora', '', 1),
(500, 33, 'Targovishte', '', 1),
(501, 33, 'Varna', '', 1),
(502, 33, 'Veliko Tarnovo', '', 1),
(503, 33, 'Vidin', '', 1),
(504, 33, 'Vratza', '', 1),
(505, 33, 'Yambol', '', 1),
(506, 34, 'Bale', 'BAL', 1),
(507, 34, 'Bam', 'BAM', 1),
(508, 34, 'Banwa', 'BAN', 1),
(509, 34, 'Bazega', 'BAZ', 1),
(510, 34, 'Bougouriba', 'BOR', 1),
(511, 34, 'Boulgou', 'BLG', 1),
(512, 34, 'Boulkiemde', 'BOK', 1),
(513, 34, 'Comoe', 'COM', 1),
(514, 34, 'Ganzourgou', 'GAN', 1),
(515, 34, 'Gnagna', 'GNA', 1),
(516, 34, 'Gourma', 'GOU', 1),
(517, 34, 'Houet', 'HOU', 1),
(518, 34, 'Ioba', 'IOA', 1),
(519, 34, 'Kadiogo', 'KAD', 1),
(520, 34, 'Kenedougou', 'KEN', 1),
(521, 34, 'Komondjari', 'KOD', 1),
(522, 34, 'Kompienga', 'KOP', 1),
(523, 34, 'Kossi', 'KOS', 1),
(524, 34, 'Koulpelogo', 'KOL', 1),
(525, 34, 'Kouritenga', 'KOT', 1),
(526, 34, 'Kourweogo', 'KOW', 1),
(527, 34, 'Leraba', 'LER', 1),
(528, 34, 'Loroum', 'LOR', 1),
(529, 34, 'Mouhoun', 'MOU', 1),
(530, 34, 'Nahouri', 'NAH', 1),
(531, 34, 'Namentenga', 'NAM', 1),
(532, 34, 'Nayala', 'NAY', 1),
(533, 34, 'Noumbiel', 'NOU', 1),
(534, 34, 'Oubritenga', 'OUB', 1),
(535, 34, 'Oudalan', 'OUD', 1),
(536, 34, 'Passore', 'PAS', 1),
(537, 34, 'Poni', 'PON', 1),
(538, 34, 'Sanguie', 'SAG', 1),
(539, 34, 'Sanmatenga', 'SAM', 1),
(540, 34, 'Seno', 'SEN', 1),
(541, 34, 'Sissili', 'SIS', 1),
(542, 34, 'Soum', 'SOM', 1),
(543, 34, 'Sourou', 'SOR', 1),
(544, 34, 'Tapoa', 'TAP', 1),
(545, 34, 'Tuy', 'TUY', 1),
(546, 34, 'Yagha', 'YAG', 1),
(547, 34, 'Yatenga', 'YAT', 1),
(548, 34, 'Ziro', 'ZIR', 1),
(549, 34, 'Zondoma', 'ZOD', 1),
(550, 34, 'Zoundweogo', 'ZOW', 1),
(551, 35, 'Bubanza', 'BB', 1),
(552, 35, 'Bujumbura', 'BJ', 1),
(553, 35, 'Bururi', 'BR', 1),
(554, 35, 'Cankuzo', 'CA', 1),
(555, 35, 'Cibitoke', 'CI', 1),
(556, 35, 'Gitega', 'GI', 1),
(557, 35, 'Karuzi', 'KR', 1),
(558, 35, 'Kayanza', 'KY', 1),
(559, 35, 'Kirundo', 'KI', 1),
(560, 35, 'Makamba', 'MA', 1),
(561, 35, 'Muramvya', 'MU', 1),
(562, 35, 'Muyinga', 'MY', 1),
(563, 35, 'Mwaro', 'MW', 1),
(564, 35, 'Ngozi', 'NG', 1),
(565, 35, 'Rutana', 'RT', 1),
(566, 35, 'Ruyigi', 'RY', 1),
(567, 36, 'Phnom Penh', 'PP', 1),
(568, 36, 'Preah Seihanu (Kompong Som or Sihanoukville)', 'PS', 1),
(569, 36, 'Pailin', 'PA', 1),
(570, 36, 'Keb', 'KB', 1),
(571, 36, 'Banteay Meanchey', 'BM', 1),
(572, 36, 'Battambang', 'BA', 1),
(573, 36, 'Kampong Cham', 'KM', 1),
(574, 36, 'Kampong Chhnang', 'KN', 1),
(575, 36, 'Kampong Speu', 'KU', 1),
(576, 36, 'Kampong Som', 'KO', 1),
(577, 36, 'Kampong Thom', 'KT', 1),
(578, 36, 'Kampot', 'KP', 1),
(579, 36, 'Kandal', 'KL', 1),
(580, 36, 'Kaoh Kong', 'KK', 1),
(581, 36, 'Kratie', 'KR', 1),
(582, 36, 'Mondul Kiri', 'MK', 1),
(583, 36, 'Oddar Meancheay', 'OM', 1),
(584, 36, 'Pursat', 'PU', 1),
(585, 36, 'Preah Vihear', 'PR', 1),
(586, 36, 'Prey Veng', 'PG', 1),
(587, 36, 'Ratanak Kiri', 'RK', 1),
(588, 36, 'Siemreap', 'SI', 1),
(589, 36, 'Stung Treng', 'ST', 1),
(590, 36, 'Svay Rieng', 'SR', 1),
(591, 36, 'Takeo', 'TK', 1),
(592, 37, 'Adamawa (Adamaoua)', 'ADA', 1),
(593, 37, 'Centre', 'CEN', 1),
(594, 37, 'East (Est)', 'EST', 1),
(595, 37, 'Extreme North (Extreme-Nord)', 'EXN', 1),
(596, 37, 'Littoral', 'LIT', 1),
(597, 37, 'North (Nord)', 'NOR', 1),
(598, 37, 'Northwest (Nord-Ouest)', 'NOT', 1),
(599, 37, 'West (Ouest)', 'OUE', 1),
(600, 37, 'South (Sud)', 'SUD', 1),
(601, 37, 'Southwest (Sud-Ouest).', 'SOU', 1),
(602, 38, 'Alberta', 'AB', 1),
(603, 38, 'British Columbia', 'BC', 1),
(604, 38, 'Manitoba', 'MB', 1),
(605, 38, 'New Brunswick', 'NB', 1),
(606, 38, 'Newfoundland and Labrador', 'NL', 1),
(607, 38, 'Northwest Territories', 'NT', 1),
(608, 38, 'Nova Scotia', 'NS', 1),
(609, 38, 'Nunavut', 'NU', 1),
(610, 38, 'Ontario', 'ON', 1),
(611, 38, 'Prince Edward Island', 'PE', 1),
(612, 38, 'Qu&eacute;bec', 'QC', 1),
(613, 38, 'Saskatchewan', 'SK', 1),
(614, 38, 'Yukon Territory', 'YT', 1),
(615, 39, 'Boa Vista', 'BV', 1),
(616, 39, 'Brava', 'BR', 1),
(617, 39, 'Calheta de Sao Miguel', 'CS', 1),
(618, 39, 'Maio', 'MA', 1),
(619, 39, 'Mosteiros', 'MO', 1),
(620, 39, 'Paul', 'PA', 1),
(621, 39, 'Porto Novo', 'PN', 1),
(622, 39, 'Praia', 'PR', 1),
(623, 39, 'Ribeira Grande', 'RG', 1),
(624, 39, 'Sal', 'SL', 1),
(625, 39, 'Santa Catarina', 'CA', 1),
(626, 39, 'Santa Cruz', 'CR', 1),
(627, 39, 'Sao Domingos', 'SD', 1),
(628, 39, 'Sao Filipe', 'SF', 1),
(629, 39, 'Sao Nicolau', 'SN', 1),
(630, 39, 'Sao Vicente', 'SV', 1),
(631, 39, 'Tarrafal', 'TA', 1),
(632, 40, 'Creek', 'CR', 1),
(633, 40, 'Eastern', 'EA', 1),
(634, 40, 'Midland', 'ML', 1),
(635, 40, 'South Town', 'ST', 1),
(636, 40, 'Spot Bay', 'SP', 1),
(637, 40, 'Stake Bay', 'SK', 1),
(638, 40, 'West End', 'WD', 1),
(639, 40, 'Western', 'WN', 1),
(640, 41, 'Bamingui-Bangoran', 'BBA', 1),
(641, 41, 'Basse-Kotto', 'BKO', 1),
(642, 41, 'Haute-Kotto', 'HKO', 1),
(643, 41, 'Haut-Mbomou', 'HMB', 1),
(644, 41, 'Kemo', 'KEM', 1),
(645, 41, 'Lobaye', 'LOB', 1),
(646, 41, 'Mambere-KadeÔ', 'MKD', 1),
(647, 41, 'Mbomou', 'MBO', 1),
(648, 41, 'Nana-Mambere', 'NMM', 1),
(649, 41, 'Ombella-M''Poko', 'OMP', 1),
(650, 41, 'Ouaka', 'OUK', 1),
(651, 41, 'Ouham', 'OUH', 1),
(652, 41, 'Ouham-Pende', 'OPE', 1),
(653, 41, 'Vakaga', 'VAK', 1),
(654, 41, 'Nana-Grebizi', 'NGR', 1),
(655, 41, 'Sangha-Mbaere', 'SMB', 1),
(656, 41, 'Bangui', 'BAN', 1),
(657, 42, 'Batha', 'BA', 1),
(658, 42, 'Biltine', 'BI', 1),
(659, 42, 'Borkou-Ennedi-Tibesti', 'BE', 1),
(660, 42, 'Chari-Baguirmi', 'CB', 1),
(661, 42, 'Guera', 'GU', 1),
(662, 42, 'Kanem', 'KA', 1),
(663, 42, 'Lac', 'LA', 1),
(664, 42, 'Logone Occidental', 'LC', 1),
(665, 42, 'Logone Oriental', 'LR', 1),
(666, 42, 'Mayo-Kebbi', 'MK', 1),
(667, 42, 'Moyen-Chari', 'MC', 1),
(668, 42, 'Ouaddai', 'OU', 1),
(669, 42, 'Salamat', 'SA', 1),
(670, 42, 'Tandjile', 'TA', 1),
(671, 43, 'Aisen del General Carlos Ibanez', 'AI', 1),
(672, 43, 'Antofagasta', 'AN', 1),
(673, 43, 'Araucania', 'AR', 1),
(674, 43, 'Atacama', 'AT', 1),
(675, 43, 'Bio-Bio', 'BI', 1),
(676, 43, 'Coquimbo', 'CO', 1),
(677, 43, 'Libertador General Bernardo O''Hi', 'LI', 1),
(678, 43, 'Los Lagos', 'LL', 1),
(679, 43, 'Magallanes y de la Antartica Chi', 'MA', 1),
(680, 43, 'Maule', 'ML', 1),
(681, 43, 'Region Metropolitana', 'RM', 1),
(682, 43, 'Tarapaca', 'TA', 1),
(683, 43, 'Valparaiso', 'VS', 1),
(684, 44, 'Anhui', 'AN', 1),
(685, 44, 'Beijing', 'BE', 1),
(686, 44, 'Chongqing', 'CH', 1),
(687, 44, 'Fujian', 'FU', 1),
(688, 44, 'Gansu', 'GA', 1),
(689, 44, 'Guangdong', 'GU', 1),
(690, 44, 'Guangxi', 'GX', 1),
(691, 44, 'Guizhou', 'GZ', 1),
(692, 44, 'Hainan', 'HA', 1),
(693, 44, 'Hebei', 'HB', 1),
(694, 44, 'Heilongjiang', 'HL', 1),
(695, 44, 'Henan', 'HE', 1),
(696, 44, 'Hong Kong', 'HK', 1),
(697, 44, 'Hubei', 'HU', 1),
(698, 44, 'Hunan', 'HN', 1),
(699, 44, 'Inner Mongolia', 'IM', 1),
(700, 44, 'Jiangsu', 'JI', 1),
(701, 44, 'Jiangxi', 'JX', 1),
(702, 44, 'Jilin', 'JL', 1),
(703, 44, 'Liaoning', 'LI', 1),
(704, 44, 'Macau', 'MA', 1),
(705, 44, 'Ningxia', 'NI', 1),
(706, 44, 'Shaanxi', 'SH', 1),
(707, 44, 'Shandong', 'SA', 1),
(708, 44, 'Shanghai', 'SG', 1),
(709, 44, 'Shanxi', 'SX', 1),
(710, 44, 'Sichuan', 'SI', 1),
(711, 44, 'Tianjin', 'TI', 1),
(712, 44, 'Xinjiang', 'XI', 1),
(713, 44, 'Yunnan', 'YU', 1),
(714, 44, 'Zhejiang', 'ZH', 1),
(715, 46, 'Direction Island', 'D', 1),
(716, 46, 'Home Island', 'H', 1),
(717, 46, 'Horsburgh Island', 'O', 1),
(718, 46, 'South Island', 'S', 1),
(719, 46, 'West Island', 'W', 1),
(720, 47, 'Amazonas', 'AMZ', 1),
(721, 47, 'Antioquia', 'ANT', 1),
(722, 47, 'Arauca', 'ARA', 1),
(723, 47, 'Atlantico', 'ATL', 1),
(724, 47, 'Bogota D.C.', 'BDC', 1),
(725, 47, 'Bolivar', 'BOL', 1),
(726, 47, 'Boyaca', 'BOY', 1),
(727, 47, 'Caldas', 'CAL', 1),
(728, 47, 'Caqueta', 'CAQ', 1),
(729, 47, 'Casanare', 'CAS', 1),
(730, 47, 'Cauca', 'CAU', 1),
(731, 47, 'Cesar', 'CES', 1),
(732, 47, 'Choco', 'CHO', 1),
(733, 47, 'Cordoba', 'COR', 1),
(734, 47, 'Cundinamarca', 'CAM', 1),
(735, 47, 'Guainia', 'GNA', 1),
(736, 47, 'Guajira', 'GJR', 1),
(737, 47, 'Guaviare', 'GVR', 1),
(738, 47, 'Huila', 'HUI', 1),
(739, 47, 'Magdalena', 'MAG', 1),
(740, 47, 'Meta', 'MET', 1),
(741, 47, 'Narino', 'NAR', 1),
(742, 47, 'Norte de Santander', 'NDS', 1),
(743, 47, 'Putumayo', 'PUT', 1),
(744, 47, 'Quindio', 'QUI', 1),
(745, 47, 'Risaralda', 'RIS', 1),
(746, 47, 'San Andres y Providencia', 'SAP', 1),
(747, 47, 'Santander', 'SAN', 1),
(748, 47, 'Sucre', 'SUC', 1),
(749, 47, 'Tolima', 'TOL', 1),
(750, 47, 'Valle del Cauca', 'VDC', 1),
(751, 47, 'Vaupes', 'VAU', 1),
(752, 47, 'Vichada', 'VIC', 1),
(753, 48, 'Grande Comore', 'G', 1),
(754, 48, 'Anjouan', 'A', 1),
(755, 48, 'Moheli', 'M', 1),
(756, 49, 'Bouenza', 'BO', 1),
(757, 49, 'Brazzaville', 'BR', 1),
(758, 49, 'Cuvette', 'CU', 1),
(759, 49, 'Cuvette-Ouest', 'CO', 1),
(760, 49, 'Kouilou', 'KO', 1),
(761, 49, 'Lekoumou', 'LE', 1),
(762, 49, 'Likouala', 'LI', 1),
(763, 49, 'Niari', 'NI', 1),
(764, 49, 'Plateaux', 'PL', 1),
(765, 49, 'Pool', 'PO', 1),
(766, 49, 'Sangha', 'SA', 1),
(767, 50, 'Pukapuka', 'PU', 1),
(768, 50, 'Rakahanga', 'RK', 1),
(769, 50, 'Manihiki', 'MK', 1),
(770, 50, 'Penrhyn', 'PE', 1),
(771, 50, 'Nassau Island', 'NI', 1),
(772, 50, 'Surwarrow', 'SU', 1),
(773, 50, 'Palmerston', 'PA', 1),
(774, 50, 'Aitutaki', 'AI', 1),
(775, 50, 'Manuae', 'MA', 1),
(776, 50, 'Takutea', 'TA', 1),
(777, 50, 'Mitiaro', 'MT', 1),
(778, 50, 'Atiu', 'AT', 1),
(779, 50, 'Mauke', 'MU', 1),
(780, 50, 'Rarotonga', 'RR', 1),
(781, 50, 'Mangaia', 'MG', 1),
(782, 51, 'Alajuela', 'AL', 1),
(783, 51, 'Cartago', 'CA', 1),
(784, 51, 'Guanacaste', 'GU', 1),
(785, 51, 'Heredia', 'HE', 1),
(786, 51, 'Limon', 'LI', 1),
(787, 51, 'Puntarenas', 'PU', 1),
(788, 51, 'San Jose', 'SJ', 1),
(789, 52, 'Abengourou', 'ABE', 1),
(790, 52, 'Abidjan', 'ABI', 1),
(791, 52, 'Aboisso', 'ABO', 1),
(792, 52, 'Adiake', 'ADI', 1),
(793, 52, 'Adzope', 'ADZ', 1),
(794, 52, 'Agboville', 'AGB', 1),
(795, 52, 'Agnibilekrou', 'AGN', 1),
(796, 52, 'Alepe', 'ALE', 1),
(797, 52, 'Bocanda', 'BOC', 1),
(798, 52, 'Bangolo', 'BAN', 1),
(799, 52, 'Beoumi', 'BEO', 1),
(800, 52, 'Biankouma', 'BIA', 1),
(801, 52, 'Bondoukou', 'BDK', 1),
(802, 52, 'Bongouanou', 'BGN', 1),
(803, 52, 'Bouafle', 'BFL', 1),
(804, 52, 'Bouake', 'BKE', 1),
(805, 52, 'Bouna', 'BNA', 1),
(806, 52, 'Boundiali', 'BDL', 1),
(807, 52, 'Dabakala', 'DKL', 1),
(808, 52, 'Dabou', 'DBU', 1),
(809, 52, 'Daloa', 'DAL', 1),
(810, 52, 'Danane', 'DAN', 1),
(811, 52, 'Daoukro', 'DAO', 1),
(812, 52, 'Dimbokro', 'DIM', 1),
(813, 52, 'Divo', 'DIV', 1),
(814, 52, 'Duekoue', 'DUE', 1),
(815, 52, 'Ferkessedougou', 'FER', 1),
(816, 52, 'Gagnoa', 'GAG', 1),
(817, 52, 'Grand-Bassam', 'GBA', 1),
(818, 52, 'Grand-Lahou', 'GLA', 1),
(819, 52, 'Guiglo', 'GUI', 1),
(820, 52, 'Issia', 'ISS', 1),
(821, 52, 'Jacqueville', 'JAC', 1),
(822, 52, 'Katiola', 'KAT', 1),
(823, 52, 'Korhogo', 'KOR', 1),
(824, 52, 'Lakota', 'LAK', 1),
(825, 52, 'Man', 'MAN', 1),
(826, 52, 'Mankono', 'MKN', 1),
(827, 52, 'Mbahiakro', 'MBA', 1),
(828, 52, 'Odienne', 'ODI', 1),
(829, 52, 'Oume', 'OUM', 1),
(830, 52, 'Sakassou', 'SAK', 1),
(831, 52, 'San-Pedro', 'SPE', 1),
(832, 52, 'Sassandra', 'SAS', 1),
(833, 52, 'Seguela', 'SEG', 1),
(834, 52, 'Sinfra', 'SIN', 1),
(835, 52, 'Soubre', 'SOU', 1),
(836, 52, 'Tabou', 'TAB', 1),
(837, 52, 'Tanda', 'TAN', 1),
(838, 52, 'Tiebissou', 'TIE', 1),
(839, 52, 'Tingrela', 'TIN', 1),
(840, 52, 'Tiassale', 'TIA', 1),
(841, 52, 'Touba', 'TBA', 1),
(842, 52, 'Toulepleu', 'TLP', 1),
(843, 52, 'Toumodi', 'TMD', 1),
(844, 52, 'Vavoua', 'VAV', 1),
(845, 52, 'Yamoussoukro', 'YAM', 1),
(846, 52, 'Zuenoula', 'ZUE', 1),
(847, 53, 'Bjelovar-Bilogora', 'BB', 1),
(848, 53, 'City of Zagreb', 'CZ', 1),
(849, 53, 'Dubrovnik-Neretva', 'DN', 1),
(850, 53, 'Istra', 'IS', 1),
(851, 53, 'Karlovac', 'KA', 1),
(852, 53, 'Koprivnica-Krizevci', 'KK', 1),
(853, 53, 'Krapina-Zagorje', 'KZ', 1),
(854, 53, 'Lika-Senj', 'LS', 1),
(855, 53, 'Medimurje', 'ME', 1),
(856, 53, 'Osijek-Baranja', 'OB', 1),
(857, 53, 'Pozega-Slavonia', 'PS', 1),
(858, 53, 'Primorje-Gorski Kotar', 'PG', 1),
(859, 53, 'Sibenik', 'SI', 1),
(860, 53, 'Sisak-Moslavina', 'SM', 1),
(861, 53, 'Slavonski Brod-Posavina', 'SB', 1),
(862, 53, 'Split-Dalmatia', 'SD', 1),
(863, 53, 'Varazdin', 'VA', 1),
(864, 53, 'Virovitica-Podravina', 'VP', 1),
(865, 53, 'Vukovar-Srijem', 'VS', 1),
(866, 53, 'Zadar-Knin', 'ZK', 1),
(867, 53, 'Zagreb', 'ZA', 1),
(868, 54, 'Camaguey', 'CA', 1),
(869, 54, 'Ciego de Avila', 'CD', 1),
(870, 54, 'Cienfuegos', 'CI', 1),
(871, 54, 'Ciudad de La Habana', 'CH', 1),
(872, 54, 'Granma', 'GR', 1),
(873, 54, 'Guantanamo', 'GU', 1),
(874, 54, 'Holguin', 'HO', 1),
(875, 54, 'Isla de la Juventud', 'IJ', 1),
(876, 54, 'La Habana', 'LH', 1),
(877, 54, 'Las Tunas', 'LT', 1),
(878, 54, 'Matanzas', 'MA', 1),
(879, 54, 'Pinar del Rio', 'PR', 1),
(880, 54, 'Sancti Spiritus', 'SS', 1),
(881, 54, 'Santiago de Cuba', 'SC', 1),
(882, 54, 'Villa Clara', 'VC', 1),
(883, 55, 'Famagusta', 'F', 1),
(884, 55, 'Kyrenia', 'K', 1),
(885, 55, 'Larnaca', 'A', 1),
(886, 55, 'Limassol', 'I', 1),
(887, 55, 'Nicosia', 'N', 1),
(888, 55, 'Paphos', 'P', 1),
(889, 56, 'Ústecký', 'U', 1),
(890, 56, 'Jihočeský', 'C', 1),
(891, 56, 'Jihomoravský', 'B', 1),
(892, 56, 'Karlovarský', 'K', 1),
(893, 56, 'Královehradecký', 'H', 1),
(894, 56, 'Liberecký', 'L', 1),
(895, 56, 'Moravskoslezský', 'T', 1),
(896, 56, 'Olomoucký', 'M', 1),
(897, 56, 'Pardubický', 'E', 1),
(898, 56, 'Plzeňský', 'P', 1),
(899, 56, 'Praha', 'A', 1),
(900, 56, 'Středočeský', 'S', 1),
(901, 56, 'Vysočina', 'J', 1),
(902, 56, 'Zlínský', 'Z', 1),
(903, 57, 'Arhus', 'AR', 1),
(904, 57, 'Bornholm', 'BH', 1),
(905, 57, 'Copenhagen', 'CO', 1),
(906, 57, 'Faroe Islands', 'FO', 1),
(907, 57, 'Frederiksborg', 'FR', 1),
(908, 57, 'Fyn', 'FY', 1),
(909, 57, 'Kobenhavn', 'KO', 1),
(910, 57, 'Nordjylland', 'NO', 1),
(911, 57, 'Ribe', 'RI', 1),
(912, 57, 'Ringkobing', 'RK', 1),
(913, 57, 'Roskilde', 'RO', 1),
(914, 57, 'Sonderjylland', 'SO', 1),
(915, 57, 'Storstrom', 'ST', 1),
(916, 57, 'Vejle', 'VK', 1),
(917, 57, 'Vestj&aelig;lland', 'VJ', 1),
(918, 57, 'Viborg', 'VB', 1),
(919, 58, '''Ali Sabih', 'S', 1),
(920, 58, 'Dikhil', 'K', 1),
(921, 58, 'Djibouti', 'J', 1),
(922, 58, 'Obock', 'O', 1),
(923, 58, 'Tadjoura', 'T', 1),
(924, 59, 'Saint Andrew Parish', 'AND', 1),
(925, 59, 'Saint David Parish', 'DAV', 1),
(926, 59, 'Saint George Parish', 'GEO', 1),
(927, 59, 'Saint John Parish', 'JOH', 1),
(928, 59, 'Saint Joseph Parish', 'JOS', 1),
(929, 59, 'Saint Luke Parish', 'LUK', 1),
(930, 59, 'Saint Mark Parish', 'MAR', 1),
(931, 59, 'Saint Patrick Parish', 'PAT', 1),
(932, 59, 'Saint Paul Parish', 'PAU', 1),
(933, 59, 'Saint Peter Parish', 'PET', 1),
(934, 60, 'Distrito Nacional', 'DN', 1),
(935, 60, 'Azua', 'AZ', 1),
(936, 60, 'Baoruco', 'BC', 1),
(937, 60, 'Barahona', 'BH', 1),
(938, 60, 'Dajabon', 'DJ', 1),
(939, 60, 'Duarte', 'DU', 1),
(940, 60, 'Elias Pina', 'EL', 1),
(941, 60, 'El Seybo', 'SY', 1),
(942, 60, 'Espaillat', 'ET', 1),
(943, 60, 'Hato Mayor', 'HM', 1),
(944, 60, 'Independencia', 'IN', 1),
(945, 60, 'La Altagracia', 'AL', 1),
(946, 60, 'La Romana', 'RO', 1),
(947, 60, 'La Vega', 'VE', 1),
(948, 60, 'Maria Trinidad Sanchez', 'MT', 1),
(949, 60, 'Monsenor Nouel', 'MN', 1),
(950, 60, 'Monte Cristi', 'MC', 1),
(951, 60, 'Monte Plata', 'MP', 1),
(952, 60, 'Pedernales', 'PD', 1),
(953, 60, 'Peravia (Bani)', 'PR', 1),
(954, 60, 'Puerto Plata', 'PP', 1),
(955, 60, 'Salcedo', 'SL', 1),
(956, 60, 'Samana', 'SM', 1),
(957, 60, 'Sanchez Ramirez', 'SH', 1),
(958, 60, 'San Cristobal', 'SC', 1),
(959, 60, 'San Jose de Ocoa', 'JO', 1),
(960, 60, 'San Juan', 'SJ', 1),
(961, 60, 'San Pedro de Macoris', 'PM', 1),
(962, 60, 'Santiago', 'SA', 1),
(963, 60, 'Santiago Rodriguez', 'ST', 1),
(964, 60, 'Santo Domingo', 'SD', 1),
(965, 60, 'Valverde', 'VA', 1),
(966, 61, 'Aileu', 'AL', 1),
(967, 61, 'Ainaro', 'AN', 1),
(968, 61, 'Baucau', 'BA', 1),
(969, 61, 'Bobonaro', 'BO', 1),
(970, 61, 'Cova Lima', 'CO', 1),
(971, 61, 'Dili', 'DI', 1),
(972, 61, 'Ermera', 'ER', 1),
(973, 61, 'Lautem', 'LA', 1),
(974, 61, 'Liquica', 'LI', 1),
(975, 61, 'Manatuto', 'MT', 1),
(976, 61, 'Manufahi', 'MF', 1),
(977, 61, 'Oecussi', 'OE', 1),
(978, 61, 'Viqueque', 'VI', 1),
(979, 62, 'Azuay', 'AZU', 1),
(980, 62, 'Bolivar', 'BOL', 1),
(981, 62, 'Ca&ntilde;ar', 'CAN', 1),
(982, 62, 'Carchi', 'CAR', 1),
(983, 62, 'Chimborazo', 'CHI', 1),
(984, 62, 'Cotopaxi', 'COT', 1),
(985, 62, 'El Oro', 'EOR', 1),
(986, 62, 'Esmeraldas', 'ESM', 1),
(987, 62, 'Gal&aacute;pagos', 'GPS', 1),
(988, 62, 'Guayas', 'GUA', 1),
(989, 62, 'Imbabura', 'IMB', 1),
(990, 62, 'Loja', 'LOJ', 1),
(991, 62, 'Los Rios', 'LRO', 1),
(992, 62, 'Manab&iacute;', 'MAN', 1),
(993, 62, 'Morona Santiago', 'MSA', 1),
(994, 62, 'Napo', 'NAP', 1),
(995, 62, 'Orellana', 'ORE', 1),
(996, 62, 'Pastaza', 'PAS', 1),
(997, 62, 'Pichincha', 'PIC', 1),
(998, 62, 'Sucumb&iacute;os', 'SUC', 1),
(999, 62, 'Tungurahua', 'TUN', 1),
(1000, 62, 'Zamora Chinchipe', 'ZCH', 1),
(1001, 63, 'Ad Daqahliyah', 'DHY', 1),
(1002, 63, 'Al Bahr al Ahmar', 'BAM', 1),
(1003, 63, 'Al Buhayrah', 'BHY', 1),
(1004, 63, 'Al Fayyum', 'FYM', 1),
(1005, 63, 'Al Gharbiyah', 'GBY', 1),
(1006, 63, 'Al Iskandariyah', 'IDR', 1),
(1007, 63, 'Al Isma''iliyah', 'IML', 1),
(1008, 63, 'Al Jizah', 'JZH', 1),
(1009, 63, 'Al Minufiyah', 'MFY', 1),
(1010, 63, 'Al Minya', 'MNY', 1),
(1011, 63, 'Al Qahirah', 'QHR', 1),
(1012, 63, 'Al Qalyubiyah', 'QLY', 1),
(1013, 63, 'Al Wadi al Jadid', 'WJD', 1),
(1014, 63, 'Ash Sharqiyah', 'SHQ', 1),
(1015, 63, 'As Suways', 'SWY', 1),
(1016, 63, 'Aswan', 'ASW', 1),
(1017, 63, 'Asyut', 'ASY', 1),
(1018, 63, 'Bani Suwayf', 'BSW', 1),
(1019, 63, 'Bur Sa''id', 'BSD', 1),
(1020, 63, 'Dumyat', 'DMY', 1),
(1021, 63, 'Janub Sina''', 'JNS', 1),
(1022, 63, 'Kafr ash Shaykh', 'KSH', 1),
(1023, 63, 'Matruh', 'MAT', 1),
(1024, 63, 'Qina', 'QIN', 1),
(1025, 63, 'Shamal Sina''', 'SHS', 1),
(1026, 63, 'Suhaj', 'SUH', 1),
(1027, 64, 'Ahuachapan', 'AH', 1),
(1028, 64, 'Cabanas', 'CA', 1),
(1029, 64, 'Chalatenango', 'CH', 1),
(1030, 64, 'Cuscatlan', 'CU', 1),
(1031, 64, 'La Libertad', 'LB', 1),
(1032, 64, 'La Paz', 'PZ', 1),
(1033, 64, 'La Union', 'UN', 1),
(1034, 64, 'Morazan', 'MO', 1),
(1035, 64, 'San Miguel', 'SM', 1),
(1036, 64, 'San Salvador', 'SS', 1),
(1037, 64, 'San Vicente', 'SV', 1),
(1038, 64, 'Santa Ana', 'SA', 1),
(1039, 64, 'Sonsonate', 'SO', 1),
(1040, 64, 'Usulutan', 'US', 1),
(1041, 65, 'Provincia Annobon', 'AN', 1),
(1042, 65, 'Provincia Bioko Norte', 'BN', 1),
(1043, 65, 'Provincia Bioko Sur', 'BS', 1),
(1044, 65, 'Provincia Centro Sur', 'CS', 1),
(1045, 65, 'Provincia Kie-Ntem', 'KN', 1),
(1046, 65, 'Provincia Litoral', 'LI', 1),
(1047, 65, 'Provincia Wele-Nzas', 'WN', 1),
(1048, 66, 'Central (Maekel)', 'MA', 1),
(1049, 66, 'Anseba (Keren)', 'KE', 1),
(1050, 66, 'Southern Red Sea (Debub-Keih-Bahri)', 'DK', 1),
(1051, 66, 'Northern Red Sea (Semien-Keih-Bahri)', 'SK', 1),
(1052, 66, 'Southern (Debub)', 'DE', 1),
(1053, 66, 'Gash-Barka (Barentu)', 'BR', 1),
(1054, 67, 'Harjumaa (Tallinn)', 'HA', 1),
(1055, 67, 'Hiiumaa (Kardla)', 'HI', 1),
(1056, 67, 'Ida-Virumaa (Johvi)', 'IV', 1),
(1057, 67, 'Jarvamaa (Paide)', 'JA', 1),
(1058, 67, 'Jogevamaa (Jogeva)', 'JO', 1),
(1059, 67, 'Laane-Virumaa (Rakvere)', 'LV', 1),
(1060, 67, 'Laanemaa (Haapsalu)', 'LA', 1),
(1061, 67, 'Parnumaa (Parnu)', 'PA', 1),
(1062, 67, 'Polvamaa (Polva)', 'PO', 1),
(1063, 67, 'Raplamaa (Rapla)', 'RA', 1),
(1064, 67, 'Saaremaa (Kuessaare)', 'SA', 1),
(1065, 67, 'Tartumaa (Tartu)', 'TA', 1),
(1066, 67, 'Valgamaa (Valga)', 'VA', 1),
(1067, 67, 'Viljandimaa (Viljandi)', 'VI', 1),
(1068, 67, 'Vorumaa (Voru)', 'VO', 1),
(1069, 68, 'Afar', 'AF', 1),
(1070, 68, 'Amhara', 'AH', 1),
(1071, 68, 'Benishangul-Gumaz', 'BG', 1),
(1072, 68, 'Gambela', 'GB', 1),
(1073, 68, 'Hariai', 'HR', 1),
(1074, 68, 'Oromia', 'OR', 1),
(1075, 68, 'Somali', 'SM', 1),
(1076, 68, 'Southern Nations - Nationalities and Peoples Region', 'SN', 1),
(1077, 68, 'Tigray', 'TG', 1),
(1078, 68, 'Addis Ababa', 'AA', 1),
(1079, 68, 'Dire Dawa', 'DD', 1),
(1080, 71, 'Central Division', 'C', 1),
(1081, 71, 'Northern Division', 'N', 1),
(1082, 71, 'Eastern Division', 'E', 1),
(1083, 71, 'Western Division', 'W', 1),
(1084, 71, 'Rotuma', 'R', 1),
(1085, 72, 'Ahvenanmaan Laani', 'AL', 1),
(1086, 72, 'Etela-Suomen Laani', 'ES', 1),
(1087, 72, 'Ita-Suomen Laani', 'IS', 1),
(1088, 72, 'Lansi-Suomen Laani', 'LS', 1),
(1089, 72, 'Lapin Lanani', 'LA', 1),
(1090, 72, 'Oulun Laani', 'OU', 1),
(1114, 74, 'Ain', '01', 1),
(1115, 74, 'Aisne', '02', 1),
(1116, 74, 'Allier', '03', 1),
(1117, 74, 'Alpes de Haute Provence', '04', 1),
(1118, 74, 'Hautes-Alpes', '05', 1),
(1119, 74, 'Alpes Maritimes', '06', 1),
(1120, 74, 'Ard&egrave;che', '07', 1),
(1121, 74, 'Ardennes', '08', 1),
(1122, 74, 'Ari&egrave;ge', '09', 1),
(1123, 74, 'Aube', '10', 1),
(1124, 74, 'Aude', '11', 1),
(1125, 74, 'Aveyron', '12', 1),
(1126, 74, 'Bouches du Rh&ocirc;ne', '13', 1),
(1127, 74, 'Calvados', '14', 1),
(1128, 74, 'Cantal', '15', 1),
(1129, 74, 'Charente', '16', 1),
(1130, 74, 'Charente Maritime', '17', 1),
(1131, 74, 'Cher', '18', 1),
(1132, 74, 'Corr&egrave;ze', '19', 1),
(1133, 74, 'Corse du Sud', '2A', 1),
(1134, 74, 'Haute Corse', '2B', 1),
(1135, 74, 'C&ocirc;te d&#039;or', '21', 1),
(1136, 74, 'C&ocirc;tes d&#039;Armor', '22', 1),
(1137, 74, 'Creuse', '23', 1),
(1138, 74, 'Dordogne', '24', 1),
(1139, 74, 'Doubs', '25', 1),
(1140, 74, 'Dr&ocirc;me', '26', 1),
(1141, 74, 'Eure', '27', 1),
(1142, 74, 'Eure et Loir', '28', 1),
(1143, 74, 'Finist&egrave;re', '29', 1),
(1144, 74, 'Gard', '30', 1),
(1145, 74, 'Haute Garonne', '31', 1),
(1146, 74, 'Gers', '32', 1),
(1147, 74, 'Gironde', '33', 1),
(1148, 74, 'H&eacute;rault', '34', 1),
(1149, 74, 'Ille et Vilaine', '35', 1),
(1150, 74, 'Indre', '36', 1),
(1151, 74, 'Indre et Loire', '37', 1),
(1152, 74, 'Is&eacute;re', '38', 1),
(1153, 74, 'Jura', '39', 1),
(1154, 74, 'Landes', '40', 1),
(1155, 74, 'Loir et Cher', '41', 1),
(1156, 74, 'Loire', '42', 1),
(1157, 74, 'Haute Loire', '43', 1),
(1158, 74, 'Loire Atlantique', '44', 1),
(1159, 74, 'Loiret', '45', 1),
(1160, 74, 'Lot', '46', 1),
(1161, 74, 'Lot et Garonne', '47', 1),
(1162, 74, 'Loz&egrave;re', '48', 1),
(1163, 74, 'Maine et Loire', '49', 1),
(1164, 74, 'Manche', '50', 1),
(1165, 74, 'Marne', '51', 1),
(1166, 74, 'Haute Marne', '52', 1),
(1167, 74, 'Mayenne', '53', 1),
(1168, 74, 'Meurthe et Moselle', '54', 1),
(1169, 74, 'Meuse', '55', 1),
(1170, 74, 'Morbihan', '56', 1),
(1171, 74, 'Moselle', '57', 1),
(1172, 74, 'Ni&egrave;vre', '58', 1),
(1173, 74, 'Nord', '59', 1),
(1174, 74, 'Oise', '60', 1),
(1175, 74, 'Orne', '61', 1),
(1176, 74, 'Pas de Calais', '62', 1),
(1177, 74, 'Puy de D&ocirc;me', '63', 1),
(1178, 74, 'Pyr&eacute;n&eacute;es Atlantiques', '64', 1),
(1179, 74, 'Hautes Pyr&eacute;n&eacute;es', '65', 1),
(1180, 74, 'Pyr&eacute;n&eacute;es Orientales', '66', 1),
(1181, 74, 'Bas Rhin', '67', 1),
(1182, 74, 'Haut Rhin', '68', 1),
(1183, 74, 'Rh&ocirc;ne', '69', 1),
(1184, 74, 'Haute Sa&ocirc;ne', '70', 1),
(1185, 74, 'Sa&ocirc;ne et Loire', '71', 1),
(1186, 74, 'Sarthe', '72', 1),
(1187, 74, 'Savoie', '73', 1),
(1188, 74, 'Haute Savoie', '74', 1),
(1189, 74, 'Paris', '75', 1),
(1190, 74, 'Seine Maritime', '76', 1),
(1191, 74, 'Seine et Marne', '77', 1),
(1192, 74, 'Yvelines', '78', 1),
(1193, 74, 'Deux S&egrave;vres', '79', 1),
(1194, 74, 'Somme', '80', 1),
(1195, 74, 'Tarn', '81', 1),
(1196, 74, 'Tarn et Garonne', '82', 1),
(1197, 74, 'Var', '83', 1),
(1198, 74, 'Vaucluse', '84', 1),
(1199, 74, 'Vend&eacute;e', '85', 1),
(1200, 74, 'Vienne', '86', 1),
(1201, 74, 'Haute Vienne', '87', 1),
(1202, 74, 'Vosges', '88', 1),
(1203, 74, 'Yonne', '89', 1),
(1204, 74, 'Territoire de Belfort', '90', 1),
(1205, 74, 'Essonne', '91', 1),
(1206, 74, 'Hauts de Seine', '92', 1),
(1207, 74, 'Seine St-Denis', '93', 1),
(1208, 74, 'Val de Marne', '94', 1),
(1209, 74, 'Val d''Oise', '95', 1),
(1210, 76, 'Archipel des Marquises', 'M', 1),
(1211, 76, 'Archipel des Tuamotu', 'T', 1),
(1212, 76, 'Archipel des Tubuai', 'I', 1),
(1213, 76, 'Iles du Vent', 'V', 1),
(1214, 76, 'Iles Sous-le-Vent', 'S', 1),
(1215, 77, 'Iles Crozet', 'C', 1),
(1216, 77, 'Iles Kerguelen', 'K', 1),
(1217, 77, 'Ile Amsterdam', 'A', 1),
(1218, 77, 'Ile Saint-Paul', 'P', 1),
(1219, 77, 'Adelie Land', 'D', 1),
(1220, 78, 'Estuaire', 'ES', 1),
(1221, 78, 'Haut-Ogooue', 'HO', 1),
(1222, 78, 'Moyen-Ogooue', 'MO', 1),
(1223, 78, 'Ngounie', 'NG', 1),
(1224, 78, 'Nyanga', 'NY', 1),
(1225, 78, 'Ogooue-Ivindo', 'OI', 1),
(1226, 78, 'Ogooue-Lolo', 'OL', 1),
(1227, 78, 'Ogooue-Maritime', 'OM', 1),
(1228, 78, 'Woleu-Ntem', 'WN', 1),
(1229, 79, 'Banjul', 'BJ', 1),
(1230, 79, 'Basse', 'BS', 1),
(1231, 79, 'Brikama', 'BR', 1),
(1232, 79, 'Janjangbure', 'JA', 1),
(1233, 79, 'Kanifeng', 'KA', 1),
(1234, 79, 'Kerewan', 'KE', 1),
(1235, 79, 'Kuntaur', 'KU', 1),
(1236, 79, 'Mansakonko', 'MA', 1),
(1237, 79, 'Lower River', 'LR', 1),
(1238, 79, 'Central River', 'CR', 1),
(1239, 79, 'North Bank', 'NB', 1),
(1240, 79, 'Upper River', 'UR', 1),
(1241, 79, 'Western', 'WE', 1),
(1242, 80, 'Abkhazia', 'AB', 1),
(1243, 80, 'Ajaria', 'AJ', 1),
(1244, 80, 'Tbilisi', 'TB', 1),
(1245, 80, 'Guria', 'GU', 1),
(1246, 80, 'Imereti', 'IM', 1),
(1247, 80, 'Kakheti', 'KA', 1),
(1248, 80, 'Kvemo Kartli', 'KK', 1),
(1249, 80, 'Mtskheta-Mtianeti', 'MM', 1),
(1250, 80, 'Racha Lechkhumi and Kvemo Svanet', 'RL', 1),
(1251, 80, 'Samegrelo-Zemo Svaneti', 'SZ', 1),
(1252, 80, 'Samtskhe-Javakheti', 'SJ', 1),
(1253, 80, 'Shida Kartli', 'SK', 1),
(1254, 81, 'Baden-W&uuml;rttemberg', 'BAW', 1),
(1255, 81, 'Bayern', 'BAY', 1),
(1256, 81, 'Berlin', 'BER', 1),
(1257, 81, 'Brandenburg', 'BRG', 1),
(1258, 81, 'Bremen', 'BRE', 1),
(1259, 81, 'Hamburg', 'HAM', 1),
(1260, 81, 'Hessen', 'HES', 1),
(1261, 81, 'Mecklenburg-Vorpommern', 'MEC', 1),
(1262, 81, 'Niedersachsen', 'NDS', 1),
(1263, 81, 'Nordrhein-Westfalen', 'NRW', 1),
(1264, 81, 'Rheinland-Pfalz', 'RHE', 1),
(1265, 81, 'Saarland', 'SAR', 1),
(1266, 81, 'Sachsen', 'SAS', 1),
(1267, 81, 'Sachsen-Anhalt', 'SAC', 1),
(1268, 81, 'Schleswig-Holstein', 'SCN', 1),
(1269, 81, 'Th&uuml;ringen', 'THE', 1),
(1270, 82, 'Ashanti Region', 'AS', 1),
(1271, 82, 'Brong-Ahafo Region', 'BA', 1),
(1272, 82, 'Central Region', 'CE', 1),
(1273, 82, 'Eastern Region', 'EA', 1),
(1274, 82, 'Greater Accra Region', 'GA', 1),
(1275, 82, 'Northern Region', 'NO', 1),
(1276, 82, 'Upper East Region', 'UE', 1),
(1277, 82, 'Upper West Region', 'UW', 1),
(1278, 82, 'Volta Region', 'VO', 1),
(1279, 82, 'Western Region', 'WE', 1),
(1280, 84, 'Attica', 'AT', 1),
(1281, 84, 'Central Greece', 'CN', 1),
(1282, 84, 'Central Macedonia', 'CM', 1),
(1283, 84, 'Crete', 'CR', 1),
(1284, 84, 'East Macedonia and Thrace', 'EM', 1),
(1285, 84, 'Epirus', 'EP', 1),
(1286, 84, 'Ionian Islands', 'II', 1),
(1287, 84, 'North Aegean', 'NA', 1),
(1288, 84, 'Peloponnesos', 'PP', 1),
(1289, 84, 'South Aegean', 'SA', 1),
(1290, 84, 'Thessaly', 'TH', 1),
(1291, 84, 'West Greece', 'WG', 1),
(1292, 84, 'West Macedonia', 'WM', 1),
(1293, 85, 'Avannaa', 'A', 1),
(1294, 85, 'Tunu', 'T', 1),
(1295, 85, 'Kitaa', 'K', 1),
(1296, 86, 'Saint Andrew', 'A', 1),
(1297, 86, 'Saint David', 'D', 1),
(1298, 86, 'Saint George', 'G', 1),
(1299, 86, 'Saint John', 'J', 1),
(1300, 86, 'Saint Mark', 'M', 1),
(1301, 86, 'Saint Patrick', 'P', 1),
(1302, 86, 'Carriacou', 'C', 1),
(1303, 86, 'Petit Martinique', 'Q', 1),
(1304, 89, 'Alta Verapaz', 'AV', 1),
(1305, 89, 'Baja Verapaz', 'BV', 1),
(1306, 89, 'Chimaltenango', 'CM', 1),
(1307, 89, 'Chiquimula', 'CQ', 1),
(1308, 89, 'El Peten', 'PE', 1),
(1309, 89, 'El Progreso', 'PR', 1),
(1310, 89, 'El Quiche', 'QC', 1),
(1311, 89, 'Escuintla', 'ES', 1),
(1312, 89, 'Guatemala', 'GU', 1),
(1313, 89, 'Huehuetenango', 'HU', 1),
(1314, 89, 'Izabal', 'IZ', 1),
(1315, 89, 'Jalapa', 'JA', 1),
(1316, 89, 'Jutiapa', 'JU', 1),
(1317, 89, 'Quetzaltenango', 'QZ', 1),
(1318, 89, 'Retalhuleu', 'RE', 1),
(1319, 89, 'Sacatepequez', 'ST', 1),
(1320, 89, 'San Marcos', 'SM', 1),
(1321, 89, 'Santa Rosa', 'SR', 1),
(1322, 89, 'Solola', 'SO', 1),
(1323, 89, 'Suchitepequez', 'SU', 1),
(1324, 89, 'Totonicapan', 'TO', 1),
(1325, 89, 'Zacapa', 'ZA', 1),
(1326, 90, 'Conakry', 'CNK', 1),
(1327, 90, 'Beyla', 'BYL', 1),
(1328, 90, 'Boffa', 'BFA', 1),
(1329, 90, 'Boke', 'BOK', 1),
(1330, 90, 'Coyah', 'COY', 1),
(1331, 90, 'Dabola', 'DBL', 1),
(1332, 90, 'Dalaba', 'DLB', 1),
(1333, 90, 'Dinguiraye', 'DGR', 1),
(1334, 90, 'Dubreka', 'DBR', 1),
(1335, 90, 'Faranah', 'FRN', 1),
(1336, 90, 'Forecariah', 'FRC', 1),
(1337, 90, 'Fria', 'FRI', 1),
(1338, 90, 'Gaoual', 'GAO', 1),
(1339, 90, 'Gueckedou', 'GCD', 1),
(1340, 90, 'Kankan', 'KNK', 1),
(1341, 90, 'Kerouane', 'KRN', 1),
(1342, 90, 'Kindia', 'KND', 1),
(1343, 90, 'Kissidougou', 'KSD', 1),
(1344, 90, 'Koubia', 'KBA', 1),
(1345, 90, 'Koundara', 'KDA', 1),
(1346, 90, 'Kouroussa', 'KRA', 1),
(1347, 90, 'Labe', 'LAB', 1),
(1348, 90, 'Lelouma', 'LLM', 1),
(1349, 90, 'Lola', 'LOL', 1),
(1350, 90, 'Macenta', 'MCT', 1),
(1351, 90, 'Mali', 'MAL', 1),
(1352, 90, 'Mamou', 'MAM', 1),
(1353, 90, 'Mandiana', 'MAN', 1),
(1354, 90, 'Nzerekore', 'NZR', 1),
(1355, 90, 'Pita', 'PIT', 1),
(1356, 90, 'Siguiri', 'SIG', 1),
(1357, 90, 'Telimele', 'TLM', 1),
(1358, 90, 'Tougue', 'TOG', 1),
(1359, 90, 'Yomou', 'YOM', 1),
(1360, 91, 'Bafata Region', 'BF', 1),
(1361, 91, 'Biombo Region', 'BB', 1),
(1362, 91, 'Bissau Region', 'BS', 1),
(1363, 91, 'Bolama Region', 'BL', 1),
(1364, 91, 'Cacheu Region', 'CA', 1),
(1365, 91, 'Gabu Region', 'GA', 1),
(1366, 91, 'Oio Region', 'OI', 1),
(1367, 91, 'Quinara Region', 'QU', 1),
(1368, 91, 'Tombali Region', 'TO', 1),
(1369, 92, 'Barima-Waini', 'BW', 1),
(1370, 92, 'Cuyuni-Mazaruni', 'CM', 1),
(1371, 92, 'Demerara-Mahaica', 'DM', 1),
(1372, 92, 'East Berbice-Corentyne', 'EC', 1),
(1373, 92, 'Essequibo Islands-West Demerara', 'EW', 1),
(1374, 92, 'Mahaica-Berbice', 'MB', 1),
(1375, 92, 'Pomeroon-Supenaam', 'PM', 1),
(1376, 92, 'Potaro-Siparuni', 'PI', 1),
(1377, 92, 'Upper Demerara-Berbice', 'UD', 1),
(1378, 92, 'Upper Takutu-Upper Essequibo', 'UT', 1),
(1379, 93, 'Artibonite', 'AR', 1),
(1380, 93, 'Centre', 'CE', 1),
(1381, 93, 'Grand''Anse', 'GA', 1),
(1382, 93, 'Nord', 'ND', 1),
(1383, 93, 'Nord-Est', 'NE', 1),
(1384, 93, 'Nord-Ouest', 'NO', 1),
(1385, 93, 'Ouest', 'OU', 1),
(1386, 93, 'Sud', 'SD', 1),
(1387, 93, 'Sud-Est', 'SE', 1),
(1388, 94, 'Flat Island', 'F', 1),
(1389, 94, 'McDonald Island', 'M', 1),
(1390, 94, 'Shag Island', 'S', 1),
(1391, 94, 'Heard Island', 'H', 1),
(1392, 95, 'Atlantida', 'AT', 1),
(1393, 95, 'Choluteca', 'CH', 1),
(1394, 95, 'Colon', 'CL', 1),
(1395, 95, 'Comayagua', 'CM', 1),
(1396, 95, 'Copan', 'CP', 1),
(1397, 95, 'Cortes', 'CR', 1),
(1398, 95, 'El Paraiso', 'PA', 1),
(1399, 95, 'Francisco Morazan', 'FM', 1),
(1400, 95, 'Gracias a Dios', 'GD', 1),
(1401, 95, 'Intibuca', 'IN', 1),
(1402, 95, 'Islas de la Bahia (Bay Islands)', 'IB', 1),
(1403, 95, 'La Paz', 'PZ', 1),
(1404, 95, 'Lempira', 'LE', 1),
(1405, 95, 'Ocotepeque', 'OC', 1),
(1406, 95, 'Olancho', 'OL', 1),
(1407, 95, 'Santa Barbara', 'SB', 1),
(1408, 95, 'Valle', 'VA', 1),
(1409, 95, 'Yoro', 'YO', 1),
(1410, 96, 'Central and Western Hong Kong Island', 'HCW', 1),
(1411, 96, 'Eastern Hong Kong Island', 'HEA', 1),
(1412, 96, 'Southern Hong Kong Island', 'HSO', 1),
(1413, 96, 'Wan Chai Hong Kong Island', 'HWC', 1),
(1414, 96, 'Kowloon City Kowloon', 'KKC', 1),
(1415, 96, 'Kwun Tong Kowloon', 'KKT', 1),
(1416, 96, 'Sham Shui Po Kowloon', 'KSS', 1),
(1417, 96, 'Wong Tai Sin Kowloon', 'KWT', 1),
(1418, 96, 'Yau Tsim Mong Kowloon', 'KYT', 1),
(1419, 96, 'Islands New Territories', 'NIS', 1),
(1420, 96, 'Kwai Tsing New Territories', 'NKT', 1),
(1421, 96, 'North New Territories', 'NNO', 1),
(1422, 96, 'Sai Kung New Territories', 'NSK', 1),
(1423, 96, 'Sha Tin New Territories', 'NST', 1),
(1424, 96, 'Tai Po New Territories', 'NTP', 1),
(1425, 96, 'Tsuen Wan New Territories', 'NTW', 1),
(1426, 96, 'Tuen Mun New Territories', 'NTM', 1),
(1427, 96, 'Yuen Long New Territories', 'NYL', 1),
(1428, 97, 'Bacs-Kiskun', 'BK', 1),
(1429, 97, 'Baranya', 'BA', 1),
(1430, 97, 'Bekes', 'BE', 1),
(1431, 97, 'Bekescsaba', 'BS', 1),
(1432, 97, 'Borsod-Abauj-Zemplen', 'BZ', 1),
(1433, 97, 'Budapest', 'BU', 1),
(1434, 97, 'Csongrad', 'CS', 1),
(1435, 97, 'Debrecen', 'DE', 1),
(1436, 97, 'Dunaujvaros', 'DU', 1),
(1437, 97, 'Eger', 'EG', 1),
(1438, 97, 'Fejer', 'FE', 1),
(1439, 97, 'Gyor', 'GY', 1),
(1440, 97, 'Gyor-Moson-Sopron', 'GM', 1),
(1441, 97, 'Hajdu-Bihar', 'HB', 1),
(1442, 97, 'Heves', 'HE', 1),
(1443, 97, 'Hodmezovasarhely', 'HO', 1),
(1444, 97, 'Jasz-Nagykun-Szolnok', 'JN', 1),
(1445, 97, 'Kaposvar', 'KA', 1),
(1446, 97, 'Kecskemet', 'KE', 1),
(1447, 97, 'Komarom-Esztergom', 'KO', 1),
(1448, 97, 'Miskolc', 'MI', 1),
(1449, 97, 'Nagykanizsa', 'NA', 1),
(1450, 97, 'Nograd', 'NO', 1),
(1451, 97, 'Nyiregyhaza', 'NY', 1),
(1452, 97, 'Pecs', 'PE', 1),
(1453, 97, 'Pest', 'PS', 1),
(1454, 97, 'Somogy', 'SO', 1),
(1455, 97, 'Sopron', 'SP', 1),
(1456, 97, 'Szabolcs-Szatmar-Bereg', 'SS', 1),
(1457, 97, 'Szeged', 'SZ', 1),
(1458, 97, 'Szekesfehervar', 'SE', 1),
(1459, 97, 'Szolnok', 'SL', 1),
(1460, 97, 'Szombathely', 'SM', 1),
(1461, 97, 'Tatabanya', 'TA', 1),
(1462, 97, 'Tolna', 'TO', 1),
(1463, 97, 'Vas', 'VA', 1),
(1464, 97, 'Veszprem', 'VE', 1),
(1465, 97, 'Zala', 'ZA', 1),
(1466, 97, 'Zalaegerszeg', 'ZZ', 1),
(1467, 98, 'Austurland', 'AL', 1),
(1468, 98, 'Hofuoborgarsvaeoi', 'HF', 1),
(1469, 98, 'Norourland eystra', 'NE', 1),
(1470, 98, 'Norourland vestra', 'NV', 1),
(1471, 98, 'Suourland', 'SL', 1),
(1472, 98, 'Suournes', 'SN', 1),
(1473, 98, 'Vestfiroir', 'VF', 1),
(1474, 98, 'Vesturland', 'VL', 1),
(1475, 99, 'Andaman and Nicobar Islands', 'AN', 1),
(1476, 99, 'Andhra Pradesh', 'AP', 1),
(1477, 99, 'Arunachal Pradesh', 'AR', 1),
(1478, 99, 'Assam', 'AS', 1),
(1479, 99, 'Bihar', 'BI', 1),
(1480, 99, 'Chandigarh', 'CH', 1),
(1481, 99, 'Dadra and Nagar Haveli', 'DA', 1),
(1482, 99, 'Daman and Diu', 'DM', 1),
(1483, 99, 'Delhi', 'DE', 1),
(1484, 99, 'Goa', 'GO', 1),
(1485, 99, 'Gujarat', 'GU', 1),
(1486, 99, 'Haryana', 'HA', 1),
(1487, 99, 'Himachal Pradesh', 'HP', 1),
(1488, 99, 'Jammu and Kashmir', 'JA', 1),
(1489, 99, 'Karnataka', 'KA', 1),
(1490, 99, 'Kerala', 'KE', 1),
(1491, 99, 'Lakshadweep Islands', 'LI', 1),
(1492, 99, 'Madhya Pradesh', 'MP', 1),
(1493, 99, 'Maharashtra', 'MA', 1),
(1494, 99, 'Manipur', 'MN', 1),
(1495, 99, 'Meghalaya', 'ME', 1),
(1496, 99, 'Mizoram', 'MI', 1),
(1497, 99, 'Nagaland', 'NA', 1),
(1498, 99, 'Orissa', 'OR', 1),
(1499, 99, 'Pondicherry', 'PO', 1),
(1500, 99, 'Punjab', 'PU', 1),
(1501, 99, 'Rajasthan', 'RA', 1),
(1502, 99, 'Sikkim', 'SI', 1),
(1503, 99, 'Tamil Nadu', 'TN', 1),
(1504, 99, 'Tripura', 'TR', 1),
(1505, 99, 'Uttar Pradesh', 'UP', 1),
(1506, 99, 'West Bengal', 'WB', 1),
(1507, 100, 'Aceh', 'AC', 1),
(1508, 100, 'Bali', 'BA', 1),
(1509, 100, 'Banten', 'BT', 1),
(1510, 100, 'Bengkulu', 'BE', 1),
(1511, 100, 'BoDeTaBek', 'BD', 1),
(1512, 100, 'Gorontalo', 'GO', 1),
(1513, 100, 'Jakarta Raya', 'JK', 1),
(1514, 100, 'Jambi', 'JA', 1),
(1515, 100, 'Jawa Barat', 'JB', 1),
(1516, 100, 'Jawa Tengah', 'JT', 1),
(1517, 100, 'Jawa Timur', 'JI', 1),
(1518, 100, 'Kalimantan Barat', 'KB', 1),
(1519, 100, 'Kalimantan Selatan', 'KS', 1),
(1520, 100, 'Kalimantan Tengah', 'KT', 1),
(1521, 100, 'Kalimantan Timur', 'KI', 1),
(1522, 100, 'Kepulauan Bangka Belitung', 'BB', 1),
(1523, 100, 'Lampung', 'LA', 1),
(1524, 100, 'Maluku', 'MA', 1),
(1525, 100, 'Maluku Utara', 'MU', 1),
(1526, 100, 'Nusa Tenggara Barat', 'NB', 1),
(1527, 100, 'Nusa Tenggara Timur', 'NT', 1),
(1528, 100, 'Papua', 'PA', 1),
(1529, 100, 'Riau', 'RI', 1),
(1530, 100, 'Sulawesi Selatan', 'SN', 1),
(1531, 100, 'Sulawesi Tengah', 'ST', 1),
(1532, 100, 'Sulawesi Tenggara', 'SG', 1),
(1533, 100, 'Sulawesi Utara', 'SA', 1),
(1534, 100, 'Sumatera Barat', 'SB', 1),
(1535, 100, 'Sumatera Selatan', 'SS', 1),
(1536, 100, 'Sumatera Utara', 'SU', 1),
(1537, 100, 'Yogyakarta', 'YO', 1),
(1538, 101, 'Tehran', 'TEH', 1),
(1539, 101, 'Qom', 'QOM', 1),
(1540, 101, 'Markazi', 'MKZ', 1),
(1541, 101, 'Qazvin', 'QAZ', 1),
(1542, 101, 'Gilan', 'GIL', 1),
(1543, 101, 'Ardabil', 'ARD', 1),
(1544, 101, 'Zanjan', 'ZAN', 1),
(1545, 101, 'East Azarbaijan', 'EAZ', 1),
(1546, 101, 'West Azarbaijan', 'WEZ', 1),
(1547, 101, 'Kurdistan', 'KRD', 1),
(1548, 101, 'Hamadan', 'HMD', 1),
(1549, 101, 'Kermanshah', 'KRM', 1),
(1550, 101, 'Ilam', 'ILM', 1),
(1551, 101, 'Lorestan', 'LRS', 1),
(1552, 101, 'Khuzestan', 'KZT', 1),
(1553, 101, 'Chahar Mahaal and Bakhtiari', 'CMB', 1),
(1554, 101, 'Kohkiluyeh and Buyer Ahmad', 'KBA', 1),
(1555, 101, 'Bushehr', 'BSH', 1),
(1556, 101, 'Fars', 'FAR', 1),
(1557, 101, 'Hormozgan', 'HRM', 1),
(1558, 101, 'Sistan and Baluchistan', 'SBL', 1);
INSERT INTO `sh_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1559, 101, 'Kerman', 'KRB', 1),
(1560, 101, 'Yazd', 'YZD', 1),
(1561, 101, 'Esfahan', 'EFH', 1),
(1562, 101, 'Semnan', 'SMN', 1),
(1563, 101, 'Mazandaran', 'MZD', 1),
(1564, 101, 'Golestan', 'GLS', 1),
(1565, 101, 'North Khorasan', 'NKH', 1),
(1566, 101, 'Razavi Khorasan', 'RKH', 1),
(1567, 101, 'South Khorasan', 'SKH', 1),
(1568, 102, 'Baghdad', 'BD', 1),
(1569, 102, 'Salah ad Din', 'SD', 1),
(1570, 102, 'Diyala', 'DY', 1),
(1571, 102, 'Wasit', 'WS', 1),
(1572, 102, 'Maysan', 'MY', 1),
(1573, 102, 'Al Basrah', 'BA', 1),
(1574, 102, 'Dhi Qar', 'DQ', 1),
(1575, 102, 'Al Muthanna', 'MU', 1),
(1576, 102, 'Al Qadisyah', 'QA', 1),
(1577, 102, 'Babil', 'BB', 1),
(1578, 102, 'Al Karbala', 'KB', 1),
(1579, 102, 'An Najaf', 'NJ', 1),
(1580, 102, 'Al Anbar', 'AB', 1),
(1581, 102, 'Ninawa', 'NN', 1),
(1582, 102, 'Dahuk', 'DH', 1),
(1583, 102, 'Arbil', 'AL', 1),
(1584, 102, 'At Ta''mim', 'TM', 1),
(1585, 102, 'As Sulaymaniyah', 'SL', 1),
(1586, 103, 'Carlow', 'CA', 1),
(1587, 103, 'Cavan', 'CV', 1),
(1588, 103, 'Clare', 'CL', 1),
(1589, 103, 'Cork', 'CO', 1),
(1590, 103, 'Donegal', 'DO', 1),
(1591, 103, 'Dublin', 'DU', 1),
(1592, 103, 'Galway', 'GA', 1),
(1593, 103, 'Kerry', 'KE', 1),
(1594, 103, 'Kildare', 'KI', 1),
(1595, 103, 'Kilkenny', 'KL', 1),
(1596, 103, 'Laois', 'LA', 1),
(1597, 103, 'Leitrim', 'LE', 1),
(1598, 103, 'Limerick', 'LI', 1),
(1599, 103, 'Longford', 'LO', 1),
(1600, 103, 'Louth', 'LU', 1),
(1601, 103, 'Mayo', 'MA', 1),
(1602, 103, 'Meath', 'ME', 1),
(1603, 103, 'Monaghan', 'MO', 1),
(1604, 103, 'Offaly', 'OF', 1),
(1605, 103, 'Roscommon', 'RO', 1),
(1606, 103, 'Sligo', 'SL', 1),
(1607, 103, 'Tipperary', 'TI', 1),
(1608, 103, 'Waterford', 'WA', 1),
(1609, 103, 'Westmeath', 'WE', 1),
(1610, 103, 'Wexford', 'WX', 1),
(1611, 103, 'Wicklow', 'WI', 1),
(1612, 104, 'Be''er Sheva', 'BS', 1),
(1613, 104, 'Bika''at Hayarden', 'BH', 1),
(1614, 104, 'Eilat and Arava', 'EA', 1),
(1615, 104, 'Galil', 'GA', 1),
(1616, 104, 'Haifa', 'HA', 1),
(1617, 104, 'Jehuda Mountains', 'JM', 1),
(1618, 104, 'Jerusalem', 'JE', 1),
(1619, 104, 'Negev', 'NE', 1),
(1620, 104, 'Semaria', 'SE', 1),
(1621, 104, 'Sharon', 'SH', 1),
(1622, 104, 'Tel Aviv (Gosh Dan)', 'TA', 1),
(3860, 105, 'Caltanissetta', 'CL', 1),
(3842, 105, 'Agrigento', 'AG', 1),
(3843, 105, 'Alessandria', 'AL', 1),
(3844, 105, 'Ancona', 'AN', 1),
(3845, 105, 'Aosta', 'AO', 1),
(3846, 105, 'Arezzo', 'AR', 1),
(3847, 105, 'Ascoli Piceno', 'AP', 1),
(3848, 105, 'Asti', 'AT', 1),
(3849, 105, 'Avellino', 'AV', 1),
(3850, 105, 'Bari', 'BA', 1),
(3851, 105, 'Belluno', 'BL', 1),
(3852, 105, 'Benevento', 'BN', 1),
(3853, 105, 'Bergamo', 'BG', 1),
(3854, 105, 'Biella', 'BI', 1),
(3855, 105, 'Bologna', 'BO', 1),
(3856, 105, 'Bolzano', 'BZ', 1),
(3857, 105, 'Brescia', 'BS', 1),
(3858, 105, 'Brindisi', 'BR', 1),
(3859, 105, 'Cagliari', 'CA', 1),
(1643, 106, 'Clarendon Parish', 'CLA', 1),
(1644, 106, 'Hanover Parish', 'HAN', 1),
(1645, 106, 'Kingston Parish', 'KIN', 1),
(1646, 106, 'Manchester Parish', 'MAN', 1),
(1647, 106, 'Portland Parish', 'POR', 1),
(1648, 106, 'Saint Andrew Parish', 'AND', 1),
(1649, 106, 'Saint Ann Parish', 'ANN', 1),
(1650, 106, 'Saint Catherine Parish', 'CAT', 1),
(1651, 106, 'Saint Elizabeth Parish', 'ELI', 1),
(1652, 106, 'Saint James Parish', 'JAM', 1),
(1653, 106, 'Saint Mary Parish', 'MAR', 1),
(1654, 106, 'Saint Thomas Parish', 'THO', 1),
(1655, 106, 'Trelawny Parish', 'TRL', 1),
(1656, 106, 'Westmoreland Parish', 'WML', 1),
(1657, 107, 'Aichi', 'AI', 1),
(1658, 107, 'Akita', 'AK', 1),
(1659, 107, 'Aomori', 'AO', 1),
(1660, 107, 'Chiba', 'CH', 1),
(1661, 107, 'Ehime', 'EH', 1),
(1662, 107, 'Fukui', 'FK', 1),
(1663, 107, 'Fukuoka', 'FU', 1),
(1664, 107, 'Fukushima', 'FS', 1),
(1665, 107, 'Gifu', 'GI', 1),
(1666, 107, 'Gumma', 'GU', 1),
(1667, 107, 'Hiroshima', 'HI', 1),
(1668, 107, 'Hokkaido', 'HO', 1),
(1669, 107, 'Hyogo', 'HY', 1),
(1670, 107, 'Ibaraki', 'IB', 1),
(1671, 107, 'Ishikawa', 'IS', 1),
(1672, 107, 'Iwate', 'IW', 1),
(1673, 107, 'Kagawa', 'KA', 1),
(1674, 107, 'Kagoshima', 'KG', 1),
(1675, 107, 'Kanagawa', 'KN', 1),
(1676, 107, 'Kochi', 'KO', 1),
(1677, 107, 'Kumamoto', 'KU', 1),
(1678, 107, 'Kyoto', 'KY', 1),
(1679, 107, 'Mie', 'MI', 1),
(1680, 107, 'Miyagi', 'MY', 1),
(1681, 107, 'Miyazaki', 'MZ', 1),
(1682, 107, 'Nagano', 'NA', 1),
(1683, 107, 'Nagasaki', 'NG', 1),
(1684, 107, 'Nara', 'NR', 1),
(1685, 107, 'Niigata', 'NI', 1),
(1686, 107, 'Oita', 'OI', 1),
(1687, 107, 'Okayama', 'OK', 1),
(1688, 107, 'Okinawa', 'ON', 1),
(1689, 107, 'Osaka', 'OS', 1),
(1690, 107, 'Saga', 'SA', 1),
(1691, 107, 'Saitama', 'SI', 1),
(1692, 107, 'Shiga', 'SH', 1),
(1693, 107, 'Shimane', 'SM', 1),
(1694, 107, 'Shizuoka', 'SZ', 1),
(1695, 107, 'Tochigi', 'TO', 1),
(1696, 107, 'Tokushima', 'TS', 1),
(1697, 107, 'Tokyo', 'TK', 1),
(1698, 107, 'Tottori', 'TT', 1),
(1699, 107, 'Toyama', 'TY', 1),
(1700, 107, 'Wakayama', 'WA', 1),
(1701, 107, 'Yamagata', 'YA', 1),
(1702, 107, 'Yamaguchi', 'YM', 1),
(1703, 107, 'Yamanashi', 'YN', 1),
(1704, 108, '''Amman', 'AM', 1),
(1705, 108, 'Ajlun', 'AJ', 1),
(1706, 108, 'Al ''Aqabah', 'AA', 1),
(1707, 108, 'Al Balqa''', 'AB', 1),
(1708, 108, 'Al Karak', 'AK', 1),
(1709, 108, 'Al Mafraq', 'AL', 1),
(1710, 108, 'At Tafilah', 'AT', 1),
(1711, 108, 'Az Zarqa''', 'AZ', 1),
(1712, 108, 'Irbid', 'IR', 1),
(1713, 108, 'Jarash', 'JA', 1),
(1714, 108, 'Ma''an', 'MA', 1),
(1715, 108, 'Madaba', 'MD', 1),
(1716, 109, 'Almaty', 'AL', 1),
(1717, 109, 'Almaty City', 'AC', 1),
(1718, 109, 'Aqmola', 'AM', 1),
(1719, 109, 'Aqtobe', 'AQ', 1),
(1720, 109, 'Astana City', 'AS', 1),
(1721, 109, 'Atyrau', 'AT', 1),
(1722, 109, 'Batys Qazaqstan', 'BA', 1),
(1723, 109, 'Bayqongyr City', 'BY', 1),
(1724, 109, 'Mangghystau', 'MA', 1),
(1725, 109, 'Ongtustik Qazaqstan', 'ON', 1),
(1726, 109, 'Pavlodar', 'PA', 1),
(1727, 109, 'Qaraghandy', 'QA', 1),
(1728, 109, 'Qostanay', 'QO', 1),
(1729, 109, 'Qyzylorda', 'QY', 1),
(1730, 109, 'Shyghys Qazaqstan', 'SH', 1),
(1731, 109, 'Soltustik Qazaqstan', 'SO', 1),
(1732, 109, 'Zhambyl', 'ZH', 1),
(1733, 110, 'Central', 'CE', 1),
(1734, 110, 'Coast', 'CO', 1),
(1735, 110, 'Eastern', 'EA', 1),
(1736, 110, 'Nairobi Area', 'NA', 1),
(1737, 110, 'North Eastern', 'NE', 1),
(1738, 110, 'Nyanza', 'NY', 1),
(1739, 110, 'Rift Valley', 'RV', 1),
(1740, 110, 'Western', 'WE', 1),
(1741, 111, 'Abaiang', 'AG', 1),
(1742, 111, 'Abemama', 'AM', 1),
(1743, 111, 'Aranuka', 'AK', 1),
(1744, 111, 'Arorae', 'AO', 1),
(1745, 111, 'Banaba', 'BA', 1),
(1746, 111, 'Beru', 'BE', 1),
(1747, 111, 'Butaritari', 'bT', 1),
(1748, 111, 'Kanton', 'KA', 1),
(1749, 111, 'Kiritimati', 'KR', 1),
(1750, 111, 'Kuria', 'KU', 1),
(1751, 111, 'Maiana', 'MI', 1),
(1752, 111, 'Makin', 'MN', 1),
(1753, 111, 'Marakei', 'ME', 1),
(1754, 111, 'Nikunau', 'NI', 1),
(1755, 111, 'Nonouti', 'NO', 1),
(1756, 111, 'Onotoa', 'ON', 1),
(1757, 111, 'Tabiteuea', 'TT', 1),
(1758, 111, 'Tabuaeran', 'TR', 1),
(1759, 111, 'Tamana', 'TM', 1),
(1760, 111, 'Tarawa', 'TW', 1),
(1761, 111, 'Teraina', 'TE', 1),
(1762, 112, 'Chagang-do', 'CHA', 1),
(1763, 112, 'Hamgyong-bukto', 'HAB', 1),
(1764, 112, 'Hamgyong-namdo', 'HAN', 1),
(1765, 112, 'Hwanghae-bukto', 'HWB', 1),
(1766, 112, 'Hwanghae-namdo', 'HWN', 1),
(1767, 112, 'Kangwon-do', 'KAN', 1),
(1768, 112, 'P''yongan-bukto', 'PYB', 1),
(1769, 112, 'P''yongan-namdo', 'PYN', 1),
(1770, 112, 'Ryanggang-do (Yanggang-do)', 'YAN', 1),
(1771, 112, 'Rason Directly Governed City', 'NAJ', 1),
(1772, 112, 'P''yongyang Special City', 'PYO', 1),
(1773, 113, 'Ch''ungch''ong-bukto', 'CO', 1),
(1774, 113, 'Ch''ungch''ong-namdo', 'CH', 1),
(1775, 113, 'Cheju-do', 'CD', 1),
(1776, 113, 'Cholla-bukto', 'CB', 1),
(1777, 113, 'Cholla-namdo', 'CN', 1),
(1778, 113, 'Inch''on-gwangyoksi', 'IG', 1),
(1779, 113, 'Kangwon-do', 'KA', 1),
(1780, 113, 'Kwangju-gwangyoksi', 'KG', 1),
(1781, 113, 'Kyonggi-do', 'KD', 1),
(1782, 113, 'Kyongsang-bukto', 'KB', 1),
(1783, 113, 'Kyongsang-namdo', 'KN', 1),
(1784, 113, 'Pusan-gwangyoksi', 'PG', 1),
(1785, 113, 'Soul-t''ukpyolsi', 'SO', 1),
(1786, 113, 'Taegu-gwangyoksi', 'TA', 1),
(1787, 113, 'Taejon-gwangyoksi', 'TG', 1),
(1788, 114, 'Al ''Asimah', 'AL', 1),
(1789, 114, 'Al Ahmadi', 'AA', 1),
(1790, 114, 'Al Farwaniyah', 'AF', 1),
(1791, 114, 'Al Jahra''', 'AJ', 1),
(1792, 114, 'Hawalli', 'HA', 1),
(1793, 115, 'Bishkek', 'GB', 1),
(1794, 115, 'Batken', 'B', 1),
(1795, 115, 'Chu', 'C', 1),
(1796, 115, 'Jalal-Abad', 'J', 1),
(1797, 115, 'Naryn', 'N', 1),
(1798, 115, 'Osh', 'O', 1),
(1799, 115, 'Talas', 'T', 1),
(1800, 115, 'Ysyk-Kol', 'Y', 1),
(1801, 116, 'Vientiane', 'VT', 1),
(1802, 116, 'Attapu', 'AT', 1),
(1803, 116, 'Bokeo', 'BK', 1),
(1804, 116, 'Bolikhamxai', 'BL', 1),
(1805, 116, 'Champasak', 'CH', 1),
(1806, 116, 'Houaphan', 'HO', 1),
(1807, 116, 'Khammouan', 'KH', 1),
(1808, 116, 'Louang Namtha', 'LM', 1),
(1809, 116, 'Louangphabang', 'LP', 1),
(1810, 116, 'Oudomxai', 'OU', 1),
(1811, 116, 'Phongsali', 'PH', 1),
(1812, 116, 'Salavan', 'SL', 1),
(1813, 116, 'Savannakhet', 'SV', 1),
(1814, 116, 'Vientiane', 'VI', 1),
(1815, 116, 'Xaignabouli', 'XA', 1),
(1816, 116, 'Xekong', 'XE', 1),
(1817, 116, 'Xiangkhoang', 'XI', 1),
(1818, 116, 'Xaisomboun', 'XN', 1),
(1819, 117, 'Aizkraukles Rajons', 'AIZ', 1),
(1820, 117, 'Aluksnes Rajons', 'ALU', 1),
(1821, 117, 'Balvu Rajons', 'BAL', 1),
(1822, 117, 'Bauskas Rajons', 'BAU', 1),
(1823, 117, 'Cesu Rajons', 'CES', 1),
(1824, 117, 'Daugavpils Rajons', 'DGR', 1),
(1825, 117, 'Dobeles Rajons', 'DOB', 1),
(1826, 117, 'Gulbenes Rajons', 'GUL', 1),
(1827, 117, 'Jekabpils Rajons', 'JEK', 1),
(1828, 117, 'Jelgavas Rajons', 'JGR', 1),
(1829, 117, 'Kraslavas Rajons', 'KRA', 1),
(1830, 117, 'Kuldigas Rajons', 'KUL', 1),
(1831, 117, 'Liepajas Rajons', 'LPR', 1),
(1832, 117, 'Limbazu Rajons', 'LIM', 1),
(1833, 117, 'Ludzas Rajons', 'LUD', 1),
(1834, 117, 'Madonas Rajons', 'MAD', 1),
(1835, 117, 'Ogres Rajons', 'OGR', 1),
(1836, 117, 'Preilu Rajons', 'PRE', 1),
(1837, 117, 'Rezeknes Rajons', 'RZR', 1),
(1838, 117, 'Rigas Rajons', 'RGR', 1),
(1839, 117, 'Saldus Rajons', 'SAL', 1),
(1840, 117, 'Talsu Rajons', 'TAL', 1),
(1841, 117, 'Tukuma Rajons', 'TUK', 1),
(1842, 117, 'Valkas Rajons', 'VLK', 1),
(1843, 117, 'Valmieras Rajons', 'VLM', 1),
(1844, 117, 'Ventspils Rajons', 'VSR', 1),
(1845, 117, 'Daugavpils', 'DGV', 1),
(1846, 117, 'Jelgava', 'JGV', 1),
(1847, 117, 'Jurmala', 'JUR', 1),
(1848, 117, 'Liepaja', 'LPK', 1),
(1849, 117, 'Rezekne', 'RZK', 1),
(1850, 117, 'Riga', 'RGA', 1),
(1851, 117, 'Ventspils', 'VSL', 1),
(1852, 119, 'Berea', 'BE', 1),
(1853, 119, 'Butha-Buthe', 'BB', 1),
(1854, 119, 'Leribe', 'LE', 1),
(1855, 119, 'Mafeteng', 'MF', 1),
(1856, 119, 'Maseru', 'MS', 1),
(1857, 119, 'Mohale''s Hoek', 'MH', 1),
(1858, 119, 'Mokhotlong', 'MK', 1),
(1859, 119, 'Qacha''s Nek', 'QN', 1),
(1860, 119, 'Quthing', 'QT', 1),
(1861, 119, 'Thaba-Tseka', 'TT', 1),
(1862, 120, 'Bomi', 'BI', 1),
(1863, 120, 'Bong', 'BG', 1),
(1864, 120, 'Grand Bassa', 'GB', 1),
(1865, 120, 'Grand Cape Mount', 'CM', 1),
(1866, 120, 'Grand Gedeh', 'GG', 1),
(1867, 120, 'Grand Kru', 'GK', 1),
(1868, 120, 'Lofa', 'LO', 1),
(1869, 120, 'Margibi', 'MG', 1),
(1870, 120, 'Maryland', 'ML', 1),
(1871, 120, 'Montserrado', 'MS', 1),
(1872, 120, 'Nimba', 'NB', 1),
(1873, 120, 'River Cess', 'RC', 1),
(1874, 120, 'Sinoe', 'SN', 1),
(1875, 121, 'Ajdabiya', 'AJ', 1),
(1876, 121, 'Al ''Aziziyah', 'AZ', 1),
(1877, 121, 'Al Fatih', 'FA', 1),
(1878, 121, 'Al Jabal al Akhdar', 'JA', 1),
(1879, 121, 'Al Jufrah', 'JU', 1),
(1880, 121, 'Al Khums', 'KH', 1),
(1881, 121, 'Al Kufrah', 'KU', 1),
(1882, 121, 'An Nuqat al Khams', 'NK', 1),
(1883, 121, 'Ash Shati''', 'AS', 1),
(1884, 121, 'Awbari', 'AW', 1),
(1885, 121, 'Az Zawiyah', 'ZA', 1),
(1886, 121, 'Banghazi', 'BA', 1),
(1887, 121, 'Darnah', 'DA', 1),
(1888, 121, 'Ghadamis', 'GD', 1),
(1889, 121, 'Gharyan', 'GY', 1),
(1890, 121, 'Misratah', 'MI', 1),
(1891, 121, 'Murzuq', 'MZ', 1),
(1892, 121, 'Sabha', 'SB', 1),
(1893, 121, 'Sawfajjin', 'SW', 1),
(1894, 121, 'Surt', 'SU', 1),
(1895, 121, 'Tarabulus (Tripoli)', 'TL', 1),
(1896, 121, 'Tarhunah', 'TH', 1),
(1897, 121, 'Tubruq', 'TU', 1),
(1898, 121, 'Yafran', 'YA', 1),
(1899, 121, 'Zlitan', 'ZL', 1),
(1900, 122, 'Vaduz', 'V', 1),
(1901, 122, 'Schaan', 'A', 1),
(1902, 122, 'Balzers', 'B', 1),
(1903, 122, 'Triesen', 'N', 1),
(1904, 122, 'Eschen', 'E', 1),
(1905, 122, 'Mauren', 'M', 1),
(1906, 122, 'Triesenberg', 'T', 1),
(1907, 122, 'Ruggell', 'R', 1),
(1908, 122, 'Gamprin', 'G', 1),
(1909, 122, 'Schellenberg', 'L', 1),
(1910, 122, 'Planken', 'P', 1),
(1911, 123, 'Alytus', 'AL', 1),
(1912, 123, 'Kaunas', 'KA', 1),
(1913, 123, 'Klaipeda', 'KL', 1),
(1914, 123, 'Marijampole', 'MA', 1),
(1915, 123, 'Panevezys', 'PA', 1),
(1916, 123, 'Siauliai', 'SI', 1),
(1917, 123, 'Taurage', 'TA', 1),
(1918, 123, 'Telsiai', 'TE', 1),
(1919, 123, 'Utena', 'UT', 1),
(1920, 123, 'Vilnius', 'VI', 1),
(1921, 124, 'Diekirch', 'DD', 1),
(1922, 124, 'Clervaux', 'DC', 1),
(1923, 124, 'Redange', 'DR', 1),
(1924, 124, 'Vianden', 'DV', 1),
(1925, 124, 'Wiltz', 'DW', 1),
(1926, 124, 'Grevenmacher', 'GG', 1),
(1927, 124, 'Echternach', 'GE', 1),
(1928, 124, 'Remich', 'GR', 1),
(1929, 124, 'Luxembourg', 'LL', 1),
(1930, 124, 'Capellen', 'LC', 1),
(1931, 124, 'Esch-sur-Alzette', 'LE', 1),
(1932, 124, 'Mersch', 'LM', 1),
(1933, 125, 'Our Lady Fatima Parish', 'OLF', 1),
(1934, 125, 'St. Anthony Parish', 'ANT', 1),
(1935, 125, 'St. Lazarus Parish', 'LAZ', 1),
(1936, 125, 'Cathedral Parish', 'CAT', 1),
(1937, 125, 'St. Lawrence Parish', 'LAW', 1),
(1938, 127, 'Antananarivo', 'AN', 1),
(1939, 127, 'Antsiranana', 'AS', 1),
(1940, 127, 'Fianarantsoa', 'FN', 1),
(1941, 127, 'Mahajanga', 'MJ', 1),
(1942, 127, 'Toamasina', 'TM', 1),
(1943, 127, 'Toliara', 'TL', 1),
(1944, 128, 'Balaka', 'BLK', 1),
(1945, 128, 'Blantyre', 'BLT', 1),
(1946, 128, 'Chikwawa', 'CKW', 1),
(1947, 128, 'Chiradzulu', 'CRD', 1),
(1948, 128, 'Chitipa', 'CTP', 1),
(1949, 128, 'Dedza', 'DDZ', 1),
(1950, 128, 'Dowa', 'DWA', 1),
(1951, 128, 'Karonga', 'KRG', 1),
(1952, 128, 'Kasungu', 'KSG', 1),
(1953, 128, 'Likoma', 'LKM', 1),
(1954, 128, 'Lilongwe', 'LLG', 1),
(1955, 128, 'Machinga', 'MCG', 1),
(1956, 128, 'Mangochi', 'MGC', 1),
(1957, 128, 'Mchinji', 'MCH', 1),
(1958, 128, 'Mulanje', 'MLJ', 1),
(1959, 128, 'Mwanza', 'MWZ', 1),
(1960, 128, 'Mzimba', 'MZM', 1),
(1961, 128, 'Ntcheu', 'NTU', 1),
(1962, 128, 'Nkhata Bay', 'NKB', 1),
(1963, 128, 'Nkhotakota', 'NKH', 1),
(1964, 128, 'Nsanje', 'NSJ', 1),
(1965, 128, 'Ntchisi', 'NTI', 1),
(1966, 128, 'Phalombe', 'PHL', 1),
(1967, 128, 'Rumphi', 'RMP', 1),
(1968, 128, 'Salima', 'SLM', 1),
(1969, 128, 'Thyolo', 'THY', 1),
(1970, 128, 'Zomba', 'ZBA', 1),
(1971, 129, 'Johor', 'JO', 1),
(1972, 129, 'Kedah', 'KE', 1),
(1973, 129, 'Kelantan', 'KL', 1),
(1974, 129, 'Labuan', 'LA', 1),
(1975, 129, 'Melaka', 'ME', 1),
(1976, 129, 'Negeri Sembilan', 'NS', 1),
(1977, 129, 'Pahang', 'PA', 1),
(1978, 129, 'Perak', 'PE', 1),
(1979, 129, 'Perlis', 'PR', 1),
(1980, 129, 'Pulau Pinang', 'PP', 1),
(1981, 129, 'Sabah', 'SA', 1),
(1982, 129, 'Sarawak', 'SR', 1),
(1983, 129, 'Selangor', 'SE', 1),
(1984, 129, 'Terengganu', 'TE', 1),
(1985, 129, 'Wilayah Persekutuan', 'WP', 1),
(1986, 130, 'Thiladhunmathi Uthuru', 'THU', 1),
(1987, 130, 'Thiladhunmathi Dhekunu', 'THD', 1),
(1988, 130, 'Miladhunmadulu Uthuru', 'MLU', 1),
(1989, 130, 'Miladhunmadulu Dhekunu', 'MLD', 1),
(1990, 130, 'Maalhosmadulu Uthuru', 'MAU', 1),
(1991, 130, 'Maalhosmadulu Dhekunu', 'MAD', 1),
(1992, 130, 'Faadhippolhu', 'FAA', 1),
(1993, 130, 'Male Atoll', 'MAA', 1),
(1994, 130, 'Ari Atoll Uthuru', 'AAU', 1),
(1995, 130, 'Ari Atoll Dheknu', 'AAD', 1),
(1996, 130, 'Felidhe Atoll', 'FEA', 1),
(1997, 130, 'Mulaku Atoll', 'MUA', 1),
(1998, 130, 'Nilandhe Atoll Uthuru', 'NAU', 1),
(1999, 130, 'Nilandhe Atoll Dhekunu', 'NAD', 1),
(2000, 130, 'Kolhumadulu', 'KLH', 1),
(2001, 130, 'Hadhdhunmathi', 'HDH', 1),
(2002, 130, 'Huvadhu Atoll Uthuru', 'HAU', 1),
(2003, 130, 'Huvadhu Atoll Dhekunu', 'HAD', 1),
(2004, 130, 'Fua Mulaku', 'FMU', 1),
(2005, 130, 'Addu', 'ADD', 1),
(2006, 131, 'Gao', 'GA', 1),
(2007, 131, 'Kayes', 'KY', 1),
(2008, 131, 'Kidal', 'KD', 1),
(2009, 131, 'Koulikoro', 'KL', 1),
(2010, 131, 'Mopti', 'MP', 1),
(2011, 131, 'Segou', 'SG', 1),
(2012, 131, 'Sikasso', 'SK', 1),
(2013, 131, 'Tombouctou', 'TB', 1),
(2014, 131, 'Bamako Capital District', 'CD', 1),
(2015, 132, 'Attard', 'ATT', 1),
(2016, 132, 'Balzan', 'BAL', 1),
(2017, 132, 'Birgu', 'BGU', 1),
(2018, 132, 'Birkirkara', 'BKK', 1),
(2019, 132, 'Birzebbuga', 'BRZ', 1),
(2020, 132, 'Bormla', 'BOR', 1),
(2021, 132, 'Dingli', 'DIN', 1),
(2022, 132, 'Fgura', 'FGU', 1),
(2023, 132, 'Floriana', 'FLO', 1),
(2024, 132, 'Gudja', 'GDJ', 1),
(2025, 132, 'Gzira', 'GZR', 1),
(2026, 132, 'Gargur', 'GRG', 1),
(2027, 132, 'Gaxaq', 'GXQ', 1),
(2028, 132, 'Hamrun', 'HMR', 1),
(2029, 132, 'Iklin', 'IKL', 1),
(2030, 132, 'Isla', 'ISL', 1),
(2031, 132, 'Kalkara', 'KLK', 1),
(2032, 132, 'Kirkop', 'KRK', 1),
(2033, 132, 'Lija', 'LIJ', 1),
(2034, 132, 'Luqa', 'LUQ', 1),
(2035, 132, 'Marsa', 'MRS', 1),
(2036, 132, 'Marsaskala', 'MKL', 1),
(2037, 132, 'Marsaxlokk', 'MXL', 1),
(2038, 132, 'Mdina', 'MDN', 1),
(2039, 132, 'Melliea', 'MEL', 1),
(2040, 132, 'Mgarr', 'MGR', 1),
(2041, 132, 'Mosta', 'MST', 1),
(2042, 132, 'Mqabba', 'MQA', 1),
(2043, 132, 'Msida', 'MSI', 1),
(2044, 132, 'Mtarfa', 'MTF', 1),
(2045, 132, 'Naxxar', 'NAX', 1),
(2046, 132, 'Paola', 'PAO', 1),
(2047, 132, 'Pembroke', 'PEM', 1),
(2048, 132, 'Pieta', 'PIE', 1),
(2049, 132, 'Qormi', 'QOR', 1),
(2050, 132, 'Qrendi', 'QRE', 1),
(2051, 132, 'Rabat', 'RAB', 1),
(2052, 132, 'Safi', 'SAF', 1),
(2053, 132, 'San Giljan', 'SGI', 1),
(2054, 132, 'Santa Lucija', 'SLU', 1),
(2055, 132, 'San Pawl il-Bahar', 'SPB', 1),
(2056, 132, 'San Gwann', 'SGW', 1),
(2057, 132, 'Santa Venera', 'SVE', 1),
(2058, 132, 'Siggiewi', 'SIG', 1),
(2059, 132, 'Sliema', 'SLM', 1),
(2060, 132, 'Swieqi', 'SWQ', 1),
(2061, 132, 'Ta Xbiex', 'TXB', 1),
(2062, 132, 'Tarxien', 'TRX', 1),
(2063, 132, 'Valletta', 'VLT', 1),
(2064, 132, 'Xgajra', 'XGJ', 1),
(2065, 132, 'Zabbar', 'ZBR', 1),
(2066, 132, 'Zebbug', 'ZBG', 1),
(2067, 132, 'Zejtun', 'ZJT', 1),
(2068, 132, 'Zurrieq', 'ZRQ', 1),
(2069, 132, 'Fontana', 'FNT', 1),
(2070, 132, 'Ghajnsielem', 'GHJ', 1),
(2071, 132, 'Gharb', 'GHR', 1),
(2072, 132, 'Ghasri', 'GHS', 1),
(2073, 132, 'Kercem', 'KRC', 1),
(2074, 132, 'Munxar', 'MUN', 1),
(2075, 132, 'Nadur', 'NAD', 1),
(2076, 132, 'Qala', 'QAL', 1),
(2077, 132, 'Victoria', 'VIC', 1),
(2078, 132, 'San Lawrenz', 'SLA', 1),
(2079, 132, 'Sannat', 'SNT', 1),
(2080, 132, 'Xagra', 'ZAG', 1),
(2081, 132, 'Xewkija', 'XEW', 1),
(2082, 132, 'Zebbug', 'ZEB', 1),
(2083, 133, 'Ailinginae', 'ALG', 1),
(2084, 133, 'Ailinglaplap', 'ALL', 1),
(2085, 133, 'Ailuk', 'ALK', 1),
(2086, 133, 'Arno', 'ARN', 1),
(2087, 133, 'Aur', 'AUR', 1),
(2088, 133, 'Bikar', 'BKR', 1),
(2089, 133, 'Bikini', 'BKN', 1),
(2090, 133, 'Bokak', 'BKK', 1),
(2091, 133, 'Ebon', 'EBN', 1),
(2092, 133, 'Enewetak', 'ENT', 1),
(2093, 133, 'Erikub', 'EKB', 1),
(2094, 133, 'Jabat', 'JBT', 1),
(2095, 133, 'Jaluit', 'JLT', 1),
(2096, 133, 'Jemo', 'JEM', 1),
(2097, 133, 'Kili', 'KIL', 1),
(2098, 133, 'Kwajalein', 'KWJ', 1),
(2099, 133, 'Lae', 'LAE', 1),
(2100, 133, 'Lib', 'LIB', 1),
(2101, 133, 'Likiep', 'LKP', 1),
(2102, 133, 'Majuro', 'MJR', 1),
(2103, 133, 'Maloelap', 'MLP', 1),
(2104, 133, 'Mejit', 'MJT', 1),
(2105, 133, 'Mili', 'MIL', 1),
(2106, 133, 'Namorik', 'NMK', 1),
(2107, 133, 'Namu', 'NAM', 1),
(2108, 133, 'Rongelap', 'RGL', 1),
(2109, 133, 'Rongrik', 'RGK', 1),
(2110, 133, 'Toke', 'TOK', 1),
(2111, 133, 'Ujae', 'UJA', 1),
(2112, 133, 'Ujelang', 'UJL', 1),
(2113, 133, 'Utirik', 'UTK', 1),
(2114, 133, 'Wotho', 'WTH', 1),
(2115, 133, 'Wotje', 'WTJ', 1),
(2116, 135, 'Adrar', 'AD', 1),
(2117, 135, 'Assaba', 'AS', 1),
(2118, 135, 'Brakna', 'BR', 1),
(2119, 135, 'Dakhlet Nouadhibou', 'DN', 1),
(2120, 135, 'Gorgol', 'GO', 1),
(2121, 135, 'Guidimaka', 'GM', 1),
(2122, 135, 'Hodh Ech Chargui', 'HC', 1),
(2123, 135, 'Hodh El Gharbi', 'HG', 1),
(2124, 135, 'Inchiri', 'IN', 1),
(2125, 135, 'Tagant', 'TA', 1),
(2126, 135, 'Tiris Zemmour', 'TZ', 1),
(2127, 135, 'Trarza', 'TR', 1),
(2128, 135, 'Nouakchott', 'NO', 1),
(2129, 136, 'Beau Bassin-Rose Hill', 'BR', 1),
(2130, 136, 'Curepipe', 'CU', 1),
(2131, 136, 'Port Louis', 'PU', 1),
(2132, 136, 'Quatre Bornes', 'QB', 1),
(2133, 136, 'Vacoas-Phoenix', 'VP', 1),
(2134, 136, 'Agalega Islands', 'AG', 1),
(2135, 136, 'Cargados Carajos Shoals (Saint Brandon Islands)', 'CC', 1),
(2136, 136, 'Rodrigues', 'RO', 1),
(2137, 136, 'Black River', 'BL', 1),
(2138, 136, 'Flacq', 'FL', 1),
(2139, 136, 'Grand Port', 'GP', 1),
(2140, 136, 'Moka', 'MO', 1),
(2141, 136, 'Pamplemousses', 'PA', 1),
(2142, 136, 'Plaines Wilhems', 'PW', 1),
(2143, 136, 'Port Louis', 'PL', 1),
(2144, 136, 'Riviere du Rempart', 'RR', 1),
(2145, 136, 'Savanne', 'SA', 1),
(2146, 138, 'Baja California Norte', 'BN', 1),
(2147, 138, 'Baja California Sur', 'BS', 1),
(2148, 138, 'Campeche', 'CA', 1),
(2149, 138, 'Chiapas', 'CI', 1),
(2150, 138, 'Chihuahua', 'CH', 1),
(2151, 138, 'Coahuila de Zaragoza', 'CZ', 1),
(2152, 138, 'Colima', 'CL', 1),
(2153, 138, 'Distrito Federal', 'DF', 1),
(2154, 138, 'Durango', 'DU', 1),
(2155, 138, 'Guanajuato', 'GA', 1),
(2156, 138, 'Guerrero', 'GE', 1),
(2157, 138, 'Hidalgo', 'HI', 1),
(2158, 138, 'Jalisco', 'JA', 1),
(2159, 138, 'Mexico', 'ME', 1),
(2160, 138, 'Michoacan de Ocampo', 'MI', 1),
(2161, 138, 'Morelos', 'MO', 1),
(2162, 138, 'Nayarit', 'NA', 1),
(2163, 138, 'Nuevo Leon', 'NL', 1),
(2164, 138, 'Oaxaca', 'OA', 1),
(2165, 138, 'Puebla', 'PU', 1),
(2166, 138, 'Queretaro de Arteaga', 'QA', 1),
(2167, 138, 'Quintana Roo', 'QR', 1),
(2168, 138, 'San Luis Potosi', 'SA', 1),
(2169, 138, 'Sinaloa', 'SI', 1),
(2170, 138, 'Sonora', 'SO', 1),
(2171, 138, 'Tabasco', 'TB', 1),
(2172, 138, 'Tamaulipas', 'TM', 1),
(2173, 138, 'Tlaxcala', 'TL', 1),
(2174, 138, 'Veracruz-Llave', 'VE', 1),
(2175, 138, 'Yucatan', 'YU', 1),
(2176, 138, 'Zacatecas', 'ZA', 1),
(2177, 139, 'Chuuk', 'C', 1),
(2178, 139, 'Kosrae', 'K', 1),
(2179, 139, 'Pohnpei', 'P', 1),
(2180, 139, 'Yap', 'Y', 1),
(2181, 140, 'Gagauzia', 'GA', 1),
(2182, 140, 'Chisinau', 'CU', 1),
(2183, 140, 'Balti', 'BA', 1),
(2184, 140, 'Cahul', 'CA', 1),
(2185, 140, 'Edinet', 'ED', 1),
(2186, 140, 'Lapusna', 'LA', 1),
(2187, 140, 'Orhei', 'OR', 1),
(2188, 140, 'Soroca', 'SO', 1),
(2189, 140, 'Tighina', 'TI', 1),
(2190, 140, 'Ungheni', 'UN', 1),
(2191, 140, 'St‚nga Nistrului', 'SN', 1),
(2192, 141, 'Fontvieille', 'FV', 1),
(2193, 141, 'La Condamine', 'LC', 1),
(2194, 141, 'Monaco-Ville', 'MV', 1),
(2195, 141, 'Monte-Carlo', 'MC', 1),
(2196, 142, 'Ulanbaatar', '1', 1),
(2197, 142, 'Orhon', '035', 1),
(2198, 142, 'Darhan uul', '037', 1),
(2199, 142, 'Hentiy', '039', 1),
(2200, 142, 'Hovsgol', '041', 1),
(2201, 142, 'Hovd', '043', 1),
(2202, 142, 'Uvs', '046', 1),
(2203, 142, 'Tov', '047', 1),
(2204, 142, 'Selenge', '049', 1),
(2205, 142, 'Suhbaatar', '051', 1),
(2206, 142, 'Omnogovi', '053', 1),
(2207, 142, 'Ovorhangay', '055', 1),
(2208, 142, 'Dzavhan', '057', 1),
(2209, 142, 'DundgovL', '059', 1),
(2210, 142, 'Dornod', '061', 1),
(2211, 142, 'Dornogov', '063', 1),
(2212, 142, 'Govi-Sumber', '064', 1),
(2213, 142, 'Govi-Altay', '065', 1),
(2214, 142, 'Bulgan', '067', 1),
(2215, 142, 'Bayanhongor', '069', 1),
(2216, 142, 'Bayan-Olgiy', '071', 1),
(2217, 142, 'Arhangay', '073', 1),
(2218, 143, 'Saint Anthony', 'A', 1),
(2219, 143, 'Saint Georges', 'G', 1),
(2220, 143, 'Saint Peter', 'P', 1),
(2221, 144, 'Agadir', 'AGD', 1),
(2222, 144, 'Al Hoceima', 'HOC', 1),
(2223, 144, 'Azilal', 'AZI', 1),
(2224, 144, 'Beni Mellal', 'BME', 1),
(2225, 144, 'Ben Slimane', 'BSL', 1),
(2226, 144, 'Boulemane', 'BLM', 1),
(2227, 144, 'Casablanca', 'CBL', 1),
(2228, 144, 'Chaouen', 'CHA', 1),
(2229, 144, 'El Jadida', 'EJA', 1),
(2230, 144, 'El Kelaa des Sraghna', 'EKS', 1),
(2231, 144, 'Er Rachidia', 'ERA', 1),
(2232, 144, 'Essaouira', 'ESS', 1),
(2233, 144, 'Fes', 'FES', 1),
(2234, 144, 'Figuig', 'FIG', 1),
(2235, 144, 'Guelmim', 'GLM', 1),
(2236, 144, 'Ifrane', 'IFR', 1),
(2237, 144, 'Kenitra', 'KEN', 1),
(2238, 144, 'Khemisset', 'KHM', 1),
(2239, 144, 'Khenifra', 'KHN', 1),
(2240, 144, 'Khouribga', 'KHO', 1),
(2241, 144, 'Laayoune', 'LYN', 1),
(2242, 144, 'Larache', 'LAR', 1),
(2243, 144, 'Marrakech', 'MRK', 1),
(2244, 144, 'Meknes', 'MKN', 1),
(2245, 144, 'Nador', 'NAD', 1),
(2246, 144, 'Ouarzazate', 'ORZ', 1),
(2247, 144, 'Oujda', 'OUJ', 1),
(2248, 144, 'Rabat-Sale', 'RSA', 1),
(2249, 144, 'Safi', 'SAF', 1),
(2250, 144, 'Settat', 'SET', 1),
(2251, 144, 'Sidi Kacem', 'SKA', 1),
(2252, 144, 'Tangier', 'TGR', 1),
(2253, 144, 'Tan-Tan', 'TAN', 1),
(2254, 144, 'Taounate', 'TAO', 1),
(2255, 144, 'Taroudannt', 'TRD', 1),
(2256, 144, 'Tata', 'TAT', 1),
(2257, 144, 'Taza', 'TAZ', 1),
(2258, 144, 'Tetouan', 'TET', 1),
(2259, 144, 'Tiznit', 'TIZ', 1),
(2260, 144, 'Ad Dakhla', 'ADK', 1),
(2261, 144, 'Boujdour', 'BJD', 1),
(2262, 144, 'Es Smara', 'ESM', 1),
(2263, 145, 'Cabo Delgado', 'CD', 1),
(2264, 145, 'Gaza', 'GZ', 1),
(2265, 145, 'Inhambane', 'IN', 1),
(2266, 145, 'Manica', 'MN', 1),
(2267, 145, 'Maputo (city)', 'MC', 1),
(2268, 145, 'Maputo', 'MP', 1),
(2269, 145, 'Nampula', 'NA', 1),
(2270, 145, 'Niassa', 'NI', 1),
(2271, 145, 'Sofala', 'SO', 1),
(2272, 145, 'Tete', 'TE', 1),
(2273, 145, 'Zambezia', 'ZA', 1),
(2274, 146, 'Ayeyarwady', 'AY', 1),
(2275, 146, 'Bago', 'BG', 1),
(2276, 146, 'Magway', 'MG', 1),
(2277, 146, 'Mandalay', 'MD', 1),
(2278, 146, 'Sagaing', 'SG', 1),
(2279, 146, 'Tanintharyi', 'TN', 1),
(2280, 146, 'Yangon', 'YG', 1),
(2281, 146, 'Chin State', 'CH', 1),
(2282, 146, 'Kachin State', 'KC', 1),
(2283, 146, 'Kayah State', 'KH', 1),
(2284, 146, 'Kayin State', 'KN', 1),
(2285, 146, 'Mon State', 'MN', 1),
(2286, 146, 'Rakhine State', 'RK', 1),
(2287, 146, 'Shan State', 'SH', 1),
(2288, 147, 'Caprivi', 'CA', 1),
(2289, 147, 'Erongo', 'ER', 1),
(2290, 147, 'Hardap', 'HA', 1),
(2291, 147, 'Karas', 'KR', 1),
(2292, 147, 'Kavango', 'KV', 1),
(2293, 147, 'Khomas', 'KH', 1),
(2294, 147, 'Kunene', 'KU', 1),
(2295, 147, 'Ohangwena', 'OW', 1),
(2296, 147, 'Omaheke', 'OK', 1),
(2297, 147, 'Omusati', 'OT', 1),
(2298, 147, 'Oshana', 'ON', 1),
(2299, 147, 'Oshikoto', 'OO', 1),
(2300, 147, 'Otjozondjupa', 'OJ', 1),
(2301, 148, 'Aiwo', 'AO', 1),
(2302, 148, 'Anabar', 'AA', 1),
(2303, 148, 'Anetan', 'AT', 1),
(2304, 148, 'Anibare', 'AI', 1),
(2305, 148, 'Baiti', 'BA', 1),
(2306, 148, 'Boe', 'BO', 1),
(2307, 148, 'Buada', 'BU', 1),
(2308, 148, 'Denigomodu', 'DE', 1),
(2309, 148, 'Ewa', 'EW', 1),
(2310, 148, 'Ijuw', 'IJ', 1),
(2311, 148, 'Meneng', 'ME', 1),
(2312, 148, 'Nibok', 'NI', 1),
(2313, 148, 'Uaboe', 'UA', 1),
(2314, 148, 'Yaren', 'YA', 1),
(2315, 149, 'Bagmati', 'BA', 1),
(2316, 149, 'Bheri', 'BH', 1),
(2317, 149, 'Dhawalagiri', 'DH', 1),
(2318, 149, 'Gandaki', 'GA', 1),
(2319, 149, 'Janakpur', 'JA', 1),
(2320, 149, 'Karnali', 'KA', 1),
(2321, 149, 'Kosi', 'KO', 1),
(2322, 149, 'Lumbini', 'LU', 1),
(2323, 149, 'Mahakali', 'MA', 1),
(2324, 149, 'Mechi', 'ME', 1),
(2325, 149, 'Narayani', 'NA', 1),
(2326, 149, 'Rapti', 'RA', 1),
(2327, 149, 'Sagarmatha', 'SA', 1),
(2328, 149, 'Seti', 'SE', 1),
(2329, 150, 'Drenthe', 'DR', 1),
(2330, 150, 'Flevoland', 'FL', 1),
(2331, 150, 'Friesland', 'FR', 1),
(2332, 150, 'Gelderland', 'GE', 1),
(2333, 150, 'Groningen', 'GR', 1),
(2334, 150, 'Limburg', 'LI', 1),
(2335, 150, 'Noord Brabant', 'NB', 1),
(2336, 150, 'Noord Holland', 'NH', 1),
(2337, 150, 'Overijssel', 'OV', 1),
(2338, 150, 'Utrecht', 'UT', 1),
(2339, 150, 'Zeeland', 'ZE', 1),
(2340, 150, 'Zuid Holland', 'ZH', 1),
(2341, 152, 'Iles Loyaute', 'L', 1),
(2342, 152, 'Nord', 'N', 1),
(2343, 152, 'Sud', 'S', 1),
(2344, 153, 'Auckland', 'AUK', 1),
(2345, 153, 'Bay of Plenty', 'BOP', 1),
(2346, 153, 'Canterbury', 'CAN', 1),
(2347, 153, 'Coromandel', 'COR', 1),
(2348, 153, 'Gisborne', 'GIS', 1),
(2349, 153, 'Fiordland', 'FIO', 1),
(2350, 153, 'Hawke''s Bay', 'HKB', 1),
(2351, 153, 'Marlborough', 'MBH', 1),
(2352, 153, 'Manawatu-Wanganui', 'MWT', 1),
(2353, 153, 'Mt Cook-Mackenzie', 'MCM', 1),
(2354, 153, 'Nelson', 'NSN', 1),
(2355, 153, 'Northland', 'NTL', 1),
(2356, 153, 'Otago', 'OTA', 1),
(2357, 153, 'Southland', 'STL', 1),
(2358, 153, 'Taranaki', 'TKI', 1),
(2359, 153, 'Wellington', 'WGN', 1),
(2360, 153, 'Waikato', 'WKO', 1),
(2361, 153, 'Wairarapa', 'WAI', 1),
(2362, 153, 'West Coast', 'WTC', 1),
(2363, 154, 'Atlantico Norte', 'AN', 1),
(2364, 154, 'Atlantico Sur', 'AS', 1),
(2365, 154, 'Boaco', 'BO', 1),
(2366, 154, 'Carazo', 'CA', 1),
(2367, 154, 'Chinandega', 'CI', 1),
(2368, 154, 'Chontales', 'CO', 1),
(2369, 154, 'Esteli', 'ES', 1),
(2370, 154, 'Granada', 'GR', 1),
(2371, 154, 'Jinotega', 'JI', 1),
(2372, 154, 'Leon', 'LE', 1),
(2373, 154, 'Madriz', 'MD', 1),
(2374, 154, 'Managua', 'MN', 1),
(2375, 154, 'Masaya', 'MS', 1),
(2376, 154, 'Matagalpa', 'MT', 1),
(2377, 154, 'Nuevo Segovia', 'NS', 1),
(2378, 154, 'Rio San Juan', 'RS', 1),
(2379, 154, 'Rivas', 'RI', 1),
(2380, 155, 'Agadez', 'AG', 1),
(2381, 155, 'Diffa', 'DF', 1),
(2382, 155, 'Dosso', 'DS', 1),
(2383, 155, 'Maradi', 'MA', 1),
(2384, 155, 'Niamey', 'NM', 1),
(2385, 155, 'Tahoua', 'TH', 1),
(2386, 155, 'Tillaberi', 'TL', 1),
(2387, 155, 'Zinder', 'ZD', 1),
(2388, 156, 'Abia', 'AB', 1),
(2389, 156, 'Abuja Federal Capital Territory', 'CT', 1),
(2390, 156, 'Adamawa', 'AD', 1),
(2391, 156, 'Akwa Ibom', 'AK', 1),
(2392, 156, 'Anambra', 'AN', 1),
(2393, 156, 'Bauchi', 'BC', 1),
(2394, 156, 'Bayelsa', 'BY', 1),
(2395, 156, 'Benue', 'BN', 1),
(2396, 156, 'Borno', 'BO', 1),
(2397, 156, 'Cross River', 'CR', 1),
(2398, 156, 'Delta', 'DE', 1),
(2399, 156, 'Ebonyi', 'EB', 1),
(2400, 156, 'Edo', 'ED', 1),
(2401, 156, 'Ekiti', 'EK', 1),
(2402, 156, 'Enugu', 'EN', 1),
(2403, 156, 'Gombe', 'GO', 1),
(2404, 156, 'Imo', 'IM', 1),
(2405, 156, 'Jigawa', 'JI', 1),
(2406, 156, 'Kaduna', 'KD', 1),
(2407, 156, 'Kano', 'KN', 1),
(2408, 156, 'Katsina', 'KT', 1),
(2409, 156, 'Kebbi', 'KE', 1),
(2410, 156, 'Kogi', 'KO', 1),
(2411, 156, 'Kwara', 'KW', 1),
(2412, 156, 'Lagos', 'LA', 1),
(2413, 156, 'Nassarawa', 'NA', 1),
(2414, 156, 'Niger', 'NI', 1),
(2415, 156, 'Ogun', 'OG', 1),
(2416, 156, 'Ondo', 'ONG', 1),
(2417, 156, 'Osun', 'OS', 1),
(2418, 156, 'Oyo', 'OY', 1),
(2419, 156, 'Plateau', 'PL', 1),
(2420, 156, 'Rivers', 'RI', 1),
(2421, 156, 'Sokoto', 'SO', 1),
(2422, 156, 'Taraba', 'TA', 1),
(2423, 156, 'Yobe', 'YO', 1),
(2424, 156, 'Zamfara', 'ZA', 1),
(2425, 159, 'Northern Islands', 'N', 1),
(2426, 159, 'Rota', 'R', 1),
(2427, 159, 'Saipan', 'S', 1),
(2428, 159, 'Tinian', 'T', 1),
(2429, 160, 'Akershus', 'AK', 1),
(2430, 160, 'Aust-Agder', 'AA', 1),
(2431, 160, 'Buskerud', 'BU', 1),
(2432, 160, 'Finnmark', 'FM', 1),
(2433, 160, 'Hedmark', 'HM', 1),
(2434, 160, 'Hordaland', 'HL', 1),
(2435, 160, 'More og Romdal', 'MR', 1),
(2436, 160, 'Nord-Trondelag', 'NT', 1),
(2437, 160, 'Nordland', 'NL', 1),
(2438, 160, 'Ostfold', 'OF', 1),
(2439, 160, 'Oppland', 'OP', 1),
(2440, 160, 'Oslo', 'OL', 1),
(2441, 160, 'Rogaland', 'RL', 1),
(2442, 160, 'Sor-Trondelag', 'ST', 1),
(2443, 160, 'Sogn og Fjordane', 'SJ', 1),
(2444, 160, 'Svalbard', 'SV', 1),
(2445, 160, 'Telemark', 'TM', 1),
(2446, 160, 'Troms', 'TR', 1),
(2447, 160, 'Vest-Agder', 'VA', 1),
(2448, 160, 'Vestfold', 'VF', 1),
(2449, 161, 'Ad Dakhiliyah', 'DA', 1),
(2450, 161, 'Al Batinah', 'BA', 1),
(2451, 161, 'Al Wusta', 'WU', 1),
(2452, 161, 'Ash Sharqiyah', 'SH', 1),
(2453, 161, 'Az Zahirah', 'ZA', 1),
(2454, 161, 'Masqat', 'MA', 1),
(2455, 161, 'Musandam', 'MU', 1),
(2456, 161, 'Zufar', 'ZU', 1),
(2457, 162, 'Balochistan', 'B', 1),
(2458, 162, 'Federally Administered Tribal Areas', 'T', 1),
(2459, 162, 'Islamabad Capital Territory', 'I', 1),
(2460, 162, 'North-West Frontier', 'N', 1),
(2461, 162, 'Punjab', 'P', 1),
(2462, 162, 'Sindh', 'S', 1),
(2463, 163, 'Aimeliik', 'AM', 1),
(2464, 163, 'Airai', 'AR', 1),
(2465, 163, 'Angaur', 'AN', 1),
(2466, 163, 'Hatohobei', 'HA', 1),
(2467, 163, 'Kayangel', 'KA', 1),
(2468, 163, 'Koror', 'KO', 1),
(2469, 163, 'Melekeok', 'ME', 1),
(2470, 163, 'Ngaraard', 'NA', 1),
(2471, 163, 'Ngarchelong', 'NG', 1),
(2472, 163, 'Ngardmau', 'ND', 1),
(2473, 163, 'Ngatpang', 'NT', 1),
(2474, 163, 'Ngchesar', 'NC', 1),
(2475, 163, 'Ngeremlengui', 'NR', 1),
(2476, 163, 'Ngiwal', 'NW', 1),
(2477, 163, 'Peleliu', 'PE', 1),
(2478, 163, 'Sonsorol', 'SO', 1),
(2479, 164, 'Bocas del Toro', 'BT', 1),
(2480, 164, 'Chiriqui', 'CH', 1),
(2481, 164, 'Cocle', 'CC', 1),
(2482, 164, 'Colon', 'CL', 1),
(2483, 164, 'Darien', 'DA', 1),
(2484, 164, 'Herrera', 'HE', 1),
(2485, 164, 'Los Santos', 'LS', 1),
(2486, 164, 'Panama', 'PA', 1),
(2487, 164, 'San Blas', 'SB', 1),
(2488, 164, 'Veraguas', 'VG', 1),
(2489, 165, 'Bougainville', 'BV', 1),
(2490, 165, 'Central', 'CE', 1),
(2491, 165, 'Chimbu', 'CH', 1),
(2492, 165, 'Eastern Highlands', 'EH', 1),
(2493, 165, 'East New Britain', 'EB', 1),
(2494, 165, 'East Sepik', 'ES', 1),
(2495, 165, 'Enga', 'EN', 1),
(2496, 165, 'Gulf', 'GU', 1),
(2497, 165, 'Madang', 'MD', 1),
(2498, 165, 'Manus', 'MN', 1),
(2499, 165, 'Milne Bay', 'MB', 1),
(2500, 165, 'Morobe', 'MR', 1),
(2501, 165, 'National Capital', 'NC', 1),
(2502, 165, 'New Ireland', 'NI', 1),
(2503, 165, 'Northern', 'NO', 1),
(2504, 165, 'Sandaun', 'SA', 1),
(2505, 165, 'Southern Highlands', 'SH', 1),
(2506, 165, 'Western', 'WE', 1),
(2507, 165, 'Western Highlands', 'WH', 1),
(2508, 165, 'West New Britain', 'WB', 1),
(2509, 166, 'Alto Paraguay', 'AG', 1),
(2510, 166, 'Alto Parana', 'AN', 1),
(2511, 166, 'Amambay', 'AM', 1),
(2512, 166, 'Asuncion', 'AS', 1),
(2513, 166, 'Boqueron', 'BO', 1),
(2514, 166, 'Caaguazu', 'CG', 1),
(2515, 166, 'Caazapa', 'CZ', 1),
(2516, 166, 'Canindeyu', 'CN', 1),
(2517, 166, 'Central', 'CE', 1),
(2518, 166, 'Concepcion', 'CC', 1),
(2519, 166, 'Cordillera', 'CD', 1),
(2520, 166, 'Guaira', 'GU', 1),
(2521, 166, 'Itapua', 'IT', 1),
(2522, 166, 'Misiones', 'MI', 1),
(2523, 166, 'Neembucu', 'NE', 1),
(2524, 166, 'Paraguari', 'PA', 1),
(2525, 166, 'Presidente Hayes', 'PH', 1),
(2526, 166, 'San Pedro', 'SP', 1),
(2527, 167, 'Amazonas', 'AM', 1),
(2528, 167, 'Ancash', 'AN', 1),
(2529, 167, 'Apurimac', 'AP', 1),
(2530, 167, 'Arequipa', 'AR', 1),
(2531, 167, 'Ayacucho', 'AY', 1),
(2532, 167, 'Cajamarca', 'CJ', 1),
(2533, 167, 'Callao', 'CL', 1),
(2534, 167, 'Cusco', 'CU', 1),
(2535, 167, 'Huancavelica', 'HV', 1),
(2536, 167, 'Huanuco', 'HO', 1),
(2537, 167, 'Ica', 'IC', 1),
(2538, 167, 'Junin', 'JU', 1),
(2539, 167, 'La Libertad', 'LD', 1),
(2540, 167, 'Lambayeque', 'LY', 1),
(2541, 167, 'Lima', 'LI', 1),
(2542, 167, 'Loreto', 'LO', 1),
(2543, 167, 'Madre de Dios', 'MD', 1),
(2544, 167, 'Moquegua', 'MO', 1),
(2545, 167, 'Pasco', 'PA', 1),
(2546, 167, 'Piura', 'PI', 1),
(2547, 167, 'Puno', 'PU', 1),
(2548, 167, 'San Martin', 'SM', 1),
(2549, 167, 'Tacna', 'TA', 1),
(2550, 167, 'Tumbes', 'TU', 1),
(2551, 167, 'Ucayali', 'UC', 1),
(2552, 168, 'Abra', 'ABR', 1),
(2553, 168, 'Agusan del Norte', 'ANO', 1),
(2554, 168, 'Agusan del Sur', 'ASU', 1),
(2555, 168, 'Aklan', 'AKL', 1),
(2556, 168, 'Albay', 'ALB', 1),
(2557, 168, 'Antique', 'ANT', 1),
(2558, 168, 'Apayao', 'APY', 1),
(2559, 168, 'Aurora', 'AUR', 1),
(2560, 168, 'Basilan', 'BAS', 1),
(2561, 168, 'Bataan', 'BTA', 1),
(2562, 168, 'Batanes', 'BTE', 1),
(2563, 168, 'Batangas', 'BTG', 1),
(2564, 168, 'Biliran', 'BLR', 1),
(2565, 168, 'Benguet', 'BEN', 1),
(2566, 168, 'Bohol', 'BOL', 1),
(2567, 168, 'Bukidnon', 'BUK', 1),
(2568, 168, 'Bulacan', 'BUL', 1),
(2569, 168, 'Cagayan', 'CAG', 1),
(2570, 168, 'Camarines Norte', 'CNO', 1),
(2571, 168, 'Camarines Sur', 'CSU', 1),
(2572, 168, 'Camiguin', 'CAM', 1),
(2573, 168, 'Capiz', 'CAP', 1),
(2574, 168, 'Catanduanes', 'CAT', 1),
(2575, 168, 'Cavite', 'CAV', 1),
(2576, 168, 'Cebu', 'CEB', 1),
(2577, 168, 'Compostela', 'CMP', 1),
(2578, 168, 'Davao del Norte', 'DNO', 1),
(2579, 168, 'Davao del Sur', 'DSU', 1),
(2580, 168, 'Davao Oriental', 'DOR', 1),
(2581, 168, 'Eastern Samar', 'ESA', 1),
(2582, 168, 'Guimaras', 'GUI', 1),
(2583, 168, 'Ifugao', 'IFU', 1),
(2584, 168, 'Ilocos Norte', 'INO', 1),
(2585, 168, 'Ilocos Sur', 'ISU', 1),
(2586, 168, 'Iloilo', 'ILO', 1),
(2587, 168, 'Isabela', 'ISA', 1),
(2588, 168, 'Kalinga', 'KAL', 1),
(2589, 168, 'Laguna', 'LAG', 1),
(2590, 168, 'Lanao del Norte', 'LNO', 1),
(2591, 168, 'Lanao del Sur', 'LSU', 1),
(2592, 168, 'La Union', 'UNI', 1),
(2593, 168, 'Leyte', 'LEY', 1),
(2594, 168, 'Maguindanao', 'MAG', 1),
(2595, 168, 'Marinduque', 'MRN', 1),
(2596, 168, 'Masbate', 'MSB', 1),
(2597, 168, 'Mindoro Occidental', 'MIC', 1),
(2598, 168, 'Mindoro Oriental', 'MIR', 1),
(2599, 168, 'Misamis Occidental', 'MSC', 1),
(2600, 168, 'Misamis Oriental', 'MOR', 1),
(2601, 168, 'Mountain', 'MOP', 1),
(2602, 168, 'Negros Occidental', 'NOC', 1),
(2603, 168, 'Negros Oriental', 'NOR', 1),
(2604, 168, 'North Cotabato', 'NCT', 1),
(2605, 168, 'Northern Samar', 'NSM', 1),
(2606, 168, 'Nueva Ecija', 'NEC', 1),
(2607, 168, 'Nueva Vizcaya', 'NVZ', 1),
(2608, 168, 'Palawan', 'PLW', 1),
(2609, 168, 'Pampanga', 'PMP', 1),
(2610, 168, 'Pangasinan', 'PNG', 1),
(2611, 168, 'Quezon', 'QZN', 1),
(2612, 168, 'Quirino', 'QRN', 1),
(2613, 168, 'Rizal', 'RIZ', 1),
(2614, 168, 'Romblon', 'ROM', 1),
(2615, 168, 'Samar', 'SMR', 1),
(2616, 168, 'Sarangani', 'SRG', 1),
(2617, 168, 'Siquijor', 'SQJ', 1),
(2618, 168, 'Sorsogon', 'SRS', 1),
(2619, 168, 'South Cotabato', 'SCO', 1),
(2620, 168, 'Southern Leyte', 'SLE', 1),
(2621, 168, 'Sultan Kudarat', 'SKU', 1),
(2622, 168, 'Sulu', 'SLU', 1),
(2623, 168, 'Surigao del Norte', 'SNO', 1),
(2624, 168, 'Surigao del Sur', 'SSU', 1),
(2625, 168, 'Tarlac', 'TAR', 1),
(2626, 168, 'Tawi-Tawi', 'TAW', 1),
(2627, 168, 'Zambales', 'ZBL', 1),
(2628, 168, 'Zamboanga del Norte', 'ZNO', 1),
(2629, 168, 'Zamboanga del Sur', 'ZSU', 1),
(2630, 168, 'Zamboanga Sibugay', 'ZSI', 1),
(2631, 170, 'Dolnoslaskie', 'DO', 1),
(2632, 170, 'Kujawsko-Pomorskie', 'KP', 1),
(2633, 170, 'Lodzkie', 'LO', 1),
(2634, 170, 'Lubelskie', 'LL', 1),
(2635, 170, 'Lubuskie', 'LU', 1),
(2636, 170, 'Malopolskie', 'ML', 1),
(2637, 170, 'Mazowieckie', 'MZ', 1),
(2638, 170, 'Opolskie', 'OP', 1),
(2639, 170, 'Podkarpackie', 'PP', 1),
(2640, 170, 'Podlaskie', 'PL', 1),
(2641, 170, 'Pomorskie', 'PM', 1),
(2642, 170, 'Slaskie', 'SL', 1),
(2643, 170, 'Swietokrzyskie', 'SW', 1),
(2644, 170, 'Warminsko-Mazurskie', 'WM', 1),
(2645, 170, 'Wielkopolskie', 'WP', 1),
(2646, 170, 'Zachodniopomorskie', 'ZA', 1),
(2647, 198, 'Saint Pierre', 'P', 1),
(2648, 198, 'Miquelon', 'M', 1),
(2649, 171, 'A&ccedil;ores', 'AC', 1),
(2650, 171, 'Aveiro', 'AV', 1),
(2651, 171, 'Beja', 'BE', 1),
(2652, 171, 'Braga', 'BR', 1),
(2653, 171, 'Bragan&ccedil;a', 'BA', 1),
(2654, 171, 'Castelo Branco', 'CB', 1),
(2655, 171, 'Coimbra', 'CO', 1),
(2656, 171, '&Eacute;vora', 'EV', 1),
(2657, 171, 'Faro', 'FA', 1),
(2658, 171, 'Guarda', 'GU', 1),
(2659, 171, 'Leiria', 'LE', 1),
(2660, 171, 'Lisboa', 'LI', 1),
(2661, 171, 'Madeira', 'ME', 1),
(2662, 171, 'Portalegre', 'PO', 1),
(2663, 171, 'Porto', 'PR', 1),
(2664, 171, 'Santar&eacute;m', 'SA', 1),
(2665, 171, 'Set&uacute;bal', 'SE', 1),
(2666, 171, 'Viana do Castelo', 'VC', 1),
(2667, 171, 'Vila Real', 'VR', 1),
(2668, 171, 'Viseu', 'VI', 1),
(2669, 173, 'Ad Dawhah', 'DW', 1),
(2670, 173, 'Al Ghuwayriyah', 'GW', 1),
(2671, 173, 'Al Jumayliyah', 'JM', 1),
(2672, 173, 'Al Khawr', 'KR', 1),
(2673, 173, 'Al Wakrah', 'WK', 1),
(2674, 173, 'Ar Rayyan', 'RN', 1),
(2675, 173, 'Jarayan al Batinah', 'JB', 1),
(2676, 173, 'Madinat ash Shamal', 'MS', 1),
(2677, 173, 'Umm Sa''id', 'UD', 1),
(2678, 173, 'Umm Salal', 'UL', 1),
(2679, 175, 'Alba', 'AB', 1),
(2680, 175, 'Arad', 'AR', 1),
(2681, 175, 'Arges', 'AG', 1),
(2682, 175, 'Bacau', 'BC', 1),
(2683, 175, 'Bihor', 'BH', 1),
(2684, 175, 'Bistrita-Nasaud', 'BN', 1),
(2685, 175, 'Botosani', 'BT', 1),
(2686, 175, 'Brasov', 'BV', 1),
(2687, 175, 'Braila', 'BR', 1),
(2688, 175, 'Bucuresti', 'B', 1),
(2689, 175, 'Buzau', 'BZ', 1),
(2690, 175, 'Caras-Severin', 'CS', 1),
(2691, 175, 'Calarasi', 'CL', 1),
(2692, 175, 'Cluj', 'CJ', 1),
(2693, 175, 'Constanta', 'CT', 1),
(2694, 175, 'Covasna', 'CV', 1),
(2695, 175, 'Dimbovita', 'DB', 1),
(2696, 175, 'Dolj', 'DJ', 1),
(2697, 175, 'Galati', 'GL', 1),
(2698, 175, 'Giurgiu', 'GR', 1),
(2699, 175, 'Gorj', 'GJ', 1),
(2700, 175, 'Harghita', 'HR', 1),
(2701, 175, 'Hunedoara', 'HD', 1),
(2702, 175, 'Ialomita', 'IL', 1),
(2703, 175, 'Iasi', 'IS', 1),
(2704, 175, 'Ilfov', 'IF', 1),
(2705, 175, 'Maramures', 'MM', 1),
(2706, 175, 'Mehedinti', 'MH', 1),
(2707, 175, 'Mures', 'MS', 1),
(2708, 175, 'Neamt', 'NT', 1),
(2709, 175, 'Olt', 'OT', 1),
(2710, 175, 'Prahova', 'PH', 1),
(2711, 175, 'Satu-Mare', 'SM', 1),
(2712, 175, 'Salaj', 'SJ', 1),
(2713, 175, 'Sibiu', 'SB', 1),
(2714, 175, 'Suceava', 'SV', 1),
(2715, 175, 'Teleorman', 'TR', 1),
(2716, 175, 'Timis', 'TM', 1),
(2717, 175, 'Tulcea', 'TL', 1),
(2718, 175, 'Vaslui', 'VS', 1),
(2719, 175, 'Valcea', 'VL', 1),
(2720, 175, 'Vrancea', 'VN', 1),
(2721, 176, 'Abakan', 'AB', 1),
(2722, 176, 'Aginskoye', 'AG', 1),
(2723, 176, 'Anadyr', 'AN', 1),
(2724, 176, 'Arkahangelsk', 'AR', 1),
(2725, 176, 'Astrakhan', 'AS', 1),
(2726, 176, 'Barnaul', 'BA', 1),
(2727, 176, 'Belgorod', 'BE', 1),
(2728, 176, 'Birobidzhan', 'BI', 1),
(2729, 176, 'Blagoveshchensk', 'BL', 1),
(2730, 176, 'Bryansk', 'BR', 1),
(2731, 176, 'Cheboksary', 'CH', 1),
(2732, 176, 'Chelyabinsk', 'CL', 1),
(2733, 176, 'Cherkessk', 'CR', 1),
(2734, 176, 'Chita', 'CI', 1),
(2735, 176, 'Dudinka', 'DU', 1),
(2736, 176, 'Elista', 'EL', 1),
(2737, 176, 'Gomo-Altaysk', 'GO', 1),
(2738, 176, 'Gorno-Altaysk', 'GA', 1),
(2739, 176, 'Groznyy', 'GR', 1),
(2740, 176, 'Irkutsk', 'IR', 1),
(2741, 176, 'Ivanovo', 'IV', 1),
(2742, 176, 'Izhevsk', 'IZ', 1),
(2743, 176, 'Kalinigrad', 'KA', 1),
(2744, 176, 'Kaluga', 'KL', 1),
(2745, 176, 'Kasnodar', 'KS', 1),
(2746, 176, 'Kazan', 'KZ', 1),
(2747, 176, 'Kemerovo', 'KE', 1),
(2748, 176, 'Khabarovsk', 'KH', 1),
(2749, 176, 'Khanty-Mansiysk', 'KM', 1),
(2750, 176, 'Kostroma', 'KO', 1),
(2751, 176, 'Krasnodar', 'KR', 1),
(2752, 176, 'Krasnoyarsk', 'KN', 1),
(2753, 176, 'Kudymkar', 'KU', 1),
(2754, 176, 'Kurgan', 'KG', 1),
(2755, 176, 'Kursk', 'KK', 1),
(2756, 176, 'Kyzyl', 'KY', 1),
(2757, 176, 'Lipetsk', 'LI', 1),
(2758, 176, 'Magadan', 'MA', 1),
(2759, 176, 'Makhachkala', 'MK', 1),
(2760, 176, 'Maykop', 'MY', 1),
(2761, 176, 'Moscow', 'MO', 1),
(2762, 176, 'Murmansk', 'MU', 1),
(2763, 176, 'Nalchik', 'NA', 1),
(2764, 176, 'Naryan Mar', 'NR', 1),
(2765, 176, 'Nazran', 'NZ', 1),
(2766, 176, 'Nizhniy Novgorod', 'NI', 1),
(2767, 176, 'Novgorod', 'NO', 1),
(2768, 176, 'Novosibirsk', 'NV', 1),
(2769, 176, 'Omsk', 'OM', 1),
(2770, 176, 'Orel', 'OR', 1),
(2771, 176, 'Orenburg', 'OE', 1),
(2772, 176, 'Palana', 'PA', 1),
(2773, 176, 'Penza', 'PE', 1),
(2774, 176, 'Perm', 'PR', 1),
(2775, 176, 'Petropavlovsk-Kamchatskiy', 'PK', 1),
(2776, 176, 'Petrozavodsk', 'PT', 1),
(2777, 176, 'Pskov', 'PS', 1),
(2778, 176, 'Rostov-na-Donu', 'RO', 1),
(2779, 176, 'Ryazan', 'RY', 1),
(2780, 176, 'Salekhard', 'SL', 1),
(2781, 176, 'Samara', 'SA', 1),
(2782, 176, 'Saransk', 'SR', 1),
(2783, 176, 'Saratov', 'SV', 1),
(2784, 176, 'Smolensk', 'SM', 1),
(2785, 176, 'St. Petersburg', 'SP', 1),
(2786, 176, 'Stavropol', 'ST', 1),
(2787, 176, 'Syktyvkar', 'SY', 1),
(2788, 176, 'Tambov', 'TA', 1),
(2789, 176, 'Tomsk', 'TO', 1),
(2790, 176, 'Tula', 'TU', 1),
(2791, 176, 'Tura', 'TR', 1),
(2792, 176, 'Tver', 'TV', 1),
(2793, 176, 'Tyumen', 'TY', 1),
(2794, 176, 'Ufa', 'UF', 1),
(2795, 176, 'Ul''yanovsk', 'UL', 1),
(2796, 176, 'Ulan-Ude', 'UU', 1),
(2797, 176, 'Ust''-Ordynskiy', 'US', 1),
(2798, 176, 'Vladikavkaz', 'VL', 1),
(2799, 176, 'Vladimir', 'VA', 1),
(2800, 176, 'Vladivostok', 'VV', 1),
(2801, 176, 'Volgograd', 'VG', 1),
(2802, 176, 'Vologda', 'VD', 1),
(2803, 176, 'Voronezh', 'VO', 1),
(2804, 176, 'Vyatka', 'VY', 1),
(2805, 176, 'Yakutsk', 'YA', 1),
(2806, 176, 'Yaroslavl', 'YR', 1),
(2807, 176, 'Yekaterinburg', 'YE', 1),
(2808, 176, 'Yoshkar-Ola', 'YO', 1),
(2809, 177, 'Butare', 'BU', 1),
(2810, 177, 'Byumba', 'BY', 1),
(2811, 177, 'Cyangugu', 'CY', 1),
(2812, 177, 'Gikongoro', 'GK', 1),
(2813, 177, 'Gisenyi', 'GS', 1),
(2814, 177, 'Gitarama', 'GT', 1),
(2815, 177, 'Kibungo', 'KG', 1),
(2816, 177, 'Kibuye', 'KY', 1),
(2817, 177, 'Kigali Rurale', 'KR', 1),
(2818, 177, 'Kigali-ville', 'KV', 1),
(2819, 177, 'Ruhengeri', 'RU', 1),
(2820, 177, 'Umutara', 'UM', 1),
(2821, 178, 'Christ Church Nichola Town', 'CCN', 1),
(2822, 178, 'Saint Anne Sandy Point', 'SAS', 1),
(2823, 178, 'Saint George Basseterre', 'SGB', 1),
(2824, 178, 'Saint George Gingerland', 'SGG', 1),
(2825, 178, 'Saint James Windward', 'SJW', 1),
(2826, 178, 'Saint John Capesterre', 'SJC', 1),
(2827, 178, 'Saint John Figtree', 'SJF', 1),
(2828, 178, 'Saint Mary Cayon', 'SMC', 1),
(2829, 178, 'Saint Paul Capesterre', 'CAP', 1),
(2830, 178, 'Saint Paul Charlestown', 'CHA', 1),
(2831, 178, 'Saint Peter Basseterre', 'SPB', 1),
(2832, 178, 'Saint Thomas Lowland', 'STL', 1),
(2833, 178, 'Saint Thomas Middle Island', 'STM', 1),
(2834, 178, 'Trinity Palmetto Point', 'TPP', 1),
(2835, 179, 'Anse-la-Raye', 'AR', 1),
(2836, 179, 'Castries', 'CA', 1),
(2837, 179, 'Choiseul', 'CH', 1),
(2838, 179, 'Dauphin', 'DA', 1),
(2839, 179, 'Dennery', 'DE', 1),
(2840, 179, 'Gros-Islet', 'GI', 1),
(2841, 179, 'Laborie', 'LA', 1),
(2842, 179, 'Micoud', 'MI', 1),
(2843, 179, 'Praslin', 'PR', 1),
(2844, 179, 'Soufriere', 'SO', 1),
(2845, 179, 'Vieux-Fort', 'VF', 1),
(2846, 180, 'Charlotte', 'C', 1),
(2847, 180, 'Grenadines', 'R', 1),
(2848, 180, 'Saint Andrew', 'A', 1),
(2849, 180, 'Saint David', 'D', 1),
(2850, 180, 'Saint George', 'G', 1),
(2851, 180, 'Saint Patrick', 'P', 1),
(2852, 181, 'A''ana', 'AN', 1),
(2853, 181, 'Aiga-i-le-Tai', 'AI', 1),
(2854, 181, 'Atua', 'AT', 1),
(2855, 181, 'Fa''asaleleaga', 'FA', 1),
(2856, 181, 'Gaga''emauga', 'GE', 1),
(2857, 181, 'Gagaifomauga', 'GF', 1),
(2858, 181, 'Palauli', 'PA', 1),
(2859, 181, 'Satupa''itea', 'SA', 1),
(2860, 181, 'Tuamasaga', 'TU', 1),
(2861, 181, 'Va''a-o-Fonoti', 'VF', 1),
(2862, 181, 'Vaisigano', 'VS', 1),
(2863, 182, 'Acquaviva', 'AC', 1),
(2864, 182, 'Borgo Maggiore', 'BM', 1),
(2865, 182, 'Chiesanuova', 'CH', 1),
(2866, 182, 'Domagnano', 'DO', 1),
(2867, 182, 'Faetano', 'FA', 1),
(2868, 182, 'Fiorentino', 'FI', 1),
(2869, 182, 'Montegiardino', 'MO', 1),
(2870, 182, 'Citta di San Marino', 'SM', 1),
(2871, 182, 'Serravalle', 'SE', 1),
(2872, 183, 'Sao Tome', 'S', 1),
(2873, 183, 'Principe', 'P', 1),
(2874, 184, 'Al Bahah', 'BH', 1),
(2875, 184, 'Al Hudud ash Shamaliyah', 'HS', 1),
(2876, 184, 'Al Jawf', 'JF', 1),
(2877, 184, 'Al Madinah', 'MD', 1),
(2878, 184, 'Al Qasim', 'QS', 1),
(2879, 184, 'Ar Riyad', 'RD', 1),
(2880, 184, 'Ash Sharqiyah (Eastern)', 'AQ', 1),
(2881, 184, '''Asir', 'AS', 1),
(2882, 184, 'Ha''il', 'HL', 1),
(2883, 184, 'Jizan', 'JZ', 1),
(2884, 184, 'Makkah', 'ML', 1),
(2885, 184, 'Najran', 'NR', 1),
(2886, 184, 'Tabuk', 'TB', 1),
(2887, 185, 'Dakar', 'DA', 1),
(2888, 185, 'Diourbel', 'DI', 1),
(2889, 185, 'Fatick', 'FA', 1),
(2890, 185, 'Kaolack', 'KA', 1),
(2891, 185, 'Kolda', 'KO', 1),
(2892, 185, 'Louga', 'LO', 1),
(2893, 185, 'Matam', 'MA', 1),
(2894, 185, 'Saint-Louis', 'SL', 1),
(2895, 185, 'Tambacounda', 'TA', 1),
(2896, 185, 'Thies', 'TH', 1),
(2897, 185, 'Ziguinchor', 'ZI', 1),
(2898, 186, 'Anse aux Pins', 'AP', 1),
(2899, 186, 'Anse Boileau', 'AB', 1),
(2900, 186, 'Anse Etoile', 'AE', 1),
(2901, 186, 'Anse Louis', 'AL', 1),
(2902, 186, 'Anse Royale', 'AR', 1),
(2903, 186, 'Baie Lazare', 'BL', 1),
(2904, 186, 'Baie Sainte Anne', 'BS', 1),
(2905, 186, 'Beau Vallon', 'BV', 1),
(2906, 186, 'Bel Air', 'BA', 1),
(2907, 186, 'Bel Ombre', 'BO', 1),
(2908, 186, 'Cascade', 'CA', 1),
(2909, 186, 'Glacis', 'GL', 1),
(2910, 186, 'Grand'' Anse (on Mahe)', 'GM', 1),
(2911, 186, 'Grand'' Anse (on Praslin)', 'GP', 1),
(2912, 186, 'La Digue', 'DG', 1),
(2913, 186, 'La Riviere Anglaise', 'RA', 1),
(2914, 186, 'Mont Buxton', 'MB', 1),
(2915, 186, 'Mont Fleuri', 'MF', 1),
(2916, 186, 'Plaisance', 'PL', 1),
(2917, 186, 'Pointe La Rue', 'PR', 1),
(2918, 186, 'Port Glaud', 'PG', 1),
(2919, 186, 'Saint Louis', 'SL', 1),
(2920, 186, 'Takamaka', 'TA', 1),
(2921, 187, 'Eastern', 'E', 1),
(2922, 187, 'Northern', 'N', 1),
(2923, 187, 'Southern', 'S', 1),
(2924, 187, 'Western', 'W', 1),
(2925, 189, 'Banskobystrický', 'BA', 1),
(2926, 189, 'Bratislavský', 'BR', 1),
(2927, 189, 'Košický', 'KO', 1),
(2928, 189, 'Nitriansky', 'NI', 1),
(2929, 189, 'Prešovský', 'PR', 1),
(2930, 189, 'Trenčiansky', 'TC', 1),
(2931, 189, 'Trnavský', 'TV', 1),
(2932, 189, 'Žilinský', 'ZI', 1),
(2933, 191, 'Central', 'CE', 1),
(2934, 191, 'Choiseul', 'CH', 1),
(2935, 191, 'Guadalcanal', 'GC', 1),
(2936, 191, 'Honiara', 'HO', 1),
(2937, 191, 'Isabel', 'IS', 1),
(2938, 191, 'Makira', 'MK', 1),
(2939, 191, 'Malaita', 'ML', 1),
(2940, 191, 'Rennell and Bellona', 'RB', 1),
(2941, 191, 'Temotu', 'TM', 1),
(2942, 191, 'Western', 'WE', 1),
(2943, 192, 'Awdal', 'AW', 1),
(2944, 192, 'Bakool', 'BK', 1),
(2945, 192, 'Banaadir', 'BN', 1),
(2946, 192, 'Bari', 'BR', 1),
(2947, 192, 'Bay', 'BY', 1),
(2948, 192, 'Galguduud', 'GA', 1),
(2949, 192, 'Gedo', 'GE', 1),
(2950, 192, 'Hiiraan', 'HI', 1),
(2951, 192, 'Jubbada Dhexe', 'JD', 1),
(2952, 192, 'Jubbada Hoose', 'JH', 1),
(2953, 192, 'Mudug', 'MU', 1),
(2954, 192, 'Nugaal', 'NU', 1),
(2955, 192, 'Sanaag', 'SA', 1),
(2956, 192, 'Shabeellaha Dhexe', 'SD', 1),
(2957, 192, 'Shabeellaha Hoose', 'SH', 1),
(2958, 192, 'Sool', 'SL', 1),
(2959, 192, 'Togdheer', 'TO', 1),
(2960, 192, 'Woqooyi Galbeed', 'WG', 1),
(2961, 193, 'Eastern Cape', 'EC', 1),
(2962, 193, 'Free State', 'FS', 1),
(2963, 193, 'Gauteng', 'GT', 1),
(2964, 193, 'KwaZulu-Natal', 'KN', 1),
(2965, 193, 'Limpopo', 'LP', 1),
(2966, 193, 'Mpumalanga', 'MP', 1),
(2967, 193, 'North West', 'NW', 1),
(2968, 193, 'Northern Cape', 'NC', 1),
(2969, 193, 'Western Cape', 'WC', 1),
(2970, 195, 'La Coru&ntilde;a', 'CA', 1),
(2971, 195, '&Aacute;lava', 'AL', 1),
(2972, 195, 'Albacete', 'AB', 1),
(2973, 195, 'Alicante', 'AC', 1),
(2974, 195, 'Almeria', 'AM', 1),
(2975, 195, 'Asturias', 'AS', 1),
(2976, 195, '&Aacute;vila', 'AV', 1),
(2977, 195, 'Badajoz', 'BJ', 1),
(2978, 195, 'Baleares', 'IB', 1),
(2979, 195, 'Barcelona', 'BA', 1),
(2980, 195, 'Burgos', 'BU', 1),
(2981, 195, 'C&aacute;ceres', 'CC', 1),
(2982, 195, 'C&aacute;diz', 'CZ', 1),
(2983, 195, 'Cantabria', 'CT', 1),
(2984, 195, 'Castell&oacute;n', 'CL', 1),
(2985, 195, 'Ceuta', 'CE', 1),
(2986, 195, 'Ciudad Real', 'CR', 1),
(2987, 195, 'C&oacute;rdoba', 'CD', 1),
(2988, 195, 'Cuenca', 'CU', 1),
(2989, 195, 'Girona', 'GI', 1),
(2990, 195, 'Granada', 'GD', 1),
(2991, 195, 'Guadalajara', 'GJ', 1),
(2992, 195, 'Guip&uacute;zcoa', 'GP', 1),
(2993, 195, 'Huelva', 'HL', 1),
(2994, 195, 'Huesca', 'HS', 1),
(2995, 195, 'Ja&eacute;n', 'JN', 1),
(2996, 195, 'La Rioja', 'RJ', 1),
(2997, 195, 'Las Palmas', 'PM', 1),
(2998, 195, 'Leon', 'LE', 1),
(2999, 195, 'Lleida', 'LL', 1),
(3000, 195, 'Lugo', 'LG', 1),
(3001, 195, 'Madrid', 'MD', 1),
(3002, 195, 'Malaga', 'MA', 1),
(3003, 195, 'Melilla', 'ML', 1),
(3004, 195, 'Murcia', 'MU', 1),
(3005, 195, 'Navarra', 'NV', 1),
(3006, 195, 'Ourense', 'OU', 1),
(3007, 195, 'Palencia', 'PL', 1),
(3008, 195, 'Pontevedra', 'PO', 1),
(3009, 195, 'Salamanca', 'SL', 1),
(3010, 195, 'Santa Cruz de Tenerife', 'SC', 1),
(3011, 195, 'Segovia', 'SG', 1),
(3012, 195, 'Sevilla', 'SV', 1),
(3013, 195, 'Soria', 'SO', 1),
(3014, 195, 'Tarragona', 'TA', 1),
(3015, 195, 'Teruel', 'TE', 1),
(3016, 195, 'Toledo', 'TO', 1),
(3017, 195, 'Valencia', 'VC', 1),
(3018, 195, 'Valladolid', 'VD', 1),
(3019, 195, 'Vizcaya', 'VZ', 1),
(3020, 195, 'Zamora', 'ZM', 1),
(3021, 195, 'Zaragoza', 'ZR', 1),
(3022, 196, 'Central', 'CE', 1),
(3023, 196, 'Eastern', 'EA', 1),
(3024, 196, 'North Central', 'NC', 1),
(3025, 196, 'Northern', 'NO', 1),
(3026, 196, 'North Western', 'NW', 1),
(3027, 196, 'Sabaragamuwa', 'SA', 1),
(3028, 196, 'Southern', 'SO', 1),
(3029, 196, 'Uva', 'UV', 1),
(3030, 196, 'Western', 'WE', 1),
(3031, 197, 'Ascension', 'A', 1),
(3032, 197, 'Saint Helena', 'S', 1),
(3033, 197, 'Tristan da Cunha', 'T', 1),
(3034, 199, 'A''ali an Nil', 'ANL', 1),
(3035, 199, 'Al Bahr al Ahmar', 'BAM', 1),
(3036, 199, 'Al Buhayrat', 'BRT', 1),
(3037, 199, 'Al Jazirah', 'JZR', 1),
(3038, 199, 'Al Khartum', 'KRT', 1),
(3039, 199, 'Al Qadarif', 'QDR', 1),
(3040, 199, 'Al Wahdah', 'WDH', 1),
(3041, 199, 'An Nil al Abyad', 'ANB', 1),
(3042, 199, 'An Nil al Azraq', 'ANZ', 1),
(3043, 199, 'Ash Shamaliyah', 'ASH', 1),
(3044, 199, 'Bahr al Jabal', 'BJA', 1),
(3045, 199, 'Gharb al Istiwa''iyah', 'GIS', 1),
(3046, 199, 'Gharb Bahr al Ghazal', 'GBG', 1),
(3047, 199, 'Gharb Darfur', 'GDA', 1),
(3048, 199, 'Gharb Kurdufan', 'GKU', 1),
(3049, 199, 'Janub Darfur', 'JDA', 1),
(3050, 199, 'Janub Kurdufan', 'JKU', 1),
(3051, 199, 'Junqali', 'JQL', 1),
(3052, 199, 'Kassala', 'KSL', 1),
(3053, 199, 'Nahr an Nil', 'NNL', 1),
(3054, 199, 'Shamal Bahr al Ghazal', 'SBG', 1),
(3055, 199, 'Shamal Darfur', 'SDA', 1),
(3056, 199, 'Shamal Kurdufan', 'SKU', 1),
(3057, 199, 'Sharq al Istiwa''iyah', 'SIS', 1),
(3058, 199, 'Sinnar', 'SNR', 1);
INSERT INTO `sh_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(3059, 199, 'Warab', 'WRB', 1),
(3060, 200, 'Brokopondo', 'BR', 1),
(3061, 200, 'Commewijne', 'CM', 1),
(3062, 200, 'Coronie', 'CR', 1),
(3063, 200, 'Marowijne', 'MA', 1),
(3064, 200, 'Nickerie', 'NI', 1),
(3065, 200, 'Para', 'PA', 1),
(3066, 200, 'Paramaribo', 'PM', 1),
(3067, 200, 'Saramacca', 'SA', 1),
(3068, 200, 'Sipaliwini', 'SI', 1),
(3069, 200, 'Wanica', 'WA', 1),
(3070, 202, 'Hhohho', 'H', 1),
(3071, 202, 'Lubombo', 'L', 1),
(3072, 202, 'Manzini', 'M', 1),
(3073, 202, 'Shishelweni', 'S', 1),
(3074, 203, 'Blekinge', 'K', 1),
(3075, 203, 'Dalarna', 'W', 1),
(3076, 203, 'G&auml;vleborg', 'X', 1),
(3077, 203, 'Gotland', 'I', 1),
(3078, 203, 'Halland', 'N', 1),
(3079, 203, 'J&auml;mtland', 'Z', 1),
(3080, 203, 'J&ouml;nk&ouml;ping', 'F', 1),
(3081, 203, 'Kalmar', 'H', 1),
(3082, 203, 'Kronoberg', 'G', 1),
(3083, 203, 'Norrbotten', 'BD', 1),
(3084, 203, '&Ouml;rebro', 'T', 1),
(3085, 203, '&Ouml;sterg&ouml;tland', 'E', 1),
(3086, 203, 'Sk&aring;ne', 'M', 1),
(3087, 203, 'S&ouml;dermanland', 'D', 1),
(3088, 203, 'Stockholm', 'AB', 1),
(3089, 203, 'Uppsala', 'C', 1),
(3090, 203, 'V&auml;rmland', 'S', 1),
(3091, 203, 'V&auml;sterbotten', 'AC', 1),
(3092, 203, 'V&auml;sternorrland', 'Y', 1),
(3093, 203, 'V&auml;stmanland', 'U', 1),
(3094, 203, 'V&auml;stra G&ouml;taland', 'O', 1),
(3095, 204, 'Aargau', 'AG', 1),
(3096, 204, 'Appenzell Ausserrhoden', 'AR', 1),
(3097, 204, 'Appenzell Innerrhoden', 'AI', 1),
(3098, 204, 'Basel-Stadt', 'BS', 1),
(3099, 204, 'Basel-Landschaft', 'BL', 1),
(3100, 204, 'Bern', 'BE', 1),
(3101, 204, 'Fribourg', 'FR', 1),
(3102, 204, 'Gen&egrave;ve', 'GE', 1),
(3103, 204, 'Glarus', 'GL', 1),
(3104, 204, 'Graub&uuml;nden', 'GR', 1),
(3105, 204, 'Jura', 'JU', 1),
(3106, 204, 'Luzern', 'LU', 1),
(3107, 204, 'Neuch&acirc;tel', 'NE', 1),
(3108, 204, 'Nidwald', 'NW', 1),
(3109, 204, 'Obwald', 'OW', 1),
(3110, 204, 'St. Gallen', 'SG', 1),
(3111, 204, 'Schaffhausen', 'SH', 1),
(3112, 204, 'Schwyz', 'SZ', 1),
(3113, 204, 'Solothurn', 'SO', 1),
(3114, 204, 'Thurgau', 'TG', 1),
(3115, 204, 'Ticino', 'TI', 1),
(3116, 204, 'Uri', 'UR', 1),
(3117, 204, 'Valais', 'VS', 1),
(3118, 204, 'Vaud', 'VD', 1),
(3119, 204, 'Zug', 'ZG', 1),
(3120, 204, 'Z&uuml;rich', 'ZH', 1),
(3121, 205, 'Al Hasakah', 'HA', 1),
(3122, 205, 'Al Ladhiqiyah', 'LA', 1),
(3123, 205, 'Al Qunaytirah', 'QU', 1),
(3124, 205, 'Ar Raqqah', 'RQ', 1),
(3125, 205, 'As Suwayda', 'SU', 1),
(3126, 205, 'Dara', 'DA', 1),
(3127, 205, 'Dayr az Zawr', 'DZ', 1),
(3128, 205, 'Dimashq', 'DI', 1),
(3129, 205, 'Halab', 'HL', 1),
(3130, 205, 'Hamah', 'HM', 1),
(3131, 205, 'Hims', 'HI', 1),
(3132, 205, 'Idlib', 'ID', 1),
(3133, 205, 'Rif Dimashq', 'RD', 1),
(3134, 205, 'Tartus', 'TA', 1),
(3135, 206, 'Chang-hua', 'CH', 1),
(3136, 206, 'Chia-i', 'CI', 1),
(3137, 206, 'Hsin-chu', 'HS', 1),
(3138, 206, 'Hua-lien', 'HL', 1),
(3139, 206, 'I-lan', 'IL', 1),
(3140, 206, 'Kao-hsiung county', 'KH', 1),
(3141, 206, 'Kin-men', 'KM', 1),
(3142, 206, 'Lien-chiang', 'LC', 1),
(3143, 206, 'Miao-li', 'ML', 1),
(3144, 206, 'Nan-t''ou', 'NT', 1),
(3145, 206, 'P''eng-hu', 'PH', 1),
(3146, 206, 'P''ing-tung', 'PT', 1),
(3147, 206, 'T''ai-chung', 'TG', 1),
(3148, 206, 'T''ai-nan', 'TA', 1),
(3149, 206, 'T''ai-pei county', 'TP', 1),
(3150, 206, 'T''ai-tung', 'TT', 1),
(3151, 206, 'T''ao-yuan', 'TY', 1),
(3152, 206, 'Yun-lin', 'YL', 1),
(3153, 206, 'Chia-i city', 'CC', 1),
(3154, 206, 'Chi-lung', 'CL', 1),
(3155, 206, 'Hsin-chu', 'HC', 1),
(3156, 206, 'T''ai-chung', 'TH', 1),
(3157, 206, 'T''ai-nan', 'TN', 1),
(3158, 206, 'Kao-hsiung city', 'KC', 1),
(3159, 206, 'T''ai-pei city', 'TC', 1),
(3160, 207, 'Gorno-Badakhstan', 'GB', 1),
(3161, 207, 'Khatlon', 'KT', 1),
(3162, 207, 'Sughd', 'SU', 1),
(3163, 208, 'Arusha', 'AR', 1),
(3164, 208, 'Dar es Salaam', 'DS', 1),
(3165, 208, 'Dodoma', 'DO', 1),
(3166, 208, 'Iringa', 'IR', 1),
(3167, 208, 'Kagera', 'KA', 1),
(3168, 208, 'Kigoma', 'KI', 1),
(3169, 208, 'Kilimanjaro', 'KJ', 1),
(3170, 208, 'Lindi', 'LN', 1),
(3171, 208, 'Manyara', 'MY', 1),
(3172, 208, 'Mara', 'MR', 1),
(3173, 208, 'Mbeya', 'MB', 1),
(3174, 208, 'Morogoro', 'MO', 1),
(3175, 208, 'Mtwara', 'MT', 1),
(3176, 208, 'Mwanza', 'MW', 1),
(3177, 208, 'Pemba North', 'PN', 1),
(3178, 208, 'Pemba South', 'PS', 1),
(3179, 208, 'Pwani', 'PW', 1),
(3180, 208, 'Rukwa', 'RK', 1),
(3181, 208, 'Ruvuma', 'RV', 1),
(3182, 208, 'Shinyanga', 'SH', 1),
(3183, 208, 'Singida', 'SI', 1),
(3184, 208, 'Tabora', 'TB', 1),
(3185, 208, 'Tanga', 'TN', 1),
(3186, 208, 'Zanzibar Central/South', 'ZC', 1),
(3187, 208, 'Zanzibar North', 'ZN', 1),
(3188, 208, 'Zanzibar Urban/West', 'ZU', 1),
(3189, 209, 'Amnat Charoen', 'Amnat Charoen', 1),
(3190, 209, 'Ang Thong', 'Ang Thong', 1),
(3191, 209, 'Ayutthaya', 'Ayutthaya', 1),
(3192, 209, 'Bangkok', 'Bangkok', 1),
(3193, 209, 'Buriram', 'Buriram', 1),
(3194, 209, 'Chachoengsao', 'Chachoengsao', 1),
(3195, 209, 'Chai Nat', 'Chai Nat', 1),
(3196, 209, 'Chaiyaphum', 'Chaiyaphum', 1),
(3197, 209, 'Chanthaburi', 'Chanthaburi', 1),
(3198, 209, 'Chiang Mai', 'Chiang Mai', 1),
(3199, 209, 'Chiang Rai', 'Chiang Rai', 1),
(3200, 209, 'Chon Buri', 'Chon Buri', 1),
(3201, 209, 'Chumphon', 'Chumphon', 1),
(3202, 209, 'Kalasin', 'Kalasin', 1),
(3203, 209, 'Kamphaeng Phet', 'Kamphaeng Phet', 1),
(3204, 209, 'Kanchanaburi', 'Kanchanaburi', 1),
(3205, 209, 'Khon Kaen', 'Khon Kaen', 1),
(3206, 209, 'Krabi', 'Krabi', 1),
(3207, 209, 'Lampang', 'Lampang', 1),
(3208, 209, 'Lamphun', 'Lamphun', 1),
(3209, 209, 'Loei', 'Loei', 1),
(3210, 209, 'Lop Buri', 'Lop Buri', 1),
(3211, 209, 'Mae Hong Son', 'Mae Hong Son', 1),
(3212, 209, 'Maha Sarakham', 'Maha Sarakham', 1),
(3213, 209, 'Mukdahan', 'Mukdahan', 1),
(3214, 209, 'Nakhon Nayok', 'Nakhon Nayok', 1),
(3215, 209, 'Nakhon Pathom', 'Nakhon Pathom', 1),
(3216, 209, 'Nakhon Phanom', 'Nakhon Phanom', 1),
(3217, 209, 'Nakhon Ratchasima', 'Nakhon Ratchasima', 1),
(3218, 209, 'Nakhon Sawan', 'Nakhon Sawan', 1),
(3219, 209, 'Nakhon Si Thammarat', 'Nakhon Si Thammarat', 1),
(3220, 209, 'Nan', 'Nan', 1),
(3221, 209, 'Narathiwat', 'Narathiwat', 1),
(3222, 209, 'Nong Bua Lamphu', 'Nong Bua Lamphu', 1),
(3223, 209, 'Nong Khai', 'Nong Khai', 1),
(3224, 209, 'Nonthaburi', 'Nonthaburi', 1),
(3225, 209, 'Pathum Thani', 'Pathum Thani', 1),
(3226, 209, 'Pattani', 'Pattani', 1),
(3227, 209, 'Phangnga', 'Phangnga', 1),
(3228, 209, 'Phatthalung', 'Phatthalung', 1),
(3229, 209, 'Phayao', 'Phayao', 1),
(3230, 209, 'Phetchabun', 'Phetchabun', 1),
(3231, 209, 'Phetchaburi', 'Phetchaburi', 1),
(3232, 209, 'Phichit', 'Phichit', 1),
(3233, 209, 'Phitsanulok', 'Phitsanulok', 1),
(3234, 209, 'Phrae', 'Phrae', 1),
(3235, 209, 'Phuket', 'Phuket', 1),
(3236, 209, 'Prachin Buri', 'Prachin Buri', 1),
(3237, 209, 'Prachuap Khiri Khan', 'Prachuap Khiri Khan', 1),
(3238, 209, 'Ranong', 'Ranong', 1),
(3239, 209, 'Ratchaburi', 'Ratchaburi', 1),
(3240, 209, 'Rayong', 'Rayong', 1),
(3241, 209, 'Roi Et', 'Roi Et', 1),
(3242, 209, 'Sa Kaeo', 'Sa Kaeo', 1),
(3243, 209, 'Sakon Nakhon', 'Sakon Nakhon', 1),
(3244, 209, 'Samut Prakan', 'Samut Prakan', 1),
(3245, 209, 'Samut Sakhon', 'Samut Sakhon', 1),
(3246, 209, 'Samut Songkhram', 'Samut Songkhram', 1),
(3247, 209, 'Sara Buri', 'Sara Buri', 1),
(3248, 209, 'Satun', 'Satun', 1),
(3249, 209, 'Sing Buri', 'Sing Buri', 1),
(3250, 209, 'Sisaket', 'Sisaket', 1),
(3251, 209, 'Songkhla', 'Songkhla', 1),
(3252, 209, 'Sukhothai', 'Sukhothai', 1),
(3253, 209, 'Suphan Buri', 'Suphan Buri', 1),
(3254, 209, 'Surat Thani', 'Surat Thani', 1),
(3255, 209, 'Surin', 'Surin', 1),
(3256, 209, 'Tak', 'Tak', 1),
(3257, 209, 'Trang', 'Trang', 1),
(3258, 209, 'Trat', 'Trat', 1),
(3259, 209, 'Ubon Ratchathani', 'Ubon Ratchathani', 1),
(3260, 209, 'Udon Thani', 'Udon Thani', 1),
(3261, 209, 'Uthai Thani', 'Uthai Thani', 1),
(3262, 209, 'Uttaradit', 'Uttaradit', 1),
(3263, 209, 'Yala', 'Yala', 1),
(3264, 209, 'Yasothon', 'Yasothon', 1),
(3265, 210, 'Kara', 'K', 1),
(3266, 210, 'Plateaux', 'P', 1),
(3267, 210, 'Savanes', 'S', 1),
(3268, 210, 'Centrale', 'C', 1),
(3269, 210, 'Maritime', 'M', 1),
(3270, 211, 'Atafu', 'A', 1),
(3271, 211, 'Fakaofo', 'F', 1),
(3272, 211, 'Nukunonu', 'N', 1),
(3273, 212, 'Ha''apai', 'H', 1),
(3274, 212, 'Tongatapu', 'T', 1),
(3275, 212, 'Vava''u', 'V', 1),
(3276, 213, 'Couva/Tabaquite/Talparo', 'CT', 1),
(3277, 213, 'Diego Martin', 'DM', 1),
(3278, 213, 'Mayaro/Rio Claro', 'MR', 1),
(3279, 213, 'Penal/Debe', 'PD', 1),
(3280, 213, 'Princes Town', 'PT', 1),
(3281, 213, 'Sangre Grande', 'SG', 1),
(3282, 213, 'San Juan/Laventille', 'SL', 1),
(3283, 213, 'Siparia', 'SI', 1),
(3284, 213, 'Tunapuna/Piarco', 'TP', 1),
(3285, 213, 'Port of Spain', 'PS', 1),
(3286, 213, 'San Fernando', 'SF', 1),
(3287, 213, 'Arima', 'AR', 1),
(3288, 213, 'Point Fortin', 'PF', 1),
(3289, 213, 'Chaguanas', 'CH', 1),
(3290, 213, 'Tobago', 'TO', 1),
(3291, 214, 'Ariana', 'AR', 1),
(3292, 214, 'Beja', 'BJ', 1),
(3293, 214, 'Ben Arous', 'BA', 1),
(3294, 214, 'Bizerte', 'BI', 1),
(3295, 214, 'Gabes', 'GB', 1),
(3296, 214, 'Gafsa', 'GF', 1),
(3297, 214, 'Jendouba', 'JE', 1),
(3298, 214, 'Kairouan', 'KR', 1),
(3299, 214, 'Kasserine', 'KS', 1),
(3300, 214, 'Kebili', 'KB', 1),
(3301, 214, 'Kef', 'KF', 1),
(3302, 214, 'Mahdia', 'MH', 1),
(3303, 214, 'Manouba', 'MN', 1),
(3304, 214, 'Medenine', 'ME', 1),
(3305, 214, 'Monastir', 'MO', 1),
(3306, 214, 'Nabeul', 'NA', 1),
(3307, 214, 'Sfax', 'SF', 1),
(3308, 214, 'Sidi', 'SD', 1),
(3309, 214, 'Siliana', 'SL', 1),
(3310, 214, 'Sousse', 'SO', 1),
(3311, 214, 'Tataouine', 'TA', 1),
(3312, 214, 'Tozeur', 'TO', 1),
(3313, 214, 'Tunis', 'TU', 1),
(3314, 214, 'Zaghouan', 'ZA', 1),
(3315, 215, 'Adana', 'ADA', 1),
(3316, 215, 'Adıyaman', 'ADI', 1),
(3317, 215, 'Afyonkarahisar', 'AFY', 1),
(3318, 215, 'Ağrı', 'AGR', 1),
(3319, 215, 'Aksaray', 'AKS', 1),
(3320, 215, 'Amasya', 'AMA', 1),
(3321, 215, 'Ankara', 'ANK', 1),
(3322, 215, 'Antalya', 'ANT', 1),
(3323, 215, 'Ardahan', 'ARD', 1),
(3324, 215, 'Artvin', 'ART', 1),
(3325, 215, 'Aydın', 'AYI', 1),
(3326, 215, 'Balıkesir', 'BAL', 1),
(3327, 215, 'Bartın', 'BAR', 1),
(3328, 215, 'Batman', 'BAT', 1),
(3329, 215, 'Bayburt', 'BAY', 1),
(3330, 215, 'Bilecik', 'BIL', 1),
(3331, 215, 'Bingöl', 'BIN', 1),
(3332, 215, 'Bitlis', 'BIT', 1),
(3333, 215, 'Bolu', 'BOL', 1),
(3334, 215, 'Burdur', 'BRD', 1),
(3335, 215, 'Bursa', 'BRS', 1),
(3336, 215, 'Çanakkale', 'CKL', 1),
(3337, 215, 'Çankırı', 'CKR', 1),
(3338, 215, 'Çorum', 'COR', 1),
(3339, 215, 'Denizli', 'DEN', 1),
(3340, 215, 'Diyarbakir', 'DIY', 1),
(3341, 215, 'Düzce', 'DUZ', 1),
(3342, 215, 'Edirne', 'EDI', 1),
(3343, 215, 'Elazığ', 'ELA', 1),
(3344, 215, 'Erzincan', 'EZC', 1),
(3345, 215, 'Erzurum', 'EZR', 1),
(3346, 215, 'Eskişehir', 'ESK', 1),
(3347, 215, 'Gaziantep', 'GAZ', 1),
(3348, 215, 'Giresun', 'GIR', 1),
(3349, 215, 'Gümüşhane', 'GMS', 1),
(3350, 215, 'Hakkari', 'HKR', 1),
(3351, 215, 'Hatay', 'HTY', 1),
(3352, 215, 'Iğdır', 'IGD', 1),
(3353, 215, 'Isparta', 'ISP', 1),
(3354, 215, 'İstanbul', 'IST', 1),
(3355, 215, 'İzmir', 'IZM', 1),
(3356, 215, 'Kahramanmaraş', 'KAH', 1),
(3357, 215, 'Karabük', 'KRB', 1),
(3358, 215, 'Karaman', 'KRM', 1),
(3359, 215, 'Kars', 'KRS', 1),
(3360, 215, 'Kastamonu', 'KAS', 1),
(3361, 215, 'Kayseri', 'KAY', 1),
(3362, 215, 'Kilis', 'KLS', 1),
(3363, 215, 'Kırıkkale', 'KRK', 1),
(3364, 215, 'Kırklareli', 'KLR', 1),
(3365, 215, 'Kırşehir', 'KRH', 1),
(3366, 215, 'Kocaeli', 'KOC', 1),
(3367, 215, 'Konya', 'KON', 1),
(3368, 215, 'Kütahya', 'KUT', 1),
(3369, 215, 'Malatya', 'MAL', 1),
(3370, 215, 'Manisa', 'MAN', 1),
(3371, 215, 'Mardin', 'MAR', 1),
(3372, 215, 'Mersin', 'MER', 1),
(3373, 215, 'Muğla', 'MUG', 1),
(3374, 215, 'Muş', 'MUS', 1),
(3375, 215, 'Nevşehir', 'NEV', 1),
(3376, 215, 'Niğde', 'NIG', 1),
(3377, 215, 'Ordu', 'ORD', 1),
(3378, 215, 'Osmaniye', 'OSM', 1),
(3379, 215, 'Rize', 'RIZ', 1),
(3380, 215, 'Sakarya', 'SAK', 1),
(3381, 215, 'Samsun', 'SAM', 1),
(3382, 215, 'Şanlıurfa', 'SAN', 1),
(3383, 215, 'Siirt', 'SII', 1),
(3384, 215, 'Sinop', 'SIN', 1),
(3385, 215, 'Şırnak', 'SIR', 1),
(3386, 215, 'Sivas', 'SIV', 1),
(3387, 215, 'Tekirdağ', 'TEL', 1),
(3388, 215, 'Tokat', 'TOK', 1),
(3389, 215, 'Trabzon', 'TRA', 1),
(3390, 215, 'Tunceli', 'TUN', 1),
(3391, 215, 'Uşak', 'USK', 1),
(3392, 215, 'Van', 'VAN', 1),
(3393, 215, 'Yalova', 'YAL', 1),
(3394, 215, 'Yozgat', 'YOZ', 1),
(3395, 215, 'Zonguldak', 'ZON', 1),
(3396, 216, 'Ahal Welayaty', 'A', 1),
(3397, 216, 'Balkan Welayaty', 'B', 1),
(3398, 216, 'Dashhowuz Welayaty', 'D', 1),
(3399, 216, 'Lebap Welayaty', 'L', 1),
(3400, 216, 'Mary Welayaty', 'M', 1),
(3401, 217, 'Ambergris Cays', 'AC', 1),
(3402, 217, 'Dellis Cay', 'DC', 1),
(3403, 217, 'French Cay', 'FC', 1),
(3404, 217, 'Little Water Cay', 'LW', 1),
(3405, 217, 'Parrot Cay', 'RC', 1),
(3406, 217, 'Pine Cay', 'PN', 1),
(3407, 217, 'Salt Cay', 'SL', 1),
(3408, 217, 'Grand Turk', 'GT', 1),
(3409, 217, 'South Caicos', 'SC', 1),
(3410, 217, 'East Caicos', 'EC', 1),
(3411, 217, 'Middle Caicos', 'MC', 1),
(3412, 217, 'North Caicos', 'NC', 1),
(3413, 217, 'Providenciales', 'PR', 1),
(3414, 217, 'West Caicos', 'WC', 1),
(3415, 218, 'Nanumanga', 'NMG', 1),
(3416, 218, 'Niulakita', 'NLK', 1),
(3417, 218, 'Niutao', 'NTO', 1),
(3418, 218, 'Funafuti', 'FUN', 1),
(3419, 218, 'Nanumea', 'NME', 1),
(3420, 218, 'Nui', 'NUI', 1),
(3421, 218, 'Nukufetau', 'NFT', 1),
(3422, 218, 'Nukulaelae', 'NLL', 1),
(3423, 218, 'Vaitupu', 'VAI', 1),
(3424, 219, 'Kalangala', 'KAL', 1),
(3425, 219, 'Kampala', 'KMP', 1),
(3426, 219, 'Kayunga', 'KAY', 1),
(3427, 219, 'Kiboga', 'KIB', 1),
(3428, 219, 'Luwero', 'LUW', 1),
(3429, 219, 'Masaka', 'MAS', 1),
(3430, 219, 'Mpigi', 'MPI', 1),
(3431, 219, 'Mubende', 'MUB', 1),
(3432, 219, 'Mukono', 'MUK', 1),
(3433, 219, 'Nakasongola', 'NKS', 1),
(3434, 219, 'Rakai', 'RAK', 1),
(3435, 219, 'Sembabule', 'SEM', 1),
(3436, 219, 'Wakiso', 'WAK', 1),
(3437, 219, 'Bugiri', 'BUG', 1),
(3438, 219, 'Busia', 'BUS', 1),
(3439, 219, 'Iganga', 'IGA', 1),
(3440, 219, 'Jinja', 'JIN', 1),
(3441, 219, 'Kaberamaido', 'KAB', 1),
(3442, 219, 'Kamuli', 'KML', 1),
(3443, 219, 'Kapchorwa', 'KPC', 1),
(3444, 219, 'Katakwi', 'KTK', 1),
(3445, 219, 'Kumi', 'KUM', 1),
(3446, 219, 'Mayuge', 'MAY', 1),
(3447, 219, 'Mbale', 'MBA', 1),
(3448, 219, 'Pallisa', 'PAL', 1),
(3449, 219, 'Sironko', 'SIR', 1),
(3450, 219, 'Soroti', 'SOR', 1),
(3451, 219, 'Tororo', 'TOR', 1),
(3452, 219, 'Adjumani', 'ADJ', 1),
(3453, 219, 'Apac', 'APC', 1),
(3454, 219, 'Arua', 'ARU', 1),
(3455, 219, 'Gulu', 'GUL', 1),
(3456, 219, 'Kitgum', 'KIT', 1),
(3457, 219, 'Kotido', 'KOT', 1),
(3458, 219, 'Lira', 'LIR', 1),
(3459, 219, 'Moroto', 'MRT', 1),
(3460, 219, 'Moyo', 'MOY', 1),
(3461, 219, 'Nakapiripirit', 'NAK', 1),
(3462, 219, 'Nebbi', 'NEB', 1),
(3463, 219, 'Pader', 'PAD', 1),
(3464, 219, 'Yumbe', 'YUM', 1),
(3465, 219, 'Bundibugyo', 'BUN', 1),
(3466, 219, 'Bushenyi', 'BSH', 1),
(3467, 219, 'Hoima', 'HOI', 1),
(3468, 219, 'Kabale', 'KBL', 1),
(3469, 219, 'Kabarole', 'KAR', 1),
(3470, 219, 'Kamwenge', 'KAM', 1),
(3471, 219, 'Kanungu', 'KAN', 1),
(3472, 219, 'Kasese', 'KAS', 1),
(3473, 219, 'Kibaale', 'KBA', 1),
(3474, 219, 'Kisoro', 'KIS', 1),
(3475, 219, 'Kyenjojo', 'KYE', 1),
(3476, 219, 'Masindi', 'MSN', 1),
(3477, 219, 'Mbarara', 'MBR', 1),
(3478, 219, 'Ntungamo', 'NTU', 1),
(3479, 219, 'Rukungiri', 'RUK', 1),
(3480, 220, 'Cherkasy', 'CK', 1),
(3481, 220, 'Chernihiv', 'CH', 1),
(3482, 220, 'Chernivtsi', 'CV', 1),
(3483, 220, 'Crimea', 'CR', 1),
(3484, 220, 'Dnipropetrovs''k', 'DN', 1),
(3485, 220, 'Donets''k', 'DO', 1),
(3486, 220, 'Ivano-Frankivs''k', 'IV', 1),
(3487, 220, 'Kharkiv Kherson', 'KL', 1),
(3488, 220, 'Khmel''nyts''kyy', 'KM', 1),
(3489, 220, 'Kirovohrad', 'KR', 1),
(3490, 220, 'Kiev', 'KV', 1),
(3491, 220, 'Kyyiv', 'KY', 1),
(3492, 220, 'Luhans''k', 'LU', 1),
(3493, 220, 'L''viv', 'LV', 1),
(3494, 220, 'Mykolayiv', 'MY', 1),
(3495, 220, 'Odesa', 'OD', 1),
(3496, 220, 'Poltava', 'PO', 1),
(3497, 220, 'Rivne', 'RI', 1),
(3498, 220, 'Sevastopol', 'SE', 1),
(3499, 220, 'Sumy', 'SU', 1),
(3500, 220, 'Ternopil''', 'TE', 1),
(3501, 220, 'Vinnytsya', 'VI', 1),
(3502, 220, 'Volyn''', 'VO', 1),
(3503, 220, 'Zakarpattya', 'ZK', 1),
(3504, 220, 'Zaporizhzhya', 'ZA', 1),
(3505, 220, 'Zhytomyr', 'ZH', 1),
(3506, 221, 'Abu Zaby', 'AZ', 1),
(3507, 221, '''Ajman', 'AJ', 1),
(3508, 221, 'Al Fujayrah', 'FU', 1),
(3509, 221, 'Ash Shariqah', 'SH', 1),
(3510, 221, 'Dubayy', 'DU', 1),
(3511, 221, 'R''as al Khaymah', 'RK', 1),
(3512, 221, 'Umm al Qaywayn', 'UQ', 1),
(3513, 222, 'Aberdeen', 'ABN', 1),
(3514, 222, 'Aberdeenshire', 'ABNS', 1),
(3515, 222, 'Anglesey', 'ANG', 1),
(3516, 222, 'Angus', 'AGS', 1),
(3517, 222, 'Argyll and Bute', 'ARY', 1),
(3518, 222, 'Bedfordshire', 'BEDS', 1),
(3519, 222, 'Berkshire', 'BERKS', 1),
(3520, 222, 'Blaenau Gwent', 'BLA', 1),
(3521, 222, 'Bridgend', 'BRI', 1),
(3522, 222, 'Bristol', 'BSTL', 1),
(3523, 222, 'Buckinghamshire', 'BUCKS', 1),
(3524, 222, 'Caerphilly', 'CAE', 1),
(3525, 222, 'Cambridgeshire', 'CAMBS', 1),
(3526, 222, 'Cardiff', 'CDF', 1),
(3527, 222, 'Carmarthenshire', 'CARM', 1),
(3528, 222, 'Ceredigion', 'CDGN', 1),
(3529, 222, 'Cheshire', 'CHES', 1),
(3530, 222, 'Clackmannanshire', 'CLACK', 1),
(3531, 222, 'Conwy', 'CON', 1),
(3532, 222, 'Cornwall', 'CORN', 1),
(3533, 222, 'Denbighshire', 'DNBG', 1),
(3534, 222, 'Derbyshire', 'DERBY', 1),
(3535, 222, 'Devon', 'DVN', 1),
(3536, 222, 'Dorset', 'DOR', 1),
(3537, 222, 'Dumfries and Galloway', 'DGL', 1),
(3538, 222, 'Dundee', 'DUND', 1),
(3539, 222, 'Durham', 'DHM', 1),
(3540, 222, 'East Ayrshire', 'ARYE', 1),
(3541, 222, 'East Dunbartonshire', 'DUNBE', 1),
(3542, 222, 'East Lothian', 'LOTE', 1),
(3543, 222, 'East Renfrewshire', 'RENE', 1),
(3544, 222, 'East Riding of Yorkshire', 'ERYS', 1),
(3545, 222, 'East Sussex', 'SXE', 1),
(3546, 222, 'Edinburgh', 'EDIN', 1),
(3547, 222, 'Essex', 'ESX', 1),
(3548, 222, 'Falkirk', 'FALK', 1),
(3549, 222, 'Fife', 'FFE', 1),
(3550, 222, 'Flintshire', 'FLINT', 1),
(3551, 222, 'Glasgow', 'GLAS', 1),
(3552, 222, 'Gloucestershire', 'GLOS', 1),
(3553, 222, 'Greater London', 'LDN', 1),
(3554, 222, 'Greater Manchester', 'MCH', 1),
(3555, 222, 'Gwynedd', 'GDD', 1),
(3556, 222, 'Hampshire', 'HANTS', 1),
(3557, 222, 'Herefordshire', 'HWR', 1),
(3558, 222, 'Hertfordshire', 'HERTS', 1),
(3559, 222, 'Highlands', 'HLD', 1),
(3560, 222, 'Inverclyde', 'IVER', 1),
(3561, 222, 'Isle of Wight', 'IOW', 1),
(3562, 222, 'Kent', 'KNT', 1),
(3563, 222, 'Lancashire', 'LANCS', 1),
(3564, 222, 'Leicestershire', 'LEICS', 1),
(3565, 222, 'Lincolnshire', 'LINCS', 1),
(3566, 222, 'Merseyside', 'MSY', 1),
(3567, 222, 'Merthyr Tydfil', 'MERT', 1),
(3568, 222, 'Midlothian', 'MLOT', 1),
(3569, 222, 'Monmouthshire', 'MMOUTH', 1),
(3570, 222, 'Moray', 'MORAY', 1),
(3571, 222, 'Neath Port Talbot', 'NPRTAL', 1),
(3572, 222, 'Newport', 'NEWPT', 1),
(3573, 222, 'Norfolk', 'NOR', 1),
(3574, 222, 'North Ayrshire', 'ARYN', 1),
(3575, 222, 'North Lanarkshire', 'LANN', 1),
(3576, 222, 'North Yorkshire', 'YSN', 1),
(3577, 222, 'Northamptonshire', 'NHM', 1),
(3578, 222, 'Northumberland', 'NLD', 1),
(3579, 222, 'Nottinghamshire', 'NOT', 1),
(3580, 222, 'Orkney Islands', 'ORK', 1),
(3581, 222, 'Oxfordshire', 'OFE', 1),
(3582, 222, 'Pembrokeshire', 'PEM', 1),
(3583, 222, 'Perth and Kinross', 'PERTH', 1),
(3584, 222, 'Powys', 'PWS', 1),
(3585, 222, 'Renfrewshire', 'REN', 1),
(3586, 222, 'Rhondda Cynon Taff', 'RHON', 1),
(3587, 222, 'Rutland', 'RUT', 1),
(3588, 222, 'Scottish Borders', 'BOR', 1),
(3589, 222, 'Shetland Islands', 'SHET', 1),
(3590, 222, 'Shropshire', 'SPE', 1),
(3591, 222, 'Somerset', 'SOM', 1),
(3592, 222, 'South Ayrshire', 'ARYS', 1),
(3593, 222, 'South Lanarkshire', 'LANS', 1),
(3594, 222, 'South Yorkshire', 'YSS', 1),
(3595, 222, 'Staffordshire', 'SFD', 1),
(3596, 222, 'Stirling', 'STIR', 1),
(3597, 222, 'Suffolk', 'SFK', 1),
(3598, 222, 'Surrey', 'SRY', 1),
(3599, 222, 'Swansea', 'SWAN', 1),
(3600, 222, 'Torfaen', 'TORF', 1),
(3601, 222, 'Tyne and Wear', 'TWR', 1),
(3602, 222, 'Vale of Glamorgan', 'VGLAM', 1),
(3603, 222, 'Warwickshire', 'WARKS', 1),
(3604, 222, 'West Dunbartonshire', 'WDUN', 1),
(3605, 222, 'West Lothian', 'WLOT', 1),
(3606, 222, 'West Midlands', 'WMD', 1),
(3607, 222, 'West Sussex', 'SXW', 1),
(3608, 222, 'West Yorkshire', 'YSW', 1),
(3609, 222, 'Western Isles', 'WIL', 1),
(3610, 222, 'Wiltshire', 'WLT', 1),
(3611, 222, 'Worcestershire', 'WORCS', 1),
(3612, 222, 'Wrexham', 'WRX', 1),
(3613, 223, 'Alabama', 'AL', 1),
(3614, 223, 'Alaska', 'AK', 1),
(3615, 223, 'American Samoa', 'AS', 1),
(3616, 223, 'Arizona', 'AZ', 1),
(3617, 223, 'Arkansas', 'AR', 1),
(3618, 223, 'Armed Forces Africa', 'AF', 1),
(3619, 223, 'Armed Forces Americas', 'AA', 1),
(3620, 223, 'Armed Forces Canada', 'AC', 1),
(3621, 223, 'Armed Forces Europe', 'AE', 1),
(3622, 223, 'Armed Forces Middle East', 'AM', 1),
(3623, 223, 'Armed Forces Pacific', 'AP', 1),
(3624, 223, 'California', 'CA', 1),
(3625, 223, 'Colorado', 'CO', 1),
(3626, 223, 'Connecticut', 'CT', 1),
(3627, 223, 'Delaware', 'DE', 1),
(3628, 223, 'District of Columbia', 'DC', 1),
(3629, 223, 'Federated States Of Micronesia', 'FM', 1),
(3630, 223, 'Florida', 'FL', 1),
(3631, 223, 'Georgia', 'GA', 1),
(3632, 223, 'Guam', 'GU', 1),
(3633, 223, 'Hawaii', 'HI', 1),
(3634, 223, 'Idaho', 'ID', 1),
(3635, 223, 'Illinois', 'IL', 1),
(3636, 223, 'Indiana', 'IN', 1),
(3637, 223, 'Iowa', 'IA', 1),
(3638, 223, 'Kansas', 'KS', 1),
(3639, 223, 'Kentucky', 'KY', 1),
(3640, 223, 'Louisiana', 'LA', 1),
(3641, 223, 'Maine', 'ME', 1),
(3642, 223, 'Marshall Islands', 'MH', 1),
(3643, 223, 'Maryland', 'MD', 1),
(3644, 223, 'Massachusetts', 'MA', 1),
(3645, 223, 'Michigan', 'MI', 1),
(3646, 223, 'Minnesota', 'MN', 1),
(3647, 223, 'Mississippi', 'MS', 1),
(3648, 223, 'Missouri', 'MO', 1),
(3649, 223, 'Montana', 'MT', 1),
(3650, 223, 'Nebraska', 'NE', 1),
(3651, 223, 'Nevada', 'NV', 1),
(3652, 223, 'New Hampshire', 'NH', 1),
(3653, 223, 'New Jersey', 'NJ', 1),
(3654, 223, 'New Mexico', 'NM', 1),
(3655, 223, 'New York', 'NY', 1),
(3656, 223, 'North Carolina', 'NC', 1),
(3657, 223, 'North Dakota', 'ND', 1),
(3658, 223, 'Northern Mariana Islands', 'MP', 1),
(3659, 223, 'Ohio', 'OH', 1),
(3660, 223, 'Oklahoma', 'OK', 1),
(3661, 223, 'Oregon', 'OR', 1),
(3662, 223, 'Palau', 'PW', 1),
(3663, 223, 'Pennsylvania', 'PA', 1),
(3664, 223, 'Puerto Rico', 'PR', 1),
(3665, 223, 'Rhode Island', 'RI', 1),
(3666, 223, 'South Carolina', 'SC', 1),
(3667, 223, 'South Dakota', 'SD', 1),
(3668, 223, 'Tennessee', 'TN', 1),
(3669, 223, 'Texas', 'TX', 1),
(3670, 223, 'Utah', 'UT', 1),
(3671, 223, 'Vermont', 'VT', 1),
(3672, 223, 'Virgin Islands', 'VI', 1),
(3673, 223, 'Virginia', 'VA', 1),
(3674, 223, 'Washington', 'WA', 1),
(3675, 223, 'West Virginia', 'WV', 1),
(3676, 223, 'Wisconsin', 'WI', 1),
(3677, 223, 'Wyoming', 'WY', 1),
(3678, 224, 'Baker Island', 'BI', 1),
(3679, 224, 'Howland Island', 'HI', 1),
(3680, 224, 'Jarvis Island', 'JI', 1),
(3681, 224, 'Johnston Atoll', 'JA', 1),
(3682, 224, 'Kingman Reef', 'KR', 1),
(3683, 224, 'Midway Atoll', 'MA', 1),
(3684, 224, 'Navassa Island', 'NI', 1),
(3685, 224, 'Palmyra Atoll', 'PA', 1),
(3686, 224, 'Wake Island', 'WI', 1),
(3687, 225, 'Artigas', 'AR', 1),
(3688, 225, 'Canelones', 'CA', 1),
(3689, 225, 'Cerro Largo', 'CL', 1),
(3690, 225, 'Colonia', 'CO', 1),
(3691, 225, 'Durazno', 'DU', 1),
(3692, 225, 'Flores', 'FS', 1),
(3693, 225, 'Florida', 'FA', 1),
(3694, 225, 'Lavalleja', 'LA', 1),
(3695, 225, 'Maldonado', 'MA', 1),
(3696, 225, 'Montevideo', 'MO', 1),
(3697, 225, 'Paysandu', 'PA', 1),
(3698, 225, 'Rio Negro', 'RN', 1),
(3699, 225, 'Rivera', 'RV', 1),
(3700, 225, 'Rocha', 'RO', 1),
(3701, 225, 'Salto', 'SL', 1),
(3702, 225, 'San Jose', 'SJ', 1),
(3703, 225, 'Soriano', 'SO', 1),
(3704, 225, 'Tacuarembo', 'TA', 1),
(3705, 225, 'Treinta y Tres', 'TT', 1),
(3706, 226, 'Andijon', 'AN', 1),
(3707, 226, 'Buxoro', 'BU', 1),
(3708, 226, 'Farg''ona', 'FA', 1),
(3709, 226, 'Jizzax', 'JI', 1),
(3710, 226, 'Namangan', 'NG', 1),
(3711, 226, 'Navoiy', 'NW', 1),
(3712, 226, 'Qashqadaryo', 'QA', 1),
(3713, 226, 'Qoraqalpog''iston Republikasi', 'QR', 1),
(3714, 226, 'Samarqand', 'SA', 1),
(3715, 226, 'Sirdaryo', 'SI', 1),
(3716, 226, 'Surxondaryo', 'SU', 1),
(3717, 226, 'Toshkent City', 'TK', 1),
(3718, 226, 'Toshkent Region', 'TO', 1),
(3719, 226, 'Xorazm', 'XO', 1),
(3720, 227, 'Malampa', 'MA', 1),
(3721, 227, 'Penama', 'PE', 1),
(3722, 227, 'Sanma', 'SA', 1),
(3723, 227, 'Shefa', 'SH', 1),
(3724, 227, 'Tafea', 'TA', 1),
(3725, 227, 'Torba', 'TO', 1),
(3726, 229, 'Amazonas', 'AM', 1),
(3727, 229, 'Anzoategui', 'AN', 1),
(3728, 229, 'Apure', 'AP', 1),
(3729, 229, 'Aragua', 'AR', 1),
(3730, 229, 'Barinas', 'BA', 1),
(3731, 229, 'Bolivar', 'BO', 1),
(3732, 229, 'Carabobo', 'CA', 1),
(3733, 229, 'Cojedes', 'CO', 1),
(3734, 229, 'Delta Amacuro', 'DA', 1),
(3735, 229, 'Dependencias Federales', 'DF', 1),
(3736, 229, 'Distrito Federal', 'DI', 1),
(3737, 229, 'Falcon', 'FA', 1),
(3738, 229, 'Guarico', 'GU', 1),
(3739, 229, 'Lara', 'LA', 1),
(3740, 229, 'Merida', 'ME', 1),
(3741, 229, 'Miranda', 'MI', 1),
(3742, 229, 'Monagas', 'MO', 1),
(3743, 229, 'Nueva Esparta', 'NE', 1),
(3744, 229, 'Portuguesa', 'PO', 1),
(3745, 229, 'Sucre', 'SU', 1),
(3746, 229, 'Tachira', 'TA', 1),
(3747, 229, 'Trujillo', 'TR', 1),
(3748, 229, 'Vargas', 'VA', 1),
(3749, 229, 'Yaracuy', 'YA', 1),
(3750, 229, 'Zulia', 'ZU', 1),
(3751, 230, 'An Giang', 'AG', 1),
(3752, 230, 'Bac Giang', 'BG', 1),
(3753, 230, 'Bac Kan', 'BK', 1),
(3754, 230, 'Bac Lieu', 'BL', 1),
(3755, 230, 'Bac Ninh', 'BC', 1),
(3756, 230, 'Ba Ria-Vung Tau', 'BR', 1),
(3757, 230, 'Ben Tre', 'BN', 1),
(3758, 230, 'Binh Dinh', 'BH', 1),
(3759, 230, 'Binh Duong', 'BU', 1),
(3760, 230, 'Binh Phuoc', 'BP', 1),
(3761, 230, 'Binh Thuan', 'BT', 1),
(3762, 230, 'Ca Mau', 'CM', 1),
(3763, 230, 'Can Tho', 'CT', 1),
(3764, 230, 'Cao Bang', 'CB', 1),
(3765, 230, 'Dak Lak', 'DL', 1),
(3766, 230, 'Dak Nong', 'DG', 1),
(3767, 230, 'Da Nang', 'DN', 1),
(3768, 230, 'Dien Bien', 'DB', 1),
(3769, 230, 'Dong Nai', 'DI', 1),
(3770, 230, 'Dong Thap', 'DT', 1),
(3771, 230, 'Gia Lai', 'GL', 1),
(3772, 230, 'Ha Giang', 'HG', 1),
(3773, 230, 'Hai Duong', 'HD', 1),
(3774, 230, 'Hai Phong', 'HP', 1),
(3775, 230, 'Ha Nam', 'HM', 1),
(3776, 230, 'Ha Noi', 'HI', 1),
(3777, 230, 'Ha Tay', 'HT', 1),
(3778, 230, 'Ha Tinh', 'HH', 1),
(3779, 230, 'Hoa Binh', 'HB', 1),
(3780, 230, 'Ho Chi Minh City', 'HC', 1),
(3781, 230, 'Hau Giang', 'HU', 1),
(3782, 230, 'Hung Yen', 'HY', 1),
(3783, 232, 'Saint Croix', 'C', 1),
(3784, 232, 'Saint John', 'J', 1),
(3785, 232, 'Saint Thomas', 'T', 1),
(3786, 233, 'Alo', 'A', 1),
(3787, 233, 'Sigave', 'S', 1),
(3788, 233, 'Wallis', 'W', 1),
(3789, 235, 'Abyan', 'AB', 1),
(3790, 235, 'Adan', 'AD', 1),
(3791, 235, 'Amran', 'AM', 1),
(3792, 235, 'Al Bayda', 'BA', 1),
(3793, 235, 'Ad Dali', 'DA', 1),
(3794, 235, 'Dhamar', 'DH', 1),
(3795, 235, 'Hadramawt', 'HD', 1),
(3796, 235, 'Hajjah', 'HJ', 1),
(3797, 235, 'Al Hudaydah', 'HU', 1),
(3798, 235, 'Ibb', 'IB', 1),
(3799, 235, 'Al Jawf', 'JA', 1),
(3800, 235, 'Lahij', 'LA', 1),
(3801, 235, 'Ma''rib', 'MA', 1),
(3802, 235, 'Al Mahrah', 'MR', 1),
(3803, 235, 'Al Mahwit', 'MW', 1),
(3804, 235, 'Sa''dah', 'SD', 1),
(3805, 235, 'San''a', 'SN', 1),
(3806, 235, 'Shabwah', 'SH', 1),
(3807, 235, 'Ta''izz', 'TA', 1),
(3812, 237, 'Bas-Congo', 'BC', 1),
(3813, 237, 'Bandundu', 'BN', 1),
(3814, 237, 'Equateur', 'EQ', 1),
(3815, 237, 'Katanga', 'KA', 1),
(3816, 237, 'Kasai-Oriental', 'KE', 1),
(3817, 237, 'Kinshasa', 'KN', 1),
(3818, 237, 'Kasai-Occidental', 'KW', 1),
(3819, 237, 'Maniema', 'MA', 1),
(3820, 237, 'Nord-Kivu', 'NK', 1),
(3821, 237, 'Orientale', 'OR', 1),
(3822, 237, 'Sud-Kivu', 'SK', 1),
(3823, 238, 'Central', 'CE', 1),
(3824, 238, 'Copperbelt', 'CB', 1),
(3825, 238, 'Eastern', 'EA', 1),
(3826, 238, 'Luapula', 'LP', 1),
(3827, 238, 'Lusaka', 'LK', 1),
(3828, 238, 'Northern', 'NO', 1),
(3829, 238, 'North-Western', 'NW', 1),
(3830, 238, 'Southern', 'SO', 1),
(3831, 238, 'Western', 'WE', 1),
(3832, 239, 'Bulawayo', 'BU', 1),
(3833, 239, 'Harare', 'HA', 1),
(3834, 239, 'Manicaland', 'ML', 1),
(3835, 239, 'Mashonaland Central', 'MC', 1),
(3836, 239, 'Mashonaland East', 'ME', 1),
(3837, 239, 'Mashonaland West', 'MW', 1),
(3838, 239, 'Masvingo', 'MV', 1),
(3839, 239, 'Matabeleland North', 'MN', 1),
(3840, 239, 'Matabeleland South', 'MS', 1),
(3841, 239, 'Midlands', 'MD', 1),
(3861, 105, 'Campobasso', 'CB', 1),
(3862, 105, 'Carbonia-Iglesias', 'CI', 1),
(3863, 105, 'Caserta', 'CE', 1),
(3864, 105, 'Catania', 'CT', 1),
(3865, 105, 'Catanzaro', 'CZ', 1),
(3866, 105, 'Chieti', 'CH', 1),
(3867, 105, 'Como', 'CO', 1),
(3868, 105, 'Cosenza', 'CS', 1),
(3869, 105, 'Cremona', 'CR', 1),
(3870, 105, 'Crotone', 'KR', 1),
(3871, 105, 'Cuneo', 'CN', 1),
(3872, 105, 'Enna', 'EN', 1),
(3873, 105, 'Ferrara', 'FE', 1),
(3874, 105, 'Firenze', 'FI', 1),
(3875, 105, 'Foggia', 'FG', 1),
(3876, 105, 'Forli-Cesena', 'FC', 1),
(3877, 105, 'Frosinone', 'FR', 1),
(3878, 105, 'Genova', 'GE', 1),
(3879, 105, 'Gorizia', 'GO', 1),
(3880, 105, 'Grosseto', 'GR', 1),
(3881, 105, 'Imperia', 'IM', 1),
(3882, 105, 'Isernia', 'IS', 1),
(3883, 105, 'L&#39;Aquila', 'AQ', 1),
(3884, 105, 'La Spezia', 'SP', 1),
(3885, 105, 'Latina', 'LT', 1),
(3886, 105, 'Lecce', 'LE', 1),
(3887, 105, 'Lecco', 'LC', 1),
(3888, 105, 'Livorno', 'LI', 1),
(3889, 105, 'Lodi', 'LO', 1),
(3890, 105, 'Lucca', 'LU', 1),
(3891, 105, 'Macerata', 'MC', 1),
(3892, 105, 'Mantova', 'MN', 1),
(3893, 105, 'Massa-Carrara', 'MS', 1),
(3894, 105, 'Matera', 'MT', 1),
(3895, 105, 'Medio Campidano', 'VS', 1),
(3896, 105, 'Messina', 'ME', 1),
(3897, 105, 'Milano', 'MI', 1),
(3898, 105, 'Modena', 'MO', 1),
(3899, 105, 'Napoli', 'NA', 1),
(3900, 105, 'Novara', 'NO', 1),
(3901, 105, 'Nuoro', 'NU', 1),
(3902, 105, 'Ogliastra', 'OG', 1),
(3903, 105, 'Olbia-Tempio', 'OT', 1),
(3904, 105, 'Oristano', 'OR', 1),
(3905, 105, 'Padova', 'PD', 1),
(3906, 105, 'Palermo', 'PA', 1),
(3907, 105, 'Parma', 'PR', 1),
(3908, 105, 'Pavia', 'PV', 1),
(3909, 105, 'Perugia', 'PG', 1),
(3910, 105, 'Pesaro e Urbino', 'PU', 1),
(3911, 105, 'Pescara', 'PE', 1),
(3912, 105, 'Piacenza', 'PC', 1),
(3913, 105, 'Pisa', 'PI', 1),
(3914, 105, 'Pistoia', 'PT', 1),
(3915, 105, 'Pordenone', 'PN', 1),
(3916, 105, 'Potenza', 'PZ', 1),
(3917, 105, 'Prato', 'PO', 1),
(3918, 105, 'Ragusa', 'RG', 1),
(3919, 105, 'Ravenna', 'RA', 1),
(3920, 105, 'Reggio Calabria', 'RC', 1),
(3921, 105, 'Reggio Emilia', 'RE', 1),
(3922, 105, 'Rieti', 'RI', 1),
(3923, 105, 'Rimini', 'RN', 1),
(3924, 105, 'Roma', 'RM', 1),
(3925, 105, 'Rovigo', 'RO', 1),
(3926, 105, 'Salerno', 'SA', 1),
(3927, 105, 'Sassari', 'SS', 1),
(3928, 105, 'Savona', 'SV', 1),
(3929, 105, 'Siena', 'SI', 1),
(3930, 105, 'Siracusa', 'SR', 1),
(3931, 105, 'Sondrio', 'SO', 1),
(3932, 105, 'Taranto', 'TA', 1),
(3933, 105, 'Teramo', 'TE', 1),
(3934, 105, 'Terni', 'TR', 1),
(3935, 105, 'Torino', 'TO', 1),
(3936, 105, 'Trapani', 'TP', 1),
(3937, 105, 'Trento', 'TN', 1),
(3938, 105, 'Treviso', 'TV', 1),
(3939, 105, 'Trieste', 'TS', 1),
(3940, 105, 'Udine', 'UD', 1),
(3941, 105, 'Varese', 'VA', 1),
(3942, 105, 'Venezia', 'VE', 1),
(3943, 105, 'Verbano-Cusio-Ossola', 'VB', 1),
(3944, 105, 'Vercelli', 'VC', 1),
(3945, 105, 'Verona', 'VR', 1),
(3946, 105, 'Vibo Valentia', 'VV', 1),
(3947, 105, 'Vicenza', 'VI', 1),
(3948, 105, 'Viterbo', 'VT', 1),
(3949, 222, 'County Antrim', 'ANT', 1),
(3950, 222, 'County Armagh', 'ARM', 1),
(3951, 222, 'County Down', 'DOW', 1),
(3952, 222, 'County Fermanagh', 'FER', 1),
(3953, 222, 'County Londonderry', 'LDY', 1),
(3954, 222, 'County Tyrone', 'TYR', 1),
(3955, 222, 'Cumbria', 'CMA', 1),
(3956, 190, 'Pomurska', '1', 1),
(3957, 190, 'Podravska', '2', 1),
(3958, 190, 'Koroška', '3', 1),
(3959, 190, 'Savinjska', '4', 1),
(3960, 190, 'Zasavska', '5', 1),
(3961, 190, 'Spodnjeposavska', '6', 1),
(3962, 190, 'Jugovzhodna Slovenija', '7', 1),
(3963, 190, 'Osrednjeslovenska', '8', 1),
(3964, 190, 'Gorenjska', '9', 1),
(3965, 190, 'Notranjsko-kraška', '10', 1),
(3966, 190, 'Goriška', '11', 1),
(3967, 190, 'Obalno-kraška', '12', 1),
(3968, 33, 'Ruse', '', 1),
(3969, 101, 'Alborz', 'ALB', 1),
(3970, 21, 'Brussels-Capital Region', 'BRU', 1),
(3971, 138, 'Aguascalientes', 'AG', 1),
(3972, 222, 'Isle of Man', 'IOM', 1),
(3973, 242, 'Andrijevica', '01', 1),
(3974, 242, 'Bar', '02', 1),
(3975, 242, 'Berane', '03', 1),
(3976, 242, 'Bijelo Polje', '04', 1),
(3977, 242, 'Budva', '05', 1),
(3978, 242, 'Cetinje', '06', 1),
(3979, 242, 'Danilovgrad', '07', 1),
(3980, 242, 'Herceg-Novi', '08', 1),
(3981, 242, 'Kolašin', '09', 1),
(3982, 242, 'Kotor', '10', 1),
(3983, 242, 'Mojkovac', '11', 1),
(3984, 242, 'Nikšić', '12', 1),
(3985, 242, 'Plav', '13', 1),
(3986, 242, 'Pljevlja', '14', 1),
(3987, 242, 'Plužine', '15', 1),
(3988, 242, 'Podgorica', '16', 1),
(3989, 242, 'Rožaje', '17', 1),
(3990, 242, 'Šavnik', '18', 1),
(3991, 242, 'Tivat', '19', 1),
(3992, 242, 'Ulcinj', '20', 1),
(3993, 242, 'Žabljak', '21', 1),
(3994, 243, 'Belgrade', '00', 1),
(3995, 243, 'North Bačka', '01', 1),
(3996, 243, 'Central Banat', '02', 1),
(3997, 243, 'North Banat', '03', 1),
(3998, 243, 'South Banat', '04', 1),
(3999, 243, 'West Bačka', '05', 1),
(4000, 243, 'South Bačka', '06', 1),
(4001, 243, 'Srem', '07', 1),
(4002, 243, 'Mačva', '08', 1),
(4003, 243, 'Kolubara', '09', 1),
(4004, 243, 'Podunavlje', '10', 1),
(4005, 243, 'Braničevo', '11', 1),
(4006, 243, 'Šumadija', '12', 1),
(4007, 243, 'Pomoravlje', '13', 1),
(4008, 243, 'Bor', '14', 1),
(4009, 243, 'Zaječar', '15', 1),
(4010, 243, 'Zlatibor', '16', 1),
(4011, 243, 'Moravica', '17', 1),
(4012, 243, 'Raška', '18', 1),
(4013, 243, 'Rasina', '19', 1),
(4014, 243, 'Nišava', '20', 1),
(4015, 243, 'Toplica', '21', 1),
(4016, 243, 'Pirot', '22', 1),
(4017, 243, 'Jablanica', '23', 1),
(4018, 243, 'Pčinja', '24', 1),
(4019, 243, 'Kosovo', 'KM', 1),
(4020, 245, 'Bonaire', 'BO', 1),
(4021, 245, 'Saba', 'SA', 1),
(4022, 245, 'Sint Eustatius', 'SE', 1),
(4023, 248, 'Central Equatoria', 'EC', 1),
(4024, 248, 'Eastern Equatoria', 'EE', 1),
(4025, 248, 'Jonglei', 'JG', 1),
(4026, 248, 'Lakes', 'LK', 1),
(4027, 248, 'Northern Bahr el-Ghazal', 'BN', 1),
(4028, 248, 'Unity', 'UY', 1),
(4029, 248, 'Upper Nile', 'NU', 1),
(4030, 248, 'Warrap', 'WR', 1),
(4031, 248, 'Western Bahr el-Ghazal', 'BW', 1),
(4032, 248, 'Western Equatoria', 'EW', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sh_zone_to_geo_zone`
--

CREATE TABLE IF NOT EXISTS `sh_zone_to_geo_zone` (
`zone_to_geo_zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_zone_to_geo_zone`
--

INSERT INTO `sh_zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES
(57, 222, 0, 3, '2010-02-26 22:33:24', '0000-00-00 00:00:00'),
(65, 222, 0, 4, '2010-12-15 15:18:13', '0000-00-00 00:00:00'),
(66, 30, 464, 5, '2014-03-17 16:23:30', '0000-00-00 00:00:00'),
(67, 30, 458, 5, '2014-03-17 16:23:31', '0000-00-00 00:00:00'),
(68, 30, 452, 5, '2014-03-17 16:23:31', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sh_address`
--
ALTER TABLE `sh_address`
 ADD PRIMARY KEY (`address_id`), ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `sh_affiliate`
--
ALTER TABLE `sh_affiliate`
 ADD PRIMARY KEY (`affiliate_id`);

--
-- Indexes for table `sh_affiliate_transaction`
--
ALTER TABLE `sh_affiliate_transaction`
 ADD PRIMARY KEY (`affiliate_transaction_id`);

--
-- Indexes for table `sh_attribute`
--
ALTER TABLE `sh_attribute`
 ADD PRIMARY KEY (`attribute_id`);

--
-- Indexes for table `sh_attribute_description`
--
ALTER TABLE `sh_attribute_description`
 ADD PRIMARY KEY (`attribute_id`,`language_id`);

--
-- Indexes for table `sh_attribute_group`
--
ALTER TABLE `sh_attribute_group`
 ADD PRIMARY KEY (`attribute_group_id`);

--
-- Indexes for table `sh_attribute_group_description`
--
ALTER TABLE `sh_attribute_group_description`
 ADD PRIMARY KEY (`attribute_group_id`,`language_id`);

--
-- Indexes for table `sh_banner`
--
ALTER TABLE `sh_banner`
 ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `sh_banner_image`
--
ALTER TABLE `sh_banner_image`
 ADD PRIMARY KEY (`banner_image_id`);

--
-- Indexes for table `sh_banner_image_description`
--
ALTER TABLE `sh_banner_image_description`
 ADD PRIMARY KEY (`banner_image_id`,`language_id`);

--
-- Indexes for table `sh_category`
--
ALTER TABLE `sh_category`
 ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `sh_category_description`
--
ALTER TABLE `sh_category_description`
 ADD PRIMARY KEY (`category_id`,`language_id`), ADD KEY `name` (`name`);

--
-- Indexes for table `sh_category_filter`
--
ALTER TABLE `sh_category_filter`
 ADD PRIMARY KEY (`category_id`,`filter_id`);

--
-- Indexes for table `sh_category_path`
--
ALTER TABLE `sh_category_path`
 ADD PRIMARY KEY (`category_id`,`path_id`);

--
-- Indexes for table `sh_category_to_layout`
--
ALTER TABLE `sh_category_to_layout`
 ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Indexes for table `sh_category_to_store`
--
ALTER TABLE `sh_category_to_store`
 ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Indexes for table `sh_country`
--
ALTER TABLE `sh_country`
 ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `sh_coupon`
--
ALTER TABLE `sh_coupon`
 ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `sh_coupon_category`
--
ALTER TABLE `sh_coupon_category`
 ADD PRIMARY KEY (`coupon_id`,`category_id`);

--
-- Indexes for table `sh_coupon_history`
--
ALTER TABLE `sh_coupon_history`
 ADD PRIMARY KEY (`coupon_history_id`);

--
-- Indexes for table `sh_coupon_product`
--
ALTER TABLE `sh_coupon_product`
 ADD PRIMARY KEY (`coupon_product_id`);

--
-- Indexes for table `sh_currency`
--
ALTER TABLE `sh_currency`
 ADD PRIMARY KEY (`currency_id`);

--
-- Indexes for table `sh_customer`
--
ALTER TABLE `sh_customer`
 ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `sh_customer_ban_ip`
--
ALTER TABLE `sh_customer_ban_ip`
 ADD PRIMARY KEY (`customer_ban_ip_id`), ADD KEY `ip` (`ip`);

--
-- Indexes for table `sh_customer_field`
--
ALTER TABLE `sh_customer_field`
 ADD PRIMARY KEY (`customer_id`,`custom_field_id`,`custom_field_value_id`);

--
-- Indexes for table `sh_customer_group`
--
ALTER TABLE `sh_customer_group`
 ADD PRIMARY KEY (`customer_group_id`);

--
-- Indexes for table `sh_customer_group_description`
--
ALTER TABLE `sh_customer_group_description`
 ADD PRIMARY KEY (`customer_group_id`,`language_id`);

--
-- Indexes for table `sh_customer_history`
--
ALTER TABLE `sh_customer_history`
 ADD PRIMARY KEY (`customer_history_id`);

--
-- Indexes for table `sh_customer_ip`
--
ALTER TABLE `sh_customer_ip`
 ADD PRIMARY KEY (`customer_ip_id`), ADD KEY `ip` (`ip`);

--
-- Indexes for table `sh_customer_online`
--
ALTER TABLE `sh_customer_online`
 ADD PRIMARY KEY (`ip`);

--
-- Indexes for table `sh_customer_reward`
--
ALTER TABLE `sh_customer_reward`
 ADD PRIMARY KEY (`customer_reward_id`);

--
-- Indexes for table `sh_customer_transaction`
--
ALTER TABLE `sh_customer_transaction`
 ADD PRIMARY KEY (`customer_transaction_id`);

--
-- Indexes for table `sh_custom_field`
--
ALTER TABLE `sh_custom_field`
 ADD PRIMARY KEY (`custom_field_id`);

--
-- Indexes for table `sh_custom_field_description`
--
ALTER TABLE `sh_custom_field_description`
 ADD PRIMARY KEY (`custom_field_id`,`language_id`);

--
-- Indexes for table `sh_custom_field_to_customer_group`
--
ALTER TABLE `sh_custom_field_to_customer_group`
 ADD PRIMARY KEY (`custom_field_id`,`customer_group_id`);

--
-- Indexes for table `sh_custom_field_value`
--
ALTER TABLE `sh_custom_field_value`
 ADD PRIMARY KEY (`custom_field_value_id`);

--
-- Indexes for table `sh_custom_field_value_description`
--
ALTER TABLE `sh_custom_field_value_description`
 ADD PRIMARY KEY (`custom_field_value_id`,`language_id`);

--
-- Indexes for table `sh_download`
--
ALTER TABLE `sh_download`
 ADD PRIMARY KEY (`download_id`);

--
-- Indexes for table `sh_download_description`
--
ALTER TABLE `sh_download_description`
 ADD PRIMARY KEY (`download_id`,`language_id`);

--
-- Indexes for table `sh_extension`
--
ALTER TABLE `sh_extension`
 ADD PRIMARY KEY (`extension_id`);

--
-- Indexes for table `sh_filter`
--
ALTER TABLE `sh_filter`
 ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `sh_filter_description`
--
ALTER TABLE `sh_filter_description`
 ADD PRIMARY KEY (`filter_id`,`language_id`);

--
-- Indexes for table `sh_filter_group`
--
ALTER TABLE `sh_filter_group`
 ADD PRIMARY KEY (`filter_group_id`);

--
-- Indexes for table `sh_filter_group_description`
--
ALTER TABLE `sh_filter_group_description`
 ADD PRIMARY KEY (`filter_group_id`,`language_id`);

--
-- Indexes for table `sh_geo_zone`
--
ALTER TABLE `sh_geo_zone`
 ADD PRIMARY KEY (`geo_zone_id`);

--
-- Indexes for table `sh_information`
--
ALTER TABLE `sh_information`
 ADD PRIMARY KEY (`information_id`);

--
-- Indexes for table `sh_information_description`
--
ALTER TABLE `sh_information_description`
 ADD PRIMARY KEY (`information_id`,`language_id`);

--
-- Indexes for table `sh_information_to_layout`
--
ALTER TABLE `sh_information_to_layout`
 ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Indexes for table `sh_information_to_store`
--
ALTER TABLE `sh_information_to_store`
 ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Indexes for table `sh_language`
--
ALTER TABLE `sh_language`
 ADD PRIMARY KEY (`language_id`), ADD KEY `name` (`name`);

--
-- Indexes for table `sh_layout`
--
ALTER TABLE `sh_layout`
 ADD PRIMARY KEY (`layout_id`);

--
-- Indexes for table `sh_layout_route`
--
ALTER TABLE `sh_layout_route`
 ADD PRIMARY KEY (`layout_route_id`);

--
-- Indexes for table `sh_length_class`
--
ALTER TABLE `sh_length_class`
 ADD PRIMARY KEY (`length_class_id`);

--
-- Indexes for table `sh_length_class_description`
--
ALTER TABLE `sh_length_class_description`
 ADD PRIMARY KEY (`length_class_id`,`language_id`);

--
-- Indexes for table `sh_manufacturer`
--
ALTER TABLE `sh_manufacturer`
 ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `sh_manufacturer_to_store`
--
ALTER TABLE `sh_manufacturer_to_store`
 ADD PRIMARY KEY (`manufacturer_id`,`store_id`);

--
-- Indexes for table `sh_option`
--
ALTER TABLE `sh_option`
 ADD PRIMARY KEY (`option_id`);

--
-- Indexes for table `sh_option_description`
--
ALTER TABLE `sh_option_description`
 ADD PRIMARY KEY (`option_id`,`language_id`);

--
-- Indexes for table `sh_option_value`
--
ALTER TABLE `sh_option_value`
 ADD PRIMARY KEY (`option_value_id`);

--
-- Indexes for table `sh_option_value_description`
--
ALTER TABLE `sh_option_value_description`
 ADD PRIMARY KEY (`option_value_id`,`language_id`);

--
-- Indexes for table `sh_order`
--
ALTER TABLE `sh_order`
 ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `sh_order_download`
--
ALTER TABLE `sh_order_download`
 ADD PRIMARY KEY (`order_download_id`);

--
-- Indexes for table `sh_order_field`
--
ALTER TABLE `sh_order_field`
 ADD PRIMARY KEY (`order_id`,`custom_field_id`,`custom_field_value_id`);

--
-- Indexes for table `sh_order_fraud`
--
ALTER TABLE `sh_order_fraud`
 ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `sh_order_history`
--
ALTER TABLE `sh_order_history`
 ADD PRIMARY KEY (`order_history_id`);

--
-- Indexes for table `sh_order_option`
--
ALTER TABLE `sh_order_option`
 ADD PRIMARY KEY (`order_option_id`);

--
-- Indexes for table `sh_order_product`
--
ALTER TABLE `sh_order_product`
 ADD PRIMARY KEY (`order_product_id`);

--
-- Indexes for table `sh_order_recurring`
--
ALTER TABLE `sh_order_recurring`
 ADD PRIMARY KEY (`order_recurring_id`);

--
-- Indexes for table `sh_order_recurring_transaction`
--
ALTER TABLE `sh_order_recurring_transaction`
 ADD PRIMARY KEY (`order_recurring_transaction_id`);

--
-- Indexes for table `sh_order_status`
--
ALTER TABLE `sh_order_status`
 ADD PRIMARY KEY (`order_status_id`,`language_id`);

--
-- Indexes for table `sh_order_total`
--
ALTER TABLE `sh_order_total`
 ADD PRIMARY KEY (`order_total_id`), ADD KEY `idx_orders_total_orders_id` (`order_id`);

--
-- Indexes for table `sh_order_voucher`
--
ALTER TABLE `sh_order_voucher`
 ADD PRIMARY KEY (`order_voucher_id`);

--
-- Indexes for table `sh_product`
--
ALTER TABLE `sh_product`
 ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `sh_product_attribute`
--
ALTER TABLE `sh_product_attribute`
 ADD PRIMARY KEY (`product_id`,`attribute_id`,`language_id`);

--
-- Indexes for table `sh_product_description`
--
ALTER TABLE `sh_product_description`
 ADD PRIMARY KEY (`product_id`,`language_id`), ADD KEY `name` (`name`);

--
-- Indexes for table `sh_product_discount`
--
ALTER TABLE `sh_product_discount`
 ADD PRIMARY KEY (`product_discount_id`), ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `sh_product_filter`
--
ALTER TABLE `sh_product_filter`
 ADD PRIMARY KEY (`product_id`,`filter_id`);

--
-- Indexes for table `sh_product_image`
--
ALTER TABLE `sh_product_image`
 ADD PRIMARY KEY (`product_image_id`);

--
-- Indexes for table `sh_product_option`
--
ALTER TABLE `sh_product_option`
 ADD PRIMARY KEY (`product_option_id`);

--
-- Indexes for table `sh_product_option_value`
--
ALTER TABLE `sh_product_option_value`
 ADD PRIMARY KEY (`product_option_value_id`);

--
-- Indexes for table `sh_product_profile`
--
ALTER TABLE `sh_product_profile`
 ADD PRIMARY KEY (`product_id`,`profile_id`,`customer_group_id`);

--
-- Indexes for table `sh_product_recurring`
--
ALTER TABLE `sh_product_recurring`
 ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Indexes for table `sh_product_related`
--
ALTER TABLE `sh_product_related`
 ADD PRIMARY KEY (`product_id`,`related_id`);

--
-- Indexes for table `sh_product_reward`
--
ALTER TABLE `sh_product_reward`
 ADD PRIMARY KEY (`product_reward_id`);

--
-- Indexes for table `sh_product_special`
--
ALTER TABLE `sh_product_special`
 ADD PRIMARY KEY (`product_special_id`), ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `sh_product_to_category`
--
ALTER TABLE `sh_product_to_category`
 ADD PRIMARY KEY (`product_id`,`category_id`);

--
-- Indexes for table `sh_product_to_download`
--
ALTER TABLE `sh_product_to_download`
 ADD PRIMARY KEY (`product_id`,`download_id`);

--
-- Indexes for table `sh_product_to_layout`
--
ALTER TABLE `sh_product_to_layout`
 ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Indexes for table `sh_product_to_store`
--
ALTER TABLE `sh_product_to_store`
 ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Indexes for table `sh_profile`
--
ALTER TABLE `sh_profile`
 ADD PRIMARY KEY (`profile_id`);

--
-- Indexes for table `sh_profile_description`
--
ALTER TABLE `sh_profile_description`
 ADD PRIMARY KEY (`profile_id`,`language_id`);

--
-- Indexes for table `sh_return`
--
ALTER TABLE `sh_return`
 ADD PRIMARY KEY (`return_id`);

--
-- Indexes for table `sh_return_action`
--
ALTER TABLE `sh_return_action`
 ADD PRIMARY KEY (`return_action_id`,`language_id`);

--
-- Indexes for table `sh_return_history`
--
ALTER TABLE `sh_return_history`
 ADD PRIMARY KEY (`return_history_id`);

--
-- Indexes for table `sh_return_reason`
--
ALTER TABLE `sh_return_reason`
 ADD PRIMARY KEY (`return_reason_id`,`language_id`);

--
-- Indexes for table `sh_return_status`
--
ALTER TABLE `sh_return_status`
 ADD PRIMARY KEY (`return_status_id`,`language_id`);

--
-- Indexes for table `sh_review`
--
ALTER TABLE `sh_review`
 ADD PRIMARY KEY (`review_id`), ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `sh_setting`
--
ALTER TABLE `sh_setting`
 ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `sh_stock_status`
--
ALTER TABLE `sh_stock_status`
 ADD PRIMARY KEY (`stock_status_id`,`language_id`);

--
-- Indexes for table `sh_store`
--
ALTER TABLE `sh_store`
 ADD PRIMARY KEY (`store_id`);

--
-- Indexes for table `sh_tax_class`
--
ALTER TABLE `sh_tax_class`
 ADD PRIMARY KEY (`tax_class_id`);

--
-- Indexes for table `sh_tax_rate`
--
ALTER TABLE `sh_tax_rate`
 ADD PRIMARY KEY (`tax_rate_id`);

--
-- Indexes for table `sh_tax_rate_to_customer_group`
--
ALTER TABLE `sh_tax_rate_to_customer_group`
 ADD PRIMARY KEY (`tax_rate_id`,`customer_group_id`);

--
-- Indexes for table `sh_tax_rule`
--
ALTER TABLE `sh_tax_rule`
 ADD PRIMARY KEY (`tax_rule_id`);

--
-- Indexes for table `sh_url_alias`
--
ALTER TABLE `sh_url_alias`
 ADD PRIMARY KEY (`url_alias_id`);

--
-- Indexes for table `sh_user`
--
ALTER TABLE `sh_user`
 ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `sh_user_group`
--
ALTER TABLE `sh_user_group`
 ADD PRIMARY KEY (`user_group_id`);

--
-- Indexes for table `sh_voucher`
--
ALTER TABLE `sh_voucher`
 ADD PRIMARY KEY (`voucher_id`);

--
-- Indexes for table `sh_voucher_history`
--
ALTER TABLE `sh_voucher_history`
 ADD PRIMARY KEY (`voucher_history_id`);

--
-- Indexes for table `sh_voucher_theme`
--
ALTER TABLE `sh_voucher_theme`
 ADD PRIMARY KEY (`voucher_theme_id`);

--
-- Indexes for table `sh_voucher_theme_description`
--
ALTER TABLE `sh_voucher_theme_description`
 ADD PRIMARY KEY (`voucher_theme_id`,`language_id`);

--
-- Indexes for table `sh_weight_class`
--
ALTER TABLE `sh_weight_class`
 ADD PRIMARY KEY (`weight_class_id`);

--
-- Indexes for table `sh_weight_class_description`
--
ALTER TABLE `sh_weight_class_description`
 ADD PRIMARY KEY (`weight_class_id`,`language_id`);

--
-- Indexes for table `sh_zone`
--
ALTER TABLE `sh_zone`
 ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `sh_zone_to_geo_zone`
--
ALTER TABLE `sh_zone_to_geo_zone`
 ADD PRIMARY KEY (`zone_to_geo_zone_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sh_address`
--
ALTER TABLE `sh_address`
MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `sh_affiliate`
--
ALTER TABLE `sh_affiliate`
MODIFY `affiliate_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sh_affiliate_transaction`
--
ALTER TABLE `sh_affiliate_transaction`
MODIFY `affiliate_transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sh_attribute`
--
ALTER TABLE `sh_attribute`
MODIFY `attribute_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `sh_attribute_group`
--
ALTER TABLE `sh_attribute_group`
MODIFY `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `sh_banner`
--
ALTER TABLE `sh_banner`
MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `sh_banner_image`
--
ALTER TABLE `sh_banner_image`
MODIFY `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=114;
--
-- AUTO_INCREMENT for table `sh_category`
--
ALTER TABLE `sh_category`
MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=83;
--
-- AUTO_INCREMENT for table `sh_country`
--
ALTER TABLE `sh_country`
MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=252;
--
-- AUTO_INCREMENT for table `sh_coupon`
--
ALTER TABLE `sh_coupon`
MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `sh_coupon_history`
--
ALTER TABLE `sh_coupon_history`
MODIFY `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sh_coupon_product`
--
ALTER TABLE `sh_coupon_product`
MODIFY `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sh_currency`
--
ALTER TABLE `sh_currency`
MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sh_customer`
--
ALTER TABLE `sh_customer`
MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `sh_customer_ban_ip`
--
ALTER TABLE `sh_customer_ban_ip`
MODIFY `customer_ban_ip_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sh_customer_group`
--
ALTER TABLE `sh_customer_group`
MODIFY `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sh_customer_history`
--
ALTER TABLE `sh_customer_history`
MODIFY `customer_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sh_customer_ip`
--
ALTER TABLE `sh_customer_ip`
MODIFY `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `sh_customer_reward`
--
ALTER TABLE `sh_customer_reward`
MODIFY `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sh_customer_transaction`
--
ALTER TABLE `sh_customer_transaction`
MODIFY `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sh_custom_field`
--
ALTER TABLE `sh_custom_field`
MODIFY `custom_field_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sh_custom_field_value`
--
ALTER TABLE `sh_custom_field_value`
MODIFY `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sh_download`
--
ALTER TABLE `sh_download`
MODIFY `download_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sh_extension`
--
ALTER TABLE `sh_extension`
MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=459;
--
-- AUTO_INCREMENT for table `sh_filter`
--
ALTER TABLE `sh_filter`
MODIFY `filter_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sh_filter_group`
--
ALTER TABLE `sh_filter_group`
MODIFY `filter_group_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sh_geo_zone`
--
ALTER TABLE `sh_geo_zone`
MODIFY `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `sh_information`
--
ALTER TABLE `sh_information`
MODIFY `information_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `sh_language`
--
ALTER TABLE `sh_language`
MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sh_layout`
--
ALTER TABLE `sh_layout`
MODIFY `layout_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `sh_layout_route`
--
ALTER TABLE `sh_layout_route`
MODIFY `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `sh_length_class`
--
ALTER TABLE `sh_length_class`
MODIFY `length_class_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `sh_length_class_description`
--
ALTER TABLE `sh_length_class_description`
MODIFY `length_class_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `sh_manufacturer`
--
ALTER TABLE `sh_manufacturer`
MODIFY `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `sh_option`
--
ALTER TABLE `sh_option`
MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `sh_option_value`
--
ALTER TABLE `sh_option_value`
MODIFY `option_value_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT for table `sh_order`
--
ALTER TABLE `sh_order`
MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `sh_order_download`
--
ALTER TABLE `sh_order_download`
MODIFY `order_download_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sh_order_history`
--
ALTER TABLE `sh_order_history`
MODIFY `order_history_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `sh_order_option`
--
ALTER TABLE `sh_order_option`
MODIFY `order_option_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `sh_order_product`
--
ALTER TABLE `sh_order_product`
MODIFY `order_product_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `sh_order_recurring`
--
ALTER TABLE `sh_order_recurring`
MODIFY `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sh_order_recurring_transaction`
--
ALTER TABLE `sh_order_recurring_transaction`
MODIFY `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sh_order_status`
--
ALTER TABLE `sh_order_status`
MODIFY `order_status_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `sh_order_total`
--
ALTER TABLE `sh_order_total`
MODIFY `order_total_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `sh_order_voucher`
--
ALTER TABLE `sh_order_voucher`
MODIFY `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sh_product`
--
ALTER TABLE `sh_product`
MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=326;
--
-- AUTO_INCREMENT for table `sh_product_discount`
--
ALTER TABLE `sh_product_discount`
MODIFY `product_discount_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=450;
--
-- AUTO_INCREMENT for table `sh_product_image`
--
ALTER TABLE `sh_product_image`
MODIFY `product_image_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4740;
--
-- AUTO_INCREMENT for table `sh_product_option`
--
ALTER TABLE `sh_product_option`
MODIFY `product_option_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=347;
--
-- AUTO_INCREMENT for table `sh_product_option_value`
--
ALTER TABLE `sh_product_option_value`
MODIFY `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=451;
--
-- AUTO_INCREMENT for table `sh_product_reward`
--
ALTER TABLE `sh_product_reward`
MODIFY `product_reward_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2941;
--
-- AUTO_INCREMENT for table `sh_product_special`
--
ALTER TABLE `sh_product_special`
MODIFY `product_special_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=443;
--
-- AUTO_INCREMENT for table `sh_profile`
--
ALTER TABLE `sh_profile`
MODIFY `profile_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sh_return`
--
ALTER TABLE `sh_return`
MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sh_return_action`
--
ALTER TABLE `sh_return_action`
MODIFY `return_action_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `sh_return_history`
--
ALTER TABLE `sh_return_history`
MODIFY `return_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sh_return_reason`
--
ALTER TABLE `sh_return_reason`
MODIFY `return_reason_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `sh_return_status`
--
ALTER TABLE `sh_return_status`
MODIFY `return_status_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `sh_review`
--
ALTER TABLE `sh_review`
MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `sh_setting`
--
ALTER TABLE `sh_setting`
MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13077;
--
-- AUTO_INCREMENT for table `sh_stock_status`
--
ALTER TABLE `sh_stock_status`
MODIFY `stock_status_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `sh_store`
--
ALTER TABLE `sh_store`
MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sh_tax_class`
--
ALTER TABLE `sh_tax_class`
MODIFY `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `sh_tax_rate`
--
ALTER TABLE `sh_tax_rate`
MODIFY `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT for table `sh_tax_rule`
--
ALTER TABLE `sh_tax_rule`
MODIFY `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=129;
--
-- AUTO_INCREMENT for table `sh_url_alias`
--
ALTER TABLE `sh_url_alias`
MODIFY `url_alias_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=798;
--
-- AUTO_INCREMENT for table `sh_user`
--
ALTER TABLE `sh_user`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `sh_user_group`
--
ALTER TABLE `sh_user_group`
MODIFY `user_group_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `sh_voucher`
--
ALTER TABLE `sh_voucher`
MODIFY `voucher_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sh_voucher_history`
--
ALTER TABLE `sh_voucher_history`
MODIFY `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sh_voucher_theme`
--
ALTER TABLE `sh_voucher_theme`
MODIFY `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `sh_weight_class`
--
ALTER TABLE `sh_weight_class`
MODIFY `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `sh_weight_class_description`
--
ALTER TABLE `sh_weight_class_description`
MODIFY `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `sh_zone`
--
ALTER TABLE `sh_zone`
MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4033;
--
-- AUTO_INCREMENT for table `sh_zone_to_geo_zone`
--
ALTER TABLE `sh_zone_to_geo_zone`
MODIFY `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=69;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
