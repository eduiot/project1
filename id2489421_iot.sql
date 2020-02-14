-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 24, 2017 at 07:59 PM
-- Server version: 10.1.20-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id2489421_iot`
--

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `id` int(6) UNSIGNED NOT NULL,
  `devicename` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `ekey` varchar(50) DEFAULT NULL,
  `command` varchar(30) DEFAULT NULL,
  `ui` varchar(10000) DEFAULT NULL,
  `reg_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `devices`
--

INSERT INTO `devices` (`id`, `devicename`, `username`, `ekey`, `command`, `ui`, `reg_date`) VALUES
(1, 'd1', 'atik', '12345678', 'one', '<HTML>\r\n<TITLE>\r\nEbots Wifi Control\r\n</TITLE>\r\n<style>\r\nbody{  \r\n    background: #34495E;\r\n    color: #FFF;\r\n    text-align: center;   \r\n  }\r\nh1{\r\n    font-family: Roboto, sans-serif; \r\n  font-size: 35px; \r\n  font-weight: 300; \r\n}\r\nbutton {\r\n    width: 30%;\r\n    background-color: #4CAF50;\r\n    color: white;\r\n    padding: 10px 10px;\r\n    margin: 8px 0;\r\n  font-size: 25px;\r\n    border: none;\r\n    border-radius: 4px;\r\n    cursor: pointer;\r\n}\r\np{\r\n    font-size: 25px;\r\n}\r\n</style>\r\n <BODY>\r\n <h1>Eduiot</h1>\r\n <p>LED #1 <a href=\"\"><button>ON</button></a>&nbsp;<a href=\"\"><button>OFF</button></a></p>\r\n <p>LED #2 <a href=\"\"><button>ON</button></a>&nbsp;<a href=\"\"><button>OFF</button></a></p>\r\n <p>LED #3 <a href=\"\"><button>ON</button></a>&nbsp;<a href=\"\"><button>OFF</button></a></p>\r\n <p>LED #4 <a href=\"\"><button>ON</button></a>&nbsp;<a href=\"\"><button>OFF</button></a></p>\r\n </BODY>\r\n</HTML>\r\n', '2017-08-07 04:38:20'),
(20, 'shagor', 'atik', '123456789', NULL, NULL, '2017-08-21 07:52:38'),
(22, '150908', 'hasib', '150908', NULL, NULL, '2017-08-26 13:36:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'atik', '$2y$10$0IWTMdBRpa8035XiUCMWGeKK9mqQafCUJYz9kAiZTUd9Fa8cEP9Ii', '2017-07-25 06:00:38'),
(2, 'user1', '$2y$10$wXvigHHNK1ZV46AaYYl0L.ObxcBley7AG1nJFPIDKd7Zue3/QfhwG', '2017-08-07 06:05:21'),
(3, 'hasib', '$2y$10$iQxR0xNIi7/jGHokuKwFje0n74C6aJmR3YR7.vjNfqfFJJy6Zx7.S', '2017-08-26 13:35:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
