-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2020 at 04:46 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbsunforcehomes`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add product', 7, 'add_product'),
(26, 'Can change product', 7, 'change_product'),
(27, 'Can delete product', 7, 'delete_product'),
(28, 'Can view product', 7, 'view_product'),
(29, 'Can add user', 8, 'add_user'),
(30, 'Can change user', 8, 'change_user'),
(31, 'Can delete user', 8, 'delete_user'),
(32, 'Can view user', 8, 'view_user');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(7, 'app', 'product'),
(8, 'app', 'user'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-02-08 03:46:17.584089'),
(2, 'auth', '0001_initial', '2020-02-08 03:46:18.984979'),
(3, 'admin', '0001_initial', '2020-02-08 03:46:27.033937'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-02-08 03:46:29.347364'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-02-08 03:46:29.415138'),
(6, 'app', '0001_initial', '2020-02-08 03:46:30.205912'),
(7, 'contenttypes', '0002_remove_content_type_name', '2020-02-08 03:46:30.886627'),
(8, 'auth', '0002_alter_permission_name_max_length', '2020-02-08 03:46:32.517971'),
(9, 'auth', '0003_alter_user_email_max_length', '2020-02-08 03:46:33.430555'),
(10, 'auth', '0004_alter_user_username_opts', '2020-02-08 03:46:33.927954'),
(11, 'auth', '0005_alter_user_last_login_null', '2020-02-08 03:46:35.797060'),
(12, 'auth', '0006_require_contenttypes_0002', '2020-02-08 03:46:35.828998'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2020-02-08 03:46:36.003437'),
(14, 'auth', '0008_alter_user_username_max_length', '2020-02-08 03:46:36.307713'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2020-02-08 03:46:37.040661'),
(16, 'auth', '0010_alter_group_name_max_length', '2020-02-08 03:46:37.319439'),
(17, 'auth', '0011_update_proxy_permissions', '2020-02-08 03:46:37.358508'),
(18, 'sessions', '0001_initial', '2020-02-08 03:46:37.642077');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` varchar(500) NOT NULL,
  `company` varchar(100) NOT NULL,
  `wattpeak` varchar(5) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `company`, `wattpeak`, `image`) VALUES
