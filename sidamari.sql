/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 100422
 Source Host           : localhost:3306
 Source Schema         : sidamari

 Target Server Type    : MySQL
 Target Server Version : 100422
 File Encoding         : 65001

 Date: 29/07/2022 14:49:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for education
-- ----------------------------
DROP TABLE IF EXISTS `education`;
CREATE TABLE `education`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pengaduan
-- ----------------------------
INSERT INTO `pengaduan` VALUES (2, 'Budi', '2022-07-19', 'Ruang Asoka', 'Coba 1', 'file_1658144575.png', 4, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2022-07-18 00:00:00', NULL);
INSERT INTO `pengaduan` VALUES (3, 'Faisal', '2022-06-24', 'Ruang Melati', 'Coba 2', 'file_1658144575.png', 4, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2022-06-22 00:00:00', NULL);
INSERT INTO `pengaduan` VALUES (4, 'Maya', '2022-05-16', 'Aula Tribata', 'Coba 3', 'file_1658144575.png', 4, NULL, NULL, 3, NULL, NULL, NULL, 'qweqwe', '2022-05-14 00:00:00', NULL);
INSERT INTO `pengaduan` VALUES (5, 'Lina', '2022-07-11', 'Lift poliklinik', 'Coba 4', 'file_1658144575.png', 4, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2022-07-09 00:00:00', NULL);
INSERT INTO `pengaduan` VALUES (6, 'Mei', '2022-07-06', 'Urmin', 'COba 6', 'file_1658216628.png', 4, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2022-07-09 00:00:00', NULL);
INSERT INTO `pengaduan` VALUES (7, 'Nika', '2022-07-18', 'Urmin', 'coba 7', 'file_1658216840.png', 4, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2022-07-09 00:00:00', NULL);
INSERT INTO `pengaduan` VALUES (8, 'qwewq', '2022-07-20', 'qweqwe', 'qwewqeeqw', 'file_1658216941.png', 4, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2022-07-09 00:00:00', NULL);
INSERT INTO `pengaduan` VALUES (9, '34234324', '2022-07-20', '234324', '234234234234', NULL, 4, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2022-07-20 07:40:39', NULL);
INSERT INTO `pengaduan` VALUES (10, 'Nonik', '2022-07-27', 'Urmin', 'Coba 9', 'file_1658971301.jpg', 4, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2022-07-28 08:21:41', NULL);
INSERT INTO `pengaduan` VALUES (11, 'Jojon', '2022-07-29', 'RM', 'Coba 10', 'file_1658972993.jpg', 4, NULL, NULL, 2, NULL, NULL, NULL, NULL, '2022-07-28 08:49:53', NULL);

-- ----------------------------
-- Table structure for tembusan
-- ----------------------------
DROP TABLE IF EXISTS `tembusan`;
CREATE TABLE `tembusan`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tembusan
-- ----------------------------
INSERT INTO `tembusan` VALUES (1, 'Komite Mutu');
INSERT INTO `tembusan` VALUES (2, 'Komite Medik');
INSERT INTO `tembusan` VALUES (3, 'Komite Keperawatan');
INSERT INTO `tembusan` VALUES (4, 'Komite Tenaga Kesehatan Lain');
INSERT INTO `tembusan` VALUES (5, 'Komite K3');
INSERT INTO `tembusan` VALUES (6, 'Komite PPI');
INSERT INTO `tembusan` VALUES (7, 'Komite Etik & Hukum');
INSERT INTO `tembusan` VALUES (8, 'Komite PPRA');

-- ----------------------------
-- Table structure for tindak_lanjut
-- ----------------------------
DROP TABLE IF EXISTS `tindak_lanjut`;
CREATE TABLE `tindak_lanjut`  (
  `id_pengaduan` int(11) NULL DEFAULT NULL,
  `id_komite` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jenis_laporan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jenis_komplain` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tindak_lanjut` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `tindak_lanjut_karumkit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tindak_lanjut
-- ----------------------------
INSERT INTO `tindak_lanjut` VALUES (4, 'komite_medik', 'Pelecehan seksual', '2', 'coba 1', '2022-07-25 05:01:26', NULL);
INSERT INTO `tindak_lanjut` VALUES (4, 'komite_etik', 'Perilaku yang melecehkah', '1', 'coba etik', '2022-07-26 06:24:17', NULL);
INSERT INTO `tindak_lanjut` VALUES (3, 'komite_etik', 'Perilaku yang menggangu', '1', 'coba faisal', '2022-07-26 09:34:43', NULL);
INSERT INTO `tindak_lanjut` VALUES (4, 'komite_keperawatan', 'Pelecehan seksual', '4', 'coba maya', '2022-07-26 10:00:45', NULL);
INSERT INTO `tindak_lanjut` VALUES (4, 'komite_tenaga', 'Pelecehan seksual', '4', 'coba 4', '2022-07-26 10:01:30', NULL);
INSERT INTO `tindak_lanjut` VALUES (10, 'komite_medik', 'Pelecehan yang melecehkan', '3', 'Coba nonik', '2022-07-28 08:44:23', NULL);
INSERT INTO `tindak_lanjut` VALUES (11, 'komite_medik', 'Pelecehan yang mengganggu', '1', 'Coba 10', '2022-07-28 08:51:14', NULL);

-- ----------------------------
-- Table structure for transaksi
-- ----------------------------
DROP TABLE IF EXISTS `transaksi`;
CREATE TABLE `transaksi`  (
  `id_pengaduan` int(11) NULL DEFAULT NULL,
  `id_komite` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of transaksi
-- ----------------------------
INSERT INTO `transaksi` VALUES (4, 'komite_medik');
INSERT INTO `transaksi` VALUES (3, 'komite_medik');
INSERT INTO `transaksi` VALUES (3, 'komite_etik');
INSERT INTO `transaksi` VALUES (4, 'komite_etik');
INSERT INTO `transaksi` VALUES (2, 'komite_etik');
INSERT INTO `transaksi` VALUES (2, 'komite_keperawatan');
INSERT INTO `transaksi` VALUES (5, 'komite_medik');
INSERT INTO `transaksi` VALUES (5, 'komite_tenaga');
INSERT INTO `transaksi` VALUES (6, 'komite_etik');
INSERT INTO `transaksi` VALUES (6, 'komite_keperawatan');
INSERT INTO `transaksi` VALUES (6, 'komite_medik');
INSERT INTO `transaksi` VALUES (6, 'komite_tenaga');
INSERT INTO `transaksi` VALUES (7, 'komite_tenaga');
INSERT INTO `transaksi` VALUES (4, 'komite_keperawatan');
INSERT INTO `transaksi` VALUES (4, 'komite_tenaga');
INSERT INTO `transaksi` VALUES (10, 'komite_etik');
INSERT INTO `transaksi` VALUES (10, 'komite_keperawatan');
INSERT INTO `transaksi` VALUES (10, 'komite_medik');
INSERT INTO `transaksi` VALUES (10, 'komite_tenaga');
INSERT INTO `transaksi` VALUES (11, 'komite_etik');
INSERT INTO `transaksi` VALUES (11, 'komite_keperawatan');
INSERT INTO `transaksi` VALUES (11, 'komite_medik');
INSERT INTO `transaksi` VALUES (11, 'komite_tenaga');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `level` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', 'admin', 'Admin', 'admin');
INSERT INTO `user` VALUES (2, 'karumkit', '123', 'Kepala Rumah Sakit', 'karumkit');
INSERT INTO `user` VALUES (3, 'komite_medik', '123', 'Komite Medik', 'komite_medik');
INSERT INTO `user` VALUES (4, 'agung', '123', 'Agung Mukti', 'pegawai');
INSERT INTO `user` VALUES (5, 'komite_etik', '123', 'Komite Etik dan Hukum', 'komite_etik');
INSERT INTO `user` VALUES (6, 'komite_tenaga', '123', 'Komite Tenaga Kesehatan Lain', 'komite_tenaga');
INSERT INTO `user` VALUES (7, 'komite_keperawatan', '123', 'Komite Keperawatan', 'komite_keperawatan');

SET FOREIGN_KEY_CHECKS = 1;
