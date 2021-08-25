-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema my_db_sql_lab
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema my_db_sql_lab
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `my_db_sql_lab` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `my_db_sql_lab` ;

-- -----------------------------------------------------
-- Table `my_db_sql_lab`.`cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `my_db_sql_lab`.`cars` (
  `car_id` VARCHAR(45) NOT NULL,
  `vehicle_identification_number` CHAR(17) NOT NULL,
  `manufacturer` VARCHAR(45) NOT NULL,
  `model` VARCHAR(45) NOT NULL,
  `year` INT NOT NULL,
  `color` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`car_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `my_db_sql_lab`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `my_db_sql_lab`.`customers` (
  `customer_id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `phone_number` INT NOT NULL,
  `email` VARCHAR(45) NULL DEFAULT NULL,
  `address` VARCHAR(80) NOT NULL,
  `city` VARCHAR(45) NOT NULL,
  `country` VARCHAR(45) NOT NULL,
  `postal_code` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`customer_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `my_db_sql_lab`.`sales person`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `my_db_sql_lab`.`sales person` (
  `staff_id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `store` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`staff_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `my_db_sql_lab`.`invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `my_db_sql_lab`.`invoices` (
  `invoice_number` INT NOT NULL,
  `date` DATE NOT NULL,
  `car` VARCHAR(45) NOT NULL,
  `customer` VARCHAR(45) NOT NULL,
  `sales_person` VARCHAR(45) NULL DEFAULT NULL,
  `sales person_staff_id` INT NOT NULL,
  `customers_customer_id1` INT NOT NULL,
  `cars_car_id` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`invoice_number`),
  INDEX `fk_invoices_sales person1_idx` (`sales person_staff_id` ASC) VISIBLE,
  INDEX `fk_invoices_customers2_idx` (`customers_customer_id1` ASC) VISIBLE,
  INDEX `fk_invoices_cars1_idx` (`cars_car_id` ASC) VISIBLE,
  CONSTRAINT `fk_invoices_cars1`
    FOREIGN KEY (`cars_car_id`)
    REFERENCES `my_db_sql_lab`.`cars` (`car_id`),
  CONSTRAINT `fk_invoices_customers2`
    FOREIGN KEY (`customers_customer_id1`)
    REFERENCES `my_db_sql_lab`.`customers` (`customer_id`),
  CONSTRAINT `fk_invoices_sales person1`
    FOREIGN KEY (`sales person_staff_id`)
    REFERENCES `my_db_sql_lab`.`sales person` (`staff_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
