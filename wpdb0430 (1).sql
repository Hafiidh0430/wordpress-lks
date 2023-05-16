-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2023 at 03:18 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wpdb0430`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress07', 'yes'),
(2, 'home', 'http://localhost/wordpress07', 'yes'),
(3, 'blogname', '', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'mhafiidhbasriy@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%category%/%author%/%post_id%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:171:{s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:39:\"index.php?yoast-sitemap-xsl=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:10:\"vslides/?$\";s:27:\"index.php?post_type=vslides\";s:40:\"vslides/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=vslides&feed=$matches[1]\";s:35:\"vslides/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=vslides&feed=$matches[1]\";s:27:\"vslides/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=vslides&paged=$matches[1]\";s:22:\"tribe-promoter-auth/?$\";s:37:\"index.php?tribe-promoter-auth-check=1\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:56:\"multiple_slider/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?multiple_slider=$matches[1]&feed=$matches[2]\";s:51:\"multiple_slider/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?multiple_slider=$matches[1]&feed=$matches[2]\";s:32:\"multiple_slider/([^/]+)/embed/?$\";s:48:\"index.php?multiple_slider=$matches[1]&embed=true\";s:44:\"multiple_slider/([^/]+)/page/?([0-9]{1,})/?$\";s:55:\"index.php?multiple_slider=$matches[1]&paged=$matches[2]\";s:26:\"multiple_slider/([^/]+)/?$\";s:37:\"index.php?multiple_slider=$matches[1]\";s:35:\"vslides/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"vslides/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"vslides/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"vslides/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"vslides/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"vslides/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"vslides/([^/]+)/embed/?$\";s:40:\"index.php?vslides=$matches[1]&embed=true\";s:28:\"vslides/([^/]+)/trackback/?$\";s:34:\"index.php?vslides=$matches[1]&tb=1\";s:48:\"vslides/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?vslides=$matches[1]&feed=$matches[2]\";s:43:\"vslides/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?vslides=$matches[1]&feed=$matches[2]\";s:36:\"vslides/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?vslides=$matches[1]&paged=$matches[2]\";s:43:\"vslides/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?vslides=$matches[1]&cpage=$matches[2]\";s:32:\"vslides/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?vslides=$matches[1]&page=$matches[2]\";s:24:\"vslides/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"vslides/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"vslides/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"vslides/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"vslides/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"vslides/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:39:\"news-update/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"news-update/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"news-update/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"news-update/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"news-update/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"news-update/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"news-update/([^/]+)/embed/?$\";s:44:\"index.php?news_update=$matches[1]&embed=true\";s:32:\"news-update/([^/]+)/trackback/?$\";s:38:\"index.php?news_update=$matches[1]&tb=1\";s:40:\"news-update/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?news_update=$matches[1]&paged=$matches[2]\";s:47:\"news-update/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?news_update=$matches[1]&cpage=$matches[2]\";s:36:\"news-update/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?news_update=$matches[1]&page=$matches[2]\";s:28:\"news-update/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:38:\"news-update/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:58:\"news-update/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"news-update/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"news-update/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:34:\"news-update/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:74:\"date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:69:\"date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:50:\"date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:62:\"date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:44:\"date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:61:\"date/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:56:\"date/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:37:\"date/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:49:\"date/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:31:\"date/([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:48:\"date/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:43:\"date/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:24:\"date/([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:36:\"date/([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:18:\"date/([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:44:\".+?/[^/]+/[0-9]+/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:54:\".+?/[^/]+/[0-9]+/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:74:\".+?/[^/]+/[0-9]+/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\".+?/[^/]+/[0-9]+/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\".+?/[^/]+/[0-9]+/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:50:\".+?/[^/]+/[0-9]+/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:39:\"(.+?)/([^/]+)/([0-9]+)/([^/]+)/embed/?$\";s:101:\"index.php?category_name=$matches[1]&author_name=$matches[2]&p=$matches[3]&name=$matches[4]&embed=true\";s:43:\"(.+?)/([^/]+)/([0-9]+)/([^/]+)/trackback/?$\";s:95:\"index.php?category_name=$matches[1]&author_name=$matches[2]&p=$matches[3]&name=$matches[4]&tb=1\";s:63:\"(.+?)/([^/]+)/([0-9]+)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:107:\"index.php?category_name=$matches[1]&author_name=$matches[2]&p=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:58:\"(.+?)/([^/]+)/([0-9]+)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:107:\"index.php?category_name=$matches[1]&author_name=$matches[2]&p=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:51:\"(.+?)/([^/]+)/([0-9]+)/([^/]+)/page/?([0-9]{1,})/?$\";s:108:\"index.php?category_name=$matches[1]&author_name=$matches[2]&p=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:58:\"(.+?)/([^/]+)/([0-9]+)/([^/]+)/comment-page-([0-9]{1,})/?$\";s:108:\"index.php?category_name=$matches[1]&author_name=$matches[2]&p=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:47:\"(.+?)/([^/]+)/([0-9]+)/([^/]+)(?:/([0-9]+))?/?$\";s:107:\"index.php?category_name=$matches[1]&author_name=$matches[2]&p=$matches[3]&name=$matches[4]&page=$matches[5]\";s:33:\".+?/[^/]+/[0-9]+/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\".+?/[^/]+/[0-9]+/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\".+?/[^/]+/[0-9]+/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\".+?/[^/]+/[0-9]+/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\".+?/[^/]+/[0-9]+/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\".+?/[^/]+/[0-9]+/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\".+?/[^/]+/[0-9]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:48:\".+?/[^/]+/[0-9]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:68:\".+?/[^/]+/[0-9]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\".+?/[^/]+/[0-9]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\".+?/[^/]+/[0-9]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:44:\".+?/[^/]+/[0-9]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:31:\"(.+?)/([^/]+)/([0-9]+)/embed/?$\";s:84:\"index.php?category_name=$matches[1]&author_name=$matches[2]&p=$matches[3]&embed=true\";s:35:\"(.+?)/([^/]+)/([0-9]+)/trackback/?$\";s:78:\"index.php?category_name=$matches[1]&author_name=$matches[2]&p=$matches[3]&tb=1\";s:55:\"(.+?)/([^/]+)/([0-9]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:90:\"index.php?category_name=$matches[1]&author_name=$matches[2]&p=$matches[3]&feed=$matches[4]\";s:50:\"(.+?)/([^/]+)/([0-9]+)/(feed|rdf|rss|rss2|atom)/?$\";s:90:\"index.php?category_name=$matches[1]&author_name=$matches[2]&p=$matches[3]&feed=$matches[4]\";s:43:\"(.+?)/([^/]+)/([0-9]+)/page/?([0-9]{1,})/?$\";s:91:\"index.php?category_name=$matches[1]&author_name=$matches[2]&p=$matches[3]&paged=$matches[4]\";s:50:\"(.+?)/([^/]+)/([0-9]+)/comment-page-([0-9]{1,})/?$\";s:91:\"index.php?category_name=$matches[1]&author_name=$matches[2]&p=$matches[3]&cpage=$matches[4]\";s:39:\"(.+?)/([^/]+)/([0-9]+)(?:/([0-9]+))?/?$\";s:90:\"index.php?category_name=$matches[1]&author_name=$matches[2]&p=$matches[3]&page=$matches[4]\";s:27:\".+?/[^/]+/[0-9]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".+?/[^/]+/[0-9]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".+?/[^/]+/[0-9]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".+?/[^/]+/[0-9]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".+?/[^/]+/[0-9]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".+?/[^/]+/[0-9]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:46:\"(.+?)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:76:\"index.php?category_name=$matches[1]&author_name=$matches[2]&feed=$matches[3]\";s:41:\"(.+?)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:76:\"index.php?category_name=$matches[1]&author_name=$matches[2]&feed=$matches[3]\";s:22:\"(.+?)/([^/]+)/embed/?$\";s:70:\"index.php?category_name=$matches[1]&author_name=$matches[2]&embed=true\";s:34:\"(.+?)/([^/]+)/page/?([0-9]{1,})/?$\";s:77:\"index.php?category_name=$matches[1]&author_name=$matches[2]&paged=$matches[3]\";s:41:\"(.+?)/([^/]+)/comment-page-([0-9]{1,})/?$\";s:77:\"index.php?category_name=$matches[1]&author_name=$matches[2]&cpage=$matches[3]\";s:16:\"(.+?)/([^/]+)/?$\";s:59:\"index.php?category_name=$matches[1]&author_name=$matches[2]\";s:38:\"(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:14:\"(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:26:\"(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:33:\"(.+?)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&cpage=$matches[2]\";s:8:\"(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:11:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:19:\"akismet/akismet.php\";i:2;s:53:\"child-theme-configurator/child-theme-configurator.php\";i:3;s:36:\"contact-form-7/wp-contact-form-7.php\";i:4;s:63:\"elegant-responsive-content-slider/responsive-content-slider.php\";i:5;s:9:\"hello.php\";i:6;s:13:\"pods/init.php\";i:7;s:23:\"wordfence/wordfence.php\";i:8;s:24:\"wordpress-seo/wp-seo.php\";i:9;s:59:\"wp-responsive-jquery-slider/wp-responsive-jquery-slider.php\";i:10;s:41:\"wp-turbolinks-5-master/wp-turbolinks5.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:70:\"C:\\xampp\\htdocs\\wordpress07/wp-content/themes/blankslate/functions.php\";i:2;s:66:\"C:\\xampp\\htdocs\\wordpress07/wp-content/themes/blankslate/style.css\";i:3;s:76:\"C:\\xampp\\htdocs\\wordpress07/wp-content/themes/blankslate-child/functions.php\";i:4;s:72:\"C:\\xampp\\htdocs\\wordpress07/wp-content/themes/blankslate-child/style.css\";i:5;s:0:\"\";}', 'no'),
(40, 'template', 'blankslate', 'yes'),
(41, 'stylesheet', 'blankslate-child', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:3:{s:53:\"child-theme-configurator/child-theme-configurator.php\";s:22:\"chld_thm_cfg_uninstall\";s:59:\"wp-responsive-jquery-slider/wp-responsive-jquery-slider.php\";s:21:\"wrjs_uninstall_slider\";s:24:\"wordpress-seo/wp-seo.php\";s:14:\"__return_false\";}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1696146958', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:65:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:23:\"wf2fa_activate_2fa_self\";b:1;s:25:\"wf2fa_activate_2fa_others\";b:1;s:21:\"wf2fa_manage_settings\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:38:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;s:23:\"view_site_health_checks\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'user_count', '2', 'no'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:19:\"primary-widget-area\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:13:{i:1684241759;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1684242980;a:1:{s:21:\"wordfence_ls_ntp_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1684242987;a:1:{s:21:\"wordfence_hourly_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1684266959;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1684266970;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1684310159;a:2:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1684310170;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1684310266;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1684311320;a:2:{s:24:\"tribe_common_log_cleanup\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:16:\"tribe_daily_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1684311387;a:1:{s:20:\"wordfence_daily_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1684312023;a:2:{s:13:\"wpseo-reindex\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:31:\"wpseo_permalink_structure_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1684771200;a:1:{s:31:\"wordfence_email_activity_report\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(121, 'recovery_keys', 'a:0:{}', 'yes'),
(122, 'theme_mods_twentytwentythree', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1680595810;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(124, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}', 'yes'),
(125, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.2.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-6.2-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"6.2\";s:7:\"version\";s:3:\"6.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1684239874;s:15:\"version_checked\";s:3:\"6.2\";s:12:\"translations\";a:0:{}}', 'no'),
(130, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1684239881;s:7:\"checked\";a:5:{s:16:\"blankslate-child\";s:15:\"2023.1680596275\";s:10:\"blankslate\";s:4:\"2023\";s:15:\"twentytwentyone\";s:3:\"1.8\";s:17:\"twentytwentythree\";s:3:\"1.1\";s:15:\"twentytwentytwo\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:4:{s:10:\"blankslate\";a:6:{s:5:\"theme\";s:10:\"blankslate\";s:11:\"new_version\";i:2023;s:3:\"url\";s:40:\"https://wordpress.org/themes/blankslate/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/theme/blankslate.2023.zip\";s:8:\"requires\";s:3:\"5.2\";s:12:\"requires_php\";s:3:\"7.0\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.8.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.1.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.4.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(134, 'finished_updating_comment_type', '1', 'yes'),
(143, 'can_compress_scripts', '1', 'no'),
(154, 'current_theme', 'COVID19_Indonesia Child', 'yes'),
(155, 'theme_mods_blankslate', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:9:\"main-menu\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1680596283;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:19:\"primary-widget-area\";a:0:{}}}}', 'yes'),
(156, 'theme_switched', '', 'yes'),
(160, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(161, 'recently_activated', 'a:0:{}', 'yes'),
(162, 'wpcf7', 'a:2:{s:7:\"version\";s:7:\"5.7.5.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1680596044;s:7:\"version\";s:7:\"5.7.5.1\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(163, 'wpdevart_forms_plugin_version', '1.2.8', 'yes'),
(164, 'widget_akismet_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(165, 'acf_version', '6.1.1', 'yes'),
(168, 'pods_framework_upgraded_1_x', '2', 'yes'),
(169, 'pods_framework_version_first', '2.9.13', 'yes'),
(174, 'pods_component_settings', '{\"components\":{\"templates\":[],\"migrate-packages\":[]}}', 'yes'),
(175, 'pods_framework_version', '2.9.13', 'yes'),
(176, 'pods_framework_db_version', '2.3.5', 'yes'),
(199, 'widget_pods_widget_single', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(200, 'widget_pods_widget_list', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(201, 'widget_pods_widget_field', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(202, 'widget_pods_widget_form', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(203, 'widget_pods_widget_view', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(219, 'wisdom_notification_times', 'a:1:{s:4:\"pods\";i:1680596123;}', 'yes'),
(224, 'wordfence_ls_version', '1.1.2', 'yes'),
(225, 'wfls_last_role_change', '1680596170', 'no'),
(226, 'wordfence_version', '7.9.2', 'yes'),
(227, 'wordfence_case', '1', 'yes'),
(228, 'wordfence_installed', '1', 'yes'),
(229, 'wordfenceActivated', '1', 'yes'),
(230, 'wf_plugin_act_error', '', 'yes'),
(237, 'get_settings_option', 'a:11:{s:10:\"width_wrjs\";s:3:\"960\";s:12:\"caption_wrjs\";s:3:\"yes\";s:11:\"height_wrjs\";s:3:\"350\";s:11:\"effect_wrjs\";s:5:\"slide\";s:14:\"direction_wrjs\";s:8:\"vertical\";s:9:\"post_wrjs\";s:6:\"vslide\";s:10:\"delay_wrjs\";s:4:\"5000\";s:13:\"duration_wrjs\";s:3:\"600\";s:19:\"show_panel_nav_wrjs\";s:1:\"1\";s:10:\"start_wrjs\";i:1;s:17:\"pauseOnHover_wrjs\";s:1:\"1\";}', 'yes'),
(240, 'chld_thm_cfg_options_configvars', 'a:40:{s:8:\"addl_css\";N;s:8:\"forcedep\";N;s:8:\"swappath\";N;s:8:\"cssunreg\";N;s:9:\"csswphead\";N;s:10:\"cssnotheme\";N;s:7:\"reorder\";N;s:10:\"parnt_deps\";N;s:10:\"child_deps\";a:1:{i:0;s:16:\"blankslate-style\";}s:9:\"hasstyles\";i:1;s:11:\"parntloaded\";N;s:11:\"childloaded\";s:16:\"blankslate-style\";s:11:\"ignoreparnt\";N;s:9:\"qpriority\";i:10;s:9:\"mpriority\";i:10;s:7:\"enqueue\";s:7:\"enqueue\";s:8:\"handling\";s:7:\"primary\";s:9:\"templates\";a:21:{i:0;s:7:\"404.php\";i:1;s:11:\"archive.php\";i:2;s:14:\"attachment.php\";i:3;s:10:\"author.php\";i:4;s:12:\"category.php\";i:5;s:12:\"comments.php\";i:6;s:17:\"entry-content.php\";i:7;s:16:\"entry-footer.php\";i:8;s:14:\"entry-meta.php\";i:9;s:17:\"entry-summary.php\";i:10;s:9:\"entry.php\";i:11;s:10:\"footer.php\";i:12;s:10:\"header.php\";i:13;s:9:\"index.php\";i:14;s:20:\"nav-below-single.php\";i:15;s:13:\"nav-below.php\";i:16;s:8:\"page.php\";i:17;s:10:\"search.php\";i:18;s:11:\"sidebar.php\";i:19;s:10:\"single.php\";i:20;s:7:\"tag.php\";}s:7:\"max_sel\";N;s:7:\"imports\";a:2:{s:5:\"child\";a:0:{}s:5:\"parnt\";a:1:{s:60:\"@import url(https://fonts.googleapis.com/css?family=Poppins)\";i:1;}}s:13:\"child_version\";s:4:\"2023\";s:12:\"child_author\";s:10:\"TidyThemes\";s:10:\"child_name\";s:23:\"COVID19_Indonesia Child\";s:14:\"child_themeuri\";s:40:\"https://github.com/tidythemes/blankslate\";s:15:\"child_authoruri\";s:29:\"https://github.com/tidythemes\";s:11:\"child_descr\";s:734:\"Donations: https://calmestghost.com/donate. BlankSlate is the definitive WordPress boilerplate starter theme. We\\\'ve carefully constructed the most clean and minimalist theme possible for designers and developers to use as a base to build websites for clients or to build completely custom themes from scratch. Clean, simple, unstyled, semi-minified, unformatted, and valid code, SEO-friendly, jQuery-enabled, no programmer comments, standardized and as white label as possible, and most importantly, the CSS is reset for cross-browser-compatability and no intrusive visual CSS styles have been added whatsoever. A perfect skeleton theme. For support and suggestions, go to: https://github.com/tidythemes/blankslate/issues. Thank you.\";s:10:\"child_tags\";s:131:\"accessibility-ready,one-column,two-columns,custom-menu,featured-images,microformats,sticky-post,threaded-comments,translation-ready\";s:5:\"parnt\";s:10:\"blankslate\";s:5:\"child\";s:16:\"blankslate-child\";s:10:\"configtype\";s:5:\"theme\";s:6:\"valkey\";i:89;s:7:\"rulekey\";i:48;s:5:\"qskey\";i:124;s:6:\"selkey\";i:67;s:8:\"querykey\";i:3;s:8:\"tokenkey\";N;s:6:\"recent\";N;s:9:\"converted\";i:1;s:5:\"fsize\";i:1117;s:7:\"version\";s:5:\"2.6.0\";}', 'no'),
(241, 'chld_thm_cfg_options_dict_qs', 'a:124:{i:1;s:3:\"1:1\";i:2;s:3:\"1:2\";i:3;s:3:\"1:3\";i:4;s:3:\"1:4\";i:5;s:3:\"1:5\";i:6;s:3:\"1:6\";i:7;s:3:\"1:7\";i:8;s:3:\"1:8\";i:9;s:3:\"1:9\";i:10;s:4:\"1:10\";i:11;s:4:\"1:11\";i:12;s:4:\"1:12\";i:13;s:4:\"1:13\";i:14;s:4:\"1:14\";i:15;s:4:\"1:15\";i:16;s:4:\"1:16\";i:17;s:4:\"1:17\";i:18;s:4:\"1:18\";i:19;s:4:\"1:19\";i:20;s:4:\"1:20\";i:21;s:4:\"1:21\";i:22;s:4:\"1:22\";i:23;s:4:\"1:23\";i:24;s:4:\"1:24\";i:25;s:4:\"1:25\";i:26;s:4:\"1:26\";i:27;s:4:\"1:27\";i:28;s:4:\"1:28\";i:29;s:4:\"1:29\";i:30;s:4:\"1:30\";i:31;s:4:\"1:31\";i:32;s:4:\"1:32\";i:33;s:3:\"2:1\";i:34;s:3:\"2:2\";i:35;s:3:\"2:3\";i:36;s:3:\"2:4\";i:37;s:3:\"2:5\";i:38;s:4:\"2:33\";i:39;s:3:\"2:6\";i:40;s:3:\"2:7\";i:41;s:3:\"2:8\";i:42;s:3:\"2:9\";i:43;s:4:\"2:10\";i:44;s:4:\"2:11\";i:45;s:4:\"2:12\";i:46;s:4:\"2:13\";i:47;s:4:\"2:14\";i:48;s:4:\"2:15\";i:49;s:4:\"2:16\";i:50;s:4:\"2:17\";i:51;s:4:\"2:18\";i:52;s:4:\"2:34\";i:53;s:4:\"2:19\";i:54;s:4:\"2:20\";i:55;s:4:\"2:21\";i:56;s:4:\"2:22\";i:57;s:4:\"2:23\";i:58;s:4:\"2:35\";i:59;s:4:\"2:36\";i:60;s:4:\"2:27\";i:61;s:4:\"2:29\";i:62;s:4:\"2:30\";i:63;s:4:\"2:31\";i:64;s:4:\"2:32\";i:65;s:4:\"3:37\";i:66;s:3:\"3:1\";i:67;s:3:\"3:2\";i:68;s:3:\"3:3\";i:69;s:4:\"3:38\";i:70;s:4:\"3:39\";i:71;s:4:\"3:40\";i:72;s:4:\"3:41\";i:73;s:3:\"3:4\";i:74;s:4:\"3:42\";i:75;s:4:\"3:43\";i:76;s:4:\"3:44\";i:77;s:4:\"3:11\";i:78;s:4:\"3:12\";i:79;s:4:\"3:45\";i:80;s:4:\"3:46\";i:81;s:4:\"3:47\";i:82;s:4:\"3:48\";i:83;s:3:\"3:6\";i:84;s:4:\"3:49\";i:85;s:3:\"3:7\";i:86;s:3:\"3:8\";i:87;s:3:\"3:9\";i:88;s:4:\"3:18\";i:89;s:4:\"3:10\";i:90;s:4:\"3:13\";i:91;s:4:\"3:15\";i:92;s:4:\"3:16\";i:93;s:4:\"3:50\";i:94;s:3:\"3:5\";i:95;s:4:\"3:51\";i:96;s:4:\"3:52\";i:97;s:4:\"3:53\";i:98;s:4:\"3:54\";i:99;s:4:\"3:34\";i:100;s:4:\"3:55\";i:101;s:4:\"3:56\";i:102;s:4:\"3:19\";i:103;s:4:\"3:20\";i:104;s:4:\"3:21\";i:105;s:4:\"3:23\";i:106;s:4:\"3:57\";i:107;s:4:\"3:58\";i:108;s:4:\"3:22\";i:109;s:4:\"3:59\";i:110;s:4:\"3:60\";i:111;s:4:\"3:24\";i:112;s:4:\"3:26\";i:113;s:4:\"3:28\";i:114;s:4:\"3:27\";i:115;s:4:\"3:29\";i:116;s:4:\"3:61\";i:117;s:4:\"3:62\";i:118;s:4:\"3:63\";i:119;s:4:\"3:30\";i:120;s:4:\"3:64\";i:121;s:4:\"3:31\";i:122;s:4:\"3:65\";i:123;s:4:\"3:66\";i:124;s:4:\"3:67\";}', 'no'),
(242, 'chld_thm_cfg_options_dict_sel', 'a:67:{i:1;s:13:\".content-page\";i:2;s:4:\".nav\";i:3;s:14:\".nav .logo img\";i:4;s:4:\".btn\";i:5;s:13:\".content-news\";i:6;s:14:\".first-page h1\";i:7;s:79:\"h1 .txt1:hover, .txt2:hover, .txt3:hover, .txt4:hover, .txt5:hover, .txt6:hover\";i:8;s:19:\".first-page .slogan\";i:9;s:27:\".first-page .slogan::before\";i:10;s:33:\".first-page .slogan:hover::before\";i:11;s:5:\".drop\";i:12;s:7:\".drop a\";i:13;s:13:\".second-words\";i:14;s:12:\".trend-title\";i:15;s:5:\".text\";i:16;s:14:\".second-slogan\";i:17;s:15:\".option-content\";i:18;s:13:\".date-created\";i:19;s:10:\".news .img\";i:20;s:32:\".news .title-content .title-news\";i:21;s:31:\".news .title-content .desc-news\";i:22;s:11:\".desc-event\";i:23;s:11:\".third-page\";i:24;s:19:\".event .title-event\";i:25;s:20:\".editor .title-event\";i:26;s:18:\".event .event-date\";i:27;s:10:\".foot-desc\";i:28;s:6:\"footer\";i:29;s:12:\"footer .join\";i:30;s:10:\".copyright\";i:31;s:24:\".social-media-icon a img\";i:32;s:18:\".social-media-icon\";i:33;s:16:\".nav-bar .drop a\";i:34;s:5:\".news\";i:35;s:28:\".event, .editor .title-event\";i:36;s:27:\".event, .editor .event-date\";i:37;s:4:\"body\";i:38;s:8:\".nav-bar\";i:39;s:11:\".nav-bar ul\";i:40;s:5:\"ul li\";i:41;s:7:\"ul li a\";i:42;s:12:\".btn::before\";i:43;s:18:\".btn:hover::before\";i:44;s:10:\".btn.click\";i:45;s:15:\".drop a::before\";i:46;s:21:\".drop a:hover::before\";i:47;s:21:\".nav-bar .drop.active\";i:48;s:11:\".first-page\";i:49;s:43:\"h1 .txt1, .txt2, .txt3, .txt4, .txt5, .txt6\";i:50;s:22:\".option-content, .news\";i:51;s:26:\".trend-title, .event-title\";i:52;s:20:\".trend-title::before\";i:53;s:20:\".event-title::before\";i:54;s:54:\".trend-title:hover::before, .event-title:hover::before\";i:55;s:11:\".news:hover\";i:56;s:13:\".news-content\";i:57;s:6:\".event\";i:58;s:7:\".editor\";i:59;s:12:\".event:hover\";i:60;s:13:\".editor:hover\";i:61;s:7:\".social\";i:62;s:5:\".join\";i:63;s:13:\".join::before\";i:64;s:29:\".foot-desc .social-media-icon\";i:65;s:12:\".logo a .img\";i:66;s:19:\".logo-goggle a .img\";i:67;s:20:\".logo-twitter a .img\";}', 'no'),
(243, 'chld_thm_cfg_options_dict_query', 'a:3:{i:1;s:42:\"@media only screen and (max-width: 1440px)\";i:2;s:41:\"@media only screen and (max-width: 576px)\";i:3;s:4:\"base\";}', 'no'),
(244, 'chld_thm_cfg_options_dict_rule', 'a:48:{i:1;s:10:\"margin-top\";i:2;s:12:\"margin-right\";i:3;s:13:\"margin-bottom\";i:4;s:11:\"margin-left\";i:5;s:9:\"font-size\";i:6;s:11:\"padding-top\";i:7;s:13:\"padding-right\";i:8;s:14:\"padding-bottom\";i:9;s:12:\"padding-left\";i:10;s:5:\"width\";i:11;s:6:\"height\";i:12;s:7:\"display\";i:13;s:14:\"flex-direction\";i:14;s:7:\"content\";i:15;s:8:\"position\";i:16;s:10:\"transition\";i:17;s:16:\"background-color\";i:18;s:3:\"top\";i:19;s:11:\"line-height\";i:20;s:11:\"align-items\";i:21;s:15:\"justify-content\";i:22;s:14:\"text-transform\";i:23;s:14:\"letter-spacing\";i:24;s:7:\"z-index\";i:25;s:15:\"backdrop-filter\";i:26;s:23:\"-webkit-backdrop-filter\";i:27;s:6:\"border\";i:28;s:10:\"list-style\";i:29;s:5:\"color\";i:30;s:15:\"text-decoration\";i:31;s:10:\"text-align\";i:32;s:7:\"outline\";i:33;s:6:\"cursor\";i:34;s:6:\"bottom\";i:35;s:7:\"opacity\";i:36;s:3:\"gap\";i:37;s:11:\"text-shadow\";i:38;s:11:\"perspective\";i:39;s:9:\"transform\";i:40;s:21:\"grid-template-columns\";i:41;s:11:\"font-weight\";i:42;s:13:\"border-radius\";i:43;s:10:\"box-shadow\";i:44;s:15:\"background-size\";i:45;s:19:\"background-position\";i:46;s:10:\"object-fit\";i:47;s:11:\"border-left\";i:48;s:4:\"left\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(245, 'chld_thm_cfg_options_dict_val', 'a:89:{i:1;s:1:\"0\";i:2;s:4:\"3rem\";i:3;s:3:\"9px\";i:4;s:5:\"100px\";i:5;s:4:\"40px\";i:6;s:5:\"-1rem\";i:7;s:4:\"flex\";i:8;s:4:\"100%\";i:9;s:6:\"column\";i:10;s:5:\"144px\";i:11;s:5:\"-3rem\";i:12;s:4:\"10px\";i:13;s:2:\"\"\"\";i:14;s:8:\"absolute\";i:15;s:13:\"all 0.5s ease\";i:16;s:3:\"1px\";i:17;s:4:\"15px\";i:18;s:6:\"-13rem\";i:19;s:7:\"#c93716\";i:20;s:4:\"2rem\";i:21;s:4:\"24px\";i:22;s:3:\"8px\";i:23;s:6:\"-10rem\";i:24;s:4:\"12px\";i:25;s:4:\"1rem\";i:26;s:4:\"14px\";i:27;s:4:\"17px\";i:28;s:5:\"10rem\";i:29;s:6:\"center\";i:30;s:13:\"space-between\";i:31;s:5:\"15rem\";i:32;s:9:\"uppercase\";i:33;s:3:\"2px\";i:34;s:7:\"-0.2rem\";i:35;s:3:\"4px\";i:36;s:5:\"110px\";i:37;s:5:\"200px\";i:38;s:7:\"#fafafa\";i:39;s:3:\"999\";i:40;s:6:\"sticky\";i:41;s:25:\"rgba(250, 250, 250, 0.14)\";i:42;s:11:\"blur(2.8px)\";i:43;s:35:\"1px solid rgba(250, 250, 250, 0.12)\";i:44;s:3:\"5px\";i:45;s:5:\"170px\";i:46;s:4:\"70px\";i:47;s:8:\"relative\";i:48;s:11:\"inline-flex\";i:49;s:4:\"none\";i:50;s:7:\"#252525\";i:51;s:7:\"pointer\";i:52;s:4:\"-4px\";i:53;s:9:\"0.5s ease\";i:54;s:1:\"1\";i:55;s:3:\"end\";i:56;s:24:\"opacity 0.2s ease-in-out\";i:57;s:3:\"0.7\";i:58;s:6:\"0.5rem\";i:59;s:34:\"7px 8px 12px rgba(27, 27, 27, 0.6)\";i:60;s:5:\"300px\";i:61;s:6:\"1000px\";i:62;s:9:\"0.2s ease\";i:63;s:5:\"-7rem\";i:64;s:14:\"rotateY(45deg)\";i:65;s:4:\"30px\";i:66;s:6:\"-20rem\";i:67;s:3:\"0.5\";i:68;s:5:\"20rem\";i:69;s:4:\"25px\";i:70;s:4:\"18px\";i:71;s:4:\"grid\";i:72;s:7:\"1fr 1fr\";i:73;s:4:\"22px\";i:74;s:3:\"600\";i:75;s:4:\"32px\";i:76;s:4:\"-8px\";i:77;s:11:\"scale(1.02)\";i:78;s:38:\"0 1px 31px -9px rgba(37, 37, 37, 0.58)\";i:79;s:5:\"cover\";i:80;s:4:\"4rem\";i:81;s:17:\"1px solid #252525\";i:82;s:7:\"lighter\";i:83;s:5:\"-5rem\";i:84;s:7:\"#e6e6e6\";i:85;s:5:\"-12px\";i:86;s:6:\"1.5rem\";i:87;s:4:\"16px\";i:88;s:4:\"20px\";i:89;s:0:\"\";}', 'no'),
(246, 'chld_thm_cfg_options_dict_seq', 'a:0:{}', 'no'),
(247, 'chld_thm_cfg_options_dict_token', 'a:0:{}', 'no'),
(248, 'chld_thm_cfg_options_val_ndx', 'a:124:{i:1;s:50:\"YE=hT?IUZA$A;}BtlBqI:$vbKARtmBJHNznEuW:CqI:$vbKAQA\";i:2;s:56:\"wP=hT?GU5A$A@CSOYMtOBt=J_Q3nE3UAgApBJHNzWHuWeGqI:$vbKAQA\";i:3;s:23:\"zd=hT?GU/A$A`CSOYMifBtA\";i:4;s:12:\"sP=hT?GU5A$A\";i:5;s:46:\"YE=hT?GUOBlB,L.4Fxs@BANc=hT?GUuBlB;L.4FxrjCABA\";i:6;s:13:\"sP=hT?GU>BlBA\";i:7;s:13:\"VE=hT?GUDClBA\";i:8;s:13:\"sP=hT?GUTClBA\";i:9;s:79:\"?o=hT?GUjClB^L.4Fx~5DACt=hT?GU(ClB#L.4Fx}MEA|e=hT?GUIDlBnL.4Fx~5EA<v=hT?GUoDlBA\";i:10;s:13:\"hg=hT?GUuBlBA\";i:11;s:24:\"!M=hT?GU4DlBEM.4FxrjFABA\";i:12;s:13:\"sP=hT?GU}DlBA\";i:13;s:13:\"VE=hT?GUNElBA\";i:14;s:13:\"sP=hT?GUdElBA\";i:15;s:13:\"sP=hT?GUdElBA\";i:16;s:13:\"sP=hT?GUTClBA\";i:17;s:13:\"VE=hT?GUNElBA\";i:18;s:13:\"sP=hT?GU}DlBA\";i:19;s:13:\"EH=hT?GUtElBA\";i:20;s:24:\"?J=hT?GUtElBrL.4Fx~5GABA\";i:21;s:24:\"@2=hT?GU=ElBrL.4Fx}MDABA\";i:22;s:13:\"sP=hT?GUTClBA\";i:23;s:46:\"YE=hT?GUCFlBfL.4FxrjAApI=hT?GUCFlBnL.4FxrjAABA\";i:24;s:13:\"sP=hT?GUdElBA\";i:25;s:13:\"sP=hT?GUdElBA\";i:26;s:13:\"sP=hT?GUTClBA\";i:27;s:79:\"hS=hT?GU4DlBzL.4Fx}MFAvW=hT?GU4DlB7L.4Fx}MFAZ4=hT?GUSFlBQM.4Fx~5HA+h=hT?GUeBlBA\";i:28;s:45:\"eS=hT?GUZA$A[CSOYM@1CtXL_Q3nE3MAi\"pBJHNz{,uWA\";i:29;s:35:\"e#=hT?GU&FlBrL.4Fx}MDA%$=hT?GU]FlBA\";i:30;s:24:\"WE=hT?GUHGlBrL.4Fx}MDABA\";i:31;s:24:\"FH=hT?GUTClBbL.4FxrjGABA\";i:32;s:13:\"9M=hT?GUXGlBA\";i:33;s:50:\"YE=hT?IUZA$A;}BtlBqI:$vb]ARtmBJHNznEuW:CqI:$vb]AQA\";i:34;s:56:\"wP=hT?GU5A$A@CSOYM)ZCt=J_Q3nE3/B$A]CSOYM)ZCt8M_Q3nE3/B$A\";i:35;s:23:\"zd=hT?GU/A$A`CSOYMifBtA\";i:36;s:12:\"sP=hT?GU5A$A\";i:37;s:46:\"YE=hT?GUOBlB,L.4Fxs@BANc=hT?GUuBlB;L.4FxrjCABA\";i:38;s:46:\"Tj=hT?GUeBlB;L.4FxrjCAI7=hT?GUSFlBMM.4FxrjHABA\";i:39;s:13:\"sP=hT?GUnGlBA\";i:40;s:13:\"VE=hT?GUDClBA\";i:41;s:13:\"sP=hT?GU}DlBA\";i:42;s:79:\"?o=hT?GUjClB^L.4Fx~5DACt=hT?GU(ClB#L.4Fx}MEA|e=hT?GUIDlBnL.4Fxs@FA<v=hT?GUoDlBA\";i:43;s:13:\"hg=hT?GUuBlBA\";i:44;s:24:\"!M=hT?GU4DlBEM.4FxrjFABA\";i:45;s:13:\"sP=hT?GU}DlBA\";i:46;s:13:\"VE=hT?GUNElBA\";i:47;s:13:\"sP=hT?GUTClBA\";i:48;s:13:\"sP=hT?GUTClBA\";i:49;s:13:\"sP=hT?GU}DlBA\";i:50;s:13:\"VE=hT?GUNElBA\";i:51;s:13:\"sP=hT?GU}DlBA\";i:52;s:13:\"\"l=hT?GU!BlBA\";i:53;s:72:\"mg=hT?GU3GlB#L.4Fx}MCA;C=hT?GUZA$A<CSOYM@1CtUE_Q3nF3MAi\"}juWlBVElg*NzAIA\";i:54;s:24:\"?J=hT?GUtElBrL.4Fx}MGABA\";i:55;s:24:\"@2=hT?GU=ElBrL.4Fx}MDABA\";i:56;s:13:\"sP=hT?GUTClBA\";i:57;s:13:\"VE=hT?GUCFlBA\";i:58;s:13:\"sP=hT?GUTClBA\";i:59;s:13:\"sP=hT?GU}DlBA\";i:60;s:79:\"hS=hT?GU4DlBzL.4Fx}MFAvW=hT?GU4DlB7L.4Fx}MFAZ4=hT?GUSFlBQM.4Fx~5HA+h=hT?GUeBlBA\";i:61;s:35:\"e#=hT?GU&FlBrL.4Fx~5FA%$=hT?GU]FlBA\";i:62;s:24:\"WE=hT?GUHGlBrL.4Fx~5FABA\";i:63;s:24:\"FH=hT?GUTClBbL.4FxrjGABA\";i:64;s:13:\"9M=hT?GUXGlBA\";i:65;s:13:\"Wx=hT?GU,GlBA\";i:66;s:45:\"YE=hT?GUZA$A<CSOYM*+CtUE_Q3nE3MAgAnBJHNzj@uWA\";i:67;s:166:\"I*=hT?GU|GlB^L.4Fx}MKA7y=hT?GUZA$ADDSOYMj<Ct@Q_Q3nE38Ai\"vBJHNzB{uWUEqI:$vbKARtoBJHNzj@uW5FqI:$vbKARtpBJHNzj@uWvDqI:$vbLBi\"tBJHNz`avW1RqI:$vb?BgAyBJHNz)dvW\"SqI:$vb^BgA\";i:68;s:35:\"XE=hT?GU<HlB#L.4FxrjLA|e=hT?GURIlBA\";i:69;s:13:\"4r=hT?GUhIlBA\";i:70;s:35:\"Sj=hT?GUxIlBMM.4FxrjHAI7=hT?GUSFlBA\";i:71;s:13:\"R@=hT?GU%IlBA\";i:72;s:24:\"B^=hT?GU[IlB0M.4FxrjMABA\";i:73;s:79:\"#}=hT?GUSFlB8M.4FxrjMAYL=hT?GU4DlBoM.4FxrjMA;C>hT?GUGJlBrL.4FxrjGATq=hT?GUhIlBA\";i:74;s:79:\"?o=hT?GUjClB#L.4FxrjAA|e=hT?GU]FlBAM.4Fx~5MATq=hT?GUzClB)M.4Fx}MNACt=hT?GUmJlBA\";i:75;s:24:\"ou=hT?GUmJlB#L.4Fx}MCABA\";i:76;s:13:\">J>hT?GU2JlBA\";i:77;s:213:\"oCR**\",ub@WK5FPzLvSQ[zBAG\"$(k)NoRT:CzXzXJI|+DAwW$(k)NoxT:C9ZzXJI|+MAP/#(k)NohD:C>WzXJI{ZKA7F$(k)No4O:C$YzXJI{ZVAa4$(k)No}O:C@YzXJI|+VA,h#(k)No\"I:CLXzXJI|+MADt#(k)No\"I:CbXzXJI|+MAZL$(k)NoVH:CjXzXJI{ZEAE\"=hT?GU{JlBA\";i:78;s:79:\"bE>hT?GUGJlB.M.4FxrjOAU|=hT?GU+JlBrL.4FxrjGATq=hT?GUhIlBwM.4Fx~5MAl_=hT?GU%IlBA\";i:79;s:90:\"@o=hT?GUjClB#L.4FxrjAA|e=hT?GU]FlBAM.4Fx~5MATq=hT?GUzClB)M.4Fx}MNApI>hT?GULKlB|L.4FxrjNABA\";i:80;s:24:\"zd=hT?GUuBlB.M.4Fx~5NABA\";i:81;s:13:\">J>hT?GU2JlBA\";i:82;s:46:\"YE=hT?GUbKlB^L.4Fxs@LA+h=hT?GUeBlB;L.4FxrjCABA\";i:83;s:79:\"yP>hT?GUrKlBrL.4Fx}MPA;C=hT?GUtElB,L.4Fxs@BAI7=hT?GUSFlBMM.4FxrjHA[Q>hT?GU;KlBA\";i:84;s:13:\"nu=hT?GUALlBA\";i:85;s:24:\"WE=hT?GUQLlB}M.4Fx}MQABA\";i:86;s:46:\"Tj=hT?GUeBlB^L.4Fxs@LAI7=hT?GUSFlBMM.4FxrjHABA\";i:87;s:79:\"?o=hT?GUjClB^L.4Fx~5DACt=hT?GU(ClB#L.4FxrjIA|e=hT?GUwLlBnL.4Fx~5QA<v=hT?GUoDlBA\";i:88;s:57:\"ZE=hT?GU}DlBrL.4Fx}MGA+h=hT?GUeBlB<M.4Fx~5AApI>hT?GU@LlBA\";i:89;s:13:\"hg=hT?GUuBlBA\";i:90;s:13:\"VE=hT?GUFMlBA\";i:91;s:24:\"6}=hT?GUSFlBrL.4FxrjRABA\";i:92;s:46:\"8}=hT?GUSFlBbL.4Fx}MLAHO=hT?GUlMlB.M.4FxrjOABA\";i:93;s:35:\"Sj=hT?GUeBlBQM.4Fx~5HAZ4=hT?GUSFlBA\";i:94;s:45:\"YE=hT?GUOBlB,L.4Fxs@RAYL>hT?GUpA$AXDSOYMXwFtA\";i:95;s:78:\"yP=hT?GU`MlBFN.4Fx~5SA;C=hT?GUpA$A<CSOYM?IBtUE_Q3nE3UAgAnBJHNznEuWyKqI:$vbICgA\";i:96;s:79:\"?o=hT?GUjClB^L.4Fx~5DACt=hT?GU(ClB#L.4Fxs@SA6F>hT?GUqNlB(L.4FxrjIA<v=hT?GU[IlBA\";i:97;s:79:\"?o=hT?GUjClB^L.4Fx~5DACt=hT?GU(ClB#L.4Fxs@SA|e=hT?GU]FlB)M.4Fx}MTA<v=hT?GU[IlBA\";i:98;s:13:\"yd=hT?GUuBlBA\";i:99;s:90:\"uu=hT?GUmJlB,L.4Fxs@BA<v=hT?GU,GlBJN.4Fx}MGA[Q=hT?GUtElBzL.4FxrjGAvW=hT?GUtElB7L.4FxrjGABA\";i:100;s:24:\"LV>hT?GU6NlBNN.4Fx~5TABA\";i:101;s:46:\"YE=hT?GUCFlBfL.4FxrjAApI=hT?GUCFlBnL.4FxrjAABA\";i:102;s:79:\"4d=hT?GU3GlB(L.4Fx}MCA+h>hT?GU\"NlBVN.4FxrjHAkn>hT?GU\"NlBfL.4Fx}MFANc>hT?GU}DlBA\";i:103;s:24:\"tP=hT?GUlMlBjL.4FxrjGABA\";i:104;s:24:\"?J>hT?GULKlBrL.4Fx~5GABA\";i:105;s:46:\"YE=hT?GUPOlBfL.4FxrjAApI=hT?GUPOlBnL.4FxrjAABA\";i:106;s:123:\"&r=hT?GUhIlB,L.4Fxs@BA<v=hT?GU,GlBJN.4Fx}MGA[Q=hT?GUtElBzL.4FxrjGAvW=hT?GUtElB7L.4FxrjGACt=hT?GUmJlBdN.4FxrjUA1k=hT?GU!BlBA\";i:107;s:112:\"%r=hT?GUhIlB,L.4Fxs@BA<v=hT?GU,GlBJN.4Fx}MGA[Q=hT?GUtElBzL.4FxrjGAvW=hT?GUtElB7L.4FxrjGACt=hT?GUmJlB;L.4FxrjCABA\";i:108;s:24:\"tP=hT?GU9ElBbL.4Fx~5FABA\";i:109;s:35:\"MV>hT?GU6NlBNN.4Fx~5TA};=hT?GUfOlBA\";i:110;s:24:\"LV>hT?GU6NlBNN.4Fx~5TABA\";i:111;s:13:\"sP=hT?GUIDlBA\";i:112;s:35:\"@J>hT?GULKlBFN.4Fx~5UAHO=hT?GU}DlBA\";i:113;s:57:\"ZE=hT?GU#OlB#L.4Fx}MCATq=hT?GUhIlBAM.4Fx~5MA2[=hT?GU?OlBA\";i:114;s:68:\"gS=hT?GU4DlBzL.4Fx}MHAvW=hT?GU4DlB7L.4Fx}MHAI7=hT?GUiFlB,L.4Fxs@BABA\";i:115;s:46:\"f#=hT?GU&FlBrL.4FxrjEATq=hT?GUhIlBYM.4FxrjIABA\";i:116;s:24:\"Rj=hT?GUeBlB;L.4FxrjCABA\";i:117;s:13:\"9M=hT?GUtElBA\";i:118;s:68:\">o=hT?GUjClBAM.4Fxs@EANc=hT?GU]FlB(L.4Fx}MCACt>hT?GUEPlB^L.4Fx~5DABA\";i:119;s:46:\"YE=hT?GUTClBFN.4Fx}MBAHO=hT?GUIDlB4M.4FxrjHABA\";i:120;s:46:\"Tj=hT?GUeBlB^L.4Fxs@LAI7=hT?GUSFlBMM.4FxrjHABA\";i:121;s:24:\"FH=hT?GUtElBbL.4Fx~5VABA\";i:122;s:24:\"zd=hT?GUkPlB(L.4Fxs@VABA\";i:123;s:24:\"zd=hT?GU.DlB(L.4Fxs@VABA\";i:124;s:24:\"zd=hT?GU0PlB(L.4Fxs@VABA\";}', 'no'),
(255, 'theme_mods_blankslate-child', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:9:\"main-menu\";i:2;}}', 'yes'),
(260, 'recovery_mode_email_last_sent', '1683379920', 'yes'),
(274, 'yoast_migrations_free', 'a:1:{s:7:\"version\";s:4:\"20.4\";}', 'yes'),
(275, 'wpseo', 'a:101:{s:8:\"tracking\";b:1;s:16:\"toggled_tracking\";b:0;s:22:\"license_server_version\";s:5:\"false\";s:15:\"ms_defaults_set\";b:0;s:40:\"ignore_search_engines_discouraged_notice\";b:0;s:19:\"indexing_first_time\";b:1;s:16:\"indexing_started\";b:0;s:15:\"indexing_reason\";s:26:\"permalink_settings_changed\";s:29:\"indexables_indexing_completed\";b:1;s:13:\"index_now_key\";s:0:\"\";s:7:\"version\";s:4:\"20.4\";s:16:\"previous_version\";s:0:\"\";s:20:\"disableadvanced_meta\";b:1;s:30:\"enable_headless_rest_endpoints\";b:1;s:17:\"ryte_indexability\";b:0;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:34:\"inclusive_language_analysis_active\";b:1;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:16:\"enable_index_now\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";s:10:\"1680596823\";s:13:\"myyoast-oauth\";b:0;s:26:\"semrush_integration_active\";b:1;s:14:\"semrush_tokens\";a:0:{}s:20:\"semrush_country_code\";s:2:\"us\";s:19:\"permalink_structure\";s:42:\"/%category%/%author%/%post_id%/%postname%/\";s:8:\"home_url\";s:28:\"http://localhost/wordpress07\";s:18:\"dynamic_permalinks\";b:0;s:17:\"category_base_url\";s:0:\"\";s:12:\"tag_base_url\";s:0:\"\";s:21:\"custom_taxonomy_slugs\";a:1:{s:15:\"multiple_slider\";s:15:\"multiple_slider\";}s:29:\"enable_enhanced_slack_sharing\";b:1;s:25:\"zapier_integration_active\";b:0;s:19:\"zapier_subscription\";a:0:{}s:14:\"zapier_api_key\";s:0:\"\";s:23:\"enable_metabox_insights\";b:1;s:23:\"enable_link_suggestions\";b:1;s:26:\"algolia_integration_active\";b:0;s:14:\"import_cursors\";a:0:{}s:13:\"workouts_data\";a:1:{s:13:\"configuration\";a:1:{s:13:\"finishedSteps\";a:0:{}}}s:28:\"configuration_finished_steps\";a:0:{}s:36:\"dismiss_configuration_workout_notice\";b:0;s:34:\"dismiss_premium_deactivated_notice\";b:0;s:34:\"dismiss_old_premium_version_notice\";s:0:\"\";s:19:\"importing_completed\";a:0:{}s:26:\"wincher_integration_active\";b:1;s:14:\"wincher_tokens\";a:0:{}s:36:\"wincher_automatically_add_keyphrases\";b:0;s:18:\"wincher_website_id\";s:0:\"\";s:28:\"wordproof_integration_active\";b:0;s:29:\"wordproof_integration_changed\";b:0;s:18:\"first_time_install\";b:1;s:34:\"should_redirect_after_install_free\";b:0;s:34:\"activation_redirect_timestamp_free\";s:10:\"1680596993\";s:18:\"remove_feed_global\";b:0;s:27:\"remove_feed_global_comments\";b:0;s:25:\"remove_feed_post_comments\";b:0;s:19:\"remove_feed_authors\";b:0;s:22:\"remove_feed_categories\";b:0;s:16:\"remove_feed_tags\";b:0;s:29:\"remove_feed_custom_taxonomies\";b:0;s:22:\"remove_feed_post_types\";b:0;s:18:\"remove_feed_search\";b:0;s:21:\"remove_atom_rdf_feeds\";b:0;s:17:\"remove_shortlinks\";b:0;s:21:\"remove_rest_api_links\";b:0;s:20:\"remove_rsd_wlw_links\";b:0;s:19:\"remove_oembed_links\";b:0;s:16:\"remove_generator\";b:0;s:20:\"remove_emoji_scripts\";b:0;s:24:\"remove_powered_by_header\";b:0;s:22:\"remove_pingback_header\";b:0;s:28:\"clean_campaign_tracking_urls\";b:0;s:16:\"clean_permalinks\";b:0;s:32:\"clean_permalinks_extra_variables\";s:0:\"\";s:14:\"search_cleanup\";b:0;s:20:\"search_cleanup_emoji\";b:0;s:23:\"search_cleanup_patterns\";b:0;s:22:\"search_character_limit\";i:50;s:20:\"deny_search_crawling\";b:0;s:21:\"deny_wp_json_crawling\";b:0;s:27:\"redirect_search_pretty_urls\";b:0;s:29:\"least_readability_ignore_list\";a:0:{}s:27:\"least_seo_score_ignore_list\";a:0:{}s:23:\"most_linked_ignore_list\";a:0:{}s:24:\"least_linked_ignore_list\";a:0:{}s:28:\"indexables_page_reading_list\";a:5:{i:0;b:0;i:1;b:0;i:2;b:0;i:3;b:0;i:4;b:0;}s:25:\"indexables_overview_state\";s:21:\"dashboard-not-visited\";s:28:\"last_known_public_post_types\";a:5:{i:0;s:4:\"post\";i:1;s:4:\"page\";i:2;s:10:\"attachment\";i:3;s:7:\"vslides\";i:4;s:11:\"news_update\";}s:28:\"last_known_public_taxonomies\";a:4:{i:0;s:8:\"category\";i:1;s:8:\"post_tag\";i:2;s:11:\"post_format\";i:3;s:15:\"multiple_slider\";}}', 'yes'),
(276, 'wpseo_titles', 'a:136:{s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:25:\"social-title-author-wpseo\";s:8:\"%%name%%\";s:26:\"social-title-archive-wpseo\";s:8:\"%%date%%\";s:31:\"social-description-author-wpseo\";s:0:\"\";s:32:\"social-description-archive-wpseo\";s:0:\"\";s:29:\"social-image-url-author-wpseo\";s:0:\"\";s:30:\"social-image-url-archive-wpseo\";s:0:\"\";s:28:\"social-image-id-author-wpseo\";i:0;s:29:\"social-image-id-archive-wpseo\";i:0;s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:0;s:20:\"breadcrumbs-404crumb\";s:25:\"Error 404: Page not found\";s:29:\"breadcrumbs-display-blog-page\";b:1;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:12:\"Archives for\";s:18:\"breadcrumbs-enable\";b:1;s:16:\"breadcrumbs-home\";s:4:\"Home\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:16:\"You searched for\";s:15:\"breadcrumbs-sep\";s:2:\"»\";s:12:\"website_name\";s:21:\"localhost/wordpress07\";s:11:\"person_name\";s:0:\"\";s:11:\"person_logo\";s:0:\"\";s:22:\"alternate_website_name\";s:17:\"COVID19_Indonesia\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:22:\"company_alternate_name\";s:0:\"\";s:17:\"company_or_person\";s:6:\"person\";s:25:\"company_or_person_user_id\";i:1;s:17:\"stripcategorybase\";b:0;s:26:\"open_graph_frontpage_title\";s:12:\"%%sitename%%\";s:25:\"open_graph_frontpage_desc\";s:0:\"\";s:26:\"open_graph_frontpage_image\";s:0:\"\";s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:23:\"post_types-post-maintax\";i:0;s:21:\"schema-page-type-post\";s:7:\"WebPage\";s:24:\"schema-article-type-post\";s:7:\"Article\";s:17:\"social-title-post\";s:9:\"%%title%%\";s:23:\"social-description-post\";s:0:\"\";s:21:\"social-image-url-post\";s:0:\"\";s:20:\"social-image-id-post\";i:0;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";i:0;s:21:\"schema-page-type-page\";s:7:\"WebPage\";s:24:\"schema-article-type-page\";s:4:\"None\";s:17:\"social-title-page\";s:9:\"%%title%%\";s:23:\"social-description-page\";s:0:\"\";s:21:\"social-image-url-page\";s:0:\"\";s:20:\"social-image-id-page\";i:0;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";i:0;s:27:\"schema-page-type-attachment\";s:14:\"MedicalWebPage\";s:30:\"schema-article-type-attachment\";s:11:\"NewsArticle\";s:13:\"title-vslides\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:16:\"metadesc-vslides\";s:0:\"\";s:15:\"noindex-vslides\";b:0;s:26:\"display-metabox-pt-vslides\";b:1;s:26:\"post_types-vslides-maintax\";i:0;s:24:\"schema-page-type-vslides\";s:7:\"WebPage\";s:27:\"schema-article-type-vslides\";s:4:\"None\";s:20:\"social-title-vslides\";s:9:\"%%title%%\";s:26:\"social-description-vslides\";s:0:\"\";s:24:\"social-image-url-vslides\";s:0:\"\";s:23:\"social-image-id-vslides\";i:0;s:23:\"title-ptarchive-vslides\";s:51:\"%%pt_plural%% Archive %%page%% %%sep%% %%sitename%%\";s:26:\"metadesc-ptarchive-vslides\";s:0:\"\";s:25:\"bctitle-ptarchive-vslides\";s:0:\"\";s:25:\"noindex-ptarchive-vslides\";b:0;s:30:\"social-title-ptarchive-vslides\";s:21:\"%%pt_plural%% Archive\";s:36:\"social-description-ptarchive-vslides\";s:0:\"\";s:34:\"social-image-url-ptarchive-vslides\";s:0:\"\";s:33:\"social-image-id-ptarchive-vslides\";i:0;s:18:\"title-tax-category\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:25:\"social-title-tax-category\";s:23:\"%%term_title%% Archives\";s:31:\"social-description-tax-category\";s:0:\"\";s:29:\"social-image-url-tax-category\";s:0:\"\";s:28:\"social-image-id-tax-category\";i:0;s:26:\"taxonomy-category-ptparent\";i:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:25:\"social-title-tax-post_tag\";s:23:\"%%term_title%% Archives\";s:31:\"social-description-tax-post_tag\";s:0:\"\";s:29:\"social-image-url-tax-post_tag\";s:0:\"\";s:28:\"social-image-id-tax-post_tag\";i:0;s:26:\"taxonomy-post_tag-ptparent\";i:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:1;s:23:\"noindex-tax-post_format\";b:1;s:28:\"social-title-tax-post_format\";s:23:\"%%term_title%% Archives\";s:34:\"social-description-tax-post_format\";s:0:\"\";s:32:\"social-image-url-tax-post_format\";s:0:\"\";s:31:\"social-image-id-tax-post_format\";i:0;s:29:\"taxonomy-post_format-ptparent\";i:0;s:25:\"title-tax-multiple_slider\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:28:\"metadesc-tax-multiple_slider\";s:0:\"\";s:35:\"display-metabox-tax-multiple_slider\";b:1;s:27:\"noindex-tax-multiple_slider\";b:0;s:32:\"social-title-tax-multiple_slider\";s:23:\"%%term_title%% Archives\";s:38:\"social-description-tax-multiple_slider\";s:0:\"\";s:36:\"social-image-url-tax-multiple_slider\";s:0:\"\";s:35:\"social-image-id-tax-multiple_slider\";i:0;s:33:\"taxonomy-multiple_slider-ptparent\";i:0;s:14:\"person_logo_id\";i:0;s:15:\"company_logo_id\";i:0;s:29:\"open_graph_frontpage_image_id\";i:0;}', 'yes'),
(277, 'wpseo_social', 'a:20:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:19:\"og_default_image_id\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:13:\"wikipedia_url\";s:0:\"\";s:17:\"other_social_urls\";a:0:{}s:12:\"mastodon_url\";s:0:\"\";}', 'yes'),
(318, 'wpseo_tracking_last_request', '1682924188', 'yes'),
(338, 'WPLANG', '', 'yes'),
(339, 'new_admin_email', 'mhafiidhbasriy@gmail.com', 'yes'),
(340, 'whl_page', 'admin', 'yes'),
(341, 'whl_redirect_admin', '404', 'yes'),
(377, 'wisdom_block_notice', 'a:1:{s:4:\"pods\";s:4:\"pods\";}', 'yes'),
(921, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(984, '_transient_health-check-site-status-result', '{\"good\":15,\"recommended\":6,\"critical\":1}', 'yes'),
(1341, 'category_children', 'a:0:{}', 'yes'),
(1419, '_transient_timeout_pods_pods_components-2913', '1684244682', 'no'),
(1420, '_transient_pods_pods_components-2913', 'a:11:{s:22:\"advanced-content-types\";a:28:{s:2:\"ID\";s:22:\"advanced-content-types\";s:4:\"Name\";s:22:\"Advanced Content Types\";s:9:\"ShortName\";s:22:\"Advanced Content Types\";s:10:\"PluginName\";s:0:\"\";s:13:\"ComponentName\";s:0:\"\";s:3:\"URI\";s:0:\"\";s:8:\"MenuName\";s:22:\"Advanced Content Types\";s:8:\"MenuPage\";s:0:\"\";s:11:\"MenuAddPage\";s:0:\"\";s:7:\"MustUse\";b:0;s:11:\"Description\";s:252:\"A content type that exists outside of the WordPress post and postmeta table and uses custom tables instead. You most likely don\'t need these and we strongly recommend that you use Custom Post Types or Custom Taxonomies instead. FOR ADVANCED USERS ONLY.\";s:10:\"Deprecated\";s:0:\"\";s:19:\"DeprecatedInVersion\";s:0:\"\";s:24:\"DeprecatedRemovalVersion\";s:0:\"\";s:7:\"Version\";s:3:\"2.3\";s:8:\"Category\";s:8:\"Advanced\";s:6:\"Author\";s:0:\"\";s:9:\"AuthorURI\";s:0:\"\";s:5:\"Class\";s:27:\"Pods_Advanced_Content_Types\";s:4:\"Hide\";s:0:\"\";s:16:\"PluginDependency\";s:0:\"\";s:15:\"ThemeDependency\";s:0:\"\";s:13:\"DeveloperMode\";b:0;s:13:\"TablelessMode\";b:0;s:10:\"Capability\";s:0:\"\";s:6:\"Plugin\";s:0:\"\";s:8:\"External\";b:0;s:4:\"File\";s:26:\"Advanced-Content-Types.php\";}s:22:\"advanced-relationships\";a:28:{s:2:\"ID\";s:22:\"advanced-relationships\";s:4:\"Name\";s:22:\"Advanced Relationships\";s:9:\"ShortName\";s:22:\"Advanced Relationships\";s:10:\"PluginName\";s:0:\"\";s:13:\"ComponentName\";s:0:\"\";s:3:\"URI\";s:0:\"\";s:8:\"MenuName\";s:22:\"Advanced Relationships\";s:8:\"MenuPage\";s:0:\"\";s:11:\"MenuAddPage\";s:0:\"\";s:7:\"MustUse\";b:0;s:11:\"Description\";s:187:\"Add advanced relationship objects for relating to including Database Tables, Multisite Networks, Multisite Sites, Themes, Page Templates, Sidebars, Post Type Objects, and Taxonomy Objects\";s:10:\"Deprecated\";s:0:\"\";s:19:\"DeprecatedInVersion\";s:0:\"\";s:24:\"DeprecatedRemovalVersion\";s:0:\"\";s:7:\"Version\";s:3:\"2.3\";s:8:\"Category\";s:8:\"Advanced\";s:6:\"Author\";s:0:\"\";s:9:\"AuthorURI\";s:0:\"\";s:5:\"Class\";s:27:\"Pods_Advanced_Relationships\";s:4:\"Hide\";s:0:\"\";s:16:\"PluginDependency\";s:0:\"\";s:15:\"ThemeDependency\";s:0:\"\";s:13:\"DeveloperMode\";b:0;s:13:\"TablelessMode\";b:0;s:10:\"Capability\";s:0:\"\";s:6:\"Plugin\";s:0:\"\";s:8:\"External\";b:0;s:4:\"File\";s:26:\"Advanced-Relationships.php\";}s:19:\"builder-integration\";a:28:{s:2:\"ID\";s:19:\"builder-integration\";s:4:\"Name\";s:19:\"Builder Integration\";s:9:\"ShortName\";s:19:\"Builder Integration\";s:10:\"PluginName\";s:0:\"\";s:13:\"ComponentName\";s:0:\"\";s:3:\"URI\";s:0:\"\";s:8:\"MenuName\";s:19:\"Builder Integration\";s:8:\"MenuPage\";s:0:\"\";s:11:\"MenuAddPage\";s:0:\"\";s:7:\"MustUse\";b:0;s:11:\"Description\";s:169:\"Integration with the <a href=\"http://ithemes.com/\">Builder</a> theme / child themes from <a href=\"http://ithemes.com/\">iThemes</a>; Adds new modules to the Layout engine\";s:10:\"Deprecated\";s:3:\"Yes\";s:19:\"DeprecatedInVersion\";s:6:\"2.9.13\";s:24:\"DeprecatedRemovalVersion\";s:3:\"3.1\";s:7:\"Version\";s:3:\"1.0\";s:8:\"Category\";s:11:\"Integration\";s:6:\"Author\";s:0:\"\";s:9:\"AuthorURI\";s:0:\"\";s:5:\"Class\";s:12:\"Pods_Builder\";s:4:\"Hide\";s:0:\"\";s:16:\"PluginDependency\";s:0:\"\";s:15:\"ThemeDependency\";s:0:\"\";s:13:\"DeveloperMode\";b:0;s:13:\"TablelessMode\";b:0;s:10:\"Capability\";s:0:\"\";s:6:\"Plugin\";s:29:\"pods-builder/pods-builder.php\";s:8:\"External\";b:0;s:4:\"File\";s:19:\"Builder/Builder.php\";}s:15:\"markdown-syntax\";a:28:{s:2:\"ID\";s:15:\"markdown-syntax\";s:4:\"Name\";s:15:\"Markdown Syntax\";s:9:\"ShortName\";s:15:\"Markdown Syntax\";s:10:\"PluginName\";s:0:\"\";s:13:\"ComponentName\";s:0:\"\";s:3:\"URI\";s:0:\"\";s:8:\"MenuName\";s:15:\"Markdown Syntax\";s:8:\"MenuPage\";s:0:\"\";s:11:\"MenuAddPage\";s:0:\"\";s:7:\"MustUse\";b:0;s:11:\"Description\";s:138:\"Integration with Markdown (http://michelf.com/projects/php-markdown/); Adds an option to enable Markdown syntax for Paragraph text fields.\";s:10:\"Deprecated\";s:0:\"\";s:19:\"DeprecatedInVersion\";s:0:\"\";s:24:\"DeprecatedRemovalVersion\";s:0:\"\";s:7:\"Version\";s:3:\"1.0\";s:8:\"Category\";s:11:\"Field Types\";s:6:\"Author\";s:0:\"\";s:9:\"AuthorURI\";s:0:\"\";s:5:\"Class\";s:13:\"Pods_Markdown\";s:4:\"Hide\";s:0:\"\";s:16:\"PluginDependency\";s:0:\"\";s:15:\"ThemeDependency\";s:0:\"\";s:13:\"DeveloperMode\";b:0;s:13:\"TablelessMode\";b:0;s:10:\"Capability\";s:0:\"\";s:6:\"Plugin\";s:0:\"\";s:8:\"External\";b:0;s:4:\"File\";s:12:\"Markdown.php\";}s:50:\"migrate-import-from-the-custom-post-type-ui-plugin\";a:28:{s:2:\"ID\";s:50:\"migrate-import-from-the-custom-post-type-ui-plugin\";s:4:\"Name\";s:51:\"Migrate: Import from the Custom Post Type UI plugin\";s:9:\"ShortName\";s:51:\"Migrate: Import from the Custom Post Type UI plugin\";s:10:\"PluginName\";s:0:\"\";s:13:\"ComponentName\";s:0:\"\";s:3:\"URI\";s:0:\"\";s:8:\"MenuName\";s:14:\"Migrate CPT UI\";s:8:\"MenuPage\";s:0:\"\";s:11:\"MenuAddPage\";s:0:\"\";s:7:\"MustUse\";b:0;s:11:\"Description\";s:186:\"Import Custom Post Types and Taxonomies from Custom Post Type UI (<a href=\"http://webdevstudios.com/plugin/custom-post-type-ui/\">http://webdevstudios.com/plugin/custom-post-type-ui/</a>)\";s:10:\"Deprecated\";s:0:\"\";s:19:\"DeprecatedInVersion\";s:0:\"\";s:24:\"DeprecatedRemovalVersion\";s:0:\"\";s:7:\"Version\";s:3:\"1.0\";s:8:\"Category\";s:9:\"Migration\";s:6:\"Author\";s:0:\"\";s:9:\"AuthorURI\";s:0:\"\";s:5:\"Class\";s:18:\"Pods_Migrate_CPTUI\";s:4:\"Hide\";s:0:\"\";s:16:\"PluginDependency\";s:0:\"\";s:15:\"ThemeDependency\";s:0:\"\";s:13:\"DeveloperMode\";b:0;s:13:\"TablelessMode\";b:0;s:10:\"Capability\";s:0:\"\";s:6:\"Plugin\";s:69:\"pods-migrate-custom-post-type-ui/pods-migrate-custom-post-type-ui.php\";s:8:\"External\";b:0;s:4:\"File\";s:31:\"Migrate-CPTUI/Migrate-CPTUI.php\";}s:16:\"migrate-packages\";a:28:{s:2:\"ID\";s:16:\"migrate-packages\";s:4:\"Name\";s:22:\"Import/Export Packages\";s:9:\"ShortName\";s:22:\"Import/Export Packages\";s:10:\"PluginName\";s:0:\"\";s:13:\"ComponentName\";s:0:\"\";s:3:\"URI\";s:0:\"\";s:8:\"MenuName\";s:22:\"Import/Export Packages\";s:8:\"MenuPage\";s:0:\"\";s:11:\"MenuAddPage\";s:0:\"\";s:7:\"MustUse\";b:0;s:11:\"Description\";s:121:\"Import/Export your Pods, Fields, and other settings from any Pods site; Includes an API to Import/Export Packages via PHP\";s:10:\"Deprecated\";s:0:\"\";s:19:\"DeprecatedInVersion\";s:0:\"\";s:24:\"DeprecatedRemovalVersion\";s:0:\"\";s:7:\"Version\";s:3:\"2.0\";s:8:\"Category\";s:9:\"Migration\";s:6:\"Author\";s:0:\"\";s:9:\"AuthorURI\";s:0:\"\";s:5:\"Class\";s:21:\"Pods_Migrate_Packages\";s:4:\"Hide\";s:0:\"\";s:16:\"PluginDependency\";s:0:\"\";s:15:\"ThemeDependency\";s:0:\"\";s:13:\"DeveloperMode\";b:0;s:13:\"TablelessMode\";b:0;s:10:\"Capability\";s:0:\"\";s:6:\"Plugin\";s:47:\"pods-migrate-packages/pods-migrate-packages.php\";s:8:\"External\";b:0;s:4:\"File\";s:37:\"Migrate-Packages/Migrate-Packages.php\";}s:5:\"pages\";a:28:{s:2:\"ID\";s:5:\"pages\";s:4:\"Name\";s:5:\"Pages\";s:9:\"ShortName\";s:5:\"Pages\";s:10:\"PluginName\";s:0:\"\";s:13:\"ComponentName\";s:0:\"\";s:3:\"URI\";s:0:\"\";s:8:\"MenuName\";s:9:\"Pod Pages\";s:8:\"MenuPage\";s:29:\"edit.php?post_type=_pods_page\";s:11:\"MenuAddPage\";s:33:\"post-new.php?post_type=_pods_page\";s:7:\"MustUse\";b:0;s:11:\"Description\";s:170:\"Creates advanced URL structures using wildcards in order to enable the front-end display of Pods Advanced Content Types. Not recommended for use with other content types.\";s:10:\"Deprecated\";s:0:\"\";s:19:\"DeprecatedInVersion\";s:0:\"\";s:24:\"DeprecatedRemovalVersion\";s:0:\"\";s:7:\"Version\";s:3:\"2.3\";s:8:\"Category\";s:8:\"Advanced\";s:6:\"Author\";s:0:\"\";s:9:\"AuthorURI\";s:0:\"\";s:5:\"Class\";s:10:\"Pods_Pages\";s:4:\"Hide\";s:0:\"\";s:16:\"PluginDependency\";s:0:\"\";s:15:\"ThemeDependency\";s:0:\"\";s:13:\"DeveloperMode\";b:0;s:13:\"TablelessMode\";b:0;s:10:\"Capability\";s:0:\"\";s:6:\"Plugin\";s:0:\"\";s:8:\"External\";b:0;s:4:\"File\";s:9:\"Pages.php\";}s:22:\"roles-and-capabilities\";a:28:{s:2:\"ID\";s:22:\"roles-and-capabilities\";s:4:\"Name\";s:22:\"Roles and Capabilities\";s:9:\"ShortName\";s:22:\"Roles and Capabilities\";s:10:\"PluginName\";s:0:\"\";s:13:\"ComponentName\";s:0:\"\";s:3:\"URI\";s:0:\"\";s:8:\"MenuName\";s:24:\"Roles &amp; Capabilities\";s:8:\"MenuPage\";s:0:\"\";s:11:\"MenuAddPage\";s:0:\"\";s:7:\"MustUse\";b:0;s:11:\"Description\";s:379:\"Create and Manage WordPress User Roles and Capabilities; Uses the \'<a href=\"http://wordpress.org/plugins/members/\" target=\"_blank\" rel=\"noopener noreferrer\">Members</a>\' plugin filters for additional plugin integrations; Portions of code based on the \'<a href=\"http://wordpress.org/plugins/members/\" target=\"_blank\" rel=\"noopener noreferrer\">Members</a>\' plugin by Justin Tadlock\";s:10:\"Deprecated\";s:0:\"\";s:19:\"DeprecatedInVersion\";s:0:\"\";s:24:\"DeprecatedRemovalVersion\";s:0:\"\";s:7:\"Version\";s:3:\"1.0\";s:8:\"Category\";s:5:\"Tools\";s:6:\"Author\";s:0:\"\";s:9:\"AuthorURI\";s:0:\"\";s:5:\"Class\";s:10:\"Pods_Roles\";s:4:\"Hide\";s:0:\"\";s:16:\"PluginDependency\";s:0:\"\";s:15:\"ThemeDependency\";s:0:\"\";s:13:\"DeveloperMode\";b:0;s:13:\"TablelessMode\";b:0;s:10:\"Capability\";s:0:\"\";s:6:\"Plugin\";s:0:\"\";s:8:\"External\";b:0;s:4:\"File\";s:15:\"Roles/Roles.php\";}s:13:\"table-storage\";a:28:{s:2:\"ID\";s:13:\"table-storage\";s:4:\"Name\";s:13:\"Table Storage\";s:9:\"ShortName\";s:13:\"Table Storage\";s:10:\"PluginName\";s:0:\"\";s:13:\"ComponentName\";s:0:\"\";s:3:\"URI\";s:0:\"\";s:8:\"MenuName\";s:13:\"Table Storage\";s:8:\"MenuPage\";s:0:\"\";s:11:\"MenuAddPage\";s:0:\"\";s:7:\"MustUse\";b:0;s:11:\"Description\";s:108:\"Enable a custom database table for your custom fields on Post Types, Media, Taxonomies, Users, and Comments.\";s:10:\"Deprecated\";s:0:\"\";s:19:\"DeprecatedInVersion\";s:0:\"\";s:24:\"DeprecatedRemovalVersion\";s:0:\"\";s:7:\"Version\";s:3:\"2.3\";s:8:\"Category\";s:8:\"Advanced\";s:6:\"Author\";s:0:\"\";s:9:\"AuthorURI\";s:0:\"\";s:5:\"Class\";s:18:\"Pods_Table_Storage\";s:4:\"Hide\";s:0:\"\";s:16:\"PluginDependency\";s:0:\"\";s:15:\"ThemeDependency\";s:0:\"\";s:13:\"DeveloperMode\";b:0;s:13:\"TablelessMode\";b:0;s:10:\"Capability\";s:0:\"\";s:6:\"Plugin\";s:0:\"\";s:8:\"External\";b:0;s:4:\"File\";s:17:\"Table-Storage.php\";}s:9:\"templates\";a:28:{s:2:\"ID\";s:9:\"templates\";s:4:\"Name\";s:9:\"Templates\";s:9:\"ShortName\";s:9:\"Templates\";s:10:\"PluginName\";s:0:\"\";s:13:\"ComponentName\";s:0:\"\";s:3:\"URI\";s:0:\"\";s:8:\"MenuName\";s:13:\"Pod Templates\";s:8:\"MenuPage\";s:33:\"edit.php?post_type=_pods_template\";s:11:\"MenuAddPage\";s:37:\"post-new.php?post_type=_pods_template\";s:7:\"MustUse\";b:0;s:11:\"Description\";s:114:\"An easy to use templating engine for Pods. Use {@field_name} magic tags to output values, within your HTML markup.\";s:10:\"Deprecated\";s:0:\"\";s:19:\"DeprecatedInVersion\";s:0:\"\";s:24:\"DeprecatedRemovalVersion\";s:0:\"\";s:7:\"Version\";s:3:\"2.3\";s:8:\"Category\";s:8:\"Advanced\";s:6:\"Author\";s:0:\"\";s:9:\"AuthorURI\";s:0:\"\";s:5:\"Class\";s:14:\"Pods_Templates\";s:4:\"Hide\";s:0:\"\";s:16:\"PluginDependency\";s:0:\"\";s:15:\"ThemeDependency\";s:0:\"\";s:13:\"DeveloperMode\";b:0;s:13:\"TablelessMode\";b:0;s:10:\"Capability\";s:0:\"\";s:6:\"Plugin\";s:0:\"\";s:8:\"External\";b:0;s:4:\"File\";s:23:\"Templates/Templates.php\";}s:20:\"translate-pods-admin\";a:28:{s:2:\"ID\";s:20:\"translate-pods-admin\";s:4:\"Name\";s:20:\"Translate Pods Admin\";s:9:\"ShortName\";s:20:\"Translate Pods Admin\";s:10:\"PluginName\";s:0:\"\";s:13:\"ComponentName\";s:0:\"\";s:3:\"URI\";s:0:\"\";s:8:\"MenuName\";s:14:\"Translate Pods\";s:8:\"MenuPage\";s:0:\"\";s:11:\"MenuAddPage\";s:0:\"\";s:7:\"MustUse\";b:0;s:11:\"Description\";s:45:\"Allow UI of Pods and fields to be translated.\";s:10:\"Deprecated\";s:0:\"\";s:19:\"DeprecatedInVersion\";s:0:\"\";s:24:\"DeprecatedRemovalVersion\";s:0:\"\";s:7:\"Version\";s:3:\"1.1\";s:8:\"Category\";s:4:\"I18n\";s:6:\"Author\";s:0:\"\";s:9:\"AuthorURI\";s:0:\"\";s:5:\"Class\";s:19:\"Pods_Component_I18n\";s:4:\"Hide\";s:0:\"\";s:16:\"PluginDependency\";s:0:\"\";s:15:\"ThemeDependency\";s:0:\"\";s:13:\"DeveloperMode\";b:0;s:13:\"TablelessMode\";b:0;s:10:\"Capability\";s:0:\"\";s:6:\"Plugin\";s:0:\"\";s:8:\"External\";b:0;s:4:\"File\";s:13:\"I18n/I18n.php\";}}', 'no'),
(1421, '_transient_timeout_pods_1bf4532b809489b58b6c7e1671a3885d', '1684244682', 'no'),
(1422, '_transient_pods_1bf4532b809489b58b6c7e1671a3885d', 'a:0:{}', 'no'),
(1423, '_transient_timeout_pods_dfcf9985389e8c909b01a61104606224', '1684244682', 'no'),
(1424, '_transient_pods_dfcf9985389e8c909b01a61104606224', 'a:1:{i:0;i:11;}', 'no'),
(1425, '_transient_timeout_pods_380853e44c8070e81001b4b067700071', '1684244682', 'no'),
(1426, '_transient_pods_380853e44c8070e81001b4b067700071', 'a:0:{}', 'no'),
(1427, '_transient_timeout_pods_1c7d8151c0119ae4288f1cde9412ed83', '1684244682', 'no'),
(1428, '_transient_pods_1c7d8151c0119ae4288f1cde9412ed83', 'a:0:{}', 'no'),
(1429, '_transient_timeout_pods_a5a967c7d6613854e68ed4b03537bc93', '1684244682', 'no'),
(1430, '_transient_pods_a5a967c7d6613854e68ed4b03537bc93', 'a:0:{}', 'no'),
(1431, '_transient_timeout_pods_c5cf2c83ce6ce2528a74530a35576494', '1684244682', 'no'),
(1432, '_transient_pods_c5cf2c83ce6ce2528a74530a35576494', 'a:0:{}', 'no'),
(1433, '_transient_timeout_pods_70e3fefd14781ca441543080716d1935', '1684244682', 'no'),
(1434, '_transient_pods_70e3fefd14781ca441543080716d1935', 'a:0:{}', 'no'),
(1435, '_transient_timeout_pods_pods_core_loader_objects-2913', '1684244682', 'no'),
(1436, '_transient_pods_pods_core_loader_objects-2913', 'a:5:{s:10:\"taxonomies\";a:0:{}s:5:\"media\";b:0;s:4:\"user\";b:0;s:7:\"comment\";b:0;s:8:\"settings\";a:0:{}}', 'no'),
(1437, '_transient_timeout_pods_pods_wp_cpt_ct-2913', '1684244683', 'no'),
(1438, '_transient_pods_pods_wp_cpt_ct-2913', 'a:3:{s:10:\"post_types\";a:2:{s:14:\"_pods_template\";b:0;s:11:\"news_update\";a:24:{s:5:\"label\";s:11:\"News Update\";s:6:\"labels\";a:35:{s:4:\"name\";s:11:\"News Update\";s:13:\"singular_name\";s:11:\"News Update\";s:9:\"menu_name\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:4:\"edit\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:4:\"view\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:6:\"parent\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";s:14:\"filter_by_date\";s:0:\"\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:1;s:18:\"publicly_queryable\";b:1;s:19:\"exclude_from_search\";b:0;s:7:\"show_ui\";b:1;s:12:\"show_in_menu\";b:1;s:17:\"show_in_nav_menus\";b:1;s:17:\"show_in_admin_bar\";b:1;s:9:\"menu_icon\";N;s:15:\"capability_type\";s:4:\"post\";s:12:\"map_meta_cap\";b:1;s:12:\"hierarchical\";b:0;s:10:\"can_export\";b:1;s:8:\"supports\";a:1:{i:0;s:5:\"title\";}s:11:\"has_archive\";b:0;s:7:\"rewrite\";a:4:{s:4:\"slug\";s:11:\"news-update\";s:10:\"with_front\";b:1;s:5:\"feeds\";b:0;s:5:\"pages\";b:1;}s:9:\"query_var\";s:11:\"news_update\";s:16:\"delete_with_user\";b:1;s:9:\"_provider\";s:4:\"pods\";s:12:\"show_in_rest\";b:1;s:9:\"rest_base\";s:11:\"news_update\";s:21:\"rest_controller_class\";s:24:\"WP_REST_Posts_Controller\";}}s:10:\"taxonomies\";a:0:{}s:22:\"post_format_post_types\";a:0:{}}', 'no'),
(1439, '_transient_timeout_pods_6fc5a8d59110dd6654f1c20e62896527', '1684244683', 'no'),
(1440, '_transient_pods_6fc5a8d59110dd6654f1c20e62896527', 'a:1:{i:0;i:11;}', 'no'),
(1441, '_transient_timeout_pods_9c9f60b487f67a1e9eb1573d34416b3b', '1684244683', 'no'),
(1442, '_transient_pods_9c9f60b487f67a1e9eb1573d34416b3b', 'a:1:{i:0;i:11;}', 'no'),
(1443, '_transient_timeout_pods_690ce7569dd7fb05a42047cb588e0a9d', '1684244683', 'no'),
(1444, '_transient_pods_690ce7569dd7fb05a42047cb588e0a9d', 'a:0:{}', 'no'),
(1445, '_transient_timeout_pods_pods_blocks_js-2913', '1684244683', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1446, '_transient_pods_pods_blocks_js-2913', 'a:6:{i:0;a:15:{s:9:\"blockName\";s:21:\"pods/pods-block-field\";s:15:\"blockGroupLabel\";s:7:\"Options\";s:5:\"title\";s:16:\"Pods Field Value\";s:11:\"description\";s:56:\"Display a single Pod item\'s field value (custom fields).\";s:10:\"renderType\";s:3:\"php\";s:8:\"category\";s:4:\"pods\";s:4:\"icon\";s:4:\"pods\";s:8:\"keywords\";a:5:{i:0;s:4:\"pods\";i:1;s:5:\"field\";i:2;s:5:\"value\";i:3;s:6:\"custom\";i:4;s:4:\"meta\";}s:8:\"supports\";a:13:{s:4:\"html\";b:0;s:5:\"align\";b:1;s:9:\"alignWide\";b:1;s:6:\"anchor\";b:0;s:15:\"customClassName\";b:1;s:8:\"inserter\";b:1;s:8:\"multiple\";b:1;s:8:\"reusable\";b:1;s:19:\"__experimentalColor\";b:1;s:22:\"__experimentalFontSize\";b:1;s:21:\"__experimentalPadding\";b:1;s:24:\"__experimentalLineHeight\";b:1;s:3:\"jsx\";b:0;}s:12:\"editorScript\";s:15:\"pods-blocks-api\";s:11:\"usesContext\";a:2:{i:0;s:8:\"postType\";i:1;s:6:\"postId\";}s:15:\"providesContext\";a:0:{}s:6:\"fields\";a:3:{i:0;a:4:{s:4:\"type\";s:13:\"SelectControl\";s:12:\"fieldOptions\";a:4:{s:7:\"heading\";s:8:\"Pod Name\";s:7:\"options\";a:2:{i:0;a:2:{s:5:\"label\";s:19:\"- Use Current Pod -\";s:5:\"value\";s:0:\"\";}i:1;a:2:{s:5:\"label\";s:11:\"news_update\";s:5:\"value\";s:11:\"news_update\";}}s:4:\"help\";s:87:\"Choose the pod to reference, or reference the Pod in the current context of this block.\";s:5:\"label\";s:8:\"Pod Name\";}s:16:\"attributeOptions\";a:2:{s:4:\"type\";s:6:\"object\";s:7:\"default\";a:2:{s:5:\"label\";s:19:\"- Use Current Pod -\";s:5:\"value\";s:0:\"\";}}s:4:\"name\";s:4:\"name\";}i:1;a:4:{s:4:\"type\";s:11:\"TextControl\";s:12:\"fieldOptions\";a:4:{s:9:\"className\";s:15:\"text__container\";s:4:\"type\";s:4:\"text\";s:4:\"help\";s:39:\"Defaults to using the current pod item.\";s:5:\"label\";s:10:\"Slug or ID\";}s:16:\"attributeOptions\";a:1:{s:4:\"type\";s:6:\"string\";}s:4:\"name\";s:4:\"slug\";}i:2;a:4:{s:4:\"type\";s:11:\"TextControl\";s:12:\"fieldOptions\";a:4:{s:9:\"className\";s:15:\"text__container\";s:4:\"type\";s:4:\"text\";s:4:\"help\";s:43:\"This is the field name you want to display.\";s:5:\"label\";s:10:\"Field Name\";}s:16:\"attributeOptions\";a:1:{s:4:\"type\";s:6:\"string\";}s:4:\"name\";s:5:\"field\";}}s:10:\"attributes\";a:8:{s:5:\"align\";a:1:{s:4:\"type\";s:6:\"string\";}s:9:\"textColor\";a:1:{s:4:\"type\";s:6:\"string\";}s:15:\"backgroundColor\";a:1:{s:4:\"type\";s:6:\"string\";}s:8:\"fontSize\";a:1:{s:4:\"type\";s:6:\"string\";}s:5:\"style\";a:1:{s:4:\"type\";s:6:\"string\";}s:4:\"name\";a:2:{s:4:\"type\";s:6:\"object\";s:7:\"default\";a:2:{s:5:\"label\";s:19:\"- Use Current Pod -\";s:5:\"value\";s:0:\"\";}}s:4:\"slug\";a:1:{s:4:\"type\";s:6:\"string\";}s:5:\"field\";a:1:{s:4:\"type\";s:6:\"string\";}}s:10:\"transforms\";a:1:{s:4:\"from\";a:1:{i:0;a:4:{s:4:\"type\";s:9:\"shortcode\";s:3:\"tag\";s:4:\"pods\";s:10:\"attributes\";a:3:{s:4:\"name\";a:3:{s:4:\"type\";s:6:\"object\";s:6:\"source\";s:9:\"shortcode\";s:9:\"attribute\";s:4:\"name\";}s:4:\"slug\";a:3:{s:4:\"type\";s:6:\"string\";s:6:\"source\";s:9:\"shortcode\";s:9:\"attribute\";s:4:\"slug\";}s:5:\"field\";a:3:{s:4:\"type\";s:6:\"string\";s:6:\"source\";s:9:\"shortcode\";s:9:\"attribute\";s:5:\"field\";}}s:13:\"isMatchConfig\";a:1:{i:0;a:2:{s:4:\"name\";s:5:\"field\";s:8:\"required\";b:1;}}}}}}i:1;a:15:{s:9:\"blockName\";s:20:\"pods/pods-block-form\";s:15:\"blockGroupLabel\";s:7:\"Options\";s:5:\"title\";s:9:\"Pods Form\";s:11:\"description\";s:50:\"Display a form for creating and editing Pod items.\";s:10:\"renderType\";s:3:\"php\";s:8:\"category\";s:4:\"pods\";s:4:\"icon\";s:4:\"pods\";s:8:\"keywords\";a:3:{i:0;s:4:\"pods\";i:1;s:4:\"form\";i:2;s:5:\"input\";}s:8:\"supports\";a:13:{s:4:\"html\";b:0;s:5:\"align\";b:1;s:9:\"alignWide\";b:1;s:6:\"anchor\";b:0;s:15:\"customClassName\";b:1;s:8:\"inserter\";b:1;s:8:\"multiple\";b:1;s:8:\"reusable\";b:1;s:19:\"__experimentalColor\";b:1;s:22:\"__experimentalFontSize\";b:1;s:21:\"__experimentalPadding\";b:1;s:24:\"__experimentalLineHeight\";b:1;s:3:\"jsx\";b:0;}s:12:\"editorScript\";s:15:\"pods-blocks-api\";s:11:\"usesContext\";a:2:{i:0;s:8:\"postType\";i:1;s:6:\"postId\";}s:15:\"providesContext\";a:0:{}s:6:\"fields\";a:6:{i:0;a:4:{s:4:\"type\";s:13:\"SelectControl\";s:12:\"fieldOptions\";a:4:{s:7:\"heading\";s:8:\"Pod Name\";s:7:\"options\";a:2:{i:0;a:2:{s:5:\"label\";s:19:\"- Use Current Pod -\";s:5:\"value\";s:0:\"\";}i:1;a:2:{s:5:\"label\";s:11:\"news_update\";s:5:\"value\";s:11:\"news_update\";}}s:4:\"help\";s:87:\"Choose the pod to reference, or reference the Pod in the current context of this block.\";s:5:\"label\";s:8:\"Pod Name\";}s:16:\"attributeOptions\";a:2:{s:4:\"type\";s:6:\"object\";s:7:\"default\";a:2:{s:5:\"label\";s:19:\"- Use Current Pod -\";s:5:\"value\";s:0:\"\";}}s:4:\"name\";s:4:\"name\";}i:1;a:4:{s:4:\"type\";s:11:\"TextControl\";s:12:\"fieldOptions\";a:4:{s:9:\"className\";s:15:\"text__container\";s:4:\"type\";s:4:\"text\";s:4:\"help\";s:38:\"Use this to enable editing of an item.\";s:5:\"label\";s:10:\"Slug or ID\";}s:16:\"attributeOptions\";a:1:{s:4:\"type\";s:6:\"string\";}s:4:\"name\";s:4:\"slug\";}i:2;a:4:{s:4:\"type\";s:15:\"TextareaControl\";s:12:\"fieldOptions\";a:4:{s:9:\"className\";s:19:\"textarea__container\";s:6:\"auto_p\";b:1;s:4:\"help\";s:83:\"Comma-separated list of the Pod Fields you want to include. Default is to show all.\";s:5:\"label\";s:11:\"Form Fields\";}s:16:\"attributeOptions\";a:1:{s:4:\"type\";s:6:\"string\";}s:4:\"name\";s:6:\"fields\";}i:3;a:4:{s:4:\"type\";s:11:\"TextControl\";s:12:\"fieldOptions\";a:4:{s:9:\"className\";s:15:\"text__container\";s:4:\"type\";s:4:\"text\";s:4:\"help\";s:51:\"The label to show in the submit button of the form.\";s:5:\"label\";s:19:\"Submit Button Label\";}s:16:\"attributeOptions\";a:1:{s:4:\"type\";s:6:\"string\";}s:4:\"name\";s:5:\"label\";}i:4;a:4:{s:4:\"type\";s:11:\"TextControl\";s:12:\"fieldOptions\";a:4:{s:9:\"className\";s:15:\"text__container\";s:4:\"type\";s:4:\"text\";s:4:\"help\";s:177:\"After someone submits the form, they can be redirected anywhere you would like. You can reference the saved item ID by using \"X_ID_X\" in the URL. The default is to not redirect.\";s:5:\"label\";s:12:\"Redirect URL\";}s:16:\"attributeOptions\";a:1:{s:4:\"type\";s:6:\"string\";}s:4:\"name\";s:9:\"thank_you\";}i:5;a:4:{s:4:\"type\";s:13:\"SelectControl\";s:12:\"fieldOptions\";a:4:{s:7:\"heading\";s:11:\"Output Type\";s:7:\"options\";a:4:{i:0;a:2:{s:5:\"label\";s:22:\"Div containers (<div>)\";s:5:\"value\";s:3:\"div\";}i:1;a:2:{s:5:\"label\";s:21:\"Unordered list (<ul>)\";s:5:\"value\";s:2:\"ul\";}i:2;a:2:{s:5:\"label\";s:24:\"Paragraph elements (<p>)\";s:5:\"value\";s:1:\"p\";}i:3;a:2:{s:5:\"label\";s:20:\"Table rows (<table>)\";s:5:\"value\";s:5:\"table\";}}s:4:\"help\";s:217:\"Choose how you want your form HTML to be set up. This allows you flexibility to build and style your forms with any CSS customizations you would like. Some output types are naturally laid out better in certain themes.\";s:5:\"label\";s:11:\"Output Type\";}s:16:\"attributeOptions\";a:2:{s:4:\"type\";s:6:\"object\";s:7:\"default\";a:2:{s:5:\"label\";s:22:\"Div containers (<div>)\";s:5:\"value\";s:3:\"div\";}}s:4:\"name\";s:16:\"form_output_type\";}}s:10:\"attributes\";a:11:{s:5:\"align\";a:1:{s:4:\"type\";s:6:\"string\";}s:9:\"textColor\";a:1:{s:4:\"type\";s:6:\"string\";}s:15:\"backgroundColor\";a:1:{s:4:\"type\";s:6:\"string\";}s:8:\"fontSize\";a:1:{s:4:\"type\";s:6:\"string\";}s:5:\"style\";a:1:{s:4:\"type\";s:6:\"string\";}s:4:\"name\";a:2:{s:4:\"type\";s:6:\"object\";s:7:\"default\";a:2:{s:5:\"label\";s:19:\"- Use Current Pod -\";s:5:\"value\";s:0:\"\";}}s:4:\"slug\";a:1:{s:4:\"type\";s:6:\"string\";}s:6:\"fields\";a:1:{s:4:\"type\";s:6:\"string\";}s:5:\"label\";a:1:{s:4:\"type\";s:6:\"string\";}s:9:\"thank_you\";a:1:{s:4:\"type\";s:6:\"string\";}s:16:\"form_output_type\";a:2:{s:4:\"type\";s:6:\"object\";s:7:\"default\";a:2:{s:5:\"label\";s:22:\"Div containers (<div>)\";s:5:\"value\";s:3:\"div\";}}}s:10:\"transforms\";a:1:{s:4:\"from\";a:2:{i:0;a:4:{s:4:\"type\";s:9:\"shortcode\";s:3:\"tag\";s:9:\"pods-form\";s:10:\"attributes\";a:6:{s:4:\"name\";a:3:{s:4:\"type\";s:6:\"object\";s:6:\"source\";s:9:\"shortcode\";s:9:\"attribute\";s:4:\"name\";}s:4:\"slug\";a:3:{s:4:\"type\";s:6:\"string\";s:6:\"source\";s:9:\"shortcode\";s:9:\"attribute\";s:4:\"slug\";}s:6:\"fields\";a:3:{s:4:\"type\";s:6:\"string\";s:6:\"source\";s:9:\"shortcode\";s:9:\"attribute\";s:6:\"fields\";}s:5:\"label\";a:3:{s:4:\"type\";s:6:\"string\";s:6:\"source\";s:9:\"shortcode\";s:9:\"attribute\";s:5:\"label\";}s:9:\"thank_you\";a:3:{s:4:\"type\";s:6:\"string\";s:6:\"source\";s:9:\"shortcode\";s:9:\"attribute\";s:9:\"thank_you\";}s:16:\"form_output_type\";a:3:{s:4:\"type\";s:6:\"object\";s:6:\"source\";s:9:\"shortcode\";s:9:\"attribute\";s:16:\"form_output_type\";}}s:13:\"isMatchConfig\";a:1:{i:0;a:2:{s:4:\"name\";s:4:\"name\";s:8:\"required\";b:0;}}}i:1;a:4:{s:4:\"type\";s:9:\"shortcode\";s:3:\"tag\";s:4:\"pods\";s:10:\"attributes\";a:6:{s:4:\"name\";a:3:{s:4:\"type\";s:6:\"object\";s:6:\"source\";s:9:\"shortcode\";s:9:\"attribute\";s:4:\"name\";}s:4:\"slug\";a:3:{s:4:\"type\";s:6:\"string\";s:6:\"source\";s:9:\"shortcode\";s:9:\"attribute\";s:4:\"slug\";}s:6:\"fields\";a:3:{s:4:\"type\";s:6:\"string\";s:6:\"source\";s:9:\"shortcode\";s:9:\"attribute\";s:6:\"fields\";}s:5:\"label\";a:3:{s:4:\"type\";s:6:\"string\";s:6:\"source\";s:9:\"shortcode\";s:9:\"attribute\";s:5:\"label\";}s:9:\"thank_you\";a:3:{s:4:\"type\";s:6:\"string\";s:6:\"source\";s:9:\"shortcode\";s:9:\"attribute\";s:9:\"thank_you\";}s:16:\"form_output_type\";a:3:{s:4:\"type\";s:6:\"object\";s:6:\"source\";s:9:\"shortcode\";s:9:\"attribute\";s:16:\"form_output_type\";}}s:13:\"isMatchConfig\";a:1:{i:0;a:2:{s:4:\"name\";s:4:\"form\";s:8:\"required\";b:1;}}}}}}i:2;a:15:{s:9:\"blockName\";s:20:\"pods/pods-block-list\";s:15:\"blockGroupLabel\";s:7:\"Options\";s:5:\"title\";s:14:\"Pods Item List\";s:11:\"description\";s:24:\"List multiple Pod items.\";s:10:\"renderType\";s:3:\"php\";s:8:\"category\";s:4:\"pods\";s:4:\"icon\";s:4:\"pods\";s:8:\"keywords\";a:3:{i:0;s:4:\"pods\";i:1;s:4:\"item\";i:2;s:4:\"list\";}s:8:\"supports\";a:13:{s:4:\"html\";b:0;s:5:\"align\";b:1;s:9:\"alignWide\";b:1;s:6:\"anchor\";b:0;s:15:\"customClassName\";b:1;s:8:\"inserter\";b:1;s:8:\"multiple\";b:1;s:8:\"reusable\";b:1;s:19:\"__experimentalColor\";b:1;s:22:\"__experimentalFontSize\";b:1;s:21:\"__experimentalPadding\";b:1;s:24:\"__experimentalLineHeight\";b:1;s:3:\"jsx\";b:0;}s:12:\"editorScript\";s:15:\"pods-blocks-api\";s:11:\"usesContext\";a:1:{i:0;s:8:\"postType\";}s:15:\"providesContext\";a:0:{}s:6:\"fields\";a:18:{i:0;a:4:{s:4:\"type\";s:13:\"SelectControl\";s:12:\"fieldOptions\";a:4:{s:7:\"heading\";s:8:\"Pod Name\";s:7:\"options\";a:2:{i:0;a:2:{s:5:\"label\";s:19:\"- Use Current Pod -\";s:5:\"value\";s:0:\"\";}i:1;a:2:{s:5:\"label\";s:11:\"news_update\";s:5:\"value\";s:11:\"news_update\";}}s:4:\"help\";s:87:\"Choose the pod to reference, or reference the Pod in the current context of this block.\";s:5:\"label\";s:8:\"Pod Name\";}s:16:\"attributeOptions\";a:2:{s:4:\"type\";s:6:\"object\";s:7:\"default\";a:2:{s:5:\"label\";s:19:\"- Use Current Pod -\";s:5:\"value\";s:0:\"\";}}s:4:\"name\";s:4:\"name\";}i:1;a:4:{s:4:\"type\";s:13:\"SelectControl\";s:12:\"fieldOptions\";a:4:{s:7:\"heading\";s:8:\"Template\";s:7:\"options\";a:1:{i:0;a:2:{s:5:\"label\";s:23:\"- Use Custom Template -\";s:5:\"value\";s:0:\"\";}}s:4:\"help\";s:168:\"You can choose a previously saved Pods Template here. We recommend saving your Pods Templates with our Templates component so you can enjoy the full editing experience.\";s:5:\"label\";s:8:\"Template\";}s:16:\"attributeOptions\";a:2:{s:4:\"type\";s:6:\"object\";s:7:\"default\";a:2:{s:5:\"label\";s:23:\"- Use Custom Template -\";s:5:\"value\";s:0:\"\";}}s:4:\"name\";s:8:\"template\";}i:2;a:4:{s:4:\"type\";s:15:\"TextareaControl\";s:12:\"fieldOptions\";a:4:{s:9:\"className\";s:19:\"textarea__container\";s:6:\"auto_p\";b:1;s:4:\"help\";s:149:\"You can specify a custom template to use, it accepts HTML and magic tags. Any content here will override whatever Template you may have chosen above.\";s:5:\"label\";s:15:\"Custom Template\";}s:16:\"attributeOptions\";a:1:{s:4:\"type\";s:6:\"string\";}s:4:\"name\";s:15:\"template_custom\";}i:3;a:4:{s:4:\"type\";s:15:\"TextareaControl\";s:12:\"fieldOptions\";a:4:{s:9:\"className\";s:19:\"textarea__container\";s:6:\"auto_p\";b:1;s:4:\"help\";s:247:\"This content will appear before the list of templated items. A useful way to use this option is if you have a template that uses \"li\" HTML tags, you can use the \"ul\" HTML tag to start an unordered list. This will only be shown if items were found.\";s:5:\"label\";s:19:\"Content Before List\";}s:16:\"attributeOptions\";a:1:{s:4:\"type\";s:6:\"string\";}s:4:\"name\";s:14:\"content_before\";}i:4;a:4:{s:4:\"type\";s:15:\"TextareaControl\";s:12:\"fieldOptions\";a:4:{s:9:\"className\";s:19:\"textarea__container\";s:6:\"auto_p\";b:1;s:4:\"help\";s:245:\"This content will appear after the list of templated items. A useful way to use this option is if you have a template that uses \"li\" HTML tags, you can use the \"/ul\" HTML tag to end an unordered list. This will only be shown if items were found.\";s:5:\"label\";s:18:\"Content After List\";}s:16:\"attributeOptions\";a:1:{s:4:\"type\";s:6:\"string\";}s:4:\"name\";s:13:\"content_after\";}i:5;a:4:{s:4:\"type\";s:15:\"TextareaControl\";s:12:\"fieldOptions\";a:4:{s:9:\"className\";s:19:\"textarea__container\";s:6:\"auto_p\";b:1;s:4:\"help\";s:77:\"If there are no items shown, this content will be shown in the block\'s place.\";s:5:\"label\";s:17:\"Not Found Content\";}s:16:\"attributeOptions\";a:2:{s:4:\"type\";s:6:\"string\";s:7:\"default\";s:21:\"No content was found.\";}s:4:\"name\";s:9:\"not_found\";}i:6;a:4:{s:4:\"type\";s:13:\"NumberControl\";s:12:\"fieldOptions\";a:5:{s:18:\"isShiftStepEnabled\";b:0;s:9:\"shiftStep\";b:0;s:4:\"step\";i:1;s:4:\"help\";s:346:\"Specify the number of items to show but keep in mind that the more items you show the longer it may take for the page to load. You should avoid using \"-1\" here unless you know what you\'re doing. If your pod has many items, it could stop the page from loading and cause errors. Default number of items to show is to show 15 items. See also: find()\";s:5:\"label\";s:5:\"Limit\";}s:16:\"attributeOptions\";a:2:{s:4:\"type\";s:6:\"number\";s:7:\"default\";i:15;}s:4:\"name\";s:5:\"limit\";}i:7;a:4:{s:4:\"type\";s:11:\"TextControl\";s:12:\"fieldOptions\";a:4:{s:9:\"className\";s:15:\"text__container\";s:4:\"type\";s:4:\"text\";s:4:\"help\";s:256:\"You can specify what field to order by here. That could be t.post_title ASC or you may want to use a custom field like my_field.meta_value ASC. The normal MySQL syntax works here, so you can sort ascending with ASC or descending with DESC. See also: find()\";s:5:\"label\";s:8:\"Order By\";}s:16:\"attributeOptions\";a:1:{s:4:\"type\";s:6:\"string\";}s:4:\"name\";s:7:\"orderby\";}i:8;a:4:{s:4:\"type\";s:11:\"TextControl\";s:12:\"fieldOptions\";a:4:{s:9:\"className\";s:15:\"text__container\";s:4:\"type\";s:4:\"text\";s:4:\"help\";s:290:\"You can specify what field to restrict the item list by here. That could be t.post_title LIKE \"%repairs%\" or you may want to reference a custom field like  my_field.meta_value = \"123\". For a list of all things available for you to query, follow the find() Notation Options. See also: find()\";s:5:\"label\";s:5:\"Where\";}s:16:\"attributeOptions\";a:1:{s:4:\"type\";s:6:\"string\";}s:4:\"name\";s:5:\"where\";}i:9;a:4:{s:4:\"type\";s:15:\"CheckboxControl\";s:12:\"fieldOptions\";a:3:{s:7:\"heading\";s:17:\"Enable Pagination\";s:5:\"label\";s:3:\"Yes\";s:4:\"help\";s:116:\"Whether to show pagination for the list of items. This will only show if there is more than one page of items found.\";}s:16:\"attributeOptions\";a:2:{s:4:\"type\";s:7:\"boolean\";s:7:\"default\";b:0;}s:4:\"name\";s:10:\"pagination\";}i:10;a:4:{s:4:\"type\";s:13:\"SelectControl\";s:12:\"fieldOptions\";a:4:{s:7:\"heading\";s:19:\"Pagination Location\";s:7:\"options\";a:3:{i:0;a:2:{s:5:\"label\";s:11:\"Before list\";s:5:\"value\";s:6:\"before\";}i:1;a:2:{s:5:\"label\";s:10:\"After list\";s:5:\"value\";s:5:\"after\";}i:2;a:2:{s:5:\"label\";s:21:\"Before and After list\";s:5:\"value\";s:4:\"both\";}}s:4:\"help\";s:36:\"The location to show the pagination.\";s:5:\"label\";s:19:\"Pagination Location\";}s:16:\"attributeOptions\";a:2:{s:4:\"type\";s:6:\"object\";s:7:\"default\";a:2:{s:5:\"label\";s:10:\"After list\";s:5:\"value\";s:5:\"after\";}}s:4:\"name\";s:19:\"pagination_location\";}i:11;a:4:{s:4:\"type\";s:13:\"SelectControl\";s:12:\"fieldOptions\";a:4:{s:7:\"heading\";s:15:\"Pagination Type\";s:7:\"options\";a:4:{i:0;a:2:{s:5:\"label\";s:11:\"Basic links\";s:5:\"value\";s:8:\"advanced\";}i:1;a:2:{s:5:\"label\";s:28:\"Previous and Next Links only\";s:5:\"value\";s:6:\"simple\";}i:2;a:2:{s:5:\"label\";s:64:\"Use an unordered list with paginate_links() native functionality\";s:5:\"value\";s:4:\"list\";}i:3;a:2:{s:5:\"label\";s:47:\"Use basic paginate_links() native functionality\";s:5:\"value\";s:8:\"paginate\";}}s:4:\"help\";s:43:\"Choose which kind of pagination to display.\";s:5:\"label\";s:15:\"Pagination Type\";}s:16:\"attributeOptions\";a:2:{s:4:\"type\";s:6:\"object\";s:7:\"default\";a:2:{s:5:\"label\";s:11:\"Basic links\";s:5:\"value\";s:8:\"advanced\";}}s:4:\"name\";s:15:\"pagination_type\";}i:12;a:4:{s:4:\"type\";s:15:\"CheckboxControl\";s:12:\"fieldOptions\";a:3:{s:7:\"heading\";s:14:\"Enable Filters\";s:5:\"label\";s:3:\"Yes\";s:4:\"help\";s:46:\"Whether to show filters for the list of items.\";}s:16:\"attributeOptions\";a:2:{s:4:\"type\";s:7:\"boolean\";s:7:\"default\";b:0;}s:4:\"name\";s:14:\"filters_enable\";}i:13;a:4:{s:4:\"type\";s:11:\"TextControl\";s:12:\"fieldOptions\";a:4:{s:9:\"className\";s:15:\"text__container\";s:4:\"type\";s:4:\"text\";s:4:\"help\";s:115:\"Comma-separated list of fields you want to allow filtering by. Default is to just show a text field to search with.\";s:5:\"label\";s:13:\"Filter Fields\";}s:16:\"attributeOptions\";a:1:{s:4:\"type\";s:6:\"string\";}s:4:\"name\";s:7:\"filters\";}i:14;a:4:{s:4:\"type\";s:11:\"TextControl\";s:12:\"fieldOptions\";a:4:{s:9:\"className\";s:15:\"text__container\";s:4:\"type\";s:4:\"text\";s:4:\"help\";s:55:\"The label to show for the filters. Default is \"Search\".\";s:5:\"label\";s:20:\"Custom Filters Label\";}s:16:\"attributeOptions\";a:1:{s:4:\"type\";s:6:\"string\";}s:4:\"name\";s:13:\"filters_label\";}i:15;a:4:{s:4:\"type\";s:13:\"SelectControl\";s:12:\"fieldOptions\";a:4:{s:7:\"heading\";s:16:\"Filters Location\";s:7:\"options\";a:2:{i:0;a:2:{s:5:\"label\";s:11:\"Before list\";s:5:\"value\";s:6:\"before\";}i:1;a:2:{s:5:\"label\";s:10:\"After list\";s:5:\"value\";s:5:\"after\";}}s:4:\"help\";s:33:\"The location to show the filters.\";s:5:\"label\";s:16:\"Filters Location\";}s:16:\"attributeOptions\";a:2:{s:4:\"type\";s:6:\"object\";s:7:\"default\";a:2:{s:5:\"label\";s:11:\"Before list\";s:5:\"value\";s:6:\"before\";}}s:4:\"name\";s:16:\"filters_location\";}i:16;a:4:{s:4:\"type\";s:13:\"SelectControl\";s:12:\"fieldOptions\";a:4:{s:7:\"heading\";s:10:\"Cache Mode\";s:7:\"options\";a:4:{i:0;a:2:{s:5:\"label\";s:15:\"Disable Caching\";s:5:\"value\";s:4:\"none\";}i:1;a:2:{s:5:\"label\";s:12:\"Object Cache\";s:5:\"value\";s:5:\"cache\";}i:2;a:2:{s:5:\"label\";s:9:\"Transient\";s:5:\"value\";s:9:\"transient\";}i:3;a:2:{s:5:\"label\";s:14:\"Site Transient\";s:5:\"value\";s:14:\"site-transient\";}}s:4:\"help\";s:34:\"The mode to cache the output with.\";s:5:\"label\";s:10:\"Cache Mode\";}s:16:\"attributeOptions\";a:2:{s:4:\"type\";s:6:\"object\";s:7:\"default\";a:2:{s:5:\"label\";s:15:\"Disable Caching\";s:5:\"value\";s:4:\"none\";}}s:4:\"name\";s:10:\"cache_mode\";}i:17;a:4:{s:4:\"type\";s:13:\"NumberControl\";s:12:\"fieldOptions\";a:5:{s:18:\"isShiftStepEnabled\";b:0;s:9:\"shiftStep\";b:0;s:4:\"step\";i:1;s:4:\"help\";s:48:\"Set how long to cache the output for in seconds.\";s:5:\"label\";s:7:\"Expires\";}s:16:\"attributeOptions\";a:2:{s:4:\"type\";s:6:\"number\";s:7:\"default\";i:300;}s:4:\"name\";s:7:\"expires\";}}s:10:\"attributes\";a:23:{s:5:\"align\";a:1:{s:4:\"type\";s:6:\"string\";}s:9:\"textColor\";a:1:{s:4:\"type\";s:6:\"string\";}s:15:\"backgroundColor\";a:1:{s:4:\"type\";s:6:\"string\";}s:8:\"fontSize\";a:1:{s:4:\"type\";s:6:\"string\";}s:5:\"style\";a:1:{s:4:\"type\";s:6:\"string\";}s:4:\"name\";a:2:{s:4:\"type\";s:6:\"object\";s:7:\"default\";a:2:{s:5:\"label\";s:19:\"- Use Current Pod -\";s:5:\"value\";s:0:\"\";}}s:8:\"template\";a:2:{s:4:\"type\";s:6:\"object\";s:7:\"default\";a:2:{s:5:\"label\";s:23:\"- Use Custom Template -\";s:5:\"value\";s:0:\"\";}}s:15:\"template_custom\";a:1:{s:4:\"type\";s:6:\"string\";}s:14:\"content_before\";a:1:{s:4:\"type\";s:6:\"string\";}s:13:\"content_after\";a:1:{s:4:\"type\";s:6:\"string\";}s:9:\"not_found\";a:2:{s:4:\"type\";s:6:\"string\";s:7:\"default\";s:21:\"No content was found.\";}s:5:\"limit\";a:2:{s:4:\"type\";s:6:\"number\";s:7:\"default\";i:15;}s:7:\"orderby\";a:1:{s:4:\"type\";s:6:\"string\";}s:5:\"where\";a:1:{s:4:\"type\";s:6:\"string\";}s:10:\"pagination\";a:2:{s:4:\"type\";s:7:\"boolean\";s:7:\"default\";b:0;}s:19:\"pagination_location\";a:2:{s:4:\"type\";s:6:\"object\";s:7:\"default\";a:2:{s:5:\"label\";s:10:\"After list\";s:5:\"value\";s:5:\"after\";}}s:15:\"pagination_type\";a:2:{s:4:\"type\";s:6:\"object\";s:7:\"default\";a:2:{s:5:\"label\";s:11:\"Basic links\";s:5:\"value\";s:8:\"advanced\";}}s:14:\"filters_enable\";a:2:{s:4:\"type\";s:7:\"boolean\";s:7:\"default\";b:0;}s:7:\"filters\";a:1:{s:4:\"type\";s:6:\"string\";}s:13:\"filters_label\";a:1:{s:4:\"type\";s:6:\"string\";}s:16:\"filters_location\";a:2:{s:4:\"type\";s:6:\"object\";s:7:\"default\";a:2:{s:5:\"label\";s:11:\"Before list\";s:5:\"value\";s:6:\"before\";}}s:10:\"cache_mode\";a:2:{s:4:\"type\";s:6:\"object\";s:7:\"default\";a:2:{s:5:\"label\";s:15:\"Disable Caching\";s:5:\"value\";s:4:\"none\";}}s:7:\"expires\";a:2:{s:4:\"type\";s:6:\"number\";s:7:\"default\";i:300;}}s:10:\"transforms\";a:1:{s:4:\"from\";a:1:{i:0;a:4:{s:4:\"type\";s:9:\"shortcode\";s:3:\"tag\";s:4:\"pods\";s:10:\"attributes\";a:18:{s:4:\"name\";a:3:{s:4:\"type\";s:6:\"object\";s:6:\"source\";s:9:\"shortcode\";s:9:\"attribute\";s:4:\"name\";}s:8:\"template\";a:3:{s:4:\"type\";s:6:\"object\";s:6:\"source\";s:9:\"shortcode\";s:9:\"attribute\";s:8:\"template\";}s:15:\"template_custom\";a:3:{s:4:\"type\";s:7:\"content\";s:6:\"source\";s:9:\"shortcode\";s:9:\"attribute\";s:15:\"template_custom\";}s:14:\"content_before\";a:3:{s:4:\"type\";s:6:\"string\";s:6:\"source\";s:9:\"shortcode\";s:9:\"attribute\";s:14:\"content_before\";}s:13:\"content_after\";a:3:{s:4:\"type\";s:6:\"string\";s:6:\"source\";s:9:\"shortcode\";s:9:\"attribute\";s:13:\"content_after\";}s:9:\"not_found\";a:3:{s:4:\"type\";s:6:\"string\";s:6:\"source\";s:9:\"shortcode\";s:9:\"attribute\";s:9:\"not_found\";}s:5:\"limit\";a:3:{s:4:\"type\";s:7:\"integer\";s:6:\"source\";s:9:\"shortcode\";s:9:\"attribute\";s:5:\"limit\";}s:7:\"orderby\";a:3:{s:4:\"type\";s:6:\"string\";s:6:\"source\";s:9:\"shortcode\";s:9:\"attribute\";s:7:\"orderby\";}s:5:\"where\";a:3:{s:4:\"type\";s:6:\"string\";s:6:\"source\";s:9:\"shortcode\";s:9:\"attribute\";s:5:\"where\";}s:10:\"pagination\";a:3:{s:4:\"type\";s:7:\"boolean\";s:6:\"source\";s:9:\"shortcode\";s:9:\"attribute\";s:10:\"pagination\";}s:19:\"pagination_location\";a:3:{s:4:\"type\";s:6:\"object\";s:6:\"source\";s:9:\"shortcode\";s:9:\"attribute\";s:19:\"pagination_location\";}s:15:\"pagination_type\";a:3:{s:4:\"type\";s:6:\"object\";s:6:\"source\";s:9:\"shortcode\";s:9:\"attribute\";s:15:\"pagination_type\";}s:14:\"filters_enable\";a:3:{s:4:\"type\";s:7:\"boolean\";s:6:\"source\";s:9:\"shortcode\";s:9:\"attribute\";s:14:\"filters_enable\";}s:7:\"filters\";a:3:{s:4:\"type\";s:6:\"string\";s:6:\"source\";s:9:\"shortcode\";s:9:\"attribute\";s:7:\"filters\";}s:13:\"filters_label\";a:3:{s:4:\"type\";s:6:\"string\";s:6:\"source\";s:9:\"shortcode\";s:9:\"attribute\";s:13:\"filters_label\";}s:16:\"filters_location\";a:3:{s:4:\"type\";s:6:\"object\";s:6:\"source\";s:9:\"shortcode\";s:9:\"attribute\";s:16:\"filters_location\";}s:10:\"cache_mode\";a:3:{s:4:\"type\";s:6:\"object\";s:6:\"source\";s:9:\"shortcode\";s:9:\"attribute\";s:10:\"cache_mode\";}s:7:\"expires\";a:3:{s:4:\"type\";s:6:\"string\";s:6:\"source\";s:9:\"shortcode\";s:9:\"attribute\";s:7:\"expires\";}}s:13:\"isMatchConfig\";a:4:{i:0;a:2:{s:4:\"name\";s:4:\"slug\";s:8:\"excluded\";b:1;}i:1;a:2:{s:4:\"name\";s:5:\"field\";s:8:\"excluded\";b:1;}i:2;a:2:{s:4:\"name\";s:4:\"form\";s:8:\"excluded\";b:1;}i:3;a:2:{s:4:\"name\";s:4:\"view\";s:8:\"excluded\";b:1;}}}}}}i:3;a:15:{s:9:\"blockName\";s:22:\"pods/pods-block-single\";s:15:\"blockGroupLabel\";s:7:\"Options\";s:5:\"title\";s:16:\"Pods Single Item\";s:11:\"description\";s:26:\"Display a single Pod item.\";s:10:\"renderType\";s:3:\"php\";s:8:\"category\";s:4:\"pods\";s:4:\"icon\";s:4:\"pods\";s:8:\"keywords\";a:4:{i:0;s:4:\"pods\";i:1;s:6:\"single\";i:2;s:4:\"item\";i:3;s:5:\"field\";}s:8:\"supports\";a:13:{s:4:\"html\";b:0;s:5:\"align\";b:1;s:9:\"alignWide\";b:1;s:6:\"anchor\";b:0;s:15:\"customClassName\";b:1;s:8:\"inserter\";b:1;s:8:\"multiple\";b:1;s:8:\"reusable\";b:1;s:19:\"__experimentalColor\";b:1;s:22:\"__experimentalFontSize\";b:1;s:21:\"__experimentalPadding\";b:1;s:24:\"__experimentalLineHeight\";b:1;s:3:\"jsx\";b:0;}s:12:\"editorScript\";s:15:\"pods-blocks-api\";s:11:\"usesContext\";a:2:{i:0;s:8:\"postType\";i:1;s:6:\"postId\";}s:15:\"providesContext\";a:0:{}s:6:\"fields\";a:4:{i:0;a:4:{s:4:\"type\";s:13:\"SelectControl\";s:12:\"fieldOptions\";a:4:{s:7:\"heading\";s:8:\"Pod Name\";s:7:\"options\";a:2:{i:0;a:2:{s:5:\"label\";s:19:\"- Use Current Pod -\";s:5:\"value\";s:0:\"\";}i:1;a:2:{s:5:\"label\";s:11:\"news_update\";s:5:\"value\";s:11:\"news_update\";}}s:4:\"help\";s:87:\"Choose the pod to reference, or reference the Pod in the current context of this block.\";s:5:\"label\";s:8:\"Pod Name\";}s:16:\"attributeOptions\";a:2:{s:4:\"type\";s:6:\"object\";s:7:\"default\";a:2:{s:5:\"label\";s:19:\"- Use Current Pod -\";s:5:\"value\";s:0:\"\";}}s:4:\"name\";s:4:\"name\";}i:1;a:4:{s:4:\"type\";s:11:\"TextControl\";s:12:\"fieldOptions\";a:4:{s:9:\"className\";s:15:\"text__container\";s:4:\"type\";s:4:\"text\";s:4:\"help\";s:39:\"Defaults to using the current pod item.\";s:5:\"label\";s:10:\"Slug or ID\";}s:16:\"attributeOptions\";a:1:{s:4:\"type\";s:6:\"string\";}s:4:\"name\";s:4:\"slug\";}i:2;a:4:{s:4:\"type\";s:13:\"SelectControl\";s:12:\"fieldOptions\";a:4:{s:7:\"heading\";s:8:\"Template\";s:7:\"options\";a:1:{i:0;a:2:{s:5:\"label\";s:23:\"- Use Custom Template -\";s:5:\"value\";s:0:\"\";}}s:4:\"help\";s:168:\"You can choose a previously saved Pods Template here. We recommend saving your Pods Templates with our Templates component so you can enjoy the full editing experience.\";s:5:\"label\";s:8:\"Template\";}s:16:\"attributeOptions\";a:2:{s:4:\"type\";s:6:\"object\";s:7:\"default\";a:2:{s:5:\"label\";s:23:\"- Use Custom Template -\";s:5:\"value\";s:0:\"\";}}s:4:\"name\";s:8:\"template\";}i:3;a:4:{s:4:\"type\";s:15:\"TextareaControl\";s:12:\"fieldOptions\";a:4:{s:9:\"className\";s:19:\"textarea__container\";s:6:\"auto_p\";b:1;s:4:\"help\";s:149:\"You can specify a custom template to use, it accepts HTML and magic tags. Any content here will override whatever Template you may have chosen above.\";s:5:\"label\";s:15:\"Custom Template\";}s:16:\"attributeOptions\";a:1:{s:4:\"type\";s:6:\"string\";}s:4:\"name\";s:15:\"template_custom\";}}s:10:\"attributes\";a:9:{s:5:\"align\";a:1:{s:4:\"type\";s:6:\"string\";}s:9:\"textColor\";a:1:{s:4:\"type\";s:6:\"string\";}s:15:\"backgroundColor\";a:1:{s:4:\"type\";s:6:\"string\";}s:8:\"fontSize\";a:1:{s:4:\"type\";s:6:\"string\";}s:5:\"style\";a:1:{s:4:\"type\";s:6:\"string\";}s:4:\"name\";a:2:{s:4:\"type\";s:6:\"object\";s:7:\"default\";a:2:{s:5:\"label\";s:19:\"- Use Current Pod -\";s:5:\"value\";s:0:\"\";}}s:4:\"slug\";a:1:{s:4:\"type\";s:6:\"string\";}s:8:\"template\";a:2:{s:4:\"type\";s:6:\"object\";s:7:\"default\";a:2:{s:5:\"label\";s:23:\"- Use Custom Template -\";s:5:\"value\";s:0:\"\";}}s:15:\"template_custom\";a:1:{s:4:\"type\";s:6:\"string\";}}s:10:\"transforms\";a:1:{s:4:\"from\";a:1:{i:0;a:4:{s:4:\"type\";s:9:\"shortcode\";s:3:\"tag\";s:4:\"pods\";s:10:\"attributes\";a:4:{s:4:\"name\";a:3:{s:4:\"type\";s:6:\"object\";s:6:\"source\";s:9:\"shortcode\";s:9:\"attribute\";s:4:\"name\";}s:4:\"slug\";a:3:{s:4:\"type\";s:6:\"string\";s:6:\"source\";s:9:\"shortcode\";s:9:\"attribute\";s:4:\"slug\";}s:8:\"template\";a:3:{s:4:\"type\";s:6:\"object\";s:6:\"source\";s:9:\"shortcode\";s:9:\"attribute\";s:8:\"template\";}s:15:\"template_custom\";a:3:{s:4:\"type\";s:7:\"content\";s:6:\"source\";s:9:\"shortcode\";s:9:\"attribute\";s:15:\"template_custom\";}}s:13:\"isMatchConfig\";a:17:{i:0;a:2:{s:4:\"name\";s:5:\"field\";s:8:\"excluded\";b:1;}i:1;a:2:{s:4:\"name\";s:4:\"form\";s:8:\"excluded\";b:1;}i:2;a:2:{s:4:\"name\";s:4:\"view\";s:8:\"excluded\";b:1;}i:3;a:2:{s:4:\"name\";s:14:\"content_before\";s:8:\"excluded\";b:1;}i:4;a:2:{s:4:\"name\";s:13:\"content_after\";s:8:\"excluded\";b:1;}i:5;a:2:{s:4:\"name\";s:9:\"not_found\";s:8:\"excluded\";b:1;}i:6;a:2:{s:4:\"name\";s:5:\"limit\";s:8:\"excluded\";b:1;}i:7;a:2:{s:4:\"name\";s:7:\"orderby\";s:8:\"excluded\";b:1;}i:8;a:2:{s:4:\"name\";s:5:\"where\";s:8:\"excluded\";b:1;}i:9;a:2:{s:4:\"name\";s:10:\"pagination\";s:8:\"excluded\";b:1;}i:10;a:2:{s:4:\"name\";s:19:\"pagination_location\";s:8:\"excluded\";b:1;}i:11;a:2:{s:4:\"name\";s:15:\"pagination_type\";s:8:\"excluded\";b:1;}i:12;a:2:{s:4:\"name\";s:7:\"filters\";s:8:\"excluded\";b:1;}i:13;a:2:{s:4:\"name\";s:13:\"filters_label\";s:8:\"excluded\";b:1;}i:14;a:2:{s:4:\"name\";s:16:\"filters_location\";s:8:\"excluded\";b:1;}i:15;a:2:{s:4:\"name\";s:10:\"cache_mode\";s:8:\"excluded\";b:1;}i:16;a:2:{s:4:\"name\";s:7:\"expires\";s:8:\"excluded\";b:1;}}}}}}i:4;a:15:{s:9:\"blockName\";s:34:\"pods/pods-block-single-list-fields\";s:15:\"blockGroupLabel\";s:7:\"Options\";s:5:\"title\";s:30:\"Pods Single Item - List Fields\";s:11:\"description\";s:37:\"Display fields for a single Pod item.\";s:10:\"renderType\";s:3:\"php\";s:8:\"category\";s:4:\"pods\";s:4:\"icon\";s:4:\"pods\";s:8:\"keywords\";a:5:{i:0;s:4:\"pods\";i:1;s:6:\"single\";i:2;s:4:\"item\";i:3;s:4:\"list\";i:4;s:6:\"fields\";}s:8:\"supports\";a:13:{s:4:\"html\";b:0;s:5:\"align\";b:1;s:9:\"alignWide\";b:1;s:6:\"anchor\";b:0;s:15:\"customClassName\";b:1;s:8:\"inserter\";b:1;s:8:\"multiple\";b:1;s:8:\"reusable\";b:1;s:19:\"__experimentalColor\";b:1;s:22:\"__experimentalFontSize\";b:1;s:21:\"__experimentalPadding\";b:1;s:24:\"__experimentalLineHeight\";b:1;s:3:\"jsx\";b:0;}s:12:\"editorScript\";s:15:\"pods-blocks-api\";s:11:\"usesContext\";a:2:{i:0;s:8:\"postType\";i:1;s:6:\"postId\";}s:15:\"providesContext\";a:0:{}s:6:\"fields\";a:5:{i:0;a:4:{s:4:\"type\";s:13:\"SelectControl\";s:12:\"fieldOptions\";a:4:{s:7:\"heading\";s:8:\"Pod Name\";s:7:\"options\";a:2:{i:0;a:2:{s:5:\"label\";s:19:\"- Use Current Pod -\";s:5:\"value\";s:0:\"\";}i:1;a:2:{s:5:\"label\";s:11:\"news_update\";s:5:\"value\";s:11:\"news_update\";}}s:4:\"help\";s:87:\"Choose the pod to reference, or reference the Pod in the current context of this block.\";s:5:\"label\";s:8:\"Pod Name\";}s:16:\"attributeOptions\";a:2:{s:4:\"type\";s:6:\"object\";s:7:\"default\";a:2:{s:5:\"label\";s:19:\"- Use Current Pod -\";s:5:\"value\";s:0:\"\";}}s:4:\"name\";s:4:\"name\";}i:1;a:4:{s:4:\"type\";s:11:\"TextControl\";s:12:\"fieldOptions\";a:4:{s:9:\"className\";s:15:\"text__container\";s:4:\"type\";s:4:\"text\";s:4:\"help\";s:39:\"Defaults to using the current pod item.\";s:5:\"label\";s:10:\"Slug or ID\";}s:16:\"attributeOptions\";a:1:{s:4:\"type\";s:6:\"string\";}s:4:\"name\";s:4:\"slug\";}i:2;a:4:{s:4:\"type\";s:13:\"SelectControl\";s:12:\"fieldOptions\";a:4:{s:7:\"heading\";s:11:\"Output Type\";s:7:\"options\";a:5:{i:0;a:2:{s:5:\"label\";s:21:\"Unordered list (<ul>)\";s:5:\"value\";s:2:\"ul\";}i:1;a:2:{s:5:\"label\";s:23:\"Description list (<dl>)\";s:5:\"value\";s:2:\"dl\";}i:2;a:2:{s:5:\"label\";s:24:\"Paragraph elements (<p>)\";s:5:\"value\";s:1:\"p\";}i:3;a:2:{s:5:\"label\";s:22:\"Div containers (<div>)\";s:5:\"value\";s:3:\"div\";}i:4;a:2:{s:5:\"label\";s:20:\"Table rows (<table>)\";s:5:\"value\";s:5:\"table\";}}s:4:\"help\";s:220:\"Choose how you want your output HTML to be set up. This allows you flexibility to build and style your output with any CSS customizations you would like. Some output types are naturally laid out better in certain themes.\";s:5:\"label\";s:11:\"Output Type\";}s:16:\"attributeOptions\";a:2:{s:4:\"type\";s:6:\"object\";s:7:\"default\";a:2:{s:5:\"label\";s:21:\"Unordered list (<ul>)\";s:5:\"value\";s:2:\"ul\";}}s:4:\"name\";s:19:\"display_output_type\";}i:3;a:4:{s:4:\"type\";s:15:\"TextareaControl\";s:12:\"fieldOptions\";a:4:{s:9:\"className\";s:19:\"textarea__container\";s:6:\"auto_p\";b:1;s:4:\"help\";s:122:\"Comma-separated list of the Pod Fields you want to display. Default is to show all. Use this OR the Exclude Fields option.\";s:5:\"label\";s:14:\"Display Fields\";}s:16:\"attributeOptions\";a:1:{s:4:\"type\";s:6:\"string\";}s:4:\"name\";s:14:\"display_fields\";}i:4;a:4:{s:4:\"type\";s:15:\"TextareaControl\";s:12:\"fieldOptions\";a:4:{s:9:\"className\";s:19:\"textarea__container\";s:6:\"auto_p\";b:1;s:4:\"help\";s:135:\"Comma-separated list of the Pod Fields you want to exclude from display. Default is to show all. Use this OR the Display Fields option.\";s:5:\"label\";s:14:\"Exclude Fields\";}s:16:\"attributeOptions\";a:1:{s:4:\"type\";s:6:\"string\";}s:4:\"name\";s:14:\"exclude_fields\";}}s:10:\"attributes\";a:10:{s:5:\"align\";a:1:{s:4:\"type\";s:6:\"string\";}s:9:\"textColor\";a:1:{s:4:\"type\";s:6:\"string\";}s:15:\"backgroundColor\";a:1:{s:4:\"type\";s:6:\"string\";}s:8:\"fontSize\";a:1:{s:4:\"type\";s:6:\"string\";}s:5:\"style\";a:1:{s:4:\"type\";s:6:\"string\";}s:4:\"name\";a:2:{s:4:\"type\";s:6:\"object\";s:7:\"default\";a:2:{s:5:\"label\";s:19:\"- Use Current Pod -\";s:5:\"value\";s:0:\"\";}}s:4:\"slug\";a:1:{s:4:\"type\";s:6:\"string\";}s:19:\"display_output_type\";a:2:{s:4:\"type\";s:6:\"object\";s:7:\"default\";a:2:{s:5:\"label\";s:21:\"Unordered list (<ul>)\";s:5:\"value\";s:2:\"ul\";}}s:14:\"display_fields\";a:1:{s:4:\"type\";s:6:\"string\";}s:14:\"exclude_fields\";a:1:{s:4:\"type\";s:6:\"string\";}}s:10:\"transforms\";a:0:{}}i:5;a:15:{s:9:\"blockName\";s:20:\"pods/pods-block-view\";s:15:\"blockGroupLabel\";s:7:\"Options\";s:5:\"title\";s:9:\"Pods View\";s:11:\"description\";s:49:\"Include a file from a theme, with caching options\";s:10:\"renderType\";s:3:\"php\";s:8:\"category\";s:4:\"pods\";s:4:\"icon\";s:4:\"pods\";s:8:\"keywords\";a:3:{i:0;s:4:\"pods\";i:1;s:4:\"view\";i:2;s:7:\"include\";}s:8:\"supports\";a:13:{s:4:\"html\";b:0;s:5:\"align\";b:1;s:9:\"alignWide\";b:1;s:6:\"anchor\";b:0;s:15:\"customClassName\";b:1;s:8:\"inserter\";b:1;s:8:\"multiple\";b:1;s:8:\"reusable\";b:1;s:19:\"__experimentalColor\";b:1;s:22:\"__experimentalFontSize\";b:1;s:21:\"__experimentalPadding\";b:1;s:24:\"__experimentalLineHeight\";b:1;s:3:\"jsx\";b:0;}s:12:\"editorScript\";s:15:\"pods-blocks-api\";s:11:\"usesContext\";a:0:{}s:15:\"providesContext\";a:0:{}s:6:\"fields\";a:3:{i:0;a:4:{s:4:\"type\";s:11:\"TextControl\";s:12:\"fieldOptions\";a:4:{s:9:\"className\";s:15:\"text__container\";s:4:\"type\";s:4:\"text\";s:4:\"help\";s:117:\"This is the file location relative to your theme or child theme folder. For example: my-text.php or parts/ad-spot.php\";s:5:\"label\";s:26:\"File to include from theme\";}s:16:\"attributeOptions\";a:1:{s:4:\"type\";s:6:\"string\";}s:4:\"name\";s:4:\"view\";}i:1;a:4:{s:4:\"type\";s:13:\"SelectControl\";s:12:\"fieldOptions\";a:4:{s:7:\"heading\";s:10:\"Cache Mode\";s:7:\"options\";a:4:{i:0;a:2:{s:5:\"label\";s:15:\"Disable Caching\";s:5:\"value\";s:4:\"none\";}i:1;a:2:{s:5:\"label\";s:12:\"Object Cache\";s:5:\"value\";s:5:\"cache\";}i:2;a:2:{s:5:\"label\";s:9:\"Transient\";s:5:\"value\";s:9:\"transient\";}i:3;a:2:{s:5:\"label\";s:14:\"Site Transient\";s:5:\"value\";s:14:\"site-transient\";}}s:4:\"help\";s:34:\"The mode to cache the output with.\";s:5:\"label\";s:10:\"Cache Mode\";}s:16:\"attributeOptions\";a:2:{s:4:\"type\";s:6:\"object\";s:7:\"default\";a:2:{s:5:\"label\";s:15:\"Disable Caching\";s:5:\"value\";s:4:\"none\";}}s:4:\"name\";s:10:\"cache_mode\";}i:2;a:4:{s:4:\"type\";s:13:\"NumberControl\";s:12:\"fieldOptions\";a:5:{s:18:\"isShiftStepEnabled\";b:0;s:9:\"shiftStep\";b:0;s:4:\"step\";i:1;s:4:\"help\";s:48:\"Set how long to cache the output for in seconds.\";s:5:\"label\";s:7:\"Expires\";}s:16:\"attributeOptions\";a:2:{s:4:\"type\";s:6:\"number\";s:7:\"default\";i:300;}s:4:\"name\";s:7:\"expires\";}}s:10:\"attributes\";a:8:{s:5:\"align\";a:1:{s:4:\"type\";s:6:\"string\";}s:9:\"textColor\";a:1:{s:4:\"type\";s:6:\"string\";}s:15:\"backgroundColor\";a:1:{s:4:\"type\";s:6:\"string\";}s:8:\"fontSize\";a:1:{s:4:\"type\";s:6:\"string\";}s:5:\"style\";a:1:{s:4:\"type\";s:6:\"string\";}s:4:\"view\";a:1:{s:4:\"type\";s:6:\"string\";}s:10:\"cache_mode\";a:2:{s:4:\"type\";s:6:\"object\";s:7:\"default\";a:2:{s:5:\"label\";s:15:\"Disable Caching\";s:5:\"value\";s:4:\"none\";}}s:7:\"expires\";a:2:{s:4:\"type\";s:6:\"number\";s:7:\"default\";i:300;}}s:10:\"transforms\";a:1:{s:4:\"from\";a:1:{i:0;a:4:{s:4:\"type\";s:9:\"shortcode\";s:3:\"tag\";s:4:\"pods\";s:10:\"attributes\";a:1:{s:4:\"view\";a:3:{s:4:\"type\";s:6:\"string\";s:6:\"source\";s:9:\"shortcode\";s:9:\"attribute\";s:4:\"view\";}}s:13:\"isMatchConfig\";a:1:{i:0;a:2:{s:4:\"name\";s:4:\"view\";s:8:\"required\";b:1;}}}}}}}', 'no'),
(1447, '_transient_timeout_pods_pods_flush_rewrites-2913', '1684244683', 'no'),
(1448, '_transient_pods_pods_flush_rewrites-2913', '1', 'no'),
(1449, '_transient_timeout_pods_b3592045bbce499e15708d25b81ebd33', '1684244683', 'no'),
(1450, '_transient_pods_b3592045bbce499e15708d25b81ebd33', 'a:1:{i:0;i:11;}', 'no'),
(1451, '_transient_timeout_pods_pods_pfat_the_pods-2913', '1684244683', 'no'),
(1452, '_transient_pods_pods_pfat_the_pods-2913', 'a:1:{s:11:\"news_update\";s:11:\"News Update\";}', 'no'),
(1453, '_transient_timeout_pods_pods_pfat_auto_pods-2913', '1684244683', 'no'),
(1454, '_transient_pods_pods_pfat_auto_pods-2913', 'a:0:{}', 'no'),
(1460, '_transient_timeout_pods_87ac6e1017ab0d7aabb62f0060ca1dcf', '1684244696', 'no'),
(1461, '_transient_pods_87ac6e1017ab0d7aabb62f0060ca1dcf', 'a:0:{}', 'no'),
(1462, '_transient_timeout_pods_bfa1b3322ff15a61522365b08e4effdc', '1684244696', 'no'),
(1463, '_transient_pods_bfa1b3322ff15a61522365b08e4effdc', 'a:0:{}', 'no'),
(1466, '_site_transient_timeout_theme_roots', '1684241680', 'no'),
(1467, '_site_transient_theme_roots', 'a:5:{s:16:\"blankslate-child\";s:7:\"/themes\";s:10:\"blankslate\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no'),
(1468, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1684239882;s:8:\"response\";a:4:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"6.1.6\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=2892919\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=2892919\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";s:6:\"tested\";s:3:\"6.2\";s:12:\"requires_php\";s:3:\"5.6\";}s:53:\"child-theme-configurator/child-theme-configurator.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:38:\"w.org/plugins/child-theme-configurator\";s:4:\"slug\";s:24:\"child-theme-configurator\";s:6:\"plugin\";s:53:\"child-theme-configurator/child-theme-configurator.php\";s:11:\"new_version\";s:5:\"2.6.2\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/child-theme-configurator/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/plugin/child-theme-configurator.2.6.2.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:77:\"https://ps.w.org/child-theme-configurator/assets/icon-128x128.png?rev=1557885\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:79:\"https://ps.w.org/child-theme-configurator/assets/banner-772x250.jpg?rev=1557885\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.0\";s:6:\"tested\";s:3:\"6.2\";s:12:\"requires_php\";s:6:\"5.6.36\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.7.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.7.6.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.0\";s:6:\"tested\";s:3:\"6.2\";s:12:\"requires_php\";b:0;}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:4:\"20.7\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wordpress-seo.20.7.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=2643727\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=2643727\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=2643727\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=2643727\";}s:8:\"requires\";s:3:\"6.1\";s:6:\"tested\";s:3:\"6.2\";s:12:\"requires_php\";s:5:\"7.2.5\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:6:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"5.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.5.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";}s:63:\"elegant-responsive-content-slider/responsive-content-slider.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:47:\"w.org/plugins/elegant-responsive-content-slider\";s:4:\"slug\";s:33:\"elegant-responsive-content-slider\";s:6:\"plugin\";s:63:\"elegant-responsive-content-slider/responsive-content-slider.php\";s:11:\"new_version\";s:5:\"1.0.2\";s:3:\"url\";s:64:\"https://wordpress.org/plugins/elegant-responsive-content-slider/\";s:7:\"package\";s:82:\"https://downloads.wordpress.org/plugin/elegant-responsive-content-slider.1.0.2.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:86:\"https://ps.w.org/elegant-responsive-content-slider/assets/icon-128x128.png?rev=1665730\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:88:\"https://ps.w.org/elegant-responsive-content-slider/assets/banner-772x250.png?rev=1665730\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.5\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:13:\"pods/init.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:18:\"w.org/plugins/pods\";s:4:\"slug\";s:4:\"pods\";s:6:\"plugin\";s:13:\"pods/init.php\";s:11:\"new_version\";s:6:\"2.9.13\";s:3:\"url\";s:35:\"https://wordpress.org/plugins/pods/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/pods.2.9.13.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:49:\"https://ps.w.org/pods/assets/icon.svg?rev=2617499\";s:3:\"svg\";s:49:\"https://ps.w.org/pods/assets/icon.svg?rev=2617499\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:59:\"https://ps.w.org/pods/assets/banner-772x250.png?rev=1667333\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.7\";}s:23:\"wordfence/wordfence.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:23:\"w.org/plugins/wordfence\";s:4:\"slug\";s:9:\"wordfence\";s:6:\"plugin\";s:23:\"wordfence/wordfence.php\";s:11:\"new_version\";s:5:\"7.9.2\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/wordfence/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/wordfence.7.9.2.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:54:\"https://ps.w.org/wordfence/assets/icon.svg?rev=2070865\";s:3:\"svg\";s:54:\"https://ps.w.org/wordfence/assets/icon.svg?rev=2070865\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wordfence/assets/banner-1544x500.jpg?rev=2124102\";s:2:\"1x\";s:64:\"https://ps.w.org/wordfence/assets/banner-772x250.jpg?rev=2124102\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.9\";}s:59:\"wp-responsive-jquery-slider/wp-responsive-jquery-slider.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:41:\"w.org/plugins/wp-responsive-jquery-slider\";s:4:\"slug\";s:27:\"wp-responsive-jquery-slider\";s:6:\"plugin\";s:59:\"wp-responsive-jquery-slider/wp-responsive-jquery-slider.php\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:58:\"https://wordpress.org/plugins/wp-responsive-jquery-slider/\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/plugin/wp-responsive-jquery-slider.1.7.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:80:\"https://ps.w.org/wp-responsive-jquery-slider/assets/icon-128x128.jpg?rev=2108004\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:82:\"https://ps.w.org/wp-responsive-jquery-slider/assets/banner-772x250.jpg?rev=2108004\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.8\";}}s:7:\"checked\";a:11:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"6.1.1\";s:19:\"akismet/akismet.php\";s:3:\"5.1\";s:53:\"child-theme-configurator/child-theme-configurator.php\";s:5:\"2.6.0\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:7:\"5.7.5.1\";s:63:\"elegant-responsive-content-slider/responsive-content-slider.php\";s:5:\"1.0.2\";s:9:\"hello.php\";s:5:\"1.7.2\";s:13:\"pods/init.php\";s:6:\"2.9.13\";s:23:\"wordfence/wordfence.php\";s:5:\"7.9.2\";s:59:\"wp-responsive-jquery-slider/wp-responsive-jquery-slider.php\";s:3:\"1.7\";s:41:\"wp-turbolinks-5-master/wp-turbolinks5.php\";s:3:\"0.3\";s:24:\"wordpress-seo/wp-seo.php\";s:4:\"20.4\";}}', 'no'),
(1469, '_site_transient_timeout_php_check_2f5acf219326a8bc5331ee302b9812f4', '1684844684', 'no'),
(1470, '_site_transient_php_check_2f5acf219326a8bc5331ee302b9812f4', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_podsrel`
--

CREATE TABLE `wp_podsrel` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pod_id` int(10) UNSIGNED DEFAULT NULL,
  `field_id` int(10) UNSIGNED DEFAULT NULL,
  `item_id` bigint(20) UNSIGNED DEFAULT NULL,
  `related_pod_id` int(10) UNSIGNED DEFAULT NULL,
  `related_field_id` int(10) UNSIGNED DEFAULT NULL,
  `related_item_id` bigint(20) UNSIGNED DEFAULT NULL,
  `weight` smallint(5) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(11, 8, '_form', '<label> Your name\n    [text* your-name autocomplete:name] </label>\n\n<label> Your email\n    [email* your-email autocomplete:email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit \"Submit\"]'),
(12, 8, '_mail', 'a:8:{s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:40:\"[_site_title] <mhafiidhbasriy@gmail.com>\";s:4:\"body\";s:161:\"From: [your-name] [your-email]\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(13, 8, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:40:\"[_site_title] <mhafiidhbasriy@gmail.com>\";s:4:\"body\";s:105:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(14, 8, '_messages', 'a:12:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:27:\"Please fill out this field.\";s:16:\"invalid_too_long\";s:32:\"This field has a too long input.\";s:17:\"invalid_too_short\";s:33:\"This field has a too short input.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:31:\"The uploaded file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";}'),
(15, 8, '_additional_settings', ''),
(16, 8, '_locale', 'en_US'),
(17, 9, '_wp_attached_file', '2023/04/rsz_covid_-logo.png'),
(18, 9, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:170;s:6:\"height\";i:70;s:4:\"file\";s:27:\"2023/04/rsz_covid_-logo.png\";s:8:\"filesize\";i:9355;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:26:\"rsz_covid_-logo-150x70.png\";s:5:\"width\";i:150;s:6:\"height\";i:70;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:7099;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(19, 11, 'type', 'post_type'),
(20, 11, 'storage', 'meta'),
(21, 11, 'label_singular', 'News Update'),
(22, 11, 'public', '1'),
(23, 11, 'show_ui', '1'),
(24, 11, 'rest_enable', '1'),
(25, 11, 'supports_title', '1'),
(26, 11, 'supports_editor', '0'),
(27, 11, '_migrated_28', '1'),
(28, 13, 'type', 'text'),
(29, 13, 'sister_id', '-- Select One --'),
(30, 13, 'group', '12'),
(31, 13, 'required', '1'),
(32, 13, 'required_help_boolean', '0'),
(33, 13, 'text_allowed_html_tags', 'strong em a ul ol li b i'),
(34, 13, 'text_max_length', '255'),
(35, 13, 'repeatable', '0'),
(36, 13, 'repeatable_format', 'default'),
(37, 13, 'roles_allowed', 'administrator'),
(38, 13, 'rest_pick_response', 'array'),
(39, 13, 'rest_pick_depth', '1'),
(40, 14, 'type', 'datetime'),
(41, 14, 'sister_id', '-- Select One --'),
(42, 14, 'group', '12'),
(43, 14, 'required', '1'),
(44, 14, 'required_help_boolean', '0'),
(45, 14, 'datetime_type', 'format'),
(46, 14, 'datetime_format', 'mdy'),
(47, 14, 'datetime_time_type', '12'),
(48, 14, 'datetime_time_format', 'h_mma'),
(49, 14, 'datetime_time_format_24', 'hh_mm'),
(50, 14, 'datetime_allow_empty', '1'),
(51, 14, 'datetime_html5', '0'),
(52, 14, 'repeatable', '0'),
(53, 14, 'repeatable_format', 'default'),
(54, 14, 'roles_allowed', 'administrator'),
(55, 14, 'rest_pick_response', 'array'),
(56, 14, 'rest_pick_depth', '1'),
(57, 11, 'required', '0'),
(58, 11, 'required_help_boolean', '0'),
(59, 12, 'object_type', 'group'),
(60, 12, 'object_storage_type', 'post_type'),
(61, 12, 'parent', '11'),
(63, 11, 'publicly_queryable', '1'),
(64, 11, 'exclude_from_search', '0'),
(65, 11, 'capability_type', 'post'),
(66, 11, 'capability_type_custom', 'news_update'),
(67, 11, 'capability_type_extra', '1'),
(68, 11, 'has_archive', '0'),
(69, 11, 'hierarchical', '0'),
(70, 11, 'can_export', '1'),
(71, 11, 'rewrite', '1'),
(72, 11, 'rewrite_with_front', '1'),
(73, 11, 'rewrite_feeds', '0'),
(74, 11, 'rewrite_pages', '1'),
(75, 11, 'query_var', '1'),
(76, 11, 'default_status', 'draft'),
(77, 11, 'revisions_to_keep_limit', '0'),
(78, 11, 'delete_with_user', '1'),
(79, 16, '_edit_lock', '1682924856:2'),
(80, 16, '_edit_last', '1'),
(81, 16, 'news_description', 'Quentity of Covid-19 in Jakarta has been reduced to 0'),
(82, 16, 'news_date', '2023-04-04 21:31:11'),
(83, 16, '_yoast_wpseo_inclusive_language_score', '90'),
(84, 16, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(85, 16, '_yoast_wpseo_wordproof_timestamp', ''),
(86, 13, 'text_placeholder', 'Something...'),
(87, 11, 'meta_box_context', 'normal'),
(88, 11, 'meta_box_priority', 'default'),
(142, 16, '_wp_trash_meta_status', 'publish'),
(143, 16, '_wp_trash_meta_time', '1682925023'),
(144, 16, '_wp_desired_post_slug', 'berita-covid-hari-ini'),
(186, 40, '_edit_lock', '1683126479:1'),
(188, 40, '_edit_last', '1'),
(189, 40, '_yoast_wpseo_primary_category', '6'),
(190, 40, '_yoast_wpseo_content_score', '90'),
(191, 40, '_yoast_wpseo_inclusive_language_score', '90'),
(192, 40, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(193, 40, '_yoast_wpseo_wordproof_timestamp', ''),
(196, 43, '_edit_lock', '1683126560:1'),
(198, 43, '_edit_last', '1'),
(199, 43, '_yoast_wpseo_primary_category', ''),
(200, 43, '_yoast_wpseo_content_score', '90'),
(201, 43, '_yoast_wpseo_inclusive_language_score', '90'),
(202, 43, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(203, 43, '_yoast_wpseo_wordproof_timestamp', ''),
(204, 45, '_edit_lock', '1683126725:1'),
(206, 45, '_edit_last', '1'),
(207, 45, '_yoast_wpseo_primary_category', ''),
(208, 45, '_yoast_wpseo_inclusive_language_score', '90'),
(209, 45, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(210, 45, '_yoast_wpseo_wordproof_timestamp', ''),
(212, 45, '_wp_trash_meta_status', 'publish'),
(213, 45, '_wp_trash_meta_time', '1683126857'),
(214, 45, '_wp_desired_post_slug', 'kqzwioqsjqwhidqwkgqxku'),
(215, 43, '_wp_trash_meta_status', 'publish'),
(216, 43, '_wp_trash_meta_time', '1683126857'),
(217, 43, '_wp_desired_post_slug', 'viral-seorang-maling-malah-menggoreng-nugget-saat-maling-dirumah-orang'),
(218, 40, '_wp_trash_meta_status', 'publish'),
(219, 40, '_wp_trash_meta_time', '1683126857'),
(220, 40, '_wp_desired_post_slug', 'kasus-covid-19-jakarta-telah-berkurang-jadi-0-orang-alhamdullilah-cuyyy'),
(221, 47, '_edit_lock', '1683126901:1'),
(223, 47, '_edit_last', '1'),
(224, 47, '_yoast_wpseo_primary_category', '6'),
(225, 47, '_yoast_wpseo_content_score', '90'),
(226, 47, '_yoast_wpseo_inclusive_language_score', '90'),
(227, 47, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(228, 47, '_yoast_wpseo_wordproof_timestamp', ''),
(229, 49, '_edit_lock', '1683126936:1'),
(231, 49, '_edit_last', '1'),
(232, 49, '_yoast_wpseo_primary_category', '6'),
(233, 49, '_yoast_wpseo_content_score', '90'),
(234, 49, '_yoast_wpseo_inclusive_language_score', '90'),
(235, 49, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(236, 49, '_yoast_wpseo_wordproof_timestamp', ''),
(237, 49, '_wp_trash_meta_status', 'publish'),
(238, 49, '_wp_trash_meta_time', '1683127149'),
(239, 49, '_wp_desired_post_slug', 'asdndasnjmwenkdjweldjeoqkfd3jqnemqfnbjk'),
(240, 47, '_wp_trash_meta_status', 'publish'),
(241, 47, '_wp_trash_meta_time', '1683127151'),
(242, 47, '_wp_desired_post_slug', 'anzjasncmwndweidwndmwnfmnjk'),
(243, 51, '_edit_lock', '1683127087:1'),
(245, 51, '_edit_last', '1'),
(246, 51, '_yoast_wpseo_primary_category', ''),
(247, 51, '_yoast_wpseo_content_score', '90'),
(248, 51, '_yoast_wpseo_inclusive_language_score', '90'),
(249, 51, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(250, 51, '_yoast_wpseo_wordproof_timestamp', ''),
(251, 53, '_edit_lock', '1683127317:1'),
(253, 53, '_edit_last', '1'),
(254, 53, '_yoast_wpseo_primary_category', '6'),
(255, 53, '_yoast_wpseo_content_score', '90'),
(256, 53, '_yoast_wpseo_inclusive_language_score', '90'),
(257, 53, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(258, 53, '_yoast_wpseo_wordproof_timestamp', ''),
(260, 55, '_edit_lock', '1683380315:1'),
(262, 55, '_edit_last', '1'),
(263, 55, '_yoast_wpseo_primary_category', '8'),
(264, 55, '_yoast_wpseo_content_score', '90'),
(265, 55, '_yoast_wpseo_inclusive_language_score', '90'),
(266, 55, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(267, 55, '_yoast_wpseo_wordproof_timestamp', ''),
(268, 57, '_edit_lock', '1683128356:1'),
(270, 57, '_wp_old_date', '2023-05-03'),
(271, 57, '_edit_last', '1'),
(272, 57, '_yoast_wpseo_primary_category', '6'),
(273, 57, '_yoast_wpseo_content_score', '90'),
(274, 57, '_yoast_wpseo_inclusive_language_score', '90'),
(275, 57, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(276, 57, '_yoast_wpseo_wordproof_timestamp', ''),
(277, 53, '_wp_trash_meta_status', 'publish'),
(278, 53, '_wp_trash_meta_time', '1683379946'),
(279, 53, '_wp_desired_post_slug', 'penambahan-regimen-vaksinasi-covid-19-dosis-lanjutan-booster-kedua-bagi-sasaran-yang-mendapat-vaksin-primer-pfizer-2'),
(280, 51, '_wp_trash_meta_status', 'publish'),
(281, 51, '_wp_trash_meta_time', '1683379946'),
(282, 51, '_wp_desired_post_slug', 'penambahan-regimen-vaksinasi-covid-19-dosis-lanjutan-booster-kedua-bagi-sasaran-yang-mendapat-vaksin-primer-pfizer'),
(283, 57, '_wp_trash_meta_status', 'publish'),
(284, 57, '_wp_trash_meta_time', '1683379946'),
(285, 57, '_wp_desired_post_slug', 'penambahan-regimen-vaksinasi-covid-19-dosis-lanjutan-booster-kedua-bagi-sasaran-yang-mendapat-vaksin-primer-pfizer-4'),
(286, 59, '_wp_attached_file', '2023/05/256412040.jpg'),
(287, 59, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1010;s:6:\"height\";i:768;s:4:\"file\";s:21:\"2023/05/256412040.jpg\";s:8:\"filesize\";i:117860;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"256412040-300x228.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:228;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16049;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"256412040-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6840;}s:15:\"slide-thumbnail\";a:5:{s:4:\"file\";s:21:\"256412040-960x350.jpg\";s:5:\"width\";i:960;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:58712;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(289, 55, '_thumbnail_id', '59'),
(291, 60, '_edit_lock', '1683385676:1'),
(293, 60, '_edit_last', '1'),
(294, 60, '_yoast_wpseo_primary_category', '9'),
(296, 60, '_yoast_wpseo_inclusive_language_score', '90'),
(297, 60, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(298, 60, '_yoast_wpseo_wordproof_timestamp', ''),
(304, 60, '_yoast_wpseo_content_score', '90'),
(305, 68, '_edit_lock', '1683385662:1'),
(307, 68, '_edit_last', '1'),
(308, 68, '_yoast_wpseo_primary_category', '9'),
(309, 68, '_yoast_wpseo_inclusive_language_score', '90'),
(310, 68, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(311, 68, '_yoast_wpseo_wordproof_timestamp', ''),
(314, 70, '_edit_lock', '1683385210:1'),
(315, 71, '_wp_attached_file', '2023/05/256412040-1.jpg'),
(316, 71, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1010;s:6:\"height\";i:768;s:4:\"file\";s:23:\"2023/05/256412040-1.jpg\";s:8:\"filesize\";i:117860;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"256412040-1-300x228.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:228;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16049;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"256412040-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6840;}s:15:\"slide-thumbnail\";a:5:{s:4:\"file\";s:23:\"256412040-1-960x350.jpg\";s:5:\"width\";i:960;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:58712;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(318, 70, '_thumbnail_id', '71'),
(319, 70, '_edit_last', '1'),
(320, 70, '_yoast_wpseo_primary_category', '8'),
(321, 70, '_yoast_wpseo_content_score', '90'),
(322, 70, '_yoast_wpseo_inclusive_language_score', '90'),
(323, 70, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(324, 70, '_yoast_wpseo_wordproof_timestamp', ''),
(325, 73, '_edit_lock', '1683468060:1'),
(327, 73, '_thumbnail_id', '59'),
(328, 73, '_edit_last', '1'),
(329, 73, '_yoast_wpseo_primary_category', '8'),
(330, 73, '_yoast_wpseo_inclusive_language_score', '90'),
(331, 73, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(332, 73, '_yoast_wpseo_wordproof_timestamp', ''),
(335, 70, '_wp_trash_meta_status', 'publish'),
(336, 70, '_wp_trash_meta_time', '1683385707'),
(337, 70, '_wp_desired_post_slug', 'bdkhuigeufgnefoeufhqfhehxefiq'),
(338, 68, '_wp_trash_meta_status', 'publish'),
(339, 68, '_wp_trash_meta_time', '1683385707'),
(340, 68, '_wp_desired_post_slug', 'bagaimana-pendapat-anda-tentang-maling-goreng-nugget-saat-maling'),
(341, 60, '_wp_trash_meta_status', 'publish'),
(342, 60, '_wp_trash_meta_time', '1683385707'),
(343, 60, '_wp_desired_post_slug', 'berita-ahmad-kasim-berak-di-bus-saat-push-rank'),
(344, 55, '_wp_trash_meta_status', 'publish'),
(345, 55, '_wp_trash_meta_time', '1683385707'),
(346, 55, '_wp_desired_post_slug', 'penambahan-regimen-vaksinasi-covid-19-dosis-lanjutan-booster-kedua-bagi-sasaran-yang-mendapat-vaksin-primer-pfizer-3'),
(347, 75, '_edit_lock', '1683468406:1'),
(349, 75, '_edit_last', '1'),
(350, 75, '_yoast_wpseo_primary_category', '8'),
(352, 75, '_yoast_wpseo_inclusive_language_score', '90'),
(353, 75, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(354, 75, '_yoast_wpseo_wordproof_timestamp', ''),
(357, 75, '_yoast_wpseo_content_score', '90'),
(358, 75, '_thumbnail_id', '71'),
(359, 80, '_edit_lock', '1683389030:1'),
(362, 80, '_edit_last', '1'),
(363, 80, '_yoast_wpseo_primary_category', '9'),
(364, 80, '_yoast_wpseo_content_score', '90'),
(365, 80, '_yoast_wpseo_inclusive_language_score', '90'),
(366, 80, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(367, 80, '_yoast_wpseo_wordproof_timestamp', ''),
(369, 82, '_edit_lock', '1683466281:1'),
(371, 82, '_edit_last', '1'),
(372, 82, '_yoast_wpseo_primary_category', '10'),
(373, 82, '_yoast_wpseo_inclusive_language_score', '90'),
(374, 82, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(375, 82, '_yoast_wpseo_wordproof_timestamp', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(8, 1, '2023-04-04 08:14:04', '2023-04-04 08:14:04', '<label> Your name\n    [text* your-name autocomplete:name] </label>\n\n<label> Your email\n    [email* your-email autocomplete:email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit \"Submit\"]\n[_site_title] \"[your-subject]\"\n[_site_title] <mhafiidhbasriy@gmail.com>\nFrom: [your-name] [your-email]\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\n[_site_admin_email]\nReply-To: [your-email]\n\n0\n0\n\n[_site_title] \"[your-subject]\"\n[_site_title] <mhafiidhbasriy@gmail.com>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\n[your-email]\nReply-To: [_site_admin_email]\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nPlease fill out this field.\nThis field has a too long input.\nThis field has a too short input.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe uploaded file is too large.\nThere was an error uploading the file.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2023-04-04 08:14:04', '2023-04-04 08:14:04', '', 0, 'http://localhost/wordpress07/?post_type=wpcf7_contact_form&p=8', 0, 'wpcf7_contact_form', '', 0),
(9, 1, '2023-04-04 08:20:11', '2023-04-04 08:20:11', '', 'rsz_covid_-logo', '', 'inherit', 'open', 'closed', '', 'rsz_covid_-logo', '', '', '2023-04-04 08:20:11', '2023-04-04 08:20:11', '', 0, 'http://localhost/wordpress07/wp-content/uploads/2023/04/rsz_covid_-logo.png', 0, 'attachment', 'image/png', 0),
(11, 1, '2023-04-04 14:21:58', '2023-04-04 14:21:58', '', 'News Update', '', 'publish', 'closed', 'closed', '', 'news_update', '', '', '2023-04-04 14:34:15', '2023-04-04 14:34:15', '', 0, 'http://localhost/wordpress07/?post_type=_pods_pod&#038;p=11', 0, '_pods_pod', '', 0),
(12, 1, '2023-04-04 14:22:01', '2023-04-04 14:22:01', '', 'More Fields', '', 'publish', 'closed', 'closed', '', 'more_fields', '', '', '2023-04-04 14:34:15', '2023-04-04 14:34:15', '', 11, 'http://localhost/wordpress07/?post_type=_pods_group&#038;p=12', 0, '_pods_group', '', 0),
(13, 1, '2023-04-04 14:22:31', '2023-04-04 14:22:31', '', 'news description', '', 'publish', 'closed', 'closed', '', 'news_description', '', '', '2023-04-04 14:34:15', '2023-04-04 14:34:15', '', 11, 'http://localhost/wordpress07/?post_type=_pods_field&#038;p=13', 0, '_pods_field', '', 0),
(14, 1, '2023-04-04 14:22:51', '2023-04-04 14:22:51', '', 'news date', '', 'publish', 'closed', 'closed', '', 'news_date', '', '', '2023-04-04 14:34:15', '2023-04-04 14:34:15', '', 11, 'http://localhost/wordpress07/?post_type=_pods_field&#038;p=14', 1, '_pods_field', '', 0),
(16, 1, '2023-04-04 14:31:48', '2023-04-04 14:31:48', '', 'Berita Covid Hari Ini', '', 'trash', 'closed', 'closed', '', 'berita-covid-hari-ini__trashed', '', '', '2023-05-01 07:10:23', '2023-05-01 07:10:23', '', 0, 'http://localhost/wordpress07/?post_type=news_update&#038;p=16', 0, 'news_update', '', 0),
(40, 2, '2023-05-03 14:57:19', '2023-05-03 14:57:19', '<!-- wp:paragraph -->\n<p>jndjkdnwd wm fsnmd cnme cvejrvcjkr venvkw mc enm ejknvekvnwklemaclk</p>\n<!-- /wp:paragraph -->', 'Kasus Covid 19 Jakarta, Telah Berkurang Jadi 0 Orang, Alhamdullilah Cuyyy', '', 'trash', 'open', 'open', '', 'kasus-covid-19-jakarta-telah-berkurang-jadi-0-orang-alhamdullilah-cuyyy__trashed', '', '', '2023-05-03 15:14:17', '2023-05-03 15:14:17', '', 0, 'http://localhost/wordpress07/?p=40', 0, 'post', '', 0),
(41, 1, '2023-05-03 14:57:19', '2023-05-03 14:57:19', '<!-- wp:paragraph -->\n<p>ajkdnasjdwehdqwnixdhqwzdhqwuqgqydguqwdgquidhqwiondqnj,asmnasbasjdsjkdsjkchsiucheiu</p>\n<!-- /wp:paragraph -->', 'Kasus Covid 19 Jakarta, Telah Berkurang Jadi 0 Orang, Alhamdullilah Cuyyy', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2023-05-03 14:57:19', '2023-05-03 14:57:19', '', 40, 'http://localhost/wordpress07/?p=41', 0, 'revision', '', 0),
(42, 1, '2023-05-03 15:00:55', '2023-05-03 15:00:55', '<!-- wp:paragraph -->\n<p>jndjkdnwd wm fsnmd cnme cvejrvcjkr venvkw mc enm ejknvekvnwklemaclk</p>\n<!-- /wp:paragraph -->', 'Kasus Covid 19 Jakarta, Telah Berkurang Jadi 0 Orang, Alhamdullilah Cuyyy', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2023-05-03 15:00:55', '2023-05-03 15:00:55', '', 40, 'http://localhost/wordpress07/?p=42', 0, 'revision', '', 0),
(43, 1, '2023-05-03 15:09:15', '2023-05-03 15:09:15', '<!-- wp:paragraph -->\n<p>beliau ini kocak bangett okspokpoqkweos jfeiowhfvweuirhw go;</p>\n<!-- /wp:paragraph -->', 'Viral! Seorang Maling, Malah Menggoreng Nugget Saat Maling Dirumah Orang', '', 'trash', 'open', 'open', '', 'viral-seorang-maling-malah-menggoreng-nugget-saat-maling-dirumah-orang__trashed', '', '', '2023-05-03 15:14:17', '2023-05-03 15:14:17', '', 0, 'http://localhost/wordpress07/?p=43', 0, 'post', '', 0),
(44, 1, '2023-05-03 15:09:15', '2023-05-03 15:09:15', '<!-- wp:paragraph -->\n<p>beliau ini kocak bangett okspokpoqkweos jfeiowhfvweuirhw go;</p>\n<!-- /wp:paragraph -->', 'Viral! Seorang Maling, Malah Menggoreng Nugget Saat Maling Dirumah Orang', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2023-05-03 15:09:15', '2023-05-03 15:09:15', '', 43, 'http://localhost/wordpress07/?p=44', 0, 'revision', '', 0),
(45, 1, '2023-05-03 15:09:51', '2023-05-03 15:09:51', '<!-- wp:paragraph -->\n<p>jnqwdjkwhduwehiehqkljlefjdwqjknfjwqnfen</p>\n<!-- /wp:paragraph -->', 'KQZWIOQSJqwhidqwkgqxku', '', 'trash', 'open', 'open', '', 'kqzwioqsjqwhidqwkgqxku__trashed', '', '', '2023-05-03 15:14:17', '2023-05-03 15:14:17', '', 0, 'http://localhost/wordpress07/?p=45', 0, 'post', '', 0),
(46, 1, '2023-05-03 15:09:51', '2023-05-03 15:09:51', '<!-- wp:paragraph -->\n<p>jnqwdjkwhduwehiehqkljlefjdwqjknfjwqnfen</p>\n<!-- /wp:paragraph -->', 'KQZWIOQSJqwhidqwkgqxku', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2023-05-03 15:09:51', '2023-05-03 15:09:51', '', 45, 'http://localhost/wordpress07/?p=46', 0, 'revision', '', 0),
(47, 1, '2023-05-03 15:14:55', '2023-05-03 15:14:55', '<!-- wp:paragraph -->\n<p>ncnckwcnencjnsjc nzkljekwjknewkjdnwjkebnsmdnb cjzsacufwekfjwnajbnfjebehwiu</p>\n<!-- /wp:paragraph -->', 'anzjasncmwndweidw,nd,mwnfmnjk', '', 'trash', 'open', 'open', '', 'anzjasncmwndweidwndmwnfmnjk__trashed', '', '', '2023-05-03 15:19:11', '2023-05-03 15:19:11', '', 0, 'http://localhost/wordpress07/?p=47', 0, 'post', '', 0),
(48, 1, '2023-05-03 15:14:55', '2023-05-03 15:14:55', '<!-- wp:paragraph -->\n<p>ncnckwcnencjnsjc nzkljekwjknewkjdnwjkebnsmdnb cjzsacufwekfjwnajbnfjebehwiu</p>\n<!-- /wp:paragraph -->', 'anzjasncmwndweidw,nd,mwnfmnjk', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2023-05-03 15:14:55', '2023-05-03 15:14:55', '', 47, 'http://localhost/wordpress07/?p=48', 0, 'revision', '', 0),
(49, 1, '2023-05-03 15:15:41', '2023-05-03 15:15:41', '<!-- wp:paragraph -->\n<p>wkenfkwnfkw xfklfqiehpo2j;ofjehwejkfnhcwbqwejqukbwjnfkn</p>\n<!-- /wp:paragraph -->', 'asdndasnjmwenkdjweldjeoqkfd3jqne,mqfnbjk', '', 'trash', 'open', 'open', '', 'asdndasnjmwenkdjweldjeoqkfd3jqnemqfnbjk__trashed', '', '', '2023-05-03 15:19:09', '2023-05-03 15:19:09', '', 0, 'http://localhost/wordpress07/?p=49', 0, 'post', '', 0),
(50, 1, '2023-05-03 15:15:41', '2023-05-03 15:15:41', '<!-- wp:paragraph -->\n<p>wkenfkwnfkw xfklfqiehpo2j;ofjehwejkfnhcwbqwejqukbwjnfkn</p>\n<!-- /wp:paragraph -->', 'asdndasnjmwenkdjweldjeoqkfd3jqne,mqfnbjk', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2023-05-03 15:15:41', '2023-05-03 15:15:41', '', 49, 'http://localhost/wordpress07/?p=50', 0, 'revision', '', 0),
(51, 1, '2023-05-03 15:20:08', '2023-05-03 15:20:08', '<!-- wp:paragraph -->\n<p><a href=\"https://covid19.go.id/id/artikel/2023/04/27/penambahan-regimen-vaksinasi-covid-19-dosis-lanjutan-booster-kedua-bagi-sasaran-yang-mendapat-vaksin-primer-pfizer\">Penambahan Regimen Vaksinasi COVID-19 Dosis Lanjutan (Booster) Kedua Bagi Sasaran yang Mendapat Vaksin Primer Pfizer</a></p>\n<!-- /wp:paragraph -->', 'Penambahan Regimen Vaksinasi COVID-19 Dosis Lanjutan (Booster) Kedua Bagi Sasaran yang Mendapat Vaksin Primer Pfizer', '', 'trash', 'open', 'open', '', 'penambahan-regimen-vaksinasi-covid-19-dosis-lanjutan-booster-kedua-bagi-sasaran-yang-mendapat-vaksin-primer-pfizer__trashed', '', '', '2023-05-06 13:32:26', '2023-05-06 13:32:26', '', 0, 'http://localhost/wordpress07/?p=51', 0, 'post', '', 0),
(52, 1, '2023-05-03 15:20:08', '2023-05-03 15:20:08', '<!-- wp:paragraph -->\n<p><a href=\"https://covid19.go.id/id/artikel/2023/04/27/penambahan-regimen-vaksinasi-covid-19-dosis-lanjutan-booster-kedua-bagi-sasaran-yang-mendapat-vaksin-primer-pfizer\">Penambahan Regimen Vaksinasi COVID-19 Dosis Lanjutan (Booster) Kedua Bagi Sasaran yang Mendapat Vaksin Primer Pfizer</a></p>\n<!-- /wp:paragraph -->', 'Penambahan Regimen Vaksinasi COVID-19 Dosis Lanjutan (Booster) Kedua Bagi Sasaran yang Mendapat Vaksin Primer Pfizer', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2023-05-03 15:20:08', '2023-05-03 15:20:08', '', 51, 'http://localhost/wordpress07/?p=52', 0, 'revision', '', 0),
(53, 2, '2023-05-03 15:21:10', '2023-05-03 15:21:10', '<!-- wp:paragraph -->\n<p><a href=\"https://covid19.go.id/id/artikel/2023/04/27/penambahan-regimen-vaksinasi-covid-19-dosis-lanjutan-booster-kedua-bagi-sasaran-yang-mendapat-vaksin-primer-pfizer\">Penambahan Regimen Vaksinasi COVID-19 Dosis Lanjutan (Booster) Kedua Bagi Sasaran yang Mendapat Vaksin Primer Pfizer</a></p>\n<!-- /wp:paragraph -->', 'Penambahan Regimen Vaksinasi COVID-19 Dosis Lanjutan (Booster) Kedua Bagi Sasaran yang Mendapat Vaksin Primer Pfizer', '', 'trash', 'open', 'open', '', 'penambahan-regimen-vaksinasi-covid-19-dosis-lanjutan-booster-kedua-bagi-sasaran-yang-mendapat-vaksin-primer-pfizer-2__trashed', '', '', '2023-05-06 13:32:26', '2023-05-06 13:32:26', '', 0, 'http://localhost/wordpress07/?p=53', 0, 'post', '', 0),
(54, 1, '2023-05-03 15:21:10', '2023-05-03 15:21:10', '<!-- wp:paragraph -->\n<p><a href=\"https://covid19.go.id/id/artikel/2023/04/27/penambahan-regimen-vaksinasi-covid-19-dosis-lanjutan-booster-kedua-bagi-sasaran-yang-mendapat-vaksin-primer-pfizer\">Penambahan Regimen Vaksinasi COVID-19 Dosis Lanjutan (Booster) Kedua Bagi Sasaran yang Mendapat Vaksin Primer Pfizer</a></p>\n<!-- /wp:paragraph -->', 'Penambahan Regimen Vaksinasi COVID-19 Dosis Lanjutan (Booster) Kedua Bagi Sasaran yang Mendapat Vaksin Primer Pfizer', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2023-05-03 15:21:10', '2023-05-03 15:21:10', '', 53, 'http://localhost/wordpress07/?p=54', 0, 'revision', '', 0),
(55, 1, '2023-05-03 15:23:12', '2023-05-03 15:23:12', '<!-- wp:paragraph -->\n<p><a href=\"https://covid19.go.id/id/artikel/2023/04/27/penambahan-regimen-vaksinasi-covid-19-dosis-lanjutan-booster-kedua-bagi-sasaran-yang-mendapat-vaksin-primer-pfizer\">Penambahan Regimen Vaksinasi COVID-19 Dosis Lanjutan (Booster) Kedua Bagi Sasaran yang Mendapat Vaksin Primer Pfizer</a></p>\n<!-- /wp:paragraph -->', 'Penambahan Regimen Vaksinasi COVID-19 Dosis Lanjutan (Booster) Kedua Bagi Sasaran yang Mendapat Vaksin Primer Pfizer', '', 'trash', 'open', 'open', '', 'penambahan-regimen-vaksinasi-covid-19-dosis-lanjutan-booster-kedua-bagi-sasaran-yang-mendapat-vaksin-primer-pfizer-3__trashed', '', '', '2023-05-06 15:08:27', '2023-05-06 15:08:27', '', 0, 'http://localhost/wordpress07/?p=55', 0, 'post', '', 0),
(56, 1, '2023-05-03 15:23:12', '2023-05-03 15:23:12', '<!-- wp:paragraph -->\n<p><a href=\"https://covid19.go.id/id/artikel/2023/04/27/penambahan-regimen-vaksinasi-covid-19-dosis-lanjutan-booster-kedua-bagi-sasaran-yang-mendapat-vaksin-primer-pfizer\">Penambahan Regimen Vaksinasi COVID-19 Dosis Lanjutan (Booster) Kedua Bagi Sasaran yang Mendapat Vaksin Primer Pfizer</a></p>\n<!-- /wp:paragraph -->', 'Penambahan Regimen Vaksinasi COVID-19 Dosis Lanjutan (Booster) Kedua Bagi Sasaran yang Mendapat Vaksin Primer Pfizer', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2023-05-03 15:23:12', '2023-05-03 15:23:12', '', 55, 'http://localhost/wordpress07/?p=56', 0, 'revision', '', 0),
(57, 1, '2023-05-02 01:29:00', '2023-05-02 01:29:00', '<!-- wp:paragraph -->\n<p><a href=\"https://covid19.go.id/id/artikel/2023/04/27/penambahan-regimen-vaksinasi-covid-19-dosis-lanjutan-booster-kedua-bagi-sasaran-yang-mendapat-vaksin-primer-pfizer\">Penambahan Regimen Vaksinasi COVID-19 Dosis Lanjutan (Booster) Kedua Bagi Sasaran yang Mendapat Vaksin Primer Pfizer</a></p>\n<!-- /wp:paragraph -->', 'Penambahan Regimen Vaksinasi COVID-19 Dosis Lanjutan (Booster) Kedua Bagi Sasaran yang Mendapat Vaksin Primer Pfizer', '', 'trash', 'open', 'open', '', 'penambahan-regimen-vaksinasi-covid-19-dosis-lanjutan-booster-kedua-bagi-sasaran-yang-mendapat-vaksin-primer-pfizer-4__trashed', '', '', '2023-05-06 13:32:26', '2023-05-06 13:32:26', '', 0, 'http://localhost/wordpress07/?p=57', 0, 'post', '', 0),
(58, 1, '2023-05-03 15:30:21', '2023-05-03 15:30:21', '<!-- wp:paragraph -->\n<p><a href=\"https://covid19.go.id/id/artikel/2023/04/27/penambahan-regimen-vaksinasi-covid-19-dosis-lanjutan-booster-kedua-bagi-sasaran-yang-mendapat-vaksin-primer-pfizer\">Penambahan Regimen Vaksinasi COVID-19 Dosis Lanjutan (Booster) Kedua Bagi Sasaran yang Mendapat Vaksin Primer Pfizer</a></p>\n<!-- /wp:paragraph -->', 'Penambahan Regimen Vaksinasi COVID-19 Dosis Lanjutan (Booster) Kedua Bagi Sasaran yang Mendapat Vaksin Primer Pfizer', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2023-05-03 15:30:21', '2023-05-03 15:30:21', '', 57, 'http://localhost/wordpress07/?p=58', 0, 'revision', '', 0),
(59, 1, '2023-05-06 13:32:53', '2023-05-06 13:32:53', '', '256412040', '', 'inherit', 'open', 'closed', '', '256412040', '', '', '2023-05-06 13:32:53', '2023-05-06 13:32:53', '', 55, 'http://localhost/wordpress07/wp-content/uploads/2023/05/256412040.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 2, '2023-05-06 13:43:41', '2023-05-06 13:43:41', '<!-- wp:paragraph -->\n<p>kasiannya beliau, mana uda tua wjkdidwuidedgnxeui efguenfwenfgweu gfwexqcyq ecbgc ghccbsdfta mengapa ahmad kasim malah berak pada saat push rank kenapa bukan pada saat mandi wajib? ytta</p>\n<!-- /wp:paragraph -->', 'Berita Ahmad Kasim Berak Di Bus Saat Push Rank', '', 'trash', 'open', 'open', '', 'berita-ahmad-kasim-berak-di-bus-saat-push-rank__trashed', '', '', '2023-05-06 15:08:27', '2023-05-06 15:08:27', '', 0, 'http://localhost/wordpress07/?p=60', 0, 'post', '', 0),
(61, 1, '2023-05-06 13:43:41', '2023-05-06 13:43:41', '<!-- wp:paragraph -->\n<p>Beliau Ini Teralalu Lucu Untuk Dirinya Yang Selalu Ngudud Di  Sebelah Kantor</p>\n<!-- /wp:paragraph -->', 'Berita Ahmad Kasim Berak Di Bus Saat Push Rank', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2023-05-06 13:43:41', '2023-05-06 13:43:41', '', 60, 'http://localhost/wordpress07/?p=61', 0, 'revision', '', 0),
(62, 1, '2023-05-06 13:52:53', '2023-05-06 13:52:53', '<!-- wp:paragraph {\"fontSize\":\"small\"} -->\n<p class=\"has-small-font-size\">Beliau Suka Berak</p>\n<!-- /wp:paragraph -->', 'Berita Ahmad Kasim Berak Di Bus Saat Push Rank', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2023-05-06 13:52:53', '2023-05-06 13:52:53', '', 60, 'http://localhost/wordpress07/?p=62', 0, 'revision', '', 0),
(63, 1, '2023-05-06 13:53:05', '2023-05-06 13:53:05', '<!-- wp:paragraph {\"fontSize\":\"medium\"} -->\n<p class=\"has-medium-font-size\">Beliau Suka Berak</p>\n<!-- /wp:paragraph -->', 'Berita Ahmad Kasim Berak Di Bus Saat Push Rank', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2023-05-06 13:53:05', '2023-05-06 13:53:05', '', 60, 'http://localhost/wordpress07/?p=63', 0, 'revision', '', 0),
(64, 1, '2023-05-06 13:53:19', '2023-05-06 13:53:19', '<!-- wp:paragraph {\"fontSize\":\"small\"} -->\n<p class=\"has-small-font-size\">Beliau Suka Berak</p>\n<!-- /wp:paragraph -->', 'Berita Ahmad Kasim Berak Di Bus Saat Push Rank', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2023-05-06 13:53:19', '2023-05-06 13:53:19', '', 60, 'http://localhost/wordpress07/?p=64', 0, 'revision', '', 0),
(66, 1, '2023-05-06 13:55:09', '2023-05-06 13:55:09', '<!-- wp:paragraph -->\n<p>kasiannya beliau, mana uda tua</p>\n<!-- /wp:paragraph -->', 'Berita Ahmad Kasim Berak Di Bus Saat Push Rank', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2023-05-06 13:55:09', '2023-05-06 13:55:09', '', 60, 'http://localhost/wordpress07/?p=66', 0, 'revision', '', 0),
(67, 1, '2023-05-06 14:09:05', '2023-05-06 14:09:05', '<!-- wp:paragraph -->\n<p>kasiannya beliau, mana uda tua wjkdidwuidedgnxeui efguenfwenfgweu gfwexqcyq ecbgc ghccbsdfta mengapa ahmad kasim malah berak pada saat push rank kenapa bukan pada saat mandi wajib? ytta</p>\n<!-- /wp:paragraph -->', 'Berita Ahmad Kasim Berak Di Bus Saat Push Rank', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2023-05-06 14:09:05', '2023-05-06 14:09:05', '', 60, 'http://localhost/wordpress07/?p=67', 0, 'revision', '', 0),
(68, 1, '2023-05-06 14:44:21', '2023-05-06 14:44:21', '<!-- wp:paragraph -->\n<p>lucu banget ajg</p>\n<!-- /wp:paragraph -->', 'Bagaimana Pendapat Anda Tentang Maling Goreng Nugget Saat Maling', '', 'trash', 'open', 'open', '', 'bagaimana-pendapat-anda-tentang-maling-goreng-nugget-saat-maling__trashed', '', '', '2023-05-06 15:08:27', '2023-05-06 15:08:27', '', 0, 'http://localhost/wordpress07/?p=68', 0, 'post', '', 0),
(69, 1, '2023-05-06 14:44:21', '2023-05-06 14:44:21', '<!-- wp:paragraph -->\n<p>lucu banget ajg</p>\n<!-- /wp:paragraph -->', 'Bagaimana Pendapat Anda Tentang Maling Goreng Nugget Saat Maling', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2023-05-06 14:44:21', '2023-05-06 14:44:21', '', 68, 'http://localhost/wordpress07/?p=69', 0, 'revision', '', 0),
(70, 1, '2023-05-06 14:57:58', '2023-05-06 14:57:58', '<!-- wp:paragraph -->\n<p>fxweuifgqcy;fui2rmf21ur123hg2lxmfgqweucbyneicfk2m3f8013r`3kc;4nr ;uxxfienc h</p>\n<!-- /wp:paragraph -->', 'bDKHuigeufgnefoeufhqfhehxefiq', '', 'trash', 'open', 'open', '', 'bdkhuigeufgnefoeufhqfhehxefiq__trashed', '', '', '2023-05-06 15:08:27', '2023-05-06 15:08:27', '', 0, 'http://localhost/wordpress07/?p=70', 0, 'post', '', 0),
(71, 1, '2023-05-06 14:57:47', '2023-05-06 14:57:47', '', '256412040', '', 'inherit', 'open', 'closed', '', '256412040-2', '', '', '2023-05-06 14:57:47', '2023-05-06 14:57:47', '', 70, 'http://localhost/wordpress07/wp-content/uploads/2023/05/256412040-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2023-05-06 14:57:58', '2023-05-06 14:57:58', '<!-- wp:paragraph -->\n<p>fxweuifgqcy;fui2rmf21ur123hg2lxmfgqweucbyneicfk2m3f8013r`3kc;4nr ;uxxfienc h</p>\n<!-- /wp:paragraph -->', 'bDKHuigeufgnefoeufhqfhehxefiq', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2023-05-06 14:57:58', '2023-05-06 14:57:58', '', 70, 'http://localhost/wordpress07/?p=72', 0, 'revision', '', 0),
(73, 1, '2023-05-06 15:03:08', '2023-05-06 15:03:08', '<!-- wp:paragraph -->\n<p>jwcnkwnjkwebjkcwbecjkncjkwebcjkwebjk</p>\n<!-- /wp:paragraph -->', 'jcsjkacbsjkacbwkdjcbwikc', '', 'publish', 'closed', 'closed', '', 'jcsjkacbsjkacbwkdjcbwikc', '', '', '2023-05-07 14:01:00', '2023-05-07 14:01:00', '', 0, 'http://localhost/wordpress07/?p=73', 0, 'post', '', 0),
(74, 1, '2023-05-06 15:03:08', '2023-05-06 15:03:08', '<!-- wp:paragraph -->\n<p>jwcnkwnjkwebjkcwbecjkncjkwebcjkwebjk</p>\n<!-- /wp:paragraph -->', 'jcsjkacbsjkacbwkdjcbwikc', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2023-05-06 15:03:08', '2023-05-06 15:03:08', '', 73, 'http://localhost/wordpress07/?p=74', 0, 'revision', '', 0),
(75, 1, '2023-05-06 15:09:59', '2023-05-06 15:09:59', '<!-- wp:paragraph -->\n<p>bcwejkwejmfoiehfeuifuiehxfioqefpeuwhfuix,ohmfxwoqfuiwehweuixfhmwehfiowqxmhweurxu</p>\n<!-- /wp:paragraph -->', 'qwsbwqjkdnwjkdnqwjk', '', 'publish', 'open', 'open', '', 'qwsbwqjkdnwjkdnqwjk', '', '', '2023-05-06 15:26:49', '2023-05-06 15:26:49', '', 0, 'http://localhost/wordpress07/?p=75', 0, 'post', '', 0),
(76, 1, '2023-05-06 15:09:59', '2023-05-06 15:09:59', '<!-- wp:paragraph -->\n<p>cjwbjkkfhnfhm384f34f3o4ijf34cf3h4ixdhm34iofh23oihfc2kf2debdendio23jdi3jd23,c3fj3io4jdiojdidjicdend3iorj0</p>\n<!-- /wp:paragraph -->', 'qwsbwqjkdnwjkdnqwjk', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2023-05-06 15:09:59', '2023-05-06 15:09:59', '', 75, 'http://localhost/wordpress07/?p=76', 0, 'revision', '', 0),
(78, 1, '2023-05-06 15:16:02', '2023-05-06 15:16:02', '', 'qwsbwqjkdnwjkdnqwjk', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2023-05-06 15:16:02', '2023-05-06 15:16:02', '', 75, 'http://localhost/wordpress07/?p=78', 0, 'revision', '', 0),
(79, 1, '2023-05-06 15:16:27', '2023-05-06 15:16:27', '<!-- wp:paragraph -->\n<p>bcwejkwejmfoiehfeuifuiehxfioqefpeuwhfuix,ohmfxwoqfuiwehweuixfhmwehfiowqxmhweurxu</p>\n<!-- /wp:paragraph -->', 'qwsbwqjkdnwjkdnqwjk', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2023-05-06 15:16:27', '2023-05-06 15:16:27', '', 75, 'http://localhost/wordpress07/?p=79', 0, 'revision', '', 0),
(80, 1, '2023-05-06 15:32:18', '2023-05-06 15:32:18', '<!-- wp:paragraph -->\n<p>djwqoifhxeqfweh fwxfnknfjkfnqjkenwiojdpoqxjdoqejqdiojro</p>\n<!-- /wp:paragraph -->', 'wdcwdwehdjzwdqewfxjkenfjk', '', 'publish', 'open', 'open', '', 'wdcwdwehdjzwdqewfxjkenfjk', '', '', '2023-05-06 15:41:55', '2023-05-06 15:41:55', '', 0, 'http://localhost/wordpress07/?p=80', 0, 'post', '', 0),
(81, 1, '2023-05-06 15:32:18', '2023-05-06 15:32:18', '<!-- wp:paragraph -->\n<p>djwqoifhxeqfweh fwxfnknfjkfnqjkenwiojdpoqxjdoqejqdiojro</p>\n<!-- /wp:paragraph -->', 'wdcwdwehdjzwdqewfxjkenfjk', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2023-05-06 15:32:18', '2023-05-06 15:32:18', '', 80, 'http://localhost/wordpress07/?p=81', 0, 'revision', '', 0),
(82, 1, '2023-05-06 16:04:15', '2023-05-06 16:04:15', '<!-- wp:paragraph -->\n<p>dxnfjkdexfjfjmefjwehxruiehrioqeuoru</p>\n<!-- /wp:paragraph -->', 'JKDNWJKdwkjhekwfqj', '', 'publish', 'closed', 'closed', '', 'jkdnwjkdwkjhekwfqj', '', '', '2023-05-07 13:31:21', '2023-05-07 13:31:21', '', 0, 'http://localhost/wordpress07/?p=82', 0, 'post', '', 0),
(83, 1, '2023-05-06 16:04:15', '2023-05-06 16:04:15', '<!-- wp:paragraph -->\n<p>dxnfjkdexfjfjmefjwehxruiehrioqeuoru</p>\n<!-- /wp:paragraph -->', 'JKDNWJKdwkjhekwfqj', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2023-05-06 16:04:15', '2023-05-06 16:04:15', '', 82, 'http://localhost/wordpress07/?p=83', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'hide', 'hide', 0),
(8, 'newsUpdate', 'newsupdate', 0),
(9, 'covidEvent', 'covidevent', 0),
(10, 'eachSelectedEditor', 'eachselectededitor', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(40, 1, 0),
(43, 1, 0),
(45, 1, 0),
(47, 1, 0),
(49, 1, 0),
(51, 1, 0),
(53, 1, 0),
(55, 8, 0),
(57, 1, 0),
(60, 8, 0),
(68, 8, 0),
(70, 8, 0),
(73, 8, 0),
(75, 8, 0),
(80, 9, 0),
(82, 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 0),
(8, 8, 'category', '', 0, 2),
(9, 9, 'category', '', 0, 1),
(10, 10, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin20'),
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(19, 1, 'wfls-last-login', '1683466247'),
(21, 1, 'wp_yoast_notifications', 'a:3:{i:0;a:2:{s:7:\"message\";s:479:\"<p><strong>Huge SEO Issue: You&#039;re blocking access to robots.</strong> If you want search engines to show this site in their results, you must <a href=\"http://localhost/wordpress07/admin/options-reading.php\">go to your Reading Settings</a> and uncheck the box for Search Engine Visibility. <button type=\"button\" id=\"robotsmessage-dismiss-button\" class=\"button-link hide-if-no-js\" data-nonce=\"d978055aea\">I don&#039;t want this site to show in the search results.</button></p>\";s:7:\"options\";a:10:{s:4:\"type\";s:5:\"error\";s:2:\"id\";s:32:\"wpseo-search-engines-discouraged\";s:4:\"user\";O:7:\"WP_User\":8:{s:4:\"data\";O:8:\"stdClass\":10:{s:2:\"ID\";s:1:\"1\";s:10:\"user_login\";s:7:\"admin20\";s:9:\"user_pass\";s:34:\"$P$BpgQ4yAXulEDHxsHNeSL5Clj9Samcq1\";s:13:\"user_nicename\";s:7:\"admin20\";s:10:\"user_email\";s:24:\"mhafiidhbasriy@gmail.com\";s:8:\"user_url\";s:28:\"http://localhost/wordpress07\";s:15:\"user_registered\";s:19:\"2023-04-04 07:55:59\";s:19:\"user_activation_key\";s:0:\"\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:7:\"admin20\";}s:2:\"ID\";i:1;s:4:\"caps\";a:1:{s:13:\"administrator\";b:1;}s:7:\"cap_key\";s:15:\"wp_capabilities\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:7:\"allcaps\";a:66:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:23:\"wf2fa_activate_2fa_self\";b:1;s:25:\"wf2fa_activate_2fa_others\";b:1;s:21:\"wf2fa_manage_settings\";b:1;s:20:\"wpseo_manage_options\";b:1;s:13:\"administrator\";b:1;}s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;}s:5:\"nonce\";N;s:8:\"priority\";i:1;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:1;a:2:{s:7:\"message\";s:218:\"It looks like you&#039;ve added a new type of content to your website. We recommend that you review your <a href=\"http://localhost/wordpress07/admin/admin.php?page=wpseo_page_settings\">Settings</a> under Content types.\";s:7:\"options\";a:10:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:22:\"post-types-made-public\";s:4:\"user\";O:7:\"WP_User\":8:{s:4:\"data\";O:8:\"stdClass\":10:{s:2:\"ID\";s:1:\"1\";s:10:\"user_login\";s:7:\"admin20\";s:9:\"user_pass\";s:34:\"$P$BpgQ4yAXulEDHxsHNeSL5Clj9Samcq1\";s:13:\"user_nicename\";s:7:\"admin20\";s:10:\"user_email\";s:24:\"mhafiidhbasriy@gmail.com\";s:8:\"user_url\";s:28:\"http://localhost/wordpress07\";s:15:\"user_registered\";s:19:\"2023-04-04 07:55:59\";s:19:\"user_activation_key\";s:0:\"\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:7:\"admin20\";}s:2:\"ID\";i:1;s:4:\"caps\";a:1:{s:13:\"administrator\";b:1;}s:7:\"cap_key\";s:15:\"wp_capabilities\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:7:\"allcaps\";a:66:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:23:\"wf2fa_activate_2fa_self\";b:1;s:25:\"wf2fa_activate_2fa_others\";b:1;s:21:\"wf2fa_manage_settings\";b:1;s:20:\"wpseo_manage_options\";b:1;s:13:\"administrator\";b:1;}s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;}s:5:\"nonce\";N;s:8:\"priority\";d:0.8;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:2;a:2:{s:7:\"message\";s:295:\"<p>Because of a change in your permalink structure, some of your SEO data needs to be reprocessed.</p><p>We estimate this will take less than a minute.</p><a class=\"button\" href=\"http://localhost/wordpress07/admin/admin.php?page=wpseo_tools&start-indexation=true\">Start SEO data optimization</a>\";s:7:\"options\";a:10:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:13:\"wpseo-reindex\";s:4:\"user\";O:7:\"WP_User\":8:{s:4:\"data\";O:8:\"stdClass\":10:{s:2:\"ID\";s:1:\"1\";s:10:\"user_login\";s:7:\"admin20\";s:9:\"user_pass\";s:34:\"$P$BpgQ4yAXulEDHxsHNeSL5Clj9Samcq1\";s:13:\"user_nicename\";s:7:\"admin20\";s:10:\"user_email\";s:24:\"mhafiidhbasriy@gmail.com\";s:8:\"user_url\";s:37:\"http://localhost/wordpress07/admin20/\";s:15:\"user_registered\";s:19:\"2023-04-04 07:55:59\";s:19:\"user_activation_key\";s:0:\"\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:7:\"admin20\";}s:2:\"ID\";i:1;s:4:\"caps\";a:1:{s:13:\"administrator\";b:1;}s:7:\"cap_key\";s:15:\"wp_capabilities\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:7:\"allcaps\";a:66:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:23:\"wf2fa_activate_2fa_self\";b:1;s:25:\"wf2fa_activate_2fa_others\";b:1;s:21:\"wf2fa_manage_settings\";b:1;s:20:\"wpseo_manage_options\";b:1;s:13:\"administrator\";b:1;}s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;}s:5:\"nonce\";N;s:8:\"priority\";d:0.8;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}}'),
(22, 1, '_yoast_settings_introduction', 'a:2:{s:23:\"wistia_embed_permission\";b:0;s:4:\"show\";b:0;}'),
(27, 2, 'nickname', '20editor'),
(28, 2, 'first_name', '20'),
(29, 2, 'last_name', 'editor'),
(30, 2, 'description', ''),
(31, 2, 'rich_editing', 'true'),
(32, 2, 'syntax_highlighting', 'true'),
(33, 2, 'comment_shortcuts', 'false'),
(34, 2, 'admin_color', 'fresh'),
(35, 2, 'use_ssl', '0'),
(36, 2, 'show_admin_bar_front', 'true'),
(37, 2, 'locale', ''),
(38, 2, 'wp_capabilities', 'a:1:{s:6:\"editor\";b:1;}'),
(39, 2, 'wp_user_level', '7'),
(40, 2, '_yoast_wpseo_profile_updated', '1680597887'),
(41, 2, 'dismissed_wp_pointers', ''),
(42, 2, 'facebook', ''),
(43, 2, 'instagram', ''),
(44, 2, 'linkedin', ''),
(45, 2, 'myspace', ''),
(46, 2, 'pinterest', ''),
(47, 2, 'soundcloud', ''),
(48, 2, 'tumblr', ''),
(49, 2, 'twitter', ''),
(50, 2, 'youtube', ''),
(51, 2, 'wikipedia', ''),
(52, 1, 'blankslate_notice_dismissed_8', 'true'),
(55, 2, 'wfls-last-login', '1683033219'),
(56, 2, 'wp_dashboard_quick_press_last_post_id', '33'),
(57, 1, 'closedpostboxes_news_update', 'a:1:{i:0;s:10:\"wpseo_meta\";}'),
(58, 1, 'metaboxhidden_news_update', 'a:0:{}'),
(59, 1, 'meta-box-order_news_update', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:28:\"wpseo_meta,submitdiv,slugdiv\";s:6:\"normal\";s:0:\"\";s:8:\"advanced\";s:21:\"pods-meta-more-fields\";}'),
(60, 1, 'show_per_page', '25'),
(61, 1, 'screen_layout_news_update', '2'),
(62, 1, 'wp_persisted_preferences', 'a:3:{s:22:\"core/customize-widgets\";a:1:{s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2023-05-06T16:04:09.110Z\";s:14:\"core/edit-post\";a:4:{s:10:\"openPanels\";a:7:{i:0;s:11:\"post-status\";i:1;s:12:\"post-excerpt\";i:2;s:24:\"yoast-seo/document-panel\";i:3;s:16:\"discussion-panel\";i:4;s:14:\"featured-image\";i:5;s:23:\"taxonomy-panel-post_tag\";i:6;s:23:\"taxonomy-panel-category\";}s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:10:\"editorMode\";s:6:\"visual\";}}'),
(63, 1, '_yoast_wpseo_profile_updated', '1680765142'),
(64, 1, 'wpseo_title', ''),
(65, 1, 'wpseo_metadesc', ''),
(66, 1, 'wpseo_noindex_author', ''),
(67, 1, 'wpseo_content_analysis_disable', ''),
(68, 1, 'wpseo_keyword_analysis_disable', ''),
(69, 1, 'wpseo_inclusive_language_analysis_disable', ''),
(70, 1, 'facebook', ''),
(71, 1, 'instagram', ''),
(72, 1, 'linkedin', ''),
(73, 1, 'myspace', ''),
(74, 1, 'pinterest', ''),
(75, 1, 'soundcloud', ''),
(76, 1, 'tumblr', ''),
(77, 1, 'twitter', ''),
(78, 1, 'youtube', ''),
(79, 1, 'wikipedia', ''),
(80, 2, 'session_tokens', 'a:2:{s:64:\"95889e89ead95a81d6acbe89d5abc455514fa06edc8f2fe731d2b226d974f51e\";a:4:{s:10:\"expiration\";i:1683097728;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36\";s:5:\"login\";i:1682924928;}s:64:\"4c44a3bf296f73325a19abcd0ec89622de1740657e494b6acc402ccb638c132c\";a:4:{s:10:\"expiration\";i:1683206019;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36\";s:5:\"login\";i:1683033219;}}'),
(82, 2, 'wp_persisted_preferences', 'a:2:{s:14:\"core/edit-post\";a:3:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:10:\"openPanels\";a:3:{i:0;s:24:\"yoast-seo/document-panel\";i:1;s:12:\"post-excerpt\";i:2;s:23:\"taxonomy-panel-category\";}}s:9:\"_modified\";s:24:\"2023-05-02T13:24:57.624Z\";}'),
(86, 1, 'session_tokens', 'a:2:{s:64:\"a450d18f2062c1a2a7a579a80fa6b4e877b2ae41fd6162ed8a8ba42e1a577007\";a:4:{s:10:\"expiration\";i:1683552715;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36\";s:5:\"login\";i:1683379915;}s:64:\"97dd346b2479b562fdc225db499f0e952da1c262c3005fb74132c183ca4cf07a\";a:4:{s:10:\"expiration\";i:1683639046;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36\";s:5:\"login\";i:1683466246;}}'),
(87, 1, 'closedpostboxes_post', 'a:1:{i:0;s:10:\"wpseo_meta\";}'),
(88, 1, 'metaboxhidden_post', 'a:0:{}'),
(89, 1, 'wp_user-settings', 'libraryContent=browse'),
(90, 1, 'wp_user-settings-time', '1683379984');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin20', '$P$BpgQ4yAXulEDHxsHNeSL5Clj9Samcq1', 'admin20', 'mhafiidhbasriy@gmail.com', 'http://localhost/wordpress07/admin20/', '2023-04-04 07:55:59', '', 0, 'admin20'),
(2, '20editor', '$P$BrzPKgQySczm2mL3J/YlOV4cNJBNMN0', '20editor', 'basrim351@gmail.com', '', '2023-04-04 08:44:47', '1680597887:$P$B.iJ1dURFYGEpLOpYDN05bSnjeYm.9.', 0, '20 editor');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfblockediplog`
--

CREATE TABLE `wp_wfblockediplog` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `countryCode` varchar(2) NOT NULL,
  `blockCount` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `unixday` int(10) UNSIGNED NOT NULL,
  `blockType` varchar(50) NOT NULL DEFAULT 'generic'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfblocks7`
--

CREATE TABLE `wp_wfblocks7` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `blockedTime` bigint(20) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `lastAttempt` int(10) UNSIGNED DEFAULT 0,
  `blockedHits` int(10) UNSIGNED DEFAULT 0,
  `expiration` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `parameters` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfconfig`
--

CREATE TABLE `wp_wfconfig` (
  `name` varchar(100) NOT NULL,
  `val` longblob DEFAULT NULL,
  `autoload` enum('no','yes') NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wfconfig`
--

INSERT INTO `wp_wfconfig` (`name`, `val`, `autoload`) VALUES
('activatingIP', 0x3a3a31, 'yes'),
('actUpdateInterval', 0x32, 'yes'),
('addCacheComment', 0x30, 'yes'),
('adminNoticeQueue', 0x613a313a7b733a33363a2235643262643162312d323536392d343039632d616631622d636264646563323839326338223b613a343a7b733a383a227365766572697479223b733a383a22637269746963616c223b733a31313a226d65737361676548544d4c223b733a3538333a223c7374726f6e673e5741524e494e473a203c2f7374726f6e673e596f7572206c6f67696e20686173206265656e20616c6c6f776564206265636175736520796f7520686176652070726576696f75736c79206c6f6767656420696e2066726f6d207468652073616d652049502c2062757420796f752077696c6c20626520626c6f636b656420696620796f7572204950206368616e6765732e205468652070617373776f726420796f7520617265207573696e6720657869737473206f6e206c69737473206f662070617373776f726473206c65616b656420696e20646174612062726561636865732e2041747461636b657273207573652073756368206c6973747320746f20627265616b20696e746f20736974657320616e6420696e7374616c6c206d616c6963696f757320636f64652e20506c65617365203c6120687265663d22687474703a2f2f6c6f63616c686f73742f776f7264707265737330372f61646d696e2f70726f66696c652e706870223e6368616e676520796f75722070617373776f72643c2f613e2e203c6120687265663d2268747470733a2f2f7777772e776f726466656e63652e636f6d2f68656c702f3f71756572793d7573696e672d6272656163682d70617373776f726422207461726765743d225f626c616e6b222072656c3d226e6f6f70656e6572206e6f7265666572726572223e4c6561726e204d6f72653c7370616e20636c6173733d2273637265656e2d7265616465722d74657874223e20286f70656e7320696e206e657720746162293c2f7370616e3e3c2f613e223b733a383a2263617465676f7279223b733a32343a2270726576696f7573495042726561636850617373776f7264223b733a353a227573657273223b613a313a7b693a303b693a313b7d7d7d, 'yes'),
('adminUserList', 0x613a313a7b693a313b693a313b7d, 'yes'),
('advancedCommentScanning', 0x31, 'yes'),
('ajaxWatcherDisabled_admin', 0x30, 'yes'),
('ajaxWatcherDisabled_front', 0x30, 'yes'),
('alertEmails', '', 'yes'),
('alertOn_adminLogin', 0x31, 'yes'),
('alertOn_block', 0x31, 'yes'),
('alertOn_breachLogin', 0x31, 'yes'),
('alertOn_firstAdminLoginOnly', 0x30, 'yes'),
('alertOn_firstNonAdminLoginOnly', 0x30, 'yes'),
('alertOn_loginLockout', 0x31, 'yes'),
('alertOn_lostPasswdForm', 0x31, 'yes'),
('alertOn_nonAdminLogin', 0x30, 'yes'),
('alertOn_scanIssues', 0x31, 'yes'),
('alertOn_severityLevel', 0x3235, 'yes'),
('alertOn_throttle', 0x30, 'yes'),
('alertOn_update', 0x30, 'yes'),
('alertOn_wafDeactivated', 0x31, 'yes'),
('alertOn_wordfenceDeactivated', 0x31, 'yes'),
('alert_maxHourly', 0x30, 'yes'),
('allowed404s', 0x2f66617669636f6e2e69636f0a2f6170706c652d746f7563682d69636f6e2a2e706e670a2f2a4032782e706e670a2f62726f77736572636f6e6669672e786d6c, 'yes'),
('allowed404s6116Migration', 0x31, 'yes'),
('allowHTTPSCaching', 0x30, 'yes'),
('allowLegacy2FA', 0x30, 'yes'),
('allowMySQLi', 0x31, 'yes'),
('allScansScheduled', 0x613a303a7b7d, 'yes'),
('apiKey', '', 'yes'),
('autoBlockScanners', 0x31, 'yes'),
('autoUpdate', 0x30, 'yes'),
('autoUpdateAttempts', 0x30, 'yes'),
('bannedURLs', '', 'yes'),
('blockCustomText', '', 'yes'),
('blockedTime', 0x333030, 'yes'),
('blocks702Migration', 0x31, 'yes'),
('cacheType', 0x64697361626c6564, 'yes'),
('cbl_action', 0x626c6f636b, 'yes'),
('cbl_bypassRedirDest', '', 'yes'),
('cbl_bypassRedirURL', '', 'yes'),
('cbl_bypassViewURL', '', 'yes'),
('cbl_cookieVal', 0x36343262646363653737333736, 'yes'),
('cbl_loggedInBlocked', '', 'yes'),
('cbl_redirURL', '', 'yes'),
('cbl_restOfSiteBlocked', 0x31, 'yes'),
('checkSpamIP', 0x31, 'yes'),
('config701Migration', 0x31, 'yes'),
('config720Migration', 0x31, 'yes'),
('dbTest', 0x613a313a7b733a353a226e6f6e6365223b733a36343a2233343233313764323165613137393534616136366366623261636661326166633837326637643935386131323330326264636361656463636165343031396239223b7d, 'no'),
('dbVersion', 0x31302e342e32352d4d617269614442, 'yes'),
('debugOn', 0x30, 'yes'),
('deleteTablesOnDeact', 0x30, 'yes'),
('detectProxyNextCheck', 0x31363831323030393733, 'no'),
('detectProxyNonce', 0x61333638336563623432616139336431346539306566613663323963616665643934613536656365333865366533346238613137303337616461643539303635, 'no'),
('detectProxyRecommendation', '', 'no'),
('diagnosticsWflogsRemovalHistory', 0x5b5d, 'no'),
('disableCodeExecutionUploads', 0x30, 'yes'),
('disableConfigCaching', 0x30, 'yes'),
('disableWAFIPBlocking', 0x30, 'yes'),
('dismissAutoPrependNotice', 0x30, 'yes'),
('displayAutomaticBlocks', 0x31, 'yes'),
('displayTopLevelBlocking', 0x30, 'yes'),
('displayTopLevelLiveTraffic', 0x30, 'yes'),
('displayTopLevelOptions', 0x31, 'yes'),
('email_summary_dashboard_widget_enabled', 0x31, 'yes'),
('email_summary_enabled', 0x31, 'yes'),
('email_summary_excluded_directories', 0x77702d636f6e74656e742f63616368652c77702d636f6e74656e742f77666c6f6773, 'yes'),
('email_summary_interval', 0x7765656b6c79, 'yes'),
('enableRemoteIpLookup', 0x31, 'yes'),
('encKey', 0x31653338383337376431643735646163, 'yes'),
('fileContentsGSB6315Migration', 0x31, 'yes'),
('firewallEnabled', 0x31, 'yes'),
('hasKeyConflict', 0x30, 'yes'),
('howGetIPs', '', 'yes'),
('howGetIPs_trusted_proxies', '', 'yes'),
('isPaid', '', 'yes'),
('keyType', 0x66726565, 'yes'),
('lastAdminLogin', 0x613a363a7b733a363a22757365724944223b693a313b733a383a22757365726e616d65223b733a373a2261646d696e3230223b733a393a2266697273744e616d65223b733a303a22223b733a383a226c6173744e616d65223b733a303a22223b733a343a2274696d65223b733a32343a2253756e20377468204d617920402030313a33303a3436504d223b733a323a224950223b733a333a223a3a31223b7d, 'yes'),
('lastBlockAggregation', 0x31363834323339393031, 'yes'),
('lastDailyCron', 0x31363834323339393031, 'yes'),
('lastPermissionsTemplateCheck', 0x31363834323339383331, 'yes'),
('liveActivityPauseEnabled', 0x31, 'yes'),
('liveTrafficEnabled', 0x30, 'yes'),
('liveTraf_displayExpandedRecords', 0x30, 'no'),
('liveTraf_ignoreIPs', '', 'yes'),
('liveTraf_ignorePublishers', 0x31, 'yes'),
('liveTraf_ignoreUA', '', 'yes'),
('liveTraf_ignoreUsers', '', 'yes'),
('liveTraf_maxAge', 0x3330, 'yes'),
('liveTraf_maxRows', 0x32303030, 'yes'),
('loginSecurityEnabled', 0x31, 'yes'),
('loginSec_blockAdminReg', 0x31, 'yes'),
('loginSec_breachPasswds', 0x61646d696e73, 'yes'),
('loginSec_breachPasswds_enabled', 0x31, 'yes'),
('loginSec_countFailMins', 0x323430, 'yes'),
('loginSec_disableApplicationPasswords', 0x31, 'yes'),
('loginSec_disableAuthorScan', 0x31, 'yes'),
('loginSec_disableOEmbedAuthor', 0x30, 'yes'),
('loginSec_enableSeparateTwoFactor', '', 'yes'),
('loginSec_lockInvalidUsers', 0x30, 'yes'),
('loginSec_lockoutMins', 0x323430, 'yes'),
('loginSec_maskLoginErrors', 0x31, 'yes'),
('loginSec_maxFailures', 0x3230, 'yes'),
('loginSec_maxForgotPasswd', 0x3230, 'yes'),
('loginSec_requireAdminTwoFactor', 0x30, 'yes'),
('loginSec_strongPasswds', 0x70756273, 'yes'),
('loginSec_strongPasswds_enabled', 0x31, 'yes'),
('loginSec_userBlacklist', '', 'yes'),
('longEncKey', 0x66333964643135363530633866643830303931323961306536626537383063383862303665646365323131303239633530323137363835393733356665326262, 'yes'),
('lowResourceScansEnabled', 0x30, 'yes'),
('manualScanType', 0x6f6e63654461696c79, 'yes'),
('max404Crawlers', 0x44495341424c4544, 'yes'),
('max404Crawlers_action', 0x7468726f74746c65, 'yes'),
('max404Humans', 0x44495341424c4544, 'yes'),
('max404Humans_action', 0x7468726f74746c65, 'yes'),
('maxExecutionTime', 0x30, 'yes'),
('maxGlobalRequests', 0x44495341424c4544, 'yes'),
('maxGlobalRequests_action', 0x7468726f74746c65, 'yes'),
('maxMem', 0x323536, 'yes'),
('maxRequestsCrawlers', 0x44495341424c4544, 'yes'),
('maxRequestsCrawlers_action', 0x7468726f74746c65, 'yes'),
('maxRequestsHumans', 0x44495341424c4544, 'yes'),
('maxRequestsHumans_action', 0x7468726f74746c65, 'yes'),
('migration636_email_summary_excluded_directories', 0x31, 'no'),
('needsNewTour_blocking', 0x31, 'yes'),
('needsNewTour_dashboard', 0x31, 'yes'),
('needsNewTour_firewall', 0x31, 'yes'),
('needsNewTour_livetraffic', 0x31, 'yes'),
('needsNewTour_loginsecurity', 0x31, 'yes'),
('needsNewTour_scan', 0x31, 'yes'),
('needsUpgradeTour_blocking', 0x30, 'yes'),
('needsUpgradeTour_dashboard', 0x30, 'yes'),
('needsUpgradeTour_firewall', 0x30, 'yes'),
('needsUpgradeTour_livetraffic', 0x30, 'yes'),
('needsUpgradeTour_loginsecurity', 0x30, 'yes'),
('needsUpgradeTour_scan', 0x30, 'yes'),
('neverBlockBG', 0x6e65766572426c6f636b5665726966696564, 'yes'),
('notification_blogHighlights', 0x31, 'yes'),
('notification_productUpdates', 0x31, 'yes'),
('notification_promotions', 0x31, 'yes'),
('notification_scanStatus', 0x31, 'yes'),
('notification_securityAlerts', 0x31, 'yes'),
('notification_updatesNeeded', 0x31, 'yes'),
('onboardingAttempt1', 0x736b6970706564, 'yes'),
('onboardingAttempt2', 0x736b6970706564, 'yes'),
('onboardingAttempt3', '', 'no'),
('onboardingAttempt3Initial', 0x30, 'yes'),
('onboardingDelayedAt', 0x31363833343638353332, 'yes'),
('other_blockBadPOST', 0x30, 'yes'),
('other_bypassLitespeedNoabort', 0x30, 'yes'),
('other_hideWPVersion', 0x30, 'yes'),
('other_pwStrengthOnUpdate', 0x31, 'yes'),
('other_scanComments', 0x31, 'yes'),
('other_scanOutside', 0x30, 'yes'),
('other_WFNet', 0x31, 'yes'),
('previousWflogsFileList', 0x5b222e6874616363657373222c2261747461636b2d646174612e706870222c22636f6e6669672d6c6976657761662e706870222c22636f6e6669672d73796e6365642e706870222c22636f6e6669672d7472616e7369656e742e706870222c22636f6e6669672e706870222c2247656f4c697465322d436f756e7472792e6d6d6462222c226970732e706870222c2272756c65732e706870222c2274656d706c6174652e706870225d, 'yes'),
('scansEnabled_checkGSB', 0x31, 'yes'),
('scansEnabled_checkHowGetIPs', 0x31, 'yes'),
('scansEnabled_checkReadableConfig', 0x31, 'yes'),
('scansEnabled_comments', 0x31, 'yes'),
('scansEnabled_core', 0x31, 'yes'),
('scansEnabled_coreUnknown', 0x31, 'yes'),
('scansEnabled_diskSpace', 0x31, 'yes'),
('scansEnabled_fileContents', 0x31, 'yes'),
('scansEnabled_fileContentsGSB', 0x31, 'yes'),
('scansEnabled_geoipSupport', 0x31, 'yes'),
('scansEnabled_highSense', 0x30, 'yes'),
('scansEnabled_malware', 0x31, 'yes'),
('scansEnabled_oldVersions', 0x31, 'yes'),
('scansEnabled_options', 0x31, 'yes'),
('scansEnabled_passwds', 0x31, 'yes'),
('scansEnabled_plugins', 0x30, 'yes'),
('scansEnabled_posts', 0x31, 'yes'),
('scansEnabled_scanImages', 0x30, 'yes'),
('scansEnabled_suspectedFiles', 0x31, 'yes'),
('scansEnabled_suspiciousAdminUsers', 0x31, 'yes'),
('scansEnabled_suspiciousOptions', 0x31, 'yes'),
('scansEnabled_themes', 0x30, 'yes'),
('scansEnabled_wafStatus', 0x31, 'yes'),
('scansEnabled_wpscan_directoryListingEnabled', 0x31, 'yes'),
('scansEnabled_wpscan_fullPathDisclosure', 0x31, 'yes'),
('scanType', 0x7374616e64617264, 'yes'),
('scan_exclude', '', 'yes'),
('scan_force_ipv4_start', 0x30, 'yes'),
('scan_include_extra', '', 'yes'),
('scan_maxDuration', '', 'yes'),
('scan_maxIssues', 0x31303030, 'yes'),
('scan_max_resume_attempts', 0x32, 'yes'),
('schedMode', 0x6175746f, 'yes'),
('schedStartHour', 0x3230, 'yes'),
('scheduledScansEnabled', 0x31, 'yes'),
('showAdminBarMenu', 0x31, 'yes'),
('spamvertizeCheck', 0x31, 'yes'),
('ssl_verify', 0x31, 'yes'),
('startScansRemotely', 0x30, 'yes'),
('supportContent', 0x7b7d, 'no'),
('supportHash', '', 'no'),
('timeoffset_wf', 0x31, 'yes'),
('timeoffset_wf_updated', 0x31363833363339383937, 'yes'),
('totalAlertsSent', 0x3135, 'yes'),
('totalLoginHits', 0x3336, 'yes'),
('totalLogins', 0x3138, 'yes'),
('touppBypassNextCheck', 0x30, 'yes'),
('touppPromptNeeded', 0x31, 'yes'),
('vulnerabilities_plugin', 0x613a31323a7b693a303b613a333a7b733a343a22736c7567223b733a32323a22616476616e6365642d637573746f6d2d6669656c6473223b733a31313a2266726f6d56657273696f6e223b733a353a22362e312e31223b733a31303a2276756c6e657261626c65223b623a303b7d693a313b613a333a7b733a343a22736c7567223b733a373a22616b69736d6574223b733a31313a2266726f6d56657273696f6e223b733a333a22352e31223b733a31303a2276756c6e657261626c65223b623a303b7d693a323b613a333a7b733a343a22736c7567223b733a32343a226368696c642d7468656d652d636f6e666967757261746f72223b733a31313a2266726f6d56657273696f6e223b733a353a22322e362e30223b733a31303a2276756c6e657261626c65223b623a303b7d693a333b613a333a7b733a343a22736c7567223b733a31343a22636f6e746163742d666f726d2d37223b733a31313a2266726f6d56657273696f6e223b733a373a22352e372e352e31223b733a31303a2276756c6e657261626c65223b623a303b7d693a343b613a333a7b733a343a22736c7567223b733a33333a22656c6567616e742d726573706f6e736976652d636f6e74656e742d736c69646572223b733a31313a2266726f6d56657273696f6e223b733a353a22312e302e32223b733a31303a2276756c6e657261626c65223b623a303b7d693a353b613a333a7b733a343a22736c7567223b733a31313a2268656c6c6f2d646f6c6c79223b733a31313a2266726f6d56657273696f6e223b733a353a22312e372e32223b733a31303a2276756c6e657261626c65223b623a303b7d693a363b613a333a7b733a343a22736c7567223b733a343a22706f6473223b733a31313a2266726f6d56657273696f6e223b733a363a22322e392e3133223b733a31303a2276756c6e657261626c65223b623a303b7d693a373b613a333a7b733a343a22736c7567223b733a393a22776f726466656e6365223b733a31313a2266726f6d56657273696f6e223b733a353a22372e392e32223b733a31303a2276756c6e657261626c65223b623a303b7d693a383b613a333a7b733a343a22736c7567223b733a32373a2277702d726573706f6e736976652d6a71756572792d736c69646572223b733a31313a2266726f6d56657273696f6e223b733a333a22312e37223b733a31303a2276756c6e657261626c65223b623a303b7d693a393b613a333a7b733a343a22736c7567223b733a31343a227770732d686964652d6c6f67696e223b733a31313a2266726f6d56657273696f6e223b733a353a22312e392e38223b733a31303a2276756c6e657261626c65223b623a303b7d693a31303b613a333a7b733a343a22736c7567223b733a31333a22776f726470726573732d73656f223b733a31313a2266726f6d56657273696f6e223b733a343a2232302e34223b733a31303a2276756c6e657261626c65223b623a303b7d693a31313b613a333a7b733a343a22736c7567223b733a32323a2277702d747572626f6c696e6b732d352d6d6173746572223b733a31313a2266726f6d56657273696f6e223b733a333a22302e33223b733a31303a2276756c6e657261626c65223b623a303b7d7d, 'yes'),
('wafAlertInterval', 0x363030, 'yes'),
('wafAlertOnAttacks', 0x31, 'yes'),
('wafAlertThreshold', 0x313030, 'yes'),
('wafAlertWhitelist', '', 'yes'),
('waf_status', 0x656e61626c6564, 'yes'),
('whitelisted', '', 'yes'),
('whitelistedServices', 0x7b7d, 'yes'),
('whitelistHash', '', 'no'),
('whitelistPresets', 0x7b7d, 'no'),
('wordfenceI18n', 0x31, 'yes'),
('wordpressPluginVersions', 0x613a31323a7b733a32323a22616476616e6365642d637573746f6d2d6669656c6473223b733a353a22362e312e31223b733a373a22616b69736d6574223b733a333a22352e31223b733a32343a226368696c642d7468656d652d636f6e666967757261746f72223b733a353a22322e362e30223b733a31343a22636f6e746163742d666f726d2d37223b733a373a22352e372e352e31223b733a33333a22656c6567616e742d726573706f6e736976652d636f6e74656e742d736c69646572223b733a353a22312e302e32223b733a353a2268656c6c6f223b733a353a22312e372e32223b733a343a22706f6473223b733a363a22322e392e3133223b733a393a22776f726466656e6365223b733a353a22372e392e32223b733a32373a2277702d726573706f6e736976652d6a71756572792d736c69646572223b733a333a22312e37223b733a31343a227770732d686964652d6c6f67696e223b733a353a22312e392e38223b733a32323a2277702d747572626f6c696e6b732d352d6d6173746572223b733a333a22302e33223b733a31333a22776f726470726573732d73656f223b733a343a2232302e34223b7d, 'yes'),
('wordpressThemeVersions', 0x613a353a7b733a31363a22626c616e6b736c6174652d6368696c64223b733a31353a22323032332e31363830353936323735223b733a31303a22626c616e6b736c617465223b733a343a2232303233223b733a31353a227477656e74797477656e74796f6e65223b733a333a22312e38223b733a31373a227477656e74797477656e74797468726565223b733a333a22312e31223b733a31353a227477656e74797477656e747974776f223b733a333a22312e34223b7d, 'yes'),
('wordpressVersion', 0x362e32, 'yes'),
('wp_home_url', 0x687474703a2f2f6c6f63616c686f73742f776f726470726573733037, 'yes'),
('wp_site_url', 0x687474703a2f2f6c6f63616c686f73742f776f726470726573733037, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfcrawlers`
--

CREATE TABLE `wp_wfcrawlers` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `patternSig` binary(16) NOT NULL,
  `status` char(8) NOT NULL,
  `lastUpdate` int(10) UNSIGNED NOT NULL,
  `PTR` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wffilechanges`
--

CREATE TABLE `wp_wffilechanges` (
  `filenameHash` char(64) NOT NULL,
  `file` varchar(1000) NOT NULL,
  `md5` char(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wffilemods`
--

CREATE TABLE `wp_wffilemods` (
  `filenameMD5` binary(16) NOT NULL,
  `filename` varchar(1000) NOT NULL,
  `real_path` text NOT NULL,
  `knownFile` tinyint(3) UNSIGNED NOT NULL,
  `oldMD5` binary(16) NOT NULL,
  `newMD5` binary(16) NOT NULL,
  `SHAC` binary(32) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `stoppedOnSignature` varchar(255) NOT NULL DEFAULT '',
  `stoppedOnPosition` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `isSafeFile` varchar(1) NOT NULL DEFAULT '?'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfhits`
--

CREATE TABLE `wp_wfhits` (
  `id` int(10) UNSIGNED NOT NULL,
  `attackLogTime` double(17,6) UNSIGNED NOT NULL,
  `ctime` double(17,6) UNSIGNED NOT NULL,
  `IP` binary(16) DEFAULT NULL,
  `jsRun` tinyint(4) DEFAULT 0,
  `statusCode` int(11) NOT NULL DEFAULT 200,
  `isGoogle` tinyint(4) NOT NULL,
  `userID` int(10) UNSIGNED NOT NULL,
  `newVisit` tinyint(3) UNSIGNED NOT NULL,
  `URL` text DEFAULT NULL,
  `referer` text DEFAULT NULL,
  `UA` text DEFAULT NULL,
  `action` varchar(64) NOT NULL DEFAULT '',
  `actionDescription` text DEFAULT NULL,
  `actionData` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wfhits`
--

INSERT INTO `wp_wfhits` (`id`, `attackLogTime`, `ctime`, `IP`, `jsRun`, `statusCode`, `isGoogle`, `userID`, `newVisit`, `URL`, `referer`, `UA`, `action`, `actionDescription`, `actionData`) VALUES
(21, 0.000000, 1682924183.583357, 0x00000000000000000000000000000001, 0, 302, 0, 1, 0, 'http://localhost/wordpress07/login.php', 'http://localhost/wordpress07/login.php?redirect_to=http%3A%2F%2Flocalhost%2Fwordpress07%2Fadmin%2F&reauth=1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'loginOK', NULL, NULL),
(22, 0.000000, 1682924917.231049, 0x00000000000000000000000000000001, 1, 200, 0, 1, 0, 'http://localhost/wordpress07/login.php?action=logout&_wpnonce=eda0bebd6a', 'http://localhost/wordpress07/admin/options-permalink.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'logout', NULL, NULL),
(23, 0.000000, 1682924926.999796, 0x00000000000000000000000000000001, 0, 302, 0, 2, 0, 'http://localhost/wordpress07/login.php', 'http://localhost/wordpress07/login.php?loggedout=true&wp_lang=en_US', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'loginOK', NULL, NULL),
(24, 0.000000, 1683033187.630329, 0x00000000000000000000000000000001, 0, 302, 0, 1, 0, 'http://localhost/wordpress07/login.php', 'http://localhost/wordpress07/login.php?redirect_to=http%3A%2F%2Flocalhost%2Fwordpress07%2Fadmin%2F&reauth=1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'loginOK', NULL, NULL),
(25, 0.000000, 1683033207.542160, 0x00000000000000000000000000000001, 1, 200, 0, 1, 0, 'http://localhost/wordpress07/login.php?action=logout&_wpnonce=e26d7b00d1', 'http://localhost/wordpress07/admin/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'logout', NULL, NULL),
(26, 0.000000, 1683033217.085178, 0x00000000000000000000000000000001, 0, 302, 0, 2, 0, 'http://localhost/wordpress07/login.php', 'http://localhost/wordpress07/login.php?loggedout=true&wp_lang=en_US', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'loginOK', NULL, NULL),
(27, 0.000000, 1683122342.089336, 0x00000000000000000000000000000001, 0, 302, 0, 1, 0, 'http://localhost/wordpress07/login.php', 'http://localhost/wordpress07/login.php?redirect_to=http%3A%2F%2Flocalhost%2Fwordpress07%2Fadmin%2F&reauth=1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'loginOK', NULL, NULL),
(28, 0.000000, 1683379912.170997, 0x00000000000000000000000000000001, 0, 302, 0, 1, 0, 'http://localhost/wordpress07/login.php', 'http://localhost/wordpress07/login.php?redirect_to=http%3A%2F%2Flocalhost%2Fwordpress07%2Fadmin%2F&reauth=1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'loginOK', NULL, NULL),
(29, 0.000000, 1683466243.183336, 0x00000000000000000000000000000001, 0, 302, 0, 1, 0, 'http://localhost/wordpress07/login.php', 'http://localhost/wordpress07/login.php?redirect_to=http%3A%2F%2Flocalhost%2Fwordpress07%2Fadmin%2F&reauth=1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'loginOK', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfhoover`
--

CREATE TABLE `wp_wfhoover` (
  `id` int(10) UNSIGNED NOT NULL,
  `owner` text DEFAULT NULL,
  `host` text DEFAULT NULL,
  `path` text DEFAULT NULL,
  `hostKey` varbinary(124) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfissues`
--

CREATE TABLE `wp_wfissues` (
  `id` int(10) UNSIGNED NOT NULL,
  `time` int(10) UNSIGNED NOT NULL,
  `lastUpdated` int(10) UNSIGNED NOT NULL,
  `status` varchar(10) NOT NULL,
  `type` varchar(20) NOT NULL,
  `severity` tinyint(3) UNSIGNED NOT NULL,
  `ignoreP` char(32) NOT NULL,
  `ignoreC` char(32) NOT NULL,
  `shortMsg` varchar(255) NOT NULL,
  `longMsg` text DEFAULT NULL,
  `data` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfknownfilelist`
--

CREATE TABLE `wp_wfknownfilelist` (
  `id` int(11) UNSIGNED NOT NULL,
  `path` text NOT NULL,
  `wordpress_path` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wflivetraffichuman`
--

CREATE TABLE `wp_wflivetraffichuman` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `identifier` binary(32) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `expiration` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wflocs`
--

CREATE TABLE `wp_wflocs` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `ctime` int(10) UNSIGNED NOT NULL,
  `failed` tinyint(3) UNSIGNED NOT NULL,
  `city` varchar(255) DEFAULT '',
  `region` varchar(255) DEFAULT '',
  `countryName` varchar(255) DEFAULT '',
  `countryCode` char(2) DEFAULT '',
  `lat` float(10,7) DEFAULT 0.0000000,
  `lon` float(10,7) DEFAULT 0.0000000
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wflogins`
--

CREATE TABLE `wp_wflogins` (
  `id` int(10) UNSIGNED NOT NULL,
  `hitID` int(11) DEFAULT NULL,
  `ctime` double(17,6) UNSIGNED NOT NULL,
  `fail` tinyint(3) UNSIGNED NOT NULL,
  `action` varchar(40) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userID` int(10) UNSIGNED NOT NULL,
  `IP` binary(16) DEFAULT NULL,
  `UA` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wflogins`
--

INSERT INTO `wp_wflogins` (`id`, `hitID`, `ctime`, `fail`, `action`, `username`, `userID`, `IP`, `UA`) VALUES
(1, 1, 1680596358.126639, 0, 'logout', 'admin20', 1, 0x00000000000000000000000000000001, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36'),
(2, 2, 1680596369.782143, 0, 'loginOK', 'admin20', 1, 0x00000000000000000000000000000001, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36'),
(3, 3, 1680596743.347326, 0, 'logout', 'admin20', 1, 0x00000000000000000000000000000001, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36'),
(4, 4, 1680596752.865425, 0, 'loginOK', 'admin20', 1, 0x00000000000000000000000000000001, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36'),
(5, 5, 1680597300.372797, 0, 'logout', 'admin20', 1, 0x00000000000000000000000000000001, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36'),
(6, 6, 1680597478.136991, 0, 'loginOK', 'admin20', 1, 0x00000000000000000000000000000001, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36'),
(7, 7, 1680597662.899676, 0, 'logout', 'admin20', 1, 0x00000000000000000000000000000001, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36'),
(8, 8, 1680597687.751710, 0, 'loginOK', 'admin20', 1, 0x00000000000000000000000000000001, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36'),
(9, 9, 1680597700.169816, 0, 'logout', 'admin20', 1, 0x00000000000000000000000000000001, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36'),
(10, 10, 1680597789.150339, 0, 'loginOK', 'admin20', 1, 0x00000000000000000000000000000001, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36'),
(11, 11, 1680597796.909706, 0, 'logout', 'admin20', 1, 0x00000000000000000000000000000001, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36'),
(12, 12, 1680597827.053430, 0, 'loginOK', 'admin20', 1, 0x00000000000000000000000000000001, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36'),
(13, 13, 1680597904.037861, 0, 'logout', 'admin20', 1, 0x00000000000000000000000000000001, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36'),
(14, 14, 1680597920.261323, 0, 'loginOK', 'admin20', 1, 0x00000000000000000000000000000001, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36'),
(15, 15, 1680617740.617628, 0, 'loginOK', 'admin20', 1, 0x00000000000000000000000000000001, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36'),
(16, 16, 1680617937.738019, 0, 'logout', 'admin20', 1, 0x00000000000000000000000000000001, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36'),
(17, 17, 1680617947.485636, 0, 'loginOK', '20editor', 2, 0x00000000000000000000000000000001, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36'),
(18, 18, 1680617977.383470, 0, 'logout', '20editor', 2, 0x00000000000000000000000000000001, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36'),
(19, 19, 1680617987.487434, 0, 'loginOK', 'admin20', 1, 0x00000000000000000000000000000001, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36'),
(20, 20, 1680765009.576242, 0, 'loginOK', 'admin20', 1, 0x00000000000000000000000000000001, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36'),
(21, 21, 1682924186.401216, 0, 'loginOK', 'admin20', 1, 0x00000000000000000000000000000001, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36'),
(22, 22, 1682924918.718658, 0, 'logout', 'admin20', 1, 0x00000000000000000000000000000001, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36'),
(23, 23, 1682924928.518333, 0, 'loginOK', '20editor', 2, 0x00000000000000000000000000000001, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36'),
(24, 24, 1683033192.936361, 0, 'loginOK', 'admin20', 1, 0x00000000000000000000000000000001, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36'),
(25, 25, 1683033209.219943, 0, 'logout', 'admin20', 1, 0x00000000000000000000000000000001, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36'),
(26, 26, 1683033219.159448, 0, 'loginOK', '20editor', 2, 0x00000000000000000000000000000001, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36'),
(27, 27, 1683122344.857706, 0, 'loginOK', 'admin20', 1, 0x00000000000000000000000000000001, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36'),
(28, 28, 1683379915.041843, 0, 'loginOK', 'admin20', 1, 0x00000000000000000000000000000001, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36'),
(29, 29, 1683466246.236244, 0, 'loginOK', 'admin20', 1, 0x00000000000000000000000000000001, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfls_2fa_secrets`
--

CREATE TABLE `wp_wfls_2fa_secrets` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `secret` tinyblob NOT NULL,
  `recovery` blob NOT NULL,
  `ctime` int(10) UNSIGNED NOT NULL,
  `vtime` int(10) UNSIGNED NOT NULL,
  `mode` enum('authenticator') NOT NULL DEFAULT 'authenticator'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfls_role_counts`
--

CREATE TABLE `wp_wfls_role_counts` (
  `serialized_roles` varbinary(255) NOT NULL,
  `two_factor_inactive` tinyint(1) NOT NULL,
  `user_count` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfls_settings`
--

CREATE TABLE `wp_wfls_settings` (
  `name` varchar(191) NOT NULL DEFAULT '',
  `value` longblob DEFAULT NULL,
  `autoload` enum('no','yes') NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wfls_settings`
--

INSERT INTO `wp_wfls_settings` (`name`, `value`, `autoload`) VALUES
('2fa-user-grace-period', 0x3130, 'yes'),
('allow-disabling-ntp', 0x31, 'yes'),
('allow-xml-rpc', 0x31, 'yes'),
('captcha-stats', 0x7b22636f756e7473223a5b302c302c302c302c302c302c302c302c302c302c305d2c22617667223a307d, 'yes'),
('delete-deactivation', '', 'yes'),
('disable-temporary-tables', 0x30, 'yes'),
('enable-auth-captcha', '', 'yes'),
('enable-login-history-columns', 0x31, 'yes'),
('enable-shortcode', '', 'yes'),
('enable-woocommerce-account-integration', '', 'yes'),
('enable-woocommerce-integration', '', 'yes'),
('global-notices', 0x5b5d, 'yes'),
('ip-source', '', 'yes'),
('ip-trusted-proxies', '', 'yes'),
('last-secret-refresh', 0x31363830353936313730, 'yes'),
('ntp-failure-count', 0x30, 'yes'),
('ntp-offset', 0x302e3934343633333030373034393536, 'yes'),
('recaptcha-threshold', 0x302e35, 'yes'),
('remember-device', '', 'yes'),
('remember-device-duration', 0x32353932303030, 'yes'),
('require-2fa-grace-period-enabled', '', 'yes'),
('require-2fa.administrator', '', 'yes'),
('schema-version', 0x32, 'yes'),
('shared-hash-secret', 0x33623762356365326338353161646565323064643066383138316535633061343639363437383263646437333634356463373861656162373761653536333634, 'yes'),
('shared-symmetric-secret', 0x36363234613031356638343166616236373835353034386432363266343162383030303534363439306139336630313731656637346431653431346663306231, 'yes'),
('stack-ui-columns', 0x31, 'yes'),
('use-ntp', 0x31, 'yes'),
('user-count-query-state', 0x30, 'yes'),
('whitelisted', '', 'yes'),
('xmlrpc-enabled', 0x31, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfnotifications`
--

CREATE TABLE `wp_wfnotifications` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `new` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `category` varchar(255) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT 1000,
  `ctime` int(10) UNSIGNED NOT NULL,
  `html` text NOT NULL,
  `links` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfpendingissues`
--

CREATE TABLE `wp_wfpendingissues` (
  `id` int(10) UNSIGNED NOT NULL,
  `time` int(10) UNSIGNED NOT NULL,
  `lastUpdated` int(10) UNSIGNED NOT NULL,
  `status` varchar(10) NOT NULL,
  `type` varchar(20) NOT NULL,
  `severity` tinyint(3) UNSIGNED NOT NULL,
  `ignoreP` char(32) NOT NULL,
  `ignoreC` char(32) NOT NULL,
  `shortMsg` varchar(255) NOT NULL,
  `longMsg` text DEFAULT NULL,
  `data` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfreversecache`
--

CREATE TABLE `wp_wfreversecache` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `host` varchar(255) NOT NULL,
  `lastUpdate` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfsnipcache`
--

CREATE TABLE `wp_wfsnipcache` (
  `id` int(10) UNSIGNED NOT NULL,
  `IP` varchar(45) NOT NULL DEFAULT '',
  `expiration` timestamp NOT NULL DEFAULT current_timestamp(),
  `body` varchar(255) NOT NULL DEFAULT '',
  `count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `type` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfstatus`
--

CREATE TABLE `wp_wfstatus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ctime` double(17,6) UNSIGNED NOT NULL,
  `level` tinyint(3) UNSIGNED NOT NULL,
  `type` char(5) NOT NULL,
  `msg` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wftrafficrates`
--

CREATE TABLE `wp_wftrafficrates` (
  `eMin` int(10) UNSIGNED NOT NULL,
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `hitType` enum('hit','404') NOT NULL DEFAULT 'hit',
  `hits` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_indexable`
--

CREATE TABLE `wp_yoast_indexable` (
  `id` int(11) UNSIGNED NOT NULL,
  `permalink` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permalink_hash` varchar(40) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_type` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `object_sub_type` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `post_parent` bigint(20) DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `breadcrumb_title` text COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT NULL,
  `is_protected` tinyint(1) DEFAULT 0,
  `has_public_posts` tinyint(1) DEFAULT NULL,
  `number_of_pages` int(11) UNSIGNED DEFAULT NULL,
  `canonical` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `primary_focus_keyword` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `primary_focus_keyword_score` int(3) DEFAULT NULL,
  `readability_score` int(3) DEFAULT NULL,
  `is_cornerstone` tinyint(1) DEFAULT 0,
  `is_robots_noindex` tinyint(1) DEFAULT 0,
  `is_robots_nofollow` tinyint(1) DEFAULT 0,
  `is_robots_noarchive` tinyint(1) DEFAULT 0,
  `is_robots_noimageindex` tinyint(1) DEFAULT 0,
  `is_robots_nosnippet` tinyint(1) DEFAULT 0,
  `twitter_title` text COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `twitter_image` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `twitter_description` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `twitter_image_id` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `twitter_image_source` text COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `open_graph_title` text COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `open_graph_description` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `open_graph_image` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `open_graph_image_id` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `open_graph_image_source` text COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `open_graph_image_meta` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `link_count` int(11) DEFAULT NULL,
  `incoming_link_count` int(11) DEFAULT NULL,
  `prominent_words_version` int(11) UNSIGNED DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `blog_id` bigint(20) NOT NULL DEFAULT 1,
  `language` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `region` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schema_page_type` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schema_article_type` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `has_ancestors` tinyint(1) DEFAULT 0,
  `estimated_reading_time_minutes` int(11) DEFAULT NULL,
  `version` int(11) DEFAULT 1,
  `object_last_modified` datetime DEFAULT NULL,
  `object_published_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_yoast_indexable`
--

INSERT INTO `wp_yoast_indexable` (`id`, `permalink`, `permalink_hash`, `object_id`, `object_type`, `object_sub_type`, `author_id`, `post_parent`, `title`, `description`, `breadcrumb_title`, `post_status`, `is_public`, `is_protected`, `has_public_posts`, `number_of_pages`, `canonical`, `primary_focus_keyword`, `primary_focus_keyword_score`, `readability_score`, `is_cornerstone`, `is_robots_noindex`, `is_robots_nofollow`, `is_robots_noarchive`, `is_robots_noimageindex`, `is_robots_nosnippet`, `twitter_title`, `twitter_image`, `twitter_description`, `twitter_image_id`, `twitter_image_source`, `open_graph_title`, `open_graph_description`, `open_graph_image`, `open_graph_image_id`, `open_graph_image_source`, `open_graph_image_meta`, `link_count`, `incoming_link_count`, `prominent_words_version`, `created_at`, `updated_at`, `blog_id`, `language`, `region`, `schema_page_type`, `schema_article_type`, `has_ancestors`, `estimated_reading_time_minutes`, `version`, `object_last_modified`, `object_published_at`) VALUES
(4, 'http://localhost/wordpress07/category/uncategorized/', '52:f9f41a99a2a74b6cea1e4716ca08ba2a', 1, 'term', 'category', NULL, NULL, NULL, NULL, 'Uncategorized', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-04-04 08:29:53', '2023-05-06 09:04:15', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-05-06 16:04:15', NULL),
(5, NULL, NULL, NULL, 'system-page', '404', NULL, NULL, 'Page not found %%sep%% %%sitename%%', NULL, 'Error 404: Page not found', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-04 08:29:53', '2023-04-30 23:58:06', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL),
(6, NULL, NULL, NULL, 'system-page', 'search-result', NULL, NULL, 'You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-04 08:29:53', '2023-04-30 23:58:06', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL),
(7, NULL, NULL, NULL, 'date-archive', NULL, NULL, NULL, '%%date%% %%page%% %%sep%% %%sitename%%', '', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-04 08:29:53', '2023-04-30 23:58:06', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL),
(8, 'http://localhost/wordpress07/', '29:cbaa7691719c14c6cb09194895bb3e5f', NULL, 'home-page', NULL, NULL, NULL, '%%sitename%% %%page%% %%sep%% %%sitedesc%%', '', 'Home', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '%%sitename%%', '', '', '0', NULL, NULL, NULL, NULL, NULL, '2023-04-04 08:29:53', '2023-05-07 07:01:00', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-05-07 14:01:00', '2023-04-04 15:56:25'),
(9, NULL, NULL, NULL, 'post-type-archive', 'vslides', NULL, NULL, '%%pt_plural%% Archive %%page%% %%sep%% %%sitename%%', '', 'Vslider', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-04 08:29:53', '2023-04-04 14:18:49', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL),
(10, 'http://localhost/wordpress07/wp-content/uploads/2023/04/rsz_covid_-logo.png', '75:2635c28725d45bc27e0dfa42fc794617', 9, 'post', 'attachment', 1, 0, NULL, NULL, 'rsz_covid_-logo', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress07/wp-content/uploads/2023/04/rsz_covid_-logo.png', NULL, '9', 'attachment-image', NULL, NULL, 'http://localhost/wordpress07/wp-content/uploads/2023/04/rsz_covid_-logo.png', '9', 'attachment-image', '{\n    \"width\": 170,\n    \"height\": 70,\n    \"filesize\": 9355,\n    \"url\": \"http://localhost/wordpress07/wp-content/uploads/2023/04/rsz_covid_-logo.png\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\wordpress07/wp-content/uploads/2023/04/rsz_covid_-logo.png\",\n    \"size\": \"full\",\n    \"id\": 9,\n    \"alt\": \"\",\n    \"pixels\": 11900,\n    \"type\": \"image/png\"\n}', NULL, NULL, NULL, '2023-04-04 08:33:06', '2023-04-30 23:58:06', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-04-04 08:20:11', '2023-04-04 08:20:11'),
(11, NULL, NULL, NULL, 'post-type-archive', 'vslides', NULL, NULL, '%%pt_plural%% Archive %%page%% %%sep%% %%sitename%%', '', 'Vslider', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-04 14:18:52', '2023-04-06 07:12:14', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL),
(12, 'http://localhost/wordpress07/?post_type=news_update&p=16', '56:3767c6e9093a6d945638b99105be3d75', 16, 'post', 'news_update', 1, 0, NULL, NULL, 'Berita Covid Hari Ini', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-04-04 14:31:37', '2023-05-01 00:10:23', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2023-05-01 07:10:23', '2023-04-04 14:31:48'),
(24, NULL, NULL, NULL, 'post-type-archive', 'vslides', NULL, NULL, '%%pt_plural%% Archive %%page%% %%sep%% %%sitename%%', '', 'Vslider', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-01 06:56:35', '2023-05-01 06:58:03', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL),
(25, 'http://localhost/wordpress07/vslides/', '37:4c3619e2dc3cb0379a4bad5600afe677', NULL, 'post-type-archive', 'vslides', NULL, NULL, '%%pt_plural%% Archive %%page%% %%sep%% %%sitename%%', '', 'Vslider', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-01 06:58:06', '2023-04-30 23:58:06', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, NULL, NULL),
(31, 'http://localhost/wordpress07/?p=40', '34:0906f9e7fc096afcb3c3fc61c6585901', 40, 'post', 'post', 2, 0, NULL, NULL, 'Kasus Covid 19 Jakarta, Telah Berkurang Jadi 0 Orang, Alhamdullilah Cuyyy', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-05-03 14:57:19', '2023-05-03 08:14:17', 1, NULL, NULL, NULL, NULL, 0, 1, 2, '2023-05-03 15:14:17', '2023-05-03 14:57:19'),
(33, 'http://localhost/wordpress07/?p=43', '34:2b963a978fb6ccf85795c4e93e6adacd', 43, 'post', 'post', 1, 0, NULL, NULL, 'Viral! Seorang Maling, Malah Menggoreng Nugget Saat Maling Dirumah Orang', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-05-03 15:09:15', '2023-05-03 08:14:17', 1, NULL, NULL, NULL, NULL, 0, 1, 2, '2023-05-03 15:14:17', '2023-05-03 15:09:15'),
(35, 'http://localhost/wordpress07/?p=45', '34:39b645a7e9b2fd75557ef862a3b5388e', 45, 'post', 'post', 1, 0, NULL, NULL, 'KQZWIOQSJqwhidqwkgqxku', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-05-03 15:09:52', '2023-05-03 08:14:17', 1, NULL, NULL, NULL, NULL, 0, 1, 2, '2023-05-03 15:14:17', '2023-05-03 15:09:51'),
(36, 'http://localhost/wordpress07/?p=47', '34:70890e26d2a9b90f890a8d692c241d3a', 47, 'post', 'post', 1, 0, NULL, NULL, 'anzjasncmwndweidw,nd,mwnfmnjk', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-05-03 15:14:55', '2023-05-03 08:19:11', 1, NULL, NULL, NULL, NULL, 0, 1, 2, '2023-05-03 15:19:11', '2023-05-03 15:14:55'),
(37, 'http://localhost/wordpress07/?p=49', '34:c9b663f38c2ebbcd72c74a0f1d0f6307', 49, 'post', 'post', 1, 0, NULL, NULL, 'asdndasnjmwenkdjweldjeoqkfd3jqne,mqfnbjk', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-05-03 15:15:41', '2023-05-03 08:19:09', 1, NULL, NULL, NULL, NULL, 0, 1, 2, '2023-05-03 15:19:09', '2023-05-03 15:15:41'),
(38, 'http://localhost/wordpress07/?p=51', '34:4e2bb697f24c22d6a2d97e0e41531bc0', 51, 'post', 'post', 1, 0, NULL, NULL, 'Penambahan Regimen Vaksinasi COVID-19 Dosis Lanjutan (Booster) Kedua Bagi Sasaran yang Mendapat Vaksin Primer Pfizer', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-05-03 15:20:08', '2023-05-06 06:32:26', 1, NULL, NULL, NULL, NULL, 0, 1, 2, '2023-05-06 13:32:26', '2023-05-03 15:20:08'),
(39, 'http://localhost/wordpress07/author/admin20/', '44:0a71cba3891eaab4848eb23788e99749', 1, 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'https://2.gravatar.com/avatar/80e8a1ff032ead31d5ca8daf66293ac0?s=500&d=mm&r=g', NULL, NULL, 'gravatar-image', NULL, NULL, 'https://2.gravatar.com/avatar/80e8a1ff032ead31d5ca8daf66293ac0?s=500&d=mm&r=g', NULL, 'gravatar-image', NULL, NULL, NULL, NULL, '2023-05-03 15:20:08', '2023-05-07 07:01:00', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-05-07 14:01:00', '2023-04-04 08:14:04'),
(40, 'http://localhost/wordpress07/?p=53', '34:f20725afd8e112c371d80ad5eb869c2a', 53, 'post', 'post', 2, 0, NULL, NULL, 'Penambahan Regimen Vaksinasi COVID-19 Dosis Lanjutan (Booster) Kedua Bagi Sasaran yang Mendapat Vaksin Primer Pfizer', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-05-03 15:21:10', '2023-05-06 06:32:26', 1, NULL, NULL, NULL, NULL, 0, 1, 2, '2023-05-06 13:32:26', '2023-05-03 15:21:10'),
(42, 'http://localhost/wordpress07/?p=55', '34:4dcd294f2a15d9eea5b0969e623baac5', 55, 'post', 'post', 1, 0, NULL, NULL, 'Penambahan Regimen Vaksinasi COVID-19 Dosis Lanjutan (Booster) Kedua Bagi Sasaran yang Mendapat Vaksin Primer Pfizer', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress07/wp-content/uploads/2023/05/256412040.jpg', NULL, '59', 'featured-image', NULL, NULL, 'http://localhost/wordpress07/wp-content/uploads/2023/05/256412040.jpg', '59', 'featured-image', '{\n    \"width\": 1010,\n    \"height\": 768,\n    \"filesize\": 117860,\n    \"url\": \"http://localhost/wordpress07/wp-content/uploads/2023/05/256412040.jpg\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\wordpress07/wp-content/uploads/2023/05/256412040.jpg\",\n    \"size\": \"full\",\n    \"id\": 59,\n    \"alt\": \"\",\n    \"pixels\": 775680,\n    \"type\": \"image/jpeg\"\n}', 0, NULL, NULL, '2023-05-03 15:23:12', '2023-05-06 08:08:27', 1, NULL, NULL, NULL, NULL, 0, 1, 2, '2023-05-06 15:08:27', '2023-05-03 15:23:12'),
(43, 'http://localhost/wordpress07/?p=57', '34:b9408dcdf4921ed80f51f07b3a57b522', 57, 'post', 'post', 1, 0, NULL, NULL, 'Penambahan Regimen Vaksinasi COVID-19 Dosis Lanjutan (Booster) Kedua Bagi Sasaran yang Mendapat Vaksin Primer Pfizer', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-05-03 15:30:10', '2023-05-06 06:32:26', 1, NULL, NULL, NULL, NULL, 0, 1, 2, '2023-05-06 13:32:26', '2023-05-02 01:29:00'),
(44, 'http://localhost/wordpress07/wp-content/uploads/2023/05/256412040.jpg', '69:e54c13861396aceebfe9122b174ee319', 59, 'post', 'attachment', 1, 55, NULL, NULL, '256412040', 'inherit', NULL, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress07/wp-content/uploads/2023/05/256412040.jpg', NULL, '59', 'attachment-image', NULL, NULL, 'http://localhost/wordpress07/wp-content/uploads/2023/05/256412040.jpg', '59', 'attachment-image', '{\n    \"url\": \"http://localhost/wordpress07/wp-content/uploads/2023/05/256412040.jpg\",\n    \"width\": 1,\n    \"height\": 1,\n    \"size\": \"full\",\n    \"id\": 59,\n    \"alt\": \"\",\n    \"pixels\": 1,\n    \"type\": \"image/jpeg\"\n}', NULL, NULL, NULL, '2023-05-06 13:32:53', '2023-05-06 15:08:27', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2023-05-06 13:32:53', '2023-05-06 13:32:53'),
(45, 'http://localhost/wordpress07/category/newsupdate/', '49:523fd8d2407cfaad4d52c7680f2f7ffe', 8, 'term', 'category', NULL, NULL, NULL, NULL, 'newsUpdate', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-05-06 13:38:11', '2023-05-07 07:01:00', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-05-07 14:01:00', NULL),
(46, 'http://localhost/wordpress07/category/covidevent/', '49:e3814355d8c57eeb5a62e738dcea9623', 9, 'term', 'category', NULL, NULL, NULL, NULL, 'covidEvent', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-05-06 13:38:21', '2023-05-06 08:41:55', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-05-06 15:41:55', NULL),
(47, 'http://localhost/wordpress07/?p=60', '34:c403c0e5dc6fd3dbfb90736c6ca34e98', 60, 'post', 'post', 2, 0, NULL, NULL, 'Berita Ahmad Kasim Berak Di Bus Saat Push Rank', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-05-06 13:43:41', '2023-05-06 08:08:27', 1, NULL, NULL, NULL, NULL, 0, 1, 2, '2023-05-06 15:08:27', '2023-05-06 13:43:41'),
(49, 'http://localhost/wordpress07/?p=68', '34:4a801420a7a3c972645371913e3610c8', 68, 'post', 'post', 1, 0, NULL, NULL, 'Bagaimana Pendapat Anda Tentang Maling Goreng Nugget Saat Maling', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-05-06 14:44:14', '2023-05-06 08:08:27', 1, NULL, NULL, NULL, NULL, 0, 1, 2, '2023-05-06 15:08:27', '2023-05-06 14:44:21'),
(50, 'http://localhost/wordpress07/category/eachselectededitor/', '57:5d45990faf403316bd66aee4b231b673', 10, 'term', 'category', NULL, NULL, NULL, NULL, 'eachSelectedEditor', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-05-06 14:44:56', '2023-05-07 06:31:21', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-05-07 13:31:21', NULL),
(51, 'http://localhost/wordpress07/?p=70', '34:9a267d2c38345b445295b03dffafd335', 70, 'post', 'post', 1, 0, NULL, NULL, 'bDKHuigeufgnefoeufhqfhehxefiq', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress07/wp-content/uploads/2023/05/256412040-1.jpg', NULL, '71', 'featured-image', NULL, NULL, 'http://localhost/wordpress07/wp-content/uploads/2023/05/256412040-1.jpg', '71', 'featured-image', '{\n    \"width\": 1010,\n    \"height\": 768,\n    \"filesize\": 117860,\n    \"url\": \"http://localhost/wordpress07/wp-content/uploads/2023/05/256412040-1.jpg\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\wordpress07/wp-content/uploads/2023/05/256412040-1.jpg\",\n    \"size\": \"full\",\n    \"id\": 71,\n    \"alt\": \"\",\n    \"pixels\": 775680,\n    \"type\": \"image/jpeg\"\n}', 0, NULL, NULL, '2023-05-06 14:57:59', '2023-05-06 08:08:27', 1, NULL, NULL, NULL, NULL, 0, 1, 2, '2023-05-06 15:08:27', '2023-05-06 14:57:58'),
(52, 'http://localhost/wordpress07/newsupdate/admin20/73/jcsjkacbsjkacbwkdjcbwikc/', '76:cf6f8760b306e46a1e8660e2db86b8e9', 73, 'post', 'post', 1, 0, NULL, NULL, 'jcsjkacbsjkacbwkdjcbwikc', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress07/wp-content/uploads/2023/05/256412040.jpg', NULL, '59', 'featured-image', NULL, NULL, 'http://localhost/wordpress07/wp-content/uploads/2023/05/256412040.jpg', '59', 'featured-image', '{\n    \"width\": 1010,\n    \"height\": 768,\n    \"filesize\": 117860,\n    \"url\": \"http://localhost/wordpress07/wp-content/uploads/2023/05/256412040.jpg\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\wordpress07/wp-content/uploads/2023/05/256412040.jpg\",\n    \"size\": \"full\",\n    \"id\": 59,\n    \"alt\": \"\",\n    \"pixels\": 775680,\n    \"type\": \"image/jpeg\"\n}', 0, NULL, NULL, '2023-05-06 15:03:08', '2023-05-07 07:01:00', 1, NULL, NULL, NULL, NULL, 0, 1, 2, '2023-05-07 14:01:00', '2023-05-06 15:03:08'),
(53, 'http://localhost/wordpress07/newsupdate/admin20/75/qwsbwqjkdnwjkdnqwjk/', '71:557350edaf935503ccf268c0fda46722', 75, 'post', 'post', 1, 0, NULL, NULL, 'qwsbwqjkdnwjkdnqwjk', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress07/wp-content/uploads/2023/05/256412040-1.jpg', NULL, '71', 'featured-image', NULL, NULL, 'http://localhost/wordpress07/wp-content/uploads/2023/05/256412040-1.jpg', '71', 'featured-image', '{\n    \"width\": 1010,\n    \"height\": 768,\n    \"filesize\": 117860,\n    \"url\": \"http://localhost/wordpress07/wp-content/uploads/2023/05/256412040-1.jpg\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\wordpress07/wp-content/uploads/2023/05/256412040-1.jpg\",\n    \"size\": \"full\",\n    \"id\": 71,\n    \"alt\": \"\",\n    \"pixels\": 775680,\n    \"type\": \"image/jpeg\"\n}', 0, NULL, NULL, '2023-05-06 15:09:59', '2023-05-06 08:26:49', 1, NULL, NULL, NULL, NULL, 0, 1, 2, '2023-05-06 15:26:49', '2023-05-06 15:09:59'),
(54, 'http://localhost/wordpress07/wp-content/uploads/2023/05/256412040-1.jpg', '71:d6b8cc39d1c10552a6e52c790a350003', 71, 'post', 'attachment', 1, 70, NULL, NULL, '256412040', 'inherit', NULL, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress07/wp-content/uploads/2023/05/256412040-1.jpg', NULL, '71', 'attachment-image', NULL, NULL, 'http://localhost/wordpress07/wp-content/uploads/2023/05/256412040-1.jpg', '71', 'attachment-image', '{\n    \"width\": 1010,\n    \"height\": 768,\n    \"filesize\": 117860,\n    \"url\": \"http://localhost/wordpress07/wp-content/uploads/2023/05/256412040-1.jpg\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\wordpress07/wp-content/uploads/2023/05/256412040-1.jpg\",\n    \"size\": \"full\",\n    \"id\": 71,\n    \"alt\": \"\",\n    \"pixels\": 775680,\n    \"type\": \"image/jpeg\"\n}', NULL, NULL, NULL, '2023-05-06 15:26:26', '2023-05-06 08:26:26', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-05-06 14:57:47', '2023-05-06 14:57:47'),
(55, 'http://localhost/wordpress07/wp-content/uploads/2023/05/256412040-1.jpg', '71:d6b8cc39d1c10552a6e52c790a350003', 71, 'post', 'attachment', 1, 70, NULL, NULL, '256412040', 'inherit', NULL, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress07/wp-content/uploads/2023/05/256412040-1.jpg', NULL, '71', 'attachment-image', NULL, NULL, 'http://localhost/wordpress07/wp-content/uploads/2023/05/256412040-1.jpg', '71', 'attachment-image', '{\n    \"width\": 1010,\n    \"height\": 768,\n    \"filesize\": 117860,\n    \"url\": \"http://localhost/wordpress07/wp-content/uploads/2023/05/256412040-1.jpg\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\wordpress07/wp-content/uploads/2023/05/256412040-1.jpg\",\n    \"size\": \"full\",\n    \"id\": 71,\n    \"alt\": \"\",\n    \"pixels\": 775680,\n    \"type\": \"image/jpeg\"\n}', NULL, NULL, NULL, '2023-05-06 15:26:26', '2023-05-06 08:26:26', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-05-06 14:57:47', '2023-05-06 14:57:47'),
(56, 'http://localhost/wordpress07/covidevent/admin20/80/wdcwdwehdjzwdqewfxjkenfjk/', '77:78ab168decede633323d2dc60da8e462', 80, 'post', 'post', 1, 0, NULL, NULL, 'wdcwdwehdjzwdqewfxjkenfjk', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-05-06 15:32:18', '2023-05-06 08:41:55', 1, NULL, NULL, NULL, NULL, 0, 1, 2, '2023-05-06 15:41:55', '2023-05-06 15:32:18'),
(57, 'http://localhost/wordpress07/eachselectededitor/admin20/82/jkdnwjkdwkjhekwfqj/', '78:008c802660fc0e8f21099ff383b9e7a0', 82, 'post', 'post', 1, 0, NULL, NULL, 'JKDNWJKdwkjhekwfqj', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-05-06 16:04:15', '2023-05-07 06:31:21', 1, NULL, NULL, NULL, NULL, 0, 1, 2, '2023-05-07 13:31:21', '2023-05-06 16:04:15');

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_indexable_hierarchy`
--

CREATE TABLE `wp_yoast_indexable_hierarchy` (
  `indexable_id` int(11) UNSIGNED NOT NULL,
  `ancestor_id` int(11) UNSIGNED NOT NULL,
  `depth` int(11) UNSIGNED DEFAULT NULL,
  `blog_id` bigint(20) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_yoast_indexable_hierarchy`
--

INSERT INTO `wp_yoast_indexable_hierarchy` (`indexable_id`, `ancestor_id`, `depth`, `blog_id`) VALUES
(4, 0, 0, 1),
(8, 0, 0, 1),
(10, 0, 0, 1),
(12, 0, 0, 1),
(31, 0, 0, 1),
(33, 0, 0, 1),
(35, 0, 0, 1),
(36, 0, 0, 1),
(37, 0, 0, 1),
(38, 0, 0, 1),
(39, 0, 0, 1),
(40, 0, 0, 1),
(42, 0, 0, 1),
(43, 0, 0, 1),
(44, 42, 1, 1),
(45, 0, 0, 1),
(46, 0, 0, 1),
(47, 0, 0, 1),
(49, 0, 0, 1),
(50, 0, 0, 1),
(51, 0, 0, 1),
(52, 0, 0, 1),
(53, 0, 0, 1),
(54, 51, 1, 1),
(55, 51, 1, 1),
(56, 0, 0, 1),
(57, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_migrations`
--

CREATE TABLE `wp_yoast_migrations` (
  `id` int(11) UNSIGNED NOT NULL,
  `version` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_yoast_migrations`
--

INSERT INTO `wp_yoast_migrations` (`id`, `version`) VALUES
(1, '20171228151840'),
(2, '20171228151841'),
(3, '20190529075038'),
(4, '20191011111109'),
(5, '20200408101900'),
(6, '20200420073606'),
(7, '20200428123747'),
(8, '20200428194858'),
(9, '20200429105310'),
(10, '20200430075614'),
(11, '20200430150130'),
(12, '20200507054848'),
(13, '20200513133401'),
(14, '20200609154515'),
(15, '20200616130143'),
(16, '20200617122511'),
(17, '20200702141921'),
(18, '20200728095334'),
(19, '20201202144329'),
(20, '20201216124002'),
(21, '20201216141134'),
(22, '20210817092415'),
(23, '20211020091404');

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_primary_term`
--

CREATE TABLE `wp_yoast_primary_term` (
  `id` int(11) UNSIGNED NOT NULL,
  `post_id` bigint(20) DEFAULT NULL,
  `term_id` bigint(20) DEFAULT NULL,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `blog_id` bigint(20) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_yoast_primary_term`
--

INSERT INTO `wp_yoast_primary_term` (`id`, `post_id`, `term_id`, `taxonomy`, `created_at`, `updated_at`, `blog_id`) VALUES
(7, 40, 6, 'category', '2023-05-03 14:57:23', '2023-05-03 08:14:17', 1),
(8, 47, 6, 'category', '2023-05-03 15:14:58', '2023-05-03 08:19:11', 1),
(9, 49, 6, 'category', '2023-05-03 15:15:45', '2023-05-03 08:19:09', 1),
(10, 53, 6, 'category', '2023-05-03 15:21:13', '2023-05-06 06:32:26', 1),
(11, 55, 8, 'category', '2023-05-03 15:23:17', '2023-05-06 08:08:27', 1),
(12, 57, 6, 'category', '2023-05-03 15:30:26', '2023-05-06 06:32:26', 1),
(13, 60, 9, 'category', '2023-05-06 13:43:45', '2023-05-06 08:08:27', 1),
(14, 68, 9, 'category', '2023-05-06 14:45:06', '2023-05-06 08:08:27', 1),
(15, 70, 8, 'category', '2023-05-06 14:58:03', '2023-05-06 08:08:27', 1),
(16, 73, 8, 'category', '2023-05-06 15:03:12', '2023-05-07 07:01:00', 1),
(17, 75, 8, 'category', '2023-05-06 15:10:02', '2023-05-06 08:26:49', 1),
(18, 80, 9, 'category', '2023-05-06 15:32:22', '2023-05-06 08:41:55', 1),
(19, 82, 10, 'category', '2023-05-06 16:04:19', '2023-05-07 06:31:21', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_seo_links`
--

CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `target_post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` varchar(8) DEFAULT NULL,
  `indexable_id` int(11) UNSIGNED DEFAULT NULL,
  `target_indexable_id` int(11) UNSIGNED DEFAULT NULL,
  `height` int(11) UNSIGNED DEFAULT NULL,
  `width` int(11) UNSIGNED DEFAULT NULL,
  `size` int(11) UNSIGNED DEFAULT NULL,
  `language` varchar(32) DEFAULT NULL,
  `region` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_yoast_seo_links`
--

INSERT INTO `wp_yoast_seo_links` (`id`, `url`, `post_id`, `target_post_id`, `type`, `indexable_id`, `target_indexable_id`, `height`, `width`, `size`, `language`, `region`) VALUES
(2, 'https://covid19.go.id/id/artikel/2023/04/27/penambahan-regimen-vaksinasi-covid-19-dosis-lanjutan-booster-kedua-bagi-sasaran-yang-mendapat-vaksin-primer-pfizer', 51, NULL, 'external', 38, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'https://covid19.go.id/id/artikel/2023/04/27/penambahan-regimen-vaksinasi-covid-19-dosis-lanjutan-booster-kedua-bagi-sasaran-yang-mendapat-vaksin-primer-pfizer', 53, NULL, 'external', 40, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'https://covid19.go.id/id/artikel/2023/04/27/penambahan-regimen-vaksinasi-covid-19-dosis-lanjutan-booster-kedua-bagi-sasaran-yang-mendapat-vaksin-primer-pfizer', 55, NULL, 'external', 42, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'https://covid19.go.id/id/artikel/2023/04/27/penambahan-regimen-vaksinasi-covid-19-dosis-lanjutan-booster-kedua-bagi-sasaran-yang-mendapat-vaksin-primer-pfizer', 57, NULL, 'external', 43, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_podsrel`
--
ALTER TABLE `wp_podsrel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `field_item_idx` (`field_id`,`item_id`),
  ADD KEY `rel_field_rel_item_idx` (`related_field_id`,`related_item_id`),
  ADD KEY `field_rel_item_idx` (`field_id`,`related_item_id`),
  ADD KEY `rel_field_item_idx` (`related_field_id`,`item_id`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_wfblockediplog`
--
ALTER TABLE `wp_wfblockediplog`
  ADD PRIMARY KEY (`IP`,`unixday`,`blockType`);

--
-- Indexes for table `wp_wfblocks7`
--
ALTER TABLE `wp_wfblocks7`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`),
  ADD KEY `IP` (`IP`),
  ADD KEY `expiration` (`expiration`);

--
-- Indexes for table `wp_wfconfig`
--
ALTER TABLE `wp_wfconfig`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `wp_wfcrawlers`
--
ALTER TABLE `wp_wfcrawlers`
  ADD PRIMARY KEY (`IP`,`patternSig`);

--
-- Indexes for table `wp_wffilechanges`
--
ALTER TABLE `wp_wffilechanges`
  ADD PRIMARY KEY (`filenameHash`);

--
-- Indexes for table `wp_wffilemods`
--
ALTER TABLE `wp_wffilemods`
  ADD PRIMARY KEY (`filenameMD5`);

--
-- Indexes for table `wp_wfhits`
--
ALTER TABLE `wp_wfhits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k1` (`ctime`),
  ADD KEY `k2` (`IP`,`ctime`),
  ADD KEY `attackLogTime` (`attackLogTime`);

--
-- Indexes for table `wp_wfhoover`
--
ALTER TABLE `wp_wfhoover`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k2` (`hostKey`);

--
-- Indexes for table `wp_wfissues`
--
ALTER TABLE `wp_wfissues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lastUpdated` (`lastUpdated`),
  ADD KEY `status` (`status`),
  ADD KEY `ignoreP` (`ignoreP`),
  ADD KEY `ignoreC` (`ignoreC`);

--
-- Indexes for table `wp_wfknownfilelist`
--
ALTER TABLE `wp_wfknownfilelist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wflivetraffichuman`
--
ALTER TABLE `wp_wflivetraffichuman`
  ADD PRIMARY KEY (`IP`,`identifier`),
  ADD KEY `expiration` (`expiration`);

--
-- Indexes for table `wp_wflocs`
--
ALTER TABLE `wp_wflocs`
  ADD PRIMARY KEY (`IP`);

--
-- Indexes for table `wp_wflogins`
--
ALTER TABLE `wp_wflogins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k1` (`IP`,`fail`),
  ADD KEY `hitID` (`hitID`);

--
-- Indexes for table `wp_wfls_2fa_secrets`
--
ALTER TABLE `wp_wfls_2fa_secrets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_wfls_role_counts`
--
ALTER TABLE `wp_wfls_role_counts`
  ADD PRIMARY KEY (`serialized_roles`,`two_factor_inactive`);

--
-- Indexes for table `wp_wfls_settings`
--
ALTER TABLE `wp_wfls_settings`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `wp_wfnotifications`
--
ALTER TABLE `wp_wfnotifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wfpendingissues`
--
ALTER TABLE `wp_wfpendingissues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lastUpdated` (`lastUpdated`),
  ADD KEY `status` (`status`),
  ADD KEY `ignoreP` (`ignoreP`),
  ADD KEY `ignoreC` (`ignoreC`);

--
-- Indexes for table `wp_wfreversecache`
--
ALTER TABLE `wp_wfreversecache`
  ADD PRIMARY KEY (`IP`);

--
-- Indexes for table `wp_wfsnipcache`
--
ALTER TABLE `wp_wfsnipcache`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expiration` (`expiration`),
  ADD KEY `IP` (`IP`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `wp_wfstatus`
--
ALTER TABLE `wp_wfstatus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k1` (`ctime`),
  ADD KEY `k2` (`type`);

--
-- Indexes for table `wp_wftrafficrates`
--
ALTER TABLE `wp_wftrafficrates`
  ADD PRIMARY KEY (`eMin`,`IP`,`hitType`);

--
-- Indexes for table `wp_yoast_indexable`
--
ALTER TABLE `wp_yoast_indexable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_type_and_sub_type` (`object_type`,`object_sub_type`),
  ADD KEY `object_id_and_type` (`object_id`,`object_type`),
  ADD KEY `permalink_hash_and_object_type` (`permalink_hash`,`object_type`),
  ADD KEY `subpages` (`post_parent`,`object_type`,`post_status`,`object_id`),
  ADD KEY `prominent_words` (`prominent_words_version`,`object_type`,`object_sub_type`,`post_status`),
  ADD KEY `published_sitemap_index` (`object_published_at`,`is_robots_noindex`,`object_type`,`object_sub_type`);

--
-- Indexes for table `wp_yoast_indexable_hierarchy`
--
ALTER TABLE `wp_yoast_indexable_hierarchy`
  ADD PRIMARY KEY (`indexable_id`,`ancestor_id`),
  ADD KEY `indexable_id` (`indexable_id`),
  ADD KEY `ancestor_id` (`ancestor_id`),
  ADD KEY `depth` (`depth`);

--
-- Indexes for table `wp_yoast_migrations`
--
ALTER TABLE `wp_yoast_migrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wp_yoast_migrations_version` (`version`);

--
-- Indexes for table `wp_yoast_primary_term`
--
ALTER TABLE `wp_yoast_primary_term`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_taxonomy` (`post_id`,`taxonomy`),
  ADD KEY `post_term` (`post_id`,`term_id`);

--
-- Indexes for table `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`),
  ADD KEY `indexable_link_direction` (`indexable_id`,`type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1471;

--
-- AUTO_INCREMENT for table `wp_podsrel`
--
ALTER TABLE `wp_podsrel`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=378;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_wfblocks7`
--
ALTER TABLE `wp_wfblocks7`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wfhits`
--
ALTER TABLE `wp_wfhits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `wp_wfhoover`
--
ALTER TABLE `wp_wfhoover`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wfissues`
--
ALTER TABLE `wp_wfissues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wfknownfilelist`
--
ALTER TABLE `wp_wfknownfilelist`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wflogins`
--
ALTER TABLE `wp_wflogins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `wp_wfls_2fa_secrets`
--
ALTER TABLE `wp_wfls_2fa_secrets`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wfpendingissues`
--
ALTER TABLE `wp_wfpendingissues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wfsnipcache`
--
ALTER TABLE `wp_wfsnipcache`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wfstatus`
--
ALTER TABLE `wp_wfstatus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_yoast_indexable`
--
ALTER TABLE `wp_yoast_indexable`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `wp_yoast_migrations`
--
ALTER TABLE `wp_yoast_migrations`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `wp_yoast_primary_term`
--
ALTER TABLE `wp_yoast_primary_term`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
