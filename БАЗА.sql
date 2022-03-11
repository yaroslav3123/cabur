-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Дек 03 2020 г., 20:21
-- Версия сервера: 5.7.27-30-log
-- Версия PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `kiryushami_keno`
--

-- --------------------------------------------------------

--
-- Структура таблицы `gamecoin`
--

CREATE TABLE `gamecoin` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `sum` double NOT NULL,
  `caef` double(100,2) NOT NULL,
  `off` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `gamecoin`
--

INSERT INTO `gamecoin` (`id`, `id_user`, `sum`, `caef`, `off`) VALUES
(1, 2, 1, 1.98, 1),
(2, 2, 1, 1.98, 1),
(3, 3, 5, 1.98, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `kot_admin`
--

CREATE TABLE `kot_admin` (
  `id` int(11) NOT NULL,
  `bank` varchar(50) NOT NULL,
  `zarabotok` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `kot_admin`
--

INSERT INTO `kot_admin` (`id`, `bank`, `zarabotok`) VALUES
(0, '-333632.97999999986', '37874.979999999996');

-- --------------------------------------------------------

--
-- Структура таблицы `kot_bots`
--

CREATE TABLE `kot_bots` (
  `id` int(11) NOT NULL,
  `bot_login` varchar(50) NOT NULL,
  `bot_min_bet` varchar(50) NOT NULL DEFAULT '1',
  `bot_max_bet` varchar(50) NOT NULL DEFAULT '100',
  `status` varchar(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `kot_chance`
--

CREATE TABLE `kot_chance` (
  `id` int(11) NOT NULL,
  `per` varchar(2) NOT NULL,
  `chance` varchar(3) NOT NULL,
  `is_drop` varchar(1) NOT NULL DEFAULT '1',
  `active` varchar(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `kot_config`
--

CREATE TABLE `kot_config` (
  `id` int(11) NOT NULL,
  `sitename` varchar(50) NOT NULL DEFAULT 'KotDev',
  `sitedomen` varchar(50) NOT NULL,
  `sitegroup` varchar(50) NOT NULL,
  `sitesupport` varchar(150) NOT NULL,
  `sitekey` varchar(150) NOT NULL,
  `sitemail` varchar(50) NOT NULL,
  `min_bonus_size` varchar(50) NOT NULL DEFAULT '1',
  `max_bonus_size` varchar(50) NOT NULL DEFAULT '10',
  `min_withdraw_sum` varchar(50) NOT NULL DEFAULT '50',
  `bonus_reg` varchar(50) NOT NULL DEFAULT '5',
  `fk_id` varchar(50) NOT NULL,
  `fk_secret_1` varchar(50) NOT NULL,
  `fk_secret_2` varchar(50) NOT NULL,
  `dep_withdraw` varchar(50) NOT NULL DEFAULT '0',
  `min_bet` varchar(50) NOT NULL DEFAULT '1',
  `max_bet` varchar(50) NOT NULL DEFAULT '1000',
  `min_per` varchar(50) NOT NULL DEFAULT '1',
  `max_per` varchar(50) NOT NULL DEFAULT '95',
  `fake_online` varchar(50) NOT NULL DEFAULT '0',
  `fake_interval` varchar(50) NOT NULL DEFAULT '0',
  `min_sum_dep` varchar(50) NOT NULL DEFAULT '1',
  `id_vk` varchar(500) NOT NULL,
  `token_vk` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `kot_config`
--

INSERT INTO `kot_config` (`id`, `sitename`, `sitedomen`, `sitegroup`, `sitesupport`, `sitekey`, `sitemail`, `min_bonus_size`, `max_bonus_size`, `min_withdraw_sum`, `bonus_reg`, `fk_id`, `fk_secret_1`, `fk_secret_2`, `dep_withdraw`, `min_bet`, `max_bet`, `min_per`, `max_per`, `fake_online`, `fake_interval`, `min_sum_dep`, `id_vk`, `token_vk`) VALUES
(1, 'KotDev', 'ru', 'https://vk.com/kotdevfun', 'https://vk.com/kotdevfun', '', 'https://vk.com/middle_dev', '0.05', '3', '100', '0', '', '', '', '50', '1', '100000', '1', '90', '0', '', '50', '1605770481', '5ea75d9ea7bec9d982b7836105333a2c8c90ad4da9ee05d8f22730d3ae531c833944c4b569bdb71649217');

-- --------------------------------------------------------

--
-- Структура таблицы `kot_games`
--

CREATE TABLE `kot_games` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `login` varchar(50) NOT NULL,
  `number` varchar(50) NOT NULL,
  `cel` varchar(50) NOT NULL,
  `sum` varchar(50) NOT NULL,
  `chance` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `win_summa` varchar(50) NOT NULL,
  `game` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `kot_games`
--

INSERT INTO `kot_games` (`id`, `user_id`, `login`, `number`, `cel`, `sum`, `chance`, `type`, `win_summa`, `game`) VALUES
(1, '2', 'KotDev', '', '', '1', 0, 'win', '1.14', 2),
(2, '2', 'KotDev', '', '', '1', 0, 'win', '1.14', 2),
(3, '2', 'KotDev', '', '', '1', 0, 'lose', '0', 2),
(4, '2', 'KotDev', '', '', '1', 0, 'lose', '0', 2),
(5, '2', 'KotDev', '', '', '1', 0, 'lose', '0', 2),
(6, '2', 'KotDev', '', '', '1', 0, 'lose', '0', 2),
(7, '2', 'KotDev', '', '', '1', 0, 'lose', '0', 2),
(8, '2', 'KotDev', '', '', '1', 0, 'win', '1.14', 2),
(9, '2', 'KotDev', '', '', '1', 0, 'win', '1.14', 2),
(10, '2', 'KotDev', '', '', '1', 0, 'win', '1.49', 2),
(11, '2', 'KotDev', '', '', '1', 0, 'win', '1.98', 4),
(12, '2', 'KotDev', '', '', '1', 0, 'win', '1.98', 4),
(13, '2', 'KotDev', '', '', '1', 0, 'win', '2', 3),
(14, '2', 'KotDev', '', '', '1', 0, 'lose', '0', 3),
(15, '3', 'Adm1nov', '', '', '5', 0, 'win', '9.90', 4),
(16, '2', 'KotDev', '', '', '1', 0, 'lose', '0', 2),
(17, '3', 'Adm1nov', '', '', '3', 0, 'lose', '0', 3),
(18, '3', 'Adm1nov', '', '', '7', 0, 'lose', '0', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `kot_payments`
--

CREATE TABLE `kot_payments` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `suma` varchar(50) NOT NULL,
  `data` varchar(50) NOT NULL,
  `qiwi` varchar(50) NOT NULL,
  `transaction` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `kot_promo`
--

CREATE TABLE `kot_promo` (
  `id` int(11) NOT NULL,
  `date` varchar(50) NOT NULL,
  `is_admin` varchar(1) NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL,
  `sum` varchar(50) NOT NULL,
  `active` varchar(50) NOT NULL,
  `actived` varchar(50) NOT NULL DEFAULT '0',
  `id_active` varchar(1500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `kot_user`
--

CREATE TABLE `kot_user` (
  `id` int(11) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `login` varchar(50) NOT NULL,
  `balance` varchar(50) NOT NULL,
  `img` varchar(250) NOT NULL,
  `hash` varchar(50) NOT NULL,
  `social` varchar(150) NOT NULL,
  `bdate` varchar(50) NOT NULL,
  `online` varchar(1) NOT NULL DEFAULT '1',
  `admin` varchar(1) NOT NULL DEFAULT '0',
  `ban` varchar(1) NOT NULL DEFAULT '0',
  `sliv` varchar(1) NOT NULL DEFAULT '0',
  `win` varchar(1) NOT NULL DEFAULT '0',
  `ref_id` varchar(11) NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL,
  `date_reg` varchar(50) NOT NULL,
  `online_time` varchar(50) NOT NULL,
  `startcoin` int(11) NOT NULL,
  `vk_id` int(11) NOT NULL,
  `bonus` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `kot_user`
--

INSERT INTO `kot_user` (`id`, `pass`, `login`, `balance`, `img`, `hash`, `social`, `bdate`, `online`, `admin`, `ban`, `sliv`, `win`, `ref_id`, `ip`, `date_reg`, `online_time`, `startcoin`, `vk_id`, `bonus`) VALUES
(1, 'Tarutino1812', 'FlexUp', '0', '', 'DCKHYEPSBVYNTCICAL98CQTV9JDYZFBG', '', '', '0', '1', '0', '0', '0', '', '212.106.47.159', '03.12.2020 19:25:52', '1607014251', 0, 0, 0),
(2, '123123', 'KotDev', '505.73', 'https://sun9-30.userapi.com/impg/VHoI3_TgO3A0vAonBYnsK25zzW7hbPeFOyXs1g/2AiOnUqGq3o.jpg?size=200x0&quality=96&crop=118,163,200,200&sign=2a06c258f7206dd2054a1f4e08229cbe&c_uniq_tag=AiuY7b7irl8zJfKeUWuJqBwtjnHoqX8UgoM-BOlomxQ&ava=1', 'PYPVYRKXSKPPTARHQEBLMJFIUER8TTUT', 'http://vk.com/id613310602', '03122020', '1', '1', '0', '0', '0', '', '188.232.21.27', '03.12.2020 19:41:41', '1607016094', 0, 613310602, 2),
(3, 'FlexUp123123', 'Adm1nov', '0', 'https://sun9-44.userapi.com/impg/uh1TMbbaRsW6gL1AkdHGi8Ix87nWHyYX6HAvyA/q5HoxTZf6VM.jpg?size=200x0&quality=96&crop=0,0,800,800&sign=06b22336b2caa64739e6061c705948d3&c_uniq_tag=616vm9-iuXxiXza97ej5TZmWklqVXVI96OHTQUEsx-I&ava=1', 'ZBAGTGVNSSX0TT0PVJGQ0ORQUTGBFCLN', 'http://vk.com/id625351990', '', '1', '1', '0', '0', '0', '', '95.213.193.204', '03.12.2020 20:01:47', '1607016095', 0, 625351990, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `kot_withdraws`
--

CREATE TABLE `kot_withdraws` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `ps` varchar(50) NOT NULL,
  `wallet` varchar(50) NOT NULL,
  `sum` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `status` varchar(1) NOT NULL DEFAULT '0',
  `fake` varchar(1) NOT NULL DEFAULT '0',
  `login_fake` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `mines-game`
--

CREATE TABLE `mines-game` (
  `id` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  `login` text NOT NULL,
  `num_mines` int(11) NOT NULL,
  `bet` int(11) NOT NULL,
  `mines` text NOT NULL,
  `click` text NOT NULL,
  `onOff` text NOT NULL,
  `result` text NOT NULL,
  `step` int(11) NOT NULL,
  `win` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `mines-game`
--

INSERT INTO `mines-game` (`id`, `id_users`, `login`, `num_mines`, `bet`, `mines`, `click`, `onOff`, `result`, `step`, `win`) VALUES
(1, 2, 'KotDev', 3, 1, 'a:3:{i:0;i:4;i:1;i:15;i:2;i:16;}', 'a:1:{i:0;s:2:\"23\";}', '2', '1', 1, 1.14),
(2, 2, 'KotDev', 3, 1, 'a:3:{i:0;i:4;i:1;i:13;i:2;i:24;}', 'a:1:{i:0;s:2:\"17\";}', '2', '1', 1, 1.14),
(3, 2, 'KotDev', 3, 1, 'a:3:{i:0;i:2;i:1;i:4;i:2;i:18;}', 'a:1:{i:0;s:2:\"17\";}', '2', '1', 1, 1.14),
(4, 2, 'KotDev', 3, 1, 'a:3:{i:0;i:19;i:1;i:2;i:2;i:4;}', 'a:2:{i:0;s:1:\"5\";i:1;s:1:\"3\";}', '2', '1', 2, 1.3),
(5, 2, 'KotDev', 3, 1, 'a:3:{i:0;i:5;i:1;i:7;i:2;i:24;}', 'a:2:{i:0;s:1:\"1\";i:1;s:1:\"2\";}', '2', '1', 2, 1.3),
(6, 2, 'KotDev', 24, 1, 'a:24:{i:0;i:13;i:1;i:9;i:2;i:14;i:3;i:24;i:4;i:1;i:5;i:15;i:6;i:12;i:7;i:25;i:8;i:6;i:9;i:17;i:10;i:18;i:11;i:3;i:12;i:20;i:13;i:8;i:14;i:16;i:15;i:22;i:16;i:5;i:17;i:10;i:18;i:7;i:19;i:21;i:20;i:19;i:21;i:11;i:22;i:4;i:23;i:2;}', 'a:0:{}', '2', '1', 0, 0),
(7, 2, 'KotDev', 24, 1, 'a:24:{i:0;i:18;i:1;i:6;i:2;i:21;i:3;i:22;i:4;i:16;i:5;i:23;i:6;i:1;i:7;i:14;i:8;i:11;i:9;i:13;i:10;i:19;i:11;i:4;i:12;i:2;i:13;i:9;i:14;i:24;i:15;i:17;i:16;i:3;i:17;i:7;i:18;i:10;i:19;i:12;i:20;i:8;i:21;i:5;i:22;i:15;i:23;i:25;}', 'a:0:{}', '2', '1', 0, 0),
(8, 2, 'KotDev', 24, 1, 'a:24:{i:0;i:11;i:1;i:16;i:2;i:15;i:3;i:10;i:4;i:21;i:5;i:22;i:6;i:18;i:7;i:23;i:8;i:2;i:9;i:7;i:10;i:17;i:11;i:3;i:12;i:5;i:13;i:14;i:14;i:1;i:15;i:9;i:16;i:12;i:17;i:4;i:18;i:25;i:19;i:19;i:20;i:8;i:21;i:20;i:22;i:6;i:23;i:24;}', 'a:0:{}', '2', '1', 0, 0),
(9, 2, 'KotDev', 3, 1, 'a:3:{i:0;i:17;i:1;i:5;i:2;i:3;}', 'a:1:{i:0;s:2:\"17\";}', '2', '1', 1, 1.14),
(10, 2, 'KotDev', 3, 1, 'a:3:{i:0;i:21;i:1;i:9;i:2;i:6;}', 'a:1:{i:0;s:2:\"17\";}', '2', '1', 1, 1.14),
(11, 2, 'KotDev', 3, 1, 'a:3:{i:0;i:19;i:1;i:9;i:2;i:5;}', 'a:1:{i:0;s:2:\"17\";}', '2', '1', 1, 1.14),
(12, 2, 'KotDev', 3, 1, 'a:3:{i:0;i:22;i:1;i:21;i:2;i:5;}', 'a:3:{i:0;s:1:\"2\";i:1;s:1:\"1\";i:2;s:1:\"7\";}', '2', '1', 3, 1.49),
(13, 2, 'KotDev', 24, 1, 'a:24:{i:0;i:13;i:1;i:5;i:2;i:19;i:3;i:25;i:4;i:14;i:5;i:15;i:6;i:18;i:7;i:4;i:8;i:2;i:9;i:16;i:10;i:11;i:11;i:8;i:12;i:21;i:13;i:7;i:14;i:22;i:15;i:12;i:16;i:24;i:17;i:20;i:18;i:3;i:19;i:10;i:20;i:1;i:21;i:17;i:22;i:9;i:23;i:6;}', 'a:0:{}', '2', '1', 0, 0),
(14, 3, 'Adm1nov', 3, 7, 'a:3:{i:0;i:8;i:1;i:4;i:2;i:18;}', 'a:6:{i:0;s:2:\"17\";i:1;s:2:\"10\";i:2;s:1:\"1\";i:3;s:2:\"24\";i:4;s:2:\"21\";i:5;s:2:\"15\";}', '2', '1', 6, 16.59);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `gamecoin`
--
ALTER TABLE `gamecoin`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `kot_admin`
--
ALTER TABLE `kot_admin`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `kot_bots`
--
ALTER TABLE `kot_bots`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `kot_chance`
--
ALTER TABLE `kot_chance`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `kot_config`
--
ALTER TABLE `kot_config`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `kot_games`
--
ALTER TABLE `kot_games`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `kot_payments`
--
ALTER TABLE `kot_payments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `kot_promo`
--
ALTER TABLE `kot_promo`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `kot_user`
--
ALTER TABLE `kot_user`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `kot_withdraws`
--
ALTER TABLE `kot_withdraws`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `mines-game`
--
ALTER TABLE `mines-game`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `gamecoin`
--
ALTER TABLE `gamecoin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `kot_bots`
--
ALTER TABLE `kot_bots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `kot_chance`
--
ALTER TABLE `kot_chance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `kot_config`
--
ALTER TABLE `kot_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `kot_games`
--
ALTER TABLE `kot_games`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `kot_payments`
--
ALTER TABLE `kot_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `kot_promo`
--
ALTER TABLE `kot_promo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `kot_user`
--
ALTER TABLE `kot_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `kot_withdraws`
--
ALTER TABLE `kot_withdraws`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `mines-game`
--
ALTER TABLE `mines-game`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
