CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `username` varchar(50) NOT NULL COMMENT '登陆账号',
  `userpass` varchar(50) NOT NULL COMMENT '登陆密码',
  `nickname` varchar(50) DEFAULT NULL COMMENT '昵称',
  `age` int(11) DEFAULT NULL COMMENT '用户年龄',
  `gender` varchar(5) DEFAULT NULL COMMENT '用户性别',
  `phone` varchar(13) DEFAULT NULL COMMENT '联系方式',
  `email` varchar(20) DEFAULT NULL COMMENT '用户邮箱',
  `createTime` datetime DEFAULT NULL COMMENT '账号创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '用户修改时间',
  `lastLogin` datetime DEFAULT NULL COMMENT '账号最后一次登陆时间',
  `userStatus` int(11) DEFAULT NULL COMMENT '用户账号状态，0 正常 1 锁定 2 删除',
  `remark` text COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;