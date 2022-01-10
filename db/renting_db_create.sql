/*
 Navicat Premium Data Transfer

 Source Server         : 好租客
 Source Server Type    : MySQL
 Source Server Version : 50723
 Source Host           : localhost:8889
 Source Schema         : haozk1

 Target Server Type    : MySQL
 Target Server Version : 50723
 File Encoding         : 65001

 Date: 01/06/2019 15:28:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admins
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `user_pass` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of admins
-- ----------------------------
BEGIN;
INSERT INTO `admins` VALUES (1, 'admin', 'admin', '2019-05-12 06:46:01', '2019-05-12 06:46:01');
COMMIT;

-- ----------------------------
-- Table structure for areas
-- ----------------------------
DROP TABLE IF EXISTS `areas`;
CREATE TABLE `areas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `city_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `area` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `area_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `street` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `street_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `community` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `community_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76941 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `tags` enum('') COLLATE utf8_bin DEFAULT NULL,
  `user_code` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `user_gender` enum('1','0') COLLATE utf8_bin DEFAULT '0',
  `user_id` int(11) DEFAULT NULL,
  `user_pass` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `user_phone` int(11) DEFAULT NULL,
  `phone_cer` tinyint(1) DEFAULT '0',
  `user_avatar` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `user_nick` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `user_lock` tinyint(1) DEFAULT '0',
  `creation_time` time DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES (4, 'admin', NULL, NULL, '1', NULL, 'admin', NULL, 0, NULL, 'xff', 1, NULL, '2019-05-11 07:43:03', '2019-05-12 07:12:53');
INSERT INTO `users` VALUES (5, 'test2', NULL, NULL, '1', NULL, 'test2', NULL, 0, NULL, 'xff', 1, NULL, '2019-05-11 07:43:03', '2019-05-12 07:12:53');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
