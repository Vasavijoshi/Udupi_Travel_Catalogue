-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2025 at 07:56 PM
-- Server version: 9.2.0
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpmyadmin`
--
# CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
# USE `phpmyadmin`;
#
# -- --------------------------------------------------------
#
# --
# -- Table structure for table `pma__bookmark`
# --
#
# CREATE TABLE `pma__bookmark` (
#   `id` int UNSIGNED NOT NULL,
#   `dbase` varchar(255) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
#   `user` varchar(255) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
#   `label` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
#   `query` text COLLATE utf8mb3_bin NOT NULL
# ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Bookmarks';
#
# -- --------------------------------------------------------
#
# --
# -- Table structure for table `pma__central_columns`
# --
#
# CREATE TABLE `pma__central_columns` (
#   `db_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
#   `col_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
#   `col_type` varchar(64) COLLATE utf8mb3_bin NOT NULL,
#   `col_length` text COLLATE utf8mb3_bin,
#   `col_collation` varchar(64) COLLATE utf8mb3_bin NOT NULL,
#   `col_isNull` tinyint(1) NOT NULL,
#   `col_extra` varchar(255) COLLATE utf8mb3_bin DEFAULT '',
#   `col_default` text COLLATE utf8mb3_bin
# ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Central list of columns';
#
# -- --------------------------------------------------------
#
# --
# -- Table structure for table `pma__column_info`
# --
#
# CREATE TABLE `pma__column_info` (
#   `id` int UNSIGNED NOT NULL,
#   `db_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
#   `table_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
#   `column_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
#   `comment` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
#   `mimetype` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
#   `transformation` varchar(255) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
#   `transformation_options` varchar(255) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
#   `input_transformation` varchar(255) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
#   `input_transformation_options` varchar(255) COLLATE utf8mb3_bin NOT NULL DEFAULT ''
# ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Column information for phpMyAdmin';
#
# -- --------------------------------------------------------
#
# --
# -- Table structure for table `pma__designer_settings`
# --
#
# CREATE TABLE `pma__designer_settings` (
#   `username` varchar(64) COLLATE utf8mb3_bin NOT NULL,
#   `settings_data` text COLLATE utf8mb3_bin NOT NULL
# ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Settings related to Designer';
#
# -- --------------------------------------------------------
#
# --
# -- Table structure for table `pma__export_templates`
# --
#
# CREATE TABLE `pma__export_templates` (
#   `id` int UNSIGNED NOT NULL,
#   `username` varchar(64) COLLATE utf8mb3_bin NOT NULL,
#   `export_type` varchar(10) COLLATE utf8mb3_bin NOT NULL,
#   `template_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
#   `template_data` text COLLATE utf8mb3_bin NOT NULL
# ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Saved export templates';
#
# -- --------------------------------------------------------
#
# --
# -- Table structure for table `pma__favorite`
# --
#
# CREATE TABLE `pma__favorite` (
#   `username` varchar(64) COLLATE utf8mb3_bin NOT NULL,
#   `tables` text COLLATE utf8mb3_bin NOT NULL
# ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Favorite tables';
#
# -- --------------------------------------------------------
#
# --
# -- Table structure for table `pma__history`
# --
#
# CREATE TABLE `pma__history` (
#   `id` bigint UNSIGNED NOT NULL,
#   `username` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
#   `db` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
#   `table` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
#   `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
#   `sqlquery` text COLLATE utf8mb3_bin NOT NULL
# ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='SQL history for phpMyAdmin';
#
# -- --------------------------------------------------------
#
# --
# -- Table structure for table `pma__navigationhiding`
# --
#
# CREATE TABLE `pma__navigationhiding` (
#   `username` varchar(64) COLLATE utf8mb3_bin NOT NULL,
#   `item_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
#   `item_type` varchar(64) COLLATE utf8mb3_bin NOT NULL,
#   `db_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
#   `table_name` varchar(64) COLLATE utf8mb3_bin NOT NULL
# ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Hidden items of navigation tree';
#
# -- --------------------------------------------------------
#
# --
# -- Table structure for table `pma__pdf_pages`
# --
#
# CREATE TABLE `pma__pdf_pages` (
#   `db_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
#   `page_nr` int UNSIGNED NOT NULL,
#   `page_descr` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT ''
# ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='PDF relation pages for phpMyAdmin';
#
# -- --------------------------------------------------------
#
# --
# -- Table structure for table `pma__recent`
# --
#
# CREATE TABLE `pma__recent` (
#   `username` varchar(64) COLLATE utf8mb3_bin NOT NULL,
#   `tables` text COLLATE utf8mb3_bin NOT NULL
# ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Recently accessed tables';
#
# --
# -- Dumping data for table `pma__recent`
# --
#
# INSERT INTO `pma__recent` (`username`, `tables`) VALUES
# ('root', '[{\"db\":\"udupi\",\"table\":\"FOOD\"},{\"db\":\"travel_cataloguess\",\"table\":\"taluk\"},{\"db\":\"travel_cataloguess\",\"table\":\"destinations\"}]');
#
# -- --------------------------------------------------------
#
# --
# -- Table structure for table `pma__relation`
# --
#
# CREATE TABLE `pma__relation` (
#   `master_db` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
#   `master_table` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
#   `master_field` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
#   `foreign_db` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
#   `foreign_table` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
#   `foreign_field` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT ''
# ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Relation table';
#
# -- --------------------------------------------------------
#
# --
# -- Table structure for table `pma__savedsearches`
# --
#
# CREATE TABLE `pma__savedsearches` (
#   `id` int UNSIGNED NOT NULL,
#   `username` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
#   `db_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
#   `search_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
#   `search_data` text COLLATE utf8mb3_bin NOT NULL
# ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Saved searches';
#
# -- --------------------------------------------------------
#
# --
# -- Table structure for table `pma__table_coords`
# --
#
# CREATE TABLE `pma__table_coords` (
#   `db_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
#   `table_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
#   `pdf_page_number` int NOT NULL DEFAULT '0',
#   `x` float UNSIGNED NOT NULL DEFAULT '0',
#   `y` float UNSIGNED NOT NULL DEFAULT '0'
# ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Table coordinates for phpMyAdmin PDF output';
#
# -- --------------------------------------------------------
#
# --
# -- Table structure for table `pma__table_info`
# --
#
# CREATE TABLE `pma__table_info` (
#   `db_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
#   `table_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
#   `display_field` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT ''
# ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Table information for phpMyAdmin';
#
# -- --------------------------------------------------------
#
# --
# -- Table structure for table `pma__table_uiprefs`
# --
#
# CREATE TABLE `pma__table_uiprefs` (
#   `username` varchar(64) COLLATE utf8mb3_bin NOT NULL,
#   `db_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
#   `table_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
#   `prefs` text COLLATE utf8mb3_bin NOT NULL,
#   `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
# ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Tables'' UI preferences';
#
# -- --------------------------------------------------------
#
# --
# -- Table structure for table `pma__tracking`
# --
#
# CREATE TABLE `pma__tracking` (
#   `db_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
#   `table_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
#   `version` int UNSIGNED NOT NULL,
#   `date_created` datetime NOT NULL,
#   `date_updated` datetime NOT NULL,
#   `schema_snapshot` text COLLATE utf8mb3_bin NOT NULL,
#   `schema_sql` text COLLATE utf8mb3_bin,
#   `data_sql` longtext COLLATE utf8mb3_bin,
#   `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8mb3_bin DEFAULT NULL,
#   `tracking_active` int UNSIGNED NOT NULL DEFAULT '1'
# ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Database changes tracking for phpMyAdmin';
#
# -- --------------------------------------------------------
#
# --
# -- Table structure for table `pma__userconfig`
# --
#
# CREATE TABLE `pma__userconfig` (
#   `username` varchar(64) COLLATE utf8mb3_bin NOT NULL,
#   `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
#   `config_data` text COLLATE utf8mb3_bin NOT NULL
# ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='User preferences storage for phpMyAdmin';
#
# --
# -- Dumping data for table `pma__userconfig`
# --
#
# INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
# ('root', '2025-04-20 17:10:23', '{\"Console\\/Mode\":\"collapse\"}');
#
# -- --------------------------------------------------------
#
# --
# -- Table structure for table `pma__usergroups`
# --
#
# CREATE TABLE `pma__usergroups` (
#   `usergroup` varchar(64) COLLATE utf8mb3_bin NOT NULL,
#   `tab` varchar(64) COLLATE utf8mb3_bin NOT NULL,
#   `allowed` enum('Y','N') COLLATE utf8mb3_bin NOT NULL DEFAULT 'N'
# ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='User groups with configured menu items';
#
# -- --------------------------------------------------------
#
# --
# -- Table structure for table `pma__users`
# --
#
# CREATE TABLE `pma__users` (
#   `username` varchar(64) COLLATE utf8mb3_bin NOT NULL,
#   `usergroup` varchar(64) COLLATE utf8mb3_bin NOT NULL
# ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Users and their assignments to user groups';
#
# --
# -- Indexes for dumped tables
# --
#
# --
# -- Indexes for table `pma__bookmark`
# --
# ALTER TABLE `pma__bookmark`
#   ADD PRIMARY KEY (`id`);
#
# --
# -- Indexes for table `pma__central_columns`
# --
# ALTER TABLE `pma__central_columns`
#   ADD PRIMARY KEY (`db_name`,`col_name`);
#
# --
# -- Indexes for table `pma__column_info`
# --
# ALTER TABLE `pma__column_info`
#   ADD PRIMARY KEY (`id`),
#   ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);
#
# --
# -- Indexes for table `pma__designer_settings`
# --
# ALTER TABLE `pma__designer_settings`
#   ADD PRIMARY KEY (`username`);
#
# --
# -- Indexes for table `pma__export_templates`
# --
# ALTER TABLE `pma__export_templates`
#   ADD PRIMARY KEY (`id`),
#   ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);
#
# --
# -- Indexes for table `pma__favorite`
# --
# ALTER TABLE `pma__favorite`
#   ADD PRIMARY KEY (`username`);
#
# --
# -- Indexes for table `pma__history`
# --
# ALTER TABLE `pma__history`
#   ADD PRIMARY KEY (`id`),
#   ADD KEY `username` (`username`,`db`,`table`,`timevalue`);
#
# --
# -- Indexes for table `pma__navigationhiding`
# --
# ALTER TABLE `pma__navigationhiding`
#   ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);
#
# --
# -- Indexes for table `pma__pdf_pages`
# --
# ALTER TABLE `pma__pdf_pages`
#   ADD PRIMARY KEY (`page_nr`),
#   ADD KEY `db_name` (`db_name`);
#
# --
# -- Indexes for table `pma__recent`
# --
# ALTER TABLE `pma__recent`
#   ADD PRIMARY KEY (`username`);
#
# --
# -- Indexes for table `pma__relation`
# --
# ALTER TABLE `pma__relation`
#   ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
#   ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);
#
# --
# -- Indexes for table `pma__savedsearches`
# --
# ALTER TABLE `pma__savedsearches`
#   ADD PRIMARY KEY (`id`),
#   ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);
#
# --
# -- Indexes for table `pma__table_coords`
# --
# ALTER TABLE `pma__table_coords`
#   ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);
#
# --
# -- Indexes for table `pma__table_info`
# --
# ALTER TABLE `pma__table_info`
#   ADD PRIMARY KEY (`db_name`,`table_name`);
#
# --
# -- Indexes for table `pma__table_uiprefs`
# --
# ALTER TABLE `pma__table_uiprefs`
#   ADD PRIMARY KEY (`username`,`db_name`,`table_name`);
#
# --
# -- Indexes for table `pma__tracking`
# --
# ALTER TABLE `pma__tracking`
#   ADD PRIMARY KEY (`db_name`,`table_name`,`version`);
#
# --
# -- Indexes for table `pma__userconfig`
# --
# ALTER TABLE `pma__userconfig`
#   ADD PRIMARY KEY (`username`);
#
# --
# -- Indexes for table `pma__usergroups`
# --
# ALTER TABLE `pma__usergroups`
#   ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);
#
# --
# -- Indexes for table `pma__users`
# --
# ALTER TABLE `pma__users`
#   ADD PRIMARY KEY (`username`,`usergroup`);
#
# --
# -- AUTO_INCREMENT for dumped tables
# --
#
# --
# -- AUTO_INCREMENT for table `pma__bookmark`
# --
# ALTER TABLE `pma__bookmark`
#   MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;
#
# --
# -- AUTO_INCREMENT for table `pma__column_info`
# --
# ALTER TABLE `pma__column_info`
#   MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;
#
# --
# -- AUTO_INCREMENT for table `pma__export_templates`
# --
# ALTER TABLE `pma__export_templates`
#   MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;
#
# --
# -- AUTO_INCREMENT for table `pma__history`
# --
# ALTER TABLE `pma__history`
#   MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
#
# --
# -- AUTO_INCREMENT for table `pma__pdf_pages`
# --
# ALTER TABLE `pma__pdf_pages`
#   MODIFY `page_nr` int UNSIGNED NOT NULL AUTO_INCREMENT;
#
# --
# -- AUTO_INCREMENT for table `pma__savedsearches`
# --
# ALTER TABLE `pma__savedsearches`
#   MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;
# --
# -- Database: `travel_catalogue`
# --
CREATE DATABASE IF NOT EXISTS `travel_catalogue` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
USE `travel_catalogue`;

-- --------------------------------------------------------

--
-- Table structure for table `taluk`
--

