USE `development`;
-- On sélectionne ce que l'on veut voir afficher dans le résultat final
SELECT languages.id, languages.name,
-- COUNT pour compter le nombre de languagesId identique
-- AS une nouvelle colonne qui aura le résultat du COUNT
COUNT(frameworks.languagesId) AS 'number_frameworks'
-- FROM pour sélectionner la première table
FROM `languages`
-- LEFT JOIN joint toute la première table et ce qu'il y a en commun entre les 2 tables
-- https://sql.sh/cours/jointures
-- la deuxième table est frameworks
LEFT JOIN `frameworks`
ON languages.id = frameworks.languagesId
-- ON la condition entre les 2 tables,
-- ici l'id de la table languages doit etre égale au languagesId de la table frameworks
GROUP BY languages.id;
-- Et on le trie par ordre de l'id de la table languages donc languages.id
