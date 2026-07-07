select *
from eda_world_layoffs.cleaned_layoffs;

ALTER TABLE cleaned_layoffs MODIFY COLUMN `date` DATE;

SELECT MAX(total_laid_off)
FROM eda_world_layoffs.cleaned_layoffs;

-- Looking at Percentage to see how big these layoffs were
SELECT MAX(percentage_laid_off),  MIN(percentage_laid_off)
FROM cleaned_layoffs
WHERE  percentage_laid_off IS NOT NULL;

-- Which companies had 1 which is basically 100 percent of they company laid off
SELECT *
FROM cleaned_layoffs
WHERE  percentage_laid_off = 1;
-- these are mostly startups it looks like who all went out of business during this time

-- if we order by funds_raised_millions we can see how big some of these companies were
SELECT *
FROM cleaned_layoffs
WHERE  percentage_laid_off = 1
ORDER BY funds_raised_millions DESC;

-- Date range
select min(`date`),max(`date`)
from cleaned_layoffs;

-- Companies with the biggest single Layoff

SELECT company, total_laid_off
FROM cleaned_layoffs
ORDER BY total_laid_off DESC
LIMIT 5;
-- now that's just on a single day

-- Which companies laid off the most people overall?
SELECT company, SUM(total_laid_off) AS total_laid_off
FROM cleaned_layoffs
WHERE total_laid_off IS NOT NULL
GROUP BY company
ORDER BY 2 DESC
LIMIT 10;

-- Which industries were hit the hardest?
SELECT industry, SUM(total_laid_off) AS total_laid_off
FROM cleaned_layoffs
WHERE total_laid_off IS NOT NULL
GROUP BY industry
ORDER BY 2 DESC;

-- Which countries experienced the most layoffs?
SELECT country, SUM(total_laid_off) AS total_laid_off
FROM cleaned_layoffs
WHERE total_laid_off IS NOT NULL
GROUP BY country
ORDER BY 2 DESC;

