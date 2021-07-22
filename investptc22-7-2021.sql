-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2021 at 04:55 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `investptc`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `username`, `email_verified_at`, `image`, `access`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'admin@site.com', 'admin', NULL, '5ff1c3531ed3f1609679699.jpg', NULL, '$2y$10$L37YxHWRFGhZ4OzBOb1FvOy5IV5QgTuI903hBUKXFjOvf3N9DuxsO', NULL, '2021-07-10 12:46:05');

-- --------------------------------------------------------

--
-- Table structure for table `admin_notifications`
--

CREATE TABLE `admin_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read_status` tinyint(4) NOT NULL DEFAULT 0,
  `click_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_notifications`
--

INSERT INTO `admin_notifications` (`id`, `user_id`, `title`, `read_status`, `click_url`, `created_at`, `updated_at`) VALUES
(16, 15, 'New member registered', 0, 'https://nordk.org/admin/user/detail/15', '2021-07-13 06:47:22', '2021-07-13 06:47:22'),
(17, 16, 'New member registered', 0, 'https://nordk.org/admin/user/detail/16', '2021-07-13 06:51:10', '2021-07-13 06:51:10'),
(18, 17, 'New member registered', 0, 'https://nordk.org/admin/user/detail/17', '2021-07-13 06:57:44', '2021-07-13 06:57:44'),
(19, 18, 'New member registered', 0, 'https://nordk.org/admin/user/detail/18', '2021-07-13 06:58:21', '2021-07-13 06:58:21'),
(20, 19, 'New member registered', 0, 'https://nordk.org/admin/user/detail/19', '2021-07-13 07:00:49', '2021-07-13 07:00:49'),
(21, 20, 'New member registered', 0, 'https://nordk.org/admin/user/detail/20', '2021-07-13 07:03:02', '2021-07-13 07:03:02'),
(22, 21, 'New member registered', 0, 'https://nordk.org/admin/user/detail/21', '2021-07-13 07:12:11', '2021-07-13 07:12:11'),
(23, 22, 'New member registered', 0, 'https://nordk.org/admin/user/detail/22', '2021-07-13 07:17:17', '2021-07-13 07:17:17'),
(24, 23, 'New member registered', 0, 'https://nordk.org/admin/user/detail/23', '2021-07-13 07:20:35', '2021-07-13 07:20:35'),
(25, 24, 'New member registered', 0, 'https://nordk.org/admin/user/detail/24', '2021-07-13 07:30:27', '2021-07-13 07:30:27'),
(26, 25, 'New member registered', 0, 'https://nordk.org/admin/user/detail/25', '2021-07-13 07:43:09', '2021-07-13 07:43:09'),
(27, 26, 'New member registered', 0, 'https://nordk.org/admin/user/detail/26', '2021-07-13 07:52:07', '2021-07-13 07:52:07'),
(28, 27, 'New member registered', 0, 'https://nordk.org/admin/user/detail/27', '2021-07-13 08:01:40', '2021-07-13 08:01:40'),
(29, 28, 'New member registered', 0, 'https://nordk.org/admin/user/detail/28', '2021-07-13 08:17:52', '2021-07-13 08:17:52'),
(30, 29, 'New member registered', 0, 'https://nordk.org/admin/user/detail/29', '2021-07-13 08:30:55', '2021-07-13 08:30:55'),
(31, 30, 'New member registered', 0, 'https://localhost/LARAVEL/investptc/admin/user/detail/30', '2021-07-21 14:02:01', '2021-07-21 14:02:01'),
(32, 31, 'New member registered', 0, 'https://localhost/investptc/admin/user/detail/31', '2021-07-22 07:15:33', '2021-07-22 07:15:33');

-- --------------------------------------------------------

--
-- Table structure for table `admin_password_resets`
--

CREATE TABLE `admin_password_resets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `business_active`
--

CREATE TABLE `business_active` (
  `id` int(11) NOT NULL,
  `user_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rank` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reward` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salery` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `month` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dates` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `business_history`
--

CREATE TABLE `business_history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rank` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reward` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salery` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `month` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dates` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `business_volume`
--

CREATE TABLE `business_volume` (
  `id` int(11) NOT NULL,
  `level_1` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level_2` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level_3` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reward` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rank` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salery` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `month` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `business_volume`
--

INSERT INTO `business_volume` (`id`, `level_1`, `level_2`, `level_3`, `reward`, `rank`, `salery`, `month`, `created_at`, `updated_at`) VALUES
(1, '1200', '0', '0', '50', 'Rank 1', '50', '3', '2021-07-11 02:54:03', '2021-07-11 02:54:03'),
(2, '2500', '0', '0', '100', 'Rank 1', '100', '3', '2021-07-11 02:54:03', '2021-07-11 02:54:03'),
(3, '3500', '0', '0', '300', 'Rank 1', '300', '6', '2021-07-11 02:54:03', '2021-07-11 02:54:03'),
(4, '7000', '0', '0', '5000', 'Rank 1', '5000', '6', '2021-07-11 02:54:03', '2021-07-11 02:54:03'),
(5, '30000', '0', '0', '10000', 'Rank 1', '10000', '6', '2021-07-11 02:54:03', '2021-07-11 02:54:03');

-- --------------------------------------------------------

--
-- Table structure for table `bv_logs`
--

