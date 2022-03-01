CREATE DATABASE Diego

USE Diego

CREATE TABLE clientes(
	id varchar(50),
	sexo varchar,
	ingresos varchar(10),
	promvisit varchar(10),
	edad varchar(4),
	sauna varchar,
	masaje varchar,
	hidro varchar,
	yoga varchar
)

SELECT * from dbo.clientes

--Comprobamos cuantos clientes en total hay
SELECT COUNT(id) from dbo.clientes

--Los grupos que crearemos serán por edades y luego sexo
--Primero obtenemos las edades diferentes entre los clientes

SELECT DISTINCT edad from dbo.clientes

--Ya que sabemos que son 45 diferentes edades, haremos grupos de clase de 5 c/u
--Para ello usamos la formula 45/5=9, es decir 9 grupos en total
--Por motivos de practicidad, solo trabajaremos en un solo grupo, el de 21 a 25
--Ahora pasamos a segmentar los grupos por sexo

SELECT COUNT(SEXO) as Mujeres,AVG(CAST(ingresos as float)) as Ingreso_Prom, AVG(CAST(promvisit as float)) as Visita_Prom from DBO.clientes WHERE sexo = '0' AND edad>=21 AND edad <=25

SELECT COUNT(SEXO) as Hombres,AVG(CAST(ingresos as float)) as Ingreso_Prom, AVG(CAST(promvisit as float)) as Visita_Prom from DBO.clientes WHERE sexo = '1' AND edad>=21 AND edad <=25

--En base a lo anterior, podríamos decirme que el grupo en el cuál se deben enfocar para la campaña
--de fidelización deberían ser los hombres, pues el ingreso y visitas promedio es superior
--Esto mismo se debe repetir para cada los otros 8 grupos restantes de edades.

