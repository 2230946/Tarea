-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema EmpleadoVehiculo2
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema EmpleadoVehiculo2
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `EmpleadoVehiculo2` DEFAULT CHARACTER SET utf8 ;
USE `EmpleadoVehiculo2` ;

-- -----------------------------------------------------
-- Table `EmpleadoVehiculo2`.`VEHICULO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `EmpleadoVehiculo2`.`VEHICULO` (
  `matricula` VARCHAR(45) NOT NULL,
  `modelo` VARCHAR(45) NULL,
  PRIMARY KEY (`matricula`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `EmpleadoVehiculo2`.`EMPLEADO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `EmpleadoVehiculo2`.`EMPLEADO` (
  `codemp` INT NOT NULL,
  `nombre` VARCHAR(45) NULL,
  `apellido1` VARCHAR(45) NULL,
  `apellido2` VARCHAR(45) NULL,
  `fecha_inicio` DATE NOT NULL,
  `VEHICULO_matricula` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`codemp`),
  INDEX `fk_EMPLEADO_VEHICULO_idx` (`VEHICULO_matricula` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
