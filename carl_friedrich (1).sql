-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 11, 2018 at 11:37 AM
-- Server version: 5.6.34-log
-- PHP Version: 7.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carl_friedrich`
--

-- --------------------------------------------------------

--
-- Table structure for table `cf_commentmeta`
--

CREATE TABLE `cf_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cf_comments`
--

CREATE TABLE `cf_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `cf_comments`
--

INSERT INTO `cf_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-09-06 16:20:13', '2018-09-06 16:20:13', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cf_links`
--

CREATE TABLE `cf_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cf_options`
--

CREATE TABLE `cf_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `cf_options`
--

INSERT INTO `cf_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/carl-friedrich', 'yes'),
(2, 'home', 'http://localhost/carl-friedrich', 'yes'),
(3, 'blogname', 'Carl &amp; Friedrich Properties', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'anishakarjun@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:110:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:13:\"properties/?$\";s:28:\"index.php?post_type=property\";s:43:\"properties/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=property&feed=$matches[1]\";s:38:\"properties/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=property&feed=$matches[1]\";s:30:\"properties/page/([0-9]{1,})/?$\";s:46:\"index.php?post_type=property&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:38:\"properties/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:48:\"properties/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:68:\"properties/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"properties/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"properties/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:44:\"properties/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\"properties/([^/]+)/embed/?$\";s:41:\"index.php?property=$matches[1]&embed=true\";s:31:\"properties/([^/]+)/trackback/?$\";s:35:\"index.php?property=$matches[1]&tb=1\";s:51:\"properties/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?property=$matches[1]&feed=$matches[2]\";s:46:\"properties/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?property=$matches[1]&feed=$matches[2]\";s:39:\"properties/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?property=$matches[1]&paged=$matches[2]\";s:46:\"properties/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?property=$matches[1]&cpage=$matches[2]\";s:35:\"properties/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?property=$matches[1]&page=$matches[2]\";s:27:\"properties/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"properties/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"properties/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"properties/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"properties/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"properties/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=5&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:37:\"acf-options-page/acf-options-page.php\";i:1;s:29:\"acf-repeater/acf-repeater.php\";i:2;s:30:\"advanced-custom-fields/acf.php\";i:4;s:36:\"contact-form-7/wp-contact-form-7.php\";i:5;s:25:\"gtranslate/gtranslate.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'carl-friedrich', 'yes'),
(41, 'stylesheet', 'carl-friedrich', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '5', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'cf_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:7:\"sidebar\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'cron', 'a:6:{i:1536657616;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1536682816;a:2:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1536682817;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1536682998;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1536684770;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(112, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1536251071;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(116, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.8-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.8-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1536649107;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}', 'no'),
(120, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1536649125;s:7:\"checked\";a:2:{s:14:\"carl-friedrich\";s:3:\"1.0\";s:15:\"twentyseventeen\";s:3:\"1.7\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(122, 'can_compress_scripts', '0', 'no'),
(125, 'current_theme', 'Carl &amp; Friedrich', 'yes'),
(126, 'theme_mods_carl-friedrich', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(127, 'theme_switched', '', 'yes'),
(128, '_transient_timeout_plugin_slugs', '1536688117', 'no'),
(129, '_transient_plugin_slugs', 'a:8:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:37:\"acf-options-page/acf-options-page.php\";i:2;s:29:\"acf-repeater/acf-repeater.php\";i:3;s:19:\"akismet/akismet.php\";i:4;s:61:\"bootstrap-for-contact-form-7/bootstrap-for-contact-form-7.php\";i:5;s:36:\"contact-form-7/wp-contact-form-7.php\";i:6;s:25:\"gtranslate/gtranslate.php\";i:7;s:9:\"hello.php\";}', 'no'),
(130, 'recently_activated', 'a:1:{s:61:\"bootstrap-for-contact-form-7/bootstrap-for-contact-form-7.php\";i:1536601716;}', 'yes'),
(137, '_site_transient_timeout_browser_641c1b809b4a663858ef5499c3de0aaf', '1536899475', 'no'),
(138, '_site_transient_browser_641c1b809b4a663858ef5499c3de0aaf', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"68.0.3440.106\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(155, 'acf_version', '4.4.12', 'yes'),
(158, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.0.4\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1536294866;s:7:\"version\";s:5:\"5.0.4\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(161, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(191, 'options_logo', '42', 'no'),
(192, '_options_logo', 'field_5b93fe1e8bd9b', 'no'),
(193, 'options_address', 'Nové Město, 110 00 Praha 1 Česká republika', 'no'),
(194, '_options_address', 'field_5b93fe64084ec', 'no'),
(195, 'options_email', 'info@carl-friedrich.cz', 'no'),
(196, '_options_email', 'field_5b93fea6084ed', 'no'),
(197, 'options_phone', '+420 223 234 984', 'no'),
(198, '_options_phone', 'field_5b93febe084ee', 'no'),
(199, 'options_map_url', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2762.782705073144!2d21.316692815293237!3d46.17498109375506!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x474598460aff5f21%3A0xabf855e13f0aa846!2sAurel+Vlaicu+University!5e0!3m2!1sen!2sin!4v1531823614575', 'no'),
(200, '_options_map_url', 'field_5b93fed9084ef', 'no'),
(201, 'options_linkedin', 'http://facebook.com', 'no'),
(202, '_options_linkedin', 'field_5b93ff297c74e', 'no'),
(203, 'options_facebook', 'http://facebook.com', 'no'),
(204, '_options_facebook', 'field_5b93ff457c74f', 'no'),
(205, 'options_youtube', 'http://facebook.com', 'no'),
(206, '_options_youtube', 'field_5b93ff557c750', 'no'),
(212, 'category_children', 'a:0:{}', 'yes'),
(244, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1536650044;s:7:\"checked\";a:7:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"4.4.12\";s:37:\"acf-options-page/acf-options-page.php\";s:5:\"1.2.0\";s:29:\"acf-repeater/acf-repeater.php\";s:5:\"1.1.1\";s:19:\"akismet/akismet.php\";s:5:\"4.0.8\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.0.4\";s:25:\"gtranslate/gtranslate.php\";s:6:\"2.8.42\";s:9:\"hello.php\";s:3:\"1.7\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"4.4.12\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.12.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.0.4\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.0.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:25:\"gtranslate/gtranslate.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:24:\"w.org/plugins/gtranslate\";s:4:\"slug\";s:10:\"gtranslate\";s:6:\"plugin\";s:25:\"gtranslate/gtranslate.php\";s:11:\"new_version\";s:6:\"2.8.42\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/gtranslate/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/gtranslate.2.8.42.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/gtranslate/assets/icon-256x256.png?rev=1625219\";s:2:\"1x\";s:63:\"https://ps.w.org/gtranslate/assets/icon-128x128.png?rev=1579941\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:64:\"https://ps.w.org/gtranslate/assets/banner-772x250.png?rev=759080\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(245, 'GTranslate', 'a:21:{s:11:\"pro_version\";s:0:\"\";s:18:\"enterprise_version\";s:0:\"\";s:15:\"url_translation\";s:0:\"\";s:17:\"add_hreflang_tags\";s:0:\"\";s:10:\"new_window\";s:0:\"\";s:12:\"show_in_menu\";s:0:\"\";s:26:\"floating_language_selector\";s:2:\"no\";s:21:\"native_language_names\";s:0:\"\";s:9:\"analytics\";s:0:\"\";s:23:\"detect_browser_language\";s:0:\"\";s:12:\"add_new_line\";i:1;s:16:\"default_language\";s:2:\"en\";s:18:\"translation_method\";s:5:\"onfly\";s:11:\"widget_look\";s:10:\"lang_codes\";s:9:\"flag_size\";i:24;s:11:\"widget_code\";s:2220:\"<!-- GTranslate: https://gtranslate.io/ -->\r\n<a href=\"#\" onclick=\"doGTranslate(\'en|en\');return false;\" title=\"English\" class=\"glink nturl notranslate english\">ENG</a>\r\n<a href=\"#\" onclick=\"doGTranslate(\'en|zh-CN\');return false;\" title=\"Chinese (Simplified)\" class=\"glink nturl notranslate chinese\">CZ</a>  <style type=\"text/css\">\r\n#goog-gt-tt {display:none !important;}\r\n.goog-te-banner-frame {display:none !important;}\r\n.goog-te-menu-value:hover {text-decoration:none !important;}\r\n.goog-text-highlight {background-color:transparent !important;box-shadow:none !important;}\r\nbody {top:0 !important;}\r\n#google_translate_element2 {display:none!important;}\r\n</style>\r\n\r\n<div id=\"google_translate_element2\"></div>\r\n<script type=\"text/javascript\">\r\nfunction googleTranslateElementInit2() {new google.translate.TranslateElement({pageLanguage: \'en\',autoDisplay: false}, \'google_translate_element2\');}\r\n</script><script type=\"text/javascript\" src=\"//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit2\"></script>\r\n\r\n\r\n<script type=\"text/javascript\">\r\nfunction GTranslateGetCurrentLang() {var keyValue = document[\'cookie\'].match(\'(^|;) ?googtrans=([^;]*)(;|$)\');return keyValue ? keyValue[2].split(\'/\')[2] : null;}\r\nfunction GTranslateFireEvent(element,event){try{if(document.createEventObject){var evt=document.createEventObject();element.fireEvent(\'on\'+event,evt)}else{var evt=document.createEvent(\'HTMLEvents\');evt.initEvent(event,true,true);element.dispatchEvent(evt)}}catch(e){}}\r\nfunction doGTranslate(lang_pair){if(lang_pair.value)lang_pair=lang_pair.value;if(lang_pair==\'\')return;var lang=lang_pair.split(\'|\')[1];if(GTranslateGetCurrentLang() == null && lang == lang_pair.split(\'|\')[0])return;var teCombo;var sel=document.getElementsByTagName(\'select\');for(var i=0;i<sel.length;i++)if(/goog-te-combo/.test(sel[i].className)){teCombo=sel[i];break;}if(document.getElementById(\'google_translate_element2\')==null||document.getElementById(\'google_translate_element2\').innerHTML.length==0||teCombo.length==0||teCombo.innerHTML.length==0){setTimeout(function(){doGTranslate(lang_pair)},500)}else{teCombo.value=lang;GTranslateFireEvent(teCombo,\'change\');GTranslateFireEvent(teCombo,\'change\')}}\r\n</script>\r\n\";s:10:\"incl_langs\";a:2:{i:0;s:5:\"zh-CN\";i:1;s:2:\"en\";}s:11:\"fincl_langs\";a:10:{i:0;s:2:\"ar\";i:1;s:5:\"zh-CN\";i:2;s:2:\"nl\";i:3;s:2:\"en\";i:4;s:2:\"fr\";i:5;s:2:\"de\";i:6;s:2:\"it\";i:7;s:2:\"pt\";i:8;s:2:\"ru\";i:9;s:2:\"es\";}s:9:\"alt_flags\";a:0:{}s:14:\"language_codes\";s:320:\"af,sq,am,ar,hy,az,eu,be,bn,bs,bg,ca,ceb,ny,zh-CN,zh-TW,co,hr,cs,da,nl,en,eo,et,tl,fi,fr,fy,gl,ka,de,el,gu,ht,ha,haw,iw,hi,hmn,hu,is,ig,id,ga,it,ja,jw,kn,kk,km,ko,ku,ky,lo,la,lv,lt,lb,mk,mg,ms,ml,mt,mi,mr,mn,my,ne,no,ps,fa,pl,pt,pa,ro,ru,sm,gd,sr,st,sn,sd,si,sk,sl,so,es,su,sw,sv,tg,ta,te,th,tr,uk,ur,uz,vi,cy,xh,yi,yo,zu\";s:15:\"language_codes2\";s:320:\"af,sq,am,ar,hy,az,eu,be,bn,bs,bg,ca,ceb,ny,zh-CN,zh-TW,co,hr,cs,da,nl,en,eo,et,tl,fi,fr,fy,gl,ka,de,el,gu,ht,ha,haw,iw,hi,hmn,hu,is,ig,id,ga,it,ja,jw,kn,kk,km,ko,ku,ky,lo,la,lv,lt,lb,mk,mg,ms,ml,mt,mi,mr,mn,my,ne,no,ps,fa,pl,pt,pa,ro,ru,sm,gd,sr,st,sn,sd,si,sk,sl,so,es,su,sw,sv,tg,ta,te,th,tr,uk,ur,uz,vi,cy,xh,yi,yo,zu\";}', 'yes'),
(246, 'widget_gtranslate', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(247, 'gtranslate_admin_notice', 'a:2:{s:15:\"two_week_review\";a:2:{s:5:\"start\";s:9:\"9/15/2018\";s:3:\"int\";i:5;}s:12:\"upgrade_tips\";a:2:{s:5:\"start\";s:9:\"9/12/2018\";s:3:\"int\";i:2;}}', 'yes'),
(253, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1536642759', 'no'),
(254, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 6: Could not resolve host: wordpress.org</p></div><div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 6: Could not resolve host: planet.wordpress.org</p></div>', 'no'),
(256, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1536612147', 'no'),
(257, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4504;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:2980;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2585;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2450;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1883;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1679;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1672;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1459;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1404;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1401;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1396;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1334;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1283;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1241;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1113;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1072;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1041;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1038;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:921;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:894;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:834;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:813;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:807;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:734;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:704;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:696;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:689;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:687;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:678;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:667;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:658;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:658;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:647;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:644;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:618;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:616;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:614;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:607;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:600;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:598;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:576;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:553;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:546;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:542;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:532;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:526;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:516;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:516;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:515;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:510;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:499;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:495;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:493;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:487;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:481;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:480;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:460;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:458;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:455;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:444;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:442;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:437;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:422;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:421;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:418;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:417;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:416;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:414;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:409;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:389;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:388;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:374;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:373;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:371;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:366;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:364;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:361;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:360;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:354;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:348;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:347;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:347;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:345;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:339;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:338;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:334;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:329;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:328;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:312;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:309;}s:6:\"simple\";a:3:{s:4:\"name\";s:6:\"simple\";s:4:\"slug\";s:6:\"simple\";s:5:\"count\";i:309;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:306;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:304;}s:3:\"tag\";a:3:{s:4:\"name\";s:3:\"tag\";s:4:\"slug\";s:3:\"tag\";s:5:\"count\";i:303;}s:7:\"adsense\";a:3:{s:4:\"name\";s:7:\"adsense\";s:4:\"slug\";s:7:\"adsense\";s:5:\"count\";i:303;}s:4:\"html\";a:3:{s:4:\"name\";s:4:\"html\";s:4:\"slug\";s:4:\"html\";s:5:\"count\";i:302;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:301;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:300;}s:6:\"author\";a:3:{s:4:\"name\";s:6:\"author\";s:4:\"slug\";s:6:\"author\";s:5:\"count\";i:298;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:294;}}', 'no'),
(259, 'auto_updater.lock', '1536649118', 'no'),
(260, '_site_transient_timeout_theme_roots', '1536650924', 'no'),
(261, '_site_transient_theme_roots', 'a:2:{s:14:\"carl-friedrich\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `cf_postmeta`
--

CREATE TABLE `cf_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `cf_postmeta`
--

INSERT INTO `cf_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_last', '1'),
(4, 5, '_edit_lock', '1536600837:1'),
(5, 5, '_wp_page_template', 'page-home.php'),
(6, 7, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]'),
(7, 7, '_mail', 'a:8:{s:7:\"subject\";s:48:\"Carl &amp; Friedrich Properties \"[your-subject]\"\";s:6:\"sender\";s:36:\"[your-name] <anishakarjun@gmail.com>\";s:4:\"body\";s:201:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Carl &amp; Friedrich Properties (http://localhost/carl-friedrich)\";s:9:\"recipient\";s:22:\"anishakarjun@gmail.com\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(8, 7, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:48:\"Carl &amp; Friedrich Properties \"[your-subject]\"\";s:6:\"sender\";s:56:\"Carl &amp; Friedrich Properties <anishakarjun@gmail.com>\";s:4:\"body\";s:143:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Carl &amp; Friedrich Properties (http://localhost/carl-friedrich)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:32:\"Reply-To: anishakarjun@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(9, 7, '_messages', 'a:8:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";}'),
(10, 7, '_additional_settings', NULL),
(11, 7, '_locale', 'en_US'),
(12, 2, '_wp_trash_meta_status', 'publish'),
(13, 2, '_wp_trash_meta_time', '1536334498'),
(14, 2, '_wp_desired_post_slug', 'sample-page'),
(15, 9, '_edit_last', '1'),
(16, 9, '_wp_page_template', 'about-us.php'),
(17, 9, '_edit_lock', '1536341391:1'),
(18, 11, '_edit_last', '1'),
(19, 11, '_edit_lock', '1536341773:1'),
(20, 11, '_wp_page_template', 'about-cr.php'),
(21, 13, '_edit_last', '1'),
(22, 13, '_wp_page_template', 'how-to-buy.php'),
(23, 13, '_edit_lock', '1536482040:1'),
(24, 16, '_edit_last', '1'),
(25, 16, '_wp_page_template', 'contact.php'),
(26, 16, '_edit_lock', '1536343717:1'),
(45, 20, '_menu_item_type', 'post_type'),
(46, 20, '_menu_item_menu_item_parent', '0'),
(47, 20, '_menu_item_object_id', '11'),
(48, 20, '_menu_item_object', 'page'),
(49, 20, '_menu_item_target', ''),
(50, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(51, 20, '_menu_item_xfn', ''),
(52, 20, '_menu_item_url', ''),
(54, 21, '_menu_item_type', 'post_type'),
(55, 21, '_menu_item_menu_item_parent', '0'),
(56, 21, '_menu_item_object_id', '9'),
(57, 21, '_menu_item_object', 'page'),
(58, 21, '_menu_item_target', ''),
(59, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(60, 21, '_menu_item_xfn', ''),
(61, 21, '_menu_item_url', ''),
(63, 22, '_menu_item_type', 'post_type'),
(64, 22, '_menu_item_menu_item_parent', '0'),
(65, 22, '_menu_item_object_id', '16'),
(66, 22, '_menu_item_object', 'page'),
(67, 22, '_menu_item_target', ''),
(68, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(69, 22, '_menu_item_xfn', ''),
(70, 22, '_menu_item_url', ''),
(72, 23, '_menu_item_type', 'post_type'),
(73, 23, '_menu_item_menu_item_parent', '0'),
(74, 23, '_menu_item_object_id', '13'),
(75, 23, '_menu_item_object', 'page'),
(76, 23, '_menu_item_target', ''),
(77, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(78, 23, '_menu_item_xfn', ''),
(79, 23, '_menu_item_url', ''),
(81, 24, '_menu_item_type', 'custom'),
(82, 24, '_menu_item_menu_item_parent', '0'),
(83, 24, '_menu_item_object_id', '24'),
(84, 24, '_menu_item_object', 'custom'),
(85, 24, '_menu_item_target', ''),
(86, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(87, 24, '_menu_item_xfn', ''),
(88, 24, '_menu_item_url', 'http://localhost/carl-friedrich/properties/'),
(90, 25, '_edit_last', '1'),
(91, 25, '_wp_page_template', 'default'),
(92, 25, '_edit_lock', '1536335363:1'),
(93, 27, '_edit_last', '1'),
(94, 27, '_wp_page_template', 'default'),
(95, 27, '_edit_lock', '1536335418:1'),
(96, 32, '_form', '<span class=\"contact100-form-title\">\n  Send Us A Message\n</span>\n\n  <label class=\"label-input100\" for=\"first-name\">Tell us your name *</label>\n  <div class=\"wrap-input100 rs1-wrap-input100 validate-input\" data-validate=\"Type first name\">\n   [text* first-name id:first-name class:input100 placeholder \"First Name\"]\n    <span class=\"focus-input100\"></span>\n  </div>\n  <div class=\"wrap-input100 rs2-wrap-input100 validate-input\" data-validate=\"Type last name\">\n    [text last-name id:last-name class:input100 placeholder \"Last Name\"]\n      <span class=\"focus-input100\"></span>\n  </div>\n\n  <label class=\"label-input100\" for=\"email\">Enter your email *</label>\n    <div class=\"wrap-input100 validate-input\" data-validate = \"Valid email is required: ex@abc.xyz\">\n	[email* email id:email class:input100 placeholder \"Eg. example@email.com\"]\n	<span class=\"focus-input100\"></span>\n    </div>\n\n   <label class=\"label-input100\" for=\"phone\">Enter phone number</label>\n   <div class=\"wrap-input100\">\n     [tel phone id:phone class:input100 placeholder \"Phone Number\"]\n     <span class=\"focus-input100\"></span>\n   </div>\n				\n   <label class=\"label-input100\" for=\"phone\">Subject</label>\n   <div class=\"wrap-input100\">\n[select* subject id:subject class:input100 \"I want to buy an existing property\" \"I want you to look for a property for me\" \"Other requirements\"]\n	<span class=\"focus-input100\"></span>\n   </div>\n\n   <label class=\"label-input100\" for=\"message\">Message *</label>\n   <div class=\"wrap-input100 validate-input\" data-validate = \"Message is required\">\n[textarea* message id:message class:input100 placeholder \"Write us a message\"]\n	\n	<span class=\"focus-input100\"></span>\n    </div>\n\n   <div class=\"container-contact100-form-btn\">\n[submit class:contact100-form-btn \"Send Message\"]\n	\n   </div>\n   <div class=\"container-contact100-form-btn\">\n      <span style=\"color:#fb4c42; font-weight:bold\" id=\"error\"></span> \n          <span style=\"color:#22a9ce; font-weight:bold\" id=\"success\"></span> \n    </div>'),
(97, 32, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:44:\"Carl & Friedrich Properties \"[your-subject]\"\";s:6:\"sender\";s:36:\"[your-name] <anishakarjun@gmail.com>\";s:9:\"recipient\";s:22:\"anishakarjun@gmail.com\";s:4:\"body\";s:187:\"From: [first-name] <[email]>\nSubject: [subject]\n\nMessage Body:\n[message]\n\n-- \nThis e-mail was sent from a contact form on Carl &amp; Friedrich Properties (http://localhost/carl-friedrich)\";s:18:\"additional_headers\";s:17:\"Reply-To: [email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(98, 32, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:44:\"Carl & Friedrich Properties \"[your-subject]\"\";s:6:\"sender\";s:52:\"Carl & Friedrich Properties <anishakarjun@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:143:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Carl &amp; Friedrich Properties (http://localhost/carl-friedrich)\";s:18:\"additional_headers\";s:32:\"Reply-To: anishakarjun@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(99, 32, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(100, 32, '_additional_settings', ''),
(101, 32, '_locale', 'en_US'),
(102, 38, '_edit_last', '1'),
(103, 38, 'field_5b93fe1e8bd9b', 'a:11:{s:3:\"key\";s:19:\"field_5b93fe1e8bd9b\";s:5:\"label\";s:4:\"Logo\";s:4:\"name\";s:4:\"logo\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:11:\"save_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(104, 38, 'rule', 'a:5:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:23:\"acf-options-logo-images\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(105, 38, 'position', 'normal'),
(106, 38, 'layout', 'default'),
(107, 38, 'hide_on_screen', ''),
(108, 38, '_edit_lock', '1536425416:1'),
(109, 39, '_edit_last', '1'),
(110, 39, 'field_5b93fe64084ec', 'a:13:{s:3:\"key\";s:19:\"field_5b93fe64084ec\";s:5:\"label\";s:7:\"Address\";s:4:\"name\";s:7:\"address\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:1:\"4\";s:10:\"formatting\";s:2:\"br\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(111, 39, 'field_5b93fea6084ed', 'a:12:{s:3:\"key\";s:19:\"field_5b93fea6084ed\";s:5:\"label\";s:5:\"Email\";s:4:\"name\";s:5:\"email\";s:4:\"type\";s:5:\"email\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(112, 39, 'field_5b93febe084ee', 'a:14:{s:3:\"key\";s:19:\"field_5b93febe084ee\";s:5:\"label\";s:5:\"Phone\";s:4:\"name\";s:5:\"phone\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(113, 39, 'field_5b93fed9084ef', 'a:13:{s:3:\"key\";s:19:\"field_5b93fed9084ef\";s:5:\"label\";s:7:\"Map Url\";s:4:\"name\";s:7:\"map_url\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:1:\"3\";s:10:\"formatting\";s:4:\"none\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}'),
(114, 39, 'rule', 'a:5:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:27:\"acf-options-contact-details\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(115, 39, 'position', 'normal'),
(116, 39, 'layout', 'default'),
(117, 39, 'hide_on_screen', ''),
(118, 39, '_edit_lock', '1536429507:1'),
(119, 40, '_edit_last', '1'),
(120, 40, 'field_5b93ff297c74e', 'a:14:{s:3:\"key\";s:19:\"field_5b93ff297c74e\";s:5:\"label\";s:8:\"LinkedIn\";s:4:\"name\";s:8:\"linkedin\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(121, 40, 'field_5b93ff457c74f', 'a:14:{s:3:\"key\";s:19:\"field_5b93ff457c74f\";s:5:\"label\";s:8:\"Facebook\";s:4:\"name\";s:8:\"facebook\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(122, 40, 'field_5b93ff557c750', 'a:14:{s:3:\"key\";s:19:\"field_5b93ff557c750\";s:5:\"label\";s:7:\"Youtube\";s:4:\"name\";s:7:\"youtube\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(123, 40, 'rule', 'a:5:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:30:\"acf-options-social-media-links\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(124, 40, 'position', 'normal'),
(125, 40, 'layout', 'default'),
(126, 40, 'hide_on_screen', ''),
(127, 40, '_edit_lock', '1536425711:1'),
(130, 42, '_wp_attached_file', '2018/09/logo.png'),
(131, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:545;s:6:\"height\";i:278;s:4:\"file\";s:16:\"2018/09/logo.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"logo-300x153.png\";s:5:\"width\";i:300;s:6:\"height\";i:153;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(132, 43, '_edit_last', '1'),
(133, 43, 'field_5b940e5b301bb', 'a:13:{s:3:\"key\";s:19:\"field_5b940e5b301bb\";s:5:\"label\";s:16:\"About Us Section\";s:4:\"name\";s:16:\"about_us_section\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:10:\"sub_fields\";a:2:{i:0;a:15:{s:3:\"key\";s:19:\"field_5b940e72301bc\";s:5:\"label\";s:5:\"Title\";s:4:\"name\";s:5:\"title\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:12:\"column_width\";s:0:\"\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}i:1;a:14:{s:3:\"key\";s:19:\"field_5b940e8b301bd\";s:5:\"label\";s:11:\"Description\";s:4:\"name\";s:11:\"description\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:12:\"column_width\";s:0:\"\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}}s:7:\"row_min\";s:1:\"1\";s:9:\"row_limit\";s:1:\"1\";s:6:\"layout\";s:3:\"row\";s:12:\"button_label\";s:7:\"Add Row\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(134, 43, 'field_5b940edb301be', 'a:13:{s:3:\"key\";s:19:\"field_5b940edb301be\";s:5:\"label\";s:19:\"General Description\";s:4:\"name\";s:19:\"general_description\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:1:\"4\";s:10:\"formatting\";s:2:\"br\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}'),
(136, 43, 'position', 'normal'),
(137, 43, 'layout', 'default'),
(138, 43, 'hide_on_screen', 'a:1:{i:0;s:11:\"the_content\";}'),
(139, 43, '_edit_lock', '1536478706:1'),
(140, 43, 'field_5b940f9c72229', 'a:13:{s:3:\"key\";s:19:\"field_5b940f9c72229\";s:5:\"label\";s:20:\"Main Property Slider\";s:4:\"name\";s:20:\"main_property_slider\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:10:\"sub_fields\";a:3:{i:0;a:14:{s:3:\"key\";s:19:\"field_5b940fc87222a\";s:5:\"label\";s:11:\"Description\";s:4:\"name\";s:11:\"description\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:12:\"column_width\";s:0:\"\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:1:\"4\";s:10:\"formatting\";s:4:\"html\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}i:1;a:14:{s:3:\"key\";s:19:\"field_5b94104d7222b\";s:5:\"label\";s:20:\"Property description\";s:4:\"name\";s:20:\"property_description\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:12:\"column_width\";s:0:\"\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:1:\"3\";s:10:\"formatting\";s:4:\"html\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}i:2;a:12:{s:3:\"key\";s:19:\"field_5b9410a07222d\";s:5:\"label\";s:12:\"Property Url\";s:4:\"name\";s:12:\"property_url\";s:4:\"type\";s:9:\"page_link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:12:\"column_width\";s:0:\"\";s:9:\"post_type\";a:1:{i:0;s:3:\"all\";}s:10:\"allow_null\";s:1:\"0\";s:8:\"multiple\";s:1:\"0\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}}s:7:\"row_min\";s:1:\"2\";s:9:\"row_limit\";s:1:\"4\";s:6:\"layout\";s:3:\"row\";s:12:\"button_label\";s:12:\"Add Property\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(141, 43, 'field_5b9411057222e', 'a:13:{s:3:\"key\";s:19:\"field_5b9411057222e\";s:5:\"label\";s:17:\"Property Carousel\";s:4:\"name\";s:17:\"property_carousel\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:10:\"sub_fields\";a:3:{i:0;a:15:{s:3:\"key\";s:19:\"field_5b9411327222f\";s:5:\"label\";s:14:\"Property Title\";s:4:\"name\";s:14:\"property_title\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:12:\"column_width\";s:0:\"\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}i:1;a:12:{s:3:\"key\";s:19:\"field_5b94115872230\";s:5:\"label\";s:14:\"Property Image\";s:4:\"name\";s:14:\"property_image\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:12:\"column_width\";s:0:\"\";s:11:\"save_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}i:2;a:12:{s:3:\"key\";s:19:\"field_5b94117d72231\";s:5:\"label\";s:12:\"Property Url\";s:4:\"name\";s:12:\"property_url\";s:4:\"type\";s:9:\"page_link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:12:\"column_width\";s:0:\"\";s:9:\"post_type\";a:1:{i:0;s:3:\"all\";}s:10:\"allow_null\";s:1:\"0\";s:8:\"multiple\";s:1:\"0\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}}s:7:\"row_min\";s:1:\"3\";s:9:\"row_limit\";s:2:\"10\";s:6:\"layout\";s:3:\"row\";s:12:\"button_label\";s:7:\"Add Row\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(143, 44, '_edit_last', '1'),
(144, 44, 'field_5b9412325ebfe', 'a:13:{s:3:\"key\";s:19:\"field_5b9412325ebfe\";s:5:\"label\";s:10:\"How to buy\";s:4:\"name\";s:10:\"how_to_buy\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:10:\"sub_fields\";a:4:{i:0;a:15:{s:3:\"key\";s:19:\"field_5b94124a5ebff\";s:5:\"label\";s:5:\"Title\";s:4:\"name\";s:5:\"title\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:12:\"column_width\";s:0:\"\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}i:1;a:12:{s:3:\"key\";s:19:\"field_5b94126a5ec00\";s:5:\"label\";s:11:\"Description\";s:4:\"name\";s:11:\"description\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:12:\"column_width\";s:0:\"\";s:13:\"default_value\";s:0:\"\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";s:3:\"yes\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}i:2;a:12:{s:3:\"key\";s:19:\"field_5b94129c5ec01\";s:5:\"label\";s:5:\"Image\";s:4:\"name\";s:5:\"image\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:12:\"column_width\";s:0:\"\";s:11:\"save_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}i:3;a:11:{s:3:\"key\";s:19:\"field_5b9412b55ec02\";s:5:\"label\";s:8:\"Broucher\";s:4:\"name\";s:8:\"broucher\";s:4:\"type\";s:4:\"file\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:12:\"column_width\";s:0:\"\";s:11:\"save_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}}s:7:\"row_min\";s:1:\"0\";s:9:\"row_limit\";s:2:\"35\";s:6:\"layout\";s:3:\"row\";s:12:\"button_label\";s:7:\"Add Row\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(145, 44, 'rule', 'a:5:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:14:\"how-to-buy.php\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(146, 44, 'position', 'normal'),
(147, 44, 'layout', 'default'),
(148, 44, 'hide_on_screen', 'a:1:{i:0;s:11:\"the_content\";}'),
(149, 44, '_edit_lock', '1536481403:1'),
(151, 45, '_wp_attached_file', '2018/09/h1.jpg'),
(152, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1904;s:6:\"height\";i:1058;s:4:\"file\";s:14:\"2018/09/h1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"h1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"h1-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"h1-768x427.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"h1-1024x569.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:569;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(153, 46, '_wp_attached_file', '2018/09/h2.jpg'),
(154, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1904;s:6:\"height\";i:1058;s:4:\"file\";s:14:\"2018/09/h2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"h2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"h2-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"h2-768x427.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"h2-1024x569.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:569;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(155, 47, 'main_property_slider_0_description', 'Bringing the best of Czech<br>\r\n<span>architecture and property </span><br>to foreign investors.'),
(156, 47, '_main_property_slider_0_description', 'field_5b940fc87222a'),
(157, 47, 'main_property_slider_0_property_description', '<strong>Hradcany</strong> castle is currently the jewel in our collection.\r\nA sprawling 70,000m2 complex at the heart of the capital city, Prague.'),
(158, 47, '_main_property_slider_0_property_description', 'field_5b94104d7222b'),
(159, 47, 'main_property_slider_0_property_url', '1'),
(160, 47, '_main_property_slider_0_property_url', 'field_5b9410a07222d'),
(161, 47, 'main_property_slider', '1'),
(162, 47, '_main_property_slider', 'field_5b940f9c72229'),
(163, 47, 'property_carousel_0_property_title', 'Hradcany castle'),
(164, 47, '_property_carousel_0_property_title', 'field_5b9411327222f'),
(165, 47, 'property_carousel_0_property_image', '45'),
(166, 47, '_property_carousel_0_property_image', 'field_5b94115872230'),
(167, 47, 'property_carousel_0_property_url', '1'),
(168, 47, '_property_carousel_0_property_url', 'field_5b94117d72231'),
(169, 47, 'property_carousel_1_property_title', 'Hradcany castle'),
(170, 47, '_property_carousel_1_property_title', 'field_5b9411327222f'),
(171, 47, 'property_carousel_1_property_image', '46'),
(172, 47, '_property_carousel_1_property_image', 'field_5b94115872230'),
(173, 47, 'property_carousel_1_property_url', '1'),
(174, 47, '_property_carousel_1_property_url', 'field_5b94117d72231'),
(175, 47, 'property_carousel_2_property_title', 'Hradcany castle'),
(176, 47, '_property_carousel_2_property_title', 'field_5b9411327222f'),
(177, 47, 'property_carousel_2_property_image', '46'),
(178, 47, '_property_carousel_2_property_image', 'field_5b94115872230'),
(179, 47, 'property_carousel_2_property_url', '1'),
(180, 47, '_property_carousel_2_property_url', 'field_5b94117d72231'),
(181, 47, 'property_carousel_3_property_title', 'Hradcany castle 1'),
(182, 47, '_property_carousel_3_property_title', 'field_5b9411327222f'),
(183, 47, 'property_carousel_3_property_image', '45'),
(184, 47, '_property_carousel_3_property_image', 'field_5b94115872230'),
(185, 47, 'property_carousel_3_property_url', '1'),
(186, 47, '_property_carousel_3_property_url', 'field_5b94117d72231'),
(187, 47, 'property_carousel', '4'),
(188, 47, '_property_carousel', 'field_5b9411057222e'),
(189, 47, 'about_us_section_0_title', 'About Us'),
(190, 47, '_about_us_section_0_title', 'field_5b940e72301bc'),
(191, 47, 'about_us_section_0_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
(192, 47, '_about_us_section_0_description', 'field_5b940e8b301bd'),
(193, 47, 'about_us_section', '1'),
(194, 47, '_about_us_section', 'field_5b940e5b301bb'),
(195, 47, 'general_description', '\"Lorem ipsum dolor sit amet, consectetur\r\n adipiscing elit, sed do eiusmod tempor incididunt.”'),
(196, 47, '_general_description', 'field_5b940edb301be'),
(197, 5, 'main_property_slider_0_description', 'Bringing the best of Czech<br>\r\n<span>architecture and property </span><br>to foreign investors.'),
(198, 5, '_main_property_slider_0_description', 'field_5b940fc87222a'),
(199, 5, 'main_property_slider_0_property_description', '<strong>Hradcany</strong> castle is currently the jewel in our collection.\r\nA sprawling 70,000m2 complex at the heart of the capital city, Prague.'),
(200, 5, '_main_property_slider_0_property_description', 'field_5b94104d7222b'),
(201, 5, 'main_property_slider_0_property_url', '1'),
(202, 5, '_main_property_slider_0_property_url', 'field_5b9410a07222d'),
(203, 5, 'main_property_slider', '4'),
(204, 5, '_main_property_slider', 'field_5b940f9c72229'),
(205, 5, 'property_carousel_0_property_title', 'Hradcany castle'),
(206, 5, '_property_carousel_0_property_title', 'field_5b9411327222f'),
(207, 5, 'property_carousel_0_property_image', '45'),
(208, 5, '_property_carousel_0_property_image', 'field_5b94115872230'),
(209, 5, 'property_carousel_0_property_url', '1'),
(210, 5, '_property_carousel_0_property_url', 'field_5b94117d72231'),
(211, 5, 'property_carousel_1_property_title', 'Hradcany castle'),
(212, 5, '_property_carousel_1_property_title', 'field_5b9411327222f'),
(213, 5, 'property_carousel_1_property_image', '46'),
(214, 5, '_property_carousel_1_property_image', 'field_5b94115872230'),
(215, 5, 'property_carousel_1_property_url', '1'),
(216, 5, '_property_carousel_1_property_url', 'field_5b94117d72231'),
(217, 5, 'property_carousel_2_property_title', 'Hradcany castle'),
(218, 5, '_property_carousel_2_property_title', 'field_5b9411327222f'),
(219, 5, 'property_carousel_2_property_image', '46'),
(220, 5, '_property_carousel_2_property_image', 'field_5b94115872230'),
(221, 5, 'property_carousel_2_property_url', '1'),
(222, 5, '_property_carousel_2_property_url', 'field_5b94117d72231'),
(223, 5, 'property_carousel_3_property_title', 'Hradcany castle 1'),
(224, 5, '_property_carousel_3_property_title', 'field_5b9411327222f'),
(225, 5, 'property_carousel_3_property_image', '45'),
(226, 5, '_property_carousel_3_property_image', 'field_5b94115872230'),
(227, 5, 'property_carousel_3_property_url', '1'),
(228, 5, '_property_carousel_3_property_url', 'field_5b94117d72231'),
(229, 5, 'property_carousel', '4'),
(230, 5, '_property_carousel', 'field_5b9411057222e'),
(231, 5, 'about_us_section_0_title', 'About Us'),
(232, 5, '_about_us_section_0_title', 'field_5b940e72301bc'),
(233, 5, 'about_us_section_0_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
(234, 5, '_about_us_section_0_description', 'field_5b940e8b301bd'),
(235, 5, 'about_us_section', '1'),
(236, 5, '_about_us_section', 'field_5b940e5b301bb'),
(237, 5, 'general_description', '\"Lorem ipsum dolor sit amet, consectetur\r\n adipiscing elit, sed do eiusmod tempor incididunt.”'),
(238, 5, '_general_description', 'field_5b940edb301be'),
(240, 48, 'main_property_slider_0_description', 'Bringing the best of Czech<br>\r\n<span>architecture and property </span><br>to foreign investors.'),
(241, 48, '_main_property_slider_0_description', 'field_5b940fc87222a'),
(242, 48, 'main_property_slider_0_property_description', '<strong>Hradcany</strong> castle is currently the jewel in our collection.\r\nA sprawling 70,000m2 complex at the heart of the capital city, Prague.'),
(243, 48, '_main_property_slider_0_property_description', 'field_5b94104d7222b'),
(244, 48, 'main_property_slider_0_property_url', '1'),
(245, 48, '_main_property_slider_0_property_url', 'field_5b9410a07222d'),
(246, 48, 'main_property_slider_1_description', 'Bringing the best of Czech<br>\r\n<span>architecture and property </span><br>to foreign investors.'),
(247, 48, '_main_property_slider_1_description', 'field_5b940fc87222a'),
(248, 48, 'main_property_slider_1_property_description', '<strong>Hradcany</strong> castle is currently the jewel in our collection.\r\nA sprawling 70,000m2 complex at the heart of the capital city, Prague.'),
(249, 48, '_main_property_slider_1_property_description', 'field_5b94104d7222b'),
(250, 48, 'main_property_slider_1_property_url', '1'),
(251, 48, '_main_property_slider_1_property_url', 'field_5b9410a07222d'),
(252, 48, 'main_property_slider_2_description', 'Bringing the best of Czech<br>\r\n<span>architecture and property </span><br>to foreign investors.'),
(253, 48, '_main_property_slider_2_description', 'field_5b940fc87222a'),
(254, 48, 'main_property_slider_2_property_description', '<strong>Hradcany</strong> castle is currently the jewel in our collection.\r\nA sprawling 70,000m2 complex at the heart of the capital city, Prague.'),
(255, 48, '_main_property_slider_2_property_description', 'field_5b94104d7222b'),
(256, 48, 'main_property_slider_2_property_url', '1'),
(257, 48, '_main_property_slider_2_property_url', 'field_5b9410a07222d'),
(258, 48, 'main_property_slider_3_description', 'Bringing the best of Czech<br>\r\n<span>architecture and property </span><br>to foreign investors.'),
(259, 48, '_main_property_slider_3_description', 'field_5b940fc87222a'),
(260, 48, 'main_property_slider_3_property_description', '<strong>Hradcany</strong> castle is currently the jewel in our collection.\r\nA sprawling 70,000m2 complex at the heart of the capital city, Prague.'),
(261, 48, '_main_property_slider_3_property_description', 'field_5b94104d7222b'),
(262, 48, 'main_property_slider_3_property_url', '1'),
(263, 48, '_main_property_slider_3_property_url', 'field_5b9410a07222d'),
(264, 48, 'main_property_slider', '4'),
(265, 48, '_main_property_slider', 'field_5b940f9c72229'),
(266, 48, 'property_carousel_0_property_title', 'Hradcany castle'),
(267, 48, '_property_carousel_0_property_title', 'field_5b9411327222f'),
(268, 48, 'property_carousel_0_property_image', '45'),
(269, 48, '_property_carousel_0_property_image', 'field_5b94115872230'),
(270, 48, 'property_carousel_0_property_url', '1'),
(271, 48, '_property_carousel_0_property_url', 'field_5b94117d72231'),
(272, 48, 'property_carousel_1_property_title', 'Hradcany castle'),
(273, 48, '_property_carousel_1_property_title', 'field_5b9411327222f'),
(274, 48, 'property_carousel_1_property_image', '46'),
(275, 48, '_property_carousel_1_property_image', 'field_5b94115872230'),
(276, 48, 'property_carousel_1_property_url', '1'),
(277, 48, '_property_carousel_1_property_url', 'field_5b94117d72231'),
(278, 48, 'property_carousel_2_property_title', 'Hradcany castle'),
(279, 48, '_property_carousel_2_property_title', 'field_5b9411327222f'),
(280, 48, 'property_carousel_2_property_image', '46'),
(281, 48, '_property_carousel_2_property_image', 'field_5b94115872230'),
(282, 48, 'property_carousel_2_property_url', '1'),
(283, 48, '_property_carousel_2_property_url', 'field_5b94117d72231'),
(284, 48, 'property_carousel_3_property_title', 'Hradcany castle 1'),
(285, 48, '_property_carousel_3_property_title', 'field_5b9411327222f'),
(286, 48, 'property_carousel_3_property_image', '45'),
(287, 48, '_property_carousel_3_property_image', 'field_5b94115872230'),
(288, 48, 'property_carousel_3_property_url', '1'),
(289, 48, '_property_carousel_3_property_url', 'field_5b94117d72231'),
(290, 48, 'property_carousel', '4'),
(291, 48, '_property_carousel', 'field_5b9411057222e'),
(292, 48, 'about_us_section_0_title', 'About Us'),
(293, 48, '_about_us_section_0_title', 'field_5b940e72301bc'),
(294, 48, 'about_us_section_0_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
(295, 48, '_about_us_section_0_description', 'field_5b940e8b301bd'),
(296, 48, 'about_us_section', '1'),
(297, 48, '_about_us_section', 'field_5b940e5b301bb'),
(298, 48, 'general_description', '\"Lorem ipsum dolor sit amet, consectetur\r\n adipiscing elit, sed do eiusmod tempor incididunt.”'),
(299, 48, '_general_description', 'field_5b940edb301be'),
(300, 5, 'main_property_slider_1_description', 'Bringing the best of Czech<br>\r\n<span>architecture and property </span><br>to foreign investors.'),
(301, 5, '_main_property_slider_1_description', 'field_5b940fc87222a'),
(302, 5, 'main_property_slider_1_property_description', '<strong>Hradcany</strong> castle is currently the jewel in our collection.\r\nA sprawling 70,000m2 complex at the heart of the capital city, Prague.'),
(303, 5, '_main_property_slider_1_property_description', 'field_5b94104d7222b'),
(304, 5, 'main_property_slider_1_property_url', '1'),
(305, 5, '_main_property_slider_1_property_url', 'field_5b9410a07222d'),
(306, 5, 'main_property_slider_2_description', 'Bringing the best of Czech<br>\r\n<span>architecture and property </span><br>to foreign investors.'),
(307, 5, '_main_property_slider_2_description', 'field_5b940fc87222a'),
(308, 5, 'main_property_slider_2_property_description', '<strong>Hradcany</strong> castle is currently the jewel in our collection.\r\nA sprawling 70,000m2 complex at the heart of the capital city, Prague.'),
(309, 5, '_main_property_slider_2_property_description', 'field_5b94104d7222b'),
(310, 5, 'main_property_slider_2_property_url', '1'),
(311, 5, '_main_property_slider_2_property_url', 'field_5b9410a07222d'),
(312, 5, 'main_property_slider_3_description', 'Bringing the best of Czech<br>\r\n<span>architecture and property </span><br>to foreign investors.'),
(313, 5, '_main_property_slider_3_description', 'field_5b940fc87222a'),
(314, 5, 'main_property_slider_3_property_description', '<strong>Hradcany</strong> castle is currently the jewel in our collection.\r\nA sprawling 70,000m2 complex at the heart of the capital city, Prague.'),
(315, 5, '_main_property_slider_3_property_description', 'field_5b94104d7222b'),
(316, 5, 'main_property_slider_3_property_url', '1'),
(317, 5, '_main_property_slider_3_property_url', 'field_5b9410a07222d'),
(318, 43, 'rule', 'a:5:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"page-home.php\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(319, 49, '_wp_attached_file', '2018/09/about.jpg'),
(320, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1004;s:6:\"height\";i:1339;s:4:\"file\";s:17:\"2018/09/about.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"about-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"about-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"about-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"about-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(321, 50, '_wp_attached_file', '2018/09/dummy.pdf'),
(322, 51, 'how_to_buy_0_title', 'LOREM TITLE'),
(323, 51, '_how_to_buy_0_title', 'field_5b94124a5ebff'),
(324, 51, 'how_to_buy_0_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
(325, 51, '_how_to_buy_0_description', 'field_5b94126a5ec00'),
(326, 51, 'how_to_buy_0_image', '49'),
(327, 51, '_how_to_buy_0_image', 'field_5b94129c5ec01'),
(328, 51, 'how_to_buy_0_broucher', '50'),
(329, 51, '_how_to_buy_0_broucher', 'field_5b9412b55ec02'),
(330, 51, 'how_to_buy_1_title', 'LOREM TITLE'),
(331, 51, '_how_to_buy_1_title', 'field_5b94124a5ebff'),
(332, 51, 'how_to_buy_1_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
(333, 51, '_how_to_buy_1_description', 'field_5b94126a5ec00'),
(334, 51, 'how_to_buy_1_image', '49'),
(335, 51, '_how_to_buy_1_image', 'field_5b94129c5ec01'),
(336, 51, 'how_to_buy_1_broucher', ''),
(337, 51, '_how_to_buy_1_broucher', 'field_5b9412b55ec02'),
(338, 51, 'how_to_buy', '2'),
(339, 51, '_how_to_buy', 'field_5b9412325ebfe'),
(340, 13, 'how_to_buy_0_title', 'LOREM TITLE'),
(341, 13, '_how_to_buy_0_title', 'field_5b94124a5ebff'),
(342, 13, 'how_to_buy_0_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
(343, 13, '_how_to_buy_0_description', 'field_5b94126a5ec00'),
(344, 13, 'how_to_buy_0_image', '49'),
(345, 13, '_how_to_buy_0_image', 'field_5b94129c5ec01'),
(346, 13, 'how_to_buy_0_broucher', '50'),
(347, 13, '_how_to_buy_0_broucher', 'field_5b9412b55ec02'),
(348, 13, 'how_to_buy_1_title', 'LOREM TITLE'),
(349, 13, '_how_to_buy_1_title', 'field_5b94124a5ebff'),
(350, 13, 'how_to_buy_1_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
(351, 13, '_how_to_buy_1_description', 'field_5b94126a5ec00'),
(352, 13, 'how_to_buy_1_image', '49'),
(353, 13, '_how_to_buy_1_image', 'field_5b94129c5ec01'),
(354, 13, 'how_to_buy_1_broucher', ''),
(355, 13, '_how_to_buy_1_broucher', 'field_5b9412b55ec02'),
(356, 13, 'how_to_buy', '2'),
(357, 13, '_how_to_buy', 'field_5b9412325ebfe'),
(358, 53, '_edit_last', '1'),
(359, 53, 'field_5b952cb0980db', 'a:13:{s:3:\"key\";s:19:\"field_5b952cb0980db\";s:5:\"label\";s:17:\"Property Carousel\";s:4:\"name\";s:18:\"property_carousels\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:10:\"sub_fields\";a:1:{i:0;a:12:{s:3:\"key\";s:19:\"field_5b95325b980dc\";s:5:\"label\";s:14:\"Property Image\";s:4:\"name\";s:14:\"property_image\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:12:\"column_width\";s:0:\"\";s:11:\"save_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}}s:7:\"row_min\";s:0:\"\";s:9:\"row_limit\";s:1:\"3\";s:6:\"layout\";s:3:\"row\";s:12:\"button_label\";s:9:\"Add Image\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5b953be0da827\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"yes\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(360, 53, 'field_5b953299980dd', 'a:13:{s:3:\"key\";s:19:\"field_5b953299980dd\";s:5:\"label\";s:33:\"Short description of the property\";s:4:\"name\";s:17:\"short_description\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:1:\"8\";s:10:\"formatting\";s:4:\"none\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}');
INSERT INTO `cf_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(361, 53, 'field_5b9532e5980de', 'a:13:{s:3:\"key\";s:19:\"field_5b9532e5980de\";s:5:\"label\";s:11:\"Floor Plans\";s:4:\"name\";s:11:\"floor_plans\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:10:\"sub_fields\";a:1:{i:0;a:12:{s:3:\"key\";s:19:\"field_5b95330b980df\";s:5:\"label\";s:9:\"Add Image\";s:4:\"name\";s:16:\"floor_plan_image\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:12:\"column_width\";s:0:\"\";s:11:\"save_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}}s:7:\"row_min\";s:0:\"\";s:9:\"row_limit\";s:2:\"10\";s:6:\"layout\";s:3:\"row\";s:12:\"button_label\";s:14:\"Add Floor Plan\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5b953be0da827\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"1\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:4;}'),
(362, 53, 'field_5b953361980e0', 'a:11:{s:3:\"key\";s:19:\"field_5b953361980e0\";s:5:\"label\";s:45:\"Description to be shown below the floor plans\";s:4:\"name\";s:23:\"description_floor_plans\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";s:3:\"yes\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:5;}'),
(363, 53, 'field_5b9533cd980e1', 'a:13:{s:3:\"key\";s:19:\"field_5b9533cd980e1\";s:5:\"label\";s:13:\"Image Gallery\";s:4:\"name\";s:13:\"image_gallery\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:10:\"sub_fields\";a:1:{i:0;a:12:{s:3:\"key\";s:19:\"field_5b9533e4980e2\";s:5:\"label\";s:16:\"Property Gallery\";s:4:\"name\";s:16:\"property_gallery\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:12:\"column_width\";s:0:\"\";s:11:\"save_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}}s:7:\"row_min\";s:0:\"\";s:9:\"row_limit\";s:1:\"9\";s:6:\"layout\";s:3:\"row\";s:12:\"button_label\";s:9:\"Add Image\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5b953be0da827\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"1\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:6;}'),
(365, 53, 'position', 'normal'),
(366, 53, 'layout', 'default'),
(367, 53, 'hide_on_screen', 'a:1:{i:0;s:11:\"the_content\";}'),
(368, 53, '_edit_lock', '1536600883:1'),
(369, 53, 'field_5b9538fd4f8b8', 'a:13:{s:3:\"key\";s:19:\"field_5b9538fd4f8b8\";s:5:\"label\";s:14:\"Specifications\";s:4:\"name\";s:14:\"specifications\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:10:\"sub_fields\";a:2:{i:0;a:15:{s:3:\"key\";s:19:\"field_5b95391b4f8b9\";s:5:\"label\";s:19:\"Specification Title\";s:4:\"name\";s:19:\"specification_title\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:12:\"column_width\";s:0:\"\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}i:1;a:15:{s:3:\"key\";s:19:\"field_5b953b2b4f8ba\";s:5:\"label\";s:5:\"Value\";s:4:\"name\";s:5:\"value\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:12:\"column_width\";s:0:\"\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}}s:7:\"row_min\";s:0:\"\";s:9:\"row_limit\";s:2:\"15\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:17:\"Add Specification\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:7;}'),
(370, 53, 'field_5b953b7c4f8bb', 'a:10:{s:3:\"key\";s:19:\"field_5b953b7c4f8bb\";s:5:\"label\";s:8:\"Broucher\";s:4:\"name\";s:8:\"broucher\";s:4:\"type\";s:4:\"file\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:8;}'),
(371, 53, 'field_5b953ba54f8bc', 'a:13:{s:3:\"key\";s:19:\"field_5b953ba54f8bc\";s:5:\"label\";s:16:\"Property Map Url\";s:4:\"name\";s:16:\"property_map_url\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:1:\"4\";s:10:\"formatting\";s:4:\"none\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:9;}'),
(373, 53, 'field_5b953be0da827', 'a:13:{s:3:\"key\";s:19:\"field_5b953be0da827\";s:5:\"label\";s:19:\"Highlight Property?\";s:4:\"name\";s:18:\"highlight_property\";s:4:\"type\";s:5:\"radio\";s:12:\"instructions\";s:70:\"Highlighted properties will be shown bigger in the all properties page\";s:8:\"required\";s:1:\"1\";s:7:\"choices\";a:2:{s:3:\"yes\";s:3:\"Yes\";s:2:\"no\";s:2:\"No\";}s:12:\"other_choice\";s:1:\"0\";s:17:\"save_other_choice\";s:1:\"0\";s:13:\"default_value\";s:2:\"no\";s:6:\"layout\";s:10:\"horizontal\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:10;}'),
(375, 54, '_edit_last', '1'),
(376, 54, '_edit_lock', '1536573390:1'),
(377, 55, '_wp_attached_file', '2018/09/img-1.jpg'),
(378, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:901;s:4:\"file\";s:17:\"2018/09/img-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"img-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"img-1-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"img-1-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"img-1-1024x577.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:577;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(379, 56, '_wp_attached_file', '2018/09/img-2.jpg'),
(380, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:17:\"2018/09/img-2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"img-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"img-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"img-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"img-2-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(381, 57, '_wp_attached_file', '2018/09/img-3.jpg'),
(382, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:17:\"2018/09/img-3.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"img-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"img-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"img-3-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"img-3-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(383, 58, '_wp_attached_file', '2018/09/floor.jpg'),
(384, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:811;s:6:\"height\";i:507;s:4:\"file\";s:17:\"2018/09/floor.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"floor-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"floor-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"floor-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(386, 59, '_edit_last', '1'),
(387, 59, '_edit_lock', '1536573580:1'),
(388, 59, 'property_carousel_0_property_image', '55'),
(389, 59, '_property_carousel_0_property_image', 'field_5b95325b980dc'),
(390, 59, 'property_carousel_1_property_image', '56'),
(391, 59, '_property_carousel_1_property_image', 'field_5b95325b980dc'),
(392, 59, 'property_carousel_2_property_image', '57'),
(393, 59, '_property_carousel_2_property_image', 'field_5b95325b980dc'),
(394, 59, 'property_carousel', '3'),
(395, 59, '_property_carousel', 'field_5b952cb0980db'),
(396, 59, 'short_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(397, 59, '_short_description', 'field_5b953299980dd'),
(398, 59, 'floor_plans', '2'),
(399, 59, '_floor_plans', 'field_5b9532e5980de'),
(400, 59, 'description_floor_plans', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores.'),
(401, 59, '_description_floor_plans', 'field_5b953361980e0'),
(402, 59, 'image_gallery_0_property_gallery', '45'),
(403, 59, '_image_gallery_0_property_gallery', 'field_5b9533e4980e2'),
(404, 59, 'image_gallery_1_property_gallery', '46'),
(405, 59, '_image_gallery_1_property_gallery', 'field_5b9533e4980e2'),
(406, 59, 'image_gallery_2_property_gallery', '45'),
(407, 59, '_image_gallery_2_property_gallery', 'field_5b9533e4980e2'),
(408, 59, 'image_gallery', '3'),
(409, 59, '_image_gallery', 'field_5b9533cd980e1'),
(410, 59, 'specifications', '5'),
(411, 59, '_specifications', 'field_5b9538fd4f8b8'),
(412, 59, 'broucher', '50'),
(413, 59, '_broucher', 'field_5b953b7c4f8bb'),
(414, 59, 'property_map_url', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2560.405018521703!2d14.419236115209843!3d50.07870342196274!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x470b94f2510a45c7%3A0x590f01dd7b70f28a!2sTRIUMPH+%C4%8Cesk%C3%A1+republika+s.r.o.!5e0!3m2!1sen!2sin!4v1531634637196'),
(415, 59, '_property_map_url', 'field_5b953ba54f8bc'),
(416, 59, 'highlight_property', 'yes'),
(417, 59, '_highlight_property', 'field_5b953be0da827'),
(420, 59, 'floor_plans_0_floor_plan_image', '58'),
(421, 59, '_floor_plans_0_floor_plan_image', 'field_5b95330b980df'),
(422, 59, 'floor_plans_1_floor_plan_image', '45'),
(423, 59, '_floor_plans_1_floor_plan_image', 'field_5b95330b980df'),
(424, 59, 'specifications_0_specification_title', 'Price'),
(425, 59, '_specifications_0_specification_title', 'field_5b95391b4f8b9'),
(426, 59, 'specifications_0_value', '9.309.672,00 Kč'),
(427, 59, '_specifications_0_value', 'field_5b953b2b4f8ba'),
(428, 59, 'specifications_1_specification_title', 'Square Meters'),
(429, 59, '_specifications_1_specification_title', 'field_5b95391b4f8b9'),
(430, 59, 'specifications_1_value', '120 m2'),
(431, 59, '_specifications_1_value', 'field_5b953b2b4f8ba'),
(432, 59, 'specifications_2_specification_title', 'Balcony'),
(433, 59, '_specifications_2_specification_title', 'field_5b95391b4f8b9'),
(434, 59, 'specifications_2_value', 'Yes'),
(435, 59, '_specifications_2_value', 'field_5b953b2b4f8ba'),
(436, 59, 'specifications_3_specification_title', 'Parking'),
(437, 59, '_specifications_3_specification_title', 'field_5b95391b4f8b9'),
(438, 59, 'specifications_3_value', 'Yes'),
(439, 59, '_specifications_3_value', 'field_5b953b2b4f8ba'),
(440, 59, 'specifications_4_specification_title', 'Basement'),
(441, 59, '_specifications_4_specification_title', 'field_5b95391b4f8b9'),
(442, 59, 'specifications_4_value', 'Yes'),
(443, 59, '_specifications_4_value', 'field_5b953b2b4f8ba'),
(444, 60, '_edit_last', '1'),
(445, 60, '_edit_lock', '1536514074:1'),
(447, 61, '_edit_last', '1'),
(448, 61, '_edit_lock', '1536518610:1'),
(449, 61, 'property_carousel', '0'),
(450, 61, '_property_carousel', 'field_5b952cb0980db'),
(451, 61, 'short_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(452, 61, '_short_description', 'field_5b953299980dd'),
(453, 61, 'floor_plans', '0'),
(454, 61, '_floor_plans', 'field_5b9532e5980de'),
(455, 61, 'description_floor_plans', ''),
(456, 61, '_description_floor_plans', 'field_5b953361980e0'),
(457, 61, 'image_gallery', '0'),
(458, 61, '_image_gallery', 'field_5b9533cd980e1'),
(459, 61, 'specifications', '0'),
(460, 61, '_specifications', 'field_5b9538fd4f8b8'),
(461, 61, 'broucher', ''),
(462, 61, '_broucher', 'field_5b953b7c4f8bb'),
(463, 61, 'property_map_url', ''),
(464, 61, '_property_map_url', 'field_5b953ba54f8bc'),
(465, 61, 'highlight_property', 'no'),
(466, 61, '_highlight_property', 'field_5b953be0da827'),
(467, 53, 'field_5b9557f2c7a05', 'a:11:{s:3:\"key\";s:19:\"field_5b9557f2c7a05\";s:5:\"label\";s:22:\"Property display image\";s:4:\"name\";s:22:\"property_display_image\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:11:\"save_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5b953be0da827\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"yes\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(469, 61, 'property_display_image', '46'),
(470, 61, '_property_display_image', 'field_5b9557f2c7a05'),
(471, 59, 'property_display_image', '45'),
(472, 59, '_property_display_image', 'field_5b9557f2c7a05'),
(473, 60, 'property_display_image', '46'),
(474, 60, '_property_display_image', 'field_5b9557f2c7a05'),
(475, 60, 'property_carousel', '0'),
(476, 60, '_property_carousel', 'field_5b952cb0980db'),
(477, 60, 'short_description', ''),
(478, 60, '_short_description', 'field_5b953299980dd'),
(479, 60, 'floor_plans', '0'),
(480, 60, '_floor_plans', 'field_5b9532e5980de'),
(481, 60, 'description_floor_plans', ''),
(482, 60, '_description_floor_plans', 'field_5b953361980e0'),
(483, 60, 'image_gallery', '0'),
(484, 60, '_image_gallery', 'field_5b9533cd980e1'),
(485, 60, 'specifications', '0'),
(486, 60, '_specifications', 'field_5b9538fd4f8b8'),
(487, 60, 'broucher', ''),
(488, 60, '_broucher', 'field_5b953b7c4f8bb'),
(489, 60, 'property_map_url', ''),
(490, 60, '_property_map_url', 'field_5b953ba54f8bc'),
(491, 60, 'highlight_property', 'no'),
(492, 60, '_highlight_property', 'field_5b953be0da827'),
(493, 54, 'property_display_image', '55'),
(494, 54, '_property_display_image', 'field_5b9557f2c7a05'),
(495, 54, 'property_carousel', '0'),
(496, 54, '_property_carousel', 'field_5b952cb0980db'),
(497, 54, 'short_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(498, 54, '_short_description', 'field_5b953299980dd'),
(499, 54, 'floor_plans', '0'),
(500, 54, '_floor_plans', 'field_5b9532e5980de'),
(501, 54, 'description_floor_plans', ''),
(502, 54, '_description_floor_plans', 'field_5b953361980e0'),
(503, 54, 'image_gallery', '0'),
(504, 54, '_image_gallery', 'field_5b9533cd980e1'),
(505, 54, 'specifications', '0'),
(506, 54, '_specifications', 'field_5b9538fd4f8b8'),
(507, 54, 'broucher', ''),
(508, 54, '_broucher', 'field_5b953b7c4f8bb'),
(509, 54, 'property_map_url', ''),
(510, 54, '_property_map_url', 'field_5b953ba54f8bc'),
(511, 54, 'highlight_property', 'yes'),
(512, 54, '_highlight_property', 'field_5b953be0da827'),
(513, 62, '_edit_last', '1'),
(514, 62, '_edit_lock', '1536551955:1'),
(515, 62, 'property_display_image', '46'),
(516, 62, '_property_display_image', 'field_5b9557f2c7a05'),
(517, 62, 'property_carousel', '0'),
(518, 62, '_property_carousel', 'field_5b952cb0980db'),
(519, 62, 'short_description', ''),
(520, 62, '_short_description', 'field_5b953299980dd'),
(521, 62, 'floor_plans', '0'),
(522, 62, '_floor_plans', 'field_5b9532e5980de'),
(523, 62, 'description_floor_plans', ''),
(524, 62, '_description_floor_plans', 'field_5b953361980e0'),
(525, 62, 'image_gallery', '0'),
(526, 62, '_image_gallery', 'field_5b9533cd980e1'),
(527, 62, 'specifications', '0'),
(528, 62, '_specifications', 'field_5b9538fd4f8b8'),
(529, 62, 'broucher', ''),
(530, 62, '_broucher', 'field_5b953b7c4f8bb'),
(531, 62, 'property_map_url', ''),
(532, 62, '_property_map_url', 'field_5b953ba54f8bc'),
(533, 62, 'highlight_property', 'no'),
(534, 62, '_highlight_property', 'field_5b953be0da827'),
(535, 63, '_edit_last', '1'),
(536, 63, '_edit_lock', '1536519112:1'),
(537, 64, '_edit_last', '1'),
(538, 64, '_edit_lock', '1536600997:1'),
(539, 64, 'property_display_image', '46'),
(540, 64, '_property_display_image', 'field_5b9557f2c7a05'),
(541, 64, 'property_carousel', '0'),
(542, 64, '_property_carousel', 'field_5b952cb0980db'),
(543, 64, 'short_description', ''),
(544, 64, '_short_description', 'field_5b953299980dd'),
(545, 64, 'floor_plans', '0'),
(546, 64, '_floor_plans', 'field_5b9532e5980de'),
(547, 64, 'description_floor_plans', ''),
(548, 64, '_description_floor_plans', 'field_5b953361980e0'),
(549, 64, 'image_gallery', '0'),
(550, 64, '_image_gallery', 'field_5b9533cd980e1'),
(551, 64, 'specifications', '0'),
(552, 64, '_specifications', 'field_5b9538fd4f8b8'),
(553, 64, 'broucher', ''),
(554, 64, '_broucher', 'field_5b953b7c4f8bb'),
(555, 64, 'property_map_url', ''),
(556, 64, '_property_map_url', 'field_5b953ba54f8bc'),
(557, 64, 'highlight_property', 'no'),
(558, 64, '_highlight_property', 'field_5b953be0da827'),
(561, 59, 'property_carousels_0_property_image', '55'),
(562, 59, '_property_carousels_0_property_image', 'field_5b95325b980dc'),
(563, 59, 'property_carousels_1_property_image', '56'),
(564, 59, '_property_carousels_1_property_image', 'field_5b95325b980dc'),
(565, 59, 'property_carousels_2_property_image', '57'),
(566, 59, '_property_carousels_2_property_image', 'field_5b95325b980dc'),
(567, 59, 'property_carousels', '3'),
(568, 59, '_property_carousels', 'field_5b952cb0980db'),
(569, 65, '_form', '[text* your-name class:form placeholder \"Name\"]\n<div class=\"clearfix\"> </div>\n\n[email* your-email class:form placeholder \"Email\"]\n<div class=\"clearfix\"> </div>\n\n[textarea your-message class:form \"Hello, I am interested in finding out more info about this property\"]\n<div class=\"clearfix\"> </div>\n<button type=\"submit\" class=\"submit\">  \n[submit class:submit \"Send\"]<i class=\"fa fa-long-arrow-right\"></i></button>'),
(570, 65, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:44:\"Carl & Friedrich Properties \"[your-subject]\"\";s:6:\"sender\";s:36:\"[your-name] <anishakarjun@gmail.com>\";s:9:\"recipient\";s:22:\"anishakarjun@gmail.com\";s:4:\"body\";s:201:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Carl &amp; Friedrich Properties (http://localhost/carl-friedrich)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(571, 65, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:44:\"Carl & Friedrich Properties \"[your-subject]\"\";s:6:\"sender\";s:52:\"Carl & Friedrich Properties <anishakarjun@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:143:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Carl &amp; Friedrich Properties (http://localhost/carl-friedrich)\";s:18:\"additional_headers\";s:32:\"Reply-To: anishakarjun@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(572, 65, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(573, 65, '_additional_settings', ''),
(574, 65, '_locale', 'en_US'),
(575, 53, 'field_5b96aaf436062', 'a:14:{s:3:\"key\";s:19:\"field_5b96aaf436062\";s:5:\"label\";s:13:\"Square Meters\";s:4:\"name\";s:13:\"square_meters\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5b953be0da827\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"yes\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(576, 53, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"property\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(577, 64, 'square_meters', '120m2'),
(578, 64, '_square_meters', 'field_5b96aaf436062'),
(579, 64, 'property_carousels', '0'),
(580, 64, '_property_carousels', 'field_5b952cb0980db');

-- --------------------------------------------------------

--
-- Table structure for table `cf_posts`
--

CREATE TABLE `cf_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `cf_posts`
--

INSERT INTO `cf_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-09-06 16:20:13', '2018-09-06 16:20:13', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-09-06 16:20:13', '2018-09-06 16:20:13', '', 0, 'http://localhost/carl-friedrich/?p=1', 0, 'post', '', 1),
(2, 1, '2018-09-06 16:20:13', '2018-09-06 16:20:13', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/carl-friedrich/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2018-09-07 15:34:58', '2018-09-07 15:34:58', '', 0, 'http://localhost/carl-friedrich/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-09-06 16:20:13', '2018-09-06 16:20:13', '<h2>Who we are</h2><p>Our website address is: http://localhost/carl-friedrich.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2018-09-06 16:20:13', '2018-09-06 16:20:13', '', 0, 'http://localhost/carl-friedrich/?page_id=3', 0, 'page', '', 0),
(4, 1, '2018-09-06 16:23:19', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-09-06 16:23:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/carl-friedrich/?p=4', 0, 'post', '', 0),
(5, 1, '2018-09-06 16:53:32', '2018-09-06 16:53:32', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-09-09 07:01:19', '2018-09-09 07:01:19', '', 0, 'http://localhost/carl-friedrich/?page_id=5', -1, 'page', '', 0),
(6, 1, '2018-09-06 16:53:32', '2018-09-06 16:53:32', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-09-06 16:53:32', '2018-09-06 16:53:32', '', 5, 'http://localhost/carl-friedrich/2018/09/06/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2018-09-07 04:34:25', '2018-09-07 04:34:25', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]\nCarl &amp; Friedrich Properties \"[your-subject]\"\n[your-name] <anishakarjun@gmail.com>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Carl &amp; Friedrich Properties (http://localhost/carl-friedrich)\nanishakarjun@gmail.com\nReply-To: [your-email]\n\n0\n0\n\nCarl &amp; Friedrich Properties \"[your-subject]\"\nCarl &amp; Friedrich Properties <anishakarjun@gmail.com>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Carl &amp; Friedrich Properties (http://localhost/carl-friedrich)\n[your-email]\nReply-To: anishakarjun@gmail.com\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2018-09-07 04:34:25', '2018-09-07 04:34:25', '', 0, 'http://localhost/carl-friedrich/?post_type=wpcf7_contact_form&p=7', 0, 'wpcf7_contact_form', '', 0),
(8, 1, '2018-09-07 15:34:58', '2018-09-07 15:34:58', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/carl-friedrich/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-09-07 15:34:58', '2018-09-07 15:34:58', '', 2, 'http://localhost/carl-friedrich/2018/09/07/2-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2018-09-07 15:35:20', '2018-09-07 15:35:20', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2018-09-07 17:28:27', '2018-09-07 17:28:27', '', 0, 'http://localhost/carl-friedrich/?page_id=9', 0, 'page', '', 0),
(10, 1, '2018-09-07 15:35:20', '2018-09-07 15:35:20', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-09-07 15:35:20', '2018-09-07 15:35:20', '', 9, 'http://localhost/carl-friedrich/2018/09/07/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2018-09-07 15:35:51', '2018-09-07 15:35:51', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'About Czech Republic', '', 'publish', 'closed', 'closed', '', 'about-czech-republic', '', '', '2018-09-07 17:33:03', '2018-09-07 17:33:03', '', 0, 'http://localhost/carl-friedrich/?page_id=11', 0, 'page', '', 0),
(12, 1, '2018-09-07 15:35:51', '2018-09-07 15:35:51', '', 'About Czech Republic', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-09-07 15:35:51', '2018-09-07 15:35:51', '', 11, 'http://localhost/carl-friedrich/2018/09/07/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2018-09-07 15:36:15', '2018-09-07 15:36:15', '', 'How to buy', '', 'publish', 'closed', 'closed', '', 'how-to-buy', '', '', '2018-09-09 07:43:26', '2018-09-09 07:43:26', '', 0, 'http://localhost/carl-friedrich/?page_id=13', 0, 'page', '', 0),
(14, 1, '2018-09-07 15:36:15', '2018-09-07 15:36:15', '', 'How to buy', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-09-07 15:36:15', '2018-09-07 15:36:15', '', 13, 'http://localhost/carl-friedrich/2018/09/07/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2018-09-07 15:36:19', '2018-09-07 15:36:19', '', 'How to buy', '', 'inherit', 'closed', 'closed', '', '13-autosave-v1', '', '', '2018-09-07 15:36:19', '2018-09-07 15:36:19', '', 13, 'http://localhost/carl-friedrich/2018/09/07/13-autosave-v1/', 0, 'revision', '', 0),
(16, 1, '2018-09-07 15:36:31', '2018-09-07 15:36:31', '[contact-form-7 id=\"32\" title=\"Contact Us Form\"]', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2018-09-07 18:08:36', '2018-09-07 18:08:36', '', 0, 'http://localhost/carl-friedrich/?page_id=16', 0, 'page', '', 0),
(17, 1, '2018-09-07 15:36:31', '2018-09-07 15:36:31', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-09-07 15:36:31', '2018-09-07 15:36:31', '', 16, 'http://localhost/carl-friedrich/2018/09/07/16-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2018-09-07 15:37:03', '2018-09-07 15:37:03', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2018-09-10 17:37:16', '2018-09-10 17:37:16', '', 0, 'http://localhost/carl-friedrich/?p=20', 2, 'nav_menu_item', '', 0),
(21, 1, '2018-09-07 15:37:03', '2018-09-07 15:37:03', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2018-09-10 17:37:16', '2018-09-10 17:37:16', '', 0, 'http://localhost/carl-friedrich/?p=21', 1, 'nav_menu_item', '', 0),
(22, 1, '2018-09-07 15:37:03', '2018-09-07 15:37:03', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2018-09-10 17:37:17', '2018-09-10 17:37:17', '', 0, 'http://localhost/carl-friedrich/?p=22', 5, 'nav_menu_item', '', 0),
(23, 1, '2018-09-07 15:37:03', '2018-09-07 15:37:03', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2018-09-10 17:37:16', '2018-09-10 17:37:16', '', 0, 'http://localhost/carl-friedrich/?p=23', 3, 'nav_menu_item', '', 0),
(24, 1, '2018-09-07 15:37:41', '2018-09-07 15:37:41', '', 'Properties', '', 'publish', 'closed', 'closed', '', 'properties', '', '', '2018-09-10 17:37:17', '2018-09-10 17:37:17', '', 0, 'http://localhost/carl-friedrich/?p=24', 4, 'nav_menu_item', '', 0),
(25, 1, '2018-09-07 15:51:38', '2018-09-07 15:51:38', '', 'More Information', '', 'publish', 'closed', 'closed', '', 'more-information', '', '', '2018-09-07 15:51:38', '2018-09-07 15:51:38', '', 0, 'http://localhost/carl-friedrich/?page_id=25', 0, 'page', '', 0),
(26, 1, '2018-09-07 15:51:38', '2018-09-07 15:51:38', '', 'More Information', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2018-09-07 15:51:38', '2018-09-07 15:51:38', '', 25, 'http://localhost/carl-friedrich/2018/09/07/25-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2018-09-07 15:51:54', '2018-09-07 15:51:54', '', 'Conditions', '', 'publish', 'closed', 'closed', '', 'conditions', '', '', '2018-09-07 15:51:54', '2018-09-07 15:51:54', '', 0, 'http://localhost/carl-friedrich/?page_id=27', 0, 'page', '', 0),
(28, 1, '2018-09-07 15:51:54', '2018-09-07 15:51:54', '', 'Conditions', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-09-07 15:51:54', '2018-09-07 15:51:54', '', 27, 'http://localhost/carl-friedrich/2018/09/07/27-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2018-09-07 17:28:27', '2018-09-07 17:28:27', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'About Us', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-09-07 17:28:27', '2018-09-07 17:28:27', '', 9, 'http://localhost/carl-friedrich/2018/09/07/9-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2018-09-07 17:33:03', '2018-09-07 17:33:03', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'About Czech Republic', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-09-07 17:33:03', '2018-09-07 17:33:03', '', 11, 'http://localhost/carl-friedrich/2018/09/07/11-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2018-09-07 17:48:58', '2018-09-07 17:48:58', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-09-07 17:48:58', '2018-09-07 17:48:58', '', 16, 'http://localhost/carl-friedrich/2018/09/07/16-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2018-09-07 17:58:37', '2018-09-07 17:58:37', '<span class=\"contact100-form-title\">\r\n  Send Us A Message\r\n</span>\r\n\r\n  <label class=\"label-input100\" for=\"first-name\">Tell us your name *</label>\r\n  <div class=\"wrap-input100 rs1-wrap-input100 validate-input\" data-validate=\"Type first name\">\r\n   [text* first-name id:first-name class:input100 placeholder \"First Name\"]\r\n    <span class=\"focus-input100\"></span>\r\n  </div>\r\n  <div class=\"wrap-input100 rs2-wrap-input100 validate-input\" data-validate=\"Type last name\">\r\n    [text last-name id:last-name class:input100 placeholder \"Last Name\"]\r\n      <span class=\"focus-input100\"></span>\r\n  </div>\r\n\r\n  <label class=\"label-input100\" for=\"email\">Enter your email *</label>\r\n    <div class=\"wrap-input100 validate-input\" data-validate = \"Valid email is required: ex@abc.xyz\">\r\n	[email* email id:email class:input100 placeholder \"Eg. example@email.com\"]\r\n	<span class=\"focus-input100\"></span>\r\n    </div>\r\n\r\n   <label class=\"label-input100\" for=\"phone\">Enter phone number</label>\r\n   <div class=\"wrap-input100\">\r\n     [tel phone id:phone class:input100 placeholder \"Phone Number\"]\r\n     <span class=\"focus-input100\"></span>\r\n   </div>\r\n				\r\n   <label class=\"label-input100\" for=\"phone\">Subject</label>\r\n   <div class=\"wrap-input100\">\r\n[select* subject id:subject class:input100 \"I want to buy an existing property\" \"I want you to look for a property for me\" \"Other requirements\"]\r\n	<span class=\"focus-input100\"></span>\r\n   </div>\r\n\r\n   <label class=\"label-input100\" for=\"message\">Message *</label>\r\n   <div class=\"wrap-input100 validate-input\" data-validate = \"Message is required\">\r\n[textarea* message id:message class:input100 placeholder \"Write us a message\"]\r\n	\r\n	<span class=\"focus-input100\"></span>\r\n    </div>\r\n\r\n   <div class=\"container-contact100-form-btn\">\r\n[submit class:contact100-form-btn \"Send Message\"]\r\n	\r\n   </div>\r\n   <div class=\"container-contact100-form-btn\">\r\n      <span style=\"color:#fb4c42; font-weight:bold\" id=\"error\"></span> \r\n          <span style=\"color:#22a9ce; font-weight:bold\" id=\"success\"></span> \r\n    </div>\n1\nCarl & Friedrich Properties \"[your-subject]\"\n[your-name] <anishakarjun@gmail.com>\nanishakarjun@gmail.com\nFrom: [first-name] <[email]>\r\nSubject: [subject]\r\n\r\nMessage Body:\r\n[message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Carl &amp; Friedrich Properties (http://localhost/carl-friedrich)\nReply-To: [email]\n\n\n\n\nCarl & Friedrich Properties \"[your-subject]\"\nCarl & Friedrich Properties <anishakarjun@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Carl &amp; Friedrich Properties (http://localhost/carl-friedrich)\nReply-To: anishakarjun@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact Us Form', '', 'publish', 'closed', 'closed', '', 'contact-us-form', '', '', '2018-09-07 18:07:39', '2018-09-07 18:07:39', '', 0, 'http://localhost/carl-friedrich/?post_type=wpcf7_contact_form&#038;p=32', 0, 'wpcf7_contact_form', '', 0),
(33, 1, '2018-09-07 18:08:36', '2018-09-07 18:08:36', '[contact-form-7 id=\"32\" title=\"Contact Us Form\"]', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-09-07 18:08:36', '2018-09-07 18:08:36', '', 16, 'http://localhost/carl-friedrich/2018/09/07/16-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2018-09-08 04:41:02', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-09-08 04:41:02', '0000-00-00 00:00:00', '', 0, 'http://localhost/carl-friedrich/?post_type=acf&p=34', 0, 'acf', '', 0),
(35, 1, '2018-09-08 05:21:56', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-09-08 05:21:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/carl-friedrich/?post_type=acf&p=35', 0, 'acf', '', 0),
(36, 1, '2018-09-08 05:22:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-09-08 05:22:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/carl-friedrich/?post_type=acf&p=36', 0, 'acf', '', 0),
(37, 1, '2018-09-08 05:23:11', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-09-08 05:23:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/carl-friedrich/?post_type=acf&p=37', 0, 'acf', '', 0),
(38, 1, '2018-09-08 16:52:32', '2018-09-08 16:52:32', '', 'Logo', '', 'publish', 'closed', 'closed', '', 'acf_logo', '', '', '2018-09-08 16:52:32', '2018-09-08 16:52:32', '', 0, 'http://localhost/carl-friedrich/?post_type=acf&#038;p=38', 0, 'acf', '', 0),
(39, 1, '2018-09-08 16:55:51', '2018-09-08 16:55:51', '', 'Contact Fields', '', 'publish', 'closed', 'closed', '', 'acf_contact-fields', '', '', '2018-09-08 16:55:51', '2018-09-08 16:55:51', '', 0, 'http://localhost/carl-friedrich/?post_type=acf&#038;p=39', 0, 'acf', '', 0),
(40, 1, '2018-09-08 16:57:26', '2018-09-08 16:57:26', '', 'Social Media Links', '', 'publish', 'closed', 'closed', '', 'acf_social-media-links', '', '', '2018-09-08 16:57:26', '2018-09-08 16:57:26', '', 0, 'http://localhost/carl-friedrich/?post_type=acf&#038;p=40', 0, 'acf', '', 0),
(42, 1, '2018-09-08 16:59:22', '2018-09-08 16:59:22', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2018-09-08 16:59:22', '2018-09-08 16:59:22', '', 0, 'http://localhost/carl-friedrich/wp-content/uploads/2018/09/logo.png', 0, 'attachment', 'image/png', 0),
(43, 1, '2018-09-08 18:04:12', '2018-09-08 18:04:12', '', 'Home Page Fields', '', 'publish', 'closed', 'closed', '', 'acf_home-page-fields', '', '', '2018-09-09 07:01:49', '2018-09-09 07:01:49', '', 0, 'http://localhost/carl-friedrich/?post_type=acf&#038;p=43', 0, 'acf', '', 0),
(44, 1, '2018-09-08 18:22:03', '2018-09-08 18:22:03', '', 'How to buy', '', 'publish', 'closed', 'closed', '', 'acf_how-to-buy', '', '', '2018-09-08 18:22:03', '2018-09-08 18:22:03', '', 0, 'http://localhost/carl-friedrich/?post_type=acf&#038;p=44', 0, 'acf', '', 0),
(45, 1, '2018-09-09 06:47:44', '2018-09-09 06:47:44', '', 'h1', '', 'inherit', 'open', 'closed', '', 'h1', '', '', '2018-09-09 06:47:44', '2018-09-09 06:47:44', '', 5, 'http://localhost/carl-friedrich/wp-content/uploads/2018/09/h1.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2018-09-09 06:48:30', '2018-09-09 06:48:30', '', 'h2', '', 'inherit', 'open', 'closed', '', 'h2', '', '', '2018-09-09 06:48:30', '2018-09-09 06:48:30', '', 5, 'http://localhost/carl-friedrich/wp-content/uploads/2018/09/h2.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2018-09-09 06:51:05', '2018-09-09 06:51:05', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-09-09 06:51:05', '2018-09-09 06:51:05', '', 5, 'http://localhost/carl-friedrich/2018/09/09/5-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2018-09-09 07:01:19', '2018-09-09 07:01:19', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-09-09 07:01:19', '2018-09-09 07:01:19', '', 5, 'http://localhost/carl-friedrich/2018/09/09/5-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2018-09-09 07:41:57', '2018-09-09 07:41:57', '', 'about', '', 'inherit', 'open', 'closed', '', 'about', '', '', '2018-09-09 07:41:57', '2018-09-09 07:41:57', '', 13, 'http://localhost/carl-friedrich/wp-content/uploads/2018/09/about.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2018-09-09 07:42:26', '2018-09-09 07:42:26', '', 'dummy', '', 'inherit', 'open', 'closed', '', 'dummy', '', '', '2018-09-09 07:42:26', '2018-09-09 07:42:26', '', 13, 'http://localhost/carl-friedrich/wp-content/uploads/2018/09/dummy.pdf', 0, 'attachment', 'application/pdf', 0),
(51, 1, '2018-09-09 07:43:26', '2018-09-09 07:43:26', '', 'How to buy', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-09-09 07:43:26', '2018-09-09 07:43:26', '', 13, 'http://localhost/carl-friedrich/2018/09/09/13-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2018-09-09 08:25:52', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-09-09 08:25:52', '0000-00-00 00:00:00', '', 0, 'http://localhost/carl-friedrich/?post_type=property&p=52', 0, 'property', '', 0),
(53, 1, '2018-09-09 14:55:02', '2018-09-09 14:55:02', '', 'Property Details', '', 'publish', 'closed', 'closed', '', 'acf_property-details', '', '', '2018-09-10 17:35:06', '2018-09-10 17:35:06', '', 0, 'http://localhost/carl-friedrich/?post_type=acf&#038;p=53', 0, 'acf', '', 0),
(54, 1, '2018-09-09 17:30:44', '2018-09-09 17:30:44', '', 'Prague, Czech Republic', '', 'publish', 'closed', 'closed', '', 'prague-czech-republic-2', '', '', '2018-09-09 17:30:44', '2018-09-09 17:30:44', '', 0, 'http://localhost/carl-friedrich/?post_type=property&#038;p=54', 0, 'property', '', 0),
(55, 1, '2018-09-09 15:31:18', '2018-09-09 15:31:18', '', 'img-1', '', 'inherit', 'open', 'closed', '', 'img-1', '', '', '2018-09-09 15:31:18', '2018-09-09 15:31:18', '', 54, 'http://localhost/carl-friedrich/wp-content/uploads/2018/09/img-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2018-09-09 15:31:54', '2018-09-09 15:31:54', '', 'img-2', '', 'inherit', 'open', 'closed', '', 'img-2', '', '', '2018-09-09 15:31:54', '2018-09-09 15:31:54', '', 54, 'http://localhost/carl-friedrich/wp-content/uploads/2018/09/img-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2018-09-09 15:31:57', '2018-09-09 15:31:57', '', 'img-3', '', 'inherit', 'open', 'closed', '', 'img-3', '', '', '2018-09-09 15:31:57', '2018-09-09 15:31:57', '', 54, 'http://localhost/carl-friedrich/wp-content/uploads/2018/09/img-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2018-09-09 15:32:50', '2018-09-09 15:32:50', '', 'floor', '', 'inherit', 'open', 'closed', '', 'floor', '', '', '2018-09-09 15:32:50', '2018-09-09 15:32:50', '', 54, 'http://localhost/carl-friedrich/wp-content/uploads/2018/09/floor.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2018-09-09 15:36:00', '2018-09-09 15:36:00', '', 'Prague, Czech Republic', '', 'publish', 'closed', 'closed', '', 'prague-czech-republic', '', '', '2018-09-10 09:59:31', '2018-09-10 09:59:31', '', 0, 'http://localhost/carl-friedrich/?post_type=property&#038;p=59', 0, 'property', '', 0),
(60, 1, '2018-09-09 17:29:54', '2018-09-09 17:29:54', '', 'property 3', '', 'publish', 'closed', 'closed', '', 'property-3', '', '', '2018-09-09 17:29:54', '2018-09-09 17:29:54', '', 0, 'http://localhost/carl-friedrich/?post_type=property&#038;p=60', 0, 'property', '', 0),
(61, 1, '2018-09-09 17:26:48', '2018-09-09 17:26:48', '', 'property2', '', 'publish', 'closed', 'closed', '', 'property2', '', '', '2018-09-09 18:41:10', '2018-09-09 18:41:10', '', 0, 'http://localhost/carl-friedrich/?post_type=property&#038;p=61', 0, 'property', '', 0),
(62, 1, '2018-09-09 18:46:15', '2018-09-09 18:46:15', '', 'property 4', '', 'publish', 'closed', 'closed', '', 'property-4', '', '', '2018-09-09 18:46:15', '2018-09-09 18:46:15', '', 0, 'http://localhost/carl-friedrich/?post_type=property&#038;p=62', 0, 'property', '', 0),
(63, 1, '2018-09-09 18:51:51', '0000-00-00 00:00:00', '', 'property', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-09-09 18:51:51', '2018-09-09 18:51:51', '', 0, 'http://localhost/carl-friedrich/?post_type=property&#038;p=63', 0, 'property', '', 0),
(64, 1, '2018-09-10 04:01:50', '2018-09-10 04:01:50', '', 'property 5', '', 'publish', 'closed', 'closed', '', 'property-5', '', '', '2018-09-10 17:36:35', '2018-09-10 17:36:35', '', 0, 'http://localhost/carl-friedrich/?post_type=property&#038;p=64', 0, 'property', '', 0),
(65, 1, '2018-09-10 11:42:15', '2018-09-10 11:42:15', '[text* your-name class:form placeholder \"Name\"]\r\n<div class=\"clearfix\"> </div>\r\n\r\n[email* your-email class:form placeholder \"Email\"]\r\n<div class=\"clearfix\"> </div>\r\n\r\n[textarea your-message class:form \"Hello, I am interested in finding out more info about this property\"]\r\n<div class=\"clearfix\"> </div>\r\n<button type=\"submit\" class=\"submit\">  \r\n[submit class:submit \"Send\"]<i class=\"fa fa-long-arrow-right\"></i></button>\n1\nCarl & Friedrich Properties \"[your-subject]\"\n[your-name] <anishakarjun@gmail.com>\nanishakarjun@gmail.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Carl &amp; Friedrich Properties (http://localhost/carl-friedrich)\nReply-To: [your-email]\n\n\n\n\nCarl & Friedrich Properties \"[your-subject]\"\nCarl & Friedrich Properties <anishakarjun@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Carl &amp; Friedrich Properties (http://localhost/carl-friedrich)\nReply-To: anishakarjun@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact Form Property Page', '', 'publish', 'closed', 'closed', '', 'contact-form-property-page', '', '', '2018-09-10 11:44:33', '2018-09-10 11:44:33', '', 0, 'http://localhost/carl-friedrich/?post_type=wpcf7_contact_form&#038;p=65', 0, 'wpcf7_contact_form', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cf_termmeta`
--

CREATE TABLE `cf_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cf_terms`
--

CREATE TABLE `cf_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `cf_terms`
--

INSERT INTO `cf_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main Menu', 'main-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cf_term_relationships`
--

CREATE TABLE `cf_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `cf_term_relationships`
--

INSERT INTO `cf_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(20, 2, 0),
(21, 2, 0),
(22, 2, 0),
(23, 2, 0),
(24, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cf_term_taxonomy`
--

CREATE TABLE `cf_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `cf_term_taxonomy`
--

INSERT INTO `cf_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `cf_usermeta`
--

CREATE TABLE `cf_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `cf_usermeta`
--

INSERT INTO `cf_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'cf_admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'cf_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'cf_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:3:{s:64:\"ab1d106f80eea60b5f283aca350f94f3d6e09120e47a969e1d3ddd68e8e939c6\";a:4:{s:10:\"expiration\";i:1536647724;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36\";s:5:\"login\";i:1536474924;}s:64:\"7a17c7c4d6acaad2b3eca0d075f2f5ddad8f6cf0edd956b45bf66897b3561803\";a:4:{s:10:\"expiration\";i:1536675347;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36\";s:5:\"login\";i:1536502547;}s:64:\"d3ffd61e4d637edba116f18df78d7865aa25189e94c47a355c110273116806b3\";a:4:{s:10:\"expiration\";i:1536724556;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36\";s:5:\"login\";i:1536551756;}}'),
(17, 1, 'cf_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(21, 1, 'cf_user-settings', 'libraryContent=browse'),
(22, 1, 'cf_user-settings-time', '1536475865'),
(23, 1, 'nav_menu_recently_edited', '2');

-- --------------------------------------------------------

--
-- Table structure for table `cf_users`
--

CREATE TABLE `cf_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `cf_users`
--

INSERT INTO `cf_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'cf_admin', '$P$Bz4cnvDHl6G1zruLV.euGcbJVqk0G/0', 'cf_admin', 'anishakarjun@gmail.com', '', '2018-09-06 16:20:11', '', 0, 'cf_admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cf_commentmeta`
--
ALTER TABLE `cf_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `cf_comments`
--
ALTER TABLE `cf_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `cf_links`
--
ALTER TABLE `cf_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `cf_options`
--
ALTER TABLE `cf_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `cf_postmeta`
--
ALTER TABLE `cf_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `cf_posts`
--
ALTER TABLE `cf_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `cf_termmeta`
--
ALTER TABLE `cf_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `cf_terms`
--
ALTER TABLE `cf_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `cf_term_relationships`
--
ALTER TABLE `cf_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `cf_term_taxonomy`
--
ALTER TABLE `cf_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `cf_usermeta`
--
ALTER TABLE `cf_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `cf_users`
--
ALTER TABLE `cf_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cf_commentmeta`
--
ALTER TABLE `cf_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cf_comments`
--
ALTER TABLE `cf_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cf_links`
--
ALTER TABLE `cf_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cf_options`
--
ALTER TABLE `cf_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=264;
--
-- AUTO_INCREMENT for table `cf_postmeta`
--
ALTER TABLE `cf_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=581;
--
-- AUTO_INCREMENT for table `cf_posts`
--
ALTER TABLE `cf_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT for table `cf_termmeta`
--
ALTER TABLE `cf_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cf_terms`
--
ALTER TABLE `cf_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `cf_term_taxonomy`
--
ALTER TABLE `cf_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `cf_usermeta`
--
ALTER TABLE `cf_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `cf_users`
--
ALTER TABLE `cf_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
