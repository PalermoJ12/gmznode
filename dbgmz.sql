/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100138
 Source Host           : localhost:3306
 Source Schema         : dbgmz

 Target Server Type    : MySQL
 Target Server Version : 100138
 File Encoding         : 65001

 Date: 11/12/2024 15:32:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_mop
-- ----------------------------
DROP TABLE IF EXISTS `tbl_mop`;
CREATE TABLE `tbl_mop`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mop` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `attach_file` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_mop
-- ----------------------------
INSERT INTO `tbl_mop` VALUES (1, 'COD', 0);
INSERT INTO `tbl_mop` VALUES (2, 'Gcash', 1);

-- ----------------------------
-- Table structure for tblcancelled_customer
-- ----------------------------
DROP TABLE IF EXISTS `tblcancelled_customer`;
CREATE TABLE `tblcancelled_customer`  (
  `order_id` int(11) NOT NULL,
  `total_price` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `date-order` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tblcart
-- ----------------------------
DROP TABLE IF EXISTS `tblcart`;
CREATE TABLE `tblcart`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NULL DEFAULT NULL,
  `item_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `price` double(10, 2) NULL DEFAULT NULL,
  `qty` int(11) NULL DEFAULT NULL,
  `total_price` double(55, 2) NULL DEFAULT NULL,
  `isOrdered` int(11) NULL DEFAULT NULL,
  `customer_id` varchar(55) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `customer_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `customer_loc` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 69 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tblcart
-- ----------------------------
INSERT INTO `tblcart` VALUES (68, 1, 'Cooked Chicken Shawarma 1kg', 'Cooked Shawarma Chicken ', 1005.00, 1, 1005.00, 0, '24', 'Sho Dennis', 'Cabuyao');

-- ----------------------------
-- Table structure for tblcategories
-- ----------------------------
DROP TABLE IF EXISTS `tblcategories`;
CREATE TABLE `tblcategories`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `type` enum('Legal','Contracts/Agreement','Document','Inventory','RawMaterial') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tblcategories
-- ----------------------------
INSERT INTO `tblcategories` VALUES (1, 'Bills', 'Document');
INSERT INTO `tblcategories` VALUES (2, 'Contract', 'Contracts/Agreement');
INSERT INTO `tblcategories` VALUES (3, 'Agreement', 'Contracts/Agreement');
INSERT INTO `tblcategories` VALUES (4, 'Business Permit', 'Legal');
INSERT INTO `tblcategories` VALUES (10, 'Shawarma Meats', 'Inventory');
INSERT INTO `tblcategories` VALUES (11, 'Sauces', 'Inventory');
INSERT INTO `tblcategories` VALUES (12, 'Pitas', 'Inventory');
INSERT INTO `tblcategories` VALUES (13, 'Meat Raw Materials', 'RawMaterial');
INSERT INTO `tblcategories` VALUES (14, 'Sauce Ingredients', 'RawMaterial');
INSERT INTO `tblcategories` VALUES (15, 'Bread Ingredients', 'RawMaterial');
INSERT INTO `tblcategories` VALUES (16, 'Vegetable Raw Materials', 'RawMaterial');
INSERT INTO `tblcategories` VALUES (17, 'Spices and Seasonings', 'RawMaterial');
INSERT INTO `tblcategories` VALUES (21, 'Drinks', 'Inventory');
INSERT INTO `tblcategories` VALUES (22, 'Resumes', 'Document');
INSERT INTO `tblcategories` VALUES (23, 'Meats', 'Inventory');
INSERT INTO `tblcategories` VALUES (24, 'Snacks', 'Inventory');

-- ----------------------------
-- Table structure for tblcustomer
-- ----------------------------
DROP TABLE IF EXISTS `tblcustomer`;
CREATE TABLE `tblcustomer`  (
  `customer_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `location` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `contact_no` varchar(55) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email` varchar(55) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`customer_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tblcustomer
-- ----------------------------
INSERT INTO `tblcustomer` VALUES (8, 'James Norly Rivadinerski', 'Cabuyao, Laguna', '09065589512', 'rivaldinerski@dummyemail.com');
INSERT INTO `tblcustomer` VALUES (9, 'Jam John', 'Calamba, Laguna', '09069371989', 'jamjam@dummyemail.com');
INSERT INTO `tblcustomer` VALUES (10, 'Dennis Sho Cinco', 'Lipa, Batangas', '09454468426', 'cinco@dummyemail.com');
INSERT INTO `tblcustomer` VALUES (14, 'John Pork', 'Calamba', '09050091412', 'porkpork@dummyemail.com');
INSERT INTO `tblcustomer` VALUES (18, 'Kim Solde', 'Timbao', '09042341097', 'kimmy@dummyemail.com');
INSERT INTO `tblcustomer` VALUES (20, 'yam', 'Phase 1 Block 5 Lot 25 Lakeside Nest', '09061431254', 'yam@dummyemail.com');
INSERT INTO `tblcustomer` VALUES (22, 'Raniel De Vera', 'Marinig Cabuyao, Laguna', '09080132981', 'ranieldevera@dummyemail.com');
INSERT INTO `tblcustomer` VALUES (24, 'Sho Dennis', 'Cabuyao', '09016371146', 'shodennis@dummyemail.com');
INSERT INTO `tblcustomer` VALUES (25, 'Kim Solde', 'Cabuyao, Laguna', '09041456790', 'kim solde@dummyemail.com');
INSERT INTO `tblcustomer` VALUES (26, 'J. Jonah Jameson', 'Cabuyao ', '12345678912', 'spidermanhater@gmail.com');

-- ----------------------------
-- Table structure for tbldocument
-- ----------------------------
DROP TABLE IF EXISTS `tbldocument`;
CREATE TABLE `tbldocument`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `documentName` varchar(255) CHARACTER SET utf8 COLLATE utf8_estonian_ci NULL DEFAULT NULL,
  `filePath` varchar(255) CHARACTER SET utf8 COLLATE utf8_estonian_ci NULL DEFAULT NULL,
  `category` varchar(255) CHARACTER SET utf8 COLLATE utf8_estonian_ci NULL DEFAULT NULL,
  `dateUploaded` date NULL DEFAULT NULL,
  `dateEffective` date NULL DEFAULT NULL,
  `expirationDate` date NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_estonian_ci NULL DEFAULT NULL,
  `isArchive` int(11) NULL DEFAULT NULL,
  `isNonExpiry` int(55) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_estonian_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbldocument
-- ----------------------------
INSERT INTO `tbldocument` VALUES (13, '1-module-1 (20230907132645) (20240913005953)', '/uploads/1732839251889-1-module-1 (20230907132645) (20240913005953).pdf', 'Business Permit', '2024-11-29', '2024-11-29', '2024-11-30', 'Contract', 1, 0);
INSERT INTO `tbldocument` VALUES (14, '1-module-1 (20230907132645) (20240913005953)', '/uploads/1732839253116-1-module-1 (20230907132645) (20240913005953).pdf', 'Business Permit', '2024-11-29', NULL, NULL, 'Contract', 0, 1);
INSERT INTO `tbldocument` VALUES (15, 'CINCO Certified True Copy of Grades 1st Semester1st Term, AY 2023-2024', '/uploads/1733186354917-CINCO Certified True Copy of Grades 1st Semester1st Term, AY 2023-2024.pdf', 'Agreement', '2024-09-20', '2024-12-03', '2025-11-28', 'Resume ko toh', 0, 0);
INSERT INTO `tbldocument` VALUES (17, '1-module-1 (20230907132645) (20240913005953)', '/uploads/1733187210525-1-module-1 (20230907132645) (20240913005953).pdf', 'Contract', '2024-12-03', '2024-12-03', '2025-01-03', 'Sample file', 0, 0);
INSERT INTO `tbldocument` VALUES (18, 'sales_report', '/uploads/1733187364227-sales_report.pdf', 'Contract', '2024-12-03', '2024-12-03', '2025-01-15', 'Sales report', 0, 0);
INSERT INTO `tbldocument` VALUES (20, 'Copy of Grades (First Semester A.Y. 2023-2024) - 1901219', '/uploads/1733219110401-Copy of Grades (First Semester A.Y. 2023-2024) - 1901219.pdf', 'Contract', '2024-11-27', '2024-12-03', '2025-01-01', 'Sample data', 0, 0);
INSERT INTO `tbldocument` VALUES (21, 'ITD-1-CHAPTER-4-AND-5-DRAFT', '/uploads/1733225808452-ITD-1-CHAPTER-4-AND-5-DRAFT.pdf', 'Bills', '2024-12-03', '2024-12-03', '2025-01-03', 'sample', 0, 0);
INSERT INTO `tbldocument` VALUES (27, 'REVISIONS AS PER SIR TEN AND CLIENT', '/uploads/1733228939029-REVISIONS AS PER SIR TEN AND CLIENT.pdf', 'Bills', '2024-12-03', '2024-12-03', '2025-01-03', 'TEST', 0, 0);
INSERT INTO `tbldocument` VALUES (29, 'SAMPLE APPROVED PRAF', '/uploads/1733293452021-SAMPLE APPROVED PRAF.pdf', 'Contract', '2024-12-04', '2024-12-04', '2025-03-04', 'test', 0, 0);
INSERT INTO `tbldocument` VALUES (30, 'SAMPLE APPROVED PRAF', '/uploads/1733293526419-SAMPLE APPROVED PRAF.pdf', 'Business Permit', '2024-01-18', '2024-12-04', '2025-06-17', 'trst', 0, 0);
INSERT INTO `tbldocument` VALUES (32, 'SAMPLE APPROVED PRAF', '/uploads/1733799879352-SAMPLE APPROVED PRAF.pdf', 'Contract', '2024-12-10', '2024-12-10', '2025-01-14', 'rr', 0, 0);