CREATE TABLE `bv_logs` (
  `id` int(10) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `position` int(10) DEFAULT NULL COMMENT '1=L,2=R',
  `amount` decimal(16,8) NOT NULL DEFAULT 0.00000000,
  `trx_type` varchar(50) DEFAULT NULL,
  `details` varchar(191) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `commission_logs`
--

CREATE TABLE `commission_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `who` int(11) DEFAULT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(11,2) DEFAULT NULL,
  `main_amo` decimal(11,2) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trx` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `commission_logs`
--

INSERT INTO `commission_logs` (`id`, `user_id`, `who`, `level`, `amount`, `main_amo`, `title`, `trx`, `created_at`, `updated_at`) VALUES
(12, 30, 31, 'Level 1 Referral Commission', '1.00', '1.00', 'Subscription Comission', '0', '2021-07-22 08:22:02', '2021-07-22 08:22:02'),
(13, 26, 31, 'Level 2 Referral Commission', '1.00', '6.00', 'Subscription Comission', '0', '2021-07-22 08:22:02', '2021-07-22 08:22:02'),
(14, 30, 31, 'Level 1 Referral Commission', '1.00', '2.00', 'Subscription Comission', 'XSNA21YZ5UZ7', '2021-07-22 08:53:23', '2021-07-22 08:53:23'),
(15, 26, 31, 'Level 2 Referral Commission', '1.00', '7.00', 'Subscription Comission', 'NEZHHEURZAU3', '2021-07-22 08:53:23', '2021-07-22 08:53:23');

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `method_code` int(10) UNSIGNED NOT NULL,
  `amount` decimal(18,8) NOT NULL,
  `method_currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `charge` decimal(18,8) NOT NULL,
  `rate` decimal(18,8) NOT NULL,
  `final_amo` decimal(18,8) DEFAULT 0.00000000,
  `detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btc_amo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btc_wallet` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trx` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `try` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=>success, 2=>pending, 3=>cancel',
  `admin_feedback` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_sms_templates`
--

CREATE TABLE `email_sms_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `act` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subj` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sms_body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shortcodes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_status` tinyint(4) NOT NULL DEFAULT 1,
  `sms_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_sms_templates`
--

INSERT INTO `email_sms_templates` (`id`, `act`, `name`, `subj`, `email_body`, `sms_body`, `shortcodes`, `email_status`, `sms_status`, `created_at`, `updated_at`) VALUES
(1, 'PASS_RESET_CODE', 'Password Reset', 'Password Reset', '<div>We have received a request to reset the password for your account on <b>{{time}} .<br></b></div><div>Requested From IP: <b>{{ip}}</b> using <b>{{browser}}</b> on <b>{{operating_system}} </b>.</div><div><br></div><br><div><div><div>Your account recovery code is:&nbsp;&nbsp; <font size=\"6\"><b>{{code}}</b></font></div><div><br></div></div></div><div><br></div><div><font size=\"4\" color=\"#CC0000\">If you do not wish to reset your password, please disregard this message.&nbsp;</font><br></div><br>', 'Your account recovery code is: {{code}}', ' {\"code\":\"Password Reset Code\",\"ip\":\"IP of User\",\"browser\":\"Browser of User\",\"operating_system\":\"Operating System of User\",\"time\":\"Request Time\"}', 1, 1, '2019-09-24 23:04:05', '2020-07-07 05:44:08'),
(2, 'PASS_RESET_DONE', 'Password Reset Confirmation', 'You have Reset your password', '<div><p>\r\n    You have successfully reset your password.</p><p>You changed from&nbsp; IP: <b>{{ip}}</b> using <b>{{browser}}</b> on <b>{{operating_system}}&nbsp;</b> on <b>{{time}}</b></p><p><b><br></b></p><p><font color=\"#FF0000\"><b>If you did not changed that, Please contact with us as soon as possible.</b></font><br></p></div>', 'Your password has been changed successfully', '{\"ip\":\"IP of User\",\"browser\":\"Browser of User\",\"operating_system\":\"Operating System of User\",\"time\":\"Request Time\"}', 1, 1, '2019-09-24 23:04:05', '2020-03-07 10:23:47'),
(3, 'EVER_CODE', 'Email Verification', 'Please verify your email address', '<div><br></div><div>Thanks For join with us. <br></div><div>Please use below code to verify your email address. <br></div><div><br></div><div>Your email verification code is:<font size=\"6\"><b> {{code}}</b></font></div>', 'Your email verification code is: {{code}}', '{\"code\":\"Verification code\"}', 1, 1, '2019-09-24 23:04:05', '2020-03-07 10:26:22'),
(4, 'SVER_CODE', 'SMS Verification ', 'Please verify your phone', 'Your phone verification code is: {{code}}', 'Your phone verification code is: {{code}}', '{\"code\":\"Verification code\"}', 0, 1, '2019-09-24 23:04:05', '2020-03-08 01:28:52'),
(5, '2FA_ENABLE', 'Google Two Factor - Enable', 'Google Two Factor Authentication is now  Enabled for Your Account', '<div>You just enabled Google Two Factor Authentication for Your Account.</div><div><br></div><div>Enabled at <b>{{time}} </b>From IP: <b>{{ip}}</b> using <b>{{browser}}</b> on <b>{{operating_system}} </b>.</div>', 'Your verification code is: {{code}}', '{\"ip\":\"IP of User\",\"browser\":\"Browser of User\",\"operating_system\":\"Operating System of User\",\"time\":\"Request Time\"}', 1, 1, '2019-09-24 23:04:05', '2021-07-11 12:08:42'),
(6, '2FA_DISABLE', 'Google Two Factor Disable', 'Google Two Factor Authentication is now  Disabled for Your Account', '<div>You just Disabled Google Two Factor Authentication for Your Account.</div><div><br></div><div>Disabled at <b>{{time}} </b>From IP: <b>{{ip}}</b> using <b>{{browser}}</b> on <b>{{operating_system}} </b>.</div>', 'Google two factor verification is disabled', '{\"ip\":\"IP of User\",\"browser\":\"Browser of User\",\"operating_system\":\"Operating System of User\",\"time\":\"Request Time\"}', 1, 1, '2019-09-24 23:04:05', '2020-03-08 01:43:46'),
(16, 'ADMIN_SUPPORT_REPLY', 'Support Ticket Reply ', 'Reply Support Ticket', '<div><p><span style=\"font-size: 11pt;\" data-mce-style=\"font-size: 11pt;\"><strong>A member from our support team has replied to the following ticket:</strong></span></p><p><b><span style=\"font-size: 11pt;\" data-mce-style=\"font-size: 11pt;\"><strong><br></strong></span></b></p><p><b>[Ticket#{{ticket_id}}] {{ticket_subject}}<br><br>Click here to reply:&nbsp; {{link}}</b></p><p>----------------------------------------------</p><p>Here is the reply : <br></p><p> {{reply}}<br></p></div><div><br></div>', '{{subject}}\r\n\r\n{{reply}}\r\n\r\n\r\nClick here to reply:  {{link}}', '{\"ticket_id\":\"Support Ticket ID\", \"ticket_subject\":\"Subject Of Support Ticket\", \"reply\":\"Reply from Staff/Admin\",\"link\":\"Ticket URL For relpy\"}', 1, 1, '2020-06-08 18:00:00', '2020-05-04 02:24:40'),
(206, 'DEPOSIT_COMPLETE', 'Automated Deposit - Successful', 'Deposit Completed Successfully', '<div>Your deposit of <b>{{amount}} {{currency}}</b> is via&nbsp; <b>{{method_name}} </b>has been completed Successfully.<b><br></b></div><div><b><br></b></div><div><b>Details of your Deposit :<br></b></div><div><br></div><div>Amount : {{amount}} {{currency}}</div><div>Charge: <font color=\"#000000\">{{charge}} {{currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}</div><div>Payable : {{method_amount}} {{method_currency}} <br></div><div>Paid via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><font size=\"5\"><b><br></b></font></div><div><font size=\"5\">Your current Balance is <b>{{post_balance}} {{currency}}</b></font></div><div><br></div><div><br><br><br></div>', '{{amount}} {{currrency}} Deposit successfully by {{gateway_name}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\", \"post_balance\":\"Users Balance After this operation\"}', 1, 1, '2020-06-24 18:00:00', '2020-07-07 06:39:22'),
(207, 'DEPOSIT_REQUEST', 'Manual Deposit - User Requested', 'Deposit Request Submitted Successfully', '<div>Your deposit request of <b>{{amount}} {{currency}}</b> is via&nbsp; <b>{{method_name}} </b>submitted successfully<b> .<br></b></div><div><b><br></b></div><div><b>Details of your Deposit :<br></b></div><div><br></div><div>Amount : {{amount}} {{currency}}</div><div>Charge: <font color=\"#FF0000\">{{charge}} {{currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}</div><div>Payable : {{method_amount}} {{method_currency}} <br></div><div>Pay via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><br></div><div><br></div>', '{{amount}} Deposit requested by {{method}}. Charge: {{charge}} . Trx: {{trx}}\r\n', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\"}', 1, 1, '2020-05-31 18:00:00', '2020-06-01 18:00:00'),
(208, 'DEPOSIT_APPROVE', 'Manual Deposit - Admin Approved', 'Your Deposit is Approved', '<div>Your deposit request of <b>{{amount}} {{currency}}</b> is via&nbsp; <b>{{method_name}} </b>is Approved .<b><br></b></div><div><b><br></b></div><div><b>Details of your Deposit :<br></b></div><div><br></div><div>Amount : {{amount}} {{currency}}</div><div>Charge: <font color=\"#FF0000\">{{charge}} {{currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}</div><div>Payable : {{method_amount}} {{method_currency}} <br></div><div>Paid via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><font size=\"5\"><b><br></b></font></div><div><font size=\"5\">Your current Balance is <b>{{post_balance}} {{currency}}</b></font></div><div><br></div><div><br><br></div>', 'Admin Approve Your {{amount}} {{gateway_currency}} payment request by {{gateway_name}} transaction : {{transaction}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\", \"post_balance\":\"Users Balance After this operation\"}', 1, 1, '2020-06-16 18:00:00', '2020-06-14 18:00:00'),
(209, 'DEPOSIT_REJECT', 'Manual Deposit - Admin Rejected', 'Your Deposit Request is Rejected', '<div>Your deposit request of <b>{{amount}} {{currency}}</b> is via&nbsp; <b>{{method_name}} has been rejected</b>.<b><br></b></div><br><div>Transaction Number was : {{trx}}</div><div><br></div><div>if you have any query, feel free to contact us.<br></div><br><div><br><br></div>\r\n\r\n\r\n\r\n{{rejection_message}}', 'Admin Rejected Your {{amount}} {{gateway_currency}} payment request by {{gateway_name}}\r\n\r\n{{rejection_message}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\",\"rejection_message\":\"Rejection message\"}', 1, 1, '2020-06-09 18:00:00', '2020-06-14 18:00:00'),
(210, 'WITHDRAW_REQUEST', 'Withdraw  - User Requested', 'Withdraw Request Submitted Successfully', '<div>Your withdraw request of <b>{{amount}} {{currency}}</b>&nbsp; via&nbsp; <b>{{method_name}} </b>has been submitted Successfully.<b><br></b></div><div><b><br></b></div><div><b>Details of your withdraw:<br></b></div><div><br></div><div>Amount : {{amount}} {{currency}}</div><div>Charge: <font color=\"#FF0000\">{{charge}} {{currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}</div><div>You will get: {{method_amount}} {{method_currency}} <br></div><div>Via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><font size=\"4\" color=\"#FF0000\"><b><br></b></font></div><div><font size=\"4\" color=\"#FF0000\"><b>This may take {{delay}} to process the payment.</b></font><br></div><div><font size=\"5\"><b><br></b></font></div><div><font size=\"5\"><b><br></b></font></div><div><font size=\"5\">Your current Balance is <b>{{post_balance}} {{currency}}</b></font></div><div><br></div><div><br><br><br><br></div>', '{{amount}} {{currency}} withdraw requested by {{withdraw_method}}. You will get {{method_amount}} {{method_currency}} in {{duration}}. Trx: {{trx}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\", \"post_balance\":\"Users Balance After this operation\", \"delay\":\"Delay time for processing\"}', 1, 1, '2020-06-07 18:00:00', '2020-06-14 18:00:00'),
(211, 'WITHDRAW_REJECT', 'Withdraw - Admin Rejected', 'Withdraw Request has been Rejected and your money is refunded to your account', '<div>Your withdraw request of <b>{{amount}} {{currency}}</b>&nbsp; via&nbsp; <b>{{method_name}} </b>has been Rejected.<b><br></b></div><div><b><br></b></div><div><b>Details of your withdraw:<br></b></div><div><br></div><div>Amount : {{amount}} {{currency}}</div><div>Charge: <font color=\"#FF0000\">{{charge}} {{currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}</div><div>You should get: {{method_amount}} {{method_currency}} <br></div><div>Via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><br></div><div><br></div><div>----</div><div><font size=\"3\"><br></font></div><div><font size=\"3\"> {{amount}} {{currency}} has been <b>refunded </b>to your account and your current Balance is <b>{{post_balance}}</b><b> {{currency}}</b></font></div><div><br></div><div>-----</div><div><br></div><div><font size=\"4\">Details of Rejection :</font></div><div><font size=\"4\"><b>{{admin_details}}</b></font></div><div><br></div><div><br><br><br><br><br><br></div>', 'Admin Rejected Your {{amount}} {{currency}} withdraw request. Your Main Balance {{main_balance}}  {{method}} , Transaction {{transaction}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\", \"post_balance\":\"Users Balance After this operation\", \"admin_details\":\"Details Provided By Admin\"}', 1, 1, '2020-06-09 18:00:00', '2020-06-14 18:00:00'),
(212, 'WITHDRAW_APPROVE', 'Withdraw - Admin  Approved', 'Withdraw Request has been Processed and your money is sent', '<div>Your withdraw request of <b>{{amount}} {{currency}}</b>&nbsp; via&nbsp; <b>{{method_name}} </b>has been Processed Successfully.<b><br></b></div><div><b><br></b></div><div><b>Details of your withdraw:<br></b></div><div><br></div><div>Amount : {{amount}} {{currency}}</div><div>Charge: <font color=\"#FF0000\">{{charge}} {{currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}</div><div>You will get: {{method_amount}} {{method_currency}} <br></div><div>Via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><br></div><div>-----</div><div><br></div><div><font size=\"4\">Details of Processed Payment :</font></div><div><font size=\"4\"><b>{{admin_details}}</b></font></div><div><br></div><div><br><br><br><br><br></div>', 'Admin Approve Your {{amount}} {{currency}} withdraw request by {{method}}. Transaction {{transaction}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\", \"admin_details\":\"Details Provided By Admin\"}', 1, 1, '2020-06-10 18:00:00', '2020-06-06 18:00:00'),
(215, 'BAL_ADD', 'Balance Add by Admin', 'Your Account has been Credited', '<div>{{amount}} {{currency}} has been added to your account .</div><div><br></div><div>Transaction Number : {{trx}}</div><div><br></div>Your Current Balance is : <font size=\"3\"><b>{{post_balance}}&nbsp; {{currency}}</b></font>', '{{amount}} {{currency}} credited in your account. Your Current Balance {{remaining_balance}} {{currency}} . Transaction: #{{trx}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By Admin\",\"currency\":\"Site Currency\", \"post_balance\":\"Users Balance After this operation\"}', 1, 1, '2019-09-14 19:14:22', '2019-11-10 09:07:12'),
(216, 'BAL_SUB', 'Balance Subtracted by Admin', 'Your Account has been Debited', '<div>{{amount}} {{currency}} has been subtracted from your account .</div><div><br></div><div>Transaction Number : {{trx}}</div><div><br></div>Your Current Balance is : <font size=\"3\"><b>{{post_balance}}&nbsp; {{currency}}</b></font>', '{{amount}} {{currency}} debited from your account. Your Current Balance {{remaining_balance}} {{currency}} . Transaction: #{{trx}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By Admin\",\"currency\":\"Site Currency\", \"post_balance\":\"Users Balance After this operation\"}', 1, 1, '2019-09-14 19:14:22', '2019-11-10 09:07:12'),
(217, 'matching_bonus', 'Matching bonus', 'Binary Commission', 'Congratulation, You get  {{amount}} {{currency}}&nbsp; For BV {{paid_bv}}. And your current balance is {{post_balance}}&nbsp;<span style=\"color: rgb(33, 37, 41);\">&nbsp;{{currency}}</span>. Transaction number {{trx}}.', 'Congratulation, You get {{amount}} {{currency}}  For BV {{paid_bv}}. And your current balance is {{post_balance}}  {{currency}}.', ' {\r\n                \"amount\":\"matching bonus amount\",\r\n                \"paid_bv\":\"For BV\",\r\n                \"post_balance\":\" After Balance\",\r\n                \"currency\":\"Site Currency\",\r\n                \"trx\":\"Transaction number\"\r\n            }', 1, 1, '2019-09-14 19:14:22', '2019-11-10 09:07:12'),
(218, 'plan_purchased', 'Plan Purchased', 'Plan Purchased successfully', 'Congratulation, you successfully&nbsp;Purchased {{plan}},&nbsp; {{amount}} {{currency}}&nbsp; And your current balance is {{post_balance}}&nbsp;<span style=\"color: rgb(33, 37, 41);\">&nbsp;{{currency}}</span>. Transaction number {{trx}}', 'Congratulation, you successfully Purchased {{plan}},  {{amount}} {{currency}}  And your current balance is {{post_balance}}  {{currency}}. Transaction number {{trx}}', ' {\r\n                    \"plan\":\"Plan name\",\r\n                    \"amount\":\"Plan price\",\r\n                \"post_balance\":\" After Balance\",\r\n                \"currency\":\"Site Currency\",\r\n                \"trx\":\"Transaction number\"\r\n            }', 1, 1, '2019-09-14 19:14:22', '2019-11-10 09:07:12'),
(219, 'binary_commission', 'Binary Commission', 'Binary Commission', 'Congratulation, you get Binary Commission from user {{username}} ,&nbsp; &nbsp;{{amount}} {{currency}}&nbsp; And your current balance is {{post_balance}}&nbsp;<span style=\"color: rgb(33, 37, 41);\">&nbsp;{{currency}}</span>. Transaction number {{trx}}', 'Congratulation, you get Binary Commission from user {{username}} ,   {{amount}} {{currency}}  And your current balance is {{post_balance}}  {{currency}}. Transaction number {{trx}}', ' {\r\n                    \"username\":\"commission From user\",\r\n                    \"amount\":\"Plan price\",\r\n                \"post_balance\":\" After Balance\",\r\n                \"currency\":\"Site Currency\",\r\n                \"trx\":\"Transaction number\"\r\n            }', 1, 1, '2019-09-14 19:14:22', '2019-11-10 09:07:12'),
(220, 'referral_commission', 'Referral Commission', 'Referral Commission', '<font color=\"#212529\">Congratulation, you get </font>Referral <font color=\"#212529\">Commission from user {{username}} ,&nbsp; &nbsp;{{amount}} {{currency}}&nbsp; And your current balance is {{post_balance}}&nbsp;</font><span style=\"color: rgb(33, 37, 41);\">&nbsp;{{currency}}</span><span style=\"color: rgb(33, 37, 41);\">. Transaction number {{trx}}</span>', 'Congratulation, you get Referral Commission from user {{username}} ,   {{amount}} {{currency}}  And your current balance is {{post_balance}}  {{currency}}. Transaction number {{trx}}', ' {\r\n                    \"username\":\"commission From user\",\r\n                    \"amount\":\"Plan price\",\r\n                \"post_balance\":\" After Balance\",\r\n                \"currency\":\"Site Currency\",\r\n                \"trx\":\"Transaction number\"\r\n            }', 1, 1, '2019-09-14 19:14:22', '2019-11-10 09:07:12'),
(221, 'BAL_SEND', 'Balance Send', 'Balance Transfer Successfully', '<div>Balance transferred successfully complete. You send  {{amount}} {{currency}}  to  {{username}}  And charge to transfer  {{charge}}  {{currency}} .</div><div><br></div><div>Transaction number {{trx}} .<br></div><div><br></div><div> Your Current Balance is {{balance_now}}  {{currency}}.</div>', 'Balance transferred successfully complete. You send {{amount}} {{currency}} to {{username}} And charge to transfer {{charge}} {{currency}} .\r\n\r\nTransaction number {{trx}} .\r\n\r\nYour Current Balance is {{balance_now}} {{currency}}.', '{\"amount\":\"Send Amount\", \"username\":\"Receiver Username\",\"charge\":\"Transfer charge\" ,\"balance_now\":\" After Balance\", \"currency\":\"currency\",\"trx\":\"Transaction number\"}', 1, 1, '2019-09-14 19:14:22', '2019-11-10 09:07:12'),
(222, 'BAL_RECEIVE', 'Balance Received', 'Balance Received Successfully', 'Balance received successfully. You got {{amount}} \r\n{{currency}} from&nbsp; {{username}}  And charge to transfer  {{charge}}  \r\n{{currency}} .<div><div><br></div><div>Transaction number {{trx}} .<br></div><div><br></div><div> Your Current Balance is {{balance_now}}  {{currency}}.</div></div>', 'Balance received successfully. You got {{amount}} {{currency}} from  {{username}} And charge to transfer {{charge}} {{currency}} .\r\n\r\nTransaction number {{trx}} .\r\n\r\nYour Current Balance is {{balance_now}} {{currency}}.', '{\"amount\":\"Received Amount\", \"username\":\"Sender Username\",\"charge\":\"Transfer charge\" ,\"balance_now\":\" After Balance\", \"currency\":\"currency\",\"trx\":\"Transaction number\"}', 1, 1, '2019-09-14 19:14:22', '2019-11-10 09:07:12');

-- --------------------------------------------------------

--
-- Table structure for table `extensions`
--

CREATE TABLE `extensions` (
  `id` int(10) UNSIGNED NOT NULL,
  `act` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `script` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shortcode` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'object',
  `support` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'help section',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `extensions`
--

INSERT INTO `extensions` (`id`, `act`, `name`, `description`, `image`, `script`, `shortcode`, `support`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'tawk-chat', 'Tawk.to', 'Key location is shown bellow', 'tawky_big.png', '<script>\r\n                        var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n                        (function(){\r\n                        var s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\n                        s1.async=true;\r\n                        s1.src=\"https://embed.tawk.to/{{app_key}}\";\r\n                        s1.charset=\"UTF-8\";\r\n                        s1.setAttribute(\"crossorigin\",\"*\");\r\n                        s0.parentNode.insertBefore(s1,s0);\r\n                        })();\r\n                    </script>', '{\"app_key\":{\"title\":\"App Key\",\"value\":\"------------------------------\"}}', 'twak.png', 0, NULL, '2019-10-18 23:16:05', '2021-04-09 23:16:02'),
(2, 'google-recaptcha2', 'Google Recaptcha 2', 'Key location is shown bellow', 'recaptcha3.png', '\r\n<script src=\"https://www.google.com/recaptcha/api.js\"></script>\r\n<div class=\"g-recaptcha\" data-sitekey=\"{{sitekey}}\" data-callback=\"verifyCaptcha\"></div>\r\n<div id=\"g-recaptcha-error\"></div>', '{\"sitekey\":{\"title\":\"Site Key\",\"value\":\"-----------------------------\"}}', 'recaptcha.png', 0, NULL, '2019-10-18 23:16:05', '2021-04-09 23:16:31'),
(3, 'custom-captcha', 'Custom Captcha', 'Just Put Any Random String', 'customcaptcha.png', NULL, '{\"random_key\":{\"title\":\"Random String\",\"value\":\"Demo\"}}', 'na', 0, NULL, '2019-10-18 23:16:05', '2021-07-10 13:29:27'),
(4, 'google-analytics', 'Google Analytics', 'Key location is shown bellow', 'google-analytics.png', '<script async src=\"https://www.googletagmanager.com/gtag/js?id={{app_key}}\"></script>\r\n                <script>\r\n                  window.dataLayer = window.dataLayer || [];\r\n                  function gtag(){dataLayer.push(arguments);}\r\n                  gtag(\"js\", new Date());\r\n                \r\n                  gtag(\"config\", \"{{app_key}}\");\r\n                </script>', '{\"app_key\":{\"title\":\"App Key\",\"value\":\"---------------------------------\"}}', 'ganalytics.png', 0, NULL, NULL, '2021-04-09 23:16:10'),
(5, 'fb-comment', 'Facebook Comment ', 'Key location is shown bellow', 'Facebook.png', '<div id=\"fb-root\"></div><script async defer crossorigin=\"anonymous\" src=\"https://connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v4.0&appId={{app_key}}&autoLogAppEvents=1\"></script>', '{\"app_key\":{\"title\":\"App Key\",\"value\":\"-------------------------------------\"}}', 'fb_com.png', 0, NULL, NULL, '2021-04-09 23:16:18');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `frontends`
--

CREATE TABLE `frontends` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_keys` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_values` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `frontends`
--

INSERT INTO `frontends` (`id`, `data_keys`, `data_values`, `created_at`, `updated_at`) VALUES
(1, 'seo.data', '{\"seo_image\":\"1\",\"keywords\":[\"mlm\",\"multi level marketing\",\"ptc\",\"click and earn\",\"advertisement\",\"binary mlm\",\"referrarl commission\",\"business value\",\"mlm business\",\"mlm invest\",\"mlmptc\",\"ptcmlm\"],\"description\":\"Win more commissions by making more members and increase your capital. And you can earn more money by viewing advertisements on our site..\",\"social_title\":\"NordK - Enlarge Your Network And Get More Commissions\",\"social_description\":\"Win more commissions by making more members and increase your capital. And you can earn more money by viewing advertisements on our site\",\"image\":\"60ed5202275d51626165762.png\"}', '2020-07-04 23:42:52', '2021-07-13 03:15:09'),
(24, 'about.content', '{\"has_image\":\"1\",\"title\":\"Mission\",\"subtitle\":\"Enable people to Earn more as they help others to Earn more, with the power of Team Work.\",\"video_link\":\"https:\\/\\/www.youtube.com\\/watch?v=GT6-H4BRyqQ&amp;\",\"description\":\"We are not just an online version of any Business market, but also, the reflection of each and every MLM business. We are an international financial company engaged in investment activities, which are related to MLM on financial markets by qualified professional traders. Our goal is to provide our investors with a reliable source of high income, while minimizing any possible risks and offering a high-quality service, allowing us to automate and simplify the relations between the investors and the trustees. We work towards increasing your profit margin by profitable investment. We look forward to you being part of our community.\",\"background_image\":\"60e9e82ad2d301625942058.png\"}', '2020-10-28 00:51:20', '2021-07-11 16:11:02'),
(25, 'blog.content', '{\"title\":\"Latest News\",\"subtitle\":\"BLOGS\"}', '2020-10-28 00:51:34', '2021-04-10 00:54:04'),
(27, 'contact_us.content', '{\"has_image\":\"1\",\"api_key\":\"AIzaSyCo_pcAdFNbTDCAvMwAD19oRTuEmb9M50c\",\"latitude\":\"23.4756416\",\"longitude\":\"90.4684669\",\"email_address\":\"demo@gmail.Com\",\"contact_details\":\"Errits\\u00f8 Bygade 2,  Copenhagen.Denmark\",\"contact_number\":\"+453336694  (11am to 3pm)\",\"background_image\":\"60e9e96f3ac461625942383.jpg\"}', '2020-10-28 00:59:19', '2021-07-11 14:16:00'),
(31, 'social_icon.element', '{\"title\":\"Facebook\",\"social_icon\":\"<i class=\\\"fab fa-facebook-f\\\"><\\/i>\",\"url\":\"#\"}', '2020-11-12 04:07:30', '2021-04-09 22:58:07'),
(33, 'feature.content', '{\"title\":\"What We Serve To Our Members\",\"subtitle\":\"OUR SERVICES\"}', '2020-12-01 00:47:44', '2021-04-09 23:51:07'),
(34, 'feature.element', '{\"icon\":\"<i class=\\\"fas fa-money-bill-wave\\\"><\\/i>\",\"title\":\"Profitable\",\"description\":\"You can get the golden opportunity to actually win a lot of profit here.\"}', '2020-12-01 00:48:27', '2021-04-09 23:51:42'),
(35, 'feature.element', '{\"icon\":\"<i class=\\\"fas fa-lock\\\"><\\/i>\",\"title\":\"Secure\",\"description\":\"Gives ultimate security with 2FA authentication with this system\"}', '2020-12-01 00:48:38', '2020-12-12 14:27:27'),
(36, 'feature.element', '{\"icon\":\"<i class=\\\"fas fa-language\\\"><\\/i>\",\"title\":\"Multilingual\",\"description\":\"This site can be easily translated into your own language.\"}', '2020-12-01 00:49:30', '2021-04-09 23:52:13'),
(37, 'feature.element', '{\"icon\":\"<i class=\\\"las la-coins\\\"><\\/i>\",\"title\":\"Crypto\",\"description\":\"Cryptocurrency stored on our servers is covered by our insurance policy.\"}', '2020-12-01 00:49:41', '2021-04-10 00:16:42'),
(38, 'feature.element', '{\"icon\":\"<i class=\\\"las la-headset\\\"><\\/i>\",\"title\":\"Support\",\"description\":\"We always provide the best \\r\\nsupport to all our users.\"}', '2020-12-01 00:50:03', '2021-04-09 23:52:42'),
(39, 'feature.element', '{\"icon\":\"<i class=\\\"fas fa-globe-americas\\\"><\\/i>\",\"title\":\"Global\",\"description\":\"We support a variety of the most popular digital currencies.\"}', '2020-12-01 00:50:37', '2020-12-12 14:20:11'),
(40, 'how_it_works.content', '{\"heading\":\"How It\'s Work\",\"subheading\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias est maiores quo tempora illum quibusdam, incidunt aspernatur, voluptatem maxime!\"}', '2020-12-01 00:51:07', '2020-12-01 00:51:07'),
(41, 'how_it_works.element', '{\"icon\":\"<i class=\\\"fas fa-money-bill-wave\\\"><\\/i>\",\"title\":\"Get Paid\",\"description\":\"Each member will get a commission by adding a new member. So it\'s a profitable process for all.\"}', '2020-12-01 00:52:11', '2020-12-12 18:22:40'),
(42, 'how_it_works.element', '{\"icon\":\"<i class=\\\"fas fa-users\\\"><\\/i>\",\"title\":\"Bring People\",\"description\":\"The strategy is new members sponsored by distributors are added either on the left or right leg.\"}', '2020-12-01 00:52:26', '2020-12-12 18:19:23'),
(43, 'how_it_works.element', '{\"icon\":\"<i class=\\\"fas fa-user-edit\\\"><\\/i>\",\"title\":\"Sign Up\",\"description\":\"Just click the register button on the website and fill up all the information there and get your account.\"}', '2020-12-01 00:52:57', '2020-12-17 14:37:09'),
(44, 'team.content', '{\"title\":\"Let\'s Meet Our Experts\",\"subtitle\":\"OUR TEAM\"}', '2020-12-01 00:53:36', '2021-04-10 00:40:52'),
(50, 'transaction.content', '{\"title\":\"Our Latest Deposits and Withdraws\",\"subtitle\":\"TRANSACTIONS\"}', '2020-12-01 01:05:37', '2021-04-10 00:42:31'),
(53, 'counter.element', '{\"title\":\"Total Deposit\",\"counter_digit\":\"6000+\"}', '2020-12-01 01:10:07', '2021-07-12 13:07:13'),
(54, 'counter.element', '{\"title\":\"Total Withdraw\",\"counter_digit\":\"40000+\"}', '2020-12-01 01:10:20', '2021-07-12 11:37:51'),
(55, 'counter.element', '{\"title\":\"Total Users\",\"counter_digit\":\"7000+\"}', '2020-12-01 01:10:33', '2021-07-12 11:38:02'),
(56, 'testimonial.content', '{\"has_image\":\"1\",\"title\":\"What People Say About Us\",\"subtitle\":\"OUR CLIENTS\",\"background_image\":\"60e9e95319bbd1625942355.jpg\"}', '2020-12-01 01:11:00', '2021-07-10 13:09:15'),
(61, 'subscribe.content', '{\"has_image\":\"1\",\"title\":\"Subscribe To Our Newsletter\",\"subtitle\":\"SUBSCRIBE\",\"background_image\":\"60e9ea467e7541625942598.jpg\"}', '2020-12-01 01:14:58', '2021-07-10 13:13:18'),
(62, 'blog.element', '{\"has_image\":[\"1\"],\"title\":\"How the fuse of Danish Dynamite was lit 50 years ago\",\"description\":\"<p style=\\\"margin:-10px 0px 15px;padding:0px;text-align:justify;\\\"><font color=\\\"#000000\\\" face=\\\"Open Sans, Arial, sans-serif\\\">It\\u2019s good times for Danish football at the moment. In a month\\u2019s time, Denmark takes part in the postponed Euro 2020 tournament and there is optimism of a good run, given that the Danes are ranked in the top 10 in the world. However, it wasn\\u2019t always a walk in the Parken. In 1948 the Danish football team won bronze at the Olympics in London, but shortly after eight out of its 13 players got offered a contract by a foreign club \\u2013which meant that the team could not go for gold at the 1952 edition. At the time, the DBU football association stipulated that Danish footballers with a professional contract at a foreign club were banned for life from playing for the Danish national team. Those who returned to Denmark were even forced to sit out for two years before being able to play in the Danish league again.<\\/font><br \\/><\\/p>\",\"blog_image\":\"60eb585b330bd1626036315.jpeg\"}', '2020-12-01 01:16:46', '2021-07-11 15:15:15'),
(63, 'blog.element', '{\"has_image\":[\"1\"],\"title\":\"Where strangers gather for festive fare and leave as friends\",\"description\":\"<p style=\\\"margin-right:0px;margin-bottom:10px;margin-left:0px;text-align:justify;font-size:14px;font-family:\'Myriad Pro\', \'Helvetica Neue\', Helvetica, Arial, sans-serif;color:rgb(0,0,0);\\\">It would be hard to forgive the gloomy and bleak winter in Copenhagen without the Christmas lights, scent of gl\\u00f8gg, and tipsy Danes giggling and cheering. The star of the show is the \\u2018Julefrokost\\u2019, a year-end party with endless bottoms-up of schnapps, and dining chain Madklubben has geared up its party room in \\u00d8sterbro for the special occasion.<\\/p><p style=\\\"margin-right:0px;margin-bottom:10px;margin-left:0px;text-align:justify;font-size:14px;font-family:\'Myriad Pro\', \'Helvetica Neue\', Helvetica, Arial, sans-serif;color:rgb(0,0,0);\\\"><strong style=\\\"font-weight:bold;\\\">In Wes Andersen\\u2019s brain<br \\/><\\/strong><\\/p><p style=\\\"margin-right:0px;margin-bottom:10px;margin-left:0px;text-align:justify;font-size:14px;font-family:\'Myriad Pro\', \'Helvetica Neue\', Helvetica, Arial, sans-serif;color:rgb(0,0,0);\\\">When we visited, the palatial banquet room was adorned with glossy Jerusalem cherries and hollies and classics from the beloved Danish furniture designer B\\u00f8rge Mogensen. With a colour palette reminiscent of the Grand Budapest Hotel and a dazzling array of exquisite glasses and plates, the setting was an unimpeachably perfect fit for sumptuous dining.<\\/p><p style=\\\"margin-right:0px;margin-bottom:10px;margin-left:0px;text-align:justify;font-size:14px;font-family:\'Myriad Pro\', \'Helvetica Neue\', Helvetica, Arial, sans-serif;color:rgb(0,0,0);\\\">I must confess that I was expecting some awkward eye contact when guided to a seat between two groups, but the people present gladly engaged us in conversation.<\\/p><p style=\\\"margin-right:0px;margin-bottom:10px;margin-left:0px;text-align:justify;font-size:14px;font-family:\'Myriad Pro\', \'Helvetica Neue\', Helvetica, Arial, sans-serif;color:rgb(0,0,0);\\\">The anticipation was palpable, as was the hunger and thirst, and when the venue manager Emma Hind raised a glass of champagne and thanked everyone for coming, the night erupted in the jingle of 50 glasses clinking.<\\/p>\",\"blog_image\":\"60eb590c720661626036492.jpg\"}', '2020-12-01 01:16:47', '2021-07-11 15:18:12'),
(64, 'blog.element', '{\"has_image\":[\"1\"],\"title\":\"Business Round-Up: Pleo becomes Denmark\\u2019s first fintech unicorn\",\"description\":\"<p style=\\\"margin:-10px 0px 15px;padding:0px;text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;\\\"><span style=\\\"color:rgb(0,0,0);font-family:\'Myriad Pro\', \'Helvetica Neue\', Helvetica, Arial, sans-serif;\\\">In other news, foreclosures are down and house sales are up \\u2026 but so is the number of unfilled job vacancies. Denmark\\u2019s 2020 economic recovery is looking cryptic<br \\/><\\/span><\\/p><p style=\\\"margin-right:0px;margin-bottom:10px;margin-left:0px;text-align:justify;font-size:14px;font-family:\'Myriad Pro\', \'Helvetica Neue\', Helvetica, Arial, sans-serif;color:rgb(0,0,0);\\\">Danish fintech startup Pleo has achieved \\u2018unicorn\\u2019 status with a valuation of 1.7 billion US dollars. It\\u2019s only the eighth time a Danish company has achieved the coveted rating.<\\/p><p style=\\\"margin-right:0px;margin-bottom:10px;margin-left:0px;text-align:justify;font-size:14px;font-family:\'Myriad Pro\', \'Helvetica Neue\', Helvetica, Arial, sans-serif;color:rgb(0,0,0);\\\">The other companies to have reached the milestone are Zendesk, Unity, Tradeshift, Sitecore, Trustpilot, Net Company and Chainalysis.<\\/p><div class=\\\"col-lg-9 col-md-9 col-sm-6\\\" style=\\\"min-height:1px;padding:0px;float:left;width:457.484px;color:rgb(51,51,51);font-family:\'Myriad Pro\', \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:14px;margin-top:10px;margin-bottom:10px;height:auto;\\\"><div class=\\\"jubii-adunit\\\"><\\/div><\\/div><div class=\\\"col-lg-3 col-md-3 col-sm-6\\\" style=\\\"min-height:1px;padding:0px;float:left;width:152.484px;color:rgb(51,51,51);font-family:\'Myriad Pro\', \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:14px;margin-top:10px;margin-bottom:10px;\\\"><\\/div><div class=\\\"clearfix\\\" style=\\\"color:rgb(51,51,51);font-family:\'Myriad Pro\', \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:14px;\\\"><\\/div><p style=\\\"margin-right:0px;margin-bottom:10px;margin-left:0px;text-align:justify;font-size:14px;font-family:\'Myriad Pro\', \'Helvetica Neue\', Helvetica, Arial, sans-serif;color:rgb(0,0,0);\\\">Pleo is the first pure fintech company on the list \\u2013 and the fastest, taking just over six years.<\\/p><p style=\\\"margin-right:0px;margin-bottom:10px;margin-left:0px;text-align:justify;font-size:14px;font-family:\'Myriad Pro\', \'Helvetica Neue\', Helvetica, Arial, sans-serif;color:rgb(0,0,0);\\\"><strong style=\\\"font-weight:bold;\\\">Breaking records<br \\/><\\/strong>Its Series C round of funding, co-led by Bain Capital Ventures and Thrive Capital, raised 150 million US dollars \\u2013 the biggest ever Series C funding round in Denmark.<\\/p><p style=\\\"margin-right:0px;margin-bottom:10px;margin-left:0px;text-align:justify;font-size:14px;font-family:\'Myriad Pro\', \'Helvetica Neue\', Helvetica, Arial, sans-serif;color:rgb(0,0,0);\\\">\\u201cWe\\u2019re thrilled to be working alongside Bain and Thrive, and incredibly thankful to our other investors \\u2013 Stripes, Kinnevik, Creandum, Founders and Seedcamp \\u2013 who continue to support our journey,\\u201d said Jeppe Rindom, the co-founder and CEO at Pleo.<\\/p><p style=\\\"margin-right:0px;margin-bottom:10px;margin-left:0px;text-align:justify;font-size:14px;font-family:\'Myriad Pro\', \'Helvetica Neue\', Helvetica, Arial, sans-serif;color:rgb(0,0,0);\\\">Pleo has raised a total of 228.8 million US dollars up to this point. Its 56 million Series B round, led by current investor Stripes, was the biggest Series B total in Danish history.<\\/p><p style=\\\"margin-right:0px;margin-bottom:10px;margin-left:0px;text-align:justify;font-size:14px;font-family:\'Myriad Pro\', \'Helvetica Neue\', Helvetica, Arial, sans-serif;color:rgb(0,0,0);\\\"><strong style=\\\"font-weight:bold;\\\">Goodbye to pen and paper<br \\/><\\/strong>Pleo offers corporate expense management software with linked company cards, automated reports and advanced analytics. The bulk of its revenue comes from transaction fees when a customer charges expenses to their card. It works on an approximate 50 kroner-per-user subscription model.<\\/p><p style=\\\"margin-right:0px;margin-bottom:10px;margin-left:0px;text-align:justify;font-size:14px;font-family:\'Myriad Pro\', \'Helvetica Neue\', Helvetica, Arial, sans-serif;color:rgb(0,0,0);\\\">\\u201cA large number of companies that come to Pleo do so because they are still heavily reliant on manual, decentralised, paper-based processes,\\u201d said Rindom.<\\/p><p style=\\\"margin-right:0px;margin-bottom:10px;margin-left:0px;text-align:justify;font-size:14px;font-family:\'Myriad Pro\', \'Helvetica Neue\', Helvetica, Arial, sans-serif;color:rgb(0,0,0);\\\">The newest funding will go towards growing new features, as well as investing in the 330-strong team. Pleo also has its eyes on expanding into the UK market, building on its 17,000-strong user base from its core markets in Denmark, Germany, Sweden, Spain and Ireland.<\\/p>\",\"blog_image\":\"60eb596dd232f1626036589.jpg\"}', '2020-12-01 01:16:48', '2021-07-11 15:19:49'),
(65, 'blog.element', '{\"has_image\":[\"1\"],\"title\":\"Denmark inks maritime export agreement with China\",\"description\":\"<p style=\\\"margin-right:0px;margin-bottom:10px;margin-left:0px;text-align:justify;font-size:14px;font-family:\'Myriad Pro\', \'Helvetica Neue\', Helvetica, Arial, sans-serif;color:rgb(0,0,0);\\\">The Business Ministry has revealed that Denmark has signed a new maritime co-operation agreement with China.<\\/p><p style=\\\"margin-right:0px;margin-bottom:10px;margin-left:0px;text-align:justify;font-size:14px;font-family:\'Myriad Pro\', \'Helvetica Neue\', Helvetica, Arial, sans-serif;color:rgb(0,0,0);\\\">Business minister Simon Kollerup met with China\\u2019s minister of industry and information technology, Xiao Yaqing, to pave the way for stronger links in regards to green shipbuilding.<\\/p><div class=\\\"col-lg-9 col-md-9 col-sm-6\\\" style=\\\"min-height:1px;padding:0px;float:left;width:457.484px;color:rgb(51,51,51);font-family:\'Myriad Pro\', \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:14px;margin-top:10px;margin-bottom:10px;height:auto;\\\"><div class=\\\"jubii-adunit\\\"><\\/div><\\/div><div class=\\\"col-lg-3 col-md-3 col-sm-6\\\" style=\\\"min-height:1px;padding:0px;float:left;width:152.484px;color:rgb(51,51,51);font-family:\'Myriad Pro\', \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:14px;margin-top:10px;margin-bottom:10px;\\\"><\\/div><div class=\\\"clearfix\\\" style=\\\"color:rgb(51,51,51);font-family:\'Myriad Pro\', \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:14px;\\\"><\\/div><p style=\\\"margin-right:0px;margin-bottom:10px;margin-left:0px;text-align:justify;font-size:14px;font-family:\'Myriad Pro\', \'Helvetica Neue\', Helvetica, Arial, sans-serif;color:rgb(0,0,0);\\\">\\u201cDenmark plays an important role as a green shipping trailblazer and the agreement is a recognition that the Danish maritime industry has lots to offer in regards to international green shipbuilding,\\u201d\\u00a0<a href=\\\"https:\\/\\/em.dk\\/nyhedsarkiv\\/2021\\/juni\\/samarbejdsaftale-mellem-danmark-og-kina-baner-vejen-for-groen-maritim-eksport\\/\\\" style=\\\"color:rgb(51,51,51);\\\">said Kollerup.<\\/a><\\/p><p style=\\\"margin-right:0px;margin-bottom:10px;margin-left:0px;text-align:justify;font-size:14px;font-family:\'Myriad Pro\', \'Helvetica Neue\', Helvetica, Arial, sans-serif;color:rgb(0,0,0);\\\"><a href=\\\"https:\\/\\/cphpost.dk\\/?p=122162\\\" style=\\\"color:rgb(51,51,51);\\\"><strong style=\\\"font-weight:bold;\\\">READ ALSO: New exhibition to recall Denmark\\u2019s worst ever maritime disaster<\\/strong><\\/a><\\/p><p style=\\\"margin-right:0px;margin-bottom:10px;margin-left:0px;text-align:justify;font-size:14px;font-family:\'Myriad Pro\', \'Helvetica Neue\', Helvetica, Arial, sans-serif;color:rgb(0,0,0);\\\"><b style=\\\"font-weight:bold;\\\">Big players on the high seas<\\/b><br \\/>The Chinese shipbuilding industry is among the biggest in the world, which naturally makes it a prime market for Danish companies looking to export more sustainable maritime solutions.<\\/p><p style=\\\"margin-right:0px;margin-bottom:10px;margin-left:0px;text-align:justify;font-size:14px;font-family:\'Myriad Pro\', \'Helvetica Neue\', Helvetica, Arial, sans-serif;color:rgb(0,0,0);\\\">From 2015 to 2019 the Danish export of maritime goods and services to China has increased by about 27 percent to 5.2 billion kroner.<\\/p><p style=\\\"margin-right:0px;margin-bottom:10px;margin-left:0px;text-align:justify;font-size:14px;font-family:\'Myriad Pro\', \'Helvetica Neue\', Helvetica, Arial, sans-serif;color:rgb(0,0,0);\\\">In fact, outside the EU, China is the biggest export market for the Danish maritime industry along with the US and South Korea.<\\/p><p style=\\\"margin-right:0px;margin-bottom:10px;margin-left:0px;text-align:justify;font-size:14px;font-family:\'Myriad Pro\', \'Helvetica Neue\', Helvetica, Arial, sans-serif;color:rgb(0,0,0);\\\">Meanwhile, Denmark is no slouch either as it possesses the world\\u2019s seventh biggest maritime industry.<\\/p><p style=\\\"margin-right:0px;margin-bottom:10px;margin-left:0px;text-align:justify;font-size:14px;font-family:\'Myriad Pro\', \'Helvetica Neue\', Helvetica, Arial, sans-serif;color:rgb(0,0,0);\\\">\\u201cDenmark and China co-operate well in the maritime sector and that collaboration with now be further boosted \\u2013 to the benefit of the Danish maritime industry, economy and the climate,\\u201d concluded Kollerup.<\\/p>\",\"blog_image\":\"60eb59ada26e81626036653.jpg\"}', '2020-12-01 01:16:49', '2021-07-11 15:20:53'),
(68, 'footer_section.content', '{\"has_image\":\"1\",\"website_footer\":\"Nordk.org\",\"copyright\":\"Copyright \\u00a9 2021. All Rights Reserved and Powered by tv2.dk\",\"background_image\":\"60e9ea3be750e1625942587.jpg\"}', '2020-12-01 01:23:24', '2021-07-12 09:33:07'),
(73, 'faq.content', '{\"heading\":\"Frequently Asked Questions\",\"sub_heading\":\"Frequently Asked Questions (FAQ) or Question and Answers(Q&amp;A) , are listed Questions and answers,all supposed to be commonly asked in some context\"}', '2020-12-01 01:24:57', '2021-07-12 15:45:57'),
(79, 'sign_up.content', '{\"has_image\":\"1\",\"title\":\"Create Your Account\",\"short_details\":\"Haven\'t registered yet! don\'t worry just fillip all the information below and get your account now.\",\"login_section_title\":\"Welcome  To Tv2.dk world\",\"login_section_short_details\":\"Haven\'t registered yet! don\'t worry just fillip all the information below and get your account now.\",\"background_image\":\"60e9e9c28f09e1625942466.jpg\"}', '2020-12-01 01:28:59', '2021-07-13 02:49:40'),
(80, 'sign_in.content', '{\"has_image\":\"1\",\"title\":\"Login Account\",\"short_details\":\"To login into the site please enter your username and password\",\"register_section_title\":\"Well Come To NordK world\",\"register_section_short_details\":\"Haven\'t registered yet! don\'t worry just fillip all the information below and get your account now.\",\"background_image\":\"60e9e9d19ed671625942481.jpg\"}', '2020-12-01 01:29:34', '2021-07-10 13:11:44'),
(81, 'terms_conditions.content', '{\"title\":\"Below are the Terms &amp; Conditions by which we operate at MLM Ltd.\",\"description\":\"<h5 class=\\\"title\\\" style=\\\"margin-top:-7px;margin-bottom:8px;font-weight:600;line-height:1.3;font-size:24px;color:rgb(15,25,50);font-family:Poppins, sans-serif;\\\">Terms &amp; Conditions<\\/h5><div class=\\\"entry-content\\\" style=\\\"color:rgb(85,85,85);\\\"><p style=\\\"font-family:Roboto, sans-serif;margin-top:-10px;margin-bottom:32px;\\\"><\\/p><p style=\\\"margin-bottom:16px;color:rgb(17,17,17);\\\"><font size=\\\"3\\\" face=\\\"times new roman\\\">GENERAL TERMS &amp; CONDITIONS OF BUSINESS<br \\/><\\/font><font size=\\\"3\\\" face=\\\"times new roman\\\">1. Terms and Conditions<br \\/><\\/font><span style=\\\"color:rgb(17,17,17);\\\"><font size=\\\"3\\\" face=\\\"times new roman\\\">1.1 All and any business is undertaken by Projects Limited is transacted subject to the terms and conditions hereinafter set out, each of which will be incorporated or implied in any agreement between Projects and the Client.<br \\/><\\/font><\\/span><font size=\\\"3\\\" face=\\\"times new roman\\\">1.2 In the event of a conflict between these terms and conditions and any other terms and conditions, the former shall prevail unless otherwise expressly agreed by Projects in writing.<br \\/><\\/font><font size=\\\"3\\\" face=\\\"times new roman\\\">1.3 Projects is acting in the capacity of an employment agency. Any amendments to these terms and conditions must be in writing and signed by an authorized representative of Projects.<br \\/><\\/font><font size=\\\"3\\\" face=\\\"times new roman\\\">1.4 The Client is deemed to have accepted these terms and conditions of business upon the arrangement of an interview, or the interview of a Candidate Introduced by Projects whether effected by Projects directly or by the Client.<\\/font><\\/p><h3 style=\\\"font-family:\'Open Sans\', Arial, sans-serif;margin-top:15px;margin-bottom:15px;font-weight:700;line-height:1.3;font-size:14px;color:rgb(0,0,0);padding:0px;\\\"><\\/h3><p style=\\\"margin-bottom:16px;color:rgb(17,17,17);font-family:\'Open Sans\';font-size:16px;\\\">\\u201cCandidate\\u201d<\\/p><p style=\\\"margin-bottom:16px;color:rgb(17,17,17);font-family:\'Open Sans\';font-size:16px;\\\">Means any person, firm or body corporate together with any subsidiary, group or associated company (as defined by the Companies Act 1985) Introduced by Projectus to the Client or by the Client to a Qualifying Third Person with a view to the Client or a Qualifying Third Person offering Employment.<\\/p><p style=\\\"margin-bottom:16px;color:rgb(17,17,17);font-family:\'Open Sans\';font-size:16px;\\\">\\u201cClient\\u201d<\\/p><p style=\\\"margin-bottom:16px;color:rgb(17,17,17);font-family:\'Open Sans\';font-size:16px;\\\">Means the person, firm or body corporate together with any subsidiary, group or associated company (as defined by the Companies Act 1985) to whom an Introduction is made<\\/p><p style=\\\"margin-bottom:16px;color:rgb(17,17,17);font-family:\'Open Sans\';font-size:16px;\\\">\\u201cCommencement of Employment\\u201d<\\/p><p style=\\\"margin-bottom:16px;color:rgb(17,17,17);font-family:\'Open Sans\';font-size:16px;\\\">Means the first day of the Candidate\'s Employment or the first day the Candidate is entitled to any remuneration whichever is the sooner<\\/p><p style=\\\"margin-bottom:16px;color:rgb(17,17,17);font-family:\'Open Sans\';font-size:16px;\\\">\\u201cEmployment\\u201d<\\/p><p style=\\\"margin-bottom:16px;color:rgb(17,17,17);font-family:\'Open Sans\';font-size:16px;\\\">Means any employment by the Client or a Qualifying Third Person of the Candidate whether on PAYE, self employed or a contract for services either directly with the Candidate or through any body corporate or third party irrespective of whether the Employment is subject to a trial period and irrespective of whether the Employment is part time or full time. Employs, Employed and Employment shall be construed accordingly.<\\/p><p style=\\\"margin-bottom:16px;color:rgb(17,17,17);font-family:\'Open Sans\';font-size:16px;\\\">\\u201cEmployee of Projectus\\u201d<\\/p><p style=\\\"margin-bottom:16px;color:rgb(17,17,17);font-family:\'Open Sans\';font-size:16px;\\\">Means any person, firm or body corporate whom is employed by Projectus whether on PAYE, self employed or a contract for services either directly or through a Qualifying Third Person irrespective of whether the employment is subject to a trial period and irrespective of whether the employment is part time or full time.<\\/p><p style=\\\"margin-bottom:16px;color:rgb(17,17,17);font-family:\'Open Sans\';font-size:16px;\\\">\\u201cFee\\u201d<\\/p><p style=\\\"margin-bottom:16px;color:rgb(17,17,17);font-family:\'Open Sans\';font-size:16px;\\\">Shall mean 30% of the Total Salary plus VAT. The minimum Fee shall be \\u00a35,000 plus VAT<\\/p><p style=\\\"margin-bottom:16px;color:rgb(17,17,17);font-family:\'Open Sans\';font-size:16px;\\\">\\u201cInterest\\u201d<\\/p><p style=\\\"margin-bottom:16px;color:rgb(17,17,17);font-family:\'Open Sans\';font-size:16px;\\\">Means the rate of 2.5% above the Bank of England plc base rate, to be compounded monthly.<\\/p><\\/div>\"}', '2020-12-01 01:29:59', '2020-12-13 17:27:36'),
(82, 'slider.element', '{\"has_image\":[\"1\"],\"title\":\"BINARY MULTI LEVEL MARKETING\",\"subtitle\":\"INTELLIGENT PLAN FOR YOUR MONEY\",\"left_button\":\"sign in\",\"left_button_link\":\"login\",\"right_button\":\"sign up\",\"right_button_link\":\"register\",\"description\":\"We are a dedicated Binary Multilevel Marketing company for every MLM plan with custom features.\",\"background_image\":\"5fc5f9cd0d3d11606810061.jpg\"}', '2020-12-01 02:07:41', '2020-12-13 13:35:28'),
(83, 'breadcrumb.content', '{\"has_image\":\"1\",\"background_image\":\"60e9e9067ae7e1625942278.jpg\"}', '2020-12-01 03:22:55', '2021-07-10 13:07:58'),
(84, 'social_icon.element', '{\"title\":\"twitter\",\"social_icon\":\"<i class=\\\"lab la-twitter\\\"><\\/i>\",\"url\":\"#\"}', '2020-12-05 01:00:59', '2020-12-05 01:00:59'),
(85, 'social_icon.element', '{\"title\":\"youtube\",\"social_icon\":\"<i class=\\\"fab fa-youtube\\\"><\\/i>\",\"url\":\"#\"}', '2020-12-05 01:01:07', '2020-12-05 01:01:07'),
(86, 'social_icon.element', '{\"title\":\"youtube\",\"social_icon\":\"<i class=\\\"lab la-instagram\\\"><\\/i>\",\"url\":\"#\"}', '2020-12-05 01:01:15', '2020-12-05 01:01:15'),
(87, 'social_icon.element', '{\"title\":\"telegram\",\"social_icon\":\"<i class=\\\"lab la-telegram-plane\\\"><\\/i>\",\"url\":\"#\"}', '2020-12-05 01:02:49', '2020-12-05 01:02:49'),
(92, 'banner.content', '{\"has_image\":\"1\",\"title\":\"To make the Dreams come true of every member in the Family.\",\"left_button\":\"Let\'s Start\",\"left_button_link\":\"register\",\"right_button\":\"Latest News\",\"right_button_link\":\"https:\\/\\/nordk.org\\/blog\",\"description\":\"Win more commissions by making more members and increase your capital. And you can earn more money by viewing advertisements on our site.\",\"background_image\":\"60e9ea5d199131625942621.jpg\"}', '2021-03-21 00:22:43', '2021-07-13 01:16:58'),
(98, 'plan.content', '{\"title\":\"Choose The Most Suitable Plan For You\",\"subtitle\":\"OUR PLANS\"}', '2021-03-21 03:12:20', '2021-04-10 00:41:43'),
(99, 'team.element', '{\"has_image\":[\"1\"],\"name\":\"Asuntiry Siomony\",\"designation\":\"Senior Advisor\",\"description\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Modi.\",\"image\":\"60eb4b2d32f421626032941.jpeg\"}', '2021-03-21 03:30:29', '2021-07-11 14:19:01'),
(100, 'testimonial.element', '{\"has_image\":[\"1\"],\"author\":\"Kathi Angel\",\"designation\":\"Managing Director -Africa\",\"rating\":\"5\",\"quote\":\"Tenetur fugiat deleniti nisi ad dolores accusamus cumque sapiente sequi hic nam dolorum culpa laborum libero minima quas expedita quae\",\"image\":\"60eb55a0cb5771626035616.jpg\"}', '2021-03-21 03:55:55', '2021-07-11 15:10:46'),
(101, 'testimonial.element', '{\"has_image\":[\"1\"],\"author\":\"William Trosyon\",\"designation\":\"Marketing Manager-Europe\",\"rating\":\"4\",\"quote\":\"Tenetur fugiat deleniti nisi ad dolores accusamus cumque sapiente sequi hic nam dolorum culpa laborum libero minima quas expedita quae\",\"image\":\"60eb54bed92611626035390.jpg\"}', '2021-03-21 04:09:05', '2021-07-11 15:11:12'),
(102, 'payment_methods.content', '{\"title\":\"Our Payment System For You\",\"subtitle\":\"PAYMENT METHODS\"}', '2021-03-21 05:23:54', '2021-04-10 00:44:56'),
(106, 'user_links.element', '{\"title\":\"Terms and Conditions\",\"description\":\"<div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We claim all authority to dismiss, end, or handicap any help with or without cause per administrator discretion. This is a Complete independent facilitating, on the off chance that you misuse our ticket or Livechat or emotionally supportive network by submitting solicitations or protests we will impair your record. The solitary time you should reach us about the seaward facilitating is if there is an issue with the worker. We have not many substance limitations and everything is as per laws and guidelines. Try not to join on the off chance that you intend to do anything contrary to the guidelines, we do check these things and we will know, don\'t burn through our own and your time by joining on the off chance that you figure you will have the option to sneak by us and break the terms.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><ul class=\\\"font-18\\\" style=\\\"padding-left:15px;list-style-type:disc;font-size:18px;\\\"><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Configuration requests - If you have a fully managed dedicated server with us then we offer custom PHP\\/MySQL configurations, firewalls for dedicated IPs, DNS, and httpd configurations.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Software requests - Cpanel Extension Installation will be granted as long as it does not interfere with the security, stability, and performance of other users on the server.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Emergency Support - We do not provide emergency support \\/ Phone Support \\/ LiveChat Support. Support may take some hours sometimes.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Webmaster help - We do not offer any support for webmaster-related issues and difficulty including coding, &amp; installs, Error solving. if there is an issue where a library or configuration of the server then we can help you if it\'s possible from our end.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Backups - We keep backups but we are not responsible for data loss, you are fully responsible for all backups.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">We Don\'t support any child porn or such material.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">No spam-related sites or material, such as email lists, mass mail programs, and scripts, etc.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">No harassing material that may cause people to retaliate against you.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">No phishing pages.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">You may not run any exploitation script from the server. reason can be terminated immediately.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">If Anyone attempting to hack or exploit the server by using your script or hosting, we will terminate your account to keep safe other users.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Malicious Botnets are strictly forbidden.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Spam, mass mailing, or email marketing in any way are strictly forbidden here.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Malicious hacking materials, trojans, viruses, &amp; malicious bots running or for download are forbidden.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Resource and cronjob abuse is forbidden and will result in suspension or termination.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Php\\/CGI proxies are strictly forbidden.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">CGI-IRC is strictly forbidden.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">No fake or disposal mailers, mass mailing, mail bombers, SMS bombers, etc.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">NO CREDIT OR REFUND will be granted for interruptions of service, due to User Agreement violations.<\\/li><\\/ul><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">Terms &amp; Conditions for Users<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">Before getting to this site, you are consenting to be limited by these site Terms and Conditions of Use, every single appropriate law, and guidelines, and concur that you are answerable for consistency with any material neighborhood laws. If you disagree with any of these terms, you are restricted from utilizing or getting to this site.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">Support<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">Whenever you have downloaded our item, you may get in touch with us for help through email and we will give a valiant effort to determine your issue. We will attempt to answer using the Email for more modest bug fixes, after which we will refresh the center bundle. Content help is offered to confirmed clients by Tickets as it were. Backing demands made by email and Livechat.<\\/p><p class=\\\"my-3 font-18 font-weight-bold\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">On the off chance that your help requires extra adjustment of the System, at that point, you have two alternatives:<\\/p><ul class=\\\"font-18\\\" style=\\\"padding-left:15px;list-style-type:disc;font-size:18px;\\\"><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Hang tight for additional update discharge.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Or on the other hand, enlist a specialist (We offer customization for extra charges).<\\/li><\\/ul><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">Ownership<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">You may not guarantee scholarly or selective possession of any of our items, altered or unmodified. All items are property, we created them. Our items are given \\\"with no guarantees\\\" without guarantee of any sort, either communicated or suggested. On no occasion will our juridical individual be subject to any harms including, however not restricted to, immediate, roundabout, extraordinary, accidental, or significant harms or different misfortunes emerging out of the utilization of or powerlessness to utilize our items.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">Warranty<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We don\'t offer any guarantee or assurance of these Services in any way. When our Services have been modified we can\'t ensure they will work with all outsider plugins, modules, or internet browsers. Program similarity ought to be tried against the show formats on the demo worker. If you don\'t mind guarantee that the programs you use will work with the component, as we can not ensure that our systems will work with all program mixes.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">Unauthorized\\/Illegal Usage<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">You may not utilize our things for any illicit or unapproved reason or may you, in the utilization of the stage, disregard any laws in your locale (counting yet not restricted to copyright laws) just as the laws of your nation and International law. Specifically, it is disallowed to utilize the things on our foundation for pages that advance: brutality, illegal intimidation, hard sexual entertainment, bigotry, obscenity content or warez programming joins.<br \\/><br \\/>You can\'t imitate, copy, duplicate, sell, exchange or adventure any of our segment, utilization of the offered on our things, or admittance to the administration without the express composed consent by us or item proprietor.<br \\/><br \\/>Our Members are liable for all substance posted on the discussion and demo and movement that happens under your record.<br \\/><br \\/>We hold the chance of hindering your participation account quickly if we will think about a particularly not allowed conduct.<br \\/><br \\/>If you make a record on our site, you are liable for keeping up the security of your record, and you are completely answerable for all exercises that happen under the record and some other activities taken regarding the record. You should quickly inform us, of any unapproved employments of your record or some other penetrates of security.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">Fiverr, Seoclerks Sellers Or Affiliates<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We do NOT ensure full SEO campaign conveyance within 24 hours. We make no assurance for conveyance time by any means. We give our best assessment to orders during the putting-in of requests, anyway, these are gauges. We won\'t be considered liable for loss of assets, negative surveys or you being prohibited for late conveyance. If you are selling on a site that requires time touchy outcomes, utilize Our SEO Services at your own risk.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">Payment\\/Refund Policy<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">No refund or cashback will be made. After a deposit has been finished, it is extremely unlikely to invert it. You should utilize your equilibrium on requests our administrations, Hosting, SEO campaign. You concur that once you complete a deposit, you won\'t document a debate or a chargeback against us in any way, shape, or form.<br \\/><br \\/>If you document a debate or chargeback against us after a deposit, we claim all authority to end every single future request, prohibit you from our site. False action, for example, utilizing unapproved or taken charge cards will prompt the end of your record. There are no special cases.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">Free Balance \\/ Coupon Policy<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We offer numerous approaches to get FREE Balance, Coupons and Deposit offers yet we generally reserve the privilege to audit it and deduct it from your record offset with any explanation we may it is a sort of misuse. If we choose to deduct a few or all of the free Balances from your record balance, and your record balance becomes negative, at that point the record will naturally be suspended. If your record is suspended because of a negative Balance you can request to make a custom payment to settle your equilibrium to actuate your record.<\\/p><\\/div>\"}', '2021-03-21 05:53:31', '2021-06-03 04:23:15'),
(107, 'how_work.content', '{\"has_image\":\"1\",\"title\":\"Our Work Process In 4 Steps\",\"subtitle\":\"HOW WE WORK\",\"video_link\":\"https:\\/\\/www.youtube.com\\/embed\\/sefEYq-qbg8?autoplay=1\",\"background_image\":\"60ebe039be0771626071097.jpg\"}', '2021-04-01 05:03:14', '2021-07-12 00:54:57'),
(108, 'how_work.element', '{\"title\":\"Create An Account\"}', '2021-04-01 05:03:57', '2021-04-10 00:20:52'),
(109, 'how_work.element', '{\"title\":\"Choose Plan\"}', '2021-04-01 05:04:32', '2021-04-08 08:18:42'),
(110, 'how_work.element', '{\"title\":\"Invite More People\"}', '2021-04-01 05:05:18', '2021-04-08 08:18:53'),
(111, 'counter.content', '{\"has_image\":\"1\",\"background_image\":\"606d59a7574951617779111.jpg\"}', '2021-04-07 01:05:11', '2021-04-07 01:05:11'),
(112, 'how_work.element', '{\"title\":\"Get Commission\"}', '2021-04-08 07:15:13', '2021-04-08 08:19:13'),
(114, 'team.element', '{\"has_image\":[\"1\"],\"name\":\"Kathi Angel\",\"designation\":\"Marketing Executive\",\"description\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Modi.\",\"image\":\"60ec4b6dad7cf1626098541.png\"}', '2021-04-09 22:30:47', '2021-07-12 08:32:21'),
(115, 'team.element', '{\"has_image\":[\"1\"],\"name\":\"Shane Grilson\",\"designation\":\"CEO\",\"description\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Modi.\",\"image\":\"60ec498b88ef11626098059.png\"}', '2021-04-09 22:31:08', '2021-07-12 08:24:19'),
(117, 'payment_methods.element', '{\"has_image\":[\"1\"],\"name\":\"PERFECT MONEY\",\"image\":\"60eb4c61db5711626033249.png\"}', '2021-07-11 14:24:09', '2021-07-11 14:24:09'),
(119, 'testimonial.element', '{\"has_image\":[\"1\"],\"author\":\"Mian Khan Akbar\",\"designation\":\"Marketing Agent Asia\",\"rating\":\"4.5\",\"quote\":\"Tenetur fugiat deleniti nisi ad dolores accusamus cumque sapiente sequi hic nam dolorum culpa laborum libero minima quas expedita quae\",\"image\":\"60eb553aa1b0f1626035514.jpg\"}', '2021-07-11 14:54:21', '2021-07-11 15:10:24'),
(120, 'faq.element', '{\"question\":\"What is Nordk and tv2.dk?\",\"answer\":\"NordK stands for \\u2018Need of  Rich Denmark\\u2019. This phrase embodies our core aim of providing our members with the information and the platform (\'Rich\') to improve their financial lives and provide greater security (\\u2018safe,\\u2019 as in safeguard) for themselves, their loved ones, or a charity of their choice.\\n\\nNordK is a community that works to support its members individually and collectively in raising funds for philanthropic or personal use. NordK was created to democratise fundraising, while extending equity, TV2.dk and commodity investing to the masses, giving everyone a chance to back the next \\u2018unicorn\\u2019 company.\"}', '2021-07-12 15:00:28', '2021-07-12 23:44:21'),
(121, 'faq.element', '{\"question\":\"How do I start?\",\"answer\":\"There are 4 easy steps:\\n\\n1. Sign up and register, using a referral link.\\n\\n2. Pay your account activation fee \\n\\n3. Make a donation \\n\\n4.Get commission by view Ads.\"}', '2021-07-12 15:08:09', '2021-07-13 00:10:45');

-- --------------------------------------------------------

--
-- Table structure for table `gateways`
--

CREATE TABLE `gateways` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` int(11) DEFAULT NULL,
  `alias` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NULL',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supported_currencies` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `crypto` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: fiat currency, 1: crypto currency',
  `extra` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `input_form` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gateways`
--

INSERT INTO `gateways` (`id`, `code`, `alias`, `image`, `name`, `status`, `parameters`, `supported_currencies`, `crypto`, `extra`, `description`, `input_form`, `created_at`, `updated_at`) VALUES
(1, 101, 'paypal', '60ec9963373301626118499.png', 'Paypal', 0, '{\"paypal_email\":{\"title\":\"PayPal Email\",\"global\":true,\"value\":\"sb-zlbi7986064@personal.example.com\"}}', '{\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"HKD\":\"HKD\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"ILS\":\"ILS\",\"JPY\":\"JPY\",\"MYR\":\"MYR\",\"MXN\":\"MXN\",\"TWD\":\"TWD\",\"NZD\":\"NZD\",\"NOK\":\"NOK\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"GBP\":\"GBP\",\"RUB\":\"RUB\",\"SGD\":\"SGD\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"THB\":\"THB\",\"USD\":\"$\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-07-12 14:04:59'),
(2, 102, 'perfect_money', '60eb67acf3fcf1626040236.png', 'Perfect Money', 1, '{\"passphrase\":{\"title\":\"ALTERNATE PASSPHRASE\",\"global\":true,\"value\":\"6451561651551\"},\"wallet_id\":{\"title\":\"PM Wallet\",\"global\":false,\"value\":\"\"}}', '{\"USD\":\"$\",\"EUR\":\"\\u20ac\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-07-11 16:20:37'),
(3, 103, 'stripe', '60ec98dfa4f7d1626118367.jpg', 'Stripe Hosted', 0, '{\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"sk_test_51HuxFUHyGzEKoTKAfIosswAQduMOGU4q4elcNr8OE6LoBZcp2MHKalOW835wjRiF6fxVTc7RmBgatKfAt1Qq0heb00rUaCOd2T\"},\"publishable_key\":{\"title\":\"PUBLISHABLE KEY\",\"global\":true,\"value\":\"pk_test_51HuxFUHyGzEKoTKAueAuF9BrMDA5boMcpJLLt0vu4q3QdPX5isaGudKNe6OyVjZP1UugpYd6JA7i7TczRWsbutaP004YmBiSp5\"}}', '{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"SGD\":\"SGD\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-07-12 14:02:48'),
(4, 104, 'skrill', '60ec8fed21ac11626116077.png', 'Skrill', 0, '{\"pay_to_email\":{\"title\":\"Skrill Email\",\"global\":true,\"value\":\"merchant@skrill.com\"},\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"---\"}}', '{\"AED\":\"AED\",\"AUD\":\"AUD\",\"BGN\":\"BGN\",\"BHD\":\"BHD\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"HRK\":\"HRK\",\"HUF\":\"HUF\",\"ILS\":\"ILS\",\"INR\":\"INR\",\"ISK\":\"ISK\",\"JOD\":\"JOD\",\"JPY\":\"JPY\",\"KRW\":\"KRW\",\"KWD\":\"KWD\",\"MAD\":\"MAD\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"OMR\":\"OMR\",\"PLN\":\"PLN\",\"QAR\":\"QAR\",\"RON\":\"RON\",\"RSD\":\"RSD\",\"SAR\":\"SAR\",\"SEK\":\"SEK\",\"SGD\":\"SGD\",\"THB\":\"THB\",\"TND\":\"TND\",\"TRY\":\"TRY\",\"TWD\":\"TWD\",\"USD\":\"USD\",\"ZAR\":\"ZAR\",\"COP\":\"COP\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-07-12 13:24:37'),
(5, 105, 'paytm', '60ec9047f044c1626116167.png', 'PayTM', 0, '{\"MID\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"DIY12386817555501617\"},\"merchant_key\":{\"title\":\"Merchant Key\",\"global\":true,\"value\":\"bKMfNxPPf_QdZppa\"},\"WEBSITE\":{\"title\":\"Paytm Website\",\"global\":true,\"value\":\"DIYtestingweb\"},\"INDUSTRY_TYPE_ID\":{\"title\":\"Industry Type\",\"global\":true,\"value\":\"Retail\"},\"CHANNEL_ID\":{\"title\":\"CHANNEL ID\",\"global\":true,\"value\":\"WEB\"},\"transaction_url\":{\"title\":\"Transaction URL\",\"global\":true,\"value\":\"https:\\/\\/pguat.paytm.com\\/oltp-web\\/processTransaction\"},\"transaction_status_url\":{\"title\":\"Transaction STATUS URL\",\"global\":true,\"value\":\"https:\\/\\/pguat.paytm.com\\/paytmchecksum\\/paytmCallback.jsp\"}}', '{\"AUD\":\"AUD\",\"ARS\":\"ARS\",\"BDT\":\"BDT\",\"BRL\":\"BRL\",\"BGN\":\"BGN\",\"CAD\":\"CAD\",\"CLP\":\"CLP\",\"CNY\":\"CNY\",\"COP\":\"COP\",\"HRK\":\"HRK\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EGP\":\"EGP\",\"EUR\":\"EUR\",\"GEL\":\"GEL\",\"GHS\":\"GHS\",\"HKD\":\"HKD\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"IDR\":\"IDR\",\"ILS\":\"ILS\",\"JPY\":\"JPY\",\"KES\":\"KES\",\"MYR\":\"MYR\",\"MXN\":\"MXN\",\"MAD\":\"MAD\",\"NPR\":\"NPR\",\"NZD\":\"NZD\",\"NGN\":\"NGN\",\"NOK\":\"NOK\",\"PKR\":\"PKR\",\"PEN\":\"PEN\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"RON\":\"RON\",\"RUB\":\"RUB\",\"SGD\":\"SGD\",\"ZAR\":\"ZAR\",\"KRW\":\"KRW\",\"LKR\":\"LKR\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"THB\":\"THB\",\"TRY\":\"TRY\",\"UGX\":\"UGX\",\"UAH\":\"UAH\",\"AED\":\"AED\",\"GBP\":\"GBP\",\"USD\":\"USD\",\"VND\":\"VND\",\"XOF\":\"XOF\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-07-12 13:26:08'),
(6, 106, 'payeer', '60ec99f5705fc1626118645.jpg', 'Payeer', 0, '{\"merchant_id\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"866989763\"},\"secret_key\":{\"title\":\"Secret key\",\"global\":true,\"value\":\"7575\"}}', '{\"USD\":\"USD\",\"EUR\":\"EUR\",\"RUB\":\"RUB\"}', 0, '{\"status\":{\"title\": \"Status URL\",\"value\":\"ipn.payeer\"}}', NULL, NULL, '2019-09-14 13:14:22', '2021-07-12 14:07:25'),
(7, 107, 'paystack', '60ec91f1072f81626116593.png', 'PayStack', 0, '{\"public_key\":{\"title\":\"Public key\",\"global\":true,\"value\":\"pk_test_3c9c87f51b13c15d99eb367ca6ebc52cc9eb1f33\"},\"secret_key\":{\"title\":\"Secret key\",\"global\":true,\"value\":\"sk_test_2a3f97a146ab5694801f993b60fcb81cd7254f12\"}}', '{\"USD\":\"USD\",\"NGN\":\"NGN\"}', 0, '{\"callback\":{\"title\": \"Callback URL\",\"value\":\"ipn.paystack\"},\"webhook\":{\"title\": \"Webhook URL\",\"value\":\"ipn.paystack\"}}\r\n', NULL, NULL, '2019-09-14 13:14:22', '2021-07-12 13:33:13'),
(8, 108, 'voguepay', '60ec97b86bbd61626118072.png', 'VoguePay', 0, '{\"merchant_id\":{\"title\":\"MERCHANT ID\",\"global\":true,\"value\":\"demo\"}}', '{\"USD\":\"USD\",\"GBP\":\"GBP\",\"EUR\":\"EUR\",\"GHS\":\"GHS\",\"NGN\":\"NGN\",\"ZAR\":\"ZAR\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-07-12 13:57:52'),
(9, 109, 'flutterwave', '60ec92f892b091626116856.png', 'Flutterwave', 0, '{\"public_key\":{\"title\":\"Public Key\",\"global\":true,\"value\":\"demo_publisher_key\"},\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"demo_secret_key\"},\"encryption_key\":{\"title\":\"Encryption Key\",\"global\":true,\"value\":\"demo_encryption_key\"}}', '{\"BIF\":\"BIF\",\"CAD\":\"CAD\",\"CDF\":\"CDF\",\"CVE\":\"CVE\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"GHS\":\"GHS\",\"GMD\":\"GMD\",\"GNF\":\"GNF\",\"KES\":\"KES\",\"LRD\":\"LRD\",\"MWK\":\"MWK\",\"MZN\":\"MZN\",\"NGN\":\"NGN\",\"RWF\":\"RWF\",\"SLL\":\"SLL\",\"STD\":\"STD\",\"TZS\":\"TZS\",\"UGX\":\"UGX\",\"USD\":\"USD\",\"XAF\":\"XAF\",\"XOF\":\"XOF\",\"ZMK\":\"ZMK\",\"ZMW\":\"ZMW\",\"ZWD\":\"ZWD\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-07-12 13:37:36'),
(10, 110, 'razorpay', '60ec94a1898b41626117281.jpg', 'RazorPay', 0, '{\"key_id\":{\"title\":\"Key Id\",\"global\":true,\"value\":\"rzp_test_kiOtejPbRZU90E\"},\"key_secret\":{\"title\":\"Key Secret \",\"global\":true,\"value\":\"osRDebzEqbsE1kbyQJ4y0re7\"}}', '{\"INR\":\"INR\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-07-12 13:44:41'),
(11, 111, 'stripe_js', '60ec93dd1ad981626117085.jpg', 'Stripe Storefront', 0, '{\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"sk_test_51HuxFUHyGzEKoTKAfIosswAQduMOGU4q4elcNr8OE6LoBZcp2MHKalOW835wjRiF6fxVTc7RmBgatKfAt1Qq0heb00rUaCOd2T\"},\"publishable_key\":{\"title\":\"PUBLISHABLE KEY\",\"global\":true,\"value\":\"pk_test_51HuxFUHyGzEKoTKAueAuF9BrMDA5boMcpJLLt0vu4q3QdPX5isaGudKNe6OyVjZP1UugpYd6JA7i7TczRWsbutaP004YmBiSp5\"}}', '{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"SGD\":\"SGD\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-07-12 13:41:25'),
(12, 112, 'instamojo', '60ec942ec38ff1626117166.png', 'Instamojo', 0, '{\"api_key\":{\"title\":\"API KEY\",\"global\":true,\"value\":\"test_2241633c3bc44a3de84a3b33969\"},\"auth_token\":{\"title\":\"Auth Token\",\"global\":true,\"value\":\"test_279f083f7bebefd35217feef22d\"},\"salt\":{\"title\":\"Salt\",\"global\":true,\"value\":\"19d38908eeff4f58b2ddda2c6d86ca25\"}}', '{\"INR\":\"INR\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-07-12 13:42:46'),
(13, 501, 'blockchain', '60ec95b5d1c8f1626117557.png', 'Blockchain', 0, '{\"api_key\":{\"title\":\"API Key\",\"global\":true,\"value\":\"55529946-05ca-48ff-8710-f279d86b1cc5\"},\"xpub_code\":{\"title\":\"XPUB CODE\",\"global\":true,\"value\":\"xpub6CKQ3xxWyBoFAF83izZCSFUorptEU9AF8TezhtWeMU5oefjX3sFSBw62Lr9iHXPkXmDQJJiHZeTRtD9Vzt8grAYRhvbz4nEvBu3QKELVzFK\"}}', '{\"BTC\":\"BTC\"}', 1, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-07-12 13:49:17'),
(14, 502, 'blockio', '60ec948d5bb271626117261.jpg', 'Block.io', 0, '{\"api_key\":{\"title\":\"API Key\",\"global\":false,\"value\":\"1658-8015-2e5e-9afb\"},\"api_pin\":{\"title\":\"API PIN\",\"global\":true,\"value\":\"covidvai2020\"}}', '{\"BTC\":\"BTC\",\"LTC\":\"LTC\",\"DOGE\":\"DOGE\"}', 1, '{\"cron\":{\"title\": \"Cron URL\",\"value\":\"ipn.blockio\"}}', NULL, NULL, '2019-09-14 13:14:22', '2021-07-12 13:44:21'),
(15, 503, 'coinpayments', '60ec9679630b61626117753.jpg', 'CoinPayments', 0, '{\"public_key\":{\"title\":\"Public Key\",\"global\":true,\"value\":\"7638eebaf4061b7f7cdfceb14046318bbdabf7e2f64944773d6550bd59f70274\"},\"private_key\":{\"title\":\"Private Key\",\"global\":true,\"value\":\"Cb6dee7af8Eb9E0D4123543E690dA3673294147A5Dc8e7a621B5d484a3803207\"},\"merchant_id\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"93a1e014c4ad60a7980b4a7239673cb4\"}}', '{\"BTC\":\"Bitcoin\",\"BTC.LN\":\"Bitcoin (Lightning Network)\",\"LTC\":\"Litecoin\",\"CPS\":\"CPS Coin\",\"VLX\":\"Velas\",\"APL\":\"Apollo\",\"AYA\":\"Aryacoin\",\"BAD\":\"Badcoin\",\"BCD\":\"Bitcoin Diamond\",\"BCH\":\"Bitcoin Cash\",\"BCN\":\"Bytecoin\",\"BEAM\":\"BEAM\",\"BITB\":\"Bean Cash\",\"BLK\":\"BlackCoin\",\"BSV\":\"Bitcoin SV\",\"BTAD\":\"Bitcoin Adult\",\"BTG\":\"Bitcoin Gold\",\"BTT\":\"BitTorrent\",\"CLOAK\":\"CloakCoin\",\"CLUB\":\"ClubCoin\",\"CRW\":\"Crown\",\"CRYP\":\"CrypticCoin\",\"CRYT\":\"CryTrExCoin\",\"CURE\":\"CureCoin\",\"DASH\":\"DASH\",\"DCR\":\"Decred\",\"DEV\":\"DeviantCoin\",\"DGB\":\"DigiByte\",\"DOGE\":\"Dogecoin\",\"EBST\":\"eBoost\",\"EOS\":\"EOS\",\"ETC\":\"Ether Classic\",\"ETH\":\"Ethereum\",\"ETN\":\"Electroneum\",\"EUNO\":\"EUNO\",\"EXP\":\"EXP\",\"Expanse\":\"Expanse\",\"FLASH\":\"FLASH\",\"GAME\":\"GameCredits\",\"GLC\":\"Goldcoin\",\"GRS\":\"Groestlcoin\",\"KMD\":\"Komodo\",\"LOKI\":\"LOKI\",\"LSK\":\"LSK\",\"MAID\":\"MaidSafeCoin\",\"MUE\":\"MonetaryUnit\",\"NAV\":\"NAV Coin\",\"NEO\":\"NEO\",\"NMC\":\"Namecoin\",\"NVST\":\"NVO Token\",\"NXT\":\"NXT\",\"OMNI\":\"OMNI\",\"PINK\":\"PinkCoin\",\"PIVX\":\"PIVX\",\"POT\":\"PotCoin\",\"PPC\":\"Peercoin\",\"PROC\":\"ProCurrency\",\"PURA\":\"PURA\",\"QTUM\":\"QTUM\",\"RES\":\"Resistance\",\"RVN\":\"Ravencoin\",\"RVR\":\"RevolutionVR\",\"SBD\":\"Steem Dollars\",\"SMART\":\"SmartCash\",\"SOXAX\":\"SOXAX\",\"STEEM\":\"STEEM\",\"STRAT\":\"STRAT\",\"SYS\":\"Syscoin\",\"TPAY\":\"TokenPay\",\"TRIGGERS\":\"Triggers\",\"TRX\":\" TRON\",\"UBQ\":\"Ubiq\",\"UNIT\":\"UniversalCurrency\",\"USDT\":\"Tether USD (Omni Layer)\",\"VTC\":\"Vertcoin\",\"WAVES\":\"Waves\",\"XCP\":\"Counterparty\",\"XEM\":\"NEM\",\"XMR\":\"Monero\",\"XSN\":\"Stakenet\",\"XSR\":\"SucreCoin\",\"XVG\":\"VERGE\",\"XZC\":\"ZCoin\",\"ZEC\":\"ZCash\",\"ZEN\":\"Horizen\"}', 1, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-07-12 13:52:33'),
(16, 504, 'coinpayments_fiat', '60ec983bbf3a91626118203.jpg', 'CoinPayments Fiat', 0, '{\"merchant_id\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"93a1e014c4ad60a7980b4a7239673cb4\"}}', '{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CLP\":\"CLP\",\"CNY\":\"CNY\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"ISK\":\"ISK\",\"JPY\":\"JPY\",\"KRW\":\"KRW\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"RUB\":\"RUB\",\"SEK\":\"SEK\",\"SGD\":\"SGD\",\"THB\":\"THB\",\"TWD\":\"TWD\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-07-12 14:00:03'),
(17, 505, 'coingate', '60ec999d3c7cd1626118557.jpg', 'Coingate', 0, '{\"api_key\":{\"title\":\"API Key\",\"global\":true,\"value\":\"Ba1VgPx6d437xLXGKCBkmwVCEw5kHzRJ6thbGo-N\"}}', '{\"USD\":\"USD\",\"EUR\":\"EUR\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-07-12 14:05:57'),
(18, 506, 'coinbase_commerce', '60ec98426fe601626118210.jpg', 'Coinbase Commerce', 0, '{\"api_key\":{\"title\":\"API Key\",\"global\":true,\"value\":\"c47cd7df-d8e8-424b-a20a\"},\"secret\":{\"title\":\"Webhook Shared Secret\",\"global\":true,\"value\":\"55871878-2c32-4f64-ab66\"}}', '{\"USD\":\"USD\",\"EUR\":\"EUR\",\"JPY\":\"JPY\",\"GBP\":\"GBP\",\"AUD\":\"AUD\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CNY\":\"CNY\",\"SEK\":\"SEK\",\"NZD\":\"NZD\",\"MXN\":\"MXN\",\"SGD\":\"SGD\",\"HKD\":\"HKD\",\"NOK\":\"NOK\",\"KRW\":\"KRW\",\"TRY\":\"TRY\",\"RUB\":\"RUB\",\"INR\":\"INR\",\"BRL\":\"BRL\",\"ZAR\":\"ZAR\",\"AED\":\"AED\",\"AFN\":\"AFN\",\"ALL\":\"ALL\",\"AMD\":\"AMD\",\"ANG\":\"ANG\",\"AOA\":\"AOA\",\"ARS\":\"ARS\",\"AWG\":\"AWG\",\"AZN\":\"AZN\",\"BAM\":\"BAM\",\"BBD\":\"BBD\",\"BDT\":\"BDT\",\"BGN\":\"BGN\",\"BHD\":\"BHD\",\"BIF\":\"BIF\",\"BMD\":\"BMD\",\"BND\":\"BND\",\"BOB\":\"BOB\",\"BSD\":\"BSD\",\"BTN\":\"BTN\",\"BWP\":\"BWP\",\"BYN\":\"BYN\",\"BZD\":\"BZD\",\"CDF\":\"CDF\",\"CLF\":\"CLF\",\"CLP\":\"CLP\",\"COP\":\"COP\",\"CRC\":\"CRC\",\"CUC\":\"CUC\",\"CUP\":\"CUP\",\"CVE\":\"CVE\",\"CZK\":\"CZK\",\"DJF\":\"DJF\",\"DKK\":\"DKK\",\"DOP\":\"DOP\",\"DZD\":\"DZD\",\"EGP\":\"EGP\",\"ERN\":\"ERN\",\"ETB\":\"ETB\",\"FJD\":\"FJD\",\"FKP\":\"FKP\",\"GEL\":\"GEL\",\"GGP\":\"GGP\",\"GHS\":\"GHS\",\"GIP\":\"GIP\",\"GMD\":\"GMD\",\"GNF\":\"GNF\",\"GTQ\":\"GTQ\",\"GYD\":\"GYD\",\"HNL\":\"HNL\",\"HRK\":\"HRK\",\"HTG\":\"HTG\",\"HUF\":\"HUF\",\"IDR\":\"IDR\",\"ILS\":\"ILS\",\"IMP\":\"IMP\",\"IQD\":\"IQD\",\"IRR\":\"IRR\",\"ISK\":\"ISK\",\"JEP\":\"JEP\",\"JMD\":\"JMD\",\"JOD\":\"JOD\",\"KES\":\"KES\",\"KGS\":\"KGS\",\"KHR\":\"KHR\",\"KMF\":\"KMF\",\"KPW\":\"KPW\",\"KWD\":\"KWD\",\"KYD\":\"KYD\",\"KZT\":\"KZT\",\"LAK\":\"LAK\",\"LBP\":\"LBP\",\"LKR\":\"LKR\",\"LRD\":\"LRD\",\"LSL\":\"LSL\",\"LYD\":\"LYD\",\"MAD\":\"MAD\",\"MDL\":\"MDL\",\"MGA\":\"MGA\",\"MKD\":\"MKD\",\"MMK\":\"MMK\",\"MNT\":\"MNT\",\"MOP\":\"MOP\",\"MRO\":\"MRO\",\"MUR\":\"MUR\",\"MVR\":\"MVR\",\"MWK\":\"MWK\",\"MYR\":\"MYR\",\"MZN\":\"MZN\",\"NAD\":\"NAD\",\"NGN\":\"NGN\",\"NIO\":\"NIO\",\"NPR\":\"NPR\",\"OMR\":\"OMR\",\"PAB\":\"PAB\",\"PEN\":\"PEN\",\"PGK\":\"PGK\",\"PHP\":\"PHP\",\"PKR\":\"PKR\",\"PLN\":\"PLN\",\"PYG\":\"PYG\",\"QAR\":\"QAR\",\"RON\":\"RON\",\"RSD\":\"RSD\",\"RWF\":\"RWF\",\"SAR\":\"SAR\",\"SBD\":\"SBD\",\"SCR\":\"SCR\",\"SDG\":\"SDG\",\"SHP\":\"SHP\",\"SLL\":\"SLL\",\"SOS\":\"SOS\",\"SRD\":\"SRD\",\"SSP\":\"SSP\",\"STD\":\"STD\",\"SVC\":\"SVC\",\"SYP\":\"SYP\",\"SZL\":\"SZL\",\"THB\":\"THB\",\"TJS\":\"TJS\",\"TMT\":\"TMT\",\"TND\":\"TND\",\"TOP\":\"TOP\",\"TTD\":\"TTD\",\"TWD\":\"TWD\",\"TZS\":\"TZS\",\"UAH\":\"UAH\",\"UGX\":\"UGX\",\"UYU\":\"UYU\",\"UZS\":\"UZS\",\"VEF\":\"VEF\",\"VND\":\"VND\",\"VUV\":\"VUV\",\"WST\":\"WST\",\"XAF\":\"XAF\",\"XAG\":\"XAG\",\"XAU\":\"XAU\",\"XCD\":\"XCD\",\"XDR\":\"XDR\",\"XOF\":\"XOF\",\"XPD\":\"XPD\",\"XPF\":\"XPF\",\"XPT\":\"XPT\",\"YER\":\"YER\",\"ZMW\":\"ZMW\",\"ZWL\":\"ZWL\"}\r\n\r\n', 0, '{\"endpoint\":{\"title\": \"Webhook Endpoint\",\"value\":\"ipn.coinbase_commerce\"}}', NULL, NULL, '2019-09-14 13:14:22', '2021-07-12 14:00:10'),
(24, 113, 'paypal_sdk', '60ec9b2bae99b1626118955.jpg', 'Paypal Express', 0, '{\"clientId\":{\"title\":\"Paypal Client ID\",\"global\":true,\"value\":\"Ae0-tixtSV7DvLwIh3Bmu7JvHrjh5EfGdXr_cEklKAVjjezRZ747BxKILiBdzlKKyp-W8W_T7CKH1Ken\"},\"clientSecret\":{\"title\":\"Client Secret\",\"global\":true,\"value\":\"EOhbvHZgFNO21soQJT1L9Q00M3rK6PIEsdiTgXRBt2gtGtxwRer5JvKnVUGNU5oE63fFnjnYY7hq3HBA\"}}', '{\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"HKD\":\"HKD\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"ILS\":\"ILS\",\"JPY\":\"JPY\",\"MYR\":\"MYR\",\"MXN\":\"MXN\",\"TWD\":\"TWD\",\"NZD\":\"NZD\",\"NOK\":\"NOK\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"GBP\":\"GBP\",\"RUB\":\"RUB\",\"SGD\":\"SGD\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"THB\":\"THB\",\"USD\":\"$\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-07-12 14:12:35'),
(25, 114, 'stripe_v3', '60ec9a7c1d6781626118780.png', 'Stripe Checkout', 0, '{\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"sk_test_51HuxFUHyGzEKoTKAfIosswAQduMOGU4q4elcNr8OE6LoBZcp2MHKalOW835wjRiF6fxVTc7RmBgatKfAt1Qq0heb00rUaCOd2T\"},\"publishable_key\":{\"title\":\"PUBLISHABLE KEY\",\"global\":true,\"value\":\"pk_test_51HuxFUHyGzEKoTKAueAuF9BrMDA5boMcpJLLt0vu4q3QdPX5isaGudKNe6OyVjZP1UugpYd6JA7i7TczRWsbutaP004YmBiSp5\"},\"end_point\":{\"title\":\"End Point Secret\",\"global\":true,\"value\":\"w5555\"}}', '{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"SGD\":\"SGD\"}', 0, '{\"webhook\":{\"title\": \"Webhook Endpoint\",\"value\":\"ipn.stripe_v3\"}}', NULL, NULL, '2019-09-14 13:14:22', '2021-07-12 14:09:40'),
(27, 115, 'mollie', '60ec9934bf1331626118452.png', 'Mollie', 0, '{\"mollie_email\":{\"title\":\"Mollie Email \",\"global\":true,\"value\":\"admin@gmail.com\"},\"api_key\":{\"title\":\"API KEY\",\"global\":true,\"value\":\"test_cucfwKTWfft9s337qsVfn5CC4vNkrn\"}}', '{\"AED\":\"AED\",\"AUD\":\"AUD\",\"BGN\":\"BGN\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"HRK\":\"HRK\",\"HUF\":\"HUF\",\"ILS\":\"ILS\",\"ISK\":\"ISK\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"RON\":\"RON\",\"RUB\":\"RUB\",\"SEK\":\"SEK\",\"SGD\":\"SGD\",\"THB\":\"THB\",\"TWD\":\"TWD\",\"USD\":\"USD\",\"ZAR\":\"ZAR\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-07-12 14:04:12'),
(30, 116, 'cashmaal', '60ec9731395b71626117937.jpg', 'Cashmaal', 0, '{\"web_id\":{\"title\":\"Web Id\",\"global\":true,\"value\":\"3748\"},\"ipn_key\":{\"title\":\"IPN Key\",\"global\":true,\"value\":\"546254628759524554647987\"}}', '{\"PKR\":\"PKR\",\"USD\":\"USD\"}', 0, '{\"webhook\":{\"title\": \"IPN URL\",\"value\":\"ipn.cashmaal\"}}', NULL, NULL, NULL, '2021-07-12 13:55:37');

-- --------------------------------------------------------

--
-- Table structure for table `gateway_currencies`
--

CREATE TABLE `gateway_currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_code` int(11) DEFAULT NULL,
  `gateway_alias` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_amount` decimal(18,8) NOT NULL,
  `max_amount` decimal(18,8) NOT NULL,
  `percent_charge` decimal(5,2) NOT NULL DEFAULT 0.00,
  `fixed_charge` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `rate` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway_parameter` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sitename` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cur_text` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'currency text',
  `cur_sym` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'currency symbol',
  `email_from` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_template` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sms_api` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_color` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondary_color` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_config` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'email configuration',
  `ev` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'email verification, 0 - dont check, 1 - check',
  `en` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'email notification, 0 - dont send, 1 - send',
  `sv` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'sms verication, 0 - dont check, 1 - check',
  `sn` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'sms notification, 0 - dont send, 1 - send',
  `force_ssl` tinyint(4) NOT NULL DEFAULT 0,
  `secure_password` tinyint(4) NOT NULL DEFAULT 0,
  `registration` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: Off	, 1: On',
  `social_login` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'social login',
  `social_credential` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_template` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sys_version` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bv_price` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_bv` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_bv` int(11) DEFAULT NULL,
  `cary_flash` tinyint(1) DEFAULT NULL,
  `notice` blob DEFAULT NULL,
  `free_user_notice` blob DEFAULT NULL,
  `matching_bonus_time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `matching_when` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_paid` datetime DEFAULT NULL,
  `last_cron` datetime DEFAULT NULL,
  `bal_trans_per_charge` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `bal_trans_fixed_charge` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `withdraw_min_refer` int(12) NOT NULL DEFAULT 0,
  `transfer_min_refer` int(12) NOT NULL DEFAULT 0,
  `transfer_min_amount` int(12) NOT NULL DEFAULT 0,
  `ref_upgr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `sitename`, `cur_text`, `cur_sym`, `email_from`, `email_template`, `sms_api`, `base_color`, `secondary_color`, `mail_config`, `ev`, `en`, `sv`, `sn`, `force_ssl`, `secure_password`, `registration`, `social_login`, `social_credential`, `active_template`, `sys_version`, `bv_price`, `total_bv`, `max_bv`, `cary_flash`, `notice`, `free_user_notice`, `matching_bonus_time`, `matching_when`, `last_paid`, `last_cron`, `bal_trans_per_charge`, `bal_trans_fixed_charge`, `created_at`, `updated_at`, `withdraw_min_refer`, `transfer_min_refer`, `transfer_min_amount`, `ref_upgr`) VALUES
(1, 'NordK', 'USD', '$', 'no-reply@nordk.org', '<table style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(0, 23, 54); text-decoration-style: initial; text-decoration-color: initial;\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" bgcolor=\"#001736\"><tbody><tr><td valign=\"top\" align=\"center\"><table class=\"mobile-shell\" width=\"650\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\"><tbody><tr><td class=\"td container\" style=\"width: 650px; min-width: 650px; font-size: 0pt; line-height: 0pt; margin: 0px; font-weight: normal; padding: 55px 0px;\"><div style=\"text-align: center;\"><img src=\"https://i.imgur.com/DJXtakU.png\" width=\"250\" style=\"color: rgb(33, 37, 41); font-family: Montserrat, sans-serif; font-size: 16px; text-align: left; background-color: rgb(255, 255, 255);\"><br></div><table style=\"width: 650px; margin: 0px auto;\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\"><tbody><tr><td style=\"padding-bottom: 10px;\"><table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\"><tbody><tr><td class=\"tbrr p30-15\" style=\"padding: 60px 30px; border-radius: 26px 26px 0px 0px;\" bgcolor=\"#000036\"><table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\"><tbody><tr><td style=\"color: rgb(255, 255, 255); font-family: Muli, Arial, sans-serif; font-size: 20px; line-height: 46px; padding-bottom: 25px; font-weight: bold;\">Hi {{name}} ,</td></tr><tr><td style=\"color: rgb(193, 205, 220); font-family: Muli, Arial, sans-serif; font-size: 20px; line-height: 30px; padding-bottom: 25px;\">{{message}}</td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table><table style=\"width: 650px; margin: 0px auto;\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\"><tbody><tr><td class=\"p30-15 bbrr\" style=\"padding: 50px 30px; border-radius: 0px 0px 26px 26px;\" bgcolor=\"#000036\"><table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\"><tbody><tr><td class=\"text-footer1 pb10\" style=\"color: rgb(0, 153, 255); font-family: Muli, Arial, sans-serif; font-size: 18px; line-height: 30px; text-align: center; padding-bottom: 10px;\">© 2021 NordK. All Rights Reserved.</td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table>', '--------------------------------------------', 'ff5100', '000000', '{\"name\":\"smtp\",\"host\":\"mail.nordk.org\",\"port\":\"465\",\"enc\":\"ssl\",\"username\":\"no-reply@nordk.org\",\"password\":\"qK!ao-_yKmKm\"}', 0, 1, 0, 0, 1, 0, 1, 0, '{\"google_client_id\":\"53929591142-l40gafo7efd9onfe6tj545sf9g7tv15t.apps.googleusercontent.com\",\"google_client_secret\":\"BRdB3np2IgYLiy4-bwMcmOwN\",\"fb_client_id\":\"277229062999748\",\"fb_client_secret\":\"1acfc850f73d1955d14b282938585122\"}', 'basic', NULL, '50', '1200', 30000, 0, 0x3c683520636c6173733d22636172642d7469746c6520746578742d7072696d61727922207374796c653d226d617267696e2d626f74746f6d3a20302e3572656d3b20666f6e742d7765696768743a203630303b206c696e652d6865696768743a20312e333b20666f6e742d73697a653a20323070783b20666f6e742d66616d696c793a202671756f743b4f70656e2053616e732671756f743b2c2073616e732d73657269663b2070616464696e673a203070783b207472616e736974696f6e3a20616c6c20302e337320656173652030733b20636f6c6f723a2072676228302c203137352c20323535292021696d706f7274616e743b223e266e6273703b57656c636f6d6520746f20736974653c2f68353e, 0x3c683520636c6173733d22636172642d7469746c6520746578742d7072696d61727922207374796c653d22746578742d616c69676e3a206c6566743b206d617267696e2d626f74746f6d3a20302e3572656d3b20666f6e742d7765696768743a203630303b206c696e652d6865696768743a20312e333b20666f6e742d73697a653a20323070783b20666f6e742d66616d696c793a202671756f743b4f70656e2053616e732671756f743b2c2073616e732d73657269663b2070616464696e673a203070783b207472616e736974696f6e3a20616c6c20302e337320656173652030733b20636f6c6f723a2072676228302c203137352c20323535292021696d706f7274616e743b223e3c7370616e207374796c653d22636f6c6f723a2072676228302c203137352c20323535293b223e266e6273703b506c65617365205570677261646520666f72206561726e206d6f72653c2f7370616e3e3c62723e3c2f68353e, 'daily', '24', '2021-04-10 00:00:00', '2021-07-13 14:10:02', '1.00000000', '1.00000000', NULL, '2021-07-13 08:40:02', 1, 1, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_align` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0: left to right text align, 1: right to left text align',
  `is_default` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0: not default language, 1: default language',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `icon`, `text_align`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', '5f15968db08911595250317.png', 0, 0, '2020-07-06 03:47:55', '2021-01-06 00:33:35'),
(13, 'Russian', 'ru', NULL, 0, 1, '2021-07-13 06:42:28', '2021-07-13 06:42:28');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2021_03_15_084721_create_admin_notifications_table', 1),
(2, '2021_07_21_184216_update_coloum_to_plans', 2),
(3, '2021_07_22_112145_add_commission_log_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'template name',
  `secs` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `slug`, `tempname`, `secs`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'HOME', 'home', 'templates.basic.', '[\"about\",\"feature\",\"how_work\",\"team\",\"testimonial\",\"counter\",\"blog\",\"subscribe\",\"payment_methods\"]', 1, '2020-07-11 06:23:58', '2021-07-12 11:41:43'),
(2, 'About', 'about-us', 'templates.basic.', '[\"about\",\"counter\",\"testimonial\",\"team\"]', 0, '2020-07-11 06:35:35', '2021-06-03 04:31:54'),
(4, 'Blog', 'blog', 'templates.basic.', NULL, 1, '2020-10-22 01:14:43', '2020-12-01 03:40:45'),
(5, 'Contact', 'contact', 'templates.basic.', NULL, 1, '2020-10-22 01:14:53', '2020-10-22 01:14:53'),
(8, 'FAQ', 'faq', 'templates.basic.', '[\"faq\"]', 0, '2021-07-12 15:06:46', '2021-07-12 15:07:45');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` int(10) NOT NULL,
  `name` varchar(191) NOT NULL,
  `price` decimal(16,8) NOT NULL DEFAULT 0.00000000,
  `bv` int(10) DEFAULT NULL,
  `ref_com` decimal(16,8) DEFAULT NULL,
  `tree_com` decimal(16,8) DEFAULT NULL,
  `daily_ad_limit` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `ref_level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `name`, `price`, `bv`, `ref_com`, `tree_com`, `daily_ad_limit`, `status`, `updated_at`, `created_at`, `ref_level`) VALUES
(11, 'demo', '100.00000000', 1, '0.00000000', '1.00000000', 1, 1, '2021-07-22 03:35:21', '2021-07-22 03:35:21', 2);

-- --------------------------------------------------------

--
-- Table structure for table `ptcs`
--

CREATE TABLE `ptcs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ads_type` int(1) DEFAULT NULL COMMENT '1 = link | 2 = image | 3 = script',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads_body` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `duration` int(11) NOT NULL DEFAULT 0,
  `max_show` int(11) NOT NULL DEFAULT 0,
  `showed` int(11) NOT NULL DEFAULT 0,
  `remain` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ptc_views`
--

CREATE TABLE `ptc_views` (
  `id` int(11) NOT NULL,
  `ptc_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `vdt` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(18,8) DEFAULT 0.00000000,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `referrals`
--

CREATE TABLE `referrals` (
  `id` int(10) UNSIGNED NOT NULL,
  `level` int(11) NOT NULL,
  `percent` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `referrals`
--

INSERT INTO `referrals` (`id`, `level`, `percent`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '1', 1, '2021-07-22 02:56:31', '2021-07-22 02:56:31'),
(2, 2, '1', 1, '2021-07-22 02:56:31', '2021-07-22 02:56:31');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_attachments`
--

CREATE TABLE `support_attachments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `support_message_id` int(11) NOT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_messages`
--

CREATE TABLE `support_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `supportticket_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL DEFAULT 0,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_tickets`
--

CREATE TABLE `support_tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(91) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ticket` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL COMMENT '0: Open, 1: Answered, 2: Replied, 3: Closed',
  `last_reply` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `amount` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `charge` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `post_balance` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `trx_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trx` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `amount`, `charge`, `post_balance`, `trx_type`, `trx`, `details`, `remark`, `created_at`, `updated_at`) VALUES
(120, 31, '100.00000000', '0.00000000', '4900.00000000', '-', '22R7VGHANYWU', 'Subscribed to demo Plan', 'buy_plan', '2021-07-22 08:22:02', '2021-07-22 08:22:02'),
(121, 30, '1.00000000', '0.00000000', '1.00000000', '+', 'T55SD36VV8KA', 'Level 1 Referral Commission from himanshu', NULL, '2021-07-22 08:22:02', '2021-07-22 08:22:02'),
(122, 26, '1.00000000', '0.00000000', '6.00000000', '+', 'OPGH62M36BTO', 'Level 2 Referral Commission from shashi210', NULL, '2021-07-22 08:22:02', '2021-07-22 08:22:02'),
(123, 31, '100.00000000', '0.00000000', '4800.00000000', '-', 'W83WPT3YY4ZS', 'Subscribed to demo Plan', 'buy_plan', '2021-07-22 08:53:23', '2021-07-22 08:53:23'),
(124, 30, '1.00000000', '0.00000000', '2.00000000', '+', 'XSNA21YZ5UZ7', 'Level 1 Referral Commission from himanshu', NULL, '2021-07-22 08:53:23', '2021-07-22 08:53:23'),
(125, 26, '1.00000000', '0.00000000', '7.00000000', '+', 'NEZHHEURZAU3', 'Level 2 Referral Commission from shashi210', NULL, '2021-07-22 08:53:23', '2021-07-22 08:53:23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ref_id` int(11) NOT NULL DEFAULT 0,
  `pos_id` int(11) NOT NULL DEFAULT 0,
  `position` int(11) NOT NULL DEFAULT 0,
  `plan_id` int(11) NOT NULL DEFAULT 0,
  `dpl` int(11) NOT NULL DEFAULT 0 COMMENT 'daily_ad_limit',
  `firstname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `total_ref_com` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `total_binary_com` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `total_invest` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(91) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'contains full address',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0: banned, 1: active',
  `ev` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: email unverified, 1: email verified',
  `sv` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: sms unverified, 1: sms verified',
  `ver_code` varchar(91) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'stores verification code',
  `ver_code_send_at` datetime DEFAULT NULL COMMENT 'verification send time',
  `ts` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: 2fa off, 1: 2fa on',
  `tv` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0: 2fa unverified, 1: 2fa verified',
  `tsc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ref_id`, `pos_id`, `position`, `plan_id`, `dpl`, `firstname`, `lastname`, `username`, `email`, `mobile`, `balance`, `total_ref_com`, `total_binary_com`, `total_invest`, `password`, `image`, `address`, `status`, `ev`, `sv`, `ver_code`, `ver_code_send_at`, `ts`, `tv`, `tsc`, `provider`, `provider_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(26, 1, 1, 2, 0, 0, 'nordk', 'org', 'admin1', 'admin999@gmail.com', '91+918302190021', '7.00000000', '0.00000000', '0.00000000', '0.00000000', '$2y$10$WN7nxtH6axO2WGFwZq6odu8P8OCitDjaj98upAKmHSz.DeUoCIkIe', NULL, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":\"India\",\"city\":\"\"}', 1, 1, 1, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '2021-07-13 07:52:07', '2021-07-22 08:53:23'),
(27, 26, 26, 2, 0, 0, 'Lokesh', 'Gurjar', 'admin12', 'subulabs@gmail.com', '9109024996672', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '$2y$10$ppR3pH1cvk/444e0OAX1jOjdmu0hNG66kwxdT1JxHpFXMaIlyHMYy', NULL, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":\"India\",\"city\":\"\"}', 1, 1, 1, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '2021-07-13 08:01:40', '2021-07-13 08:01:40'),
(28, 26, 26, 1, 0, 0, 'test', 'Admin1', 'nordk123', 'subulaabs@gmail.com', '919879889798798', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '$2y$10$DeJWKQ653VlCH75MZZNhou72giEda/9i4Ib1TnJQnGW55IUVZ3Dh2', NULL, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":\"India\",\"city\":\"\"}', 1, 1, 1, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '2021-07-13 08:17:52', '2021-07-13 08:17:52'),
(29, 26, 27, 2, 0, 0, 'Mian', 'Khan', 'mian12', 'davidluse386@gmail.com', '88098498498', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '$2y$10$T1CDTa.tzl98C.0KlTZUkuXjTZY.lq9Vo/K3PzCS/MV8JuABRD9vS', NULL, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":\"Bangladesh\",\"city\":\"\"}', 1, 1, 1, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '2021-07-13 08:30:55', '2021-07-13 08:30:55'),
(30, 26, 28, 1, 0, 0, 'shashi', 'ranjan', 'shashi210', 'ranjanthakur1996@gmail.com', '937206302534', '2.00000000', '0.00000000', '0.00000000', '700.00000000', '$2y$10$xuYSaAY3.viMDZm1YdDPLOaZQtkzEWe0XumuOG.RhkNmhrpjMV0C.', NULL, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":\"Afghanistan\",\"city\":\"\"}', 1, 1, 1, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '2021-07-21 14:02:01', '2021-07-22 08:53:23'),
(31, 30, 30, 2, 11, 0, 'himanshu', 'rahi', 'himanshu', 'test@gmail.com', '919812601824', '4800.00000000', '0.00000000', '0.00000000', '300.00000000', '$2y$10$UYpsEzmftfIeCX2qIMzYuuO7WSG0s1gyKKVtF0SKbNZ5P1WRWhSIC', NULL, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":\"India\",\"city\":\"\"}', 1, 1, 1, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '2021-07-22 07:15:33', '2021-07-22 08:53:23');

-- --------------------------------------------------------

--
-- Table structure for table `user_extras`
--

CREATE TABLE `user_extras` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `paid_left` int(10) NOT NULL DEFAULT 0,
  `paid_right` int(10) NOT NULL DEFAULT 0,
  `free_left` int(10) NOT NULL DEFAULT 0,
  `free_right` int(10) NOT NULL DEFAULT 0,
  `bv_left` decimal(16,8) NOT NULL DEFAULT 0.00000000,
  `bv_right` decimal(16,8) NOT NULL DEFAULT 0.00000000,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_extras`
--

INSERT INTO `user_extras` (`id`, `user_id`, `paid_left`, `paid_right`, `free_left`, `free_right`, `bv_left`, `bv_right`, `created_at`, `updated_at`) VALUES
(26, 26, 0, 0, 3, 2, '0.00000000', '0.00000000', '2021-07-13 07:52:07', '2021-07-22 07:15:34'),
(27, 27, 0, 0, 0, 1, '0.00000000', '0.00000000', '2021-07-13 08:01:40', '2021-07-13 08:30:56'),
(28, 28, 0, 0, 2, 0, '0.00000000', '0.00000000', '2021-07-13 08:17:52', '2021-07-22 07:15:34'),
(29, 29, 0, 0, 0, 0, '0.00000000', '0.00000000', '2021-07-13 08:30:56', '2021-07-13 08:30:56'),
(30, 30, 0, 0, 0, 1, '0.00000000', '0.00000000', '2021-07-21 14:02:01', '2021-07-22 07:15:34'),
(31, 31, 0, 0, 0, 0, '0.00000000', '0.00000000', '2021-07-22 07:15:34', '2021-07-22 07:15:34');

-- --------------------------------------------------------

--
-- Table structure for table `user_logins`
--

CREATE TABLE `user_logins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_ip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(91) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `os` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_logins`
--

INSERT INTO `user_logins` (`id`, `user_id`, `user_ip`, `location`, `browser`, `os`, `longitude`, `latitude`, `country`, `country_code`, `created_at`, `updated_at`) VALUES
(101, 26, '157.38.45.115', 'Jaipur - - India - IN ', 'Chrome', 'Windows 10', '75.7928', '26.9261', 'India', 'IN', '2021-07-13 07:52:07', '2021-07-13 07:52:07'),
(102, 27, '157.38.45.115', 'Jaipur - - India - IN ', 'Chrome', 'Windows 10', '75.7928', '26.9261', 'India', 'IN', '2021-07-13 08:01:40', '2021-07-13 08:01:40'),
(103, 26, '157.38.45.115', 'Jaipur - - India - IN ', 'Chrome', 'Windows 10', '75.7928', '26.9261', 'India', 'IN', '2021-07-13 08:06:00', '2021-07-13 08:06:00'),
(104, 28, '157.38.45.115', 'Jaipur - - India - IN ', 'Chrome', 'Windows 10', '75.7928', '26.9261', 'India', 'IN', '2021-07-13 08:17:52', '2021-07-13 08:17:52'),
(105, 29, '27.147.191.242', 'Rajshahi - - Bangladesh - BD ', 'Chrome', 'Windows 10', '88.6049', '24.3644', 'Bangladesh', 'BD', '2021-07-13 08:30:56', '2021-07-13 08:30:56'),
(106, 30, '::1', ' - -  -  ', 'Chrome', 'Windows 10', '', '', '', '', '2021-07-21 14:02:01', '2021-07-21 14:02:01'),
(107, 30, '::1', ' - -  -  ', 'Chrome', 'Windows 10', '', '', '', '', '2021-07-22 03:25:26', '2021-07-22 03:25:26'),
(108, 30, '::1', ' - -  -  ', 'Chrome', 'Windows 10', '', '', '', '', '2021-07-22 03:43:22', '2021-07-22 03:43:22'),
(109, 30, '::1', ' - -  -  ', 'Chrome', 'Windows 10', '', '', '', '', '2021-07-22 05:10:19', '2021-07-22 05:10:19'),
(110, 30, '::1', ' - -  -  ', 'Chrome', 'Windows 10', '', '', '', '', '2021-07-22 06:55:56', '2021-07-22 06:55:56'),
(111, 31, '::1', ' - -  -  ', 'Chrome', 'Windows 10', '', '', '', '', '2021-07-22 07:15:33', '2021-07-22 07:15:33'),
(112, 31, '::1', ' - -  -  ', 'Chrome', 'Windows 10', '', '', '', '', '2021-07-22 07:16:03', '2021-07-22 07:16:03');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawals`
--

CREATE TABLE `withdrawals` (
  `id` int(10) UNSIGNED NOT NULL,
  `method_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `amount` decimal(18,8) NOT NULL,
  `currency` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` decimal(18,8) NOT NULL,
  `charge` decimal(18,8) NOT NULL,
  `trx` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `final_amount` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `after_charge` decimal(18,8) NOT NULL,
  `withdraw_information` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=>success, 2=>pending, 3=>cancel,  ',
  `admin_feedback` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_methods`
--

CREATE TABLE `withdraw_methods` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_limit` decimal(18,8) DEFAULT NULL,
  `max_limit` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `delay` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fixed_charge` decimal(18,8) DEFAULT NULL,
  `rate` decimal(18,8) DEFAULT NULL,
  `percent_charge` decimal(5,2) DEFAULT NULL,
  `currency` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_data` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdraw_methods`
--

INSERT INTO `withdraw_methods` (`id`, `name`, `image`, `min_limit`, `max_limit`, `delay`, `fixed_charge`, `rate`, `percent_charge`, `currency`, `user_data`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Prefect Money', '60eb4d36e73fe1626033462.png', '20.00000000', '100.00000000', '24 Hours', '0.00000000', '1.00000000', '10.00', 'Usd', '{\"pm_address\":{\"field_name\":\"pm_address\",\"field_level\":\"PM Address\",\"type\":\"text\",\"validation\":\"required\"}}', 'add Your PM address', 1, '2021-07-10 13:35:28', '2021-07-11 14:27:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_active`
--
ALTER TABLE `business_active`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_history`
--
ALTER TABLE `business_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`,`user_id`,`rank`,`reward`,`salery`,`month`,`dates`,`created_at`,`updated_at`);

--
-- Indexes for table `business_volume`
--
ALTER TABLE `business_volume`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bv_logs`
--
ALTER TABLE `bv_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commission_logs`
--
ALTER TABLE `commission_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_sms_templates`
--
ALTER TABLE `email_sms_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `extensions`
--
ALTER TABLE `extensions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `frontends`
--
ALTER TABLE `frontends`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gateways`
--
ALTER TABLE `gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gateway_currencies`
--
ALTER TABLE `gateway_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ptcs`
--
ALTER TABLE `ptcs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ptc_views`
--
ALTER TABLE `ptc_views`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referrals`
--
ALTER TABLE `referrals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_attachments`
--
ALTER TABLE `support_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_messages`
--
ALTER TABLE `support_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_tickets`
--
ALTER TABLE `support_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_extras`
--
ALTER TABLE `user_extras`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_logins`
--
ALTER TABLE `user_logins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw_methods`
--
ALTER TABLE `withdraw_methods`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `business_active`
--
ALTER TABLE `business_active`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `business_history`
--
ALTER TABLE `business_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `business_volume`
--
ALTER TABLE `business_volume`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `bv_logs`
--
ALTER TABLE `bv_logs`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `commission_logs`
--
ALTER TABLE `commission_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_sms_templates`
--
ALTER TABLE `email_sms_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;

--
-- AUTO_INCREMENT for table `extensions`
--
ALTER TABLE `extensions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `frontends`
--
ALTER TABLE `frontends`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `gateways`
--
ALTER TABLE `gateways`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `gateway_currencies`
--
ALTER TABLE `gateway_currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `ptcs`
--
ALTER TABLE `ptcs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `ptc_views`
--
ALTER TABLE `ptc_views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `referrals`
--
ALTER TABLE `referrals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_attachments`
--
ALTER TABLE `support_attachments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_messages`
--
ALTER TABLE `support_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `support_tickets`
--
ALTER TABLE `support_tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `user_extras`
--
ALTER TABLE `user_extras`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `user_logins`
--
ALTER TABLE `user_logins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `withdraw_methods`
--
ALTER TABLE `withdraw_methods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
