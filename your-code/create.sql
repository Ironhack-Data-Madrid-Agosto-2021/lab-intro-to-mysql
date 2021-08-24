-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema car_dealership
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema car_dealership
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `car_dealership` DEFAULT CHARACTER SET utf8 ;
USE `car_dealership` ;

-- -----------------------------------------------------
-- Table `car_dealership`.`cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_dealership`.`cars` (
  `incremental` INT NOT NULL AUTO_INCREMENT,
  `VIN` CHAR(17) NOT NULL,
  `manufacturer` VARCHAR(30) NOT NULL,
  `model` VARCHAR(30) NOT NULL,
  `year` INT NOT NULL,
  `color` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`incremental`))
ENGINE = InnoDB
AUTO_INCREMENT = 26
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `car_dealership`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_dealership`.`customers` (
  `incremental` INT NOT NULL AUTO_INCREMENT,
  `customer_id` VARCHAR(30) NOT NULL,
  `name` VARCHAR(30) NOT NULL,
  `phone_number` VARCHAR(32) NOT NULL,
  `e_mail` VARCHAR(45) NULL DEFAULT NULL,
  `address` LONGTEXT NOT NULL,
  `city` VARCHAR(45) NOT NULL,
  `state` VARCHAR(45) NOT NULL,
  `country` TINYTEXT NOT NULL,
  `postal_code` INT NOT NULL,
  PRIMARY KEY (`incremental`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `car_dealership`.`sales_person`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_dealership`.`sales_person` (
  `incremental` INT NOT NULL AUTO_INCREMENT,
  `staff_id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `store` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`incremental`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `car_dealership`.`invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_dealership`.`invoices` (
  `invoice_number` INT NOT NULL AUTO_INCREMENT,
  `date` VARCHAR(30) NOT NULL,
  `car` INT NOT NULL,
  `customer` INT NOT NULL,
  `sales_person` INT NOT NULL,
  PRIMARY KEY (`invoice_number`),
  INDEX `fk_Invoices_Cars_idx` (`car` ASC) VISIBLE,
  INDEX `fk_Invoices_Customers1_idx` (`customer` ASC) VISIBLE,
  INDEX `fk_Invoices_Sales_person1_idx` (`sales_person` ASC) VISIBLE,
  CONSTRAINT `fk_Invoices_Cars`
    FOREIGN KEY (`car`)
    REFERENCES `car_dealership`.`cars` (`incremental`),
  CONSTRAINT `fk_Invoices_Customers1`
    FOREIGN KEY (`customer`)
    REFERENCES `car_dealership`.`customers` (`incremental`),
  CONSTRAINT `fk_Invoices_Sales_person1`
    FOREIGN KEY (`sales_person`)
    REFERENCES `car_dealership`.`sales_person` (`incremental`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
