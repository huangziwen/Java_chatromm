/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : chat

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 09/05/2022 21:07:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for conversation
-- ----------------------------
DROP TABLE IF EXISTS `conversation`;
CREATE TABLE `conversation`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `from` bigint(20) NULL DEFAULT NULL COMMENT '发送者',
  `to` bigint(20) NULL DEFAULT NULL COMMENT '接受者',
  `type` tinyint(4) NULL DEFAULT NULL COMMENT '1 私聊 2 群聊',
  `created_at` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 294 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '聊天会话' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of conversation
-- ----------------------------
INSERT INTO `conversation` VALUES (294, 797, 796, 1, '2022-05-09 20:55:59');
INSERT INTO `conversation` VALUES (295, 796, 797, 1, '2022-05-09 20:56:02');
INSERT INTO `conversation` VALUES (296, 798, 796, 1, '2022-05-09 21:04:35');
INSERT INTO `conversation` VALUES (297, 796, 798, 1, '2022-05-09 21:04:39');

-- ----------------------------
-- Table structure for friend
-- ----------------------------
DROP TABLE IF EXISTS `friend`;
CREATE TABLE `friend`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户ID',
  `friend_id` bigint(20) NULL DEFAULT NULL COMMENT '好友用户ID',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '状态：0-请求添加好友 1-通过 2-拒绝',
  `group_id` bigint(20) NULL DEFAULT NULL COMMENT '分组ID',
  `created_at` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 446 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '好友' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of friend
-- ----------------------------
INSERT INTO `friend` VALUES (446, 796, 796, NULL, 0, 849, '2022-05-09 20:55:09');
INSERT INTO `friend` VALUES (447, 796, 797, NULL, 1, 849, '2022-05-09 20:55:45');
INSERT INTO `friend` VALUES (448, 797, 796, NULL, 1, 850, '2022-05-09 20:55:54');
INSERT INTO `friend` VALUES (449, 796, 798, NULL, 1, 849, '2022-05-09 21:03:18');
INSERT INTO `friend` VALUES (450, 798, 796, NULL, 1, 852, '2022-05-09 21:04:31');

-- ----------------------------
-- Table structure for friend_group
-- ----------------------------
DROP TABLE IF EXISTS `friend_group`;
CREATE TABLE `friend_group`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '分组名称',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户ID',
  `can_deleted` tinyint(4) NULL DEFAULT 1 COMMENT '是否可删除：0-否 1-是',
  `created_at` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 849 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '好友分组' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of friend_group
-- ----------------------------
INSERT INTO `friend_group` VALUES (849, '我的好友', 796, 1, '2022-05-09 20:27:16');
INSERT INTO `friend_group` VALUES (850, '我的好友', 797, 1, '2022-05-09 20:54:36');
INSERT INTO `friend_group` VALUES (851, '我的好友', 798, 1, '2022-05-09 21:00:42');
INSERT INTO `friend_group` VALUES (852, '朋友', 798, 1, '2022-05-09 21:04:25');

-- ----------------------------
-- Table structure for group
-- ----------------------------
DROP TABLE IF EXISTS `group`;
CREATE TABLE `group`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '群组名称',
  `leader` bigint(20) NULL DEFAULT NULL COMMENT '群主 用户ID',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '群图标',
  `introduction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '群简介',
  `notice` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '群公告',
  `group_id` bigint(20) NULL DEFAULT NULL COMMENT '分组ID',
  `created_at` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '群组' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of group
-- ----------------------------

-- ----------------------------
-- Table structure for group_group
-- ----------------------------
DROP TABLE IF EXISTS `group_group`;
CREATE TABLE `group_group`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '分组名称',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户ID',
  `created_at` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '群组分组' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of group_group
-- ----------------------------

-- ----------------------------
-- Table structure for group_message
-- ----------------------------
DROP TABLE IF EXISTS `group_message`;
CREATE TABLE `group_message`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '消息内容',
  `from` bigint(20) NULL DEFAULT NULL COMMENT '发送用户',
  `to` bigint(20) NULL DEFAULT NULL COMMENT '接受群组',
  `type_id` int(11) NULL DEFAULT NULL COMMENT '类型ID',
  `created_at` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '资源路径',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '群组消息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of group_message
-- ----------------------------

-- ----------------------------
-- Table structure for group_message__user
-- ----------------------------
DROP TABLE IF EXISTS `group_message__user`;
CREATE TABLE `group_message__user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `to` bigint(20) NULL DEFAULT NULL COMMENT '接收用户',
  `group_message_id` bigint(20) NULL DEFAULT NULL COMMENT '群组消息ID',
  `status` tinyint(4) NULL DEFAULT 0 COMMENT '接收状态 0未读 1已读',
  `created_at` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '群消息-用户' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of group_message__user
