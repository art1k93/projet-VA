-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Дек 18 2015 г., 08:01
-- Версия сервера: 5.6.17
-- Версия PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `blog`
--

-- --------------------------------------------------------

--
-- Структура таблицы `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(32) NOT NULL,
  `pass` varchar(32) NOT NULL,
  `cookie` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `admin`
--

INSERT INTO `admin` (`id`, `email`, `pass`, `cookie`) VALUES
(5, 'some@gmail.com', '202cb962ac59075b964b07152d234b70', '20bf6865ad677368bfe8a70f2db7770a'),
(6, 'some@gmail.com', '202cb962ac59075b964b07152d234b70', '');

-- --------------------------------------------------------

--
-- Структура таблицы `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `postid` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `post` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL,
  `news_title` text NOT NULL,
  `news_body` text NOT NULL,
  `news_visible_img` text NOT NULL,
  `news_hidden_img` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `news_title`, `news_body`, `news_visible_img`, `news_hidden_img`) VALUES
(1, 'First post title', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dignissim quam finibus ullamcorper ullamcorper. Sed eu pretium ex. Nunc ornare neque in lorem fermentum, non commodo sapien fermentum. Vestibulum eget congue sapien. Donec convallis dolor a velit finibus ultricies. Donec a urna ex. Donec aliquet pharetra ligula at finibus. In a feugiat massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '<img class="ui fluid image" src="img/post1_bw.jpg">', '<img class="ui fluid image" src="img/post1.jpg">'),
(2, 'Second post title', 'Aenean pellentesque tortor sodales sem efficitur, nec condimentum metus tempor. Aenean auctor porta dui efficitur vestibulum. Ut posuere, urna vitae luctus dignissim, magna tortor aliquet orci, vitae tempor mi lacus nec metus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam lorem felis, luctus ut nisi eget, auctor ullamcorper justo. Vestibulum tortor lectus, sollicitudin id venenatis ut, eleifend in libero. Fusce non mi consequat, sagittis dolor nec, laoreet turpis. Integer viverra quam nunc, lobortis finibus nibh congue id. Pellentesque laoreet posuere enim. Nullam nec tellus congue, finibus dolor ut, euismod ligula.', '<img class="ui fluid image" src="img/post2_bw.jpg">', '<img class="ui fluid image" src="img/post2.jpg">'),
(3, 'Third post title', 'Cras eu risus ut lectus facilisis molestie sit amet at ante. Vivamus molestie turpis at ultricies aliquet. Aliquam ut fringilla augue. Integer convallis, lectus ut accumsan mollis, ante lacus ullamcorper arcu, id condimentum lacus orci vitae lacus. Vivamus libero urna, luctus eu urna nec, euismod posuere est. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Duis semper vestibulum nibh in finibus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Quisque elementum tortor non dapibus posuere. Cras accumsan consequat neque, auctor pellentesque diam rutrum in. Curabitur a dapibus tellus. Proin ipsum turpis, ullamcorper ac metus in, dictum suscipit mauris. Donec tempor dapibus elit vitae posuere. Curabitur risus velit, viverra at turpis quis, elementum egestas ante.', '<img class="ui fluid image" src="img/post3_bw.jpg">', '<img class="ui fluid image" src="img/post3.jpg">'),
(4, 'Fourth post title', 'Phasellus faucibus, mauris ut fermentum varius, diam est varius nisl, eget feugiat ex nunc ut sem. In porttitor, libero sit amet ultrices posuere, tortor magna finibus libero, et ultricies diam neque vitae orci. Cras fringilla augue vel elit ullamcorper fringilla. In vehicula urna non leo luctus, nec placerat nisi auctor. Phasellus sed eros rhoncus, ullamcorper nulla nec, facilisis diam. Quisque tempus ut elit ornare pellentesque. Nulla et ullamcorper urna. Sed tincidunt quis mi a malesuada.', '<img class="ui fluid image" src="img/post4_bw.jpg">', '<img class="ui fluid image" src="img/post4.jpg">');

-- --------------------------------------------------------

--
-- Структура таблицы `post`
--

CREATE TABLE IF NOT EXISTS `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(50) NOT NULL,
  `ctime` int(11) NOT NULL,
  `title` varchar(80) NOT NULL,
  `post` text NOT NULL,
  `news_visible_img` text NOT NULL,
  `news_hidden_img` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Дамп данных таблицы `post`
--

INSERT INTO `post` (`id`, `author`, `ctime`, `title`, `post`, `news_visible_img`, `news_hidden_img`) VALUES
(6, '', 1450121780, 'First article', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dignissim quam finibus ullamcorper ullamcorper. Sed eu pretium ex. Nunc ornare neque in lorem fermentum, non commodo sapien fermentum. Vestibulum eget congue sapien. Donec convallis dolor a velit finibus ultricies. Donec a urna ex. Donec aliquet pharetra ligula at finibus. In a feugiat massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '<img class="ui fluid image" src="img/post2_bw.jpg">', '<img class="ui fluid image" src="img/post2.jpg">'),
(2, '', 1450049323, 'Second article', 'Aenean pellentesque tortor sodales sem efficitur, nec condimentum metus tempor. Aenean auctor porta dui efficitur vestibulum. Ut posuere, urna vitae luctus dignissim, magna tortor aliquet orci, vitae tempor mi lacus nec metus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam lorem felis, luctus ut nisi eget, auctor ullamcorper justo. Vestibulum tortor lectus, sollicitudin id venenatis ut, eleifend in libero. Fusce non mi consequat, sagittis dolor nec, laoreet turpis. Integer viverra quam nunc, lobortis finibus nibh congue id. Pellentesque laoreet posuere enim. Nullam nec tellus congue, finibus dolor ut, euismod ligula.', '<img class="ui fluid image" src="img/post3_bw.jpg">', '<img class="ui fluid image" src="img/post3.jpg">'),
(7, '', 220728, 'Third title', 'Cras eu risus ut lectus facilisis molestie sit amet at ante. Vivamus molestie turpis at ultricies aliquet. Aliquam ut fringilla augue. Integer convallis, lectus ut accumsan mollis, ante lacus ullamcorper arcu, id condimentum lacus orci vitae lacus. Vivamus libero urna, luctus eu urna nec, euismod posuere est. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Duis semper vestibulum nibh in finibus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Quisque elementum tortor non dapibus posuere. Cras accumsan consequat neque, auctor pellentesque diam rutrum in. Curabitur a dapibus tellus. Proin ipsum turpis, ullamcorper ac metus in, dictum suscipit mauris. Donec tempor dapibus elit vitae posuere. Curabitur risus velit, viverra at turpis quis, elementum egestas ante.', '<img class="ui fluid image" src="img/post3_bw.jpg">', '<img class="ui fluid image" src="img/post3.jpg">'),
(8, '', 220728, 'Fourth title', 'Phasellus faucibus, mauris ut fermentum varius, diam est varius nisl, eget feugiat ex nunc ut sem. In porttitor, libero sit amet ultrices posuere, tortor magna finibus libero, et ultricies diam neque vitae orci. Cras fringilla augue vel elit ullamcorper fringilla. In vehicula urna non leo luctus, nec placerat nisi auctor. Phasellus sed eros rhoncus, ullamcorper nulla nec, facilisis diam. Quisque tempus ut elit ornare pellentesque. Nulla et ullamcorper urna. Sed tincidunt quis mi a malesuada.', '<img class="ui fluid image" src="img/post4_bw.jpg">', '<img class="ui fluid image" src="img/post4.jpg">');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
