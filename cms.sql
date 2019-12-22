-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2019 at 08:54 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(3) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `user_id`, `cat_title`) VALUES
(23, 74, 'PHP DEVELOPER'),
(38, 74, 'C# .Net Vb.Net'),
(39, 0, 'Python');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(3) NOT NULL,
  `comment_post_id` int(3) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_status` varchar(255) NOT NULL,
  `comment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_post_id`, `comment_author`, `comment_email`, `comment_content`, `comment_status`, `comment_date`) VALUES
(6, 10, 'Peter ', 'peter@gmail.com', 'Peter Just a another PICE of comments', 'approve', '2019-11-20'),
(7, 2, 'Jaun', 'jaun@gmail.com', 'nice post', 'unapprove', '2019-11-20'),
(9, 8, 'Looolooo', 'looloo@gamil.com', 'This is testing Purpose..', 'approve', '2019-11-24'),
(10, 8, 'Shahid', 'shahid@gmail.com', 'Nice Post', 'approve', '2019-12-01'),
(12, 10, 'Sameer', 'sameer@gmail.com', 'Nice post', 'approve', '2019-12-10'),
(16, 16, 'Rayees khan', 'krayees282@gmail.com', 'IT is Just a testing purpose of the website Content Thanku...', 'unapprove', '2019-11-19'),
(18, 38, 'Sandra', 'sandra@gmail.com', 'this is a vry vry cute smile\r\njaghodhar bhaiya & Rayees', 'unapproved', '2019-12-19'),
(19, 36, 'Shahid', 'shahid@gmail.com', 'nice post dear', 'unapproved', '2019-12-20'),
(20, 40, 'Edwin Ediz', 'Edwin@gmail.com', 'nice post', 'approve', '2019-12-21');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `post_id`) VALUES
(26, 0, 0),
(27, 0, 0),
(28, 0, 0),
(29, 0, 0),
(30, 0, 0),
(51, 0, 0),
(52, 0, 0),
(53, 0, 0),
(54, 0, 0),
(55, 0, 0),
(56, 0, 0),
(57, 0, 0),
(58, 0, 0),
(59, 0, 0),
(60, 0, 0),
(61, 0, 0),
(62, 0, 0),
(63, 0, 0),
(64, 0, 0),
(65, 0, 0),
(66, 0, 0),
(67, 0, 0),
(68, 0, 0),
(69, 0, 0),
(70, 0, 0),
(71, 0, 0),
(72, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(3) NOT NULL,
  `post_category_id` int(3) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_user` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `post_comment_count` int(11) NOT NULL,
  `post_status` varchar(255) NOT NULL DEFAULT 'draft',
  `post_views_count` int(11) NOT NULL,
  `likes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `user_id`, `post_title`, `post_author`, `post_user`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comment_count`, `post_status`, `post_views_count`, `likes`) VALUES
