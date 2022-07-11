-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : jeu. 17 fév. 2022 à 10:49
-- Version du serveur :  5.7.34
-- Version de PHP : 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `titre` text NOT NULL,
  `article` text NOT NULL,
  `id_utilisateur` int(11) NOT NULL,
  `id_categorie` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `titre`, `article`, `id_utilisateur`, `id_categorie`, `date`) VALUES
(1, 'Le Môle Bérouard', 'Le môle Bérouard est construit de 1837 à 1840, en prolongement du terre-plein qui accueille depuis le 17e siècles le fort Bérouard (fort détruit de 1892 à 1895). La jetée est construite au sur des écueils et récifs qui rendaient l\'accès au port dangereux. Le môle fût bâti avec les pierres récupérées lors du creusement du jardin des Capucins (square Mouton). En 1840 on érige à son extrémité un phare d\'entrée de port. En 1971 le môle fût raccourci pour laisser plus de place aux manoeuvres des navires sortant des Chantiers Navals de La Ciotat.', 3, 1, '2022-02-17 07:26:19'),
(3, 'Histoire de La Ville', 'Les premières traces de vie dans le golfe de la Ciotat remonteraient au néolithique final (3000-2000 av J-C) d\'après les vestiges retrouvés : silex, céramiques et sépultures au gîte d\'Ellianac, sépultures collectives à la grotte de Terrevaine, pointes de flèches à la grotte de Fardeloup, fragments de silex et de fragments de hache au stade l\'Abeille... \r\n\r\n \r\n\r\nDurant l\'antiquité, Portus Citharista ou port de Ceyreste est déjà une étape sur la route maritime des grands navigateurs. Les épaves d\'amphores du Vème siècle retrouvées autour de l\'île Verte en attestent. La crique étaient protégée du vent par le Bec de l\'Aigle et les marins se ravitaillaient en eau à la source au Pré. \r\n\r\nAu XIème et XIIème siècle, Ceyreste et le port de La Ciotat ne formaient qu\'une commune.\r\n\r\nCourant Xème siècle, les habitants de Ceyreste sont à l\'origine de la construction des premiers édifices pour les pêcheurs. \r\n\r\nSuit alors une période d\'invasions où la ville périclite pour renaître au XIVème siècle sous le nom de \"civitas\", la cité, La Ciotat.\r\n\r\nLa charte de 1429 déclare La Ciotat commune distincte et autonome, mais ses limites ne seront définitives qu\'en 1675. L\'église de L\'abbé Saint Victor de1374 est érigée en paroisse en 1429.\r\n\r\nDès lors, la ville prospère rapidement. Le fort Bérouard (1551) et un môle neuf (1560) sont édifiés pour sa protection. Les remparts sont prolongés.\r\n\r\nL\'agrandissement de l\'église débute en 1476 pour s\'achever en 1625.\r\n\r\nDès le XVIème siècle, l\'activité de la pêche cède la place au commerce avec le Levant et à la construction navale. Les bois de Cuges et de Signes alimentent les chantiers de construction navale ou de réparation du quartier de l\'Escalet. \r\n\r\nA cette époque, chassés d\'Italie, des aristocrates génois avec une grande expérience du commerce maritime s\'installent à la Ciotat. Des marins entreprenants pratiquent la \"caravane\", le transport et trafic des marchandises d\'un port à un autre. Le blé, les vins de Provence, l\'huile d\'olive, le savon sont exportés. Les épices, les soieries, les tapis, les parfums et les porcelaines sont importés pour les familles de la bourgeoisie.\r\n\r\nLa ville est en pleine essor et voit apparaître ses premiers grands armateurs et la naissance de familles fortunées. \r\n\r\nDes chapelles et des couvents sont érigés pour abriter les confréries.\r\n\r\n \r\n\r\nLa fin XVIIème marque le début du déclin de la ville. \r\n\r\nDès 1662, les matelots du port sont souvent réquisitionnés à Toulon par la Marine royale pour les vaisseaux du roi. La population décroit. \r\n\r\n \r\n\r\nEn 1720, la peste qui ravage la Provence ne franchit pas les portes de la ville. La Ciotat devient alors le grenier commercial de Marseille. \r\n\r\nEn 1724, une tempête détruit les quais et les installations du port. Les actes de piraterie se multiplient sur les routes maritimes. Les  guerres de 1755, 1777 affaiblissent cruellement la ville.\r\n\r\nA la veille de la Révolution, la ville n\'est plus qu\'une ombre avec des chantiers abandonnés et quelques habitants.\r\n\r\n \r\n\r\nDébut XIXème siècle, le port marchand cède la place à la construction navale.\r\n\r\nDès 1820, la réfection de la ville commence. Les ateliers de filature apparaissent ainsi qu\'une exploitation de grès.\r\n\r\nEn 1834, Louis Benet reprend et modernise le chantier de construction artisanale de voiliers de Joseph Vence. Dès 1835, la\r\n\r\ncapacité du port double avec la construction de la jetée du Bérouard.\r\n\r\nLes premiers navires à vapeur et en fer voient le jour.\r\n\r\nLe 1er paquebot à vapeur français de la Méditerranée \"le Phocéen\" est lancé de la Ciotat en 1836, \"le Bonaparte\" en 1839...\r\n\r\nLa révolution stoppe cet essor en 1848 et M. Benet dépose son bilan.\r\n\r\nEn 1851, Les ateliers deviennent la propriété de la Compagnie des Messageries Nationale puis Maritimes.\r\n\r\nLa Ciotat retrouve la prospérité et se modernise. L\'Hôtel de ville est édifié en 1866, la voie ferrée et sa gare en 1856. Le télégraphe relie Marseille à La Ciotat, l\'hôpital Saint jacques est remplacé par un nouvel hôpital.. \r\n\r\nLa démolition des remparts de la ville et d\'anciens édifices (ancienne mairie, Fort Bérouard..)  est entreprise pour laisser place aux nouvelles constructions: l\'hôtel de la poste, le marché couvert, le théâtre municipal, le jardin public. \r\n\r\nLe 15 juillet 1883 marque l\'arrivée de l\'eau dans la ville par le canal de la Durance.\r\n\r\n \r\n\r\nDes repreneurs se succéderont au cours du XXème siècle mais le chantier naval fermera ses portes en 1987 face aux difficultés économiques.\r\n\r\nDepuis 1995, La création de la Semidep relance l\'activité du chantier en développant un pole de haute plaisance. Equipé d\'un ascenseur à bateaux de 2000 Tonnes et 80 mètres de long et d\'une plateforme de levage méga-yachts, il peut accueillir tous les yachts pour l\'entretien et les réparations.', 5, 1, '2022-02-13 08:17:18'),
(4, 'LES LUMIÈRE ET LA CIOTAT', 'LES LUMIERE, UNE TRILOGIE INVENTIVE\r\nNé à Ormoy (Haute-Saône) en 1840, Antoine Lumière s’installe avec sa femme Jeanne-Joséphine Costille à Besançon, où il devient un photographe de renom. Après la naissance d’Auguste (1862) et de Louis (1864) la famille quitte Besançon pour Lyon. Les deux garçons font leurs études au lycée de la Martinière, établissement réputé pour son enseignement original qui influera sur leurs nombreuses réussites scientifiques. C’est l’association des compétences d’un père intuitif et de deux fils de génie, qui provoque la réussite de toute la famille, à commencer par l’invention des « Etiquettes Bleues », plaques sèches au gélatino-bromure d’argent utilisées par les photographes et fabriquées dans les usines de Monplaisir. La mise au point du cinéma-tographe en 1895, consacre la réussite technologique et com-merciale de la trilogie des Lumière. Suivront les autochromes, photographies en couleurs en 1903, la photographie en relief en 1920 et le cinéma en relief en 1935. Savants universels, les deux frères ont déposé, ensemble ou séparément, plus de 200 brevets dans de nombreux domaines technologiques et médicaux, dans une fraternité joyeuse qui les rend indissociables. A cette inventivité permanente, il faut ajouter une ouverture d’esprit généreuse et discrète qui s’exerce notamment dans les soins gratuits prodigués aux blessés de la Grande Guerre.', 5, 4, '2022-02-17 07:25:55'),
(5, 'La Famille Lumière à La Ciotat', 'Séduit par la lumière du Golfe d’Amour que lui a vantée son ami Lazare Sellier, ancien des chantiers navals ciotadens, Antoine Lumière fait construire en 1893, au Clos des Plages, un magnifique château appelé Palais Lumière où la famille prend l’habitude de passer ses villégiatures d’été. Outre cette résidence, Antoine Lumière fait l’acquisition de nombreux domaines qui lui permettent de cultiver la vigne et même d’installer un port dans lequel est amarré le bateau familial. La famille Lumière fait preuve de générosité envers les enfants des écoles et offre le terrain pour construire l’école publique de Saint-Jean. Le Palais Lumière est le lieu de très fréquentes réceptions de personnages officiels, ministres ou industriels, mais également de scientifiques comme le photographe Nadar. C’est au Palais Lumière que, le 21 septembre 1895, Antoine invite 150 personnes à assister à «quelques expériences de cinématographe». Cette séance du Clos des Plages constitue en fait la première présentation publique du cinématographe Lumière.\r\n\r\nMais le Clos des Plages est avant tout la résidence où Antoine aime réunir l’ensemble de la famille, nombreuse et solidaire. Ce sont ces scènes de vie familiale qui seront les sujets des premiers films tournés par Louis Lumière lors de la mise au point du cinématographe, et qui appartiennent au patrimoine mondial du cinéma. Les deuils familiaux qui s’enchaîneront après le décès d’Antoine en 1911, provoqueront le départ des Lumière en 1925, mais La Ciotat demeure la Ville des Lumière et Auguste la décrit en 1935 comme «le lieu de prédilection où tous les miens aimaient à se réunir dans une heureuse atmosphère d’affection ».', 5, 2, '2022-02-14 08:16:48'),
(7, 'L\'invention du Cinéma par les frères Lumières', 'Lorsque Louis Lumière entreprend ses recherches, d’autres appareils reproduisant le mouvement de l’image existent déjà. Il analyse les qualités et les défauts de chacun des systèmes proposés pour concevoir son Cinématographe. Louis Lumière fabrique un outil maniable puisque le Cinématographe permet à la fois de prendre des images, de les développer et de les projeter dans une salle obscure, sur grand écran. Le 30 mars 1895, les deux frères déposent le brevet de leur invention et donnent alors le nom de « cinématographe » à l’appareil. Durant l’été 1895, Louis met la touche finale au fonctionnement de l’appareil en réalisant de nombreux tournages à La Ciotat. S’ensuivent quelques projections expérimentales à l’intention d’un public scientifique (Neuville-sur-Saône) ou privé (La Ciotat) mais la première projection payante du Cinématographe a lieu le 28 décembre 1895 au Salon Indien du Grand Café, à Paris, devant 33 spectateurs, dont Méliès. Le programme propose ce jour-là dix films d’1 minute dont La sortie de l’Usine Lumière à Lyon, La Pêche aux poissons rouges, L’Arroseur arrosé, Le Repas de bébé, La Mer (Baignade en mer). Contrairement aux idées reçues, le film L’arrivée d’un train en gare de La Ciotat, ne fut projeté que lors de la 2ème séance. L’enthousiasme des spectateurs est tel que bientôt des files d’attente se pressent devant cette nouvelle attraction. Pour développer son exploitation, la famille Lumière fait appel à des opérateurs qui partent tourner des images dans le monde entier.', 5, 2, '2022-02-14 08:16:15'),
(8, 'Les Opérateurs Lumière', 'Les Films Lumières Tournés à La Ciotat/Si La sortie des usines Lumière à Lyon constitue incontestablement le premier film de Louis Lumière, parmi les 20 premiers films de l’histoire du cinéma, la moitié a été tournée à La Ciotat durant l’été-automne 1895. Le plus célèbre est évidemment Le train entrant en gare de La Ciotat, qui relate l’arrivée dans la petite gare du train en provenance de Marseille, avec parmi les voyageurs Joséphine Lumière, mère des inventeurs, et Suzanne, fille de Louis. Le monstre de fer surgissant de l’écran est une image qui a frappé le public de l’époque et fait dire à Franju qu’il s’agissait du « premier film d’épouvante ». Tout aussi fameux est L’Arroseur arrosé, dont une des trois versions a été tournée dans les jardins du Palais Lumière, avec François Clerc jardinier de la famille dans son rôle, et le jeune Ciotaden Léon Trotobas dans celui de l’espiègle. Il s’agit du véritable premier film scénarisé.', 5, 2, '2022-02-14 08:15:51'),
(9, 'Les Opérateurs Lumière', 'Le succès obtenu étonna les inventeurs eux-mêmes, qui décidèrent d’exploiter commercialement et de façon méthodique les propriétés de cette étrange « machine à reproduire la vie » : le Cinématographe Lumière. Les frères Lumière tournèrent eux-mêmes les 1ers films et formèrent une cinquantaine d’équipes de « cinématographistes » qu’ils envoyèrent sur les 5 continents pour diffuser et faire connaître leur invention. Composées de 2 hommes, ces équipes travaillaient sous la direction de « concessionnaires » chargés, pays par pays, d’organiser l’itinéraire de ceux qu’on appelait aussi « les tourneurs de manivelle ». Le réseau de photographes et de distributeurs (dans le monde entier) des fameuses plaques photographiques « Etiquettes bleues » fabriquées par la firme Lumière fut aussi un support administratif efficace pour l’expansion des premières images animées. En 6 mois, la planète entière reçu la visite, bourgade par bourgade, ville par ville, de ces spectacles qui révélèrent à des foules enthousiastes une perception nouvelle du temps : « Nous allons tous revivre éternellement », écrivent certains journalistes, ou encore, comme à Lyon par exemple, « la mort est vaincue par la science »… Les opérateurs devinrent ainsi les premiers projectionnistes, puis les 1ers cinéastes de notre histoire. Certains devinrent de véritables vedettes :\r\n– Félix Mesguich, qui écrira ses mémoires (Tour de manivelle)\r\n– Félicien Trewey, prestigiditateur converti au cinématographe\r\n– Promio, opérateur en chef de la firme Lumière et réputé « inventeur » du 1er travelling\r\n– Marius Chapuis, jeune homme du quartier de la Croix-Rousse à Lyon, âgé de 16 ans et qui cherchait un métier d’avenir\r\n– Francis Doublier…', 5, 2, '2022-02-14 08:15:35'),
(10, 'Le Plus Ancien Cinéma du Monde', 'L’extraordinaire histoire de l’Eden, plus ancienne salle de cinéma du monde, commence à Paris. A l’occasion d’un convent maçonnique, le photographe lyonnais Antoine Lumière fait la connaissance du Ciotaden Antoine Sellier, chef mécanicien des chantiers navals, qui lui vante l’exceptionnelle qualité de la lumière des paysages du Golfe d’Amour propice aux talents de peintre de son nouvel ami. Immédiatement séduit, Antoine Lumière qui a fait fortune grâce aux Etiquettes bleues, plaques photographiques inventées par son fils Louis, construit une demeure somptueuse sur les bords de la Méditerranée, le Château Lumière qui devient en 1893 la résidence estivale de la famille. Antoine Lumière se lie d’amitié avec le propriétaire de l’Eden Théâtre, Raoul Gallaud, et c’est l’amitié de ces deux hommes qui va faire de la salle de spectacles du Boulevard de la Tasse, le lieu de projections des premiers films Lumière. \r\n\r\nL’Eden Théâtre, construit en 1889 par l’entrepreneur de spectacles Alfred Seguin, est alors une salle populaire où se succèdent des représentations théâtrales, des spectacles de music-hall et même des exhibitions sportives de boxe ou de lutte gréco-romaine. Durant l’été 1895, alors qu’il vient de déposer le brevet de l’invention du Cinématographe et de tourner à Lyon La sortie des usines Lumière, premier film de l’histoire du cinéma, Louis Lumière profite de la villégiature familiale à La Ciotat pour tourner une dizaine de films qui font du petit port provençal le véritable berceau du cinéma. \r\n\r\nLe 21 septembre 1895, Antoine Lumière convie la bonne société ciotadenne au Palais Lumière pour « quelques expériences de cinématographe ». Au cours de cette soirée « toute de famille et en tenue journalière », cent cinquante personnes assistent médusées à la projection d’une dizaine de films tournés par Louis à Lyon (Sortie des usines Lumière, Incendie d’une maison, Place des Cordeliers) et à La Ciotat (Baignades en mer, Le poisson rouge, Le dîner de bébé). Pour Louis, c’est le succès scientifique du cinématographe qui fait « bouger l’image », pour son père Antoine, c’est la sublimation maçonnique de « la vie éternelle ». \r\n\r\nL’ami Gallaud qui assistait bien entendu à cette soirée mémorable, convie Antoine Lumière à renouveler l’expérience dans sa salle de l’Eden, ce qui est fait quelques jours plus tard, le 14 octobre. Mais la projection tourne court car, si Antoine est un homme d’initiative, sa maîtrise technique est insuffisante. Cette séance inachevée est restée dans la mémoire des familiers des protagonistes mais ne constitue pas en réalité l’acte de naissance du cinéma à l’Eden. \r\n\r\nPersuadé que l’invention de ses fils apportera gloire et fortune à la famille Lumière, Antoine organise à Paris, le 28 décembre 1895, dans le Salon indien du Café de Paris une nouvelle projection des films présentés à La Ciotat. Trente-trois spectateurs payants, dont Méliès qui tente en vain d’acheter le brevet à Antoine Lumière. C’est cette date qui est retenue par l’histoire comme première séance commerciale de cinéma, mais les Ciotadens en connaissent le préambule. Dans les mois qui suivent, un double mouvement se produit : les opérateurs Lumière parcourent le monde pour tourner des films avec leur cinématographe, pendant que dans les grandes villes de France et d’Europe s’ouvrent des salles de cinéma. \r\n\r\nLe 21 mars 1899, deux cent cinquante Ciotadens assistent à la première séance payante de cinéma à l’Eden. Au programme, dix-neuf films Lumière parmi lesquels Caravane aux Pyramides d’Egypte et Lancement de navire à La Ciotat. Toutes les salles de cette époque ayant été détruites ou transformées en commerces ou parkings, la séance du 21 mars 1899, dont l’affiche est précieusement conservée, fait de l’Eden la plus ancienne salle de cinéma au monde encore en activité.', 5, 2, '2022-02-14 08:15:20'),
(11, 'Chantier Naval de La Ciotat', 'Depuis des siècles, l\'histoire de La Ciotat est intimement liée à l\'évolution de son activité maritime.\r\n\r\nLe port enclavé dans la baie offre une position stratégique... \r\n\r\nAncien comptoir grec, port de transit au carrefour des voies maritimes de l\'Antiquité, la Ciotat s\'ouvre progressivement aux influences extérieures.\r\n\r\n \r\n\r\nEn 1429, le hameau devenu indépendant de Ceyreste, abrite des familles de pêcheurs et des petits ateliers artisanaux de constructions de voiliers.\r\n\r\nDès le XVIème siècle, calfats, voiliers, charpentiers de marine, cordiers, pouliers font la renommée du chantier de L\'Escalet.  \r\n\r\nLors de la grande peste de 1720, la Ciotat, non touchée par le fléau, devient l\'entrepôt commercial de Marseille.\r\n\r\nMais la révolution de 1789 et les guerres d\'Empire mènent le chantier vers son déclin.', 5, 3, '2022-02-14 08:15:08'),
(12, '1835 Les chantiers Vence-Benet', 'Au début du XIXème siècle, les lignes maritimes en Méditerranée sont en plein essor. De nouvelles technologies voient le jour : les coques en bois cèdent la place à l\'acier, le charbon à la vapeur, la voile à l\'hélice.\r\n\r\nLe port marchand de La Ciotat s\'oriente progressivement vers la construction navale. \r\n\r\n \r\n\r\nEn 1835, la capacité du port est doublée avec la construction de la jetée du Môle Bérouard.\r\n\r\nA cette époque, Louis Benet, passionné par les progrès de la navigation à vapeur, ferme sa filature de coton et créé son atelier au chantier de La Cale.\r\n\r\nAssocié à Joseph Edouard Vence, il lance en 1836 le Phocéen I, premier navire à vapeur de La Méditerranée doté de système de propulsion anglais.\r\n\r\nLe Vesuve, suivra équipé de la première coque en acier.\r\n\r\nLouis Benet fonde en1839 son propre atelier de construction de machines à vapeur et lance son premier vapeur 100% français (coque et machine), le Phocéen II en 1841.\r\n\r\nSuccèdent 37 navires jusqu\'en 1851 dont le Narval, en 1844, premier bâtiment en fer et à vapeur de la Marine Nationale, le Philippe Auguste en 1845, premier navire en fer à roue destiné au transport des voyageurs en Méditerranée puis le Bonaparte en 1847, 1er bateau vapeur à hélice de La Méditerranée.', 5, 3, '2022-02-14 08:14:54'),
(13, '1851 – 1916 Les Messageries Maritimes', 'Ruiné par la révolution de 1848 et la crise économique, Louis Benet cède son chantier à La Compagnie des Services Maritimes des Messageries Nationales. Cette dernière prend le nom de Messageries Impériales en 1853, pour devenir en 1871 La Compagnie des Messageries Maritimes. \r\n\r\nLes Messageries ont pour fonction d\'assurer les lignes commerciales et les lignes postales subventionnées par l\'Etat.\r\n\r\nArmand Behic, président du Conseil d’administration, entreprend un vaste plan de modernisation du chantier en collaboration avec l\'ingénieur Dupuis De Lome.\r\n\r\nEn 1852, le Periclès, 1er navire des Messageries est lancé sous la direction de J.E.Vence.\r\n\r\nL\'ingénieur Victor Delacour nommé directeur des travaux en 1854, modernise le chantier avec la création d\'ateliers et d\'une halle de la mécanique et de la chaudronnerie.  \r\n\r\nJusqu\'en 1864, il est à l\'origine d\'une vingtaine de navires : Le Danuble en 1855, L\'Hermus, La Navarre, L\'Impératrice en 1860, Le Säid, Le Cambodge...\r\n\r\nLe site s\'agrandit de 3 à 11hectares et emploie 3500 ouvriers.\r\n\r\nDelacour décide alors la construction de la Cité ouvrière dès 1855, La cité Notre-Dame des Victoires, 24 maisons de 8 logements qui pourront abriter 800 personnes.\r\n\r\nLa construction du premier bassin de radoub de 1865 à 1869, ouvre de nouvelles perspectives avec les activités de construction et réparation de navires mis à sec d\'environ 100m de long. Il sera agrandi à 2 reprises afin d\'être adapté à l\'évolution des tailles des navires.\r\n\r\nA partir de 1871, les Messageries, désormais Maritimes, bénéficient de l\'essor des nouvelles lignes commerciales liées à l\'expansion coloniale : Algérie en 1854, Mer Noire en 1855 après la guerre de Crimée, Indochine en 1860, Shanghai via le canal de Suez en 1869, Australie en 1882, Amérique du sud..\r\n\r\nFace à la concurrence du chemin de fer, la compagnie est contrainte à modifier et réduire sa politique d\'expansion.\r\n\r\n \r\n\r\nEn 1914, le chantier participe à l\'effort de guerre en produisant canons, obus, et pièces d\'artillerie. Il assure les réparations des navires endommagés. \r\n\r\nLa voie ferrée du Batignolles créée en 1887, qui s\'arrêtait au niveau du Musée, est prolongée jusqu\'au chantier en 1917 pour l\'acheminement du matériel de guerre.\r\n\r\nLes navires sont réquisitionnés par l\'armée pour l\'acheminement des troupes (Le Sontay en 1907, L\'André Lebon en 1913..).', 5, 3, '2022-02-14 08:14:43'),
(14, '1916 La SPCN: La société provençale de constructions navales', 'Le chantier  devient la Société Provençale de Constructions navales en 1916.\r\n\r\nEn 1920, les chantiers s\'étendent sur 14 hectares, emploient 2 300 ouvriers pour 11000 habitants.   \r\n\r\nEntre 1925 et 1935, des paquebots luxueux sont construits en grande série, à deux et trois cheminées (Le Leconte de Lisle en 1922, Le Champollion en 1924, Le Mariette pacha en 1925 ), munis de moteurs à propulsion diesel sulzer 2 temps (L\'Eridan II en 1928), à cheminées carrées\r\n\r\n( paquebot nautonaphte Le Jean Leborde en 1929, Le Maréchal Joffre en 1931).\r\n\r\nLe règne de la vapeur est terminé.\r\n\r\nDe 1925 à 1937  La SPCA,  Société Provençale de Constructions Aéronautiques,  Filiale de la SPCN, produit des engins aéronautiques, des hydravions comme Les Météores.', 5, 3, '2022-02-14 08:14:21'),
(15, '1940 Les CNC  Les chantiers navals de La Ciotat', 'Jean Marie Terrin rachète les chantiers mais l\'activité se ralentie à l\'annonce de la 2ème guerre mondiale. Le site subit l\'occupation allemande à partie de 1942.\r\n\r\nA la veille du débarquement des alliés en août 1944, les bombardements allemands endommagent lourdement les ateliers, les navires sont coulés. Seule La Marseillaise, lancée sous le nom de Maréchal Pétain en juin 1944, échappe au sabordage et sera mise en service à La Ciotat en juin 1949 sous son nouveau nom de baptême.\r\n\r\nDès 1948, les nombreux travaux de reconstructions et de déminage commencent. \r\n\r\n \r\n\r\nLa production s\'oriente désormais vers les pétroliers et transporteur de gaz GPL/GNL méthanier.\r\n\r\nles chantiers lancent en 1953, leur premier pétrolier, l\'Olympic Splendour et leur premier méthanier, le Butagaz. \r\n\r\n\r\nC\'est le début d\'une période faste qui se traduit par la création d\'installations importantes de 1959 à 1962 pour répondre à la demande croissante des amateurs : \r\n\r\n-Création de La Grande Forme de 360m de long et 60 m de large, équipée d\'une grue roulante de 250 t et 2 portiques de 500 t et 650t en 1968.\r\n\r\n-Modification de l\'entrée du port, création d\'une digue artificielle.\r\n\r\n \r\n\r\nDe 1974 à 1977, l\'agrandissement des infrastructures est réalisé sur la mer avec la plate-forme artificielle Sahara de 9 hectares. L\'édifice intègre une digue accessible au public.\r\n\r\nLa cité ouvrière est démolie pour des besoins d\'extension des terrains en 1975. D\'autres quartiers voient le jour, Fardeloup, La Treille..\r\n\r\n \r\n\r\nLa CNC s\'étend sur 34 hectares et compte 6000 ouvriers et 2000 sous-traitants au début de l’année 1976 pour 32000 habitants.\r\n\r\nLe plus gros navire construit dans le monde, L\'Esso-Westernport, un transporteur de gaz de 100 000 m3 est mise en eau le 16 juillet 1976.\r\n\r\nLes chocs pétroliers de 1973 et 1979 fragilisent le secteur de la construction navale et conduisent aux premiers licenciements fin1978.\r\n', 5, 3, '2022-02-14 08:14:03'),
(17, '1982 La Normed', 'Face à la crise, les chantiers de La Ciotat sont regroupés avec ceux de Dunkerque et de La Seyne-sur-Mer au sein d\'une société unique, la société du Chantier du Nord et de la Méditerranée, la Normed.\r\n\r\nEn juin 1986, les pouvoirs publics annoncent l\'arrêt des subventions contraignant La Normed à déposer son bilan. \r\n\r\nEn 1987, les deux derniers navires construits à La Ciotat sont lancés. Le Oaxax, le 19 septembre, et du Monterrey, le 19 décembre. Ce dernier sera retenu jusqu\'au 14 juillet 1989 par une centaine de salariés, le collectif des 105, qui proteste contre la fermeture du site.', 5, 3, '2022-02-14 08:13:30'),
(18, '1988 - 1994 Période de conflits', 'Le 31 juillet 1988, le chantier naval ferme et reste occupé jours et nuits par le collectif qui s\'oppose au projet de construction d\'une marina et au transfert du matériel.\r\n\r\nDes plans de reprises suivront sans succès : La Lexmar, B.Tapie...\r\n\r\nUn accord conclu en mars 1995 met fin à l\'occupation du site.', 5, 3, '2022-02-14 08:13:16'),
(19, 'Introduction', 'Le parc national des Calanques est un parc national français, couvrant les calanques de Marseille, dans le département des Bouches-du-Rhône, au cœur de la métropole d\'Aix-Marseille-Provence. Créé en 2012, il est le premier parc national périurbain d\'Europe à la fois terrestre et marin1.\r\n\r\nIl s\'étend sur un massif littoral constitué de falaises calcaires et de poudingue, de criques et d\'îlots qui constituent des écosystèmes relativement préservés pour de nombreuses espèces vivantes. Le plus haut sommet du parc national des Calanques est le mont Carpiagne (645 m) au cœur du massif de Saint-Cyr2. Depuis plus d\'un siècle, le site est fréquenté par de nombreux usagers : promeneurs, randonneurs, grimpeurs, pêcheurs et plongeurs notamment.', 5, 4, '2022-02-14 08:13:07'),
(20, 'Géologie', 'Le massif des Calanques est essentiellement constitué de roches calcaires datant du Mésozoïque (250 à 65 millions d\'années). Ces roches sédimentaires ont été formées pour la plupart dans les mers chaudes du Jurassique et surtout du Crétacé, par l\'accumulation de particules minérales et organiques compactées et cimentées entre elles. Les fossiles d\'organismes marins (ex. algues, oursins, rudistes) témoignent de cette origine marine. À la suite de mouvements tectoniques (formations des Pyrénées puis des Alpes)[réf. nécessaire], les roches ont ultérieurement émergé. Vers 1,5 Ma, un dernier mouvement tectonique surélève toute la région.\r\n\r\nLe nord du massif de Marseilleveyre et le massif de Carpiagne sont constitués de roches plus anciennes (Jurassique). Dans la majorité du massif et des îles, le calcaire à faciès urgonien (blanc, à rudistes et formé dans une mer tropicale peu profonde) marque le paysage. À l\'est de Cassis, le massif de Canaille est constitué de roche récifale et deltaïque datant de la fin du Crétacé.\r\n\r\nÀ plus petite échelle, le découpage du littoral sous forme de dizaines de calanques a été causé par l\'érosion des cours d\'eau, creusant des vallons jusqu\'au débouché à la mer, et aux variations ultérieures du niveau de la mer. La roche calcaire très fissurée et des phénomènes karstiques ont formé un nombre important de grottes et cavités souterraines (ex. Saint-Michel d\'Eau douce), sources (ex. Port-Miou et Bestouan à Cassis).\r\n\r\n', 5, 4, '2022-02-14 08:12:58'),
(21, 'La Biodiversité', 'La Flore\r\n\r\nL\'étude de l\'habitat effectuée dans le cadre du programme européen Réseau Natura 2000 permet de recenser plus de vingt-six milieux naturels, auxquels il faut ajouter quarante habitats mixtes. On a identifié neuf cents espèces végétales environ, et quatre-vingt trois espèces protégées.\r\n\r\nLa Faune\r\n\r\nParmi les espèces d\'oiseaux, l\'aigle de Bonelli, le puffin cendré, et le puffin de Méditerranée fréquentent les lieux. On dénombre douze espèces de reptiles, quatre d\'amphibiens, et parmi les mammifères, le rhinolophe a son refuge dans les cavités karstiques du massif.\r\n\r\nMilieu Marin\r\n\r\nLe relief sous-marin est constitué principalement par deux types d\'écosystèmes : le coralligène sur les tombants et l\'herbier à posidonie sur les replats d\'érosion.\r\n\r\nPrès d\'une soixantaine d\'espèces végétales et animales bénéficient de l\'attention des chercheurs ou d\'un statut de protection : l\'algue verte Caulerpa prolifera, l\'algue rouge Lithophyllum lichenoïdes, posidonie, corail rouge, dentelle de Vénus, spondyle pied d\'âne, datte de mer, grande nacre, triton (Charonia lampas). Parmi les crustacés comestibles, la petite cigale de mer et la grande cigale, la grande araignée de mer, la langouste rouge et le homard européen. L\'oursin diadème et la figue de mer5. La grande patelle semble avoir disparu, en raison de sa récolte excessive.\r\n\r\nCertaines espèces de poisson sont menacées : le mérou brun, le corb, le denti, l\'hippocampe moucheté.\r\n\r\nParmi les espèces parfois rencontrées dans les eaux côtières : des tortues, des dauphins. Le dernier phoque moine des Calanques a été tué vers 1945.', 5, 4, '2022-02-14 08:12:44'),
(22, 'Promenade et randonnée/', 'Le massif attire toute l\'année de nombreux visiteurs, randonneurs et grimpeurs grâce au vaste choix de sentiers suspendus entre la mer et les reliefs tortueux. Le GR 51-98 traverse le massif des Calanques d\'ouest en est. Cet espace préservé à proximité de villes importantes cristallise les problèmes de surfréquentation en milieu naturel fragile. Les chemins sont escarpés, certains passages sont risqués pour un marcheur inexpérimenté, d\'autres sont vertigineux et dangereux en cas de mistral (risque de déséquilibre sur les crêtes en raison du vent). Aucun point d\'eau n\'existe à l\'intérieur du massif et l\'ombre est rare.\r\n\r\nLes calanques de Callellongue, Sormiou, Morgiou sont habitées et accessibles par la route. Il est possible à partir de Callellongue et de Luminy de rejoindre les transports publics, exploités par la Régie des transports métropolitains. Cassis est également un point de départ important pour visiter les calanques en partant de Port-Miou.\r\n\r\nDu 1er juin au 30 septembre, en raison des risques d\'incendie, l\'accès aux massifs sensibles de l\'ensemble du département des Bouches-du-Rhône est réglementé. Les informations sur les accès aux massifs, mises à jour quotidiennement, sont accessibles sur le site internet de la Préfecture des Bouches-du-Rhône', 5, 4, '2022-02-14 08:12:21'),
(23, 'Escalade', 'Les falaises calcaires des Calanques sont un site d\'escalade dès la fin du XIXe siècle, marqué par l\'ascension en 1879 du sommet de la Grande Candelle par le consul britannique Francis W. Mark. Dès cette époque, elles deviennent un terrain d\'entrainement à l\'alpinisme pour les Excursionnistes marseillais et la section locale du Club alpin. À partir des années 1900, les lieux reculés sont explorés (Val Vierge, Devenson, Castelvieil) et les principaux sommets et aiguilles sont gravis : rocher des Goudes (1900), aiguille de Sugiton (1903), aiguille de Sormiou (1904). Dans les années 1920 de grandes voies sont ouvertes le long des grandes fissures et des arêtes, telles l’arête de Marseille (1927) ou l’arête de la Cordée (1928)12.\r\n\r\nÀ partir des années 1930, des voies difficiles sont ouvertes et des alpinistes marseillais comme Édouard Frendo (1910-1968), Gaston Rébuffat (1921-1985), Georges Livanos (1923-2004) s\'illustreront dans de célèbres ascensions alpines. Ultérieurement, des voies extrêmement techniques sont ouvertes en escalade artificielle sur des parois compactes ou déversantes, notamment à la grotte de l\'Ermite, aux toits de Sugiton et à la paroi de la Concave.\r\n\r\nÀ partir des années 1960, c\'est l\'essor de l\'escalade libre avec l\'influence de grimpeurs américains (Hemming, Robbins, Harlin) marquée à En-Vau par l\'ouverture del\'éperon des Américains. À partir des années 1970-1980, de très nombreuses voies sont équipées pour l\'escalade sportive et la réputation des Calanques s\'étend en France et en Europe. Des grimpeurs français s\'illustrent dans des voies libres de plus en plus difficiles, comme Patrick Edlinger dans Nymphodalle (7c, 1979), jusqu\'au neuvième degré avec François Legrand dans Robi in The Sky (9a, 2000). L\'équipement de nouvelles voies se poursuit les décennies suivantes, financé par les clubs et collectivités locales. La création du parc national entraîne l\'interdiction d\'équiper de nouvelles voies ainsi que des mesures visant à protéger la faune et la flore (sentiers d\'accès, falaises de nidification).\r\n\r\nAvec environ 3 400 voies répertoriées (2 400 sportives et 1 000 d\'aventure), des accès faciles et un climat favorable en toutes saisons, les Calanques sont aujourd\'hui l\'un des plus célèbres sites d\'escalade en France et en Europe.\r\n\r\n', 5, 4, '2022-02-14 08:11:52'),
(24, 'Plongée sous-marine', 'Le littoral des Calanques est un lieu réputé pour la plongée sous-marine.\r\n\r\nLa grotte Cosquer est située au-dessus du niveau de la mer, sous la pointe de Morgiou, mais son entrée est à -37 m de fond, un long boyau remontant vers la grotte. À la suite d\'un accident mortel de plongée, cette entrée est désormais interdite. Ses parois sont ornées de peintures et de gravures datant de 27 000 à 19 000 ans av. J.-C. et représentent des animaux terrestres (bisons, bouquetins, chevaux…) aussi bien que marins (phoques, pingouins, etc.) L\'entrée aujourd\'hui immergée était située à près de cent mètres au-dessus du niveau de la mer à l\'époque où les dessins et empreintes furent exécutés, pendant la régression marine provoquée par la dernière glaciation.\r\n\r\nDevant le massif des Calanques de Marseille, deux épaves romaines ont été fouillées lors d\'une des premières grandes campagnes de la Calypso du Commandant Cousteau, au pied de l\'îlot du Grand-Congloué. Récemment a été retrouvée au pied de l\'île Jarre l\'épave du navire qui apporta à Marseille la peste de 1720.\r\n\r\nÀ un demi-mille à l\'est de l\'île de Riou, devant le massif, l\'association Aéro-Relic et la société marseillaise Comex ont en 2003 remonté à la surface l\'épave de l\'avion militaire de type Lockheed P-38 Lightning du célèbre écrivain-aviateur Antoine de Saint-Exupéry, disparu le 31 juillet 1944 lors d\'une mission de reconnaissance préparant le débarquement des Alliés (15 août) sur les côtes de Provence.\r\n\r\nLes amateurs de plongée peuvent descendre visiter l\'épave du paquebot Liban, échoué contre le tombant de l\'île Maïre, à l\'extrémité ouest du massif.\r\n\r\n', 5, 4, '2022-02-14 08:11:42'),
(25, 'Nuisances et pollutions', 'Le parc national a la responsabilité de mettre en place un programme d\'aménagement reposant sur des mesures juridiques, techniques et pédagogiques permettant d\'assurer la préservation de l\'habitat et de la biodiversité.\r\n\r\nprévention et protection contre les incendies, le site des Calanques restant très sensible au feu et ayant subi de nombreux incendies ces trente dernières années ;\r\nprotection de la faune (notamment l\'aigle de Bonelli, l\'oursin diadème, le mérou ou le molosse de Cestoni) et de la flore (notamment les herbiers de posidonie ou les genêts de Lobel) s\'appuyant sur des partenariats avec les professionnels de la pêche et les associations d\'usagers ;\r\namélioration de l’accueil des visiteurs tout en prévenant les dégradations, par un balisage et l’aménagement de l’espace ;\r\nmise en œuvre d\'actions pédagogiques à destination des différents publics visant à améliorer la qualité des eaux marines et des espaces terrestres, à encourager les « éco-gestes », par exemple en matière d’ancrage et de rejets divers.', 5, 4, '2022-02-14 08:11:17');

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `nom` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `nom`) VALUES
(1, 'Histoire de La Ville'),
(2, 'Berceau du Cinema'),
(3, 'Chantier Naval'),
(4, 'Parc Nationnal des Calanques');

