/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : phpcms

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 27/07/2023 23:29:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_cms
-- ----------------------------
DROP TABLE IF EXISTS `admin_cms`;
CREATE TABLE `admin_cms`  (
  `id` int(11) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_cms
-- ----------------------------
INSERT INTO `admin_cms` VALUES (1, 'admin', 'agentingshule');

-- ----------------------------
-- Table structure for admin_oa
-- ----------------------------
DROP TABLE IF EXISTS `admin_oa`;
CREATE TABLE `admin_oa`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_oa
-- ----------------------------
INSERT INTO `admin_oa` VALUES (1, 'admin', 'rzAdmin');
INSERT INTO `admin_oa` VALUES (2, 'ajie', 'ajieRoot');

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `cat_id` int(3) NOT NULL AUTO_INCREMENT,
  `cat_title` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cat_creator` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cat_user` varchar(2000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`cat_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 56 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES (1, 'home', 'harshitbansal', 'harshit,raghuveer23,raghuveer,vikas,daau,');
INSERT INTO `categories` VALUES (3, 'service', 'harshitbansal', '');
INSERT INTO `categories` VALUES (5, 'contact', 'harshitbansal', '');
INSERT INTO `categories` VALUES (7, 'about', 'harshitbansal', 'raghuveer,');
INSERT INTO `categories` VALUES (55, 'hello', 'harshitbansal', '');

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments`  (
  `comment_id` int(3) NOT NULL AUTO_INCREMENT,
  `comment_post_id` int(3) NOT NULL,
  `comment_author` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `comment_email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `comment_content` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `comment_status` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `comment_date` date NOT NULL,
  PRIMARY KEY (`comment_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES (25, 1, 'daau', 'example@gmail.com', 'vfadvcv', 'show', '2019-01-16');
INSERT INTO `comments` VALUES (26, 1, 'dinesh', 'example@gmail.com', 'vfvfdvfsv', 'show', '2019-01-16');
INSERT INTO `comments` VALUES (27, 2, 'daau', 'example@gmail.com', 'fvfvfev', 'show', '2019-01-16');
INSERT INTO `comments` VALUES (28, 2, 'dinesh', 'example@gmail.com', 'vfbgrbrt', 'show', '2019-01-16');
INSERT INTO `comments` VALUES (37, 2, 'fdgd', 'example@gmail.com', 'cxvfv', 'show', '2019-01-19');

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts`  (
  `post_id` int(3) NOT NULL AUTO_INCREMENT,
  `post_category_id` int(3) NOT NULL,
  `post_title` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `post_user` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `post_content` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `post_tags` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `post_comment_count` int(11) NOT NULL,
  `post_status` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'draft',
  `post_views_count` int(11) NOT NULL,
  PRIMARY KEY (`post_id`, `post_category_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES (1, 1, 'Website', 'harshitbansal', '2018-10-16', 'Boeremark.jpg', 'you are doing well...\r\n', 'harshit,website', 2, 'draft', 1);
INSERT INTO `posts` VALUES (2, 1, 'How to work?', 'raghuveer', '2018-10-21', '544106281_1280x720.jpg', 'you should move on without afraid of what will the curcumstances...         ', 'life,Rajesh,How to work', 0, 'draft', 2);
INSERT INTO `posts` VALUES (3, 1, 'Android', 'priyanka', '2018-10-24', 'work-life-balance.jpg', 'Android is a mobile operating system developed by Google, based on a modified version of the Linux kernel and other open source software and designed primarily for touchscreen mobile devices such as smartphones and tablets            ', 'Android, namandeep, mobile, smartphone', 1, 'published', 1);
INSERT INTO `posts` VALUES (8, 1, 'life', 'harshitbansal', '2019-01-10', 'life-008.jpg', 'life has no ctrl+z \r\nhahahaha', 'life , ctrl', 0, 'published', 0);
INSERT INTO `posts` VALUES (10, 1, 'Time', 'raghuveer', '2018-10-21', 'time.jpeg', 'time is money.', 'time, money', 1, 'published', 0);
INSERT INTO `posts` VALUES (11, 1, 'Goes on', 'raghuveer', '2018-10-21', 'life-expectancy-decline.jpg', 'this is the content for this post.    ', 'goes on, suresh, life', 0, 'published', 0);
INSERT INTO `posts` VALUES (12, 3, 'fdnbkfd', 'vijay', '2018-10-30', '', 'bdssvkbdsk   ', 'dvjdjsv', 0, 'd,jvsd', 0);
INSERT INTO `posts` VALUES (13, 1, 'diwali', 'vijay', '2018-11-08', '', '<p>hello frnds happy diwali!!</p>', 'vinod, diwali', 0, 'published', 0);
INSERT INTO `posts` VALUES (14, 3, 'accounts', 'priyanka', '2019-01-10', '', '<p>accounting is an identifying process</p>', 'accounts, tanya, bela', 0, 'published', 0);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `user_id` int(3) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `user_password` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `user_firstname` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `user_lastname` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `user_email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `user_image` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `user_role` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `randSalt` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '$2y$10$iusesomecrazystrings22',
  `token` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', '$2y$12$k.u2WQeSUhCLc8sHdXoCteZNn1gMxkUYRYJwgp1msOF7.GgotSd4e', 'admin', 'admin', 'example@admin.com', '', 'admin', '$2y$10$iusesomecrazystrings22', '');
INSERT INTO `users` VALUES (17, 'harshitbansal', '$2y$2y$12$JDJ5JDEwJGl1c2Vzb21lYuH/xE3Z3LbV9eQkmJk5h7CYOoZFYzDfi', 'harshit', 'bansal', 'example@gmail.com', '', 'admin', '$2y$10$iusesomecrazystrings22', '77020c98efbc545715012c76bec5aaec6e8a2cfced12d25f1c2f2626a1ef4af2271b1e458848d80a745e6b578b954cf34427');
INSERT INTO `users` VALUES (20, 'priyanka', '$2y$12$g8pP0gP5M55tiWHiMgJYz.t8DGk0OlZCMetxAmRswvJuyPHrDJ8N2', 'priyanka', 'sharma', 'example@gmail.com', '', 'subscriber', '$2y$10$iusesomecrazystrings22', '77020c98efbc545715012c76bec5aaec6e8a2cfced12d25f1c2f2626a1ef4af2271b1e458848d80a745e6b578b954cf34427');
INSERT INTO `users` VALUES (22, 'raghuveer', '$2y$12$kTq/GUEkryih.nT9O77KfeyMp9165ZIqlvu1dEOQLKW8RWv0te46W', 'raghuveer', 'singh', 'example123@gmail.com', '', 'subscriber', '$2y$10$iusesomecrazystrings22', '77020c98efbc545715012c76bec5aaec6e8a2cfced12d25f1c2f2626a1ef4af2271b1e458848d80a745e6b578b954cf34427');
INSERT INTO `users` VALUES (26, 'raghuveer23', '$2y$12$23Bqzby0qrz3VfojjbZjT.e4nwL7a68nJk7A4E9bgolDlWmG0lL7m', 'raghuveer', 'sharma', 'example@gmail.com', '', 'subscriber', '$2y$10$iusesomecrazystrings22', '');

-- ----------------------------
-- Table structure for users_online
-- ----------------------------
DROP TABLE IF EXISTS `users_online`;
CREATE TABLE `users_online`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 91 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_online
-- ----------------------------
INSERT INTO `users_online` VALUES (28, 'acqtk6uivrc3mancr6jubo36g8', 1541324861);
INSERT INTO `users_online` VALUES (40, 'ipke8cras4eauiu50upkm1mocd', 1548511410);
INSERT INTO `users_online` VALUES (41, 'l4qj6m6jv3ges0us7cqvrqovhq', 1548401977);
INSERT INTO `users_online` VALUES (42, 'fd7b414bec20e569f9bd17c4e7ef4c13', 1562584762);
INSERT INTO `users_online` VALUES (43, '3soetigoq9rn345g1ere0cu5gg', 1669355641);
INSERT INTO `users_online` VALUES (44, 'ap0cccprdh0gpl93eujsepa4le', 1669373653);
INSERT INTO `users_online` VALUES (45, 'a69iaevjrj9g67hod3r7kt5bgq', 1669387734);
INSERT INTO `users_online` VALUES (46, 'v5u10k05kve576q2mb96vml8vi', 1669391705);
INSERT INTO `users_online` VALUES (47, 'mgnvi7lsdi3kitbodsuer3irqk', 1687665114);
INSERT INTO `users_online` VALUES (48, '037fncn0skifhnhaf14tgccipm', 1687665114);
INSERT INTO `users_online` VALUES (49, '7k83kgckl65a846ossjj0oabi8', 1687665119);
INSERT INTO `users_online` VALUES (50, '206tu7al186i1eb90p4t1sse46', 1687665119);
INSERT INTO `users_online` VALUES (51, '5b58dhesmara96fv8ev743vj6k', 1687665119);
INSERT INTO `users_online` VALUES (52, '6nflbjongahmutu8i4efo2bra2', 1687665121);
INSERT INTO `users_online` VALUES (53, 't33j9p1j7j354hdgfkr7mjuchq', 1688268467);
INSERT INTO `users_online` VALUES (54, 'n7m0dm15o5m0ba31rtubdvuq7g', 1688269735);
INSERT INTO `users_online` VALUES (55, '9lai5bcolf4gn8sin0shapskla', 1688269984);
INSERT INTO `users_online` VALUES (56, '3idl8juqpkvap3nfitbq0rkmth', 1688269837);
INSERT INTO `users_online` VALUES (57, '5abe2a5b5vckp5klplrij8t4co', 1688279270);
INSERT INTO `users_online` VALUES (58, 'gulroho87tq4nvmn6td7mc8lbn', 1688279207);
INSERT INTO `users_online` VALUES (59, 'shgf9jnl9qt4fcaeg3s4qj1qf4', 1688628883);
INSERT INTO `users_online` VALUES (60, '4ptj2a2jaq7q2h4lq8pbghil45', 1688628883);
INSERT INTO `users_online` VALUES (61, '6voh01curn0qhj0gn0blobt8o7', 1688628884);
INSERT INTO `users_online` VALUES (62, 'o6hpuvmrlm0g96ng12ej1grv57', 1688628884);
INSERT INTO `users_online` VALUES (63, 'shluunro41h8n9bu6qsdfufr67', 1688628885);
INSERT INTO `users_online` VALUES (64, 'p4tq6u91h7pdr2gud4a20s1840', 1688628885);
INSERT INTO `users_online` VALUES (65, '58g9kdemdb1631mh963gflpv44', 1688629053);
INSERT INTO `users_online` VALUES (66, 'okntnitr3p2shrkju4lc1ossq0', 1688629053);
INSERT INTO `users_online` VALUES (67, '2h0292q7upuukue5qtsafru6k6', 1688629055);
INSERT INTO `users_online` VALUES (68, 'iosglgm19mmmmf986c4jjbaos5', 1688629055);
INSERT INTO `users_online` VALUES (69, '42qoo5iv85gmo9lm1cvla6srp6', 1688629055);
INSERT INTO `users_online` VALUES (70, '4adtv74pufm1tr8srrj8daud52', 1688629056);
INSERT INTO `users_online` VALUES (71, '224dbekat3mpd07f2lr58k79q3', 1688629069);
INSERT INTO `users_online` VALUES (72, '2lnkcustu8bgmqek6241eft9h4', 1688629070);
INSERT INTO `users_online` VALUES (73, 'f41m692l1n8pi0qr37esb1ol00', 1688629071);
INSERT INTO `users_online` VALUES (74, 'hobvj5kntvuvejkqbktv27bk16', 1688629071);
INSERT INTO `users_online` VALUES (75, 'adgdo9kchq9kc5m6ltr9vsatg3', 1688629071);
INSERT INTO `users_online` VALUES (76, 'u0iivbki29fsbladnupcs2q9j5', 1688716313);
INSERT INTO `users_online` VALUES (77, 'o7iutlvg4vknqbf9ou691p5ej7', 1688716313);
INSERT INTO `users_online` VALUES (78, 'rnksju7dv8hdv4bdg66ksatmp1', 1688716317);
INSERT INTO `users_online` VALUES (79, 'n0dntvukgd00id02nl3jchq032', 1688716317);
INSERT INTO `users_online` VALUES (80, 'v8hbhl8hh3ukm76dcjo42ku5s3', 1688716317);
INSERT INTO `users_online` VALUES (81, 'o3b2qf76fdhqv6mgcngghcj991', 1688716321);
INSERT INTO `users_online` VALUES (82, 'e1k9q83nn0u11bn27v0ufmfs07', 1688716352);
INSERT INTO `users_online` VALUES (83, 'h4tm2jbsttdmp7bmaaomj013l0', 1688716352);
INSERT INTO `users_online` VALUES (84, '6h60fhn5a34ogr8fa5gp36stu0', 1688716356);
INSERT INTO `users_online` VALUES (85, 'sji9t8vi62kup8lnvds2euseu3', 1688716356);
INSERT INTO `users_online` VALUES (86, 'r43bbpbqj7amrekmv3a74tkbu4', 1688716356);
INSERT INTO `users_online` VALUES (87, '4vllk94e0f517al47rckbab436', 1688716360);
INSERT INTO `users_online` VALUES (88, '6ug1vsj90b48r2endiu0hndvj6', 1690469712);
INSERT INTO `users_online` VALUES (89, 'fj6f5frjoo2djhcmvhplbn0s5k', 1690470077);
INSERT INTO `users_online` VALUES (90, 'm9t87tj90ptj36a5oklb3p0gir', 1690471473);

SET FOREIGN_KEY_CHECKS = 1;
