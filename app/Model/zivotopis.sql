-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hostiteľ: 127.0.0.1:3306
-- Čas generovania: St 17.Dec 2025, 18:39
-- Verzia serveru: 8.3.0
-- Verzia PHP: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáza: `zivotopis`
--

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `kontakt`
--

DROP TABLE IF EXISTS `kontakt`;
CREATE TABLE IF NOT EXISTS `kontakt` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(35) NOT NULL,
  `phone_number` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Sťahujem dáta pre tabuľku `kontakt`
--

INSERT INTO `kontakt` (`id`, `email`, `phone_number`) VALUES
(1, 'oliverchalupka225@gmail.com', '+421 948897023');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `motivation_letter`
--

DROP TABLE IF EXISTS `motivation_letter`;
CREATE TABLE IF NOT EXISTS `motivation_letter` (
  `id` int NOT NULL AUTO_INCREMENT,
  `motivation_letter` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Sťahujem dáta pre tabuľku `motivation_letter`
--

INSERT INTO `motivation_letter` (`id`, `motivation_letter`) VALUES
(1, 'Dobrý deň, volám sa oliver chalúpka a IT ma zaujímalo od malička. Síce keď som bol menší tak skôr hry... Ale keď som bol o niečo starší(14-15 rokov) tak som sa začal venovať aj programovaniu a začal to brať tak viac serióznejšie. Začal som s html, css. Potom som skúsil nejaký python a javascript. A postupne som si skúšal programovať vo voľnom čase a robiť svoje mini projektíky. Po určitej dobe keď som sa tomu nejakú dobu venoval som začal aj navštevovať gymnázium s rozšírením na IT (čiže už som študoval na strednej škole). Takže som sa venoval IT v škole aj doma.\\n\\Ako som v IT štúdiu pokračoval na škole ale aj doma. som sa postupne zoznámil aj viac s backendom ako php, java. Verzovacím systémom ako je git. Rezponzívnosťou webových stránok. \\n\\Po nejakom čase, som dostal zaujímavý podnet na framework Nette. A tam začala viac moja backend vlna. Dozvedel som sa niečo o MVC(model, view, controller). Potrénoval som si viac prácu s databázami, programovacími jazykmi a frameworkom. A všeobecne veci ohľadne toho ako je git, vývoj webových aplikácii. Skúšanie robiť radšej menších krôčikov a pravidelne ako veľké raz začas. To mi raz vysvetlil učiteľ veľmi zaujímavou analógiou. „Že ako by som zjedol celého slona?“ odpoveď „pokúskoch.“\\n\\No a to už sa blížime k súčasnosti. Zverejnený na mojej stránke taký „pre mňa väčší projekt / najnovší projekt“. A životopisová stránka. Neviem vám povedať, do akej veľkej miery vám viem byť užitočný vo vašej firme a presne ako. Ale aspoň vám viem čiastočne ukázať nejaké svoje IT zručnosti. Však posúďte sami.');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `zivotopis`
--

DROP TABLE IF EXISTS `zivotopis`;
CREATE TABLE IF NOT EXISTS `zivotopis` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(25) NOT NULL,
  `secondname` varchar(25) NOT NULL,
  `born_age` date NOT NULL DEFAULT '2006-12-19',
  `place_of_residence` text NOT NULL,
  `education` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Sťahujem dáta pre tabuľku `zivotopis`
--

INSERT INTO `zivotopis` (`id`, `firstname`, `secondname`, `born_age`, `place_of_residence`, `education`) VALUES
(1, 'Oliver', 'Chalúpka', '2006-12-19', 'Slovensko, trenčiansky kraj, Chocholná-Velčice, Chocholná 605', 'základná škola, študujem na gymnázium Futurum Trenčín 4. ročník s rozšírením na IT');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
