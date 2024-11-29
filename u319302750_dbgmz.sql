-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 29, 2024 at 02:00 AM
-- Server version: 10.11.9-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u319302750_dbgmz`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblcancelled_customer`
--

CREATE TABLE `tblcancelled_customer` (
  `order_id` int(55) NOT NULL,
  `total_price` varchar(55) NOT NULL,
  `date-order` varchar(55) NOT NULL,
  `status` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `tblcart`
--

CREATE TABLE `tblcart` (
  `id` int(55) NOT NULL,
  `item_id` int(55) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  `qty` int(55) DEFAULT NULL,
  `total_price` double(55,2) DEFAULT NULL,
  `isOrdered` int(1) DEFAULT NULL,
  `customer_id` varchar(55) DEFAULT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `customer_loc` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tblcart`
--

INSERT INTO `tblcart` (`id`, `item_id`, `item_name`, `description`, `price`, `qty`, `total_price`, `isOrdered`, `customer_id`, `customer_name`, `customer_loc`) VALUES
(27, 1, 'Cooked Chicken Shawarma 1kg', 'Cooked Shawarma Chicken ', 1005.00, 1, 1005.00, 0, '10', '', ''),
(68, 1, 'Cooked Chicken Shawarma 1kg', 'Cooked Shawarma Chicken ', 1005.00, 1, 1005.00, 0, '24', 'Sho Dennis', 'Cabuyao');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategories`
--

CREATE TABLE `tblcategories` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) NOT NULL,
  `type` enum('Legal','Contracts/Agreement','Document','Inventory','RawMaterial') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tblcategories`
--

INSERT INTO `tblcategories` (`id`, `categoryName`, `type`) VALUES
(1, 'Bills', 'Document'),
(2, 'Contract', 'Contracts/Agreement'),
(3, 'Agreement', 'Contracts/Agreement'),
(4, 'Business Permit', 'Legal'),
(10, 'Shawarma Meats', 'Inventory'),
(11, 'Sauces', 'Inventory'),
(12, 'Pitas', 'Inventory'),
(13, 'Meat Raw Materials', 'RawMaterial'),
(14, 'Sauce Ingredients', 'RawMaterial'),
(15, 'Bread Ingredients', 'RawMaterial'),
(16, 'Vegetable Raw Materials', 'RawMaterial'),
(17, 'Spices and Seasonings', 'RawMaterial'),
(21, 'Drinks', 'Inventory'),
(22, 'Resumes', 'Document'),
(23, 'Meat', 'Inventory');

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomer`
--

CREATE TABLE `tblcustomer` (
  `customer_id` int(55) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tblcustomer`
--

INSERT INTO `tblcustomer` (`customer_id`, `name`, `location`) VALUES
(8, 'Liam Rhyss Lim', 'Cabuyao, Laguna'),
(9, 'Jericho', 'Calamba, Laguna'),
(14, 'Jericho Palermo', 'Calamba'),
(18, 'Sammy Christian', 'Timbao'),
(20, 'yam', 'Phase 1 Block 5 Lot 25 Lakeside Nest'),
(22, 'Raniel De Vera', 'Marinig Cabuyao, Laguna'),
(24, 'Sho Dennis', 'Cabuyao');

-- --------------------------------------------------------

--
-- Table structure for table `tbldocument`
--

CREATE TABLE `tbldocument` (
  `id` int(55) NOT NULL,
  `documentName` varchar(255) NOT NULL,
  `filePath` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `dateUploaded` date NOT NULL,
  `dateEffective` date DEFAULT NULL,
  `expirationDate` date NOT NULL,
  `description` varchar(255) NOT NULL,
  `isArchive` int(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_estonian_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbldocument`
--

INSERT INTO `tbldocument` (`id`, `documentName`, `filePath`, `category`, `dateUploaded`, `dateEffective`, `expirationDate`, `description`, `isArchive`) VALUES
(10, 'SAMPLE APPROVED PRAF', '/uploads/1732777377415-SAMPLE APPROVED PRAF.pdf', 'Agreement', '2024-11-28', '2024-11-27', '2025-02-27', 'This is a praf.\r\n', 0),
(11, 'resume', '/uploads/1732777509226-resume.pdf', 'Resumes', '2024-05-13', '2024-11-28', '2024-10-15', 'Rsume', 1),
(12, 'Sample file', '/uploads/1732788200546-Sample file.pdf', 'Contract', '2024-11-30', '2024-11-28', '2024-12-31', 'Sample contract', 0),
(13, '1-module-1 (20230907132645) (20240913005953)', '/uploads/1732839251889-1-module-1 (20230907132645) (20240913005953).pdf', 'Business Permit', '2024-11-29', '2024-11-29', '2024-11-30', 'Contract', 0),
(14, '1-module-1 (20230907132645) (20240913005953)', '/uploads/1732839253116-1-module-1 (20230907132645) (20240913005953).pdf', 'Business Permit', '2024-11-29', '2024-11-29', '2024-11-30', 'Contract', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblitems`
--

CREATE TABLE `tblitems` (
  `itemId` int(11) NOT NULL,
  `itemName` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `category` longtext NOT NULL,
  `description` longtext NOT NULL,
  `quantity` double(55,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tblitems`
--

INSERT INTO `tblitems` (`itemId`, `itemName`, `price`, `category`, `description`, `quantity`) VALUES
(1, 'Cooked Chicken Shawarma 1kg', 1005, 'Shawarma Meats', 'Cooked Shawarma Chicken ', 25),
(2, 'Hot Vegan Sauce 1 Bottle', 50, 'Sauces', 'A hot sauce', 0),
(6, '1kg Grilled Lamb Shawarma', 150, 'Shawarma Meats', 'Juicy grilled lamb Shawarma, seasoned with spices and grilled to perfection.', 0),
(7, '500g Ground Beef Shawarma', 90, 'Shawarma Meats', 'Ground beef Shawarma, perfect for mixing with vegetables and sauces.', 0),
(8, '1kg Beef Ribs Shawarma', 180, 'Shawarma Meats', 'Slow-cooked beef ribs Shawarma with a smoky flavor, ideal for wraps.', 0),
(10, '500g Garlic Tahini Sauce', 45, 'Sauces', 'Creamy and savory tahini sauce with a rich garlic flavor, perfect for Shawarma wraps.', 0),
(11, '1 liter Lemon Garlic Sauce', 40, 'Sauces', 'Zesty lemon and garlic sauce, ideal for enhancing the flavors of Shawarma.', 0),
(12, '500g Yogurt-Based Shawarma Sauce', 60, 'Sauces', 'Tangy yogurt-based sauce, adding creaminess to Shawarma wraps.', 0),
(13, '10 Pita Bread (Pack)', 30, 'Pitas', 'Soft, fluffy pita bread, perfect for wrapping Shawarma meat and veggies.', 0),
(14, '20 Whole Wheat Pita Breads', 40, 'Pitas', 'Healthier option with whole wheat flour, perfect for Shawarma wraps.', 0),
(15, '10 Mini Pita Breads', 25, 'Pitas', 'Small-sized pita breads, ideal for making Shawarma sliders or wraps.', 0),
(17, 'Sam Shawarma', 55, 'Shawarma Meats', 'This is a shawarma.', 0),
(18, 'Fita', 75, 'Pitas', 'Fita for shawarma.', 5),
(19, 'Ice tea', 51, 'Drinks', 'This is refereshing ice tea.', 0),
(20, 'Magic Meat', 40, 'Meat', 'DALAWANG MEAT PINAGSAMA PINASARAP', 5),
(21, 'Uncooked Ground Beef Shawarma 500g', 140, 'Shawarma Meats', 'Raw meat', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblitem_ingredients`
--

CREATE TABLE `tblitem_ingredients` (
  `ingId` int(55) NOT NULL,
  `itemId` int(55) DEFAULT NULL,
  `matId` int(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_estonian_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tblitem_ingredients`
--

INSERT INTO `tblitem_ingredients` (`ingId`, `itemId`, `matId`) VALUES
(9, 2, 22),
(10, 2, 26),
(11, 2, 15),
(12, 2, 13),
(13, 2, 19),
(14, 6, 27),
(15, 6, 10),
(16, 7, 26),
(17, 7, 21),
(18, 10, 6),
(19, 10, 20),
(20, 10, 14),
(21, 11, 15),
(22, 11, 22),
(23, 11, 21),
(24, 12, 23),
(25, 13, 25),
(26, 13, 9),
(27, 14, 21),
(28, 14, 16),
(29, 15, 16),
(30, 15, 3),
(33, 18, 26),
(34, 8, 8),
(35, 8, 9),
(36, 8, 11),
(37, 17, 15),
(38, 17, 24),
(39, 17, 23),
(40, 17, 8),
(41, 19, 29),
(42, 19, 14),
(43, 20, 10),
(44, 20, 3),
(45, 1, 3),
(46, 1, 15);

-- --------------------------------------------------------

--
-- Table structure for table `tblmatlogsmats`
--

CREATE TABLE `tblmatlogsmats` (
  `logId` int(11) NOT NULL,
  `matId` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `tblnotifications`
--

CREATE TABLE `tblnotifications` (
  `id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` int(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblnotifications`
--

INSERT INTO `tblnotifications` (`id`, `description`, `status`) VALUES
(1, 'UserDetails_2024-11-20_11_31_07 (Legal) is expiring soon on 2025-03-19.', 1),
(2, 'Letter (Document) will expire on 2025-06-23.', 1),
(3, 'CRV_Template (Contract/Agreement) needs renewal by 2025-01-06.', 1),
(4, 'Features ITD1 (Legal) is expiring soon on 2025-10-23.', 1),
(5, 'CRV_Template (Contract/Agreement) needs renewal by 2025-01-05.', 1),
(6, 'CRV_Template (Contract/Agreement) needs renewal by 2025-01-05.', 1),
(10, 'SAMPLE APPROVED PRAF has been archived by admin.', 1),
(11, 'PRAF has been archived by admin.', 1),
(15, 'PRAF has been deleted by admin.', 1),
(16, 'PRAF has been archived by admin.', 1),
(17, 'PRAF has been deleted by admin.', 1),
(18, 'CRV_Template has been archived by admin.', 1),
(19, 'CRV_Template has been archived by admin.', 1),
(20, 'CRV_Template has been archived by admin.', 1),
(21, 'CRV_Template has been archived by admin.', 1),
(22, 'CRV_Template has been unarchived by admin.', 1),
(23, 'CRV_Template has been archived by admin.', 1),
(24, 'CRV_Template has been unarchived by admin.', 1),
(25, 'LEGAL-DOCU-TEST has been deleted by admin.', 1),
(26, 'CRV_Template has been deleted by admin.', 1),
(27, 'SAMPLE APPROVED PRAF (Contract/Agreement) needs renewal by 2025-02-28.', 1),
(28, 'SAMPLE APPROVED PRAF (Contract/Agreement) needs renewal by 2025-02-28.', 1),
(29, 'resume has been archived by admin.', 1),
(30, 'resume has been unarchived by admin.', 1),
(31, 'resume has been archived by admin.', 1),
(32, 'resume has been unarchived by admin.', 1),
(33, 'resume has been archived by admin.', 1),
(34, 'SAMPLE APPROVED PRAF (Contract/Agreement) needs renewal by 2025-02-27.', 1),
(35, 'Sample file (Contract/Agreement) needs renewal by 2024-12-31.', 1),
(36, '1-module-1 (20230907132645) (20240913005953) (Legal) is expiring soon on 2024-11-30.', 1),
(37, '1-module-1 (20230907132645) (20240913005953) (Legal) is expiring soon on 2024-11-30.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblorderfromsupplier_items`
--

CREATE TABLE `tblorderfromsupplier_items` (
  `orderItemId` int(11) NOT NULL,
  `orderId` int(11) NOT NULL,
  `matId` int(11) NOT NULL,
  `remaining_quantity` int(55) NOT NULL,
  `quantity` int(11) NOT NULL,
  `quantity_received` int(55) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `totalCost` decimal(10,2) NOT NULL,
  `status` int(55) NOT NULL,
  `dateReceive` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tblorderfromsupplier_items`
--

INSERT INTO `tblorderfromsupplier_items` (`orderItemId`, `orderId`, `matId`, `remaining_quantity`, `quantity`, `quantity_received`, `price`, `totalCost`, `status`, `dateReceive`) VALUES
(1, 24, 8, 10, 10, 10, 600.78, 6007.80, 1, '2024-11-26'),
(2, 24, 9, 5, 5, 5, 575.90, 2879.50, 1, '2024-11-26'),
(3, 24, 10, 0, 5, 5, 500.80, 2504.00, 1, '2024-11-26'),
(4, 25, 26, 0, 5, 5, 500.00, 2500.00, 1, '2024-11-26'),
(5, 26, 3, 0, 5, 5, 57.30, 286.50, 1, '2024-11-26'),
(6, 26, 6, 0, 5, 5, 22.50, 112.50, 1, '2024-11-26'),
(7, 27, 15, 0, 5, 5, 50.55, 252.75, 1, '2024-11-26'),
(8, 28, 26, 5, 10, 10, 500.00, 5000.00, 1, '2024-11-26'),
(9, 29, 3, 0, 10, 10, 57.30, 573.00, 1, '2024-11-26'),
(10, 30, 15, 0, 10, 10, 50.55, 505.50, 1, '2024-11-26'),
(16, 31, 10, 5, 5, 5, 500.80, 2504.00, 1, '2024-11-27'),
(17, 31, 9, 5, 5, 5, 575.90, 2879.50, 1, '2024-11-28'),
(18, 32, 8, 4, 4, 4, 600.78, 2403.12, 1, '2024-11-27'),
(19, 33, 15, 0, 5, 5, 50.55, 252.75, 1, '2024-11-27'),
(20, 34, 3, 0, 10, 10, 37.85, 378.50, 1, '2024-11-27'),
(21, 35, 14, 45, 50, 45, 70.85, 3542.50, 1, '2024-11-27'),
(22, 35, 15, 35, 50, 40, 50.55, 2527.50, 1, '2024-11-27'),
(23, 36, 3, 0, 5, 5, 57.30, 286.50, 1, '2024-11-29');

-- --------------------------------------------------------

--
-- Table structure for table `tblorders`
--

CREATE TABLE `tblorders` (
  `orderId` int(11) NOT NULL,
  `itemId` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `customerName` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `status` enum('preparing','on delivery','delivered','cancelled') DEFAULT NULL,
  `lastUpdateDate` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `location` varchar(255) DEFAULT NULL,
  `paymentStatus` enum('paid','unpaid') DEFAULT 'unpaid',
  `modeOfPayment` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tblorders`
--

INSERT INTO `tblorders` (`orderId`, `itemId`, `quantity`, `customerName`, `date`, `price`, `status`, `lastUpdateDate`, `location`, `paymentStatus`, `modeOfPayment`) VALUES
(1, 1, 5, 'John Doe', '2024-10-30', 250.00, 'delivered', '2024-11-19 13:45:42', '123 Main St', 'unpaid', 'credit card'),
(2, 2, 3, 'Jane Smith', '2024-10-29', 180.00, 'cancelled', '2024-11-19 13:42:58', '456 Elm St', 'paid', 'cash'),
(5, 1, 1, 'LA ', '2024-10-30', 200.00, 'on delivery', '2024-10-30 19:22:44', 'Cabuyao', 'paid', 'GCASH'),
(6, 1, 1, 'LA', '2024-10-30', 200.00, 'preparing', '2024-10-30 19:22:51', 'CALAMBA', 'paid', 'GCASH'),
(7, 1, 1, 'Sharon', '2024-10-30', 200.00, 'preparing', '2024-10-30 19:23:06', 'Canlalay', 'unpaid', 'Paymaya'),
(11, 1, 2, 'Oner', '2024-11-03', 200.00, 'preparing', '2024-11-03 18:43:20', 'Korea', 'paid', 'Gcash'),
(12, 1, 17, 'Oner', '2024-11-03', 100.00, 'preparing', '2024-11-03 19:14:48', 'Korea', 'paid', 'Gcash'),
(13, 1, 3, 'Keria', '2024-11-03', 300.00, 'cancelled', '2024-11-19 13:45:19', 'Koreaa', 'paid', 'Cash on Delivery'),
(14, NULL, NULL, 'Echo', '2024-11-20', 1100.00, 'preparing', '2024-11-20 08:53:59', 'Binan', 'paid', 'Gcash');

-- --------------------------------------------------------

--
-- Table structure for table `tblordersfromsupplier`
--

CREATE TABLE `tblordersfromsupplier` (
  `orderId` int(11) NOT NULL,
  `supplyId` int(11) NOT NULL,
  `totalCost` decimal(10,2) NOT NULL,
  `orderDate` date NOT NULL,
  `status` int(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tblordersfromsupplier`
--

INSERT INTO `tblordersfromsupplier` (`orderId`, `supplyId`, `totalCost`, `orderDate`, `status`) VALUES
(2, 22, 319.80, '2024-11-22', 1),
(5, 16, 850.20, '2024-11-22', 1),
(6, 22, 443.45, '2024-11-22', 1),
(7, 9, 189.25, '2024-11-23', 1),
(11, 22, 247.30, '2024-11-25', 1),
(12, 24, 1000.00, '2024-11-25', 1),
(13, 22, 11.70, '2024-11-25', 1),
(14, 22, 25.00, '2024-11-25', 1),
(17, 9, 189.25, '2024-11-25', 1),
(18, 16, 252.75, '2024-11-25', 1),
(19, 24, 25000.00, '2024-11-25', 1),
(20, 5, 259.15, '2024-11-25', 1),
(21, 22, 50.00, '2024-11-25', 1),
(22, 23, 16774.80, '2024-11-25', 1),
(23, 16, 252.75, '2024-11-25', 1),
(24, 23, 11391.30, '2024-11-26', 1),
(25, 24, 2500.00, '2024-11-26', 1),
(26, 4, 399.00, '2024-11-26', 1),
(27, 16, 252.75, '2024-11-26', 1),
(28, 24, 5000.00, '2024-11-26', 1),
(29, 4, 573.00, '2024-11-26', 1),
(30, 16, 505.50, '2024-11-26', 1),
(31, 23, 5383.50, '2024-11-27', 1),
(32, 23, 2403.12, '2024-11-27', 1),
(33, 16, 252.75, '2024-11-27', 1),
(34, 9, 378.50, '2024-11-27', 1),
(35, 16, 6070.00, '2024-11-27', 1),
(36, 4, 286.50, '2024-11-29', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblorders_customer`
--

CREATE TABLE `tblorders_customer` (
  `order_id` varchar(255) NOT NULL,
  `mop` varchar(55) NOT NULL,
  `ref_no` varchar(55) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` double(20,2) DEFAULT NULL,
  `quantity` int(55) DEFAULT NULL,
  `total_price` decimal(20,2) DEFAULT NULL,
  `total_sum_price` decimal(20,2) DEFAULT NULL,
  `status` varchar(55) DEFAULT NULL,
  `date` varchar(55) DEFAULT NULL,
  `customer_id` int(55) DEFAULT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `customer_loc` varchar(255) DEFAULT NULL,
  `vehicle_plate` varchar(55) NOT NULL,
  `time_out` varchar(20) DEFAULT NULL,
  `time_return` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tblorders_customer`
--

INSERT INTO `tblorders_customer` (`order_id`, `mop`, `ref_no`, `item_name`, `description`, `price`, `quantity`, `total_price`, `total_sum_price`, `status`, `date`, `customer_id`, `customer_name`, `customer_loc`, `vehicle_plate`, `time_out`, `time_return`) VALUES
('ORD-1732782724045', 'COD', '', 'Cooked Chicken Shawarma 1kg', 'Cooked Shawarma Chicken ', 1005.00, 5, 5025.00, 5025.00, 'Transit', '11-28-2024', 9, 'Jericho', 'Calamba, Laguna', '098-ASD', '11-28-2024 16:33', NULL),
('ORD-1732782744843', 'COD', '', 'Fita', 'Fita for shawarma.', 75.00, 2, 150.00, 150.00, 'Transit', '11-28-2024', 9, 'Jericho', 'Calamba, Laguna', '098-ASD', '11-28-2024 16:33', NULL),
('ORD-1732840943738', 'COD', '', 'Cooked Chicken Shawarma 1kg', 'Cooked Shawarma Chicken ', 1005.00, 6, 6030.00, 6030.00, 'TRANSIT', '11-29-2024', 8, 'Liam Rhyss Lim', 'Cabuyao, Laguna', 'AB021A', '11-29-2024, 08:55:19', NULL),
('ORD-1732842041011', 'COD', '', 'Cooked Chicken Shawarma 1kg', 'Cooked Shawarma Chicken ', 1005.00, 1, 1005.00, 1005.00, 'Cancelled', '11-29-2024', 8, 'Liam Rhyss Lim', 'Cabuyao, Laguna', '', NULL, NULL),
('ORD-1732843073046', 'COD', '', 'Cooked Chicken Shawarma 1kg', 'Cooked Shawarma Chicken ', 1005.00, 2, 2010.00, 2010.00, 'Transit', '11-29-2024', 8, 'Liam Rhyss Lim', 'Cabuyao, Laguna', 'DA78912', '11-29-2024 09:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblproduction`
--

CREATE TABLE `tblproduction` (
  `productionId` int(11) NOT NULL,
  `itemId` int(11) DEFAULT NULL,
  `actualQuantityProduced` int(55) NOT NULL,
  `quantityProduced` int(11) NOT NULL,
  `productionDate` date NOT NULL,
  `staffName` varchar(255) DEFAULT NULL,
  `production_status` int(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tblproduction`
--

INSERT INTO `tblproduction` (`productionId`, `itemId`, `actualQuantityProduced`, `quantityProduced`, `productionDate`, `staffName`, `production_status`) VALUES
(2, 1, 2, 2, '2024-11-26', 'Jericho', 1),
(3, 1, 3, 3, '2024-11-26', 'Jericho', 1),
(4, 18, 5, 5, '2024-11-26', 'Jericho', 1),
(5, 18, 5, 5, '2024-11-26', 'Jericho', 1),
(9, 1, 10, 10, '2024-11-26', 'Jericho', 1),
(14, 1, 5, 5, '2024-11-27', 'Jericho', 1),
(15, 20, 5, 5, '2024-11-27', 'Jericho', 1),
(16, 1, 5, 5, '2024-11-29', 'Sho', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblproductionmateriallogs`
--

CREATE TABLE `tblproductionmateriallogs` (
  `logId` int(11) NOT NULL,
  `dateLogged` date NOT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tblproductionmateriallogs`
--

INSERT INTO `tblproductionmateriallogs` (`logId`, `dateLogged`, `description`) VALUES
(1, '2024-11-26', 'Used 2 units of 1kg Chicken Meat (Batch: 5), Used 2 units of 200g Garlic Paste (Batch: 7)'),
(2, '2024-11-26', 'Reverted 2 units of material: 1kg Chicken Meat'),
(3, '2024-11-26', 'Reverted 2 units of material: 200g Garlic Paste'),
(4, '2024-11-26', 'Used 2 units of 250g Ground Coriander (Batch: 4)'),
(8, '2024-11-26', 'Used 2 units of 1kg Chicken Meat (Batch: 5), Used 2 units of 200g Garlic Paste (Batch: 7)'),
(9, '2024-11-26', 'Used 3 units of 1kg Chicken Meat (Batch: 5), Used 3 units of 200g Garlic Paste (Batch: 7)'),
(10, '2024-11-26', 'Used 5 units of 250g Ground Coriander (Batch: 4)'),
(11, '2024-11-26', 'Reverted 5 units of material: 250g Ground Coriander'),
(12, '2024-11-26', 'Used 1 units of 1kg Chicken Meat (Batch: 5), Used 1 units of 200g Garlic Paste (Batch: 7)'),
(13, '2024-11-26', 'Reverted 5 units of material: 250g Ground Coriander'),
(14, '2024-11-26', 'Reverted 1 units of material: 1kg Chicken Meat'),
(15, '2024-11-26', 'Reverted 1 units of material: 200g Garlic Paste'),
(16, '2024-11-26', 'Used 5 units of 250g Ground Coriander (Batch: 4)'),
(17, '2024-11-26', 'Used 5 units of 250g Ground Coriander (Batch: 4)'),
(18, '2024-11-26', 'Used 5 units of 250g Ground Coriander (Batch: 8)'),
(19, '2024-11-26', 'Reverted 5 units of material: 250g Ground Coriander'),
(20, '2024-11-26', 'Used 1 units of 1kg Chicken Meat (Batch: 5), Used 1 units of 200g Garlic Paste (Batch: 7)'),
(21, '2024-11-26', 'Reverted 5 units of material: 250g Ground Coriander'),
(22, '2024-11-26', 'Reverted 1 units of material: 1kg Chicken Meat'),
(23, '2024-11-26', 'Reverted 1 units of material: 200g Garlic Paste'),
(24, '2024-11-26', 'Used 3 units of 250g Ground Coriander (Batch: 4)'),
(25, '2024-11-26', 'Reverted 5 units of material: 250g Ground Coriander'),
(26, '2024-11-26', 'Reverted 1 units of material: 1kg Chicken Meat'),
(27, '2024-11-26', 'Reverted 1 units of material: 200g Garlic Paste'),
(28, '2024-11-26', 'Reverted 3 units of material: 250g Ground Coriander'),
(29, '2024-11-26', 'Used 3 units of 1kg Chicken Meat (Batch: 5), Used 3 units of 200g Garlic Paste (Batch: 7)'),
(30, '2024-11-26', 'Used 1 units of 1kg Chicken Meat (Batch: 9), Used 1 units of 200g Garlic Paste (Batch: 10)'),
(31, '2024-11-26', 'Used 1 units of 1kg Chicken Meat (Batch: 9), Used 1 units of 200g Garlic Paste (Batch: 10)'),
(32, '2024-11-26', 'Reverted 1 units of material: 1kg Chicken Meat'),
(33, '2024-11-26', 'Reverted 1 units of material: 200g Garlic Paste'),
(34, '2024-11-26', 'Used 1 units of 250g Ground Coriander (Batch: 8)'),
(35, '2024-11-26', 'Reverted 1 units of material: 1kg Chicken Meat'),
(36, '2024-11-26', 'Reverted 1 units of material: 200g Garlic Paste'),
(37, '2024-11-26', 'Reverted 1 units of material: 250g Ground Coriander'),
(38, '2024-11-26', 'Used 1 units of 1kg Chicken Meat (Batch: 9), Used 1 units of 200g Garlic Paste (Batch: 10)'),
(39, '2024-11-26', 'Reverted 1 units of material: 1kg Chicken Meat'),
(40, '2024-11-26', 'Reverted 1 units of material: 200g Garlic Paste'),
(41, '2024-11-26', 'Reverted 1 units of material: 250g Ground Coriander'),
(42, '2024-11-26', 'Reverted 1 units of material: 1kg Chicken Meat'),
(43, '2024-11-26', 'Reverted 1 units of material: 200g Garlic Paste'),
(44, '2024-11-26', 'Used 1 units of 250g Ground Coriander (Batch: 8)'),
(45, '2024-11-26', 'Reverted 1 units of material: 250g Ground Coriander'),
(46, '2024-11-26', 'Used 1 units of 1kg Chicken Meat (Batch: 9), Used 1 units of 200g Garlic Paste (Batch: 10)'),
(47, '2024-11-26', 'Reverted 1 units of material: 1kg Chicken Meat'),
(48, '2024-11-26', 'Reverted 1 units of material: 200g Garlic Paste'),
(49, '2024-11-26', 'Used 1 units of 250g Ground Coriander (Batch: 8)'),
(51, '2024-11-26', 'Used 1 units of 1kg Chicken Meat (Batch: 9), Used 1 units of 200g Garlic Paste (Batch: 10)'),
(52, '2024-11-26', 'Used 1 units of 250g Ground Coriander (Batch: 8)'),
(53, '2024-11-26', 'Reverted 1 units of material: 250g Ground Coriander'),
(54, '2024-11-26', 'Used 10 units of 1kg Chicken Meat (Batch: 9), Used 10 units of 200g Garlic Paste (Batch: 10)'),
(57, '2024-11-27', 'Used 5 units of 250g Ground Coriander (Batch: 8)'),
(59, '2024-11-27', 'Reverted 5 units of material: 250g Ground Coriander'),
(60, '2024-11-27', 'Used 5 units of 1kg Chicken Meat (Batch: 20), Used 5 units of 200g Garlic Paste (Batch: 19)'),
(61, '2024-11-27', 'Used 5 units of 250g Ground Coriander (Batch: 8)'),
(62, '2024-11-27', 'Reverted 5 units of material: 250g Ground Coriander'),
(63, '2024-11-27', 'Used 5 units of 1kg Chicken Meat (Batch: 20), Used 5 units of 200g Garlic Paste (Batch: 19)'),
(64, '2024-11-27', 'Reverted 5 units of material: 1kg Chicken Meat'),
(65, '2024-11-27', 'Reverted 5 units of material: 200g Garlic Paste'),
(66, '2024-11-27', 'Used 5 units of 250g Ground Coriander (Batch: 8)'),
(67, '2024-11-27', 'Reverted 5 units of material: 250g Ground Coriander'),
(68, '2024-11-27', 'Used 5 units of 1kg Chicken Meat (Batch: 20), Used 5 units of 200g Garlic Paste (Batch: 19)'),
(69, '2024-11-27', 'Used 5 units of 1kg Chicken Meat (Batch: 20), Used 5 units of 200g Garlic Paste (Batch: 19)'),
(70, '2024-11-27', 'Used 5 units of 1kg Chicken Meat (Batch: 20), Used 5 units of 200g Garlic Paste (Batch: 19)'),
(71, '2024-11-27', 'Used 5 units of 1kg Chicken Meat (Batch: 20), Used 5 units of 200g Garlic Paste (Batch: 19)'),
(72, '2024-11-27', 'Used 5 units of 1kg Chicken Meat (Batch: 20), Used 5 units of 500g Ground Beef (Batch: 3)'),
(73, '2024-11-27', 'Reverted 5 units of material: 1kg Chicken Meat'),
(74, '2024-11-27', 'Reverted 5 units of material: 200g Garlic Paste'),
(75, '2024-11-27', 'Used 5 units of 1kg Chicken Meat (Batch: 20), Used 5 units of 500g Ground Beef (Batch: 16)'),
(76, '2024-11-27', 'Reverted 5 units of material: 1kg Chicken Meat'),
(77, '2024-11-27', 'Reverted 5 units of material: 500g Ground Beef'),
(78, '2024-11-27', 'Used 5 units of 1kg Chicken Meat (Batch: 20), Used 5 units of 200g Garlic Paste (Batch: 19)'),
(79, '2024-11-29', 'Used 5 units of 1kg Chicken Meat (Batch: 23), Used 5 units of 200g Garlic Paste (Batch: 22)');

-- --------------------------------------------------------

--
-- Table structure for table `tblproductionmaterialused`
--

CREATE TABLE `tblproductionmaterialused` (
  `productionMatId` int(55) NOT NULL,
  `productionId` int(55) NOT NULL,
  `orderItemId` int(55) NOT NULL,
  `quantityUsed` int(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_estonian_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tblproductionmaterialused`
--

INSERT INTO `tblproductionmaterialused` (`productionMatId`, `productionId`, `orderItemId`, `quantityUsed`) VALUES
(4, 2, 5, 2),
(5, 2, 7, 2),
(6, 3, 5, 3),
(7, 3, 7, 3),
(8, 4, 4, 5),
(9, 4, 5, 1),
(10, 4, 7, 1),
(11, 4, 4, 5),
(12, 5, 4, 5),
(33, 9, 9, 10),
(34, 9, 10, 10),
(50, 15, 20, 5),
(51, 15, 3, 5),
(54, 14, 20, 5),
(55, 14, 19, 5),
(56, 16, 23, 5),
(57, 16, 22, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tblrawmats`
--

CREATE TABLE `tblrawmats` (
  `matId` int(11) NOT NULL,
  `matName` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tblrawmats`
--

INSERT INTO `tblrawmats` (`matId`, `matName`, `quantity`, `category`) VALUES
(3, '1kg Chicken Meat', -69, 'Meat Raw Materials'),
(6, '1 liter Soy Sauce', 0, 'Sauce Ingredients'),
(8, '1kg Chicken Breast', 0, 'Meat Raw Materials'),
(9, '1kg Lamb Shoulder', 0, 'Meat Raw Materials'),
(10, '500g Ground Beef', -10, 'Meat Raw Materials'),
(11, '2kg Beef Ribs', 0, 'Meat Raw Materials'),
(12, '1 liter Soy Sauce', 0, 'Sauce Ingredients'),
(13, '500g Tahini', 0, 'Sauce Ingredients'),
(14, '1 liter Olive Oils', 0, 'Sauce Ingredients'),
(15, '200g Garlic Paste', -59, 'Sauce Ingredients'),
(16, '2kg All-Purpose Flour', 0, 'Bread Ingredients'),
(17, '500g Yeast', 0, 'Bread Ingredients'),
(19, '1kg Whole Wheat Flour', 0, 'Bread Ingredients'),
(20, '1kg Tomatoes', 0, 'Vegetable Raw Materials'),
(21, '500g Lettuce', 0, 'Vegetable Raw Materials'),
(22, '1kg Cucumbers', 0, 'Vegetable Raw Materials'),
(23, '500g Onions', 0, 'Vegetable Raw Materials'),
(24, '200g Cumin Powder', 0, 'Spices and Seasonings'),
(25, '100g Paprika', 0, 'Spices and Seasonings'),
(26, '250g Ground Coriander', -32, 'Spices and Seasonings'),
(27, '150g Ground Black Pepper', 0, 'Spices and Seasonings'),
(28, 'Sibuyas', 0, 'Vegetable Raw Materials'),
(29, 'Kamatis', 0, 'Vegetable Raw Materials');

-- --------------------------------------------------------

--
-- Table structure for table `tblsales`
--

CREATE TABLE `tblsales` (
  `sales_id` int(55) NOT NULL,
  `customer_id` int(55) NOT NULL,
  `customer_name` varchar(55) NOT NULL,
  `customer_loc` varchar(150) NOT NULL,
  `date` varchar(55) NOT NULL,
  `description` varchar(55) NOT NULL,
  `item_name` varchar(55) NOT NULL,
  `mop` varchar(55) NOT NULL,
  `order_id` varchar(55) NOT NULL,
  `price` varchar(55) NOT NULL,
  `quantity` varchar(55) NOT NULL,
  `ref_no` varchar(55) NOT NULL,
  `time_out` varchar(55) NOT NULL,
  `time_return` varchar(55) NOT NULL,
  `total_price` varchar(55) NOT NULL,
  `total_sum_price` varchar(55) NOT NULL,
  `vehicle_plate` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblsales`
--

INSERT INTO `tblsales` (`sales_id`, `customer_id`, `customer_name`, `customer_loc`, `date`, `description`, `item_name`, `mop`, `order_id`, `price`, `quantity`, `ref_no`, `time_out`, `time_return`, `total_price`, `total_sum_price`, `vehicle_plate`) VALUES
(1, 9, 'Jericho', 'Calamba, Laguna', '11-28-2024', 'Cooked Shawarma Chicken ', 'Cooked Chicken Shawarma 1kg', 'COD', 'ORD-1732780576020', '1005', '5', '', '11-28-2024 15:56', '11-28-2024 15:57', '5025', '5025', '098-ASD'),
(2, 9, 'Jericho', 'Calamba, Laguna', '11-28-2024', 'Cooked Shawarma Chicken ', 'Cooked Chicken Shawarma 1kg', 'COD', 'ORD-1732780972115', '1005', '1', '', '11-28-2024 16:03', '11-28-2024 16:03', '1005', '1005', '098-ASD');

-- --------------------------------------------------------

--
-- Table structure for table `tblsupdeli`
--

CREATE TABLE `tblsupdeli` (
  `supDeliId` int(11) NOT NULL,
  `supplyId` int(11) NOT NULL,
  `matId` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `cost` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` int(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tblsupdeli`
--

INSERT INTO `tblsupdeli` (`supDeliId`, `supplyId`, `matId`, `quantity`, `cost`, `date`, `status`) VALUES
(2, 4, 6, 23, 3500, '2024-09-16', NULL),
(4, 4, 3, 20, 4000, '2024-10-05', NULL),
(7, 4, 3, 10, 2000, '2024-10-14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblsupplierrawmats`
--

CREATE TABLE `tblsupplierrawmats` (
  `supplierId` int(11) NOT NULL,
  `rawMatId` int(11) NOT NULL,
  `price` decimal(55,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tblsupplierrawmats`
--

INSERT INTO `tblsupplierrawmats` (`supplierId`, `rawMatId`, `price`) VALUES
(4, 3, 57.30),
(4, 6, 22.50),
(5, 3, 51.83),
(5, 19, 50.85),
(9, 3, 37.85),
(9, 6, 25.35),
(16, 14, 70.85),
(16, 15, 50.55),
(22, 6, 58.90),
(22, 16, 5.85),
(22, 17, 59.85),
(22, 29, 12.50),
(23, 8, 600.78),
(23, 9, 575.90),
(23, 10, 500.80),
(24, 26, 500.00),
(25, 9, 1000.00);

-- --------------------------------------------------------

--
-- Table structure for table `tblsuppliers`
--

CREATE TABLE `tblsuppliers` (
  `supplyId` int(11) NOT NULL,
  `supplyName` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact` bigint(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tblsuppliers`
--

INSERT INTO `tblsuppliers` (`supplyId`, `supplyName`, `address`, `contact`) VALUES
(4, 'Jester', 'Mamatid', 9987654321),
(5, 'John', 'Calamba', 9454468426),
(9, 'Lawrence', 'Cabuyao', 9999999999),
(16, 'Liam', 'Echo', 639451959211),
(22, 'Jericho', 'Cabuyao', 639091231231),
(23, 'Pepito Meats', 'Cabuyao, Laguna', 91231231231),
(24, 'Juan', 'Calamba', 123123123123),
(25, 'Kimi', 'Cabuyao, Laguna', 9486682264);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(55) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `access` int(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `username`, `password`, `access`) VALUES
(1, 'admin', 'password', 1),
(2, 'data', 'password', 2),
(3, 'sales', 'password', 3),
(8, 'liam', 'password', 4),
(9, 'jericho', 'password', 4),
(10, 'cinco', 'password', 4),
(11, 'sam', 'mangubat', 1),
(14, 'Echo', 'password', 4),
(18, 'Sammy', 'password', 4),
(19, 'cinco19', 'cinco', 1),
(20, 'yam', 'yam', 4),
(21, 'kimsol', 'password', 1),
(22, 'Raniel', 'password', 4),
(23, 'kim', 'password', 3),
(24, 'sho', 'password', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicle`
--

CREATE TABLE `tblvehicle` (
  `vehicle_plate` varchar(255) NOT NULL,
  `rider` varchar(255) DEFAULT NULL,
  `vehicle_type` varchar(255) DEFAULT NULL,
  `vehicle_available` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tblvehicle`
--

INSERT INTO `tblvehicle` (`vehicle_plate`, `rider`, `vehicle_type`, `vehicle_available`) VALUES
('DA78912', 'Jonathan', 'Motor', 0),
('AB021A', 'Edmond', 'Motor', 0),
('123123', 'Tyron', 'Motor', 1),
('ABCABC', 'Gerric', 'Motor', 1),
('098-ASD', 'Joseph', 'Car Wigo', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mop`
--

CREATE TABLE `tbl_mop` (
  `id` int(55) NOT NULL,
  `mop` varchar(55) NOT NULL,
  `attach_file` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_mop`
--

INSERT INTO `tbl_mop` (`id`, `mop`, `attach_file`) VALUES
(1, 'COD', 0),
(2, 'Gcash', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblcart`
--
ALTER TABLE `tblcart`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tblcategories`
--
ALTER TABLE `tblcategories`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  ADD PRIMARY KEY (`customer_id`) USING BTREE;

--
-- Indexes for table `tbldocument`
--
ALTER TABLE `tbldocument`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tblitems`
--
ALTER TABLE `tblitems`
  ADD PRIMARY KEY (`itemId`) USING BTREE;

--
-- Indexes for table `tblitem_ingredients`
--
ALTER TABLE `tblitem_ingredients`
  ADD PRIMARY KEY (`ingId`) USING BTREE;

--
-- Indexes for table `tblmatlogsmats`
--
ALTER TABLE `tblmatlogsmats`
  ADD PRIMARY KEY (`logId`,`matId`) USING BTREE,
  ADD KEY `matId` (`matId`) USING BTREE;

--
-- Indexes for table `tblnotifications`
--
ALTER TABLE `tblnotifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblorderfromsupplier_items`
--
ALTER TABLE `tblorderfromsupplier_items`
  ADD PRIMARY KEY (`orderItemId`) USING BTREE,
  ADD KEY `order_fk` (`orderId`) USING BTREE,
  ADD KEY `material_fk` (`matId`) USING BTREE;

--
-- Indexes for table `tblorders`
--
ALTER TABLE `tblorders`
  ADD PRIMARY KEY (`orderId`) USING BTREE,
  ADD KEY `itemId` (`itemId`) USING BTREE;

--
-- Indexes for table `tblordersfromsupplier`
--
ALTER TABLE `tblordersfromsupplier`
  ADD PRIMARY KEY (`orderId`) USING BTREE,
  ADD KEY `supplier_fk` (`supplyId`) USING BTREE;

--
-- Indexes for table `tblproduction`
--
ALTER TABLE `tblproduction`
  ADD PRIMARY KEY (`productionId`) USING BTREE,
  ADD KEY `itemId` (`itemId`) USING BTREE;

--
-- Indexes for table `tblproductionmateriallogs`
--
ALTER TABLE `tblproductionmateriallogs`
  ADD PRIMARY KEY (`logId`) USING BTREE;

--
-- Indexes for table `tblproductionmaterialused`
--
ALTER TABLE `tblproductionmaterialused`
  ADD PRIMARY KEY (`productionMatId`) USING BTREE;

--
-- Indexes for table `tblrawmats`
--
ALTER TABLE `tblrawmats`
  ADD PRIMARY KEY (`matId`) USING BTREE;

--
-- Indexes for table `tblsales`
--
ALTER TABLE `tblsales`
  ADD PRIMARY KEY (`sales_id`);

--
-- Indexes for table `tblsupdeli`
--
ALTER TABLE `tblsupdeli`
  ADD PRIMARY KEY (`supDeliId`) USING BTREE,
  ADD KEY `supplier` (`supplyId`) USING BTREE,
  ADD KEY `rawMats` (`matId`) USING BTREE;

--
-- Indexes for table `tblsupplierrawmats`
--
ALTER TABLE `tblsupplierrawmats`
  ADD PRIMARY KEY (`supplierId`,`rawMatId`) USING BTREE,
  ADD KEY `rawMatId` (`rawMatId`) USING BTREE;

--
-- Indexes for table `tblsuppliers`
--
ALTER TABLE `tblsuppliers`
  ADD PRIMARY KEY (`supplyId`) USING BTREE;

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tbl_mop`
--
ALTER TABLE `tbl_mop`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblcart`
--
ALTER TABLE `tblcart`
  MODIFY `id` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `tblcategories`
--
ALTER TABLE `tblcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbldocument`
--
ALTER TABLE `tbldocument`
  MODIFY `id` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblitems`
--
ALTER TABLE `tblitems`
  MODIFY `itemId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblitem_ingredients`
--
ALTER TABLE `tblitem_ingredients`
  MODIFY `ingId` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `tblnotifications`
--
ALTER TABLE `tblnotifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tblorderfromsupplier_items`
--
ALTER TABLE `tblorderfromsupplier_items`
  MODIFY `orderItemId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tblorders`
--
ALTER TABLE `tblorders`
  MODIFY `orderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblordersfromsupplier`
--
ALTER TABLE `tblordersfromsupplier`
  MODIFY `orderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tblproduction`
--
ALTER TABLE `tblproduction`
  MODIFY `productionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tblproductionmateriallogs`
--
ALTER TABLE `tblproductionmateriallogs`
  MODIFY `logId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `tblproductionmaterialused`
--
ALTER TABLE `tblproductionmaterialused`
  MODIFY `productionMatId` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `tblrawmats`
--
ALTER TABLE `tblrawmats`
  MODIFY `matId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tblsales`
--
ALTER TABLE `tblsales`
  MODIFY `sales_id` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblsupdeli`
--
ALTER TABLE `tblsupdeli`
  MODIFY `supDeliId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblsuppliers`
--
ALTER TABLE `tblsuppliers`
  MODIFY `supplyId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_mop`
--
ALTER TABLE `tbl_mop`
  MODIFY `id` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblmatlogsmats`
--
ALTER TABLE `tblmatlogsmats`
  ADD CONSTRAINT `tblmatlogsmats_ibfk_2` FOREIGN KEY (`matId`) REFERENCES `tblrawmats` (`matId`) ON DELETE CASCADE;

--
-- Constraints for table `tblorders`
--
ALTER TABLE `tblorders`
  ADD CONSTRAINT `tblorders_ibfk_1` FOREIGN KEY (`itemId`) REFERENCES `tblitems` (`itemId`);

--
-- Constraints for table `tblordersfromsupplier`
--
ALTER TABLE `tblordersfromsupplier`
  ADD CONSTRAINT `supplier_fk` FOREIGN KEY (`supplyId`) REFERENCES `tblsuppliers` (`supplyId`) ON DELETE CASCADE;

--
-- Constraints for table `tblsupdeli`
--
ALTER TABLE `tblsupdeli`
  ADD CONSTRAINT `rawMats` FOREIGN KEY (`matId`) REFERENCES `tblrawmats` (`matId`),
  ADD CONSTRAINT `supplier` FOREIGN KEY (`supplyId`) REFERENCES `tblsuppliers` (`supplyId`);

--
-- Constraints for table `tblsupplierrawmats`
--
ALTER TABLE `tblsupplierrawmats`
  ADD CONSTRAINT `tblsupplierrawmats_ibfk_1` FOREIGN KEY (`supplierId`) REFERENCES `tblsuppliers` (`supplyId`) ON DELETE CASCADE,
  ADD CONSTRAINT `tblsupplierrawmats_ibfk_2` FOREIGN KEY (`rawMatId`) REFERENCES `tblrawmats` (`matId`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
