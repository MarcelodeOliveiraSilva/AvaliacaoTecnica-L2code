select nomeprof, count(aula.numhoras) as qtddhoras from
(select
 	"PROFTURMA".codprof,
	"TURMA".siglatur,
	"HORARIO".numhoras
	 
from "TURMA"

inner join "HORARIO" on 
	"TURMA".coddepto = "HORARIO".coddepto and
	"TURMA".numdisc = "HORARIO".numdisc and
	"TURMA".anosem = "HORARIO".anosem and
	"TURMA".siglatur = "HORARIO".siglatur
	
inner join "PROFTURMA" on
	"TURMA".coddepto = "PROFTURMA".coddepto AND
	"TURMA".numdisc = "PROFTURMA".numdisc and
	"TURMA".anosem = "PROFTURMA".anosem and
	"TURMA".siglatur = "PROFTURMA".siglatur
) as aula

inner join "PROFESSOR"
	on aula.codprof = "PROFESSOR".codprof

group by nomeprof