(16, 23, 74, 'Php MySql', 'khan Rayees', '74', '2019-11-20', 'm.jpg', 'kseffjlk;ajslkdf;j; kljlkfj lk;dfjlkd', 'Blogging Website', 0, 'draft', 27, 3),
(17, 24, 0, 'Web Development', 'Rayees khan', '', '2019-12-01', 'business3.jpg', 'This is Blogging Website ..', 'Blogging Website', 0, 'draft', 9, 3),
(20, 24, 0, 'Comapny', 'Shaziya khan', '', '2019-12-06', 'business3.jpg', '<p>Company Product Manager..</p>', 'Blogging Website', 0, 'draft', 5, 0),
(21, 24, 0, 'Comapny', 'Shaziya khan', '', '2019-12-06', 'business3.jpg', '<p>Company Product Manager..</p>', 'Blogging Website', 0, 'draft', 4, 0),
(26, 24, 0, 'Comapny', 'Shaziya khan', '', '2019-12-07', 'business3.jpg', '', 'Blogging Website', 0, 'draft', 0, 0),
(32, 23, 0, 'Company', '', 'Rayees', '2019-12-10', 'business3.jpg', 'This is Awesome Website..', 'Blogging Mazore Website.. ', 0, 'draft', 6, 0),
(35, 38, 0, 'Vb .Net System', '', 'Qazi', '2019-12-17', 'm.jpg', 'This is a very dynamic Websit', 'Vb .Net and ASP .Net', 0, 'published', 116, 6),
(36, 23, 0, 'Messanger Blogging Website', '', 'Rayees khan', '2019-12-18', 'loader.gif', '<p>Nice one of the Most Better Website in the Blogging Website...</p>', 'Blogging Mazore Website..', 0, 'published', 8, 3),
(37, 23, 0, 'Google', '', 'Rayees khan', '2019-12-18', 'b1.jpg', '<p>This is Awesome Place please Vist that place..</p>', 'Vist this place', 0, 'published', 2, 0),
(38, 24, 0, '', '', 'jaghodhar bhaiya', '2019-12-19', 'WIN_20191206_06_35_20_Pro.jpg', '', 'Blogging Website', 0, 'published', 4, 0),
(39, 24, 0, 'Content Management System', '', 'shahid', '2019-12-20', 'image2.jpeg', '<p>Nice one of the Most Baeutiful Project&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>', 'Blogging Mazore Website..', 0, 'published', 3, 0),
(40, 38, 0, 'demo', '', 'naveen', '2019-12-21', 'dubai.jpg', '<p>This is demo for the website..</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>', 'Blogging Mazore Website..', 0, 'published', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(3) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_firstname` varchar(255) NOT NULL,
  `user_lastname` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_image` text NOT NULL,
  `user_role` varchar(255) NOT NULL,
  `randSalt` varchar(255) NOT NULL DEFAULT '$2y$10$iusesomecrazystrings22',
  `token` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `user_password`, `user_firstname`, `user_lastname`, `user_email`, `user_image`, `user_role`, `randSalt`, `token`) VALUES
(20, 'Peter', '$2y$12$ECRLNDANVXH1o9Ne.WcJYOaTUBNsqMVGSPB8Ii8B1.k9PzwzTY0bm', '', '', 'peter@gmil.com', '', 'admin', '$2y$10$iusesomecrazystrings22', ''),
(51, 'Jaun', '$2y$12$EHMf5JddU/fLxMD.nbh/h.IrvWaiodLdHBL86J7htpHEd/cIvW6Zm', '', '', 'jaun@gmail.com', '', 'subscriber', '$2y$10$iusesomecrazystrings22', ''),
(52, 'luis', '$2y$12$HqTRpsoWO5P3Ij5ZJnAfTOoVoANMuSQZv6YohzvpYVaAeNeAbBkVy', '', '', 'luis@gmail.com', '', 'subscriber', '$2y$10$iusesomecrazystrings22', ''),
(73, 'James', '$2y$12$03dINe1I6Y6mZxZ4NHz7b.bc93o6e4E/OGrWj.mlBhBH9NNy00gYe', '', '', 'james@gmail.com', '', 'subscriber', '$2y$10$iusesomecrazystrings22', ''),
(74, 'Rayees khan', '$2y$12$Jvb/rLWPaoiU1/SW9CSnNekMbP/3R/5c8538LFyu/7fZAHf8b7KAO', '', '', 'krayees282@gmail.com', '', 'admin', '$2y$10$iusesomecrazystrings22', ''),
(75, 'Sameer Ahmed', '$2y$12$QY1zawTWxWRWDp/mWazZleDCKMYIDLmWhO6wNDeGH/z.tmN/7cMpu', '', '', 'saameer@gmail.com', '', 'subscriber', '$2y$10$iusesomecrazystrings22', ''),
(76, 'jaghodhar bhaiya', '$2y$12$s6LGLDTNpImsnP9ubc.Yb.FOzHi74kSLmPBLuB1ZuJHOUFHwfNqXS', '', '', 'jaghodar12@gmail.com', '', 'subscriber', '$2y$10$iusesomecrazystrings22', ''),
(77, 'shahid', '$2y$12$Xy0y70Yjoe7e/ISjLLGU8.Hi2bRt2ijbx/xNs4dUIMzHInvRAO7LW', '', '', 'shahid@gmail.com', '', 'subscriber', '$2y$10$iusesomecrazystrings22', '2f9d0a77dd455a05440bc668552104ed532aef996817ab88df209c13e2bc0c99a9046863c6c52a83eb34c8e995523853ec71'),
(79, 'Sameera', '$2y$12$//mTGanDvvrEs24wuFMh9O86s2.D4fWyW3e8gdNxxhC/dhe0gRMcC', '', '', 'sameerahmed@gmail.com', '', 'subscriber', '$2y$10$iusesomecrazystrings22', '7aad83432e0da4205458a94129bcde5c3378cd82ad172127d1e3dcac2cf13a33c0e5aff6e78b13f86290e8937c36465bc963');

