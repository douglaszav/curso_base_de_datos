SELECT	*
FROM posts
WHERE	id	< 50;

SELECT	*
FROM posts
WHERE	estatus = 'Inactivo';

SELECT	*
FROM post
WHERE	titulo LIKE '%escandalo%';

SELECT	*
FROM post
WHERE	fecha_publicacion > '2025-01-01';

SELECT	*
FROM post
WHERE	fecha_publicacion BETWEEN '2023-01-01' AND '2025-12-31';

SELECT	*
FROM post
WHERE	YEAR(fecha_publicacion) BETWEEN '2023' AND '2024';

SELECT	*
FROM post
WHERE	MONTH(fecha_publicacion) = '04';

SELECT	*
FROM post
WHERE	usuario_id IS NOT NULL;

SELECT	*
FROM post
WHERE	usuario_id IS NULL;