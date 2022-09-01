select aula.nomeprof, count(aula.numhoras) as qtddhoras from
(select
	"TURMA".siglatur,
	"HORARIO".numhoras,
	"PROFTURMA".codprof,
 	"PROFESSOR".nomeprof

from "TURMA"

join "HORARIO" on 
	"TURMA".coddepto = "HORARIO".coddepto and
	"TURMA".numdisc = "HORARIO".numdisc and
	"TURMA".anosem = "HORARIO".anosem and
	"TURMA".siglatur = "HORARIO".siglatur
	
join "PROFTURMA" on
	"TURMA".coddepto = "PROFTURMA".coddepto AND
	"TURMA".numdisc = "PROFTURMA".numdisc and
	"TURMA".anosem = "PROFTURMA".anosem and
	"TURMA".siglatur = "PROFTURMA".siglatur

join "PROFESSOR" on
 	"TURMA".coddepto = "PROFESSOR".coddepto and
 	"PROFTURMA".codprof = "PROFESSOR".codprof
	
group by
	"TURMA".siglatur, "HORARIO".numhoras, "PROFTURMA".codprof, "PROFESSOR".nomeprof) as aula

group by aula.nomeprof
