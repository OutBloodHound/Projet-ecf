-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Hôte : mysql_blog
-- Généré le : mer. 25 mars 2026 à 13:52
-- Version du serveur : 8.0.45
-- Version de PHP : 8.3.26

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
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `id_article` int NOT NULL,
  `date_sortie` date NOT NULL,
  `image` varchar(50) NOT NULL,
  `titre` varchar(50) NOT NULL,
  `contenu` text NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id_article`, `date_sortie`, `image`, `titre`, `contenu`, `user_id`) VALUES
(1, '2026-03-25', 'Armageddon.webp', 'Le siège d\'Helsreach', 'Le siège d’Helsreach est un épisode majeur de la Troisième Guerre d’Armageddon dans l’univers de Warhammer 40,000, raconté dans le roman Helsreach. Il met en scène la défense désespérée de la cité-ruche Helsreach face à une invasion massive des Orks menés par Ghazghkull Thraka.\r\n\r\nContexte : Armageddon en flammes\r\n\r\nArmageddon est une planète industrielle cruciale pour l’Imperium de l’Humanité. Lorsque les Orks lancent leur invasion, la planète devient un champ de bataille colossal. Helsreach, une immense cité-ruche portuaire, est particulièrement stratégique : elle abrite des docks, des usines et des infrastructures vitales.\r\n\r\nTrès vite, il devient évident que la ville sera une cible prioritaire. Sa chute signifierait non seulement une perte logistique majeure, mais aussi un coup moral terrible pour l’Imperium.\r\n\r\nL’arrivée de Grimaldus\r\n\r\nLe protagoniste principal est Grimaldus, Réclusiarque des Black Templars. Contrairement à l’image traditionnelle du Space Marine sûr de lui et héroïque, Grimaldus est hanté par le poids de son rôle. Il se sent indigne de succéder à son prédécesseur légendaire et doute de sa capacité à inspirer les hommes.\r\n\r\nIl arrive à Helsreach avec une petite escouade de Black Templars. Leur nombre est dérisoire face à l’ampleur de la menace, mais leur présence est censée renforcer la foi et le moral des défenseurs.\r\n\r\nTrès vite, Grimaldus comprend que la bataille sera perdue d’un point de vue strictement militaire. Dès lors, sa mission devient presque spirituelle : tenir, coûte que coûte, et donner un sens au sacrifice.\r\n\r\nLes défenseurs d’Helsreach\r\n\r\nLa ville est défendue par un mélange hétéroclite de forces impériales :\r\n\r\nla Garde Impériale,\r\nles milices civiles,\r\nl’Adeptus Mechanicus,\r\net surtout les Titans de la Legio Invigilata.\r\n\r\nGrimaldus entre en contact avec plusieurs personnages humains, notamment le soldat Andrej, qui apporte une touche d’humanité et même d’humour dans ce contexte sombre. Ces interactions sont essentielles, car elles montrent comment un Space Marine perçoit les humains ordinaires — faibles physiquement, mais capables d’un courage extraordinaire.\r\n\r\nLes préparatifs\r\n\r\nAvant l’assaut, la ville se prépare dans une tension palpable. Les défenses sont organisées, les civils mobilisés, et la foi dans l’Empereur renforcée par les discours de Grimaldus.\r\n\r\nCelui-ci commence à évoluer : bien qu’il doute intérieurement, il comprend que son rôle n’est pas d’être parfait, mais d’être un symbole. Il adopte progressivement une posture plus assurée, devenant une figure centrale de la résistance.\r\n\r\nLe début de l’invasion\r\n\r\nL’attaque ork commence avec une brutalité écrasante. Des bombardements massifs s’abattent sur la ville, suivis de vagues d’assauts terrestres. Les Orks, fidèles à leur nature, privilégient la force brute et l’attaque frontale.\r\n\r\nLes premières lignes de défense tiennent, mais au prix de pertes importantes. Les combats sont constants, chaotiques et extrêmement violents. Chaque rue devient un champ de bataille.\r\n\r\nLes Titans impériaux entrent alors en action, affrontant d’énormes machines orks dans des duels titanesques. Ces affrontements sont spectaculaires, mais ils ne suffisent pas à inverser le cours de la guerre.\r\n\r\nL’enlisement et l’usure\r\n\r\nAvec le temps, la situation se dégrade. Les Orks sont trop nombreux. Les défenses cèdent progressivement. Les communications deviennent sporadiques, les renforts inexistants.\r\n\r\nLa guerre devient une lutte d’usure. Les défenseurs sont épuisés, blessés, démoralisés — mais continuent de se battre.\r\n\r\nGrimaldus, quant à lui, subit une transformation majeure. Il cesse de douter. Là où il voyait auparavant sa propre insuffisance, il comprend désormais que la foi ne repose pas sur la perfection, mais sur la persévérance.\r\n\r\nSes discours deviennent plus puissants, presque prophétiques. Il ne promet pas la victoire — il promet la dignité dans la mort.\r\n\r\nLes moments clés\r\n\r\nPlusieurs scènes marquent profondément le siège :\r\n\r\nLes combats urbains : chaque bâtiment devient une forteresse, chaque couloir un piège mortel.\r\nLa résistance des civils : des hommes et des femmes ordinaires prennent les armes, conscients qu’ils n’ont aucune chance de survie.\r\nLes Titans : leur chute progressive symbolise celle de la ville elle-même.\r\n\r\nMais le moment le plus marquant reste la défense du temple.\r\n\r\nLe Temple de l’Empereur Ascendant\r\n\r\nGrimaldus se retranche dans un immense temple dédié à l’Empereur. Ce lieu devient le symbole de la résistance finale.\r\n\r\nLes forces impériales y livrent une bataille désespérée. Les Orks attaquent sans relâche, et les défenseurs tombent les uns après les autres.\r\n\r\nC’est ici que Grimaldus atteint pleinement son rôle. Il devient une incarnation vivante de la foi impériale. Même face à l’anéantissement total, il refuse de céder.\r\n\r\nLe combat est brutal, intime, presque mythique. Le temple finit par tomber, mais pas sans un coût énorme pour les Orks.\r\n\r\nLa chute d’Helsreach\r\n\r\nFinalement, la ville est submergée. Les Orks envahissent les derniers bastions, détruisent les infrastructures et massacrent les survivants.\r\n\r\nMilitairement, c’est une défaite totale.\r\n\r\nMais stratégiquement, la résistance d’Helsreach a ralenti l’avancée ork. Elle a permis à d’autres régions d’Armageddon de se préparer et de survivre.\r\n\r\nDans l’univers de Warhammer 40,000, cela constitue une forme de victoire.\r\n\r\nLa survie de Grimaldus\r\n\r\nContre toute attente, Grimaldus survit. Gravement blessé, il est retrouvé sous les ruines.\r\n\r\nSa survie est presque miraculeuse. Lui qui doutait d’être digne devient une légende vivante.\r\n\r\nIl incarne désormais ce que signifie être un Black Templar : non pas un guerrier invincible, mais un symbole de foi et de sacrifice.\r\n\r\nThèmes et portée du récit\r\n\r\nLe siège d’Helsreach est bien plus qu’une simple bataille. Il explore plusieurs thèmes fondamentaux :\r\n\r\nLe sacrifice : la victoire n’est pas toujours possible, mais le sacrifice peut avoir un sens.\r\nLa foi : dans un univers sans espoir, la foi devient une arme.\r\nL’humanité : les simples humains, malgré leur fragilité, sont capables d’un courage immense.\r\nLa transformation personnelle : Grimaldus passe du doute à la certitude, non pas en devenant parfait, mais en acceptant son rôle.\r\nConclusion\r\n\r\nLe siège d’Helsreach est une tragédie héroïque. La ville tombe, ses défenseurs meurent en masse, et pourtant, leur combat n’est pas vain.\r\n\r\nC’est une histoire où la défaite devient légendaire, où la survie n’est pas garantie, et où la grandeur se mesure à la capacité de tenir face à l’inévitable.\r\n\r\nEt surtout, c’est l’histoire d’un homme qui apprend que le véritable courage ne consiste pas à croire en la victoire… mais à se battre même lorsqu’elle est impossible.', 1),
(2, '2026-03-25', 'scholaProgenium.webp', 'La Schola Progenium et la formation de commissaire', 'Dans l’univers brutal de Warhammer 40,000, la Schola Progenium est une institution impériale essentielle à la survie de l’Imperium. Elle recueille et forme les orphelins des serviteurs morts au service de l’Empereur — soldats, officiers, administrateurs ou héros tombés au combat. Ces enfants, appelés « Progena », ne sont pas simplement éduqués : ils sont façonnés pour devenir des outils parfaits de l’Imperium.\r\n\r\nUne éducation sans compassion\r\n\r\nDès leur plus jeune âge, les enfants de la Schola Progenium sont soumis à une discipline extrême. Toute trace d’individualité est systématiquement écrasée au profit de la loyauté absolue envers l’Empereur et l’Imperium. L’enseignement est à la fois intellectuel, militaire et religieux.\r\n\r\nLes Progena apprennent l’histoire impériale, la stratégie, le maniement des armes, mais aussi la théologie impériale. La foi en l’Empereur n’est pas une option : elle est inculquée comme une vérité incontestable. Les punitions sont sévères, souvent physiques, et les échecs ne sont pas tolérés.\r\n\r\nCe système impitoyable vise un objectif clair : produire des individus incorruptibles, capables de résister à la peur, à la douleur, et même aux tentations du Chaos.\r\n\r\nDes destins tracés\r\n\r\nÀ la fin de leur formation, les élèves sont répartis selon leurs aptitudes. La Schola Progenium alimente plusieurs branches importantes de l’Imperium :\r\n\r\nLes Sœurs de Bataille (Adepta Sororitas),\r\nLes Tempestus Scions (forces spéciales de la Garde Impériale),\r\nLes administrateurs impériaux,\r\nEt surtout les Commissaires.\r\n\r\nChaque élève est évalué en fonction de sa force mentale, de sa discipline et de sa capacité à diriger ou obéir. Ceux qui montrent une volonté inébranlable et une capacité à imposer l’autorité sont souvent orientés vers le rôle de Commissaire.\r\n\r\nLe rôle des Commissaires\r\n\r\nLes Commissariat sont parmi les figures les plus redoutées de l’Imperium. Assignés aux régiments de la Garde Impériale, leur mission principale est de maintenir la discipline, le moral et la loyauté des troupes.\r\n\r\nUn Commissaire n’est pas seulement un officier politique : il est à la fois juge, jury et exécuteur. Il a le pouvoir d’exécuter sur-le-champ tout soldat coupable de lâcheté, de désertion ou de trahison. Cette autorité absolue en fait un symbole à la fois de peur et de respect.\r\n\r\nMais leur rôle ne se limite pas à la répression. Les Commissaires sont aussi des leaders charismatiques, capables d’inspirer les troupes dans les situations les plus désespérées. Leur présence peut transformer une unité en déroute en une force prête à se battre jusqu’à la mort.\r\n\r\nUne formation dédiée à l’autorité\r\n\r\nLes futurs Commissaires reçoivent un entraînement spécifique au sein de la Schola Progenium. Ils apprennent à commander, à lire les comportements humains, et à imposer leur volonté. On leur enseigne également l’art de la rhétorique, afin qu’ils puissent motiver les troupes par des discours puissants.\r\n\r\nCependant, cet apprentissage est toujours accompagné d’une dureté extrême. Les élèves sont mis à l’épreuve dans des simulations violentes, où ils doivent prendre des décisions impossibles : sacrifier quelques-uns pour sauver la majorité, punir leurs camarades, ou choisir entre loyauté et compassion.\r\n\r\nCes exercices visent à éliminer toute hésitation. Un Commissaire ne doit jamais douter, car le doute peut mener à la désobéissance — et donc à la mort de milliers de soldats.\r\n\r\nDes figures emblématiques\r\n\r\nCertains Commissaires deviennent des légendes au sein de l’Imperium. Parmi eux, Sebastian Yarrick est sans doute l’un des plus célèbres. Héros de la guerre d’Armageddon, il incarne parfaitement l’idéal du Commissaire : inflexible, courageux et profondément dévoué.\r\n\r\nUn autre exemple notable est Ibram Gaunt, qui se distingue par une approche plus humaine. Bien qu’il reste fidèle aux principes du Commissariat, il développe une relation de confiance avec ses hommes, prouvant qu’un Commissaire peut inspirer sans recourir systématiquement à la terreur.\r\n\r\nCes figures montrent que, malgré leur formation rigide, les Commissaires peuvent varier dans leur manière de diriger.\r\n\r\nUne existence au service de l’Imperium\r\n\r\nUne fois assignés à un régiment, les Commissaires vivent constamment au front. Ils partagent les conditions de vie des soldats, mais restent à part, en raison de leur rôle particulier. Ils doivent être prêts à affronter l’ennemi, mais aussi à se retourner contre leurs propres alliés si nécessaire.\r\n\r\nCette position crée une tension permanente. Les soldats peuvent craindre leur Commissaire autant que l’ennemi, mais ils savent aussi que sa présence garantit une certaine stabilité.\r\n\r\nLa loyauté d’un Commissaire va uniquement à l’Imperium. Il ne peut pas se permettre de favoritisme, d’amitié ou de faiblesse. Toute relation personnelle est secondaire face à sa mission.\r\n\r\nUne machine implacable\r\n\r\nLa Schola Progenium et le Commissariat illustrent parfaitement la nature de l’Imperium : un régime autoritaire, prêt à sacrifier l’individu pour la survie de l’ensemble.\r\n\r\nLes enfants qui entrent à la Schola n’ont pas le choix de leur destin. Ils sont transformés en instruments de guerre, privés de liberté mais investis d’un rôle crucial. Les Commissaires, en particulier, représentent l’aboutissement de ce processus : des êtres entièrement dédiés à l’ordre, à la discipline et à la foi.\r\n\r\nConclusion\r\n\r\nLa Schola Progenium est bien plus qu’une école : c’est une forge où sont créés les défenseurs les plus fanatiques de l’Imperium. En produisant des Commissaires, elle garantit que la Garde Impériale reste une force cohérente, capable de tenir face aux horreurs de la galaxie.\r\n\r\nDans un univers où la peur, la corruption et le chaos sont omniprésents, les Commissaires sont à la fois des gardiens et des bourreaux. Ils incarnent une vérité fondamentale de Warhammer 40,000 : pour survivre, l’humanité doit parfois renoncer à son humanité.', 1),
(3, '2026-03-25', 'Macragge.jpg', 'La bataille de Macragge', 'La bataille de Macragge est l’un des affrontements les plus emblématiques de l’univers de Warhammer 40,000. Elle oppose les forces de l’Imperium, menées par les Ultramarines, à une invasion dévastatrice de Tyranides, une race xéno biologique dont l’unique objectif est la consommation totale de toute forme de vie.\n\nCet événement est principalement lié à l’arrivée de la flotte-ruche Hive Fleet Behemoth, la première grande incursion tyranide dans la galaxie connue. Cette flotte représente une menace sans précédent : une entité vivante gigantesque, composée de milliards de créatures interconnectées par une conscience collective.\n\nMacragge : monde forteresse\n\nLa planète Macragge est le monde natal des Ultramarines, l’un des chapitres de Space Marines les plus puissants et disciplinés de l’Imperium. Gouvernée selon les principes de Roboute Guilliman, Macragge est une planète hautement organisée, avec des défenses parmi les plus solides de l’Imperium.\n\nSa perte serait catastrophique, non seulement sur le plan militaire, mais aussi symbolique. Elle représente l’idéal impérial d’ordre, de discipline et de civilisation.\n\nL’approche de la flotte-ruche\n\nLorsque la flotte-ruche Behemoth entre dans le système de Macragge, elle dévore tout sur son passage. Les mondes périphériques tombent rapidement, incapables de résister à la masse biologique des Tyranides.\n\nLes Ultramarines comprennent vite qu’ils ne peuvent pas affronter l’ennemi de manière conventionnelle. Les Tyranides ne craignent ni la mort ni la douleur, et chaque perte est rapidement remplacée. Leur stratégie repose sur le nombre, l’adaptation et une coordination parfaite.\n\nLa guerre spatiale\n\nLa bataille commence dans l’espace. La flotte impériale, dirigée par les Ultramarines, tente de stopper l’avancée tyranide avant qu’elle n’atteigne la planète.\n\nLes combats sont d’une intensité extrême. Les vaisseaux tyranides, organismes vivants capables de se régénérer, se jettent littéralement sur les flottes impériales. Malgré leur discipline et leur puissance de feu, les forces impériales subissent des pertes massives.\n\nCependant, ils parviennent à infliger des dégâts significatifs à la flotte-ruche. Cette résistance ralentit l’invasion, mais ne peut pas l’arrêter complètement.\n\nL’assaut sur Macragge\n\nFinalement, les Tyranides atteignent la planète. Ils lancent une invasion massive, déployant des vagues infinies de créatures : hormagaunts, carnifex, et autres horreurs biomorphiques.\n\nLes défenses planétaires entrent en action. Les forteresses polaires, véritables bastions imprenables, deviennent les points clés de la résistance.\n\nLes Ultramarines et les forces impériales livrent une guerre totale. Chaque mètre de terrain est disputé. Les Tyranides avancent sans relâche, submergeant les défenses par leur nombre.\n\nLes forteresses polaires\n\nLe cœur de la bataille se concentre sur les deux forteresses polaires de Macragge, situées aux pôles nord et sud. Ces bastions contiennent des armes capables de détruire des flottes entières, mais ils deviennent aussi des cibles prioritaires pour les Tyranides.\n\nAu pôle nord, la situation devient rapidement désespérée. Les défenseurs sont submergés. Malgré une résistance héroïque, la forteresse finit par tomber. Sa destruction marque un tournant critique dans la bataille.\n\nAu pôle sud, les Ultramarines concentrent leurs efforts. Ils savent que s’ils perdent cette position, la planète est condamnée.\n\nUne guerre d’anéantissement\n\nLes combats au pôle sud sont parmi les plus violents jamais enregistrés. Les Tyranides lancent attaque après attaque, adaptant constamment leurs formes pour contrer les défenses impériales.\n\nLes Ultramarines, fidèles à leur doctrine, maintiennent une discipline parfaite. Ils exploitent chaque avantage tactique, chaque fortification, chaque arme disponible.\n\nMalgré cela, les pertes sont terribles. Les Space Marines eux-mêmes sont submergés par moments, contraints de combattre au corps à corps contre des créatures monstrueuses.\n\nLe sacrifice et la victoire\n\nDans un acte désespéré, les forces impériales déclenchent les défenses ultimes de la forteresse polaire sud. Cela entraîne la destruction massive des forces tyranides présentes sur la planète.\n\nParallèlement, les restes de la flotte impériale parviennent à détruire les éléments centraux de la flotte-ruche Behemoth. Privés de leur coordination, les Tyranides restants deviennent désorganisés et sont progressivement éliminés.\n\nLa victoire est obtenue au prix d’énormes sacrifices. Une grande partie des forces impériales est détruite, et la planète elle-même est gravement endommagée.\n\nLes conséquences\n\nLa bataille de Macragge marque un tournant dans l’histoire de l’Imperium. Elle révèle l’ampleur de la menace tyranide et prouve que ces créatures représentent un danger existentiel pour la galaxie.\n\nPour les Ultramarines, cette victoire est à la fois un triomphe et une tragédie. Leur chapitre subit des pertes sévères, notamment au sein de la Première Compagnie, presque entièrement anéantie lors des combats.\n\nCependant, leur résistance renforce leur réputation. Ils deviennent un symbole de discipline et de résilience face à une menace inimaginable.\n\nThèmes et signification\n\nLa bataille de Macragge illustre plusieurs thèmes centraux de Warhammer 40,000 :\n\nL’adaptation contre la discipline : les Tyranides évoluent constamment, tandis que les Ultramarines reposent sur une stratégie rigoureuse.\nLe sacrifice : la victoire n’est possible qu’au prix de pertes immenses.\nLa survie de l’humanité : face à une menace qui ne peut être négociée, seule la guerre totale est envisageable.\nConclusion\n\nLa bataille de Macragge est une victoire coûteuse mais essentielle pour l’Imperium. Elle prouve que même face à une force apparemment invincible, la discipline, la stratégie et le sacrifice peuvent faire la différence.\n\nMais elle sert aussi d’avertissement : les Tyranides ne sont pas une menace isolée. La flotte-ruche Behemoth n’était que la première vague d’un danger bien plus vaste.\n\nDans l’univers de Warhammer 40,000, cela signifie une chose : la guerre ne fait que commencer.', 1),
(4, '2026-03-25', 'blackTemplars.jpg', 'Les Black Templars et leur croisade éternelle', 'Dans l’univers de Warhammer 40,000, les Black Templars sont l’un des chapitres de Space Marines les plus fanatiques et redoutés de l’Imperium. Héritiers des Imperial Fists, ils se distinguent par leur ferveur religieuse extrême, leur haine absolue des ennemis de l’Humanité et leur engagement dans une guerre sans fin : la Croisade Éternelle.\n\nOrigines et héritage\n\nLes Black Templars trouvent leur origine après l’Horus Heresy, lorsque les légions de Space Marines furent divisées en chapitres plus petits pour éviter toute concentration excessive de pouvoir.\n\nIls descendent directement de Rogal Dorn, Primarque des Imperial Fists. Leur premier Haut Maréchal, Sigismund, fut le champion de l’Empereur et l’un des plus grands duellistes de son époque.\n\nC’est Sigismund qui donna naissance à la tradition centrale du chapitre : une croisade perpétuelle contre les ennemis de l’Imperium.\n\nUne foi absolue\n\nContrairement à de nombreux autres chapitres de Space Marines, les Black Templars vénèrent ouvertement l’Empereur comme une divinité. Là où certains voient un dirigeant ou un symbole, eux voient un dieu.\n\nCette foi intense influence tous les aspects de leur culture :\n\nIls rejettent souvent les psykers, qu’ils considèrent avec méfiance.\nIls privilégient le combat rapproché, vu comme une forme de purification.\nIls vivent selon des codes chevaleresques inspirés d’ordres religieux guerriers.\n\nLeur cri de guerre, leurs serments et leurs rituels renforcent cette identité. Chaque bataille est perçue comme un acte sacré.\n\nOrganisation unique\n\nLes Black Templars ne suivent pas strictement le Codex Astartes, le guide organisationnel des Space Marines établi par Roboute Guilliman.\n\nAu lieu d’être un chapitre limité à environ 1000 Space Marines, ils sont dispersés en multiples flottes de croisade à travers la galaxie. Leur nombre réel est inconnu, mais probablement bien supérieur à la norme.\n\nChaque flotte est dirigée par un Maréchal, sous l’autorité du Haut Maréchal. Cette structure leur permet d’être présents sur d’innombrables champs de bataille simultanément.\n\nLa Croisade Éternelle\n\nLa Croisade Éternelle est au cœur de l’identité des Black Templars. Il ne s’agit pas d’une campagne spécifique, mais d’un état de guerre permanent.\n\nDepuis leur fondation, les Black Templars n’ont jamais cessé de combattre. Ils voyagent de monde en monde, traquant les hérétiques, les xénos et les démons.\n\nPour eux, la guerre n’a pas de fin. Il n’y a pas de paix à rechercher, seulement des ennemis à détruire.\n\nChaque Space Marine du chapitre fait des vœux sacrés avant la bataille, définissant son rôle et son engagement. Ces serments renforcent leur détermination et leur cohésion.\n\nStyle de combat\n\nLes Black Templars sont connus pour leur agressivité extrême. Ils privilégient les charges rapides, les assauts en mêlée et les combats rapprochés.\n\nIls utilisent fréquemment :\n\ndes épées tronçonneuses,\ndes marteaux énergétiques,\net des boucliers de tempête.\n\nLeur objectif est simple : briser l’ennemi dans un choc frontal. Là où d’autres chapitres privilégient la stratégie à distance, eux cherchent la confrontation directe.\n\nCette approche reflète leur vision religieuse de la guerre : tuer l’ennemi de ses propres mains est un acte de foi.\n\nLes figures emblématiques\n\nParmi les figures marquantes du chapitre, High Marshal Helbrecht dirige les Black Templars à l’époque actuelle. Stratège redoutable et chef charismatique, il incarne la continuité de la Croisade Éternelle.\n\nUn autre personnage clé est Grimaldus, célèbre pour sa défense héroïque lors du siège d’Helsreach. Son histoire illustre parfaitement l’esprit du chapitre : résister jusqu’au dernier souffle, même face à une défaite certaine.\n\nUne vision radicale de l’Imperium\n\nLes Black Templars représentent une version extrême des valeurs impériales. Là où d’autres cherchent à protéger l’humanité, eux cherchent avant tout à détruire ses ennemis.\n\nIls n’accordent aucune tolérance :\n\nles hérétiques doivent être purifiés,\nles xénos exterminés,\nles mutants éradiqués.\n\nCette vision les rend efficaces, mais aussi parfois difficiles à coordonner avec d’autres forces impériales. Leur zèle peut les pousser à ignorer des stratégies plus larges au profit d’une destruction immédiate.\n\nUne guerre sans fin\n\nLa Croisade Éternelle signifie que les Black Templars n’ont pas de monde d’origine fixe comme la plupart des chapitres. Bien qu’ils soient liés à Terra et à l’héritage des Imperial Fists, leur véritable foyer est la guerre elle-même.\n\nLeur existence est entièrement tournée vers le combat. Ils ne construisent pas, ne gouvernent pas — ils détruisent.\n\nCette absence de repos renforce leur réputation de guerriers infatigables, mais souligne aussi la nature tragique de leur existence.\n\nConclusion\n\nLes Black Templars sont l’incarnation de la foi guerrière dans Warhammer 40,000. Leur Croisade Éternelle symbolise une vérité centrale de cet univers : la guerre est permanente, et la paix n’est qu’une illusion.\n\nÀ travers leur fanatisme, leur discipline et leur dévotion absolue, ils représentent à la fois la force et l’excès de l’Imperium.\n\nIls ne cherchent pas à gagner la guerre — ils cherchent à la poursuivre indéfiniment, convaincus que leur devoir sacré est de combattre jusqu’à la fin des temps.', 1);

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id_categorie` int NOT NULL,
  `label` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id_categorie`, `label`) VALUES
(1, 'lore'),
(2, 'batailles'),
(3, 'imperium'),
(4, 'orks'),
(5, 'tyranides');

-- --------------------------------------------------------

--
-- Structure de la table `categorie_articles`
--

CREATE TABLE `categorie_articles` (
  `categorie_id` int NOT NULL,
  `article_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `categorie_articles`
