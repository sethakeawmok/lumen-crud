-- phpMyAdmin SQL Dump
-- version 4.9.10
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 07, 2022 at 06:21 AM
-- Server version: 5.7.31
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mini-stock`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(5) NOT NULL,
  `product_detail` text NOT NULL,
  `product_name` varchar(128) NOT NULL,
  `product_barcode` varchar(32) NOT NULL,
  `product_qty` int(4) NOT NULL,
  `product_price` decimal(7,2) NOT NULL,
  `product_date` date DEFAULT NULL,
  `product_image` varchar(64) NOT NULL,
  `product_category` varchar(64) NOT NULL DEFAULT 'electronic',
  `product_status` int(1) NOT NULL DEFAULT '1',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_detail`, `product_name`, `product_barcode`, `product_qty`, `product_price`, `product_date`, `product_image`, `product_category`, `product_status`, `updated_at`, `created_at`) VALUES
(1, 'The Samsung Galaxy Note 10 (stylized as Samsung Galaxy Note10) is a line of Android-based phablets designed, developed, produced, and marketed by Samsung Electronics as part of the Samsung Galaxy Note series. They were unveiled on 7 August 2019, as the successors to the Samsung Galaxy Note 9.[2] Details about the phablets were widely leaked in the months leading up to the phablets\' announcement.[3]\r\n\r\nIn 2020, a midrange variant, the Galaxy Note10 Lite, was introduced with lesser specifications and features.\r\n\r\n<b>Hardware</b>\r\nThe Galaxy Note 10 line comprises three models with various hardware specifications; Note 10 and Note 10+/ Note 10+ 5G feature 6.3-inch 1080p and 6.8-inch 1440p \"Dynamic AMOLED\" displays with HDR10+ support and \"dynamic tone mapping\" technology respectively. The displays have curved sides that slope over the horizontal edges of the device. The phablet also features a 19:9 aspect ratio. The front-facing cameras occupy a rounded cut-out on the top of the display, and all models utilize an ultrasonic in-screen fingerprint reader.[4][5]\r\n\r\nInternational models of the Note 10 utilize the Exynos 9825 system-on-chip, while the U.S., South American (Except Brazil) and Chinese models utilize the Qualcomm Snapdragon 855. All models are sold with 256 GB of internal Universal Flash Storage 3.0,[6] with the Note 10+ & Note 10+ 5G also being sold in a 512 GB model and offering expandable storage via a microSD card. They respectively contain 3500 and 4300 mAh batteries, with both variants supporting a 25 watt Super Fast Charging, while the Note 10+ also supports 45 watt Super Fast Charging 2.0, Qi inductive charging, and the ability to charge other Qi-compatible devices from their battery power.[7][8] The Note 10 and Note 10+ are the first mainstream Samsung smartphones to omit the 3.5 mm headphone jack.[6] The sleep/wake power button that used to be on the right side of the phone has been removed, consolidated with the Bixby button on the left side of the phone. New settings have been added that allow the button to be remapped as either a power button or a Bixby button.[9]\r\n\r\nIn January 2020, the Note 10 Lite was released. It is a midrange variant of the Note 10, containing the same cameras as the main variant. It features 128 GB of expandable storage, a 6.7 inch 1080p screen on a metallic frame, a 4,500 mAh battery and powered by Exynos 9810. The variant eliminates the wireless charging feature and stereo speakers, though it retains the 25 watt Super Fast Charging of the main series, and also has a headphone jack.\r\n\r\n<b>Camera</b>\r\nThe Note 10 series features a multi-lens rear-facing camera setup with Samsung\'s Scene Optimizer technology. It houses a dual-aperture 12-megapixel wide-angle lens, a 12-megapixel telephoto lens and a 16-megapixel ultra-wide-angle lens with the Note 10+/ Note 10+ 5G having an additional VGA Depth Vision Camera allowing for 3D AR mapping. The front-facing camera on all models consists of a 10-megapixel punch hole lens in the top center of the display. The camera software includes a new \"Shot Suggestion\" feature to assist users, \"Artistic Live Filters\", as well as the ability to post directly to Instagram posts and stories. It also contains the \"Scene Optimizer\" feature from previous Samsung phones that automatically adjusts the camera settings based on different scenes.[10][11] Both sets of cameras support 4K video recording and HDR10+ with more advanced video stabilization. There is also Live Focus Video enabling users to capture Bokeh backgrounds in video, much like with Portrait Mode.', 'Samsung Note', '98390389304894', 3, '40000.00', '2022-03-04', 'samsung_note10.jpg', 'electornic', 1, '2022-03-04 06:35:29', '2022-03-04 12:00:09'),
(2, '5555', '65645', '5555', 20, '2000.00', '2022-03-04', '5555', '2', 1, '2022-03-04 06:35:46', '2022-03-04 12:00:09'),
(3, 'Oppo Reno is a line of Android smartphones manufactured by Oppo. Its flagships Oppo Reno, Reno 10x Zoom, and Reno 5G were officially announced on April 10, 2019, while the midrange Reno Z was on May 30, 2019.[4] The Reno was launched on April 24, 2019 in Zurich, Switzerland.[5] The Oppo Reno lineup was followed by the Reno2, which was launched in India on August 28, 2019,[6] and the Reno Ace which was released in October 2019.', 'Oppo Reno 10R', '98654878578895', 15, '38500.00', '2019-08-18', 'oppo_reno.jpg', 'electronic', 1, '2022-03-04 12:00:09', '2022-03-04 12:00:09'),
(5, 'Epson, is a Japanese electronics company and one of the world\'s largest manufacturers of computer printers, and information and imaging related equipment. Headquartered in Suwa, Nagano, Japan,[3] the company has numerous subsidiaries worldwide and manufactures inkjet, dot matrix and laser printers, scanners, desktop computers, business, multimedia and home theatre projectors, large home theatre televisions, robots and industrial automation equipment, point of sale docket printers and cash registers, laptops, integrated circuits, LCD components and other associated electronic components. It is one of three core companies of the Seiko Group, a name traditionally known for manufacturing Seiko timepieces since its founding', 'Epson EP30', '986585889885', 10, '15000.00', '0000-00-00', 'epson.jpg', 'electronic', 1, '2022-03-04 12:00:09', '2022-03-04 12:00:09'),
(6, 'In botany, a fruit is the seed-bearing structure in flowering plants (also known as angiosperms) formed from the ovary after flowering.\r\n\r\nFruits are the means by which angiosperms disseminate seeds. Edible fruits, in particular, have propagated with the movements of humans and animals in a symbiotic relationship as a means for seed dispersal and nutrition; in fact, humans and many animals have become dependent on fruits as a source of food.[1] Accordingly, fruits account for a substantial fraction of the world\'s agricultural output, and some (such as the apple and the pomegranate) have acquired extensive cultural and symbolic meanings.\r\n\r\nIn common language usage, \"fruit\" normally means the fleshy seed-associated structures of a plant that are sweet or sour, and edible in the raw state, such as apples, bananas, grapes, lemons, oranges, and strawberries. On the other hand, in botanical usage, \"fruit\" includes many structures that are not commonly called \"fruits\", such as bean pods, corn kernels, tomatoes, and wheat grains.[2][3] The section of a fungus that produces spores is also called a fruiting body.[4]', 'Tipco น้ำองุ่นแดง', '8851013797980', 10, '20.00', '0000-00-00', 'tipco.jpg', 'drink', 1, '2022-03-04 12:00:09', '2022-03-04 12:00:09'),
(7, 'Sprite is a colorless, lemon and lime-flavored soft drink created by The Coca-Cola Company. It was first developed in West Germany in 1959 as Fanta Klare Zitrone (\"Clear Lemon Fanta\") and was introduced in the United States under the current brand name Sprite in 1961 as a competitor to 7 Up.\r\n\r\nSprite advertising often makes use of the portmanteau word lymon, a combination of the words \"lemon\" and \"lime\".[1]\r\n\r\nBy the 1980s, Sprite had developed a large following among teenagers. In response, Sprite began to cater to this demographic in their advertisements in 1987. \"I Like the Sprite In You\" was the brand\'s first long-running slogan, and many jingles were produced around it before its discontinuation in 1994.\r\n\r\nIn 1994, Sprite revamped their marketing logo, and slogan, as well. The new, more vibrant logo stood out more on packaging, and featured a blue-to-green gradient with silver \"splashes\" and subtle white \"bubbles\" in the background. The product name, \"Sprite\" had a blue backdrop shadow on the logo. The words; \"Great Lymon Taste!\" which had been present on the previous logo, were removed. This logo was used in the United States until 2006, and similar variants were used in other countries until this year as well.', 'Sprite', '8851959135365', 30, '8.00', '0000-00-00', 'sprite.jpg', 'drink', 1, '2022-03-04 12:00:09', '2022-03-04 12:00:09'),
(8, 'Starbucks Corporation is an American coffee company and coffeehouse chain. Starbucks was founded in Seattle, Washington, in 1971. As of early 2019, the company operates over 30,000[5] locations worldwide.\r\n\r\nStarbucks has been described as the main representative of \"second wave coffee,\" a retrospectively termed movement that popularized artisanal coffee, particularly darkly roasted coffee.[6][7] Since the 2000s, third wave coffee makers have targeted quality-minded coffee drinkers with hand-made coffee based on lighter roasts, while Starbucks nowadays uses automated espresso machines for efficiency and safety reasons.[6][8', 'Starbuck Coffee', '989389893893893', 20, '300.00', '0000-00-00', 'starbuck_coffee.jpg', 'drink', 1, '2022-03-04 12:00:09', '2022-03-04 12:00:09'),
(9, 'Microplastics are very small pieces of plastic that pollute the environment.[1] Microplastics are not a specific kind of plastic, but rather any type of plastic fragment that is less than 5 mm in length according to the U.S. National Oceanic and Atmospheric Administration (NOAA).[2][3] They enter natural ecosystems from a variety of sources, including cosmetics, clothing, and industrial processes.', 'Mama', '4441959135365', 99, '5.00', '2019-08-30', 'noimg.jpg', 'electronic', 1, '2022-03-04 12:00:09', '2022-03-04 12:00:09'),
(10, 'Oribe Peralta Morones (born 12 January 1984) is a Mexican professional footballer who currently plays as a forward for Liga MX club Guadalajara.\r\n\r\nPeralta began his professional career with Morelia in 2003. He later played for León and Monterrey in 2004 and 2006. Peralta was then sold to Santos Laguna, then loaned out to Chiapas in 2008. After he returned from loan, Peralta was a mainstay with Santos Laguna for the next five years, playing in over 200 matches and scoring over 80 goals.', 'Oribe Styling Curl Enhancing ', '9839038930477', 5, '250.00', '2019-08-30', 'noimg.jpg', 'electronic', 1, '2022-03-04 12:00:09', '2022-03-04 12:00:09'),
(11, 'Peralta made his senior international debut in 2005, though he did not receive call-ups consistently until 2011, being one of the over-aged reinforcements who won the 2011 Pan American Games with the under-22 squad.', 'Coffee Mug', '87546898459745', 20, '299.00', '2019-08-30', 'noimg.jpg', 'electronic', 1, '2022-03-04 12:00:09', '2022-03-04 12:00:09'),
(12, 'Peralta made his senior international debut in 2005, though he did not receive call-ups consistently until 2011, being one of the over-aged reinforcements who won the 2011 Pan American Games with the under-22 squad.', 'Mama', '4441959135365', 99, '5.00', '2019-08-30', 'noimg.jpg', 'electronic', 1, '2022-03-04 12:00:09', '2022-03-04 12:00:09'),
(13, 'Peralta made his senior international debut in 2005, though he did not receive call-ups consistently until 2011, being one of the over-aged reinforcements who won the 2011 Pan American Games with the under-22 squad.', 'Rilakkuma', '20190830112233445566', 50, '9500.00', '2019-08-30', 'noimg.jpg', 'electronic', 1, '2022-03-04 12:00:09', '2022-03-04 12:00:09'),
(14, 'Peralta made his senior international debut in 2005, though he did not receive call-ups consistently until 2011, being one of the over-aged reinforcements who won the 2011 Pan American Games with the under-22 squad.', 'Guppy', '111111111111', 20, '10.00', '2019-08-30', 'noimg.jpg', 'electronic', 1, '2022-03-04 12:00:09', '2022-03-04 12:00:09'),
(15, 'Peralta made his senior international debut in 2005, though he did not receive call-ups consistently until 2011, being one of the over-aged reinforcements who won the 2011 Pan American Games with the under-22 squad.', 'Bingo - xSamsung', '900390389304894', 93, '40000.00', '2019-08-30', 'noimg.jpg', 'electronic', 1, '2022-03-04 12:00:09', '2022-03-04 12:00:09'),
(16, 'Peralta made his senior international debut in 2005, though he did not receive call-ups consistently until 2011, being one of the over-aged reinforcements who won the 2011 Pan American Games with the under-22 squad.', 'Samsung Note 11 salisa', '983903893043', 3, '40000.00', '2019-08-30', 'noimg.jpg', 'electronic', 1, '2022-03-04 12:00:09', '2022-03-04 12:00:09'),
(17, 'Peralta made his senior international debut in 2005, though he did not receive call-ups consistently until 2011, being one of the over-aged reinforcements who won the 2011 Pan American Games with the under-22 squad.', 'Samsung Note 13', '983903893043', 3, '40000.00', '2019-08-30', 'noimg.jpg', 'electronic', 1, '2022-03-04 12:00:09', '2022-03-04 12:00:09'),
(18, 'Peralta made his senior international debut in 2005, though he did not receive call-ups consistently until 2011, being one of the over-aged reinforcements who won the 2011 Pan American Games with the under-22 squad.', 'Mi 8 Pro', '98765432008', 2, '19990.00', '2019-08-30', 'noimg.jpg', 'electronic', 1, '2022-03-04 12:00:09', '2022-03-04 12:00:09'),
(19, 'Peralta made his senior international debut in 2005, though he did not receive call-ups consistently until 2011, being one of the over-aged reinforcements who won the 2011 Pan American Games with the under-22 squad.', 'G shock optimus', '1234567891012', 3, '5500.00', '2019-08-30', 'noimg.jpg', 'electronic', 1, '2022-03-04 12:00:09', '2022-03-04 12:00:09'),
(20, 'Peralta made his senior international debut in 2005, though he did not receive call-ups consistently until 2011, being one of the over-aged reinforcements who won the 2011 Pan American Games with the under-22 squad.', 'Samsung Note 14', '983903893043', 3, '40000.00', '2019-08-30', 'noimg.jpg', 'electronic', 1, '2022-03-04 12:00:09', '2022-03-04 12:00:09'),
(21, 'Peralta made his senior international debut in 2005, though he did not receive call-ups consistently until 2011, being one of the over-aged reinforcements who won the 2011 Pan American Games with the under-22 squad.', 'Mouse Wireless Silent', '19790456704894', 3, '999.00', '2019-08-30', 'noimg.jpg', 'electronic', 1, '2022-03-04 12:00:09', '2022-03-04 12:00:09'),
(22, 'Peralta made his senior international debut in 2005, though he did not receive call-ups consistently until 2011, being one of the over-aged reinforcements who won the 2011 Pan American Games with the under-22 squad.', 'Lui Coffee', '333666999', 9, '69.00', '2019-08-30', 'noimg.jpg', 'electronic', 1, '2022-03-04 12:00:09', '2022-03-04 12:00:09'),
(23, 'Peralta made his senior international debut in 2005, though he did not receive call-ups consistently until 2011, being one of the over-aged reinforcements who won the 2011 Pan American Games with the under-22 squad.', '111222', '01233566455', 99, '99999.99', '2019-08-30', 'noimg.jpg', 'electronic', 1, '2022-03-04 12:00:09', '2022-03-04 12:00:09'),
(24, 'Peralta made his senior international debut in 2005, though he did not receive call-ups consistently until 2011, being one of the over-aged reinforcements who won the 2011 Pan American Games with the under-22 squad.', 'Afgdfgd', '999999999', 3, '999.99', '2019-08-30', 'noimg.jpg', 'electronic', 1, '2022-03-04 12:00:09', '2022-03-04 12:00:09'),
(25, 'Peralta made his senior international debut in 2005, though he did not receive call-ups consistently until 2011, being one of the over-aged reinforcements who won the 2011 Pan American Games with the under-22 squad.', 'Samsung Note 14', '983903893043', 3, '40000.00', '2019-08-30', 'noimg.jpg', 'electronic', 1, '2022-03-04 12:00:09', '2022-03-04 12:00:09'),
(26, '', 'Samsung Note 14', '983903893043', 3, '40000.00', '2019-08-30', 'noimg.jpg', 'electronic', 1, '2022-03-04 12:00:09', '2022-03-04 12:00:09'),
(27, '', 'Bingo1 - xSamsung', '900390389304894', 93, '40000.00', '2019-08-30', 'noimg.jpg', 'electronic', 1, '2022-03-04 12:00:09', '2022-03-04 12:00:09'),
(28, '', 'Lui Coffee', '333666999', 9, '69.00', '2019-08-30', 'noimg.jpg', 'electronic', 1, '2022-03-04 12:00:09', '2022-03-04 12:00:09'),
(29, '', 'ASUS ZEN Phone 4', '5624545467687', 1234, '20000.00', '2019-08-30', 'noimg.jpg', 'electronic', 1, '2022-03-04 12:00:09', '2022-03-04 12:00:09'),
(30, '', 'ASUS ZEN Phone 5', '5624545467687', 1234, '20000.00', '2019-08-30', 'noimg.jpg', 'electronic', 1, '2022-03-04 12:00:09', '2022-03-04 12:00:09'),
(31, '', 'ASUS ZEN Phone 5', '5624545467687', 1234, '20000.00', '2019-08-30', 'noimg.jpg', 'electronic', 1, '2022-03-04 12:00:09', '2022-03-04 12:00:09'),
(32, '', 'ASUS ZEN Phone 7', '5624545467687', 1234, '20000.00', '2019-08-30', 'noimg.jpg', 'electronic', 1, '2022-03-04 12:00:09', '2022-03-04 12:00:09'),
(33, '', 'ASUS ZEN Phone 90', '5624545467687', 1234, '20000.00', '2019-08-30', 'noimg.jpg', 'electronic', 1, '2022-03-04 12:00:09', '2022-03-04 12:00:09'),
(34, '', 'Yoyo Test Test', '1223344555', 90, '500.00', '2019-08-30', 'noimg.jpg', 'electronic', 1, '2022-03-04 12:00:09', '2022-03-04 12:00:09'),
(35, '', 'WE BARE BEAR', '123456789', 3, '99.99', '2019-08-30', 'noimg.jpg', 'electronic', 1, '2022-03-04 12:00:09', '2022-03-04 12:00:09'),
(36, '', 'Lonovo', '7848383728262', 20, '35000.00', '2019-08-30', 'noimg.jpg', 'electronic', 1, '2022-03-04 12:00:09', '2022-03-04 12:00:09'),
(37, '', 'Test Rilakkuma', '2019083022334455', 80, '5500.00', '2019-08-30', 'noimg.jpg', 'electronic', 1, '2022-03-04 12:00:09', '2022-03-04 12:00:09'),
(38, '', 'Hotdog Spicy', '4564578945454', 10, '15.12', '2019-08-30', 'noimg.jpg', 'electronic', 1, '2022-03-04 12:00:09', '2022-03-04 12:00:09'),
(39, '', 'Product from mobile', '989', 4, '98.00', '2019-08-30', 'noimg.jpg', 'electronic', 1, '2022-03-04 12:00:09', '2022-03-04 12:00:09'),
(40, '', 'กระเป๋าแฟชั่นๆๆๆๆ', '346765368658', 60, '999.00', '2019-08-30', 'noimg.jpg', 'electronic', 1, '2022-03-04 12:00:09', '2022-03-04 12:00:09'),
(42, '', 'Singha Water', '1234567890987', 999, '7.00', '2019-08-30', 'noimg.jpg', 'electronic', 1, '2022-03-04 12:00:09', '2022-03-04 12:00:09'),
(43, '', 'testing 1', '12345', 11, '11.00', '2019-08-30', 'noimg.jpg', 'electronic', 1, '2022-03-04 12:00:09', '2022-03-04 12:00:09'),
(44, '', 'testingbybingo', '9999999', 12, '120.00', '2019-08-30', 'noimg.jpg', 'electronic', 1, '2022-03-04 12:00:09', '2022-03-04 12:00:09'),
(45, '', 'ProductLui', '9999999', 99, '999.00', '2019-08-30', 'noimg.jpg', 'electronic', 1, '2022-03-04 12:00:09', '2022-03-04 12:00:09'),
(46, '', 'test XYZ', '0120145', 1, '20.00', '2019-08-30', 'noimg.jpg', 'electronic', 1, '2022-03-04 12:00:09', '2022-03-04 12:00:09'),
(47, '', 'KWS', '4555', 666, '6666.00', '2019-08-30', 'noimg.jpg', 'electronic', 1, '2022-03-04 12:00:09', '2022-03-04 12:00:09'),
(48, '', 'Guppy', '111111111111', 20, '10.00', '2019-08-30', 'noimg.jpg', 'electronic', 1, '2022-03-04 12:00:09', '2022-03-04 12:00:09'),
(49, '', 'Guppy', '111111111111', 20, '10.00', '2019-08-30', 'noimg.jpg', 'electronic', 1, '2022-03-04 12:00:09', '2022-03-04 12:00:09'),
(50, '', 'Coffee Mug', '87546898459745', 20, '299.00', '2019-09-05', 'noimg.jpg', 'electronic', 1, '2022-03-04 12:00:09', '2022-03-04 12:00:09'),
(51, '', 'Samsung Note 14', '983903893043', 3, '40000.00', '2019-09-05', 'noimg.jpg', 'electronic', 1, '2022-03-04 12:00:09', '2022-03-04 12:00:09'),
(52, '', 'Coffee Mugsssss', '87546898459745', 20, '299.00', '2019-09-14', 'noimg.jpg', 'electronic', 1, '2022-03-04 12:00:09', '2022-03-04 12:00:09'),
(53, '', 'Coffee Tea', '9938938938939', 30, '333.00', '2019-09-17', 'noimg.jpg', 'electronic', 1, '2022-03-04 12:00:09', '2022-03-04 12:00:09'),
(54, '', 'Snowy', '74548748877', 23, '287.00', '2020-04-17', 'noimg.jpg', 'electronic', 1, '2022-03-04 12:00:09', '2022-03-04 12:00:09'),
(56, 'ssslorem ipsome one thing of this', 'Smernofteee', '66548748877', 11, '22.00', '2020-04-17', 'noimg.jpg', 'electronic', 1, '2022-03-04 12:00:09', '2022-03-04 12:00:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(5) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `img_profile` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password`, `name`, `img_profile`, `status`, `updated_at`, `created_at`) VALUES
(2, '5555@ooo.com', 'nueng', '$2y$10$rG/Qcu9UbwZ8.0vUJzZ.r.5/o3xFKDNH2mT0GdNwtXYa7zkCyIK16', 'nueng', NULL, 1, '2022-03-05 03:11:24', '2022-03-05 03:11:24'),
(3, '55551111@ooo.com', 'nueng12', '$2y$10$i26a.nau.XqdvqU.cwVIFeRzfQwa/XGPLev/zrFoxtYLn2JFBAU1q', 'nueng', NULL, 1, '2022-03-05 03:16:46', '2022-03-05 03:16:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
