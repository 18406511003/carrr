-- phpMyAdmin SQL Dump
-- version 4.7.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 2018-03-11 14:58:04
-- 服务器版本： 5.7.12-log
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dcms`
--

-- --------------------------------------------------------

--
-- 表的结构 `dc_admin`
--

CREATE TABLE `dc_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `userpwd` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `headpic` varchar(250) NOT NULL DEFAULT 'admin.png',
  `roles` varchar(250) NOT NULL DEFAULT '0' COMMENT '权限组合',
  `status` int(1) NOT NULL DEFAULT '3' COMMENT '用户是否在线3离线1在线2忙碌'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='后台管理用户表';

--
-- 转存表中的数据 `dc_admin`
--

INSERT INTO `dc_admin` (`id`, `username`, `userpwd`, `email`, `headpic`, `roles`, `status`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@qq.com', 'admin.jpg', '1', 1),
(18, 'mayaren', 'e10adc3949ba59abbe56e057f20f883e', 'mayaren@qq.com', 'admin.png', '0', 3),
(19, 'root', '63a9f0ea7bb98050796b649e85481845', 'root@qq.com', 'admin.png', '5', 3),
(20, 'notnull', '3717ba13b29e535bf556c6fef4125702', 'notnull@qq.com', 'admin.png', '5', 3);

-- --------------------------------------------------------

--
-- 表的结构 `dc_bclass`
--

CREATE TABLE `dc_bclass` (
  `id` int(11) NOT NULL COMMENT '一级分类id',
  `bname` varchar(250) NOT NULL COMMENT '一级分类名',
  `pic` varchar(250) NOT NULL DEFAULT 'bclass.jpg',
  `orderno` int(11) NOT NULL DEFAULT '1' COMMENT '一级分类排序',
  `describe` text COMMENT '一级分类描述'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='一级分类';

--
-- 转存表中的数据 `dc_bclass`
--

INSERT INTO `dc_bclass` (`id`, `bname`, `pic`, `orderno`, `describe`) VALUES
(23, '机场接送用车', '530c2fbaec3ca.gif', 1, '机场接送用车'),
(24, '酒店配套用车', '530c3046282eb.gif', 2, '酒店配套用车'),
(25, '节庆活动用车', '530c307e67b65.gif', 3, '节庆活动用车'),
(26, '文化体育用车', '530c30e7e4f70.gif', 4, '文化体育用车'),
(27, '会议用车', '530c3120910a1.gif', 5, '会议用车'),
(28, '市民用车', '530c314939b75.gif', 6, '市民用车');

-- --------------------------------------------------------

--
-- 表的结构 `dc_carts`
--

CREATE TABLE `dc_carts` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `fid` int(11) NOT NULL,
  `number` int(2) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购物车';

--
-- 转存表中的数据 `dc_carts`
--

INSERT INTO `dc_carts` (`id`, `uid`, `fid`, `number`) VALUES
(128, 22, 60, 1),
(173, 42, 59, 1),
(193, 44, 146, 1),
(194, 45, 146, 1),
(195, 46, 146, 1),
(262, 53, 152, 1);

-- --------------------------------------------------------

--
-- 表的结构 `dc_changzu`
--

CREATE TABLE `dc_changzu` (
  `name` varchar(40) NOT NULL,
  `time` varchar(40) NOT NULL,
  `type` varchar(30) NOT NULL,
  `person` varchar(30) NOT NULL,
  `phone` int(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `dc_changzu`
--

INSERT INTO `dc_changzu` (`name`, `time`, `type`, `person`, `phone`, `city`, `email`) VALUES
('山西大学', '一年', '吉普', '', 2147483647, '太原', '123456@qq.com');

-- --------------------------------------------------------

--
-- 表的结构 `dc_departments`
--

CREATE TABLE `dc_departments` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `truename` varchar(250) NOT NULL,
  `userpwd` varchar(32) NOT NULL,
  `name` varchar(255) NOT NULL COMMENT '单位名称',
  `score` int(11) NOT NULL,
  `credit` int(11) NOT NULL,
  `money` int(11) NOT NULL DEFAULT '0',
  `pay` varchar(200) NOT NULL,
  `email` varchar(120) NOT NULL,
  `hotel` varchar(255) NOT NULL,
  `is_discount` bigint(20) NOT NULL COMMENT '1是2否折扣',
  `phone` varchar(60) NOT NULL,
  `address` varchar(255) NOT NULL,
  `about` varchar(255) NOT NULL,
  `pic` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

--
-- 转存表中的数据 `dc_departments`
--

INSERT INTO `dc_departments` (`id`, `username`, `truename`, `userpwd`, `name`, `score`, `credit`, `money`, `pay`, `email`, `hotel`, `is_discount`, `phone`, `address`, `about`, `pic`) VALUES
(1, 'crinsn', '王校长', '96e79218965eb72c92a549dd5a330112', '大学', 1, 1, 0, '41234123123412341', 'test@qq.com', '维多利亚。', 1, '13777846637', '文一路115号', '环境优雅，服务周到，干净整洁。', 'th_52fdbaf0eccd2.jpg'),
(2, 'Louhu', '', '96e79218965eb72c92a549dd5a330112', '山西农业大学', 80, 1, 0, '6456543', '123456@qq.com', '希尔顿', 8, '1669874524', '太谷', '系统默认好评', 'th_52fdceb28258f.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `dc_driver`
--

CREATE TABLE `dc_driver` (
  `id` int(11) NOT NULL,
  `driver_id` varchar(32) NOT NULL,
  `car_id` int(11) NOT NULL,
  `username` varchar(11) NOT NULL,
  `password` char(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `driver_phone` varchar(15) NOT NULL,
  `situation` int(1) NOT NULL DEFAULT '1' COMMENT '2外出,1无外出',
  `email` varchar(120) NOT NULL,
  `pay` varchar(32) NOT NULL,
  `score` int(11) NOT NULL,
  `credit` int(11) NOT NULL,
  `class` int(11) NOT NULL,
  `about_drive` varchar(255) NOT NULL,
  `favorite` int(11) NOT NULL,
  `complain` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `dc_driver`
--

INSERT INTO `dc_driver` (`id`, `driver_id`, `car_id`, `username`, `password`, `name`, `driver_phone`, `situation`, `email`, `pay`, `score`, `credit`, `class`, `about_drive`, `favorite`, `complain`) VALUES
(7, 'baomax6', 144, 'zhangsan', 'zhangsan', '张三', '12345678901', 1, '', '237472354', 0, 0, 0, '1', 1, '1'),
(8, 'baomamini', 141, 'lisi', 'dc3a8f1670d65bea69b7b65048a0ac40', '李四', '13662532621', 1, '', '37264234', 0, 0, 0, '2', 2, '2'),
(9, 'dajinlong', 142, 'wangwu', 'wangwu', '王五', '12324545651', 1, '', '3243245', 0, 0, 0, '3', 3, '3'),
(10, 'aodiq7', 143, 'zhaoliu', 'zhaoliu', '赵六', '12345678999', 1, '', '2356743', 0, 0, 0, '4', 4, '4'),
(11, 'baoshijiekayan', 145, 'zouqi', 'cb1af5a94b9441c2800ec99ffdf58521', '邹七', '12323482357', 1, '', '343534534', 0, 0, 0, '5', 5, '5'),
(12, 'benchismart', 146, 'xiba', 'e571ba0d059e3e30911daac2a78c7908', '西八', '18447563522', 1, '', '3534534', 0, 0, 0, '6', 6, '6');

-- --------------------------------------------------------

--
-- 表的结构 `dc_evaluate`
--

CREATE TABLE `dc_evaluate` (
  `id` int(11) NOT NULL,
  `fid` int(11) NOT NULL COMMENT '车辆编号',
  `uid` int(11) NOT NULL,
  `grade` int(11) NOT NULL DEFAULT '0' COMMENT '给车辆打分',
  `content` text COMMENT '用户评论内容',
  `posttime` bigint(32) NOT NULL,
  `lasttime` bigint(32) NOT NULL,
  `lastip` varchar(15) NOT NULL,
  `isopen` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户评价';

--
-- 转存表中的数据 `dc_evaluate`
--

INSERT INTO `dc_evaluate` (`id`, `fid`, `uid`, `grade`, `content`, `posttime`, `lasttime`, `lastip`, `isopen`) VALUES
(33, 144, 53, 0, '方法', 1520737558, 1520737558, '', 1);

-- --------------------------------------------------------

--
-- 表的结构 `dc_foods`
--

CREATE TABLE `dc_foods` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL COMMENT '所属分类',
  `name` varchar(255) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `orderno` int(11) NOT NULL DEFAULT '1' COMMENT '车辆排序',
  `describe` varchar(255) NOT NULL,
  `regtime` bigint(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '1在售 2下架',
  `yprice` double DEFAULT NULL COMMENT '优惠价格',
  `start_time` bigint(20) DEFAULT NULL COMMENT '优惠开始的时间',
  `end_time` bigint(20) DEFAULT NULL COMMENT '优惠结束的时间',
  `driver_id` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='车辆信息';

--
-- 转存表中的数据 `dc_foods`
--

INSERT INTO `dc_foods` (`id`, `cid`, `name`, `pic`, `price`, `orderno`, `describe`, `regtime`, `status`, `yprice`, `start_time`, `end_time`, `driver_id`) VALUES
(141, 63, '宝马mini', '530ca1aebc06d.jpg', 40, 1, '宝马mini红', 1394961722, 1, 36, 1393680830, 1394631180, 'baomamini'),
(142, 66, '大金龙', '530f3938123ae.jpg', 100, 1, '大金龙', 1393681188, 1, 80, 1393681152, 1399383540, 'dajinlong'),
(143, 62, '奥迪Q7', '530f396f76db8.jpg', 50, 1, '奥迪Q7', 1393681219, 1, 40, 1393681203, 1400074800, 'aodiq7'),
(144, 63, '宝马X6', '530f39af9395b.jpg', 50, 2, '宝马X6', 1393681243, 1, 40, 1393681225, 1400074800, 'baomax6'),
(145, 64, '保时捷卡宴', '530f3a027406f.jpg', 60, 1, '保时捷卡宴', 1393681288, 1, 50, 1393681264, 1399988460, 'baoshijiekayan'),
(146, 67, '奔驰Smart', '530f3a4f5f20e.jpg', 80, 1, '奔驰Smart', 1393681309, 1, 70, 1393681293, 1399470060, 'benchismart'),
(148, 71, '别克君威', '5aa4e6368b467.jpg', 70, 2, '别克君威红 2.0T', 1520756367, 1, 68, NULL, NULL, ''),
(149, 72, '本田思域', '5aa4e787de0be.jpg', 60, 3, '本田思域蓝', 1520756615, 1, NULL, NULL, NULL, ''),
(150, 70, '法拉利F12', '5aa4e800e50ee.jpg', 190, 3, '法拉利F12红', 1520756736, 1, NULL, NULL, NULL, ''),
(151, 68, '劳斯莱斯幻影', '5aa4e86bb6735.jpg', 500, 1, '劳斯莱斯幻影黑', 1520756843, 1, NULL, NULL, NULL, ''),
(152, 69, '丰田普拉多', '5aa4e8a7bfa01.jpg', 100, 2, '丰田普拉多白', 1520756903, 1, NULL, NULL, NULL, '');

-- --------------------------------------------------------

--
-- 表的结构 `dc_forms`
--

CREATE TABLE `dc_forms` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `fid` int(11) NOT NULL COMMENT '车辆编号',
  `form_number` varchar(32) NOT NULL COMMENT '订单号',
  `nprice` double NOT NULL COMMENT '成交价',
  `ask` text COMMENT '订车要求',
  `foods_number` int(2) NOT NULL DEFAULT '1' COMMENT '车辆数',
  `ftime` bigint(20) NOT NULL COMMENT '订餐时间',
  `check` int(1) NOT NULL DEFAULT '1' COMMENT '稽查状态2：不通过，1：已通过',
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '订单状态：1进行中，3已过期,2已完成',
  `end` varchar(20) NOT NULL,
  `start` varchar(20) NOT NULL,
  `ytime` varchar(32) NOT NULL COMMENT '年/月/日/时(24小时)/分'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `dc_forms`
--

INSERT INTO `dc_forms` (`id`, `uid`, `fid`, `form_number`, `nprice`, `ask`, `foods_number`, `ftime`, `check`, `status`, `end`, `start`, `ytime`) VALUES
(244, 53, 152, 'Dcms152077995316', 100, 'vvv', 1, 1520866354, 1, 1, '五角场店', '太原南站店', '2018-03-10'),
(243, 53, 149, 'Dcms152077995316', 60, 'vvv', 1, 1520866354, 1, 1, '五角场店', '太原南站店', '2018-03-10'),
(242, 53, 141, 'Dcms152077995316', 36, 'vvv', 1, 1520866354, 1, 1, '五角场店', '太原南站店', '2018-03-10'),
(239, 53, 141, 'Dcms152073780920', 36, '模型模型', 1, 1520824210, 1, 1, '太原', '太原', '2018-03-10'),
(240, 53, 145, 'Dcms152073780920', 50, '模型模型', 1, 1520824210, 1, 1, '太原', '太原', '2018-03-10'),
(241, 53, 145, 'Dcms152073787621', 50, '新的', 1, 1520824277, 1, 1, '北京', '西安', '2018-03-10');

-- --------------------------------------------------------

--
-- 表的结构 `dc_friendlinks`
--

CREATE TABLE `dc_friendlinks` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `target` varchar(50) NOT NULL DEFAULT '_blank',
  `pic` varchar(200) DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '类型1文字2图片',
  `isallow` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1使用2屏蔽',
  `describe` varchar(255) NOT NULL,
  `orderno` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='友情链接';

--
-- 转存表中的数据 `dc_friendlinks`
--

INSERT INTO `dc_friendlinks` (`id`, `title`, `url`, `target`, `pic`, `type`, `isallow`, `describe`, `orderno`) VALUES
(41, '百度', 'www.baidu.com', '_blank', '0', 1, 1, '', 1),
(42, '新浪', 'www.sina.cn', '_blank', '0', 1, 1, '新浪网站', 1),
(47, '网易', 'www.163.com', '_blank', NULL, 1, 1, '网易链接', 1),
(49, '腾讯', 'http://www.qq.com', '_blank', NULL, 1, 1, '腾讯网站链接', 1),
(52, '淘宝', 'www.taobao.com', '_parent', NULL, 1, 1, '淘宝', 1);

-- --------------------------------------------------------

--
-- 表的结构 `dc_hotels`
--

CREATE TABLE `dc_hotels` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `truename` varchar(255) NOT NULL,
  `userpwd` varchar(32) NOT NULL,
  `star` int(11) NOT NULL,
  `discount` bigint(20) NOT NULL COMMENT '1是2否折扣',
  `receiving` bigint(20) NOT NULL COMMENT '1是2否提供接机',
  `favorite` int(11) NOT NULL,
  `scale` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(60) NOT NULL,
  `money` int(11) NOT NULL DEFAULT '0',
  `pay` varchar(200) NOT NULL,
  `about` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

--
-- 转存表中的数据 `dc_hotels`
--

INSERT INTO `dc_hotels` (`id`, `username`, `truename`, `userpwd`, `star`, `discount`, `receiving`, `favorite`, `scale`, `address`, `phone`, `money`, `pay`, `about`) VALUES
(1, 'super', '', '96e79218965eb72c92a549dd5a330112', 0, 2, 2, 5, '四星级', '杭州万达', '1353537397', 3305, '43463135', '无'),
(2, '维多利亚', '吴哈哈哈', '96e79218965eb72c92a549dd5a330112', 5, 1, 1, 5, '五星级', '杭州维多利亚酒店', '13777846670', 888888, '3412412341234123414', '环境优雅，服务周到，棒。'),
(3, 'car', '', '96e79218965eb72c92a549dd5a330112', 0, 2, 2, 5, '四星级', '杭州万达', '1353537397', 3305, '43463135', '无'),
(8, 'ruhua', '', '96e79218965eb72c92a549dd5a330112', 0, 7, 1, 5, '3', '杭州龙翔', '1232535645646', 0, '34365868', '好');

-- --------------------------------------------------------

--
-- 表的结构 `dc_ip`
--

CREATE TABLE `dc_ip` (
  `id` int(11) NOT NULL,
  `start_IP` bigint(23) NOT NULL,
  `end_IP` bigint(23) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='禁用IP';

--
-- 转存表中的数据 `dc_ip`
--

INSERT INTO `dc_ip` (`id`, `start_IP`, `end_IP`) VALUES
(30, -1062698495, -1062698494);

-- --------------------------------------------------------

--
-- 表的结构 `dc_logs`
--

CREATE TABLE `dc_logs` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '用户id游客为0',
  `fid` int(11) NOT NULL COMMENT '用户浏览的车记录',
  `ip` bigint(20) DEFAULT NULL COMMENT '用户ip',
  `number` int(11) DEFAULT '1' COMMENT '用户访问的次数',
  `date` bigint(20) NOT NULL COMMENT '日志生成日期'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='日志管理';

--
-- 转存表中的数据 `dc_logs`
--

INSERT INTO `dc_logs` (`id`, `uid`, `fid`, `ip`, `number`, `date`) VALUES
(127, 0, 0, 0, 14, 1520413696),
(118, 0, 141, 0, 27, 1520776065),
(119, 1, 141, 0, 20, 1520739598),
(120, 0, 146, 0, 24, 1520413584),
(121, 0, 145, 0, 9, 1520413302),
(122, 0, 143, 0, 2, 1515987540),
(123, 0, 144, 0, 3, 1520752515),
(124, 1, 146, 0, 16, 1520739604),
(125, 1, 145, 0, 5, 1520739609),
(126, 1, 143, 0, 3, 1520753824),
(160, 0, 152, 0, 1, 1520779996),
(143, 53, 145, 0, 2, 1520737855),
(144, 0, 142, 0, 4, 1520776142),
(145, 53, 141, 0, 5, 1520757553),
(146, 53, 146, 0, 3, 1520739718),
(147, 53, 142, 0, 3, 1520757935),
(148, 53, 144, 0, 3, 1520737559),
(149, 53, 143, 0, 1, 1520737553),
(150, 8, 141, 0, 2, 1520738183),
(151, 2, 143, 0, 2, 1520738264),
(152, 2, 146, 0, 3, 1520739319),
(153, 2, 144, 0, 1, 1520739311),
(154, 2, 145, 0, 1, 1520739315),
(155, 53, 148, 0, 4, 1520766159),
(156, 53, 149, 0, 4, 1520757072),
(157, 53, 152, 0, 6, 1520779996),
(158, 53, 151, 0, 1, 1520757531),
(159, 53, 150, 0, 1, 1520757535);

-- --------------------------------------------------------

--
-- 表的结构 `dc_roles`
--

CREATE TABLE `dc_roles` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL COMMENT '权限名字',
  `describe` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户权限表';

--
-- 转存表中的数据 `dc_roles`
--

INSERT INTO `dc_roles` (`id`, `name`, `describe`) VALUES
(1, '超级管理员', '可对系统任何信息进行管理，操作表:所有表'),
(2, '系统管理员', '只可对站点自身非用户相关信息进行管理,操作表:friendlinks,ip,log,webconfig,notices'),
(3, '车辆管理员', '可对车辆相关进行操作,操作表:classes,foods'),
(4, '用户管理员', '对用户信息进行管理,操作表:users,admin,roles'),
(5, '订单管理员', '对用户订单信息进行管理,操作表:forms'),
(8, '评论管理员', '对用户评论信息进行管理');

-- --------------------------------------------------------

--
-- 表的结构 `dc_sclass`
--

CREATE TABLE `dc_sclass` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL COMMENT '父类id',
  `sname` varchar(250) NOT NULL,
  `orderno` int(11) NOT NULL DEFAULT '1' COMMENT '二级分类排序'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='二级分类';

--
-- 转存表中的数据 `dc_sclass`
--

INSERT INTO `dc_sclass` (`id`, `pid`, `sname`, `orderno`) VALUES
(62, 28, '奥迪', 1),
(63, 28, '宝马', 2),
(64, 28, '保时捷', 3),
(69, 27, '丰田', 3),
(66, 26, '大金龙', 2),
(67, 25, '奔驰', 1),
(68, 25, '劳斯莱斯', 2),
(70, 24, '法拉利', 1),
(71, 23, '别克', 1),
(72, 23, '本田', 2);

-- --------------------------------------------------------

--
-- 表的结构 `dc_users`
--

CREATE TABLE `dc_users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `truename` varchar(250) DEFAULT NULL,
  `userpwd` char(32) NOT NULL,
  `email` varchar(200) NOT NULL,
  `money` int(11) NOT NULL DEFAULT '0',
  `address` varchar(255) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `headpic` varchar(255) NOT NULL DEFAULT 'headpic.jpg',
  `post` bigint(20) NOT NULL DEFAULT '1' COMMENT '1是2否允许订车',
  `regip` varchar(15) NOT NULL,
  `regtime` bigint(20) NOT NULL,
  `lastip` varchar(15) NOT NULL,
  `lasttime` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户基本信息表';

--
-- 转存表中的数据 `dc_users`
--

INSERT INTO `dc_users` (`id`, `username`, `truename`, `userpwd`, `email`, `money`, `address`, `phone`, `headpic`, `post`, `regip`, `regtime`, `lastip`, `lasttime`) VALUES
(16, 'Bruse', '林阳', '96e79218965eb72c92a549dd5a330112', 'Bruse@qq.com', 50, '北京市五道口', '13000010002', '52fdba9403a6b.jpg', 1, '127.0.0.1', 1521986726, '', 0),
(1, 'malan', '马兰', '96e79218965eb72c92a549dd5a330112', 'malan@qq.com', 185, '下沙', '15974405388', '52fcba223d4a9.jpg', 1, '192.168.130.3', 1513986726, '', 0),
(17, 'Jack', 'Jack', 'e10adc3949ba59abbe56e057f20f883e', '916413@qq.com', 0, '', NULL, 'headpic.jpg', 1, '', 1510986726, '', 0),
(18, 'Anny', NULL, '96e79218965eb72c92a549dd5a330112', '123@qq.com', 0, '', NULL, 'headpic.jpg', 1, '', 1516986726, '', 0),
(40, 'gongjing', NULL, 'e10adc3949ba59abbe56e057f20f883e', 'gongjing@qq.com', 30, '', NULL, '52fdd0d0456f3.jpg', 1, '', 1516286726, '', 0),
(41, '213', NULL, 'e10adc3949ba59abbe56e057f20f883e', 'admin@qq.com', 30, '', NULL, 'headpic.jpg', 1, '', 1515165126, '', 0),
(38, 'admin', NULL, 'e00cf25ad42683b3df678c61f42c6bda', 'admin@163.com', 30, '', NULL, '52fdbaf0eccd2.jpg', 1, '', 1515498489, '', 0),
(39, 'KOKO', 'crazy man', 'b1d493021c810630b9b0d7455caeed15', 'qq@qq.com', 35, '南非', '10162908433', '52fdceb28258f.jpg', 1, '', 1515986714, '', 0),
(42, 'DuYang', 'dy', 'b1d493021c810630b9b0d7455caeed15', 'ww@ww.com', 30, '', '1212', '52fdd07592bf4.jpg', 1, '', 1515925245, '', 0),
(43, 'twen', '爷爷', '3f44afd6d32e9ee196e60372d971123f', 'joneyee22@qq.com', 35, '合肥更好', '15974405388', 'headpic.jpg', 1, '', 1515982454, '', 0),
(46, 'xxxx', 'xxxx', 'e10adc3949ba59abbe56e057f20f883e', 'xx@qq.com', 30, 'xxxx', '12345678900', 'headpic.jpg', 1, '', 1515984534, '', 0),
(53, 'TT1', '苏苏', 'e10adc3949ba59abbe56e057f20f883e', '123@sina.com', 45, '太原', '19944448888', 'headpic.jpg', 1, '', 1515986726, '', 0),
(54, '', '', 'd41d8cd98f00b204e9800998ecf8427e', '我得公司', 30, '', '', 'headpic.jpg', 1, '', 1520773431, '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `dc_webconfig`
--

CREATE TABLE `dc_webconfig` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `keywords` varchar(200) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  `email` varchar(60) NOT NULL,
  `contact` varchar(30) NOT NULL COMMENT '联系方式',
  `icpno` varchar(50) NOT NULL COMMENT '备案号',
  `address` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='站点配置';

--
-- 转存表中的数据 `dc_webconfig`
--

INSERT INTO `dc_webconfig` (`id`, `title`, `keywords`, `logo`, `description`, `email`, `contact`, `icpno`, `address`) VALUES
(0, '快达汽车租赁', '快达 租车系统', '530d8606b6d25.png', ' 这是网站描述内容！！！                                                                                             ', 'admin@qq.com', '12345677777', '晋ICP备00000000号-1', '太谷市');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dc_admin`
--
ALTER TABLE `dc_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dc_bclass`
--
ALTER TABLE `dc_bclass`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dc_carts`
--
ALTER TABLE `dc_carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dc_departments`
--
ALTER TABLE `dc_departments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `username_2` (`username`),
  ADD UNIQUE KEY `username_3` (`username`);

--
-- Indexes for table `dc_driver`
--
ALTER TABLE `dc_driver`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dc_evaluate`
--
ALTER TABLE `dc_evaluate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dc_foods`
--
ALTER TABLE `dc_foods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dc_forms`
--
ALTER TABLE `dc_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dc_friendlinks`
--
ALTER TABLE `dc_friendlinks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dc_hotels`
--
ALTER TABLE `dc_hotels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `dc_ip`
--
ALTER TABLE `dc_ip`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dc_logs`
--
ALTER TABLE `dc_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dc_roles`
--
ALTER TABLE `dc_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dc_sclass`
--
ALTER TABLE `dc_sclass`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dc_users`
--
ALTER TABLE `dc_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `dc_webconfig`
--
ALTER TABLE `dc_webconfig`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `dc_admin`
--
ALTER TABLE `dc_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- 使用表AUTO_INCREMENT `dc_bclass`
--
ALTER TABLE `dc_bclass`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '一级分类id', AUTO_INCREMENT=29;

--
-- 使用表AUTO_INCREMENT `dc_carts`
--
ALTER TABLE `dc_carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=263;

--
-- 使用表AUTO_INCREMENT `dc_driver`
--
ALTER TABLE `dc_driver`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 使用表AUTO_INCREMENT `dc_evaluate`
--
ALTER TABLE `dc_evaluate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- 使用表AUTO_INCREMENT `dc_foods`
--
ALTER TABLE `dc_foods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- 使用表AUTO_INCREMENT `dc_forms`
--
ALTER TABLE `dc_forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;

--
-- 使用表AUTO_INCREMENT `dc_friendlinks`
--
ALTER TABLE `dc_friendlinks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- 使用表AUTO_INCREMENT `dc_ip`
--
ALTER TABLE `dc_ip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- 使用表AUTO_INCREMENT `dc_logs`
--
ALTER TABLE `dc_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- 使用表AUTO_INCREMENT `dc_roles`
--
ALTER TABLE `dc_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用表AUTO_INCREMENT `dc_sclass`
--
ALTER TABLE `dc_sclass`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- 使用表AUTO_INCREMENT `dc_users`
--
ALTER TABLE `dc_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
