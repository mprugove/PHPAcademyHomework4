-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Sep 10, 2020 at 07:28 AM
-- Server version: 10.1.46-MariaDB-1~bionic
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--
CREATE DATABASE IF NOT EXISTS `library` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `library`;

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
CREATE TABLE `author` (
  `id` int(11) NOT NULL,
  `author_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`id`, `author_name`) VALUES
(1, 'George Sansom'),
(2, 'Andew Gordon'),
(3, 'J.R.R. Tolkien'),
(4, 'Stephen Hawking'),
(5, 'Samuel Shem'),
(6, 'Stephen King'),
(7, 'Truman Capote'),
(8, 'Agatha Cristie'),
(9, 'Robert B.Parker'),
(10, 'Jo Nesbo'),
(11, 'David Icke'),
(12, 'Nelson Mandela'),
(13, 'Kobe Bryant'),
(14, 'Richard Williams'),
(15, 'William Shakespeare'),
(16, 'Edgar Allan Poe'),
(17, 'Mark Twain'),
(18, 'Fyodor Dostoevsky'),
(19, 'Leo Tolstoy'),
(20, 'Ernest Hemingway'),
(21, 'Oscar Wilde');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `book_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `book_edition` int(25) DEFAULT NULL,
  `author` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `book_name`, `book_edition`, `author`, `type`) VALUES
(1, 'In Cold Blood', 2, 7, 4),
(2, 'The Happy Prince and Other Stories', 2, 21, 15),
(3, 'A House of Pomegranates', 1, 21, 15),
(4, 'The Ballad of Reading Gaol', 2, 21, 13),
(5, 'War and Peace', 5, 19, 12),
(6, 'Ana Karenina', 9, 19, 12),
(7, 'The Old Man and the Sea', 10, 20, 12),
(8, 'In our Time', 22, 20, 14),
(9, 'The Idiot', 4, 18, 12),
(10, 'Crime and Punishment', 19, 18, 12),
(11, 'White Nights', 3, 18, 14),
(12, 'Another men wife and a husband under the bed', 3, 18, 14),
(13, 'The Death of Ayrton Senna', 3, 14, 9),
(14, 'The Mamba Mentality : How to Play', 1, 13, 9),
(15, 'Long Walk to Freedom', 2, 12, 8),
(16, 'Phantom Self', 3, 11, 7),
(17, 'The Trigger : The Lie That Changed the World', 1, 11, 7),
(18, 'Knife', 1, 10, 5),
(19, 'The Snowman', 3, 10, 5),
(20, 'The Redeemer', 2, 10, 5),
(21, 'Blood on Snow', 1, 10, 5),
(22, 'Harry Hole Mysteries', 5, 10, 5),
(23, 'The Bitterset Pill', 1, 9, 5),
(24, 'A History of Japan', 1, 1, 1),
(25, 'A Modern History Of Japan', 1, 2, 1),
(26, 'The Lord of the Rings trilogy', 2, 3, 2),
(27, 'The Hobbit', 2, 3, 2),
(28, 'The Silmarillion', 2, 3, 2),
(29, 'A Brief History of Time', 1, 4, 3),
(31, 'Doctor Sleep', 1, 6, 4),
(32, 'Murder at the Vicarage', 4, 8, 5),
(33, 'Murder on the Orient Express', 2, 8, 5),
(34, 'Endless Night', 10, 8, 5),
(35, 'The Grand Design', 6, 4, 6),
(36, 'My Brief History', 2, 4, 3),
(37, 'Black Holes and Baby Universes', 1, 4, 3),
(38, 'It', 1, 6, 6),
(39, 'The Outsider', 4, 6, 6),
(40, 'Childen of the Matrix', 1, 11, 7),
(41, 'The Adventures of Huckleberry Finn', 15, 17, 12),
(42, 'The Adventures of Tom Sawyer', 2, 17, 12),
(43, 'Annabel Lee', 9, 16, 13),
(44, 'The Raven', 10, 16, 13),
(45, 'Unfinished Tales', 8, 3, 2),
(46, 'The History of Middle-Earth', 6, 3, 2),
(47, 'Macbeth', 16, 15, 11),
(48, 'Othello', 16, 15, 11),
(49, 'Hamlet', 20, 15, 11),
(50, 'Romeo and Juliet', 19, 15, 11);

-- --------------------------------------------------------

--
-- Table structure for table `book_type`
--

DROP TABLE IF EXISTS `book_type`;
CREATE TABLE `book_type` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_type`
--

INSERT INTO `book_type` (`id`, `type`) VALUES
(1, 'History'),
(2, 'Fiction'),
(3, 'Science'),
(4, 'Crime'),
(5, 'Mistery'),
(6, 'Horror'),
(7, 'Conspiracy'),
(8, 'Autobiography'),
(9, 'Sport'),
(10, 'Tragedy'),
(11, 'Poetry'),
(12, 'Novel'),
(13, 'Poem'),
(14, 'Short Story'),
(15, 'Fairy Stories');

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

DROP TABLE IF EXISTS `loan`;
CREATE TABLE `loan` (
  `loan_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user` tinyint(4) DEFAULT NULL,
  `book` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loan`
--

INSERT INTO `loan` (`loan_date`, `user`, `book`) VALUES
('2020-09-09 23:40:59', 3, 33),
('2020-09-09 23:40:59', 9, 31),
('2020-09-09 23:40:59', 4, 24),
('2020-09-09 23:40:59', 7, 11),
('2020-09-09 23:40:59', 11, 33),
('2020-09-09 23:40:59', 10, 35),
('2020-09-09 23:40:59', 7, 50),
('2020-09-09 23:40:59', 8, 2),
('2020-09-09 23:40:59', 6, 3),
('2020-09-09 23:40:59', 9, 4);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` tinyint(4) NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adress` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `joined_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `adress`, `joined_at`) VALUES
(1, 'Pero', 'Perić', 'Perina Ulica 21', '2020-09-09 23:40:58'),
(2, 'Han', 'Solo', 'Random adress', '2020-09-09 23:41:12'),
(3, 'Darth', 'Vader', 'DeathStar 0', '2020-09-09 23:40:58'),
(4, 'Iva', 'Ivić', 'Ivina 28', '2020-09-09 23:40:58'),
(5, 'Ivica', 'Ivovski', 'Ivina 8', '2020-09-09 23:40:58'),
(6, 'Mike', 'Tyson', 'Ring 12', '2020-09-09 23:40:58'),
(7, 'Lennox', 'Lewis', 'ring 66', '2020-09-09 23:40:58'),
(8, 'Eduardo', 'Da Silva', 'Unkown', '2020-09-09 23:40:58'),
(9, 'Luka', 'Modrić', 'Santiago Bernabeu', '2020-09-09 23:40:58'),
(10, 'Steve', 'Urkel', 'Urkels 8', '2020-09-09 23:40:58'),
(11, 'Chandler', 'Bing', 'Friends 4', '2020-09-09 23:40:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author` (`author`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `book_type`
--
ALTER TABLE `book_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan`
--
ALTER TABLE `loan`
  ADD KEY `user` (`user`),
  ADD KEY `book` (`book`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `book_type`
--
ALTER TABLE `book_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`author`) REFERENCES `author` (`id`),
  ADD CONSTRAINT `books_ibfk_2` FOREIGN KEY (`type`) REFERENCES `book_type` (`id`);

--
-- Constraints for table `loan`
--
ALTER TABLE `loan`
  ADD CONSTRAINT `loan_ibfk_1` FOREIGN KEY (`user`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `loan_ibfk_2` FOREIGN KEY (`book`) REFERENCES `books` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