CREATE TABLE `taluk` (
  `TalukID` int NOT NULL,
  `TalukName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `taluk`
--
ALTER TABLE `taluk`
  ADD PRIMARY KEY (`TalukID`),
  ADD UNIQUE KEY `TalukName` (`TalukName`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `taluk`
--
ALTER TABLE `taluk`
  MODIFY `TalukID` int NOT NULL AUTO_INCREMENT;
--
-- Database: `travel_catalogues`
--
CREATE DATABASE IF NOT EXISTS `travel_catalogues` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
USE `travel_catalogues`;
--
-- Database: `travel_cataloguess`
--
CREATE DATABASE IF NOT EXISTS `travel_cataloguess` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
USE `travel_cataloguess`;

-- --------------------------------------------------------

--
-- Table structure for table `accommodation`
--

CREATE TABLE `accommodation` (
  `AccommodationID` int NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `Type` varchar(50) NOT NULL,
  `PriceRange` varchar(50) DEFAULT NULL,
  `Amenities` longtext,
  `ContactInfo` varchar(100) DEFAULT NULL,
  `Rating` float DEFAULT NULL,
  `TalukID` int NOT NULL
) ;

--
-- Dumping data for table `accommodation`
--

INSERT INTO `accommodation` (`AccommodationID`, `Name`, `Location`, `Type`, `PriceRange`, `Amenities`, `ContactInfo`, `Rating`, `TalukID`) VALUES
(1, 'Samanvay Boutique hotel', 'main road, next to govinda mantapa kinnimulki udupi', 'lodge', NULL, NULL, '0820 250 0250', 4.5, 1),
(2, 'svarna homestay', 'near bridge,santhekatte nayampally', 'lodge', NULL, NULL, NULL, 4.9, 1),
(3, 'Essentia Manipal Inn', 'near karavali bypass,NH66,udupi', '4 star hotel', NULL, NULL, NULL, 4.5, 1),
(4, 'Hotel udupi inn', 'shiribeedu tower,near city bus stand,thekpete maruthi veethika udupi', 'hotel', NULL, NULL, '91 820 201 0333', 4.4, 1),
(5, 'Collection O Venky\'s Stay Inn', 'K.M.road,opp kalpana theatre,behind kalyan jewellers udupi-manipal', 'hotel', NULL, NULL, '0124 620 1383', 3.3, 1),
(6, 'krishna kausthubha apartment', 'katte acharya marg,kunjibettu,udupi', 'apartment', NULL, NULL, '070222 88141', 4.1, 1),
(7, 'Udupi Yatrinivas', 'sri krishna temple complex,thenkapete maruthi veethika,udupi', 'hotel', NULL, NULL, '-', 4.7, 1),
(8, 'chithara comforts', 'S.NO-114/B2P5,Kavi muddana road,shinibeedu udupi', 'hotel', NULL, NULL, '063663 73353', 4, 1),
(9, 'hotel sri krishna residency', 'badagubet road,thenkapete maruthi,veethika udupi', 'residency', NULL, NULL, '095918 11362', 4.2, 1),
(10, 'hotel durga international', 'badagubet road,thenkapete maruthi,veethika udupi', 'hotel', NULL, NULL, '0820 253 6973', 3.7, 1),
(11, 'hotel southern heritage', 'saiberakatte,shiriyar Village, Brahmavara, Udupi', 'hotel', NULL, NULL, NULL, 4, 6),
(12, 'the postcards on the arabian sea', 'MJPW+558 Trasi proper kundapur .udupi', 'hotel', NULL, NULL, '079995 55222', 3.5, 3),
(13, 'meenakshi inn', 'opp. Adarsh hospital, Brahmagiri, Udupi', 'hotel', NULL, NULL, '094482 86766', 4.7, 1),
(14, 'hotel sharada international', 'NH 17,bananjje ,adi udupi,udupi', 'hotel', NULL, NULL, '080808 05060', 3.5, 1),
(15, 'hotel sri ram residency', 'Head Post Office Rd, Thenkpete, Maruthi Veethika, Udupi', 'hotel', NULL, NULL, '0820 253 0761', 3.9, 1),
(16, 'saadhana comforts lodge', 'Head Post Office Rd, Thenkpete, Maruthi Veethika, Udupi', 'lodge', NULL, NULL, '099019 45833', 3.8, 1),
(17, 'hotel century executive', 'sankrit clg road near parivar sweets,udupi', 'lodge', NULL, NULL, '-', 3.7, 1),
(18, 'sri vidya palace', 'kaadebettu road udupi', 'apartment', NULL, NULL, '-', 4.5, 1),
(19, 'hallimne homestay', 'opposite to marne primary school ,udupi', 'homestay', NULL, NULL, '-', 4.6, 1),
(20, 'tiny waves', 'hungarkatte road,udupi', 'sea view ,villas', NULL, NULL, '098456 70910', 4.7, 1),
(21, 'shri jayadurga boading &lodging', 'indrali railway station udupi', 'lodge', NULL, NULL, '096635 38259', 1.9, 1),
(22, 'atithi homeshay udupi', 'balaji layout,H,No 4-45B ,madhava nilaya near st mary\'s eng medium school kannarpady udupi', 'homestay', NULL, NULL, '081059 62412', 4.7, 1),
(23, 'jalaprabha house manipal', 'jalaprabha house,plat no 172 HIG16,anant nagar,hudco colony manipal udupi', 'villas', NULL, NULL, NULL, 3.9, 1),
(24, 'willo stays luxe heritage home', 'malpe padukere main bridge,udupi', 'homestay', NULL, NULL, NULL, 4.2, 1),
(25, 'vyvahar lodge', 'kanakadasa road near shri krishna temple udupi', 'lodge', NULL, NULL, '088849 63168', 3.5, 1),
(26, 'hi5 holiday apartment udupi', 'udupi laxminagara,malpe rd,santhekatte,udupi', 'apartment', NULL, NULL, NULL, 4.8, 1),
(27, 'rock finch holiday homes', 'kadkar Dr.TMA pai raod kadekar seaview rd udupi', 'lodge', NULL, NULL, NULL, 3.8, 1),
(28, 'leelas coral creek inn', 'malpe padukere pangala road,udupi', 'sea view', NULL, NULL, NULL, 5, 1),
(29, 'sri krishna AC homestay', 'kakkunje rd door no.12/43B2 radhe shym udupi', 'apartment', NULL, NULL, '099454 21665', 5, 1),
(30, 'mehaan GF01 homestay', 'kalsanka ambagilu road udupi', 'sea view,resort', NULL, NULL, NULL, 4.3, 1),
(31, 'paradise isle beach homestay', '46,malpe beach udupi', 'sea view', NULL, NULL, '078478 00800', 3.4, 1),
(32, 'Ace of space homestay', 'Uddinahithlu, Post, Kodavoor, Udupi, Karnataka 576106', 'apartment', NULL, NULL, '073386 77266', 4.9, 1),
(33, 'Hotel Prakash', 'Shayana Temple, SH 37, near Anantha, Karkala, Karnataka 574234', '3star hotel', NULL, NULL, '9632826562', 4.1, 2),
(34, 'Usha boarding and lodging', 'Jodurasthe, Karkala, Karnataka 576117', 'lodge', NULL, NULL, '9845155791', 4.2, 2),
(35, 'Hotel Kateel International', 'Vendors Lane, Market Rd, near Bus Stand, Karkala, Karnataka 574104', '5star hotel', NULL, NULL, '7022593107', 4.1, 2),
(36, 'Hotel Savita Rooftop Family Bar & Restaurant', 'Shivathikere bypass, Udupi - Karkala Rd, Karkala, Karnataka 574104', 'hotel', NULL, NULL, '8258298485', 3.7, 2),
(37, 'OYO Viraj The Village Bar And Restaurant Boarding & Lodging', 'SH1, Karkala, Karnataka 574104', 'lodge', NULL, NULL, '1246201327', 3.9, 2),
(38, 'Angels Avenue', 'Angels Avenue, beside CSI Bethanya church, Karkala, Karnataka 574110', 'homestay', NULL, NULL, '9980881076', 4.8, 2),
(39, 'Hotel Samudyatha Inn And Suites', 'Near Fish Market,Behind Municipal Office,Kundapura,Dist-Udupi,State Karnataka,India, 576201', 'hotel', NULL, NULL, '94812 49777', 4, 3),
(40, 'UVA MANISH', 'Kundapura Main Road, 576201 Kundapur, India', 'hotel', NULL, NULL, '088671 12555', 4.4, 3),
(41, 'Glucklich Beach Cottages', 'Beejadi Beach Road, 576222 Kundapur, India', 'cottage', NULL, NULL, '63667 16766', 4.5, 3),
(42, 'Travelers Guest House', '1st Floor, E Block Rd, VL layout, Kundapura, Karnataka 576201', 'guest house', NULL, NULL, NULL, 4, 3),
(43, 'Blue Waters', 'Fort Gate Holiday Homes, Fort Gate Near Inspection Bungalow, Kundapur, 576201', 'holiday home', NULL, NULL, NULL, 4, 3),
(44, 'Sanjana service apartments', 'Taluk office, Udupi - Karkala Rd, Karkala, Karnataka 574104', 'apartment', NULL, NULL, '9845313628', 4, 2),
(45, 'Karkala Inn and Stay', '5XVV+RQX, Pulkeri, Karkala, Karnataka 574104', 'hotel', NULL, NULL, NULL, 5, 2),
(46, 'Hotel suhag', 'Gopal Towers, Main Rd, near Indian Overseas Bank, Karkala, Karnataka 574104', 'hotel', NULL, NULL, '8258231991', 3.9, 2),
(47, 'Kings court hotel', 'SH 37, Karkala, Karnataka 574104', 'hotel', NULL, NULL, '8971193815', 3.7, 2),
(48, 'Hotel Balaji Inn', 'Udupi Main Road, Bandimata, Karkala, Karnataka 574104', 'hotel', NULL, NULL, '9663729867', 4.2, 2),
(49, 'Hotel Swagath', 'Near Bus Stand, Udupi, SH 37, Dist, Karkala, Karnataka 574104', 'hotel', NULL, NULL, '8258230755', 3.9, 2),
(50, 'Savita Lodging Karkala', 'Shivathikere Bypass Road, Taluk, Karkala, Karnataka 574104', 'lodge', NULL, NULL, '9403591333', 4.2, 2),
(51, 'HOTEL MAYURA INTERNATIONAL', 'Bypass, NH 169, Kudremukha Road, Pulkeri, Karkala, Karnataka 574104', 'hotel', NULL, NULL, '6360838382', 4, 2),
(52, 'Vardhaman Dhanashala Residency', 'NA, Parpale, Near Chaturmukha Basadi, Dhanashala, karkala, taluk, Karkala, Karnataka 574104', 'hotel', NULL, NULL, '9108702417', 4, 2),
(53, 'Hotel Sitara Lodge and Boarding', 'H T Residency Beside Bank of Baroda and Opp Canara Bank, Jodu Raste Circle, Kukkundoor', 'hotel', NULL, NULL, NULL, 4.3, 2),
(54, 'Ratna Forever Hotel', 'Vendors Lane, Market Rd, near Bus Stand, Karkala, Karnataka 574104', 'hotel', NULL, NULL, '7338088744', 4.1, 2),
(55, 'Sanman regency', 'Nitte Parapady, Karkala - Padubidri Rd, Tq, Karnataka 574110', 'hotel', NULL, NULL, NULL, 4, 2),
(56, 'Sudhanna Residency | Lodge', 'Sri pragathi ganesh trade center, Ajekar J.H.C., Karnataka 574101', 'lodge', NULL, NULL, '7259542269', 4.3, 2),
(57, 'SPOT ON 48925 Sagar Arcade', '1, Nitte karkala padubidri road, udupi talukh, Karkala, Karnataka 574110', 'hotel', NULL, NULL, '1246201327', 4.3, 2),
(58, 'Archana Bar and Family Restaurant(A/C) with Lodging', 'Karkala - Hiriyadka Rd, Bailur, Karnataka 574102', 'lodge', NULL, NULL, '9482335688', 4.1, 2),
(59, 'Samanvay Boutique hotel', 'main road, next to govinda mantapa kinnimulki udupi', 'lodge', NULL, NULL, '0820 250 0250', 4.5, 1),
(60, 'svarna homestay', 'near bridge,santhekatte nayampally', 'lodge', NULL, NULL, NULL, 4.9, 1),
(61, 'Essentia Manipal Inn', 'near karavali bypass,NH66,udupi', '4 star hotel', NULL, NULL, NULL, 4.5, 1),
(62, 'Hotel udupi inn', 'shiribeedu tower,near city bus stand,thekpete maruthi veethika udupi', 'hotel', NULL, NULL, '91 820 201 0333', 4.4, 1),
(63, 'Collection O Venky\'s Stay Inn', 'K.M.road,opp kalpana theatre,behind kalyan jewellers udupi-manipal', 'hotel', NULL, NULL, '0124 620 1383', 3.3, 1),
(64, 'krishna kausthubha apartment', 'katte acharya marg,kunjibettu,udupi', 'apartment', NULL, NULL, '070222 88141', 4.1, 1),
(65, 'Udupi Yatrinivas', 'sri krishna temple complex,thenkapete maruthi veethika,udupi', 'hotel', NULL, NULL, '-', 4.7, 1),
(66, 'chithara comforts', 'S.NO-114/B2P5,Kavi muddana road,shinibeedu udupi', 'hotel', NULL, NULL, '063663 73353', 4, 1),
(67, 'hotel sri krishna residency', 'badagubet road,thenkapete maruthi,veethika udupi', 'residency', NULL, NULL, '095918 11362', 4.2, 1),
(68, 'hotel durga international', 'badagubet road,thenkapete maruthi,veethika udupi', 'hotel', NULL, NULL, '0820 253 6973', 3.7, 1),
(69, 'hotel southern heritage', 'saiberakatte,shiriyar Village, Brahmavara, Udupi', 'hotel', NULL, NULL, NULL, 4, 6),
(70, 'the postcards on the arabian sea', 'MJPW+558 Trasi proper kundapur .udupi', 'hotel', NULL, NULL, '079995 55222', 3.5, 3),
(71, 'meenakshi inn', 'opp. Adarsh hospital, Brahmagiri, Udupi', 'hotel', NULL, NULL, '094482 86766', 4.7, 1),
(72, 'hotel sharada international', 'NH 17,bananjje ,adi udupi,udupi', 'hotel', NULL, NULL, '080808 05060', 3.5, 1),
(73, 'hotel sri ram residency', 'Head Post Office Rd, Thenkpete, Maruthi Veethika, Udupi', 'hotel', NULL, NULL, '0820 253 0761', 3.9, 1),
(74, 'saadhana comforts lodge', 'Head Post Office Rd, Thenkpete, Maruthi Veethika, Udupi', 'lodge', NULL, NULL, '099019 45833', 3.8, 1),
(75, 'hotel century executive', 'sankrit clg road near parivar sweets,udupi', 'lodge', NULL, NULL, '-', 3.7, 1),
(76, 'sri vidya palace', 'kaadebettu road udupi', 'apartment', NULL, NULL, '-', 4.5, 1),
(77, 'hallimne homestay', 'opposite to marne primary school ,udupi', 'homestay', NULL, NULL, '-', 4.6, 1),
(78, 'tiny waves', 'hungarkatte road,udupi', 'sea view ,villas', NULL, NULL, '098456 70910', 4.7, 1),
(79, 'shri jayadurga boading &lodging', 'indrali railway station udupi', 'lodge', NULL, NULL, '096635 38259', 1.9, 1),
(80, 'atithi homeshay udupi', 'balaji layout,H,No 4-45B ,madhava nilaya near st mary\'s eng medium school kannarpady udupi', 'homestay', NULL, NULL, '081059 62412', 4.7, 1),
(81, 'jalaprabha house manipal', 'jalaprabha house,plat no 172 HIG16,anant nagar,hudco colony manipal udupi', 'villas', NULL, NULL, NULL, 3.9, 1),
(82, 'willo stays luxe heritage home', 'malpe padukere main bridge,udupi', 'homestay', NULL, NULL, NULL, 4.2, 1),
(83, 'vyvahar lodge', 'kanakadasa road near shri krishna temple udupi', 'lodge', NULL, NULL, '088849 63168', 3.5, 1),
(84, 'hi5 holiday apartment udupi', 'udupi laxminagara,malpe rd,santhekatte,udupi', 'apartment', NULL, NULL, NULL, 4.8, 1),
(85, 'rock finch holiday homes', 'kadkar Dr.TMA pai raod kadekar seaview rd udupi', 'lodge', NULL, NULL, NULL, 3.8, 1),
(86, 'leelas coral creek inn', 'malpe padukere pangala road,udupi', 'sea view', NULL, NULL, NULL, 5, 1),
(87, 'sri krishna AC homestay', 'kakkunje rd door no.12/43B2 radhe shym udupi', 'apartment', NULL, NULL, '099454 21665', 5, 1),
(88, 'mehaan GF01 homestay', 'kalsanka ambagilu road udupi', 'sea view,resort', NULL, NULL, NULL, 4.3, 1),
(89, 'paradise isle beach homestay', '46,malpe beach udupi', 'sea view', NULL, NULL, '078478 00800', 3.4, 1),
(90, 'Ace of space homestay', 'Uddinahithlu, Post, Kodavoor, Udupi, Karnataka 576106', 'apartment', NULL, NULL, '073386 77266', 4.9, 1),
(91, 'Hotel Prakash', 'Shayana Temple, SH 37, near Anantha, Karkala, Karnataka 574234', '3star hotel', NULL, NULL, '9632826562', 4.1, 2),
(92, 'Usha boarding and lodging', 'Jodurasthe, Karkala, Karnataka 576117', 'lodge', NULL, NULL, '9845155791', 4.2, 2),
(93, 'Hotel Kateel International', 'Vendors Lane, Market Rd, near Bus Stand, Karkala, Karnataka 574104', '5star hotel', NULL, NULL, '7022593107', 4.1, 2),
(94, 'Hotel Savita Rooftop Family Bar & Restaurant', 'Shivathikere bypass, Udupi - Karkala Rd, Karkala, Karnataka 574104', 'hotel', NULL, NULL, '8258298485', 3.7, 2),
(95, 'OYO Viraj The Village Bar And Restaurant Boarding & Lodging', 'SH1, Karkala, Karnataka 574104', 'lodge', NULL, NULL, '1246201327', 3.9, 2),
(96, 'Angels Avenue', 'Angels Avenue, beside CSI Bethanya church, Karkala, Karnataka 574110', 'homestay', NULL, NULL, '9980881076', 4.8, 2),
(97, 'Hotel Samudyatha Inn And Suites', 'Near Fish Market,Behind Municipal Office,Kundapura,Dist-Udupi,State Karnataka,India, 576201', 'hotel', NULL, NULL, '94812 49777', 4, 3),
(98, 'UVA MANISH', 'Kundapura Main Road, 576201 Kundapur, India', 'hotel', NULL, NULL, '088671 12555', 4.4, 3),
(99, 'Glucklich Beach Cottages', 'Beejadi Beach Road, 576222 Kundapur, India', 'cottage', NULL, NULL, '63667 16766', 4.5, 3),
(100, 'Travelers Guest House', '1st Floor, E Block Rd, VL layout, Kundapura, Karnataka 576201', 'guest house', NULL, NULL, NULL, 4, 3),
(101, 'Blue Waters', 'Fort Gate Holiday Homes, Fort Gate Near Inspection Bungalow, Kundapur, 576201', 'holiday home', NULL, NULL, NULL, 4, 3),
(102, 'Sanjana service apartments', 'Taluk office, Udupi - Karkala Rd, Karkala, Karnataka 574104', 'apartment', NULL, NULL, '9845313628', 4, 2),
(103, 'Karkala Inn and Stay', '5XVV+RQX, Pulkeri, Karkala, Karnataka 574104', 'hotel', NULL, NULL, NULL, 5, 2),
(104, 'Hotel suhag', 'Gopal Towers, Main Rd, near Indian Overseas Bank, Karkala, Karnataka 574104', 'hotel', NULL, NULL, '8258231991', 3.9, 2),
(105, 'Kings court hotel', 'SH 37, Karkala, Karnataka 574104', 'hotel', NULL, NULL, '8971193815', 3.7, 2),
(106, 'Hotel Balaji Inn', 'Udupi Main Road, Bandimata, Karkala, Karnataka 574104', 'hotel', NULL, NULL, '9663729867', 4.2, 2),
(107, 'Hotel Swagath', 'Near Bus Stand, Udupi, SH 37, Dist, Karkala, Karnataka 574104', 'hotel', NULL, NULL, '8258230755', 3.9, 2),
(108, 'Savita Lodging Karkala', 'Shivathikere Bypass Road, Taluk, Karkala, Karnataka 574104', 'lodge', NULL, NULL, '9403591333', 4.2, 2),
(109, 'HOTEL MAYURA INTERNATIONAL', 'Bypass, NH 169, Kudremukha Road, Pulkeri, Karkala, Karnataka 574104', 'hotel', NULL, NULL, '6360838382', 4, 2),
(110, 'Vardhaman Dhanashala Residency', 'NA, Parpale, Near Chaturmukha Basadi, Dhanashala, karkala, taluk, Karkala, Karnataka 574104', 'hotel', NULL, NULL, '9108702417', 4, 2),
(111, 'Hotel Sitara Lodge and Boarding', 'H T Residency Beside Bank of Baroda and Opp Canara Bank, Jodu Raste Circle, Kukkundoor', 'hotel', NULL, NULL, NULL, 4.3, 2),
(112, 'Ratna Forever Hotel', 'Vendors Lane, Market Rd, near Bus Stand, Karkala, Karnataka 574104', 'hotel', NULL, NULL, '7338088744', 4.1, 2),
(113, 'Sanman regency', 'Nitte Parapady, Karkala - Padubidri Rd, Tq, Karnataka 574110', 'hotel', NULL, NULL, NULL, 4, 2),
(114, 'Sudhanna Residency | Lodge', 'Sri pragathi ganesh trade center, Ajekar J.H.C., Karnataka 574101', 'lodge', NULL, NULL, '7259542269', 4.3, 2),
(115, 'SPOT ON 48925 Sagar Arcade', '1, Nitte karkala padubidri road, udupi talukh, Karkala, Karnataka 574110', 'hotel', NULL, NULL, '1246201327', 4.3, 2),
(116, 'Archana Bar and Family Restaurant(A/C) with Lodging', 'Karkala - Hiriyadka Rd, Bailur, Karnataka 574102', 'lodge', NULL, NULL, '9482335688', 4.1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `destinations`
--

CREATE TABLE `destinations` (
  `DestinationID` int NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `Category` varchar(50) NOT NULL,
  `Description` longtext,
  `EntryFee` decimal(10,2) DEFAULT NULL,
  `OpeningTime` time DEFAULT NULL,
  `ClosingTime` time DEFAULT NULL,
  `BestSeason` varchar(50) DEFAULT NULL,
  `TalukID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `destinations`
--

INSERT INTO `destinations` (`DestinationID`, `Name`, `Location`, `Category`, `Description`, `EntryFee`, `OpeningTime`, `ClosingTime`, `BestSeason`, `TalukID`) VALUES
(1, 'Udupi Sri Krishna Matha', 'Udupi', 'Temple', 'One of the most famous Hindu temples dedicated to Lord Krishna.', 0.00, '04:00:00', '21:00:00', 'Oct - Mar', 1),
(2, 'Anantha Padmanabha Temple', 'Perdoor, Udupi', 'Temple', 'A beautiful temple dedicated to Lord Vishnu.', 0.00, '06:00:00', '20:00:00', 'Nov - Feb', 2),
(3, 'Anegudde Vinayaka Temple', 'Kumbashi, Udupi', 'Temple', 'A famous temple dedicated to Lord Ganesha.', 0.00, '05:30:00', '20:30:00', 'Aug - Feb', 3),
(4, 'Kollur Mookambika Temple', 'Kollur, Udupi', 'Temple', 'A renowned temple dedicated to Goddess Mookambika, visited by thousands.', 0.00, '05:00:00', '21:00:00', 'Oct - Mar', 4),
(5, 'Kadiyali Mahisha Mardini Temple', 'Udupi', 'Temple', 'An ancient temple dedicated to Goddess Durga.', 0.00, '06:00:00', '20:00:00', 'Sep - Mar', 1),
(6, 'Shree Durga Parameshwari Temple', 'Kateel, Udupi', 'Temple', 'A famous temple located on an island in the middle of the river Nandini.', 0.00, '04:00:00', '22:00:00', 'Aug - Mar', 5),
(7, 'Shree Veeranarayana Temple', 'Karkala, Udupi', 'Temple', 'A historical temple dedicated to Lord Narayana.', 0.00, '06:00:00', '20:00:00', 'Dec - Feb', 2),
(8, 'Shree Venkataramana Temple', 'Karkala, Udupi', 'Temple', 'A temple dedicated to Lord Venkateshwara, known for its Rathotsava (chariot festival).', 0.00, '06:00:00', '20:00:00', 'Jan - Feb', 1),
(9, 'Shree Mahalingeshwara Temple', 'Barkur, Udupi', 'Temple', 'A historic Shiva temple located in the Barkur region.', 0.00, '06:00:00', '20:00:00', 'Dec - Mar', 6),
(10, 'Shree Siddhi Vinayaka Temple', 'Hattiangadi, Udupi', 'Temple', 'A famous Ganesha temple known for its unique idol of Lord Ganesha.', 0.00, '06:00:00', '20:00:00', 'Aug - Dec', 7),
(11, 'Shree Vishnumurthy Temple', 'Kota, Udupi', 'Temple', 'An ancient temple dedicated to Lord Vishnu.', 0.00, '06:00:00', '20:00:00', 'Nov - Mar', 5),
(12, 'Shree Ananteshwara Temple', 'Udupi', 'Temple', 'A significant temple dedicated to Lord Ananteshwara, associated with Sri Madhvacharya.', 0.00, '05:30:00', '20:30:00', 'Oct - Mar', 1),
(13, 'Shree Kumbashi Ganapathi Temple', 'Kumbashi, Udupi', 'Temple', 'A well-known temple dedicated to Lord Ganapathi.', 0.00, '06:00:00', '20:00:00', 'Aug - Feb', 3),
(14, 'Shree Chaturmukha Basadi', 'Karkala, Udupi', 'Temple', 'A famous Jain temple with four identical entrances.', 0.00, '06:00:00', '18:00:00', 'Nov - Feb', 2),
(15, 'Shree Kundeshwara Temple', 'Kundapur, Udupi', 'Temple', 'A Shiva temple famous for its annual Rathotsava festival.', 0.00, '06:00:00', '20:00:00', 'Feb', 3),
(16, 'Shree Sowthadka Mahaganapathi Temple', 'Belman, Udupi', 'Temple', 'A unique open-air temple dedicated to Lord Ganesha.', 0.00, '06:00:00', '19:00:00', 'Oct - Feb', 2),
(17, 'Shree Kamalashile Brahmi Durgaparameshwari Temple', 'Kundapur, Udupi', 'Temple', 'A famous temple with a sacred river and cave.', 0.00, '06:00:00', '20:00:00', 'Sep - Mar', 3),
(18, 'Shree Siddi Vinayaka Temple', 'Anegudde, Udupi', 'Temple', 'A powerful temple dedicated to Lord Ganesha, visited for wish fulfillment.', 0.00, '05:30:00', '20:30:00', 'Aug - Dec', 5),
(19, 'Shree Nandikeshwara Temple', 'Karkala, Udupi', 'Temple', 'A historic temple dedicated to Nandi, the vehicle of Lord Shiva.', 0.00, '06:00:00', '20:00:00', 'Dec - Feb', 7),
(20, 'Shree Janardhana Mahakali Temple', 'Ambalpadi, Udupi', 'Temple', 'A twin deity temple with Lord Janardhana and Goddess Mahakali.', 0.00, '06:00:00', '20:00:00', 'Nov - Mar', 5),
(21, 'Shree Laxmi Venkatesha Temple', 'Katapady, Udupi', 'Temple', 'A revered temple dedicated to Lord Venkatesha and Goddess Laxmi.', 0.00, '06:00:00', '20:00:00', 'Oct - Feb', 1),
(22, 'Shree Durgaparameshwari Temple', 'Mandarthi, Udupi', 'Temple', 'One of the most powerful temples dedicated to Goddess Durga.', 0.00, '06:00:00', '20:00:00', 'Oct - Mar', 3),
(23, 'Shree Balakrishna Temple', 'Neelavara, Udupi', 'Temple', 'A temple dedicated to Lord Krishna with historical significance.', 0.00, '06:00:00', '20:00:00', 'Oct - Mar', 1),
(24, 'Shree Panchalingeshwara Temple', 'Kundapur, Udupi', 'Temple', 'A temple dedicated to five Lingas of Lord Shiva.', 0.00, '06:00:00', '20:00:00', 'Nov - Mar', 6),
(25, 'Shree Shankaranarayana Temple', 'Shankaranarayana, Udupi', 'Temple', 'A temple where Lord Shiva and Vishnu are worshiped together.', 0.00, '06:00:00', '20:00:00', 'Nov - Mar', 3),
(26, 'Shree Indrani Temple', 'Udupi', 'Temple', 'A unique temple dedicated to Goddess Indrani, rarely found in India.', 0.00, '06:00:00', '20:00:00', 'Sep - Feb', 1),
(27, 'Shree Harihareshwara Temple', 'Kallianpur, Udupi', 'Temple', 'A temple dedicated to Lord Vishnu and Lord Shiva.', 0.00, '06:00:00', '20:00:00', 'Nov - Feb', 3),
(28, 'Shree Jarandeshwara Temple', 'Barkur, Udupi', 'Temple', 'A temple with historical and cultural importance.', 0.00, '06:00:00', '20:00:00', 'Oct - Feb', 4),
(29, 'Shree Ayyappa Temple', 'Karkala, Udupi', 'Temple', 'A famous pilgrimage spot for devotees of Lord Ayyappa.', 0.00, '06:00:00', '20:00:00', 'Nov - Jan', 1),
(30, 'Shree Vaidyanatha Temple', 'Hebri, Udupi', 'Temple', 'A temple dedicated to Lord Shiva, known for its healing powers.', 0.00, '06:00:00', '20:00:00', 'Sep - Feb', 4),
(31, 'Malpe Beach', 'Malpe Beach', 'Beach', 'Famous for water sports, golden sands, and sunset views.', 0.00, '06:00:00', '20:00:00', 'Oct - Feb', 1),
(32, 'Kaup Beach', 'Kaup Beach', 'Beach', 'Known for its lighthouse and breathtaking sea views.', 0.00, '00:00:00', '23:59:59', 'Oct - Mar', 5),
(33, 'Maravanthe Beach', 'Maravanthe Beach', 'Beach', 'Unique beach with a river on one side and the Arabian Sea on the other.', 0.00, '06:00:00', '18:00:00', 'Nov - Feb', 3),
(34, 'Padubidri Beach', 'Padubidri Beach', 'Beach', 'Clean and serene, ideal for family outings and water sports.', 0.00, '00:00:00', '23:59:59', 'Oct - Feb', 5),
(35, 'Kodi Beach', 'Kodi, Kundapur', 'Beach', 'A tranquil delta beach where a river meets the sea.', 0.00, '00:00:00', '23:59:59', 'Nov - Feb', 3),
(36, 'Hoode Beach', 'Tonse', 'Beach', 'A secluded beach with picturesque scenery and peaceful surroundings.', 0.00, '00:00:00', '23:59:59', 'Oct - Mar', 1),
(37, 'Bengre(Delta) Beach', 'Near Udyavara', 'Beach', 'A beautiful beach where the river and sea intersect.', 0.00, '00:00:00', '23:59:59', 'Oct - Mar', 1),
(38, 'Someshwara Beach', 'Baindur', 'Beach', 'Less crowded, known for its natural beauty and scenic sunset views.', 0.00, '00:00:00', '23:59:59', 'Oct- Feb', 4),
(39, 'Trasi Beach', 'Trasi Beach', 'Beach', 'Offers a long stretch of pristine sand, perfect for beach walks.', 0.00, '00:00:00', '23:59:59', 'Oct - Feb', 3),
(40, 'Uppunda Beach', 'Uppunda Beach', 'Beach', 'A hidden gem with serene waves and an excellent picnic spot.', 0.00, '00:00:00', '23:59:59', 'Nov - Feb', 4),
(41, 'Belkal Theertha', 'Kollur, Udupi', 'Waterfalls', 'Requires a 3 km uphill trek; entry fee applies.', 100.00, '09:00:00', '15:00:00', 'Oct-Dec', 4),
(42, 'Koosalli Falls', 'Byndoor, Udupi', 'Waterfalls', 'A six-tiered waterfall; involves a 4 km trek through dense forest.', 0.00, '06:00:00', '18:00:00', 'Sep-Nov', 4),
(43, 'Kudumari Falls', 'Byndoor, Udupi', 'Waterfalls', 'Also known as Chaktikal Falls; accessible via a challenging trek.', 0.00, '08:00:00', '17:00:00', 'Oct-Dec', 4),
(44, 'Kudlu Theertha', 'Hebri, Udupi', 'Waterfalls', 'A 300-feet waterfall; often requires a 4 km trek; may be closed during certain periods.', 50.00, '09:00:00', '17:00:00', 'Sep-Dec', 7),
(45, 'Jomlu Theertha', 'Hebri, Udupi', 'Waterfalls', 'A smaller waterfall about 20 feet high; easily accessible but sometimes closed.', 0.00, '06:00:00', '18:00:00', 'Oct-Nov', 7),
(46, 'Thombattu Falls', 'Haladi', 'Waterfalls', 'A small waterfall; accessible via a short trek; best visited if already in the area.', 0.00, '06:00:00', '18:00:00', 'Sep-Dec', 4),
(47, 'Haklamane Falls', 'Gangolli', 'Waterfalls', 'Involves off-roading and a moderate hike; a smaller waterfall.', 0.00, '06:00:00', '18:00:00', 'Oct-Dec', 4),
(48, 'Durga Falls', 'Karkala, Udupi', 'Waterfalls', 'A river flowing over rocks, creating a waterfall effect; easily accessible.', 0.00, '06:00:00', '18:00:00', 'Jul-Nov', 4),
(49, 'Maddina Hole Falls', 'Haladi', 'Waterfalls', 'Requires a 7 km trek one way; a local guide is recommended.', 0.00, '06:00:00', '18:00:00', 'Oct-Dec', 4),
(50, 'Arasinagundi Falls', 'Kollur, Udupi', 'Waterfalls', 'Located within the Mookambika Wildlife Sanctuary; a guide is recommended for the trek.', 0.00, '06:00:00', '18:00:00', 'Oct-Dec', 4),
(51, 'Arbi Falls', 'Manipal, Udupi', 'Waterfalls', 'A small stream near the town; easily accessible.', 0.00, '05:00:00', '18:00:00', 'Jul-Sep', 2),
(52, 'Parappadi Falls', 'Karkala, Udupi', 'Waterfalls', 'Access has been banned by local authorities.', 0.00, '06:00:00', '18:00:00', 'Jul-Sep', 3),
(53, 'Gulnadi Falls', 'Gangolli', 'Waterfalls', 'Lesser-known waterfall; details about accessibility are limited.', 0.00, '06:00:00', '18:00:00', 'Jul-Dec', 4),
(54, 'Ermai Waterfalls', 'Ujire', 'Waterfalls', 'A multi-layered waterfall; involves a 1.5 km trek; advisable to go with local guidance.', 15.00, '06:00:00', '18:00:00', 'Aug-Nov', 2),
(55, 'Koodlu Falls', 'Kundapur', 'Waterfalls', 'Beautiful falls surrounded by lush vegetation.', 50.00, '07:00:00', '17:00:00', 'Oct-Nov', 7),
(56, 'Barkana Waterfalls', 'Agumbe, Udupi', 'Waterfalls', 'Tallest waterfall in Udupi with stunning misty views.', 200.00, '07:00:00', '17:00:00', 'Jul-Dec', 7),
(57, 'Onake Abbi Falls', 'Agumbe, Udupi', 'Waterfalls', 'A 500-feet waterfall; requires a 4-6 km challenging trek; forest department permission needed.', 0.00, '07:00:00', '17:00:00', 'Sep-Nov', 7),
(58, 'Belkal Theertha', 'Kollur, Udupi', 'Waterfalls', 'Requires a 3 km uphill trek; entry fee applies.', 100.00, '09:00:00', '15:00:00', 'Oct-Dec', 4),
(59, 'Koosalli Falls', 'Byndoor, Udupi', 'Waterfalls', 'A six-tiered waterfall; involves a 4 km trek through dense forest.', 0.00, '06:00:00', '18:00:00', 'Sep-Nov', 4),
(60, 'Kudumari Falls', 'Byndoor, Udupi', 'Waterfalls', 'Also known as Chaktikal Falls; accessible via a challenging trek.', 0.00, '08:00:00', '17:00:00', 'Oct-Dec', 4),
(61, 'Kudlu Theertha', 'Hebri, Udupi', 'Waterfalls', 'A 300-feet waterfall; often requires a 4 km trek; may be closed during certain periods.', 50.00, '09:00:00', '17:00:00', 'Sep-Dec', 7),
(62, 'Jomlu Theertha', 'Hebri, Udupi', 'Waterfalls', 'A smaller waterfall about 20 feet high; easily accessible but sometimes closed.', 0.00, '06:00:00', '18:00:00', 'Oct-Nov', 7),
(63, 'Thombattu Falls', 'Haladi', 'Waterfalls', 'A small waterfall; accessible via a short trek; best visited if already in the area.', 0.00, '06:00:00', '18:00:00', 'Sep-Dec', 4),
(64, 'Haklamane Falls', 'Gangolli', 'Waterfalls', 'Involves off-roading and a moderate hike; a smaller waterfall.', 0.00, '06:00:00', '18:00:00', 'Oct-Dec', 4),
(65, 'Durga Falls', 'Karkala, Udupi', 'Waterfalls', 'A river flowing over rocks, creating a waterfall effect; easily accessible.', 0.00, '06:00:00', '18:00:00', 'Jul-Nov', 4),
(66, 'Maddina Hole Falls', 'Haladi', 'Waterfalls', 'Requires a 7 km trek one way; a local guide is recommended.', 0.00, '06:00:00', '18:00:00', 'Oct-Dec', 4),
(67, 'Arasinagundi Falls', 'Kollur, Udupi', 'Waterfalls', 'Located within the Mookambika Wildlife Sanctuary; a guide is recommended for the trek.', 0.00, '06:00:00', '18:00:00', 'Oct-Dec', 4),
(68, 'Arbi Falls', 'Manipal, Udupi', 'Waterfalls', 'A small stream near the town; easily accessible.', 0.00, '05:00:00', '18:00:00', 'Jul-Sep', 2),
(69, 'Parappadi Falls', 'Karkala, Udupi', 'Waterfalls', 'Access has been banned by local authorities.', 0.00, '06:00:00', '18:00:00', 'Jul-Sep', 3),
(70, 'Gulnadi Falls', 'Gangolli', 'Waterfalls', 'Lesser-known waterfall; details about accessibility are limited.', 0.00, '06:00:00', '18:00:00', 'Jul-Dec', 4),
(71, 'Ermai Waterfalls', 'Ujire', 'Waterfalls', 'A multi-layered waterfall; involves a 1.5 km trek; advisable to go with local guidance.', 15.00, '06:00:00', '18:00:00', 'Aug-Nov', 2),
(72, 'Koodlu Falls', 'Kundapur', 'Waterfalls', 'Beautiful falls surrounded by lush vegetation.', 50.00, '07:00:00', '17:00:00', 'Oct-Nov', 7),
(73, 'Barkana Waterfalls', 'Agumbe, Udupi', 'Waterfalls', 'Tallest waterfall in Udupi with stunning misty views.', 200.00, '07:00:00', '17:00:00', 'Jul-Dec', 7),
(74, 'Onake Abbi Falls', 'Agumbe, Udupi', 'Waterfalls', 'A 500-feet waterfall; requires a 4-6 km challenging trek; forest department permission needed.', 0.00, '07:00:00', '17:00:00', 'Sep-Nov', 7),
(75, 'Barkur Fort', 'Barkur', 'Historical Site', 'Ruins of a historical fort in Barkur, a former capital of Tulu Nadu.', 0.00, '00:00:00', '23:59:59', 'Feb, Mar', 6),
(76, 'Barkur Temples', 'Barkur', 'Historical Site', 'Cluster of ancient temples built in different architectural styles.', 0.00, NULL, NULL, 'Feb, Mar', 6),
(77, 'Malpe Fort', 'Malpe', 'Historical Site', 'Ruins of an old fort built by Tipu Sultan near Malpe beach.', 0.00, '00:00:00', '23:59:59', 'Feb, Mar', 1),
(78, 'Kaup Light House', 'Kaup', 'Historical Site', 'A British-era lighthouse with panoramic coastal views.', 10.00, '04:00:00', '18:00:00', 'Feb, Mar', 5),
(79, 'Moodabidri Thousand Pillar Temple', 'Moodabidri', 'Historical Site', 'A 15th-century Jain temple with a thousand pillars.', 20.00, '08:00:00', '19:00:00', 'Feb, Mar', 2),
(80, 'Jain Basadis of Karkala', 'Karkala', 'Historical Site', 'Collection of ancient Jain temples in Karkala.', 0.00, '06:00:00', '18:00:00', 'Feb, Mar', 2),
(81, 'Karkala Gomateshwara Statue', 'Karkala', 'Historical Site', '42-foot monolithic statue of Lord Bahubali.', 0.00, '06:00:00', '18:00:00', 'Feb, Mar', 2),
(82, 'Varanga Jain Temple', 'Varanga', 'Historical Site', 'Famous Jain pilgrimage center with a tranquil lake.', 0.00, '06:00:00', '18:00:00', 'Feb, Mar', 2),
(83, 'Hosangadi Fort', 'Hosangadi', 'Historical Site', 'Remains of a fort dating back to the Vijayanagara era.', 0.00, '00:00:00', '23:59:59', 'Feb, Mar', 7),
(84, 'Belmannu Durga Parameshwari Temple', 'Belmannu', 'Historical Site', 'Temple with historical connections to the region\'s rulers.', 0.00, '06:00:00', '20:00:00', 'Feb, Mar', 2),
(85, 'Belle Durga Parameshwari Temple', 'Belle', 'Historical Site', 'A temple with mythological importance and ancient origins.', 0.00, '06:00:00', '20:00:00', 'Feb, Mar', 5),
(86, 'Hebri Someshwara Wildlife Temple', 'Hebri', 'Historical Site', 'Located inside a wildlife sanctuary, of historical importance.', 50.00, '06:00:00', '18:00:00', 'Feb, Mar', 7),
(87, 'Uppunda Fort', 'Uppunda', 'Historical Site', 'A fort built for coastal defense.', 0.00, '00:00:00', '23:59:59', 'Feb, Mar', 4),
(88, 'Kudlu Theertha Temple', 'Hebri', 'Historical Site', 'Temple near a famous waterfall; has deep mythological ties.', 50.00, '09:00:00', '17:00:00', 'Feb, Mar', 7),
(89, 'Kotilingeshwara Temple', 'Kundapura', 'Historical Site', 'A temple complex known for its historic shivalinga.', 20.00, '06:00:00', '21:00:00', 'Feb, Mar', 3),
(90, 'Perdoor Mahalingeshwara Temple', 'Perdoor', 'Historical Site', 'Ancient temple dedicated to Lord Shiva.', 0.00, '06:00:00', '20:00:00', 'Feb, Mar', 7),
(91, 'Shankaranarayana Temple', 'Shankaranarayana', 'Historical Site', 'A temple associated with the Pandavas\' exile.', 0.00, '06:00:00', '20:00:00', 'Feb, Mar', 3),
(92, 'Kudremukh Iron Ore Company Township', 'Kudremukh', 'Historical Site', 'An old mining town with remnants of British-era structures.', NULL, NULL, NULL, 'Feb, Mar', 7),
(93, 'Maravanthe Beach Historic Site', 'Maravanthe', 'Historical Site', 'A unique beach location with historical relevance.', 0.00, '00:00:00', '23:59:59', 'Feb, Mar', 3),
(94, 'Basrur Historical Village', 'Basrur', 'Historical Site', 'An ancient village with many historic temples.', 0.00, '00:00:00', '23:59:59', 'Feb, Mar', 3),
(95, 'Udyavara Fort', 'Udyavara', 'Historical Site', 'A fort built near the backwaters of Udupi.', 0.00, '00:00:00', '23:59:59', 'Feb, Mar', 1),
(96, 'Shiriyara Koti (Small Fort)', 'Shiriyara', 'Historical Site', 'A small fort that played a role in regional battles.', 0.00, '00:00:00', '23:59:59', 'Feb, Mar', 3),
(97, 'Kundapura Jain Temples', 'Kundapura', 'Historical Site', 'Cluster of historic Jain temples in the region.', 0.00, '06:00:00', '20:00:00', 'Feb, Mar', 3),
(98, 'Koteswara Kotilingeshwara Temple', 'Koteswara', 'Historical Site', 'Temple with historical significance in Koteswara.', 0.00, '06:00:00', '20:00:00', 'Feb, Mar', 3),
(99, 'Vittla Pindi Historic Procession', 'Udupi', 'Historical Site', 'A famous annual procession linked to historic traditions.', 0.00, NULL, NULL, 'Feb, Mar', 1),
(100, 'Kollur Arishina Gundi', 'Kollur', 'Historical Site', 'A scenic waterfall with spiritual importance.', 50.00, '09:00:00', '17:00:00', 'Feb, Mar', 4),
(101, 'Byndoor Seneshwara Temple', 'Byndoor', 'Historical Site', 'Temple with ancient stone inscriptions.', 0.00, '06:00:00', '20:00:00', 'Feb, Mar', 4),
(102, 'Kodi Bengre Historic Port', 'Kodi Bengre', 'Historical Site', 'A historic port used in ancient maritime trade.', 0.00, '00:00:00', '23:59:59', 'Feb, Mar', 1),
(103, 'Kundeshwara Temple', 'Kundapura', 'Historical Site', 'A temple known for its grand architecture.', 0.00, '06:00:00', '20:00:00', 'Feb, Mar', 3),
(104, 'Kemmannu Hanging Bridge', 'Kemmannu', 'Historical Site', 'A historic hanging bridge built over a river.', 0.00, '00:00:00', '23:59:59', 'Feb, Mar', 1),
(105, 'Gomatheshwara Statue at Venoor', 'Venoor', 'Historical Site', 'Another site of Lord Bahubali\'s monolithic statues.', 0.00, '06:00:00', '18:00:00', 'Feb, Mar', 2),
(106, 'Padubidri Temple', 'Padubidri', 'Historical Site', 'A significant place of worship with historical value.', 0.00, '06:00:00', '20:00:00', 'Feb, Mar', 5),
(107, 'Anegudde Hills', 'Anegudde', 'Historical Site', 'A historic hill known for its religious significance.', 0.00, '06:00:00', '20:00:00', 'Feb, Mar', 3),
(108, 'Guddattu Vinayaka Temple', 'Guddattu', 'Historical Site', 'Ancient Vinayaka temple carved into rock.', 0.00, '06:00:00', '20:00:00', 'Feb, Mar', 3),
(109, 'Hulikal Ghati Temple', 'Hulikal', 'Historical Site', 'A temple located in a ghati (valley) region with history.', 0.00, '06:00:00', '20:00:00', 'Feb, Mar', 3),
(110, 'Vaderhobli Historical Site', 'Vaderhobli', 'Historical Site', 'Site with remnants of ancient settlements.', 0.00, '00:00:00', '23:59:59', 'Feb, Mar', 3),
(111, 'Halady Historical Market', 'Halady', 'Historical Site', 'Once a bustling historical trade market.', 0.00, '00:00:00', '23:59:59', 'Feb, Mar', 3),
(112, 'Kallianpur Fort', 'Kallianpur', 'Historical Site', 'Fort ruins that showcase the region\'s defense history.', 0.00, '00:00:00', '23:59:59', 'Feb, Mar', 1),
(113, 'St. Mary\'s Island', 'St. Mary\'s Island', 'Scenic Place', 'Unique island with volcanic rock formations and clear waters.', 300.00, '09:00:00', '17:30:00', 'Oct - Feb', 1),
(114, 'Ottinene Sunset Viewpoint', 'Byndoor', 'Scenic Place', 'Panoramic viewpoint for breathtaking sunset views.', 0.00, '00:00:00', '23:59:59', 'Nov - Mar', 4),
(115, 'Manipal End Point', 'Manipal', 'Scenic Place', 'Hilltop viewpoint with a breathtaking city and valley view.', 0.00, '06:00:00', '18:30:00', 'Oct - Mar', 1),
(116, 'Anejari Butterfly Camp', 'Kollur', 'Scenic Place', 'A paradise for butterfly enthusiasts and nature lovers.', 4000.00, '09:00:00', '17:00:00', 'Oct - Feb', 3),
(117, 'Kudremukh National Park', 'Kudremukh', 'Scenic Place', 'Biodiversity hotspot famous for trekking and wildlife spotting.', 200.00, '10:00:00', '17:00:00', 'Oct - May', 7),
(118, 'Agumbe Rainforest', 'Agumbe', 'Scenic Place', 'Dense rainforest with the highest rainfall in Karnataka.', 0.00, '00:00:00', '23:59:59', 'Jun - Sept', 7),
(119, 'Kudremukh Peak', 'Kudremukh', 'Scenic Place', 'Challenging trek with a breathtaking peak view.', 200.00, '06:00:00', '17:00:00', 'Nov - Feb', 7),
(120, 'Varanga Lake', 'Varanga', 'Scenic Place', 'Serene lake with a floating Jain temple.', 0.00, '00:00:00', '23:59:59', 'Oct - Mar', 2),
(121, 'Kundadri Hills', 'Agumbe', 'Scenic Place', 'Hilltop with mesmerizing sunrise and sunset views.', 0.00, '00:00:00', '23:59:59', 'Oct - Feb', 7),
(122, 'Mookambika Wildlife Sanctuary', 'Kollur', 'Scenic Place', 'Rich in biodiversity, home to various flora and fauna.', 50.00, '06:00:00', '18:00:00', 'Oct - Apr', 4),
(123, 'Someshwara Wildlife Sanctuary', 'Hebri', 'Scenic Place', 'Wildlife sanctuary known for its dense forest and rich birdlife.', 50.00, '06:00:00', '18:00:00', 'Oct - Mar', 7),
(124, 'Byndoor Estuary', 'Byndoor', 'Scenic Place', 'Stunning estuary with golden sandbanks.', 0.00, '00:00:00', '23:59:59', 'Dec - Mar', 4),
(125, 'Seethanadi Nature Camp', 'Hebri', 'Scenic Place', 'A nature camp ideal for birdwatching and eco-tourism.', 4000.00, '09:00:00', '17:00:00', 'Nov - Feb', 7),
(126, 'Malyadi Bird Sanctuary', 'Kundapura', 'Scenic Place', 'Sanctuary famous for migratory birds and wetland ecosystem.', 0.00, '00:00:00', '23:59:59', 'Nov - Mar', 5),
(127, 'Mandarthi Hills', 'Mandarthi', 'Scenic Place', 'Scenic hill with religious significance and nature trails.', 0.00, '00:00:00', '23:59:59', 'Oct - Feb', 6),
(128, 'Shankaranarayana Hills', 'Shankaranarayana', 'Scenic Place', 'A spiritual and scenic hill with breathtaking views.', 0.00, '00:00:00', '23:59:59', 'Oct - Feb', 3),
(129, 'Sitanadi River Viewpoint', 'Hebri', 'Scenic Place', 'A peaceful river viewpoint perfect for picnics.', 0.00, '00:00:00', '23:59:59', 'Nov - Feb', 7),
(130, 'Udyavara Backwaters', 'Udyavara', 'Scenic Place', 'Scenic backwaters with traditional boat rides.', 0.00, '00:00:00', '23:59:59', 'Nov - Mar', 1),
(131, 'Uppinakudru Island', 'Uppinakudru', 'Scenic Place', 'Historic island with cultural heritage and scenic beauty.', 0.00, '00:00:00', '23:59:59', 'Oct - Feb', 3),
(132, 'Mulki Backwaters', 'Mulki', 'Scenic Place', 'Scenic water stretch for kayaking and boat rides.', 0.00, '00:00:00', '23:59:59', 'Oct - Feb', 5),
(133, 'Halady Riverbank', 'Halady', 'Scenic Place', 'A calm and picturesque riverbank.', 0.00, '00:00:00', '23:59:59', 'Oct - Feb', 3),
(134, 'Vaderhobli Scenic Spot', 'Kundapura', 'Scenic Place', 'A quiet spot offering scenic beauty and peace.', 0.00, '00:00:00', '23:59:59', 'Oct - Mar', 3),
(135, 'Barkur Riverside', 'Barkur', 'Scenic Place', 'A historic riverfront with picturesque views.', 0.00, '00:00:00', '23:59:59', 'Oct - Feb', 6),
(136, 'Shiriyara Forest Trails', 'Shiriyara', 'Scenic Place', 'A less explored but beautiful forest trekking destination.', 0.00, '00:00:00', '23:59:59', 'Oct - Mar', 3),
(137, 'Kallianpur Riverside', 'Kallianpur', 'Scenic Place', 'A tranquil riverside location with cultural heritage.', 0.00, '00:00:00', '23:59:59', 'Oct - Feb', 1),
(138, 'Belle Hanging Bridge', 'Belle', 'Scenic Place', 'A hanging bridge over a river, ideal for photography.', 0.00, '00:00:00', '23:59:59', 'Oct - Mar', 5),
(139, 'Hebri Forest Range', 'Hebri', 'Scenic Place', 'Densely forested area ideal for trekking and camping.', 0.00, '00:00:00', '23:59:59', 'Nov - Feb', 7),
(140, 'Hulikal Ghati', 'Hulikal', 'Scenic Place', 'Ghat section with misty weather and beautiful scenery.', 0.00, '00:00:00', '23:59:59', 'Jun - Sep', 3),
(141, 'Agumbe Ghat', 'Agumbe', 'Scenic Place', 'A thrilling ghat section with winding roads.', 0.00, '00:00:00', '23:59:59', 'Jun - Sep', 7),
(142, 'Kollur Kodachadri Viewpoint', 'Kollur', 'Scenic Place', 'A famous trekking spot with stunning valley views.', 50.00, '06:00:00', '18:00:00', 'Oct - Feb', 4),
(143, 'Jomlu Theertha Rapids', 'Hebri', 'Scenic Place', 'Fast-flowing rapids, best visited in monsoon.', 0.00, '06:00:00', '18:00:00', 'Jun - Sep', 7),
(144, 'Bajagoli Water Cascade', 'Bajagoli', 'Scenic Place', 'Scenic waterfall hidden within lush green forests.', 0.00, '00:00:00', '23:59:59', 'Jun - Sept', 2);

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `FoodID` int NOT NULL,
  `RestaurantName` varchar(255) DEFAULT NULL,
  `FoodName` varchar(255) DEFAULT NULL,
  `Location` varchar(100) DEFAULT NULL,
  `Type` varchar(255) DEFAULT NULL,
  `TalukID` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`FoodID`, `RestaurantName`, `FoodName`, `Location`, `Type`, `TalukID`) VALUES
