--
-- Base de données :  `dlsbdeProjetB`
--

--
-- Structure de la table `membre`
--

CREATE TABLE `membre` (
  `numMembre` int(11) auto_increment NOT NULL,
  `nom` VARCHAR(30) NOT NULL,
  `prenom` VARCHAR(30) NOT NULL,
  `classe` varchar(6)  NULL,
  `email` VARCHAR(50)  NOT NULL,
  `identifiant` VARCHAR(10) NOT NULL,
  `mdp` VARCHAR(50) NOT NULL,
  `deleteallow` int(1) NOT NULL DEFAULT 0,
  `numPrivilege` int(11) NOT NULL DEFAULT 0,
  CONSTRAINT `pkM` PRIMARY KEY (numMembre)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `membre`
--

INSERT INTO `membre` ( `nom`, `prenom`, `classe`, `email`, `identifiant`, `mdp`, `deleteallow`, `numPrivilege`) VALUES
( 'GUERIN', 'Ludovic', '', 'guerin.l@lyceedelasalle.fr', 'guerin.l', '21232f297a57a5a743894a0e4a801fc3', 0, 1),
( 'AGENAIS', 'Alban', 'SIO1', 'agenais.a@lyceedelasalle.fr', 'agenais.a', 'a62fc9df5e586ba53544cc1d554dd81e', 0, 0),
( 'BAUDRY', 'Alan', 'SIO1', 'baudry.a@lyceedelasalle.fr', 'baudry.a', 'c0078c72fe2da6b8d5c1ea0472ee2c66', 0, 0),
( 'BELLEC', 'Kéven', 'SIO1', 'bellec.k@lyceedelasalle.fr', 'bellec.k', 'f295d016aeda3845b11d61841d01d5de', 0, 0),
( 'BERTHELOT', 'Corentin', 'SIO1', 'berthelo.3@lyceedelasalle.fr', 'berthelo.3', '8fc34bd2336671ffe824ab3d0cb77bbc', 0, 0),
( 'BLANCARD', 'Orlane', 'SIO1', 'blancard.o@lyceedelasalle.fr', 'blancard.o', '5ff787072f074babb3b6723a267384d4', 0, 0),
( 'CANBOLAT', 'Oguzhan', 'SIO1', 'canbolat.o@lyceedelasalle.fr', 'canbolat.o', '7d0b097182e6d611680121dd9584da86', 0, 0),
( 'COLLEU', 'Elven', 'SIO1', 'colleu.e@lyceedelasalle.fr', 'colleu.e', '6c72debbdcc93f3a4035bfe0d25fa6f7', 0, 0),
( 'COUILLARD', 'Théo', 'SIO1', 'couillar.t@lyceedelasalle.fr', 'couillar.t', 'f5bf806549798e5c5714edba951c02c6', 0, 0),
( 'DERRIEN', 'Ronan', 'SIO1', 'derrien.r@lyceedelasalle.fr', 'derrien.r', '5126589a31523b84a1caece24d34fb1e', 0, 0),
( 'DUMAS', 'Benjamin', 'SIO1', 'dumas.b@lyceedelasalle.fr', 'dumas.b', '3ae090490a6fc1cc902dfb32088aeadd', 0, 0),
( 'EPS', 'Erwan', 'SIO1', 'eps.e@lyceedelasalle.fr', 'eps.e', '63f9dba79cf7afcb230b649471f8893e', 0, 0),
( 'GERMAIN', 'François', 'SIO1', 'germain.f@lyceedelasalle.fr', 'germain.f', '3b4d3bebeccd560e762dcb29e9c033b3', 0, 0),
( 'HAMON', 'Amandine', 'SIO1', 'hamon.a1@lyceedelasalle.fr', 'hamon.a1', '24cc69404c647d5d143d033551a8fd75', 0, 0),
( 'JALLU', 'Pierre-Thomas', 'SIO1', 'jallu.p@lyceedelasalle.fr', 'jallu.p', 'c92b8c50e560d7a5fb4254e7270e9ca2', 0, 0),
( 'JAMET', 'Naël', 'SIO1', 'jamet.n@lyceedelasalle.fr', 'jamet.n', 'f5ac5f94d3ace98e99125e6135710876', 0, 0),
( 'LE FLOCH', 'Vincent', 'SIO1', 'lefloch.v@lyceedelasalle.fr', 'lefloch.v', '9907166c7987a4a3d99f620f515911b0', 0, 0),
( 'LELU', 'Awen', 'SIO1', 'lelu.a@lyceedelasalle.fr', 'lelu.a', 'b8c72dcd5d945c635d3f546ed8c2a5e6', 0, 0),
( 'LEPAGE', 'Antoine', 'SIO1', 'lepage.a@lyceedelasalle.fr', 'lepage.a', '8a6e7118061398820a4649140d03e551', 0, 0),
( 'LEPEIGNEUL', 'Brice', 'SIO1', 'lepeigne.b@lyceedelasalle.fr', 'lepeigne.b', '1fc48b76577f07121812b22aa5b2117d', 0, 0),
( 'LERAY', 'Jérémie', 'SIO1', 'leray.j@lyceedelasalle.fr', 'leray.j', '3d9156bb0b681af3fe1058727d823e76', 0, 0),
( 'LE SAINT', 'Clément', 'SIO1', 'lesaint.c@lyceedelasalle.fr', 'lesaint.c', 'a3c8cfed97150e5c56adaeb699704d4b', 0, 0),
( 'MENTEC', 'Olivier', 'SIO1', 'mentec.o@lyceedelasalle.fr', 'mentec.o', '70437d5837467c874bb3ad42b64dee15', 0, 0),
( 'PERRON-SYLVESTRE', 'Hugo', 'SIO1', 'perronsy.h@lyceedelasalle.fr', 'perronsy.h', '41fbc42666f75da0a19ebaa522b0f6ea', 0, 0),
( 'PIEKACZ', 'Jérémie', 'SIO1', 'piekacz.j@lyceedelasalle.fr', 'piekacz.j', '1f05113153ba8cdd1298b43ce1c1a709', 0, 0),
( 'PIERA', 'Théo', 'SIO1', 'piera.t@lyceedelasalle.fr', 'piera.t', 'adab3d5e8c4e779d0918a8b0db1a2901', 0, 0),
( 'RIQUIER', 'Thomas', 'SIO1', 'riquier.t@lyceedelasalle.fr', 'riquier.t', '8f3d37ee5556c0844edfcd719f2189f3', 0, 0),
( 'SAUVEE', 'Florian', 'SIO1', 'sauvee.f@lyceedelasalle.fr', 'sauvee.f', 'd57cda2fadeb24237c05bac9648cd6a1', 0, 0),
( 'SOURDIN', 'Maxime', 'SIO1', 'sourdin.m@lyceedelasalle.fr', 'sourdin.m', '1f9314e30c910a3dffe4741d0c05552f', 0, 0),
( 'SOURDRILLE', 'Kelian', 'SIO1', 'sourdril.k@lyceedelasalle.fr', 'sourdril.k', '9373331d7b25a108be9df028fdf73fe6', 0, 0),
( 'TRICARD', 'Florian', 'SIO1', 'tricard.f@lyceedelasalle.fr', 'tricard.f', '43e0abd3e67a5750f9aa9bd5a57348fd', 0, 0),
( 'VALLEE', 'Dylan', 'SIO1', 'vallee.d@lyceedelasalle.fr', 'vallee.d', '920962202795fb513965b8926a28578d', 0, 0);


--
-- Structure de la table `covoiturage`
--

CREATE TABLE `covoiturage` (
  `numCo` int(11) NOT NULL auto_increment,
  `numMembre` int(11) NOT NULL,
  `dateDepot` date NOT NULL,
  `etat` integer(1) NOT NULL DEFAULT 0,
  `prix` DECIMAL(5,2) NOT NULL DEFAULT 0,
  `description` VARCHAR(30) NOT NULL,
  `villeDepart` VARCHAR(30) NOT NULL,
  `villeArrive` VARCHAR(30) NOT NULL,
  `pointDepart` VARCHAR(30) NOT NULL,
  `pointArrive` VARCHAR(30) NOT NULL,
  `heureDepart` VARCHAR(30) NOT NULL,
  `heureArrive` VARCHAR(30) NOT NULL,
  `jourDepart` date NOT NULL,
  `jourArrive` date NOT NULL,
  `nbPlaces` int(5)  NOT NULL,
  `placeBagage` VARCHAR(30)  NOT NULL,
  `voiture` VARCHAR(30) NOT NULL,
  `couleur` VARCHAR(30) NOT NULL,
  CONSTRAINT `pkC` PRIMARY KEY (numCo),
  CONSTRAINT `fkM` FOREIGN KEY (`numMembre`) REFERENCES `membre` (`numMembre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `covoiturage`
--

INSERT INTO `covoiturage` (`numMembre`, `dateDepot`, `etat`, `prix`, `description`, `villeDepart`, `villeArrive`, `pointDepart`,`pointArrive`, 
`heureDepart`, `heureArrive`, `jourDepart`, `jourArrive`, `nbPlaces`, `placeBagage`, `voiture`,`couleur`)
VALUES
(2, '2017-07-03', '1', 3, '', 'RENNES', 'SAINT BRIEUC', 'Lycée ', 'Gare', '12h00', '13h', '2017-07-04', '2017-07-04', 3, 'petit','Picasso', 'Noire' );
INSERT INTO `covoiturage` (`numMembre`, `dateDepot`, `etat`, `prix`, `description`, `villeDepart`, `villeArrive`, `pointDepart`,`pointArrive`, 
`heureDepart`, `heureArrive`, `jourDepart`, `jourArrive`, `nbPlaces`, `placeBagage`, `voiture`,`couleur`)
VALUES
(2, '2017-07-03', '0', 3, '', 'zblu', 'SAINT BRIEUC', 'Lycée ', 'Gare', '12h00', '13h', '2017-07-04', '2017-07-04', 3, 'petit','Picasso', 'Noire' );
INSERT INTO `covoiturage` (`numMembre`, `dateDepot`, `etat`, `prix`, `description`, `villeDepart`, `villeArrive`, `pointDepart`,`pointArrive`, 
`heureDepart`, `heureArrive`, `jourDepart`, `jourArrive`, `nbPlaces`, `placeBagage`, `voiture`,`couleur`)
VALUES
(2, '2017-07-03', '0', 3, '', 'test1', 'SAINT BRIEUC', 'Lycée ', 'Gare', '12h00', '13h', '2017-07-04', '2017-07-04', 3, 'petit','Picasso', 'Noire' );
INSERT INTO `covoiturage` (`numMembre`, `dateDepot`, `etat`, `prix`, `description`, `villeDepart`, `villeArrive`, `pointDepart`,`pointArrive`, 
`heureDepart`, `heureArrive`, `jourDepart`, `jourArrive`, `nbPlaces`, `placeBagage`, `voiture`,`couleur`)
VALUES
(2, '2017-07-03', '0', 3, '', 'test2', 'SAINT BRIEUC', 'Lycée ', 'Gare', '12h00', '13h', '2017-07-04', '2017-07-04', 3, 'petit','Picasso', 'Noire' );
INSERT INTO `covoiturage` (`numMembre`, `dateDepot`, `etat`, `prix`, `description`, `villeDepart`, `villeArrive`, `pointDepart`,`pointArrive`, 
`heureDepart`, `heureArrive`, `jourDepart`, `jourArrive`, `nbPlaces`, `placeBagage`, `voiture`,`couleur`)
VALUES
(2, '2017-07-03', '0', 3, '', 'test3', 'SAINT BRIEUC', 'Lycée ', 'Gare', '12h00', '13h', '2017-07-04', '2017-07-04', 3, 'petit','Picasso', 'Noire' );


