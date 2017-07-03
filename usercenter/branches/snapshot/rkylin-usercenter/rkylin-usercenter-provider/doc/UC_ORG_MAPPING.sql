
DROP TABLE IF EXISTS `UC_ORG_MAPPING`;
CREATE TABLE `UC_ORG_MAPPING` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `LOGIN_NAME` varchar(100) NOT NULL COMMENT '登陆名',
  `ORG_CODE_ACTUAL` varchar(100) NOT NULL COMMENT '实际机构号',
  `ORG_CODE_VIRTUAL` varchar(100) NOT NULL COMMENT '虚拟机构号',
  `MECHANT_NAME` varchar(100) NULL COMMENT '非空，表示当前记录为商户下个人或企业开户',
  `CREATED_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建时间',
  `UPDATED_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '记录更新时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='商户虚拟机构和实际机构映射表';
ALTER TABLE UC_USER_LOGIN MODIFY COLUMN ORG_CODE VARCHAR(32) ;