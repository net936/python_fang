/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50744
 Source Host           : localhost:3306
 Source Schema         : python_fang

 Target Server Type    : MySQL
 Target Server Version : 50744
 File Encoding         : 65001

 Date: 02/07/2024 19:39:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 73 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add user', 7, 'add_user');
INSERT INTO `auth_permission` VALUES (26, 'Can change user', 7, 'change_user');
INSERT INTO `auth_permission` VALUES (27, 'Can delete user', 7, 'delete_user');
INSERT INTO `auth_permission` VALUES (28, 'Can view user', 7, 'view_user');
INSERT INTO `auth_permission` VALUES (29, 'Can add classification', 8, 'add_classification');
INSERT INTO `auth_permission` VALUES (30, 'Can change classification', 8, 'change_classification');
INSERT INTO `auth_permission` VALUES (31, 'Can delete classification', 8, 'delete_classification');
INSERT INTO `auth_permission` VALUES (32, 'Can view classification', 8, 'view_classification');
INSERT INTO `auth_permission` VALUES (33, 'Can add thing', 9, 'add_thing');
INSERT INTO `auth_permission` VALUES (34, 'Can change thing', 9, 'change_thing');
INSERT INTO `auth_permission` VALUES (35, 'Can delete thing', 9, 'delete_thing');
INSERT INTO `auth_permission` VALUES (36, 'Can view thing', 9, 'view_thing');
INSERT INTO `auth_permission` VALUES (37, 'Can add comment', 10, 'add_comment');
INSERT INTO `auth_permission` VALUES (38, 'Can change comment', 10, 'change_comment');
INSERT INTO `auth_permission` VALUES (39, 'Can delete comment', 10, 'delete_comment');
INSERT INTO `auth_permission` VALUES (40, 'Can view comment', 10, 'view_comment');
INSERT INTO `auth_permission` VALUES (41, 'Can add record', 11, 'add_record');
INSERT INTO `auth_permission` VALUES (42, 'Can change record', 11, 'change_record');
INSERT INTO `auth_permission` VALUES (43, 'Can delete record', 11, 'delete_record');
INSERT INTO `auth_permission` VALUES (44, 'Can view record', 11, 'view_record');
INSERT INTO `auth_permission` VALUES (45, 'Can add login log', 12, 'add_loginlog');
INSERT INTO `auth_permission` VALUES (46, 'Can change login log', 12, 'change_loginlog');
INSERT INTO `auth_permission` VALUES (47, 'Can delete login log', 12, 'delete_loginlog');
INSERT INTO `auth_permission` VALUES (48, 'Can view login log', 12, 'view_loginlog');
INSERT INTO `auth_permission` VALUES (49, 'Can add op log', 13, 'add_oplog');
INSERT INTO `auth_permission` VALUES (50, 'Can change op log', 13, 'change_oplog');
INSERT INTO `auth_permission` VALUES (51, 'Can delete op log', 13, 'delete_oplog');
INSERT INTO `auth_permission` VALUES (52, 'Can view op log', 13, 'view_oplog');
INSERT INTO `auth_permission` VALUES (53, 'Can add error log', 14, 'add_errorlog');
INSERT INTO `auth_permission` VALUES (54, 'Can change error log', 14, 'change_errorlog');
INSERT INTO `auth_permission` VALUES (55, 'Can delete error log', 14, 'delete_errorlog');
INSERT INTO `auth_permission` VALUES (56, 'Can view error log', 14, 'view_errorlog');
INSERT INTO `auth_permission` VALUES (57, 'Can add order', 15, 'add_order');
INSERT INTO `auth_permission` VALUES (58, 'Can change order', 15, 'change_order');
INSERT INTO `auth_permission` VALUES (59, 'Can delete order', 15, 'delete_order');
INSERT INTO `auth_permission` VALUES (60, 'Can view order', 15, 'view_order');
INSERT INTO `auth_permission` VALUES (61, 'Can add ad', 16, 'add_ad');
INSERT INTO `auth_permission` VALUES (62, 'Can change ad', 16, 'change_ad');
INSERT INTO `auth_permission` VALUES (63, 'Can delete ad', 16, 'delete_ad');
INSERT INTO `auth_permission` VALUES (64, 'Can view ad', 16, 'view_ad');
INSERT INTO `auth_permission` VALUES (65, 'Can add notice', 17, 'add_notice');
INSERT INTO `auth_permission` VALUES (66, 'Can change notice', 17, 'change_notice');
INSERT INTO `auth_permission` VALUES (67, 'Can delete notice', 17, 'delete_notice');
INSERT INTO `auth_permission` VALUES (68, 'Can view notice', 17, 'view_notice');
INSERT INTO `auth_permission` VALUES (69, 'Can add feedback', 18, 'add_feedback');
INSERT INTO `auth_permission` VALUES (70, 'Can change feedback', 18, 'change_feedback');
INSERT INTO `auth_permission` VALUES (71, 'Can delete feedback', 18, 'delete_feedback');
INSERT INTO `auth_permission` VALUES (72, 'Can view feedback', 18, 'view_feedback');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for b_ad
-- ----------------------------
DROP TABLE IF EXISTS `b_ad`;
CREATE TABLE `b_ad`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_ad
-- ----------------------------
INSERT INTO `b_ad` VALUES (1, 'ad/1719840564979.jpeg', 'https://m3u8player.org', '2024-07-01 21:29:27.537117');
INSERT INTO `b_ad` VALUES (2, 'ad/1719840573691.jpeg', 'https://m3u8player.org', '2024-07-01 21:29:35.801617');

-- ----------------------------
-- Table structure for b_classification
-- ----------------------------
DROP TABLE IF EXISTS `b_classification`;
CREATE TABLE `b_classification`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_classification
-- ----------------------------
INSERT INTO `b_classification` VALUES (1, '四室以上', '2024-07-01 19:55:12.727776');
INSERT INTO `b_classification` VALUES (2, '四室', '2024-07-01 19:55:22.099321');
INSERT INTO `b_classification` VALUES (3, '三室', '2024-07-01 19:55:28.785633');
INSERT INTO `b_classification` VALUES (4, '二室', '2024-07-01 19:55:36.194236');
INSERT INTO `b_classification` VALUES (5, '一室', '2024-07-01 19:55:51.604375');

-- ----------------------------
-- Table structure for b_comment
-- ----------------------------
DROP TABLE IF EXISTS `b_comment`;
CREATE TABLE `b_comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comment_time` datetime(6) NULL DEFAULT NULL,
  `like_count` int(11) NOT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_comment_thing_id_57ab492b_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_comment_user_id_46f0670f_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_comment_thing_id_57ab492b_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_comment_user_id_46f0670f_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_comment
-- ----------------------------
INSERT INTO `b_comment` VALUES (1, '11111', '2024-07-01 21:29:06.534577', 0, 2, 4);
INSERT INTO `b_comment` VALUES (2, '222222', '2024-07-01 21:29:08.076963', 0, 2, 4);

