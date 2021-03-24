/*
Navicat MySQL Data Transfer

Source Server         : mysql_lunwen
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : user_info

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2020-09-28 09:19:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) NOT NULL,
  `password` varchar(11) NOT NULL,
  `history` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('10', 'undefined', '000', '{\"time\":\"2020-09-27\",\"bookName\":\"都市古仙医\"}');
INSERT INTO `userinfo` VALUES ('11', 'undefined', '000', '{\"time\":\"2020-09-27\",\"bookName\":\"一剑独尊（又名：剑尊）\"}');
INSERT INTO `userinfo` VALUES ('12', 'undefined', '123', '{\"time\":\"2020-09-27\",\"bookName\":\"最强升级系统\"}');
INSERT INTO `userinfo` VALUES ('14', 'undefined', '123', '{\"time\":\"2020-09-27\",\"bookName\":\"最强升级系统\"}');
INSERT INTO `userinfo` VALUES ('29', '你', '000', '');
INSERT INTO `userinfo` VALUES ('30', '你', '000', '{\"time\":\"2020-09-27T10:45:45.001Z\",\"bookName\":\"天才神医混都市\",\"id\":11282750}');
INSERT INTO `userinfo` VALUES ('31', '你', '000', '{\"time\":\"2020-09-27T10:52:54.775Z\",\"bookName\":\"天才神医混都市\",\"id\":11282750}');
INSERT INTO `userinfo` VALUES ('32', '你', '000', '{\"time\":\"2020-09-27T10:52:58.169Z\",\"bookName\":\"天才神医混都市\",\"id\":11282750}');
INSERT INTO `userinfo` VALUES ('33', '你', '000', '{\"time\":\"2020-09-27T11:02:13.708Z\",\"bookName\":\"傲世狂婿\",\"id\":12373627}');
INSERT INTO `userinfo` VALUES ('34', '你', '000', '{\"time\":\"2020-09-27T11:02:15.714Z\",\"bookName\":\"傲世狂婿\",\"id\":12373627}');
INSERT INTO `userinfo` VALUES ('35', '你', '000', '{\"time\":\"2020-09-27T11:02:15.850Z\",\"bookName\":\"傲世狂婿\",\"id\":12373627}');
INSERT INTO `userinfo` VALUES ('36', '你', '000', '{\"time\":\"2020-09-27T11:02:15.997Z\",\"bookName\":\"傲世狂婿\",\"id\":12373627}');
INSERT INTO `userinfo` VALUES ('37', '你', '000', '{\"time\":\"2020-09-27T11:02:16.108Z\",\"bookName\":\"傲世狂婿\",\"id\":12373627}');
INSERT INTO `userinfo` VALUES ('42', '大大炮', '333', null);
INSERT INTO `userinfo` VALUES ('43', '大大炮', '333', null);
INSERT INTO `userinfo` VALUES ('44', '大大炮', '333', '{\"time\":\"2020-09-27T12:27:04.745Z\",\"bookName\":\"天才神医混都市\",\"id\":11282750}');
INSERT INTO `userinfo` VALUES ('45', '大大炮', '333', '{\"time\":\"2020-09-27T12:35:28.293Z\",\"bookName\":\"猥琐发育\",\"id\":12140539}');
INSERT INTO `userinfo` VALUES ('46', '大大炮', '333', '{\"time\":\"2020-09-27T12:35:32.443Z\",\"bookName\":\"傲世狂婿\",\"id\":12373627}');
INSERT INTO `userinfo` VALUES ('47', '大大炮', '333', '{\"time\":\"2020-09-27T12:35:32.590Z\",\"bookName\":\"傲世狂婿\",\"id\":12373627}');
INSERT INTO `userinfo` VALUES ('48', '大大炮', '333', '{\"time\":\"2020-09-27T12:35:32.710Z\",\"bookName\":\"傲世狂婿\",\"id\":12373627}');
INSERT INTO `userinfo` VALUES ('49', '大大炮', '333', '{\"time\":\"2020-09-27T12:35:32.838Z\",\"bookName\":\"傲世狂婿\",\"id\":12373627}');
INSERT INTO `userinfo` VALUES ('50', '大大炮', '333', '{\"time\":\"2020-09-27T12:35:32.972Z\",\"bookName\":\"傲世狂婿\",\"id\":12373627}');
INSERT INTO `userinfo` VALUES ('51', '阿查', '111', null);
INSERT INTO `userinfo` VALUES ('52', '阿查', '111', '{\"time\":\"2020-09-27T12:36:41.230Z\",\"bookName\":\"绝世武魂\",\"id\":12099859}');
INSERT INTO `userinfo` VALUES ('53', '阿查', '111', '{\"time\":\"2020-09-27T12:38:17.300Z\",\"bookName\":\"开局一个风华绝代女战神\",\"id\":12373616}');
