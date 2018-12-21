USE `development`;
-- On sélectionne ce que l'on veut voir afficher dans le résultat final
SELECT languages.id, languages.name, frameworks.name
-- FROM pour sélectionner la première table
FROM `languages`
-- LEFT JOIN joint toute la première table et ce qu'il y a en commun entre les 2 tables
-- https://sql.sh/cours/jointures
-- la deuxième table est frameworks
LEFT JOIN `frameworks`
ON languages.id = frameworks.languagesId;
-- ON la condition entre les 2 tables,
-- ici l'id de la table languages doit etre égale au languagesId de la table frameworks
