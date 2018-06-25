-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema simuladorbsim
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema simuladorbsim
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `simuladorbsim` DEFAULT CHARACTER SET utf8COLLATE utf8mb4_0900_ai_ci ;
USE `simuladorbsim` ;

-- -----------------------------------------------------
-- Table `simuladorbsim`.`auth_group`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `simuladorbsim`.`auth_group` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `name` (`name` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;


-- -----------------------------------------------------
-- Table `simuladorbsim`.`django_content_type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `simuladorbsim`.`django_content_type` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `app_label` VARCHAR(100) NOT NULL,
  `model` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label` ASC, `model` ASC))
ENGINE = InnoDB
AUTO_INCREMENT = 11
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;


-- -----------------------------------------------------
-- Table `simuladorbsim`.`auth_permission`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `simuladorbsim`.`auth_permission` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `content_type_id` INT(11) NOT NULL,
  `codename` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id` ASC, `codename` ASC),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co`
    FOREIGN KEY (`content_type_id`)
    REFERENCES `simuladorbsim`.`django_content_type` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 31
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;


-- -----------------------------------------------------
-- Table `simuladorbsim`.`auth_group_permissions`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `simuladorbsim`.`auth_group_permissions` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `group_id` INT(11) NOT NULL,
  `permission_id` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id` ASC, `permission_id` ASC),
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id` ASC),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`
    FOREIGN KEY (`permission_id`)
    REFERENCES `simuladorbsim`.`auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id`
    FOREIGN KEY (`group_id`)
    REFERENCES `simuladorbsim`.`auth_group` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;


-- -----------------------------------------------------
-- Table `simuladorbsim`.`auth_user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `simuladorbsim`.`auth_user` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `password` VARCHAR(128) NOT NULL,
  `last_login` DATETIME NULL DEFAULT NULL,
  `is_superuser` TINYINT(1) NOT NULL,
  `username` VARCHAR(150) NOT NULL,
  `first_name` VARCHAR(30) NOT NULL,
  `last_name` VARCHAR(150) NOT NULL,
  `email` VARCHAR(254) NOT NULL,
  `is_staff` TINYINT(1) NOT NULL,
  `is_active` TINYINT(1) NOT NULL,
  `date_joined` DATETIME NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `username` (`username` ASC))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;


-- -----------------------------------------------------
-- Table `simuladorbsim`.`auth_user_groups`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `simuladorbsim`.`auth_user_groups` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `user_id` INT(11) NOT NULL,
  `group_id` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id` ASC, `group_id` ASC),
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id` ASC),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id`
    FOREIGN KEY (`group_id`)
    REFERENCES `simuladorbsim`.`auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id`
    FOREIGN KEY (`user_id`)
    REFERENCES `simuladorbsim`.`auth_user` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;


-- -----------------------------------------------------
-- Table `simuladorbsim`.`auth_user_user_permissions`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `simuladorbsim`.`auth_user_user_permissions` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `user_id` INT(11) NOT NULL,
  `permission_id` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id` ASC, `permission_id` ASC),
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id` ASC),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`
    FOREIGN KEY (`permission_id`)
    REFERENCES `simuladorbsim`.`auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id`
    FOREIGN KEY (`user_id`)
    REFERENCES `simuladorbsim`.`auth_user` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;