(1, 'Samanvay Boutique Hotel', 'Traditional Udupi Thali', 'Udupi', 'Vegetarian', 'Udupi'),
(2, 'White Lotus Hotel', 'Malabar Fish Curry', 'Udupi', 'Both', 'Udupi'),
(3, 'Hotel Sri Krishna Residency', 'Masala Dosa', 'Udupi', 'Vegetarian', 'Udupi'),
(4, 'Hotel Kidiyoor', 'Chicken Ghee Roast', 'Udupi', 'Both', 'Udupi'),
(5, 'Malpe Sea Front Cottage', 'Seafood Platter', 'Malpe', 'Non-Vegetarian', 'Udupi'),
(6, 'Rukmini Residency Hotel', 'Neer Dosa', 'Udupi', 'Vegetarian', 'Udupi'),
(7, 'Hotel Udupi Residency', 'Goli Baje', 'Udupi', 'Vegetarian', 'Udupi'),
(8, 'Hotel Summer Park', 'Mangalore Buns', 'Udupi', 'Vegetarian', 'Udupi'),
(9, 'Hotel Sharada International', 'Fish Curry Meals', 'Udupi', 'Non-Vegetarian', 'Udupi'),
(10, 'Hotel Shambhavi', 'Kori Rotti', 'Udupi', 'Non-Vegetarian', 'Udupi'),
(11, 'Paradise Lagoon', 'Crab Sukka', 'Udupi', 'Non-Vegetarian', 'Udupi'),
(12, 'Treebo Trend Vijaya Grand', 'Paneer Ghee Roast', 'Udupi', 'Vegetarian', 'Udupi'),
(13, 'Hotel Central Park', 'Bisi Bele Bath', 'Manipal', 'Vegetarian', 'Udupi'),
(14, 'Hotel Green Park Suites', 'Rava Idli', 'Manipal', 'Vegetarian', 'Udupi'),
(15, 'Hotel J.K Residency', 'Fish Fry', 'Kundapur', 'Non-Vegetarian', 'Kundapura'),
(16, 'Hotel Kateel International', 'Chicken Sukka', 'Karkala', 'Both', 'Karkala'),
(17, 'Hotel Srinivasa Residency', 'Udupi Special Thali', 'Udupi', 'Vegetarian', 'Udupi'),
(18, 'Hotel Badagumalige', 'Ghee Dosa', 'Udupi', 'Vegetarian', 'Udupi'),
(19, 'Hotel Naivedya', 'Mangalore Buns', 'Udupi', 'Vegetarian', 'Udupi'),
(20, 'Odeya Restaurant', 'Pav Bhaji', 'Udupi', 'Vegetarian', 'Udupi'),
(21, 'LX Brasserie', 'Caramel Custard', 'Udupi', 'Both', 'Udupi'),
(22, 'Malika Fine Dining', 'Khajura Milk Chocolate Brownie', 'Udupi', 'Both', 'Udupi'),
(23, 'Vedanth Veg Restaurant', 'Paneer Tikka', 'Udupi', 'Vegetarian', 'Udupi'),
(24, 'Hotel Suhag', 'South Indian Meals', 'Karkala', 'Vegetarian', 'Karkala'),
(25, 'Hotel Madhuvan Serai', 'Masala Dosa', 'Manipal', 'Vegetarian', 'Udupi'),
(26, 'Hotel Ocean Pearl', 'Seafood Buffet', 'Udupi', 'Non-Vegetarian', 'Udupi'),
(27, 'Hotel Manipal Inn', 'Neer Dosa', 'Manipal', 'Both', 'Udupi'),
(28, 'Hotel Durga International', 'Mangalore Buns', 'Udupi', 'Vegetarian', 'Udupi'),
(29, 'Hotel Udupi Palace', 'Masala Dosa', 'Udupi', 'Vegetarian', 'Udupi'),
(30, 'Hotel Krishna Leela', 'Patrode', 'Udupi', 'Vegetarian', 'Udupi'),
(31, 'Hotel Shree Durga', 'Bisi Bele Bath', 'Udupi', 'Vegetarian', 'Udupi'),
(32, 'Hotel Navaratna', 'Rava Idli', 'Udupi', 'Vegetarian', 'Udupi'),
(33, 'Hotel Janardhana', 'Goli Baje', 'Udupi', 'Vegetarian', 'Udupi'),
(34, 'Hotel Udupi Brindavan', 'Masala Dosa', 'Udupi', 'Vegetarian', 'Udupi'),
(35, 'Hotel Supreme', 'Mangalore Buns', 'Udupi', 'Vegetarian', 'Udupi'),
(36, 'Hotel Shree Krishna Residency', 'Patrode', 'Udupi', 'Vegetarian', 'Udupi'),
(37, 'Hotel Udupi Park Inn', 'Bisi Bele Bath', 'Manipal', 'Both', 'Udupi'),
(38, 'Hotel Manipal Central', 'Neer Dosa', 'Malpe', 'Non-Vegetarian', 'Udupi'),
(39, 'Hotel Paradise Isle Beach Resort', 'Seafood Platter', 'Malpe', 'Non-Vegetarian', 'Udupi'),
(40, 'Hotel Malpe Sea Front', 'Fish Fry', 'Udupi', 'Vegetarian', 'Udupi'),
(41, 'Hotel Saffron', 'Mangalore Buns', 'Udupi', 'Vegetarian', 'Udupi'),
(42, 'Hotel Green Park', 'Goli Baje', 'Udupi', 'Vegetarian', 'Udupi'),
(43, 'Hotel City Comforts', 'Masala Dosa', 'Udupi', 'Non-Vegetarian', 'Udupi'),
(44, 'Hotel Royal Inn', 'Fish Curry Meals', 'Malpe', 'Non-Vegetarian', 'Udupi'),
(45, 'Hotel Mahalakshmi Fishmeals', 'Fried Fish', 'Udupi', 'Non-Vegetarian', 'Udupi'),
(46, 'Thaamboolam', 'Matka Biryani', 'Udupi', 'Both', 'Udupi'),
(47, 'Hotel Swaadisht', 'Tandoori Items', 'Udupi', 'Both', 'Udupi'),
(48, 'Anupam', 'Ghee Roast Items', 'Udupi', 'Both', 'Udupi'),
(49, 'Dawath Family Restaurant', 'South Indian Veg Meals', 'Udupi', 'Vegetarian', 'Udupi'),
(50, 'Café 7 Bees', 'Veg Cutlet', 'Udupi', 'Vegetarian', 'Udupi'),
(51, 'Namaskara Pure Veg Restaurant', 'North Indian Special Thali', 'Udupi', 'Vegetarian', 'Udupi'),
(52, 'CTF Udupi', 'Veg Cheese Sandwiches', 'Udupi', 'Vegetarian', 'Udupi'),
(53, 'Cafiya Restaurant', 'Biryani', 'Udupi', 'Both', 'Udupi'),
(54, 'Gokul Krishna', 'Veg Biryani Combo', 'Udupi', 'Vegetarian', 'Udupi'),
(55, 'Hotel New Shanthi Sagar', 'Mysore Masala Dosa', 'Udupi', 'Vegetarian', 'Udupi'),
(56, 'Annu Hotel', 'Local Cuisine', 'Kukkundoor, Karkal', 'Both', 'Karkala'),
(57, 'Underkatte Bus Stop Krastrayara Hotel', 'Local Snacks', 'Avarse, Udupi', 'Both', 'Udupi'),
(58, 'Gopal Bhat Hotel', 'Traditional Meals', 'Nitte, Karkal', 'Vegetarian', 'Udupi'),
(59, 'Arafa Hotel', 'Seafood Delicacies', 'Hejamadi, Udupi', 'Non-Vegetarian', 'Udupi'),
(60, 'Bar And Restaurant', 'Beverages and Snacks', 'Kumbashi, Kundapura', 'Both', 'Kundapura'),
(61, 'Prakash Hotel', 'Local Breakfast Items', 'Hejamadi, Udupi', 'Vegetarian', 'Udupi'),
(62, 'Ganesh Hotel', 'South Indian Meals', 'Balkunje', 'Vegetarian', 'Udupi'),
(63, 'Usha Hotel', 'Traditional Dishes', 'Balkunje', 'Both', 'Udupi'),
(64, 'Kutti Hotel', 'Seafood Specials', 'Hejamadi, Udupi', 'Non-Vegetarian', 'Udupi'),
(65, 'Hotel Shridevi Prasad Veg', 'Pure Veg Meals', 'Nitte, Karkal', 'Vegetarian', 'Karkala'),
(66, 'Hotel LaxmiPrasad Ajekar', 'Local Delicacies', 'Kadthala, Karkal', 'Both', 'Karkala'),
(67, 'Nayak Hotel', 'Traditional Snacks', 'Nitte, Karkal', 'Vegetarian', 'Karkala'),
(68, 'Bajil Bakery', 'Bakery Items', 'Nitte, Karkal', 'Vegetarian', 'Karkala'),
(69, 'Monu Hotel', 'Seafood Curries', 'Hejamadi, Udupi', 'Non-Vegetarian', 'Udupi'),
(70, 'Preethi Nilaya Mess', 'Homely Meals', 'Nitte, Karkal', 'Vegetarian', 'Karkala'),
(71, 'Shetty Lunch Home', 'Neer Dosa, Fish Curry', 'Kundapura', 'Both', 'Kundapura'),
(72, 'Hotel Sharon', 'Kundapura Chicken Curry', 'Kundapura', 'Non-Veg', 'Kundapura'),
(73, 'Parijatha Restaurant', 'South Indian Meals', 'Kundapura', 'Vegetarian', 'Kundapura'),
(74, 'Naik Fishland', 'Fish Fry, Prawn Masala', 'Kundapura', 'Non-Veg', 'Kundapura'),
(75, 'Udupi Krishna Bhavan', 'Masala Dosa, Idli', 'Kundapura', 'Veg', 'Kundapura'),
(76, 'Hotel Pratap', 'Biryani, Mutton Curry', 'Kundapura', 'Non-Veg', 'Kundapura'),
(77, 'Kollur Annapoorna', 'Kundapura Style Ghee Roast', 'Kollur', 'Both', 'Kundapura'),
(78, 'Sagar Ratna', 'North Indian & South Indian Cuisine', 'Kundapura', 'Veg', 'Kundapura'),
(79, 'Gowri Shankar Hotel', 'Rice Plate, Sambar', 'Kundapura', 'Veg', 'Kundapura'),
(80, 'Thimmappa Fish Hotel', 'Crab Masala, Fish Curry', 'Kundapura', 'Non-Veg', 'Kundapura'),
(81, 'Anupama Restaurant', 'Veg Meals, Masala Dosa', 'Kundapura', 'Veg', 'Kundapura'),
(82, 'Sri Devi Hotel', 'Chicken Ghee Roast, Fish Curry', 'Kundapura', 'Both', 'Kundapura'),
(83, 'Coastal Pearl Restaurant', 'Seafood Thali, Prawn Masala', 'Kundapura', 'Non-Veg', 'Kundapura'),
(84, 'Kediyoor Hotel', 'North Indian Thali, South Indian Meals', 'Kundapura', 'Both', 'Kundapura'),
(85, 'Ocean Pearl Restaurant', 'Seafood Platter, Tandoori Fish', 'Kundapura', 'Non-Veg', 'Kundapura'),
(86, 'Kamat Upachar', 'North Karnataka Meals', 'Kundapura', 'Veg', 'Kundapura'),
(87, 'Hotel Samrat', 'Paneer Butter Masala, Tandoori Roti', 'Kundapura', 'Veg', 'Kundapura'),
(88, 'Hotel Jai Hind', 'Kori Roti, Chicken Sukka', 'Kundapura', 'Non-Veg', 'Kundapura'),
(89, 'Swetha Lunch Home', 'Fish Fry, Mangalore Buns', 'Kundapura', 'Both', 'Kundapura'),
(90, 'Hotel Sri Krishna', 'Udupi Style Vegetarian Meals', 'Kundapura', 'Veg', 'Kundapura'),
(91, 'Annapurna Veg Restaurant', 'Ghee Roast, Dosa Varieties', 'Kundapura', 'Veg', 'Kundapura'),
(92, 'Aroma Restaurant', 'Chinese, Tandoori, Seafood', 'Kundapura', 'Both', 'Kundapura'),
(93, 'Hotel Varsha', 'Idli Sambar, South Indian Breakfast', 'Kundapura', 'Veg', 'Kundapura'),
(94, 'Kundapura Grand', 'Mangalorean Seafood, Chicken Sukka', 'Kundapura', 'Non-Veg', 'Kundapura'),
(95, 'Nayak Canteen', 'Authentic Kundapura Style Chicken', 'Kundapura', 'Non-Veg', 'Kundapura'),
(96, 'Vishnu Bhavan', 'Meals, Dosa', 'Kundapura', 'Veg', 'Kundapura'),
(97, 'Hotel Durga', 'South Indian Breakfast', 'Kundapura', 'Veg', 'Kundapura'),
(98, 'Coastal Spice', 'Pomfret Tandoori, Prawn Curry', 'Kundapura', 'Non-Veg', 'Byndoor'),
(99, 'Malpe Lunch Home', 'Fish Thali, Squid Fry', 'Kundapura', 'Non-Veg', 'Kundapura'),
(100, 'Triveni Restaurant', 'Mixed Cuisine, Dosa', 'Kundapura', 'Both', 'Kundapura'),
(101, 'Sri Rama Bhavan', 'South Indian Meals, Chapati', 'Kundapura', 'Veg', 'Kundapura'),
(102, 'Chaitra Restaurant', 'Roti Curry, Tandoori', 'Kundapura', 'Both', 'Kundapura'),
(103, 'Shiv Sagar Restaurant', 'Veg Meals, Masala Dosa', 'Kundapura', 'Veg', 'Kundapura'),
(104, 'Hotel Anand Bhavan', 'Breakfast, Idli, Dosa', 'Kundapura', 'Veg', 'Kundapura'),
(105, 'Hotel Kinara', 'Seafood, Fish Curry', 'Kapu', 'Non-Veg', 'Kapu'),
(106, 'Nisarga Grand', 'South Indian Thali', 'Kapu', 'Veg', 'Kapu'),
(107, 'Hotel Paradise', 'Masala Dosa, Vada', 'Kapu', 'Veg', 'Kapu'),
(108, 'Ocean Breeze Restaurant', 'Tandoori Fish, Prawns', 'Kapu', 'Non-Veg', 'Kapu'),
(109, 'Shree Devi Lunch Home', 'Neer Dosa, Chicken Curry', 'Kapu', 'Both', 'Kapu'),
(110, 'Malpe Fishland', 'Pomfret Fry, Prawn Curry', 'Kapu', 'Non-Veg', 'Kapu'),
(111, 'Hotel Sanman', 'North Indian Thali, Roti', 'Kapu', 'Veg', 'Kapu'),
(112, 'Ruchi Sagar', 'South Indian Meals', 'Kapu', 'Veg', 'Kapu'),
(113, 'Kapu Biryani House', 'Chicken Biryani, Kebab', 'Kapu', 'Non-Veg', 'Kapu'),
(114, 'Swadisht Veg Restaurant', 'Idli, Dosa, Chapati', 'Kapu', 'Veg', 'Kapu'),
(115, 'Hotel Sri Durga', 'Vegetarian Thali', 'Hebri', 'Veg', 'Hebri'),
(116, 'Hebri Grand', 'Fish Fry, Chicken Sukka', 'Hebri', 'Both', 'Hebri'),
(117, 'Annapoorna Restaurant', 'Dosa, Idli, Poori', 'Hebri', 'Veg', 'Hebri'),
(118, 'Hotel Ocean View', 'Tandoori Chicken, Roti', 'Hebri', 'Both', 'Hebri'),
(119, 'Hotel Udupi Ruchi', 'South Indian Meals', 'Hebri', 'Veg', 'Hebri'),
(120, 'New Taj Hotel', 'Chicken Ghee Roast, Biryani', 'Hebri', 'Non-Veg', 'Hebri'),
(121, 'Sri Krishna Bhavan', 'Dosa, Vada, Coffee', 'Hebri', 'Veg', 'Hebri'),
(122, 'Hotel Aroma', 'Chinese, South Indian', 'Hebri', 'Both', 'Hebri'),
(123, 'Sri Sai Lunch Home', 'Neer Dosa, Fish Curry', 'Hebri', 'Both', 'Hebri'),
(124, 'Hotel Prakash', 'North Indian Meals', 'Karkala', 'Both', 'Karkala'),
(125, 'Karkala Lunch Home', 'Mangalorean Seafood', 'Karkala', 'Non-Veg', 'Karkala'),
(126, 'Sri Durga Bhavan', 'South Indian Thali', 'Karkala', 'Veg', 'Karkala'),
(127, 'Fish Paradise', 'Pomfret Masala, Crab Curry', 'Karkala', 'Non-Veg', 'Karkala'),
(128, 'Hotel Rajadhani', 'North Indian & Chinese', 'Karkala', 'Both', 'Karkala'),
(129, 'Spicy Bite', 'Tandoori Chicken, Rolls', 'Karkala', 'Non-Veg', 'Karkala'),
(130, 'Hotel Annapurna', 'Meals, Poori Bhaji', 'Karkala', 'Veg', 'Karkala'),
(131, 'Shree Krishna Upahar', 'Dosa Varieties, Snacks', 'Karkala', 'Veg', 'Karkala'),
(132, 'Coastal Feast', 'Seafood Thali, Prawns', 'Karkala', 'Non-Veg', 'Karkala'),
(133, 'Sagar Restaurant', 'Fish Thali, Prawn Fry', 'Kapu', 'Non-Veg', 'Kapu'),
(134, 'Tandoori Nights', 'Tandoori Chicken, Roti', 'Kapu', 'Non-Veg', 'Kapu'),
(135, 'Ananda Bhavan', 'South Indian Meals', 'Kapu', 'Veg', 'Kapu'),
(136, 'Nandanavana', 'North Indian Thali', 'Kapu', 'Veg', 'Kapu'),
(137, 'Swathi Veg', 'Dosa, Idli, Sambar', 'Kapu', 'Veg', 'Kapu'),
(138, 'Hebri Delight', 'Biryani, Chicken Curry', 'Hebri', 'Non-Veg', 'Hebri'),
(139, 'Mangalore Lunch Home', 'Neer Dosa, Fish Fry', 'Hebri', 'Both', 'Hebri'),
(140, 'Sri Sai Sagar', 'South Indian Veg', 'Hebri', 'Veg', 'Hebri'),
(141, 'Karkala Spice', 'Biryani, Tandoori', 'Karkala', 'Non-Veg', 'Karkala'),
(142, 'Oceanic Delight', 'Seafood Specialties', 'Karkala', 'Non-Veg', 'Karkala'),
(143, 'Udupi Upachar', 'Masala Dosa, Meals', 'Karkala', 'Veg', 'Karkala'),
(144, 'Hotel Coastal', 'Mangalorean Seafood', 'Kapu', 'Non-Veg', 'Kapu'),
(145, 'Green Leaf', 'Vegetarian Thali', 'Kapu', 'Veg', 'Kapu'),
(146, 'Sri Sagar Veg', 'Idli, Dosa, Coffee', 'Hebri', 'Veg', 'Hebri'),
(147, 'Hotel Woodlands', 'Tandoori, North Indian', 'Hebri', 'Both', 'Hebri'),
(148, 'Maharaja Lunch Home', 'Chicken Sukka, Fish Curry', 'Hebri', 'Both', 'Hebri'),
(149, 'Ravi\'s Kitchen', 'Paneer Butter Masala', 'Karkala', 'Veg', 'Karkala'),
(150, 'Anand Sagar', 'South Indian Breakfast', 'Karkala', 'Veg', 'Karkala'),
(151, 'Thali House', 'Unlimited Meals', 'Karkala', 'Veg', 'Karkala'),
(152, 'Malgudi Cafe', 'Snacks, Tea, Coffee', 'Karkala', 'Veg', 'Karkala'),
(153, 'Mitra Samaj', 'Goli Baje, Masala Dosa', 'Udupi', 'Veg', 'Udupi'),
(154, 'Woodlands Restaurant', 'Udupi Sambar, Set Dosa', 'Udupi', 'Veg', 'Udupi'),
(155, 'Diana Restaurant', 'Gadbad Ice Cream', 'Udupi', 'Veg', 'Udupi'),
(156, 'Hotel Narayana', 'Fish Tawa Fry, Prawn Ghee Roast', 'Malpe', 'Non-Veg', 'Udupi'),
(157, 'Gokarna Hotel', 'Jackfruit Idli, Pathrode', 'Udupi', 'Veg', 'Udupi'),
(158, 'Hotel Krishna Bhavan', 'Authentic Udupi Meals', 'Udupi', 'Veg', 'Udupi'),
(159, 'Hotel Kori Roti', 'Kori Roti, Chicken Sukka', 'Udupi', 'Non-Veg', 'Udupi'),
(160, 'Ravi Goli Baje', 'Authentic Goli Baje', 'Udupi', 'Veg', 'Udupi'),
(161, 'Hotel Panchami', 'Udupi Rasam, Jackfruit Chips', 'Udupi', 'Veg', 'Udupi'),
(162, 'Udupi Garden', 'Vegetarian Thali', 'Udupi', 'Veg', 'Udupi'),
(163, 'Sai Parivar Hotel', 'Traditional Udupi Dishes', 'Udupi', 'Veg', 'Udupi'),
(164, 'Hotel Karkala Delight', 'Ghee Roast, Masala Poori', 'Karkala', 'Veg', 'Karkala'),
(165, 'Coastal Delights', 'Clam Sukka, Fish Tandoori', 'Kundapura', 'Non-Veg', 'Kundapura'),
(166, 'Hebri Fish House', 'Squid Ghee Roast, Prawn Curry', 'Hebri', 'Non-Veg', 'Hebri'),
(167, 'Sri Devi Lunch Home', 'Chicken Ghee Roast', 'Kapu', 'Non-Veg', 'Kapu'),
(168, 'Hotel Ocean Breeze', 'Prawn Masala, Tandoori Fish', 'Kapu', 'Non-Veg', 'Kapu'),
(169, 'Hotel Krishna Residency', 'North Indian & Udupi Cuisine', 'Udupi', 'Both', 'Udupi'),
(170, 'Tandoori Delights', 'Tandoori Pomfret, Chicken Tikka', 'Kundapura', 'Non-Veg', 'Kundapura'),
(171, 'Mangalore Taj', 'Biryani, Prawn Fry', 'Hebri', 'Non-Veg', 'Hebri'),
(172, 'Anand Bhavan', 'Dosa Varieties, Filter Coffee', 'Karkala', 'Veg', 'Karkala'),
(173, 'Oceanic Thali House', 'Unlimited Seafood Thali', 'Malpe', 'Non-Veg', 'Udupi'),
(174, 'Hotel Utsav', 'Rice Rotis, Chutney Pudi', 'Udupi', 'Veg', 'Udupi'),
(175, 'Shree Krishna Sagar', 'Ragi Mudde, Bassaru', 'Hebri', 'Veg', 'Hebri'),
(176, 'Hotel Suruchi', 'Pineapple Gojju, Jolad Roti', 'Karkala', 'Veg', 'Karkala'),
(177, 'Sadhana Lunch Home', 'Roti Curry, Kadle Gassi', 'Udupi', 'Veg', 'Udupi'),
(178, 'Ocean View', 'Tandoori Kingfish, Fish Thali', 'Malpe', 'Non-Veg', 'Udupi'),
(179, 'Coastal Haven', 'Clam Sukka, Fish Fry', 'Kundapura', 'Non-Veg', 'Kundapura');

