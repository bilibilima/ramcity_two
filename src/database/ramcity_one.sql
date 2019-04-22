/*
 Navicat Premium Data Transfer

 Source Server         : small
 Source Server Type    : MySQL
 Source Server Version : 50625
 Source Host           : localhost:3306
 Source Schema         : ramcity

 Target Server Type    : MySQL
 Target Server Version : 50625
 File Encoding         : 65001

 Date: 22/04/2019 16:30:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for food
-- ----------------------------
DROP TABLE IF EXISTS `food`;
CREATE TABLE `food`  (
  `foodId` int(11) NOT NULL AUTO_INCREMENT,
  `ftypeId` int(11) NOT NULL,
  `writeId` int(11) NOT NULL,
  `foodName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `foodPhoto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`foodId`) USING BTREE,
  INDEX `ftypeId`(`ftypeId`) USING BTREE,
  INDEX `fwriteId`(`writeId`) USING BTREE,
  CONSTRAINT `ftypeId` FOREIGN KEY (`ftypeId`) REFERENCES `foodtype` (`ftypeId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fwriteId` FOREIGN KEY (`writeId`) REFERENCES `write` (`writeId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of food
-- ----------------------------
INSERT INTO `food` VALUES (1, 1, 3, '马蹄糕', 'F:/Code/J2EE/ramcity/WebContent/images/gz_food_01.jpg');

-- ----------------------------
-- Table structure for foodtype
-- ----------------------------
DROP TABLE IF EXISTS `foodtype`;
CREATE TABLE `foodtype`  (
  `ftypeId` int(11) NOT NULL,
  `foodType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`ftypeId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of foodtype
-- ----------------------------
INSERT INTO `foodtype` VALUES (1, '风味小吃');
INSERT INTO `foodtype` VALUES (2, '甜点饮品');
INSERT INTO `foodtype` VALUES (3, '特色美味');

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message`  (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `tel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `messTime` datetime(0) NULL,
  `messType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`mid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES (1, '15555556666', '男', '杨信创', '你们介绍的信息很完整，谢谢你们', '2019-04-22 16:21:57', '表扬');
INSERT INTO `message` VALUES (2, '16666667777', '女', '吴佳佳', '你们应该在多找些美丽的照片', '2019-04-22 16:22:58', '建议');
INSERT INTO `message` VALUES (3, '17777778888', '男', '陆家学', '你们小蛮腰电视塔的照片较模糊', '2019-04-22 16:23:54', '批评');
INSERT INTO `message` VALUES (4, '18888889999', '男', '独孤九剑', '你们介绍的地方很漂亮，但是我去不了', '2019-04-22 16:24:48', '举报');

-- ----------------------------
-- Table structure for notic
-- ----------------------------
DROP TABLE IF EXISTS `notic`;
CREATE TABLE `notic`  (
  `noticId` int(11) NOT NULL AUTO_INCREMENT,
  `noticName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `noticText` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `noticTime` datetime(0) NULL,
  PRIMARY KEY (`noticId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of notic
-- ----------------------------
INSERT INTO `notic` VALUES (1, '欢迎您', '非常欢迎各位游客的观看，如果喜欢，就请联系我们，为我们积极留言建议，若有不对的地方，请批评我们，若发现违法犯罪的信息，请举报', '2019-04-22 16:28:13');

-- ----------------------------
-- Table structure for people
-- ----------------------------
DROP TABLE IF EXISTS `people`;
CREATE TABLE `people`  (
  `peopleId` int(11) NOT NULL AUTO_INCREMENT,
  `peopleName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `passWord` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` int(11) NOT NULL,
  `qq` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `mail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `addrss` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`peopleId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of people
-- ----------------------------
INSERT INTO `people` VALUES (1, '小一', '123', 1, '1799111111', 'conf@qq.com', '广西钦州');
INSERT INTO `people` VALUES (2, '小二', '123', 1, '1799222222', 'setof@qq.com', '广西钦州');
INSERT INTO `people` VALUES (3, '小三', '123', 1, '1799333333', 'bitef@qq.com', '广西钦州');
INSERT INTO `people` VALUES (4, '小四', '123', 1, '1799444444', 'uiui@qq.com', '广西钦州');
INSERT INTO `people` VALUES (5, '客一', '456', 2, '2792111111', 'keone@qq.com', '广西钦州');
INSERT INTO `people` VALUES (6, '客二', '456', 2, '2792222222', 'ketwo@qq.com', '广西钦州');
INSERT INTO `people` VALUES (7, '客三', '456', 2, '2792333333', 'kethree@qq.com', '广西钦州');
INSERT INTO `people` VALUES (8, '客四', '456', 2, '2792444444', 'kefour@qq.com', '广西钦州');

-- ----------------------------
-- Table structure for spots
-- ----------------------------
DROP TABLE IF EXISTS `spots`;
CREATE TABLE `spots`  (
  `spotsId` int(11) NOT NULL AUTO_INCREMENT,
  `stypeId` int(11) NOT NULL,
  `writeId` int(11) NOT NULL,
  `spotsName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `spotsImage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`spotsId`) USING BTREE,
  INDEX `stypeId`(`stypeId`) USING BTREE,
  INDEX `swriteId`(`writeId`) USING BTREE,
  CONSTRAINT `stypeId` FOREIGN KEY (`stypeId`) REFERENCES `spotstype` (`stypeId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `swriteId` FOREIGN KEY (`writeId`) REFERENCES `write` (`writeId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of spots
-- ----------------------------
INSERT INTO `spots` VALUES (1, 1, 1, '广州塔', 'F:/Code/J2EE/ramcity/WebContent/images/gz_place_01.jpg');
INSERT INTO `spots` VALUES (2, 2, 2, '陈家祠 ', 'F:/Code/J2EE/ramcity/WebContent/images/gz_history_01.jpg');

-- ----------------------------
-- Table structure for spotstype
-- ----------------------------
DROP TABLE IF EXISTS `spotstype`;
CREATE TABLE `spotstype`  (
  `stypeId` int(11) NOT NULL,
  `spotsType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`stypeId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of spotstype
-- ----------------------------
INSERT INTO `spotstype` VALUES (1, '观光游览');
INSERT INTO `spotstype` VALUES (2, '历史古迹');
INSERT INTO `spotstype` VALUES (3, '文学艺术');
INSERT INTO `spotstype` VALUES (4, '现代都市');

-- ----------------------------
-- Table structure for team
-- ----------------------------
DROP TABLE IF EXISTS `team`;
CREATE TABLE `team`  (
  `teamId` int(11) NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`teamId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of team
-- ----------------------------
INSERT INTO `team` VALUES (1, '广西民族师范学院\r\n开发人员：\r\n武文霖\r\n马礼庆\r\n马德权');

-- ----------------------------
-- Table structure for write
-- ----------------------------
DROP TABLE IF EXISTS `write`;
CREATE TABLE `write`  (
  `writeId` int(11) NOT NULL AUTO_INCREMENT,
  `wtype` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `writeTime` datetime(0) NULL,
  `writeTitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `writeText` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `issuer` int(11) NOT NULL,
  PRIMARY KEY (`writeId`) USING BTREE,
  INDEX `issuer`(`issuer`) USING BTREE,
  CONSTRAINT `issuer` FOREIGN KEY (`issuer`) REFERENCES `people` (`peopleId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of write
-- ----------------------------
INSERT INTO `write` VALUES (1, '景点', '2019-04-22 15:20:01', '广州塔', '广州塔（英语：Canton Tower）又称广州新电视塔，昵称小蛮腰。位于广州市海珠区（艺洲岛）赤岗塔附近，距离珠江南岸125米，与珠江新城、花城广场、海心沙岛隔江相望。广州塔塔身主体高454米，天线桅杆高146米，总高度600米。是中国第一高塔，世界第二高塔，仅次于东京晴空塔，是国家AAAA级旅游景区。\r\n广州塔塔身168~334.4米处设有“蜘蛛侠栈道”，是世界最高最长的空中漫步云梯 。塔身422.8米处设有旋转餐厅，是世界最高的旋转餐厅  。塔身顶部450~454米处设有摩天轮，是世界最高摩天轮 。天线桅杆455~485米处设有“极速云霄”速降游乐项目，是世界最高的垂直速降游乐项目  。天线桅杆488米处设有户外摄影观景平台，是世界最高的户外观景平台，超越了迪拜哈利法塔的442米室外观景平台，以及加拿大国家电视塔447米的“天空之盖”的高度  。\r\n广州塔隶属广州城投集团，由广州市建筑集团有限公司和上海建工集团负责施工，总建筑面积114054平方米，2009年9月竣工，2010年9月30日正式对外开放，2010年10月1日正式公开售票接待游客   。广州塔有5个功能区和多种游乐设施，包括户外观景平台、摩天轮、极速云霄游乐项目，有2个观光大厅，有悬空走廊，天梯，4D和3D动感影院，中西美食，会展设施，购物商场及科普展示厅。', 1);
INSERT INTO `write` VALUES (2, '景点', '2019-04-22 15:21:42', '陈家祠 ', '这座清代宗祠又被称为“陈氏书院”，是广东地区规模最大、装饰华丽、保存完好的传统岭南祠堂式建筑，被誉为“岭南建筑艺术明珠”。到这里来，除了欣赏它那集木雕、砖雕、石雕、灰塑、陶塑、铜铁铸、彩绘于一体的广东民间建筑装饰艺术，还别忘了藏于它腹内的广东民间工艺博物馆。游客可以在这里欣赏到《广东传统雕刻艺术》、《广东象牙雕刻艺术》、《广东刺绣》、《百年陈氏书院》、《旧广州家居》等常设展览。', 1);
INSERT INTO `write` VALUES (3, '美食', '2019-04-22 15:24:13', '马蹄糕', '马蹄糕是广东地区传统糕类名点，因为用荸荠粉制作而得名，因荸荠又名马蹄。此品在广州流行已久，但以泮溪酒家所制最为有名。该酒家地处泮圹，是盛产马蹄的地方。所产的马蹄粉，粉质细腻，结晶体大，制成成品质量亦佳。色泽茶黄，煎后金黄色，呈半透明状，可折而不裂不断，软、滑、爽、韧融为一起，味道香甜。', 1);

SET FOREIGN_KEY_CHECKS = 1;
