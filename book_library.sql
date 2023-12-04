-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2023 at 09:59 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book_library`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `biography` text NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`id`, `first_name`, `last_name`, `biography`, `deleted_at`) VALUES
(1, 'John', 'Doe', 'John Doe is a prolific author with a passion for storytelling.', '2023-11-22 15:20:13'),
(2, 'Jane', 'Smith', 'Jane Smith is an accomplished writer known for her captivating novels.', '2023-11-22 15:20:32'),
(3, 'Robert', 'Johnson', 'Robert Johnson is an emerging author with a unique writing style.', '2023-11-22 15:20:15'),
(4, 'test', 'test', 'test', NULL),
(5, 's', 'd', 'a', '2023-11-22 15:20:18'),
(6, '1', '1', '1', '2023-11-22 15:20:33'),
(7, 'Harry ', 'D', 'hasd hasdd', '2023-11-22 15:22:21'),
(8, '1', '1', '2', '2023-11-22 15:22:43'),
(9, 'J K ', 'Rowliong', 'asd', NULL),
(10, 'HAH ', 'dsa', 'xas', NULL),
(11, 'tolsoj', 'lav', '1', NULL),
(12, 'Harry', 'harry', 'ne fakjat haha dad rere asdasd casd', NULL),
(13, 'test', 'test', 'test', NULL),
(14, 'test', 'test', 'test', '2023-11-25 18:35:57'),
(15, '1', '1', '1', '2023-11-25 18:55:51'),
(16, '2', '2', '2', '2023-11-25 18:37:42'),
(17, '2', '2', '2', '2023-11-25 18:41:04'),
(18, '2', '2', '2', '2023-11-25 18:41:00'),
(19, '2', '2', '2', '2023-11-25 18:42:54'),
(20, '2', '2', '2', '2023-11-25 18:42:53'),
(21, '3', '3', '3', '2023-11-25 18:42:52'),
(22, '3', '3', '3', '2023-11-25 18:55:48'),
(23, '5', '5', '5', '2023-11-25 18:55:49'),
(24, '1', '23', '3', '2023-11-25 18:55:48'),
(25, '1', '23', '3', '2023-11-25 18:55:50'),
(26, '5', '5', '5', '2023-11-25 18:59:21'),
(27, '5', '5', '5', '2023-11-25 18:59:20'),
(28, '5', '5', '5', '2023-11-25 18:59:20'),
(29, '5', '5', '5', '2023-11-25 18:59:25'),
(30, '12', '2', '32', '2023-11-25 19:16:09'),
(31, 'h', 'H', 'H', '2023-11-25 19:11:46'),
(32, 'n', 'n', 'n', '2023-11-25 19:11:45'),
(33, ' n', 'n', 'n', '2023-11-25 19:16:07'),
(34, ' n', 'n', 'n', '2023-11-25 19:16:06'),
(35, 's', 's', 's', '2023-11-25 19:15:59'),
(36, 'nh', 'h', 'h', '2023-11-25 19:30:55'),
(37, 'sd', 'sd', 'sd', '2023-11-25 19:30:53'),
(38, 'asad', 'asd', 'asd', '2023-11-25 19:30:51'),
(39, '1', '1', '1', '2023-11-25 19:30:54'),
(40, 'new', 'new', 'new', '2023-11-25 19:32:12'),
(41, 'new', 'new', 'new', '2023-11-25 19:32:08'),
(42, 'da', 'dad', 'a', '2023-11-25 19:32:07'),
(43, 'da', 'dad', 'a', '2023-11-25 19:32:10'),
(44, 'da', 'da', 'da', '2023-12-01 12:31:51'),
(45, 'dasss', 'dass', 'das', '2023-11-25 19:40:22'),
(46, '1', '1', '1', '2023-11-25 19:35:37'),
(47, 'b', 'b', 'b', '2023-11-25 19:35:36'),
(48, 'b', 'b', 'b', '2023-11-25 19:35:38'),
(49, 'b', 'b', 'b', '2023-11-25 19:35:35'),
(50, 'b', 'bb', 'b', '2023-11-25 19:40:13'),
(51, '1', '1', '1', '2023-11-25 19:44:26'),
(52, '1', '1', '1', '2023-11-25 19:51:19'),
(53, 'Jim', 'Belushi', 'Biography must have at least 20 characters.Biography must have at least 20 characters.', NULL),
(54, '1234', '1', '1234', '2023-11-25 21:23:49'),
(55, 'Harry', 'Redknap', 'asd asdd asd adasd asdasd asd a dasd asdasd a sd', NULL),
(56, 'J.R', 'Tolkien', 'hehe ahs lorem asdas bcba hehe bsb grgf c', '2023-12-01 12:31:49'),
(57, 'asd', 'asd', 'asd asdasd asd adadsda asd adadsds', '2023-12-01 12:31:47'),
(58, 'da', 'das', 'das', '2023-11-30 19:50:49'),
(59, 'asd', 'asd', 'asd', '2023-12-01 12:31:45'),
(60, 'asd', 'asd', 'asd', '2023-12-01 12:31:43'),
(61, 'asd', 'asd', 'asd', '2023-12-01 12:31:41'),
(62, 'asd', 'asd', 'asd', '2023-12-01 12:31:37'),
(63, 'Tocen', 'Validen', 'TocenTocen validen inputTocen validen input validen input', NULL),
(64, 'Tocen', 'Validen', 'TocenTocen validen inputTocen validen input validen input', '2023-12-01 12:35:43'),
(65, 'Tocen', 'Validen', 'TocenTocen validen inputTocen validen input validen input', NULL),
(66, 'Tocen', 'Validen', 'TocenTocen validen inputTocen validen input validen input', NULL),
(67, 'Tocen', 'Validen', 'TocenTocen validen inputTocen validen input validen input', '2023-12-01 13:04:39'),
(68, 'qasd', 'asd', 'asdasdasd asd ad asasd asd adasd asd', '2023-12-01 13:04:21'),
(69, 'das', 'dsa', 'asd asd asd asd asd as asd ad a asd as', '2023-12-01 13:04:17'),
(70, 'das', 'dsa', 'asd asd asd asd asd as asd ad a asd as', '2023-12-01 13:04:13'),
(71, '12', '123', 'asd asd asd asd asd asdas as dasd asdasadasdas dad', '2023-12-01 13:04:08'),
(72, 'Carles', 'Bukowski', 'Charlses BUkowski latest book required another', NULL),
(73, 'Bukowski', 'Carles', 'Charlses BUkowski latest book required another', NULL),
(74, 'BOjan', 'Minioski', 'DSasd  sda basd bdsb', '2023-12-02 10:51:46'),
(75, 'Bojan', 'Minoski', 'lorem picsum lorem asd rsd sd', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `year_of_publication` int(11) NOT NULL,
  `number_of_pages` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `title`, `author_id`, `category_id`, `year_of_publication`, `number_of_pages`, `image_url`, `deleted_at`) VALUES
(2, 'Mystery of the Shadows', 2, 2, 2020, 250, 'https://example.com/book2.jpg', '2023-11-23 15:56:55'),
(7, '23333333333', 4, 4, 1321, 12, '3', '2023-11-23 15:47:23'),
(8, 'The witcher', 11, 4, 1999, 555, 'hahahah.com', '2023-11-24 17:29:25'),
(9, 'Castemore Hills', 4, 1, 1885, 123, 'https://picsum.photos/200/300?random=13', '2023-12-02 11:12:04'),
(10, 'Lion King', 11, 1, 123123123, 123123123, 'https://picsum.photos/200/300?random=11', '2023-12-02 11:09:23'),
(11, 'tittle', 4, 1, 1998, 144, 'https://picsum.photos/200/300?random=3', '2023-11-30 14:39:01'),
(14, '2', 9, 16, 1, 2, '2', '2023-11-25 21:12:52'),
(15, '3', 13, 6, 3, 3, '3', '2023-11-25 21:12:49'),
(16, '5', 44, 1, 5, 5, '5', '2023-11-25 21:17:53'),
(17, '1234', 54, 29, 1234, 1234, '1234', '2023-11-25 21:23:55'),
(18, 'Harry Poter', 11, 4, 1998, 51515, 'https://picsum.photos/200/300?random=4', '2023-12-02 11:25:40'),
(23, 'The lord of the rings', 56, 6, 1885, 499, 'https://picsum.photos/200/300?random=6', NULL),
(25, 'HOBBIT', 56, 30, 31231, 123, 'https://picsum.photos/200/300?random=1', NULL),
(26, 'Silence of the lambs', 11, 30, 1111, 232, 'https://picsum.photos/200/300?random=9', NULL),
(27, 'asd', 66, 16, 123, 123, 'https://picsum.photos/200/300?random=15', NULL),
(28, 'sda', 4, 1, 12, 12312, 'https://picsum.photos/200/300?random=18', '2023-12-02 10:52:44'),
(29, 'NOVa', 73, 32, 1233, 1233, 'https://picsum.photos/200/300?random=18', NULL),
(30, 'Black Panther', 75, 33, 1111, 1111, 'https://picsum.photos/200/300?random=20', '2023-12-02 19:28:19');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `title`, `deleted_at`) VALUES
(1, 'Action21', '2023-12-02 11:20:23'),
(2, 'Drama', '2023-11-19 21:01:50'),
(4, 'Thriller', NULL),
(5, 'Horror', NULL),
(6, 'fanasy', '2023-12-02 17:45:48'),
(7, 'asd', '2023-11-22 10:45:43'),
(8, 'HAH123', '2023-11-23 12:10:00'),
(9, '1', '2023-11-22 21:51:26'),
(10, 'comedy', '2023-11-23 10:40:45'),
(11, 'Comedy2', '2023-11-25 17:51:05'),
(12, 'Thriller', '2023-11-23 12:04:01'),
(13, 'faNTASTIC1', '2023-11-25 17:50:51'),
(14, 'category', '2023-11-25 17:40:11'),
(15, 'AS', '2023-11-25 17:50:17'),
(16, 'Marvel', NULL),
(17, 'proba', '2023-11-25 17:59:06'),
(18, 'proba', '2023-11-25 17:59:05'),
(19, 'proba', '2023-11-25 17:59:04'),
(20, 'proba', '2023-11-25 17:59:02'),
(21, 'proba1', '2023-11-25 19:13:17'),
(22, 'proba2', '2023-11-25 18:05:40'),
(23, 'rear', '2023-11-25 19:13:15'),
(24, 'asd', '2023-11-25 19:13:14'),
(25, 's', '2023-11-25 19:15:56'),
(26, 's2', '2023-11-30 12:24:15'),
(27, '1', '2023-11-25 19:40:05'),
(28, 'test1', '2023-11-25 19:51:05'),
(29, '1234', '2023-11-25 21:23:43'),
(30, 'horror2', '2023-12-01 13:04:44'),
(31, 'DC category', '2023-12-02 10:51:42'),
(32, 'DADADAD', NULL),
(33, 'POSLEDEN', '2023-12-02 19:27:56');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `comment_text` text NOT NULL,
  `is_approved` tinyint(1) DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `user_id`, `book_id`, `comment_text`, `is_approved`, `deleted_at`, `created_at`) VALUES
(3, 3, 2, 'Great book', 1, NULL, '2023-11-26 00:06:36'),
(4, 3, 8, 'the wither book', 0, '2023-11-24 17:29:25', '2023-11-26 00:06:36'),
(6, 4, 9, 'this book sucsks', 1, '2023-12-02 11:12:04', '2023-11-26 13:16:33'),
(7, 5, 9, 'This book is okay ', 1, '2023-12-02 11:12:04', '2023-11-26 17:31:48'),
(9, 19, 9, 'test@live.com', 0, '2023-12-02 11:12:04', '2023-11-26 22:56:29'),
(10, 19, 11, 'comment by test@live.com', 0, '2023-11-30 14:39:01', '2023-11-27 10:54:38'),
(12, 17, 9, 'Nov komentar od boki_it', 0, '2023-12-02 11:12:04', '2023-11-27 11:54:39'),
(13, 17, 10, 'komentar za lion king', 0, '2023-12-02 11:09:23', '2023-11-27 11:59:35'),
(14, 17, 11, 'Komentar za title , testirame delete', 0, '2023-11-30 14:39:01', '2023-11-27 12:06:49'),
(15, 17, 18, 'komentar za heri poter', 0, '2023-12-02 11:25:41', '2023-11-27 12:17:10'),
(16, 19, 18, 'test potter', 0, '2023-12-02 11:25:41', '2023-11-27 12:25:46'),
(17, 19, 10, 'komentar za lion king od test', 0, '2023-12-02 11:09:23', '2023-11-27 12:47:01'),
(18, 20, 9, 'Opet comentar', 0, '2023-12-02 11:12:04', '2023-11-27 13:58:37'),
(19, 20, 10, 'NOV KOMENTAR DELETE BOOK', 0, '2023-12-02 11:09:23', '2023-11-27 14:06:18'),
(20, 20, 11, 'test3', 0, '2023-11-30 14:39:01', '2023-11-27 14:22:27'),
(21, 20, 18, '4ka', 0, '2023-12-02 11:25:41', '2023-11-27 14:41:26'),
(22, 21, 9, 'ideme treti pat', 0, '2023-12-02 11:12:04', '2023-11-27 14:50:58'),
(23, 21, 10, 'test3123123123123', 0, '2023-12-02 11:09:23', '2023-11-27 14:59:36'),
(24, 21, 11, '123', 1, '2023-11-30 14:39:01', '2023-11-27 15:02:21'),
(25, 21, 18, 'THIS IS LATEST COMMENT UNNAPROVED\r\n', 0, '2023-12-02 11:25:41', '2023-11-28 16:51:30'),
(26, 3, 10, 'da be', 0, '2023-12-02 11:09:23', '2023-12-01 13:25:58'),
(27, 20, 27, 'Komentar da vidime dali e skrien', 1, NULL, '2023-12-02 19:16:37'),
(28, 23, 30, 'New  blank panther commment', 1, '2023-12-02 19:28:19', '2023-12-02 19:25:13');

-- --------------------------------------------------------

--
-- Table structure for table `note`
--

CREATE TABLE `note` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `note_text` text NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `note`
--

INSERT INTO `note` (`id`, `user_id`, `book_id`, `note_text`, `deleted_at`) VALUES
(12, 20, 9, 'LOVELY PAGE -20033', NULL),
(13, 20, 9, 'asdasd1', '2023-12-02 00:02:02'),
(14, 20, 9, 'Another Notecas222', '2023-12-01 23:19:27'),
(18, 20, 9, 'Da AD', '2023-12-01 23:19:47'),
(19, 20, 9, 'asd12', NULL),
(20, 20, 9, 'asdasd', '2023-12-02 00:06:17'),
(21, 20, 18, 'Notes sto treba da se Izbrisat', '2023-12-02 11:25:41'),
(22, 23, 30, 'dope book1', '2023-12-02 19:28:19');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `role_type`) VALUES
(1, 'Administrator'),
(2, 'End_User');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `role_id`) VALUES
(3, 'admin1@example.com', 'hash1234', 1),
(4, 'bokimino15@gmail.com', '$2y$10$xms4lzkz7l1yTHQ/n0kFdusQGCkklhN9mgluuorREqNwES/PsjoJ.', 2),
(5, 'hah@live.com', '$2y$10$N4KZgKBM798RnfT5pRiJeepTsGC0vzwpZR5hJVxgWsIP99r1tZGgq', 2),
(11, 'bokimino15@gmail.com', '$2y$10$bWj0tqtvWzq9U.F9U/keRu1uxcup.DENmz/2z3yAjT/misdj0mklW', 2),
(12, 'bokimino15@gmail.com', '$2y$10$L2RfbSaPzoMIk2YYBIwUp.Lan79EoQKI2w1MDP7S70dEq8LN2rJAa', 2),
(13, 'admin1@example.com', '$2y$10$c6a7zP70LYRUiQaOxWF7rOiUMBKjkucxXXOmQjusW4GnpqUcDpmRO', 2),
(14, 'admin1@example.com', '$2y$10$mfV7jNIG8fQQEZ4Kaszs2ev1peEF5JsD87g0GMa/9N5iHZplg.eey', 2),
(15, 'admin1@example.com', '$2y$10$vN7MAVIhvLGtQ05r1Y4bquv0x0plW.urGGzH3Z9q3gXm8BzGcdH2u', 2),
(16, 'bokimino15@gmail.com', '$2y$10$kFdE.CqtjixeMPV6zgXd/.EgsLzTSlQHBU/l0k6WOTW8yq5P2AoDK', 2),
(17, 'boki_it@live.com', '$2y$10$NIbriMM7NsLywO7DcGOp5uJfez.ejx6i7X/t29hfuwQqMN0NzLgl.', 2),
(18, 'bokimino15@gmail.com', '$2y$10$5yaum2Sq0k/aSYqwAk54SukDp/PcC2tDbsIxCcnjuPA7KBn9gOU8.', 2),
(19, 'test@live.com', '$2y$10$FDM8F4zkdMF8GZMSRuBMy.IwCjk0pLwdv99NBUvVfX1.6HxX0fUJy', 2),
(20, 'test2@live.com', '$2y$10$RcR4MedZujh9sEDZaFGCHOet1WRK01BjOKh4BWwxMnqCiTgdI4E9e', 2),
(21, 'test3@live.com', '$2y$10$5oXjzk22S2feXJx6vtS9OOlGsrtWvGjEQ3n..26EUFwaS5ZRRbYYq', 2),
(22, 'boki_it2@live.com', '$2y$10$bPuPocQOx1swuf8jfAVCSu2MQx4onXgoSic4qaCSpBJKUZhW2aBW2', 2),
(23, 'test22@live.com', '$2y$10$1tut7DFBhoGKlte.bjmE/.EZSgiEvtDUjUPe5yqtesX8/k.EVMKYK', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author_id` (`author_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `book_id` (`book_id`);

--
-- Indexes for table `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `book_id` (`book_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `note`
--
ALTER TABLE `note`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`),
  ADD CONSTRAINT `book_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`);

--
-- Constraints for table `note`
--
ALTER TABLE `note`
  ADD CONSTRAINT `note_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `note_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
