# Dashboard-COVID-19-Looker-Studio-MySQL


![Looker Studio](https://img.shields.io/badge/Looker%20Studio-4285F4?style=for-the-badge&logo=looker&logoColor=whitehttps://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo)
![SQL](https://img.shields.io/badge/SQL-336791?style=for-the-badge&logo=postgres)
![Excel](https://img.shields.io/badge/Microsoft_Excel-217346?style=for-the-badge&logo=microsoftexcel&logo)
![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-4169E1?style=for-the-badge&logo=postgresql&logoColor=white)
![XAMPP](https://img.shields.io/badge/XAMPP-FB7A24?style=for-the-badge&logo=xampp&logoColor=white)
![ETL](https://img.shields.io/badge/Process-ETL-blue)

Dashboard d’analyse de l’impact de la pandémie de COVID‑19 construit à partir des données publiques de Our World in Data, avec une chaîne BI complète : collecte, nettoyage et transformation des données, stockage dans PostgreSQL, requêtes SQL d’analyse et visualisation interactive avec Looker Studio.

Objectifs du projet : 
- Analyser l’évolution de la pandémie (cas, décès, tests, vaccinations) par pays, continent et période temporelle.
- Fournir un dashboard interactif permettant de suivre des KPI clés pour la prise de décision (taux de mortalité, taux de vaccination, cas quotidiens, etc.).
- Illustrer une chaîne de traitement de données de bout en bout : ETL, modélisation SQL, indicateurs, visualisations.

Jeu de données
- Les données utilisées proviennent du projet COVID‑19 de Our World in Data.
- Merci de consulter directement leur site pour les détails complets, la méthodologie et la licence d’utilisation.

Dans ce dépôt :

- data/owid-covid-data.csv : Export global des données Our World in Data (cas, décès, tests, vaccinations, indicateurs démographiques, etc.).
- data/CovidDeaths.csv : Sous‑ensemble focalisé sur les cas et décès (par pays, date, population, etc.).
- data/CovidVaccination.csv : Sous‑ensemble focalisé sur les campagnes de vaccination (doses administrées, personnes entièrement vaccinées, etc.).

Ces fichiers ont été nettoyés et segmentés à l’aide d’Excel et de requêtes SQL pour faciliter l’analyse (sélection de colonnes pertinentes, filtrage des lignes manquantes, normalisation de certains champs).

Structure du dépôt :

- Corona_Covid19.sql : script SQL contenant la création des tables, l’import (selon ta configuration) et surtout les requêtes d’analyse (KPI, agrégations, vues, etc.).

- Corona_Covid19_Dashboard.pdf : export du dashboard Looker Studio au format PDF (aperçu des visualisations finales).

- visualisation.sql : script SQL dédié aux requêtes d’analyse et de reporting, incluant les calculs de KPI (cas, décès, vaccinations, ratios par million), les agrégations temporelles (journalières, cumulées) et la création de vues prêtes à être consommées par le dashboard Looker Studio.

Indicateurs et visualisations : 
Le dashboard met en avant plusieurs types de visualisations :

Graphiques temporels :

évolution des cas confirmés, des décès et des vaccinations dans le temps.

Tableaux et cartes :

- Graphiques temporels : évolution des cas confirmés, des décès et des vaccinations dans le temps.

- Tableaux et cartes : comparaisons entre pays / continents, classement selon différents KPI (taux de mortalité, couverture vaccinale, etc.).

- KPI / cartes de score : cas cumulés, décès cumulés, personnes entièrement vaccinées, ratios par million d’habitants, etc.

- Les filtres (pays, continent, période, type de mesure) permettent d’explorer dynamiquement les données.

Remerciements et sources :

Les données utilisées dans ce projet proviennent de Our World in Data – COVID‑19 dataset.
Pour plus d’informations, méthodologie et licence d’utilisation, se référer directement à :

- https://ourworldindata.org/coronavirus

- https://github.com/owid/covid-19-data

Ce projet est uniquement à but pédagogique et analytique et n’est pas affilié à Our World in Data.