-- --------------------------------------------------------

--
-- Table structure for table `localexperiences`
--

CREATE TABLE `localexperiences` (
  `ExperienceID` int NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `Category` varchar(50) NOT NULL,
  `Description` longtext,
  `Price` decimal(10,2) DEFAULT NULL,
  `Timings` varchar(100) DEFAULT NULL,
  `Rating` float DEFAULT NULL,
  `TalukID` int NOT NULL
) ;

--
-- Dumping data for table `localexperiences`
--

INSERT INTO `localexperiences` (`ExperienceID`, `Name`, `Location`, `Category`, `Description`, `Price`, `Timings`, `Rating`, `TalukID`) VALUES
(50, 'Parasailing at Malpe Beach', 'Malpe Beach', 'Activity/Experience', 'Enjoy thrilling aerial views of the Arabian Sea.', 1350.00, '9:00 AM - 5:00 PM (Subject to weather)', 4.2, 1),
(51, 'Jet Skiing at Malpe Beach', 'Malpe Beach', 'Activity/Experience', 'Experience high-speed water adventure in the open sea.', 900.00, '9:00 AM - 5:30 PM', 4, 1),
(52, 'Banana Boat Ride at Malpe Beach', 'Malpe Beach', 'Activity/Experience', 'Fun-filled ride ideal for groups and families.', 450.00, '9:00 AM - 6:00 PM', 4.1, 1),
(53, 'Kayaking at Kodi Bengre', 'Kodi Bengre', 'Activity/Experience', 'Paddle through scenic mangrove forests and calm waters.', 700.00, '7:00 AM - 5:00 PM', 4.3, 2),
(54, 'Surfing at Kodi Beach', 'Kodi Beach', 'Activity/Experience', 'Learn to surf on the perfect waves of Kodi Beach.', 2000.00, '6:00 AM - 10:00 AM & 3:30 PM - 6:00 PM', 4.5, 2),
(55, 'Snorkeling at St. Mary\'s Island', 'St. Mary\'s Island', 'Activity/Experience', 'Discover exotic marine species near the volcanic rocks.', 1100.00, '9:00 AM - 4:00 PM (Last ferry at 2:30 PM)', 4.4, 1),
(56, 'Trekking at Kudremukh', 'Kudremukh', 'Activity/Experience', 'Challenging trek with rewarding views and nature immersion.', 1000.00, '6:00 AM - 6:00 PM (Overnight with permit)', 4.7, 3),
(57, 'Trekking at Agumbe', 'Agumbe', 'Activity/Experience', 'Lush rainforest trek with stunning biodiversity.', 750.00, '6:00 AM - 5:00 PM', 4.6, 1),
(58, 'Trekking at Kodachadri', 'Kodachadri', 'Activity/Experience', 'Scenic and spiritually significant trek with waterfalls.', 550.00, '5:00 AM - 6:00 PM', 4.8, 2),
(59, 'River Rafting at Seethanadi', 'Seethanadi', 'Activity/Experience', 'Exciting river rafting experience during monsoon.', 2000.00, '9:00 AM - 4:00 PM (Monsoon only)', 4.4, 1),
(60, 'Camping at Agumbe Rainforest', 'Agumbe', 'Activity/Experience', 'Camp in one of India\'s wettest regions amidst fireflies.', 2250.00, 'Check-in: 2:00 PM, Check-out: 11:00 AM', 4.5, 1),
(61, 'Cycling through Udupi Coastal Roads', 'Udupi Coastal Roads', 'Activity/Experience', 'Ride through the beautiful coastal villages of Udupi.', 650.00, '6:00 AM - 6:00 PM', 4.2, 1),
(62, 'Off-Road Jeep Safari in Kundapura', 'Kundapura', 'Activity/Experience', 'Off-road adventure through rugged terrains and hills.', 2000.00, '8:00 AM - 5:00 PM', 4.1, 2),
(63, 'ATV Biking at Padubidri', 'Padubidri', 'Activity/Experience', 'Enjoy an adrenaline-pumping ride on ATV bikes.', 1000.00, '9:00 AM - 6:00 PM', 4, 4),
(64, 'Night Camping at Kudremukh National Park', 'Kudremukh', 'Activity/Experience', 'Camp under the stars with stunning mountain views.', 2750.00, 'Check-in: 2:00 PM, Check-out: 11:00 AM', 4.6, 3),
(65, 'Rock Climbing at Manipal End Point', 'Manipal', 'Activity/Experience', 'Experience rock climbing with a scenic valley view.', 1150.00, '7:00 AM - 5:00 PM', 4.3, 1),
(66, 'Wildlife Spotting at Mookambika Wildlife Sanctuary', 'Mookambika Wildlife Sanctuary', 'Activity/Experience', 'Spot unique wildlife species in their natural habitat.', 350.00, '6:00 AM - 6:00 PM', 4.2, 2),
(67, 'Waterfall Rappelling at Onake Abbi Falls', 'Onake Abbi Falls', 'Activity/Experience', 'Feel the rush of rappelling down a waterfall.', 2000.00, '9:00 AM - 4:00 PM', 4.5, 3),
(68, 'Houseboat Stay in Udupi Backwaters', 'Udupi Backwaters', 'Activity/Experience', 'Stay on a houseboat and experience Udupi\'s backwaters.', 6500.00, 'Check-in: 12:00 PM, Check-out: 11:00 AM', 4.4, 2),
(69, 'Mangrove Kayaking at Swarna River', 'Swarna River', 'Activity/Experience', 'Kayak through serene mangrove forests and backwaters.', 850.00, '7:00 AM - 5:00 PM', 4.3, 1),
(70, 'Fishing Experience at Kodi', 'Kodi', 'Activity/Experience', 'Try local fishing techniques with traditional fishermen.', 1000.00, '5:00 AM - 8:00 AM & 3:00 PM - 6:00 PM', 4.2, 2),
(71, 'Backwater Cruise at Kundapura', 'Kundapura', 'Activity/Experience', 'Cruise through beautiful coastal estuaries and backwaters.', 1250.00, '9:00 AM - 5:00 PM', 4.3, 2),
(72, 'Traditional Yakshagana Performance', 'Various locations', 'Activity/Experience', 'Watch the vibrant storytelling performance of Karnataka.', 350.00, '7:00 PM - 11:00 PM (seasonal)', 4.7, 6),
(73, 'Temple Prasadam Experience at Krishna Mutt', 'Udupi Krishna Mutt', 'Activity/Experience', 'Taste divine temple food served in Udupi\'s Krishna temple.', 225.00, '12:00 PM - 2:30 PM & 7:00 PM - 8:30 PM', 4.8, 1),
(74, 'Exploring Barkur Historical Town', 'Barkur', 'Activity/Experience', 'Explore ancient ruins and heritage structures of Barkur.', 0.00, '9:00 AM - 5:00 PM', 4.1, 1),
(75, 'Local Udupi Cuisine Tasting', 'Udupi', 'Activity/Experience', 'Relish authentic Udupi dishes in local eateries.', 350.00, '11:00 AM - 3:00 PM & 7:00 PM - 10:00 PM', 4.6, 1),
(76, 'Visiting a Traditional Tile Factory in Coondapur', 'Coondapur', 'Activity/Experience', 'Learn about traditional tile-making techniques.', 125.00, '10:00 AM - 4:00 PM (Mon-Sat)', 3.9, 2),
(77, 'Handloom Weaving Experience in Karkala', 'Karkala', 'Activity/Experience', 'Observe local weavers crafting traditional fabrics.', 200.00, '9:00 AM - 5:00 PM (Mon-Sat)', 4, 3),
(78, 'Attending Kambala Buffalo Race', 'Various locations', 'Activity/Experience', 'Watch the thrilling buffalo race in muddy tracks.', 250.00, 'Seasonal (Nov-Mar)', 4.5, 6),
(79, 'Experiencing Bhoota Kola Ritual', 'Various locations', 'Activity/Experience', 'Witness an ancient spirit worship tradition.', 0.00, 'Night performances (seasonal)', 4.7, 6),
(80, 'Visiting a Toddy Tapping Farm', 'Udupi', 'Activity/Experience', 'Learn about traditional toddy tapping and tasting.', 650.00, '7:00 AM - 11:00 AM', 4, 1),
(81, 'Learning About Udupi\'s Astha Mathas', 'Udupi', 'Activity/Experience', 'Understand the spiritual heritage of the Ashta Mathas.', 0.00, '6:00 AM - 8:00 PM', 4.5, 1),
(82, 'Participating in a Temple Chariot Festival', 'Various locations', 'Activity/Experience', 'Participate in the grandeur of temple car festivals.', 0.00, 'Varies by temple calendar', 4.8, 6),
(83, 'Exploring Karkala Jain Monuments', 'Karkala', 'Activity/Experience', 'Marvel at ancient Jain architecture and temples.', 0.00, '8:00 AM - 6:00 PM', 4.4, 3),
(84, 'Witnessing Sunset at Maravanthe Beach', 'Maravanthe Beach', 'Activity/Experience', 'Enjoy one of the best sunset views in Karnataka.', 0.00, '5:00 PM - 7:00 PM', 4.9, 2),
(85, 'Island Hopping Near St. Mary\'s Island', 'St. Mary\'s Island', 'Activity/Experience', 'Hop between scenic islands for an exotic experience.', 1500.00, '9:00 AM - 3:30 PM (Last ferry)', 4.3, 1),
(86, 'Learning Traditional Boat Making in Malpe', 'Malpe', 'Activity/Experience', 'See how traditional fishing boats are built.', 400.00, '10:00 AM - 4:00 PM (Mon-Sat)', 3.8, 1),
(87, 'Visiting a Cashew Processing Unit', 'Various locations', 'Activity/Experience', 'Visit factories processing cashews, a local delicacy.', 150.00, '10:00 AM - 4:00 PM (Mon-Fri)', 3.7, 6),
(88, 'Bird Watching at Malyadi Bird Sanctuary', 'Malyadi', 'Activity/Experience', 'Observe rare migratory birds in their natural habitat.', 300.00, '6:00 AM - 9:00 AM & 4:00 PM - 6:00 PM', 4.5, 2),
(89, 'Exploring Byndoor Estuary', 'Byndoor', 'Activity/Experience', 'Explore the estuary where river meets the sea.', 0.00, '6:00 AM - 6:00 PM', 4.2, 5),
(90, 'Village Walk in Varanga', 'Varanga', 'Activity/Experience', 'Experience the tranquility of rural life in Varanga.', 400.00, '9:00 AM - 5:00 PM', 4.1, 3),
(91, 'Staying at a Traditional Udupi Homestay', 'Udupi', 'Activity/Experience', 'Stay in a traditional Udupi home and experience local culture.', 2250.00, 'Check-in: 12:00 PM, Check-out: 11:00 AM', 4.6, 6),
(92, 'Learning Yakshagana Dance', 'Various locations', 'Activity/Experience', 'Learn the art of Karnataka\'s folk dance-drama.', 750.00, 'By appointment', 4.4, 6),
(93, 'Local Market Tour in Udupi', 'Udupi', 'Activity/Experience', 'Explore the colorful and vibrant Udupi market.', 450.00, '7:00 AM - 12:00 PM', 4.3, 1),
(94, 'Exploring Ancient Forts in Udupi', 'Various locations', 'Activity/Experience', 'Discover the lesser-known historical forts of Udupi.', 0.00, '9:00 AM - 5:00 PM', 4, 6),
(95, 'Visiting a Sea Shell Museum', 'Udupi', 'Activity/Experience', 'A unique museum showcasing sea shells and marine artifacts.', 225.00, '10:00 AM - 5:00 PM (Closed Mondays)', 4.2, 1),
(96, 'Night Walk on a Udupi Beach', 'Udupi Beaches', 'Activity/Experience', 'Enjoy peaceful walks along Udupi\'s quiet beaches at night.', 0.00, '7:00 PM - 9:00 PM', 4.4, 6),
(97, 'Star Gazing at Kudremukh', 'Kudremukh', 'Activity/Experience', 'Observe the stunning night sky with minimal light pollution.', 750.00, '8:00 PM - 11:00 PM', 4.7, 3),
(98, 'Udupi\'s Annual Car Festival Experience', 'Udupi Krishna Temple', 'Activity/Experience', 'Be part of the grand annual temple car festival.', 0.00, 'Festival dates (varies annually)', 4.9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `taluk`
--

CREATE TABLE `taluk` (
  `TalukID` int NOT NULL,
  `TalukName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `taluk`
--

INSERT INTO `taluk` (`TalukID`, `TalukName`) VALUES
(6, 'Brahmavara'),
(4, 'Byndoor'),
(7, 'Hebri'),
(2, 'Karkala'),
(5, 'Kaup'),
(3, 'Kundapur'),
(1, 'Udupi');

-- --------------------------------------------------------

--
-- Table structure for table `transportoptions`
--

CREATE TABLE `transportoptions` (
  `TransportID` int NOT NULL,
  `Mode` varchar(50) NOT NULL,
  `ProviderName` varchar(100) DEFAULT NULL,
  `ContactInfo` varchar(100) DEFAULT NULL,
  `PriceRange` varchar(50) DEFAULT NULL,
  `Timings` varchar(100) DEFAULT NULL,
  `RouteDetails` longtext,
  `TalukID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accommodation`
--
ALTER TABLE `accommodation`
  ADD PRIMARY KEY (`AccommodationID`),
  ADD KEY `TalukID` (`TalukID`);

--
-- Indexes for table `destinations`
--
ALTER TABLE `destinations`
  ADD PRIMARY KEY (`DestinationID`),
  ADD KEY `TalukID` (`TalukID`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`FoodID`);

--
-- Indexes for table `localexperiences`
--
ALTER TABLE `localexperiences`
  ADD PRIMARY KEY (`ExperienceID`),
  ADD KEY `TalukID` (`TalukID`);

--
-- Indexes for table `taluk`
--
ALTER TABLE `taluk`
  ADD PRIMARY KEY (`TalukID`),
  ADD UNIQUE KEY `TalukName` (`TalukName`);

--
-- Indexes for table `transportoptions`
--
ALTER TABLE `transportoptions`
  ADD PRIMARY KEY (`TransportID`),
  ADD KEY `TalukID` (`TalukID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accommodation`
--
ALTER TABLE `accommodation`
  MODIFY `AccommodationID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `destinations`
--
ALTER TABLE `destinations`
  MODIFY `DestinationID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `FoodID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT for table `localexperiences`
--
ALTER TABLE `localexperiences`
  MODIFY `ExperienceID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `taluk`
--
ALTER TABLE `taluk`
  MODIFY `TalukID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `transportoptions`
--
ALTER TABLE `transportoptions`
  MODIFY `TransportID` int NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accommodation`
--
ALTER TABLE `accommodation`
  ADD CONSTRAINT `accommodation_ibfk_1` FOREIGN KEY (`TalukID`) REFERENCES `taluk` (`TalukID`) ON DELETE CASCADE;

--
-- Constraints for table `destinations`
--
ALTER TABLE `destinations`
  ADD CONSTRAINT `destinations_ibfk_1` FOREIGN KEY (`TalukID`) REFERENCES `taluk` (`TalukID`) ON DELETE CASCADE;

--
-- Constraints for table `localexperiences`
--
ALTER TABLE `localexperiences`
  ADD CONSTRAINT `localexperiences_ibfk_1` FOREIGN KEY (`TalukID`) REFERENCES `taluk` (`TalukID`) ON DELETE CASCADE;

--
-- Constraints for table `transportoptions`
--
ALTER TABLE `transportoptions`
  ADD CONSTRAINT `transportoptions_ibfk_1` FOREIGN KEY (`TalukID`) REFERENCES `taluk` (`TalukID`) ON DELETE CASCADE;
--
-- Database: `udupi`
--
CREATE DATABASE IF NOT EXISTS `udupi` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
USE `udupi`;

-- --------------------------------------------------------

--
-- Table structure for table `accommodation`
--

CREATE TABLE `accommodation` (
  `AccommodationID` int NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `Type` varchar(50) NOT NULL,
  `PriceRange` varchar(50) DEFAULT NULL,
  `Amenities` longtext,
  `ContactInfo` varchar(100) DEFAULT NULL,
  `Rating` float DEFAULT NULL,
  `TalukID` int NOT NULL
) ;

--
-- Dumping data for table `accommodation`
--

INSERT INTO `accommodation` (`AccommodationID`, `Name`, `Location`, `Type`, `PriceRange`, `Amenities`, `ContactInfo`, `Rating`, `TalukID`) VALUES
(1, 'Samanvay Boutique hotel', 'main road, next to govinda mantapa kinnimulki udupi', 'lodge', NULL, NULL, '0820 250 0250', 4.5, 1),
(2, 'svarna homestay', 'near bridge,santhekatte nayampally', 'lodge', NULL, NULL, NULL, 4.9, 1),
(3, 'Essentia Manipal Inn', 'near karavali bypass,NH66,udupi', '4 star hotel', NULL, NULL, NULL, 4.5, 1),
(4, 'Hotel udupi inn', 'shiribeedu tower,near city bus stand,thekpete maruthi veethika udupi', 'hotel', NULL, NULL, '91 820 201 0333', 4.4, 1),
(5, 'Collection O Venky\'s Stay Inn', 'K.M.road,opp kalpana theatre,behind kalyan jewellers udupi-manipal', 'hotel', NULL, NULL, '0124 620 1383', 3.3, 1),
(6, 'krishna kausthubha apartment', 'katte acharya marg,kunjibettu,udupi', 'apartment', NULL, NULL, '070222 88141', 4.1, 1),
(7, 'Udupi Yatrinivas', 'sri krishna temple complex,thenkapete maruthi veethika,udupi', 'hotel', NULL, NULL, '-', 4.7, 1),
(8, 'chithara comforts', 'S.NO-114/B2P5,Kavi muddana road,shinibeedu udupi', 'hotel', NULL, NULL, '063663 73353', 4, 1),
(9, 'hotel sri krishna residency', 'badagubet road,thenkapete maruthi,veethika udupi', 'residency', NULL, NULL, '095918 11362', 4.2, 1),
(10, 'hotel durga international', 'badagubet road,thenkapete maruthi,veethika udupi', 'hotel', NULL, NULL, '0820 253 6973', 3.7, 1),
(11, 'hotel southern heritage', 'saiberakatte,shiriyar Village, Brahmavara, Udupi', 'hotel', NULL, NULL, NULL, 4, 6),
(12, 'the postcards on the arabian sea', 'MJPW+558 Trasi proper kundapur .udupi', 'hotel', NULL, NULL, '079995 55222', 3.5, 3),
(13, 'meenakshi inn', 'opp. Adarsh hospital, Brahmagiri, Udupi', 'hotel', NULL, NULL, '094482 86766', 4.7, 1),
(14, 'hotel sharada international', 'NH 17,bananjje ,adi udupi,udupi', 'hotel', NULL, NULL, '080808 05060', 3.5, 1),
(15, 'hotel sri ram residency', 'Head Post Office Rd, Thenkpete, Maruthi Veethika, Udupi', 'hotel', NULL, NULL, '0820 253 0761', 3.9, 1),
(16, 'saadhana comforts lodge', 'Head Post Office Rd, Thenkpete, Maruthi Veethika, Udupi', 'lodge', NULL, NULL, '099019 45833', 3.8, 1),
(17, 'hotel century executive', 'sankrit clg road near parivar sweets,udupi', 'lodge', NULL, NULL, '-', 3.7, 1),
(18, 'sri vidya palace', 'kaadebettu road udupi', 'apartment', NULL, NULL, '-', 4.5, 1),
(19, 'hallimne homestay', 'opposite to marne primary school ,udupi', 'homestay', NULL, NULL, '-', 4.6, 1),
(20, 'tiny waves', 'hungarkatte road,udupi', 'sea view ,villas', NULL, NULL, '098456 70910', 4.7, 1),
(21, 'shri jayadurga boading &lodging', 'indrali railway station udupi', 'lodge', NULL, NULL, '096635 38259', 1.9, 1),
(22, 'atithi homeshay udupi', 'balaji layout,H,No 4-45B ,madhava nilaya near st mary\'s eng medium school kannarpady udupi', 'homestay', NULL, NULL, '081059 62412', 4.7, 1),
(23, 'jalaprabha house manipal', 'jalaprabha house,plat no 172 HIG16,anant nagar,hudco colony manipal udupi', 'villas', NULL, NULL, NULL, 3.9, 1),
(24, 'willo stays luxe heritage home', 'malpe padukere main bridge,udupi', 'homestay', NULL, NULL, NULL, 4.2, 1),
(25, 'vyvahar lodge', 'kanakadasa road near shri krishna temple udupi', 'lodge', NULL, NULL, '088849 63168', 3.5, 1),
(26, 'hi5 holiday apartment udupi', 'udupi laxminagara,malpe rd,santhekatte,udupi', 'apartment', NULL, NULL, NULL, 4.8, 1),
(27, 'rock finch holiday homes', 'kadkar Dr.TMA pai raod kadekar seaview rd udupi', 'lodge', NULL, NULL, NULL, 3.8, 1),
(28, 'leelas coral creek inn', 'malpe padukere pangala road,udupi', 'sea view', NULL, NULL, NULL, 5, 1),
(29, 'sri krishna AC homestay', 'kakkunje rd door no.12/43B2 radhe shym udupi', 'apartment', NULL, NULL, '099454 21665', 5, 1),
(30, 'mehaan GF01 homestay', 'kalsanka ambagilu road udupi', 'sea view,resort', NULL, NULL, NULL, 4.3, 1),
(31, 'paradise isle beach homestay', '46,malpe beach udupi', 'sea view', NULL, NULL, '078478 00800', 3.4, 1),
(32, 'Ace of space homestay', 'Uddinahithlu, Post, Kodavoor, Udupi, Karnataka 576106', 'apartment', NULL, NULL, '073386 77266', 4.9, 1),
(33, 'Hotel Prakash', 'Shayana Temple, SH 37, near Anantha, Karkala, Karnataka 574234', '3star hotel', NULL, NULL, '9632826562', 4.1, 2),
(34, 'Usha boarding and lodging', 'Jodurasthe, Karkala, Karnataka 576117', 'lodge', NULL, NULL, '9845155791', 4.2, 2),
(35, 'Hotel Kateel International', 'Vendors Lane, Market Rd, near Bus Stand, Karkala, Karnataka 574104', '5star hotel', NULL, NULL, '7022593107', 4.1, 2),
(36, 'Hotel Savita Rooftop Family Bar & Restaurant', 'Shivathikere bypass, Udupi - Karkala Rd, Karkala, Karnataka 574104', 'hotel', NULL, NULL, '8258298485', 3.7, 2),
(37, 'OYO Viraj The Village Bar And Restaurant Boarding & Lodging', 'SH1, Karkala, Karnataka 574104', 'lodge', NULL, NULL, '1246201327', 3.9, 2),
(38, 'Angels Avenue', 'Angels Avenue, beside CSI Bethanya church, Karkala, Karnataka 574110', 'homestay', NULL, NULL, '9980881076', 4.8, 2),
(39, 'Hotel Samudyatha Inn And Suites', 'Near Fish Market,Behind Municipal Office,Kundapura,Dist-Udupi,State Karnataka,India, 576201', 'hotel', NULL, NULL, '94812 49777', 4, 3),
(40, 'UVA MANISH', 'Kundapura Main Road, 576201 Kundapur, India', 'hotel', NULL, NULL, '088671 12555', 4.4, 3),
(41, 'Glucklich Beach Cottages', 'Beejadi Beach Road, 576222 Kundapur, India', 'cottage', NULL, NULL, '63667 16766', 4.5, 3),
(42, 'Travelers Guest House', '1st Floor, E Block Rd, VL layout, Kundapura, Karnataka 576201', 'guest house', NULL, NULL, NULL, 4, 3),
(43, 'Blue Waters', 'Fort Gate Holiday Homes, Fort Gate Near Inspection Bungalow, Kundapur, 576201', 'holiday home', NULL, NULL, NULL, 4, 3),
(44, 'Sanjana service apartments', 'Taluk office, Udupi - Karkala Rd, Karkala, Karnataka 574104', 'apartment', NULL, NULL, '9845313628', 4, 2),
(45, 'Karkala Inn and Stay', '5XVV+RQX, Pulkeri, Karkala, Karnataka 574104', 'hotel', NULL, NULL, NULL, 5, 2),
(46, 'Hotel suhag', 'Gopal Towers, Main Rd, near Indian Overseas Bank, Karkala, Karnataka 574104', 'hotel', NULL, NULL, '8258231991', 3.9, 2),
(47, 'Kings court hotel', 'SH 37, Karkala, Karnataka 574104', 'hotel', NULL, NULL, '8971193815', 3.7, 2),
(48, 'Hotel Balaji Inn', 'Udupi Main Road, Bandimata, Karkala, Karnataka 574104', 'hotel', NULL, NULL, '9663729867', 4.2, 2),
(49, 'Hotel Swagath', 'Near Bus Stand, Udupi, SH 37, Dist, Karkala, Karnataka 574104', 'hotel', NULL, NULL, '8258230755', 3.9, 2),
(50, 'Savita Lodging Karkala', 'Shivathikere Bypass Road, Taluk, Karkala, Karnataka 574104', 'lodge', NULL, NULL, '9403591333', 4.2, 2),
(51, 'HOTEL MAYURA INTERNATIONAL', 'Bypass, NH 169, Kudremukha Road, Pulkeri, Karkala, Karnataka 574104', 'hotel', NULL, NULL, '6360838382', 4, 2),
(52, 'Vardhaman Dhanashala Residency', 'NA, Parpale, Near Chaturmukha Basadi, Dhanashala, karkala, taluk, Karkala, Karnataka 574104', 'hotel', NULL, NULL, '9108702417', 4, 2),
(53, 'Hotel Sitara Lodge and Boarding', 'H T Residency Beside Bank of Baroda and Opp Canara Bank, Jodu Raste Circle, Kukkundoor', 'hotel', NULL, NULL, NULL, 4.3, 2),
(54, 'Ratna Forever Hotel', 'Vendors Lane, Market Rd, near Bus Stand, Karkala, Karnataka 574104', 'hotel', NULL, NULL, '7338088744', 4.1, 2),
(55, 'Sanman regency', 'Nitte Parapady, Karkala - Padubidri Rd, Tq, Karnataka 574110', 'hotel', NULL, NULL, NULL, 4, 2),
(56, 'Sudhanna Residency | Lodge', 'Sri pragathi ganesh trade center, Ajekar J.H.C., Karnataka 574101', 'lodge', NULL, NULL, '7259542269', 4.3, 2),
(57, 'SPOT ON 48925 Sagar Arcade', '1, Nitte karkala padubidri road, udupi talukh, Karkala, Karnataka 574110', 'hotel', NULL, NULL, '1246201327', 4.3, 2),
(58, 'Archana Bar and Family Restaurant(A/C) with Lodging', 'Karkala - Hiriyadka Rd, Bailur, Karnataka 574102', 'lodge', NULL, NULL, '9482335688', 4.1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `destinations`
--

CREATE TABLE `destinations` (
  `DestinationID` int NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `Category` varchar(50) NOT NULL,
  `Description` longtext,
  `EntryFee` decimal(10,2) DEFAULT NULL,
  `OpeningTime` time DEFAULT NULL,
  `ClosingTime` time DEFAULT NULL,
  `BestSeason` varchar(50) DEFAULT NULL,
  `TalukID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `destinations`
--

INSERT INTO `destinations` (`DestinationID`, `Name`, `Location`, `Category`, `Description`, `EntryFee`, `OpeningTime`, `ClosingTime`, `BestSeason`, `TalukID`) VALUES
(1, 'Udupi Sri Krishna Matha', 'Udupi', 'Temple', 'One of the most famous Hindu temples dedicated to Lord Krishna.', 0.00, '04:00:00', '21:00:00', 'Oct - Mar', 1),
(2, 'Anantha Padmanabha Temple', 'Perdoor, Udupi', 'Temple', 'A beautiful temple dedicated to Lord Vishnu.', 0.00, '06:00:00', '20:00:00', 'Nov - Feb', 2),
(3, 'Anegudde Vinayaka Temple', 'Kumbashi, Udupi', 'Temple', 'A famous temple dedicated to Lord Ganesha.', 0.00, '05:30:00', '20:30:00', 'Aug - Feb', 3),
(4, 'Kollur Mookambika Temple', 'Kollur, Udupi', 'Temple', 'A renowned temple dedicated to Goddess Mookambika, visited by thousands.', 0.00, '05:00:00', '21:00:00', 'Oct - Mar', 4),
(5, 'Kadiyali Mahisha Mardini Temple', 'Udupi', 'Temple', 'An ancient temple dedicated to Goddess Durga.', 0.00, '06:00:00', '20:00:00', 'Sep - Mar', 1),
(6, 'Shree Durga Parameshwari Temple', 'Kateel, Udupi', 'Temple', 'A famous temple located on an island in the middle of the river Nandini.', 0.00, '04:00:00', '22:00:00', 'Aug - Mar', 5),
(7, 'Shree Veeranarayana Temple', 'Karkala, Udupi', 'Temple', 'A historical temple dedicated to Lord Narayana.', 0.00, '06:00:00', '20:00:00', 'Dec - Feb', 2),
(8, 'Shree Venkataramana Temple', 'Karkala, Udupi', 'Temple', 'A temple dedicated to Lord Venkateshwara, known for its Rathotsava (chariot festival).', 0.00, '06:00:00', '20:00:00', 'Jan - Feb', 1),
(9, 'Shree Mahalingeshwara Temple', 'Barkur, Udupi', 'Temple', 'A historic Shiva temple located in the Barkur region.', 0.00, '06:00:00', '20:00:00', 'Dec - Mar', 6),
(10, 'Shree Siddhi Vinayaka Temple', 'Hattiangadi, Udupi', 'Temple', 'A famous Ganesha temple known for its unique idol of Lord Ganesha.', 0.00, '06:00:00', '20:00:00', 'Aug - Dec', 7),
(11, 'Shree Vishnumurthy Temple', 'Kota, Udupi', 'Temple', 'An ancient temple dedicated to Lord Vishnu.', 0.00, '06:00:00', '20:00:00', 'Nov - Mar', 5),
(12, 'Shree Ananteshwara Temple', 'Udupi', 'Temple', 'A significant temple dedicated to Lord Ananteshwara, associated with Sri Madhvacharya.', 0.00, '05:30:00', '20:30:00', 'Oct - Mar', 1),
(13, 'Shree Kumbashi Ganapathi Temple', 'Kumbashi, Udupi', 'Temple', 'A well-known temple dedicated to Lord Ganapathi.', 0.00, '06:00:00', '20:00:00', 'Aug - Feb', 3),
(14, 'Shree Chaturmukha Basadi', 'Karkala, Udupi', 'Temple', 'A famous Jain temple with four identical entrances.', 0.00, '06:00:00', '18:00:00', 'Nov - Feb', 2),
(15, 'Shree Kundeshwara Temple', 'Kundapur, Udupi', 'Temple', 'A Shiva temple famous for its annual Rathotsava festival.', 0.00, '06:00:00', '20:00:00', 'Feb', 3),
(16, 'Shree Sowthadka Mahaganapathi Temple', 'Belman, Udupi', 'Temple', 'A unique open-air temple dedicated to Lord Ganesha.', 0.00, '06:00:00', '19:00:00', 'Oct - Feb', 2),
(17, 'Shree Kamalashile Brahmi Durgaparameshwari Temple', 'Kundapur, Udupi', 'Temple', 'A famous temple with a sacred river and cave.', 0.00, '06:00:00', '20:00:00', 'Sep - Mar', 3),
(18, 'Shree Siddi Vinayaka Temple', 'Anegudde, Udupi', 'Temple', 'A powerful temple dedicated to Lord Ganesha, visited for wish fulfillment.', 0.00, '05:30:00', '20:30:00', 'Aug - Dec', 5),
(19, 'Shree Nandikeshwara Temple', 'Karkala, Udupi', 'Temple', 'A historic temple dedicated to Nandi, the vehicle of Lord Shiva.', 0.00, '06:00:00', '20:00:00', 'Dec - Feb', 7),
(20, 'Shree Janardhana Mahakali Temple', 'Ambalpadi, Udupi', 'Temple', 'A twin deity temple with Lord Janardhana and Goddess Mahakali.', 0.00, '06:00:00', '20:00:00', 'Nov - Mar', 5),
(21, 'Shree Laxmi Venkatesha Temple', 'Katapady, Udupi', 'Temple', 'A revered temple dedicated to Lord Venkatesha and Goddess Laxmi.', 0.00, '06:00:00', '20:00:00', 'Oct - Feb', 1),
(22, 'Shree Durgaparameshwari Temple', 'Mandarthi, Udupi', 'Temple', 'One of the most powerful temples dedicated to Goddess Durga.', 0.00, '06:00:00', '20:00:00', 'Oct - Mar', 3),
(23, 'Shree Balakrishna Temple', 'Neelavara, Udupi', 'Temple', 'A temple dedicated to Lord Krishna with historical significance.', 0.00, '06:00:00', '20:00:00', 'Oct - Mar', 1),
(24, 'Shree Panchalingeshwara Temple', 'Kundapur, Udupi', 'Temple', 'A temple dedicated to five Lingas of Lord Shiva.', 0.00, '06:00:00', '20:00:00', 'Nov - Mar', 6),
(25, 'Shree Shankaranarayana Temple', 'Shankaranarayana, Udupi', 'Temple', 'A temple where Lord Shiva and Vishnu are worshiped together.', 0.00, '06:00:00', '20:00:00', 'Nov - Mar', 3),
(26, 'Shree Indrani Temple', 'Udupi', 'Temple', 'A unique temple dedicated to Goddess Indrani, rarely found in India.', 0.00, '06:00:00', '20:00:00', 'Sep - Feb', 1),
(27, 'Shree Harihareshwara Temple', 'Kallianpur, Udupi', 'Temple', 'A temple dedicated to Lord Vishnu and Lord Shiva.', 0.00, '06:00:00', '20:00:00', 'Nov - Feb', 3),
(28, 'Shree Jarandeshwara Temple', 'Barkur, Udupi', 'Temple', 'A temple with historical and cultural importance.', 0.00, '06:00:00', '20:00:00', 'Oct - Feb', 4),
(29, 'Shree Ayyappa Temple', 'Karkala, Udupi', 'Temple', 'A famous pilgrimage spot for devotees of Lord Ayyappa.', 0.00, '06:00:00', '20:00:00', 'Nov - Jan', 1),
(30, 'Shree Vaidyanatha Temple', 'Hebri, Udupi', 'Temple', 'A temple dedicated to Lord Shiva, known for its healing powers.', 0.00, '06:00:00', '20:00:00', 'Sep - Feb', 4),
(31, 'Malpe Beach', 'Malpe Beach', 'Beach', 'Famous for water sports, golden sands, and sunset views.', 0.00, '06:00:00', '20:00:00', 'Oct - Feb', 1),
(32, 'Kaup Beach', 'Kaup Beach', 'Beach', 'Known for its lighthouse and breathtaking sea views.', 0.00, '00:00:00', '23:59:59', 'Oct - Mar', 5),
(33, 'Maravanthe Beach', 'Maravanthe Beach', 'Beach', 'Unique beach with a river on one side and the Arabian Sea on the other.', 0.00, '06:00:00', '18:00:00', 'Nov - Feb', 3),
(34, 'Padubidri Beach', 'Padubidri Beach', 'Beach', 'Clean and serene, ideal for family outings and water sports.', 0.00, '00:00:00', '23:59:59', 'Oct - Feb', 5),
(35, 'Kodi Beach', 'Kodi, Kundapur', 'Beach', 'A tranquil delta beach where a river meets the sea.', 0.00, '00:00:00', '23:59:59', 'Nov - Feb', 3),
(36, 'Hoode Beach', 'Tonse', 'Beach', 'A secluded beach with picturesque scenery and peaceful surroundings.', 0.00, '00:00:00', '23:59:59', 'Oct - Mar', 1),
(37, 'Bengre(Delta) Beach', 'Near Udyavara', 'Beach', 'A beautiful beach where the river and sea intersect.', 0.00, '00:00:00', '23:59:59', 'Oct - Mar', 1),
(38, 'Someshwara Beach', 'Baindur', 'Beach', 'Less crowded, known for its natural beauty and scenic sunset views.', 0.00, '00:00:00', '23:59:59', 'Oct- Feb', 4),
(39, 'Trasi Beach', 'Trasi Beach', 'Beach', 'Offers a long stretch of pristine sand, perfect for beach walks.', 0.00, '00:00:00', '23:59:59', 'Oct - Feb', 3),
(40, 'Uppunda Beach', 'Uppunda Beach', 'Beach', 'A hidden gem with serene waves and an excellent picnic spot.', 0.00, '00:00:00', '23:59:59', 'Nov - Feb', 4),
(41, 'Belkal Theertha', 'Kollur, Udupi', 'Waterfalls', 'Requires a 3 km uphill trek; entry fee applies.', 100.00, '09:00:00', '15:00:00', 'Oct-Dec', 4),
(42, 'Koosalli Falls', 'Byndoor, Udupi', 'Waterfalls', 'A six-tiered waterfall; involves a 4 km trek through dense forest.', 0.00, '06:00:00', '18:00:00', 'Sep-Nov', 4),
(43, 'Kudumari Falls', 'Byndoor, Udupi', 'Waterfalls', 'Also known as Chaktikal Falls; accessible via a challenging trek.', 0.00, '08:00:00', '17:00:00', 'Oct-Dec', 4),
(44, 'Kudlu Theertha', 'Hebri, Udupi', 'Waterfalls', 'A 300-feet waterfall; often requires a 4 km trek; may be closed during certain periods.', 50.00, '09:00:00', '17:00:00', 'Sep-Dec', 7),
(45, 'Jomlu Theertha', 'Hebri, Udupi', 'Waterfalls', 'A smaller waterfall about 20 feet high; easily accessible but sometimes closed.', 0.00, '06:00:00', '18:00:00', 'Oct-Nov', 7),
(46, 'Thombattu Falls', 'Haladi', 'Waterfalls', 'A small waterfall; accessible via a short trek; best visited if already in the area.', 0.00, '06:00:00', '18:00:00', 'Sep-Dec', 4),
(47, 'Haklamane Falls', 'Gangolli', 'Waterfalls', 'Involves off-roading and a moderate hike; a smaller waterfall.', 0.00, '06:00:00', '18:00:00', 'Oct-Dec', 4),
(48, 'Durga Falls', 'Karkala, Udupi', 'Waterfalls', 'A river flowing over rocks, creating a waterfall effect; easily accessible.', 0.00, '06:00:00', '18:00:00', 'Jul-Nov', 4),
(49, 'Maddina Hole Falls', 'Haladi', 'Waterfalls', 'Requires a 7 km trek one way; a local guide is recommended.', 0.00, '06:00:00', '18:00:00', 'Oct-Dec', 4),
(50, 'Arasinagundi Falls', 'Kollur, Udupi', 'Waterfalls', 'Located within the Mookambika Wildlife Sanctuary; a guide is recommended for the trek.', 0.00, '06:00:00', '18:00:00', 'Oct-Dec', 4),
(51, 'Arbi Falls', 'Manipal, Udupi', 'Waterfalls', 'A small stream near the town; easily accessible.', 0.00, '05:00:00', '18:00:00', 'Jul-Sep', 2),
(52, 'Parappadi Falls', 'Karkala, Udupi', 'Waterfalls', 'Access has been banned by local authorities.', 0.00, '06:00:00', '18:00:00', 'Jul-Sep', 3),
(53, 'Gulnadi Falls', 'Gangolli', 'Waterfalls', 'Lesser-known waterfall; details about accessibility are limited.', 0.00, '06:00:00', '18:00:00', 'Jul-Dec', 4),
(54, 'Ermai Waterfalls', 'Ujire', 'Waterfalls', 'A multi-layered waterfall; involves a 1.5 km trek; advisable to go with local guidance.', 15.00, '06:00:00', '18:00:00', 'Aug-Nov', 2),
(55, 'Koodlu Falls', 'Kundapur', 'Waterfalls', 'Beautiful falls surrounded by lush vegetation.', 50.00, '07:00:00', '17:00:00', 'Oct-Nov', 7),
(56, 'Barkana Waterfalls', 'Agumbe, Udupi', 'Waterfalls', 'Tallest waterfall in Udupi with stunning misty views.', 200.00, '07:00:00', '17:00:00', 'Jul-Dec', 7),
(57, 'Onake Abbi Falls', 'Agumbe, Udupi', 'Waterfalls', 'A 500-feet waterfall; requires a 4-6 km challenging trek; forest department permission needed.', 0.00, '07:00:00', '17:00:00', 'Sep-Nov', 7),
(58, 'Barkur Fort', 'Barkur', 'Historical Site', 'Ruins of a historical fort in Barkur, a former capital of Tulu Nadu.', 0.00, '00:00:00', '23:59:59', 'Feb, Mar', 6),
(59, 'Barkur Temples', 'Barkur', 'Historical Site', 'Cluster of ancient temples built in different architectural styles.', 0.00, NULL, NULL, 'Feb, Mar', 6),
(60, 'Malpe Fort', 'Malpe', 'Historical Site', 'Ruins of an old fort built by Tipu Sultan near Malpe beach.', 0.00, '00:00:00', '23:59:59', 'Feb, Mar', 1),
(61, 'Kaup Light House', 'Kaup', 'Historical Site', 'A British-era lighthouse with panoramic coastal views.', 10.00, '04:00:00', '18:00:00', 'Feb, Mar', 5),
(62, 'Moodabidri Thousand Pillar Temple', 'Moodabidri', 'Historical Site', 'A 15th-century Jain temple with a thousand pillars.', 20.00, '08:00:00', '19:00:00', 'Feb, Mar', 2),
(63, 'Jain Basadis of Karkala', 'Karkala', 'Historical Site', 'Collection of ancient Jain temples in Karkala.', 0.00, '06:00:00', '18:00:00', 'Feb, Mar', 2),
(64, 'Karkala Gomateshwara Statue', 'Karkala', 'Historical Site', '42-foot monolithic statue of Lord Bahubali.', 0.00, '06:00:00', '18:00:00', 'Feb, Mar', 2),
(65, 'Varanga Jain Temple', 'Varanga', 'Historical Site', 'Famous Jain pilgrimage center with a tranquil lake.', 0.00, '06:00:00', '18:00:00', 'Feb, Mar', 2),
(66, 'Hosangadi Fort', 'Hosangadi', 'Historical Site', 'Remains of a fort dating back to the Vijayanagara era.', 0.00, '00:00:00', '23:59:59', 'Feb, Mar', 7),
(67, 'Belmannu Durga Parameshwari Temple', 'Belmannu', 'Historical Site', 'Temple with historical connections to the region\'s rulers.', 0.00, '06:00:00', '20:00:00', 'Feb, Mar', 2),
(68, 'Belle Durga Parameshwari Temple', 'Belle', 'Historical Site', 'A temple with mythological importance and ancient origins.', 0.00, '06:00:00', '20:00:00', 'Feb, Mar', 5),
(69, 'Hebri Someshwara Wildlife Temple', 'Hebri', 'Historical Site', 'Located inside a wildlife sanctuary, of historical importance.', 50.00, '06:00:00', '18:00:00', 'Feb, Mar', 7),
(70, 'Uppunda Fort', 'Uppunda', 'Historical Site', 'A fort built for coastal defense.', 0.00, '00:00:00', '23:59:59', 'Feb, Mar', 4),
(71, 'Kudlu Theertha Temple', 'Hebri', 'Historical Site', 'Temple near a famous waterfall; has deep mythological ties.', 50.00, '09:00:00', '17:00:00', 'Feb, Mar', 7),
(72, 'Kotilingeshwara Temple', 'Kundapura', 'Historical Site', 'A temple complex known for its historic shivalinga.', 20.00, '06:00:00', '21:00:00', 'Feb, Mar', 3),
(73, 'Perdoor Mahalingeshwara Temple', 'Perdoor', 'Historical Site', 'Ancient temple dedicated to Lord Shiva.', 0.00, '06:00:00', '20:00:00', 'Feb, Mar', 7),
(74, 'Shankaranarayana Temple', 'Shankaranarayana', 'Historical Site', 'A temple associated with the Pandavas\' exile.', 0.00, '06:00:00', '20:00:00', 'Feb, Mar', 3),
(75, 'Kudremukh Iron Ore Company Township', 'Kudremukh', 'Historical Site', 'An old mining town with remnants of British-era structures.', NULL, NULL, NULL, 'Feb, Mar', 7),
(76, 'Maravanthe Beach Historic Site', 'Maravanthe', 'Historical Site', 'A unique beach location with historical relevance.', 0.00, '00:00:00', '23:59:59', 'Feb, Mar', 3),
(77, 'Basrur Historical Village', 'Basrur', 'Historical Site', 'An ancient village with many historic temples.', 0.00, '00:00:00', '23:59:59', 'Feb, Mar', 3),
(78, 'Udyavara Fort', 'Udyavara', 'Historical Site', 'A fort built near the backwaters of Udupi.', 0.00, '00:00:00', '23:59:59', 'Feb, Mar', 1),
(79, 'Shiriyara Koti (Small Fort)', 'Shiriyara', 'Historical Site', 'A small fort that played a role in regional battles.', 0.00, '00:00:00', '23:59:59', 'Feb, Mar', 3),
(80, 'Kundapura Jain Temples', 'Kundapura', 'Historical Site', 'Cluster of historic Jain temples in the region.', 0.00, '06:00:00', '20:00:00', 'Feb, Mar', 3),
(81, 'Koteswara Kotilingeshwara Temple', 'Koteswara', 'Historical Site', 'Temple with historical significance in Koteswara.', 0.00, '06:00:00', '20:00:00', 'Feb, Mar', 3),
(82, 'Vittla Pindi Historic Procession', 'Udupi', 'Historical Site', 'A famous annual procession linked to historic traditions.', 0.00, NULL, NULL, 'Feb, Mar', 1),
(83, 'Kollur Arishina Gundi', 'Kollur', 'Historical Site', 'A scenic waterfall with spiritual importance.', 50.00, '09:00:00', '17:00:00', 'Feb, Mar', 4),
(84, 'Byndoor Seneshwara Temple', 'Byndoor', 'Historical Site', 'Temple with ancient stone inscriptions.', 0.00, '06:00:00', '20:00:00', 'Feb, Mar', 4),
(85, 'Kodi Bengre Historic Port', 'Kodi Bengre', 'Historical Site', 'A historic port used in ancient maritime trade.', 0.00, '00:00:00', '23:59:59', 'Feb, Mar', 1),
(86, 'Kundeshwara Temple', 'Kundapura', 'Historical Site', 'A temple known for its grand architecture.', 0.00, '06:00:00', '20:00:00', 'Feb, Mar', 3),
(87, 'Kemmannu Hanging Bridge', 'Kemmannu', 'Historical Site', 'A historic hanging bridge built over a river.', 0.00, '00:00:00', '23:59:59', 'Feb, Mar', 1),
(88, 'Gomatheshwara Statue at Venoor', 'Venoor', 'Historical Site', 'Another site of Lord Bahubali\'s monolithic statues.', 0.00, '06:00:00', '18:00:00', 'Feb, Mar', 2),
(89, 'Padubidri Temple', 'Padubidri', 'Historical Site', 'A significant place of worship with historical value.', 0.00, '06:00:00', '20:00:00', 'Feb, Mar', 5),
(90, 'Anegudde Hills', 'Anegudde', 'Historical Site', 'A historic hill known for its religious significance.', 0.00, '06:00:00', '20:00:00', 'Feb, Mar', 3),
(91, 'Guddattu Vinayaka Temple', 'Guddattu', 'Historical Site', 'Ancient Vinayaka temple carved into rock.', 0.00, '06:00:00', '20:00:00', 'Feb, Mar', 3),
(92, 'Hulikal Ghati Temple', 'Hulikal', 'Historical Site', 'A temple located in a ghati (valley) region with history.', 0.00, '06:00:00', '20:00:00', 'Feb, Mar', 3),
(93, 'Vaderhobli Historical Site', 'Vaderhobli', 'Historical Site', 'Site with remnants of ancient settlements.', 0.00, '00:00:00', '23:59:59', 'Feb, Mar', 3),
(94, 'Halady Historical Market', 'Halady', 'Historical Site', 'Once a bustling historical trade market.', 0.00, '00:00:00', '23:59:59', 'Feb, Mar', 3),
(95, 'Kallianpur Fort', 'Kallianpur', 'Historical Site', 'Fort ruins that showcase the region\'s defense history.', 0.00, '00:00:00', '23:59:59', 'Feb, Mar', 1),
(96, 'St. Mary\'s Island', 'St. Mary\'s Island', 'Scenic Place', 'Unique island with volcanic rock formations and clear waters.', 300.00, '09:00:00', '17:30:00', 'Oct - Feb', 1),
(97, 'Ottinene Sunset Viewpoint', 'Byndoor', 'Scenic Place', 'Panoramic viewpoint for breathtaking sunset views.', 0.00, '00:00:00', '23:59:59', 'Nov - Mar', 4),
(98, 'Manipal End Point', 'Manipal', 'Scenic Place', 'Hilltop viewpoint with a breathtaking city and valley view.', 0.00, '06:00:00', '18:30:00', 'Oct - Mar', 1),
(99, 'Anejari Butterfly Camp', 'Kollur', 'Scenic Place', 'A paradise for butterfly enthusiasts and nature lovers.', 4000.00, '09:00:00', '17:00:00', 'Oct - Feb', 3),
(100, 'Kudremukh National Park', 'Kudremukh', 'Scenic Place', 'Biodiversity hotspot famous for trekking and wildlife spotting.', 200.00, '10:00:00', '17:00:00', 'Oct - May', 7),
(101, 'Agumbe Rainforest', 'Agumbe', 'Scenic Place', 'Dense rainforest with the highest rainfall in Karnataka.', 0.00, '00:00:00', '23:59:59', 'Jun - Sept', 7),
(102, 'Kudremukh Peak', 'Kudremukh', 'Scenic Place', 'Challenging trek with a breathtaking peak view.', 200.00, '06:00:00', '17:00:00', 'Nov - Feb', 7),
(103, 'Varanga Lake', 'Varanga', 'Scenic Place', 'Serene lake with a floating Jain temple.', 0.00, '00:00:00', '23:59:59', 'Oct - Mar', 2),
(104, 'Kundadri Hills', 'Agumbe', 'Scenic Place', 'Hilltop with mesmerizing sunrise and sunset views.', 0.00, '00:00:00', '23:59:59', 'Oct - Feb', 7),
(105, 'Mookambika Wildlife Sanctuary', 'Kollur', 'Scenic Place', 'Rich in biodiversity, home to various flora and fauna.', 50.00, '06:00:00', '18:00:00', 'Oct - Apr', 4),
(106, 'Someshwara Wildlife Sanctuary', 'Hebri', 'Scenic Place', 'Wildlife sanctuary known for its dense forest and rich birdlife.', 50.00, '06:00:00', '18:00:00', 'Oct - Mar', 7),
(107, 'Byndoor Estuary', 'Byndoor', 'Scenic Place', 'Stunning estuary with golden sandbanks.', 0.00, '00:00:00', '23:59:59', 'Dec - Mar', 4),
(108, 'Seethanadi Nature Camp', 'Hebri', 'Scenic Place', 'A nature camp ideal for birdwatching and eco-tourism.', 4000.00, '09:00:00', '17:00:00', 'Nov - Feb', 7),
(109, 'Malyadi Bird Sanctuary', 'Kundapura', 'Scenic Place', 'Sanctuary famous for migratory birds and wetland ecosystem.', 0.00, '00:00:00', '23:59:59', 'Nov - Mar', 5),
(110, 'Mandarthi Hills', 'Mandarthi', 'Scenic Place', 'Scenic hill with religious significance and nature trails.', 0.00, '00:00:00', '23:59:59', 'Oct - Feb', 6),
(111, 'Shankaranarayana Hills', 'Shankaranarayana', 'Scenic Place', 'A spiritual and scenic hill with breathtaking views.', 0.00, '00:00:00', '23:59:59', 'Oct - Feb', 3),
(112, 'Sitanadi River Viewpoint', 'Hebri', 'Scenic Place', 'A peaceful river viewpoint perfect for picnics.', 0.00, '00:00:00', '23:59:59', 'Nov - Feb', 7),
(113, 'Udyavara Backwaters', 'Udyavara', 'Scenic Place', 'Scenic backwaters with traditional boat rides.', 0.00, '00:00:00', '23:59:59', 'Nov - Mar', 1),
(114, 'Uppinakudru Island', 'Uppinakudru', 'Scenic Place', 'Historic island with cultural heritage and scenic beauty.', 0.00, '00:00:00', '23:59:59', 'Oct - Feb', 3),
(115, 'Mulki Backwaters', 'Mulki', 'Scenic Place', 'Scenic water stretch for kayaking and boat rides.', 0.00, '00:00:00', '23:59:59', 'Oct - Feb', 5),
(116, 'Halady Riverbank', 'Halady', 'Scenic Place', 'A calm and picturesque riverbank.', 0.00, '00:00:00', '23:59:59', 'Oct - Feb', 3),
(117, 'Vaderhobli Scenic Spot', 'Kundapura', 'Scenic Place', 'A quiet spot offering scenic beauty and peace.', 0.00, '00:00:00', '23:59:59', 'Oct - Mar', 3),
(118, 'Barkur Riverside', 'Barkur', 'Scenic Place', 'A historic riverfront with picturesque views.', 0.00, '00:00:00', '23:59:59', 'Oct - Feb', 6),
(119, 'Shiriyara Forest Trails', 'Shiriyara', 'Scenic Place', 'A less explored but beautiful forest trekking destination.', 0.00, '00:00:00', '23:59:59', 'Oct - Mar', 3),
(120, 'Kallianpur Riverside', 'Kallianpur', 'Scenic Place', 'A tranquil riverside location with cultural heritage.', 0.00, '00:00:00', '23:59:59', 'Oct - Feb', 1),
(121, 'Belle Hanging Bridge', 'Belle', 'Scenic Place', 'A hanging bridge over a river, ideal for photography.', 0.00, '00:00:00', '23:59:59', 'Oct - Mar', 5),
(122, 'Hebri Forest Range', 'Hebri', 'Scenic Place', 'Densely forested area ideal for trekking and camping.', 0.00, '00:00:00', '23:59:59', 'Nov - Feb', 7),
(123, 'Hulikal Ghati', 'Hulikal', 'Scenic Place', 'Ghat section with misty weather and beautiful scenery.', 0.00, '00:00:00', '23:59:59', 'Jun - Sep', 3),
(124, 'Agumbe Ghat', 'Agumbe', 'Scenic Place', 'A thrilling ghat section with winding roads.', 0.00, '00:00:00', '23:59:59', 'Jun - Sep', 7),
(125, 'Kollur Kodachadri Viewpoint', 'Kollur', 'Scenic Place', 'A famous trekking spot with stunning valley views.', 50.00, '06:00:00', '18:00:00', 'Oct - Feb', 4),
(126, 'Jomlu Theertha Rapids', 'Hebri', 'Scenic Place', 'Fast-flowing rapids, best visited in monsoon.', 0.00, '06:00:00', '18:00:00', 'Jun - Sep', 7),
(127, 'Bajagoli Water Cascade', 'Bajagoli', 'Scenic Place', 'Scenic waterfall hidden within lush green forests.', 0.00, '00:00:00', '23:59:59', 'Jun - Sept', 2);

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `FoodID` int NOT NULL,
  `RestaurantName` varchar(255) DEFAULT NULL,
  `FoodName` varchar(255) DEFAULT NULL,
  `Location` varchar(100) DEFAULT NULL,
  `Type` varchar(255) DEFAULT NULL,
  `TalukID` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`FoodID`, `RestaurantName`, `FoodName`, `Location`, `Type`, `TalukID`) VALUES
(1, 'Samanvay Boutique Hotel', 'Traditional Udupi Thali', 'Udupi', 'Vegetarian', 'Udupi'),
(2, 'White Lotus Hotel', 'Malabar Fish Curry', 'Udupi', 'Both', 'Udupi'),
(3, 'Hotel Sri Krishna Residency', 'Masala Dosa', 'Udupi', 'Vegetarian', 'Udupi'),
(4, 'Hotel Kidiyoor', 'Chicken Ghee Roast', 'Udupi', 'Both', 'Udupi'),
(5, 'Malpe Sea Front Cottage', 'Seafood Platter', 'Malpe', 'Non-Vegetarian', 'Udupi'),
(6, 'Rukmini Residency Hotel', 'Neer Dosa', 'Udupi', 'Vegetarian', 'Udupi'),
(7, 'Hotel Udupi Residency', 'Goli Baje', 'Udupi', 'Vegetarian', 'Udupi'),
(8, 'Hotel Summer Park', 'Mangalore Buns', 'Udupi', 'Vegetarian', 'Udupi'),
(9, 'Hotel Sharada International', 'Fish Curry Meals', 'Udupi', 'Non-Vegetarian', 'Udupi'),
(10, 'Hotel Shambhavi', 'Kori Rotti', 'Udupi', 'Non-Vegetarian', 'Udupi'),
(11, 'Paradise Lagoon', 'Crab Sukka', 'Udupi', 'Non-Vegetarian', 'Udupi'),
(12, 'Treebo Trend Vijaya Grand', 'Paneer Ghee Roast', 'Udupi', 'Vegetarian', 'Udupi'),
(13, 'Hotel Central Park', 'Bisi Bele Bath', 'Manipal', 'Vegetarian', 'Udupi'),
(14, 'Hotel Green Park Suites', 'Rava Idli', 'Manipal', 'Vegetarian', 'Udupi'),
(15, 'Hotel J.K Residency', 'Fish Fry', 'Kundapur', 'Non-Vegetarian', 'Kundapura'),
(16, 'Hotel Kateel International', 'Chicken Sukka', 'Karkala', 'Both', 'Karkala'),
(17, 'Hotel Srinivasa Residency', 'Udupi Special Thali', 'Udupi', 'Vegetarian', 'Udupi'),
(18, 'Hotel Badagumalige', 'Ghee Dosa', 'Udupi', 'Vegetarian', 'Udupi'),
(19, 'Hotel Naivedya', 'Mangalore Buns', 'Udupi', 'Vegetarian', 'Udupi'),
(20, 'Odeya Restaurant', 'Pav Bhaji', 'Udupi', 'Vegetarian', 'Udupi'),
(21, 'LX Brasserie', 'Caramel Custard', 'Udupi', 'Both', 'Udupi'),
(22, 'Malika Fine Dining', 'Khajura Milk Chocolate Brownie', 'Udupi', 'Both', 'Udupi'),
(23, 'Vedanth Veg Restaurant', 'Paneer Tikka', 'Udupi', 'Vegetarian', 'Udupi'),
(24, 'Hotel Suhag', 'South Indian Meals', 'Karkala', 'Vegetarian', 'Karkala'),
(25, 'Hotel Madhuvan Serai', 'Masala Dosa', 'Manipal', 'Vegetarian', 'Udupi'),
(26, 'Hotel Ocean Pearl', 'Seafood Buffet', 'Udupi', 'Non-Vegetarian', 'Udupi'),
(27, 'Hotel Manipal Inn', 'Neer Dosa', 'Manipal', 'Both', 'Udupi'),
(28, 'Hotel Durga International', 'Mangalore Buns', 'Udupi', 'Vegetarian', 'Udupi'),
(29, 'Hotel Udupi Palace', 'Masala Dosa', 'Udupi', 'Vegetarian', 'Udupi'),
(30, 'Hotel Krishna Leela', 'Patrode', 'Udupi', 'Vegetarian', 'Udupi'),
(31, 'Hotel Shree Durga', 'Bisi Bele Bath', 'Udupi', 'Vegetarian', 'Udupi'),
(32, 'Hotel Navaratna', 'Rava Idli', 'Udupi', 'Vegetarian', 'Udupi'),
(33, 'Hotel Janardhana', 'Goli Baje', 'Udupi', 'Vegetarian', 'Udupi'),
(34, 'Hotel Udupi Brindavan', 'Masala Dosa', 'Udupi', 'Vegetarian', 'Udupi'),
(35, 'Hotel Supreme', 'Mangalore Buns', 'Udupi', 'Vegetarian', 'Udupi'),
(36, 'Hotel Shree Krishna Residency', 'Patrode', 'Udupi', 'Vegetarian', 'Udupi'),
(37, 'Hotel Udupi Park Inn', 'Bisi Bele Bath', 'Manipal', 'Both', 'Udupi'),
(38, 'Hotel Manipal Central', 'Neer Dosa', 'Malpe', 'Non-Vegetarian', 'Udupi'),
(39, 'Hotel Paradise Isle Beach Resort', 'Seafood Platter', 'Malpe', 'Non-Vegetarian', 'Udupi'),
(40, 'Hotel Malpe Sea Front', 'Fish Fry', 'Udupi', 'Vegetarian', 'Udupi'),
(41, 'Hotel Saffron', 'Mangalore Buns', 'Udupi', 'Vegetarian', 'Udupi'),
(42, 'Hotel Green Park', 'Goli Baje', 'Udupi', 'Vegetarian', 'Udupi'),
(43, 'Hotel City Comforts', 'Masala Dosa', 'Udupi', 'Non-Vegetarian', 'Udupi'),
(44, 'Hotel Royal Inn', 'Fish Curry Meals', 'Malpe', 'Non-Vegetarian', 'Udupi'),
(45, 'Hotel Mahalakshmi Fishmeals', 'Fried Fish', 'Udupi', 'Non-Vegetarian', 'Udupi'),
(46, 'Thaamboolam', 'Matka Biryani', 'Udupi', 'Both', 'Udupi'),
(47, 'Hotel Swaadisht', 'Tandoori Items', 'Udupi', 'Both', 'Udupi'),
(48, 'Anupam', 'Ghee Roast Items', 'Udupi', 'Both', 'Udupi'),
(49, 'Dawath Family Restaurant', 'South Indian Veg Meals', 'Udupi', 'Vegetarian', 'Udupi'),
(50, 'Café 7 Bees', 'Veg Cutlet', 'Udupi', 'Vegetarian', 'Udupi'),
(51, 'Namaskara Pure Veg Restaurant', 'North Indian Special Thali', 'Udupi', 'Vegetarian', 'Udupi'),
(52, 'CTF Udupi', 'Veg Cheese Sandwiches', 'Udupi', 'Vegetarian', 'Udupi'),
(53, 'Cafiya Restaurant', 'Biryani', 'Udupi', 'Both', 'Udupi'),
(54, 'Gokul Krishna', 'Veg Biryani Combo', 'Udupi', 'Vegetarian', 'Udupi'),
(55, 'Hotel New Shanthi Sagar', 'Mysore Masala Dosa', 'Udupi', 'Vegetarian', 'Udupi'),
(56, 'Annu Hotel', 'Local Cuisine', 'Kukkundoor, Karkal', 'Both', 'Karkala'),
(57, 'Underkatte Bus Stop Krastrayara Hotel', 'Local Snacks', 'Avarse, Udupi', 'Both', 'Udupi'),
(58, 'Gopal Bhat Hotel', 'Traditional Meals', 'Nitte, Karkal', 'Vegetarian', 'Udupi'),
(59, 'Arafa Hotel', 'Seafood Delicacies', 'Hejamadi, Udupi', 'Non-Vegetarian', 'Udupi'),
(60, 'Bar And Restaurant', 'Beverages and Snacks', 'Kumbashi, Kundapura', 'Both', 'Kundapura'),
(61, 'Prakash Hotel', 'Local Breakfast Items', 'Hejamadi, Udupi', 'Vegetarian', 'Udupi'),
(62, 'Ganesh Hotel', 'South Indian Meals', 'Balkunje', 'Vegetarian', 'Udupi'),
(63, 'Usha Hotel', 'Traditional Dishes', 'Balkunje', 'Both', 'Udupi'),
(64, 'Kutti Hotel', 'Seafood Specials', 'Hejamadi, Udupi', 'Non-Vegetarian', 'Udupi'),
(65, 'Hotel Shridevi Prasad Veg', 'Pure Veg Meals', 'Nitte, Karkal', 'Vegetarian', 'Karkala'),
(66, 'Hotel LaxmiPrasad Ajekar', 'Local Delicacies', 'Kadthala, Karkal', 'Both', 'Karkala'),
(67, 'Nayak Hotel', 'Traditional Snacks', 'Nitte, Karkal', 'Vegetarian', 'Karkala'),
(68, 'Bajil Bakery', 'Bakery Items', 'Nitte, Karkal', 'Vegetarian', 'Karkala'),
(69, 'Monu Hotel', 'Seafood Curries', 'Hejamadi, Udupi', 'Non-Vegetarian', 'Udupi'),
(70, 'Preethi Nilaya Mess', 'Homely Meals', 'Nitte, Karkal', 'Vegetarian', 'Karkala'),
(71, 'Shetty Lunch Home', 'Neer Dosa, Fish Curry', 'Kundapura', 'Both', 'Kundapura'),
(72, 'Hotel Sharon', 'Kundapura Chicken Curry', 'Kundapura', 'Non-Veg', 'Kundapura'),
(73, 'Parijatha Restaurant', 'South Indian Meals', 'Kundapura', 'Vegetarian', 'Kundapura'),
(74, 'Naik Fishland', 'Fish Fry, Prawn Masala', 'Kundapura', 'Non-Veg', 'Kundapura'),
(75, 'Udupi Krishna Bhavan', 'Masala Dosa, Idli', 'Kundapura', 'Veg', 'Kundapura'),
(76, 'Hotel Pratap', 'Biryani, Mutton Curry', 'Kundapura', 'Non-Veg', 'Kundapura'),
(77, 'Kollur Annapoorna', 'Kundapura Style Ghee Roast', 'Kollur', 'Both', 'Kundapura'),
(78, 'Sagar Ratna', 'North Indian & South Indian Cuisine', 'Kundapura', 'Veg', 'Kundapura'),
(79, 'Gowri Shankar Hotel', 'Rice Plate, Sambar', 'Kundapura', 'Veg', 'Kundapura'),
(80, 'Thimmappa Fish Hotel', 'Crab Masala, Fish Curry', 'Kundapura', 'Non-Veg', 'Kundapura'),
(81, 'Anupama Restaurant', 'Veg Meals, Masala Dosa', 'Kundapura', 'Veg', 'Kundapura'),
(82, 'Sri Devi Hotel', 'Chicken Ghee Roast, Fish Curry', 'Kundapura', 'Both', 'Kundapura'),
(83, 'Coastal Pearl Restaurant', 'Seafood Thali, Prawn Masala', 'Kundapura', 'Non-Veg', 'Kundapura'),
(84, 'Kediyoor Hotel', 'North Indian Thali, South Indian Meals', 'Kundapura', 'Both', 'Kundapura'),
(85, 'Ocean Pearl Restaurant', 'Seafood Platter, Tandoori Fish', 'Kundapura', 'Non-Veg', 'Kundapura'),
(86, 'Kamat Upachar', 'North Karnataka Meals', 'Kundapura', 'Veg', 'Kundapura'),
(87, 'Hotel Samrat', 'Paneer Butter Masala, Tandoori Roti', 'Kundapura', 'Veg', 'Kundapura'),
(88, 'Hotel Jai Hind', 'Kori Roti, Chicken Sukka', 'Kundapura', 'Non-Veg', 'Kundapura'),
(89, 'Swetha Lunch Home', 'Fish Fry, Mangalore Buns', 'Kundapura', 'Both', 'Kundapura'),
(90, 'Hotel Sri Krishna', 'Udupi Style Vegetarian Meals', 'Kundapura', 'Veg', 'Kundapura'),
(91, 'Annapurna Veg Restaurant', 'Ghee Roast, Dosa Varieties', 'Kundapura', 'Veg', 'Kundapura'),
(92, 'Aroma Restaurant', 'Chinese, Tandoori, Seafood', 'Kundapura', 'Both', 'Kundapura'),
(93, 'Hotel Varsha', 'Idli Sambar, South Indian Breakfast', 'Kundapura', 'Veg', 'Kundapura'),
(94, 'Kundapura Grand', 'Mangalorean Seafood, Chicken Sukka', 'Kundapura', 'Non-Veg', 'Kundapura'),
(95, 'Nayak Canteen', 'Authentic Kundapura Style Chicken', 'Kundapura', 'Non-Veg', 'Kundapura'),
(96, 'Vishnu Bhavan', 'Meals, Dosa', 'Kundapura', 'Veg', 'Kundapura'),
(97, 'Hotel Durga', 'South Indian Breakfast', 'Kundapura', 'Veg', 'Kundapura'),
(98, 'Coastal Spice', 'Pomfret Tandoori, Prawn Curry', 'Kundapura', 'Non-Veg', 'Byndoor'),
(99, 'Malpe Lunch Home', 'Fish Thali, Squid Fry', 'Kundapura', 'Non-Veg', 'Kundapura'),
(100, 'Triveni Restaurant', 'Mixed Cuisine, Dosa', 'Kundapura', 'Both', 'Kundapura'),
(101, 'Sri Rama Bhavan', 'South Indian Meals, Chapati', 'Kundapura', 'Veg', 'Kundapura'),
(102, 'Chaitra Restaurant', 'Roti Curry, Tandoori', 'Kundapura', 'Both', 'Kundapura'),
(103, 'Shiv Sagar Restaurant', 'Veg Meals, Masala Dosa', 'Kundapura', 'Veg', 'Kundapura'),
(104, 'Hotel Anand Bhavan', 'Breakfast, Idli, Dosa', 'Kundapura', 'Veg', 'Kundapura'),
(105, 'Hotel Kinara', 'Seafood, Fish Curry', 'Kapu', 'Non-Veg', 'Kapu'),
(106, 'Nisarga Grand', 'South Indian Thali', 'Kapu', 'Veg', 'Kapu'),
(107, 'Hotel Paradise', 'Masala Dosa, Vada', 'Kapu', 'Veg', 'Kapu'),
(108, 'Ocean Breeze Restaurant', 'Tandoori Fish, Prawns', 'Kapu', 'Non-Veg', 'Kapu'),
(109, 'Shree Devi Lunch Home', 'Neer Dosa, Chicken Curry', 'Kapu', 'Both', 'Kapu'),
(110, 'Malpe Fishland', 'Pomfret Fry, Prawn Curry', 'Kapu', 'Non-Veg', 'Kapu'),
(111, 'Hotel Sanman', 'North Indian Thali, Roti', 'Kapu', 'Veg', 'Kapu'),
(112, 'Ruchi Sagar', 'South Indian Meals', 'Kapu', 'Veg', 'Kapu'),
(113, 'Kapu Biryani House', 'Chicken Biryani, Kebab', 'Kapu', 'Non-Veg', 'Kapu'),
(114, 'Swadisht Veg Restaurant', 'Idli, Dosa, Chapati', 'Kapu', 'Veg', 'Kapu'),
(115, 'Hotel Sri Durga', 'Vegetarian Thali', 'Hebri', 'Veg', 'Hebri'),
(116, 'Hebri Grand', 'Fish Fry, Chicken Sukka', 'Hebri', 'Both', 'Hebri'),
(117, 'Annapoorna Restaurant', 'Dosa, Idli, Poori', 'Hebri', 'Veg', 'Hebri'),
(118, 'Hotel Ocean View', 'Tandoori Chicken, Roti', 'Hebri', 'Both', 'Hebri'),
(119, 'Hotel Udupi Ruchi', 'South Indian Meals', 'Hebri', 'Veg', 'Hebri'),
(120, 'New Taj Hotel', 'Chicken Ghee Roast, Biryani', 'Hebri', 'Non-Veg', 'Hebri'),
(121, 'Sri Krishna Bhavan', 'Dosa, Vada, Coffee', 'Hebri', 'Veg', 'Hebri'),
(122, 'Hotel Aroma', 'Chinese, South Indian', 'Hebri', 'Both', 'Hebri'),
(123, 'Sri Sai Lunch Home', 'Neer Dosa, Fish Curry', 'Hebri', 'Both', 'Hebri'),
(124, 'Hotel Prakash', 'North Indian Meals', 'Karkala', 'Both', 'Karkala'),
(125, 'Karkala Lunch Home', 'Mangalorean Seafood', 'Karkala', 'Non-Veg', 'Karkala'),
(126, 'Sri Durga Bhavan', 'South Indian Thali', 'Karkala', 'Veg', 'Karkala'),
(127, 'Fish Paradise', 'Pomfret Masala, Crab Curry', 'Karkala', 'Non-Veg', 'Karkala'),
(128, 'Hotel Rajadhani', 'North Indian & Chinese', 'Karkala', 'Both', 'Karkala'),
(129, 'Spicy Bite', 'Tandoori Chicken, Rolls', 'Karkala', 'Non-Veg', 'Karkala'),
(130, 'Hotel Annapurna', 'Meals, Poori Bhaji', 'Karkala', 'Veg', 'Karkala'),
(131, 'Shree Krishna Upahar', 'Dosa Varieties, Snacks', 'Karkala', 'Veg', 'Karkala'),
(132, 'Coastal Feast', 'Seafood Thali, Prawns', 'Karkala', 'Non-Veg', 'Karkala'),
(133, 'Sagar Restaurant', 'Fish Thali, Prawn Fry', 'Kapu', 'Non-Veg', 'Kapu'),
(134, 'Tandoori Nights', 'Tandoori Chicken, Roti', 'Kapu', 'Non-Veg', 'Kapu'),
(135, 'Ananda Bhavan', 'South Indian Meals', 'Kapu', 'Veg', 'Kapu'),
(136, 'Nandanavana', 'North Indian Thali', 'Kapu', 'Veg', 'Kapu'),
(137, 'Swathi Veg', 'Dosa, Idli, Sambar', 'Kapu', 'Veg', 'Kapu'),
(138, 'Hebri Delight', 'Biryani, Chicken Curry', 'Hebri', 'Non-Veg', 'Hebri'),
(139, 'Mangalore Lunch Home', 'Neer Dosa, Fish Fry', 'Hebri', 'Both', 'Hebri'),
(140, 'Sri Sai Sagar', 'South Indian Veg', 'Hebri', 'Veg', 'Hebri'),
(141, 'Karkala Spice', 'Biryani, Tandoori', 'Karkala', 'Non-Veg', 'Karkala'),
(142, 'Oceanic Delight', 'Seafood Specialties', 'Karkala', 'Non-Veg', 'Karkala'),
(143, 'Udupi Upachar', 'Masala Dosa, Meals', 'Karkala', 'Veg', 'Karkala'),
(144, 'Hotel Coastal', 'Mangalorean Seafood', 'Kapu', 'Non-Veg', 'Kapu'),
(145, 'Green Leaf', 'Vegetarian Thali', 'Kapu', 'Veg', 'Kapu'),
(146, 'Sri Sagar Veg', 'Idli, Dosa, Coffee', 'Hebri', 'Veg', 'Hebri'),
(147, 'Hotel Woodlands', 'Tandoori, North Indian', 'Hebri', 'Both', 'Hebri'),
(148, 'Maharaja Lunch Home', 'Chicken Sukka, Fish Curry', 'Hebri', 'Both', 'Hebri'),
(149, 'Ravi\'s Kitchen', 'Paneer Butter Masala', 'Karkala', 'Veg', 'Karkala'),
(150, 'Anand Sagar', 'South Indian Breakfast', 'Karkala', 'Veg', 'Karkala'),
(151, 'Thali House', 'Unlimited Meals', 'Karkala', 'Veg', 'Karkala'),
(152, 'Malgudi Cafe', 'Snacks, Tea, Coffee', 'Karkala', 'Veg', 'Karkala'),
(153, 'Mitra Samaj', 'Goli Baje, Masala Dosa', 'Udupi', 'Veg', 'Udupi'),
(154, 'Woodlands Restaurant', 'Udupi Sambar, Set Dosa', 'Udupi', 'Veg', 'Udupi'),
(155, 'Diana Restaurant', 'Gadbad Ice Cream', 'Udupi', 'Veg', 'Udupi'),
(156, 'Hotel Narayana', 'Fish Tawa Fry, Prawn Ghee Roast', 'Malpe', 'Non-Veg', 'Udupi'),
(157, 'Gokarna Hotel', 'Jackfruit Idli, Pathrode', 'Udupi', 'Veg', 'Udupi'),
(158, 'Hotel Krishna Bhavan', 'Authentic Udupi Meals', 'Udupi', 'Veg', 'Udupi'),
(159, 'Hotel Kori Roti', 'Kori Roti, Chicken Sukka', 'Udupi', 'Non-Veg', 'Udupi'),
(160, 'Ravi Goli Baje', 'Authentic Goli Baje', 'Udupi', 'Veg', 'Udupi'),
(161, 'Hotel Panchami', 'Udupi Rasam, Jackfruit Chips', 'Udupi', 'Veg', 'Udupi'),
(162, 'Udupi Garden', 'Vegetarian Thali', 'Udupi', 'Veg', 'Udupi'),
(163, 'Sai Parivar Hotel', 'Traditional Udupi Dishes', 'Udupi', 'Veg', 'Udupi'),
(164, 'Hotel Karkala Delight', 'Ghee Roast, Masala Poori', 'Karkala', 'Veg', 'Karkala'),
(165, 'Coastal Delights', 'Clam Sukka, Fish Tandoori', 'Kundapura', 'Non-Veg', 'Kundapura'),
(166, 'Hebri Fish House', 'Squid Ghee Roast, Prawn Curry', 'Hebri', 'Non-Veg', 'Hebri'),
(167, 'Sri Devi Lunch Home', 'Chicken Ghee Roast', 'Kapu', 'Non-Veg', 'Kapu'),
(168, 'Hotel Ocean Breeze', 'Prawn Masala, Tandoori Fish', 'Kapu', 'Non-Veg', 'Kapu'),
(169, 'Hotel Krishna Residency', 'North Indian & Udupi Cuisine', 'Udupi', 'Both', 'Udupi'),
(170, 'Tandoori Delights', 'Tandoori Pomfret, Chicken Tikka', 'Kundapura', 'Non-Veg', 'Kundapura'),
(171, 'Mangalore Taj', 'Biryani, Prawn Fry', 'Hebri', 'Non-Veg', 'Hebri'),
(172, 'Anand Bhavan', 'Dosa Varieties, Filter Coffee', 'Karkala', 'Veg', 'Karkala'),
(173, 'Oceanic Thali House', 'Unlimited Seafood Thali', 'Malpe', 'Non-Veg', 'Udupi'),
(174, 'Hotel Utsav', 'Rice Rotis, Chutney Pudi', 'Udupi', 'Veg', 'Udupi'),
(175, 'Shree Krishna Sagar', 'Ragi Mudde, Bassaru', 'Hebri', 'Veg', 'Hebri'),
(176, 'Hotel Suruchi', 'Pineapple Gojju, Jolad Roti', 'Karkala', 'Veg', 'Karkala'),
(177, 'Sadhana Lunch Home', 'Roti Curry, Kadle Gassi', 'Udupi', 'Veg', 'Udupi'),
(178, 'Ocean View', 'Tandoori Kingfish, Fish Thali', 'Malpe', 'Non-Veg', 'Udupi'),
(179, 'Coastal Haven', 'Clam Sukka, Fish Fry', 'Kundapura', 'Non-Veg', 'Kundapura');

-- --------------------------------------------------------

--
-- Table structure for table `localexperiences`
--

CREATE TABLE `localexperiences` (
  `ExperienceID` int NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `Category` varchar(50) NOT NULL,
  `Description` longtext,
  `Price` decimal(10,2) DEFAULT NULL,
  `Timings` varchar(100) DEFAULT NULL,
  `Rating` float DEFAULT NULL,
  `TalukID` int NOT NULL
) ;

--
-- Dumping data for table `localexperiences`
--

INSERT INTO `localexperiences` (`ExperienceID`, `Name`, `Location`, `Category`, `Description`, `Price`, `Timings`, `Rating`, `TalukID`) VALUES
(1, 'Parasailing at Malpe Beach', 'Malpe Beach', 'Activity/Experience', 'Enjoy thrilling aerial views of the Arabian Sea.', 1350.00, '9:00 AM - 5:00 PM (Subject to weather)', 4.2, 1),
(2, 'Jet Skiing at Malpe Beach', 'Malpe Beach', 'Activity/Experience', 'Experience high-speed water adventure in the open sea.', 900.00, '9:00 AM - 5:30 PM', 4, 1),
(3, 'Banana Boat Ride at Malpe Beach', 'Malpe Beach', 'Activity/Experience', 'Fun-filled ride ideal for groups and families.', 450.00, '9:00 AM - 6:00 PM', 4.1, 1),
(4, 'Kayaking at Kodi Bengre', 'Kodi Bengre', 'Activity/Experience', 'Paddle through scenic mangrove forests and calm waters.', 700.00, '7:00 AM - 5:00 PM', 4.3, 2),
(5, 'Surfing at Kodi Beach', 'Kodi Beach', 'Activity/Experience', 'Learn to surf on the perfect waves of Kodi Beach.', 2000.00, '6:00 AM - 10:00 AM & 3:30 PM - 6:00 PM', 4.5, 2),
(6, 'Snorkeling at St. Mary\'s Island', 'St. Mary\'s Island', 'Activity/Experience', 'Discover exotic marine species near the volcanic rocks.', 1100.00, '9:00 AM - 4:00 PM (Last ferry at 2:30 PM)', 4.4, 1),
(7, 'Trekking at Kudremukh', 'Kudremukh', 'Activity/Experience', 'Challenging trek with rewarding views and nature immersion.', 1000.00, '6:00 AM - 6:00 PM (Overnight with permit)', 4.7, 3),
(8, 'Trekking at Agumbe', 'Agumbe', 'Activity/Experience', 'Lush rainforest trek with stunning biodiversity.', 750.00, '6:00 AM - 5:00 PM', 4.6, 1),
(9, 'Trekking at Kodachadri', 'Kodachadri', 'Activity/Experience', 'Scenic and spiritually significant trek with waterfalls.', 550.00, '5:00 AM - 6:00 PM', 4.8, 2),
(10, 'River Rafting at Seethanadi', 'Seethanadi', 'Activity/Experience', 'Exciting river rafting experience during monsoon.', 2000.00, '9:00 AM - 4:00 PM (Monsoon only)', 4.4, 1),
(11, 'Camping at Agumbe Rainforest', 'Agumbe', 'Activity/Experience', 'Camp in one of India\'s wettest regions amidst fireflies.', 2250.00, 'Check-in: 2:00 PM, Check-out: 11:00 AM', 4.5, 1),
(12, 'Cycling through Udupi Coastal Roads', 'Udupi Coastal Roads', 'Activity/Experience', 'Ride through the beautiful coastal villages of Udupi.', 650.00, '6:00 AM - 6:00 PM', 4.2, 1),
(13, 'Off-Road Jeep Safari in Kundapura', 'Kundapura', 'Activity/Experience', 'Off-road adventure through rugged terrains and hills.', 2000.00, '8:00 AM - 5:00 PM', 4.1, 2),
(14, 'ATV Biking at Padubidri', 'Padubidri', 'Activity/Experience', 'Enjoy an adrenaline-pumping ride on ATV bikes.', 1000.00, '9:00 AM - 6:00 PM', 4, 4),
(15, 'Night Camping at Kudremukh National Park', 'Kudremukh', 'Activity/Experience', 'Camp under the stars with stunning mountain views.', 2750.00, 'Check-in: 2:00 PM, Check-out: 11:00 AM', 4.6, 3),
(16, 'Rock Climbing at Manipal End Point', 'Manipal', 'Activity/Experience', 'Experience rock climbing with a scenic valley view.', 1150.00, '7:00 AM - 5:00 PM', 4.3, 1),
(17, 'Wildlife Spotting at Mookambika Wildlife Sanctuary', 'Mookambika Wildlife Sanctuary', 'Activity/Experience', 'Spot unique wildlife species in their natural habitat.', 350.00, '6:00 AM - 6:00 PM', 4.2, 2),
(18, 'Waterfall Rappelling at Onake Abbi Falls', 'Onake Abbi Falls', 'Activity/Experience', 'Feel the rush of rappelling down a waterfall.', 2000.00, '9:00 AM - 4:00 PM', 4.5, 3),
(19, 'Houseboat Stay in Udupi Backwaters', 'Udupi Backwaters', 'Activity/Experience', 'Stay on a houseboat and experience Udupi\'s backwaters.', 6500.00, 'Check-in: 12:00 PM, Check-out: 11:00 AM', 4.4, 2),
(20, 'Mangrove Kayaking at Swarna River', 'Swarna River', 'Activity/Experience', 'Kayak through serene mangrove forests and backwaters.', 850.00, '7:00 AM - 5:00 PM', 4.3, 1),
(21, 'Fishing Experience at Kodi', 'Kodi', 'Activity/Experience', 'Try local fishing techniques with traditional fishermen.', 1000.00, '5:00 AM - 8:00 AM & 3:00 PM - 6:00 PM', 4.2, 2),
(22, 'Backwater Cruise at Kundapura', 'Kundapura', 'Activity/Experience', 'Cruise through beautiful coastal estuaries and backwaters.', 1250.00, '9:00 AM - 5:00 PM', 4.3, 2),
(23, 'Traditional Yakshagana Performance', 'Various locations', 'Activity/Experience', 'Watch the vibrant storytelling performance of Karnataka.', 350.00, '7:00 PM - 11:00 PM (seasonal)', 4.7, 6),
(24, 'Temple Prasadam Experience at Krishna Mutt', 'Udupi Krishna Mutt', 'Activity/Experience', 'Taste divine temple food served in Udupi\'s Krishna temple.', 225.00, '12:00 PM - 2:30 PM & 7:00 PM - 8:30 PM', 4.8, 1),
(25, 'Exploring Barkur Historical Town', 'Barkur', 'Activity/Experience', 'Explore ancient ruins and heritage structures of Barkur.', 0.00, '9:00 AM - 5:00 PM', 4.1, 1),
(26, 'Local Udupi Cuisine Tasting', 'Udupi', 'Activity/Experience', 'Relish authentic Udupi dishes in local eateries.', 350.00, '11:00 AM - 3:00 PM & 7:00 PM - 10:00 PM', 4.6, 1),
(27, 'Visiting a Traditional Tile Factory in Coondapur', 'Coondapur', 'Activity/Experience', 'Learn about traditional tile-making techniques.', 125.00, '10:00 AM - 4:00 PM (Mon-Sat)', 3.9, 2),
(28, 'Handloom Weaving Experience in Karkala', 'Karkala', 'Activity/Experience', 'Observe local weavers crafting traditional fabrics.', 200.00, '9:00 AM - 5:00 PM (Mon-Sat)', 4, 3),
(29, 'Attending Kambala Buffalo Race', 'Various locations', 'Activity/Experience', 'Watch the thrilling buffalo race in muddy tracks.', 250.00, 'Seasonal (Nov-Mar)', 4.5, 6),
(30, 'Experiencing Bhoota Kola Ritual', 'Various locations', 'Activity/Experience', 'Witness an ancient spirit worship tradition.', 0.00, 'Night performances (seasonal)', 4.7, 6),
(31, 'Visiting a Toddy Tapping Farm', 'Udupi', 'Activity/Experience', 'Learn about traditional toddy tapping and tasting.', 650.00, '7:00 AM - 11:00 AM', 4, 1),
(32, 'Learning About Udupi\'s Astha Mathas', 'Udupi', 'Activity/Experience', 'Understand the spiritual heritage of the Ashta Mathas.', 0.00, '6:00 AM - 8:00 PM', 4.5, 1),
(33, 'Participating in a Temple Chariot Festival', 'Various locations', 'Activity/Experience', 'Participate in the grandeur of temple car festivals.', 0.00, 'Varies by temple calendar', 4.8, 6),
(34, 'Exploring Karkala Jain Monuments', 'Karkala', 'Activity/Experience', 'Marvel at ancient Jain architecture and temples.', 0.00, '8:00 AM - 6:00 PM', 4.4, 3),
(35, 'Witnessing Sunset at Maravanthe Beach', 'Maravanthe Beach', 'Activity/Experience', 'Enjoy one of the best sunset views in Karnataka.', 0.00, '5:00 PM - 7:00 PM', 4.9, 2),
(36, 'Island Hopping Near St. Mary\'s Island', 'St. Mary\'s Island', 'Activity/Experience', 'Hop between scenic islands for an exotic experience.', 1500.00, '9:00 AM - 3:30 PM (Last ferry)', 4.3, 1),
(37, 'Learning Traditional Boat Making in Malpe', 'Malpe', 'Activity/Experience', 'See how traditional fishing boats are built.', 400.00, '10:00 AM - 4:00 PM (Mon-Sat)', 3.8, 1),
(38, 'Visiting a Cashew Processing Unit', 'Various locations', 'Activity/Experience', 'Visit factories processing cashews, a local delicacy.', 150.00, '10:00 AM - 4:00 PM (Mon-Fri)', 3.7, 6),
(39, 'Bird Watching at Malyadi Bird Sanctuary', 'Malyadi', 'Activity/Experience', 'Observe rare migratory birds in their natural habitat.', 300.00, '6:00 AM - 9:00 AM & 4:00 PM - 6:00 PM', 4.5, 2),
(40, 'Exploring Byndoor Estuary', 'Byndoor', 'Activity/Experience', 'Explore the estuary where river meets the sea.', 0.00, '6:00 AM - 6:00 PM', 4.2, 5),
(41, 'Village Walk in Varanga', 'Varanga', 'Activity/Experience', 'Experience the tranquility of rural life in Varanga.', 400.00, '9:00 AM - 5:00 PM', 4.1, 3),
(42, 'Staying at a Traditional Udupi Homestay', 'Udupi', 'Activity/Experience', 'Stay in a traditional Udupi home and experience local culture.', 2250.00, 'Check-in: 12:00 PM, Check-out: 11:00 AM', 4.6, 6),
(43, 'Learning Yakshagana Dance', 'Various locations', 'Activity/Experience', 'Learn the art of Karnataka\'s folk dance-drama.', 750.00, 'By appointment', 4.4, 6),
(44, 'Local Market Tour in Udupi', 'Udupi', 'Activity/Experience', 'Explore the colorful and vibrant Udupi market.', 450.00, '7:00 AM - 12:00 PM', 4.3, 1),
(45, 'Exploring Ancient Forts in Udupi', 'Various locations', 'Activity/Experience', 'Discover the lesser-known historical forts of Udupi.', 0.00, '9:00 AM - 5:00 PM', 4, 6),
(46, 'Visiting a Sea Shell Museum', 'Udupi', 'Activity/Experience', 'A unique museum showcasing sea shells and marine artifacts.', 225.00, '10:00 AM - 5:00 PM (Closed Mondays)', 4.2, 1),
(47, 'Night Walk on a Udupi Beach', 'Udupi Beaches', 'Activity/Experience', 'Enjoy peaceful walks along Udupi\'s quiet beaches at night.', 0.00, '7:00 PM - 9:00 PM', 4.4, 6),
(48, 'Star Gazing at Kudremukh', 'Kudremukh', 'Activity/Experience', 'Observe the stunning night sky with minimal light pollution.', 750.00, '8:00 PM - 11:00 PM', 4.7, 3),
(49, 'Udupi\'s Annual Car Festival Experience', 'Udupi Krishna Temple', 'Activity/Experience', 'Be part of the grand annual temple car festival.', 0.00, 'Festival dates (varies annually)', 4.9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `taluk`
--

CREATE TABLE `taluk` (
  `TalukID` int NOT NULL,
  `TalukName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `taluk`
--

INSERT INTO `taluk` (`TalukID`, `TalukName`) VALUES
(6, 'Brahmavara'),
(4, 'Byndoor'),
(7, 'Hebri'),
(2, 'Karkala'),
(5, 'Kaup'),
(3, 'Kundapur'),
(1, 'Udupi');

-- --------------------------------------------------------

--
-- Table structure for table `transportoptions`
--

CREATE TABLE `transportoptions` (
  `TransportID` int NOT NULL,
  `Mode` varchar(50) NOT NULL,
  `ProviderName` varchar(100) DEFAULT NULL,
  `ContactInfo` varchar(100) DEFAULT NULL,
  `PriceRange` varchar(50) DEFAULT NULL,
  `Timings` varchar(100) DEFAULT NULL,
  `RouteDetails` longtext,
  `TalukID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accommodation`
--
ALTER TABLE `accommodation`
  ADD PRIMARY KEY (`AccommodationID`),
  ADD KEY `TalukID` (`TalukID`);

--
-- Indexes for table `destinations`
--
ALTER TABLE `destinations`
  ADD PRIMARY KEY (`DestinationID`),
  ADD KEY `TalukID` (`TalukID`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`FoodID`);

--
-- Indexes for table `localexperiences`
--
ALTER TABLE `localexperiences`
  ADD PRIMARY KEY (`ExperienceID`),
  ADD KEY `TalukID` (`TalukID`);

--
-- Indexes for table `taluk`
--
ALTER TABLE `taluk`
  ADD PRIMARY KEY (`TalukID`),
  ADD UNIQUE KEY `TalukName` (`TalukName`);

--
-- Indexes for table `transportoptions`
--
ALTER TABLE `transportoptions`
  ADD PRIMARY KEY (`TransportID`),
  ADD KEY `TalukID` (`TalukID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accommodation`
--
ALTER TABLE `accommodation`
  MODIFY `AccommodationID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `destinations`
--
ALTER TABLE `destinations`
  MODIFY `DestinationID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `FoodID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT for table `localexperiences`
--
ALTER TABLE `localexperiences`
  MODIFY `ExperienceID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `taluk`
--
ALTER TABLE `taluk`
  MODIFY `TalukID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `transportoptions`
--
ALTER TABLE `transportoptions`
  MODIFY `TransportID` int NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accommodation`
--
ALTER TABLE `accommodation`
  ADD CONSTRAINT `accommodation_ibfk_1` FOREIGN KEY (`TalukID`) REFERENCES `taluk` (`TalukID`) ON DELETE CASCADE;

--
-- Constraints for table `destinations`
--
ALTER TABLE `destinations`
  ADD CONSTRAINT `destinations_ibfk_1` FOREIGN KEY (`TalukID`) REFERENCES `taluk` (`TalukID`) ON DELETE CASCADE;

--
-- Constraints for table `localexperiences`
--
ALTER TABLE `localexperiences`
  ADD CONSTRAINT `localexperiences_ibfk_1` FOREIGN KEY (`TalukID`) REFERENCES `taluk` (`TalukID`) ON DELETE CASCADE;

--
-- Constraints for table `transportoptions`
--
ALTER TABLE `transportoptions`
  ADD CONSTRAINT `transportoptions_ibfk_1` FOREIGN KEY (`TalukID`) REFERENCES `taluk` (`TalukID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
