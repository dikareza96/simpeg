/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 100422
 Source Host           : localhost:3306
 Source Schema         : simpeg

 Target Server Type    : MySQL
 Target Server Version : 100422
 File Encoding         : 65001

 Date: 03/08/2022 13:47:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for pengaduan
-- ----------------------------
DROP TABLE IF EXISTS `pengaduan`;
CREATE TABLE `pengaduan`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tersangka` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `waktu_kejadian` date NULL DEFAULT NULL,
  `tempat_kejadian` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `detail_laporan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `user_pelapor` int(11) NULL DEFAULT NULL,
  `jenis_laporan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tembusan` int(11) NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `jenis_komplain` int(11) NULL DEFAULT NULL,
  `rekomendasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tindak_lanjut_komite` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `tindak_lanjut_karumkit` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pengaduan
-- ----------------------------
INSERT INTO `pengaduan` VALUES (2, 'Budi', '2022-07-19', 'Urmin', 'Coba 1', 'file_1659318104.mp4', 4, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2022-07-18 00:00:00', NULL);
INSERT INTO `pengaduan` VALUES (3, 'Faisal', '2022-06-24', 'Ruang Melati', 'Coba 2', 'file_1658144575.png', 4, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2022-06-22 00:00:00', NULL);
INSERT INTO `pengaduan` VALUES (4, 'Maya', '2022-05-16', 'Aula Tribata', 'Coba 3', 'file_1658144575.png', 4, NULL, NULL, 3, NULL, NULL, NULL, 'qweqwe', '2022-05-14 00:00:00', NULL);
INSERT INTO `pengaduan` VALUES (5, 'Lina', '2022-07-11', 'Lift poliklinik', 'Coba 4', 'file_1658144575.png', 4, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2022-07-09 00:00:00', NULL);
INSERT INTO `pengaduan` VALUES (6, 'Mei', '2022-07-06', 'Urmin', 'COba 6', 'file_1658216628.png', 4, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2022-07-09 00:00:00', NULL);
INSERT INTO `pengaduan` VALUES (7, 'Nika', '2022-07-18', 'Urmin', 'coba 7', 'file_1658216840.png', 4, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2022-07-09 00:00:00', NULL);
INSERT INTO `pengaduan` VALUES (8, 'qwewq', '2022-07-20', 'qweqwe', 'qwewqeeqw', 'file_1658216941.png', 4, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2022-07-09 00:00:00', NULL);
INSERT INTO `pengaduan` VALUES (9, '34234324', '2022-07-20', '234324', '234234234234', NULL, 4, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2022-07-20 07:40:39', NULL);
INSERT INTO `pengaduan` VALUES (10, 'Nonik', '2022-07-27', 'Urmin', 'Coba 9', 'file_1658971301.jpg', 4, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2022-07-28 08:21:41', NULL);
INSERT INTO `pengaduan` VALUES (11, 'Jojon', '2022-07-29', 'RM', 'Coba 10', 'file_1658972993.jpg', 4, NULL, NULL, 2, NULL, NULL, NULL, NULL, '2022-07-28 08:49:53', NULL);
INSERT INTO `pengaduan` VALUES (12, 'ffffffffffff', '2022-08-03', 'Urmin', 'wererew', 'file_1659327475.png', 4, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2022-08-01 11:17:55', NULL);
INSERT INTO `pengaduan` VALUES (13, 'ffffffffffff', '2022-08-01', 'Urmin', 'asdasdasd', 'file_1659329328.png', 4, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2022-08-01 11:48:48', NULL);
INSERT INTO `pengaduan` VALUES (14, 'ffffffffffff', '2022-08-01', 'Urmin', 'qweqweqw', NULL, 4, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2022-08-01 11:49:49', NULL);
INSERT INTO `pengaduan` VALUES (15, 'tes', '2022-08-02', 'Urmin', 'sdasdsad', 'file_1659335891.png', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2022-08-01 13:38:11', NULL);
INSERT INTO `pengaduan` VALUES (16, 'tes123', '2022-08-02', 'Urmin', 'asdasdsad', 'file_1659335945.png', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2022-08-01 13:39:05', NULL);
INSERT INTO `pengaduan` VALUES (17, 'ffffffffffffrrr', '2022-08-02', 'Urmin', 'ewerewr', 'file_1659400320.png', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2022-08-02 07:32:00', NULL);
INSERT INTO `pengaduan` VALUES (18, 'ffffffffffff123123', '2022-08-02', '123123', '123123', 'file_1659401253.png', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2022-08-02 07:47:33', NULL);
INSERT INTO `pengaduan` VALUES (19, 'fffffffffffffff', '2022-08-07', 'Urminasd', 'asdasdsad', 'file_1659401356.png', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2022-08-02 07:49:16', NULL);
INSERT INTO `pengaduan` VALUES (20, 'vvvvvvvvvvv', '2022-08-04', 'Urmin', 'asdsadsad', 'file_1659401384.png', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2022-08-02 07:49:44', NULL);
INSERT INTO `pengaduan` VALUES (21, 'Alfando', '2022-08-01', 'IT', 'Kata-kata kotor', 'file_1659418798.png', 4, NULL, NULL, 2, NULL, NULL, NULL, 'Pembinaan', '2022-08-02 12:39:58', NULL);
INSERT INTO `pengaduan` VALUES (22, 'test spi', '2022-08-04', 'Urmin', 'Kata kotor', 'file_1659491926.png', 4, NULL, NULL, 2, NULL, NULL, NULL, NULL, '2022-08-03 08:58:46', NULL);

SET FOREIGN_KEY_CHECKS = 1;
