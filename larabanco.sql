-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.3.38-MariaDB-0ubuntu0.20.04.1 - Ubuntu 20.04
-- OS do Servidor:               debian-linux-gnu
-- HeidiSQL Versão:              12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para db_laraiuri
CREATE DATABASE IF NOT EXISTS `db_laraiuri` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `db_laraiuri`;

-- Copiando estrutura para tabela db_laraiuri.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela db_laraiuri.failed_jobs: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela db_laraiuri.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela db_laraiuri.migrations: ~4 rows (aproximadamente)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- Copiando estrutura para tabela db_laraiuri.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela db_laraiuri.password_reset_tokens: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela db_laraiuri.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela db_laraiuri.personal_access_tokens: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela db_laraiuri.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela db_laraiuri.users: ~11 rows (aproximadamente)
INSERT INTO `users` (`id`, `nome`, `email`, `senha`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'teste', 'teste@teste', '$2y$10$S/tZAmEPpHmaO/TmeBw33Ouvec4HjeG9z.zbQB6I9SGGLXGcM2/rK', NULL, NULL, '2023-10-16 22:31:23', '2023-10-16 22:31:23'),
	(2, 'dpos', 'dois@dois', '$2y$10$0gmLXgZUTa8HKZcUV4Fj1OD4cb5hn9FkdyKkuAbjwTu..1GCTmrdy', NULL, NULL, '2023-10-16 22:33:54', '2023-10-16 22:33:54'),
	(3, 'ters', 'qw@wq', '$2y$10$xxEdcF8s.PingJII.MjK4OUM83zB0sk55ZD77DQLuQCiXZ6xjgNHS', NULL, NULL, '2023-10-16 22:37:23', '2023-10-16 22:37:23'),
	(4, 'ters123', 'qw@wq', '$2y$10$inWvhBLW3BXiPCNpmu8loekySxzxtFqF75GtePbojZyaZEmheiKj2', NULL, NULL, '2023-10-16 22:38:30', '2023-10-16 22:38:30'),
	(5, 'qatro', 'quatro@4', '$2y$10$o/cZl81uthuIXYs0Us1wnetTLcM6uCY.m0v46w/ALWi95TmdRnPDa', NULL, NULL, '2023-10-16 22:40:05', '2023-10-16 22:40:05'),
	(6, '123123', '123@321', '$2y$10$sh8z2QLpAXEYbhuUMq7/i.vgf60/tMIGHeLvsXs3qzM.hw4KRtoAS', NULL, NULL, '2023-10-16 22:42:14', '2023-10-16 22:42:14'),
	(7, 'a', 'a@a', '$2y$10$.uM98jxwPUxCvM.Go/SAEu7.moAplOyadCi5VxRUrdHJ608qncy0.', NULL, NULL, '2023-10-16 22:42:47', '2023-10-16 22:42:47'),
	(8, 'lembre', 'lembre@lembre', '$2y$10$DTwIAyvQlyQpk1PhDiZVJ.sS8ulQhGlklh0AYcnTPiAwjh9zv9fGW', NULL, NULL, '2023-10-16 22:48:43', '2023-10-16 22:48:43'),
	(9, 'teste', 'sem@censura', '$2y$10$LRkOc1UFIs72f0ETiCPJGu/nbJs.qVwkJmWG7nM6SU1pa/Is.x4zm', NULL, NULL, '2023-10-16 22:52:04', '2023-10-16 22:52:04'),
	(10, 'teste2', 'sem@censura2', '$2y$10$ibxvInVJe4CgdORZYx3DxuvAZs4BqcYtrcPILRqKNGZQL6EeOOkh2', NULL, NULL, '2023-10-16 22:53:43', '2023-10-16 22:53:43'),
	(11, 'b', 'b@b', '$2y$10$X3w8s4Y4GQK9kWIR3EBKUe12oq2ZGHQxM.q8QkpajPoJD8z1wc.xy', NULL, NULL, '2023-10-16 22:58:56', '2023-10-16 22:58:56'),
	(12, 'c', 'c@c', '$2y$10$LeCPCxTuFJ.B9F.9NWPny.NC15jEZHE872zxpFW62GTUqt2AcqOh2', NULL, NULL, '2023-10-16 23:00:59', '2023-10-16 23:00:59');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
