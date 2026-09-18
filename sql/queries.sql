-- Análise de corridas de táxi em Chicago
-- Consultas executadas em PostgreSQL

-- ============================================================
-- 1. Quantidade de corridas por empresa
-- Período: 15 e 16 de novembro de 2017
-- Resultado exportado: project_sql_result_01.csv
-- ============================================================

SELECT
    c.company_name,
    COUNT(t.trip_id) AS trips_amount
FROM trips AS t
INNER JOIN cabs AS c
    ON t.cab_id = c.cab_id
WHERE
    t.start_ts >= '2017-11-15'
    AND t.start_ts < '2017-11-17'
GROUP BY
    c.company_name
ORDER BY
    trips_amount DESC;


-- ============================================================
-- 2. Corridas de empresas com "Yellow" ou "Blue" no nome
-- Período: 1º a 7 de novembro de 2017
-- ============================================================

SELECT
    c.company_name,
    COUNT(t.trip_id) AS trips_amount
FROM trips AS t
INNER JOIN cabs AS c
    ON t.cab_id = c.cab_id
WHERE
    t.start_ts >= '2017-11-01'
    AND t.start_ts < '2017-11-08'
    AND (
        c.company_name ILIKE '%yellow%'
        OR c.company_name ILIKE '%blue%'
    )
GROUP BY
    c.company_name
ORDER BY
    trips_amount DESC;


-- ============================================================
-- 3. Comparação das empresas mais populares com as demais
-- Período: 1º a 7 de novembro de 2017
-- ============================================================

SELECT
    CASE
        WHEN c.company_name = 'Flash Cab'
            THEN 'Flash Cab'
        WHEN c.company_name = 'Taxi Affiliation Services'
            THEN 'Taxi Affiliation Services'
        ELSE 'Other'
    END AS company,
    COUNT(t.trip_id) AS trips_amount
FROM trips AS t
INNER JOIN cabs AS c
    ON t.cab_id = c.cab_id
WHERE
    t.start_ts >= '2017-11-01'
    AND t.start_ts < '2017-11-08'
GROUP BY
    company
ORDER BY
    trips_amount DESC;


-- ============================================================
-- 4. Identificadores dos bairros Loop e O'Hare
-- ============================================================

SELECT
    neighborhood_id,
    name
FROM neighborhoods
WHERE
    name IN ('O''Hare', 'Loop');


-- ============================================================
-- 5. Classificação das condições meteorológicas
-- ============================================================

SELECT
    ts,
    CASE
        WHEN description ILIKE '%rain%'
            OR description ILIKE '%storm%'
            THEN 'Bad'
        ELSE 'Good'
    END AS weather_conditions
FROM weather_records;


-- ============================================================
-- 6. Corridas aos sábados entre Loop e O'Hare
-- Resultado exportado: project_sql_result_07.csv
-- ============================================================

SELECT
    t.start_ts,
    CASE
        WHEN w.description ILIKE '%rain%'
            OR w.description ILIKE '%storm%'
            THEN 'Bad'
        ELSE 'Good'
    END AS weather_conditions,
    t.duration_seconds
FROM trips AS t
INNER JOIN weather_records AS w
    ON t.start_ts = w.ts
WHERE
    t.pickup_location_id = 50
    AND t.dropoff_location_id = 63
    AND EXTRACT(DOW FROM t.start_ts) = 6
ORDER BY
    t.trip_id;