/*
Navicat MySQL Data Transfer

Source Server         : CEPAV
Source Server Version : 50554
Source Host           : 192.168.0.9:3306
Source Database       : satelite

Target Server Type    : MYSQL
Target Server Version : 50554
File Encoding         : 65001

Date: 2020-10-09 15:04:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `sis_aew`
-- ----------------------------
DROP TABLE IF EXISTS `sis_aew`;
CREATE TABLE `sis_aew` (
  `nAEW` int(11) NOT NULL DEFAULT '0' COMMENT 'IDtAEW-Tipo de Agendamento de Eventos',
  `IDtAEW` int(1) DEFAULT NULL COMMENT 'IDtAEW-Tipo de Agendamento de Eventos',
  `CE` int(1) DEFAULT NULL,
  `IDtRS` int(1) DEFAULT NULL,
  `cRS` int(1) DEFAULT NULL,
  `QTD` int(1) DEFAULT NULL,
  `CUS` int(1) DEFAULT NULL,
  `cCargo` int(1) DEFAULT NULL COMMENT 'cCargo-Codigo do Cargo da Empresa-Ocupação ADM_RH_CARGO',
  `HR_INI` time DEFAULT NULL,
  `HR_FIM` time DEFAULT NULL,
  `MIDIA` varchar(255) DEFAULT NULL,
  `ESPECIALIDADE` varchar(60) DEFAULT NULL,
  `SALA` varchar(50) DEFAULT NULL,
  `LOCAL` varchar(50) DEFAULT NULL,
  `DT_EM` date DEFAULT NULL,
  `HR_EM` time DEFAULT NULL,
  `SPS` int(1) DEFAULT NULL,
  `SIT_REG` char(1) DEFAULT NULL COMMENT 'SIT_REG-Situação de Registro',
  PRIMARY KEY (`nAEW`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sis_aew
-- ----------------------------

-- ----------------------------
-- Table structure for `sis_aew_arqdetalhe`
-- ----------------------------
DROP TABLE IF EXISTS `sis_aew_arqdetalhe`;
CREATE TABLE `sis_aew_arqdetalhe` (
  `idAEW` int(11) NOT NULL DEFAULT '0' COMMENT 'IDtAEW-Tipo de Agendamento de Eventos',
  `nAEW` int(11) DEFAULT NULL COMMENT 'IDtAEW-Tipo de Agendamento de Eventos',
  `IDtRS` int(1) DEFAULT NULL,
  `cRS` int(1) DEFAULT NULL,
  `DT_EM` date DEFAULT NULL,
  `HR_EM` time DEFAULT NULL,
  `SPS` int(1) DEFAULT NULL,
  `SIT_REG` char(1) DEFAULT NULL COMMENT 'SIT_REG-Situação de Registro',
  PRIMARY KEY (`idAEW`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sis_aew_arqdetalhe
-- ----------------------------

-- ----------------------------
-- Table structure for `sis_aew_idtipo`
-- ----------------------------
DROP TABLE IF EXISTS `sis_aew_idtipo`;
CREATE TABLE `sis_aew_idtipo` (
  `IDtAEW` int(1) NOT NULL DEFAULT '0' COMMENT 'IDtAEW-Tipo de Agendamento de Eventos',
  `TIPO_AEW` varchar(50) DEFAULT NULL COMMENT 'TIPO_AEW-TIPO DE AEW',
  `SIT_REG` char(1) DEFAULT NULL COMMENT 'SIT_REG-Situação de Registro',
  PRIMARY KEY (`IDtAEW`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sis_aew_idtipo
-- ----------------------------
INSERT INTO `sis_aew_idtipo` VALUES ('1', '01-AULA DE ESCOLA', 'E');
INSERT INTO `sis_aew_idtipo` VALUES ('2', '02-CONSULTA MEDICA', 'E');
INSERT INTO `sis_aew_idtipo` VALUES ('3', '03-REUNIAO EMPRESARIAL', 'E');
INSERT INTO `sis_aew_idtipo` VALUES ('4', '04-PRESTAÇÃO DE SERVIÇO', 'E');
INSERT INTO `sis_aew_idtipo` VALUES ('5', '05-VIAGEM DE ONIBUS', 'E');
INSERT INTO `sis_aew_idtipo` VALUES ('6', '06-VIAGEM DE AVIAO', 'E');
INSERT INTO `sis_aew_idtipo` VALUES ('7', '07-VIAGEM DE TREM', 'E');
INSERT INTO `sis_aew_idtipo` VALUES ('8', '08-ATENDIMENTO TECNICO', 'E');
INSERT INTO `sis_aew_idtipo` VALUES ('9', '09-AULA DE ACADEMIA', 'E');
INSERT INTO `sis_aew_idtipo` VALUES ('10', '10-AULA PARTICULAR', 'E');
