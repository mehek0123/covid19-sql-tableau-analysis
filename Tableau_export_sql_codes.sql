


-- 1. Global Numbers -> single-row KPI: total cases, total deaths, death %
Select SUM(new_cases) as total_cases,
       SUM(cast(new_deaths as int)) as total_deaths,
       SUM(cast(new_deaths as int)) / NULLIF(SUM(New_Cases),0) * 100 as DeathPercentage
From PortfolioProject..CovidDeaths
where continent is not null
order by 1,2;


-- 2. Total Death Count by Continent
-- NOTE: uses continent IS NULL on purpose -- in this raw dataset, rows where
-- continent is null have continent-level totals stored in the "location" column.
-- European Union / World / International are excluded so continents aren't double-counted.
Select location, SUM(cast(new_deaths as int)) as TotalDeathCount
From PortfolioProject..CovidDeaths
Where continent is null
and location not in ('World', 'European Union', 'International')
Group by location
order by TotalDeathCount desc;


-- 3. Percent Population Infected by Country (one row per country, no date)
Select Location, Population,
       MAX(total_cases) as HighestInfectionCount,
       Max((total_cases/population))*100 as PercentPopulationInfected
From PortfolioProject..CovidDeaths
Group by Location, Population
order by PercentPopulationInfected desc;


 4. --Percent Population Infected by Country AND Date (for the time-animated map)
-- date is cast to YYYY-MM-DD text (style 23) so Tableau can't misread it as DD/MM
Select Location, Population, CONVERT(varchar, date, 23) as date,
       MAX(total_cases) as HighestInfectionCount,
       Max((total_cases/population))*100 as PercentPopulationInfected
From PortfolioProject..CovidDeaths
Group by Location, Population, date
order by PercentPopulationInfected desc;