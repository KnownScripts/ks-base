


local apartments = [[CREATE TABLE IF NOT EXISTS `apartments` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `name` varchar(255) DEFAULT NULL,
    `type` varchar(255) DEFAULT NULL,
    `label` varchar(255) DEFAULT NULL,
    `citizenid` varchar(255) DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `citizenid` (`citizenid`),
    KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=632 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;]]
--MySQL.query(apartments)

local bank_accounts = [[CREATE TABLE IF NOT EXISTS `bank_accounts` (
    `record_id` bigint(255) NOT NULL AUTO_INCREMENT,
    `citizenid` varchar(250) DEFAULT NULL,
    `business` varchar(50) DEFAULT NULL,
    `businessid` int(11) DEFAULT NULL,
    `gangid` varchar(50) DEFAULT NULL,
    `amount` bigint(255) NOT NULL DEFAULT 0,
    `account_type` enum('Current','Savings','business','Gang') NOT NULL DEFAULT 'Current',
    PRIMARY KEY (`record_id`),
    UNIQUE KEY `citizenid` (`citizenid`),
    KEY `business` (`business`),
    KEY `businessid` (`businessid`),
    KEY `gangid` (`gangid`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;]]

--MySQL.query(bank_accounts)

local bans = [[CREATE TABLE IF NOT EXISTS `bans` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `name` varchar(50) DEFAULT NULL,
    `license` varchar(50) DEFAULT NULL,
    `discord` varchar(50) DEFAULT NULL,
    `ip` varchar(50) DEFAULT NULL,
    `reason` text DEFAULT NULL,
    `expire` int(11) DEFAULT NULL,
    `bannedby` varchar(255) NOT NULL DEFAULT 'LeBanhammer',
    PRIMARY KEY (`id`),
    KEY `license` (`license`),
    KEY `discord` (`discord`),
    KEY `ip` (`ip`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;]]

--MySQL.query(bans)

local player_contacts = [[CREATE TABLE IF NOT EXISTS `player_contacts` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `citizenid` varchar(50) DEFAULT NULL,
    `name` varchar(50) DEFAULT NULL,
    `number` varchar(50) DEFAULT NULL,
    `iban` varchar(50) NOT NULL DEFAULT '0',
    PRIMARY KEY (`id`),
    KEY `citizenid` (`citizenid`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;]]

--MySQL.query(player_contacts)


local players = [[CREATE TABLE IF NOT EXISTS `players` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `citizenid` varchar(50) NOT NULL,
    `cid` int(11) DEFAULT NULL,
    `license` varchar(255) NOT NULL,
    `name` varchar(255) NOT NULL,
    `money` text NOT NULL,
    `charinfo` text DEFAULT NULL,
    `job` text NOT NULL,
    `gang` text DEFAULT NULL,
    `position` text NOT NULL,
    `metadata` text NOT NULL,
    `inventory` longtext DEFAULT NULL,
    `last_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
    `skills` longtext DEFAULT NULL,
    `cryptos` bigint(20) DEFAULT NULL,
    PRIMARY KEY (`citizenid`),
    KEY `id` (`id`),
    KEY `last_updated` (`last_updated`),
    KEY `license` (`license`)
)ENGINE=InnoDB AUTO_INCREMENT=2941 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;]]
--MySQL.query(players)

local ox_doorlock = [[CREATE TABLE IF NOT EXISTS `ox_doorlock` (
    `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
    `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;]]
--MySQL.query(ox_doorlock)

local oxinsert = [[INSERT INTO `ox_doorlock` (`id`, `name`, `data`) VALUES
(32, 'gabz_mrpd 1', '{"maxDistance":2,"state":0,"groups":{"police":0,"offpolice":0},"lockpick":true,"doors":[{"heading":90,"coords":{"x":434.744384765625,"y":-983.078125,"z":30.81529998779297},"model":-1547307588},{"heading":270,"coords":{"x":434.744384765625,"y":-980.755615234375,"z":30.81529998779297},"model":-1547307588}],"coords":{"x":434.744384765625,"y":-981.9168701171875,"z":30.81529998779297},"hideUi":false}'),
(33, 'gabz_mrpd 2', '{"maxDistance":2,"state":1,"groups":{"police":0,"offpolice":0},"doors":[{"heading":180,"coords":{"x":458.2087097167969,"y":-972.2542724609375,"z":30.81529998779297},"model":-1547307588},{"heading":0,"coords":{"x":455.8861999511719,"y":-972.2542724609375,"z":30.81529998779297},"model":-1547307588}],"coords":{"x":457.0474548339844,"y":-972.2542724609375,"z":30.81529998779297},"hideUi":false}'),
(34, 'gabz_mrpd 3', '{"maxDistance":2,"state":1,"groups":{"police":0,"offpolice":0},"doors":[{"heading":0,"coords":{"x":440.73919677734377,"y":-998.7462158203125,"z":30.81529998779297},"model":-1547307588},{"heading":180,"coords":{"x":443.0617980957031,"y":-998.7462158203125,"z":30.81529998779297},"model":-1547307588}],"coords":{"x":441.9005126953125,"y":-998.7462158203125,"z":30.81529998779297},"hideUi":false}'),
(35, 'gabz_mrpd 4', '{"coords":{"x":441.1300048828125,"y":-977.9299926757813,"z":30.82319068908691},"state":1,"model":-1406685646,"heading":0,"groups":{"police":0},"maxDistance":2,"hideUi":false}'),
(36, 'gabz_mrpd 5', '{"coords":{"x":440.5201110839844,"y":-986.2335205078125,"z":30.82319068908691},"state":1,"model":-96679321,"heading":180,"groups":{"police":0,"offpolice":0},"maxDistance":2,"hideUi":false}'),
(37, 'gabz_mrpd 6', '{"coords":{"x":464.1590881347656,"y":-974.6655883789063,"z":26.37070083618164},"state":1,"model":1830360419,"heading":270,"groups":{"police":0,"offpolice":0},"maxDistance":2,"hideUi":false}'),
(38, 'gabz_mrpd 7', '{"coords":{"x":464.1565856933594,"y":-997.50927734375,"z":26.37070083618164},"state":1,"model":1830360419,"heading":90,"groups":{"police":0,"offpolice":0},"maxDistance":2,"hideUi":false}'),
(39, 'gabz_mrpd 8', '{"coords":{"x":431.4118957519531,"y":-1000.77197265625,"z":26.69660949707031},"state":1,"model":2130672747,"heading":0,"groups":{"police":0,"offpolice":0},"auto":true,"lockSound":"button-remote","maxDistance":6,"hideUi":false}'),
(40, 'gabz_mrpd 9', '{"coords":{"x":452.3005065917969,"y":-1000.77197265625,"z":26.69660949707031},"state":1,"model":2130672747,"heading":0,"groups":{"police":0,"offpolice":0},"auto":true,"lockSound":"button-remote","maxDistance":6,"hideUi":false}'),
(41, 'gabz_mrpd 10', '{"coords":{"x":488.8948059082031,"y":-1017.2119750976563,"z":27.14934921264648},"state":1,"model":-1603817716,"heading":90,"groups":{"police":0,"offpolice":0},"auto":true,"lockSound":"button-remote","maxDistance":6,"hideUi":false}'),
(42, 'gabz_mrpd 11', '{"maxDistance":2,"state":1,"groups":{"police":0,"offpolice":0},"doors":[{"heading":0,"coords":{"x":467.36859130859377,"y":-1014.406005859375,"z":26.48381996154785},"model":-692649124},{"heading":180,"coords":{"x":469.7742919921875,"y":-1014.406005859375,"z":26.48381996154785},"model":-692649124}],"coords":{"x":468.5714416503906,"y":-1014.406005859375,"z":26.48381996154785},"hideUi":false}'),
(43, 'gabz_mrpd 12', '{"coords":{"x":475.9538879394531,"y":-1010.8189697265625,"z":26.40638923645019},"state":1,"model":-1406685646,"heading":180,"groups":{"police":0},"maxDistance":2,"hideUi":false}'),
(44, 'gabz_mrpd 13', '{"coords":{"x":476.6156921386719,"y":-1008.875,"z":26.48004913330078},"unlockSound":"metallic-creak","state":1,"model":-53345114,"heading":270,"groups":{"police":0},"maxDistance":2,"lockSound":"metal-locker","hideUi":false}'),
(45, 'gabz_mrpd 14', '{"coords":{"x":481.0083923339844,"y":-1004.1179809570313,"z":26.48004913330078},"unlockSound":"metallic-creak","state":1,"model":-53345114,"heading":180,"groups":{"police":0},"maxDistance":2,"lockSound":"metal-locker","hideUi":false}'),
(46, 'gabz_mrpd 15', '{"coords":{"x":477.91259765625,"y":-1012.1890258789063,"z":26.48004913330078},"unlockSound":"metallic-creak","state":1,"model":-53345114,"heading":0,"groups":{"police":0},"maxDistance":2,"lockSound":"metal-locker","hideUi":false}'),
(47, 'gabz_mrpd 16', '{"coords":{"x":480.9128112792969,"y":-1012.1890258789063,"z":26.48004913330078},"unlockSound":"metallic-creak","state":1,"model":-53345114,"heading":0,"groups":{"police":0},"maxDistance":2,"lockSound":"metal-locker","hideUi":false}'),
(48, 'gabz_mrpd 17', '{"coords":{"x":483.9126892089844,"y":-1012.1890258789063,"z":26.48004913330078},"unlockSound":"metallic-creak","state":1,"model":-53345114,"heading":0,"groups":{"police":0},"maxDistance":2,"lockSound":"metal-locker","hideUi":false}'),
(49, 'gabz_mrpd 18', '{"coords":{"x":486.9130859375,"y":-1012.1890258789063,"z":26.48004913330078},"unlockSound":"metallic-creak","state":1,"model":-53345114,"heading":0,"groups":{"police":0},"maxDistance":2,"lockSound":"metal-locker","hideUi":false}'),
(50, 'gabz_mrpd 19', '{"coords":{"x":484.1763916015625,"y":-1007.7340087890625,"z":26.48004913330078},"unlockSound":"metallic-creak","state":1,"model":-53345114,"heading":180,"groups":{"police":0},"maxDistance":2,"lockSound":"metal-locker","hideUi":false}'),
(51, 'gabz_mrpd 20', '{"coords":{"x":479.05999755859377,"y":-1003.1729736328125,"z":26.4064998626709},"state":1,"model":-288803980,"heading":90,"groups":{"police":0},"maxDistance":2,"hideUi":false}'),
(52, 'gabz_mrpd 21', '{"coords":{"x":482.6694030761719,"y":-983.98681640625,"z":26.40547943115234},"state":1,"model":-1406685646,"heading":270,"groups":{"police":0},"maxDistance":2,"hideUi":false}'),
(53, 'gabz_mrpd 22', '{"coords":{"x":482.67010498046877,"y":-987.5792236328125,"z":26.40547943115234},"state":1,"model":-1406685646,"heading":270,"groups":{"police":0},"maxDistance":2,"hideUi":false}'),
(54, 'gabz_mrpd 23', '{"coords":{"x":482.6698913574219,"y":-992.299072265625,"z":26.40547943115234},"state":1,"model":-1406685646,"heading":270,"groups":{"police":0},"maxDistance":2,"hideUi":false}'),
(55, 'gabz_mrpd 24', '{"coords":{"x":482.6702880859375,"y":-995.728515625,"z":26.40547943115234},"state":1,"model":-1406685646,"heading":270,"groups":{"police":0},"maxDistance":2,"hideUi":false}'),
(56, 'gabz_mrpd 25', '{"coords":{"x":475.8323059082031,"y":-990.48388671875,"z":26.40547943115234},"state":1,"model":-692649124,"heading":135,"groups":{"police":0},"maxDistance":2,"hideUi":false}'),
(57, 'gabz_mrpd 26', '{"coords":{"x":479.7507019042969,"y":-999.6290283203125,"z":30.78927040100097},"state":1,"model":-692649124,"heading":90,"groups":{"police":0},"maxDistance":2,"hideUi":false}'),
(58, 'gabz_mrpd 27', '{"coords":{"x":487.43780517578127,"y":-1000.1890258789063,"z":30.7869701385498},"state":1,"model":-692649124,"heading":181,"groups":{"police":0},"maxDistance":2,"hideUi":false}'),
(59, 'gabz_mrpd 28', '{"maxDistance":2,"state":1,"groups":{"police":0},"doors":[{"heading":0,"coords":{"x":485.6133117675781,"y":-1002.9019775390625,"z":30.7869701385498},"model":-692649124},{"heading":180,"coords":{"x":488.0184020996094,"y":-1002.9019775390625,"z":30.7869701385498},"model":-692649124}],"coords":{"x":486.81585693359377,"y":-1002.9019775390625,"z":30.7869701385498},"hideUi":false}'),
(60, 'gabz_mrpd 29', '{"coords":{"x":464.30859375,"y":-984.5283813476563,"z":43.771240234375},"state":1,"model":-692649124,"heading":90,"groups":{"police":0},"auto":false,"maxDistance":2,"lockpick":false,"hideUi":false}'),
(61, 'gabz_mrpd 30', '{"coords":{"x":410.0257873535156,"y":-1024.219970703125,"z":29.22019958496093},"state":1,"model":-1635161509,"heading":270,"groups":{"police":0},"lockSound":"button-remote","auto":true,"maxDistance":6,"lockpick":false,"hideUi":false}'),
(62, 'gabz_mrpd 31', '{"coords":{"x":410.0257873535156,"y":-1024.2259521484376,"z":29.2202205657959},"state":1,"model":-1868050792,"heading":270,"groups":{"police":0},"lockSound":"button-remote","auto":true,"maxDistance":6,"lockpick":false,"hideUi":false}'),
(99, 'VAGOS', '{"heading":320,"groups":{"vagos":0},"model":1349340477,"doors":false,"maxDistance":2,"coords":{"x":335.8915100097656,"y":-2020.88232421875,"z":22.52330780029297},"state":1}'),
(100, 'vagos2', '{"heading":320,"groups":{"vagos":0},"model":1349340477,"doors":false,"maxDistance":2,"coords":{"x":332.1996154785156,"y":-2017.78466796875,"z":22.5233097076416},"state":1}'),
(101, 'vagos3', '{"heading":320,"groups":{"vagos":0},"model":1349340477,"doors":false,"maxDistance":2,"coords":{"x":344.5946350097656,"y":-2028.1844482421876,"z":22.52330589294433},"state":1}'),
(102, 'vagos4', '{"heading":140,"groups":{"vagos":0},"model":1349340477,"doors":false,"maxDistance":2,"coords":{"x":344.1902770996094,"y":-2027.78662109375,"z":22.52330780029297},"state":1}'),
(103, 'doorlock5', '{"heading":140,"groups":{"vagos":0},"model":1349340477,"doors":false,"maxDistance":2,"coords":{"x":352.9150085449219,"y":-2035.1082763671876,"z":22.52330780029297},"state":1}'),
(105, 'vagos', '{"heading":50,"groups":{"vagos":0},"model":-763801615,"doors":false,"maxDistance":2,"coords":{"x":362.34979248046877,"y":-2039.894775390625,"z":21.4039134979248},"state":1}'),
(106, 'vagos6', '{"heading":320,"groups":{"vagos":0},"model":1349340477,"doors":false,"maxDistance":2,"coords":{"x":360.6263427734375,"y":-2041.63720703125,"z":22.52330589294433},"state":1}'),
(107, 'vagos7', '{"heading":320,"groups":{"vagos":0},"model":1349340477,"doors":false,"maxDistance":2,"coords":{"x":364.3177795410156,"y":-2044.73486328125,"z":22.5233097076416},"state":1}'),
(108, 'vagos8', '{"heading":230,"groups":{"vagos":0},"model":1349340477,"doors":false,"maxDistance":2,"coords":{"x":371.4423522949219,"y":-2039.980712890625,"z":22.52330780029297},"state":1}'),
(109, 'vagos9', '{"heading":230,"groups":{"vagos":0},"model":1349340477,"doors":false,"maxDistance":2,"coords":{"x":336.539794921875,"y":-2010.6934814453126,"z":22.52330780029297},"state":1}'),
(110, 'vagos10', '{"heading":320,"groups":{"vagos":0},"model":1349340477,"doors":false,"maxDistance":2,"coords":{"x":344.6478576660156,"y":-2015.490234375,"z":22.52330780029297},"state":1}'),
(111, 'vagos11', '{"heading":320,"groups":{"vagos":0},"model":1349340477,"doors":false,"maxDistance":2,"coords":{"x":352.9979553222656,"y":-2022.49658203125,"z":22.52330780029297},"state":1}'),
(113, 'vagos12', '{"heading":320,"groups":{"vagos":0},"model":1349340477,"doors":false,"maxDistance":2,"coords":{"x":361.3453063964844,"y":-2029.5067138671876,"z":22.5233039855957},"state":1}'),
(114, 'vagos13', '{"heading":140,"groups":{"vagos":0},"model":1349340477,"doors":false,"maxDistance":2,"coords":{"x":357.0213623046875,"y":-2025.8192138671876,"z":22.52330589294433},"state":1}'),
(115, 'vagos14', '{"heading":140,"groups":{"vagos":0},"model":1349340477,"doors":false,"maxDistance":2,"coords":{"x":365.3739929199219,"y":-2032.822998046875,"z":22.52330589294433},"state":1}'),
(116, 'ballas', '{"heading":21,"groups":{"ballas":0},"model":23523831,"doors":false,"maxDistance":2,"coords":{"x":115.03984832763672,"y":-1961.363037109375,"z":21.422700881958},"state":1}'),
(117, 'ballas2', '{"state":1,"groups":{"ballas":0},"doors":[{"model":1184805384,"heading":22,"coords":{"x":109.13619232177735,"y":-1975.4603271484376,"z":21.16780471801757}},{"model":1947176169,"heading":202,"coords":{"x":106.51920318603516,"y":-1976.4456787109376,"z":21.16915512084961}}],"maxDistance":2,"coords":{"x":107.82769775390625,"y":-1975.9530029296876,"z":21.16847991943359}}'),
(118, 'ballas3', '{"heading":202,"groups":{"ballas":0},"model":1122314606,"doors":false,"maxDistance":2,"coords":{"x":104.6253890991211,"y":-1977.140869140625,"z":21.06142807006836},"state":1}'),
(119, 'ballas4', '{"heading":292,"groups":{"ballas":0},"model":-1730259609,"doors":false,"maxDistance":2,"coords":{"x":111.43911743164063,"y":-1979.2913818359376,"z":21.0599422454834},"state":1}'),
(120, 'ballas5', '{"heading":21,"groups":{"ballas":0},"model":-1912632538,"doors":false,"maxDistance":2,"coords":{"x":113.9327392578125,"y":-1973.5006103515626,"z":21.42377662658691},"state":1}'),
(121, 'ballas', '{"state":1,"groups":{"ballas":0},"doors":[{"model":989957872,"heading":201,"coords":{"x":117.09940338134766,"y":-1974.3480224609376,"z":21.41925621032715}},{"model":-204046185,"heading":21,"coords":{"x":119.16741943359375,"y":-1973.637939453125,"z":21.41925621032715}}],"maxDistance":2,"coords":{"x":118.13340759277344,"y":-1973.992919921875,"z":21.41925621032715}}'),
(122, 'ballas6', '{"heading":85,"groups":{"ballas":0},"model":1122314606,"doors":false,"maxDistance":2,"coords":{"x":105.95836639404297,"y":-1963.830322265625,"z":20.94058990478515},"state":1}'),
(123, 'ballas6', '{"heading":50,"groups":{"ballas":0},"model":-1989765534,"doors":false,"maxDistance":2,"coords":{"x":-0.7150262594223,"y":-1824.217529296875,"z":29.71616744995117},"state":1}'),
(124, 'lostmc', '{"heading":148,"groups":{"lostmc":0},"model":-930593859,"doors":false,"maxDistance":2,"coords":{"x":956.4541015625,"y":-137.84088134765626,"z":73.57489013671875},"state":1}'),
(125, 'lostmc2', '{"heading":239,"groups":{"lostmc":0},"model":-197537718,"doors":false,"maxDistance":2,"coords":{"x":982.387451171875,"y":-125.37104797363281,"z":74.99313354492188},"state":1}');]]
--MySQL.query(oxinsert)

local p_chat = [[CREATE TABLE IF NOT EXISTS `phone_chatrooms` (
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
    `room_code` varchar(10) NOT NULL,
    `room_name` varchar(15) NOT NULL,
    `room_owner_id` varchar(20) DEFAULT NULL,
    `room_owner_name` varchar(60) DEFAULT NULL,
    `room_members` text DEFAULT '{}',
    `room_pin` varchar(50) DEFAULT NULL,
    `unpaid_balance` decimal(10,2) DEFAULT 0.00,
    `is_pinned` tinyint(1) DEFAULT 0,
    `created` datetime DEFAULT current_timestamp(),
    PRIMARY KEY (`id`),
    UNIQUE KEY `room_code` (`room_code`)
)ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;]]
--MySQL.query(p_chat)

local p_messages2 = [[CREATE TABLE IF NOT EXISTS `phone_chatroom_messages` (
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
    `room_id` int(10) unsigned DEFAULT NULL,
    `member_id` varchar(20) DEFAULT NULL,
    `member_name` varchar(50) DEFAULT NULL,
    `message` text NOT NULL,
    `is_pinned` tinyint(1) DEFAULT 0,
    `created` datetime DEFAULT current_timestamp(),
    PRIMARY KEY (`id`)
)ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;]]

--MySQL.query(p_messages2)

local p_gallery = [[CREATE TABLE IF NOT EXISTS `phone_gallery` (
    `citizenid` varchar(255) NOT NULL,
    `image` varchar(255) NOT NULL,
    `date` timestamp NULL DEFAULT current_timestamp()
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;]]

--MySQL.query(p_gallery)

local p_invoices = [[CREATE TABLE IF NOT EXISTS `phone_invoices` (
    `id` int(10) NOT NULL AUTO_INCREMENT,
    `citizenid` varchar(50) DEFAULT NULL,
    `amount` int(11) NOT NULL DEFAULT 0,
    `society` tinytext DEFAULT NULL,
    `sender` varchar(50) DEFAULT NULL,
    `sendercitizenid` varchar(50) DEFAULT NULL,
    `time` int(11) DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `citizenid` (`citizenid`)
)ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;]]
--MySQL.query(p_invoices)


local p_messages = [[CREATE TABLE IF NOT EXISTS `phone_messages` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `citizenid` varchar(50) DEFAULT NULL,
    `number` varchar(50) DEFAULT NULL,
    `messages` text DEFAULT NULL,
    `time` int(11) DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `citizenid` (`citizenid`),
    KEY `number` (`number`)
)ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;]]
--MySQL.query(p_messages)


local p_notes = [[CREATE TABLE IF NOT EXISTS `phone_note` (
    `id` int(10) NOT NULL AUTO_INCREMENT,
    `citizenid` varchar(50) DEFAULT NULL,
    `title` text DEFAULT NULL,
    `text` text DEFAULT NULL,
    `lastupdate` varchar(50) DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `citizenid` (`citizenid`)
)ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;]]
--MySQL.query(p_notes)

local p_tweets = [[CREATE TABLE IF NOT EXISTS `phone_tweets` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `citizenid` varchar(50) DEFAULT NULL,
    `firstName` varchar(25) DEFAULT NULL,
    `lastName` varchar(25) DEFAULT NULL,
    `type` varchar(25) DEFAULT NULL,
    `message` text DEFAULT NULL,
    `url` text DEFAULT NULL,
    `tweetId` varchar(25) NOT NULL,
    `date` datetime DEFAULT current_timestamp(),
    PRIMARY KEY (`id`),
    KEY `citizenid` (`citizenid`)
)ENGINE=InnoDB AUTO_INCREMENT=291 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;]]
--MySQL.query(p_tweets)


local p_yp = [[CREATE TABLE IF NOT EXISTS `phone_yp` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `name` varchar(50) DEFAULT NULL,
    `advert` varchar(500) DEFAULT NULL,
    `phoneNumber` varchar(50) DEFAULT NULL,
    PRIMARY KEY (`id`)
)ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;]]
--MySQL.query(p_yp)


local pl_gallery = [[CREATE TABLE IF NOT EXISTS `player_gallery` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `identifier` text NOT NULL,
    `resim` text NOT NULL,
    `data` text NOT NULL,
    `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
    PRIMARY KEY (`id`) USING BTREE
)ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;]]
--MySQL.query(pl_gallery)


local pl_houses = [[CREATE TABLE IF NOT EXISTS `player_houses` (
    `house` varchar(50) NOT NULL,
    `identifier` varchar(50) DEFAULT NULL,
    `citizenid` varchar(50) DEFAULT NULL,
    `insideId` varchar(50) DEFAULT NULL,
    `keyholders` text DEFAULT NULL,
    `decorations` text DEFAULT NULL,
    `stash` text DEFAULT NULL,
    `outfit` text DEFAULT NULL,
    `logout` text DEFAULT NULL,
    `decorateStash` text DEFAULT NULL,
    `charge` text DEFAULT NULL,
    `credit` varchar(50) DEFAULT NULL,
    `creditPrice` varchar(50) DEFAULT NULL,
    PRIMARY KEY (`house`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;]]
--MySQL.query(pl_houses)


local pl_mails = [[CREATE TABLE IF NOT EXISTS `player_mails` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `citizenid` varchar(50) DEFAULT NULL,
    `sender` varchar(50) DEFAULT NULL,
    `subject` varchar(50) DEFAULT NULL,
    `message` text DEFAULT NULL,
    `read` tinyint(4) DEFAULT 0,
    `mailid` int(11) DEFAULT NULL,
    `date` timestamp NULL DEFAULT current_timestamp(),
    `button` text DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;]]
--MySQL.query(pl_mails)

local pl_outfits = [[CREATE TABLE IF NOT EXISTS `player_outfits` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `citizenid` varchar(50) DEFAULT NULL,
    `outfitname` varchar(50) NOT NULL DEFAULT '0',
    `model` varchar(50) DEFAULT NULL,
    `props` varchar(1000) DEFAULT NULL,
    `components` varchar(1500) DEFAULT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `citizenid_outfitname_model` (`citizenid`,`outfitname`,`model`),
    KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;]]
--MySQL.query(pl_outfits)

local pl_vehicles = [[CREATE TABLE IF NOT EXISTS `player_vehicles` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `license` varchar(50) DEFAULT NULL,
    `citizenid` varchar(50) DEFAULT NULL,
    `vehicle` varchar(50) DEFAULT NULL,
    `hash` varchar(50) DEFAULT NULL,
    `mods` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
    `plate` varchar(50) NOT NULL,
    `fakeplate` varchar(50) DEFAULT NULL,
    `garage` varchar(50) DEFAULT NULL,
    `fuel` int(11) DEFAULT 100,
    `engine` float DEFAULT 1000,
    `body` float DEFAULT 1000,
    `state` int(11) DEFAULT 1,
    `depotprice` int(11) NOT NULL DEFAULT 0,
    `drivingdistance` int(50) DEFAULT NULL,
    `status` text DEFAULT NULL,
    `glovebox` longtext DEFAULT NULL,
    `trunk` longtext DEFAULT NULL,
    `wheelfit` longtext DEFAULT NULL,
    `traveldistance` bigint(20) DEFAULT NULL,
    `harness` longtext DEFAULT NULL,
    `nosColour` longtext DEFAULT NULL,
    `hasNitro` longtext DEFAULT NULL,
    `noslevel` varchar(50) DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `plate` (`plate`),
    KEY `citizenid` (`citizenid`),
    KEY `license` (`license`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;]]
--MySQL.query(pl_vehicles)

local race_tracks = [[CREATE TABLE IF NOT EXISTS `race_tracks` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `name` varchar(50) NOT NULL,
    `checkpoints` text DEFAULT NULL,
    `records` text DEFAULT NULL,
    `creator` varchar(50) DEFAULT NULL,
    `distance` int(11) DEFAULT NULL,
    `raceid` varchar(50) DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;]]
--MySQL.query(race_tracks)




if QBConfig.Database.DB then
    print('DB INSERTION')
    MySQL.query(race_tracks)
    MySQL.query(pl_vehicles)
    MySQL.query(pl_outfits)
    MySQL.query(pl_mails)
    MySQL.query(pl_houses)
    MySQL.query(pl_gallery)
    MySQL.query(p_yp)
    MySQL.query(p_tweets)
    MySQL.query(p_notes)
    MySQL.query(p_messages)
    MySQL.query(p_invoices)
    MySQL.query(p_gallery)
    MySQL.query(p_gallery)
    MySQL.query(p_messages2)
    MySQL.query(p_chat)
    MySQL.query(ox_doorlock)
    MySQL.query(oxinsert)
    MySQL.query(players)
    MySQL.query(player_contacts)
    MySQL.query(bans)
    MySQL.query(bank_accounts)
    MySQL.query(apartments)
    print('DB INSERTION COMPLETED!!')




else
    print("DATA INSERTION DISABLED")
end






