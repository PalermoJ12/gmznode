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

 Date: 02/12/2024 09:26:29
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
) ENGINE = InnoDB AUTO_INCREMENT = 71 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tblcart
-- ----------------------------
INSERT INTO `tblcart` VALUES (27, 1, 'Cooked Chicken Shawarma 1kg', 'Cooked Shawarma Chicken ', 1005.00, 1, 1005.00, 0, '10', '', '');
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
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

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

-- ----------------------------
-- Table structure for tblcustomer
-- ----------------------------
DROP TABLE IF EXISTS `tblcustomer`;
CREATE TABLE `tblcustomer`  (
  `customer_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `location` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`customer_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tblcustomer
-- ----------------------------
INSERT INTO `tblcustomer` VALUES (8, 'Liam Rhyss Lim', 'Cabuyao, Laguna');
INSERT INTO `tblcustomer` VALUES (9, 'Jericho', 'Calamba, Laguna');
INSERT INTO `tblcustomer` VALUES (14, 'Jericho Palermo', 'Calamba');
INSERT INTO `tblcustomer` VALUES (18, 'Sammy Christian', 'Timbao');
INSERT INTO `tblcustomer` VALUES (20, 'yam', 'Phase 1 Block 5 Lot 25 Lakeside Nest');
INSERT INTO `tblcustomer` VALUES (22, 'Raniel De Vera', 'Marinig Cabuyao, Laguna');
INSERT INTO `tblcustomer` VALUES (24, 'Sho Dennis', 'Cabuyao');
INSERT INTO `tblcustomer` VALUES (25, 'Kim Solde', 'Cabuyao, Laguna');

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_estonian_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbldocument
-- ----------------------------
INSERT INTO `tbldocument` VALUES (12, 'Sample file', '/uploads/1732788200546-Sample file.pdf', 'Contract', '2024-11-30', '2024-11-28', '2024-12-31', 'Sample contract', 0);
INSERT INTO `tbldocument` VALUES (13, '1-module-1 (20230907132645) (20240913005953)', '/uploads/1732839251889-1-module-1 (20230907132645) (20240913005953).pdf', 'Business Permit', '2024-11-29', '2024-11-29', '2024-11-30', 'Contract', 1);
INSERT INTO `tbldocument` VALUES (14, '1-module-1 (20230907132645) (20240913005953)', '/uploads/1732839253116-1-module-1 (20230907132645) (20240913005953).pdf', 'Business Permit', '2024-11-29', '2024-11-29', '2024-11-30', 'Contract', 0);

-- ----------------------------
-- Table structure for tblitem_ingredients
-- ----------------------------
DROP TABLE IF EXISTS `tblitem_ingredients`;
CREATE TABLE `tblitem_ingredients`  (
  `ingId` int(11) NOT NULL AUTO_INCREMENT,
  `itemId` int(11) NULL DEFAULT NULL,
  `matId` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`ingId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8 COLLATE = utf8_estonian_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tblitem_ingredients
-- ----------------------------
INSERT INTO `tblitem_ingredients` VALUES (9, 2, 22);
INSERT INTO `tblitem_ingredients` VALUES (10, 2, 26);
INSERT INTO `tblitem_ingredients` VALUES (11, 2, 15);
INSERT INTO `tblitem_ingredients` VALUES (12, 2, 13);
INSERT INTO `tblitem_ingredients` VALUES (13, 2, 19);
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
INSERT INTO `tblitem_ingredients` VALUES (37, 17, 15);
INSERT INTO `tblitem_ingredients` VALUES (38, 17, 24);
INSERT INTO `tblitem_ingredients` VALUES (39, 17, 23);
INSERT INTO `tblitem_ingredients` VALUES (40, 17, 8);
INSERT INTO `tblitem_ingredients` VALUES (41, 19, 29);
INSERT INTO `tblitem_ingredients` VALUES (42, 19, 14);
INSERT INTO `tblitem_ingredients` VALUES (43, 20, 10);
INSERT INTO `tblitem_ingredients` VALUES (44, 20, 3);
INSERT INTO `tblitem_ingredients` VALUES (45, 1, 3);
INSERT INTO `tblitem_ingredients` VALUES (46, 1, 15);

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
  PRIMARY KEY (`itemId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tblitems
-- ----------------------------
INSERT INTO `tblitems` VALUES (1, 'Cooked Chicken Shawarma 1kg', 1005, 'Shawarma Meats', 'Cooked Shawarma Chicken ', 25);
INSERT INTO `tblitems` VALUES (2, 'Hot Vegan Sauce 1 Bottle', 50, 'Sauces', 'A hot sauce', 0);
INSERT INTO `tblitems` VALUES (6, '1kg Grilled Lamb Shawarma', 150, 'Shawarma Meats', 'Juicy grilled lamb Shawarma, seasoned with spices and grilled to perfection.', 0);
INSERT INTO `tblitems` VALUES (7, '500g Ground Beef Shawarma', 90, 'Shawarma Meats', 'Ground beef Shawarma, perfect for mixing with vegetables and sauces.', 0);
INSERT INTO `tblitems` VALUES (8, '1kg Beef Ribs Shawarma', 180, 'Shawarma Meats', 'Slow-cooked beef ribs Shawarma with a smoky flavor, ideal for wraps.', 0);
INSERT INTO `tblitems` VALUES (10, '500g Garlic Tahini Sauce', 45, 'Sauces', 'Creamy and savory tahini sauce with a rich garlic flavor, perfect for Shawarma wraps.', 0);
INSERT INTO `tblitems` VALUES (11, '1 liter Lemon Garlic Sauce', 40, 'Sauces', 'Zesty lemon and garlic sauce, ideal for enhancing the flavors of Shawarma.', 0);
INSERT INTO `tblitems` VALUES (12, '500g Yogurt-Based Shawarma Sauce', 60, 'Sauces', 'Tangy yogurt-based sauce, adding creaminess to Shawarma wraps.', 0);
INSERT INTO `tblitems` VALUES (13, '10 Pita Bread (Pack)', 30, 'Pitas', 'Soft, fluffy pita bread, perfect for wrapping Shawarma meat and veggies.', 0);
INSERT INTO `tblitems` VALUES (14, '20 Whole Wheat Pita Breads', 40, 'Pitas', 'Healthier option with whole wheat flour, perfect for Shawarma wraps.', 0);
INSERT INTO `tblitems` VALUES (15, '10 Mini Pita Breads', 25, 'Pitas', 'Small-sized pita breads, ideal for making Shawarma sliders or wraps.', 0);
INSERT INTO `tblitems` VALUES (17, 'Sam Shawarma', 55, 'Shawarma Meats', 'This is a shawarma.', 0);
INSERT INTO `tblitems` VALUES (18, 'Fita', 75, 'Pitas', 'Fita for shawarma.', 9);
INSERT INTO `tblitems` VALUES (19, 'Ice tea', 51, 'Drinks', 'This is refereshing ice tea.', 0);
INSERT INTO `tblitems` VALUES (20, 'Magic Meat', 40, 'Meat', 'DALAWANG MEAT PINAGSAMA PINASARAP', 5);
INSERT INTO `tblitems` VALUES (21, 'Uncooked Ground Beef Shawarma 500g', 140, 'Shawarma Meats', 'Raw meat', 0);

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tblnotifications
-- ----------------------------
INSERT INTO `tblnotifications` VALUES (1, 'UserDetails_2024-11-20_11_31_07 (Legal) is expiring soon on 2025-03-19.', 1);
INSERT INTO `tblnotifications` VALUES (2, 'Letter (Document) will expire on 2025-06-23.', 1);
INSERT INTO `tblnotifications` VALUES (3, 'CRV_Template (Contract/Agreement) needs renewal by 2025-01-06.', 1);
INSERT INTO `tblnotifications` VALUES (4, 'Features ITD1 (Legal) is expiring soon on 2025-10-23.', 1);
INSERT INTO `tblnotifications` VALUES (5, 'CRV_Template (Contract/Agreement) needs renewal by 2025-01-05.', 1);
INSERT INTO `tblnotifications` VALUES (6, 'CRV_Template (Contract/Agreement) needs renewal by 2025-01-05.', 1);
INSERT INTO `tblnotifications` VALUES (10, 'SAMPLE APPROVED PRAF has been archived by admin.', 1);
INSERT INTO `tblnotifications` VALUES (11, 'PRAF has been archived by admin.', 1);
INSERT INTO `tblnotifications` VALUES (15, 'PRAF has been deleted by admin.', 1);
INSERT INTO `tblnotifications` VALUES (16, 'PRAF has been archived by admin.', 1);
INSERT INTO `tblnotifications` VALUES (17, 'PRAF has been deleted by admin.', 1);
INSERT INTO `tblnotifications` VALUES (18, 'CRV_Template has been archived by admin.', 1);
INSERT INTO `tblnotifications` VALUES (19, 'CRV_Template has been archived by admin.', 1);
INSERT INTO `tblnotifications` VALUES (20, 'CRV_Template has been archived by admin.', 1);
INSERT INTO `tblnotifications` VALUES (21, 'CRV_Template has been archived by admin.', 1);
INSERT INTO `tblnotifications` VALUES (22, 'CRV_Template has been unarchived by admin.', 1);
INSERT INTO `tblnotifications` VALUES (23, 'CRV_Template has been archived by admin.', 1);
INSERT INTO `tblnotifications` VALUES (24, 'CRV_Template has been unarchived by admin.', 1);
INSERT INTO `tblnotifications` VALUES (25, 'LEGAL-DOCU-TEST has been deleted by admin.', 1);
INSERT INTO `tblnotifications` VALUES (26, 'CRV_Template has been deleted by admin.', 1);
INSERT INTO `tblnotifications` VALUES (27, 'SAMPLE APPROVED PRAF (Contract/Agreement) needs renewal by 2025-02-28.', 1);
INSERT INTO `tblnotifications` VALUES (28, 'SAMPLE APPROVED PRAF (Contract/Agreement) needs renewal by 2025-02-28.', 1);
INSERT INTO `tblnotifications` VALUES (29, 'resume has been archived by admin.', 1);
INSERT INTO `tblnotifications` VALUES (30, 'resume has been unarchived by admin.', 1);
INSERT INTO `tblnotifications` VALUES (31, 'resume has been archived by admin.', 1);
INSERT INTO `tblnotifications` VALUES (32, 'resume has been unarchived by admin.', 1);
INSERT INTO `tblnotifications` VALUES (33, 'resume has been archived by admin.', 1);
INSERT INTO `tblnotifications` VALUES (34, 'SAMPLE APPROVED PRAF (Contract/Agreement) needs renewal by 2025-02-27.', 1);
INSERT INTO `tblnotifications` VALUES (35, 'Sample file (Contract/Agreement) needs renewal by 2024-12-31.', 1);
INSERT INTO `tblnotifications` VALUES (36, '1-module-1 (20230907132645) (20240913005953) (Legal) is expiring soon on 2024-11-30.', 1);
INSERT INTO `tblnotifications` VALUES (37, '1-module-1 (20230907132645) (20240913005953) (Legal) is expiring soon on 2024-11-30.', 1);
INSERT INTO `tblnotifications` VALUES (38, 'SAMPLE APPROVED PRAF has been deleted by admin.', 1);
INSERT INTO `tblnotifications` VALUES (39, 'resume has been deleted by admin.', 1);
INSERT INTO `tblnotifications` VALUES (40, '1-module-1 (20230907132645) (20240913005953) has been archived by admin.', 0);
INSERT INTO `tblnotifications` VALUES (41, '1-module-1 (20230907132645) (20240913005953) has been unarchived by admin.', 0);
INSERT INTO `tblnotifications` VALUES (42, '1-module-1 (20230907132645) (20240913005953) has been archived by admin.', 0);

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
  PRIMARY KEY (`orderItemId`) USING BTREE,
  INDEX `order_fk`(`orderId`) USING BTREE,
  INDEX `material_fk`(`matId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tblorderfromsupplier_items
-- ----------------------------
INSERT INTO `tblorderfromsupplier_items` VALUES (1, 24, 8, 10, 10, 10, 600.78, 6007.80, 1, '2024-11-26');
INSERT INTO `tblorderfromsupplier_items` VALUES (2, 24, 9, 5, 5, 5, 575.90, 2879.50, 1, '2024-11-26');
INSERT INTO `tblorderfromsupplier_items` VALUES (3, 24, 10, 0, 5, 5, 500.80, 2504.00, 1, '2024-11-26');
INSERT INTO `tblorderfromsupplier_items` VALUES (4, 25, 26, 0, 5, 5, 500.00, 2500.00, 1, '2024-11-26');
INSERT INTO `tblorderfromsupplier_items` VALUES (5, 26, 3, 0, 5, 5, 57.30, 286.50, 1, '2024-11-26');
INSERT INTO `tblorderfromsupplier_items` VALUES (6, 26, 6, 0, 5, 5, 22.50, 112.50, 1, '2024-11-26');
INSERT INTO `tblorderfromsupplier_items` VALUES (7, 27, 15, 0, 5, 5, 50.55, 252.75, 1, '2024-11-26');
INSERT INTO `tblorderfromsupplier_items` VALUES (8, 28, 26, 1, 10, 10, 500.00, 5000.00, 1, '2024-11-26');
INSERT INTO `tblorderfromsupplier_items` VALUES (9, 29, 3, 0, 10, 10, 57.30, 573.00, 1, '2024-11-26');
INSERT INTO `tblorderfromsupplier_items` VALUES (10, 30, 15, 0, 10, 10, 50.55, 505.50, 1, '2024-11-26');
INSERT INTO `tblorderfromsupplier_items` VALUES (16, 31, 10, 5, 5, 5, 500.80, 2504.00, 1, '2024-11-27');
INSERT INTO `tblorderfromsupplier_items` VALUES (17, 31, 9, 5, 5, 5, 575.90, 2879.50, 1, '2024-11-28');
INSERT INTO `tblorderfromsupplier_items` VALUES (18, 32, 8, 4, 4, 4, 600.78, 2403.12, 1, '2024-11-27');
INSERT INTO `tblorderfromsupplier_items` VALUES (19, 33, 15, 0, 5, 5, 50.55, 252.75, 1, '2024-11-27');
INSERT INTO `tblorderfromsupplier_items` VALUES (20, 34, 3, 0, 10, 10, 37.85, 378.50, 1, '2024-11-27');
INSERT INTO `tblorderfromsupplier_items` VALUES (21, 35, 14, 45, 50, 45, 70.85, 3542.50, 1, '2024-11-27');
INSERT INTO `tblorderfromsupplier_items` VALUES (22, 35, 15, 35, 50, 40, 50.55, 2527.50, 1, '2024-11-27');
INSERT INTO `tblorderfromsupplier_items` VALUES (23, 36, 3, 0, 5, 5, 57.30, 286.50, 1, '2024-11-29');
INSERT INTO `tblorderfromsupplier_items` VALUES (25, 42, 16, 5, 5, 5, 5.85, 29.25, 1, '2024-12-02');

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
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

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
INSERT INTO `tblorders` VALUES (14, NULL, NULL, 'Echo', '2024-11-20', 1100.00, 'preparing', '2024-11-20 08:53:59', 'Binan', 'paid', 'Gcash');

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
  `itemId` int(55) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tblorders_customer
-- ----------------------------
INSERT INTO `tblorders_customer` VALUES ('ORD-1732782724045', 'COD', '', 'Cooked Chicken Shawarma 1kg', 'Cooked Shawarma Chicken ', 1005.00, 5, 5025.00, 5025.00, 'Transit', '11-28-2024', 9, 'Jericho', 'Calamba, Laguna', '098-ASD', '11-28-2024 16:33', NULL, NULL, NULL);
INSERT INTO `tblorders_customer` VALUES ('ORD-1732782744843', 'COD', '', 'Fita', 'Fita for shawarma.', 75.00, 2, 150.00, 150.00, 'Transit', '11-28-2024', 9, 'Jericho', 'Calamba, Laguna', '098-ASD', '11-28-2024 16:33', NULL, NULL, NULL);
INSERT INTO `tblorders_customer` VALUES ('ORD-1732840943738', 'COD', '', 'Cooked Chicken Shawarma 1kg', 'Cooked Shawarma Chicken ', 1005.00, 6, 6030.00, 6030.00, 'TRANSIT', '11-29-2024', 8, 'Liam Rhyss Lim', 'Cabuyao, Laguna', 'AB021A', '11-29-2024, 08:55:19', NULL, NULL, NULL);
INSERT INTO `tblorders_customer` VALUES ('ORD-1732842041011', 'COD', '', 'Cooked Chicken Shawarma 1kg', 'Cooked Shawarma Chicken ', 1005.00, 1, 1005.00, 1005.00, 'Cancelled', '11-29-2024', 8, 'Liam Rhyss Lim', 'Cabuyao, Laguna', '', NULL, NULL, NULL, NULL);
INSERT INTO `tblorders_customer` VALUES ('ORD-1732843073046', 'COD', '', 'Cooked Chicken Shawarma 1kg', 'Cooked Shawarma Chicken ', 1005.00, 2, 2010.00, 2010.00, 'Transit', '11-29-2024', 8, 'Liam Rhyss Lim', 'Cabuyao, Laguna', 'DA78912', '11-29-2024 09:27', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tblordersfromsupplier
-- ----------------------------
DROP TABLE IF EXISTS `tblordersfromsupplier`;
CREATE TABLE `tblordersfromsupplier`  (
  `orderId` int(11) NOT NULL AUTO_INCREMENT,
  `supplyId` int(11) NULL DEFAULT NULL,
  `totalCost` decimal(10, 2) NULL DEFAULT NULL,
  `orderDate` date NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`orderId`) USING BTREE,
  INDEX `supplier_fk`(`supplyId`) USING BTREE,
  CONSTRAINT `supplier_fk` FOREIGN KEY (`supplyId`) REFERENCES `tblsuppliers` (`supplyId`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tblordersfromsupplier
-- ----------------------------
INSERT INTO `tblordersfromsupplier` VALUES (2, 22, 319.80, '2024-11-22', 1);
INSERT INTO `tblordersfromsupplier` VALUES (5, 16, 850.20, '2024-11-22', 1);
INSERT INTO `tblordersfromsupplier` VALUES (6, 22, 443.45, '2024-11-22', 1);
INSERT INTO `tblordersfromsupplier` VALUES (7, 9, 189.25, '2024-11-23', 1);
INSERT INTO `tblordersfromsupplier` VALUES (11, 22, 247.30, '2024-11-25', 1);
INSERT INTO `tblordersfromsupplier` VALUES (12, 24, 1000.00, '2024-11-25', 1);
INSERT INTO `tblordersfromsupplier` VALUES (13, 22, 11.70, '2024-11-25', 1);
INSERT INTO `tblordersfromsupplier` VALUES (14, 22, 25.00, '2024-11-25', 1);
INSERT INTO `tblordersfromsupplier` VALUES (17, 9, 189.25, '2024-11-25', 1);
INSERT INTO `tblordersfromsupplier` VALUES (18, 16, 252.75, '2024-11-25', 1);
INSERT INTO `tblordersfromsupplier` VALUES (19, 24, 25000.00, '2024-11-25', 1);
INSERT INTO `tblordersfromsupplier` VALUES (20, 5, 259.15, '2024-11-25', 1);
INSERT INTO `tblordersfromsupplier` VALUES (21, 22, 50.00, '2024-11-25', 1);
INSERT INTO `tblordersfromsupplier` VALUES (22, 23, 16774.80, '2024-11-25', 1);
INSERT INTO `tblordersfromsupplier` VALUES (23, 16, 252.75, '2024-11-25', 1);
INSERT INTO `tblordersfromsupplier` VALUES (24, 23, 11391.30, '2024-11-26', 1);
INSERT INTO `tblordersfromsupplier` VALUES (25, 24, 2500.00, '2024-11-26', 1);
INSERT INTO `tblordersfromsupplier` VALUES (26, 4, 399.00, '2024-11-26', 1);
INSERT INTO `tblordersfromsupplier` VALUES (27, 16, 252.75, '2024-11-26', 1);
INSERT INTO `tblordersfromsupplier` VALUES (28, 24, 5000.00, '2024-11-26', 1);
INSERT INTO `tblordersfromsupplier` VALUES (29, 4, 573.00, '2024-11-26', 1);
INSERT INTO `tblordersfromsupplier` VALUES (30, 16, 505.50, '2024-11-26', 1);
INSERT INTO `tblordersfromsupplier` VALUES (31, 23, 5383.50, '2024-11-27', 1);
INSERT INTO `tblordersfromsupplier` VALUES (32, 23, 2403.12, '2024-11-27', 1);
INSERT INTO `tblordersfromsupplier` VALUES (33, 16, 252.75, '2024-11-27', 1);
INSERT INTO `tblordersfromsupplier` VALUES (34, 9, 378.50, '2024-11-27', 1);
INSERT INTO `tblordersfromsupplier` VALUES (35, 16, 6070.00, '2024-11-27', 1);
INSERT INTO `tblordersfromsupplier` VALUES (36, 4, 286.50, '2024-11-29', 1);
INSERT INTO `tblordersfromsupplier` VALUES (42, 22, 29.25, '2024-12-02', 1);

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
  PRIMARY KEY (`productionId`) USING BTREE,
  INDEX `itemId`(`itemId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tblproduction
-- ----------------------------
INSERT INTO `tblproduction` VALUES (2, 1, 2, 2, '2024-11-26', 'Jericho', 1);
INSERT INTO `tblproduction` VALUES (3, 1, 3, 3, '2024-11-26', 'Jericho', 1);
INSERT INTO `tblproduction` VALUES (4, 18, 5, 5, '2024-11-26', 'Jericho', 1);
INSERT INTO `tblproduction` VALUES (5, 18, 5, 5, '2024-11-26', 'Jericho', 1);
INSERT INTO `tblproduction` VALUES (9, 1, 10, 10, '2024-11-26', 'Jericho', 1);
INSERT INTO `tblproduction` VALUES (14, 1, 5, 5, '2024-11-27', 'Jericho', 1);
INSERT INTO `tblproduction` VALUES (15, 20, 5, 5, '2024-11-27', 'Jericho', 1);
INSERT INTO `tblproduction` VALUES (16, 1, 5, 5, '2024-11-29', 'Sho', 1);
INSERT INTO `tblproduction` VALUES (17, 18, 1, 1, '2024-11-29', 'Jericho', 1);
INSERT INTO `tblproduction` VALUES (18, 18, 3, 3, '2024-11-30', 'Sho', 1);

-- ----------------------------
-- Table structure for tblproductionmateriallogs
-- ----------------------------
DROP TABLE IF EXISTS `tblproductionmateriallogs`;
CREATE TABLE `tblproductionmateriallogs`  (
  `logId` int(11) NOT NULL AUTO_INCREMENT,
  `dateLogged` date NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`logId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 82 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tblproductionmateriallogs
-- ----------------------------
INSERT INTO `tblproductionmateriallogs` VALUES (1, '2024-11-26', 'Used 2 units of 1kg Chicken Meat (Batch: 5), Used 2 units of 200g Garlic Paste (Batch: 7)');
INSERT INTO `tblproductionmateriallogs` VALUES (2, '2024-11-26', 'Reverted 2 units of material: 1kg Chicken Meat');
INSERT INTO `tblproductionmateriallogs` VALUES (3, '2024-11-26', 'Reverted 2 units of material: 200g Garlic Paste');
INSERT INTO `tblproductionmateriallogs` VALUES (4, '2024-11-26', 'Used 2 units of 250g Ground Coriander (Batch: 4)');
INSERT INTO `tblproductionmateriallogs` VALUES (8, '2024-11-26', 'Used 2 units of 1kg Chicken Meat (Batch: 5), Used 2 units of 200g Garlic Paste (Batch: 7)');
INSERT INTO `tblproductionmateriallogs` VALUES (9, '2024-11-26', 'Used 3 units of 1kg Chicken Meat (Batch: 5), Used 3 units of 200g Garlic Paste (Batch: 7)');
INSERT INTO `tblproductionmateriallogs` VALUES (10, '2024-11-26', 'Used 5 units of 250g Ground Coriander (Batch: 4)');
INSERT INTO `tblproductionmateriallogs` VALUES (11, '2024-11-26', 'Reverted 5 units of material: 250g Ground Coriander');
INSERT INTO `tblproductionmateriallogs` VALUES (12, '2024-11-26', 'Used 1 units of 1kg Chicken Meat (Batch: 5), Used 1 units of 200g Garlic Paste (Batch: 7)');
INSERT INTO `tblproductionmateriallogs` VALUES (13, '2024-11-26', 'Reverted 5 units of material: 250g Ground Coriander');
INSERT INTO `tblproductionmateriallogs` VALUES (14, '2024-11-26', 'Reverted 1 units of material: 1kg Chicken Meat');
INSERT INTO `tblproductionmateriallogs` VALUES (15, '2024-11-26', 'Reverted 1 units of material: 200g Garlic Paste');
INSERT INTO `tblproductionmateriallogs` VALUES (16, '2024-11-26', 'Used 5 units of 250g Ground Coriander (Batch: 4)');
INSERT INTO `tblproductionmateriallogs` VALUES (17, '2024-11-26', 'Used 5 units of 250g Ground Coriander (Batch: 4)');
INSERT INTO `tblproductionmateriallogs` VALUES (18, '2024-11-26', 'Used 5 units of 250g Ground Coriander (Batch: 8)');
INSERT INTO `tblproductionmateriallogs` VALUES (19, '2024-11-26', 'Reverted 5 units of material: 250g Ground Coriander');
INSERT INTO `tblproductionmateriallogs` VALUES (20, '2024-11-26', 'Used 1 units of 1kg Chicken Meat (Batch: 5), Used 1 units of 200g Garlic Paste (Batch: 7)');
INSERT INTO `tblproductionmateriallogs` VALUES (21, '2024-11-26', 'Reverted 5 units of material: 250g Ground Coriander');
INSERT INTO `tblproductionmateriallogs` VALUES (22, '2024-11-26', 'Reverted 1 units of material: 1kg Chicken Meat');
INSERT INTO `tblproductionmateriallogs` VALUES (23, '2024-11-26', 'Reverted 1 units of material: 200g Garlic Paste');
INSERT INTO `tblproductionmateriallogs` VALUES (24, '2024-11-26', 'Used 3 units of 250g Ground Coriander (Batch: 4)');
INSERT INTO `tblproductionmateriallogs` VALUES (25, '2024-11-26', 'Reverted 5 units of material: 250g Ground Coriander');
INSERT INTO `tblproductionmateriallogs` VALUES (26, '2024-11-26', 'Reverted 1 units of material: 1kg Chicken Meat');
INSERT INTO `tblproductionmateriallogs` VALUES (27, '2024-11-26', 'Reverted 1 units of material: 200g Garlic Paste');
INSERT INTO `tblproductionmateriallogs` VALUES (28, '2024-11-26', 'Reverted 3 units of material: 250g Ground Coriander');
INSERT INTO `tblproductionmateriallogs` VALUES (29, '2024-11-26', 'Used 3 units of 1kg Chicken Meat (Batch: 5), Used 3 units of 200g Garlic Paste (Batch: 7)');
INSERT INTO `tblproductionmateriallogs` VALUES (30, '2024-11-26', 'Used 1 units of 1kg Chicken Meat (Batch: 9), Used 1 units of 200g Garlic Paste (Batch: 10)');
INSERT INTO `tblproductionmateriallogs` VALUES (31, '2024-11-26', 'Used 1 units of 1kg Chicken Meat (Batch: 9), Used 1 units of 200g Garlic Paste (Batch: 10)');
INSERT INTO `tblproductionmateriallogs` VALUES (32, '2024-11-26', 'Reverted 1 units of material: 1kg Chicken Meat');
INSERT INTO `tblproductionmateriallogs` VALUES (33, '2024-11-26', 'Reverted 1 units of material: 200g Garlic Paste');
INSERT INTO `tblproductionmateriallogs` VALUES (34, '2024-11-26', 'Used 1 units of 250g Ground Coriander (Batch: 8)');
INSERT INTO `tblproductionmateriallogs` VALUES (35, '2024-11-26', 'Reverted 1 units of material: 1kg Chicken Meat');
INSERT INTO `tblproductionmateriallogs` VALUES (36, '2024-11-26', 'Reverted 1 units of material: 200g Garlic Paste');
INSERT INTO `tblproductionmateriallogs` VALUES (37, '2024-11-26', 'Reverted 1 units of material: 250g Ground Coriander');
INSERT INTO `tblproductionmateriallogs` VALUES (38, '2024-11-26', 'Used 1 units of 1kg Chicken Meat (Batch: 9), Used 1 units of 200g Garlic Paste (Batch: 10)');
INSERT INTO `tblproductionmateriallogs` VALUES (39, '2024-11-26', 'Reverted 1 units of material: 1kg Chicken Meat');
INSERT INTO `tblproductionmateriallogs` VALUES (40, '2024-11-26', 'Reverted 1 units of material: 200g Garlic Paste');
INSERT INTO `tblproductionmateriallogs` VALUES (41, '2024-11-26', 'Reverted 1 units of material: 250g Ground Coriander');
INSERT INTO `tblproductionmateriallogs` VALUES (42, '2024-11-26', 'Reverted 1 units of material: 1kg Chicken Meat');
INSERT INTO `tblproductionmateriallogs` VALUES (43, '2024-11-26', 'Reverted 1 units of material: 200g Garlic Paste');
INSERT INTO `tblproductionmateriallogs` VALUES (44, '2024-11-26', 'Used 1 units of 250g Ground Coriander (Batch: 8)');
INSERT INTO `tblproductionmateriallogs` VALUES (45, '2024-11-26', 'Reverted 1 units of material: 250g Ground Coriander');
INSERT INTO `tblproductionmateriallogs` VALUES (46, '2024-11-26', 'Used 1 units of 1kg Chicken Meat (Batch: 9), Used 1 units of 200g Garlic Paste (Batch: 10)');
INSERT INTO `tblproductionmateriallogs` VALUES (47, '2024-11-26', 'Reverted 1 units of material: 1kg Chicken Meat');
INSERT INTO `tblproductionmateriallogs` VALUES (48, '2024-11-26', 'Reverted 1 units of material: 200g Garlic Paste');
INSERT INTO `tblproductionmateriallogs` VALUES (49, '2024-11-26', 'Used 1 units of 250g Ground Coriander (Batch: 8)');
INSERT INTO `tblproductionmateriallogs` VALUES (51, '2024-11-26', 'Used 1 units of 1kg Chicken Meat (Batch: 9), Used 1 units of 200g Garlic Paste (Batch: 10)');
INSERT INTO `tblproductionmateriallogs` VALUES (52, '2024-11-26', 'Used 1 units of 250g Ground Coriander (Batch: 8)');
INSERT INTO `tblproductionmateriallogs` VALUES (53, '2024-11-26', 'Reverted 1 units of material: 250g Ground Coriander');
INSERT INTO `tblproductionmateriallogs` VALUES (54, '2024-11-26', 'Used 10 units of 1kg Chicken Meat (Batch: 9), Used 10 units of 200g Garlic Paste (Batch: 10)');
INSERT INTO `tblproductionmateriallogs` VALUES (57, '2024-11-27', 'Used 5 units of 250g Ground Coriander (Batch: 8)');
INSERT INTO `tblproductionmateriallogs` VALUES (59, '2024-11-27', 'Reverted 5 units of material: 250g Ground Coriander');
INSERT INTO `tblproductionmateriallogs` VALUES (60, '2024-11-27', 'Used 5 units of 1kg Chicken Meat (Batch: 20), Used 5 units of 200g Garlic Paste (Batch: 19)');
INSERT INTO `tblproductionmateriallogs` VALUES (61, '2024-11-27', 'Used 5 units of 250g Ground Coriander (Batch: 8)');
INSERT INTO `tblproductionmateriallogs` VALUES (62, '2024-11-27', 'Reverted 5 units of material: 250g Ground Coriander');
INSERT INTO `tblproductionmateriallogs` VALUES (63, '2024-11-27', 'Used 5 units of 1kg Chicken Meat (Batch: 20), Used 5 units of 200g Garlic Paste (Batch: 19)');
INSERT INTO `tblproductionmateriallogs` VALUES (64, '2024-11-27', 'Reverted 5 units of material: 1kg Chicken Meat');
INSERT INTO `tblproductionmateriallogs` VALUES (65, '2024-11-27', 'Reverted 5 units of material: 200g Garlic Paste');
INSERT INTO `tblproductionmateriallogs` VALUES (66, '2024-11-27', 'Used 5 units of 250g Ground Coriander (Batch: 8)');
INSERT INTO `tblproductionmateriallogs` VALUES (67, '2024-11-27', 'Reverted 5 units of material: 250g Ground Coriander');
INSERT INTO `tblproductionmateriallogs` VALUES (68, '2024-11-27', 'Used 5 units of 1kg Chicken Meat (Batch: 20), Used 5 units of 200g Garlic Paste (Batch: 19)');
INSERT INTO `tblproductionmateriallogs` VALUES (69, '2024-11-27', 'Used 5 units of 1kg Chicken Meat (Batch: 20), Used 5 units of 200g Garlic Paste (Batch: 19)');
INSERT INTO `tblproductionmateriallogs` VALUES (70, '2024-11-27', 'Used 5 units of 1kg Chicken Meat (Batch: 20), Used 5 units of 200g Garlic Paste (Batch: 19)');
INSERT INTO `tblproductionmateriallogs` VALUES (71, '2024-11-27', 'Used 5 units of 1kg Chicken Meat (Batch: 20), Used 5 units of 200g Garlic Paste (Batch: 19)');
INSERT INTO `tblproductionmateriallogs` VALUES (72, '2024-11-27', 'Used 5 units of 1kg Chicken Meat (Batch: 20), Used 5 units of 500g Ground Beef (Batch: 3)');
INSERT INTO `tblproductionmateriallogs` VALUES (73, '2024-11-27', 'Reverted 5 units of material: 1kg Chicken Meat');
INSERT INTO `tblproductionmateriallogs` VALUES (74, '2024-11-27', 'Reverted 5 units of material: 200g Garlic Paste');
INSERT INTO `tblproductionmateriallogs` VALUES (75, '2024-11-27', 'Used 5 units of 1kg Chicken Meat (Batch: 20), Used 5 units of 500g Ground Beef (Batch: 16)');
INSERT INTO `tblproductionmateriallogs` VALUES (76, '2024-11-27', 'Reverted 5 units of material: 1kg Chicken Meat');
INSERT INTO `tblproductionmateriallogs` VALUES (77, '2024-11-27', 'Reverted 5 units of material: 500g Ground Beef');
INSERT INTO `tblproductionmateriallogs` VALUES (78, '2024-11-27', 'Used 5 units of 1kg Chicken Meat (Batch: 20), Used 5 units of 200g Garlic Paste (Batch: 19)');
INSERT INTO `tblproductionmateriallogs` VALUES (79, '2024-11-29', 'Used 5 units of 1kg Chicken Meat (Batch: 23), Used 5 units of 200g Garlic Paste (Batch: 22)');
INSERT INTO `tblproductionmateriallogs` VALUES (80, '2024-11-29', 'Used 1 units of 250g Ground Coriander (Batch: 8)');
INSERT INTO `tblproductionmateriallogs` VALUES (81, '2024-11-30', 'Used 3 units of 250g Ground Coriander (Batch: 8)');

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
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8 COLLATE = utf8_estonian_ci ROW_FORMAT = Compact;

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

-- ----------------------------
-- Table structure for tblrawmats
-- ----------------------------
DROP TABLE IF EXISTS `tblrawmats`;
CREATE TABLE `tblrawmats`  (
  `matId` int(11) NOT NULL AUTO_INCREMENT,
  `matName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `quantity` int(11) NULL DEFAULT NULL,
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`matId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tblrawmats
-- ----------------------------
INSERT INTO `tblrawmats` VALUES (3, '1kg Chicken Meat', -69, 'Meat Raw Materials');
INSERT INTO `tblrawmats` VALUES (6, '1 liter Soy Sauce', 0, 'Sauce Ingredients');
INSERT INTO `tblrawmats` VALUES (8, '1kg Chicken Breast', 0, 'Meat Raw Materials');
INSERT INTO `tblrawmats` VALUES (9, '1kg Lamb Shoulder', 0, 'Meat Raw Materials');
INSERT INTO `tblrawmats` VALUES (10, '500g Ground Beef', -10, 'Meat Raw Materials');
INSERT INTO `tblrawmats` VALUES (11, '2kg Beef Ribs', 0, 'Meat Raw Materials');
INSERT INTO `tblrawmats` VALUES (12, '1 liter Soy Sauce', 0, 'Sauce Ingredients');
INSERT INTO `tblrawmats` VALUES (13, '500g Tahini', 0, 'Sauce Ingredients');
INSERT INTO `tblrawmats` VALUES (14, '1 liter Olive Oils', 0, 'Sauce Ingredients');
INSERT INTO `tblrawmats` VALUES (15, '200g Garlic Paste', -59, 'Sauce Ingredients');
INSERT INTO `tblrawmats` VALUES (16, '2kg All-Purpose Flour', 0, 'Bread Ingredients');
INSERT INTO `tblrawmats` VALUES (17, '500g Yeast', 0, 'Bread Ingredients');
INSERT INTO `tblrawmats` VALUES (19, '1kg Whole Wheat Flour', 0, 'Bread Ingredients');
INSERT INTO `tblrawmats` VALUES (20, '1kg Tomatoes', 0, 'Vegetable Raw Materials');
INSERT INTO `tblrawmats` VALUES (21, '500g Lettuce', 0, 'Vegetable Raw Materials');
INSERT INTO `tblrawmats` VALUES (22, '1kg Cucumbers', 0, 'Vegetable Raw Materials');
INSERT INTO `tblrawmats` VALUES (23, '500g Onions', 0, 'Vegetable Raw Materials');
INSERT INTO `tblrawmats` VALUES (24, '200g Cumin Powder', 0, 'Spices and Seasonings');
INSERT INTO `tblrawmats` VALUES (25, '100g Paprika', 0, 'Spices and Seasonings');
INSERT INTO `tblrawmats` VALUES (26, '250g Ground Coriander', -36, 'Spices and Seasonings');
INSERT INTO `tblrawmats` VALUES (27, '150g Ground Black Pepper', 0, 'Spices and Seasonings');
INSERT INTO `tblrawmats` VALUES (28, 'Sibuyas', 0, 'Vegetable Raw Materials');
INSERT INTO `tblrawmats` VALUES (29, 'Kamatis', 0, 'Vegetable Raw Materials');
INSERT INTO `tblrawmats` VALUES (30, 'Burger Patty', 0, 'Meat Raw Materials');
INSERT INTO `tblrawmats` VALUES (31, 'Bawang', 0, 'Vegetable Raw Materials');

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
  PRIMARY KEY (`sales_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tblsales
-- ----------------------------
INSERT INTO `tblsales` VALUES (1, 9, 'Jericho', 'Calamba, Laguna', '11-28-2024', 'Cooked Shawarma Chicken ', 'Cooked Chicken Shawarma 1kg', 'COD', 'ORD-1732780576020', '1005', '5', '', '11-28-2024 15:56', '11-28-2024 15:57', '5025', '5025', '098-ASD');
INSERT INTO `tblsales` VALUES (2, 9, 'Jericho', 'Calamba, Laguna', '11-28-2024', 'Cooked Shawarma Chicken ', 'Cooked Chicken Shawarma 1kg', 'COD', 'ORD-1732780972115', '1005', '1', '', '11-28-2024 16:03', '11-28-2024 16:03', '1005', '1005', '098-ASD');

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
INSERT INTO `tblsupplierrawmats` VALUES (22, 6, 58.90);
INSERT INTO `tblsupplierrawmats` VALUES (22, 16, 5.85);
INSERT INTO `tblsupplierrawmats` VALUES (22, 17, 59.85);
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
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

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
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tblusers
-- ----------------------------
INSERT INTO `tblusers` VALUES (1, 'admin', 'password', 1);
INSERT INTO `tblusers` VALUES (2, 'data', 'password', 2);
INSERT INTO `tblusers` VALUES (3, 'sales', 'password', 3);
INSERT INTO `tblusers` VALUES (8, 'liam', 'password', 4);
INSERT INTO `tblusers` VALUES (9, 'jericho', 'password', 4);
INSERT INTO `tblusers` VALUES (10, 'cinco', 'password', 4);
INSERT INTO `tblusers` VALUES (11, 'sam', 'mangubat', 1);
INSERT INTO `tblusers` VALUES (14, 'Echo', 'password', 4);
INSERT INTO `tblusers` VALUES (18, 'Sammy', 'password', 4);
INSERT INTO `tblusers` VALUES (19, 'cinco19', 'cinco', 1);
INSERT INTO `tblusers` VALUES (20, 'yam', 'yam', 4);
INSERT INTO `tblusers` VALUES (22, 'Raniel', 'password', 4);
INSERT INTO `tblusers` VALUES (24, 'sho', 'password', 4);
INSERT INTO `tblusers` VALUES (25, 'Kim', 'password', 4);

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
INSERT INTO `tblvehicle` VALUES ('DA78912', 'Jonathan', 'Motor', 0);
INSERT INTO `tblvehicle` VALUES ('AB021A', 'Edmond', 'Motor', 0);
INSERT INTO `tblvehicle` VALUES ('123123', 'Tyron', 'Motor', 1);
INSERT INTO `tblvehicle` VALUES ('ABCABC', 'Gerric', 'Motor', 1);
INSERT INTO `tblvehicle` VALUES ('098-ASD', 'Joseph', 'Car Wigo', 0);

SET FOREIGN_KEY_CHECKS = 1;
