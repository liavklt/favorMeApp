-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema accounts
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema accounts
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `accounts` DEFAULT CHARACTER SET utf8 ;
USE `accounts` ;

-- -----------------------------------------------------
-- Table `accounts`.`authorities`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `accounts`.`authorities` ;

CREATE TABLE IF NOT EXISTS `accounts`.`authorities` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(255) NULL DEFAULT NULL,
  `authority` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `accounts`.`users`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `accounts`.`users` ;

CREATE TABLE IF NOT EXISTS `accounts`.`users` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(255) NULL DEFAULT NULL,
  `password` VARCHAR(255) NULL DEFAULT NULL,
  `email` VARCHAR(255) NULL DEFAULT NULL,
  `enabled` TINYINT(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 9
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `accounts`.`favor`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `accounts`.`favor` ;

CREATE TABLE IF NOT EXISTS `accounts`.`favor` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NULL DEFAULT NULL,
  `text` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_favor_id`
    FOREIGN KEY (`id`)
    REFERENCES `accounts`.`users` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `accounts`.`role`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `accounts`.`role` ;

CREATE TABLE IF NOT EXISTS `accounts`.`role` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `accounts`.`user_role`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `accounts`.`user_role` ;

CREATE TABLE IF NOT EXISTS `accounts`.`user_role` (
  `user_id` INT(11) NOT NULL,
  `role_id` INT(11) NOT NULL,
  PRIMARY KEY (`user_id`, `role_id`),
  INDEX `fk_user_role_roleid_idx` (`role_id` ASC),
  CONSTRAINT `fk_user_role_roleid`
    FOREIGN KEY (`role_id`)
    REFERENCES `accounts`.`role` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_user_role_userid`
    FOREIGN KEY (`user_id`)
    REFERENCES `accounts`.`users` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
