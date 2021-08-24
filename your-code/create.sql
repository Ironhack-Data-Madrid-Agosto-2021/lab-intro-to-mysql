-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `lab-mysql` DEFAULT CHARACTER SET utf8 ;
USE `lab-mysql` ;

-- -----------------------------------------------------
-- Table `mydb`.`car`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab-mysql`.`car` (
  `car_ID` INT NOT NULL AUTO_INCREMENT,
  `VIM` CHAR(17) NOT NULL,
  `nanufacturer` VARCHAR(45) NOT NULL,
  `model` VARCHAR(45) NOT NULL,
  `year` YEAR NOT NULL,
  `color` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`car_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab-mysql`.`customer` (
  `customer_ID` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `phonenumber` VARCHAR(20) NULL,
  `email` VARCHAR(100) NULL,
  `address` VARCHAR(200) NULL,
  `city` VARCHAR(45) NULL,
  `province` VARCHAR(45) NULL,
  `country` VARCHAR(45) NULL,
  `zip/postal` VARCHAR(45) NULL,
  PRIMARY KEY (`customer_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Salesperson`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab-mysql`.`Salesperson` (
  `staff_ID` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `store` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`staff_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`invoice`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab-mysql`.`invoice` (
  `invoice_ID` INT NOT NULL AUTO_INCREMENT,
  `invoicenumber` INT NOT NULL,
  `date` DATETIME NOT NULL,
  `customer_customer_ID` INT NOT NULL,
  `car_car_ID` INT NOT NULL,
  `Salesperson_staff_ID` INT NOT NULL,
  INDEX `fk_invoice_customer1_idx` (`customer_customer_ID` ASC) VISIBLE,
  INDEX `fk_invoice_car1_idx` (`car_car_ID` ASC) VISIBLE,
  INDEX `fk_invoice_Salesperson1_idx` (`Salesperson_staff_ID` ASC) VISIBLE,
  PRIMARY KEY (`invoice_ID`),
  CONSTRAINT `fk_invoice_customer1`
    FOREIGN KEY (`customer_customer_ID`)
    REFERENCES `lab-mysql`.`customer` (`customer_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoice_car1`
    FOREIGN KEY (`car_car_ID`)
    REFERENCES `lab-mysql`.`car` (`car_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoice_Salesperson1`
    FOREIGN KEY (`Salesperson_staff_ID`)
    REFERENCES `lab-mysql`.`Salesperson` (`staff_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