--

INSERT INTO `categorie_articles` (`categorie_id`, `article_id`) VALUES
(1, 2),
(1, 4),
(2, 1),
(2, 3),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(4, 1),
(5, 3);

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

CREATE TABLE `commentaire` (
  `id_commentaire` int NOT NULL,
  `contenu` text NOT NULL,
  `article_id` int NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id_user` int NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `pseudo` varchar(60) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id_user`, `nom`, `prenom`, `pseudo`, `email`, `password`) VALUES
(1, 'Targaryen', 'Daemon', 'DTarg', 'Daemon@mail.com', '$2a$12$y9CMydsGnPVlVj5ZpkmuYOArEgAKbTB/s2fR4nXJuM.Ddy3U/K3Xi');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id_article`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_categorie`);

--
-- Index pour la table `categorie_articles`
--
ALTER TABLE `categorie_articles`
  ADD PRIMARY KEY (`categorie_id`,`article_id`),
  ADD KEY `catégorie_id` (`categorie_id`),
  ADD KEY `article_id` (`article_id`);

--
-- Index pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD PRIMARY KEY (`id_commentaire`),
  ADD KEY `fk_article_id` (`article_id`),
  ADD KEY `fk_user_id` (`user_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `pseudo` (`pseudo`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `id_article` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id_categorie` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `commentaire`
--
ALTER TABLE `commentaire`
  MODIFY `id_commentaire` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `article_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id_user`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `categorie_articles`
--
ALTER TABLE `categorie_articles`
  ADD CONSTRAINT `categorie_articles_ibfk_2` FOREIGN KEY (`article_id`) REFERENCES `article` (`id_article`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `categorie_articles_ibfk_3` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id_categorie`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD CONSTRAINT `fk_article_id` FOREIGN KEY (`article_id`) REFERENCES `article` (`id_article`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id_user`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
