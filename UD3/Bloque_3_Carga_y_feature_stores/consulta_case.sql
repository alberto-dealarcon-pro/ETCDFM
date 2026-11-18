--- Consulta para obtener el número de abonados por sexo y tramo de edad, así como el porcentaje que representan sobre el total de abonados.
--- Usando CASE para definir los tramos de edad.

WITH edades AS (
    SELECT sexo,
           CAST(strftime('%Y', fecha_alta) AS INTEGER)
         - CAST(strftime('%Y', fecha_nacimiento) AS INTEGER)
         - (strftime('%m-%d', fecha_alta) < strftime('%m-%d', fecha_nacimiento)) AS edad
    FROM abonados
),

tramos AS (
    SELECT sexo,
           CASE
               WHEN edad < 16  THEN 0
               WHEN edad <= 25 THEN 1
               WHEN edad <= 35 THEN 2
               WHEN edad <= 50 THEN 3
               WHEN edad <= 65 THEN 4
               ELSE 5
           END AS orden
    FROM edades
)
SELECT CASE orden
           WHEN 0 THEN 'menos de 16'
           WHEN 1 THEN '16-25'
           WHEN 2 THEN '26-35'
           WHEN 3 THEN '36-50'
           WHEN 4 THEN '51-65'
           ELSE 'más de 65'
       END AS tramo_edad,
       sexo,
       COUNT(*) AS num_abonados,
       ROUND(100.0 * COUNT(*) / SUM(COUNT(*)) OVER (), 2) AS pct_total
FROM tramos
GROUP BY orden, sexo
ORDER BY orden, sexo;

--- Usando UNION ALL para definir los tramos de edad.

WITH edades AS (
    SELECT sexo,
           CAST(strftime('%Y', fecha_alta) AS INTEGER)
         - CAST(strftime('%Y', fecha_nacimiento) AS INTEGER)
         - (strftime('%m-%d', fecha_alta) < strftime('%m-%d', fecha_nacimiento)) AS edad
    FROM abonados
),

tramos AS (
select sexo, 'menos de 16 años' AS tramo
from abonados
where edad < 16
UNION
select sexo, '16-25 años' AS tramo
from abonados
where edad between 16 and 25    
UNION ALL
select sexo, '26-35 años' AS tramo      
from abonados
where edad between 26 and 35    
UNION ALL
select sexo, '36-50 años' AS tramo
from abonados
where edad between 36 and 50    
UNION ALL
select sexo, '51-65 años' AS tramo      
from abonados
where edad between 51 and 65
)

select sexo, tramo, count(*) as num_abonados, round(100.0 * count(*) / sum(count(*)) over (), 2) as pct_total
from tramos
group by sexo, tramo
order by sexo, tramo;
