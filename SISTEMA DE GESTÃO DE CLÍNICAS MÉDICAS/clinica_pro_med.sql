-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 31-Mar-2026 às 10:53
-- Versão do servidor: 10.4.32-MariaDB
-- versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `clinica_pro_med`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `consulta`
--

CREATE TABLE `consulta` (
  `id_consulta` int(11) NOT NULL,
  `data_consulta` date NOT NULL,
  `hora_consulta` time NOT NULL,
  `estado` enum('Agendada','Realizada','Cancelada','Reagendada') DEFAULT 'Agendada',
  `id_paciente` int(11) NOT NULL,
  `id_medico` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `consulta`
--

INSERT INTO `consulta` (`id_consulta`, `data_consulta`, `hora_consulta`, `estado`, `id_paciente`, `id_medico`) VALUES
(1, '2026-03-10', '08:00:00', 'Realizada', 1, 1),
(2, '2026-03-10', '09:00:00', 'Realizada', 2, 1),
(3, '2026-03-10', '10:00:00', 'Realizada', 3, 2),
(4, '2026-03-10', '11:00:00', 'Realizada', 4, 2),
(5, '2026-03-11', '08:00:00', 'Realizada', 5, 3),
(6, '2026-03-11', '09:00:00', 'Realizada', 6, 3),
(7, '2026-03-11', '10:00:00', 'Realizada', 7, 4),
(8, '2026-03-11', '11:00:00', 'Realizada', 8, 4),
(9, '2026-03-12', '08:00:00', 'Realizada', 9, 5),
(10, '2026-03-12', '09:00:00', 'Realizada', 10, 5),
(11, '2026-03-12', '10:00:00', 'Realizada', 11, 6),
(12, '2026-03-12', '11:00:00', 'Realizada', 12, 6),
(13, '2026-03-13', '08:00:00', 'Realizada', 13, 7),
(14, '2026-03-13', '09:00:00', 'Realizada', 14, 7),
(15, '2026-03-13', '10:00:00', 'Realizada', 15, 8),
(16, '2026-03-13', '11:00:00', 'Realizada', 16, 8),
(17, '2026-03-14', '08:00:00', 'Realizada', 17, 9),
(18, '2026-03-14', '09:00:00', 'Realizada', 18, 9),
(19, '2026-03-14', '10:00:00', 'Realizada', 19, 10),
(20, '2026-03-14', '11:00:00', 'Realizada', 20, 10),
(21, '2026-03-15', '08:00:00', 'Realizada', 21, 1),
(22, '2026-03-15', '09:00:00', 'Realizada', 22, 2),
(23, '2026-03-15', '10:00:00', 'Realizada', 23, 3),
(24, '2026-03-15', '11:00:00', 'Realizada', 24, 4),
(25, '2026-03-16', '08:00:00', 'Realizada', 25, 5),
(26, '2026-03-16', '09:00:00', 'Realizada', 26, 6),
(27, '2026-03-16', '10:00:00', 'Realizada', 27, 7),
(28, '2026-03-16', '11:00:00', 'Realizada', 28, 8),
(29, '2026-03-17', '08:00:00', 'Realizada', 29, 9),
(30, '2026-03-17', '09:00:00', 'Realizada', 30, 10),
(31, '2026-03-17', '10:00:00', 'Realizada', 31, 1),
(32, '2026-03-17', '11:00:00', 'Realizada', 32, 2),
(33, '2026-03-18', '08:00:00', 'Realizada', 33, 3),
(34, '2026-03-18', '09:00:00', 'Realizada', 34, 4),
(35, '2026-03-18', '10:00:00', 'Realizada', 35, 5),
(36, '2026-03-18', '11:00:00', 'Realizada', 36, 6),
(37, '2026-03-19', '08:00:00', 'Realizada', 37, 7),
(38, '2026-03-19', '09:00:00', 'Realizada', 38, 8),
(39, '2026-03-19', '10:00:00', 'Realizada', 39, 9),
(40, '2026-03-19', '11:00:00', 'Realizada', 40, 10),
(41, '2026-03-20', '08:00:00', 'Realizada', 41, 1),
(42, '2026-03-20', '09:00:00', 'Realizada', 42, 2),
(43, '2026-03-20', '10:00:00', 'Realizada', 43, 3),
(44, '2026-03-20', '11:00:00', 'Realizada', 44, 4),
(45, '2026-03-21', '08:00:00', 'Realizada', 45, 5),
(46, '2026-03-21', '09:00:00', 'Realizada', 46, 6),
(47, '2026-03-21', '10:00:00', 'Realizada', 47, 7),
(48, '2026-03-21', '11:00:00', 'Realizada', 48, 8),
(49, '2026-03-22', '08:00:00', 'Realizada', 49, 9),
(50, '2026-03-22', '09:00:00', 'Realizada', 50, 10),
(51, '2026-04-01', '08:00:00', 'Agendada', 1, 1),
(52, '2026-04-01', '09:00:00', 'Agendada', 2, 2),
(53, '2026-04-01', '10:00:00', 'Agendada', 3, 3),
(54, '2026-04-01', '11:00:00', 'Agendada', 4, 4),
(55, '2026-04-02', '08:00:00', 'Agendada', 5, 5),
(56, '2026-04-02', '09:00:00', 'Agendada', 6, 6),
(57, '2026-04-02', '10:00:00', 'Agendada', 7, 7),
(58, '2026-04-02', '11:00:00', 'Agendada', 8, 8),
(59, '2026-04-03', '08:00:00', 'Agendada', 9, 9),
(60, '2026-04-03', '09:00:00', 'Agendada', 10, 10),
(61, '2026-04-03', '10:00:00', 'Agendada', 11, 1),
(62, '2026-04-03', '11:00:00', 'Agendada', 12, 2),
(63, '2026-04-04', '08:00:00', 'Agendada', 13, 3),
(64, '2026-04-04', '09:00:00', 'Agendada', 14, 4),
(65, '2026-04-04', '10:00:00', 'Agendada', 15, 5),
(66, '2026-04-04', '11:00:00', 'Agendada', 16, 6),
(67, '2026-04-05', '08:00:00', 'Agendada', 17, 7),
(68, '2026-04-05', '09:00:00', 'Agendada', 18, 8),
(69, '2026-04-05', '10:00:00', 'Agendada', 19, 9),
(70, '2026-04-05', '11:00:00', 'Agendada', 20, 10),
(71, '2026-04-06', '08:00:00', 'Agendada', 21, 1),
(72, '2026-04-06', '09:00:00', 'Agendada', 22, 2),
(73, '2026-04-06', '10:00:00', 'Agendada', 23, 3),
(74, '2026-04-06', '11:00:00', 'Agendada', 24, 4),
(75, '2026-04-07', '08:00:00', 'Agendada', 25, 5),
(76, '2026-04-07', '09:00:00', 'Agendada', 26, 6),
(77, '2026-04-07', '10:00:00', 'Agendada', 27, 7),
(78, '2026-04-07', '11:00:00', 'Agendada', 28, 8),
(79, '2026-04-08', '08:00:00', 'Agendada', 29, 9),
(80, '2026-04-08', '09:00:00', 'Agendada', 30, 10),
(81, '2026-04-08', '10:00:00', 'Agendada', 31, 1),
(82, '2026-04-08', '11:00:00', 'Agendada', 32, 2),
(83, '2026-04-09', '08:00:00', 'Agendada', 33, 3),
(84, '2026-04-09', '09:00:00', 'Agendada', 34, 4),
(85, '2026-04-09', '10:00:00', 'Agendada', 35, 5),
(86, '2026-04-09', '11:00:00', 'Agendada', 36, 6),
(87, '2026-04-10', '08:00:00', 'Agendada', 37, 7),
(88, '2026-04-10', '09:00:00', 'Agendada', 38, 8),
(89, '2026-04-10', '10:00:00', 'Agendada', 39, 9),
(90, '2026-04-10', '11:00:00', 'Agendada', 40, 10),
(91, '2026-04-11', '08:00:00', 'Agendada', 41, 1),
(92, '2026-04-11', '09:00:00', 'Agendada', 42, 2),
(93, '2026-04-11', '10:00:00', 'Agendada', 43, 3),
(94, '2026-04-11', '11:00:00', 'Agendada', 44, 4),
(95, '2026-04-12', '08:00:00', 'Agendada', 45, 5),
(96, '2026-04-12', '09:00:00', 'Agendada', 46, 6),
(97, '2026-04-12', '10:00:00', 'Agendada', 47, 7),
(98, '2026-04-12', '11:00:00', 'Agendada', 48, 8),
(99, '2026-04-13', '08:00:00', 'Agendada', 49, 9),
(100, '2026-04-13', '09:00:00', 'Agendada', 50, 10);

--
-- Acionadores `consulta`
--
DELIMITER $$
CREATE TRIGGER `trk_prevenir_conflito_agenda` BEFORE INSERT ON `consulta` FOR EACH ROW BEGIN
    DECLARE total_conflitos INT;
    
    SELECT COUNT(*) INTO total_conflitos
    FROM Consulta
    WHERE id_medico = NEW.id_medico 
      AND data_consulta = NEW.data_consulta 
      AND hora_consulta = NEW.hora_consulta;
    
    IF total_conflitos > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Erro: O médico já possui uma consulta agendada para este horário.';
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `especialidade`
--

CREATE TABLE `especialidade` (
  `id_especialidade` int(11) NOT NULL,
  `nome_especialidade` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `especialidade`
--

INSERT INTO `especialidade` (`id_especialidade`, `nome_especialidade`) VALUES
(2, 'Cardiologia'),
(1, 'Clínica Geral'),
(6, 'Dermatologia'),
(9, 'Estomatologia'),
(4, 'Ginecologia'),
(7, 'Neurologia'),
(8, 'Oftalmologia'),
(5, 'Ortopedia'),
(3, 'Pediatria'),
(10, 'Urologia');

-- --------------------------------------------------------

--
-- Estrutura da tabela `exame`
--

CREATE TABLE `exame` (
  `id_exame` int(11) NOT NULL,
  `tipo_exame` varchar(100) NOT NULL,
  `data_exame` date NOT NULL,
  `resultado` text DEFAULT NULL,
  `id_paciente` int(11) NOT NULL,
  `id_consulta` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `exame`
--

INSERT INTO `exame` (`id_exame`, `tipo_exame`, `data_exame`, `resultado`, `id_paciente`, `id_consulta`) VALUES
(3, 'Hemograma', '2026-03-11', 'Normal', 0, 1),
(4, 'Ecocardiograma', '2026-03-12', 'Leve Arritmia', 0, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `fatura`
--

CREATE TABLE `fatura` (
  `id_fatura` int(11) NOT NULL,
  `valor_total` decimal(10,2) NOT NULL,
  `data_emissao` datetime DEFAULT current_timestamp(),
  `estado_pagamento` enum('Pendente','Pago','Cancelado') DEFAULT 'Pendente',
  `id_consulta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `fatura`
--

INSERT INTO `fatura` (`id_fatura`, `valor_total`, `data_emissao`, `estado_pagamento`, `id_consulta`) VALUES
(1, 15000.00, '2026-03-29 22:58:24', 'Pago', 1),
(2, 15000.00, '2026-03-29 22:58:24', 'Pago', 2),
(3, 25000.00, '2026-03-29 22:58:24', 'Pendente', 3),
(4, 25000.00, '2026-03-29 22:58:24', 'Pago', 4),
(5, 12000.00, '2026-03-29 22:58:24', 'Pago', 5),
(6, 12000.00, '2026-03-29 22:58:24', 'Pendente', 6),
(7, 20000.00, '2026-03-29 22:58:24', 'Pago', 7),
(8, 20000.00, '2026-03-29 22:58:24', 'Pago', 8),
(9, 18000.00, '2026-03-29 22:58:24', 'Pendente', 9),
(10, 18000.00, '2026-03-29 22:58:24', 'Pago', 10),
(11, 15000.00, '2026-03-29 22:58:24', 'Pago', 11),
(12, 15000.00, '2026-03-29 22:58:24', 'Pago', 12),
(13, 10000.00, '2026-03-29 22:58:24', 'Pendente', 13),
(14, 10000.00, '2026-03-29 22:58:24', 'Pago', 14),
(15, 22000.00, '2026-03-29 22:58:24', 'Pago', 15),
(16, 22000.00, '2026-03-29 22:58:24', 'Pago', 16),
(17, 15000.00, '2026-03-29 22:58:24', 'Pendente', 17),
(18, 15000.00, '2026-03-29 22:58:24', 'Pago', 18),
(19, 30000.00, '2026-03-29 22:58:24', 'Pago', 19),
(20, 30000.00, '2026-03-29 22:58:24', 'Pago', 20),
(21, 12000.00, '2026-03-29 22:58:24', 'Pendente', 21),
(22, 12000.00, '2026-03-29 22:58:24', 'Pago', 22),
(23, 15000.00, '2026-03-29 22:58:24', 'Pago', 23),
(24, 15000.00, '2026-03-29 22:58:24', 'Pago', 24),
(25, 18000.00, '2026-03-29 22:58:24', 'Pendente', 25),
(26, 18000.00, '2026-03-29 22:58:24', 'Pago', 26),
(27, 20000.00, '2026-03-29 22:58:24', 'Pago', 27),
(28, 20000.00, '2026-03-29 22:58:24', 'Pago', 28),
(29, 15000.00, '2026-03-29 22:58:24', 'Pendente', 29),
(30, 15000.00, '2026-03-29 22:58:24', 'Pago', 30);

-- --------------------------------------------------------

--
-- Estrutura da tabela `historico_medico`
--

CREATE TABLE `historico_medico` (
  `id_historico` int(11) NOT NULL,
  `id_paciente` int(11) NOT NULL,
  `id_consulta` int(11) NOT NULL,
  `diagnostico` text NOT NULL,
  `tratamento_prescrito` text DEFAULT NULL,
  `data_registo` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `historico_medico`
--

INSERT INTO `historico_medico` (`id_historico`, `id_paciente`, `id_consulta`, `diagnostico`, `tratamento_prescrito`, `data_registo`) VALUES
(7, 0, 1, 'Gripe Viral', 'Repouso e Hidratação', '2026-03-30 18:04:31'),
(8, 0, 3, 'Hipertensão Estágio 1', 'Enalapril 20mg', '2026-03-30 18:04:31'),
(9, 0, 5, 'Infeção Bacteriana', 'Amoxicilina 875mg', '2026-03-30 18:04:31'),
(10, 0, 1, 'Gripe Viral', 'Repouso e Hidratação', '2026-03-30 18:04:35'),
(11, 0, 3, 'Hipertensão Estágio 1', 'Enalapril 20mg', '2026-03-30 18:04:35'),
(12, 0, 5, 'Infeção Bacteriana', 'Amoxicilina 875mg', '2026-03-30 18:04:35'),
(13, 0, 1, 'Gripe Viral', 'Repouso e Hidratação', '2026-03-30 18:04:58'),
(14, 0, 3, 'Hipertensão Estágio 1', 'Enalapril 20mg', '2026-03-30 18:04:58'),
(15, 0, 5, 'Infeção Bacteriana', 'Amoxicilina 875mg', '2026-03-30 18:04:58');

-- --------------------------------------------------------

--
-- Estrutura da tabela `medicamento`
--

CREATE TABLE `medicamento` (
  `id_medicamento` int(11) NOT NULL,
  `nome_generico` varchar(100) NOT NULL,
  `dosagem_padrao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `medicamento`
--

INSERT INTO `medicamento` (`id_medicamento`, `nome_generico`, `dosagem_padrao`) VALUES
(1, 'Paracetamol', '500mg'),
(2, 'Amoxicilina', '875mg'),
(3, 'Coartem', '20/120mg'),
(4, 'Enalapril', '20mg'),
(5, 'Metformina', '850mg'),
(6, 'Diclofenac', '50mg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `medico`
--

CREATE TABLE `medico` (
  `id_medico` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `carteira_profissional` varchar(20) NOT NULL,
  `id_especialidade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `medico`
--

INSERT INTO `medico` (`id_medico`, `nome`, `carteira_profissional`, `id_especialidade`) VALUES
(1, 'Afonso Benedito Kialanda', 'CRM-1001', 1),
(2, 'Albertina Afonso António', 'CRM-1002', 2),
(3, 'Alberto Manuel Domingos', 'CRM-1003', 3),
(4, 'Ancelmo Gomes Monteiro', 'CRM-1004', 4),
(5, 'António Finda Mamona', 'CRM-1005', 5),
(6, 'Francisco Bráulio', 'CRM-1006', 1),
(7, 'João José António Da Silva', 'CRM-1007', 6),
(8, 'Kumbi Manuel Domingos', 'CRM-1008', 7),
(9, 'Maria David Kiala', 'CRM-1009', 8),
(10, 'Pedro Bengui', 'CRM-1010', 9);

-- --------------------------------------------------------

--
-- Estrutura da tabela `paciente`
--

CREATE TABLE `paciente` (
  `id_paciente` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `bi` varchar(20) NOT NULL,
  `data_nascimento` date NOT NULL,
  `contato` varchar(9) DEFAULT NULL,
  `historico_alergias` text DEFAULT NULL
) ;

--
-- Extraindo dados da tabela `paciente`
--

INSERT INTO `paciente` (`id_paciente`, `nome`, `bi`, `data_nascimento`, `contato`, `historico_alergias`) VALUES
(1, 'Alegria Neves Caluvi', '001LA01', '1995-01-01', '923000001', 'Penicilina'),
(2, 'Alipio Joaquim Zambo', '001LA02', '1990-02-02', '923000002', 'Penicilina'),
(3, 'Américo Sebastião', '001LA03', '1988-03-03', '923000003', 'Penicilina'),
(4, 'António Almeida Kani', '001LA04', '1993-04-04', '923000004', 'Penicilina'),
(5, 'António Dias Guilherme', '001LA05', '1991-05-05', '923000005', 'Penicilina'),
(6, 'António Lopes Tamba', '001LA06', '1992-06-06', '923000006', 'Penicilina'),
(7, 'António Mendonça Kissala', '001LA07', '1987-07-07', '923000007', 'Penicilina'),
(8, 'António Q. Francisco', '001LA08', '1994-08-08', '923000008', 'Penicilina'),
(9, 'António Neves José', '001LA09', '1996-09-09', '923000009', 'Penicilina'),
(10, 'Arnano Quiesse Mavinga', '001LA10', '1985-10-10', '923000010', 'Paracetamol'),
(11, 'Augusto Paulo', '001LA11', '1999-11-11', '923000011', 'Aspirina'),
(12, 'Bengui Bena Pedro', '001LA12', '1990-12-12', '923000012', 'Aspirina'),
(13, 'Bilton Victor Domingos', '001LA13', '1997-01-13', '923000013', 'Aspirina'),
(14, 'Boas José Ginga', '001LA14', '1994-02-14', '923000014', 'Aspirina'),
(15, 'Celso Pedro Mateus', '001LA15', '1991-03-15', '923000015', 'Aspirina'),
(16, 'Cenga Daniel Coxe', '001LA16', '1989-04-16', '923000016', 'Aspirina'),
(17, 'Claúdia Massoco Vieira', '001LA17', '1995-05-17', '923000017', NULL),
(18, 'Clemente Manuel Dinis', '001LA18', '1992-06-18', '923000018', NULL),
(19, 'Daniel Tubuca Catenda', '001LA19', '1988-07-19', '923000019', 'Aspirina'),
(20, 'David Manuel Sebastião', '001LA20', '1993-08-20', '923000020', NULL),
(21, 'Diakubikua Joana', '001LA21', '1989-09-21', '923000021', NULL),
(22, 'Dissengomoka Pedro', '001LA22', '1994-10-22', '923000022', NULL),
(23, 'Domingas Ernesto Rocha', '001LA23', '1990-11-23', '923000023', NULL),
(24, 'Domingos Sousa', '001LA24', '1987-12-24', '923000024', NULL),
(25, 'Dulce Rita Gonçalves', '001LA25', '2001-01-25', '923000025', NULL),
(26, 'Egas Manuel Ribeiro', '001LA26', '1998-02-26', '923000026', NULL),
(27, 'Elísio Ivo João Vieira', '001LA27', '1992-03-27', '923000027', NULL),
(28, 'Emanuel Garcia Muanza', '001LA28', '1995-04-28', '923000028', NULL),
(29, 'Ernesto Mendes Sunda', '001LA29', '1986-05-29', '923000029', NULL),
(30, 'Euclides Zambi André', '001LA30', '1994-06-30', '923000030', NULL),
(31, 'Evandro A. Viera', '001LA31', '1991-07-31', '923000031', NULL),
(32, 'Faustino Domingos', '001LA32', '1989-08-01', '923000032', NULL),
(33, 'Fernando António Daniel', '001LA33', '1993-09-02', '923000033', NULL),
(34, 'Fernando da Costa', '001LA34', '1990-10-03', '923000034', NULL),
(35, 'Fernando Augusto Jorge', '001LA35', '1988-11-04', '923000035', NULL),
(36, 'Figueiredo Eduardo Vieira', '001LA36', '1992-12-05', '923000036', NULL),
(37, 'Filipe João Miguel', '001LA37', '1994-01-06', '923000037', NULL),
(38, 'Filipe Miranda António', '001LA38', '1996-02-07', '923000038', NULL),
(39, 'Filipe Pedro Muanza', '001LA39', '1990-03-08', '923000039', NULL),
(40, 'Garcia João Manuel', '001LA40', '1993-04-09', '923000040', NULL),
(41, 'Garcia Lopes Camalando', '001LA41', '1987-05-10', '923000041', NULL),
(42, 'Gilberto Domingos Daniel', '001LA42', '1991-06-11', '923000042', NULL),
(43, 'Guiola André', '001LA43', '1995-07-12', '923000043', NULL),
(44, 'Henriques Calenda', '001LA44', '1992-08-13', '923000044', NULL),
(45, 'Jeremias Manuel', '001LA45', '1989-09-14', '923000045', NULL),
(46, 'José Luendanga', '001LA46', '1994-10-15', '923000046', NULL),
(47, 'José Mafuene Mawete', '001LA47', '1991-11-16', '923000047', NULL),
(48, 'José Monteiro Marques', '001LA48', '1993-12-17', '923000048', NULL),
(49, 'Julia Ernesto Muteco', '001LA49', '1990-01-18', '923000049', NULL),
(50, 'Luvambo da Costa', '001LA50', '1992-02-19', '923000050', NULL);

--
-- Acionadores `paciente`
--
DELIMITER $$
CREATE TRIGGER `trk_validar_data_nasc_paciente` BEFORE INSERT ON `paciente` FOR EACH ROW BEGIN
    -- Se a data que está a entrar (NEW) for maior que hoje, barra a entrada.
    IF NEW.data_nascimento > CURRENT_DATE THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'Erro: A data de nascimento não pode ser superior à data atual.';
    END IF;
END
$$
DELIMITER ;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `consulta`
--
ALTER TABLE `consulta`
  ADD PRIMARY KEY (`id_consulta`),
  ADD KEY `fk_consulta_paciente` (`id_paciente`),
  ADD KEY `fk_consulta_medico` (`id_medico`);

--
-- Índices para tabela `especialidade`
--
ALTER TABLE `especialidade`
  ADD PRIMARY KEY (`id_especialidade`),
  ADD UNIQUE KEY `nome_especialidade` (`nome_especialidade`);

--
-- Índices para tabela `exame`
--
ALTER TABLE `exame`
  ADD PRIMARY KEY (`id_exame`),
  ADD KEY `fk_exame_paciente` (`id_paciente`),
  ADD KEY `fk_exame_consulta` (`id_consulta`);

--
-- Índices para tabela `fatura`
--
ALTER TABLE `fatura`
  ADD PRIMARY KEY (`id_fatura`),
  ADD UNIQUE KEY `id_consulta` (`id_consulta`);

--
-- Índices para tabela `historico_medico`
--
ALTER TABLE `historico_medico`
  ADD PRIMARY KEY (`id_historico`),
  ADD KEY `fk_hist_paciente` (`id_paciente`),
  ADD KEY `fk_hist_consulta` (`id_consulta`);

--
-- Índices para tabela `medicamento`
--
ALTER TABLE `medicamento`
  ADD PRIMARY KEY (`id_medicamento`);

--
-- Índices para tabela `medico`
--
ALTER TABLE `medico`
  ADD PRIMARY KEY (`id_medico`),
  ADD UNIQUE KEY `carteira_profissional` (`carteira_profissional`),
  ADD KEY `fk_medico_especialidade` (`id_especialidade`);

--
-- Índices para tabela `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`id_paciente`),
  ADD UNIQUE KEY `bi` (`bi`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `consulta`
--
ALTER TABLE `consulta`
  MODIFY `id_consulta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de tabela `especialidade`
--
ALTER TABLE `especialidade`
  MODIFY `id_especialidade` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `exame`
--
ALTER TABLE `exame`
  MODIFY `id_exame` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `fatura`
--
ALTER TABLE `fatura`
  MODIFY `id_fatura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de tabela `historico_medico`
--
ALTER TABLE `historico_medico`
  MODIFY `id_historico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `medicamento`
--
ALTER TABLE `medicamento`
  MODIFY `id_medicamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `medico`
--
ALTER TABLE `medico`
  MODIFY `id_medico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `paciente`
--
ALTER TABLE `paciente`
  MODIFY `id_paciente` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `consulta`
--
ALTER TABLE `consulta`
  ADD CONSTRAINT `fk_consulta_medico` FOREIGN KEY (`id_medico`) REFERENCES `medico` (`id_medico`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_consulta_paciente` FOREIGN KEY (`id_paciente`) REFERENCES `paciente` (`id_paciente`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `exame`
--
ALTER TABLE `exame`
  ADD CONSTRAINT `fk_exame_consulta` FOREIGN KEY (`id_consulta`) REFERENCES `consulta` (`id_consulta`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_exame_paciente` FOREIGN KEY (`id_paciente`) REFERENCES `paciente` (`id_paciente`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `fatura`
--
ALTER TABLE `fatura`
  ADD CONSTRAINT `fk_fatura_consulta` FOREIGN KEY (`id_consulta`) REFERENCES `consulta` (`id_consulta`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `historico_medico`
--
ALTER TABLE `historico_medico`
  ADD CONSTRAINT `fk_hist_consulta` FOREIGN KEY (`id_consulta`) REFERENCES `consulta` (`id_consulta`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_hist_paciente` FOREIGN KEY (`id_paciente`) REFERENCES `paciente` (`id_paciente`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `medico`
--
ALTER TABLE `medico`
  ADD CONSTRAINT `fk_medico_especialidade` FOREIGN KEY (`id_especialidade`) REFERENCES `especialidade` (`id_especialidade`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
