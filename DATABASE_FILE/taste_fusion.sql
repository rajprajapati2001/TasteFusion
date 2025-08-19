--
-- This script has been cleaned and updated to fix common import errors.
-- The character set has been changed to utf8mb4 for better compatibility.
--

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `taste_fusion`
--
CREATE DATABASE IF NOT EXISTS `taste_fusion` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `taste_fusion`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(222) NOT NULL,
  `username` varchar(222) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(222) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(222) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(222) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(1, 'raj_admin', '11EB31423B2CE366E3595E3D3C53BEDC', 'admin@gmail.com', '', '2024-03-30 15:07:44');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `d_id` int(222) NOT NULL,
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slogan` varchar(222) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(23, 8, 'Classic Veggie Pizza', 'A Classic Pizza with Chess inside it and Veggie.', 229.00, '660af115e0b93.jpg'),
(24, 10, 'Spicy Paper Noodles', 'Great Spicy Paper Noodles with Chess on Your Plate.', 145.00, '660aee690129c.jpg'),
(25, 9, 'Plane Sada Dosa', 'Best Sada Dosa with crispiness in Dish.', 72.90, '660aef197f9e1.jpg'),
(26, 9, 'Rice Idle + Chutney', 'South Indian Idle with Chutney Fells Amazing.', 55.20, '660aefcb52b57.jpg'),
(27, 12, 'Green Tea', 'Refreshing Green Tea', 65.10, '660af018dc01f.jpg'),
(28, 6, 'McAloo Tikki Burger', 'Veg Mc Aloo Tikki Burger', 57.00, '660af436bda0a.png'),
(29, 8, 'Soya Soas Chowmin Noodles', 'Best Chowmin Noodles From 1961', 160.80, '660af6ff8d17a.jpg'),
(30, 5, 'Chicken Strips 10 pc', 'Pari Pari Chicken Strips 10 Pc ', 231.90, '660af83291734.jpg'),
(31, 5, 'Chicken Roll', 'Single Chicken Roll', 119.90, '660af860b485c.jpg'),
(32, 5, 'Chicken Smoky 5pc', 'Red Chicken Smoky Bucket of 5 pc', 528.30, '660af89864b86.jpg'),
(33, 5, 'Homes Chicken 20pc', 'Homes Chicken Bucket of 20 pc', 789.40, '660af8e98b744.jpg'),
(34, 5, 'The Allu Arjun ', 'The Allu Arjun Combo Bucket', 448.20, '660af91817cc6.jpg'),
(35, 6, 'Medium Fries', '250g of Medium McFries', 135.00, '660af99b224a1.png'),
(36, 6, 'McVeggie Burger Combo', 'McVeggie Fiesta Burger Combo with Fries', 158.20, '660af9dd0926a.png'),
(37, 6, 'McShake of Chocolate ', 'Chocolate McShake withs GEMS on top', 195.90, '660afa48a987c.png'),
(38, 7, 'Caffe Latte', 'Star Caffe Latte', 288.20, '660afacae1856.png'),
(39, 7, 'Pesto & Mozzarella Burger', 'Pesto & Mozzarella Big Burger Sandwich', 425.90, '660afb0bb2d7c.png'),
(40, 7, 'Honeyed Nut Latte', 'Honeyed Nut Latte Coffe', 414.10, '660afb3bc1556.png');

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `remark`
--

INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
(22, 16, 'in process', 'Your Order will Deliver Soon', '2024-03-31 15:05:43');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `rs_id` int(222) NOT NULL,
  `c_id` int(222) NOT NULL,
  `title` varchar(222) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(222) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(222) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(222) COLLATE utf8mb4_unicode_ci NOT NULL,
  `o_hr` varchar(222) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_hr` varchar(222) COLLATE utf8mb4_unicode_ci NOT NULL,
  `o_days` varchar(222) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(5, 1, 'KFC', 'kfc@mail.com', '+22-503562186', 'www.kfc.org', '9am', '10pm', '24hr-x7', '2nd Road Ahmedabad', '66097a319f732.jpg', '2024-03-31 14:58:57'),
