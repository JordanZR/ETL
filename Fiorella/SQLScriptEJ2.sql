CREATE DATABASE Fiorella

use Fiorella

CREATE table clientes(
	id varchar(50),
	rosas varchar(50),
	claveles varchar(50),
	macetas varchar(50),
	tierra varchar(50),
	girasoles varchar(50),
	hortensia varchar(50),
	globos varchar(50),
	tarjetas varchar(50),
	orquideas varchar(50),
	carmesi varchar(50),
	lirios varchar(50),
	aurora varchar(50),
	tulipanes varchar(50),
	liston varchar(50),
)

select * from clientes

--Obtenemos la suma de cada una de las columnas de los productos
--De esta manera podemos ver cuáles son los más vendidos

SELECT	SUM(CAST(rosas AS int)) as rosas, SUM(CAST(claveles AS int)) as claveles, SUM(CAST(macetas AS int)) as macetas, SUM(CAST(tierra AS int)) as tierra, SUM(CAST(girasoles AS int)) as girasoles, SUM(CAST(hortensia AS int)) as hortensia, SUM(CAST(globos AS int)) as globos, SUM(CAST(tarjetas AS int)) as tarjetas, SUM(CAST(orquideas AS int)) as orquideas, SUM(CAST(carmesi AS int)) as carmesi, SUM(CAST(lirios AS int)) as lirios, SUM(CAST(aurora AS int)) as aurora, SUM(CAST(tulipanes AS int)) as tulipanes, SUM(CAST(liston AS int)) as liston from clientes

--En base a esto vemos que los artículos más vendidos son los listones, rosas y globos, por lo tanto esta sería
--La mejor combinación al comprar