-- -----------------------------------------------------
-- Table `simuladorbsim`.`django_admin_log`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `simuladorbsim`.`django_admin_log` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `action_time` DATETIME NOT NULL,
  `object_id` LONGTEXT NULL DEFAULT NULL,
  `object_repr` VARCHAR(200) NOT NULL,
  `action_flag` SMALLINT(5) UNSIGNED NOT NULL,
  `change_message` LONGTEXT NOT NULL,
  `content_type_id` INT(11) NULL DEFAULT NULL,
  `user_id` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id` ASC),
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id` ASC),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co`
    FOREIGN KEY (`content_type_id`)
    REFERENCES `simuladorbsim`.`django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id`
    FOREIGN KEY (`user_id`)
    REFERENCES `simuladorbsim`.`auth_user` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;


-- -----------------------------------------------------
-- Table `simuladorbsim`.`django_migrations`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `simuladorbsim`.`django_migrations` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `app` VARCHAR(255) NOT NULL,
  `name` VARCHAR(255) NOT NULL,
  `applied` DATETIME NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 23
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;


-- -----------------------------------------------------
-- Table `simuladorbsim`.`django_session`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `simuladorbsim`.`django_session` (
  `session_key` VARCHAR(40) NOT NULL,
  `session_data` LONGTEXT NOT NULL,
  `expire_date` DATETIME NOT NULL,
  PRIMARY KEY (`session_key`),
  INDEX `django_session_expire_date_a5c62663` (`expire_date` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;


-- -----------------------------------------------------
-- Table `simuladorbsim`.`produccion_cosecha`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `simuladorbsim`.`produccion_cosecha` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `alturaPlanta` DECIMAL(5,2) NOT NULL,
  `grosorTallo` DECIMAL(5,2) NOT NULL,
  `numeroHojas` DECIMAL(5,2) NOT NULL,
  `pesoRacimo` DECIMAL(5,2) NOT NULL,
  `costoHectarea` DECIMAL(5,2) NULL DEFAULT NULL,
  `kgCosechados` INT(11) NULL DEFAULT NULL,
  `precioKg` DECIMAL(5,2) NULL DEFAULT NULL,
  `utilidadEsperada` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 10
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;


-- -----------------------------------------------------
-- Table `simuladorbsim`.`produccion_produccion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `simuladorbsim`.`produccion_produccion` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `costoHectarea` DECIMAL(5,2) NOT NULL,
  `kgCosechados` DECIMAL(5,2) NOT NULL,
  `precioKg` DECIMAL(5,2) NOT NULL,
  `utilidadEsperada` DECIMAL(5,2) NOT NULL,
  `cosecha_id` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `cosecha_id` (`cosecha_id` ASC),
  CONSTRAINT `produccion_produccio_cosecha_id_af3f9b7f_fk_produccio`
    FOREIGN KEY (`cosecha_id`)
    REFERENCES `simuladorbsim`.`produccion_cosecha` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;


-- -----------------------------------------------------
-- Table `simuladorbsim`.`registro_usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `simuladorbsim`.`registro_usuario` (
  `nombre` VARCHAR(50) NOT NULL,
  `profesion` VARCHAR(50) NOT NULL,
  `correo` VARCHAR(254) NOT NULL,
  PRIMARY KEY (`nombre`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;


-- -----------------------------------------------------
-- Table `simuladorbsim`.`simulacion_simulacioncostoproduccion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `simuladorbsim`.`simulacion_simulacioncostoproduccion` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `tipoSuelo` VARCHAR(20) NOT NULL,
  `fosforo` DECIMAL(5,2) NULL DEFAULT NULL,
  `potasio` DECIMAL(5,2) NULL DEFAULT NULL,
  `calcio` DECIMAL(5,2) NULL DEFAULT NULL,
  `magnesio` DECIMAL(5,2) NULL DEFAULT NULL,
  `boro` DECIMAL(5,2) NULL DEFAULT NULL,
  `zinc` DECIMAL(5,2) NULL DEFAULT NULL,
  `ph` DECIMAL(5,2) NULL DEFAULT NULL,
  `profundidad` DECIMAL(5,2) NOT NULL,
  `sistemaDrenaje` VARCHAR(20) NOT NULL,
  `plagas` VARCHAR(20) NOT NULL,
  `deshoje` VARCHAR(20) NOT NULL,
  `embolse` VARCHAR(20) NOT NULL,
  `lvlMar` DECIMAL(5,2) NOT NULL,
  `temperatura` DECIMAL(5,2) NOT NULL,
  `pluviosidad` DECIMAL(5,2) NOT NULL,
  `luminosidad` DECIMAL(5,2) NOT NULL,
  `fechaSim` DATE NULL DEFAULT NULL,
  `puntajeSimu` INT(11) NULL DEFAULT NULL,
  `numHectareas` DECIMAL(5,4) NULL DEFAULT NULL,
  `numPlantas` INT(11) NULL DEFAULT NULL,
  `cosecha_id` INT(11) NULL DEFAULT NULL,
  `usuarioSim_id` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `simulacion_simulacio_cosecha_id_6f43b143_fk_produccio` (`cosecha_id` ASC),
  INDEX `simulacion_simulacio_usuarioSim_id_5d006b36_fk_auth_user` (`usuarioSim_id` ASC),
  CONSTRAINT `simulacion_simulacio_cosecha_id_6f43b143_fk_produccio`
    FOREIGN KEY (`cosecha_id`)
    REFERENCES `simuladorbsim`.`produccion_cosecha` (`id`),
  CONSTRAINT `simulacion_simulacio_usuarioSim_id_5d006b36_fk_auth_user`
    FOREIGN KEY (`usuarioSim_id`)
    REFERENCES `simuladorbsim`.`auth_user` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
