##Consulta mysql para saber los amigos en común entre dos usuarios en una misma tabla.

select amigos
from amigos
where usuario = 2 AND amigos IN (select amigos from amigos where usuario = 10)

# consulta para contar cuantos amigos en común hay 

select count(*)amigos
from amigos
where usuario = 2 AND amigos IN (select amigos from amigos where usuario = 10)

# consulta para listar los amigos en común con su respectivo nombre se hace esta consulta:

select a.amigos, CONCAT_WS(" ", u.nombre, u.apellido) AS "nombre"
from amigos a
inner join usuarios u ON a.amigos = u.id_usuario
where a.usuario = 2 AND a.amigos IN (select a.amigos from amigos a where a.usuario = 10)


select a.amigos, CONCAT_WS(" ", u.nombre, u.apellido) AS "nombre"
from amigos a
inner join usuarios u  ON a.amigos = u.id_usuario
where a.usuario = 2 


select *
from usuarios 

select *
from amigos
where usuario = 2