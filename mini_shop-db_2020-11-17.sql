
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";



CREATE TABLE `bill` (
  `bill_sn` mediumint(8) UNSIGNED NOT NULL COMMENT '帳單編號',
  `user_sn` mediumint(8) UNSIGNED NOT NULL COMMENT '購買人',
  `bill_total` mediumint(8) UNSIGNED NOT NULL COMMENT '總金額',
  `bill_date` datetime NOT NULL COMMENT '購買日期',
  `bill_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '處理狀態'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `bill` (`bill_sn`, `user_sn`, `bill_total`, `bill_date`, `bill_status`) VALUES
(1, 1, 6500, '2020-11-10 07:41:56', '已出貨'),
(2, 1, 5400, '2020-11-10 08:04:18', NULL),
(3, 1, 6500, '2020-11-10 08:13:55', NULL),
(4, 1, 5400, '2020-11-10 08:29:16', NULL),
(5, 1, 5400, '2020-11-17 07:26:18', '已出貨'),
(6, 1, 10300, '2020-11-17 07:27:37', NULL),
(7, 1, 5400, '2020-11-17 07:30:39', NULL),
(8, 1, 11900, '2020-11-17 07:58:57', NULL);


CREATE TABLE `bill_detail` (
  `bill_sn` mediumint(8) UNSIGNED NOT NULL COMMENT '帳單編號',
  `goods_sn` mediumint(8) UNSIGNED NOT NULL COMMENT '商品編號',
  `goods_amount` tinyint(3) UNSIGNED NOT NULL COMMENT '購買數量',
  `goods_total` mediumint(8) UNSIGNED NOT NULL COMMENT '小計'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



INSERT INTO `bill_detail` (`bill_sn`, `goods_sn`, `goods_amount`, `goods_total`) VALUES
(1, 6, 1, 6500),
(2, 5, 1, 5400),
(3, 6, 1, 6500),
(4, 5, 1, 5400),
(5, 5, 1, 5400),
(6, 4, 1, 3800),
(6, 6, 1, 6500),
(7, 5, 1, 5400),
(8, 5, 1, 5400),
(8, 6, 1, 6500);


CREATE TABLE `goods` (
  `goods_sn` mediumint(8) UNSIGNED NOT NULL COMMENT '商品編號',
  `goods_title` varchar(255) NOT NULL COMMENT '商品名稱',
  `goods_content` text NOT NULL COMMENT '商品說明',
  `goods_price` mediumint(8) UNSIGNED NOT NULL COMMENT '商品價錢',
  `goods_counter` smallint(5) UNSIGNED NOT NULL COMMENT '人氣',
  `goods_date` datetime NOT NULL COMMENT '上架日期'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


INSERT INTO `goods` (`goods_sn`, `goods_title`, `goods_content`, `goods_price`, `goods_counter`, `goods_date`) VALUES
(1, 'Nike x sacai VaporWaffle ', '<p>這雙鞋款專為夢想家而打造&mdash;&mdash;那些瞭解過去的重要性並積極打造美好未來的有志之士。Nike x sacai VaporWaffle 結合創新 Vaporfly 與 1983 年經典款 Pegasus，將 Nike 跑步的過去和未來巧妙融合，加倍突顯細節。穩固好穿的鞋面搭配經典鬆餅紋外底，著感舒適貼合。sacai 聯名設計，大膽展現前衛造型。</p>\r\n', 5800, 1, '2020-11-10 07:35:29'),
(2, '女款 Zoom Double Stacked', '<p>單層 Zoom Air 能提供超舒適的四處奔馳感；而雙層 Zoom 搭配泡棉鞋墊所帶來的舒適境界更是不思議。Double Stacked 的設計哲學就是以舒適打造風格，鞋跟和前足可見式的 Zoom 緩震機能層、未完成的 TPU Swoosh 設計，以及通風網布鞋面上的裝飾性縫線，為這款 Pink Blast 配色增添摩登 DIY 風情。誰說叛逆風格和舒適著感無法兩全其美？</p>\r\n', 7200, 1, '2020-11-10 07:38:27'),
(3, 'Air Max 97 Halloween', '<p>Nike Air Max 97 以駭人的萬聖節配色和滿版黏稠感細節，重新演繹經典跑鞋。Max Air 緩震系統搭配夜光外底，為 90 年代超人氣鞋款換上毛骨悚然的全新風貌。</p>\r\n', 5800, 1, '2020-11-10 07:39:14'),
(4, '女款 Air Force 1 Crater Platinum', '<p>Nike Air Force 1 Crater 結合經典籃球風格與環境永續性設計，每隻鞋採用至少 20% 的再生材質，為經典籃球鞋款帶來摩登演繹。鞋尖採用半透明布質，隱約露出下方鮮明的混合再生材質，為每隻鞋打造獨特造型。鞋底 Nike Grind 橡膠裝飾，以及採用再生材質打造而成的舒適柔軟 Crater 泡棉中底，增添一抹摩登時尚感。穿上這雙鞋款，脫穎而出。</p>\r\n', 3800, 2, '2020-11-10 07:40:01'),
(5, 'Air Zoom-Type Hyper Pink', '<p>N.354 系列為出人意表的點子打造實驗空間，展現 Nike 創新的特質。這個產品系列以「-Type」的形式來命名，並持續創作原型風格版型，傳達設計上的創新。前足可見式 Zoom Air 氣墊以及和中底等長的 TPU 鞋底墊片是技術上的新嘗試；較小的細節處也能看見設計師的手筆，如標誌的處理方式、能提升透氣性的重點沖孔設計，以及能帶來支撐效果的可見式縫線。</p>\r\n', 5400, 6, '2020-11-10 07:40:46'),
(6, '女款 Zoom Double Stacked', '<p>單層 Zoom Air 能提供超舒適的四處奔馳感；而雙層 Zoom 搭配泡棉鞋墊所帶來的舒適境界更是不思議。Double Stacked 的設計哲學就是以舒適打造風格，鞋跟和前足可見式的 Zoom 緩震機能層、未經修飾的 TPU Swoosh 設計，以及通風網布鞋面上的裝飾性縫線，為這款 Barely Volt 配色增添摩登 DIY 風情。誰說叛逆風格和舒適著感無法兩全其美？</p>\r\n', 6500, 4, '2020-11-10 07:41:38');


CREATE TABLE `users` (
  `user_sn` mediumint(8) UNSIGNED NOT NULL COMMENT '使用者編號',
  `user_name` varchar(255) NOT NULL COMMENT '使用者姓名',
  `user_id` varchar(255) NOT NULL COMMENT '使用者帳號',
  `user_passwd` varchar(255) NOT NULL COMMENT '使用者密碼',
  `user_email` varchar(255) NOT NULL COMMENT '使用者信箱',
  `user_sex` enum('先生','女士') NOT NULL COMMENT '使用者性別',
  `user_tel` varchar(255) NOT NULL COMMENT '使用者電話',
  `user_zip` varchar(255) NOT NULL COMMENT '使用者郵遞區號',
  `user_county` varchar(255) NOT NULL COMMENT '使用者縣市',
  `user_district` varchar(255) NOT NULL COMMENT '使用者鄉鎮市區',
  `user_address` varchar(255) NOT NULL COMMENT '使用者地址'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



INSERT INTO `users` (`user_sn`, `user_name`, `user_id`, `user_passwd`, `user_email`, `user_sex`, `user_tel`, `user_zip`, `user_county`, `user_district`, `user_address`) VALUES
(1, 'Yang', '107b33580', '$2y$10$Uiihniu7j7TlaJH311mxzu4GK/ee9dj8ZPG9FDBaP3kxoMXez1hrC', '107b33580@mailst.cjcu.edu.tw', '先生', '0958123456', '718', '台南市', '關廟區', '北勢里');

ALTER TABLE `bill`
  ADD PRIMARY KEY (`bill_sn`);


ALTER TABLE `bill_detail`
  ADD PRIMARY KEY (`bill_sn`,`goods_sn`);


ALTER TABLE `goods`
  ADD PRIMARY KEY (`goods_sn`);


ALTER TABLE `users`
  ADD PRIMARY KEY (`user_sn`),
  ADD UNIQUE KEY `user_id` (`user_id`);


ALTER TABLE `bill`
  MODIFY `bill_sn` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '帳單編號', AUTO_INCREMENT=9;


ALTER TABLE `goods`
  MODIFY `goods_sn` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '商品編號', AUTO_INCREMENT=7;


ALTER TABLE `users`
  MODIFY `user_sn` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '使用者編號', AUTO_INCREMENT=2;
COMMIT;

