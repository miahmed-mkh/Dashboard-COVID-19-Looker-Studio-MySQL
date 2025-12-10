-- =====================================================================
-- Corona_Project_clean.sql
-- Base, tables brutes, agrégations pour CSV / Looker Studio
-- =====================================================================

CREATE DATABASE IF NOT EXISTS Covid_Project;
USE Covid_Project;

-- 1. Réinitialiser les tables brutes
DROP TABLE IF EXISTS CovidDeaths;
DROP TABLE IF EXISTS CovidVaccination;

CREATE TABLE CovidDeaths (
  continent            VARCHAR(50),
  location             VARCHAR(100),
  population           BIGINT,
  population_density   FLOAT,
  date                 DATE,
  total_cases          DOUBLE,
  new_cases            DOUBLE,
  total_deaths         DOUBLE,
  new_deaths           DOUBLE
);

CREATE TABLE CovidVaccination (
  continent                      VARCHAR(50),
  location                       VARCHAR(100),
  population                     BIGINT,
  population_density             FLOAT,
  date                           DATE,
  total_tests                    DOUBLE,
  total_tests_per_thousand       DOUBLE,
  new_tests                      DOUBLE,
  new_tests_per_thousand         DOUBLE,
  positive_rate                  DOUBLE,
  tests_per_case                 DOUBLE,
  people_vaccinated              DOUBLE,
  people_vaccinated_per_hundred  DOUBLE,
  people_fully_vaccinated        DOUBLE,
  total_boosters                 DOUBLE,
  new_vaccinations               DOUBLE
);

-- 2. Chargement des CSV BRUTS (séparateur ;)
LOAD DATA INFILE 'C:/Users/Administrator/Desktop/Corona19/Last/CovidDeaths.csv'
INTO TABLE CovidDeaths
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE 'C:/Users/Administrator/Desktop/Corona19/Last/CovidVaccination.csv'
INTO TABLE CovidVaccination
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

-- =====================================================================
-- 3. VUES D’AGRÉGATION pour export CSV / Looker Studio
-- =====================================================================

-- 3.1 Totalité monde (KPI globaux)
CREATE OR REPLACE VIEW v_world_totals AS
SELECT
  SUM(new_cases)  AS Total_cases,
  SUM(new_deaths) AS Total_deaths,
  (SUM(new_deaths) / SUM(new_cases)) * 100 AS Taux_de_mortalite
FROM CovidDeaths;

-- 3.2 Total des cas ET des morts par continent
CREATE OR REPLACE VIEW v_continent_totals AS
SELECT
  continent,
  SUM(new_cases)  AS Total_Cases_Continent,
  SUM(new_deaths) AS Total_Deaths_Continent
FROM CovidDeaths
WHERE continent IS NOT NULL
GROUP BY continent
ORDER BY SUM(new_cases) DESC;

-- 3.3 Total des cas ET des morts par pays
CREATE OR REPLACE VIEW v_country_totals AS
SELECT
  location,
  SUM(new_cases)  AS Total_Cases_Pays,
  SUM(new_deaths) AS Total_deaths_Pays
FROM CovidDeaths
GROUP BY location
ORDER BY SUM(new_cases) DESC;

-- 3.4 Top 10 des morts par pays
CREATE OR REPLACE VIEW v_top10_deaths_pays AS
SELECT
  location,
  SUM(new_deaths) AS Total_deaths_Pays
FROM CovidDeaths
GROUP BY location
ORDER BY SUM(new_deaths) DESC
LIMIT 10;

-- 3.5 Pourcentage de population vaccinée par pays
CREATE OR REPLACE VIEW v_vaccination_pays AS
SELECT
  location,
  MAX(people_vaccinated_per_hundred)              AS Pourcentage_Vacc_1dose,
  MAX(people_fully_vaccinated * 100.0 / population) AS Pourcentage_Vacc_Complete
FROM CovidVaccination
WHERE population IS NOT NULL
GROUP BY location
ORDER BY MAX(people_vaccinated_per_hundred) DESC;