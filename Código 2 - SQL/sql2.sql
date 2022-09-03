select "SALA".descricaosala, "HORARIO".horainicio

from "SALA"

inner join "HORARIO" on
	"HORARIO".codpredio = "SALA".codpredio and
	"HORARIO".numsala = "SALA".numsala

where not exists 
	
(select  "SALA".descricaosala, "TURMA".siglatur, "HORARIO".horainicio

from "TURMA"
 

inner join "HORARIO" on 
	"TURMA".coddepto = "HORARIO".coddepto and
	"TURMA".numdisc = "HORARIO".numdisc and
	"TURMA".anosem = "HORARIO".anosem and
	"TURMA".siglatur = "HORARIO".siglatur

inner join "SALA" on
	"HORARIO".codpredio = "SALA".codpredio and
	"HORARIO".numsala = "SALA".numsala
)
group by "SALA".descricaosala, "HORARIO".horainicio
order by 1,2 asc


/* introduzi "manualmente" os bancos com suas ligações no postgres via pgadmin4, e coloquei alguns dados "mockados" pra que eu pudesse validar o funcionamento do codigo.
sendo assim, pressupus que na tabela salas continham as informações das 24 horas. e que é a turma que tem a informação da sala. logo "subtraindo" da informação geral de horarios,
aqueles que estao ocupados, sobram os livres.