USE Covid_Project;

-- 1) Totalité monde (1 ligne, 3 colonnes)
SELECT * FROM v_world_totals;

-- 2) Total des cas par continent
SELECT * FROM v_cases_continent;

-- 3) Total des morts par continent
SELECT * FROM v_deaths_continent;

-- 4) Total des cas par pays
SELECT * FROM v_cases_pays;

-- 5) Top 10 des morts par pays
SELECT * FROM v_top10_deaths_pays;

-- 6) Pourcentage de population vaccinée par pays
SELECT * FROM v_vaccination_pays;