-- ----------------------------
-- Table structure for tblitem_ingredients
-- ----------------------------
DROP TABLE IF EXISTS `tblitem_ingredients`;
CREATE TABLE `tblitem_ingredients`  (
  `ingId` int(11) NOT NULL AUTO_INCREMENT,
  `itemId` int(11) NULL DEFAULT NULL,
  `matId` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`ingId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 91 CHARACTER SET = utf8 COLLATE = utf8_estonian_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tblitem_ingredients
-- ----------------------------
INSERT INTO `tblitem_ingredients` VALUES (14, 6, 27);
INSERT INTO `tblitem_ingredients` VALUES (15, 6, 10);
INSERT INTO `tblitem_ingredients` VALUES (16, 7, 26);
INSERT INTO `tblitem_ingredients` VALUES (17, 7, 21);
INSERT INTO `tblitem_ingredients` VALUES (18, 10, 6);
INSERT INTO `tblitem_ingredients` VALUES (19, 10, 20);
INSERT INTO `tblitem_ingredients` VALUES (20, 10, 14);
INSERT INTO `tblitem_ingredients` VALUES (21, 11, 15);
INSERT INTO `tblitem_ingredients` VALUES (22, 11, 22);
INSERT INTO `tblitem_ingredients` VALUES (23, 11, 21);
INSERT INTO `tblitem_ingredients` VALUES (24, 12, 23);
INSERT INTO `tblitem_ingredients` VALUES (25, 13, 25);
INSERT INTO `tblitem_ingredients` VALUES (26, 13, 9);
INSERT INTO `tblitem_ingredients` VALUES (27, 14, 21);
INSERT INTO `tblitem_ingredients` VALUES (28, 14, 16);
INSERT INTO `tblitem_ingredients` VALUES (29, 15, 16);
INSERT INTO `tblitem_ingredients` VALUES (30, 15, 3);
INSERT INTO `tblitem_ingredients` VALUES (33, 18, 26);
INSERT INTO `tblitem_ingredients` VALUES (34, 8, 8);
INSERT INTO `tblitem_ingredients` VALUES (35, 8, 9);
INSERT INTO `tblitem_ingredients` VALUES (36, 8, 11);
INSERT INTO `tblitem_ingredients` VALUES (51, 27, 9);
INSERT INTO `tblitem_ingredients` VALUES (53, 29, 30);
INSERT INTO `tblitem_ingredients` VALUES (54, 30, 9);
INSERT INTO `tblitem_ingredients` VALUES (57, 32, 23);
INSERT INTO `tblitem_ingredients` VALUES (58, 19, 29);
INSERT INTO `tblitem_ingredients` VALUES (59, 19, 14);
INSERT INTO `tblitem_ingredients` VALUES (76, 17, 15);
INSERT INTO `tblitem_ingredients` VALUES (77, 17, 24);
INSERT INTO `tblitem_ingredients` VALUES (78, 17, 23);
INSERT INTO `tblitem_ingredients` VALUES (79, 17, 8);
INSERT INTO `tblitem_ingredients` VALUES (80, 1, 3);
INSERT INTO `tblitem_ingredients` VALUES (81, 1, 15);
INSERT INTO `tblitem_ingredients` VALUES (82, 31, 34);
INSERT INTO `tblitem_ingredients` VALUES (83, 31, 25);
INSERT INTO `tblitem_ingredients` VALUES (84, 20, 10);
INSERT INTO `tblitem_ingredients` VALUES (85, 20, 3);
INSERT INTO `tblitem_ingredients` VALUES (86, 2, 22);
INSERT INTO `tblitem_ingredients` VALUES (87, 2, 26);
INSERT INTO `tblitem_ingredients` VALUES (88, 2, 15);
INSERT INTO `tblitem_ingredients` VALUES (89, 2, 13);
INSERT INTO `tblitem_ingredients` VALUES (90, 2, 19);

-- ----------------------------
-- Table structure for tblitems
-- ----------------------------
DROP TABLE IF EXISTS `tblitems`;
CREATE TABLE `tblitems`  (
  `itemId` int(11) NOT NULL AUTO_INCREMENT,
  `itemName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `price` int(11) NULL DEFAULT NULL,
  `category` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `quantity` double(55, 0) NULL DEFAULT NULL,
  `threshold_low` int(55) NOT NULL,
  PRIMARY KEY (`itemId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tblitems
-- ----------------------------
INSERT INTO `tblitems` VALUES (1, 'Cooked Chicken Shawarma 1kg', 1005, 'Shawarma Meats', 'Cooked Shawarma Chicken ', 7, 50);
INSERT INTO `tblitems` VALUES (2, 'Hot Vegan Sauce 1 Bottle', 50, 'Sauces', 'A hot sauce', 0, 50);
INSERT INTO `tblitems` VALUES (6, '1kg Grilled Lamb Shawarma', 150, 'Shawarma Meats', 'Juicy grilled lamb Shawarma, seasoned with spices and grilled to perfection.', 0, 20);
INSERT INTO `tblitems` VALUES (7, '500g Ground Beef Shawarma', 90, 'Shawarma Meats', 'Ground beef Shawarma, perfect for mixing with vegetables and sauces.', 0, 10);
INSERT INTO `tblitems` VALUES (8, '1kg Beef Ribs Shawarma', 180, 'Shawarma Meats', 'Slow-cooked beef ribs Shawarma with a smoky flavor, ideal for wraps.', 0, 10);
INSERT INTO `tblitems` VALUES (10, '500g Garlic Tahini Sauce', 45, 'Sauces', 'Creamy and savory tahini sauce with a rich garlic flavor, perfect for Shawarma wraps.', 0, 50);
INSERT INTO `tblitems` VALUES (11, '1 liter Lemon Garlic Sauce', 40, 'Sauces', 'Zesty lemon and garlic sauce, ideal for enhancing the flavors of Shawarma.', 0, 10);
INSERT INTO `tblitems` VALUES (12, '500g Yogurt-Based Shawarma Sauce', 60, 'Sauces', 'Tangy yogurt-based sauce, adding creaminess to Shawarma wraps.', 0, 5);
INSERT INTO `tblitems` VALUES (13, '10 Pita Bread (Pack)', 30, 'Pitas', 'Soft, fluffy pita bread, perfect for wrapping Shawarma meat and veggies.', 0, 5);
INSERT INTO `tblitems` VALUES (14, '20 Whole Wheat Pita Breads', 40, 'Pitas', 'Healthier option with whole wheat flour, perfect for Shawarma wraps.', 0, 5);
INSERT INTO `tblitems` VALUES (15, '10 Mini Pita Breads', 25, 'Pitas', 'Small-sized pita breads, ideal for making Shawarma sliders or wraps.', 0, 5);
INSERT INTO `tblitems` VALUES (17, 'Sam Shawarma', 55, 'Shawarma Meats', 'This is a shawarma.', 0, 15);
INSERT INTO `tblitems` VALUES (18, 'Fita', 75, 'Pitas', 'Fita for shawarma.', 0, 10);
INSERT INTO `tblitems` VALUES (19, 'Ice tea', 51, 'Drinks', 'This is refereshing ice tea.', 0, 10);
INSERT INTO `tblitems` VALUES (20, 'Magic Meat', 40, 'Meat', 'DALAWANG MEAT PINAGSAMA PINASARAP', 5, 50);
INSERT INTO `tblitems` VALUES (21, 'Uncooked Ground Beef Shawarma 500g', 140, 'Shawarma Meats', 'Raw meat', 0, 10);
INSERT INTO `tblitems` VALUES (30, 'GrandSlam Meat', 76, 'Meats', 'Masarap to promise.\n', 8, 5);
INSERT INTO `tblitems` VALUES (31, 'Fresh Fries 1kg', 140, 'Snacks', 'Fresh Fries', 0, 50);

-- ----------------------------
-- Table structure for tblmatlogsmats
-- ----------------------------
DROP TABLE IF EXISTS `tblmatlogsmats`;
CREATE TABLE `tblmatlogsmats`  (
  `logId` int(11) NOT NULL,
  `matId` int(11) NOT NULL,
  `quantity` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`logId`, `matId`) USING BTREE,
  INDEX `matId`(`matId`) USING BTREE,
  CONSTRAINT `tblmatlogsmats_ibfk_2` FOREIGN KEY (`matId`) REFERENCES `tblrawmats` (`matId`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tblnotifications
-- ----------------------------
DROP TABLE IF EXISTS `tblnotifications`;
CREATE TABLE `tblnotifications`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `expirationDate` date NULL DEFAULT NULL,
  `categoryType` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `account_notif` int(55) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 67 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tblnotifications
-- ----------------------------
INSERT INTO `tblnotifications` VALUES (1, 'ITD-1-CHAPTER-4-AND-5-DRAFT (Document) will expire on 2025-01-03.', 0, NULL, NULL, 1);
INSERT INTO `tblnotifications` VALUES (2, 'SAMPLE APPROVED PRAF (Legal) is expiring soon on 2025-06-17.', 0, NULL, NULL, 1);
INSERT INTO `tblnotifications` VALUES (3, '1-module-1 (20230907132645) (20240913005953) (Contract/Agreement) needs renewal by 2025-01-03.', 0, NULL, NULL, 1);
INSERT INTO `tblnotifications` VALUES (4, 'SAMPLE APPROVED PRAF (Contract/Agreement) needs renewal by 2025-03-04.', 0, NULL, NULL, 1);
INSERT INTO `tblnotifications` VALUES (5, 'REVISIONS AS PER SIR TEN AND CLIENT (Document) will expire on 2025-01-03.', 0, NULL, NULL, 1);
INSERT INTO `tblnotifications` VALUES (6, 'sales_report (Contract/Agreement) needs renewal by 2025-01-15.', 0, NULL, NULL, 1);
INSERT INTO `tblnotifications` VALUES (7, 'Copy of Grades (First Semester A.Y. 2023-2024) - 1901219 (Contract/Agreement) needs renewal by 2025-01-01.', 1, NULL, NULL, 1);
INSERT INTO `tblnotifications` VALUES (8, 'REVISIONS AS PER SIR TEN AND CLIENT (Document) will expire on 2025-01-03.', 0, '2025-01-03', 'Document', 1);
INSERT INTO `tblnotifications` VALUES (9, 'ITD-1-CHAPTER-4-AND-5-DRAFT (Document) will expire on 2025-01-03.', 0, '2025-01-03', 'Document', 1);
INSERT INTO `tblnotifications` VALUES (10, 'SAMPLE APPROVED PRAF (Contract/Agreement) needs renewal by 2025-03-04.', 1, '2025-03-04', 'Contracts/Agreement', 1);
INSERT INTO `tblnotifications` VALUES (11, 'Copy of Grades (First Semester A.Y. 2023-2024) - 1901219 (Contract/Agreement) needs renewal by 2025-01-01.', 0, '2025-01-01', 'Contracts/Agreement', 1);
INSERT INTO `tblnotifications` VALUES (12, '1-module-1 (20230907132645) (20240913005953) (Contract/Agreement) needs renewal by 2025-01-03.', 0, '2025-01-03', 'Contracts/Agreement', 1);
INSERT INTO `tblnotifications` VALUES (13, 'sales_report (Contract/Agreement) needs renewal by 2025-01-15.', 0, '2025-01-15', 'Contracts/Agreement', 1);
INSERT INTO `tblnotifications` VALUES (14, '1-module-1 (20230907132645) (20240913005953) (Legal) has already expired on 2024-11-30.', 0, '2024-11-30', 'Legal', 1);
INSERT INTO `tblnotifications` VALUES (15, 'SAMPLE APPROVED PRAF (Legal) is expiring soon on 2025-06-17.', 0, '2025-06-17', 'Legal', 1);
INSERT INTO `tblnotifications` VALUES (16, '1-module-1 (20230907132645) (20240913005953) (Legal) has already expired on 2024-11-30.', 0, '2024-11-30', 'Legal', 1);
INSERT INTO `tblnotifications` VALUES (17, 'SAMPLE APPROVED PRAF (Contract/Agreement) needs renewal by 2025-01-14.', 0, '2025-01-14', 'Contracts/Agreement', 1);
INSERT INTO `tblnotifications` VALUES (18, 'Letter has been deleted by admin.', 0, NULL, NULL, 1);
INSERT INTO `tblnotifications` VALUES (21, 'Order for 1 liter Olive Oils from Liam, 1kg Whole Wheat Flour from John has been successfully purchased by production.', 0, NULL, NULL, 2);
INSERT INTO `tblnotifications` VALUES (22, 'Order ID 75 has been updated with 1kg Whole Wheat Flour from John by production.', 1, NULL, NULL, 2);
INSERT INTO `tblnotifications` VALUES (23, 'Order ID 75 has been updated with 1kg Whole Wheat Flour from John, 1kg Lamb Shoulder from Pepito Meats by production.', 1, NULL, NULL, 2);
INSERT INTO `tblnotifications` VALUES (24, 'Item in Order ID 75 received by production.', 1, NULL, NULL, 2);
INSERT INTO `tblnotifications` VALUES (25, 'Order ID 75 has been fully received by production.', 1, NULL, NULL, 2);
INSERT INTO `tblnotifications` VALUES (26, 'Item 94 in Order ID 74 received by production.', 1, NULL, NULL, 2);
INSERT INTO `tblnotifications` VALUES (27, 'matName in Order ID 71 received by production.', 1, NULL, NULL, 2);
INSERT INTO `tblnotifications` VALUES (28, 'Burger Patty in Order ID 71 received by production.', 1, NULL, NULL, 2);
INSERT INTO `tblnotifications` VALUES (29, 'Order ID 71 has been fully received by production.', 1, NULL, NULL, 2);
INSERT INTO `tblnotifications` VALUES (30, 'Order for Burger Patty from Jericho, 200g Garlic Paste from Liam, 1kg Whole Wheat Flour from John, 2kg All-Purpose Flour from Jericho, 250g Ground Coriander from Juan has been successfully purchased by production.', 1, NULL, NULL, 2);
INSERT INTO `tblnotifications` VALUES (31, '1kg Whole Wheat Flour in Order ID 76 received by production.', 1, NULL, NULL, 2);
INSERT INTO `tblnotifications` VALUES (32, 'Order ID 76 has been updated with 2kg All-Purpose Flour from Jericho, Burger Patty from Jericho, 200g Garlic Paste from Liam, 250g Ground Coriander from Juan by production.', 1, NULL, NULL, 2);
INSERT INTO `tblnotifications` VALUES (33, '2kg All-Purpose Flour in Order ID 76 received by production.', 1, NULL, NULL, 2);
INSERT INTO `tblnotifications` VALUES (47, 'Successfully produced 1 units of  GrandSlam Meat. Materials used: 1kg Lamb Shoulder (1 units, Batch: 31).', 0, NULL, NULL, 2);
INSERT INTO `tblnotifications` VALUES (48, 'Successfully produced 2 units of  Fita. Materials used: 250g Ground Coriander (2 units, Batch: 32).', 0, NULL, NULL, 2);
INSERT INTO `tblnotifications` VALUES (49, 'Production of GrandSlam Meat is updated.', 0, NULL, NULL, 2);
INSERT INTO `tblnotifications` VALUES (50, 'Production of Fita is updated.', 0, NULL, NULL, 2);
INSERT INTO `tblnotifications` VALUES (51, 'Production of Fita is updated.', 0, NULL, NULL, 2);
INSERT INTO `tblnotifications` VALUES (52, 'Production of GrandSlam Meat is updated.', 1, NULL, NULL, 2);
INSERT INTO `tblnotifications` VALUES (53, 'Production of Fita is updated.', 1, NULL, NULL, 2);
INSERT INTO `tblnotifications` VALUES (54, 'Production of GrandSlam Meat is updated.', 1, NULL, NULL, 2);
INSERT INTO `tblnotifications` VALUES (55, 'Production of GrandSlam Meat is updated.', 1, NULL, NULL, 2);
INSERT INTO `tblnotifications` VALUES (56, 'Production of Fita is updated.', 1, NULL, NULL, 2);
INSERT INTO `tblnotifications` VALUES (57, 'Order ID 73 has been updated with 1 liter Olive Oils from Liam, Sibuyas from Raniel by production.', 1, NULL, NULL, 2);
INSERT INTO `tblnotifications` VALUES (58, 'Production of GrandSlam Meat is updated.', 1, NULL, NULL, 2);
INSERT INTO `tblnotifications` VALUES (59, 'Production of Fita is updated.', 1, NULL, NULL, 2);
INSERT INTO `tblnotifications` VALUES (60, 'Production of GrandSlam Meat is updated.', 1, NULL, NULL, 2);
INSERT INTO `tblnotifications` VALUES (61, 'Production of Fita is updated.', 1, NULL, NULL, 2);
INSERT INTO `tblnotifications` VALUES (62, 'Production #40 deleted by production. All related materials have been reverted.', 0, NULL, NULL, 2);
INSERT INTO `tblnotifications` VALUES (63, 'Production #41 deleted by production. All related materials have been reverted.', 0, NULL, NULL, 2);
INSERT INTO `tblnotifications` VALUES (64, 'Successfully produced 2 units of  GrandSlam Meat. Materials used: 1kg Lamb Shoulder (2 units, Batch: 31).', 0, NULL, NULL, 2);
INSERT INTO `tblnotifications` VALUES (65, 'Production ID 42 has been completed by production.', 0, NULL, NULL, 2);
INSERT INTO `tblnotifications` VALUES (66, 'Successfully produced 1 units of  GrandSlam Meat. Materials used: 1kg Lamb Shoulder (1 units, Batch: 31).', 0, NULL, NULL, 2);

-- ----------------------------
-- Table structure for tblorderfromsupplier_items
-- ----------------------------
DROP TABLE IF EXISTS `tblorderfromsupplier_items`;
CREATE TABLE `tblorderfromsupplier_items`  (
  `orderItemId` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) NULL DEFAULT NULL,
  `matId` int(11) NULL DEFAULT NULL,
  `remaining_quantity` int(11) NULL DEFAULT NULL,
  `quantity` int(11) NULL DEFAULT NULL,
  `quantity_received` int(11) NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `totalCost` decimal(10, 2) NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `dateReceive` date NULL DEFAULT NULL,
  `supplierId` int(55) NULL DEFAULT NULL,
  PRIMARY KEY (`orderItemId`) USING BTREE,
  INDEX `order_fk`(`orderId`) USING BTREE,
  INDEX `material_fk`(`matId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 112 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tblorderfromsupplier_items
-- ----------------------------
INSERT INTO `tblorderfromsupplier_items` VALUES (1, 24, 8, 10, 10, 10, 600.78, 6007.80, 1, '2024-11-26', 23);
INSERT INTO `tblorderfromsupplier_items` VALUES (2, 24, 9, 0, 5, 5, 575.90, 2879.50, 1, '2024-11-26', 25);
INSERT INTO `tblorderfromsupplier_items` VALUES (3, 24, 10, 0, 5, 5, 500.80, 2504.00, 1, '2024-11-26', 23);
INSERT INTO `tblorderfromsupplier_items` VALUES (4, 25, 26, 0, 5, 5, 500.00, 2500.00, 1, '2024-11-26', 24);
INSERT INTO `tblorderfromsupplier_items` VALUES (5, 26, 3, 0, 5, 5, 57.30, 286.50, 1, '2024-11-26', 5);
INSERT INTO `tblorderfromsupplier_items` VALUES (6, 26, 6, 0, 5, 5, 22.50, 112.50, 1, '2024-11-26', 4);
INSERT INTO `tblorderfromsupplier_items` VALUES (7, 27, 15, 0, 5, 5, 50.55, 252.75, 1, '2024-11-26', 16);
INSERT INTO `tblorderfromsupplier_items` VALUES (8, 28, 26, 0, 10, 10, 500.00, 5000.00, 1, '2024-11-26', 24);
INSERT INTO `tblorderfromsupplier_items` VALUES (9, 29, 3, 0, 10, 10, 57.30, 573.00, 1, '2024-11-26', 9);
INSERT INTO `tblorderfromsupplier_items` VALUES (10, 30, 15, 0, 10, 10, 50.55, 505.50, 1, '2024-11-26', 16);
INSERT INTO `tblorderfromsupplier_items` VALUES (16, 31, 10, 0, 5, 5, 500.80, 2504.00, 1, '2024-11-27', 23);
INSERT INTO `tblorderfromsupplier_items` VALUES (17, 31, 9, 0, 5, 5, 575.90, 2879.50, 1, '2024-11-28', 25);
INSERT INTO `tblorderfromsupplier_items` VALUES (18, 32, 8, 4, 4, 4, 600.78, 2403.12, 1, '2024-11-27', 23);
INSERT INTO `tblorderfromsupplier_items` VALUES (19, 33, 15, 0, 5, 5, 50.55, 252.75, 1, '2024-11-27', 16);
INSERT INTO `tblorderfromsupplier_items` VALUES (20, 34, 3, 0, 10, 10, 37.85, 378.50, 1, '2024-11-27', 9);
INSERT INTO `tblorderfromsupplier_items` VALUES (21, 35, 14, 45, 50, 45, 70.85, 3542.50, 1, '2024-11-27', 16);
INSERT INTO `tblorderfromsupplier_items` VALUES (22, 35, 15, 33, 50, 40, 50.55, 2527.50, 1, '2024-11-27', 16);
INSERT INTO `tblorderfromsupplier_items` VALUES (23, 36, 3, 0, 5, 5, 57.30, 286.50, 1, '2024-11-29', 9);
INSERT INTO `tblorderfromsupplier_items` VALUES (25, 42, 16, 5, 5, 5, 5.85, 29.25, 1, '2024-12-02', 22);
INSERT INTO `tblorderfromsupplier_items` VALUES (26, 43, 3, 0, 1, 1, 57.30, 57.30, 1, '2024-12-03', 9);
INSERT INTO `tblorderfromsupplier_items` VALUES (27, 44, 3, 0, 1, 1, 57.30, 57.30, 1, '2024-12-03', 5);
INSERT INTO `tblorderfromsupplier_items` VALUES (28, 45, 14, 10, 10, 10, 70.85, 708.50, 1, '2024-12-04', 16);
INSERT INTO `tblorderfromsupplier_items` VALUES (29, 46, 9, 0, 100, 90, 10.00, 1000.00, 1, '2024-12-04', 22);
INSERT INTO `tblorderfromsupplier_items` VALUES (30, 47, 30, 40, 50, 50, 47.80, 2390.00, 1, '2024-12-04', 30);
INSERT INTO `tblorderfromsupplier_items` VALUES (31, 48, 9, 22, 30, 30, 10.00, 300.00, 1, '2024-12-04', 23);
INSERT INTO `tblorderfromsupplier_items` VALUES (32, 49, 26, 8, 10, 10, 500.00, 5000.00, 1, '2024-12-04', 24);
INSERT INTO `tblorderfromsupplier_items` VALUES (35, 51, 14, 15, 15, 15, 70.85, 1062.75, 1, '2024-12-05', 16);
INSERT INTO `tblorderfromsupplier_items` VALUES (38, 50, 30, 5, 5, 5, 57.69, 288.45, 1, '2024-12-04', 22);
INSERT INTO `tblorderfromsupplier_items` VALUES (39, 50, 9, 10, 10, 10, 10.00, 100.00, 1, '2024-12-05', 22);
INSERT INTO `tblorderfromsupplier_items` VALUES (40, 50, 31, 2, 2, 2, 14.70, 29.40, 1, '2024-12-04', 22);
INSERT INTO `tblorderfromsupplier_items` VALUES (41, 52, 8, 9, 10, 9, 600.78, 6007.80, 1, '2024-12-05', 23);
INSERT INTO `tblorderfromsupplier_items` VALUES (42, 53, 28, 90, 95, 90, 56.00, 5320.00, 1, '2024-12-11', 26);
INSERT INTO `tblorderfromsupplier_items` VALUES (43, 54, 19, 70, 75, 70, 50.85, 3813.75, 1, '2024-12-11', 5);
INSERT INTO `tblorderfromsupplier_items` VALUES (44, 55, 34, 10, 10, 10, 100.00, 1000.00, 1, '2024-12-05', 30);
INSERT INTO `tblorderfromsupplier_items` VALUES (45, 56, 9, 5, 5, 5, 10.00, 50.00, 1, '2024-12-05', 23);
INSERT INTO `tblorderfromsupplier_items` VALUES (46, 56, 30, 5, 5, 5, 57.69, 288.45, 1, '2024-12-11', 22);
INSERT INTO `tblorderfromsupplier_items` VALUES (47, 57, 9, 10, 10, 10, 10.00, 100.00, 1, '2024-12-09', 22);
INSERT INTO `tblorderfromsupplier_items` VALUES (48, 57, 29, 10, 10, 10, 12.50, 125.00, 1, '2024-12-05', 22);
INSERT INTO `tblorderfromsupplier_items` VALUES (49, 58, NULL, NULL, 5, NULL, 600.78, 3003.90, 0, NULL, NULL);
INSERT INTO `tblorderfromsupplier_items` VALUES (50, 58, NULL, NULL, 5, NULL, 57.69, 288.45, 0, NULL, NULL);
INSERT INTO `tblorderfromsupplier_items` VALUES (51, 58, NULL, NULL, 5, NULL, 70.85, 354.25, 0, NULL, NULL);
INSERT INTO `tblorderfromsupplier_items` VALUES (52, 58, 6, 5, 5, 5, 22.50, 112.50, 1, '2024-12-11', 22);
INSERT INTO `tblorderfromsupplier_items` VALUES (53, 58, 3, 0, 5, 5, 57.30, 286.50, 1, '2024-12-11', 5);
INSERT INTO `tblorderfromsupplier_items` VALUES (54, 65, 9, 10, 10, 10, 10.00, 100.00, 1, '2024-12-11', 22);
INSERT INTO `tblorderfromsupplier_items` VALUES (55, 65, 30, 5, 5, 5, 57.69, 288.45, 1, '2024-12-11', 22);
INSERT INTO `tblorderfromsupplier_items` VALUES (56, 66, 14, 5, 5, 5, 70.85, 354.25, 1, '2024-12-11', 16);
INSERT INTO `tblorderfromsupplier_items` VALUES (57, 66, 30, 5, 5, 5, 47.80, 239.00, 1, '2024-12-11', 27);
INSERT INTO `tblorderfromsupplier_items` VALUES (86, 71, 19, 10, 10, 10, 50.85, 508.50, 1, '2024-12-11', 5);
INSERT INTO `tblorderfromsupplier_items` VALUES (87, 71, 30, 15, 15, 15, 47.80, 717.00, 1, '2024-12-11', 27);
INSERT INTO `tblorderfromsupplier_items` VALUES (88, 71, 14, 5, 5, 5, 70.85, 354.25, 1, '2024-12-11', 16);
INSERT INTO `tblorderfromsupplier_items` VALUES (89, 71, 30, 5, 5, 5, 57.69, 288.45, 1, '2024-12-11', 22);
INSERT INTO `tblorderfromsupplier_items` VALUES (91, 72, 12, 5, 5, 5, 40.80, 204.00, 1, '2024-12-11', 22);
INSERT INTO `tblorderfromsupplier_items` VALUES (92, 72, 19, 5, 5, 5, 50.85, 254.25, 1, '2024-12-11', 5);
INSERT INTO `tblorderfromsupplier_items` VALUES (94, 74, 9, 6, 6, 6, 575.90, 3455.40, 1, '2024-12-11', 23);
INSERT INTO `tblorderfromsupplier_items` VALUES (95, 74, 9, NULL, 6, NULL, 10.00, 60.00, 0, NULL, 22);
INSERT INTO `tblorderfromsupplier_items` VALUES (99, 75, 19, 10, 10, 10, 50.85, 508.50, 1, '2024-12-11', 5);
INSERT INTO `tblorderfromsupplier_items` VALUES (100, 75, 9, 5, 5, 5, 575.90, 2879.50, 1, '2024-12-11', 23);
INSERT INTO `tblorderfromsupplier_items` VALUES (106, 76, 16, 20, 20, 20, 5.85, 117.00, 1, '2024-12-11', 22);
INSERT INTO `tblorderfromsupplier_items` VALUES (107, 76, 30, 10, 10, 10, 57.69, 576.90, 1, '2024-12-11', 22);
INSERT INTO `tblorderfromsupplier_items` VALUES (108, 76, 15, NULL, 5, NULL, 50.55, 252.75, 0, NULL, 16);
INSERT INTO `tblorderfromsupplier_items` VALUES (109, 76, 26, NULL, 10, NULL, 500.00, 5000.00, 0, NULL, 24);
INSERT INTO `tblorderfromsupplier_items` VALUES (110, 73, 14, NULL, 5, NULL, 70.85, 354.25, 0, NULL, 16);
INSERT INTO `tblorderfromsupplier_items` VALUES (111, 73, 28, NULL, 5, NULL, 56.00, 280.00, 0, NULL, 26);

-- ----------------------------
-- Table structure for tblorders
-- ----------------------------
DROP TABLE IF EXISTS `tblorders`;
CREATE TABLE `tblorders`  (
  `orderId` int(11) NOT NULL AUTO_INCREMENT,
  `itemId` int(11) NULL DEFAULT NULL,
  `quantity` int(11) NULL DEFAULT NULL,
  `customerName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `status` enum('preparing','on delivery','delivered','cancelled') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lastUpdateDate` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `paymentStatus` enum('paid','unpaid') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'unpaid',
  `modeOfPayment` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`orderId`) USING BTREE,
  INDEX `itemId`(`itemId`) USING BTREE,
  CONSTRAINT `tblorders_ibfk_1` FOREIGN KEY (`itemId`) REFERENCES `tblitems` (`itemId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tblorders
-- ----------------------------
INSERT INTO `tblorders` VALUES (1, 1, 5, 'John Doe', '2024-10-30', 250.00, 'delivered', '2024-11-19 13:45:42', '123 Main St', 'unpaid', 'credit card');
INSERT INTO `tblorders` VALUES (2, 2, 3, 'Jane Smith', '2024-10-29', 180.00, 'cancelled', '2024-11-19 13:42:58', '456 Elm St', 'paid', 'cash');
INSERT INTO `tblorders` VALUES (5, 1, 1, 'LA ', '2024-10-30', 200.00, 'on delivery', '2024-10-30 19:22:44', 'Cabuyao', 'paid', 'GCASH');
INSERT INTO `tblorders` VALUES (6, 1, 1, 'LA', '2024-10-30', 200.00, 'preparing', '2024-10-30 19:22:51', 'CALAMBA', 'paid', 'GCASH');
INSERT INTO `tblorders` VALUES (7, 1, 1, 'Sharon', '2024-10-30', 200.00, 'preparing', '2024-10-30 19:23:06', 'Canlalay', 'unpaid', 'Paymaya');
INSERT INTO `tblorders` VALUES (11, 1, 2, 'Oner', '2024-11-03', 200.00, 'preparing', '2024-11-03 18:43:20', 'Korea', 'paid', 'Gcash');
INSERT INTO `tblorders` VALUES (12, 1, 17, 'Oner', '2024-11-03', 100.00, 'preparing', '2024-11-03 19:14:48', 'Korea', 'paid', 'Gcash');
INSERT INTO `tblorders` VALUES (13, 1, 3, 'Keria', '2024-11-03', 300.00, 'cancelled', '2024-11-19 13:45:19', 'Koreaa', 'paid', 'Cash on Delivery');

-- ----------------------------
-- Table structure for tblorders_customer
-- ----------------------------
DROP TABLE IF EXISTS `tblorders_customer`;
CREATE TABLE `tblorders_customer`  (
  `order_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `mop` varchar(55) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ref_no` varchar(55) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `item_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `price` double(20, 2) NULL DEFAULT NULL,
  `quantity` int(11) NULL DEFAULT NULL,
  `total_price` decimal(20, 2) NULL DEFAULT NULL,
  `total_sum_price` decimal(20, 2) NULL DEFAULT NULL,
  `status` varchar(55) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `date` varchar(55) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `customer_id` int(11) NULL DEFAULT NULL,
  `customer_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `customer_loc` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `vehicle_plate` varchar(55) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `time_out` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `time_return` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `remarks` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `itemId` int(11) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tblorders_customer
-- ----------------------------
INSERT INTO `tblorders_customer` VALUES ('ORD-1732842041011', 'COD', '', 'Cooked Chicken Shawarma 1kg', 'Cooked Shawarma Chicken ', 1005.00, 1, 1005.00, 1005.00, 'Cancelled', '11-29-2024', 8, 'Liam Rhyss Lim', 'Cabuyao, Laguna', '', NULL, NULL, NULL, NULL);
INSERT INTO `tblorders_customer` VALUES ('ORD-1733301788202', 'COD', NULL, 'Magic Meat', 'DALAWANG MEAT PINAGSAMA PINASARAP', 40.00, 2, 80.00, 80.00, 'Decline', '12-04-2024', 8, 'Liam Rhyss Lim', 'Cabuyao, Laguna', NULL, NULL, NULL, 'Sorry, COD not available right now.', 20);
INSERT INTO `tblorders_customer` VALUES ('ORD-1733301839793', 'COD', NULL, 'Magic Meat', 'DALAWANG MEAT PINAGSAMA PINASARAP', 40.00, 1, 40.00, 40.00, 'Cancelled', '12-04-2024', 8, 'Liam Rhyss Lim', 'Cabuyao, Laguna', NULL, NULL, NULL, 'Change of mind.', 20);

-- ----------------------------
-- Table structure for tblordersfromsupplier
-- ----------------------------
DROP TABLE IF EXISTS `tblordersfromsupplier`;
CREATE TABLE `tblordersfromsupplier`  (
  `orderId` int(11) NOT NULL AUTO_INCREMENT,
  `totalCost` decimal(10, 2) NULL DEFAULT NULL,
  `orderDate` date NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`orderId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 77 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tblordersfromsupplier
-- ----------------------------
INSERT INTO `tblordersfromsupplier` VALUES (24, 11391.30, '2024-11-26', 1);
INSERT INTO `tblordersfromsupplier` VALUES (25, 2500.00, '2024-11-26', 1);
INSERT INTO `tblordersfromsupplier` VALUES (26, 399.00, '2024-11-26', 1);
INSERT INTO `tblordersfromsupplier` VALUES (27, 252.75, '2024-11-26', 1);
INSERT INTO `tblordersfromsupplier` VALUES (28, 5000.00, '2024-11-26', 1);
INSERT INTO `tblordersfromsupplier` VALUES (29, 573.00, '2024-11-26', 1);
INSERT INTO `tblordersfromsupplier` VALUES (30, 505.50, '2024-11-26', 1);
INSERT INTO `tblordersfromsupplier` VALUES (31, 5383.50, '2024-11-27', 1);
INSERT INTO `tblordersfromsupplier` VALUES (32, 2403.12, '2024-11-27', 1);
INSERT INTO `tblordersfromsupplier` VALUES (33, 252.75, '2024-11-27', 1);
INSERT INTO `tblordersfromsupplier` VALUES (34, 378.50, '2024-11-27', 1);
INSERT INTO `tblordersfromsupplier` VALUES (35, 6070.00, '2024-11-27', 1);
INSERT INTO `tblordersfromsupplier` VALUES (36, 286.50, '2024-11-29', 1);
INSERT INTO `tblordersfromsupplier` VALUES (42, 29.25, '2024-12-02', 1);
INSERT INTO `tblordersfromsupplier` VALUES (43, 57.30, '2024-12-03', 1);
INSERT INTO `tblordersfromsupplier` VALUES (44, 57.30, '2024-12-03', 1);
INSERT INTO `tblordersfromsupplier` VALUES (45, 708.50, '2024-12-03', 1);
INSERT INTO `tblordersfromsupplier` VALUES (46, 1000.00, '2024-12-04', 1);
INSERT INTO `tblordersfromsupplier` VALUES (47, 2390.00, '2024-12-04', 1);
INSERT INTO `tblordersfromsupplier` VALUES (48, 300.00, '2024-12-04', 1);
INSERT INTO `tblordersfromsupplier` VALUES (49, 5000.00, '2024-12-04', 1);
INSERT INTO `tblordersfromsupplier` VALUES (50, 417.85, '2024-12-04', 1);
INSERT INTO `tblordersfromsupplier` VALUES (51, 1062.75, '2024-12-04', 1);
INSERT INTO `tblordersfromsupplier` VALUES (52, 6007.80, '2024-12-05', 1);
INSERT INTO `tblordersfromsupplier` VALUES (53, 5320.00, '2024-12-05', 1);
INSERT INTO `tblordersfromsupplier` VALUES (54, 3813.75, '2024-12-05', 1);
INSERT INTO `tblordersfromsupplier` VALUES (55, 1000.00, '2024-12-05', 1);
INSERT INTO `tblordersfromsupplier` VALUES (56, 338.45, '2024-12-05', 1);
INSERT INTO `tblordersfromsupplier` VALUES (57, 225.00, '2024-12-05', 1);
INSERT INTO `tblordersfromsupplier` VALUES (58, 399.00, '2024-12-10', 1);
INSERT INTO `tblordersfromsupplier` VALUES (65, 388.45, '2024-12-11', 1);
INSERT INTO `tblordersfromsupplier` VALUES (66, 593.25, '2024-12-11', 1);
INSERT INTO `tblordersfromsupplier` VALUES (71, 1868.20, '2024-12-11', 1);
INSERT INTO `tblordersfromsupplier` VALUES (72, 458.25, '2024-12-11', 1);
INSERT INTO `tblordersfromsupplier` VALUES (73, 634.25, '2024-12-11', 0);
INSERT INTO `tblordersfromsupplier` VALUES (74, 3515.40, '2024-12-11', 0);
INSERT INTO `tblordersfromsupplier` VALUES (75, 3388.00, '2024-12-11', 1);
INSERT INTO `tblordersfromsupplier` VALUES (76, 5946.65, '2024-12-11', 0);

-- ----------------------------
-- Table structure for tblproduction
-- ----------------------------
DROP TABLE IF EXISTS `tblproduction`;
CREATE TABLE `tblproduction`  (
  `productionId` int(11) NOT NULL AUTO_INCREMENT,
  `itemId` int(11) NULL DEFAULT NULL,
  `actualQuantityProduced` int(11) NULL DEFAULT NULL,
  `quantityProduced` int(11) NULL DEFAULT NULL,
  `productionDate` date NULL DEFAULT NULL,
  `staffName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `production_status` int(11) NULL DEFAULT NULL,
  `quantityProducedStorage` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`productionId`) USING BTREE,
  INDEX `itemId`(`itemId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tblproduction
-- ----------------------------
INSERT INTO `tblproduction` VALUES (2, 1, 0, 2, '2024-11-26', 'Jericho', 1, 2);
INSERT INTO `tblproduction` VALUES (3, 1, 0, 3, '2024-11-26', 'Jericho', 1, 3);
INSERT INTO `tblproduction` VALUES (4, 18, 0, 5, '2024-11-26', 'Jericho', 1, 5);
INSERT INTO `tblproduction` VALUES (5, 18, 0, 5, '2024-11-26', 'Jericho', 1, 5);
INSERT INTO `tblproduction` VALUES (9, 1, 0, 10, '2024-11-26', 'Jericho', 1, 10);
INSERT INTO `tblproduction` VALUES (14, 1, 0, 5, '2024-11-27', 'Jericho', 1, 5);
INSERT INTO `tblproduction` VALUES (15, 20, 5, 5, '2024-11-27', 'Jericho', 1, 5);
INSERT INTO `tblproduction` VALUES (16, 1, 5, 5, '2024-11-29', 'Sho', 1, 5);
INSERT INTO `tblproduction` VALUES (17, 18, 0, 1, '2024-11-29', 'Jericho', 1, 1);
INSERT INTO `tblproduction` VALUES (18, 18, 2, 3, '2024-11-30', 'Sho', 1, 3);
INSERT INTO `tblproduction` VALUES (19, 18, 1, 1, '2024-12-02', 'Cinco', 1, 1);
INSERT INTO `tblproduction` VALUES (20, 1, 1, 1, '2024-12-03', 'Miguel', 1, 1);
INSERT INTO `tblproduction` VALUES (23, 1, 1, 1, '2024-12-03', 'Miguel', 1, 1);
INSERT INTO `tblproduction` VALUES (30, 30, 3, 20, '2024-12-04', 'Judas', 1, 15);
INSERT INTO `tblproduction` VALUES (31, 30, 1, 1, '2024-12-04', 'Sammy', 1, 1);
INSERT INTO `tblproduction` VALUES (32, 30, 1, 1, '2024-12-04', 'Sammy', 1, 1);
INSERT INTO `tblproduction` VALUES (36, 18, 2, 2, '2024-12-04', 'Ezequel', 1, 2);
INSERT INTO `tblproduction` VALUES (42, 30, 2, 2, '2024-12-11', 'Sammy', 1, 2);
INSERT INTO `tblproduction` VALUES (43, 30, NULL, 1, '2024-12-11', 'Sammy', 0, NULL);

-- ----------------------------
-- Table structure for tblproductionmateriallogs
-- ----------------------------
DROP TABLE IF EXISTS `tblproductionmateriallogs`;
CREATE TABLE `tblproductionmateriallogs`  (
  `logId` int(11) NOT NULL AUTO_INCREMENT,
  `dateLogged` date NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `productionId` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`logId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 55 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tblproductionmateriallogs
-- ----------------------------
INSERT INTO `tblproductionmateriallogs` VALUES (10, '2024-12-04', 'Used 5 units of 1kg Lamb Shoulder (Batch: 31)', 33);
INSERT INTO `tblproductionmateriallogs` VALUES (11, '2024-12-04', 'Used 5 units of 1kg Lamb Shoulder (Batch: 31)', 34);
INSERT INTO `tblproductionmateriallogs` VALUES (13, '2024-12-04', 'Reverted 5 units of material: 1kg Lamb Shoulder', NULL);
INSERT INTO `tblproductionmateriallogs` VALUES (14, '2024-12-04', 'Used 5 units of 250g Ground Coriander (Batch: 32)', NULL);
INSERT INTO `tblproductionmateriallogs` VALUES (15, '2024-12-04', 'Used 4 units of 1kg Lamb Shoulder (Batch: 31)', 35);
INSERT INTO `tblproductionmateriallogs` VALUES (16, '2024-12-04', 'Reverted 4 units of material: 1kg Lamb Shoulder', 35);
INSERT INTO `tblproductionmateriallogs` VALUES (17, '2024-12-04', 'Used 4 units of 250g Ground Coriander (Batch: 32)', 35);
INSERT INTO `tblproductionmateriallogs` VALUES (18, '2024-12-04', 'Deleted production ID 35 and reverted materials.', 35);
INSERT INTO `tblproductionmateriallogs` VALUES (19, '2024-12-04', 'Used 2 units of 250g Ground Coriander (Batch: 32)', 36);
INSERT INTO `tblproductionmateriallogs` VALUES (20, '2024-12-11', 'Deleted production ID 37 and reverted materials.', 37);
INSERT INTO `tblproductionmateriallogs` VALUES (21, '2024-12-11', 'Deleted production ID 38 and reverted materials.', 38);
INSERT INTO `tblproductionmateriallogs` VALUES (22, '2024-12-11', 'Used 1 units of 1kg Lamb Shoulder (Batch: 31)', 40);
INSERT INTO `tblproductionmateriallogs` VALUES (23, '2024-12-11', 'Used 2 units of 250g Ground Coriander (Batch: 32)', 41);
INSERT INTO `tblproductionmateriallogs` VALUES (24, '2024-12-11', 'Reverted 2 units of material: 250g Ground Coriander', 41);
INSERT INTO `tblproductionmateriallogs` VALUES (25, '2024-12-11', 'Used 1 units of 1kg Lamb Shoulder (Batch: 31)', 41);
INSERT INTO `tblproductionmateriallogs` VALUES (26, '2024-12-11', 'Reverted 1 units of material: 1kg Lamb Shoulder', 40);
INSERT INTO `tblproductionmateriallogs` VALUES (27, '2024-12-11', 'Used 1 units of 250g Ground Coriander (Batch: 32)', 40);
INSERT INTO `tblproductionmateriallogs` VALUES (28, '2024-12-11', 'Reverted 1 units of material: 1kg Lamb Shoulder', 41);
INSERT INTO `tblproductionmateriallogs` VALUES (29, '2024-12-11', 'Used 1 units of 250g Ground Coriander (Batch: 32)', 41);
INSERT INTO `tblproductionmateriallogs` VALUES (30, '2024-12-11', 'Reverted 1 units of material: 250g Ground Coriander', 40);
INSERT INTO `tblproductionmateriallogs` VALUES (31, '2024-12-11', 'Used 1 units of 1kg Lamb Shoulder (Batch: 31)', 40);
INSERT INTO `tblproductionmateriallogs` VALUES (32, '2024-12-11', 'Reverted 1 units of material: 1kg Lamb Shoulder', 40);
INSERT INTO `tblproductionmateriallogs` VALUES (33, '2024-12-11', 'Used 1 units of 250g Ground Coriander (Batch: 32)', 40);
INSERT INTO `tblproductionmateriallogs` VALUES (35, '2024-12-11', 'Reverted 1 units of material: 250g Ground Coriander', 40);
INSERT INTO `tblproductionmateriallogs` VALUES (36, '2024-12-11', 'Used 1 units of 1kg Lamb Shoulder (Batch: 31)', 40);
INSERT INTO `tblproductionmateriallogs` VALUES (37, '2024-12-11', 'Reverted 1 units of material: 250g Ground Coriander', 41);
INSERT INTO `tblproductionmateriallogs` VALUES (38, '2024-12-11', 'Used 1 units of 1kg Lamb Shoulder (Batch: 31)', 41);
INSERT INTO `tblproductionmateriallogs` VALUES (39, '2024-12-11', 'Reverted 1 units of material: 1kg Lamb Shoulder', 41);
INSERT INTO `tblproductionmateriallogs` VALUES (40, '2024-12-11', 'Used 1 units of 250g Ground Coriander (Batch: 32)', 41);
INSERT INTO `tblproductionmateriallogs` VALUES (41, '2024-12-11', 'Reverted 1 units of material: 250g Ground Coriander', 41);
INSERT INTO `tblproductionmateriallogs` VALUES (42, '2024-12-11', 'Used 1 units of 1kg Lamb Shoulder (Batch: 31)', 41);
INSERT INTO `tblproductionmateriallogs` VALUES (43, '2024-12-11', 'Reverted 1 units of material: 1kg Lamb Shoulder', 41);
INSERT INTO `tblproductionmateriallogs` VALUES (44, '2024-12-11', 'Used 1 units of 250g Ground Coriander (Batch: 32)', 41);
INSERT INTO `tblproductionmateriallogs` VALUES (45, '2024-12-11', 'Reverted 1 units of material: 250g Ground Coriander', 41);
INSERT INTO `tblproductionmateriallogs` VALUES (46, '2024-12-11', 'Used 1 units of 1kg Lamb Shoulder (Batch: 31)', 41);
INSERT INTO `tblproductionmateriallogs` VALUES (47, '2024-12-11', 'Reverted 1 units of material: 1kg Lamb Shoulder', 41);
INSERT INTO `tblproductionmateriallogs` VALUES (48, '2024-12-11', 'Used 1 units of 250g Ground Coriander (Batch: 32)', 41);
INSERT INTO `tblproductionmateriallogs` VALUES (50, '2024-12-11', 'Deleted production ID 40 and reverted materials.', 40);
INSERT INTO `tblproductionmateriallogs` VALUES (52, '2024-12-11', 'Deleted production ID 41 and reverted materials.', 41);
INSERT INTO `tblproductionmateriallogs` VALUES (53, '2024-12-11', 'Used 2 units of 1kg Lamb Shoulder (Batch: 31)', 42);
INSERT INTO `tblproductionmateriallogs` VALUES (54, '2024-12-11', 'Used 1 units of 1kg Lamb Shoulder (Batch: 31)', 43);

-- ----------------------------
-- Table structure for tblproductionmaterialused
-- ----------------------------
DROP TABLE IF EXISTS `tblproductionmaterialused`;
CREATE TABLE `tblproductionmaterialused`  (
  `productionMatId` int(11) NOT NULL AUTO_INCREMENT,
  `productionId` int(11) NULL DEFAULT NULL,
  `orderItemId` int(11) NULL DEFAULT NULL,
  `quantityUsed` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`productionMatId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_estonian_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tblproductionmaterialused
-- ----------------------------
INSERT INTO `tblproductionmaterialused` VALUES (4, 2, 5, 2);
INSERT INTO `tblproductionmaterialused` VALUES (5, 2, 7, 2);
INSERT INTO `tblproductionmaterialused` VALUES (6, 3, 5, 3);
INSERT INTO `tblproductionmaterialused` VALUES (7, 3, 7, 3);
INSERT INTO `tblproductionmaterialused` VALUES (8, 4, 4, 5);
INSERT INTO `tblproductionmaterialused` VALUES (9, 4, 5, 1);
INSERT INTO `tblproductionmaterialused` VALUES (10, 4, 7, 1);
INSERT INTO `tblproductionmaterialused` VALUES (11, 4, 4, 5);
INSERT INTO `tblproductionmaterialused` VALUES (12, 5, 4, 5);
INSERT INTO `tblproductionmaterialused` VALUES (33, 9, 9, 10);
INSERT INTO `tblproductionmaterialused` VALUES (34, 9, 10, 10);
INSERT INTO `tblproductionmaterialused` VALUES (50, 15, 20, 5);
INSERT INTO `tblproductionmaterialused` VALUES (51, 15, 3, 5);
INSERT INTO `tblproductionmaterialused` VALUES (54, 14, 20, 5);
INSERT INTO `tblproductionmaterialused` VALUES (55, 14, 19, 5);
INSERT INTO `tblproductionmaterialused` VALUES (56, 16, 23, 5);
INSERT INTO `tblproductionmaterialused` VALUES (57, 16, 22, 5);
INSERT INTO `tblproductionmaterialused` VALUES (58, 17, 8, 1);
INSERT INTO `tblproductionmaterialused` VALUES (59, 18, 8, 3);
INSERT INTO `tblproductionmaterialused` VALUES (60, 19, 8, 1);
INSERT INTO `tblproductionmaterialused` VALUES (61, 20, 26, 1);
INSERT INTO `tblproductionmaterialused` VALUES (62, 20, 22, 1);
INSERT INTO `tblproductionmaterialused` VALUES (67, 23, 27, 1);
INSERT INTO `tblproductionmaterialused` VALUES (68, 23, 22, 1);
INSERT INTO `tblproductionmaterialused` VALUES (69, 24, 2, 5);
INSERT INTO `tblproductionmaterialused` VALUES (70, 24, 17, 5);
INSERT INTO `tblproductionmaterialused` VALUES (71, 26, 29, 50);
INSERT INTO `tblproductionmaterialused` VALUES (72, 27, 29, 10);
INSERT INTO `tblproductionmaterialused` VALUES (73, 28, 29, 10);
INSERT INTO `tblproductionmaterialused` VALUES (74, 29, 30, 10);
INSERT INTO `tblproductionmaterialused` VALUES (75, 30, 29, 20);
INSERT INTO `tblproductionmaterialused` VALUES (76, 31, 31, 1);
INSERT INTO `tblproductionmaterialused` VALUES (77, 32, 31, 1);
INSERT INTO `tblproductionmaterialused` VALUES (83, 36, 32, 2);
INSERT INTO `tblproductionmaterialused` VALUES (98, 42, 31, 2);
INSERT INTO `tblproductionmaterialused` VALUES (99, 43, 31, 1);

-- ----------------------------
-- Table structure for tblrawmats
-- ----------------------------
DROP TABLE IF EXISTS `tblrawmats`;
CREATE TABLE `tblrawmats`  (
  `matId` int(11) NOT NULL AUTO_INCREMENT,
  `matName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `quantity` int(11) NULL DEFAULT NULL,
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `threshold_low` int(55) NOT NULL,
  PRIMARY KEY (`matId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tblrawmats
-- ----------------------------
INSERT INTO `tblrawmats` VALUES (3, '1kg Chicken Meat', -5, 'Meat Raw Materials', 25);
INSERT INTO `tblrawmats` VALUES (6, '1 liter Soy Sauce', 0, 'Sauce Ingredients', 10);
INSERT INTO `tblrawmats` VALUES (8, '1kg Chicken Breast', 0, 'Meat Raw Materials', 10);
INSERT INTO `tblrawmats` VALUES (9, '1kg Lamb Shoulder', -129, 'Meat Raw Materials', 10);
INSERT INTO `tblrawmats` VALUES (10, '500g Ground Beef', -15, 'Meat Raw Materials', 10);
INSERT INTO `tblrawmats` VALUES (11, '2kg Beef Ribs', 0, 'Meat Raw Materials', 10);
INSERT INTO `tblrawmats` VALUES (12, '1 liter Soy Sauce', 0, 'Sauce Ingredients', 10);
INSERT INTO `tblrawmats` VALUES (13, '500g Tahini', 1, 'Sauce Ingredients', 10);
INSERT INTO `tblrawmats` VALUES (14, '1 liter Olive Oils', 0, 'Sauce Ingredients', 10);
INSERT INTO `tblrawmats` VALUES (15, '200g Garlic Paste', -60, 'Sauce Ingredients', 10);
INSERT INTO `tblrawmats` VALUES (16, '2kg All-Purpose Flour', 0, 'Bread Ingredients', 10);
INSERT INTO `tblrawmats` VALUES (17, '500g Yeast', 0, 'Bread Ingredients', 10);
INSERT INTO `tblrawmats` VALUES (19, '1kg Whole Wheat Flour', 1, 'Bread Ingredients', 10);
INSERT INTO `tblrawmats` VALUES (20, '1kg Tomatoes', 0, 'Vegetable Raw Materials', 10);
INSERT INTO `tblrawmats` VALUES (21, '500g Lettuce', 0, 'Vegetable Raw Materials', 10);
INSERT INTO `tblrawmats` VALUES (22, '1kg Cucumbers', 1, 'Vegetable Raw Materials', 10);
INSERT INTO `tblrawmats` VALUES (23, '500g Onions', 0, 'Vegetable Raw Materials', 10);
INSERT INTO `tblrawmats` VALUES (24, '200g Cumin Powder', 0, 'Spices and Seasonings', 25);
INSERT INTO `tblrawmats` VALUES (25, '100g Paprika', 0, 'Spices and Seasonings', 10);
INSERT INTO `tblrawmats` VALUES (26, '250g Ground Coriander', -55, 'Spices and Seasonings', 5);
INSERT INTO `tblrawmats` VALUES (27, '150g Ground Black Pepper', 0, 'Spices and Seasonings', 10);
INSERT INTO `tblrawmats` VALUES (28, 'Sibuyas', 0, 'Vegetable Raw Materials', 10);
INSERT INTO `tblrawmats` VALUES (29, 'Kamatis', 0, 'Vegetable Raw Materials', 10);
INSERT INTO `tblrawmats` VALUES (30, 'Burger Patty', -10, 'Meat Raw Materials', 10);
INSERT INTO `tblrawmats` VALUES (31, 'Bawang', 0, 'Vegetable Raw Materials', 10);
INSERT INTO `tblrawmats` VALUES (32, 'Onion Rings', 0, 'Vegetable Raw Materials', 10);
INSERT INTO `tblrawmats` VALUES (34, 'Potato 1kg', 0, 'Vegetable Raw Materials', 10);

-- ----------------------------
-- Table structure for tblsales
-- ----------------------------
DROP TABLE IF EXISTS `tblsales`;
CREATE TABLE `tblsales`  (
  `sales_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NULL DEFAULT NULL,
  `customer_name` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `customer_loc` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `date` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `item_name` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `mop` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `order_id` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `price` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `quantity` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `ref_no` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `time_out` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `time_return` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `total_price` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `total_sum_price` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `vehicle_plate` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `itemId` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`sales_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tblsales
-- ----------------------------
INSERT INTO `tblsales` VALUES (1, 9, 'Jericho', 'Calamba, Laguna', '11-28-2024', 'Cooked Shawarma Chicken ', 'Cooked Chicken Shawarma 1kg', 'COD', 'ORD-1732780576020', '1005', '5', '', '11-28-2024 15:56', '11-28-2024 15:57', '5025', '5025', '098-ASD', NULL);
INSERT INTO `tblsales` VALUES (2, 9, 'Jericho', 'Calamba, Laguna', '11-28-2024', 'Cooked Shawarma Chicken ', 'Cooked Chicken Shawarma 1kg', 'COD', 'ORD-1732780972115', '1005', '1', '', '11-28-2024 16:03', '11-28-2024 16:03', '1005', '1005', '098-ASD', NULL);
INSERT INTO `tblsales` VALUES (3, 8, 'Liam Rhyss Lim', 'Cabuyao, Laguna', '11-29-2024', 'Cooked Shawarma Chicken ', 'Cooked Chicken Shawarma 1kg', 'COD', 'ORD-1732843073046', '1005', '2', '', '11-29-2024 09:27', '12-03-2024 06:22', '2010.00', '2010.00', 'DA78912', NULL);
INSERT INTO `tblsales` VALUES (4, 8, 'Liam Rhyss Lim', 'Cabuyao, Laguna', '11-29-2024', 'Cooked Shawarma Chicken ', 'Cooked Chicken Shawarma 1kg', 'COD', 'ORD-1732840943738', '1005', '6', '', '11-29-2024, 08:55:19', '12-03-2024 06:22', '6030.00', '6030.00', 'AB021A', NULL);
INSERT INTO `tblsales` VALUES (5, 9, 'Jericho', 'Calamba, Laguna', '11-28-2024', 'Cooked Shawarma Chicken ', 'Cooked Chicken Shawarma 1kg', 'COD', 'ORD-1732782724045', '1005', '5', '', '11-28-2024 16:33', '12-03-2024 14:27', '5025.00', '5025.00', '098-ASD', NULL);
INSERT INTO `tblsales` VALUES (6, 9, 'Jericho', 'Calamba, Laguna', '11-28-2024', 'Fita for shawarma.', 'Fita', 'COD', 'ORD-1732782744843', '75', '2', '', '11-28-2024 16:33', '12-03-2024 14:27', '150.00', '150.00', '098-ASD', NULL);
INSERT INTO `tblsales` VALUES (7, 8, 'Liam Rhyss Lim', 'Cabuyao, Laguna', '12-04-2024', 'Masarap to promise.\n', 'GrandSlam Meat', 'COD', 'ORD-1733289958236', '76', '2', NULL, '12-04-2024 14:23', '12-04-2024 14:23', '152', '152', '098-ASD', 30);
INSERT INTO `tblsales` VALUES (8, 8, 'Liam Rhyss Lim', 'Cabuyao, Laguna', '12-04-2024', 'Cooked Shawarma Chicken ', 'Cooked Chicken Shawarma 1kg', 'COD', 'ORD-1733293351103', '1005', '1', NULL, '12-04-2024 16:41', '12-04-2024 16:41', '1005', '1005', 'DA78912', 1);
INSERT INTO `tblsales` VALUES (9, 8, 'Liam Rhyss Lim', 'Cabuyao, Laguna', '12-04-2024', 'Masarap to promise.\n', 'GrandSlam Meat', 'Gcash', 'ORD-1733301753213', '76', '5', '1234567', '12-04-2024 16:46', '12-04-2024 16:46', '380', '380', '098-ASD', 30);
INSERT INTO `tblsales` VALUES (10, 9, 'Jericho', 'Calamba, Laguna', '12-04-2024', 'Fita for shawarma.', 'Fita', 'COD', 'ORD-1733301900246', '75', '1', NULL, '12-04-2024 16:46', '12-04-2024 16:46', '75', '5480', '098-ASD', 18);
INSERT INTO `tblsales` VALUES (11, 9, 'Jericho', 'Calamba, Laguna', '12-04-2024', 'Cooked Shawarma Chicken ', 'Cooked Chicken Shawarma 1kg', 'COD', 'ORD-1733301900246', '1005', '5', NULL, '12-04-2024 16:46', '12-04-2024 16:46', '5025', '5480', '098-ASD', 1);
INSERT INTO `tblsales` VALUES (12, 9, 'Jericho', 'Calamba, Laguna', '12-04-2024', 'Masarap to promise.\n', 'GrandSlam Meat', 'COD', 'ORD-1733301900246', '76', '5', NULL, '12-04-2024 16:46', '12-04-2024 16:46', '380', '5480', '098-ASD', 30);
INSERT INTO `tblsales` VALUES (13, 18, 'Sammy Christian', 'Timbao', '12-04-2024', 'Fita for shawarma.', 'Fita', 'COD', 'ORD-1733304784754', '75', '5', NULL, '12-04-2024 17:36', '12-04-2024 17:37', '375', '375', 'DA78912', 18);
INSERT INTO `tblsales` VALUES (14, 8, 'Liam Rhyss Lim', 'Cabuyao, Laguna', '12-04-2024', 'Cooked Shawarma Chicken ', 'Cooked Chicken Shawarma 1kg', 'COD', 'ORD-1733302753148', '1005', '3', NULL, '12-04-2024 17:36', '12-04-2024 17:37', '3015', '3015', '098-ASD', 1);
INSERT INTO `tblsales` VALUES (15, 18, 'Sammy Christian', 'Timbao', '12-04-2024', 'Cooked Shawarma Chicken ', 'Cooked Chicken Shawarma 1kg', 'Gcash', 'ORD-1733304753905', '1005', '3', '123456789', '12-04-2024 17:36', '12-04-2024 17:37', '3015', '3015', '098-ASD', 1);
INSERT INTO `tblsales` VALUES (16, 14, 'Jericho Palermo', 'Calamba', '12-04-2024', 'Cooked Shawarma Chicken ', 'Cooked Chicken Shawarma 1kg', 'COD', 'ORD-1733304851417', '1005', '1', NULL, '12-04-2024 17:36', '12-04-2024 17:37', '1005', '1080', '098-ASD', 1);
INSERT INTO `tblsales` VALUES (17, 14, 'Jericho Palermo', 'Calamba', '12-04-2024', 'Fita for shawarma.', 'Fita', 'COD', 'ORD-1733304851417', '75', '1', NULL, '12-04-2024 17:36', '12-04-2024 17:37', '75', '1080', '098-ASD', 18);
INSERT INTO `tblsales` VALUES (18, 18, 'Sammy Christian', 'Timbao', '12-04-2024', 'Fita for shawarma.', 'Fita', 'COD', 'ORD-1733304784682', '75', '5', NULL, '12-04-2024 17:42', '12-04-2024 17:42', '375', '375', 'DA78912', 18);
INSERT INTO `tblsales` VALUES (19, 8, 'Liam Rhyss Lim', 'Cabuyao, Laguna', '12-04-2024', 'Cooked Shawarma Chicken ', 'Cooked Chicken Shawarma 1kg', 'COD', 'ORD-1733305547035', '1005', '1', NULL, '12-04-2024 17:49', '12-04-2024 17:49', '1005', '1005', '098-ASD', 1);
INSERT INTO `tblsales` VALUES (20, 10, 'Dennis Sho Cinco', 'Lipa, Batangas', '12-05-2024', 'Cooked Shawarma Chicken ', 'Cooked Chicken Shawarma 1kg', 'COD', 'ORD-1733360473023', '1005', '6', NULL, '12-05-2024 09:02', '12-05-2024 09:02', '6030', '6030', 'DA78912', 1);

-- ----------------------------
-- Table structure for tblsupdeli
-- ----------------------------
DROP TABLE IF EXISTS `tblsupdeli`;
CREATE TABLE `tblsupdeli`  (
  `supDeliId` int(11) NOT NULL AUTO_INCREMENT,
  `supplyId` int(11) NULL DEFAULT NULL,
  `matId` int(11) NULL DEFAULT NULL,
  `quantity` int(11) NULL DEFAULT NULL,
  `cost` int(11) NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`supDeliId`) USING BTREE,
  INDEX `supplier`(`supplyId`) USING BTREE,
  INDEX `rawMats`(`matId`) USING BTREE,
  CONSTRAINT `rawMats` FOREIGN KEY (`matId`) REFERENCES `tblrawmats` (`matId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `supplier` FOREIGN KEY (`supplyId`) REFERENCES `tblsuppliers` (`supplyId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tblsupdeli
-- ----------------------------
INSERT INTO `tblsupdeli` VALUES (2, 4, 6, 23, 3500, '2024-09-16', NULL);
INSERT INTO `tblsupdeli` VALUES (4, 4, 3, 20, 4000, '2024-10-05', NULL);
INSERT INTO `tblsupdeli` VALUES (7, 4, 3, 10, 2000, '2024-10-14', NULL);

-- ----------------------------
-- Table structure for tblsupplierrawmats
-- ----------------------------
DROP TABLE IF EXISTS `tblsupplierrawmats`;
CREATE TABLE `tblsupplierrawmats`  (
  `supplierId` int(11) NOT NULL,
  `rawMatId` int(11) NOT NULL,
  `price` decimal(55, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`supplierId`, `rawMatId`) USING BTREE,
  INDEX `rawMatId`(`rawMatId`) USING BTREE,
  CONSTRAINT `tblsupplierrawmats_ibfk_1` FOREIGN KEY (`supplierId`) REFERENCES `tblsuppliers` (`supplyId`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `tblsupplierrawmats_ibfk_2` FOREIGN KEY (`rawMatId`) REFERENCES `tblrawmats` (`matId`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tblsupplierrawmats
-- ----------------------------
INSERT INTO `tblsupplierrawmats` VALUES (4, 3, 57.30);
INSERT INTO `tblsupplierrawmats` VALUES (4, 6, 22.50);
INSERT INTO `tblsupplierrawmats` VALUES (5, 3, 51.83);
INSERT INTO `tblsupplierrawmats` VALUES (5, 19, 50.85);
INSERT INTO `tblsupplierrawmats` VALUES (9, 3, 37.85);
INSERT INTO `tblsupplierrawmats` VALUES (9, 6, 25.35);
INSERT INTO `tblsupplierrawmats` VALUES (16, 14, 70.85);
INSERT INTO `tblsupplierrawmats` VALUES (16, 15, 50.55);
INSERT INTO `tblsupplierrawmats` VALUES (22, 9, 10.00);
INSERT INTO `tblsupplierrawmats` VALUES (22, 12, 40.80);
INSERT INTO `tblsupplierrawmats` VALUES (22, 16, 5.85);
INSERT INTO `tblsupplierrawmats` VALUES (22, 17, 59.85);
INSERT INTO `tblsupplierrawmats` VALUES (22, 20, 50.25);
INSERT INTO `tblsupplierrawmats` VALUES (22, 29, 12.50);
INSERT INTO `tblsupplierrawmats` VALUES (22, 30, 57.69);
INSERT INTO `tblsupplierrawmats` VALUES (22, 31, 14.70);
INSERT INTO `tblsupplierrawmats` VALUES (23, 8, 600.78);
INSERT INTO `tblsupplierrawmats` VALUES (23, 9, 575.90);
INSERT INTO `tblsupplierrawmats` VALUES (23, 10, 500.80);
INSERT INTO `tblsupplierrawmats` VALUES (24, 26, 500.00);
INSERT INTO `tblsupplierrawmats` VALUES (25, 9, 1000.00);
INSERT INTO `tblsupplierrawmats` VALUES (26, 28, 56.00);
INSERT INTO `tblsupplierrawmats` VALUES (27, 3, 105.69);
INSERT INTO `tblsupplierrawmats` VALUES (27, 30, 47.80);
INSERT INTO `tblsupplierrawmats` VALUES (30, 16, 100.50);
INSERT INTO `tblsupplierrawmats` VALUES (30, 30, 75.00);
INSERT INTO `tblsupplierrawmats` VALUES (30, 34, 100.00);

-- ----------------------------
-- Table structure for tblsuppliers
-- ----------------------------
DROP TABLE IF EXISTS `tblsuppliers`;
CREATE TABLE `tblsuppliers`  (
  `supplyId` int(11) NOT NULL AUTO_INCREMENT,
  `supplyName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `contact` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`supplyId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tblsuppliers
-- ----------------------------
INSERT INTO `tblsuppliers` VALUES (4, 'Jester', 'Mamatid', 9987654321);
INSERT INTO `tblsuppliers` VALUES (5, 'John', 'Calamba', 9454468426);
INSERT INTO `tblsuppliers` VALUES (9, 'Lawrence', 'Cabuyao', 9999999999);
INSERT INTO `tblsuppliers` VALUES (16, 'Liam', 'Echo', 639451959211);
INSERT INTO `tblsuppliers` VALUES (22, 'Jericho', 'Cabuyao', 639091231231);
INSERT INTO `tblsuppliers` VALUES (23, 'Pepito Meats', 'Cabuyao, Laguna', 91231231231);
INSERT INTO `tblsuppliers` VALUES (24, 'Juan', 'Calamba', 123123123123);
INSERT INTO `tblsuppliers` VALUES (25, 'Kimi', 'Cabuyao, Laguna', 9486682264);
INSERT INTO `tblsuppliers` VALUES (26, 'Raniel', 'los banos', 9542457888);
INSERT INTO `tblsuppliers` VALUES (27, 'Juan Burgeries', 'Calamba Laguna', 639091213131);
INSERT INTO `tblsuppliers` VALUES (30, 'Yecla Supplies', 'Cabuyao, Laguna', 9458856631);

-- ----------------------------
-- Table structure for tblusers
-- ----------------------------
DROP TABLE IF EXISTS `tblusers`;
CREATE TABLE `tblusers`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `access` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tblusers
-- ----------------------------
INSERT INTO `tblusers` VALUES (1, 'admin', 'password', 1);
INSERT INTO `tblusers` VALUES (2, 'production', 'password', 2);
INSERT INTO `tblusers` VALUES (3, 'sales', 'password', 3);
INSERT INTO `tblusers` VALUES (8, 'riva', 'password', 4);
INSERT INTO `tblusers` VALUES (9, 'jamjam', 'password', 4);
INSERT INTO `tblusers` VALUES (10, 'cinco', 'password', 4);
INSERT INTO `tblusers` VALUES (11, 'sam', 'mangubat', 1);
INSERT INTO `tblusers` VALUES (14, 'porky', 'password', 4);
INSERT INTO `tblusers` VALUES (18, 'Kimmy', 'password', 4);
INSERT INTO `tblusers` VALUES (19, 'cinco19', 'cinco', 1);
INSERT INTO `tblusers` VALUES (20, 'yam', 'yam', 4);
INSERT INTO `tblusers` VALUES (22, 'Raniel', 'password', 4);
INSERT INTO `tblusers` VALUES (24, 'dennis', 'password', 4);
INSERT INTO `tblusers` VALUES (25, 'Kim', 'password', 4);
INSERT INTO `tblusers` VALUES (26, 'Spiderman', 'pass', 4);

-- ----------------------------
-- Table structure for tblvehicle
-- ----------------------------
DROP TABLE IF EXISTS `tblvehicle`;
CREATE TABLE `tblvehicle`  (
  `vehicle_plate` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `rider` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `vehicle_type` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `vehicle_available` int(11) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tblvehicle
-- ----------------------------
INSERT INTO `tblvehicle` VALUES ('DA78912', 'Jonathan', 'Motor', 1);
INSERT INTO `tblvehicle` VALUES ('AB021A', 'Edmond', 'Motor', 1);
INSERT INTO `tblvehicle` VALUES ('123123', 'Tyron', 'Motor', 1);
INSERT INTO `tblvehicle` VALUES ('ABCABC', 'Gerric', 'Motor', 1);
INSERT INTO `tblvehicle` VALUES ('098-ASD', 'Joseph', 'Car Wigo', 1);

SET FOREIGN_KEY_CHECKS = 1;
