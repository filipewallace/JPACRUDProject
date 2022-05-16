-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema pokemondb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `pokemondb` ;

-- -----------------------------------------------------
-- Schema pokemondb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `pokemondb` DEFAULT CHARACTER SET utf8 ;
USE `pokemondb` ;

-- -----------------------------------------------------
-- Table `pokemon`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `pokemon` ;

CREATE TABLE IF NOT EXISTS `pokemon` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `type` VARCHAR(45) NULL,
  `weakness` VARCHAR(45) NULL,
  `evolved_name` VARCHAR(45) NULL,
  `image_url` VARCHAR(100) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS pokemonuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'pokemonuser'@'localhost' IDENTIFIED BY 'pokemonuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'pokemonuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `pokemon`
-- -----------------------------------------------------
START TRANSACTION;
USE `pokemondb`;
INSERT INTO `pokemon` (`id`, `name`, `type`, `weakness`, `evolved_name`, `image_url`) VALUES (1, 'Eevee', 'Normal', 'Fighting', 'Sylveon', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/133.png');
INSERT INTO `pokemon` (`id`, `name`, `type`, `weakness`, `evolved_name`, `image_url`) VALUES (2, 'Togepi', 'Fairy', 'Steel,Poison', 'Togetic', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/175.png');
INSERT INTO `pokemon` (`id`, `name`, `type`, `weakness`, `evolved_name`, `image_url`) VALUES (3, 'Vulpix', 'Fire', 'Water,Ground,Rock', 'Ninetales', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/037.png');
INSERT INTO `pokemon` (`id`, `name`, `type`, `weakness`, `evolved_name`, `image_url`) VALUES (4, 'Jigglypuff', 'Fairy', 'Steel,Poison', 'Wigglytuff', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/039.png');
INSERT INTO `pokemon` (`id`, `name`, `type`, `weakness`, `evolved_name`, `image_url`) VALUES (5, 'Pumpkaboo', 'Ghost', 'Ghost,Fire,Flying,Dark,Ice', 'Gourgeist', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/710.png');
INSERT INTO `pokemon` (`id`, `name`, `type`, `weakness`, `evolved_name`, `image_url`) VALUES (6, 'Espurr', 'Psychic', 'Ghost,Dark,Bug', 'Meowstic', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/677.png');
INSERT INTO `pokemon` (`id`, `name`, `type`, `weakness`, `evolved_name`, `image_url`) VALUES (7, 'Chikorita', 'Grass', 'Fire,Flying,Ice,Poison,Bug', 'Bayleef', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/152.png');
INSERT INTO `pokemon` (`id`, `name`, `type`, `weakness`, `evolved_name`, `image_url`) VALUES (8, 'Cubchoo', 'Ice', 'Fire,Steel,Fighting,Rock', 'Beartic', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/613.png');
INSERT INTO `pokemon` (`id`, `name`, `type`, `weakness`, `evolved_name`, `image_url`) VALUES (9, 'Mimikyu', 'Ghost', 'Ghost,Steel', 'Chad', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/778.png');
INSERT INTO `pokemon` (`id`, `name`, `type`, `weakness`, `evolved_name`, `image_url`) VALUES (10, 'Mew', 'Psychic', 'Ghost,Dark,Bug', 'GigaChad', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/151.png');

COMMIT;

