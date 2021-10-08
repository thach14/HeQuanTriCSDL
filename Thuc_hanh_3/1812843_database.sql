-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema 1812843_database
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema 1812843_database
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `1812843_database` ;
USE `1812843_database` ;

-- -----------------------------------------------------
-- Table `1812843_database`.`orders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `1812843_database`.`orders` (
  `orderNumber` INT NOT NULL AUTO_INCREMENT,
  `orderDate` DATETIME NULL,
  `requiredDate` DATETIME NULL,
  `shippedDate` DATETIME NULL,
  `status` VARCHAR(15) NULL,
  `comments` TEXT NULL,
  `orderscol` TINYTEXT NULL,
  `customerNumber` INT NULL,
  PRIMARY KEY (`orderNumber`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `1812843_database`.`productlines`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `1812843_database`.`productlines` (
  `productLine` VARCHAR(15) NOT NULL,
  `textDescription` VARCHAR(400) NULL,
  `htmlDescription` MEDIUMTEXT NULL,
  `image` MEDIUMBLOB NULL,
  PRIMARY KEY (`productLine`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `1812843_database`.`products`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `1812843_database`.`products` (
  `productCode` VARCHAR(15) NOT NULL,
  `productName` VARCHAR(45) NULL,
  `productScale` VARCHAR(45) NULL,
  `productVendor` VARCHAR(45) NULL,
  `productDesciption` VARCHAR(45) NULL,
  `quantityInStock` SMALLINT(6) NULL,
  `buyPrice` DOUBLE NULL,
  `productLine` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`productCode`),
  INDEX `fk_products_productlines1_idx` (`productLine` ASC) VISIBLE,
  CONSTRAINT `fk_products_productlines1`
    FOREIGN KEY (`productLine`)
    REFERENCES `1812843_database`.`productlines` (`productLine`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `1812843_database`.`orderdetails`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `1812843_database`.`orderdetails` (
  `orderNumber` INT NOT NULL AUTO_INCREMENT,
  `productCode` VARCHAR(15) NULL,
  `quantityOrdered` INT(11) NULL,
  `priceEach` DOUBLE NULL,
  `orderLineNumber` SMALLINT(6) NULL,
  PRIMARY KEY (`orderNumber`),
  INDEX `fk_orderdetails_products1_idx` (`productCode` ASC) VISIBLE,
  CONSTRAINT `fk_orderdetails_orders`
    FOREIGN KEY (`orderNumber`)
    REFERENCES `1812843_database`.`orders` (`orderNumber`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_orderdetails_products1`
    FOREIGN KEY (`productCode`)
    REFERENCES `1812843_database`.`products` (`productCode`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
