idade(bruno, 30).
idade(maria, 45).
idade(joao, 65).
idade(ana, 20).
idade(victor, 15).
idade(elaine, 60).

genero(bruno, masculino).
genero(maria, feminino).
genero(joao, masculino).
genero(ana, feminino).
genero(victor, masculino).
genero(elaine, feminino).

tempoTrabalho(bruno, 12).
tempoTrabalho(maria, 30).
tempoTrabalho(joao, 40).
tempoTrabalho(ana, 2).
tempoTrabalho(victor, 0).
tempoTrabalho(elaine, 40).

% jovem (ate 25 anos)
% meia idade (>25 ate 60 anos)
% terceira idade (>60 anos)

jovem(X):- idade(X, Y), Y=<25.
meiaidade(X):- idade(X, Y), Y>25, Y=<60.
terceiraidade(X):- idade(X, Y), Y>60.

% Se aposentar: soma da idade e do tempo de trabalho
% homem se aposentar: soma der no minino 95
% mulher se aposentar: soma der no minimo 90

aposentadoria(NOME):- idade(NOME, IdadePessoa), genero(NOME, SEXO), 
    tempoTrabalho(NOME, TEMPO), SEXO=masculino, 
    IdadePessoa+TEMPO>=95, write('Pode se aposentar'), nl;
    
    idade(NOME, IdadePessoa), genero(NOME, SEXO), 
    tempoTrabalho(NOME, TEMPO), SEXO=feminino, 
    IdadePessoa+TEMPO>=90, write('Pode se aposentar'), nl.