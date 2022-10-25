/*
MySQL Data Transfer
Source Host: localhost
Source Database: yygh_hosp
Target Host: localhost
Target Database: yygh_hosp
Date: 2022/10/25 18:30:07
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for hospital_set
-- ----------------------------
CREATE TABLE `hospital_set` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `hosname` varchar(100) DEFAULT NULL COMMENT '医院名称',
  `hoscode` varchar(30) DEFAULT NULL COMMENT '医院编号',
  `api_url` varchar(100) DEFAULT NULL COMMENT 'api基础路径',
  `sign_key` varchar(50) DEFAULT NULL COMMENT '签名秘钥',
  `contacts_name` varchar(20) DEFAULT NULL COMMENT '联系人',
  `contacts_phone` varchar(11) DEFAULT NULL COMMENT '联系人手机',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint(3) NOT NULL DEFAULT '0' COMMENT '逻辑删除(1:已删除，0:未删除)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_hoscode` (`hoscode`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='医院设置表';

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `hospital_set` VALUES ('1', '协和', '1000_0', 'http://localhost:9001', 'c8c605999f3d8352d7bb792cf3fdb25b', '张三', '13899832453', '1', '2022-10-10 17:26:29', '2022-10-25 17:34:18', '0');
INSERT INTO `hospital_set` VALUES ('2', '人民', '1000', 'http://localhost:9001', 'ba06d50c49c84fa889207ed2284852c8', '张三', '13899832457', '1', '2022-10-10 17:22:25', '2022-10-18 21:02:02', '0');
INSERT INTO `hospital_set` VALUES ('4', '人民', '1001', 'http://localhost:9001', 'd5af0067a499c8f25ab4abd321a0e5d5', '张三', '13899832457', '1', '2022-10-10 17:23:28', '2022-10-18 21:02:02', '0');
INSERT INTO `hospital_set` VALUES ('5', '人民', '1002', 'http://localhost:9001', '1bf3ed80b95f00e1382ab50a17c0799b', '张三', '13899832457', '1', '2022-10-10 17:23:35', '2022-10-18 21:02:03', '0');
INSERT INTO `hospital_set` VALUES ('6', '人民', '1022', 'http://localhost:9001', '18fbf38ac5b5d295a621530cc024efed', '张三', '13899832457', '1', '2022-10-10 17:23:40', '2022-10-18 21:02:04', '0');
INSERT INTO `hospital_set` VALUES ('7', '人民', '1222', 'http://localhost:9001', '3390783e7e9fc5cdf97e0057f7e0c27d', '张三', '13899832457', '1', '2022-10-10 17:23:44', '2022-10-10 17:23:44', '0');
INSERT INTO `hospital_set` VALUES ('8', '人民', '1322', 'http://localhost:9001', 'f5b0382a1bb93456f7b075875ca57cab', '张三', '13899832457', '1', '2022-10-10 17:23:48', '2022-10-10 17:23:48', '0');
INSERT INTO `hospital_set` VALUES ('9', '人民', '1302', 'http://localhost:9001', '41b1ef82ccfaae1352b9469b3faaffc1', '张三', '13899832457', '1', '2022-10-10 17:23:51', '2022-10-18 21:02:09', '0');
INSERT INTO `hospital_set` VALUES ('10', '人民', '1992', 'http://localhost:9001', '1d4189899242c215b8052319006299a3', '张三', '13899832457', '1', '2022-10-10 17:23:55', '2022-10-18 21:02:07', '0');
INSERT INTO `hospital_set` VALUES ('12', '协和', '12345', 'http://localhost:9001', '5d5c7cba3e14729f70ab3dfba944c5e8', '大头', '12454672345', '1', '2022-10-12 15:19:59', '2022-10-12 15:19:59', '0');
INSERT INTO `hospital_set` VALUES ('13', '北京', '1000_2', 'http://localhost:9001', '9dd0ddf29a2bf4c5687ee0f939242192', '大大', '13986522764', '1', '2022-10-25 18:08:39', '2022-10-25 18:08:39', '0');
