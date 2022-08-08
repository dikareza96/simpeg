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

 Date: 08/08/2022 07:36:57
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
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pengaduan
-- ----------------------------
INSERT INTO `pengaduan` VALUES (2, 'Budi', '2022-07-19', 'Urmin', 'Coba 1', 'file_1659318104.mp4', 487, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2022-07-18 00:00:00', NULL);
INSERT INTO `pengaduan` VALUES (3, 'Faisal', '2022-06-24', 'Ruang Melati', 'Coba 2', 'file_1658144575.png', 487, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2022-06-22 00:00:00', NULL);
INSERT INTO `pengaduan` VALUES (4, 'Maya', '2022-05-16', 'Aula Tribata', 'Coba 3', 'file_1658144575.png', 487, NULL, NULL, 3, NULL, NULL, NULL, 'qweqwe', '2022-05-14 00:00:00', NULL);
INSERT INTO `pengaduan` VALUES (5, 'Lina', '2022-07-11', 'Lift poliklinik', 'Coba 4', 'file_1658144575.png', 487, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2022-07-09 00:00:00', NULL);
INSERT INTO `pengaduan` VALUES (6, 'Mei', '2022-07-06', 'Urmin', 'COba 6', 'file_1658216628.png', 487, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2022-07-09 00:00:00', NULL);
INSERT INTO `pengaduan` VALUES (7, 'Nika', '2022-07-18', 'Urmin', 'coba 7', 'file_1658216840.png', 487, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2022-07-09 00:00:00', NULL);
INSERT INTO `pengaduan` VALUES (8, 'qwewq', '2022-07-20', 'qweqwe', 'qwewqeeqw', 'file_1658216941.png', 487, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2022-07-09 00:00:00', NULL);
INSERT INTO `pengaduan` VALUES (9, '34234324', '2022-07-20', '234324', '234234234234', NULL, 487, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2022-07-20 07:40:39', NULL);
INSERT INTO `pengaduan` VALUES (10, 'Nonik', '2022-07-27', 'Urmin', 'Coba 9', 'file_1658971301.jpg', 487, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2022-07-28 08:21:41', NULL);
INSERT INTO `pengaduan` VALUES (11, 'Jojon', '2022-07-29', 'RM', 'Coba 10', 'file_1658972993.jpg', 487, NULL, NULL, 2, NULL, NULL, NULL, NULL, '2022-07-28 08:49:53', NULL);
INSERT INTO `pengaduan` VALUES (12, 'ffffffffffff', '2022-08-03', 'Urmin', 'wererew', 'file_1659327475.png', 487, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2022-08-01 11:17:55', NULL);
INSERT INTO `pengaduan` VALUES (13, 'ffffffffffff', '2022-08-01', 'Urmin', 'asdasdasd', 'file_1659329328.png', 487, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2022-08-01 11:48:48', NULL);
INSERT INTO `pengaduan` VALUES (14, 'ffffffffffff', '2022-08-01', 'Urmin', 'qweqweqw', NULL, 487, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2022-08-01 11:49:49', NULL);
INSERT INTO `pengaduan` VALUES (15, 'tes', '2022-08-02', 'Urmin', 'sdasdsad', 'file_1659335891.png', 876, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2022-08-01 13:38:11', NULL);
INSERT INTO `pengaduan` VALUES (16, 'tes123', '2022-08-02', 'Urmin', 'asdasdsad', 'file_1659335945.png', 876, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2022-08-01 13:39:05', NULL);
INSERT INTO `pengaduan` VALUES (17, 'ffffffffffffrrr', '2022-08-02', 'Urmin', 'ewerewr', 'file_1659400320.png', 876, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2022-08-02 07:32:00', NULL);
INSERT INTO `pengaduan` VALUES (18, 'ffffffffffff123123', '2022-08-02', '123123', '123123', 'file_1659401253.png', 876, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2022-08-02 07:47:33', NULL);
INSERT INTO `pengaduan` VALUES (19, 'fffffffffffffff', '2022-08-07', 'Urminasd', 'asdasdsad', 'file_1659401356.png', 876, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2022-08-02 07:49:16', NULL);
INSERT INTO `pengaduan` VALUES (20, 'vvvvvvvvvvv', '2022-08-04', 'Urmin', 'asdsadsad', 'file_1659401384.png', 876, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2022-08-02 07:49:44', NULL);
INSERT INTO `pengaduan` VALUES (21, 'Alfando', '2022-08-01', 'IT', 'Kata-kata kotor', 'file_1659418798.png', 487, NULL, NULL, 2, NULL, NULL, NULL, 'Pembinaan', '2022-08-02 12:39:58', NULL);
INSERT INTO `pengaduan` VALUES (22, 'test spi', '2022-08-04', 'Urmin', 'Kata kotor', 'file_1659491926.png', 487, NULL, NULL, 2, NULL, NULL, NULL, NULL, '2022-08-03 08:58:46', NULL);

-- ----------------------------
-- Table structure for tb_users
-- ----------------------------
DROP TABLE IF EXISTS `tb_users`;
CREATE TABLE `tb_users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nip` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_lengkap` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pass_login` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `foto` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `login_terakhir` timestamp(0) NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  `level` enum('admin','karumkit','komite_etik','spi','humas','pegawai','') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status_user` enum('valid','not') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status` enum('online','offline') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kd_userlevel` int(11) NULL DEFAULT NULL,
  `token` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status_login` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `nip`(`nip`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 150008 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_users
-- ----------------------------
INSERT INTO `tb_users` VALUES (1, '2233441', 'administrator', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-08-05 09:15:16', 'admin', 'valid', 'online', 2, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (2, 'K180', 'Mey Sinta Damayanti', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-21 07:37:09', '', 'valid', 'online', 2, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (3, '078544777', 'ARDAN', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-04-27 16:10:43', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (4, '69060519', 'Dr. BADRUL MUNIR, Sp.PD', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 21:08:32', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (5, '197808042007011003', 'PITER AGUNG  K,Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-03-19 20:37:09', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (6, '197409042007101001', 'YOSEPH TRI PUJI W., Amd.Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-10 13:09:02', '', 'valid', 'online', 3, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (7, '197712222007101001', 'WIWIN PURBIANTO,Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-08 07:16:55', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (8, '197908152007101003', 'ROPY MUKTI SATOTO,Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-03 10:32:39', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (9, '198102122007102001', 'EVI SUSANTI,Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 12:32:09', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (10, '198010132007102001', 'ANA SRI HARTIWI,Amd', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-20 15:38:19', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (11, '198201082007102001', 'SRI YUNIARTI P A ,Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 07:36:18', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (12, '197806272007101002', 'IMAM MUKTI, Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 15:21:43', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (13, '196610011991032002', 'SUNARSIH', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-02-04 14:35:05', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (14, '197003202002122001', 'WIWIK SURWIYANDARI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-11 08:12:36', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (16, '197405012005011011', 'TRI EDNAN WICARA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-02-11 05:36:08', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (17, '196308201989031003', 'SUPRAYITNA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-04-27 16:10:43', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (18, '196402011989032006', 'WIWIK WIDAWATI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 14:17:39', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (19, '197504102006042006', 'YETIK APRILINA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-04-27 16:10:43', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (20, '197309232006041005', 'MUDJIANTO, Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 18:48:07', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (21, '196309192007012001', 'RATNA WILIS', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-04-27 16:10:43', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (22, '196603122007012003', 'SUTIK WIDAYATI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-03-11 13:17:56', '', 'valid', 'offline', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (23, '196811082007012002', 'OETARI SOEWARNI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 12:23:11', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (24, '196810112007012004', 'RINA RAHMAYANTI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 12:18:59', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (25, '196209242007011002', 'DRADJAT LATIH SUTIKNO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-04-27 16:10:43', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (26, '196207052007011006', 'SURONO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-04-27 16:10:43', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (27, '196605162007012004', 'SUMIYATI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2021-12-28 16:47:58', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (28, '196501182007011001', 'JARNO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-02-04 17:08:48', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (29, '196210052007012001', 'HALIMAH', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-11-17 09:28:41', '', 'valid', 'offline', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (30, '196901012007011005', 'HARI WIDODO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-10 08:10:16', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (31, '196512162007011002', 'SUBAGIYA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-02-02 07:42:53', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (32, '196908042007012002', 'DWI LILIS YUNIARTI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 19:07:36', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (33, '196811022007011003', 'SOEGENG WAHJUDI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 23:40:09', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (34, '196805232007011005', 'ADI UTOMO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 16:14:45', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (35, '197005082007011007', 'EKO RAHADI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-03-01 08:43:38', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (36, '68030556', 'IDA ZURAIDAH,Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-11 14:47:55', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (37, '197107012007011046', 'SUGENG PRAYITNO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 08:11:54', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (38, '197611302007011004', 'BAGUS SAPUTRO,S.Kep., Ns', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 19:00:43', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (39, '197606062007012001', 'ENDANG YUNI R,S.Kep.Ns', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-05-08 16:52:36', '', 'valid', 'online', 3, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (40, '196905062007012005', 'SUGIARTI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-02-12 17:09:50', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (41, '197811022007012001', 'NOVIANA SHINTA D,Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-10 08:31:26', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (42, '197407292007012001', 'SUMARTIN', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-18 11:34:26', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (43, '197905042007012001', 'EMILDA SIH WIDI ESTUNINGTYAS', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-02-02 06:38:56', '', 'valid', 'online', 3, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (44, '198005182007011001', 'EKO AJI W', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2021-12-28 22:23:52', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (45, '197911122007012001', 'LILIK NURKHOLIDAH', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 15:07:14', '', 'valid', 'online', 3, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (46, '197811012007011001', 'EKO PIUWANTO, Amd Far', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-09-15 11:02:23', '', 'valid', 'offline', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (47, '71060472', 'NUR IMAWATI, Amd.Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-02-08 14:49:02', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (48, '197205212007011004', 'MATJURI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 13:03:17', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (49, '198002102007012001', 'HANIK PUJIANI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2021-12-29 07:11:10', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (50, '197406062007011003', 'EDY SUPRAPTO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-02-02 07:38:48', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (51, '198305152007012001', 'SRI MEI NINGSIH', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 12:49:18', '', 'valid', 'online', 3, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (52, '196905212014122001', 'ETI TRIASTUTI, A.MK', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-10 08:06:32', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (53, '197411282014122001', 'ETA RULIANA, S.Kep Ns', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-04-30 21:36:20', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (54, '198108222014122003', 'ENIK SUSANTI,  S.Kep;NS', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-03-14 15:12:17', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (55, '198109102014122007', 'FARIDA SUSIANA, A.MK', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 12:38:28', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (56, '197912032014121002', 'IIN HERENTIKA, A.MK', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 13:16:26', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (57, '198008182014122004', 'SRI HANDAYANI, A.md', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 09:34:10', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (58, '77110663', 'BIHARUL ALIMAH,Amd', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 15:18:17', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (59, '197707272007102001', 'SRI WIDAYATI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-10 15:00:33', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (60, '197507152007101005', 'EDI SUNARYO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-17 07:36:44', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (61, '197503252007102001', 'KALIS SRI MULYANI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-08 15:46:52', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (62, '197911112007102001', 'YULI ASRIANI,Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-09 17:46:00', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (63, '197804272007102001', 'PUJIANI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-03-22 07:10:46', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (64, '196812052008101001', 'R HARIADI SETIAWAN', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 13:06:44', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (65, '197008222008101001', 'SUWARDJI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-11 09:09:54', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (66, '197412122008101001', 'ALIM SUKIBA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-02-14 07:28:44', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (67, '197404112008101001', 'SUNARDI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-04-02 20:06:46', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (68, '198006212008101001', 'ADI WIYOSO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 14:49:54', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (69, '69120507', 'NURUL HADI AMRULLAH, Apt', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 11:25:13', '', 'valid', 'offline', 3, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (70, '197706292008102001', 'YUNI ROMELAH', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-10 11:26:54', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (71, '197312262008101001', 'AGUS EKO ATMOJO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 16:11:22', '', 'valid', 'online', 3, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (72, '197404132008101001', 'LULUT', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 13:17:42', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (73, '198008152007102001', 'FERA DWI AGUSTINA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 14:53:14', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (74, '196210121992012001', 'RETNANINGSIH', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-04-27 16:10:43', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (75, '196208102007011005', 'AGUS PRIYANTO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-04-27 16:10:43', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (76, '196608121998032001', 'SUGENG RAHAYU', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 15:39:46', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (77, '196111152007012002', 'NINIK KUSWATININGSIH', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-09-15 11:29:42', '', 'valid', 'offline', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (78, '196909152007011005', 'WARSITO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 13:01:37', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (79, '196412102014122002', 'RITA HANDAYANI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-10 08:43:55', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (80, '64030211', 'SUKRESTIANTO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2021-12-28 16:06:29', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (81, '196409122014121002', 'SUBROTO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-04-30 09:27:51', '', 'valid', 'offline', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (82, '198104222014122003', 'ARI KRISNAWATI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-18 15:13:21', '', 'valid', 'online', 3, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (83, '197402282014121001', 'ARIF DOSO NUGROHO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 14:05:54', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (84, '197505152014121002', 'DIDIK DWI SOESANTO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-21 07:04:48', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (85, '196211232007011001', 'TUMIRAN', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-04-27 16:10:43', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (86, '197504282014121001', 'JAYADI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-02-21 13:49:16', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (87, '197711032014121001', 'MUSTARI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 12:36:43', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (88, '197402072014121001', 'MISANTARA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-12 21:18:13', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (89, '197204102014121001', 'SLAMET', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 12:57:53', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (90, '196411162014122002', 'NURIYAH', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-05-29 11:46:07', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (91, '64020026', 'IMAM SUBAGJO, S.H., SPSI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-20 07:37:33', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (92, '196502192014122002', 'PONI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 12:05:56', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (93, '196404242014121001', 'RUKANI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2021-12-29 08:19:17', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (94, '198312172019021004', 'dr. MUHAMMAD UJUNG BAEHAQI, Sp.PD', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-04-27 16:10:43', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (95, '199004112019022006', 'AIZIN LAILA ILWI, Amd.Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 08:25:24', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (96, 'K053', 'SRI SETIJOASIH,Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-07-27 07:32:56', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (97, 'K054', 'NOVA SUCI E,Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2021-12-29 10:34:43', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (98, 'K055', 'ARIS KURNIAWAN,Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-07-28 13:11:05', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (99, 'K057', 'PULUNG PRASETYO , Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-03-21 07:05:31', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (100, 'K058', 'WIWIT WIDIANA W,Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-08-03 06:21:32', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (101, 'K060', 'RINA KRISTI NUGRAHENI,Amd PK', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-11 07:01:00', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (102, '66040183', 'PRIYONO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-05-13 11:43:31', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (103, 'K062', 'SRI HARYANTI,Amd PK', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-09 15:12:48', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (104, 'K063', 'FEBRI MAYASARI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-07-05 07:13:04', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (105, 'K064', 'FARIDLOTUN NISAK', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 07:33:37', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (106, 'K078', 'SRI SUKANANI, SE', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-04-30 10:17:25', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (107, '198121042007102001', 'CITRA DEWI CAHYANTI,Amd Keb', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-12-07 09:39:29', '', 'valid', 'offline', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (108, 'K080', 'YUNI TRIYASTUTIK', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 13:26:23', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (109, 'K082', 'HERNAWAN PRASETYO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-05 10:34:19', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (110, 'K083', 'YUAS YUSTIARA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 13:26:03', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (111, 'K084', 'SISKAWATI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-07-03 15:43:31', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (112, 'K085', 'NOPITA SARI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-05 07:09:52', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (113, '68040147', 'SUNARYO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2021-12-29 16:44:28', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (114, 'K086', 'RINA NURIL LATIFAH', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-03-02 07:00:52', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (115, 'K087', 'FARIA INDAH SULISTYA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 13:21:59', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (116, 'K088', 'SULASTRI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 13:21:56', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (117, 'K091', 'INA ANDRIANI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-05 18:46:18', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (118, 'K092', 'RIA HANDAYANI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 07:20:31', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (119, 'K065', 'BUDIONO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 14:39:33', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (120, 'K066', 'LEDY PRASETYO S,Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-31 23:18:11', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (121, 'K067', 'CICIK DWI KUSUMA,Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 14:15:09', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (122, 'K069', 'CICIK ISTIANTI,Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-14 20:27:23', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (123, 'K070', 'ERNAWATI,Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-13 09:18:08', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (124, '72040375', 'TUNGGUL PURNAMA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-08-02 14:25:42', '', 'valid', 'online', 2, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (125, 'K071', 'YULI HARIYANTI,Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-12 17:33:13', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (126, 'K072', 'IRDA DWI S.,Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 08:40:54', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (127, 'K073', 'ISKA LESTARI,Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2021-05-05 15:10:54', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (128, 'K074', 'ESTI BUDHI AJENG,Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-11 13:36:45', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (129, 'K097', 'ANDIK PURWANTO, Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-04 07:33:18', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (130, 'K098', 'ENDAH MURNIATI, Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 16:15:31', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (131, 'K099', 'DARIYANI, Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-09-18 20:05:14', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (132, 'K100', 'RETNO WULANDARI, Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-05-09 08:25:58', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (133, 'K102', 'FAJAR KHARISMA, Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-05-31 12:57:08', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (134, 'K103', 'SRI ISMUNING, Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-07-26 06:57:58', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (135, '75050766', 'IRWAN RIFA\'I, SH', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 15:35:19', '', 'valid', 'online', 3, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (136, 'K104', 'FANI PUJI ASTUTI, Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-03-24 16:02:16', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (137, 'K106', 'DIAN ANGGARENI, Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-04-27 16:10:43', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (138, 'K107', 'FITRI NIA SARI, Amd Keb', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-10 07:24:20', '', 'valid', 'online', 3, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (139, 'K110', 'ALIYAH PADLIKA, Amd PK', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-09 15:46:56', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (140, 'K112', 'ISBANATUL KHOIRIYAH, Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2021-12-29 07:37:12', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (141, 'K113', 'AYUWULAN PANGESTUTI, Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-07-15 08:51:16', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (142, 'K116', 'ANDIK BIBIT CAHYONO, Amd KL', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-08-01 07:55:08', '', 'valid', 'offline', 3, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (143, 'K117', 'GIGIH EKO DIRMAWAN', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-02-08 07:19:54', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (145, 'K120', 'Tm. AGUS SATRIO NEGORO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-05-20 14:51:20', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (146, '81080502', 'LASMIDI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-08-04 21:30:57', 'spi', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (147, 'K123', 'LUGASWATI KARTIKASARI, Amd ', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2021-12-29 07:25:26', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (148, 'K124', 'ERNAWATI, Amd', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-24 16:30:55', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (149, 'K127', 'FITRIA NOFIASIH', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-02-14 12:54:19', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (150, 'K128', 'RIA KURNIAWATI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-12 14:10:18', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (151, 'K129', 'BINTI INDRAWARNI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-18 08:37:59', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (152, 'K130', 'YETI NOFITA ANGGRAENI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 15:34:43', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (153, 'K133', 'ANANG MALIKURAHMAN', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 15:08:46', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (154, 'K134', 'SUHARTONO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-24 07:47:31', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (155, 'K136', 'ERNAWATI, Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-03-02 08:04:26', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (156, 'K137', 'INDAH MAHANANI, Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 14:13:35', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (157, '62080269', 'WARMINTO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-04-27 16:10:43', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (158, 'K138', 'MEILIANA IRINAWATI, AMd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2021-12-28 15:26:20', '', 'valid', 'offline', 3, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (159, 'K140', 'DWIKA SUCI HARTANTI, AMd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-12 13:47:51', '', 'valid', 'online', 5, NULL, '', 1);
INSERT INTO `tb_users` VALUES (160, 'K141', 'ENI MARETNOWATI, AMd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-11 08:05:52', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (161, 'K142', 'DENI ROSITA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-04-27 16:10:43', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (162, 'K143', 'SANTHY NATALIA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 13:06:39', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (163, 'K146', 'AMIN MASRURAH', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-08-03 06:52:34', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (164, 'K147', 'SEPTA ERA CAKRAWATI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-07-12 16:42:19', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (165, 'K148', 'TINUK MUSTIKANINGTYAS, Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 16:27:07', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (166, 'K150', 'LUSI PRATIWI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-02-02 19:02:08', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (167, 'K152', 'NOVY DARMAWAN, Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-05-28 13:03:15', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (168, '80100882', 'IDRUS WIBOWO SANTOSO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-11 13:21:35', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (169, 'K154', 'HARI SURYA SETYA, Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-03-07 06:12:29', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (170, 'K155', 'RETA PUJI LESTARI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 16:02:39', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (171, 'K156', 'WAHYU PURWANTI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-04-25 14:02:49', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (172, 'K157', 'ANJARWATI, Amd', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-08-01 12:02:44', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (173, 'K159', 'SITA CHAJAR MARISA UMAMI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2021-12-28 15:26:20', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (174, 'K160', 'TAURIZA RESTIWAPATI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 12:45:52', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (175, 'K161', 'ANDRI SRI WAHYUNI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 17:01:47', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (176, 'K163', 'ELIZABETH MARIA AGUSTINA, Amd Keb', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 20:58:17', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (177, 'K165', 'AELINDA MEGA SARI, Amd Keb', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-25 20:45:50', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (178, 'K166', 'ADI PRASODJO, Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-10 11:25:28', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (179, '81080426', 'GIGIK TRI MUGIYO RAHARJO, S.H., M.H.', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2021-12-28 16:25:09', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (180, 'K167', 'ETIKA MAULASARI, Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-07-15 05:38:58', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (181, 'K171', 'KRISTINA DAMAYANTI, Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2021-12-30 16:22:28', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (182, 'K172', 'MIA PUSPITASARI, Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2021-12-29 07:34:15', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (183, 'K173', 'HESTY TRI RAHAYU, Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-02-21 12:14:33', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (184, 'K175', 'MOCHAMAD YEN RO\'IS', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 07:25:32', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (185, 'K178', 'IKA NURUL AINI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-03-10 16:26:01', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (186, 'K183', 'SYAFITRI CAROLINA, Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-04-28 07:50:08', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (187, 'K185', 'BINTARI, Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2021-12-29 09:47:58', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (188, 'K186', 'YOHAN EKO PRASETYO, Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-08 15:05:30', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (189, '63080079', 'DARSONO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-09-15 13:59:53', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (190, 'K187', 'RACHMAWATI YUWANA W., Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2021-12-29 06:43:05', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (191, 'K188', 'LILIK CHUSTIANI, Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-03-11 08:50:16', '', 'valid', 'online', 3, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (192, 'K189', 'SUSILOWATI, Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 22:34:20', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (193, 'K190', 'LINDA PRATIWI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-04-01 20:19:48', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (194, 'K191', 'KURNIAWATININGSIH', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-05 13:00:52', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (195, 'K193', 'SULISTYOWATI, Amd Far', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2021-02-04 15:40:54', '', 'valid', 'offline', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (196, 'K194', 'ELLA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-11 13:50:27', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (197, 'K195', 'DEDY KRISTANTO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 13:09:34', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (198, 'K196', 'NANDRA NURIL HIDAYAH, Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-08 18:53:44', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (199, 'K197', 'ISWAHYUNI MAYASARI, Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-13 14:24:51', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (200, '74060536', 'CATUR PUTRA PRABOWO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-10 11:49:55', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (201, 'K198', 'SITI NUR ASIYAH, Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-02-11 08:10:42', '', 'valid', 'online', 3, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (202, 'K199', 'ENI AGUSTINA, Amd Keb', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-10 08:51:19', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (203, 'K200', 'FRANSISCA ANITASARI, Amd Keb', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-10 07:26:04', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (204, 'K203', 'M. SAIPODIN', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-13 21:52:03', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (205, 'K204', 'MUHAMMAD LUTFI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-08-03 07:08:35', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (206, 'K205', 'MUJI UTAMI, Amd.Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 14:12:06', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (207, 'K207', 'RURUH SOPTIKA UJWALATI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 13:29:47', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (208, 'K209', 'SAPTA PRAVITA SARI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-31 18:09:59', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (209, 'K212', 'DWI AGUS INDRAWATI, Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 13:22:51', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (210, 'K213', 'TITA PUTRI INDAENI, Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-10 08:34:59', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (211, '84111274', 'YOGI RIA ASTRIA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-03 18:08:34', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (212, 'K214', 'BUDI ARI NUGROHO, Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-09 20:48:07', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (213, 'K216', 'RINI JAYANTI, Amd', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-04-25 08:47:11', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (214, 'K217', 'SITI CHOLIFAH', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 16:53:35', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (215, 'K219', 'ANI YUNARNI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-07-12 06:42:05', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (216, 'K221', 'DIAN YUNIARISTA AGNES, Amd Far', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-04-18 11:55:24', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (217, 'K222', 'DEWI MERIANA, Amd PK', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 13:16:19', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (218, 'K223', 'PUJIATI, Amd PK', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 12:22:23', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (219, 'K226', 'AYU GALUH TRIWAHYUNI, Amd Keb', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-10 08:18:33', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (220, 'K227', 'RAMA CHARISMA ', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-02-10 22:12:03', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (221, 'K228', 'TRI TUNGGAL DEWI, Amd Far', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-09 18:32:54', '', 'valid', 'online', 3, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (222, '67110448', 'dr. MUHAMMAD MAS\'UDI, Sp.S', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-04-27 16:10:43', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (223, '81080794', 'LATO\'IF', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-04-27 16:10:43', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (224, 'K229', 'NOVITA RAHMAWATI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-04-27 16:10:43', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (225, 'K230', 'RUDY PURNOMO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-18 06:47:26', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (226, 'K231', 'FITRIA IKA LIANA WATI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-05 11:10:52', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (227, 'K232', 'DESI MULYOWATI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-05 12:53:29', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (228, 'K233', 'DHINA KURNIASARI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-09 13:03:18', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (229, 'K234', 'VINA MIDA FATIMAH', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-05 11:12:44', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (230, 'K236', 'NUNUNG PURWANTI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 14:44:11', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (231, 'K242', 'RIA DWI PUSPITASARI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-03-26 09:14:35', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (232, 'K248', 'NGUDI ANNING WIBOWO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-04-27 06:20:12', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (233, 'K249', 'DIAN KURNIAWATI, Amd.Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-02-18 13:50:56', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (234, '72090429', 'HENI PURWANTO, S.H.', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-12 07:30:48', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (235, 'K250', 'SYVVAUNSA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-04-25 14:49:19', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (236, 'K251', 'ERLINA EKA WAHYUNI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-21 13:28:16', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (237, 'K254', 'SISWI NIEKA, Amd.Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-04-01 13:49:17', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (238, 'K255', 'SETIYO WULANDARI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-10 08:17:15', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (239, 'K257', 'DANANG EKA WAHYU PURNAMA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 13:38:06', '', 'valid', 'online', 2, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (240, 'K259', 'PUTRI YUNI ASTUTIK', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2021-03-22 14:58:44', '', 'valid', 'offline', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (241, 'K262', 'NURUL RAHAYU', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 16:48:05', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (242, 'K263', 'SHASKIA ANGKEU NOVITA SHELVIA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-11-02 14:07:55', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (243, 'K264', 'BAMBANG BUDIANTO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 07:10:42', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (244, 'K265', 'KRISTIYAN ADI KUSUMA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2021-12-29 06:57:50', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (245, '85100791', 'OKTAFIANUS HERU', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-20 07:36:40', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (246, 'K266', 'SUMITO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-09 07:11:02', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (247, 'K267', 'ERFAN HERI SETYAWAN', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-09 07:16:09', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (248, 'K268', 'FIRMAN ARIYANTO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 11:28:18', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (249, 'K270', 'PUTRI AYU ARIANTI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-07-27 21:22:28', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (250, 'K271', 'DARBIANTI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 07:18:48', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (251, 'K272', 'YAYUK DIN WAHYUNI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 08:10:57', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (252, 'K274', 'SONDHI BAGUS PUTRANTO, Amd.Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-17 13:26:25', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (253, 'K275', 'LUSIANA RENI W., Amd.Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 15:30:19', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (254, 'K281', 'ATI MAULANI, Amd.Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-12 07:24:16', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (255, 'K284', 'EKO NOVIANTO, A.Md.Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2021-12-29 07:15:36', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (256, '196506071998031003', 'Dr. MARTIN YUDI ADENANTO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-04-27 16:10:43', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (257, 'K288', 'BADRUS SOLEH, A.Md.Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-21 11:49:50', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (258, 'K289', 'SELPRI BOHAR, A.Md.Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-08 15:08:20', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (259, 'K290', 'NANING ARIANTI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 18:30:02', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (260, 'K291', 'AGUNG RIDWAN,A.Md.Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-04-28 09:02:33', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (261, 'K292', 'JOHAN MZ A SALIM M.,A.Md.Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 15:47:40', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (262, 'K294', 'MOH. GUNTUR S.,A.Md.Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-10 11:58:49', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (263, 'K297', 'ANIKA KOSITASARI,A.Md.Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 08:23:38', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (264, 'K298', 'DESI EMA SULISTYOWATI,A.Md.Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-11 15:15:41', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (265, 'K299', 'AGUSTINA WULANDARI,A.Md.Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-10 08:02:51', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (266, 'K300', 'MALIS HIDAYAH,A.Md.Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-11-05 14:21:44', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (267, '196705101999031001', 'Dr. WAHID', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-10 19:36:24', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (268, 'K303', 'TYAS LISAYANTI,A.Md.Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-14 13:13:54', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (269, 'K304', 'PRAYOGA KURNIAWAN,A.Md.Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-03-14 11:50:37', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (270, 'K308', 'IKA NURDIANA,A.Md.Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-04-27 16:10:43', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (271, 'K309', 'FERY DINI YUNITA,A.Md.Far', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-03-28 12:42:38', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (272, 'D002', 'dr. ALITA DEWI PERCUNDA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-04-27 16:10:43', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (273, 'K310', 'DINNI,A.Md.Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-12 20:17:01', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (274, 'K312', 'ARIF SETIA NUGROHO,A.Md.Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-10-22 11:11:52', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (275, 'K313', 'ULINUHA,A.Md.Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 08:43:34', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (276, 'K314', 'MEILIA IKA SARI,A.Md.Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2021-12-28 16:16:45', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (277, 'K317', 'SIGIT ARYO PRIHATMOKO, Amd.Rad', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 15:05:24', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (278, '196612311999032009', 'Dr. DWI WINARNI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 12:46:16', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (279, 'K318', 'FRENDYX JUANG KUSUMA WIJAYA, Amd.Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-03-10 13:57:08', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (280, 'K319', 'DIARIS RACHMAWATI, Amd.Keb', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-10 08:49:16', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (281, 'K320', 'NOVITA SARI, Amd.Keb', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2021-12-29 07:57:08', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (282, 'K321', 'DAVID SEPTIAN A.,A.Md.Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-04-27 16:10:43', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (283, 'K322', 'VINSA PRADINA,A.Md.Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-26 13:27:32', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (284, '198710012020122002', 'OKTARIA WULAN SAKTI,A.Md.Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-02-08 09:17:34', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (285, 'K327', 'WORONITI HANGESTI,A.Md.Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2021-12-29 14:41:38', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (286, 'K328', 'ITA PURNAMASARI,A.Md.Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-04-27 16:10:43', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (287, 'K330', 'RAKHMA HIDAYANTI, Amd.Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-02-02 17:12:00', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (288, 'K277', 'SITI YULAIKAH', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-07 08:53:12', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (289, '196901041991031003', 'ERYAN PRAMONO,S Sos', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-08-04 21:30:41', 'spi', 'valid', 'online', 2, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (290, 'K279', 'HARIADI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-07-10 08:09:04', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (291, 'K331', 'ERIC TATAG H., Amd.Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-04-17 13:19:12', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (292, 'K333', 'ERFAN ARIEF R., Amd.Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-04-27 16:10:43', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (293, 'K334', 'TRIA PRAMITA SARI, Amd.Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-03-14 13:55:04', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (294, 'K336', 'ERLINAWATI, Amd.Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-11 13:49:15', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (295, 'K338', 'IRMA DEWI LISTYORINI, Amd.Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-02-07 20:47:14', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (296, 'K341', 'SOFIANI VIRA FADILA, Amd.Far', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-11 21:31:17', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (297, 'K344', 'MOH. LATIF', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-08 05:39:13', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (298, 'K345', 'RINI, Amd.AK', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-21 06:55:06', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (299, 'K350', 'EDI PURWARSANTO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-03-10 15:46:31', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (300, '197412072006042001', 'dr. TUTIK PURWANTI, Sp.F', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2021-12-28 15:26:20', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (301, 'K351', 'BAGUS KUSUMA RAHMAT', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-08 13:19:54', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (302, 'K352', 'ASAD SYAMSUL ARIFIN', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-08 10:54:39', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (303, 'K354', 'AWAL DINA FEBRI YUSUFI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-07-28 07:04:31', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (304, 'K355', 'ANIES RASMA YENI N.', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-05-13 13:02:45', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (305, 'K356', 'DWI INDRIATI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 14:34:42', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (306, 'K360', 'MEGA DESIANA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-04-17 06:59:16', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (307, 'K361', 'ARINDA DIWYA CITRA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-02-17 14:05:02', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (308, 'K362', 'SUCI RAHAYU', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 15:28:12', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (309, 'K363', 'EVI NOVIA SARI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-03-10 13:58:05', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (310, 'K365', 'MOCH. ABDAN PEBRIANTO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 13:15:53', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (311, '196302201988032005', 'SRI PATWINARYATI,SE', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-09-18 13:32:53', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (312, 'K366', 'LINDA PATMAWATI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-04-13 08:08:44', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (313, 'K367', 'DESIYANA PUSPITASARI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 15:31:30', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (314, 'k811', 'ANGGI OKTAFIANA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 12:06:52', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (315, 'K371', 'RITA EMILIA NAFI\'AH', 'c291ef84830086f9d09fede3a55fcd39', 'null', '2020-04-29 14:05:53', '', 'valid', 'offline', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (316, 'K372', 'AULLA RAHMAWATI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-13 14:17:39', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (317, 'K374', 'RETNO MAHARANI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-04-27 16:10:43', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (318, 'K375', 'ANITA DEWI TRISNANI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 12:32:15', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (319, 'K378', 'ISMU BUDIHARDJO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 09:44:21', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (320, 'K379', 'M. CHOIRUL ANWAR', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-04-27 16:10:43', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (321, 'K380', 'CRYSTALIA AYU CHANDRA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-08 21:24:40', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (322, '196306081989032004', 'RINI SUSILANINGSIH, B.sc', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-04-27 16:10:43', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (323, 'K381', 'TRI RIZKY RAHMAN', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-04-26 09:23:01', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (324, 'K382', 'DIDIK HARI PURNOMO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 15:09:42', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (325, 'K383', 'AYU NIRMAWATI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-04-10 06:46:38', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (326, 'K384', 'RIA NATALINA BUDIARI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 14:15:16', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (327, 'K387', 'NURRAHMAN DWI SAPUTRO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2021-12-30 20:08:49', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (328, 'K388', 'MAYRIES MADONA SUSANTO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-11 08:54:58', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (329, 'K389', 'BAGAS DWI CAHYA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-28 14:57:33', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (330, 'K391', 'RESTECIA MAHARANI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-08 08:23:39', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (331, 'K392', 'LENY BUDI JAYANTI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2021-12-30 07:09:59', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (332, 'K393', 'LARAS NOVI SETYANINGSIH', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 16:36:45', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (333, '69070506', 'Drs. PANCAMA PUTRA HADI W., Apt.,MARS', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-04-27 16:10:43', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (334, '197406252006042004', 'Dr. NURUL KHOMARI EKO W', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-05 11:40:05', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (335, 'K394', 'AGNES B. SARI DEWI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-31 20:31:33', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (336, 'K395', 'YENI RINDI ANTIKA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-10 08:54:37', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (337, 'K396', 'DYAH ANTIK R.', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-10 07:27:21', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (338, 'K399', 'YULIA AYU LUGAS SAPUTRI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-10 10:42:39', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (339, 'K401', 'DEVI NORMA YULIANI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-04-27 16:10:43', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (340, 'K403', 'BEA OZAL LATIFA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-28 20:08:24', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (341, 'K769', 'NAFA ZUNAIDAH FAHMA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-22 22:22:25', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (342, 'K405', 'MUHAMAD IKHWANUDIN', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2021-12-28 17:15:56', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (343, 'K406', 'DEDI SETIAWAN', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-12 07:49:32', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (344, 'K407', 'EKO DWI SURONO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-08 11:43:59', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (345, '198207072008122001', 'dr. HUSNUL KHOTIMAH', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 13:18:23', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (346, 'K408', 'I WAYAN EKA YULIAWAN', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-08 05:48:16', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (347, 'K409', 'DWI SULTAN', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-03-12 15:19:04', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (348, 'K411', 'ARIZAL CAHYONO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 14:03:32', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (349, 'K412', 'QURROTA A\'YUNIN, S.Farm, Apt', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-04-27 16:10:43', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (350, 'K413', 'ARLIN PREVIA PIPIT PURNAMASARI, S.Farm, Apt', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 13:37:04', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (351, 'K414', 'RETNO SETYORINI, Amd.', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-21 06:58:41', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (352, 'K415', 'SHOLEKAH', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 13:22:10', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (353, 'K416', 'LILIK PURWINDA NINGRUM', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-05-19 11:35:06', '', 'valid', 'offline', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (354, 'K417', 'TRIANI LATIFAH', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-21 07:10:55', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (355, 'K418', 'VINA ARIYANTI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 12:50:14', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (356, '196611161989032002', 'ENDANG SULISTYANINGSIH', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-04-27 16:10:43', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (357, 'K419', 'EVA YUNITA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 12:41:41', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (358, 'K420', 'INTAN TRIWULANDARI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 15:29:06', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (359, 'K421', 'SRI HANDAYANI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-22 12:39:09', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (360, 'K423', 'BASUKI WIJAYANTO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-12 10:59:41', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (361, 'K424', 'FREDDY WIYANTONO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-08 19:22:41', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (362, 'K425', 'MOCHAMMAD ABDUL AZIZ ABROHAM', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 14:11:36', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (363, 'K432', 'SUDIONO, A.Md.Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 13:38:54', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (364, 'K434', 'NOVI AGUSTIN', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2021-12-29 13:38:00', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (365, 'K435', 'FIFIN PUJI LESTARI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 15:24:23', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (366, 'K437', 'LUKANTI DWI S.', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-11 07:10:16', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (367, '196208021989032001', 'EMI PUDJIHARTI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-04-27 16:10:43', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (368, 'K439', 'ARI LIANA SARASWATI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-23 20:04:28', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (369, 'K440', 'M. IMAM SAFI\'I', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 13:37:26', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (370, 'K442', 'ANDIKA WIBISONO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 17:06:41', '', '', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (371, 'K443', 'EVA MEISARI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-14 16:15:38', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (372, 'K444', 'DIAH SURYANINGTYAS', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 19:29:08', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (373, 'K445', 'ARIF RIANTO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 09:16:54', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (374, 'K446', 'ANIS PURWANI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-19 20:15:48', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (375, 'K449', 'URIK IRAWATI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2021-12-29 07:15:35', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (376, 'K450', 'AHMAD PRASETYO ADI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2021-12-29 07:10:20', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (377, 'K451', 'YOGA DANANG SEPTIAN', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-26 04:59:31', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (378, '197108041996032002', 'IDA SULISTYANI, S.Kep.,NS', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 14:26:15', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (379, 'K452', 'VINA SEPTI WULANDARI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-21 07:32:49', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (380, 'K453', 'WAHYU IRAWAN', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-08 10:31:35', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (381, 'K454', 'SIGIT PAMUNGKAS', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-14 12:59:19', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (382, 'K455', 'DWI MEITA PUJIASTUTI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-02-07 20:35:20', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (383, 'K456', 'RONY SETYAWAN', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-08 22:05:00', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (384, '199111272020122001', 'PUTRI ARUM SARI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-02-08 09:13:17', '', 'valid', 'online', 2, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (385, 'K459', 'RATIH INDRA DRIVIANA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-10 10:14:16', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (386, 'D005', 'dr. MARIA FRANSIESKA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-04-27 16:10:43', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (387, 'K460', 'DONI PRAYOGI, S.Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2021-06-22 14:04:35', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (388, 'K461', 'ARI WIDJANARKO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-03-26 07:58:05', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (389, '197209061996032001', 'WETI LUSIANA,Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-11 15:23:25', '', 'valid', 'online', 3, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (390, 'K465', 'JEUNIEB YUDHA WAHYUNINGTYAS', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-07-29 13:15:58', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (391, 'K468', 'VIVI NUPITASARI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 14:55:55', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (392, 'K469', 'INA DWI RIYANTI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-02-22 13:07:51', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (393, 'K470', 'JEFRI FERLAN DANI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-03-17 08:37:40', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (394, 'K471', 'IKA LIYA PRASETYANI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-04-27 16:10:43', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (395, 'K472', 'AGUSTIN NOFA REMA ANGGA W.', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-10-27 14:50:38', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (396, 'K473', 'FERRY ANDY KURNIAWAN', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-08 13:51:11', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (397, 'K476', 'IQBAL RAUF SAIMIMA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-15 06:52:02', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (398, '199103172020122001', 'PUTRI PERMATA SARI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-02-08 09:17:22', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (399, 'K478', 'RISKA AWALUYUDHA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-13 14:18:40', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (400, '197007241992031002', 'DANTO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-03-11 13:17:32', '', 'valid', 'offline', 3, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (401, 'K481', 'FITA ANDRI MARYUNI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-11 06:56:26', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (402, 'K482', 'ARUMSARI RAHAYU', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2021-12-31 06:36:59', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (403, 'K484', 'IRMA ARYANI OCTAVIANI, Amd.Gz', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 15:36:18', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (404, 'K486', 'NIKMAH ZUHRIYAH', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-05-09 22:55:58', '', 'valid', 'offline', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (405, 'K488', 'APRILIA DWI ASTUTI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-02-07 16:49:35', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (406, 'K489', 'MEILINDA SULISSETIANI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-24 13:02:04', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (407, 'K490', 'SISKA YULIA DEWI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-03-16 06:59:48', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (408, 'K492', 'YULI PURNAMASARI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-04-14 22:10:31', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (409, 'K495', 'KHARIR LUKLU\'UL HIDAYATI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-08 04:59:49', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (410, 'K496', 'IKA MONITA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-11-28 09:56:56', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (411, '197310081999032003', 'SRI ASTUTI ,S.Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 15:22:35', '', 'valid', 'online', 3, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (412, 'K497', 'MUHRISATUL KHOIRIYAH', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 13:24:17', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (413, 'K499', 'ELLA YUNIANTI HANIFA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 13:56:09', '', 'valid', 'offline', 3, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (414, 'K501', 'FEBRI WIDIYANTO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 20:56:15', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (415, 'K503', 'TIYAN DWI ARIWINDIYANINGRUM', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-03-09 14:40:21', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (416, 'K504', 'ZULKARNAIN IMAM ROSADI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-04-27 16:10:43', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (417, 'K505', 'BAMBANG HARIANTO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-08 06:35:00', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (418, 'K506', 'ARIFIN', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 20:52:59', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (419, 'K507', 'RETNA PUSPITASARI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-04-27 16:10:43', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (420, 'K508', 'ARIS WIDIANTO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-10 13:30:33', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (421, 'K509', 'MOHAMAD YAMIN', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2021-12-29 08:16:20', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (422, '196408251989032006', 'RASIMAH', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-03-09 13:48:30', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (423, 'K512', 'RUCI UTARIANI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-07-15 13:29:23', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (424, 'K514', 'FITRI APRILIA SARI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 15:29:26', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (425, 'K515', 'NUNUK KRISTYARI, Amd', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-02-10 06:57:48', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (426, 'K516', 'ENNIKEN SEPTI FAUZI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-02-04 20:24:06', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (427, 'K518', 'AKHIRUL SEPTIANIS', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-16 20:01:11', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (428, 'K520', 'DELA ANDRIANI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 14:39:57', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (429, 'K521', 'LINGGA TRISNANINGRUM', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-08-04 21:24:18', 'komite_etik', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (430, 'K522', 'MOHAMMAD SOFYAN EFENDI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-03-30 07:22:58', '', 'valid', 'offline', 2, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (431, 'K523', 'SURYA ISAPUTRA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-14 10:21:41', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (432, 'K524', 'RATNA NINGTYAS', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 15:40:36', '', 'valid', 'offline', 2, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (433, '196712092006042003', 'HERNAWATI, S.Kep.Ns', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 13:27:11', '', 'valid', 'online', 3, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (434, 'K525', 'TITIK KUSWANTI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-15 20:32:07', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (435, 'K526', 'EKO STYONO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 13:27:13', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (436, 'K527', 'ARFA SETYAWAN', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 10:05:56', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (437, 'D008', 'dr. ERIC AGUSTINUS KRISTANTO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-04-27 16:10:43', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (438, 'K528', 'MOH. NURHADI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-14 07:11:32', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (439, 'K529', 'WAHYUDI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-02-02 10:32:46', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (440, 'K530', 'DIANA SAFITRI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 15:42:52', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (441, 'K532', 'DEWI RAHAYUNINGSIH', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-11-13 10:31:02', '', 'valid', 'offline', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (442, 'K533', 'FUAD HASANAH', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-17 11:14:22', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (443, 'K535', 'KARLINA APRILIANING AYU', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-06 15:47:14', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (444, 'K119', 'ALFIAN RIFANI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 11:07:22', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (445, '198003152006042002', 'DIAN MARTASARI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 12:08:18', '', 'valid', 'offline', 3, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (446, 'K537', 'ESTI WURI HANDAYANI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-26 12:57:00', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (447, 'K538', 'APRILLYA NANIK SUGIARTI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 12:58:21', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (448, 'K539', 'NGUDI RAHAYUNING REZEKI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 13:04:05', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (449, 'K540', 'ARIS GILANG PRATIWI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2021-12-30 17:25:54', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (450, 'K541', 'UMI YULIANA MASRUROH', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-03-27 11:23:47', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (451, 'K542', 'MOH. RUDIANTO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 15:26:28', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (452, 'K543', 'SUPRIYADI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-13 07:47:55', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (453, 'K544', 'EKO HERMAWANTO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-12 22:53:18', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (454, 'K545', 'GESI YOLANDA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-11-02 14:36:25', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (455, 'K546', 'KIKI MAWARTI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 12:33:47', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (456, '196805241992012001', 'SRI UTARI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-04-27 16:10:43', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (457, 'K547', 'RIZKY NUR WAHYU DWI RATNANTO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-02-08 12:59:34', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (458, 'K548', 'MOCHAMMAD ALIEF RONALD H.', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 17:25:41', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (459, 'K549', 'EKO BUDI SANTOSO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 14:16:05', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (460, 'K550', 'IKA SUCIATI SUBEKTI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 17:19:12', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (461, 'K551', 'DITA RAHAYU', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2021-12-31 14:04:56', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (462, 'K404', 'ANDI SATRIYO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-27 13:02:32', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (463, 'K553', 'MEINAR DWI ANGGRAENI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 16:19:20', '', 'valid', 'online', 3, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (464, 'K554', 'SISKA SISPALASARI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-03-04 16:01:12', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (465, 'K555', 'LAELATUL BINTI NURJANAH', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-21 20:23:43', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (466, 'K556', 'LELI NUR HIDAYATI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-08 07:10:04', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (467, '197106081999031003', 'KURNIAWAN AGUNG P,Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-11 10:09:24', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (468, 'K558', 'MAULIDA WULANSARI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-14 12:46:15', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (469, 'K561', 'KAYETANUS ALDY PRATAMA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-08-03 07:03:37', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (470, 'K562', 'FELIANA INDRI TYASTUTI NIKASALJU', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-03-24 10:29:30', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (471, 'K563', 'DYAH ERA NATALIA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-16 13:36:07', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (472, 'K565', 'RIZKA SONEX PRIAMBODO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2021-12-29 12:58:28', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (473, 'K566', 'LEA AGNES MERDIKA PUTRI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-03-12 06:58:09', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (474, 'K567', 'RATIH PRIHANDAYANI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-04-27 16:10:43', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (475, 'K568', 'DEVINTA NURLAILA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-10 07:58:33', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (476, 'K569', 'NURUL TRI HARYATI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-05-11 13:59:21', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (477, 'K570', 'YOVIE SISCHASARI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-04-27 16:10:43', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (478, '197505211999032002', 'SUSANA DWI  ASTUTI,Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 17:48:07', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (479, 'K571', 'ADITYA MAULANA PUTRA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-17 06:58:28', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (480, 'K572', 'LAILY RACHMAWATI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-12 07:15:57', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (481, 'K573', 'VINITA YOSA FERDIANA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-07-28 07:36:02', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (482, 'K576', 'MEI AYUNINGTIA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 13:12:16', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (483, 'K577', 'SUGIANTO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-02-21 16:53:19', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (484, 'K578', 'MUJIANTO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 14:01:31', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (485, 'K579', 'MOCHAMAD EKO DWI PRASETYO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 13:35:46', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (486, 'K580', 'PERDHANA ADHI PRASETYO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 08:44:06', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (487, 'K581', 'RIZKY PUTRA NARAM PRATAMA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-08-04 22:48:32', 'pegawai', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (488, 'K582', 'BAGUS KARUNIA RIFAI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 14:15:14', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (489, '234234234234', 'dfsfsdf', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-04-27 16:10:43', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (490, 'K583', 'SINTA SONYA PUSPITA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 15:20:14', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (491, 'K586', 'SEPTIA RISADYLA, S.Farm., Apt', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 13:23:33', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (492, 'K587', 'RIZMA SHALIKHAH', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-03 16:53:04', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (493, 'K588', 'DANY ALFIAN PUTRA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-04-27 16:10:43', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (494, 'K589', 'NOVI ANDRIANI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2021-12-29 07:45:26', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (495, 'K590', 'EKA LOVITA SARI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 14:33:05', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (496, 'K591', 'DANI EKA ASTUTIK', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 13:01:20', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (497, 'K592', 'RINDI PUSPINGKANSARI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 12:55:46', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (498, 'K593', 'NIKMATUROHMAH', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-10-18 10:31:13', '', 'valid', 'offline', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (499, 'K594', 'DIAN NOFITA SARI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-30 11:08:49', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (500, '197503241999032001', 'RETNO INDRIONOWATI,Amd  Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 14:06:11', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (501, 'K595', 'PRAMITA WARDANI WIJAYANTI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-04-27 16:10:43', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (502, 'K596', 'GABY NANDIA RATNA MALIK', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-05-20 06:59:31', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (503, 'K597', 'NURUL JANAH', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-04-06 22:46:11', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (504, 'K598', 'YUGE CHRYSTINA SOESANTO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-25 20:26:42', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (506, 'K600', 'NOVITATU NINGTYAS', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-27 13:59:33', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (507, 'K602', 'NUNUK WIJAYANTI, S.Farm, Apt', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-05-06 07:10:12', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (508, 'K603', 'RIMA MELLINA, S.Farm, Apt', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 13:21:24', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (509, 'K604', 'FITRIA WAHYUNING WULAN, M.Farm.Klin,Apt', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-19 17:27:32', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (510, 'K605', 'SUCI RATNA SARI, S.Farm., Apt', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 15:24:47', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (511, '197505021999032004', 'SUPARMI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-19 07:59:52', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (512, 'K606', 'ERNI WAHYUNINGSIH', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-22 08:15:38', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (513, 'K607', 'DENI PRASETYO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-21 11:29:13', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (514, 'K608', 'EKO PURNOMO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 13:15:19', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (515, 'K609', 'AGUS DWI CAHYANA PUTRA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-05-24 14:14:53', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (516, 'K610', 'EKO PRASTYO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 20:04:11', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (517, 'K611', 'YOSEPHA DHARMA SUNU', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 13:15:49', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (518, 'K612', 'TITO BAHARI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 12:40:46', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (519, 'K613', 'FISCHAL DWI RIZAL SASONGKO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-04-03 19:54:23', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (520, 'K614', 'ARIF FITRIANTO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-11-02 14:40:31', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (521, 'K615', 'ROSYAD ARDIYANSYAH', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-10 21:00:28', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (522, '197606152005012005', 'DWI ASTUTI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-10 07:27:53', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (523, 'K616', 'NURMAF ATU', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 20:37:08', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (524, 'K617', 'DENILA SULIS VIANA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-04-26 20:35:44', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (525, 'K618', 'RISA PUSPITASARI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-13 07:05:15', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (526, 'K619', 'FRISCA ARDIYANTI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-09-25 11:16:58', '', 'valid', 'offline', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (527, 'K620', 'LULUS NURINDAH SARI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-08 18:32:32', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (528, 'K622', 'WAHYU IKA YULIYANTI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2021-12-30 18:21:16', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (529, 'K623', 'ARDINA SITI YULIANTI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-11-05 14:27:02', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (530, 'K624', 'FIJANATIN HEMA SISWANTO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-02-18 14:23:44', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (531, 'K625', 'ATIKAH YULIASARI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 15:41:51', '', 'valid', 'offline', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (532, 'K626', 'DINDA CITRA MAHARDIKA RAHAYU', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-02-06 08:20:59', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (533, '197407182002122002', 'NETTY SUSIYANAH', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-21 07:10:50', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (534, 'K627', 'YUNISTA MEGA PUTRI PRATAMA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2021-12-28 15:26:22', '', 'valid', 'offline', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (535, 'K630', 'TANTRI PRATIWI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 14:53:40', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (536, 'K631', 'ENDAH WULANSARI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-12 06:44:18', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (537, 'K633', 'DIANA BUDIARTI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-03-14 12:47:01', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (538, 'K634', 'NANANG AGUS CAHYONO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-08 06:14:07', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (539, 'K635', 'EVA MARIFATUL BIDAYAH', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2021-12-29 08:08:25', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (540, 'K636', 'YANIK DIAN ARYANI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-04-27 16:10:43', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (541, 'K637', 'AZIZAH HALIIM FADLI TAMALA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-03-25 13:46:44', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (542, 'K638', 'DEFIANA CIKAL QURRATA AYUN', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-04-27 16:10:43', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (543, 'K639', 'RIO BAYU ANGGI PRATAMA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-04-27 16:10:43', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (544, '197102082007011005', 'CHOIRUL ANNGAM,Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 12:33:45', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (545, 'K640', 'YUNI TRISTIAN CAHYANI EKA PUTRI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-05-10 09:11:21', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (546, 'K641', 'MIFTAKHUR ROIFAH', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-04-27 16:10:43', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (547, 'K643', 'VAN DAME', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-03-07 13:14:13', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (548, 'K644', 'SOFIA FEBRYANTI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 13:47:07', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (549, 'K645', 'WATI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-23 13:40:31', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (550, 'K646', 'YUSHEF REDY HARNOWO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-11-02 14:13:04', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (551, 'K647', 'BAGAS SWASONO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-13 13:39:06', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (552, 'K649', 'DWI PRASETYO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-04-19 03:44:36', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (553, 'K650', 'DIAN BUDIYANTO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 14:47:36', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (554, 'K651', 'DADAN PANCAR KATULISTIWA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-08-03 07:03:17', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (555, '67040502', 'dr. ANDITYO SUMBARWOTO, Sp.An', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-04-27 16:10:43', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (556, '196812202006041007', 'SUBAKAT, Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 13:32:12', '', 'valid', 'online', 3, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (557, 'K652', 'AGUNG SETIAWAN', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-03-08 08:28:00', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (558, 'K653', 'INDAH DWI CAHYANTI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-07-18 08:37:51', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (559, 'K654', 'HEVI ALVIONI HARSONO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-20 12:47:26', '', 'valid', 'offline', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (560, 'K655', 'PUTRI WINDA ARUM SARI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-25 19:14:30', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (561, 'K656', 'ARMEYNITA CAHYANI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-04-27 16:10:43', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (562, 'K658', 'RADEA AUDRIYANI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 05:12:58', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (563, 'K659', 'FENI ARIYANI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-02-18 14:23:52', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (564, 'K660', 'FANDY DWI AGSUMA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-12-04 10:41:39', '', 'valid', 'offline', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (565, 'K661', 'ARI SANDI IRAWANTI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 07:18:28', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (566, 'K662', 'NAZYLIA ADYARADZAN BYLLIANI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-05 12:14:06', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (567, '197203222006041006', 'AWIM MAHFUZHI,Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 13:17:47', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (568, 'K663', 'MELATI PUSPITANINGRUM', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-04-27 16:10:43', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (569, 'K664', 'AGUNG RIO KASIHA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 07:20:17', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (570, 'K665', 'EVA NUR ANITA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 15:38:11', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (571, 'K666', 'WILDAN ANWAR ADI WIBOWO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-07-25 13:54:04', '', 'valid', 'online', 2, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (572, 'D012', 'dr. RIZKI TEGUH DWI SETIAWAN', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-04-27 16:10:43', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (573, 'D013', 'dr. BRENDA ERVISTYA PERTIWI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-04-27 16:10:43', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (574, 'K667', 'DWI HARTANTI, Amd.Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2021-12-30 19:54:27', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (575, 'K668', 'RENI ESTI PANGESTU', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-04-27 16:10:43', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (576, 'K669', 'LULUK LUSIANA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-25 06:35:33', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (577, 'K672', 'EVA REZA EKAWATI,Amd.Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-04-27 16:10:43', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (578, '196810081998031007', 'SUROTO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-08-03 07:04:03', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (579, 'K674', 'IRIANTI SETYA WIDYANINGRUM', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-04-27 16:10:43', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (580, 'K675', 'SATRIO ALFI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-10 08:33:17', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (581, 'K676', 'EQY BAGUS LESTARY', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-03-10 14:01:57', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (582, 'K677', 'ANITA HESI PURNAMASARI, Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-09-24 08:55:53', '', 'valid', 'offline', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (583, 'K678', 'ANA PRIHATIN', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-10 08:15:49', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (584, 'K679', 'ERISDAWATI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-12 19:37:46', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (585, 'K680', 'CATUR RINEKSO WULAN', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-04-27 16:10:43', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (586, 'K682', 'YEYEN SRI MARTIANI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-05-15 07:11:18', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (587, 'K683', 'YUNIA TRI PUSPITASARI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 13:17:10', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (588, 'K684', 'YUDIA SUSILAWATI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 13:12:04', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (589, '197606062005011013', 'ARIF SETYAWAN, Amd', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-03-29 15:25:37', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (590, 'K685', 'CONNY NOVIA NAYANTIKA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 13:27:49', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (591, 'K686', 'ULINNUHA AINUL FITHROH', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-10 08:52:47', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (592, 'K687', 'MADE KARINA PADMA DEWI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-20 13:37:25', '', 'valid', 'offline', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (593, 'K688', 'ADITYA SURYA HARTANTI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-04-27 16:10:43', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (594, 'D014', 'dr. AZMY AZZA RAHMITA WINDYA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2021-04-21 14:41:23', '', 'valid', 'offline', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (595, 'K690', 'DEVILIA MEGAWATI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 16:39:24', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (596, 'K691', 'NUR WACHIDATURRUMIATI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-28 22:28:05', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (597, 'K692', 'GURINDA PUTRA BAYU ULANA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-25 07:16:53', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (598, 'K693', 'PRANABELLA FATIKAHUZA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-12 07:17:33', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (599, 'K694', 'SHELLY WIAND OCTAVIANTI VISKARANIE', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-03-14 12:14:00', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (600, '196711072007012004', 'ULIN NUHA, S.Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 12:21:15', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (601, 'K695', 'NURMA PRIYATIKA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-12 07:17:11', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (602, 'K696', 'SILVIA DEVIS ILVIONITA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-11 20:02:19', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (603, 'K697', 'SORAYA INDAH PRATIWI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-10 08:20:55', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (604, 'K698', 'NOVIA BRILLIANTI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-09-16 10:43:01', '', 'valid', 'offline', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (605, 'K699', 'HARDIAN WULANSARI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-04 19:02:01', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (606, 'K700', 'SAFIRA AULIA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-05-27 14:06:40', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (607, 'K701', 'FAJAR NUGROHO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 16:26:21', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (608, 'K702', 'RICO NUR ROHMAN', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-08 13:37:30', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (609, 'K703', 'M. SYAHRUL MUNIR', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2021-12-29 06:47:05', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (610, 'K704', 'MOH. RISTA PURNOMO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 16:18:54', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (611, '197612132007012002', 'DESHI ANALIA,S.Kep.Ns', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-07-18 08:33:39', '', 'valid', 'online', 3, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (612, 'K705', 'AUWALUL KHUSNI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-05-20 18:59:21', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (613, 'K706', 'ANGGI WASKITO KUNCORO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 06:58:40', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (614, 'K707', 'ADINDA BAGUS KRISTANTO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-10 07:18:27', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (615, 'K708', 'RIZQAL KHAFIDO RAHMAN', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-04-08 07:23:00', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (616, 'K709', 'IMAM FATHONI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-04-27 16:10:43', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (617, 'K710', 'ALFA WIDARTOYO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 15:04:19', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (618, 'K711', 'HENDRA PRASETYA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 15:23:48', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (619, 'K712', 'ANINDYA CARIMA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-04-27 16:10:43', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (620, 'D016', 'drg. SETIAN FITRI SAYEKTI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-04-27 16:10:43', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (621, '197704142007011003', 'CAHYO SATRIYO WWK, S.Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-11 10:27:01', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (622, 'K714', 'GISCA FEBRIANI PUTRI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2021-12-28 17:24:00', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (623, 'K715', 'AGUNG SAHUDA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 18:38:40', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (624, 'K716', 'ASYIFIN DESI SETYANINGTYAS', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-04-27 16:10:43', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (625, 'K717', 'DEWI FATHUR ROSYIDA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-08 15:15:06', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (626, 'K718', 'NINDYA MUSTIKA DEWI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-03-25 08:13:05', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (627, 'K719', 'IKA WIWIN SUGIYARTI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-04-27 16:10:43', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (628, 'K720', 'MOCHAMMAD FUAD BADAWI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-26 04:59:43', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (629, 'K721', 'KRISTIN SUCI TRISNAWATI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 16:40:35', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (630, 'K722', 'IRFAN ALFIAN', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-03-11 12:55:59', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (631, 'K723', 'DEVI KARINDA NOVIA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-04-27 16:10:43', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (632, '197810262007101001', 'DIDIK PURWANTO,Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-07-31 11:31:58', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (633, 'K724', 'LATIFAH HIDAYATI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-03-13 07:39:28', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (634, 'K726', 'PUTRI IRAWATI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-08-01 20:24:42', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (635, '727', 'AGUNG BAYU PRAHARDIKA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2021-12-29 08:35:23', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (636, 'K728', 'SISKA ADIYATI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-05-09 14:09:20', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (637, 'K729', 'MIFTAKHUL LAILIYAH', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-10 07:26:05', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (638, 'K730', 'CITRA SARI PURBANDINI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 12:46:24', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (639, 'K731', 'MILKHATUS SA\'ADAH', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-03-24 07:59:10', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (640, 'K732', 'ANITA PERMATA DEWI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2021-12-29 07:54:35', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (641, '81051349', 'DESSASI ADE WELLA THALIA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-10 07:17:16', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (642, 'K734', 'MARISA PUTRI NAWANGSARI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 13:05:27', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (643, '197909042007102001', 'CANDRA DWIANA DEWI, S.Kep Ns', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-01 07:46:31', '', 'valid', 'online', 3, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (644, 'K735', 'INDRA FISKA KARINA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 17:21:31', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (645, 'K736', 'EKA LUSIANA SARI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 15:03:40', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (646, 'K737', 'VIKTA NURPUJIANI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 15:24:18', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (647, 'K738', 'MEYDA GUNTARIANI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-10-06 10:15:04', '', 'valid', 'offline', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (648, 'K739', 'SITI AMANITA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-02-22 21:24:45', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (649, 'K740', 'NABILA AMALIA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-24 09:11:29', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (650, 'K741', 'ANIK PURWATI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-05 19:48:55', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (651, 'K742', 'FARAH TIFANNY AISYAH ANINDYA PUTRI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-04-27 16:10:43', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (652, 'K744', 'LUCIA KUSUMANINGRUM', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 16:56:21', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (653, 'K745', 'OKKY YUDA WIJAYANTO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-27 06:57:56', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (654, '196507121998032001', 'PURWATI,Amd  Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-02-22 15:55:51', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (655, 'K746', 'EVA ERLINASARI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-04-20 07:42:23', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (656, 'K747', 'RIZAL HASWI BAKHTIAR', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-04-29 13:11:01', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (657, 'K748', 'MAHRUJAR ANDING YANUAR', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-18 13:42:26', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (658, 'K749', 'GIGIH TRIPURNA WARDHANA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-04-27 16:10:43', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (659, 'K750', 'WENY YULIASTUTIK', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-03-28 14:14:34', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (660, 'K751', 'HENDRIK SETIONO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-04-01 07:05:20', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (661, 'K752', 'MUJAYANAH', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 16:14:48', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (662, 'K753', 'SEKAR AYU RAHARJANINGRUM', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-04-10 22:10:51', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (663, 'K754', 'NOVIA SANTIKA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-05-21 20:27:58', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (664, 'K755', 'JULIA ANDREE TURA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2021-12-28 22:03:33', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (665, '62071023', 'dr. ANDOKO, Sp.OG', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-04-27 16:10:43', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (666, '196309111997031001', 'BAMBANG SATRIYO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2021-04-26 10:19:24', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (667, 'K756', 'PRASETYO SUSILO PRAYITNO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-27 13:41:51', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (668, 'K757', 'ANGGA KUSBIANTO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-09 13:46:22', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (669, 'K758', 'RIO DWI PRASETYAWAN', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 13:19:34', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (670, 'K759', 'BILLY INDRASTOTO SAMODRA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-04-01 07:07:29', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (671, 'K760', 'DIANIS PAHLEVI R.', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-02-16 07:17:36', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (672, 'K761', 'NICO FIRZA IRAWAN', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-11 07:11:03', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (673, 'K762', 'SONY CHRISTIARTO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-02-16 11:41:17', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (674, 'K763', 'FIRDAUS AHMAD K.A.C.', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 20:57:08', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (675, 'D017', 'dr. ROCHMANITA SAFITRI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-04-27 16:10:43', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (676, 'K764', 'AMIRUL SILMI SIDIQ', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-07-18 09:16:52', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (677, '197709272003122004', 'INDAH TRIYANI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-24 15:51:15', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (678, 'K765', 'SALSABILA RUHANA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 13:09:24', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (679, 'K766', 'ISMI WINEDAR PAWESTRI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-10 20:10:07', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (680, 'K767', 'KHORIATUL KHOIRUL NISA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2021-12-29 07:19:14', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (681, '197303052007011005', 'TRISNO YUWONO, S.Kep.,Ns', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 13:10:57', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (682, '197505262007102001', 'ISTIROAH, Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2021-04-13 09:45:34', '', 'valid', 'online', 3, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (683, '197406052007012003', 'SRI SUNARIN', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-10 08:13:32', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (684, '197803012007012001', 'SITI NURKOLIDAH,Am,d Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2021-12-28 15:26:22', '', 'valid', 'online', 3, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (685, '197904152007012001', 'WIJI NUR WIDAYATI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 12:47:23', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (686, '197309012007011002', 'PRAMONO WASKITO,Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 08:46:09', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (687, '197004071998031003', 'GIMO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 11:52:40', '', 'valid', 'offline', 2, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (688, '197510172007102001', 'SRI LESTARI.Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 13:14:03', '', 'valid', 'offline', 3, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (689, '67060626', 'Drs. NOEGROHO  EKO  S,Apt', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 12:58:09', '', 'valid', 'offline', 3, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (690, '197904022007101001', 'DANANG ARI SETYAWAN,Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-14 09:01:58', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (691, '197906202007102001', 'DEWI PUSPASARI,Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-10 07:52:22', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (692, '197912312007102002', 'HENI WURYANDARI,Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-10 07:15:16', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (693, '197604052007101001', 'KADARIANTO,Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-07-01 08:39:08', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (694, '197902262007101002', 'EKO SUSANTO,S.Kep., Ns', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-07-06 09:24:44', '', 'valid', 'online', 3, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (695, '197908072007102001', 'RINA DWI ASTUTI,Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-08-01 08:39:07', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (696, '198101152007102001', 'YENI SETYOWATI,Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 12:12:28', '', 'valid', 'online', 3, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (697, '198101262007102001', 'DIAN FITRI LESTARI,Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 13:33:31', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (698, '198204062007102001', 'RIRIN WAHYUNINGSIH,Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-01 15:01:06', '', 'valid', 'online', 3, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (699, '69100443', 'DWITA  RUSMYANTO,Amd Ph', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-10 13:02:16', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (700, '198106092007102002', 'RA. VIVI  YUNITASARI, Amd Far', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-05-31 10:19:24', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (701, '198006082007102001', 'HENI ASTUTI, Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 18:37:47', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (703, '198112162007102002', 'WIWIN DEPITASARI, Amd Keb', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 13:10:01', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (704, '198202042007102001', 'FITRIA SABDIANI,Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-08-03 06:21:23', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (705, '196211011998032001', 'PURWANTINI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-05-12 09:43:55', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (706, '198211132008012001', 'IKA SETIANI, Amd', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2021-12-28 17:20:50', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (707, '196609271992012001', 'ENDAH SRI MUMPUNI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 15:29:40', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (708, '196806191992012001', 'RITA PUSPARINI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-12 07:09:08', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (710, 'K787', 'DIDIK FERRY PRATAMA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-29 08:09:46', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (711, 'K1000', 'NURUL HIDAYAH', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-09-22 12:23:24', '', 'valid', 'offline', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (712, '0', 'FELIANA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 14:16:48', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (714, 'K801', 'CICIK DEWI K', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-09-25 11:27:24', '', 'valid', 'offline', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (715, 'K805', 'ANGGRAINI EKA P', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-08 19:19:24', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (716, 'K806', 'PUTRI PUSPITASARI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-07-31 06:59:12', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (717, 'K807', 'M ICHWABUDIN', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2020-09-25 14:26:47', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (718, 'K808', 'NURUL HIDAYAH', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-03-30 13:37:49', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (719, '809', 'DEWI KUMALASARI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-14 07:09:08', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (720, 'K810', 'LILIN NUR ENDAHSARI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-12 16:02:37', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (743, 'K368', 'HERMAYA PUTRA A.', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 12:49:23', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (744, '197505262007012001', 'ISTIROAH, Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-05-09 13:20:20', '', 'valid', 'online', 3, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (745, 'K795', 'RIZKI SETIYO BUDI ANTONO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-07-08 07:15:02', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (755, 'K789', 'BETTY SETYO PUTRI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-12 13:11:10', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (756, 'K079', 'SANTI PERVITASARI, SE', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 12:16:59', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (757, '197107072007012001', 'ERWIN DIANA, Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-21 19:25:20', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (758, 'K552', 'PRISTIANKI WULAN DIRA DIANTARI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 13:43:49', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (759, 'K784', 'SINTYA AYU PUSPITASARI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 15:02:19', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (760, '65040886', 'dr. ARIS BUDIYANTO, Sp.THT.KL', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2021-12-29 11:11:12', '', 'valid', 'offline', 9, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (761, 'K848', 'ISWAHYUNI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 08:10:06', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (762, 'K599', 'dwi yuni nurcahyo', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 15:00:58', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (763, 'K864', 'AHMAD PRIGEL SETIAJI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-05-21 16:23:09', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (764, 'K815', 'MEI WULANDARI NINGSIH', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2021-12-30 07:22:30', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (765, '197304052008101002', 'SUGENG SUDARIYANTO,SE', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 12:43:23', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (766, '198709252009122002', 'SEPTIAN DWIANTI, Amd.Keb', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-17 07:05:29', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (767, '198104212007102001', 'CITRA DEWI CAHYANTI,Amd Keb', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 13:19:50', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (768, 'K816', 'AMRIH BUDI W.', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 14:50:54', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (769, 'K773', 'ARIF WIJANARKO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-26 15:57:17', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (770, 'K855', 'ILMI FATIMAH BINTI LUDIE', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-04-02 09:02:24', '', 'valid', 'offline', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (771, '197907052007101002', 'EKO SUSANTO, S.Kep., Ns', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-05-27 15:50:02', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (772, 'K826', 'PRIMA ANDRIKA BAGUS RETMANA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-03-25 13:42:18', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (773, 'K802', 'YULI KURNIAWATI, Amd.Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-16 13:54:11', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (774, 'K794', 'Mega Silvia Milda Oktaviani', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-04-03 19:39:42', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (775, 'K854', 'MARIFATUL DWIVITA NARIYAH', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 07:27:27', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (776, 'K873', 'ANGGITA NANDA FAHIMAH ELMARET', 'e10adc3949ba59abbe56e057f20f883e', 'NULL', '2022-01-19 13:33:17', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (777, 'K844', 'ZANADHEA SHINTA WIDYA PUTRI', 'e10adc3949ba59abbe56e057f20f883e', 'NULL', '2022-04-06 06:36:14', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (778, 'K843', 'NABILA AYUNINGRUM', 'e10adc3949ba59abbe56e057f20f883e', 'NULL', '2022-01-14 13:40:43', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (779, 'K881', 'SHOBAH IQBALBAROYA', 'e10adc3949ba59abbe56e057f20f883e', 'NULL', '2022-03-25 13:59:00', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (780, 'K884', 'VENNI TRI WIDIANINGRUM', 'e10adc3949ba59abbe56e057f20f883e', 'NULL', '2022-01-07 06:20:01', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (781, 'K882', 'REFIKA CAHYA SHACARENDRA', 'e10adc3949ba59abbe56e057f20f883e', 'NULL', '2022-02-12 20:27:18', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (782, 'K845', 'FATHUR RAMADHAN', 'e10adc3949ba59abbe56e057f20f883e', 'NULL', '2022-02-28 13:18:37', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (783, 'K842', 'ALFYKA NUR ROHMAH', 'e10adc3949ba59abbe56e057f20f883e', 'NULL', '2022-01-21 07:19:02', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (784, 'K883', 'RATNA RAAFIAH YANTI', 'e10adc3949ba59abbe56e057f20f883e', 'NULL', '2022-03-31 12:45:20', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (785, 'K885', 'KIKI NURSELA', 'e10adc3949ba59abbe56e057f20f883e', 'NULL', '2022-02-12 20:01:18', '', 'valid', 'online', 5, '', '', 1);
INSERT INTO `tb_users` VALUES (786, 'K886', 'CICIK RIATIN', 'e10adc3949ba59abbe56e057f20f883e', 'NULL', '2022-01-07 19:56:11', '', 'valid', 'online', 5, '', '', 1);
INSERT INTO `tb_users` VALUES (787, 'K887', 'NINDI DWI PUTRI', 'e10adc3949ba59abbe56e057f20f883e', 'NULL', '2022-04-18 14:46:55', '', 'valid', 'online', 5, '', '', 1);
INSERT INTO `tb_users` VALUES (788, 'K888', 'REVITA DYAH ANGGRAHINI', 'e10adc3949ba59abbe56e057f20f883e', 'NULL', '2022-01-07 15:13:58', '', 'valid', 'online', 5, '', '', 1);
INSERT INTO `tb_users` VALUES (789, 'K889', 'RISNA HENDRIYANI', 'e10adc3949ba59abbe56e057f20f883e', 'NULL', '2022-01-06 13:17:01', '', 'valid', 'online', 5, '', '', 1);
INSERT INTO `tb_users` VALUES (790, 'K834', 'HILDA KURNIAWATI', 'e10adc3949ba59abbe56e057f20f883e', 'NULL', '2022-03-14 11:16:20', '', 'valid', 'online', 5, '', '', 1);
INSERT INTO `tb_users` VALUES (791, 'K835', 'NADYA PUTSA DHINIANSA', 'e10adc3949ba59abbe56e057f20f883e', 'NULL', '2022-01-06 13:13:28', '', 'valid', 'online', 5, '', '', 1);
INSERT INTO `tb_users` VALUES (792, 'K836', 'NANDYA AYU WICAKSONO', 'e10adc3949ba59abbe56e057f20f883e', 'NULL', '2022-07-14 21:20:01', '', 'valid', 'online', 5, '', '', 1);
INSERT INTO `tb_users` VALUES (793, 'K837', 'FINA LADY YANA PUTRI', 'e10adc3949ba59abbe56e057f20f883e', 'NULL', '2022-05-13 18:54:44', '', 'valid', 'online', 5, '', '', 1);
INSERT INTO `tb_users` VALUES (794, 'K838', 'LUSIANA EKA SOFITRI', 'e10adc3949ba59abbe56e057f20f883e', 'NULL', '2022-01-07 15:39:04', '', 'valid', 'online', 5, '', '', 1);
INSERT INTO `tb_users` VALUES (795, 'K839', 'SETIA VONDA NAVISSA WARDA', 'e10adc3949ba59abbe56e057f20f883e', 'NULL', '2022-01-07 16:40:49', '', 'valid', 'online', 5, '', '', 1);
INSERT INTO `tb_users` VALUES (796, 'K840', 'YUSI ALFIANTI', 'e10adc3949ba59abbe56e057f20f883e', 'NULL', '2022-01-06 13:23:39', '', 'valid', 'online', 5, '', '', 1);
INSERT INTO `tb_users` VALUES (797, 'K841', 'ANNISA DWI CAHYANI', 'e10adc3949ba59abbe56e057f20f883e', 'NULL', '2022-01-24 12:58:39', '', 'valid', 'online', 5, '', '', 1);
INSERT INTO `tb_users` VALUES (798, 'K866', 'Fitri nurhayati', 'e10adc3949ba59abbe56e057f20f883e', 'NULL', '2022-01-05 01:20:33', '', 'valid', 'online', 5, '', '', 1);
INSERT INTO `tb_users` VALUES (799, 'K832', 'Erni Alfianti', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-03-04 21:55:41', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (800, 'K857', 'MAYANGSARI YUDIATI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-03-11 13:38:55', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (801, 'K852', 'SHELLA ERNITA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-03-11 13:35:50', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (802, 'K820', 'AINUN SA\'ANANIYAH', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-30 06:58:11', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (803, 'K821', 'RIKA FAIZAH, Amd. Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-04 13:47:02', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (804, '197607102014121001', 'SULIN', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 08:45:29', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (805, 'K792', 'BETY SUCI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-08 21:33:26', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (806, 'K782', 'WIDO SYAHRUDIN', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-05 10:24:12', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (808, 'K851', 'NANANG AJI SYAIFUDIN', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-17 14:25:35', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (809, 'K849', 'PUTRI WAHYU PUSPITA NINGSIH', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-04-09 11:20:58', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (810, 'K860', 'ARMAN SETYAWAN', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-02-04 08:11:34', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (811, 'K868', 'SANDY YUNIANTO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-27 07:26:05', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (812, 'K867', 'MOH. AGUSTIN', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-03-11 09:02:04', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (813, 'K862', 'AGUS HARIYANTO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-09 13:36:46', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (814, 'K814', 'INDRA AULIA RAHMAN', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 11:14:28', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (815, '86030142', 'SATRIO SUSANTO WIBOWO,SE.', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-03-14 13:43:19', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (816, 'K859', 'ADITIA ALFAN FAUZI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-03-04 14:16:15', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (817, 'K850', 'BELLA AYU S', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 13:50:55', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (818, 'K780', 'Elmo Yudha Kusuma', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 13:18:19', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (819, 'K776', 'AJENG FITRI PANGESTUTI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-03-31 21:52:47', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (820, 'K713', 'SUYADI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-06 16:48:47', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (821, 'K856', 'IKA MAHARDIANIK', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-11 14:30:38', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (822, 'K828', 'AVIANA EKO WARDANI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-09 07:57:29', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (823, 'K797', 'YESSINTA DA PENNI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-07-23 07:08:15', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (824, 'K872', 'CECEP BAYU KUNCORO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-07-30 12:57:52', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (825, 'K846', 'DEWI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-08 07:51:14', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (826, 'K874', 'NUR HAYATI RATNASARI ', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-13 12:51:26', '', 'valid', 'online', 2, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (827, 'K865', 'KOKO SUBANGKIT', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-11 11:21:41', '', 'valid', 'online', 2, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (828, 'K804', 'DENI TARWIYATI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-07 14:17:31', '', 'valid', 'online', 2, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (829, 'K813', 'ANDIKA PUTRA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-13 19:55:42', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (830, 'K790', 'ANDRIANA DINA ROSITA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-11 06:57:12', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (831, 'K788', 'DANANG PRAMUKTI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-12 20:12:57', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (832, 'K875', 'WIYANGGAR PRANOTO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-02-25 09:34:04', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (833, 'K863', 'EKO FEBRI YUWONO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-09 21:56:54', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (834, 'K777', 'MUHAMMAD BAYU LUTFIANSYAH', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-11 10:47:20', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (835, 'K870', 'SIREGAR YOGA PRATAMA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-02-23 12:51:42', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (836, 'K861', 'AHMAD DICKY UFA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-05-02 11:52:51', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (837, 'K825', 'AHMAD SUBANDRIYO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-10 12:44:34', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (838, 'K858', 'SRI HARTINI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-10 14:41:45', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (839, 'K768', 'ERNAWATI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-08-02 12:25:04', '', 'valid', 'online', 5, NULL, NULL, 0);
INSERT INTO `tb_users` VALUES (840, 'K785', 'RETNO MUTIA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-07-29 06:58:13', '', 'valid', 'online', 2, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (841, 'K791', 'ATIKA FEBRIANI NUR MELASARI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-12 12:56:31', '', 'valid', 'online', 2, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (842, 'K831', 'habibatul fadlilah', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-03-24 06:50:27', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (843, 'K847', 'MOH. FAUZA ZAKI ALMAMDUH', 'e10adc3949ba59abbe56e057f20f883e', 'NULL', '2022-04-09 12:50:09', '', 'valid', 'online', 5, '', '', 0);
INSERT INTO `tb_users` VALUES (844, 'K770', 'NANA ABU SAPUTRI, S.Kep.Ns', 'e10adc3949ba59abbe56e057f20f883e', 'NULL', '2022-01-12 13:54:50', '', 'valid', 'online', 5, '', '', 1);
INSERT INTO `tb_users` VALUES (845, 'K830', 'MEY INDRAYANTI', 'e10adc3949ba59abbe56e057f20f883e', 'NULL', '2022-01-12 17:12:03', '', 'valid', 'online', 5, '', '', 1);
INSERT INTO `tb_users` VALUES (846, 'K818', 'FRINDI AYU FRILIHAPSARI', 'e10adc3949ba59abbe56e057f20f883e', 'NULL', '2022-08-01 20:24:35', '', 'valid', 'online', 5, '', '', 0);
INSERT INTO `tb_users` VALUES (847, 'K853', 'ALMIRA DIFA ALNARID', 'e10adc3949ba59abbe56e057f20f883e', 'NULL', '2022-03-30 07:13:50', '', 'valid', 'online', 5, '', '', 1);
INSERT INTO `tb_users` VALUES (848, 'K796', 'MUHAMMAD DANI AYYUBIL LUTHFI', 'e10adc3949ba59abbe56e057f20f883e', 'NULL', '2022-06-26 12:55:40', '', 'valid', 'online', 5, '', '', 1);
INSERT INTO `tb_users` VALUES (849, 'K823', 'TIYA WULANSARI', 'e10adc3949ba59abbe56e057f20f883e', 'NULL', '2022-03-14 07:46:12', '', 'valid', 'online', 5, '', '', 1);
INSERT INTO `tb_users` VALUES (850, 'K827', 'ALI UMAR SAID', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-12 18:08:00', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (851, 'K812', 'SAIFUL MA\'ARIF', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-13 07:51:44', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (852, 'K871', 'RICHO WAHYU SAPUTRA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-04-12 13:49:46', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (853, 'K803', 'EKO TEGUH SISWAHYUDI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-15 10:28:12', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (854, 'K869', 'RISKA YUNIOWATI NINGSIH', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-15 13:44:37', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (855, 'K824', 'ENNAS PANJALU ROSA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-20 09:41:28', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (856, 'K822', 'ARI AGUSTINA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-21 15:56:44', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (857, 'K783', 'YULIANI EKA PUTRI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-07-16 13:10:20', '', 'valid', 'offline', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (858, 'K880', 'LUKMAN ARIFIN', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-01-26 13:53:15', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (859, 'K877', 'ONY WIDA PRATAMA PUTRA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-02-01 18:44:51', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (860, 'K891', 'NOFICA AYU ANGGRAENI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-05-09 13:49:01', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (861, 'K892', 'AGUSTIAS ZUAMA INTAN', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-08 05:15:35', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (862, 'K778', 'NILA ALFU ROHMATIN', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-02-07 13:24:38', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (863, 'K779', 'ELMA RAHMA OKTAVIARI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-02-07 13:24:44', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (864, '73030613', 'SUYOKO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-03-14 13:58:29', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (865, 'K879', 'TRI UTAMI SETIA N D L', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-03-15 08:03:30', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (866, 'K829', 'FINA PURITYASARI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-03-15 20:48:19', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (867, 'K817', 'YULVIANA DWI O Ske Ners', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-03-25 10:19:32', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (868, 'K890', 'RIA SUNDARI  Amd Keb', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-03-25 10:19:52', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (869, 'K833', 'VEMBRI ROSALIANI Amd Kep', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-03-28 13:34:26', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (870, 'K781', 'RESSA PUTRI APRILIANI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-08-02 12:25:27', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (871, '83110434', 'ERDHIYANI IKE NOVIANTARI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-08 13:21:21', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (872, 'K935', 'DIAZ PUTRI M', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-08 13:19:16', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (873, 'K937', 'IRA APRILLIA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-08 13:21:10', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (874, 'K936', 'KEN NEYLIN M', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-08 13:21:13', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (875, 'K939', 'ALFANDO MURIA K W', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-08 13:21:18', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (876, 'K938', 'DIKA REZA R', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-08-04 21:31:41', 'admin', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (877, 'K916', 'ITSNA KHOIRUNNISA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-08 13:20:59', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (878, 'K932', 'ALFATICHA MANDA PUTRI\r\nALFATICHA MANDA PUTRI\r\nALFATICHA MANDA PUTRI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-08 13:23:02', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (879, 'K915', 'ZUNITA DWI PRANADA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-22 22:37:54', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (880, 'K919', 'LEVIANA SAPUTRI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-08 13:23:02', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (881, 'K908', 'DELTA PRIMA NANDIAN TIKA KIRANA\r\nDELTA PRIMA NANDIAN TIKA KIRANA\r\nDELTA PRIMA NANDIAN TIKA KIRANA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-08 13:23:02', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (882, 'K918', 'NABILA PUTRI MAULITA\r\n', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-08 13:55:12', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (883, 'K896', 'RAHMA LUTFI DENADA\r\n', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-08 13:57:06', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (884, 'K895', 'MOH. ANDHIKA FAHREZA H\r\n', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-08 13:56:37', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (885, 'K933', 'VIVI RAHMA CHOIRUNNISA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-08 13:59:35', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (886, 'K931', 'AINI FIKRI EMILYANA\r\n', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-08 14:02:26', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (887, 'K928', 'DEWI OLIVIA HASNIATY', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-08-04 21:24:06', 'spi', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (889, 'K914', 'NIKA WIDAYANTI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-14 08:16:11', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (890, 'K898', 'ANESHA ALIENDA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-20 22:13:11', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (891, 'K910', 'TRI HANGGARA WIDYA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-14 08:16:11', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (892, 'K904', 'DEWI CANDRA WIDYASTUTI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-14 08:16:11', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (893, 'K934', 'ALIFIANI WIBOWO', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-14 08:16:12', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (894, 'K897', 'RAHMADINA RATRI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-14 08:16:12', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (895, 'K899', 'OKTAVIA JAKTI W', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-20 07:55:55', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (896, 'K926', 'YESSY DWI CAHYANINGRUM', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-14 08:16:12', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (897, 'K905', 'LUTVI RAHMAWATI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-14 08:16:12', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (898, 'K917', 'PETRUS ALDO FAMBUDI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-07-22 10:57:04', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (899, 'K901', 'ACHMAD RIZAL FAHMI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-14 08:16:12', '', 'valid', 'online', 5, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (900, 'K924', 'FIDA NADHIR SALSA', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-07-10 15:22:54', '', 'valid', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (901, 'K902', 'NOFITA ELI S', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-14 08:16:12', '', 'valid', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (902, 'K930', 'MUCHAMAD RISAL R', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-14 08:16:12', '', 'valid', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (903, 'K921', 'ANNISA MUFIDAH', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-14 08:16:12', '', 'valid', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (904, 'K906', 'SITI NURJANAH', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-14 08:16:12', '', 'valid', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (905, 'K894', 'INTAN RAHAYUNINGRUM', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-14 08:16:12', '', 'valid', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (906, 'K911', 'IRMA SUGIANI', 'e10adc3949ba59abbe56e057f20f883e', 'NULL', '2022-06-14 07:37:11', '', 'valid', 'online', 5, '', '', 1);
INSERT INTO `tb_users` VALUES (907, 'K925', 'FISNI NUR MELINDA', 'e10adc3949ba59abbe56e057f20f883e', 'NULL', '2022-06-14 08:13:21', '', 'valid', 'online', 5, '', '', 1);
INSERT INTO `tb_users` VALUES (908, 'K907', 'NOPRIAN RAHMAN', 'e10adc3949ba59abbe56e057f20f883e', 'NULL', '2022-06-14 08:13:39', '', 'valid', 'online', 5, '', '', 1);
INSERT INTO `tb_users` VALUES (909, 'K923', 'DEA TIAS KARTIKASARI', 'e10adc3949ba59abbe56e057f20f883e', NULL, '2022-06-14 14:23:00', '', 'valid', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (910, 'K922', 'LARASATI RAMADHANI', 'e10adc3949ba59abbe56e057f20f883e', NULL, '2022-06-15 08:02:03', '', 'valid', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (911, 'K903', 'MUHAMMAD ZAINUL FUAD', 'e10adc3949ba59abbe56e057f20f883e', NULL, '2022-06-15 12:35:55', '', 'valid', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (912, 'K912', 'AYU MILA PERMATA', 'e10adc3949ba59abbe56e057f20f883e', NULL, '2022-06-16 13:57:59', '', 'valid', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (913, 'K941', 'EFVI AYUCILIA MAHARDIKA', 'e10adc3949ba59abbe56e057f20f883e', NULL, '2022-06-17 07:48:30', '', 'valid', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (914, 'K944', 'TRI MAHERA N.M.S', 'e10adc3949ba59abbe56e057f20f883e', NULL, '2022-06-17 07:49:46', '', 'valid', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (915, 'K943', 'MUH. RIFA\'I', 'e10adc3949ba59abbe56e057f20f883e', NULL, '2022-07-05 09:01:48', '', 'valid', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (916, 'K940', 'DIMAS SATRIO BAYU AJI', 'e10adc3949ba59abbe56e057f20f883e', NULL, '2022-06-17 11:25:45', '', 'valid', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (917, 'K942', 'MUHAMMAD RIDWAN', 'e10adc3949ba59abbe56e057f20f883e', NULL, '2022-06-20 07:32:48', '', 'valid', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (918, 'K893', 'ENGGAR PUTRI LISTYANI', 'e10adc3949ba59abbe56e057f20f883e', 'null', '2022-06-21 07:44:46', '', 'valid', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (919, 'K927', 'NUNGKY INDRIANI', 'e10adc3949ba59abbe56e057f20f883e', NULL, '2022-06-24 07:19:10', '', 'valid', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (920, 'K945', 'SHINTA SETIAWATI', 'e10adc3949ba59abbe56e057f20f883e', NULL, '2022-07-05 11:53:30', '', 'valid', NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_users` VALUES (921, 'K909', 'DEDY FITRI KURNIAWAN', 'e10adc3949ba59abbe56e057f20f883e', NULL, '2022-07-06 14:07:17', '', 'valid', NULL, NULL, NULL, NULL, 1);

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
INSERT INTO `tindak_lanjut` VALUES (21, 'komite_etik', 'Perilaku yang mengganggu', '1', 'Pembinaan', '2022-08-02 12:43:26', NULL);
INSERT INTO `tindak_lanjut` VALUES (22, 'komite_etik', 'Perilaku yang melecehkah', '3', 'Pembinaan', '2022-08-03 10:50:10', NULL);
INSERT INTO `tindak_lanjut` VALUES (22, 'humas', 'Perilaku yang menggangu', '1', 'Pembinaan dan monitoring', '2022-08-03 11:07:52', NULL);
INSERT INTO `tindak_lanjut` VALUES (20, 'humas', 'Pelecehan seksual', '1', '234234', '2022-08-04 10:59:24', NULL);
INSERT INTO `tindak_lanjut` VALUES (19, 'humas', 'Pelecehan seksual', '4', 'tes', '2022-08-04 11:05:13', NULL);

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
INSERT INTO `transaksi` VALUES (21, 'komite_etik');
INSERT INTO `transaksi` VALUES (21, 'komite_medik');

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
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'Admin', 'admin');
INSERT INTO `user` VALUES (2, 'karumkit', 'e10adc3949ba59abbe56e057f20f883e', 'Kepala Rumah Sakit', 'karumkit');
INSERT INTO `user` VALUES (3, 'komite_medik', 'e10adc3949ba59abbe56e057f20f883e', 'Komite Medik', 'komite_medik');
INSERT INTO `user` VALUES (4, 'agung', 'e10adc3949ba59abbe56e057f20f883e', 'Agung Mukti', 'pegawai');
INSERT INTO `user` VALUES (5, 'komite_etik', 'e10adc3949ba59abbe56e057f20f883e', 'Komite Etik dan Hukum', 'komite_etik');
INSERT INTO `user` VALUES (6, 'komite_tenaga', 'e10adc3949ba59abbe56e057f20f883e', 'Komite Tenaga Kesehatan Lain', 'komite_tenaga');
INSERT INTO `user` VALUES (7, 'komite_keperawatan', 'e10adc3949ba59abbe56e057f20f883e', 'Komite Keperawatan', 'komite_keperawatan');
INSERT INTO `user` VALUES (8, 'spi', 'e10adc3949ba59abbe56e057f20f883e', 'SPI', 'spi');
INSERT INTO `user` VALUES (9, 'humas', 'e10adc3949ba59abbe56e057f20f883e', 'HUMAS', 'humas');

SET FOREIGN_KEY_CHECKS = 1;