-- --------------------------------------------------------

--
-- Table structure for table `users_online`
--

CREATE TABLE `users_online` (
  `id` int(11) NOT NULL,
  `session` varchar(255) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_online`
--

INSERT INTO `users_online` (`id`, `session`, `time`) VALUES
(3, '8uu1ptd5r07fc168dbgoaa1bhm', 1575902976),
(4, 'u0e03d81jspk48ppt26m8k1mm7', 1575898085),
(5, 'kd19m86bitit2fpr8u0amnmf27', 1575901605),
(6, 'pici8v37tgqavjjcmosdro8rfm', 1575901676),
(7, '4blpup6me6281c8b7ht7h1igom', 1575902902),
(8, '', 1575902976),
(9, 'r84en783dv469so4tm23hgcesj', 1575921652),
(10, '8qmgqo2hbdf19iouah9166ontt', 1575920186),
(11, 'e3nsjojqoa6u8438q6gti3tj8b', 1576001286),
(12, 'mlpic5pkbis9rens7serbiphta', 1576001014),
(13, '73530g205uqrecf7ao4go1bcm3', 1576089450),
(14, 'g6tir3rm5tj5hsdsjehsqabeq9', 1576147613),
(15, '1hoj16do2uc1soaqhr191dtkga', 1576169098),
(16, 'podon7ft1403v8113v56l871io', 1576257404),
(17, '8ttlic2apimr672ldcf1rf8oii', 1576441757),
(18, 'n62phuja5u7iqhith81ju9mkrj', 1576522618),
(19, '99op27rnec7of1cqn0k1m7vuj2', 1576601421),
(20, 'h447599f4ura5vu5ou60b0a9ne', 1576590661),
(21, 'rboj90g8u8i7u59ftk3ikfb3m4', 1576597561),
(22, 'mb8ks8i6ic2ddgbuui1p1frmhp', 1576616631),
(23, '8p07m3m960sjdbs96k3ensgaju', 1576613117),
(24, 'ut3ufdr4qje2ldfp9teecrmel1', 1576615032),
(25, 'u3psfvbdusl1nhn50s3jhink8s', 1576616658),
(26, 'uov7lvpppdngim9qpr9d1njidg', 1576701642),
(27, 'ito9rrhrrgg9kmitr51o8pccq2', 1576681217),
(28, 'vi9v6q5fgcitn63n28646plmto', 1576770448),
(29, 'rsvd365tlh8ec7j43g02knhscp', 1576845153),
(30, '1ehoreif48hgn530f2c295orf5', 1576915736),
(31, 'se0tkbrcoeaolnl96vic381k62', 1576915723),
(32, '27r1k5ssptq3ubg6jflup1r408', 1576937821),
(33, 'ahbimep7p55hu7m7lklbf7ith3', 1577009209);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `users_online`
--
ALTER TABLE `users_online`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `users_online`
--
ALTER TABLE `users_online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
