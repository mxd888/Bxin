/*
Navicat MySQL Data Transfer

Source Server         : mxd
Source Server Version : 80013
Source Host           : localhost:3306
Source Database       : axin_db

Target Server Type    : MYSQL
Target Server Version : 80013
File Encoding         : 65001

Date: 2021-10-16 21:09:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `contact`
-- ----------------------------
DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `img` text NOT NULL,
  `name` text NOT NULL,
  `number` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contact
-- ----------------------------
INSERT INTO `contact` VALUES ('1', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg3.duitang.com%2Fuploads%2Fitem%2F201508%2F25%2F20150825223259_ds5rL.jpeg&refer=http%3A%2F%2Fimg3.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1636957427&t=bbe0a5b32f203136a17df3ea6093995d', 'A信', '18274366030');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone` (`phone`) USING BTREE,
  UNIQUE KEY `number` (`number`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '18274366030', 'damifan', '888', '15511090450', 'A信');

-- ----------------------------
-- Table structure for `weixinlist`
-- ----------------------------
DROP TABLE IF EXISTS `weixinlist`;
CREATE TABLE `weixinlist` (
  `id` int(11) NOT NULL,
  `titleimg` text NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `time` text NOT NULL,
  `showcode` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `number` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixinlist
-- ----------------------------
INSERT INTO `weixinlist` VALUES ('1', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg3.duitang.com%2Fuploads%2Fitem%2F201508%2F25%2F20150825223259_ds5rL.jpeg&refer=http%3A%2F%2Fimg3.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1636957427&t=bbe0a5b32f203136a17df3ea6093995d', '大米', '大米说', '2021-01-01', 'https://img-blog.csdnimg.cn/20201014180756928.png?x-oss-process=image/resize,m_fixed,h_64,w_64', '18274366030');
