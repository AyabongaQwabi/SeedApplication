-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 18, 2015 at 02:00 PM
-- Server version: 5.5.46-0ubuntu0.14.04.2
-- PHP Version: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `myschool`
--

-- --------------------------------------------------------

--
-- Table structure for table `assessment`
--

CREATE TABLE IF NOT EXISTS `assessment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject_id` int(100) NOT NULL,
  `student_id` int(100) NOT NULL,
  `mark` int(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE IF NOT EXISTS `class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `stream_id` int(11) NOT NULL,
  `teacher` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE IF NOT EXISTS `grade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `stream_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `grade`
--

INSERT INTO `grade` (`id`, `name`, `stream_id`) VALUES
(1, 'Grade 10 -Science', 2),
(2, 'Grade 10 -Art', 1),
(4, 'Grade 10 -Commerce', 3),
(5, 'Grade 11 -Art', 1),
(6, 'Grade 12 -Art', 1),
(7, 'Grade 11 -Science', 2),
(8, 'Grade 12 -Science', 2),
(9, 'Grade 11 -Commerce', 3),
(10, 'Grade 12 -Commerce', 3);

-- --------------------------------------------------------

--
-- Table structure for table `stream`
--

CREATE TABLE IF NOT EXISTS `stream` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `stream`
--

INSERT INTO `stream` (`id`, `type`, `description`) VALUES
(1, 'art', 'Art is a diverse range of human activities and the products of those activities, usually involving imaginative or technical skill. In their most general form these activities include the production of works of art, the criticism of art, the study of the history of art, and the aesthetic dissemination of art. This article focuses primarily on the visual arts, which includes the creation of images or objects in fields including painting, sculpture, printmaking, photography, and other visual media. Architecture is often included as one of the visual arts; however, like the decorative arts, it involves the creation of objects where the practical considerations of use are essential—in a way that they usually are not in a painting, for example. Music, theatre, film, dance, and other performing arts, as well as literature and other media such as interactive media, are included in a broader definition of art or the arts.'),
(2, 'science', 'the intellectual and practical activity encompassing the systematic study of the structure and behaviour of the physical and natural world through observation and experiment.'),
(3, 'Commerce', 'Commerce is the activity of buying and selling of goods and services, especially on a large scale.The system includes legal, economic, political, social, cultural and technological systems that are in operation in any country or internationally. Thus, commerce is a system or an environment that affects the business prospects of economies.');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `grade_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=246 ;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `grade_id`, `class_id`) VALUES
(1, 'Sivuyile Sincwala', 1, 0),
(2, 'Asive Maposa', 2, 0),
(3, 'Afika Magwa', 4, 0),
(4, 'Sive Vuza', 5, 0),
(5, 'Wawie Siya', 6, 0),
(6, 'Alvin Malibongwe', 7, 0),
(7, 'Loyd Cele', 8, 0),
(8, 'Siyanda Tsolo', 8, 0),
(9, 'Lisa Maip', 8, 0),
(10, 'Wild Style Mabuza', 6, 0),
(11, 'Songezo Mcapukis', 2, 0),
(12, 'Sinazo Mawa', 9, 0),
(13, 'Liso Zola', 5, 0),
(14, 'Hlumela Bavuma', 10, 0),
(15, 'Hot n Cold Maview', 2, 0),
(16, 'Tambo Nkuwa', 7, 0),
(17, 'Asisa Mongo', 6, 0),
(18, 'Wethu Mawa', 9, 0),
(19, 'Twinny Ngubo', 4, 0),
(20, 'Alfonso Magumbi', 5, 0),
(21, 'Songezo Mcapukis', 2, 0),
(22, 'Sinazo Mawa', 9, 0),
(23, 'Liso Zola', 5, 0),
(24, 'Hlumela Bavuma', 10, 0),
(25, 'Hot n Cold Maview', 2, 0),
(26, 'Tambo Nkuwa', 8, 0),
(27, 'Asisa Mongo', 6, 0),
(28, 'Wethu Mawa', 9, 0),
(29, 'Twinny Ngubo', 4, 0),
(30, 'Alfonso Magumbi', 5, 0),
(31, 'Songezo Mcapukis', 5, 0),
(32, 'Sinazo Mawa', 9, 0),
(33, 'Liso Zola', 5, 0),
(34, 'Hlumela Bavuma', 10, 0),
(35, 'Hot n Cold Maview', 2, 0),
(36, 'Tambo Nkuwa', 7, 0),
(37, 'Asisa Mongo', 6, 0),
(38, 'Wethu Mawa', 9, 0),
(39, 'Twinny Ngubo', 4, 0),
(40, 'Alfonso Magumbi', 5, 0),
(41, 'Celiwe Malizo', 2, 0),
(42, 'Sinazo Mawa', 9, 0),
(43, 'Zolani Mkiva', 8, 0),
(44, 'Nelson Mandela', 10, 0),
(45, 'Odwa Zondo', 1, 0),
(46, 'Jacob Zuma', 7, 0),
(47, 'Julius Malema', 4, 0),
(48, 'Welile Bonga', 2, 0),
(49, 'Uncondotional Biza', 8, 0),
(50, 'Frost SnowWhite', 5, 0),
(51, 'Viteran Koubus', 4, 0),
(52, 'Coulin Maestro', 5, 0),
(53, 'Lizanathi Masiko', 6, 0),
(54, 'Hlumela Angelina', 17, 0),
(55, 'Hoky Sno', 8, 0),
(56, 'Katy Perry', 9, 0),
(57, 'Veli Maso', 10, 0),
(58, 'Lets Dothis', 1, 0),
(59, 'Clearer Thesky', 2, 0),
(60, 'Yoyo Xombo', 3, 0),
(61, 'Songezo Mcapukis', 2, 0),
(62, 'Quentin Tarantino', 9, 0),
(63, 'Liso Zola', 8, 0),
(64, 'Moiy Skull', 6, 0),
(65, 'Mazola Kwaito', 5, 0),
(66, 'Tambira Jehova', 4, 0),
(67, 'Askies Bantu', 3, 0),
(68, 'Yolo Njaba', 2, 0),
(69, 'Viwe Ndzima', 1, 0),
(70, 'Sinazo Ntshi', 10, 0),
(71, 'West Kanye', 9, 0),
(72, 'Quentin Farrow', 8, 0),
(73, 'Soil Qeil', 7, 0),
(74, 'Ngonyama Xambo', 6, 0),
(75, 'Uzauo Moyo', 5, 0),
(76, 'Steve leeze', 4, 0),
(77, 'Tiger Woshi', 3, 0),
(78, 'Wethu Mawa', 2, 0),
(79, 'Twinny Ngubo', 1, 0),
(80, 'Alfonso Magumbi', 5, 0),
(81, 'Bobo Zola', 2, 0),
(82, 'Sinalo Mawa', 9, 0),
(83, 'Lubiso Zola', 5, 0),
(84, 'Nqaba iSiSu', 10, 0),
(85, 'Fox Jamies', 2, 0),
(86, 'Alex Ntira', 7, 0),
(87, 'Asavela Malizo', 6, 0),
(88, 'Sisonke Ngumo', 9, 0),
(89, 'Twinny Ngubo', 4, 0),
(90, 'Alvin Chitsoro', 5, 0),
(91, 'Pholisa Fatyela', 2, 0),
(92, 'Sinazo Mawa', 9, 0),
(93, 'Oyama Ndlu', 5, 0),
(94, 'Pretty Maso', 10, 0),
(95, 'Gcano Mvelo', 2, 0),
(96, 'Welly Snil', 7, 0),
(97, 'Beneath Feet', 6, 0),
(98, 'Too Tight', 9, 0),
(99, 'Story Mylife', 4, 0),
(100, 'Alfonso Magumbi', 5, 0),
(101, 'Singaye Ndleal', 2, 0),
(102, 'Tymbu Xibo', 9, 0),
(103, 'Liso Zola', 5, 0),
(104, 'Hlumela Bavuma', 10, 0),
(105, 'Broke Inside', 2, 0),
(106, 'Tambo Nkuwa', 7, 0),
(107, 'Asisa Mongo', 6, 0),
(108, 'Wethu Mawa', 9, 0),
(109, 'Twinny Ngubo', 4, 0),
(110, 'Alfonso Magumbi', 5, 0),
(111, 'Rougan Eriste', 2, 0),
(112, 'Sinazo Mawa', 9, 0),
(113, 'Liso Zola', 5, 0),
(114, 'Hlumela Bavuma', 10, 0),
(115, 'Dumbo Hlola', 3, 0),
(116, 'Sende Ncanca', 7, 0),
(117, 'Hleka Funny', 6, 0),
(118, 'Ndidiniwe Yilento', 9, 0),
(119, 'Umculo Umnandi', 4, 0),
(120, 'Alfonso Magumbi', 5, 0),
(121, 'Songezo Mcapukis', 2, 0),
(122, 'Sinazo Mawa', 9, 0),
(123, 'Liso Zola', 5, 0),
(124, 'Hlumela Bavuma', 10, 0),
(125, 'Hot n Cold Maview', 2, 0),
(126, 'Tambo Nkuwa', 7, 0),
(127, 'Asisa Mongo', 6, 0),
(128, 'Wethu Mawa', 9, 0),
(129, 'Twinny Ngubo', 4, 0),
(130, 'Alfonso Magumbi', 5, 0),
(131, 'Songezo Mcapukis', 2, 0),
(132, 'Sinazo Mawa', 9, 0),
(133, 'Liso Zola', 5, 0),
(134, 'Hlumela Bavuma', 10, 0),
(135, 'Hot n Cold Maview', 2, 0),
(136, 'Tambo Nkuwa', 7, 0),
(137, 'Asisa Mongo', 6, 0),
(138, 'Wethu Mawa', 9, 0),
(139, 'Twinny Ngubo', 4, 0),
(140, 'Alfonso Magumbi', 5, 0),
(141, 'Songezo Mcapukis', 2, 0),
(142, 'Sinazo Mawa', 9, 0),
(143, 'Liso Zola', 5, 0),
(144, 'Hlumela Bavuma', 10, 0),
(145, 'Hot n Cold Maview', 2, 0),
(146, 'Tambo Nkuwa', 7, 0),
(147, 'Asisa Mongo', 6, 0),
(148, 'Wethu Mawa', 9, 0),
(149, 'Twinny Ngubo', 4, 0),
(150, 'Alfonso Magumbi', 5, 0),
(151, 'Songezo Mcapukis', 2, 0),
(152, 'Sinazo Mawa', 9, 0),
(153, 'Liso Zola', 52, 0),
(154, 'Hlumela Bavuma', 1, 0),
(155, 'Hot n Cold Maview', 8, 0),
(156, 'Tambo Nkuwa', 4, 0),
(157, 'Asisa Mongo', 6, 0),
(158, 'Wethu Mawa', 9, 0),
(159, 'Twinny Ngubo', 4, 0),
(160, 'Alfonso Magumbi', 5, 0),
(161, 'Songezo Mcapukis', 2, 0),
(162, 'Sinazo Mawa', 9, 0),
(163, 'Liso Zola', 5, 0),
(164, 'Hlumela Bavuma', 10, 0),
(165, 'Hot n Cold Maview', 2, 0),
(166, 'Tambo Nkuwa', 7, 0),
(167, 'Asisa Mongo', 6, 0),
(168, 'Wethu Mawa', 9, 0),
(169, 'Twinny Ngubo', 4, 0),
(170, 'Alfonso Magumbi', 5, 0),
(171, 'Songezo Mcapukis', 2, 0),
(172, 'Sinazo Mawa', 9, 0),
(173, 'Liso Zola', 5, 0),
(174, 'Hlumela Bavuma', 10, 0),
(175, 'Hot n Cold Maview', 2, 0),
(176, 'Tambo Nkuwa', 7, 0),
(177, 'Asisa Mongo', 6, 0),
(178, 'Wethu Mawa', 9, 0),
(179, 'Twinny Ngubo', 4, 0),
(180, 'Alfonso Magumbi', 5, 0),
(181, 'Songezo Mcapukis', 2, 0),
(182, 'Sinazo Mawa', 9, 0),
(183, 'Liso Zola', 5, 0),
(184, 'Hlumela Bavuma', 10, 0),
(185, 'Hot n Cold Maview', 2, 0),
(186, 'Tambo Nkuwa', 7, 0),
(187, 'Asisa Mongo', 6, 0),
(188, 'Wethu Mawa', 9, 0),
(189, 'Twinny Ngubo', 4, 0),
(190, 'Alfonso Magumbi', 5, 0),
(191, 'Songezo Mcapukis', 2, 0),
(192, 'Sinazo Mawa', 9, 0),
(193, 'Liso Zola', 5, 0),
(194, 'Hlumela Bavuma', 10, 0),
(195, 'Hot n Cold Maview', 2, 0),
(196, 'Tambo Nkuwa', 7, 0),
(197, 'Asisa Mongo', 6, 0),
(198, 'Wethu Mawa', 9, 0),
(199, 'Twinny Ngubo', 4, 0),
(200, 'Alfonso Magumbi', 5, 0),
(201, 'Songezo Mcapukis', 2, 0),
(202, 'Sinazo Mawa', 9, 0),
(203, 'Liso Zola', 5, 0),
(204, 'Hlumela Bavuma', 10, 0),
(205, 'Hot n Cold Maview', 2, 0),
(206, 'Tambo Nkuwa', 7, 0),
(207, 'Asisa Mongo', 7, 0),
(208, 'Wethu Mawa', 9, 0),
(209, 'Twinny Ngubo', 4, 0),
(210, 'Alfonso Magumbi', 5, 0),
(211, 'Songezo Mcapukis', 8, 0),
(212, 'Twelo Funda', 9, 0),
(213, 'Benni', 8, 0),
(214, 'Frost Weding', 10, 0),
(215, 'Clony Dumbo', 2, 0),
(216, 'Tambo Nkuwa', 7, 0),
(217, 'Asisa Mongo', 2, 0),
(218, 'Wethu Mawa', 9, 0),
(219, 'Twinny Ngubo', 1, 0),
(220, 'Alfonso Magumbi', 5, 0),
(221, 'Songezo Mcapukis', 2, 0),
(222, 'Sinazo Mawa', 9, 0),
(223, 'Liso Zola', 5, 0),
(224, 'Hlumela Bavuma', 10, 0),
(225, 'Hot n Cold Maview', 2, 0),
(226, 'Tambo Nkuwa', 7, 0),
(227, 'Asisa Mongo', 8, 0),
(228, 'Wethu Mawa', 9, 0),
(229, 'Twinny Ngubo', 4, 0),
(230, 'Alfonso Magumbi', 5, 0),
(231, 'Sinazo Ngubombi', 4, 0),
(232, 'David Mgilo', 2, 0),
(233, 'Kat Will', 1, 0),
(234, 'Tyuop Lolo', 10, 0),
(235, 'Danny Sgqili', 8, 0),
(236, 'Litha Mark', 8, 0),
(237, 'Qaqamba Alex', 1, 0),
(238, 'Portia Denver', 8, 0),
(239, 'Ismail Ertio', 10, 0),
(240, 'Funeka Dlambo', 6, 0),
(241, 'Ruth First', 5, 0),
(242, 'Cecil Esau', 8, 0),
(243, 'Donny Ferai', 1, 0),
(244, 'Denver Cebo', 9, 0),
(245, 'Snoop Hlumi', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `student_marks`
--

CREATE TABLE IF NOT EXISTS `student_marks` (
  `id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `mark` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_subjects`
--

CREATE TABLE IF NOT EXISTS `student_subjects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `student_subjects`
--

INSERT INTO `student_subjects` (`id`, `student_id`, `subject_id`) VALUES
(1, 1, 3),
(2, 1, 8),
(3, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE IF NOT EXISTS `subject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `stream_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `name`, `stream_id`) VALUES
(1, 'Life Science', 2),
(2, 'Bussiness Studies', 3),
(3, 'Physical Science', 2),
(4, 'Economics', 3),
(5, 'Digital Arts', 1),
(6, 'Accounting', 3),
(7, 'Mathematical Literacy', 3),
(8, 'Geography', 2),
(9, 'Computer Applied Technology', 2),
(10, 'Design', 1),
(11, 'English', 1),
(12, 'English', 3),
(13, 'English', 2),
(14, 'Xhosa', 2),
(15, 'Xhosa', 3),
(17, 'Xhosa', 1);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE IF NOT EXISTS `teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(11) NOT NULL,
  `stream_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `teaching_area`
--

CREATE TABLE IF NOT EXISTS `teaching_area` (
  `id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `grade_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;