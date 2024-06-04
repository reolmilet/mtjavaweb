/*
 Navicat Premium Data Transfer

 Source Server         : reol
 Source Server Type    : MySQL
 Source Server Version : 80035 (8.0.35)
 Source Host           : localhost:3306
 Source Schema         : mttext01

 Target Server Type    : MySQL
 Target Server Version : 80035 (8.0.35)
 File Encoding         : 65001

 Date: 02/06/2024 21:35:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `cart_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NULL DEFAULT NULL,
  `product_id` int NULL DEFAULT NULL,
  `quantity` int NULL DEFAULT NULL,
  `shopping_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`cart_id`) USING BTREE,
  INDEX `user_id`(`user_id` ASC) USING BTREE,
  INDEX `product_id`(`product_id` ASC) USING BTREE,
  CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES (1, 10, 10001, 1, NULL);
INSERT INTO `cart` VALUES (2, 10, 10002, 1, NULL);
INSERT INTO `cart` VALUES (3, 10, 10003, 1, NULL);
INSERT INTO `cart` VALUES (4, 10, 10001, 1, NULL);
INSERT INTO `cart` VALUES (5, 10, 10002, 1, NULL);
INSERT INTO `cart` VALUES (6, 10, 10003, 1, NULL);
INSERT INTO `cart` VALUES (7, 10, 10001, 1, NULL);
INSERT INTO `cart` VALUES (8, 10, 10002, 1, NULL);
INSERT INTO `cart` VALUES (9, 10, 10003, 1, NULL);
INSERT INTO `cart` VALUES (10, 10, 10001, 3, NULL);
INSERT INTO `cart` VALUES (11, 10, 10002, 3, NULL);
INSERT INTO `cart` VALUES (12, 10, 10001, 4, NULL);
INSERT INTO `cart` VALUES (13, 10, 10002, 4, NULL);
INSERT INTO `cart` VALUES (14, 10, 10001, 1, 1);
INSERT INTO `cart` VALUES (15, 10, 10002, 1, 1);
INSERT INTO `cart` VALUES (16, 10, 10003, 1, 1);
INSERT INTO `cart` VALUES (17, 10, 10002, 4, 2);
INSERT INTO `cart` VALUES (18, 10, 10001, 4, 2);
INSERT INTO `cart` VALUES (19, 10, 10001, 1, 3);
INSERT INTO `cart` VALUES (20, 10, 10002, 1, 3);
INSERT INTO `cart` VALUES (21, 10, 10003, 1, 3);
INSERT INTO `cart` VALUES (22, 10, 10001, 1, 4);
INSERT INTO `cart` VALUES (23, 10, 10002, 1, 4);
INSERT INTO `cart` VALUES (24, 10, 10003, 1, 4);
INSERT INTO `cart` VALUES (25, 10, 10001, 1, 5);
INSERT INTO `cart` VALUES (26, 10, 10002, 1, 5);
INSERT INTO `cart` VALUES (27, 10, 10003, 1, 5);
INSERT INTO `cart` VALUES (28, 10, 10001, 1, 6);
INSERT INTO `cart` VALUES (29, 10, 10002, 1, 6);
INSERT INTO `cart` VALUES (30, 10, 10003, 1, 6);
INSERT INTO `cart` VALUES (31, 10, 10001, 1, 7);
INSERT INTO `cart` VALUES (32, 10, 10002, 1, 7);
INSERT INTO `cart` VALUES (33, 10, 10003, 1, 7);
INSERT INTO `cart` VALUES (34, 10, 10001, 1, 8);
INSERT INTO `cart` VALUES (35, 10, 10002, 1, 8);
INSERT INTO `cart` VALUES (36, 10, 10003, 1, 8);
INSERT INTO `cart` VALUES (37, 10, 20001, 1, 11);
INSERT INTO `cart` VALUES (38, 10, 10001, 1, 12);
INSERT INTO `cart` VALUES (39, 10, 10002, 1, 12);
INSERT INTO `cart` VALUES (40, 10, 10003, 1, 12);
INSERT INTO `cart` VALUES (41, 10, 10001, 2, 13);
INSERT INTO `cart` VALUES (42, 10, 10002, 2, 13);

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `price_off` decimal(10, 2) NULL DEFAULT NULL,
  `desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `category` int NULL DEFAULT NULL,
  `c_item` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `tags` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `unit` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `inventory` int NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  `sale` int NULL DEFAULT NULL,
  `_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `appkey` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `__v` int NULL DEFAULT NULL,
  `nowinventory` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (10001, '3斤丹东99红颜草莓单果20g+', 99.00, 159.90, '咬一口香甜爆浆 大盒装全家共享', 2, '草莓蓝莓', '[\"24小时发货\",\"包邮\"]', '[\"https://duyi-bucket.oss-cn-beijing.aliyuncs.com/img/草莓.jpg\"]', 'g', 100, '2022-01-10 00:00:00', 1, 23, '5f3a469a29af515bdf7a9811', 'dd_1597654682810', 0, 77);
INSERT INTO `products` VALUES (10002, '甜美无比 甘甜适口 余味无穷', 29.90, 39.90, '甜中带酸 缀满枝头 硕果满枝', 2, '苹果', '[\"24小时发货\"]', '[\"https://duyi-bucket.oss-cn-beijing.aliyuncs.com/img/苹果.jpg\",\"http://duyi-bucket.oss-cn-beijing.aliyuncs.com/mall-admin/images/%E8%93%9D%E8%8E%931593413624174.jpg\"]', 'g', 100, '2022-01-10 00:00:00', 1, 23, '5f3a469a29af515bdf7a9808', 'dd_1597654682810', 0, 77);
INSERT INTO `products` VALUES (10003, '【产地直发】马来西亚猫山王榴莲果肉500g', 109.00, 199.00, '冰激凌口感甜糯肉多', 2, '榴莲', '[\"包邮，最快次日达\"]', '[\"https://duyi-bucket.oss-cn-beijing.aliyuncs.com/img/榴莲.jpg\",\"http://duyi-bucket.oss-cn-beijing.aliyuncs.com/mall-admin/images/liqour%20(3)1593504309947.jpg\"]', 'g', 100, '2022-01-10 00:00:00', 1, 10, '5f3a469a29af515bdf7a9802', 'dd_1597654682810', 0, 90);
INSERT INTO `products` VALUES (10005, '大连美早樱桃好吃到爆', 119.00, 199.00, '现摘现发的大樱桃 口感太爽啦', 2, '车厘子', '[\"24小时发货\"]', '[\"https://duyi-bucket.oss-cn-beijing.aliyuncs.com/img/大连美早129.jpg\"]', 'g', 100, '2022-01-10 00:00:00', 1, 0, '5f3a469a29af515bdf7a9807', 'dd_1597654682810', 0, 100);
INSERT INTO `products` VALUES (10006, '【产地直发】山东2k小西瓜 4-5斤装', 26.90, NULL, '果肉晶莹剔透圆润饱满', 2, '西瓜', '[\"包邮，最快次日达\"]', '[\"https://duyi-bucket.oss-cn-beijing.aliyuncs.com/img/西瓜.jpg\"]', 'g', 100, '2022-01-10 00:00:00', 1, 0, '5f3a469a29af515bdf7a9805', 'dd_1597654682810', 0, 100);
INSERT INTO `products` VALUES (10007, '【冰淇淋蜜瓜】山东玉菇瓜王', 29.90, 119.90, '爆甜 多汁', 2, '甜瓜蜜瓜', '[\"24小时发货\",\"包邮\"]', '[\"https://duyi-bucket.oss-cn-beijing.aliyuncs.com/img/冰淇淋蜜瓜.jpg\"]', 'g', 100, '2022-01-10 00:00:00', 1, 0, '5f3a469a29af515bdf7a9809', 'dd_1597654682810', 0, 100);
INSERT INTO `products` VALUES (10008, '【脆甜爽口】阎良小仔蜜瓜超级好吃', 49.90, 535.90, '应季鲜果 产地直发 脆甜多汁', 2, '甜瓜蜜瓜', '[\"24小时发货\"]', '[\"https://duyi-bucket.oss-cn-beijing.aliyuncs.com/img/脆甜爽口.jpg\"]', 'g', 100, '2022-01-10 00:00:00', 1, 0, '5f3a469a29af515bdf7a980a', 'dd_1597654682810', 0, 100);
INSERT INTO `products` VALUES (10011, '【顺丰空运】烟台美早大樱桃，颗颗饱满', 89.90, 759.90, '凌晨采摘 现摘现发 顺丰空运 颗颗饱满', 2, '车厘子', '[\"限时秒杀\",\"包邮\"]', '[\"https://duyi-bucket.oss-cn-beijing.aliyuncs.com/img/大连美早129.jpg\",\"http://duyi-bucket.oss-cn-beijing.aliyuncs.com/mall-admin/images/%E7%BA%A2%E6%A8%B1%E6%A1%831593414410048.jpg\"]', 'g', 100, '2022-01-10 00:00:00', 1, 0, '5f3a469a29af515bdf7a9806', 'dd_1597654682810', 0, 100);
INSERT INTO `products` VALUES (10018, '【买4送1】山东青岛蓝莓大个滴 好吃', 69.90, 169.90, '源自青岛 酸甜可口', 2, '草莓蓝莓', '[\"限时秒杀\",\"包邮\"]', '[\"https://duyi-bucket.oss-cn-beijing.aliyuncs.com/img/买4送1山东青岛蓝莓.jpg\"]', 'g', 100, '2022-01-10 00:00:00', 1, 0, '5f3a469a29af515bdf7a9810', 'dd_1597654682810', 0, 100);
INSERT INTO `products` VALUES (10019, '菲律宾香蕉3斤装', 35.00, 59.90, '香甜美味 一口甜到心里', 2, '香蕉葡萄', '[\"限时秒杀\",\"包邮\"]', '[\"https://duyi-bucket.oss-cn-beijing.aliyuncs.com/img/菲律宾香蕉3金装.jpg\"]', 'g', 100, '2022-01-10 00:00:00', 1, 0, '5f3a469a29af515bdf7a980e', 'dd_1597654682810', 0, 100);
INSERT INTO `products` VALUES (10020, '【产地直发】智力绿果12个装当过90g起', 35.00, 232.90, '酸甜多汁 细嫩爽滑', 2, '奇异果', '[\"24小时发货\",\"包邮\"]', '[\"https://duyi-bucket.oss-cn-beijing.aliyuncs.com/img/智利绿果12个装.jpg\"]', 'g', 100, '2022-01-10 00:00:00', 1, 0, '5f3a469a29af515bdf7a980b', 'dd_1597654682810', 0, 100);
INSERT INTO `products` VALUES (10021, '【产地直发】秘鲁巨无霸牛油果6个装单果180克+', 79.90, NULL, '营养丰富 宝宝辅食', 2, '牛油果', '[\"24小时发货\",\"包邮\"]', '[\"https://duyi-bucket.oss-cn-beijing.aliyuncs.com/img/牛油果.jpg\"]', 'g', 100, '2022-01-10 00:00:00', 1, 0, '5f3a469a29af515bdf7a980c', 'dd_1597654682810', 0, 100);
INSERT INTO `products` VALUES (10022, '【产地直发】海南黄金百香果12个装单果65克+', 39.90, 519.90, '果香浓郁 酸甜可口', 2, '百香果', '[\"24小时发货\",\"包邮\"]', '[\"https://duyi-bucket.oss-cn-beijing.aliyuncs.com/img/海南黄金百香果.jpg\"]', 'g', 100, '2022-01-10 00:00:00', 1, 0, '5f3a469a29af515bdf7a980d', 'dd_1597654682810', 0, 100);
INSERT INTO `products` VALUES (10024, '【产地直发】茉莉香无籽红提3斤装', 59.90, 249.90, '口感好 营养高', 2, '香蕉葡萄', '[\"限时秒杀\",\"包邮\"]', '[\"https://duyi-bucket.oss-cn-beijing.aliyuncs.com/img/葡萄.jpg\"]', 'g', 100, '2022-01-10 00:00:00', 1, 0, '5f3a469a29af515bdf7a980f', 'dd_1597654682810', 0, 100);
INSERT INTO `products` VALUES (10069, '测试', 19.90, 29.90, 'null', 2, '苹果', '[\"包邮，最晚次日达\"]', '[\"http://duyi-bucket.oss-cn-beijing.aliyuncs.com/mall-admin/images/IMG_03791604311783636.jpg\"]', '个', 11, '2022-01-10 00:00:00', 1, 0, '5f9fdaeb29af515bdf7a9982', 'dd_1597654682810', 0, 100);
INSERT INTO `products` VALUES (10075, '菠萝12312123', 10.00, 19.00, '香甜美味', 2, 'null', '[\"包邮，最晚次日达\",\"好吃八佰伴\"]', '[\"http://duyi-bucket.oss-cn-beijing.aliyuncs.com/mall-admin/images/%E7%8C%AA1622444185004.jpg\"]', '个', 30, '2022-01-10 00:00:00', 1, 0, '60b4889bf378034fba152856', 'dd_1597654682810', 0, 100);
INSERT INTO `products` VALUES (20001, '【12瓶】农夫山泉饮用天然水婴儿水1L*12', 98.00, 109.90, '淡矿化度 适合婴幼儿', 1, '饮用水', '[\"包邮\"]', '[\"https://duyi-bucket.oss-cn-beijing.aliyuncs.com/img/yys (5).jpg\"]', 'g', 100, '2020-08-17 00:00:00', 1, 3, '5f3a469a29af515bdf7a9812', 'dd_1597654682810', 0, 97);
INSERT INTO `products` VALUES (20002, '天地精华 饮用天然矿泉水550ml*20瓶 整箱', 29.90, NULL, '矿泉宝藏发现者', 1, '饮用水', '[\"包邮\"]', '[\"https://duyi-bucket.oss-cn-beijing.aliyuncs.com/img/yys (1).jpg\"]', 'g', 100, '2020-08-17 00:00:00', 1, 0, '5f3a469a29af515bdf7a9813', 'dd_1597654682810', 0, 100);
INSERT INTO `products` VALUES (20003, '农夫山泉饮用天然水5L*12桶装水', 129.00, 130.00, '海量好货 次日送达', 1, '饮用水', '[\"包邮，最快次日达\"]', '[\"https://duyi-bucket.oss-cn-beijing.aliyuncs.com/img/yys (2).jpg\"]', 'g', 100, '2020-08-17 00:00:00', 1, 0, '5f3a469a29af515bdf7a9814', 'dd_1597654682810', 0, 100);
INSERT INTO `products` VALUES (20004, '云海湾 饮用天然矿泉水1.5L*6瓶 整箱新西兰进口', 49.90, NULL, '大自然的馈赠 新西兰原装进口', 1, '饮用水', '[\"包邮，最快次日达\"]', '[\"https://duyi-bucket.oss-cn-beijing.aliyuncs.com/img/yys (3).jpg\"]', 'g', 100, '2020-08-17 00:00:00', 1, 0, '5f3a469a29af515bdf7a9815', 'dd_1597654682810', 0, 100);
INSERT INTO `products` VALUES (20005, '依云(evian) 天然矿泉水330ml*20整箱玻璃瓶', 189.00, NULL, '海量好货 次日送达', 1, '饮用水', '[\"包邮\"]', '[\"https://duyi-bucket.oss-cn-beijing.aliyuncs.com/img/yys (4).jpg\"]', 'g', 100, '2020-08-17 00:00:00', 1, 0, '5f3a469a29af515bdf7a9816', 'dd_1597654682810', 0, 100);
INSERT INTO `products` VALUES (20006, '可口可乐碳酸饮料200ml*12罐mini迷你罐汽水', 28.90, NULL, '欢乐时刻 怎能少得了快乐水', 1, '碳酸饮料', '[\"包邮，最快次日达\"]', '[\"https://duyi-bucket.oss-cn-beijing.aliyuncs.com/img/TSYL (1).jpg\"]', 'g', 100, '2020-08-17 00:00:00', 1, 0, '5f3a469a29af515bdf7a9817', 'dd_1597654682810', 0, 100);
INSERT INTO `products` VALUES (20007, '元気森林苏打气泡水无糖白桃味480ml*10瓶饮料', 28.90, NULL, '0糖 0脂肪 0卡路里', 1, '碳酸饮料', '[\"包邮，最快次日达\"]', '[\"https://duyi-bucket.oss-cn-beijing.aliyuncs.com/img/TSYL (2).jpg\"]', 'g', 100, '2020-08-17 00:00:00', 1, 0, '5f3a469a29af515bdf7a9818', 'dd_1597654682810', 0, 100);
INSERT INTO `products` VALUES (20008, '汉口二厂 汽水荔枝味275ml*8瓶含气果汁饮料碳酸玻璃瓶', 68.00, NULL, '人生是没有什么跨不过去的', 1, '碳酸饮料', '[\"包邮，最快次日达\"]', '[\"https://duyi-bucket.oss-cn-beijing.aliyuncs.com/img/TSYL (3).jpg\"]', 'g', 100, '2020-08-17 00:00:00', 1, 0, '5f3a469a29af515bdf7a9819', 'dd_1597654682810', 0, 100);
INSERT INTO `products` VALUES (20009, '可口可乐零度碳酸饮料200ml*12罐mini迷你罐汽水', 28.90, NULL, '这感觉 够爽', 1, '碳酸饮料', '[\"包邮，最快次日达\"]', '[\"https://duyi-bucket.oss-cn-beijing.aliyuncs.com/img/TSYL (4).jpg\"]', 'g', 100, '2020-08-17 00:00:00', 1, 0, '5f3a469a29af515bdf7a981a', 'dd_1597654682810', 0, 100);
INSERT INTO `products` VALUES (20010, '汉口二厂含气果汁汽水网红碳酸饮料275ml*8瓶', 78.00, NULL, '解锁不同口味的秘密', 1, '碳酸饮料', '[\"包邮，最快次日达\"]', '[\"https://duyi-bucket.oss-cn-beijing.aliyuncs.com/img/TSYL (5).jpg\"]', 'g', 100, '2020-08-17 00:00:00', 1, 0, '5f3a469a29af515bdf7a981b', 'dd_1597654682810', 0, 100);
INSERT INTO `products` VALUES (20011, '农夫山泉茶派玫瑰荔枝茶整箱装', 64.90, 100.00, '农夫山泉茶π果味茶饮料', 1, '茶饮料', '[\"包邮，最快次日达\"]', '[\"https://duyi-bucket.oss-cn-beijing.aliyuncs.com/img/tea (1).jpg\"]', 'g', 100, '2020-08-17 00:00:00', 1, 0, '5f3a469a29af515bdf7a981c', 'dd_1597654682810', 0, 100);
INSERT INTO `products` VALUES (20012, '三得利乌龙茶无糖饮料500ml*15瓶整箱', 45.90, NULL, '精选茶叶 天然茶多酚', 1, '茶饮料', '[\"包邮，最快次日达\"]', '[\"https://duyi-bucket.oss-cn-beijing.aliyuncs.com/img/tea (2).jpg\"]', 'g', 100, '2020-08-17 00:00:00', 1, 0, '5f3a469a29af515bdf7a981d', 'dd_1597654682810', 0, 100);
INSERT INTO `products` VALUES (20013, '立顿斯里兰卡红茶2g*25包', 19.90, NULL, '海量好货次日送达', 1, '茶饮料', '[\"包邮，最快次日达\"]', '[\"https://duyi-bucket.oss-cn-beijing.aliyuncs.com/img/tea (3).jpg\"]', 'g', 100, '2020-08-17 00:00:00', 1, 0, '5f3a469a29af515bdf7a981e', 'dd_1597654682810', 0, 100);
INSERT INTO `products` VALUES (20014, '农夫山泉东方树叶茉莉花茶500ml*15瓶*2箱', 102.00, NULL, '海量好货次日送达', 1, '茶饮料', '[\"包邮，最快次日达\"]', '[\"https://duyi-bucket.oss-cn-beijing.aliyuncs.com/img/tea (4).jpg\"]', 'g', 100, '2020-08-17 00:00:00', 1, 0, '5f3a469a29af515bdf7a981f', 'dd_1597654682810', 0, 100);
INSERT INTO `products` VALUES (20015, '立顿Lipton乌龙茶袋泡茶包1.8g*25', 19.90, NULL, '海量好货次日送达', 1, '茶饮料', '[\"包邮，最快次日达\"]', '[\"https://duyi-bucket.oss-cn-beijing.aliyuncs.com/img/tea (5).jpg\"]', 'g', 100, '2020-08-17 00:00:00', 1, 0, '5f3a469a29af515bdf7a9820', 'dd_1597654682810', 0, 100);
INSERT INTO `products` VALUES (20016, '【整箱】雀巢 丝滑拿铁 咖啡饮料 268ml*15瓶', 74.90, NULL, '口感丝般柔滑 香气层次丰富', 1, '咖啡', '[\"包邮，最快次日达\"]', '[\"https://duyi-bucket.oss-cn-beijing.aliyuncs.com/img/coffee (1).jpg\"]', 'g', 100, '2020-08-17 00:00:00', 1, 0, '5f3a469a29af515bdf7a9821', 'dd_1597654682810', 0, 100);
INSERT INTO `products` VALUES (20017, '中原G7美式萃取速溶纯黑咖啡30g', 19.90, NULL, '海量好货 次日送达', 1, '咖啡', '[\"包邮，最快次日达\"]', '[\"https://duyi-bucket.oss-cn-beijing.aliyuncs.com/img/coffee (2).jpg\"]', 'g', 100, '2020-08-17 00:00:00', 1, 0, '5f3a469a29af515bdf7a9822', 'dd_1597654682810', 0, 100);
INSERT INTO `products` VALUES (20018, '雀巢醇品速溶黑咖啡1.8g*20包（新老包装随机发）', 21.90, NULL, '海量好货 次日送达', 1, '咖啡', '[\"包邮，最快次日达\"]', '[\"https://duyi-bucket.oss-cn-beijing.aliyuncs.com/img/coffee (3).jpg\"]', 'g', 100, '2020-08-17 00:00:00', 1, 0, '5f3a469a29af515bdf7a9823', 'dd_1597654682810', 0, 100);
INSERT INTO `products` VALUES (20019, '雀巢咖啡伴侣植脂末奶精粉瓶装100g', 17.90, NULL, '海量好货 次日送达', 1, '咖啡', '[\"包邮，最快次日达\"]', '[\"https://duyi-bucket.oss-cn-beijing.aliyuncs.com/img/coffee (4).jpg\"]', 'g', 100, '2020-08-17 00:00:00', 1, 0, '5f3a469a29af515bdf7a9824', 'dd_1597654682810', 0, 100);

-- ----------------------------
-- Table structure for shopping
-- ----------------------------
DROP TABLE IF EXISTS `shopping`;
CREATE TABLE `shopping`  (
  `shoppingId` int NOT NULL AUTO_INCREMENT,
  `data` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`shoppingId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shopping
-- ----------------------------
INSERT INTO `shopping` VALUES (1, '2024-05-27 16:33:09');
INSERT INTO `shopping` VALUES (2, '2024-05-28 15:12:27');
INSERT INTO `shopping` VALUES (3, '2024-05-30 15:01:41');
INSERT INTO `shopping` VALUES (4, '2024-06-01 19:06:07');
INSERT INTO `shopping` VALUES (5, '2024-06-01 19:37:18');
INSERT INTO `shopping` VALUES (6, '2024-06-02 14:49:14');
INSERT INTO `shopping` VALUES (7, '2024-06-02 14:53:04');
INSERT INTO `shopping` VALUES (8, '2024-06-02 18:47:56');
INSERT INTO `shopping` VALUES (9, '2024-06-02 18:47:57');
INSERT INTO `shopping` VALUES (10, '2024-06-02 18:48:32');
INSERT INTO `shopping` VALUES (11, '2024-06-02 18:53:10');
INSERT INTO `shopping` VALUES (12, '2024-06-02 18:53:40');
INSERT INTO `shopping` VALUES (13, '2024-06-02 21:16:52');

-- ----------------------------
-- Table structure for sidebar
-- ----------------------------
DROP TABLE IF EXISTS `sidebar`;
CREATE TABLE `sidebar`  (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sidebar
-- ----------------------------
INSERT INTO `sidebar` VALUES (1, '1', '酒水冲调');
INSERT INTO `sidebar` VALUES (2, '2', '时令水果');
INSERT INTO `sidebar` VALUES (3, '香梨', '时令水果');
INSERT INTO `sidebar` VALUES (4, '榴莲', '时令水果');
INSERT INTO `sidebar` VALUES (5, '柚子', '时令水果');
INSERT INTO `sidebar` VALUES (6, '西瓜', '时令水果');
INSERT INTO `sidebar` VALUES (7, '车厘子', '时令水果');
INSERT INTO `sidebar` VALUES (8, '百香果', '时令水果');
INSERT INTO `sidebar` VALUES (9, '牛油果', '时令水果');
INSERT INTO `sidebar` VALUES (10, '奇异果', '时令水果');
INSERT INTO `sidebar` VALUES (11, '甜瓜蜜瓜', '时令水果');
INSERT INTO `sidebar` VALUES (12, '草莓蓝莓', '时令水果');
INSERT INTO `sidebar` VALUES (13, '香蕉葡萄', '时令水果');
INSERT INTO `sidebar` VALUES (14, '碳酸饮料', '酒水冲调');
INSERT INTO `sidebar` VALUES (15, '咖啡', '酒水冲调');
INSERT INTO `sidebar` VALUES (16, '茶饮料', '酒水冲调');
INSERT INTO `sidebar` VALUES (17, '果汁', '酒水冲调');
INSERT INTO `sidebar` VALUES (18, '功能饮料', '酒水冲调');
INSERT INTO `sidebar` VALUES (19, '啤酒', '酒水冲调');
INSERT INTO `sidebar` VALUES (20, '白酒', '酒水冲调');
INSERT INTO `sidebar` VALUES (21, '洋酒', '酒水冲调');
INSERT INTO `sidebar` VALUES (22, '葡萄酒', '酒水冲调');
INSERT INTO `sidebar` VALUES (23, '谷物冲调', '酒水冲调');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (10, '12', '123');
INSERT INTO `users` VALUES (11, '1231', '23');
INSERT INTO `users` VALUES (12, '45', '456');
INSERT INTO `users` VALUES (13, '78', '78');
INSERT INTO `users` VALUES (14, '78', '781');
INSERT INTO `users` VALUES (15, 'qwq', 'w');
INSERT INTO `users` VALUES (16, 'asa', 'sd');
INSERT INTO `users` VALUES (17, 'ew', 'fds');

-- ----------------------------
-- Triggers structure for table cart
-- ----------------------------
DROP TRIGGER IF EXISTS `update_sale_after_insert`;
delimiter ;;
CREATE TRIGGER `update_sale_after_insert` AFTER INSERT ON `cart` FOR EACH ROW BEGIN
   UPDATE products SET sale = sale + NEW.quantity WHERE id = NEW.product_id;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table products
-- ----------------------------
DROP TRIGGER IF EXISTS `update_nowstatus`;
delimiter ;;
CREATE TRIGGER `update_nowstatus` BEFORE UPDATE ON `products` FOR EACH ROW BEGIN
   IF NEW.sale <> OLD.sale THEN
      SET NEW.nowinventory = NEW.inventory - NEW.sale;
   END IF;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