-- ----------------------------

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '消息内容',
  `from` bigint(20) NULL DEFAULT NULL COMMENT '发送用户ID',
  `to` bigint(20) NULL DEFAULT NULL COMMENT '接收用户ID',
  `type` int(11) NULL DEFAULT NULL COMMENT '消息类型：1-text 2-image 3-file',
  `status` tinyint(4) NULL DEFAULT 0 COMMENT '接收状态 0未读 1已读',
  `created_at` bigint(20) NULL DEFAULT NULL COMMENT '创建时间 毫秒',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '资源路径',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1580 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '私聊消息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES (1580, '你好', 796, 797, 1, 1, 1652100966481, '');
INSERT INTO `message` VALUES (1581, '🤣😎', 797, 796, 1, 1, 1652100972673, '');
INSERT INTO `message` VALUES (1582, '', 797, 796, 2, 1, 1652100977144, 'http://localhost:8808/slipper/images/c989450c-aa91-4c79-9ee0-7140ea8db307.jpg');
INSERT INTO `message` VALUES (1583, '哈哈哈', 798, 796, 1, 1, 1652101479270, '');

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'token',
  `expired_at` datetime NULL DEFAULT NULL COMMENT '到期时间',
  `updated_at` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'token' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES (796, 'c089febdbcb70794d844de841834fd26', '2022-05-10 06:27:19', '2022-05-09 20:27:19');
INSERT INTO `token` VALUES (798, '4694fc278d36446fa58417cf1a4796e1', '2022-05-10 07:03:36', '2022-05-09 21:03:36');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `salt` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '盐',
  `nickname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'Nice to meet you' COMMENT '昵称',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'http://resource.gumingchen.icu/images/slipper.jpeg' COMMENT '头像',
  `mobile` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `sex` tinyint(4) NULL DEFAULT 2 COMMENT '性别：0-女 1-男 2-保密',
  `created_at` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 796 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (796, 'test11', '617b05e1d3b6149669ce72806b26358ab9dc2015217bb7a293b7faa54958cb07', 'aVeRBP3VdXC8DejVU7kY', '小红', 'http://localhost:8808/slipper/images/8150daa2-98cd-4c3e-add3-5b2206712e39.jpg', NULL, 1, '2022-05-09 20:27:16');
INSERT INTO `user` VALUES (797, 'test22', '726c21cbc73c378a0af4c82b36a0533f920f243c6110514c4d8d936859b1b19d', '5jOu1Vzqs3m9z7YOLXWD', '小明', 'http://localhost:8808/slipper/images/c38bfd64-ca19-4f54-be2d-00aff7b56988.png', NULL, 1, '2022-05-09 20:54:36');
INSERT INTO `user` VALUES (798, 'test33', '8121b992e0a0678aa9afe6e4a249feb3aa63fd06b0e63aa45d79f69dd7d0c47d', '5AiJXtCmKhRcw2Zr9Jmv', 'Nice to meet you', 'http://resource.gumingchen.icu/images/slipper.jpeg', NULL, 2, '2022-05-09 21:00:42');

-- ----------------------------
-- Table structure for user__group
-- ----------------------------
DROP TABLE IF EXISTS `user__group`;
CREATE TABLE `user__group`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` bigint(20) NULL DEFAULT NULL COMMENT '群组ID',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户ID',
  `created_at` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户-群组 成员' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user__group
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