-- ----------------------------
-- Table structure for b_error_log
-- ----------------------------
DROP TABLE IF EXISTS `b_error_log`;
CREATE TABLE `b_error_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_error_log
-- ----------------------------

-- ----------------------------
-- Table structure for b_feedback
-- ----------------------------
DROP TABLE IF EXISTS `b_feedback`;
CREATE TABLE `b_feedback`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_feedback
-- ----------------------------
INSERT INTO `b_feedback` VALUES (1, '测试反馈221111', '哈哈哈哈', '刘文静', '111011@gmail.com', '5551651534', '2024-07-01 21:30:37.043542');
INSERT INTO `b_feedback` VALUES (2, '测试反馈2211099', '哈哈哈哈哈', '王蒙', '999911@gmail.com', '98877665', '2024-07-01 21:31:49.640306');

-- ----------------------------
-- Table structure for b_login_log
-- ----------------------------
DROP TABLE IF EXISTS `b_login_log`;
CREATE TABLE `b_login_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_login_log
-- ----------------------------
INSERT INTO `b_login_log` VALUES (1, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-07-01 19:52:30.685307');
INSERT INTO `b_login_log` VALUES (2, 'ddd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-07-01 21:08:55.013346');
INSERT INTO `b_login_log` VALUES (3, 'admin123', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-07-01 21:39:56.977848');
INSERT INTO `b_login_log` VALUES (4, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-07-01 21:40:15.904973');
INSERT INTO `b_login_log` VALUES (5, 'ddd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-07-02 19:34:07.162024');

-- ----------------------------
-- Table structure for b_notice
-- ----------------------------
DROP TABLE IF EXISTS `b_notice`;
CREATE TABLE `b_notice`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_notice
-- ----------------------------
INSERT INTO `b_notice` VALUES (1, '测试通知', '下周房价会上涨10%', '2024-07-01 21:30:00.661961');
INSERT INTO `b_notice` VALUES (2, '测试通知22', '哈哈哈哈', '2024-07-01 21:30:07.402478');

-- ----------------------------
-- Table structure for b_op_log
-- ----------------------------
DROP TABLE IF EXISTS `b_op_log`;
CREATE TABLE `b_op_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `re_ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_time` datetime(6) NULL DEFAULT NULL,
  `re_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `access_time` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1502 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_op_log
-- ----------------------------
INSERT INTO `b_op_log` VALUES (1, '127.0.0.1', '2024-07-01 19:51:50.202994', '/myapp/index/user/info', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (2, '127.0.0.1', '2024-07-01 19:51:50.233220', '/myapp/index/user/info', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (3, '127.0.0.1', '2024-07-01 19:51:50.260145', '/myapp/index/user/info', 'GET', NULL, '89');
INSERT INTO `b_op_log` VALUES (4, '127.0.0.1', '2024-07-01 19:51:55.511621', '/myapp/index/user/info', 'GET', NULL, '5341');
INSERT INTO `b_op_log` VALUES (5, '127.0.0.1', '2024-07-01 19:52:26.229365', '/myapp/admin/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (6, '127.0.0.1', '2024-07-01 19:52:26.233110', '/myapp/admin/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (7, '127.0.0.1', '2024-07-01 19:52:30.695346', '/myapp/admin/adminLogin', 'POST', NULL, '56');
INSERT INTO `b_op_log` VALUES (8, '127.0.0.1', '2024-07-01 19:52:30.991024', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (9, '127.0.0.1', '2024-07-01 19:52:30.994032', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (10, '127.0.0.1', '2024-07-01 19:52:32.722507', '/myapp/admin/user/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (11, '127.0.0.1', '2024-07-01 19:52:40.282120', '/myapp/admin/user/create', 'POST', NULL, '64');
INSERT INTO `b_op_log` VALUES (12, '127.0.0.1', '2024-07-01 19:52:40.347166', '/myapp/admin/user/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (13, '127.0.0.1', '2024-07-01 19:52:56.761535', '/myapp/admin/user/create', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (14, '127.0.0.1', '2024-07-01 19:52:56.825428', '/myapp/admin/user/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (15, '127.0.0.1', '2024-07-01 19:53:08.197958', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (16, '127.0.0.1', '2024-07-01 19:55:12.733706', '/myapp/admin/classification/create', 'POST', NULL, '27');
INSERT INTO `b_op_log` VALUES (17, '127.0.0.1', '2024-07-01 19:55:12.806838', '/myapp/admin/classification/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (18, '127.0.0.1', '2024-07-01 19:55:22.112295', '/myapp/admin/classification/create', 'POST', NULL, '54');
INSERT INTO `b_op_log` VALUES (19, '127.0.0.1', '2024-07-01 19:55:22.187217', '/myapp/admin/classification/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (20, '127.0.0.1', '2024-07-01 19:55:28.792638', '/myapp/admin/classification/create', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (21, '127.0.0.1', '2024-07-01 19:55:28.850560', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (22, '127.0.0.1', '2024-07-01 19:55:36.203619', '/myapp/admin/classification/create', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (23, '127.0.0.1', '2024-07-01 19:55:36.265185', '/myapp/admin/classification/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (24, '127.0.0.1', '2024-07-01 19:55:51.617692', '/myapp/admin/classification/create', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (25, '127.0.0.1', '2024-07-01 19:55:51.662591', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (26, '127.0.0.1', '2024-07-01 19:56:00.965345', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (27, '127.0.0.1', '2024-07-01 19:56:00.968639', '/myapp/admin/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (28, '127.0.0.1', '2024-07-01 20:03:41.303882', '/myapp/admin/classification/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (29, '127.0.0.1', '2024-07-01 20:03:41.311159', '/myapp/admin/classification/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (30, '127.0.0.1', '2024-07-01 20:04:24.096822', '/myapp/admin/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (31, '127.0.0.1', '2024-07-01 20:04:24.148368', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (32, '127.0.0.1', '2024-07-01 20:05:07.391633', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (33, '127.0.0.1', '2024-07-01 20:05:07.401016', '/myapp/admin/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (34, '127.0.0.1', '2024-07-01 20:05:35.813610', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (35, '127.0.0.1', '2024-07-01 20:05:35.848135', '/myapp/admin/classification/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (36, '127.0.0.1', '2024-07-01 20:06:45.157776', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (37, '127.0.0.1', '2024-07-01 20:06:45.161056', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (38, '127.0.0.1', '2024-07-01 20:06:53.117369', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (39, '127.0.0.1', '2024-07-01 20:06:53.125606', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (40, '127.0.0.1', '2024-07-01 20:06:59.086617', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (41, '127.0.0.1', '2024-07-01 20:06:59.098150', '/myapp/admin/classification/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (42, '127.0.0.1', '2024-07-01 20:07:04.223521', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (43, '127.0.0.1', '2024-07-01 20:07:04.228488', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (44, '127.0.0.1', '2024-07-01 20:07:14.907443', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (45, '127.0.0.1', '2024-07-01 20:07:14.911017', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (46, '127.0.0.1', '2024-07-01 20:07:19.888038', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (47, '127.0.0.1', '2024-07-01 20:07:19.892324', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (48, '127.0.0.1', '2024-07-01 20:07:25.094015', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (49, '127.0.0.1', '2024-07-01 20:07:25.098515', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (50, '127.0.0.1', '2024-07-01 20:07:30.203769', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (51, '127.0.0.1', '2024-07-01 20:07:30.208091', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (52, '127.0.0.1', '2024-07-01 20:07:35.816464', '/myapp/admin/classification/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (53, '127.0.0.1', '2024-07-01 20:07:35.820461', '/myapp/admin/classification/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (54, '127.0.0.1', '2024-07-01 20:07:40.187879', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (55, '127.0.0.1', '2024-07-01 20:07:40.192308', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (56, '127.0.0.1', '2024-07-01 20:07:50.649915', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (57, '127.0.0.1', '2024-07-01 20:07:50.652689', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (58, '127.0.0.1', '2024-07-01 20:09:35.854731', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (59, '127.0.0.1', '2024-07-01 20:09:35.857714', '/myapp/admin/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (60, '127.0.0.1', '2024-07-01 20:09:38.264537', '/myapp/admin/classification/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (61, '127.0.0.1', '2024-07-01 20:09:38.882621', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (62, '127.0.0.1', '2024-07-01 20:09:38.887643', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (63, '127.0.0.1', '2024-07-01 20:11:24.156205', '/myapp/admin/thing/create', 'POST', NULL, '66');
INSERT INTO `b_op_log` VALUES (64, '127.0.0.1', '2024-07-01 20:11:24.292129', '/myapp/admin/thing/list', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (65, '127.0.0.1', '2024-07-01 20:12:01.813733', '/myapp/admin/thing/update', 'POST', NULL, '83');
INSERT INTO `b_op_log` VALUES (66, '127.0.0.1', '2024-07-01 20:12:01.929343', '/myapp/admin/thing/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (67, '127.0.0.1', '2024-07-01 20:12:21.813214', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (68, '127.0.0.1', '2024-07-01 20:12:21.835060', '/myapp/index/thing/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (69, '127.0.0.1', '2024-07-01 20:12:21.844870', '/myapp/index/thing/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (70, '127.0.0.1', '2024-07-01 20:12:21.922099', '/myapp/index/thing/list', 'GET', NULL, '129');
INSERT INTO `b_op_log` VALUES (71, '127.0.0.1', '2024-07-01 20:12:23.798375', '/myapp/index/thing/detail', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (72, '127.0.0.1', '2024-07-01 20:12:23.801525', '/myapp/index/thing/detail', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (73, '127.0.0.1', '2024-07-01 20:12:23.809333', '/myapp/index/thing/detail', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (74, '127.0.0.1', '2024-07-01 20:12:23.829989', '/myapp/index/thing/detail', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (75, '127.0.0.1', '2024-07-01 20:12:23.895334', '/myapp/index/thing/detail', 'GET', NULL, '120');
INSERT INTO `b_op_log` VALUES (76, '127.0.0.1', '2024-07-01 20:12:23.956325', '/myapp/index/thing/detail', 'GET', NULL, '181');
INSERT INTO `b_op_log` VALUES (77, '127.0.0.1', '2024-07-01 20:13:31.683939', '/myapp/admin/thing/update', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (78, '127.0.0.1', '2024-07-01 20:13:31.778249', '/myapp/admin/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (79, '127.0.0.1', '2024-07-01 20:13:35.667182', '/myapp/admin/ad/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (80, '127.0.0.1', '2024-07-01 20:13:35.677000', '/myapp/admin/ad/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (81, '127.0.0.1', '2024-07-01 20:13:35.697343', '/myapp/admin/ad/list', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (82, '127.0.0.1', '2024-07-01 20:13:35.725056', '/myapp/admin/ad/list', 'GET', NULL, '100');
INSERT INTO `b_op_log` VALUES (83, '127.0.0.1', '2024-07-01 20:13:35.732531', '/myapp/admin/ad/list', 'GET', NULL, '106');
INSERT INTO `b_op_log` VALUES (84, '127.0.0.1', '2024-07-01 20:13:35.822080', '/myapp/admin/ad/list', 'GET', NULL, '195');
INSERT INTO `b_op_log` VALUES (85, '127.0.0.1', '2024-07-01 20:17:53.891170', '/myapp/admin/thing/update', 'POST', NULL, '534');
INSERT INTO `b_op_log` VALUES (86, '127.0.0.1', '2024-07-01 20:17:53.995421', '/myapp/admin/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (87, '127.0.0.1', '2024-07-01 20:18:14.582989', '/upload/cover/1719836270958.jpeg', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (88, '127.0.0.1', '2024-07-01 20:19:50.930541', '/myapp/admin/thing/list', 'GET', NULL, '153');
INSERT INTO `b_op_log` VALUES (89, '127.0.0.1', '2024-07-01 20:19:59.845047', '/myapp/admin/thing/list', 'GET', NULL, '179');
INSERT INTO `b_op_log` VALUES (90, '127.0.0.1', '2024-07-01 20:20:37.285345', '/myapp/admin/thing/update', 'POST', NULL, '68');
INSERT INTO `b_op_log` VALUES (91, '127.0.0.1', '2024-07-01 20:20:37.544976', '/myapp/admin/thing/list', 'GET', NULL, '165');
INSERT INTO `b_op_log` VALUES (92, '127.0.0.1', '2024-07-01 20:20:42.346953', '/myapp/admin/thing/update', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (93, '127.0.0.1', '2024-07-01 20:20:42.604356', '/myapp/admin/thing/list', 'GET', NULL, '166');
INSERT INTO `b_op_log` VALUES (94, '127.0.0.1', '2024-07-01 20:20:55.669834', '/myapp/admin/thing/update', 'POST', NULL, '70');
INSERT INTO `b_op_log` VALUES (95, '127.0.0.1', '2024-07-01 20:20:55.970056', '/myapp/admin/thing/list', 'GET', NULL, '195');
INSERT INTO `b_op_log` VALUES (96, '127.0.0.1', '2024-07-01 20:21:02.037490', '/myapp/admin/thing/update', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (97, '127.0.0.1', '2024-07-01 20:21:02.293503', '/myapp/admin/thing/list', 'GET', NULL, '161');
INSERT INTO `b_op_log` VALUES (98, '127.0.0.1', '2024-07-01 20:21:09.392673', '/myapp/admin/thing/update', 'POST', NULL, '64');
INSERT INTO `b_op_log` VALUES (99, '127.0.0.1', '2024-07-01 20:21:09.647622', '/myapp/admin/thing/list', 'GET', NULL, '160');
INSERT INTO `b_op_log` VALUES (100, '127.0.0.1', '2024-07-01 20:21:16.569642', '/myapp/admin/thing/update', 'POST', NULL, '70');
INSERT INTO `b_op_log` VALUES (101, '127.0.0.1', '2024-07-01 20:21:16.870479', '/myapp/admin/thing/list', 'GET', NULL, '190');
INSERT INTO `b_op_log` VALUES (102, '127.0.0.1', '2024-07-01 20:21:26.406769', '/myapp/admin/thing/update', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (103, '127.0.0.1', '2024-07-01 20:21:26.700450', '/myapp/admin/thing/list', 'GET', NULL, '187');
INSERT INTO `b_op_log` VALUES (104, '127.0.0.1', '2024-07-01 20:21:35.320689', '/myapp/admin/thing/update', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (105, '127.0.0.1', '2024-07-01 20:21:35.600514', '/myapp/admin/thing/list', 'GET', NULL, '196');
INSERT INTO `b_op_log` VALUES (106, '127.0.0.1', '2024-07-01 20:21:41.130470', '/myapp/admin/thing/update', 'POST', NULL, '55');
INSERT INTO `b_op_log` VALUES (107, '127.0.0.1', '2024-07-01 20:21:41.389850', '/myapp/admin/thing/list', 'GET', NULL, '160');
INSERT INTO `b_op_log` VALUES (108, '127.0.0.1', '2024-07-01 20:21:47.171135', '/myapp/admin/thing/update', 'POST', NULL, '55');
INSERT INTO `b_op_log` VALUES (109, '127.0.0.1', '2024-07-01 20:21:47.417798', '/myapp/admin/thing/list', 'GET', NULL, '144');
INSERT INTO `b_op_log` VALUES (110, '127.0.0.1', '2024-07-01 20:21:53.280782', '/myapp/admin/thing/update', 'POST', NULL, '52');
INSERT INTO `b_op_log` VALUES (111, '127.0.0.1', '2024-07-01 20:21:53.522433', '/myapp/admin/thing/list', 'GET', NULL, '160');
INSERT INTO `b_op_log` VALUES (112, '127.0.0.1', '2024-07-01 20:21:58.263639', '/myapp/admin/thing/update', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (113, '127.0.0.1', '2024-07-01 20:21:58.500665', '/myapp/admin/thing/list', 'GET', NULL, '150');
INSERT INTO `b_op_log` VALUES (114, '127.0.0.1', '2024-07-01 20:22:06.328833', '/myapp/admin/thing/update', 'POST', NULL, '52');
INSERT INTO `b_op_log` VALUES (115, '127.0.0.1', '2024-07-01 20:22:06.601845', '/myapp/admin/thing/list', 'GET', NULL, '177');
INSERT INTO `b_op_log` VALUES (116, '127.0.0.1', '2024-07-01 20:22:13.261657', '/myapp/admin/thing/update', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (117, '127.0.0.1', '2024-07-01 20:22:13.550422', '/myapp/admin/thing/list', 'GET', NULL, '208');
INSERT INTO `b_op_log` VALUES (118, '127.0.0.1', '2024-07-01 20:22:18.202954', '/myapp/admin/thing/update', 'POST', NULL, '73');
INSERT INTO `b_op_log` VALUES (119, '127.0.0.1', '2024-07-01 20:22:18.412538', '/myapp/admin/thing/list', 'GET', NULL, '149');
INSERT INTO `b_op_log` VALUES (120, '127.0.0.1', '2024-07-01 20:22:37.782620', '/myapp/admin/thing/update', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (121, '127.0.0.1', '2024-07-01 20:22:37.994937', '/myapp/admin/thing/list', 'GET', NULL, '124');
INSERT INTO `b_op_log` VALUES (122, '127.0.0.1', '2024-07-01 20:22:42.074015', '/myapp/admin/thing/update', 'POST', NULL, '59');
INSERT INTO `b_op_log` VALUES (123, '127.0.0.1', '2024-07-01 20:22:42.339948', '/myapp/admin/thing/list', 'GET', NULL, '182');
INSERT INTO `b_op_log` VALUES (124, '127.0.0.1', '2024-07-01 20:22:50.475499', '/myapp/admin/thing/update', 'POST', NULL, '65');
INSERT INTO `b_op_log` VALUES (125, '127.0.0.1', '2024-07-01 20:22:50.792426', '/myapp/admin/thing/list', 'GET', NULL, '228');
INSERT INTO `b_op_log` VALUES (126, '127.0.0.1', '2024-07-01 20:22:58.002451', '/myapp/admin/thing/update', 'POST', NULL, '61');
INSERT INTO `b_op_log` VALUES (127, '127.0.0.1', '2024-07-01 20:22:58.280338', '/myapp/admin/thing/list', 'GET', NULL, '151');
INSERT INTO `b_op_log` VALUES (128, '127.0.0.1', '2024-07-01 20:23:05.644943', '/myapp/admin/thing/update', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (129, '127.0.0.1', '2024-07-01 20:23:05.914946', '/myapp/admin/thing/list', 'GET', NULL, '188');
INSERT INTO `b_op_log` VALUES (130, '127.0.0.1', '2024-07-01 20:23:14.059254', '/myapp/admin/thing/update', 'POST', NULL, '72');
INSERT INTO `b_op_log` VALUES (131, '127.0.0.1', '2024-07-01 20:23:14.300038', '/myapp/admin/thing/list', 'GET', NULL, '149');
INSERT INTO `b_op_log` VALUES (132, '127.0.0.1', '2024-07-01 20:23:23.768956', '/myapp/admin/thing/update', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (133, '127.0.0.1', '2024-07-01 20:23:24.028775', '/myapp/admin/thing/list', 'GET', NULL, '165');
INSERT INTO `b_op_log` VALUES (134, '127.0.0.1', '2024-07-01 20:23:29.365410', '/myapp/admin/thing/update', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (135, '127.0.0.1', '2024-07-01 20:23:29.604325', '/myapp/admin/thing/list', 'GET', NULL, '161');
INSERT INTO `b_op_log` VALUES (136, '127.0.0.1', '2024-07-01 20:23:38.619250', '/myapp/admin/thing/update', 'POST', NULL, '67');
INSERT INTO `b_op_log` VALUES (137, '127.0.0.1', '2024-07-01 20:23:38.893154', '/myapp/admin/thing/list', 'GET', NULL, '193');
INSERT INTO `b_op_log` VALUES (138, '127.0.0.1', '2024-07-01 20:23:48.054691', '/myapp/admin/thing/update', 'POST', NULL, '53');
INSERT INTO `b_op_log` VALUES (139, '127.0.0.1', '2024-07-01 20:23:48.276428', '/myapp/admin/thing/list', 'GET', NULL, '136');
INSERT INTO `b_op_log` VALUES (140, '127.0.0.1', '2024-07-01 20:24:06.888070', '/myapp/admin/thing/update', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (141, '127.0.0.1', '2024-07-01 20:24:07.134540', '/myapp/admin/thing/list', 'GET', NULL, '160');
INSERT INTO `b_op_log` VALUES (142, '127.0.0.1', '2024-07-01 20:24:15.701759', '/myapp/admin/thing/update', 'POST', NULL, '59');
INSERT INTO `b_op_log` VALUES (143, '127.0.0.1', '2024-07-01 20:24:15.929925', '/myapp/admin/thing/list', 'GET', NULL, '139');
INSERT INTO `b_op_log` VALUES (144, '127.0.0.1', '2024-07-01 20:24:25.248690', '/myapp/admin/thing/update', 'POST', NULL, '68');
INSERT INTO `b_op_log` VALUES (145, '127.0.0.1', '2024-07-01 20:24:25.531691', '/myapp/admin/thing/list', 'GET', NULL, '187');
INSERT INTO `b_op_log` VALUES (146, '127.0.0.1', '2024-07-01 20:25:05.225425', '/myapp/admin/thing/update', 'POST', NULL, '64');
INSERT INTO `b_op_log` VALUES (147, '127.0.0.1', '2024-07-01 20:25:05.490807', '/myapp/admin/thing/list', 'GET', NULL, '151');
INSERT INTO `b_op_log` VALUES (148, '127.0.0.1', '2024-07-01 20:25:29.590902', '/myapp/admin/thing/update', 'POST', NULL, '70');
INSERT INTO `b_op_log` VALUES (149, '127.0.0.1', '2024-07-01 20:25:29.845224', '/myapp/admin/thing/list', 'GET', NULL, '159');
INSERT INTO `b_op_log` VALUES (150, '127.0.0.1', '2024-07-01 20:25:33.800725', '/myapp/admin/thing/update', 'POST', NULL, '52');
INSERT INTO `b_op_log` VALUES (151, '127.0.0.1', '2024-07-01 20:25:34.064650', '/myapp/admin/thing/list', 'GET', NULL, '174');
INSERT INTO `b_op_log` VALUES (152, '127.0.0.1', '2024-07-01 20:25:37.732691', '/myapp/admin/thing/update', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (153, '127.0.0.1', '2024-07-01 20:25:37.999318', '/myapp/admin/thing/list', 'GET', NULL, '178');
INSERT INTO `b_op_log` VALUES (154, '127.0.0.1', '2024-07-01 20:25:42.696141', '/myapp/admin/thing/update', 'POST', NULL, '70');
INSERT INTO `b_op_log` VALUES (155, '127.0.0.1', '2024-07-01 20:25:42.937855', '/myapp/admin/thing/list', 'GET', NULL, '159');
INSERT INTO `b_op_log` VALUES (156, '127.0.0.1', '2024-07-01 20:26:52.757639', '/myapp/admin/thing/update', 'POST', NULL, '62');
INSERT INTO `b_op_log` VALUES (157, '127.0.0.1', '2024-07-01 20:26:52.979905', '/myapp/admin/thing/list', 'GET', NULL, '136');
INSERT INTO `b_op_log` VALUES (158, '127.0.0.1', '2024-07-01 20:26:58.475293', '/myapp/admin/thing/update', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (159, '127.0.0.1', '2024-07-01 20:26:58.704800', '/myapp/admin/thing/list', 'GET', NULL, '145');
INSERT INTO `b_op_log` VALUES (160, '127.0.0.1', '2024-07-01 20:27:05.513254', '/myapp/admin/thing/update', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (161, '127.0.0.1', '2024-07-01 20:27:05.850484', '/myapp/admin/thing/list', 'GET', NULL, '171');
INSERT INTO `b_op_log` VALUES (162, '127.0.0.1', '2024-07-01 20:27:17.059963', '/myapp/admin/thing/update', 'POST', NULL, '69');
INSERT INTO `b_op_log` VALUES (163, '127.0.0.1', '2024-07-01 20:27:17.309763', '/myapp/admin/thing/list', 'GET', NULL, '153');
INSERT INTO `b_op_log` VALUES (164, '127.0.0.1', '2024-07-01 20:27:36.148179', '/myapp/admin/thing/update', 'POST', NULL, '57');
INSERT INTO `b_op_log` VALUES (165, '127.0.0.1', '2024-07-01 20:27:36.398443', '/myapp/admin/thing/list', 'GET', NULL, '166');
INSERT INTO `b_op_log` VALUES (166, '127.0.0.1', '2024-07-01 20:27:41.800974', '/myapp/admin/thing/list', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (167, '127.0.0.1', '2024-07-01 20:27:43.047634', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (168, '127.0.0.1', '2024-07-01 20:27:43.536206', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (169, '127.0.0.1', '2024-07-01 20:27:43.679493', '/myapp/admin/classification/list', 'GET', NULL, '156');
INSERT INTO `b_op_log` VALUES (170, '127.0.0.1', '2024-07-01 20:28:19.144739', '/myapp/admin/classification/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (171, '127.0.0.1', '2024-07-01 20:28:36.337087', '/myapp/admin/comment/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (172, '127.0.0.1', '2024-07-01 20:28:36.915402', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (173, '127.0.0.1', '2024-07-01 20:28:37.506650', '/myapp/admin/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (174, '127.0.0.1', '2024-07-01 20:28:37.624712', '/myapp/admin/classification/list', 'GET', NULL, '141');
INSERT INTO `b_op_log` VALUES (175, '127.0.0.1', '2024-07-01 20:28:43.732552', '/myapp/index/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (176, '127.0.0.1', '2024-07-01 20:28:43.736028', '/myapp/index/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (177, '127.0.0.1', '2024-07-01 20:28:43.827723', '/myapp/index/thing/list', 'GET', NULL, '86');
INSERT INTO `b_op_log` VALUES (178, '127.0.0.1', '2024-07-01 20:28:43.860194', '/upload/cover/1719836270958.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (179, '127.0.0.1', '2024-07-01 20:28:44.117377', '/upload/cover/1719836270958.jpeg', 'GET', NULL, '267');
INSERT INTO `b_op_log` VALUES (180, '127.0.0.1', '2024-07-01 20:28:49.669322', '/myapp/admin/thing/update', 'POST', NULL, '475');
INSERT INTO `b_op_log` VALUES (181, '127.0.0.1', '2024-07-01 20:28:49.926445', '/myapp/admin/thing/list', 'GET', NULL, '171');
INSERT INTO `b_op_log` VALUES (182, '127.0.0.1', '2024-07-01 20:28:54.774790', '/myapp/admin/thing/update', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (183, '127.0.0.1', '2024-07-01 20:28:54.985859', '/myapp/admin/thing/list', 'GET', NULL, '135');
INSERT INTO `b_op_log` VALUES (184, '127.0.0.1', '2024-07-01 20:28:59.920759', '/myapp/admin/thing/update', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (185, '127.0.0.1', '2024-07-01 20:29:00.168541', '/myapp/admin/thing/list', 'GET', NULL, '171');
INSERT INTO `b_op_log` VALUES (186, '127.0.0.1', '2024-07-01 20:29:06.222292', '/myapp/admin/thing/update', 'POST', NULL, '82');
INSERT INTO `b_op_log` VALUES (187, '127.0.0.1', '2024-07-01 20:29:06.461298', '/myapp/admin/thing/list', 'GET', NULL, '147');
INSERT INTO `b_op_log` VALUES (188, '127.0.0.1', '2024-07-01 20:29:12.432197', '/myapp/admin/thing/update', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (189, '127.0.0.1', '2024-07-01 20:29:12.649440', '/myapp/admin/thing/list', 'GET', NULL, '150');
INSERT INTO `b_op_log` VALUES (190, '127.0.0.1', '2024-07-01 20:29:20.293924', '/myapp/admin/thing/update', 'POST', NULL, '57');
INSERT INTO `b_op_log` VALUES (191, '127.0.0.1', '2024-07-01 20:29:20.520160', '/myapp/admin/thing/list', 'GET', NULL, '138');
INSERT INTO `b_op_log` VALUES (192, '127.0.0.1', '2024-07-01 20:29:29.376697', '/myapp/admin/thing/update', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (193, '127.0.0.1', '2024-07-01 20:29:29.629841', '/myapp/admin/thing/list', 'GET', NULL, '175');
INSERT INTO `b_op_log` VALUES (194, '127.0.0.1', '2024-07-01 20:29:36.172861', '/myapp/admin/thing/update', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (195, '127.0.0.1', '2024-07-01 20:29:36.431336', '/myapp/admin/thing/list', 'GET', NULL, '185');
INSERT INTO `b_op_log` VALUES (196, '127.0.0.1', '2024-07-01 20:29:41.836326', '/myapp/admin/thing/update', 'POST', NULL, '52');
INSERT INTO `b_op_log` VALUES (197, '127.0.0.1', '2024-07-01 20:29:42.072266', '/myapp/admin/thing/list', 'GET', NULL, '154');
INSERT INTO `b_op_log` VALUES (198, '127.0.0.1', '2024-07-01 20:29:49.701553', '/myapp/admin/thing/update', 'POST', NULL, '49');
INSERT INTO `b_op_log` VALUES (199, '127.0.0.1', '2024-07-01 20:29:49.950122', '/myapp/admin/thing/list', 'GET', NULL, '190');
INSERT INTO `b_op_log` VALUES (200, '127.0.0.1', '2024-07-01 20:29:51.258065', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (201, '127.0.0.1', '2024-07-01 20:29:51.803546', '/myapp/admin/classification/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (202, '127.0.0.1', '2024-07-01 20:29:51.923296', '/myapp/admin/classification/list', 'GET', NULL, '151');
INSERT INTO `b_op_log` VALUES (203, '127.0.0.1', '2024-07-01 20:29:54.306045', '/myapp/index/thing/getRecommend', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (204, '127.0.0.1', '2024-07-01 20:29:54.430495', '/myapp/index/thing/getRecommend', 'GET', NULL, '135');
INSERT INTO `b_op_log` VALUES (205, '127.0.0.1', '2024-07-01 20:29:54.444180', '/myapp/index/thing/getRecommend', 'GET', NULL, '149');
INSERT INTO `b_op_log` VALUES (206, '127.0.0.1', '2024-07-01 20:29:54.523777', '/upload/cover/1719836958596.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (207, '127.0.0.1', '2024-07-01 20:29:54.535779', '/upload/cover/1719836958596.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (208, '127.0.0.1', '2024-07-01 20:29:54.536777', '/upload/cover/1719836958596.jpeg', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (209, '127.0.0.1', '2024-07-01 20:29:54.537781', '/upload/cover/1719836958596.jpeg', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (210, '127.0.0.1', '2024-07-01 20:29:54.543190', '/upload/cover/1719836958596.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (211, '127.0.0.1', '2024-07-01 20:29:54.546207', '/upload/cover/1719836958596.jpeg', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (212, '127.0.0.1', '2024-07-01 20:29:54.600586', '/upload/cover/1719836980620.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (213, '127.0.0.1', '2024-07-01 20:29:54.621237', '/upload/cover/1719836980620.jpeg', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (214, '127.0.0.1', '2024-07-01 20:29:54.622237', '/upload/cover/1719836980620.jpeg', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (215, '127.0.0.1', '2024-07-01 20:29:54.624608', '/upload/cover/1719836980620.jpeg', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (216, '127.0.0.1', '2024-07-01 20:29:54.971682', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (217, '127.0.0.1', '2024-07-01 20:29:54.976334', '/myapp/index/user/info', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (218, '127.0.0.1', '2024-07-01 20:29:55.051161', '/myapp/index/user/info', 'GET', NULL, '97');
INSERT INTO `b_op_log` VALUES (219, '127.0.0.1', '2024-07-01 20:29:55.137568', '/myapp/index/user/info', 'GET', NULL, '183');
INSERT INTO `b_op_log` VALUES (220, '127.0.0.1', '2024-07-01 20:30:22.855783', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (221, '127.0.0.1', '2024-07-01 20:30:22.947037', '/myapp/admin/classification/list', 'GET', NULL, '97');
INSERT INTO `b_op_log` VALUES (222, '127.0.0.1', '2024-07-01 20:30:27.498018', '/myapp/index/thing/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (223, '127.0.0.1', '2024-07-01 20:30:28.171248', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (224, '127.0.0.1', '2024-07-01 20:30:29.002514', '/myapp/index/thing/list', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (225, '127.0.0.1', '2024-07-01 20:30:31.881123', '/upload/cover/1719836928097.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (226, '127.0.0.1', '2024-07-01 20:30:35.835820', '/myapp/admin/thing/update', 'POST', NULL, '69');
INSERT INTO `b_op_log` VALUES (227, '127.0.0.1', '2024-07-01 20:30:36.074293', '/myapp/admin/thing/list', 'GET', NULL, '143');
INSERT INTO `b_op_log` VALUES (228, '127.0.0.1', '2024-07-01 20:30:37.290147', '/upload/cover/1719836938740.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (229, '127.0.0.1', '2024-07-01 20:30:40.492718', '/myapp/admin/thing/update', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (230, '127.0.0.1', '2024-07-01 20:30:40.736234', '/myapp/admin/thing/list', 'GET', NULL, '153');
INSERT INTO `b_op_log` VALUES (231, '127.0.0.1', '2024-07-01 20:30:41.711883', '/upload/cover/1719836944490.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (232, '127.0.0.1', '2024-07-01 20:30:45.322968', '/myapp/admin/thing/update', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (233, '127.0.0.1', '2024-07-01 20:30:45.550161', '/myapp/admin/thing/list', 'GET', NULL, '139');
INSERT INTO `b_op_log` VALUES (234, '127.0.0.1', '2024-07-01 20:30:46.559504', '/upload/cover/1719836958596.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (235, '127.0.0.1', '2024-07-01 20:30:49.825598', '/myapp/admin/thing/update', 'POST', NULL, '58');
INSERT INTO `b_op_log` VALUES (236, '127.0.0.1', '2024-07-01 20:30:50.113880', '/myapp/admin/thing/list', 'GET', NULL, '189');
INSERT INTO `b_op_log` VALUES (237, '127.0.0.1', '2024-07-01 20:30:50.773703', '/upload/cover/1719836974981.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (238, '127.0.0.1', '2024-07-01 20:30:53.871256', '/myapp/admin/thing/update', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (239, '127.0.0.1', '2024-07-01 20:30:54.098622', '/myapp/admin/thing/list', 'GET', NULL, '146');
INSERT INTO `b_op_log` VALUES (240, '127.0.0.1', '2024-07-01 20:30:54.964835', '/upload/cover/1719836980620.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (241, '127.0.0.1', '2024-07-01 20:30:58.234498', '/myapp/admin/thing/update', 'POST', NULL, '72');
INSERT INTO `b_op_log` VALUES (242, '127.0.0.1', '2024-07-01 20:30:58.493982', '/myapp/admin/thing/list', 'GET', NULL, '153');
INSERT INTO `b_op_log` VALUES (243, '127.0.0.1', '2024-07-01 20:31:03.827041', '/myapp/admin/thing/update', 'POST', NULL, '58');
INSERT INTO `b_op_log` VALUES (244, '127.0.0.1', '2024-07-01 20:31:04.070013', '/myapp/admin/thing/list', 'GET', NULL, '177');
INSERT INTO `b_op_log` VALUES (245, '127.0.0.1', '2024-07-01 20:31:07.652733', '/myapp/index/thing/getRecommend', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (246, '127.0.0.1', '2024-07-01 20:31:07.758032', '/myapp/index/thing/getRecommend', 'GET', NULL, '110');
INSERT INTO `b_op_log` VALUES (247, '127.0.0.1', '2024-07-01 20:31:07.825502', '/myapp/index/thing/getRecommend', 'GET', NULL, '177');
INSERT INTO `b_op_log` VALUES (248, '127.0.0.1', '2024-07-01 20:31:08.061299', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (249, '127.0.0.1', '2024-07-01 20:31:08.074047', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (250, '127.0.0.1', '2024-07-01 20:31:08.146672', '/myapp/index/thing/list', 'GET', NULL, '107');
INSERT INTO `b_op_log` VALUES (251, '127.0.0.1', '2024-07-01 20:31:08.223271', '/myapp/index/thing/list', 'GET', NULL, '182');
INSERT INTO `b_op_log` VALUES (252, '127.0.0.1', '2024-07-01 20:31:08.763950', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (253, '127.0.0.1', '2024-07-01 20:31:09.247034', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (254, '127.0.0.1', '2024-07-01 20:31:09.765511', '/myapp/index/thing/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (255, '127.0.0.1', '2024-07-01 20:31:10.242415', '/myapp/index/thing/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (256, '127.0.0.1', '2024-07-01 20:31:10.610636', '/myapp/index/thing/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (257, '127.0.0.1', '2024-07-01 20:31:11.317255', '/myapp/index/thing/list', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (258, '127.0.0.1', '2024-07-01 20:31:11.788450', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (259, '127.0.0.1', '2024-07-01 20:31:43.755100', '/myapp/index/thing/list', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (260, '127.0.0.1', '2024-07-01 20:31:43.831831', '/upload/cover/1719836951219.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (261, '127.0.0.1', '2024-07-01 20:31:43.834853', '/upload/cover/1719836951219.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (262, '127.0.0.1', '2024-07-01 20:31:43.837329', '/upload/cover/1719836944490.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (263, '127.0.0.1', '2024-07-01 20:31:43.839732', '/upload/cover/1719836951219.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (264, '127.0.0.1', '2024-07-01 20:31:43.842149', '/upload/cover/1719836951219.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (265, '127.0.0.1', '2024-07-01 20:31:43.850239', '/upload/cover/1719836951219.jpeg', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (266, '127.0.0.1', '2024-07-01 20:31:43.880161', '/upload/cover/1719836938740.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (267, '127.0.0.1', '2024-07-01 20:31:43.883178', '/upload/cover/1719836933616.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (268, '127.0.0.1', '2024-07-01 20:32:50.378703', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (269, '127.0.0.1', '2024-07-01 20:32:50.394650', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (270, '127.0.0.1', '2024-07-01 20:32:50.487090', '/myapp/index/thing/list', 'GET', NULL, '121');
INSERT INTO `b_op_log` VALUES (271, '127.0.0.1', '2024-07-01 20:32:50.556854', '/myapp/index/thing/list', 'GET', NULL, '190');
INSERT INTO `b_op_log` VALUES (272, '127.0.0.1', '2024-07-01 20:33:28.012238', '/myapp/index/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (273, '127.0.0.1', '2024-07-01 20:33:28.042785', '/myapp/index/classification/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (274, '127.0.0.1', '2024-07-01 20:33:28.081803', '/myapp/index/classification/list', 'GET', NULL, '81');
INSERT INTO `b_op_log` VALUES (275, '127.0.0.1', '2024-07-01 20:33:28.162345', '/myapp/index/classification/list', 'GET', NULL, '165');
INSERT INTO `b_op_log` VALUES (276, '127.0.0.1', '2024-07-01 20:33:49.050588', '/myapp/index/thing/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (277, '127.0.0.1', '2024-07-01 20:33:49.735142', '/myapp/index/thing/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (278, '127.0.0.1', '2024-07-01 20:34:03.531628', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (279, '127.0.0.1', '2024-07-01 20:34:03.535173', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (280, '127.0.0.1', '2024-07-01 20:34:03.613833', '/myapp/index/thing/list', 'GET', NULL, '97');
INSERT INTO `b_op_log` VALUES (281, '127.0.0.1', '2024-07-01 20:34:03.686095', '/myapp/index/thing/list', 'GET', NULL, '169');
INSERT INTO `b_op_log` VALUES (282, '127.0.0.1', '2024-07-01 20:35:41.954331', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (283, '127.0.0.1', '2024-07-01 20:35:41.973245', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (284, '127.0.0.1', '2024-07-01 20:35:42.022839', '/myapp/index/thing/list', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (285, '127.0.0.1', '2024-07-01 20:35:42.076989', '/myapp/index/thing/list', 'GET', NULL, '137');
INSERT INTO `b_op_log` VALUES (286, '127.0.0.1', '2024-07-01 20:36:42.072791', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (287, '127.0.0.1', '2024-07-01 20:36:42.121283', '/myapp/index/user/info', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (288, '127.0.0.1', '2024-07-01 20:36:42.151980', '/myapp/index/user/info', 'GET', NULL, '92');
INSERT INTO `b_op_log` VALUES (289, '127.0.0.1', '2024-07-01 20:36:42.220743', '/myapp/index/user/info', 'GET', NULL, '162');
INSERT INTO `b_op_log` VALUES (290, '127.0.0.1', '2024-07-01 20:36:51.621581', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (291, '127.0.0.1', '2024-07-01 20:36:52.199414', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (292, '127.0.0.1', '2024-07-01 20:37:00.798094', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (293, '127.0.0.1', '2024-07-01 20:37:02.009905', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (294, '127.0.0.1', '2024-07-01 20:37:23.617044', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (295, '127.0.0.1', '2024-07-01 20:37:24.582864', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (296, '127.0.0.1', '2024-07-01 20:37:30.571811', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (297, '127.0.0.1', '2024-07-01 20:37:56.320159', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (298, '127.0.0.1', '2024-07-01 20:37:57.210025', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (299, '127.0.0.1', '2024-07-01 20:38:02.427760', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (300, '127.0.0.1', '2024-07-01 20:38:02.477217', '/myapp/index/thing/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (301, '127.0.0.1', '2024-07-01 20:38:02.504217', '/myapp/index/thing/list', 'GET', NULL, '90');
INSERT INTO `b_op_log` VALUES (302, '127.0.0.1', '2024-07-01 20:38:02.594831', '/upload/cover/1719836270958.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (303, '127.0.0.1', '2024-07-01 20:38:02.617058', '/upload/cover/1719836928097.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (304, '127.0.0.1', '2024-07-01 20:38:02.627601', '/upload/cover/1719836933616.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (305, '127.0.0.1', '2024-07-01 20:38:02.635616', '/upload/cover/1719836933616.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (306, '127.0.0.1', '2024-07-01 20:38:02.650987', '/upload/cover/1719836944490.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (307, '127.0.0.1', '2024-07-01 20:38:02.658688', '/upload/cover/1719836968243.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (308, '127.0.0.1', '2024-07-01 20:38:02.661164', '/upload/cover/1719836944490.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (309, '127.0.0.1', '2024-07-01 20:38:02.679248', '/upload/cover/1719836951219.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (310, '127.0.0.1', '2024-07-01 20:38:02.698250', '/upload/cover/1719836958596.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (311, '127.0.0.1', '2024-07-01 20:38:02.722608', '/upload/cover/1719836974981.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (312, '127.0.0.1', '2024-07-01 20:38:02.739663', '/upload/cover/1719836980620.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (313, '127.0.0.1', '2024-07-01 20:38:02.751405', '/upload/cover/1719836988716.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (314, '127.0.0.1', '2024-07-01 20:38:03.593112', '/myapp/index/thing/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (315, '127.0.0.1', '2024-07-01 20:38:08.139171', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (316, '127.0.0.1', '2024-07-01 20:38:08.928237', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (317, '127.0.0.1', '2024-07-01 20:38:10.163685', '/myapp/index/thing/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (318, '127.0.0.1', '2024-07-01 20:38:10.201065', '/upload/cover/1719836270958.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (319, '127.0.0.1', '2024-07-01 20:38:10.245546', '/upload/cover/1719836944490.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (320, '127.0.0.1', '2024-07-01 20:38:10.247584', '/upload/cover/1719836944490.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (321, '127.0.0.1', '2024-07-01 20:38:10.249599', '/upload/cover/1719836944490.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (322, '127.0.0.1', '2024-07-01 20:38:10.252602', '/upload/cover/1719836944490.jpeg', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (323, '127.0.0.1', '2024-07-01 20:38:10.250600', '/upload/cover/1719836944490.jpeg', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (324, '127.0.0.1', '2024-07-01 20:38:10.293306', '/upload/cover/1719836958596.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (325, '127.0.0.1', '2024-07-01 20:38:10.338721', '/upload/cover/1719836968243.jpeg', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (326, '127.0.0.1', '2024-07-01 20:38:10.367074', '/upload/cover/1719836980620.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (327, '127.0.0.1', '2024-07-01 20:38:10.369379', '/upload/cover/1719836980620.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (328, '127.0.0.1', '2024-07-01 20:38:10.372447', '/upload/cover/1719836988716.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (329, '127.0.0.1', '2024-07-01 20:38:10.686938', '/myapp/index/thing/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (330, '127.0.0.1', '2024-07-01 20:41:44.146057', '/myapp/admin/classification/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (331, '127.0.0.1', '2024-07-01 20:41:44.244713', '/myapp/admin/classification/list', 'GET', NULL, '135');
INSERT INTO `b_op_log` VALUES (332, '127.0.0.1', '2024-07-01 20:48:43.008719', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (333, '127.0.0.1', '2024-07-01 20:48:43.104880', '/myapp/admin/classification/list', 'GET', NULL, '107');
INSERT INTO `b_op_log` VALUES (334, '127.0.0.1', '2024-07-01 20:49:37.228968', '/myapp/admin/classification/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (335, '127.0.0.1', '2024-07-01 20:49:37.932722', '/myapp/admin/classification/list', 'GET', NULL, '748');
INSERT INTO `b_op_log` VALUES (336, '127.0.0.1', '2024-07-01 20:50:54.857124', '/myapp/admin/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (337, '127.0.0.1', '2024-07-01 20:50:55.419343', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (338, '127.0.0.1', '2024-07-01 20:50:55.530474', '/myapp/admin/classification/list', 'GET', NULL, '123');
INSERT INTO `b_op_log` VALUES (339, '127.0.0.1', '2024-07-01 20:50:57.300623', '/upload/cover/1719836270958.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (340, '127.0.0.1', '2024-07-01 20:51:00.554679', '/myapp/admin/thing/update', 'POST', NULL, '55');
INSERT INTO `b_op_log` VALUES (341, '127.0.0.1', '2024-07-01 20:51:00.826588', '/myapp/admin/thing/list', 'GET', NULL, '172');
INSERT INTO `b_op_log` VALUES (342, '127.0.0.1', '2024-07-01 20:51:02.378044', '/upload/cover/1719836928097.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (343, '127.0.0.1', '2024-07-01 20:51:03.756875', '/myapp/admin/thing/update', 'POST', NULL, '74');
INSERT INTO `b_op_log` VALUES (344, '127.0.0.1', '2024-07-01 20:51:04.018879', '/myapp/admin/thing/list', 'GET', NULL, '175');
INSERT INTO `b_op_log` VALUES (345, '127.0.0.1', '2024-07-01 20:51:19.052120', '/upload/cover/1719836933616.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (346, '127.0.0.1', '2024-07-01 20:51:30.479602', '/myapp/admin/thing/update', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (347, '127.0.0.1', '2024-07-01 20:51:30.740024', '/myapp/admin/thing/list', 'GET', NULL, '151');
INSERT INTO `b_op_log` VALUES (348, '127.0.0.1', '2024-07-01 20:51:31.908459', '/upload/cover/1719836938740.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (349, '127.0.0.1', '2024-07-01 20:51:39.124692', '/myapp/admin/thing/update', 'POST', NULL, '53');
INSERT INTO `b_op_log` VALUES (350, '127.0.0.1', '2024-07-01 20:51:39.406012', '/myapp/admin/thing/list', 'GET', NULL, '175');
INSERT INTO `b_op_log` VALUES (351, '127.0.0.1', '2024-07-01 20:51:40.761365', '/upload/cover/1719836944490.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (352, '127.0.0.1', '2024-07-01 20:51:48.071457', '/myapp/admin/thing/update', 'POST', NULL, '78');
INSERT INTO `b_op_log` VALUES (353, '127.0.0.1', '2024-07-01 20:51:48.305454', '/myapp/admin/thing/list', 'GET', NULL, '137');
INSERT INTO `b_op_log` VALUES (354, '127.0.0.1', '2024-07-01 20:51:49.977327', '/upload/cover/1719836951219.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (355, '127.0.0.1', '2024-07-01 20:51:53.113587', '/myapp/admin/thing/update', 'POST', NULL, '74');
INSERT INTO `b_op_log` VALUES (356, '127.0.0.1', '2024-07-01 20:51:53.344289', '/myapp/admin/thing/list', 'GET', NULL, '143');
INSERT INTO `b_op_log` VALUES (357, '127.0.0.1', '2024-07-01 20:51:58.829893', '/myapp/admin/thing/update', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (358, '127.0.0.1', '2024-07-01 20:51:59.064156', '/myapp/admin/thing/list', 'GET', NULL, '162');
INSERT INTO `b_op_log` VALUES (359, '127.0.0.1', '2024-07-01 20:52:00.266306', '/upload/cover/1719836958596.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (360, '127.0.0.1', '2024-07-01 20:52:08.988582', '/myapp/admin/thing/update', 'POST', NULL, '66');
INSERT INTO `b_op_log` VALUES (361, '127.0.0.1', '2024-07-01 20:52:09.267474', '/myapp/admin/thing/list', 'GET', NULL, '186');
INSERT INTO `b_op_log` VALUES (362, '127.0.0.1', '2024-07-01 20:52:12.418221', '/myapp/admin/thing/update', 'POST', NULL, '67');
INSERT INTO `b_op_log` VALUES (363, '127.0.0.1', '2024-07-01 20:52:12.639355', '/myapp/admin/thing/list', 'GET', NULL, '127');
INSERT INTO `b_op_log` VALUES (364, '127.0.0.1', '2024-07-01 20:52:13.925402', '/upload/cover/1719836968243.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (365, '127.0.0.1', '2024-07-01 20:52:18.482787', '/myapp/admin/thing/update', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (366, '127.0.0.1', '2024-07-01 20:52:18.734117', '/myapp/admin/thing/list', 'GET', NULL, '167');
INSERT INTO `b_op_log` VALUES (367, '127.0.0.1', '2024-07-01 20:52:19.296974', '/upload/cover/1719836974981.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (368, '127.0.0.1', '2024-07-01 20:52:20.506382', '/myapp/admin/thing/update', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (369, '127.0.0.1', '2024-07-01 20:52:20.768665', '/myapp/admin/thing/list', 'GET', NULL, '175');
INSERT INTO `b_op_log` VALUES (370, '127.0.0.1', '2024-07-01 20:52:21.529778', '/upload/cover/1719836980620.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (371, '127.0.0.1', '2024-07-01 20:52:22.852131', '/myapp/admin/thing/update', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (372, '127.0.0.1', '2024-07-01 20:52:23.117334', '/myapp/admin/thing/list', 'GET', NULL, '169');
INSERT INTO `b_op_log` VALUES (373, '127.0.0.1', '2024-07-01 20:52:25.970405', '/myapp/admin/thing/update', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (374, '127.0.0.1', '2024-07-01 20:52:26.188503', '/myapp/admin/thing/list', 'GET', NULL, '160');
INSERT INTO `b_op_log` VALUES (375, '127.0.0.1', '2024-07-01 20:52:27.017891', '/upload/cover/1719836988716.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (376, '127.0.0.1', '2024-07-01 20:52:28.525754', '/myapp/admin/thing/update', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (377, '127.0.0.1', '2024-07-01 20:52:28.741743', '/myapp/admin/thing/list', 'GET', NULL, '153');
INSERT INTO `b_op_log` VALUES (378, '127.0.0.1', '2024-07-01 20:52:37.805591', '/myapp/admin/thing/update', 'POST', NULL, '63');
INSERT INTO `b_op_log` VALUES (379, '127.0.0.1', '2024-07-01 20:52:38.025939', '/myapp/admin/thing/list', 'GET', NULL, '156');
INSERT INTO `b_op_log` VALUES (380, '127.0.0.1', '2024-07-01 20:53:31.047010', '/myapp/index/thing/getRecommend', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (381, '127.0.0.1', '2024-07-01 20:53:31.097955', '/myapp/index/thing/getRecommend', 'GET', NULL, '81');
INSERT INTO `b_op_log` VALUES (382, '127.0.0.1', '2024-07-01 20:53:31.156109', '/upload/cover/1719836944490.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (383, '127.0.0.1', '2024-07-01 20:53:31.156109', '/upload/cover/1719836944490.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (384, '127.0.0.1', '2024-07-01 20:53:31.160111', '/upload/cover/1719836944490.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (385, '127.0.0.1', '2024-07-01 20:53:31.161110', '/upload/cover/1719836944490.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (386, '127.0.0.1', '2024-07-01 20:53:31.175464', '/upload/cover/1719836968243.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (387, '127.0.0.1', '2024-07-01 20:53:31.176518', '/upload/cover/1719836944490.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (388, '127.0.0.1', '2024-07-01 20:53:31.189691', '/upload/cover/1719836974981.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (389, '127.0.0.1', '2024-07-01 20:53:31.226968', '/upload/cover/1719836958596.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (390, '127.0.0.1', '2024-07-01 20:53:31.230968', '/upload/cover/1719836951219.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (391, '127.0.0.1', '2024-07-01 20:53:31.231970', '/upload/cover/1719836951219.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (392, '127.0.0.1', '2024-07-01 20:53:31.248155', '/upload/cover/1719836980620.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (393, '127.0.0.1', '2024-07-01 20:53:31.429944', '/upload/cover/1719836980620.jpeg', 'GET', NULL, '190');
INSERT INTO `b_op_log` VALUES (394, '127.0.0.1', '2024-07-01 20:53:31.846465', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (395, '127.0.0.1', '2024-07-01 20:53:31.851717', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (396, '127.0.0.1', '2024-07-01 20:53:31.904256', '/myapp/index/thing/list', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (397, '127.0.0.1', '2024-07-01 20:53:31.972741', '/upload/cover/1719836951219.jpeg', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (398, '127.0.0.1', '2024-07-01 20:53:31.977589', '/upload/cover/1719836951219.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (399, '127.0.0.1', '2024-07-01 20:53:31.980757', '/upload/cover/1719836951219.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (400, '127.0.0.1', '2024-07-01 20:53:31.982754', '/upload/cover/1719836951219.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (401, '127.0.0.1', '2024-07-01 20:53:31.986797', '/upload/cover/1719836951219.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (402, '127.0.0.1', '2024-07-01 20:53:31.990813', '/upload/cover/1719836951219.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (403, '127.0.0.1', '2024-07-01 20:53:31.991811', '/upload/cover/1719836951219.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (404, '127.0.0.1', '2024-07-01 20:53:32.033243', '/upload/cover/1719836958596.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (405, '127.0.0.1', '2024-07-01 20:53:32.040787', '/upload/cover/1719836968243.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (406, '127.0.0.1', '2024-07-01 20:53:32.049786', '/upload/cover/1719836974981.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (407, '127.0.0.1', '2024-07-01 20:53:32.072790', '/upload/cover/1719836980620.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (408, '127.0.0.1', '2024-07-01 20:53:32.078794', '/upload/cover/1719836988716.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (409, '127.0.0.1', '2024-07-01 20:53:32.967791', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (410, '127.0.0.1', '2024-07-01 20:53:33.664430', '/myapp/index/thing/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (411, '127.0.0.1', '2024-07-01 20:53:33.713679', '/upload/cover/1719836951219.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (412, '127.0.0.1', '2024-07-01 20:53:33.717715', '/upload/cover/1719836951219.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (413, '127.0.0.1', '2024-07-01 20:53:33.718681', '/upload/cover/1719836951219.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (414, '127.0.0.1', '2024-07-01 20:53:33.719681', '/upload/cover/1719836951219.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (415, '127.0.0.1', '2024-07-01 20:53:33.721682', '/upload/cover/1719836951219.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (416, '127.0.0.1', '2024-07-01 20:53:33.723679', '/upload/cover/1719836951219.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (417, '127.0.0.1', '2024-07-01 20:53:33.768340', '/upload/cover/1719836944490.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (418, '127.0.0.1', '2024-07-01 20:53:33.769340', '/upload/cover/1719836944490.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (419, '127.0.0.1', '2024-07-01 20:53:33.776090', '/upload/cover/1719836933616.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (420, '127.0.0.1', '2024-07-01 20:53:34.592284', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (421, '127.0.0.1', '2024-07-01 20:53:35.616960', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (422, '127.0.0.1', '2024-07-01 20:53:37.112583', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (423, '127.0.0.1', '2024-07-01 20:53:37.145377', '/upload/cover/1719836933616.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (424, '127.0.0.1', '2024-07-01 20:53:37.911491', '/myapp/index/thing/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (425, '127.0.0.1', '2024-07-01 20:53:37.983802', '/upload/cover/1719836270958.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (426, '127.0.0.1', '2024-07-01 20:53:37.985547', '/upload/cover/1719836958596.jpeg', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (427, '127.0.0.1', '2024-07-01 20:53:37.986548', '/upload/cover/1719836958596.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (428, '127.0.0.1', '2024-07-01 20:53:37.989551', '/upload/cover/1719836958596.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (429, '127.0.0.1', '2024-07-01 20:53:37.988549', '/upload/cover/1719836958596.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (430, '127.0.0.1', '2024-07-01 20:53:37.992549', '/upload/cover/1719836958596.jpeg', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (431, '127.0.0.1', '2024-07-01 20:53:38.043943', '/upload/cover/1719836944490.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (432, '127.0.0.1', '2024-07-01 20:53:38.046953', '/upload/cover/1719836944490.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (433, '127.0.0.1', '2024-07-01 20:53:38.047944', '/upload/cover/1719836944490.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (434, '127.0.0.1', '2024-07-01 20:53:38.053475', '/upload/cover/1719836928097.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (435, '127.0.0.1', '2024-07-01 20:53:38.498096', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (436, '127.0.0.1', '2024-07-01 20:53:39.328505', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (437, '127.0.0.1', '2024-07-01 20:53:39.383756', '/upload/cover/1719836974981.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (438, '127.0.0.1', '2024-07-01 20:53:39.385756', '/upload/cover/1719836270958.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (439, '127.0.0.1', '2024-07-01 20:53:39.387767', '/upload/cover/1719836974981.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (440, '127.0.0.1', '2024-07-01 20:53:39.388757', '/upload/cover/1719836270958.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (441, '127.0.0.1', '2024-07-01 20:53:39.389751', '/upload/cover/1719836974981.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (442, '127.0.0.1', '2024-07-01 20:53:39.392750', '/upload/cover/1719836974981.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (443, '127.0.0.1', '2024-07-01 20:53:39.947069', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (444, '127.0.0.1', '2024-07-01 20:53:39.988096', '/upload/cover/1719836958596.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (445, '127.0.0.1', '2024-07-01 20:53:40.755287', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (446, '127.0.0.1', '2024-07-01 20:53:41.543761', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (447, '127.0.0.1', '2024-07-01 20:53:41.565308', '/upload/cover/1719836958596.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (448, '127.0.0.1', '2024-07-01 20:53:42.007719', '/myapp/index/thing/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (449, '127.0.0.1', '2024-07-01 20:53:42.089695', '/upload/cover/1719836944490.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (450, '127.0.0.1', '2024-07-01 20:53:42.089695', '/upload/cover/1719836944490.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (451, '127.0.0.1', '2024-07-01 20:53:42.091693', '/upload/cover/1719836944490.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (452, '127.0.0.1', '2024-07-01 20:53:42.094698', '/upload/cover/1719836944490.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (453, '127.0.0.1', '2024-07-01 20:53:42.094698', '/upload/cover/1719836944490.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (454, '127.0.0.1', '2024-07-01 20:53:42.095699', '/upload/cover/1719836944490.jpeg', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (455, '127.0.0.1', '2024-07-01 20:53:42.400068', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (456, '127.0.0.1', '2024-07-01 20:53:42.440921', '/upload/cover/1719836933616.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (457, '127.0.0.1', '2024-07-01 20:53:42.441986', '/upload/cover/1719836933616.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (458, '127.0.0.1', '2024-07-01 20:53:42.791214', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (459, '127.0.0.1', '2024-07-01 20:53:44.421344', '/myapp/index/thing/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (460, '127.0.0.1', '2024-07-01 20:53:44.480348', '/upload/cover/1719836933616.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (461, '127.0.0.1', '2024-07-01 20:53:44.481347', '/upload/cover/1719836951219.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (462, '127.0.0.1', '2024-07-01 20:53:44.482344', '/upload/cover/1719836951219.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (463, '127.0.0.1', '2024-07-01 20:53:44.482344', '/upload/cover/1719836951219.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (464, '127.0.0.1', '2024-07-01 20:53:44.483824', '/upload/cover/1719836951219.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (465, '127.0.0.1', '2024-07-01 20:53:44.488198', '/upload/cover/1719836951219.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (466, '127.0.0.1', '2024-07-01 20:53:44.536482', '/upload/cover/1719836958596.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (467, '127.0.0.1', '2024-07-01 20:53:44.557571', '/upload/cover/1719836958596.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (468, '127.0.0.1', '2024-07-01 20:53:44.566665', '/upload/cover/1719836974981.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (469, '127.0.0.1', '2024-07-01 20:53:44.568665', '/upload/cover/1719836988716.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (470, '127.0.0.1', '2024-07-01 20:53:44.570966', '/upload/cover/1719836988716.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (471, '127.0.0.1', '2024-07-01 20:53:44.967142', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (472, '127.0.0.1', '2024-07-01 20:53:45.427175', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (473, '127.0.0.1', '2024-07-01 20:53:46.116165', '/myapp/index/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (474, '127.0.0.1', '2024-07-01 20:53:46.148082', '/upload/cover/1719836938740.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (475, '127.0.0.1', '2024-07-01 20:53:46.495592', '/myapp/index/thing/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (476, '127.0.0.1', '2024-07-01 20:53:46.551821', '/upload/cover/1719836270958.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (477, '127.0.0.1', '2024-07-01 20:53:46.555818', '/upload/cover/1719836968243.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (478, '127.0.0.1', '2024-07-01 20:53:46.557064', '/upload/cover/1719836968243.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (479, '127.0.0.1', '2024-07-01 20:53:46.559117', '/upload/cover/1719836968243.jpeg', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (480, '127.0.0.1', '2024-07-01 20:53:46.559117', '/upload/cover/1719836968243.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (481, '127.0.0.1', '2024-07-01 20:53:46.559117', '/upload/cover/1719836968243.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (482, '127.0.0.1', '2024-07-01 20:53:46.602605', '/upload/cover/1719836928097.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (483, '127.0.0.1', '2024-07-01 20:53:46.876268', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (484, '127.0.0.1', '2024-07-01 20:53:47.356553', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (485, '127.0.0.1', '2024-07-01 20:53:47.401791', '/upload/cover/1719836958596.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (486, '127.0.0.1', '2024-07-01 20:53:48.323194', '/myapp/index/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (487, '127.0.0.1', '2024-07-01 20:53:48.374450', '/upload/cover/1719836933616.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (488, '127.0.0.1', '2024-07-01 20:53:49.052445', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (489, '127.0.0.1', '2024-07-01 20:53:49.110676', '/upload/cover/1719836938740.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (490, '127.0.0.1', '2024-07-01 20:53:49.733000', '/myapp/index/thing/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (491, '127.0.0.1', '2024-07-01 20:53:49.777642', '/upload/cover/1719836974981.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (492, '127.0.0.1', '2024-07-01 20:53:49.778648', '/upload/cover/1719836974981.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (493, '127.0.0.1', '2024-07-01 20:53:49.780646', '/upload/cover/1719836944490.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (494, '127.0.0.1', '2024-07-01 20:53:49.784640', '/upload/cover/1719836944490.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (495, '127.0.0.1', '2024-07-01 20:53:49.786641', '/upload/cover/1719836944490.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (496, '127.0.0.1', '2024-07-01 20:53:49.798537', '/upload/cover/1719836944490.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (497, '127.0.0.1', '2024-07-01 20:53:49.820310', '/upload/cover/1719836928097.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (498, '127.0.0.1', '2024-07-01 20:53:50.345819', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (499, '127.0.0.1', '2024-07-01 20:53:51.162640', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (500, '127.0.0.1', '2024-07-01 20:53:51.213965', '/upload/cover/1719836933616.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (501, '127.0.0.1', '2024-07-01 20:54:01.326869', '/myapp/admin/thing/update', 'POST', NULL, '72');
INSERT INTO `b_op_log` VALUES (502, '127.0.0.1', '2024-07-01 20:54:01.524198', '/myapp/admin/thing/list', 'GET', NULL, '107');
INSERT INTO `b_op_log` VALUES (503, '127.0.0.1', '2024-07-01 20:54:05.695095', '/myapp/admin/thing/update', 'POST', NULL, '49');
INSERT INTO `b_op_log` VALUES (504, '127.0.0.1', '2024-07-01 20:54:05.899157', '/myapp/admin/thing/list', 'GET', NULL, '120');
INSERT INTO `b_op_log` VALUES (505, '127.0.0.1', '2024-07-01 20:54:09.713709', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (506, '127.0.0.1', '2024-07-01 20:54:10.568299', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (507, '127.0.0.1', '2024-07-01 20:54:11.599511', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (508, '127.0.0.1', '2024-07-01 20:54:12.396968', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (509, '127.0.0.1', '2024-07-01 20:54:13.301023', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (510, '127.0.0.1', '2024-07-01 20:54:13.328999', '/upload/cover/1719836933616.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (511, '127.0.0.1', '2024-07-01 20:54:13.792602', '/myapp/index/thing/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (512, '127.0.0.1', '2024-07-01 20:54:13.827801', '/upload/cover/1719836958596.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (513, '127.0.0.1', '2024-07-01 20:54:13.858920', '/upload/cover/1719836980620.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (514, '127.0.0.1', '2024-07-01 20:54:13.859922', '/upload/cover/1719836968243.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (515, '127.0.0.1', '2024-07-01 20:54:13.862921', '/upload/cover/1719836968243.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (516, '127.0.0.1', '2024-07-01 20:54:13.868729', '/upload/cover/1719836968243.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (517, '127.0.0.1', '2024-07-01 20:54:13.868729', '/upload/cover/1719836968243.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (518, '127.0.0.1', '2024-07-01 20:54:13.910283', '/upload/cover/1719836944490.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (519, '127.0.0.1', '2024-07-01 20:54:13.928259', '/upload/cover/1719836951219.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (520, '127.0.0.1', '2024-07-01 20:54:13.966697', '/upload/cover/1719836951219.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (521, '127.0.0.1', '2024-07-01 20:54:13.974792', '/upload/cover/1719836938740.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (522, '127.0.0.1', '2024-07-01 20:54:14.340037', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (523, '127.0.0.1', '2024-07-01 20:54:14.953100', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (524, '127.0.0.1', '2024-07-01 20:54:14.983797', '/upload/cover/1719836938740.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (525, '127.0.0.1', '2024-07-01 20:54:15.581715', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (526, '127.0.0.1', '2024-07-01 20:54:15.639454', '/upload/cover/1719836968243.jpeg', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (527, '127.0.0.1', '2024-07-01 20:54:15.640452', '/upload/cover/1719836968243.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (528, '127.0.0.1', '2024-07-01 20:54:15.641454', '/upload/cover/1719836968243.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (529, '127.0.0.1', '2024-07-01 20:54:15.643452', '/upload/cover/1719836968243.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (530, '127.0.0.1', '2024-07-01 20:54:15.643452', '/upload/cover/1719836968243.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (531, '127.0.0.1', '2024-07-01 20:54:15.644453', '/upload/cover/1719836968243.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (532, '127.0.0.1', '2024-07-01 20:54:16.243848', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (533, '127.0.0.1', '2024-07-01 20:54:16.802490', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (534, '127.0.0.1', '2024-07-01 20:54:18.050014', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (535, '127.0.0.1', '2024-07-01 20:54:25.747751', '/myapp/index/thing/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (536, '127.0.0.1', '2024-07-01 20:54:25.812180', '/upload/cover/1719836988716.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (537, '127.0.0.1', '2024-07-01 20:54:25.815212', '/upload/cover/1719836988716.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (538, '127.0.0.1', '2024-07-01 20:54:25.815721', '/upload/cover/1719836988716.jpeg', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (539, '127.0.0.1', '2024-07-01 20:54:25.816893', '/upload/cover/1719836988716.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (540, '127.0.0.1', '2024-07-01 20:54:25.818906', '/upload/cover/1719836988716.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (541, '127.0.0.1', '2024-07-01 20:54:25.819906', '/upload/cover/1719836988716.jpeg', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (542, '127.0.0.1', '2024-07-01 20:54:26.384464', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (543, '127.0.0.1', '2024-07-01 20:54:33.761345', '/myapp/admin/thing/update', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (544, '127.0.0.1', '2024-07-01 20:54:33.994333', '/myapp/admin/thing/list', 'GET', NULL, '124');
INSERT INTO `b_op_log` VALUES (545, '127.0.0.1', '2024-07-01 20:54:36.030606', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (546, '127.0.0.1', '2024-07-01 20:54:36.850288', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (547, '127.0.0.1', '2024-07-01 20:54:36.903532', '/upload/cover/1719836974981.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (548, '127.0.0.1', '2024-07-01 20:54:45.153450', '/myapp/admin/thing/update', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (549, '127.0.0.1', '2024-07-01 20:54:45.336085', '/myapp/admin/thing/list', 'GET', NULL, '124');
INSERT INTO `b_op_log` VALUES (550, '127.0.0.1', '2024-07-01 20:54:47.345402', '/myapp/index/thing/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (551, '127.0.0.1', '2024-07-01 20:54:47.705597', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (552, '127.0.0.1', '2024-07-01 20:54:48.975726', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (553, '127.0.0.1', '2024-07-01 20:54:49.001212', '/upload/cover/1719836974981.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (554, '127.0.0.1', '2024-07-01 20:54:49.487326', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (555, '127.0.0.1', '2024-07-01 20:54:52.543343', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (556, '127.0.0.1', '2024-07-01 20:54:53.555526', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (557, '127.0.0.1', '2024-07-01 20:55:17.855180', '/myapp/index/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (558, '127.0.0.1', '2024-07-01 20:55:17.858811', '/myapp/index/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (559, '127.0.0.1', '2024-07-01 20:55:17.902888', '/myapp/index/classification/list', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (560, '127.0.0.1', '2024-07-01 20:55:17.976166', '/upload/cover/1719836928097.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (561, '127.0.0.1', '2024-07-01 20:55:17.979718', '/upload/cover/1719836951219.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (562, '127.0.0.1', '2024-07-01 20:55:17.981763', '/upload/cover/1719836951219.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (563, '127.0.0.1', '2024-07-01 20:55:17.984451', '/upload/cover/1719836951219.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (564, '127.0.0.1', '2024-07-01 20:55:17.985541', '/upload/cover/1719836928097.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (565, '127.0.0.1', '2024-07-01 20:55:17.986078', '/upload/cover/1719836928097.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (566, '127.0.0.1', '2024-07-01 20:55:17.988050', '/upload/cover/1719836928097.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (567, '127.0.0.1', '2024-07-01 20:55:18.044821', '/upload/cover/1719836968243.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (568, '127.0.0.1', '2024-07-01 20:55:18.073054', '/upload/cover/1719836980620.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (569, '127.0.0.1', '2024-07-01 20:55:18.077075', '/upload/cover/1719836988716.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (570, '127.0.0.1', '2024-07-01 20:55:18.078073', '/upload/cover/1719836980620.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (571, '127.0.0.1', '2024-07-01 20:55:18.082383', '/upload/cover/1719836988716.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (572, '127.0.0.1', '2024-07-01 20:55:18.247066', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (573, '127.0.0.1', '2024-07-01 20:55:19.183156', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (574, '127.0.0.1', '2024-07-01 20:55:19.239629', '/upload/cover/1719836928097.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (575, '127.0.0.1', '2024-07-01 20:55:19.239629', '/upload/cover/1719836928097.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (576, '127.0.0.1', '2024-07-01 20:55:19.252950', '/upload/cover/1719836928097.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (577, '127.0.0.1', '2024-07-01 20:55:19.980952', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (578, '127.0.0.1', '2024-07-01 20:55:21.071116', '/myapp/index/thing/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (579, '127.0.0.1', '2024-07-01 20:55:21.116672', '/upload/cover/1719836928097.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (580, '127.0.0.1', '2024-07-01 20:55:21.117692', '/upload/cover/1719836928097.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (581, '127.0.0.1', '2024-07-01 20:55:21.119691', '/upload/cover/1719836980620.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (582, '127.0.0.1', '2024-07-01 20:55:21.620512', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (583, '127.0.0.1', '2024-07-01 20:55:21.674135', '/upload/cover/1719836974981.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (584, '127.0.0.1', '2024-07-01 20:55:22.245378', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (585, '127.0.0.1', '2024-07-01 20:55:22.305677', '/upload/cover/1719836988716.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (586, '127.0.0.1', '2024-07-01 20:55:22.305677', '/upload/cover/1719836944490.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (587, '127.0.0.1', '2024-07-01 20:55:22.306681', '/upload/cover/1719836944490.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (588, '127.0.0.1', '2024-07-01 20:55:22.309058', '/upload/cover/1719836944490.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (589, '127.0.0.1', '2024-07-01 20:55:22.854661', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (590, '127.0.0.1', '2024-07-01 20:55:22.896934', '/upload/cover/1719836928097.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (591, '127.0.0.1', '2024-07-01 20:55:22.897934', '/upload/cover/1719836928097.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (592, '127.0.0.1', '2024-07-01 20:55:22.898933', '/upload/cover/1719836928097.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (593, '127.0.0.1', '2024-07-01 20:55:23.311954', '/myapp/index/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (594, '127.0.0.1', '2024-07-01 20:55:24.931606', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (595, '127.0.0.1', '2024-07-01 20:55:24.983404', '/upload/cover/1719836974981.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (596, '127.0.0.1', '2024-07-01 20:55:25.374350', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (597, '127.0.0.1', '2024-07-01 20:55:25.421816', '/upload/cover/1719836944490.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (598, '127.0.0.1', '2024-07-01 20:55:25.424832', '/upload/cover/1719836944490.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (599, '127.0.0.1', '2024-07-01 20:55:25.425783', '/upload/cover/1719836944490.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (600, '127.0.0.1', '2024-07-01 20:55:25.427781', '/upload/cover/1719836944490.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (601, '127.0.0.1', '2024-07-01 20:55:25.750188', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (602, '127.0.0.1', '2024-07-01 20:55:25.774503', '/upload/cover/1719836938740.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (603, '127.0.0.1', '2024-07-01 20:55:26.267668', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (604, '127.0.0.1', '2024-07-01 20:55:26.323204', '/upload/cover/1719836933616.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (605, '127.0.0.1', '2024-07-01 20:55:26.323204', '/upload/cover/1719836933616.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (606, '127.0.0.1', '2024-07-01 20:55:26.865303', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (607, '127.0.0.1', '2024-07-01 20:55:26.918473', '/upload/cover/1719836944490.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (608, '127.0.0.1', '2024-07-01 20:55:26.918473', '/upload/cover/1719836944490.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (609, '127.0.0.1', '2024-07-01 20:55:26.919447', '/upload/cover/1719836944490.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (610, '127.0.0.1', '2024-07-01 20:55:26.921486', '/upload/cover/1719836944490.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (611, '127.0.0.1', '2024-07-01 20:55:38.533417', '/myapp/admin/thing/update', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (612, '127.0.0.1', '2024-07-01 20:55:38.729259', '/myapp/admin/thing/list', 'GET', NULL, '107');
INSERT INTO `b_op_log` VALUES (613, '127.0.0.1', '2024-07-01 20:55:40.375931', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (614, '127.0.0.1', '2024-07-01 20:55:40.414324', '/upload/cover/1719836928097.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (615, '127.0.0.1', '2024-07-01 20:55:40.415313', '/upload/cover/1719836928097.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (616, '127.0.0.1', '2024-07-01 20:55:40.416306', '/upload/cover/1719836928097.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (617, '127.0.0.1', '2024-07-01 20:55:40.896392', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (618, '127.0.0.1', '2024-07-01 20:55:40.934662', '/upload/cover/1719836944490.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (619, '127.0.0.1', '2024-07-01 20:55:42.371473', '/myapp/index/thing/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (620, '127.0.0.1', '2024-07-01 20:55:42.420850', '/upload/cover/1719836980620.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (621, '127.0.0.1', '2024-07-01 20:55:42.424880', '/upload/cover/1719836958596.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (622, '127.0.0.1', '2024-07-01 20:55:42.425862', '/upload/cover/1719836974981.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (623, '127.0.0.1', '2024-07-01 20:55:42.426863', '/upload/cover/1719836958596.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (624, '127.0.0.1', '2024-07-01 20:55:42.427887', '/upload/cover/1719836958596.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (625, '127.0.0.1', '2024-07-01 20:55:42.428863', '/upload/cover/1719836958596.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (626, '127.0.0.1', '2024-07-01 20:55:42.475806', '/upload/cover/1719836938740.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (627, '127.0.0.1', '2024-07-01 20:55:42.479809', '/upload/cover/1719836938740.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (628, '127.0.0.1', '2024-07-01 20:55:42.479809', '/upload/cover/1719836933616.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (629, '127.0.0.1', '2024-07-01 20:55:42.494810', '/upload/cover/1719836951219.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (630, '127.0.0.1', '2024-07-01 20:55:43.011557', '/myapp/index/thing/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (631, '127.0.0.1', '2024-07-01 20:55:43.628896', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (632, '127.0.0.1', '2024-07-01 20:55:44.316078', '/myapp/index/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (633, '127.0.0.1', '2024-07-01 20:55:44.351805', '/upload/cover/1719836938740.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (634, '127.0.0.1', '2024-07-01 20:55:44.796900', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (635, '127.0.0.1', '2024-07-01 20:55:44.854911', '/upload/cover/1719836944490.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (636, '127.0.0.1', '2024-07-01 20:55:44.855911', '/upload/cover/1719836944490.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (637, '127.0.0.1', '2024-07-01 20:55:44.855911', '/upload/cover/1719836944490.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (638, '127.0.0.1', '2024-07-01 20:55:44.856907', '/upload/cover/1719836944490.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (639, '127.0.0.1', '2024-07-01 20:55:44.858302', '/upload/cover/1719836944490.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (640, '127.0.0.1', '2024-07-01 20:55:44.862319', '/upload/cover/1719836944490.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (641, '127.0.0.1', '2024-07-01 20:55:44.901313', '/upload/cover/1719836928097.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (642, '127.0.0.1', '2024-07-01 20:55:45.296328', '/myapp/index/thing/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (643, '127.0.0.1', '2024-07-01 20:55:45.364914', '/upload/cover/1719836988716.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (644, '127.0.0.1', '2024-07-01 20:55:45.843871', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (645, '127.0.0.1', '2024-07-01 20:55:45.865891', '/upload/cover/1719836958596.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (646, '127.0.0.1', '2024-07-01 20:55:46.645678', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (647, '127.0.0.1', '2024-07-01 20:55:47.889346', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (648, '127.0.0.1', '2024-07-01 20:55:47.941635', '/upload/cover/1719836938740.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (649, '127.0.0.1', '2024-07-01 20:55:48.925643', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (650, '127.0.0.1', '2024-07-01 20:55:49.573121', '/myapp/index/thing/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (651, '127.0.0.1', '2024-07-01 20:55:49.619506', '/upload/cover/1719836974981.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (652, '127.0.0.1', '2024-07-01 20:55:49.620508', '/upload/cover/1719836974981.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (653, '127.0.0.1', '2024-07-01 20:55:49.620508', '/upload/cover/1719836974981.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (654, '127.0.0.1', '2024-07-01 20:55:49.624506', '/upload/cover/1719836974981.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (655, '127.0.0.1', '2024-07-01 20:55:49.624506', '/upload/cover/1719836974981.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (656, '127.0.0.1', '2024-07-01 20:55:49.625506', '/upload/cover/1719836974981.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (657, '127.0.0.1', '2024-07-01 20:55:49.658873', '/upload/cover/1719836980620.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (658, '127.0.0.1', '2024-07-01 20:55:50.543843', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (659, '127.0.0.1', '2024-07-01 20:55:51.797884', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (660, '127.0.0.1', '2024-07-01 20:55:51.854428', '/upload/cover/1719836988716.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (661, '127.0.0.1', '2024-07-01 20:55:52.839909', '/myapp/index/thing/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (662, '127.0.0.1', '2024-07-01 20:55:52.872388', '/upload/cover/1719836958596.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (663, '127.0.0.1', '2024-07-01 20:56:01.865955', '/myapp/admin/thing/update', 'POST', NULL, '58');
INSERT INTO `b_op_log` VALUES (664, '127.0.0.1', '2024-07-01 20:56:02.143399', '/myapp/admin/thing/list', 'GET', NULL, '187');
INSERT INTO `b_op_log` VALUES (665, '127.0.0.1', '2024-07-01 20:56:04.711075', '/myapp/index/thing/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (666, '127.0.0.1', '2024-07-01 20:56:04.757595', '/upload/cover/1719836928097.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (667, '127.0.0.1', '2024-07-01 20:56:04.759588', '/upload/cover/1719836968243.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (668, '127.0.0.1', '2024-07-01 20:56:04.762589', '/upload/cover/1719836968243.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (669, '127.0.0.1', '2024-07-01 20:56:04.764597', '/upload/cover/1719836968243.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (670, '127.0.0.1', '2024-07-01 20:56:04.764597', '/upload/cover/1719836968243.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (671, '127.0.0.1', '2024-07-01 20:56:04.766590', '/upload/cover/1719836968243.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (672, '127.0.0.1', '2024-07-01 20:56:04.797593', '/upload/cover/1719836933616.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (673, '127.0.0.1', '2024-07-01 20:56:04.828898', '/upload/cover/1719836938740.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (674, '127.0.0.1', '2024-07-01 20:56:04.832900', '/upload/cover/1719836951219.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (675, '127.0.0.1', '2024-07-01 20:56:04.833898', '/upload/cover/1719836951219.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (676, '127.0.0.1', '2024-07-01 20:56:05.318150', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (677, '127.0.0.1', '2024-07-01 20:56:05.964275', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (678, '127.0.0.1', '2024-07-01 20:56:05.998675', '/upload/cover/1719836928097.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (679, '127.0.0.1', '2024-07-01 20:56:06.566594', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (680, '127.0.0.1', '2024-07-01 20:56:06.598495', '/upload/cover/1719836938740.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (681, '127.0.0.1', '2024-07-01 20:56:07.087270', '/myapp/index/thing/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (682, '127.0.0.1', '2024-07-01 20:56:07.142968', '/upload/cover/1719836270958.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (683, '127.0.0.1', '2024-07-01 20:56:07.147579', '/upload/cover/1719836944490.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (684, '127.0.0.1', '2024-07-01 20:56:07.148592', '/upload/cover/1719836944490.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (685, '127.0.0.1', '2024-07-01 20:56:07.149591', '/upload/cover/1719836944490.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (686, '127.0.0.1', '2024-07-01 20:56:07.151851', '/upload/cover/1719836944490.jpeg', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (687, '127.0.0.1', '2024-07-01 20:56:07.154810', '/upload/cover/1719836944490.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (688, '127.0.0.1', '2024-07-01 20:56:07.821368', '/myapp/index/thing/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (689, '127.0.0.1', '2024-07-01 20:56:07.875865', '/upload/cover/1719836928097.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (690, '127.0.0.1', '2024-07-01 20:56:07.875865', '/upload/cover/1719836928097.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (691, '127.0.0.1', '2024-07-01 20:56:07.878209', '/upload/cover/1719836928097.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (692, '127.0.0.1', '2024-07-01 20:56:07.878209', '/upload/cover/1719836928097.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (693, '127.0.0.1', '2024-07-01 20:56:07.880505', '/upload/cover/1719836928097.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (694, '127.0.0.1', '2024-07-01 20:56:48.010176', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (695, '127.0.0.1', '2024-07-01 20:56:49.160497', '/myapp/index/thing/list', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (696, '127.0.0.1', '2024-07-01 20:56:52.732274', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (697, '127.0.0.1', '2024-07-01 20:56:52.762481', '/myapp/index/comment/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (698, '127.0.0.1', '2024-07-01 20:56:52.775325', '/myapp/index/comment/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (699, '127.0.0.1', '2024-07-01 20:56:52.807208', '/myapp/index/comment/list', 'GET', NULL, '91');
INSERT INTO `b_op_log` VALUES (700, '127.0.0.1', '2024-07-01 20:56:52.832356', '/myapp/index/comment/list', 'GET', NULL, '115');
INSERT INTO `b_op_log` VALUES (701, '127.0.0.1', '2024-07-01 20:56:52.875470', '/myapp/index/comment/list', 'GET', NULL, '159');
INSERT INTO `b_op_log` VALUES (702, '127.0.0.1', '2024-07-01 20:56:54.346867', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (703, '127.0.0.1', '2024-07-01 20:56:54.349881', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (704, '127.0.0.1', '2024-07-01 20:56:54.415228', '/myapp/index/thing/list', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (705, '127.0.0.1', '2024-07-01 20:56:54.455714', '/myapp/index/thing/list', 'GET', NULL, '121');
INSERT INTO `b_op_log` VALUES (706, '127.0.0.1', '2024-07-01 20:56:55.543439', '/myapp/index/thing/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (707, '127.0.0.1', '2024-07-01 20:56:56.404788', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (708, '127.0.0.1', '2024-07-01 20:59:46.147025', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (709, '127.0.0.1', '2024-07-01 20:59:46.150747', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (710, '127.0.0.1', '2024-07-01 20:59:46.246715', '/myapp/index/thing/list', 'GET', NULL, '112');
INSERT INTO `b_op_log` VALUES (711, '127.0.0.1', '2024-07-01 20:59:46.253591', '/myapp/index/thing/list', 'GET', NULL, '117');
INSERT INTO `b_op_log` VALUES (712, '127.0.0.1', '2024-07-01 21:00:24.904681', '/myapp/index/thing/list', 'GET', NULL, '93');
INSERT INTO `b_op_log` VALUES (713, '127.0.0.1', '2024-07-01 21:00:25.851653', '/myapp/index/thing/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (714, '127.0.0.1', '2024-07-01 21:00:27.957644', '/myapp/index/comment/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (715, '127.0.0.1', '2024-07-01 21:00:27.980179', '/myapp/index/comment/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (716, '127.0.0.1', '2024-07-01 21:00:28.013172', '/myapp/index/comment/list', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (717, '127.0.0.1', '2024-07-01 21:00:28.036003', '/myapp/index/comment/list', 'GET', NULL, '95');
INSERT INTO `b_op_log` VALUES (718, '127.0.0.1', '2024-07-01 21:00:28.084019', '/upload/cover/1719836928097.jpeg', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (719, '127.0.0.1', '2024-07-01 21:00:28.089180', '/upload/cover/1719836928097.jpeg', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (720, '127.0.0.1', '2024-07-01 21:00:28.092473', '/upload/cover/1719836928097.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (721, '127.0.0.1', '2024-07-01 21:00:28.117472', '/upload/cover/1719836938740.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (722, '127.0.0.1', '2024-07-01 21:00:28.119535', '/upload/cover/1719836938740.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (723, '127.0.0.1', '2024-07-01 21:00:28.120537', '/upload/cover/1719836938740.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (724, '127.0.0.1', '2024-07-01 21:08:46.051077', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (725, '127.0.0.1', '2024-07-01 21:08:46.065095', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (726, '127.0.0.1', '2024-07-01 21:08:46.094616', '/myapp/index/thing/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (727, '127.0.0.1', '2024-07-01 21:08:46.149448', '/upload/cover/1719836958596.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (728, '127.0.0.1', '2024-07-01 21:08:46.150446', '/upload/cover/1719836958596.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (729, '127.0.0.1', '2024-07-01 21:08:46.164465', '/upload/cover/1719836958596.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (730, '127.0.0.1', '2024-07-01 21:08:46.165468', '/upload/cover/1719836980620.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (731, '127.0.0.1', '2024-07-01 21:08:46.168466', '/upload/cover/1719836980620.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (732, '127.0.0.1', '2024-07-01 21:08:46.168466', '/upload/cover/1719836968243.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (733, '127.0.0.1', '2024-07-01 21:08:46.169466', '/upload/cover/1719836988716.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (734, '127.0.0.1', '2024-07-01 21:08:52.411802', '/myapp/index/user/register', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (735, '127.0.0.1', '2024-07-01 21:08:55.021122', '/myapp/index/user/login', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (736, '127.0.0.1', '2024-07-01 21:08:55.115496', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (737, '127.0.0.1', '2024-07-01 21:08:55.123963', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (738, '127.0.0.1', '2024-07-01 21:08:55.131404', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (739, '127.0.0.1', '2024-07-01 21:08:55.169739', '/myapp/index/thing/list', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (740, '127.0.0.1', '2024-07-01 21:08:56.647239', '/myapp/index/comment/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (741, '127.0.0.1', '2024-07-01 21:08:56.662213', '/myapp/index/comment/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (742, '127.0.0.1', '2024-07-01 21:08:56.676227', '/myapp/index/comment/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (743, '127.0.0.1', '2024-07-01 21:08:56.701452', '/myapp/index/comment/list', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (744, '127.0.0.1', '2024-07-01 21:08:56.708197', '/myapp/index/comment/list', 'GET', NULL, '77');
INSERT INTO `b_op_log` VALUES (745, '127.0.0.1', '2024-07-01 21:08:56.734141', '/myapp/index/comment/list', 'GET', NULL, '103');
INSERT INTO `b_op_log` VALUES (746, '127.0.0.1', '2024-07-01 21:08:58.497490', '/myapp/index/thing/addWishUser', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (747, '127.0.0.1', '2024-07-01 21:08:58.614388', '/myapp/index/thing/detail', 'GET', NULL, '87');
INSERT INTO `b_op_log` VALUES (748, '127.0.0.1', '2024-07-01 21:08:59.155472', '/myapp/index/thing/addCollectUser', 'POST', NULL, '51');
INSERT INTO `b_op_log` VALUES (749, '127.0.0.1', '2024-07-01 21:08:59.215197', '/myapp/index/thing/detail', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (750, '127.0.0.1', '2024-07-01 21:10:12.517969', '/myapp/index/thing/getRecommend', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (751, '127.0.0.1', '2024-07-01 21:10:12.521539', '/myapp/index/thing/getRecommend', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (752, '127.0.0.1', '2024-07-01 21:10:12.555394', '/myapp/index/thing/getRecommend', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (753, '127.0.0.1', '2024-07-01 21:10:13.639332', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (754, '127.0.0.1', '2024-07-01 21:10:13.649673', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (755, '127.0.0.1', '2024-07-01 21:10:13.655641', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (756, '127.0.0.1', '2024-07-01 21:10:13.681665', '/myapp/index/user/info', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (757, '127.0.0.1', '2024-07-01 21:10:16.626853', '/myapp/index/user/info', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (758, '127.0.0.1', '2024-07-01 21:10:16.632113', '/myapp/index/user/info', 'GET', NULL, '87');
INSERT INTO `b_op_log` VALUES (759, '127.0.0.1', '2024-07-01 21:10:16.639114', '/myapp/index/user/info', 'GET', NULL, '94');
INSERT INTO `b_op_log` VALUES (760, '127.0.0.1', '2024-07-01 21:10:16.653744', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (761, '127.0.0.1', '2024-07-01 21:10:16.661201', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (762, '127.0.0.1', '2024-07-01 21:10:16.683464', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (763, '127.0.0.1', '2024-07-01 21:10:50.127958', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (764, '127.0.0.1', '2024-07-01 21:10:50.792462', '/myapp/index/thing/getWishThingList', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (765, '127.0.0.1', '2024-07-01 21:10:52.859620', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (766, '127.0.0.1', '2024-07-01 21:10:56.840287', '/myapp/index/thing/getRecommend', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (767, '127.0.0.1', '2024-07-01 21:10:56.849231', '/myapp/index/thing/getRecommend', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (768, '127.0.0.1', '2024-07-01 21:10:56.873529', '/myapp/index/thing/getRecommend', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (769, '127.0.0.1', '2024-07-01 21:10:56.898532', '/upload/cover/1719836938740.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (770, '127.0.0.1', '2024-07-01 21:10:56.900015', '/upload/cover/1719836938740.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (771, '127.0.0.1', '2024-07-01 21:10:56.900015', '/upload/cover/1719836938740.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (772, '127.0.0.1', '2024-07-01 21:10:58.961716', '/myapp/index/thing/detail', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (773, '127.0.0.1', '2024-07-01 21:10:58.980101', '/myapp/index/thing/detail', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (774, '127.0.0.1', '2024-07-01 21:10:58.983097', '/myapp/index/thing/detail', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (775, '127.0.0.1', '2024-07-01 21:10:58.991306', '/myapp/index/thing/detail', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (776, '127.0.0.1', '2024-07-01 21:10:59.036826', '/myapp/index/thing/detail', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (777, '127.0.0.1', '2024-07-01 21:10:59.041827', '/myapp/index/thing/detail', 'GET', NULL, '84');
INSERT INTO `b_op_log` VALUES (778, '127.0.0.1', '2024-07-01 21:10:59.099695', '/upload/cover/1719836933616.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (779, '127.0.0.1', '2024-07-01 21:11:00.055070', '/myapp/index/thing/addWishUser', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (780, '127.0.0.1', '2024-07-01 21:11:00.178899', '/myapp/index/thing/detail', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (781, '127.0.0.1', '2024-07-01 21:11:00.696105', '/myapp/index/thing/addCollectUser', 'POST', NULL, '61');
INSERT INTO `b_op_log` VALUES (782, '127.0.0.1', '2024-07-01 21:11:00.762337', '/myapp/index/thing/detail', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (783, '127.0.0.1', '2024-07-01 21:11:02.582326', '/myapp/admin/ad/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (784, '127.0.0.1', '2024-07-01 21:11:02.593491', '/myapp/admin/ad/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (785, '127.0.0.1', '2024-07-01 21:11:02.626894', '/myapp/admin/ad/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (786, '127.0.0.1', '2024-07-01 21:11:02.659448', '/myapp/admin/ad/list', 'GET', NULL, '98');
INSERT INTO `b_op_log` VALUES (787, '127.0.0.1', '2024-07-01 21:11:03.454184', '/myapp/index/thing/addWishUser', 'POST', NULL, '54');
INSERT INTO `b_op_log` VALUES (788, '127.0.0.1', '2024-07-01 21:11:03.525056', '/myapp/index/thing/detail', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (789, '127.0.0.1', '2024-07-01 21:11:03.897362', '/myapp/index/thing/addCollectUser', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (790, '127.0.0.1', '2024-07-01 21:11:03.964577', '/myapp/index/thing/detail', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (791, '127.0.0.1', '2024-07-01 21:11:07.676426', '/myapp/index/thing/getWishThingList', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (792, '127.0.0.1', '2024-07-01 21:11:07.686873', '/myapp/index/thing/getWishThingList', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (793, '127.0.0.1', '2024-07-01 21:11:07.719207', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (794, '127.0.0.1', '2024-07-01 21:11:07.722330', '/myapp/index/user/info', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (795, '127.0.0.1', '2024-07-01 21:11:07.729342', '/myapp/index/user/info', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (796, '127.0.0.1', '2024-07-01 21:11:07.752963', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (797, '127.0.0.1', '2024-07-01 21:11:08.589708', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (798, '127.0.0.1', '2024-07-01 21:11:09.394519', '/myapp/index/thing/getWishThingList', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (799, '127.0.0.1', '2024-07-01 21:11:10.899769', '/myapp/index/thing/removeWishUser', 'POST', NULL, '54');
INSERT INTO `b_op_log` VALUES (800, '127.0.0.1', '2024-07-01 21:11:10.943560', '/myapp/index/thing/getWishThingList', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (801, '127.0.0.1', '2024-07-01 21:11:12.585351', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (802, '127.0.0.1', '2024-07-01 21:11:57.232458', '/myapp/admin/ad/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (803, '127.0.0.1', '2024-07-01 21:11:57.240762', '/myapp/admin/ad/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (804, '127.0.0.1', '2024-07-01 21:11:57.245762', '/myapp/admin/ad/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (805, '127.0.0.1', '2024-07-01 21:11:57.247762', '/myapp/admin/ad/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (806, '127.0.0.1', '2024-07-01 21:11:57.272521', '/myapp/admin/ad/list', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (807, '127.0.0.1', '2024-07-01 21:11:57.284873', '/myapp/admin/ad/list', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (808, '127.0.0.1', '2024-07-01 21:15:34.749568', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (809, '127.0.0.1', '2024-07-01 21:15:34.752593', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (810, '127.0.0.1', '2024-07-01 21:18:41.387968', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (811, '127.0.0.1', '2024-07-01 21:18:41.391008', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (812, '127.0.0.1', '2024-07-01 21:19:34.281483', '/myapp/admin/ad/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (813, '127.0.0.1', '2024-07-01 21:19:34.291545', '/myapp/admin/ad/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (814, '127.0.0.1', '2024-07-01 21:19:34.307661', '/myapp/admin/ad/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (815, '127.0.0.1', '2024-07-01 21:19:34.321005', '/myapp/admin/ad/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (816, '127.0.0.1', '2024-07-01 21:19:34.359352', '/myapp/admin/ad/list', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (817, '127.0.0.1', '2024-07-01 21:19:34.372665', '/myapp/admin/ad/list', 'GET', NULL, '96');
INSERT INTO `b_op_log` VALUES (818, '127.0.0.1', '2024-07-01 21:19:34.441434', '/upload/cover/1719836270958.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (819, '127.0.0.1', '2024-07-01 21:19:35.663994', '/myapp/index/thing/getRecommend', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (820, '127.0.0.1', '2024-07-01 21:19:35.678738', '/myapp/index/thing/getRecommend', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (821, '127.0.0.1', '2024-07-01 21:19:35.686965', '/myapp/index/thing/getRecommend', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (822, '127.0.0.1', '2024-07-01 21:19:35.696849', '/myapp/index/thing/getRecommend', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (823, '127.0.0.1', '2024-07-01 21:19:35.713636', '/myapp/index/thing/getRecommend', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (824, '127.0.0.1', '2024-07-01 21:19:35.747270', '/myapp/index/thing/getRecommend', 'GET', NULL, '96');
INSERT INTO `b_op_log` VALUES (825, '127.0.0.1', '2024-07-01 21:22:36.348055', '/myapp/index/order/create', 'POST', NULL, '75');
INSERT INTO `b_op_log` VALUES (826, '127.0.0.1', '2024-07-01 21:22:36.821397', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (827, '127.0.0.1', '2024-07-01 21:22:36.830398', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (828, '127.0.0.1', '2024-07-01 21:23:10.605874', '/myapp/index/order/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (829, '127.0.0.1', '2024-07-01 21:23:10.614953', '/myapp/index/order/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (830, '127.0.0.1', '2024-07-01 21:23:10.645387', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (831, '127.0.0.1', '2024-07-01 21:23:10.672488', '/myapp/index/user/info', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (832, '127.0.0.1', '2024-07-01 21:23:10.685260', '/myapp/index/user/info', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (833, '127.0.0.1', '2024-07-01 21:23:10.692621', '/myapp/index/user/info', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (834, '127.0.0.1', '2024-07-01 21:25:24.203062', '/myapp/admin/ad/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (835, '127.0.0.1', '2024-07-01 21:25:24.211196', '/myapp/admin/ad/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (836, '127.0.0.1', '2024-07-01 21:25:24.222682', '/myapp/admin/ad/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (837, '127.0.0.1', '2024-07-01 21:25:24.244838', '/myapp/admin/ad/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (838, '127.0.0.1', '2024-07-01 21:25:24.276468', '/myapp/admin/ad/list', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (839, '127.0.0.1', '2024-07-01 21:25:24.302001', '/upload/cover/1719836928097.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (840, '127.0.0.1', '2024-07-01 21:25:24.314136', '/upload/cover/1719836928097.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (841, '127.0.0.1', '2024-07-01 21:25:24.333370', '/upload/cover/1719836933616.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (842, '127.0.0.1', '2024-07-01 21:25:24.340303', '/upload/cover/1719836944490.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (843, '127.0.0.1', '2024-07-01 21:25:25.301148', '/myapp/admin/ad/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (844, '127.0.0.1', '2024-07-01 21:25:25.296646', '/myapp/admin/ad/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (845, '127.0.0.1', '2024-07-01 21:25:25.304843', '/myapp/admin/ad/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (846, '127.0.0.1', '2024-07-01 21:25:25.316310', '/myapp/admin/ad/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (847, '127.0.0.1', '2024-07-01 21:25:25.365476', '/myapp/admin/ad/list', 'GET', NULL, '86');
INSERT INTO `b_op_log` VALUES (848, '127.0.0.1', '2024-07-01 21:25:25.386469', '/myapp/admin/ad/list', 'GET', NULL, '107');
INSERT INTO `b_op_log` VALUES (849, '127.0.0.1', '2024-07-01 21:25:43.626555', '/myapp/index/order/create', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (850, '127.0.0.1', '2024-07-01 21:25:43.731861', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (851, '127.0.0.1', '2024-07-01 21:25:43.737161', '/myapp/index/user/info', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (852, '127.0.0.1', '2024-07-01 21:25:47.739020', '/myapp/index/thing/listUserThing', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (853, '127.0.0.1', '2024-07-01 21:25:47.748487', '/myapp/index/thing/listUserThing', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (854, '127.0.0.1', '2024-07-01 21:25:48.175856', '/myapp/index/order/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (855, '127.0.0.1', '2024-07-01 21:25:52.782784', '/myapp/index/order/cancel_order', 'POST', NULL, '52');
INSERT INTO `b_op_log` VALUES (856, '127.0.0.1', '2024-07-01 21:25:52.853974', '/myapp/index/order/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (857, '127.0.0.1', '2024-07-01 21:26:18.590152', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (858, '127.0.0.1', '2024-07-01 21:26:18.627357', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (859, '127.0.0.1', '2024-07-01 21:26:18.676857', '/myapp/index/user/info', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (860, '127.0.0.1', '2024-07-01 21:26:18.682843', '/myapp/index/user/info', 'GET', NULL, '77');
INSERT INTO `b_op_log` VALUES (861, '127.0.0.1', '2024-07-01 21:26:18.709839', '/myapp/index/user/info', 'GET', NULL, '104');
INSERT INTO `b_op_log` VALUES (862, '127.0.0.1', '2024-07-01 21:26:18.728276', '/myapp/index/user/info', 'GET', NULL, '121');
INSERT INTO `b_op_log` VALUES (863, '127.0.0.1', '2024-07-01 21:26:21.340514', '/myapp/admin/ad/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (864, '127.0.0.1', '2024-07-01 21:26:21.344063', '/myapp/admin/ad/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (865, '127.0.0.1', '2024-07-01 21:26:21.390733', '/myapp/admin/ad/list', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (866, '127.0.0.1', '2024-07-01 21:26:21.404006', '/myapp/admin/ad/list', 'GET', NULL, '75');
INSERT INTO `b_op_log` VALUES (867, '127.0.0.1', '2024-07-01 21:26:21.427088', '/myapp/admin/ad/list', 'GET', NULL, '100');
INSERT INTO `b_op_log` VALUES (868, '127.0.0.1', '2024-07-01 21:26:21.458388', '/myapp/admin/ad/list', 'GET', NULL, '131');
INSERT INTO `b_op_log` VALUES (869, '127.0.0.1', '2024-07-01 21:26:21.523906', '/upload/cover/1719836270958.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (870, '127.0.0.1', '2024-07-01 21:26:22.191875', '/myapp/admin/ad/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (871, '127.0.0.1', '2024-07-01 21:26:22.217878', '/myapp/admin/ad/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (872, '127.0.0.1', '2024-07-01 21:26:22.220879', '/myapp/admin/ad/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (873, '127.0.0.1', '2024-07-01 21:26:22.235529', '/myapp/admin/ad/list', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (874, '127.0.0.1', '2024-07-01 21:26:22.277803', '/myapp/admin/ad/list', 'GET', NULL, '109');
INSERT INTO `b_op_log` VALUES (875, '127.0.0.1', '2024-07-01 21:26:22.307574', '/myapp/admin/ad/list', 'GET', NULL, '140');
INSERT INTO `b_op_log` VALUES (876, '127.0.0.1', '2024-07-01 21:26:46.307402', '/myapp/index/order/create', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (877, '127.0.0.1', '2024-07-01 21:26:46.719085', '/myapp/index/notice/list_api', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (878, '127.0.0.1', '2024-07-01 21:26:46.723836', '/myapp/index/notice/list_api', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (879, '127.0.0.1', '2024-07-01 21:26:47.932128', '/myapp/index/order/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (880, '127.0.0.1', '2024-07-01 21:26:47.940708', '/myapp/index/order/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (881, '127.0.0.1', '2024-07-01 21:26:47.989706', '/myapp/index/user/info', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (882, '127.0.0.1', '2024-07-01 21:26:48.035503', '/myapp/index/user/info', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (883, '127.0.0.1', '2024-07-01 21:26:48.039430', '/myapp/index/user/info', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (884, '127.0.0.1', '2024-07-01 21:26:48.061091', '/myapp/index/user/info', 'GET', NULL, '101');
INSERT INTO `b_op_log` VALUES (885, '127.0.0.1', '2024-07-01 21:26:51.807185', '/myapp/admin/order/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (886, '127.0.0.1', '2024-07-01 21:26:55.414519', '/myapp/admin/order/cancel_order', 'POST', NULL, '74');
INSERT INTO `b_op_log` VALUES (887, '127.0.0.1', '2024-07-01 21:26:55.534938', '/myapp/admin/order/list', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (888, '127.0.0.1', '2024-07-01 21:27:44.926487', '/myapp/admin/order/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (889, '127.0.0.1', '2024-07-01 21:28:12.324141', '/myapp/admin/order/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (890, '127.0.0.1', '2024-07-01 21:28:21.108109', '/myapp/admin/order/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (891, '127.0.0.1', '2024-07-01 21:28:32.179303', '/myapp/admin/order/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (892, '127.0.0.1', '2024-07-01 21:28:35.004257', '/myapp/admin/order/delete', 'POST', NULL, '27');
INSERT INTO `b_op_log` VALUES (893, '127.0.0.1', '2024-07-01 21:28:35.070825', '/myapp/admin/order/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (894, '127.0.0.1', '2024-07-01 21:28:53.067594', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (895, '127.0.0.1', '2024-07-01 21:28:53.186922', '/myapp/admin/classification/list', 'GET', NULL, '130');
INSERT INTO `b_op_log` VALUES (896, '127.0.0.1', '2024-07-01 21:28:53.670288', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (897, '127.0.0.1', '2024-07-01 21:28:54.524673', '/myapp/admin/comment/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (898, '127.0.0.1', '2024-07-01 21:29:01.865487', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (899, '127.0.0.1', '2024-07-01 21:29:01.878707', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (900, '127.0.0.1', '2024-07-01 21:29:01.883758', '/myapp/index/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (901, '127.0.0.1', '2024-07-01 21:29:01.947028', '/myapp/index/thing/list', 'GET', NULL, '99');
INSERT INTO `b_op_log` VALUES (902, '127.0.0.1', '2024-07-01 21:29:01.992818', '/upload/cover/1719836951219.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (903, '127.0.0.1', '2024-07-01 21:29:02.018483', '/upload/cover/1719836958596.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (904, '127.0.0.1', '2024-07-01 21:29:02.019478', '/upload/cover/1719836958596.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (905, '127.0.0.1', '2024-07-01 21:29:02.023478', '/upload/cover/1719836951219.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (906, '127.0.0.1', '2024-07-01 21:29:02.033218', '/upload/cover/1719836974981.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (907, '127.0.0.1', '2024-07-01 21:29:02.034234', '/upload/cover/1719836988716.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (908, '127.0.0.1', '2024-07-01 21:29:02.035539', '/upload/cover/1719836980620.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (909, '127.0.0.1', '2024-07-01 21:29:02.839958', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (910, '127.0.0.1', '2024-07-01 21:29:02.851403', '/myapp/index/user/info', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (911, '127.0.0.1', '2024-07-01 21:29:02.858769', '/myapp/index/user/info', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (912, '127.0.0.1', '2024-07-01 21:29:02.880776', '/myapp/index/user/info', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (913, '127.0.0.1', '2024-07-01 21:29:02.942941', '/myapp/index/user/info', 'GET', NULL, '120');
INSERT INTO `b_op_log` VALUES (914, '127.0.0.1', '2024-07-01 21:29:02.963248', '/myapp/index/user/info', 'GET', NULL, '140');
INSERT INTO `b_op_log` VALUES (915, '127.0.0.1', '2024-07-01 21:29:06.549078', '/myapp/index/comment/create', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (916, '127.0.0.1', '2024-07-01 21:29:06.631450', '/myapp/index/comment/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (917, '127.0.0.1', '2024-07-01 21:29:08.086023', '/myapp/index/comment/create', 'POST', NULL, '27');
INSERT INTO `b_op_log` VALUES (918, '127.0.0.1', '2024-07-01 21:29:08.118547', '/myapp/index/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (919, '127.0.0.1', '2024-07-01 21:29:17.060902', '/myapp/admin/user/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (920, '127.0.0.1', '2024-07-01 21:29:17.681595', '/myapp/admin/comment/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (921, '127.0.0.1', '2024-07-01 21:29:18.437753', '/myapp/admin/order/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (922, '127.0.0.1', '2024-07-01 21:29:20.757530', '/myapp/admin/ad/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (923, '127.0.0.1', '2024-07-01 21:29:27.543228', '/myapp/admin/ad/create', 'POST', NULL, '363');
INSERT INTO `b_op_log` VALUES (924, '127.0.0.1', '2024-07-01 21:29:27.583097', '/myapp/admin/ad/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (925, '127.0.0.1', '2024-07-01 21:29:27.662534', '/upload/ad/1719840564979.jpeg', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (926, '127.0.0.1', '2024-07-01 21:29:35.809648', '/myapp/admin/ad/create', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (927, '127.0.0.1', '2024-07-01 21:29:35.867338', '/myapp/admin/ad/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (928, '127.0.0.1', '2024-07-01 21:29:35.929623', '/upload/ad/1719840573691.jpeg', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (929, '127.0.0.1', '2024-07-01 21:29:37.620747', '/myapp/admin/notice/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (930, '127.0.0.1', '2024-07-01 21:30:00.668992', '/myapp/admin/notice/create', 'POST', NULL, '24');
INSERT INTO `b_op_log` VALUES (931, '127.0.0.1', '2024-07-01 21:30:00.709970', '/myapp/admin/notice/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (932, '127.0.0.1', '2024-07-01 21:30:07.414474', '/myapp/admin/notice/create', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (933, '127.0.0.1', '2024-07-01 21:30:07.486277', '/myapp/admin/notice/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (934, '127.0.0.1', '2024-07-01 21:30:12.203058', '/myapp/admin/loginLog/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (935, '127.0.0.1', '2024-07-01 21:30:12.989495', '/myapp/admin/opLog/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (936, '127.0.0.1', '2024-07-01 21:30:13.709088', '/myapp/admin/errorLog/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (937, '127.0.0.1', '2024-07-01 21:30:15.992666', '/myapp/admin/overview/count', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (938, '127.0.0.1', '2024-07-01 21:30:18.628387', '/myapp/admin/feedback/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (939, '127.0.0.1', '2024-07-01 21:30:23.252254', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (940, '127.0.0.1', '2024-07-01 21:30:23.257634', '/myapp/index/user/info', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (941, '127.0.0.1', '2024-07-01 21:30:37.055579', '/myapp/index/feedback/create', 'POST', NULL, '14');
INSERT INTO `b_op_log` VALUES (942, '127.0.0.1', '2024-07-01 21:30:39.427479', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (943, '127.0.0.1', '2024-07-01 21:30:39.434720', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (944, '127.0.0.1', '2024-07-01 21:30:40.638580', '/myapp/admin/overview/count', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (945, '127.0.0.1', '2024-07-01 21:30:41.296333', '/myapp/admin/feedback/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (946, '127.0.0.1', '2024-07-01 21:31:15.225610', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1117');
INSERT INTO `b_op_log` VALUES (947, '127.0.0.1', '2024-07-01 21:31:16.006484', '/myapp/admin/feedback/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (948, '127.0.0.1', '2024-07-01 21:31:18.173054', '/myapp/admin/order/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (949, '127.0.0.1', '2024-07-01 21:31:18.906525', '/myapp/admin/user/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (950, '127.0.0.1', '2024-07-01 21:31:19.963020', '/myapp/admin/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (951, '127.0.0.1', '2024-07-01 21:31:26.062446', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (952, '127.0.0.1', '2024-07-01 21:31:26.067187', '/myapp/index/user/info', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (953, '127.0.0.1', '2024-07-01 21:31:49.655302', '/myapp/index/feedback/create', 'POST', NULL, '22');
INSERT INTO `b_op_log` VALUES (954, '127.0.0.1', '2024-07-01 21:31:51.757484', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (955, '127.0.0.1', '2024-07-01 21:31:51.764486', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (956, '127.0.0.1', '2024-07-01 21:32:07.139980', '/myapp/admin/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (957, '127.0.0.1', '2024-07-01 21:32:09.381479', '/myapp/admin/user/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (958, '127.0.0.1', '2024-07-01 21:32:10.725959', '/myapp/admin/order/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (959, '127.0.0.1', '2024-07-01 21:32:12.246781', '/myapp/admin/comment/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (960, '127.0.0.1', '2024-07-01 21:32:12.801680', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (961, '127.0.0.1', '2024-07-01 21:32:50.317836', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (962, '127.0.0.1', '2024-07-01 21:32:50.666336', '/myapp/index/user/info', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (963, '127.0.0.1', '2024-07-01 21:32:50.675364', '/myapp/index/user/info', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (964, '127.0.0.1', '2024-07-01 21:32:50.900537', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (965, '127.0.0.1', '2024-07-01 21:32:50.905591', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (966, '127.0.0.1', '2024-07-01 21:32:51.040202', '/myapp/admin/ad/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (967, '127.0.0.1', '2024-07-01 21:32:51.044690', '/myapp/admin/ad/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (968, '127.0.0.1', '2024-07-01 21:32:51.055736', '/myapp/admin/ad/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (969, '127.0.0.1', '2024-07-01 21:32:51.106903', '/upload/ad/1719840564979.jpeg', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (970, '127.0.0.1', '2024-07-01 21:32:51.121224', '/upload/ad/1719840564979.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (971, '127.0.0.1', '2024-07-01 21:32:51.125682', '/upload/ad/1719840564979.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (972, '127.0.0.1', '2024-07-01 21:32:51.142099', '/upload/ad/1719840564979.jpeg', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (973, '127.0.0.1', '2024-07-01 21:32:51.174889', '/upload/ad/1719840564979.jpeg', 'GET', NULL, '81');
INSERT INTO `b_op_log` VALUES (974, '127.0.0.1', '2024-07-01 21:32:51.185197', '/upload/cover/1719836928097.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (975, '127.0.0.1', '2024-07-01 21:32:51.229343', '/upload/cover/1719836944490.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (976, '127.0.0.1', '2024-07-01 21:32:51.230346', '/upload/cover/1719836944490.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (977, '127.0.0.1', '2024-07-01 21:33:23.581909', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (978, '127.0.0.1', '2024-07-01 21:33:23.589913', '/myapp/index/user/info', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (979, '127.0.0.1', '2024-07-01 21:33:23.729937', '/myapp/index/user/info', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (980, '127.0.0.1', '2024-07-01 21:33:23.726943', '/myapp/index/user/info', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (981, '127.0.0.1', '2024-07-01 21:33:24.819353', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (982, '127.0.0.1', '2024-07-01 21:33:25.145756', '/myapp/index/thing/detail', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (983, '127.0.0.1', '2024-07-01 21:33:25.157489', '/myapp/index/thing/detail', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (984, '127.0.0.1', '2024-07-01 21:33:25.192482', '/myapp/index/thing/detail', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (985, '127.0.0.1', '2024-07-01 21:33:25.234191', '/myapp/index/thing/detail', 'GET', NULL, '100');
INSERT INTO `b_op_log` VALUES (986, '127.0.0.1', '2024-07-01 21:33:25.273515', '/upload/ad/1719840573691.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (987, '127.0.0.1', '2024-07-01 21:33:25.275507', '/upload/ad/1719840573691.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (988, '127.0.0.1', '2024-07-01 21:33:25.284737', '/upload/ad/1719840573691.jpeg', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (989, '127.0.0.1', '2024-07-01 21:33:25.307697', '/upload/ad/1719840573691.jpeg', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (990, '127.0.0.1', '2024-07-01 21:33:25.380028', '/upload/cover/1719836270958.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (991, '127.0.0.1', '2024-07-01 21:34:39.186737', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (992, '127.0.0.1', '2024-07-01 21:34:39.191181', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (993, '127.0.0.1', '2024-07-01 21:34:41.807796', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (994, '127.0.0.1', '2024-07-01 21:34:41.810789', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (995, '127.0.0.1', '2024-07-01 21:34:41.821809', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (996, '127.0.0.1', '2024-07-01 21:34:41.873391', '/myapp/index/thing/list', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (997, '127.0.0.1', '2024-07-01 21:34:43.054943', '/myapp/index/thing/getRecommend', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (998, '127.0.0.1', '2024-07-01 21:34:43.068405', '/myapp/index/thing/getRecommend', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (999, '127.0.0.1', '2024-07-01 21:34:43.121079', '/myapp/index/thing/getRecommend', 'GET', NULL, '78');
INSERT INTO `b_op_log` VALUES (1000, '127.0.0.1', '2024-07-01 21:34:45.317315', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1001, '127.0.0.1', '2024-07-01 21:34:45.324600', '/myapp/index/user/info', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1002, '127.0.0.1', '2024-07-01 21:34:45.351653', '/myapp/index/user/info', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (1003, '127.0.0.1', '2024-07-01 21:34:45.397549', '/myapp/index/user/info', 'GET', NULL, '100');
INSERT INTO `b_op_log` VALUES (1004, '127.0.0.1', '2024-07-01 21:34:58.214138', '/myapp/index/thing/getRecommend', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1005, '127.0.0.1', '2024-07-01 21:34:58.220452', '/myapp/index/thing/getRecommend', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1006, '127.0.0.1', '2024-07-01 21:34:58.271071', '/myapp/index/thing/getRecommend', 'GET', NULL, '78');
INSERT INTO `b_op_log` VALUES (1007, '127.0.0.1', '2024-07-01 21:34:58.305728', '/upload/cover/1719836980620.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1008, '127.0.0.1', '2024-07-01 21:34:58.321102', '/upload/cover/1719836988716.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1009, '127.0.0.1', '2024-07-01 21:34:58.887900', '/myapp/index/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1010, '127.0.0.1', '2024-07-01 21:34:58.902605', '/myapp/index/classification/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1011, '127.0.0.1', '2024-07-01 21:34:58.916002', '/myapp/index/classification/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (1012, '127.0.0.1', '2024-07-01 21:34:58.982594', '/myapp/index/classification/list', 'GET', NULL, '111');
INSERT INTO `b_op_log` VALUES (1013, '127.0.0.1', '2024-07-01 21:35:16.234286', '/myapp/index/thing/getRecommend', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1014, '127.0.0.1', '2024-07-01 21:35:16.239637', '/myapp/index/thing/getRecommend', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1015, '127.0.0.1', '2024-07-01 21:35:16.557914', '/myapp/index/thing/getRecommend', 'GET', NULL, '334');
INSERT INTO `b_op_log` VALUES (1016, '127.0.0.1', '2024-07-01 21:35:17.776908', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1017, '127.0.0.1', '2024-07-01 21:35:17.785273', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1018, '127.0.0.1', '2024-07-01 21:35:17.800274', '/myapp/index/thing/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (1019, '127.0.0.1', '2024-07-01 21:35:17.866761', '/myapp/index/thing/list', 'GET', NULL, '112');
INSERT INTO `b_op_log` VALUES (1020, '127.0.0.1', '2024-07-01 21:35:18.645259', '/myapp/index/thing/getRecommend', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1021, '127.0.0.1', '2024-07-01 21:35:18.658284', '/myapp/index/thing/getRecommend', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (1022, '127.0.0.1', '2024-07-01 21:35:18.709329', '/myapp/index/thing/getRecommend', 'GET', NULL, '88');
INSERT INTO `b_op_log` VALUES (1023, '127.0.0.1', '2024-07-01 21:35:18.724925', '/myapp/index/thing/getRecommend', 'GET', NULL, '103');
INSERT INTO `b_op_log` VALUES (1024, '127.0.0.1', '2024-07-01 21:35:18.756989', '/myapp/index/thing/getRecommend', 'GET', NULL, '135');
INSERT INTO `b_op_log` VALUES (1025, '127.0.0.1', '2024-07-01 21:35:18.846564', '/myapp/index/thing/getRecommend', 'GET', NULL, '226');
INSERT INTO `b_op_log` VALUES (1026, '127.0.0.1', '2024-07-01 21:35:19.831876', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1027, '127.0.0.1', '2024-07-01 21:35:19.842828', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1028, '127.0.0.1', '2024-07-01 21:35:19.870808', '/myapp/index/thing/list', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (1029, '127.0.0.1', '2024-07-01 21:35:19.914583', '/myapp/index/thing/list', 'GET', NULL, '102');
INSERT INTO `b_op_log` VALUES (1030, '127.0.0.1', '2024-07-01 21:35:19.962696', '/upload/cover/1719836958596.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1031, '127.0.0.1', '2024-07-01 21:35:19.964699', '/upload/cover/1719836968243.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1032, '127.0.0.1', '2024-07-01 21:35:19.986103', '/upload/cover/1719836968243.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1033, '127.0.0.1', '2024-07-01 21:35:19.989104', '/upload/cover/1719836974981.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1034, '127.0.0.1', '2024-07-01 21:35:20.002505', '/upload/cover/1719836974981.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1035, '127.0.0.1', '2024-07-01 21:35:20.608159', '/myapp/index/thing/detail', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1036, '127.0.0.1', '2024-07-01 21:35:20.615180', '/myapp/index/thing/detail', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1037, '127.0.0.1', '2024-07-01 21:35:20.627687', '/myapp/index/thing/detail', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (1038, '127.0.0.1', '2024-07-01 21:35:20.709946', '/myapp/index/thing/detail', 'GET', NULL, '129');
INSERT INTO `b_op_log` VALUES (1039, '127.0.0.1', '2024-07-01 21:35:20.717022', '/myapp/index/thing/detail', 'GET', NULL, '137');
INSERT INTO `b_op_log` VALUES (1040, '127.0.0.1', '2024-07-01 21:35:20.728326', '/myapp/index/thing/detail', 'GET', NULL, '146');
INSERT INTO `b_op_log` VALUES (1041, '127.0.0.1', '2024-07-01 21:35:21.356478', '/myapp/index/user/info', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1042, '127.0.0.1', '2024-07-01 21:35:21.365077', '/myapp/index/user/info', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1043, '127.0.0.1', '2024-07-01 21:35:21.397459', '/myapp/index/user/info', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (1044, '127.0.0.1', '2024-07-01 21:35:21.445271', '/myapp/index/user/info', 'GET', NULL, '110');
INSERT INTO `b_op_log` VALUES (1045, '127.0.0.1', '2024-07-01 21:35:22.055117', '/myapp/admin/ad/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1046, '127.0.0.1', '2024-07-01 21:35:22.065403', '/myapp/admin/ad/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1047, '127.0.0.1', '2024-07-01 21:35:22.080329', '/myapp/admin/ad/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (1048, '127.0.0.1', '2024-07-01 21:35:22.107505', '/myapp/admin/ad/list', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (1049, '127.0.0.1', '2024-07-01 21:35:22.137937', '/myapp/admin/ad/list', 'GET', NULL, '102');
INSERT INTO `b_op_log` VALUES (1050, '127.0.0.1', '2024-07-01 21:35:22.147330', '/myapp/admin/ad/list', 'GET', NULL, '112');
INSERT INTO `b_op_log` VALUES (1051, '127.0.0.1', '2024-07-01 21:35:22.871406', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1052, '127.0.0.1', '2024-07-01 21:35:22.875411', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1053, '127.0.0.1', '2024-07-01 21:35:22.896819', '/myapp/index/thing/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1054, '127.0.0.1', '2024-07-01 21:35:22.951307', '/myapp/index/thing/list', 'GET', NULL, '97');
INSERT INTO `b_op_log` VALUES (1055, '127.0.0.1', '2024-07-01 21:35:23.605169', '/myapp/index/comment/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1056, '127.0.0.1', '2024-07-01 21:35:23.613420', '/myapp/index/comment/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1057, '127.0.0.1', '2024-07-01 21:35:23.620633', '/myapp/index/comment/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1058, '127.0.0.1', '2024-07-01 21:35:23.665053', '/myapp/index/comment/list', 'GET', NULL, '77');
INSERT INTO `b_op_log` VALUES (1059, '127.0.0.1', '2024-07-01 21:35:23.686816', '/myapp/index/comment/list', 'GET', NULL, '99');
INSERT INTO `b_op_log` VALUES (1060, '127.0.0.1', '2024-07-01 21:35:23.692789', '/myapp/index/comment/list', 'GET', NULL, '103');
INSERT INTO `b_op_log` VALUES (1061, '127.0.0.1', '2024-07-01 21:35:24.385266', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1062, '127.0.0.1', '2024-07-01 21:35:24.391609', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1063, '127.0.0.1', '2024-07-01 21:35:24.401614', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1064, '127.0.0.1', '2024-07-01 21:35:24.470043', '/myapp/index/thing/list', 'GET', NULL, '102');
INSERT INTO `b_op_log` VALUES (1065, '127.0.0.1', '2024-07-01 21:35:24.968137', '/myapp/index/thing/getRecommend', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1066, '127.0.0.1', '2024-07-01 21:35:24.983093', '/myapp/index/thing/getRecommend', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1067, '127.0.0.1', '2024-07-01 21:35:25.004082', '/myapp/index/thing/getRecommend', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (1068, '127.0.0.1', '2024-07-01 21:35:26.025956', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1069, '127.0.0.1', '2024-07-01 21:35:26.036495', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1070, '127.0.0.1', '2024-07-01 21:35:26.043498', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1071, '127.0.0.1', '2024-07-01 21:35:26.091722', '/myapp/index/thing/list', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (1072, '127.0.0.1', '2024-07-01 21:35:26.862130', '/myapp/index/comment/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1073, '127.0.0.1', '2024-07-01 21:35:26.874129', '/myapp/index/comment/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1074, '127.0.0.1', '2024-07-01 21:35:26.888862', '/myapp/index/comment/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (1075, '127.0.0.1', '2024-07-01 21:35:26.931242', '/upload/ad/1719840573691.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1076, '127.0.0.1', '2024-07-01 21:35:26.961816', '/upload/ad/1719840573691.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1077, '127.0.0.1', '2024-07-01 21:35:26.969286', '/upload/ad/1719840573691.jpeg', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (1078, '127.0.0.1', '2024-07-01 21:35:26.976316', '/upload/ad/1719840573691.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1079, '127.0.0.1', '2024-07-01 21:35:26.994305', '/upload/ad/1719840573691.jpeg', 'GET', NULL, '77');
INSERT INTO `b_op_log` VALUES (1080, '127.0.0.1', '2024-07-01 21:35:27.822441', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1081, '127.0.0.1', '2024-07-01 21:35:27.832105', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1082, '127.0.0.1', '2024-07-01 21:35:27.837688', '/myapp/index/thing/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (1083, '127.0.0.1', '2024-07-01 21:35:27.901237', '/myapp/index/thing/list', 'GET', NULL, '100');
INSERT INTO `b_op_log` VALUES (1084, '127.0.0.1', '2024-07-01 21:35:28.442905', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1085, '127.0.0.1', '2024-07-01 21:35:28.459478', '/myapp/index/user/info', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1086, '127.0.0.1', '2024-07-01 21:35:28.483795', '/myapp/index/user/info', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (1087, '127.0.0.1', '2024-07-01 21:35:29.420329', '/myapp/index/user/info', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1088, '127.0.0.1', '2024-07-01 21:35:29.424348', '/myapp/index/user/info', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1089, '127.0.0.1', '2024-07-01 21:35:29.436367', '/myapp/index/user/info', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (1090, '127.0.0.1', '2024-07-01 21:35:29.502913', '/myapp/index/user/info', 'GET', NULL, '110');
INSERT INTO `b_op_log` VALUES (1091, '127.0.0.1', '2024-07-01 21:35:30.853328', '/myapp/index/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1092, '127.0.0.1', '2024-07-01 21:35:30.871798', '/myapp/index/comment/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (1093, '127.0.0.1', '2024-07-01 21:35:30.879812', '/myapp/index/comment/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (1094, '127.0.0.1', '2024-07-01 21:35:30.904041', '/myapp/index/comment/list', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (1095, '127.0.0.1', '2024-07-01 21:35:30.931623', '/myapp/index/comment/list', 'GET', NULL, '100');
INSERT INTO `b_op_log` VALUES (1096, '127.0.0.1', '2024-07-01 21:35:30.955155', '/myapp/index/comment/list', 'GET', NULL, '123');
INSERT INTO `b_op_log` VALUES (1097, '127.0.0.1', '2024-07-01 21:35:32.218222', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1098, '127.0.0.1', '2024-07-01 21:35:32.213107', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1099, '127.0.0.1', '2024-07-01 21:35:32.244048', '/myapp/index/thing/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (1100, '127.0.0.1', '2024-07-01 21:35:32.294283', '/myapp/index/thing/list', 'GET', NULL, '98');
INSERT INTO `b_op_log` VALUES (1101, '127.0.0.1', '2024-07-01 21:35:32.903309', '/myapp/index/thing/getRecommend', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1102, '127.0.0.1', '2024-07-01 21:35:32.916221', '/myapp/index/thing/getRecommend', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1103, '127.0.0.1', '2024-07-01 21:35:32.939487', '/myapp/index/thing/getRecommend', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (1104, '127.0.0.1', '2024-07-01 21:35:34.377342', '/myapp/index/user/info', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1105, '127.0.0.1', '2024-07-01 21:35:34.386346', '/myapp/index/user/info', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1106, '127.0.0.1', '2024-07-01 21:35:34.488356', '/myapp/index/user/info', 'GET', NULL, '129');
INSERT INTO `b_op_log` VALUES (1107, '127.0.0.1', '2024-07-01 21:35:34.553372', '/myapp/index/user/info', 'GET', NULL, '194');
INSERT INTO `b_op_log` VALUES (1108, '127.0.0.1', '2024-07-01 21:35:35.667225', '/myapp/index/comment/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1109, '127.0.0.1', '2024-07-01 21:35:35.677254', '/myapp/index/comment/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1110, '127.0.0.1', '2024-07-01 21:35:35.684218', '/myapp/index/comment/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (1111, '127.0.0.1', '2024-07-01 21:35:35.714926', '/myapp/index/comment/list', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (1112, '127.0.0.1', '2024-07-01 21:35:35.735004', '/myapp/index/comment/list', 'GET', NULL, '89');
INSERT INTO `b_op_log` VALUES (1113, '127.0.0.1', '2024-07-01 21:35:35.770829', '/myapp/index/comment/list', 'GET', NULL, '125');
INSERT INTO `b_op_log` VALUES (1114, '127.0.0.1', '2024-07-01 21:35:36.882085', '/myapp/index/user/info', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1115, '127.0.0.1', '2024-07-01 21:35:36.897429', '/myapp/index/user/info', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1116, '127.0.0.1', '2024-07-01 21:35:36.913709', '/myapp/index/user/info', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (1117, '127.0.0.1', '2024-07-01 21:35:36.968028', '/myapp/index/user/info', 'GET', NULL, '104');
INSERT INTO `b_op_log` VALUES (1118, '127.0.0.1', '2024-07-01 21:35:37.306067', '/myapp/index/thing/getRecommend', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1119, '127.0.0.1', '2024-07-01 21:35:37.313624', '/myapp/index/thing/getRecommend', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1120, '127.0.0.1', '2024-07-01 21:35:37.335410', '/myapp/index/thing/getRecommend', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (1121, '127.0.0.1', '2024-07-01 21:35:38.493138', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1122, '127.0.0.1', '2024-07-01 21:35:38.498667', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1123, '127.0.0.1', '2024-07-01 21:35:38.510685', '/myapp/index/thing/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1124, '127.0.0.1', '2024-07-01 21:35:38.566142', '/myapp/index/thing/list', 'GET', NULL, '90');
INSERT INTO `b_op_log` VALUES (1125, '127.0.0.1', '2024-07-01 21:35:39.928509', '/myapp/index/thing/detail', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1126, '127.0.0.1', '2024-07-01 21:35:39.935315', '/myapp/index/thing/detail', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1127, '127.0.0.1', '2024-07-01 21:35:39.955976', '/myapp/index/thing/detail', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (1128, '127.0.0.1', '2024-07-01 21:35:39.982958', '/myapp/index/thing/detail', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (1129, '127.0.0.1', '2024-07-01 21:35:40.002917', '/myapp/index/thing/detail', 'GET', NULL, '90');
INSERT INTO `b_op_log` VALUES (1130, '127.0.0.1', '2024-07-01 21:35:40.032917', '/myapp/index/thing/detail', 'GET', NULL, '121');
INSERT INTO `b_op_log` VALUES (1131, '127.0.0.1', '2024-07-01 21:35:41.053831', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1132, '127.0.0.1', '2024-07-01 21:35:41.065171', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1133, '127.0.0.1', '2024-07-01 21:35:41.075181', '/myapp/index/thing/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1134, '127.0.0.1', '2024-07-01 21:35:41.127480', '/myapp/index/thing/list', 'GET', NULL, '88');
INSERT INTO `b_op_log` VALUES (1135, '127.0.0.1', '2024-07-01 21:35:41.831099', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1136, '127.0.0.1', '2024-07-01 21:35:41.843515', '/myapp/index/user/info', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1137, '127.0.0.1', '2024-07-01 21:35:41.873451', '/myapp/index/user/info', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (1138, '127.0.0.1', '2024-07-01 21:35:42.865723', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1139, '127.0.0.1', '2024-07-01 21:35:42.870949', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1140, '127.0.0.1', '2024-07-01 21:35:42.875458', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1141, '127.0.0.1', '2024-07-01 21:35:42.937947', '/myapp/index/thing/list', 'GET', NULL, '93');
INSERT INTO `b_op_log` VALUES (1142, '127.0.0.1', '2024-07-01 21:35:43.713580', '/myapp/index/thing/detail', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1143, '127.0.0.1', '2024-07-01 21:35:43.726580', '/myapp/index/thing/detail', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1144, '127.0.0.1', '2024-07-01 21:35:43.737631', '/myapp/index/thing/detail', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (1145, '127.0.0.1', '2024-07-01 21:35:43.796652', '/myapp/index/thing/detail', 'GET', NULL, '106');
INSERT INTO `b_op_log` VALUES (1146, '127.0.0.1', '2024-07-01 21:35:43.807670', '/myapp/index/thing/detail', 'GET', NULL, '117');
INSERT INTO `b_op_log` VALUES (1147, '127.0.0.1', '2024-07-01 21:35:43.827660', '/myapp/index/thing/detail', 'GET', NULL, '135');
INSERT INTO `b_op_log` VALUES (1148, '127.0.0.1', '2024-07-01 21:35:47.257316', '/myapp/index/comment/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1149, '127.0.0.1', '2024-07-01 21:35:47.263995', '/myapp/index/comment/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (1150, '127.0.0.1', '2024-07-01 21:35:47.279203', '/myapp/index/comment/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (1151, '127.0.0.1', '2024-07-01 21:35:47.335228', '/myapp/index/comment/list', 'GET', NULL, '112');
INSERT INTO `b_op_log` VALUES (1152, '127.0.0.1', '2024-07-01 21:35:47.339541', '/myapp/index/comment/list', 'GET', NULL, '116');
INSERT INTO `b_op_log` VALUES (1153, '127.0.0.1', '2024-07-01 21:35:47.345791', '/myapp/index/comment/list', 'GET', NULL, '122');
INSERT INTO `b_op_log` VALUES (1154, '127.0.0.1', '2024-07-01 21:35:49.323542', '/myapp/index/thing/getRecommend', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1155, '127.0.0.1', '2024-07-01 21:35:49.336460', '/myapp/index/thing/getRecommend', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1156, '127.0.0.1', '2024-07-01 21:35:49.358949', '/myapp/index/thing/getRecommend', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (1157, '127.0.0.1', '2024-07-01 21:35:49.388924', '/myapp/index/thing/getRecommend', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (1158, '127.0.0.1', '2024-07-01 21:35:49.402549', '/myapp/index/thing/getRecommend', 'GET', NULL, '92');
INSERT INTO `b_op_log` VALUES (1159, '127.0.0.1', '2024-07-01 21:35:49.418130', '/myapp/index/thing/getRecommend', 'GET', NULL, '108');
INSERT INTO `b_op_log` VALUES (1160, '127.0.0.1', '2024-07-01 21:35:50.112691', '/myapp/index/thing/getRecommend', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1161, '127.0.0.1', '2024-07-01 21:35:50.121697', '/myapp/index/thing/getRecommend', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1162, '127.0.0.1', '2024-07-01 21:35:50.140728', '/myapp/index/thing/getRecommend', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (1163, '127.0.0.1', '2024-07-01 21:35:51.344799', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1164, '127.0.0.1', '2024-07-01 21:35:51.353066', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1165, '127.0.0.1', '2024-07-01 21:35:51.361094', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1166, '127.0.0.1', '2024-07-01 21:35:51.417149', '/myapp/index/thing/list', 'GET', NULL, '90');
INSERT INTO `b_op_log` VALUES (1167, '127.0.0.1', '2024-07-01 21:36:12.116672', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1168, '127.0.0.1', '2024-07-01 21:36:12.124741', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1169, '127.0.0.1', '2024-07-01 21:36:12.162536', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1170, '127.0.0.1', '2024-07-01 21:36:12.167530', '/myapp/index/user/info', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1171, '127.0.0.1', '2024-07-01 21:36:12.986311', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1172, '127.0.0.1', '2024-07-01 21:36:12.996722', '/myapp/index/user/info', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1173, '127.0.0.1', '2024-07-01 21:36:13.017259', '/myapp/index/user/info', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (1174, '127.0.0.1', '2024-07-01 21:36:14.197897', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1175, '127.0.0.1', '2024-07-01 21:36:14.211997', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1176, '127.0.0.1', '2024-07-01 21:36:14.240751', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1177, '127.0.0.1', '2024-07-01 21:36:14.253674', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1178, '127.0.0.1', '2024-07-01 21:36:14.260719', '/myapp/index/user/info', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1179, '127.0.0.1', '2024-07-01 21:36:14.281175', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1180, '127.0.0.1', '2024-07-01 21:36:15.188469', '/myapp/index/thing/getRecommend', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1181, '127.0.0.1', '2024-07-01 21:36:15.196424', '/myapp/index/thing/getRecommend', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1182, '127.0.0.1', '2024-07-01 21:36:15.230796', '/myapp/index/thing/getRecommend', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (1183, '127.0.0.1', '2024-07-01 21:36:16.115589', '/myapp/index/thing/getWishThingList', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1184, '127.0.0.1', '2024-07-01 21:36:16.154056', '/myapp/index/thing/getWishThingList', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (1185, '127.0.0.1', '2024-07-01 21:36:16.162052', '/myapp/index/thing/getWishThingList', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (1186, '127.0.0.1', '2024-07-01 21:36:16.182330', '/myapp/index/user/info', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1187, '127.0.0.1', '2024-07-01 21:36:16.194355', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1188, '127.0.0.1', '2024-07-01 21:36:16.218552', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1189, '127.0.0.1', '2024-07-01 21:36:25.924796', '/myapp/index/user/update', 'POST', NULL, '57');
INSERT INTO `b_op_log` VALUES (1190, '127.0.0.1', '2024-07-01 21:36:27.123648', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1191, '127.0.0.1', '2024-07-01 21:36:27.127554', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1192, '127.0.0.1', '2024-07-01 21:36:27.184187', '/myapp/index/user/info', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1193, '127.0.0.1', '2024-07-01 21:36:27.179196', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1194, '127.0.0.1', '2024-07-01 21:36:27.192398', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1195, '127.0.0.1', '2024-07-01 21:36:27.206774', '/myapp/index/user/info', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (1196, '127.0.0.1', '2024-07-01 21:36:27.234408', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1197, '127.0.0.1', '2024-07-01 21:36:28.653292', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1198, '127.0.0.1', '2024-07-01 21:36:28.658296', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1199, '127.0.0.1', '2024-07-01 21:36:28.664321', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1200, '127.0.0.1', '2024-07-01 21:36:28.707270', '/myapp/index/thing/list', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (1201, '127.0.0.1', '2024-07-01 21:36:29.515268', '/myapp/index/thing/getRecommend', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1202, '127.0.0.1', '2024-07-01 21:36:29.523626', '/myapp/index/thing/getRecommend', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1203, '127.0.0.1', '2024-07-01 21:36:29.547911', '/myapp/index/thing/getRecommend', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (1204, '127.0.0.1', '2024-07-01 21:36:30.100448', '/myapp/index/thing/getWishThingList', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1205, '127.0.0.1', '2024-07-01 21:36:30.116844', '/myapp/index/thing/getWishThingList', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (1206, '127.0.0.1', '2024-07-01 21:36:30.171315', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1207, '127.0.0.1', '2024-07-01 21:36:30.177253', '/myapp/index/user/info', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1208, '127.0.0.1', '2024-07-01 21:36:30.194893', '/myapp/index/user/info', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (1209, '127.0.0.1', '2024-07-01 21:36:30.233842', '/myapp/index/user/info', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1210, '127.0.0.1', '2024-07-01 21:37:07.999180', '/myapp/index/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1211, '127.0.0.1', '2024-07-01 21:37:08.005309', '/myapp/index/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1212, '127.0.0.1', '2024-07-01 21:37:08.009590', '/myapp/index/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1213, '127.0.0.1', '2024-07-01 21:37:08.044343', '/upload/avatar/1719840985085.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1214, '127.0.0.1', '2024-07-01 21:37:08.056367', '/upload/avatar/1719840985085.jpeg', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1215, '127.0.0.1', '2024-07-01 21:37:08.187787', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1216, '127.0.0.1', '2024-07-01 21:37:08.468303', '/myapp/index/thing/getWishThingList', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1217, '127.0.0.1', '2024-07-01 21:37:08.484300', '/myapp/index/thing/getWishThingList', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1218, '127.0.0.1', '2024-07-01 21:37:08.524824', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1219, '127.0.0.1', '2024-07-01 21:37:08.527868', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1220, '127.0.0.1', '2024-07-01 21:37:08.537826', '/myapp/index/user/info', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1221, '127.0.0.1', '2024-07-01 21:37:08.555902', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1222, '127.0.0.1', '2024-07-01 21:37:09.941245', '/myapp/index/order/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1223, '127.0.0.1', '2024-07-01 21:37:10.513397', '/myapp/index/comment/listMyComments', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (1224, '127.0.0.1', '2024-07-01 21:37:11.681295', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1225, '127.0.0.1', '2024-07-01 21:37:13.622749', '/myapp/index/notice/list_api', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1226, '127.0.0.1', '2024-07-01 21:37:14.160015', '/myapp/index/order/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (1227, '127.0.0.1', '2024-07-01 21:37:33.124888', '/myapp/admin/comment/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (1228, '127.0.0.1', '2024-07-01 21:37:34.469130', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1229, '127.0.0.1', '2024-07-01 21:37:34.619631', '/myapp/admin/classification/list', 'GET', NULL, '159');
INSERT INTO `b_op_log` VALUES (1230, '127.0.0.1', '2024-07-01 21:37:37.016631', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1231, '127.0.0.1', '2024-07-01 21:37:38.337361', '/myapp/admin/comment/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1232, '127.0.0.1', '2024-07-01 21:37:40.951502', '/myapp/admin/user/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1233, '127.0.0.1', '2024-07-01 21:37:42.431250', '/myapp/admin/order/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1234, '127.0.0.1', '2024-07-01 21:37:44.751081', '/myapp/admin/user/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1235, '127.0.0.1', '2024-07-01 21:37:45.434138', '/myapp/admin/comment/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1236, '127.0.0.1', '2024-07-01 21:37:47.243093', '/myapp/admin/order/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1237, '127.0.0.1', '2024-07-01 21:37:56.635371', '/myapp/admin/user/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1238, '127.0.0.1', '2024-07-01 21:37:58.188214', '/myapp/admin/order/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (1239, '127.0.0.1', '2024-07-01 21:37:59.786204', '/myapp/admin/overview/count', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (1240, '127.0.0.1', '2024-07-01 21:38:01.542456', '/myapp/admin/feedback/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1241, '127.0.0.1', '2024-07-01 21:38:03.954406', '/myapp/admin/order/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (1242, '127.0.0.1', '2024-07-01 21:38:04.538513', '/myapp/admin/user/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1243, '127.0.0.1', '2024-07-01 21:38:05.067655', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1244, '127.0.0.1', '2024-07-01 21:38:05.743380', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1245, '127.0.0.1', '2024-07-01 21:38:05.885322', '/myapp/admin/classification/list', 'GET', NULL, '150');
INSERT INTO `b_op_log` VALUES (1246, '127.0.0.1', '2024-07-01 21:38:13.207446', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1247, '127.0.0.1', '2024-07-01 21:38:13.218070', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1248, '127.0.0.1', '2024-07-01 21:38:13.225187', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1249, '127.0.0.1', '2024-07-01 21:38:13.264245', '/upload/avatar/1719840985085.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1250, '127.0.0.1', '2024-07-01 21:38:13.291242', '/upload/avatar/1719840985085.jpeg', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (1251, '127.0.0.1', '2024-07-01 21:38:19.420987', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1252, '127.0.0.1', '2024-07-01 21:38:19.431443', '/myapp/index/user/info', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1253, '127.0.0.1', '2024-07-01 21:38:19.479901', '/myapp/index/thing/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (1254, '127.0.0.1', '2024-07-01 21:38:45.021807', '/myapp/admin/thing/update', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (1255, '127.0.0.1', '2024-07-01 21:38:45.268183', '/myapp/admin/thing/list', 'GET', NULL, '157');
INSERT INTO `b_op_log` VALUES (1256, '127.0.0.1', '2024-07-01 21:38:51.866722', '/myapp/admin/thing/update', 'POST', NULL, '53');
INSERT INTO `b_op_log` VALUES (1257, '127.0.0.1', '2024-07-01 21:38:52.129564', '/myapp/admin/thing/list', 'GET', NULL, '149');
INSERT INTO `b_op_log` VALUES (1258, '127.0.0.1', '2024-07-01 21:39:19.674790', '/myapp/admin/thing/update', 'POST', NULL, '58');
INSERT INTO `b_op_log` VALUES (1259, '127.0.0.1', '2024-07-01 21:39:19.913627', '/myapp/admin/thing/list', 'GET', NULL, '142');
INSERT INTO `b_op_log` VALUES (1260, '127.0.0.1', '2024-07-01 21:39:28.022333', '/myapp/admin/thing/update', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (1261, '127.0.0.1', '2024-07-01 21:39:28.272128', '/myapp/admin/thing/list', 'GET', NULL, '152');
INSERT INTO `b_op_log` VALUES (1262, '127.0.0.1', '2024-07-01 21:39:45.623714', '/myapp/admin/thing/update', 'POST', NULL, '80');
INSERT INTO `b_op_log` VALUES (1263, '127.0.0.1', '2024-07-01 21:39:45.847533', '/myapp/admin/thing/list', 'GET', NULL, '124');
INSERT INTO `b_op_log` VALUES (1264, '127.0.0.1', '2024-07-01 21:39:51.269831', '/myapp/admin/classification/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1265, '127.0.0.1', '2024-07-01 21:39:51.987253', '/myapp/admin/comment/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (1266, '127.0.0.1', '2024-07-01 21:39:53.627461', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1267, '127.0.0.1', '2024-07-01 21:39:53.785420', '/myapp/admin/classification/list', 'GET', NULL, '171');
INSERT INTO `b_op_log` VALUES (1268, '127.0.0.1', '2024-07-01 21:39:56.990969', '/myapp/admin/adminLogin', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (1269, '127.0.0.1', '2024-07-01 21:39:57.324316', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1270, '127.0.0.1', '2024-07-01 21:39:57.477414', '/myapp/admin/classification/list', 'GET', NULL, '161');
INSERT INTO `b_op_log` VALUES (1271, '127.0.0.1', '2024-07-01 21:39:58.638687', '/myapp/admin/user/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (1272, '127.0.0.1', '2024-07-01 21:40:07.836894', '/myapp/admin/user/update', 'POST', NULL, '49');
INSERT INTO `b_op_log` VALUES (1273, '127.0.0.1', '2024-07-01 21:40:07.920937', '/myapp/admin/user/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1274, '127.0.0.1', '2024-07-01 21:40:11.244792', '/myapp/admin/user/update', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (1275, '127.0.0.1', '2024-07-01 21:40:15.917996', '/myapp/admin/adminLogin', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (1276, '127.0.0.1', '2024-07-01 21:40:16.251613', '/myapp/admin/classification/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1277, '127.0.0.1', '2024-07-01 21:40:16.412628', '/myapp/admin/classification/list', 'GET', NULL, '196');
INSERT INTO `b_op_log` VALUES (1278, '127.0.0.1', '2024-07-01 21:40:17.598658', '/myapp/admin/user/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1279, '127.0.0.1', '2024-07-01 21:40:24.671116', '/myapp/admin/classification/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1280, '127.0.0.1', '2024-07-01 21:40:24.785385', '/myapp/admin/classification/list', 'GET', NULL, '133');
INSERT INTO `b_op_log` VALUES (1281, '127.0.0.1', '2024-07-01 21:40:29.027750', '/myapp/admin/ad/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1282, '127.0.0.1', '2024-07-01 21:40:29.041340', '/myapp/admin/ad/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1283, '127.0.0.1', '2024-07-01 21:40:29.056361', '/myapp/admin/ad/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (1284, '127.0.0.1', '2024-07-01 21:40:29.060357', '/myapp/admin/ad/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (1285, '127.0.0.1', '2024-07-01 21:40:29.110208', '/upload/ad/1719840573691.jpeg', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1286, '127.0.0.1', '2024-07-01 21:40:29.114528', '/upload/ad/1719840573691.jpeg', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1287, '127.0.0.1', '2024-07-01 21:40:29.118754', '/upload/ad/1719840573691.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1288, '127.0.0.1', '2024-07-01 21:40:29.127793', '/upload/ad/1719840573691.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1289, '127.0.0.1', '2024-07-01 21:40:31.810199', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1290, '127.0.0.1', '2024-07-01 21:40:31.820898', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1291, '127.0.0.1', '2024-07-01 21:40:31.882701', '/myapp/index/thing/list', 'GET', NULL, '84');
INSERT INTO `b_op_log` VALUES (1292, '127.0.0.1', '2024-07-01 21:40:34.445676', '/myapp/index/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1293, '127.0.0.1', '2024-07-01 21:40:34.452011', '/myapp/index/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1294, '127.0.0.1', '2024-07-01 21:40:34.513828', '/myapp/index/classification/list', 'GET', NULL, '85');
INSERT INTO `b_op_log` VALUES (1295, '127.0.0.1', '2024-07-01 21:40:35.035748', '/myapp/admin/ad/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1296, '127.0.0.1', '2024-07-01 21:40:35.044898', '/myapp/admin/ad/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1297, '127.0.0.1', '2024-07-01 21:40:35.058983', '/myapp/admin/ad/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (1298, '127.0.0.1', '2024-07-01 21:40:35.082054', '/myapp/admin/ad/list', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (1299, '127.0.0.1', '2024-07-01 21:40:35.102061', '/myapp/admin/ad/list', 'GET', NULL, '82');
INSERT INTO `b_op_log` VALUES (1300, '127.0.0.1', '2024-07-01 21:40:56.193815', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1301, '127.0.0.1', '2024-07-01 21:40:56.200847', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1302, '127.0.0.1', '2024-07-01 21:40:56.261266', '/myapp/index/thing/list', 'GET', NULL, '84');
INSERT INTO `b_op_log` VALUES (1303, '127.0.0.1', '2024-07-02 19:32:50.805363', '/myapp/admin/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1304, '127.0.0.1', '2024-07-02 19:32:50.855940', '/myapp/admin/classification/list', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (1305, '127.0.0.1', '2024-07-02 19:33:00.890625', '/myapp/admin/classification/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1306, '127.0.0.1', '2024-07-02 19:33:01.560385', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1307, '127.0.0.1', '2024-07-02 19:33:01.584684', '/myapp/admin/classification/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1308, '127.0.0.1', '2024-07-02 19:33:04.913197', '/myapp/admin/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1309, '127.0.0.1', '2024-07-02 19:33:04.934766', '/myapp/admin/classification/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (1310, '127.0.0.1', '2024-07-02 19:33:08.022418', '/myapp/admin/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1311, '127.0.0.1', '2024-07-02 19:33:08.880361', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1312, '127.0.0.1', '2024-07-02 19:33:08.895964', '/myapp/admin/classification/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (1313, '127.0.0.1', '2024-07-02 19:33:10.029223', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1314, '127.0.0.1', '2024-07-02 19:33:23.287572', '/myapp/admin/classification/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1315, '127.0.0.1', '2024-07-02 19:33:23.296571', '/myapp/admin/classification/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1316, '127.0.0.1', '2024-07-02 19:33:25.014594', '/upload/cover/1719836270958.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1317, '127.0.0.1', '2024-07-02 19:33:31.756527', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1318, '127.0.0.1', '2024-07-02 19:33:31.772714', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1319, '127.0.0.1', '2024-07-02 19:33:31.783877', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1320, '127.0.0.1', '2024-07-02 19:33:31.813478', '/upload/cover/1719836933616.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1321, '127.0.0.1', '2024-07-02 19:33:31.814535', '/upload/cover/1719836933616.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1322, '127.0.0.1', '2024-07-02 19:33:31.818395', '/upload/cover/1719836944490.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1323, '127.0.0.1', '2024-07-02 19:33:31.824738', '/upload/cover/1719836944490.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1324, '127.0.0.1', '2024-07-02 19:33:31.832831', '/upload/cover/1719836968243.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1325, '127.0.0.1', '2024-07-02 19:33:31.834363', '/upload/cover/1719836951219.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1326, '127.0.0.1', '2024-07-02 19:33:31.835924', '/upload/cover/1719836974981.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1327, '127.0.0.1', '2024-07-02 19:33:31.839214', '/upload/cover/1719836980620.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1328, '127.0.0.1', '2024-07-02 19:33:31.842810', '/upload/cover/1719836951219.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1329, '127.0.0.1', '2024-07-02 19:33:31.842810', '/upload/cover/1719836988716.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1330, '127.0.0.1', '2024-07-02 19:33:34.528230', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1331, '127.0.0.1', '2024-07-02 19:33:35.146688', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1332, '127.0.0.1', '2024-07-02 19:33:36.607457', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1333, '127.0.0.1', '2024-07-02 19:33:37.377734', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1334, '127.0.0.1', '2024-07-02 19:33:45.340987', '/myapp/index/thing/getRecommend', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1335, '127.0.0.1', '2024-07-02 19:33:45.349559', '/myapp/index/thing/getRecommend', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1336, '127.0.0.1', '2024-07-02 19:33:46.557956', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1337, '127.0.0.1', '2024-07-02 19:33:46.564103', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1338, '127.0.0.1', '2024-07-02 19:33:46.577083', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1339, '127.0.0.1', '2024-07-02 19:34:07.164025', '/myapp/index/user/login', 'POST', NULL, '20');
INSERT INTO `b_op_log` VALUES (1340, '127.0.0.1', '2024-07-02 19:34:07.201533', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1341, '127.0.0.1', '2024-07-02 19:34:07.202536', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1342, '127.0.0.1', '2024-07-02 19:34:07.209537', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1343, '127.0.0.1', '2024-07-02 19:34:07.222534', '/upload/avatar/1719840985085.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1344, '127.0.0.1', '2024-07-02 19:34:07.222534', '/upload/avatar/1719840985085.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1345, '127.0.0.1', '2024-07-02 19:34:10.276901', '/myapp/index/comment/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1346, '127.0.0.1', '2024-07-02 19:34:10.281900', '/myapp/index/comment/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1347, '127.0.0.1', '2024-07-02 19:34:10.290900', '/myapp/index/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1348, '127.0.0.1', '2024-07-02 19:34:10.306898', '/upload/ad/1719840564979.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1349, '127.0.0.1', '2024-07-02 19:34:10.311898', '/upload/ad/1719840564979.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1350, '127.0.0.1', '2024-07-02 19:34:10.312898', '/upload/ad/1719840564979.jpeg', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1351, '127.0.0.1', '2024-07-02 19:34:10.313897', '/upload/ad/1719840564979.jpeg', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1352, '127.0.0.1', '2024-07-02 19:34:10.319901', '/upload/ad/1719840564979.jpeg', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1353, '127.0.0.1', '2024-07-02 19:34:12.250010', '/myapp/index/thing/addWishUser', 'POST', NULL, '7');
INSERT INTO `b_op_log` VALUES (1354, '127.0.0.1', '2024-07-02 19:34:12.285592', '/myapp/index/thing/detail', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1355, '127.0.0.1', '2024-07-02 19:34:13.135538', '/myapp/index/thing/addCollectUser', 'POST', NULL, '29');
INSERT INTO `b_op_log` VALUES (1356, '127.0.0.1', '2024-07-02 19:34:13.172949', '/myapp/index/thing/detail', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1357, '127.0.0.1', '2024-07-02 19:34:27.188465', '/myapp/index/thing/rate', 'POST', NULL, '25');
INSERT INTO `b_op_log` VALUES (1358, '127.0.0.1', '2024-07-02 19:34:51.030406', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1359, '127.0.0.1', '2024-07-02 19:34:51.673669', '/myapp/admin/classification/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1360, '127.0.0.1', '2024-07-02 19:34:51.793844', '/myapp/admin/classification/list', 'GET', NULL, '152');
INSERT INTO `b_op_log` VALUES (1361, '127.0.0.1', '2024-07-02 19:35:00.758150', '/myapp/index/thing/addWishUser', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (1362, '127.0.0.1', '2024-07-02 19:35:00.794275', '/myapp/index/thing/detail', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1363, '127.0.0.1', '2024-07-02 19:35:01.332963', '/myapp/index/thing/addCollectUser', 'POST', NULL, '29');
INSERT INTO `b_op_log` VALUES (1364, '127.0.0.1', '2024-07-02 19:35:01.476401', '/myapp/index/thing/detail', 'GET', NULL, '126');
INSERT INTO `b_op_log` VALUES (1365, '127.0.0.1', '2024-07-02 19:35:07.709138', '/myapp/index/thing/rate', 'POST', NULL, '29');
INSERT INTO `b_op_log` VALUES (1366, '127.0.0.1', '2024-07-02 19:35:24.916899', '/myapp/admin/order/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (1367, '127.0.0.1', '2024-07-02 19:35:48.893349', '/myapp/index/thing/getRecommend', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1368, '127.0.0.1', '2024-07-02 19:35:48.901802', '/myapp/index/thing/getRecommend', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1369, '127.0.0.1', '2024-07-02 19:35:48.922006', '/myapp/index/thing/getRecommend', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1370, '127.0.0.1', '2024-07-02 19:35:50.051987', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1371, '127.0.0.1', '2024-07-02 19:35:50.058005', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1372, '127.0.0.1', '2024-07-02 19:35:50.063004', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1373, '127.0.0.1', '2024-07-02 19:35:50.095970', '/myapp/index/thing/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (1374, '127.0.0.1', '2024-07-02 19:35:51.586061', '/myapp/index/thing/getWishThingList', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1375, '127.0.0.1', '2024-07-02 19:35:51.599054', '/myapp/index/thing/getWishThingList', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1376, '127.0.0.1', '2024-07-02 19:35:51.643147', '/myapp/index/user/info', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1377, '127.0.0.1', '2024-07-02 19:35:51.638133', '/myapp/index/user/info', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1378, '127.0.0.1', '2024-07-02 19:35:51.662633', '/myapp/index/user/info', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1379, '127.0.0.1', '2024-07-02 19:35:51.674634', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1380, '127.0.0.1', '2024-07-02 19:35:52.909820', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1381, '127.0.0.1', '2024-07-02 19:35:52.914841', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1382, '127.0.0.1', '2024-07-02 19:35:52.950198', '/myapp/index/user/info', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (1383, '127.0.0.1', '2024-07-02 19:35:53.886017', '/myapp/index/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1384, '127.0.0.1', '2024-07-02 19:35:53.907456', '/myapp/index/classification/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1385, '127.0.0.1', '2024-07-02 19:35:53.917457', '/myapp/index/classification/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (1386, '127.0.0.1', '2024-07-02 19:35:53.956257', '/myapp/index/classification/list', 'GET', NULL, '84');
INSERT INTO `b_op_log` VALUES (1387, '127.0.0.1', '2024-07-02 19:35:54.934901', '/myapp/index/thing/getRecommend', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1388, '127.0.0.1', '2024-07-02 19:35:54.942408', '/myapp/index/thing/getRecommend', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1389, '127.0.0.1', '2024-07-02 19:35:54.959061', '/myapp/index/thing/getRecommend', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1390, '127.0.0.1', '2024-07-02 19:35:55.895484', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1391, '127.0.0.1', '2024-07-02 19:35:55.923793', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1392, '127.0.0.1', '2024-07-02 19:35:55.937348', '/myapp/index/thing/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (1393, '127.0.0.1', '2024-07-02 19:35:55.980349', '/myapp/index/thing/list', 'GET', NULL, '89');
INSERT INTO `b_op_log` VALUES (1394, '127.0.0.1', '2024-07-02 19:35:56.829649', '/myapp/index/thing/getRecommend', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1395, '127.0.0.1', '2024-07-02 19:35:56.834167', '/myapp/index/thing/getRecommend', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1396, '127.0.0.1', '2024-07-02 19:35:56.861596', '/myapp/index/thing/getRecommend', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (1397, '127.0.0.1', '2024-07-02 19:35:57.898520', '/myapp/index/thing/getWishThingList', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1398, '127.0.0.1', '2024-07-02 19:35:57.908624', '/myapp/index/thing/getWishThingList', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1399, '127.0.0.1', '2024-07-02 19:35:57.945026', '/myapp/index/user/info', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1400, '127.0.0.1', '2024-07-02 19:35:57.956307', '/myapp/index/user/info', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1401, '127.0.0.1', '2024-07-02 19:35:57.953023', '/myapp/index/user/info', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1402, '127.0.0.1', '2024-07-02 19:35:57.978593', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1403, '127.0.0.1', '2024-07-02 19:35:58.772338', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1404, '127.0.0.1', '2024-07-02 19:35:58.777398', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1405, '127.0.0.1', '2024-07-02 19:35:58.795392', '/myapp/index/user/info', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (1406, '127.0.0.1', '2024-07-02 19:35:59.963622', '/myapp/index/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1407, '127.0.0.1', '2024-07-02 19:35:59.974002', '/myapp/index/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1408, '127.0.0.1', '2024-07-02 19:35:59.982700', '/myapp/index/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1409, '127.0.0.1', '2024-07-02 19:36:00.037544', '/myapp/index/classification/list', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (1410, '127.0.0.1', '2024-07-02 19:36:01.287377', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1411, '127.0.0.1', '2024-07-02 19:36:01.305603', '/myapp/index/user/info', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1412, '127.0.0.1', '2024-07-02 19:36:01.317596', '/myapp/index/user/info', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (1413, '127.0.0.1', '2024-07-02 19:36:02.141456', '/myapp/index/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1414, '127.0.0.1', '2024-07-02 19:36:02.157389', '/myapp/index/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1415, '127.0.0.1', '2024-07-02 19:36:02.166318', '/myapp/index/classification/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1416, '127.0.0.1', '2024-07-02 19:36:02.208945', '/myapp/index/classification/list', 'GET', NULL, '75');
INSERT INTO `b_op_log` VALUES (1417, '127.0.0.1', '2024-07-02 19:36:02.817894', '/myapp/index/thing/getRecommend', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1418, '127.0.0.1', '2024-07-02 19:36:02.827924', '/myapp/index/thing/getRecommend', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1419, '127.0.0.1', '2024-07-02 19:36:02.846495', '/myapp/index/thing/getRecommend', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (1420, '127.0.0.1', '2024-07-02 19:36:03.777465', '/myapp/index/thing/getWishThingList', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1421, '127.0.0.1', '2024-07-02 19:36:03.799915', '/myapp/index/thing/getWishThingList', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1422, '127.0.0.1', '2024-07-02 19:36:03.835392', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1423, '127.0.0.1', '2024-07-02 19:36:03.839613', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1424, '127.0.0.1', '2024-07-02 19:36:03.860449', '/myapp/index/user/info', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1425, '127.0.0.1', '2024-07-02 19:36:03.896247', '/myapp/index/user/info', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1426, '127.0.0.1', '2024-07-02 19:36:04.653435', '/myapp/index/thing/getRecommend', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1427, '127.0.0.1', '2024-07-02 19:36:04.663451', '/myapp/index/thing/getRecommend', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1428, '127.0.0.1', '2024-07-02 19:36:04.688033', '/myapp/index/thing/getRecommend', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (1429, '127.0.0.1', '2024-07-02 19:36:05.499955', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1430, '127.0.0.1', '2024-07-02 19:36:05.503100', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1431, '127.0.0.1', '2024-07-02 19:36:05.508100', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1432, '127.0.0.1', '2024-07-02 19:36:05.556335', '/myapp/index/thing/list', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (1433, '127.0.0.1', '2024-07-02 19:36:15.435240', '/myapp/index/thing/getRecommend', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1434, '127.0.0.1', '2024-07-02 19:36:15.443462', '/myapp/index/thing/getRecommend', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1435, '127.0.0.1', '2024-07-02 19:36:15.467048', '/myapp/index/thing/getRecommend', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (1436, '127.0.0.1', '2024-07-02 19:36:27.916395', '/myapp/admin/ad/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1437, '127.0.0.1', '2024-07-02 19:36:27.940377', '/myapp/admin/ad/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (1438, '127.0.0.1', '2024-07-02 19:36:27.961091', '/myapp/admin/ad/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (1439, '127.0.0.1', '2024-07-02 19:36:27.998235', '/myapp/admin/ad/list', 'GET', NULL, '92');
INSERT INTO `b_op_log` VALUES (1440, '127.0.0.1', '2024-07-02 19:36:28.007769', '/myapp/admin/ad/list', 'GET', NULL, '108');
INSERT INTO `b_op_log` VALUES (1441, '127.0.0.1', '2024-07-02 19:36:28.060568', '/myapp/admin/ad/list', 'GET', NULL, '160');
INSERT INTO `b_op_log` VALUES (1442, '127.0.0.1', '2024-07-02 19:36:29.597963', '/myapp/index/thing/addWishUser', 'POST', NULL, '61');
INSERT INTO `b_op_log` VALUES (1443, '127.0.0.1', '2024-07-02 19:36:29.638524', '/myapp/index/thing/detail', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1444, '127.0.0.1', '2024-07-02 19:36:30.457077', '/myapp/index/thing/addCollectUser', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (1445, '127.0.0.1', '2024-07-02 19:36:30.506033', '/myapp/index/thing/detail', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1446, '127.0.0.1', '2024-07-02 19:36:31.635741', '/myapp/index/notice/list_api', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1447, '127.0.0.1', '2024-07-02 19:36:31.647022', '/myapp/index/notice/list_api', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (1448, '127.0.0.1', '2024-07-02 19:36:31.638745', '/myapp/index/notice/list_api', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1449, '127.0.0.1', '2024-07-02 19:36:31.641777', '/myapp/index/notice/list_api', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1450, '127.0.0.1', '2024-07-02 19:36:31.676391', '/myapp/index/notice/list_api', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (1451, '127.0.0.1', '2024-07-02 19:36:31.706004', '/myapp/index/notice/list_api', 'GET', NULL, '95');
INSERT INTO `b_op_log` VALUES (1452, '127.0.0.1', '2024-07-02 19:37:46.561537', '/myapp/index/order/create', 'POST', NULL, '26');
INSERT INTO `b_op_log` VALUES (1453, '127.0.0.1', '2024-07-02 19:37:46.990362', '/myapp/index/user/info', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1454, '127.0.0.1', '2024-07-02 19:37:46.996647', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1455, '127.0.0.1', '2024-07-02 19:37:48.270221', '/myapp/index/order/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1456, '127.0.0.1', '2024-07-02 19:37:48.291751', '/myapp/index/order/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1457, '127.0.0.1', '2024-07-02 19:37:48.325310', '/myapp/index/user/info', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1458, '127.0.0.1', '2024-07-02 19:37:48.337647', '/myapp/index/user/info', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1459, '127.0.0.1', '2024-07-02 19:37:48.343049', '/myapp/index/user/info', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (1460, '127.0.0.1', '2024-07-02 19:37:48.361700', '/myapp/index/user/info', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (1461, '127.0.0.1', '2024-07-02 19:37:58.214849', '/myapp/admin/user/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1462, '127.0.0.1', '2024-07-02 19:37:58.853842', '/myapp/admin/order/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1463, '127.0.0.1', '2024-07-02 19:38:08.556089', '/myapp/index/comment/listMyComments', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1464, '127.0.0.1', '2024-07-02 19:38:09.876353', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1465, '127.0.0.1', '2024-07-02 19:38:10.677811', '/myapp/index/comment/listMyComments', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1466, '127.0.0.1', '2024-07-02 19:38:12.192343', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1467, '127.0.0.1', '2024-07-02 19:38:13.060320', '/myapp/index/order/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1468, '127.0.0.1', '2024-07-02 19:38:13.604040', '/myapp/index/comment/listMyComments', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1469, '127.0.0.1', '2024-07-02 19:38:20.809354', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1470, '127.0.0.1', '2024-07-02 19:38:20.919609', '/myapp/admin/classification/list', 'GET', NULL, '122');
INSERT INTO `b_op_log` VALUES (1471, '127.0.0.1', '2024-07-02 19:38:25.194953', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1472, '127.0.0.1', '2024-07-02 19:38:26.300342', '/myapp/admin/comment/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1473, '127.0.0.1', '2024-07-02 19:38:27.420639', '/myapp/admin/user/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1474, '127.0.0.1', '2024-07-02 19:38:29.121552', '/myapp/admin/order/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1475, '127.0.0.1', '2024-07-02 19:38:31.735002', '/myapp/admin/ad/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1476, '127.0.0.1', '2024-07-02 19:38:34.465172', '/myapp/admin/overview/count', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1477, '127.0.0.1', '2024-07-02 19:38:37.383121', '/myapp/admin/feedback/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1478, '127.0.0.1', '2024-07-02 19:38:40.105993', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1027');
INSERT INTO `b_op_log` VALUES (1479, '127.0.0.1', '2024-07-02 19:38:40.663165', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1480, '127.0.0.1', '2024-07-02 19:38:40.738682', '/myapp/admin/classification/list', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (1481, '127.0.0.1', '2024-07-02 19:38:46.283421', '/myapp/admin/thing/update', 'POST', NULL, '63');
INSERT INTO `b_op_log` VALUES (1482, '127.0.0.1', '2024-07-02 19:38:46.456109', '/myapp/admin/thing/list', 'GET', NULL, '141');
INSERT INTO `b_op_log` VALUES (1483, '127.0.0.1', '2024-07-02 19:38:52.856990', '/myapp/admin/comment/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1484, '127.0.0.1', '2024-07-02 19:38:55.499339', '/myapp/index/thing/getWishThingList', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1485, '127.0.0.1', '2024-07-02 19:38:55.513021', '/myapp/index/thing/getWishThingList', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1486, '127.0.0.1', '2024-07-02 19:38:55.546012', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1487, '127.0.0.1', '2024-07-02 19:38:55.553482', '/myapp/index/user/info', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1488, '127.0.0.1', '2024-07-02 19:38:55.560504', '/myapp/index/user/info', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1489, '127.0.0.1', '2024-07-02 19:38:55.573718', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1490, '127.0.0.1', '2024-07-02 19:38:56.890552', '/myapp/index/order/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1491, '127.0.0.1', '2024-07-02 19:38:58.295721', '/myapp/index/comment/listMyComments', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1492, '127.0.0.1', '2024-07-02 19:38:59.207824', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1493, '127.0.0.1', '2024-07-02 19:39:00.483080', '/myapp/index/comment/listMyComments', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1494, '127.0.0.1', '2024-07-02 19:39:01.376305', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1495, '127.0.0.1', '2024-07-02 19:39:01.965282', '/myapp/index/order/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1496, '127.0.0.1', '2024-07-02 19:39:03.750012', '/myapp/index/thing/getRecommend', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1497, '127.0.0.1', '2024-07-02 19:39:03.770005', '/myapp/index/thing/getRecommend', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1498, '127.0.0.1', '2024-07-02 19:39:03.787989', '/myapp/index/thing/getRecommend', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (1499, '127.0.0.1', '2024-07-02 19:39:03.805247', '/myapp/index/thing/getRecommend', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (1500, '127.0.0.1', '2024-07-02 19:39:03.837737', '/myapp/index/thing/getRecommend', 'GET', NULL, '105');
INSERT INTO `b_op_log` VALUES (1501, '127.0.0.1', '2024-07-02 19:39:03.853514', '/myapp/index/thing/getRecommend', 'GET', NULL, '122');

-- ----------------------------
-- Table structure for b_order
-- ----------------------------
DROP TABLE IF EXISTS `b_order`;
CREATE TABLE `b_order`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_number` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `count` int(11) NOT NULL,
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_time` datetime(6) NULL DEFAULT NULL,
  `receiver_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiver_time` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiver_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_order_thing_id_4e345e2c_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_order_user_id_64854046_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_order_thing_id_4e345e2c_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_order_user_id_64854046_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_order
-- ----------------------------
INSERT INTO `b_order` VALUES (2, '1719840343592', 1, '2', '2024-07-01 21:25:43.609512', '刘文静', '周六下午3点', '1322222222', '', 2, 4);
INSERT INTO `b_order` VALUES (3, '1719840406282', 1, '1', '2024-07-01 21:26:46.296279', '赵文', '周日上午10点', '14322222222', '', 2, 4);
INSERT INTO `b_order` VALUES (4, '1719920266543', 1, '1', '2024-07-02 19:37:46.552514', '刘晶晶', '周六10点', '13255551111', '', 5, 4);

-- ----------------------------
-- Table structure for b_record
-- ----------------------------
DROP TABLE IF EXISTS `b_record`;
CREATE TABLE `b_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `score` int(11) NOT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_record_thing_id_d8e773c0_fk_b_thing_id`(`thing_id`) USING BTREE,
  CONSTRAINT `b_record_thing_id_d8e773c0_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_record
-- ----------------------------
INSERT INTO `b_record` VALUES (1, '127.0.0.2', 2, 1);
INSERT INTO `b_record` VALUES (2, '127.0.0.2', 4, 3);
INSERT INTO `b_record` VALUES (3, '127.0.0.2', 14, 2);
INSERT INTO `b_record` VALUES (4, '127.0.0.2', 3, 5);
INSERT INTO `b_record` VALUES (5, '127.0.0.1', 2, 1);
INSERT INTO `b_record` VALUES (6, '127.0.0.1', 9, 2);
INSERT INTO `b_record` VALUES (7, '127.0.0.1', 2, 3);
INSERT INTO `b_record` VALUES (8, '127.0.0.1', 1, 4);
INSERT INTO `b_record` VALUES (9, '127.0.0.1', 1, 6);
INSERT INTO `b_record` VALUES (10, '127.0.0.1', 1, 11);
INSERT INTO `b_record` VALUES (11, '127.0.0.1', 1, 9);
INSERT INTO `b_record` VALUES (12, '127.0.0.1', 1, 12);
INSERT INTO `b_record` VALUES (13, '127.0.0.1', 5, 5);

-- ----------------------------
-- Table structure for b_thing
-- ----------------------------
DROP TABLE IF EXISTS `b_thing`;
CREATE TABLE `b_thing`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cover` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `price` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `huxing` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mianji` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `location` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `xiaoqu` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `louceng` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fangling` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `chanquan` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jungong` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zhuangxiu` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `xsxm` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `xssj` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `pv` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `recommend_count` int(11) NOT NULL,
  `wish_count` int(11) NOT NULL,
  `collect_count` int(11) NOT NULL,
  `classification_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `mianjir` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pricer` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_thing_classification_id_47675ac4_fk_b_classification_id`(`classification_id`) USING BTREE,
  INDEX `b_thing_user_id_9918a633_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_classification_id_47675ac4_fk_b_classification_id` FOREIGN KEY (`classification_id`) REFERENCES `b_classification` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_user_id_9918a633_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing
-- ----------------------------
INSERT INTO `b_thing` VALUES (1, '解放路明星小区楼层好精装修房', 'cover/1719836270958.jpeg', '核心卖点\r\n房子本身的优点： 1、性价比高 2、采光好，无遮挡 3、格局合理，利用率高 优点总结：希望这里都能满足您的需求，欢迎您亲自来看将为您提供 的服务\r\n 业主心态\r\n业主诚心出售，欢迎看房，随时恭候您的到来。\r\n\r\n 服务介绍\r\n个人宣言：我做这十年多了 用专业打造完.美的体验，因专业产生效率！一次成交，一生朋友！\r\n专业： 为您选房→配房→带您看房→满意→付意向→转定→签合同→首付→陪同贷款→交易过户→新产证→放贷→交房(水电煤过户)\r\n期待您的来电，本人承诺将全程为你提供保密，不必担心会有其他人的电话骚扰。我会为您在购房置业的全程中保驾护航！', '209', '三室一厅', '120', '朝阳区', '明星小区', '18层', '3年', '70年', '2019年', '精装修', '马云', '13211118888', '0', '2024-07-01 20:11:24.121540', 4, 3, 0, 0, 0, 3, NULL, '120-150㎡', '200-300万');
INSERT INTO `b_thing` VALUES (2, '精装修小区楼层好带车位', 'cover/1719836928097.jpeg', '核心卖点\r\n房子本身的优点： 1、性价比高 2、采光好，无遮挡 3、格局合理，利用率高 优点总结：希望这里都能满足您的需求，欢迎您亲自来看将为您提供 的服务\r\n 业主心态\r\n业主诚心出售，欢迎看房，随时恭候您的到来。\r\n\r\n 服务介绍\r\n个人宣言：我做这十年多了 用专业打造完.美的体验，因专业产生效率！一次成交，一生朋友！\r\n专业： 为您选房→配房→带您看房→满意→付意向→转定→签合同→首付→陪同贷款→交易过户→新产证→放贷→交房(水电煤过户)\r\n期待您的来电，本人承诺将全程为你提供保密，不必担心会有其他人的电话骚扰。我会为您在购房置业的全程中保驾护航！', '239', '三室二厅', '56', '海淀区', '天通苑小区', '18层', '3年', '40年', '2019年', '毛坯', '张文杰', '13211118888', '0', '2024-07-01 20:11:24.121540', 25, 4, 0, 1, 1, 5, NULL, '50-80㎡', '200-300万');
INSERT INTO `b_thing` VALUES (3, '解放路明星小区楼层好精装修房', 'cover/1719836933616.jpeg', '核心卖点\r\n房子本身的优点： 1、性价比高 2、采光好，无遮挡 3、格局合理，利用率高 优点总结：希望这里都能满足您的需求，欢迎您亲自来看将为您提供 的服务\r\n 业主心态\r\n业主诚心出售，欢迎看房，随时恭候您的到来。\r\n\r\n 服务介绍\r\n个人宣言：我做这十年多了 用专业打造完.美的体验，因专业产生效率！一次成交，一生朋友！\r\n专业： 为您选房→配房→带您看房→满意→付意向→转定→签合同→首付→陪同贷款→交易过户→新产证→放贷→交房(水电煤过户)\r\n期待您的来电，本人承诺将全程为你提供保密，不必担心会有其他人的电话骚扰。我会为您在购房置业的全程中保驾护航！', '45', '三室一厅', '40', '朝阳区', '明星小区', '18层', '3年', '70年', '2019年', '精装修', '刘小姐', '15988888888', '0', '2024-07-01 20:11:24.121540', 8, 3, 0, 1, 1, 3, NULL, '50㎡以下', '50万以下');
INSERT INTO `b_thing` VALUES (4, '解放路明星小区楼层2', 'cover/1719836938740.jpeg', '核心卖点\r\n房子本身的优点： 1、性价比高 2、采光好，无遮挡 3、格局合理，利用率高 优点总结：希望这里都能满足您的需求，欢迎您亲自来看将为您提供 的服务\r\n 业主心态\r\n业主诚心出售，欢迎看房，随时恭候您的到来。\r\n\r\n 服务介绍\r\n个人宣言：我做这十年多了 用专业打造完.美的体验，因专业产生效率！一次成交，一生朋友！\r\n专业： 为您选房→配房→带您看房→满意→付意向→转定→签合同→首付→陪同贷款→交易过户→新产证→放贷→交房(水电煤过户)\r\n期待您的来电，本人承诺将全程为你提供保密，不必担心会有其他人的电话骚扰。我会为您在购房置业的全程中保驾护航！', '90', '三室一厅', '98', '朝阳区', '明星小区', '18层', '3年', '70年', '2019年', '精装修', '李彦宏', '13211118888', '0', '2024-07-01 20:11:24.121540', 3, 3, 0, 0, 0, 4, NULL, '80-120㎡', '50-100万');
INSERT INTO `b_thing` VALUES (5, '精装修小区楼层好带车位', 'cover/1719836944490.jpeg', '核心卖点\r\n房子本身的优点： 1、性价比高 2、采光好，无遮挡 3、格局合理，利用率高 优点总结：希望这里都能满足您的需求，欢迎您亲自来看将为您提供 的服务\r\n 业主心态\r\n业主诚心出售，欢迎看房，随时恭候您的到来。\r\n\r\n 服务介绍\r\n个人宣言：我做这十年多了 用专业打造完.美的体验，因专业产生效率！一次成交，一生朋友！\r\n专业： 为您选房→配房→带您看房→满意→付意向→转定→签合同→首付→陪同贷款→交易过户→新产证→放贷→交房(水电煤过户)\r\n期待您的来电，本人承诺将全程为你提供保密，不必担心会有其他人的电话骚扰。我会为您在购房置业的全程中保驾护航！', '321', '三室二厅', '120', '朝阳区', '明星小区', '18层', '3年', '70年', '2019年', '精装修', '张文杰', '13211118888', '0', '2024-07-01 20:11:24.121540', 10, 3, 0, 1, 1, 2, NULL, '120-150㎡', '300万以上');
INSERT INTO `b_thing` VALUES (6, '精装修房11', 'cover/1719836951219.jpeg', '核心卖点\r\n房子本身的优点： 1、性价比高 2、采光好，无遮挡 3、格局合理，利用率高 优点总结：希望这里都能满足您的需求，欢迎您亲自来看将为您提供 的服务\r\n 业主心态\r\n业主诚心出售，欢迎看房，随时恭候您的到来。\r\n\r\n 服务介绍\r\n个人宣言：我做这十年多了 用专业打造完.美的体验，因专业产生效率！一次成交，一生朋友！\r\n专业： 为您选房→配房→带您看房→满意→付意向→转定→签合同→首付→陪同贷款→交易过户→新产证→放贷→交房(水电煤过户)\r\n期待您的来电，本人承诺将全程为你提供保密，不必担心会有其他人的电话骚扰。我会为您在购房置业的全程中保驾护航！', '130', '三室一厅', '123', '昌平区', '天通苑小区', '18层', '3年', '70年', '2019年', '毛坯', '张文杰', '13211118888', '0', '2024-07-01 20:11:24.121540', 3, 3, 0, 0, 0, 3, NULL, '120-150㎡', '100-150万');
INSERT INTO `b_thing` VALUES (7, '解放路明星小区楼层好精装修房', 'cover/1719836958596.jpeg', '核心卖点\r\n房子本身的优点： 1、性价比高 2、采光好，无遮挡 3、格局合理，利用率高 优点总结：希望这里都能满足您的需求，欢迎您亲自来看将为您提供 的服务\r\n 业主心态\r\n业主诚心出售，欢迎看房，随时恭候您的到来。\r\n\r\n 服务介绍\r\n个人宣言：我做这十年多了 用专业打造完.美的体验，因专业产生效率！一次成交，一生朋友！\r\n专业： 为您选房→配房→带您看房→满意→付意向→转定→签合同→首付→陪同贷款→交易过户→新产证→放贷→交房(水电煤过户)\r\n期待您的来电，本人承诺将全程为你提供保密，不必担心会有其他人的电话骚扰。我会为您在购房置业的全程中保驾护航！', '43', '房山区', '200', '朝阳区', '明星小区', '18层', '3年', '40年', '2019年', '精装修', '张文杰', '13211118888', '0', '2024-07-01 20:11:24.121540', 2, 3, 0, 0, 0, 1, NULL, '200㎡以上', '50万以下');
INSERT INTO `b_thing` VALUES (8, '精装修房22', 'cover/1719836968243.jpeg', '核心卖点\r\n房子本身的优点： 1、性价比高 2、采光好，无遮挡 3、格局合理，利用率高 优点总结：希望这里都能满足您的需求，欢迎您亲自来看将为您提供 的服务\r\n 业主心态\r\n业主诚心出售，欢迎看房，随时恭候您的到来。\r\n\r\n 服务介绍\r\n个人宣言：我做这十年多了 用专业打造完.美的体验，因专业产生效率！一次成交，一生朋友！\r\n专业： 为您选房→配房→带您看房→满意→付意向→转定→签合同→首付→陪同贷款→交易过户→新产证→放贷→交房(水电煤过户)\r\n期待您的来电，本人承诺将全程为你提供保密，不必担心会有其他人的电话骚扰。我会为您在购房置业的全程中保驾护航！', '109', '二室一厅', '122', '东城区', '明星小区', '18层', '3年', '70年', '2019年', '精装修', '马伊利', '13211118888', '0', '2024-07-01 20:11:24.121540', 2, 3, 0, 0, 0, 3, NULL, '120-150㎡', '100-150万');
INSERT INTO `b_thing` VALUES (9, '精装修房44', 'cover/1719836974981.jpeg', '核心卖点\r\n房子本身的优点： 1、性价比高 2、采光好，无遮挡 3、格局合理，利用率高 优点总结：希望这里都能满足您的需求，欢迎您亲自来看将为您提供 的服务\r\n 业主心态\r\n业主诚心出售，欢迎看房，随时恭候您的到来。\r\n\r\n 服务介绍\r\n个人宣言：我做这十年多了 用专业打造完.美的体验，因专业产生效率！一次成交，一生朋友！\r\n专业： 为您选房→配房→带您看房→满意→付意向→转定→签合同→首付→陪同贷款→交易过户→新产证→放贷→交房(水电煤过户)\r\n期待您的来电，本人承诺将全程为你提供保密，不必担心会有其他人的电话骚扰。我会为您在购房置业的全程中保驾护航！', '166', '三室一厅', '120', '朝阳区', '天通苑小区', '18层', '3年', '70年', '2019年', '毛坯', '张文杰', '13211118888', '0', '2024-07-01 20:11:24.121540', 3, 3, 0, 0, 0, 5, NULL, '120-150㎡', '150-200万');
INSERT INTO `b_thing` VALUES (10, '精装修房33', 'cover/1719836980620.jpeg', '核心卖点\r\n房子本身的优点： 1、性价比高 2、采光好，无遮挡 3、格局合理，利用率高 优点总结：希望这里都能满足您的需求，欢迎您亲自来看将为您提供 的服务\r\n 业主心态\r\n业主诚心出售，欢迎看房，随时恭候您的到来。\r\n\r\n 服务介绍\r\n个人宣言：我做这十年多了 用专业打造完.美的体验，因专业产生效率！一次成交，一生朋友！\r\n专业： 为您选房→配房→带您看房→满意→付意向→转定→签合同→首付→陪同贷款→交易过户→新产证→放贷→交房(水电煤过户)\r\n期待您的来电，本人承诺将全程为你提供保密，不必担心会有其他人的电话骚扰。我会为您在购房置业的全程中保驾护航！', '239', '三室一厅', '120', '经济开发区', '天通苑小区', '18层', '3年', '70年', '2019年', '毛坯', '张文杰', '13211118888', '0', '2024-07-01 20:11:24.121540', 2, 3, 0, 0, 0, 4, NULL, '120-150㎡', '200-300万');
INSERT INTO `b_thing` VALUES (11, '解放路明星小区楼层好精装修房', 'cover/1719836270958.jpeg', '核心卖点\r\n房子本身的优点： 1、性价比高 2、采光好，无遮挡 3、格局合理，利用率高 优点总结：希望这里都能满足您的需求，欢迎您亲自来看将为您提供 的服务\r\n 业主心态\r\n业主诚心出售，欢迎看房，随时恭候您的到来。\r\n\r\n 服务介绍\r\n个人宣言：我做这十年多了 用专业打造完.美的体验，因专业产生效率！一次成交，一生朋友！\r\n专业： 为您选房→配房→带您看房→满意→付意向→转定→签合同→首付→陪同贷款→交易过户→新产证→放贷→交房(水电煤过户)\r\n期待您的来电，本人承诺将全程为你提供保密，不必担心会有其他人的电话骚扰。我会为您在购房置业的全程中保驾护航！', '221', '三室一厅', '120', '朝阳区', '明星小区', '18层', '3年', '70年', '2019年', '精装修', '张文杰', '13211118888', '0', '2024-07-01 20:11:24.121540', 3, 3, 0, 0, 0, 2, NULL, '120-150㎡', '200-300万');
INSERT INTO `b_thing` VALUES (12, '解放路明星小区楼层好精装修房', 'cover/1719836988716.jpeg', '核心卖点\r\n房子本身的优点： 1、性价比高 2、采光好，无遮挡 3、格局合理，利用率高 优点总结：希望这里都能满足您的需求，欢迎您亲自来看将为您提供 的服务\r\n 业主心态\r\n业主诚心出售，欢迎看房，随时恭候您的到来。\r\n\r\n 服务介绍\r\n个人宣言：我做这十年多了 用专业打造完.美的体验，因专业产生效率！一次成交，一生朋友！\r\n专业： 为您选房→配房→带您看房→满意→付意向→转定→签合同→首付→陪同贷款→交易过户→新产证→放贷→交房(水电煤过户)\r\n期待您的来电，本人承诺将全程为你提供保密，不必担心会有其他人的电话骚扰。我会为您在购房置业的全程中保驾护航！', '102', '三室一厅', '166', '朝阳区', '明星小区', '18层', '3年', '70年', '2019年', '精装修', '张文杰', '13211118888', '0', '2024-07-01 20:11:24.121540', 3, 3, 0, 0, 0, 3, NULL, '150-200㎡', '100-150万');

-- ----------------------------
-- Table structure for b_thing_collect
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_collect`;
CREATE TABLE `b_thing_collect`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_collect_thing_id_user_id_45b9f252_uniq`(`thing_id`, `user_id`) USING BTREE,
  INDEX `b_thing_collect_user_id_e5d69968_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_collect_thing_id_8edce8b3_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_collect_user_id_e5d69968_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_collect
-- ----------------------------
INSERT INTO `b_thing_collect` VALUES (3, 2, 4);
INSERT INTO `b_thing_collect` VALUES (1, 3, 4);
INSERT INTO `b_thing_collect` VALUES (2, 5, 4);

-- ----------------------------
-- Table structure for b_thing_wish
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_wish`;
CREATE TABLE `b_thing_wish`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_wish_thing_id_user_id_9d647bbb_uniq`(`thing_id`, `user_id`) USING BTREE,
  INDEX `b_thing_wish_user_id_e2d94f6c_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_wish_thing_id_f0864b16_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_wish_user_id_e2d94f6c_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_wish
-- ----------------------------
INSERT INTO `b_thing_wish` VALUES (3, 2, 4);
INSERT INTO `b_thing_wish` VALUES (1, 3, 4);
INSERT INTO `b_thing_wish` VALUES (4, 5, 4);

-- ----------------------------
-- Table structure for b_user
-- ----------------------------
DROP TABLE IF EXISTS `b_user`;
CREATE TABLE `b_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `score` int(11) NULL DEFAULT NULL,
  `push_email` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `push_switch` tinyint(1) NULL DEFAULT NULL,
  `admin_token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_user
-- ----------------------------
INSERT INTO `b_user` VALUES (1, 'admin', '78aafd3207ec4ef6d16f9fc07e95ebc3', '1', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-05-04 16:37:10.143202', 0, NULL, 0, '21232f297a57a5a743894a0e4a801fc3', NULL);
INSERT INTO `b_user` VALUES (2, 'admin123', '0192023a7bbd73250516f069df18b500', '3', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-07-01 19:52:40.267134', 0, NULL, 0, '0192023a7bbd73250516f069df18b500', NULL);
INSERT INTO `b_user` VALUES (3, 'admin111', 'bbad8d72c1fac1d081727158807a8798', '1', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-07-01 19:52:56.753538', 0, NULL, 0, NULL, NULL);
INSERT INTO `b_user` VALUES (4, 'ddd', '77963b7a931377ad4ab5ad6a9cd718aa', '2', '0', '哈哈哈888', 'avatar/1719840985085.jpeg', NULL, NULL, NULL, NULL, '2024-07-01 21:08:52.396110', 0, NULL, 0, NULL, '77963b7a931377ad4ab5ad6a9cd718aa');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (16, 'myapp', 'ad');
INSERT INTO `django_content_type` VALUES (8, 'myapp', 'classification');
INSERT INTO `django_content_type` VALUES (10, 'myapp', 'comment');
INSERT INTO `django_content_type` VALUES (14, 'myapp', 'errorlog');
INSERT INTO `django_content_type` VALUES (18, 'myapp', 'feedback');
INSERT INTO `django_content_type` VALUES (12, 'myapp', 'loginlog');
INSERT INTO `django_content_type` VALUES (17, 'myapp', 'notice');
INSERT INTO `django_content_type` VALUES (13, 'myapp', 'oplog');
INSERT INTO `django_content_type` VALUES (15, 'myapp', 'order');
INSERT INTO `django_content_type` VALUES (11, 'myapp', 'record');
INSERT INTO `django_content_type` VALUES (9, 'myapp', 'thing');
INSERT INTO `django_content_type` VALUES (7, 'myapp', 'user');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2024-07-01 19:46:30.524483');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2024-07-01 19:46:31.145667');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2024-07-01 19:46:31.299905');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2024-07-01 19:46:31.314388');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2024-07-01 19:46:31.334564');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2024-07-01 19:46:31.568266');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2024-07-01 19:46:31.644314');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2024-07-01 19:46:31.762039');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2024-07-01 19:46:31.779041');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2024-07-01 19:46:31.858425');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2024-07-01 19:46:31.866428');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2024-07-01 19:46:31.885427');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2024-07-01 19:46:31.956777');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2024-07-01 19:46:32.058301');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2024-07-01 19:46:32.139262');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2024-07-01 19:46:32.167265');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2024-07-01 19:46:32.265985');
INSERT INTO `django_migrations` VALUES (18, 'sessions', '0001_initial', '2024-07-01 19:46:32.351478');
INSERT INTO `django_migrations` VALUES (19, 'myapp', '0001_initial', '2024-07-01 19:46:52.086012');
INSERT INTO `django_migrations` VALUES (20, 'myapp', '0002_remove_thing_fangxing', '2024-07-01 20:19:06.862975');
INSERT INTO `django_migrations` VALUES (21, 'myapp', '0003_auto_20240701_2050', '2024-07-01 20:50:20.171607');
INSERT INTO `django_migrations` VALUES (22, 'myapp', '0004_rename_receiver_address_order_receiver_time', '2024-07-01 21:22:22.554671');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
