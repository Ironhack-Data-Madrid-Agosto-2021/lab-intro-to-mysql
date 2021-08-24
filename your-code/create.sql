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
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`CAR`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`CAR` (
  `vehicle_vin` VARCHAR(17) NOT NULL,
  `manufacturer` VARCHAR(45) NOT NULL,
  `model` VARCHAR(45) NOT NULL,
  `year` INT NOT NULL,
  `color` VARCHAR(45) NOT NULL,
  `car ID` INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`car ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`CUSTOMER`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`CUSTOMER` (
  `customer ID` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `phone number` INT NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `address` VARCHAR(45) NOT NULL,
  `city` VARCHAR(45) NOT NULL,
  `state/province` VARCHAR(45) NOT NULL,
  `country` VARCHAR(45) NOT NULL,
  `zip/postal` INT NOT NULL,
  PRIMARY KEY (`customer ID`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE,
  UNIQUE INDEX `phone number_UNIQUE` (`phone number` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SALESPERSON`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`SALESPERSON` (
  `staff ID` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `store` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`staff ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`INVOICE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`INVOICE` (
  `invoice number` INT NOT NULL AUTO_INCREMENT,
  `date` DATE NOT NULL,
  `SALESPERSON_staff ID1` INT NOT NULL,
  `CUSTOMER_customer ID1` INT NOT NULL,
  `CAR_car ID` INT NOT NULL,
  PRIMARY KEY (`invoice number`),
  INDEX `fk_INVOICE_SALESPERSON1_idx` (`SALESPERSON_staff ID1` ASC) VISIBLE,
  INDEX `fk_INVOICE_CUSTOMER1_idx` (`CUSTOMER_customer ID1` ASC) VISIBLE,
  INDEX `fk_INVOICE_CAR1_idx` (`CAR_car ID` ASC) VISIBLE,
  CONSTRAINT `fk_INVOICE_SALESPERSON1`
    FOREIGN KEY (`SALESPERSON_staff ID1`)
    REFERENCES `mydb`.`SALESPERSON` (`staff ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_INVOICE_CUSTOMER1`
    FOREIGN KEY (`CUSTOMER_customer ID1`)
    REFERENCES `mydb`.`CUSTOMER` (`customer ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_INVOICE_CAR1`
    FOREIGN KEY (`CAR_car ID`)
    REFERENCES `mydb`.`CAR` (`car ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