(6, 3, 'McDonals', 'mcdonal-surat@mail.com', '+22-678492361', 'www.mcdonals.com', '11am', '6pm', '24hr-x7', ' Gunjan Road, Surat', '660ae6e1cb671.jpg', '2024-04-01 16:54:57'),
(7, 2, 'Starbuks', 'starbuks-vapi@mail.com', '+22-832614987', 'www.starbuks.org', '6am', '12am', '24hr-x7', 'Gunjan Highway, Vapi', '660ae7a6c17e0.jpg', '2024-04-01 16:58:14'),
(8, 1, '19Sixtyone', 'Restaurant-1961@mail.com', '+22-453278109', 'www.1961.com', '8am', '12am', 'Mon-Sat', '21st Hospital Road, Ahmedabad', '660ae8c21be5e.jpg', '2024-04-01 17:02:58'),
(9, 2, 'Hotel Papillon', 'vapi-papilon@mail.com', '+91-673281931', 'www.hotel-papilon.org', '9am', '11pm', '24hr-x7', 'Papilon Hotel Vapi-396191', '660ae99b531bc.jpg', '2024-04-01 17:06:35'),
(10, 2, 'Mirasol Lake Restaurant', 'mirasol-restaurant@mail.com', '+91-568362419', 'www.mirasol-restaurant-vapi.org', '8am', '10pm', 'Mon-Fri', 'Main Road Hotel Vapi', '660aea65a8b62.jpg', '2024-04-01 17:09:57'),
(11, 3, 'The Mint Restaurant', 'mint_masti@mail.com', '+91-789236419', 'www.mint-masti.com', '8am', '12am', 'Mon-Sat', 'Railway Station Surat', '660aeb0f65724.jpg', '2024-04-01 17:12:47'),
(12, 4, 'Cafe Farohar', 'Farohar-cafe@mail.com', '+91-783526728', 'www.f-cafe.in', '8am', '9pm', 'Mon-Fri', 'no.09 Shop Villa, Morbi', '660aebd782ac7.jpg', '2024-04-01 17:16:07');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(222) NOT NULL,
  `c_name` varchar(222) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(1, 'Ahmedabad', '2024-03-31 11:01:08'),
(2, 'Vapi', '2024-03-31 11:01:38'),
(3, 'Surat', '2024-03-31 11:05:13'),
(4, 'Morbi', '2024-03-31 11:05:48');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(222) NOT NULL,
  `username` varchar(222) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f_name` varchar(222) COLLATE utf8mb4_unicode_ci NOT NULL,
  `l_name` varchar(222) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(222) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(222) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(222) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(222) NOT NULL DEFAULT '1',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(1, 'raj_prajapati', 'Raj', 'Prajapati', 'rp5876907@gmail.com', '0000000000', 'Abc_1234567890', '201 sai vapi', 1, '2024-03-31 14:50:14');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL,
  `title` varchar(222) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(2, 4, 'Prawn Crackers', 1, 7.00, 'closed', '2022-05-27 11:11:41'),
(3, 5, 'Chicken Madeira', 1, 23.00, 'closed', '2022-05-27 11:42:35'),
(4, 5, 'Cheesy Mashed Potato', 1, 5.00, 'in process', '2022-05-27 11:42:55'),
(5, 5, 'Meatballs Penne Pasta', 1, 10.00, 'closed', '2022-05-27 13:18:03'),
(6, 5, 'Yorkshire Lamb Patties', 1, 14.00, NULL, '2022-05-27 11:40:51'),
(7, 6, 'Yorkshire Lamb Patties', 1, 14.00, 'closed', '2022-05-27 13:04:33'),
(8, 6, 'Lobster Thermidor', 1, 36.00, 'closed', '2022-05-27 13:05:24'),
(9, 6, 'Stuffed Jacket Potatoes', 1, 8.00, 'rejected', '2022-05-27 13:03:53'),
(11, 7, 'Mac N Cheese Bites', 1, 9.00, 'closed', '2024-03-23 07:00:26'),
(16, 9, 'Pari Pari 10 pc Chicken Strips', 1, 230.00, 'in process', '2024-03-31 15:05:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dishes`
--
ALTER TABLE `dishes`
  ADD CONSTRAINT `FK_dishes_restaurant` FOREIGN KEY (`rs_id`) REFERENCES `restaurant` (`rs_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD CONSTRAINT `FK_restaurant_res_category` FOREIGN KEY (`c_id`) REFERENCES `res_category` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*--
-- Constraints for table `users_orders`

--ALTER TABLE `users_orders`
--ADD CONSTRAINT `FK_users_orders_users` FOREIGN KEY (`u_id`) REFERENCES `users` (`u_id`) ON DELETE CASCADE ON UPDATE CASCADE; */
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
