SELECT MIN(w)
FROM stats;
#Victorias mínimas para cada equipo = 15

SELECT MAX(w)
FROM stats;
#Victorias máximas para cada equipo = 67

SELECT team_id, team
FROM teams
ORDER BY team
LIMIT 10;
#Los 10 primeros resultados de la tabla por orden ascendiente (por defecto)

SELECT COUNT(team)
FROM teams;
#Número de equipos dentro de la tabla teams = 30

SELECT AVG(pts)
FROM stats;
#Media de todos los puntos de la tabla stats = 109.38000010172526

SELECT MAX(pts)
FROM stats;
#Máximo puntos de la tabla stats = 120.1 (necesitaremos este dato para la siguiente consulta)

#Máximo victorias = 67
#Máximo puntos = 120.1
#Media puntos = 109.38000010172526

SELECT MAX(w), (MAX(pts) - AVG(pts)) AS diferencia_media
FROM stats;
#Resulta con 67 máximo victorias y la resta del máximo de puntos menos media de puntos
#en una columna renombrada como diferencia_media.