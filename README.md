**AvaliacaoTecnica-L2code**
  
**1. Tradutor de Linguagem**

O Problema

    Recentemente, um time de exploradores descobriu uma tribo perdida na floresta Amazônica. Os nativos
    falam em uma linguagem desconhecida pelos exploradores, e para facilitar a comunicação você deve
    escrever um classificador de verbos.
    
    O contato inicial com os nativos permitiram a dedução das seguintes regras:
    - Todos os verbos são regulares
    - Todos os verbos terminam com uma consoante seguida do sufixo ‘en’
    - Existem apenas 3 tempos verbais: passado, presente e futuro
    - Para conjugar o verbo, os nativos substituem o sufixo ‘en’ por outro, de acordo com a seguinte tabela:
    
        Person    Present   Past   Future
        1st         o         ei     ai
        2nd         os        es     ais
        3rd         a         e       i
        4th         om        em     aem
        5th         ons       est    aist
        6th         am        im     aim
        

O verbo ‘campten’ tem a seguinte conjugação:

        Person    Present      Past       Future
        1st       campto      camptei     camptai
        2nd       camptos     camptes     camptais
        3rd       campta      campte      campti
        4th       camptom     camptem     camptaem
        5th       camptons    camptest    camptaist
        6th       camptam     camptim     camptaim
        
        
    O programa deve analisar uma palavra, verificar se é um verbo ou não, se for um verbo,
    deve indicar a pessoa e o tempo verbal em que ela está conjugada.
    
      - Formato de entrada
          - Uma lista de palavras, uma por linha.
          
      - Formato de saída
          - Uma palavra analisada por linha, seguida pelo resultado da análise, como mostrado nos exemplos.
          
          

      - Exemplos
           - Suposta a seguinte entrada
                  - casos
                  - porre
                  - corraem
                  - picel
                  - oficina
                  - param

            - Então temos a seguinte saída
                  - casos - verb casen, present tense, 2nd person
                  - porre - verb porren, past tense, 3rd person
                  - corraem - verb corren, future tense, 4th person
                  - picel - not a verb case
                  - oficina - verb oficinen, present tense, 3rd person
                  - param - verb paren, present tense, 6th person




**2. Banco de dados**

Considerando o modelo ER abaixo

![image](https://user-images.githubusercontent.com/42013438/187806278-fa292067-6cfd-49a6-b3c4-f61ee1dcc699.png)


             - Fazer as seguintes ações:
                   - Fazer uma consulta SQL que liste a quantidade de horas que cada professor
                        tem comprometido em aulas
                   - Fazer uma consulta SQL que liste as salas com horários disponíveis e quais
                        são estes horários que estão a disposição. (Considerar que as salas poderiam
                        ser ocupadas 24 horas por dia, todos os dias da semana)
             
             
             - Pode adicionar os arquivos sql junto do git, ou colocar em um DOC de texto.
             
             
OBS: O objetivo da atividade é avaliar o nível técnico, sendo assim mesmo que não consiga executar
alguma atividade isso não significa que o candidato será desclassificado. Caso não consiga executar
alguma das questões explicar o processo que fez e onde encontrou dificuldade, isto será também avaliado.