-- --------------------------------------------------------

--
-- Structure de la table `commentaires`
--

CREATE TABLE `commentaires` (
  `id` int(11) NOT NULL,
  `titre` text NOT NULL,
  `commentaire` varchar(1024) NOT NULL,
  `id_article` int(11) NOT NULL,
  `id_utilisateur` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `commentaires`
--

INSERT INTO `commentaires` (`id`, `titre`, `commentaire`, `id_article`, `id_utilisateur`, `date`) VALUES
(1, '', 'test', 1, 5, '2022-02-10 13:42:32'),
(2, 'Titre 1', 'test', 1, 5, '2022-02-15 11:43:21'),
(3, 'Titre 1', 'test', 3, 5, '2022-02-15 11:53:12'),
(4, 'Ceci est un titre', 'CECI EST UN COMMENTAIRE', 5, 5, '2022-02-16 06:47:35'),
(5, 'Titre', 'Commentaire', 1, 12, '2022-02-16 06:52:22');

-- --------------------------------------------------------

--
-- Structure de la table `droits`
--

CREATE TABLE `droits` (
  `id` int(11) NOT NULL,
  `nom` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `droits`
--

INSERT INTO `droits` (`id`, `nom`) VALUES
(1, 'utilisateur'),
(42, 'modérateur'),
(1337, 'administrateur');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `id` int(11) NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `id_droits` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `login`, `password`, `email`, `id_droits`) VALUES
(2, 'Alex', '$2y$10$DVnnSLIxC7m1f2837nR1suus.J2pflvT3kbG.ixrrGpgSH4kr9q2a', 'alexandre.daumail@laplateforme.io', 42),
(3, 'sirine', '$2y$10$ouTA397YMrjfd2SoOT51MuA6CaQxDiV22wcS/QC6mlxNPydHly4QK', 'sirine-djaouel@laplateforme.io', 42),
(5, 'olivier', '$2y$10$LPPWUK4weknWtfVVUCyybuEz7UV375C9aeZ/MMNsOeHEiD2YRikBS', 'olivier.d-agostino@laplateforme.io', 1337),
(8, 'meline', '$2y$10$7gY3fIcVWMFbU2dZiftPiumTaZNDJvKoNRuMwfKwxBiDeNtYT2i5m', 'melin@laplateforme.io', 1),
(11, 'MELINE', 'Meline,Sirine,Alex,Oliv MVP', 'cri@cri.fr', 1),
(12, 'login', 'Meline,Sirine,Alex,Oliv MVP', 'email@email.fr', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `droits`
--
ALTER TABLE `droits`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `commentaires`
--
ALTER TABLE `commentaires`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