(4, 'Battery-DC12-100C_285x276', '20000', 'Ritar', '200', 'DC12-200C_002_322x214.jpg'),
(5, 'Battery-12V-120Ah-OPR-Deep-Cycle-Rechargeable-AGM-GEL-Hybrid-VRLA-Lead-Acid-Battery-1_285x285', '12000', 'Omnipower', '120', 'OmniPower-12V-120Ah-OPR-Deep-Cycle-Rechargeable-AGM-GEL-Hybrid-VRLA-Lead-Acid-Battery-1_285x285.jpg'),
(6, 'Battery-12V-120Ah-OPR-Deep-Cycle-Rechargeable-AGM-GEL-Hybrid-VRLA-Lead-Acid-Battery-1_285x285', '18000', 'Omnipower', '180', 'OmniPower-12V-180Ah-OPR-Deep-Cycle-Rechargeable-AGM-GEL-Hybrid-VRLA-Lead-Acid-Battery-1_285x285.jpg'),
(7, 'Battery-12V-240Ah-OPR-Deep-Cycle-Rechargeable-AGM-GEL-Hybrid-VRLA-Lead-Acid-Battery-1_285x285', '30000', 'OmniPower', '240', 'OmniPower-12V-240Ah-OPR-Deep-Cycle-Rechargeable-AGM-GEL-Hybrid-VRLA-Lead-Acid-Battery-1_285x285.jpg'),
(8, 'Panel-Cheetah_All_Black_182x276', '3000', 'Cheetah', '20', 'Cheetah_All_Black_182x276.jpg'),
(9, 'Panel-Cheetah_FC_285x422', '4000', 'cheetah', '20', 'Cheetah_FC_285x422.jpg'),
(10, 'Panel-CN_36_34ad45c0-6c1d-432c-88c5-7de9733fb652_347x347', '5000', 'CNN', '20', 'CN_36_34ad45c0-6c1d-432c-88c5-7de9733fb652_347x347.jpg'),
(11, 'Panel-CN_36_347x347', '8000', 'CNN', '50', 'CN_36_347x347.jpg'),
(12, 'Panel-CN_36_744b0a51-ef27-4a87-a59b-832dc8d1a837_347x347', '8000', 'CNN', '50', 'CN_36_744b0a51-ef27-4a87-a59b-832dc8d1a837_347x347.jpg'),
(13, 'Panel-CN_36_a87b1398-0e35-44f7-9133-bb0601ea0587_347x347', '10000', 'CNN', '50', 'CN_36_a87b1398-0e35-44f7-9133-bb0601ea0587_347x347.jpg'),
(14, 'Panel-CN10_36_285x285', '5000', 'CN', '40', 'CN10_36_285x285.jpg'),
(15, 'Panel-CNCB200M-72_347x347', '14000', 'CNCB', '100', 'CNCB200M-72_347x347.jpg'),
(16, 'CNCC100P-72_213x280', '2500', 'CNCC', '20', 'CNCC100P-72_213x280.jpg'),
(17, 'Panel-CNCC180P-72_210x280', '5000', 'CNCC', '40', 'CNCC100P-72_213x280_qruoPwS.jpg'),
(18, 'Panel-CS3K_285x285', '18000', 'CS3K', '100', 'CS3K_285x285.jpg'),
(19, 'Panel-DMS_Nuevo-Producto-Canadian-KuMax_2b227fe9-b861-4ca9-a8d0-8ef7cbbf8d98_285x285', '18000', 'Nuevo', '150', 'DMS_Nuevo-Producto-Canadian-KuMax_2b227fe9-b861-4ca9-a8d0-8ef7cbbf8d98_285x285.jpg'),
(20, 'Panel-DMS_Nuevo-Producto-Canadian-KuMax_cd8aa816-4347-4123-a527-6252a7cfa153_285x285', '25000', 'Nuevo', '150', 'DMS_Nuevo-Producto-Canadian-KuMax_cd8aa816-4347-4123-a527-6252a7cfa153_285x285.jpg'),
(21, 'Panel-HiKu-1_2e9b5a24-89b3-4225-8f19-16ba532db913_285x333', '20000', 'Hiku', '100', 'HiKu-1_2e9b5a24-89b3-4225-8f19-16ba532db913_285x333.jpg'),
(22, 'Panel-img-p-ndah330-380_09589507-eea9-454a-bf5f-c293de2a7f6a_406x214', '8000', 'CNN', '40', 'img-p-ndah330-380_09589507-eea9-454a-bf5f-c293de2a7f6a_406x214.jpg'),
(23, 'Panel-JAM72S10-MR_39a94102-b646-4083-9023-602816274f4f_285x322', '12000', 'JAM', '80', 'JAM72S10-MR_39a94102-b646-4083-9023-602816274f4f_285x322.jpg'),
(24, 'JAM72S10-MR_285x322', '10000', 'JAM', '50', 'JAM72S10-MR_285x322.jpg'),
(25, 'JAM60210_285x322', '8000', 'JAM', '60', 'JAM72S10-MR_285x322_UX0Gu6x.jpg'),
(26, 'PaNEL-JAP60S_a5ebcf74-1569-45ff-a5c5-38dafd1b7448_285x285', '10000', 'JAP', '60', 'JAP60S_a5ebcf74-1569-45ff-a5c5-38dafd1b7448_285x285.jpg'),
(27, 'Panel-JAP60S-09_bfe2ed2d-48f5-4093-8c09-787281759916_285x285', '12000', 'JAP', '80', 'JAP72S09_side_0208757a-780a-4ce3-866a-fb50d41356b1_285x238.jpg'),
(28, 'JAP72S09_side_285x238', '10000', 'JAP', '72', 'JAP60S-09_bfe2ed2d-48f5-4093-8c09-787281759916_285x285.jpg'),
(29, 'Panel-JAP72S09_side_0208757a-780a-4ce3-866a-fb50d41356b1_285x238', '12000', 'JAP', '50', 'JAP72S09_side_0208757a-780a-4ce3-866a-fb50d41356b1_285x238_hZEF6UO.jpg'),
(30, 'Panel-JAP72S-09-335-SC_285x427', '18000', 'JAP', '100', 'JAP72S09_side_0208757a-780a-4ce3-866a-fb50d41356b1_285x238_9egoWzi.jpg'),
(31, 'Panel-M60S03-320-PR_210x280', '21500', 'M60S', '100', 'M60S03-320-PR_210x280.jpg'),
(32, 'Panel-P72S09-335-SC-300x300_285x285', '12000', 'PS7250', '100', 'P72S09-335-SC-300x300_285x285.jpg'),
(33, 'Inverter-5K_King_117936b5-83aa-4b60-ad88-a6b3eff89c8b_233x233', '25000', 'King', '100', '5K_King_117936b5-83aa-4b60-ad88-a6b3eff89c8b_233x233.jpg'),
(34, 'Inverter-EasySolar-II_GX_48-3000VA_32-32_MPPT_250-70_GX_connector_side_233x279', '45000', 'Easy Solar', '200', 'EasySolar-II_GX_48-3000VA_32-32_MPPT_250-70_GX_connector_side_233x279.jpg'),
(35, 'Panel-MultiGrid-48V-3kVA-230V_front_233x314', '25000', 'MultiGrid', '200', 'MultiGrid-48V-3kVA-230V_front_7dc007ae-14ce-4d76-ab9a-d7bd29deb95f_233x314.jpg'),
(36, 'Inverter-MultiPlus-II_48V_3kVA_left_233x402', '40000', 'Multiplus', '250', 'MultiPlus-II_48V_3kVA_left_233x402.jpg'),
(37, 'Inverter-Phoenix_inverter_12V_800VA_VE.Direct_top_241x175', '25000', 'Phoenix', '250', 'Phoenix_inverter_12V_800VA_VE.Direct_top_241x175.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(500) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `Password`, `image`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin', 'default.jpg'),
(3, 'bipash', 'bipash@gmail.com', 'bipash', 'original.png'),
(4, 'sanjay', 'sanjay@gmail.com', 'sanjay', 'guhya4.jfif'),
(5, 'bipin', 'bipin@gmail.com', 'bipin', 'c8a3387e38465e99432eeb5e0e4de231.jpg'),
(6, 'rubin', 'rubin', 'rubin', 'juneblogimagery.png'),
(7, 'saya', 'saya@gmail.com', 'saya', 'phenomenal-coloring-pages-for-adults-online-image-ideas-adult-mandala-app-sheets-free.gif'),
(8, 'Ghanshyam', 'Ghanshyam@gmail.com', '123456789', 'bipash_2NCw5DA.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
