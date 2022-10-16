-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Copiando estrutura do banco de dados para nfe4
CREATE DATABASE IF NOT EXISTS `nfe4` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `nfe4`;


-- Copiando estrutura para tabela nfe4.autorizado
CREATE TABLE IF NOT EXISTS `autorizado` (
  `idpk` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `destinatario_idpk` int(11) unsigned NOT NULL,
  `cnpjcpf` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`idpk`),
  KEY `autorizados_FKIndex1` (`destinatario_idpk`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=0;

-- Copiando dados para a tabela nfe4.autorizado: 0 rows
/*!40000 ALTER TABLE `autorizado` DISABLE KEYS */;
/*!40000 ALTER TABLE `autorizado` ENABLE KEYS */;


-- Copiando estrutura para tabela nfe4.cfop
CREATE TABLE IF NOT EXISTS `cfop` (
  `idpk` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cfop` int(11) unsigned NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `obs` longtext,
  `tipo` int(11) unsigned DEFAULT NULL COMMENT '0 - Entrada / 1 - Saida',
  PRIMARY KEY (`idpk`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=0;

-- Copiando dados para a tabela nfe4.cfop: 0 rows
/*!40000 ALTER TABLE `cfop` DISABLE KEYS */;
/*!40000 ALTER TABLE `cfop` ENABLE KEYS */;


-- Copiando estrutura para tabela nfe4.configuracao
CREATE TABLE IF NOT EXISTS `configuracao` (
  `idpk` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tipoemissao` varchar(100) NOT NULL,
  `seriecertificado` varchar(100) NOT NULL,
  `ambiente` int(11) unsigned NOT NULL,
  `formaemissao` int(11) unsigned DEFAULT NULL,
  `modelo` int(11) unsigned NOT NULL,
  `serie` char(3) NOT NULL,
  `ultimanfe` int(11) unsigned NOT NULL,
  PRIMARY KEY (`idpk`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=0;

-- Copiando dados para a tabela nfe4.configuracao: 0 rows
/*!40000 ALTER TABLE `configuracao` DISABLE KEYS */;
/*!40000 ALTER TABLE `configuracao` ENABLE KEYS */;


-- Copiando estrutura para tabela nfe4.crt
CREATE TABLE IF NOT EXISTS `crt` (
  `idpk` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `crt` int(11) unsigned NOT NULL COMMENT '1 - Simples Nacional / 2 - Simples Nac. Exc. Rec. Bruta / 3 - Regime Normal',
  `descricao` varchar(100) NOT NULL,
  PRIMARY KEY (`idpk`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=0;

-- Copiando dados para a tabela nfe4.crt: 0 rows
/*!40000 ALTER TABLE `crt` DISABLE KEYS */;
/*!40000 ALTER TABLE `crt` ENABLE KEYS */;


-- Copiando estrutura para tabela nfe4.cstcofins
CREATE TABLE IF NOT EXISTS `cstcofins` (
  `idpk` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cst` int(11) unsigned NOT NULL,
  `descricao` varchar(100) NOT NULL,
  `tipo` int(11) unsigned DEFAULT NULL COMMENT '0 - Entrada / 1 - Saida',
  PRIMARY KEY (`idpk`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=0;

-- Copiando dados para a tabela nfe4.cstcofins: 0 rows
/*!40000 ALTER TABLE `cstcofins` DISABLE KEYS */;
/*!40000 ALTER TABLE `cstcofins` ENABLE KEYS */;


-- Copiando estrutura para tabela nfe4.csticms
CREATE TABLE IF NOT EXISTS `csticms` (
  `idpk` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cstcsosn` int(11) unsigned NOT NULL,
  `descricao` varchar(100) NOT NULL,
  PRIMARY KEY (`idpk`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=0;

-- Copiando dados para a tabela nfe4.csticms: 0 rows
/*!40000 ALTER TABLE `csticms` DISABLE KEYS */;
/*!40000 ALTER TABLE `csticms` ENABLE KEYS */;


-- Copiando estrutura para tabela nfe4.cstipi
CREATE TABLE IF NOT EXISTS `cstipi` (
  `idpk` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cst` int(11) unsigned NOT NULL,
  `descricao` varchar(100) NOT NULL,
  `tipo` int(11) unsigned zerofill DEFAULT NULL COMMENT '0 - Entrada / 1 - Saida',
  PRIMARY KEY (`idpk`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=0;

-- Copiando dados para a tabela nfe4.cstipi: 0 rows
/*!40000 ALTER TABLE `cstipi` DISABLE KEYS */;
/*!40000 ALTER TABLE `cstipi` ENABLE KEYS */;


-- Copiando estrutura para tabela nfe4.cstpis
CREATE TABLE IF NOT EXISTS `cstpis` (
  `idpk` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cst` int(11) unsigned NOT NULL,
  `descricao` varchar(100) NOT NULL,
  `tipo` int(11) unsigned DEFAULT NULL COMMENT '0 - Entrada / 1 - Saida',
  PRIMARY KEY (`idpk`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=0;

-- Copiando dados para a tabela nfe4.cstpis: 0 rows
/*!40000 ALTER TABLE `cstpis` DISABLE KEYS */;
/*!40000 ALTER TABLE `cstpis` ENABLE KEYS */;


-- Copiando estrutura para tabela nfe4.destinatario
CREATE TABLE IF NOT EXISTS `destinatario` (
  `idpk` int(11) unsigned NOT NULL,
  `cnpjcpf` varchar(14) DEFAULT NULL,
  `docestrangeiro` varchar(20) DEFAULT NULL COMMENT 'idEstrangeiro: operação com exterior',
  `razaosocial` varchar(60) DEFAULT NULL,
  `nomefantasia` varchar(60) DEFAULT NULL,
  `numero` varchar(60) DEFAULT NULL,
  `logradouro` varchar(60) NOT NULL,
  `complemento` varchar(60) DEFAULT NULL,
  `bairro` varchar(60) DEFAULT NULL,
  `ibge` varchar(7) DEFAULT NULL,
  `cidade` varchar(60) DEFAULT NULL,
  `uf` char(2) DEFAULT NULL,
  `cep` varchar(8) DEFAULT NULL,
  `fone` varchar(14) DEFAULT NULL,
  `tipocontribuinte` int(11) unsigned DEFAULT NULL COMMENT 'indIEDest: 1 - Contribuinte/2 - Isento/3 - Não Contribuinte',
  `IE` varchar(14) DEFAULT NULL,
  `IM` varchar(15) DEFAULT NULL COMMENT 'DF: Nota conjugada',
  `email` varchar(60) DEFAULT NULL,
  `consumidorfinal` int(11) unsigned DEFAULT NULL COMMENT '0 - não / 1 - sim',
  PRIMARY KEY (`idpk`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=0;

-- Copiando dados para a tabela nfe4.destinatario: 0 rows
/*!40000 ALTER TABLE `destinatario` DISABLE KEYS */;
/*!40000 ALTER TABLE `destinatario` ENABLE KEYS */;


-- Copiando estrutura para tabela nfe4.emitente
CREATE TABLE IF NOT EXISTS `emitente` (
  `idpk` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `crt_idpk` int(11) unsigned NOT NULL,
  `cnpjcpf` varchar(14) DEFAULT NULL,
  `razaosocial` varchar(60) DEFAULT NULL,
  `nomefantasia` varchar(60) DEFAULT NULL,
  `logradouro` varchar(60) DEFAULT NULL,
  `numero` varchar(60) DEFAULT NULL,
  `complemento` varchar(60) DEFAULT NULL,
  `bairro` varchar(60) DEFAULT NULL,
  `ibge` varchar(7) DEFAULT NULL,
  `cidade` varchar(60) DEFAULT NULL,
  `uf` char(2) DEFAULT NULL,
  `cep` varchar(8) DEFAULT NULL,
  `fone` varchar(14) DEFAULT NULL,
  `ie` varchar(14) DEFAULT NULL,
  `im` varchar(15) DEFAULT NULL,
  `cnae` varchar(7) DEFAULT NULL COMMENT 'Se informado, informar IM',
  `cnpjcpfcontador` varchar(14) DEFAULT NULL,
  `regimepiscofins` int(11) unsigned DEFAULT NULL COMMENT '0 - cumulativo / 1 - não cumulativo',
  `piscofinsmonofasico` tinyint(1) DEFAULT NULL,
  `aliquotapis` decimal(5,2) DEFAULT NULL,
  `aliqiuotacofins` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`idpk`),
  KEY `emitente_FKIndex1` (`crt_idpk`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=0;

-- Copiando dados para a tabela nfe4.emitente: 0 rows
/*!40000 ALTER TABLE `emitente` DISABLE KEYS */;
/*!40000 ALTER TABLE `emitente` ENABLE KEYS */;


-- Copiando estrutura para tabela nfe4.formapagto
CREATE TABLE IF NOT EXISTS `formapagto` (
  `idpk` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `codigo` char(2) DEFAULT NULL COMMENT '01,02,03,04,05,10,11,12,13,14,90,99',
  `descricao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idpk`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=0;

-- Copiando dados para a tabela nfe4.formapagto: 0 rows
/*!40000 ALTER TABLE `formapagto` DISABLE KEYS */;
/*!40000 ALTER TABLE `formapagto` ENABLE KEYS */;


-- Copiando estrutura para tabela nfe4.integracaofiscal
CREATE TABLE IF NOT EXISTS `integracaofiscal` (
  `idpk` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cstipi_idpk` int(11) unsigned NOT NULL,
  `cstcofins_idpk` int(11) unsigned NOT NULL,
  `cstpis_idpk` int(11) unsigned NOT NULL,
  `csticms_idpk` int(11) unsigned NOT NULL,
  `cfop_idpk` int(11) unsigned NOT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `icmsipi` int(11) unsigned DEFAULT NULL COMMENT '0 - não / 1 - sim',
  `aliquotaespecificaicms` decimal(5,2) DEFAULT NULL,
  `aliquotaespecificaicmsst` decimal(5,2) DEFAULT NULL,
  `aliquotareducaobaseicms` decimal(5,2) DEFAULT NULL,
  `aliquotareducaobasest` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`idpk`),
  KEY `integracaofiscal_FKIndex1` (`csticms_idpk`),
  KEY `integracaofiscal_FKIndex2` (`cstpis_idpk`),
  KEY `integracaofiscal_FKIndex3` (`cstcofins_idpk`),
  KEY `integracaofiscal_FKIndex4` (`cfop_idpk`),
  KEY `integracaofiscal_FKIndex5` (`cstipi_idpk`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=0;

-- Copiando dados para a tabela nfe4.integracaofiscal: 0 rows
/*!40000 ALTER TABLE `integracaofiscal` DISABLE KEYS */;
/*!40000 ALTER TABLE `integracaofiscal` ENABLE KEYS */;


-- Copiando estrutura para tabela nfe4.ncmibpt
CREATE TABLE IF NOT EXISTS `ncmibpt` (
  `idpk` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ncm` int(11) unsigned NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `extipi` int(11) unsigned DEFAULT NULL,
  `aliquotanacional` decimal(5,2) DEFAULT NULL,
  `aliquotaimportacao` decimal(5,2) DEFAULT NULL,
  `aliquotaestadual` decimal(5,2) DEFAULT NULL,
  `aliquotamunicipal` decimal(5,2) DEFAULT NULL,
  `uf` char(2) DEFAULT NULL,
  `iniciovigencia` date DEFAULT NULL,
  `fimvigencia` date DEFAULT NULL,
  `chave` varchar(100) DEFAULT NULL,
  `versao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idpk`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=0;

-- Copiando dados para a tabela nfe4.ncmibpt: 0 rows
/*!40000 ALTER TABLE `ncmibpt` DISABLE KEYS */;
/*!40000 ALTER TABLE `ncmibpt` ENABLE KEYS */;


-- Copiando estrutura para tabela nfe4.origem
CREATE TABLE IF NOT EXISTS `origem` (
  `idpk` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `origem` int(11) unsigned NOT NULL,
  `descricao` varchar(100) NOT NULL,
  PRIMARY KEY (`idpk`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=0;

-- Copiando dados para a tabela nfe4.origem: 0 rows
/*!40000 ALTER TABLE `origem` DISABLE KEYS */;
/*!40000 ALTER TABLE `origem` ENABLE KEYS */;


-- Copiando estrutura para tabela nfe4.portaria
CREATE TABLE IF NOT EXISTS `portaria` (
  `idpk` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `descritivo` longtext NOT NULL,
  PRIMARY KEY (`idpk`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=0;

-- Copiando dados para a tabela nfe4.portaria: 0 rows
/*!40000 ALTER TABLE `portaria` DISABLE KEYS */;
/*!40000 ALTER TABLE `portaria` ENABLE KEYS */;


-- Copiando estrutura para tabela nfe4.produto
CREATE TABLE IF NOT EXISTS `produto` (
  `idpk` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `integracaofiscal_idpk` int(11) unsigned NOT NULL,
  `origem_idpk` int(11) unsigned NOT NULL,
  `ncmibpt_idpk` int(11) unsigned NOT NULL,
  `unidademedida_idpk` int(11) unsigned NOT NULL,
  `codigo` varchar(60) DEFAULT NULL,
  `gtin` varchar(14) DEFAULT NULL,
  `descricao` varchar(120) DEFAULT NULL,
  `cest` varchar(7) DEFAULT NULL,
  `indescala` int(11) unsigned DEFAULT NULL COMMENT '0 - não / 1 - sim',
  `cnpjfabricante` varchar(14) DEFAULT NULL,
  `codigobeneficio` varchar(10) DEFAULT NULL,
  `preco` decimal(15,2) DEFAULT NULL,
  `mva` decimal(5,2) DEFAULT NULL,
  `aliquotapis` decimal(5,2) DEFAULT NULL,
  `aliquotacofins` decimal(5,2) unsigned zerofill DEFAULT NULL,
  `aliquotaipi` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`idpk`),
  KEY `produtos_FKIndex1` (`unidademedida_idpk`),
  KEY `produtos_FKIndex2` (`integracaofiscal_idpk`),
  KEY `produtos_FKIndex3` (`origem_idpk`),
  KEY `produtos_FKIndex4` (`ncmibpt_idpk`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=0;

-- Copiando dados para a tabela nfe4.produto: 0 rows
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;


-- Copiando estrutura para tabela nfe4.transportadora
CREATE TABLE IF NOT EXISTS `transportadora` (
  `idpk` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cnpjcpf` varchar(14) DEFAULT NULL,
  `razaosocial` varchar(60) DEFAULT NULL,
  `ie` varchar(14) DEFAULT NULL,
  `logradouro` varchar(60) DEFAULT NULL,
  `cidade` varchar(60) DEFAULT NULL,
  `uf` char(2) DEFAULT NULL,
  PRIMARY KEY (`idpk`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=0;

-- Copiando dados para a tabela nfe4.transportadora: 0 rows
/*!40000 ALTER TABLE `transportadora` DISABLE KEYS */;
/*!40000 ALTER TABLE `transportadora` ENABLE KEYS */;


-- Copiando estrutura para tabela nfe4.uficms
CREATE TABLE IF NOT EXISTS `uficms` (
  `idpk` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sigla` char(2) DEFAULT NULL,
  `aliquotainter` decimal(5,2) DEFAULT NULL,
  `aliquotaintra` decimal(5,2) DEFAULT NULL,
  `aliquotafcp` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`idpk`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=0;

-- Copiando dados para a tabela nfe4.uficms: 0 rows
/*!40000 ALTER TABLE `uficms` DISABLE KEYS */;
/*!40000 ALTER TABLE `uficms` ENABLE KEYS */;


-- Copiando estrutura para tabela nfe4.unidademedida
CREATE TABLE IF NOT EXISTS `unidademedida` (
  `idpk` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sigla` char(2) NOT NULL,
  `descricao` varchar(100) NOT NULL,
  PRIMARY KEY (`idpk`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=0;

-- Copiando dados para a tabela nfe4.unidademedida: 0 rows
/*!40000 ALTER TABLE `unidademedida` DISABLE KEYS */;
/*!40000 ALTER TABLE `unidademedida` ENABLE KEYS */;


-- Copiando estrutura para tabela nfe4.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `idpk` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Nome` varchar(100) NOT NULL,
  `login` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL,
  PRIMARY KEY (`idpk`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=0;

-- Copiando dados para a tabela nfe4.usuario: 0 rows
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;


-- Copiando estrutura para tabela nfe4.veiculo
CREATE TABLE IF NOT EXISTS `veiculo` (
  `idpk` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `transportadora_idpk` int(11) unsigned NOT NULL,
  `placa` varchar(8) DEFAULT NULL,
  `uf` char(2) DEFAULT NULL,
  `rntc` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idpk`),
  KEY `veiculos_FKIndex1` (`transportadora_idpk`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=0;

-- Copiando dados para a tabela nfe4.veiculo: 0 rows
/*!40000 ALTER TABLE `veiculo` DISABLE KEYS */;
/*!40000 ALTER TABLE `veiculo` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
