# Dashboard-COVID-19-Looker-Studio-MySQL

![Power BI](https://img.shields.io/badge/Power_BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
![HTML5](https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white)
![CSS3](https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=css3&logoColor=white)
![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black)
![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![Excel](https://img.shields.io/badge/Microsoft_Excel-217346?style=for-the-badge&logo=microsoftexcel&logoColor=white)
![XAMPP](https://img.shields.io/badge/XAMPP-FB7A24?style=for-the-badge&logo=xampp&logoColor=white)
![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![Tableau](https://img.shields.io/badge/Tableau-E97627?style=for-the-badge&logo=tableau&logoColor=white)

Dashboard d’analyse de l’impact de la pandémie de COVID‑19 construit à partir des données publiques de Our World in Data, avec une chaîne BI complète : collecte, nettoyage et transformation des données, stockage dans MySQL, requêtes SQL d’analyse et visualisation interactive avec Looker Studio.

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
.
├── README.md
├── data/
│   ├── owid-covid-data.csv
│   ├── CovidDeaths.csv
│   └── CovidVaccination.csv
├── sql/
│   └── Corona_Covid19.sql
└── docs/
    └── Corona_Covid19_Dashboard.pdf

data/ : contient les fichiers CSV bruts/transformés utilisés pour alimenter la base MySQL et le dashboard.

sql/Corona_Covid19.sql : script SQL contenant la création des tables, l’import (selon ta configuration) et surtout les requêtes d’analyse (KPI, agrégations, vues, etc.).

docs/Corona_Covid19_Dashboard.pdf : export du dashboard Looker Studio au format PDF (aperçu des visualisations finales).

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
