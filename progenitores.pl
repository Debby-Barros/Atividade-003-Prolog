progenitor(maria, jose).
progenitor(joao, jose).
progenitor(joao, ana).
progenitor(jose, julia).
progenitor(jose, iris).
progenitor(iris, jorge).

% Ana é progenitora de Jorge?”
% retornar os progenitores de Íris.
% retornar os progenitores de José.
% retornar todos os pares progenitor/filho da base de conhecimento.

% retornar todos os avós de Jorge. 
avo(X,Z) :-progenitor(X,Y), progenitor(Y,Z).

% retornar todos os netos de João.
neto(X,Y) :-progenitor(W, X), progenitor(Y, W).

% retornar todos os progenitores comuns de José e Ana.
pai(X,Y,Z) :- progenitor(X,Y), progenitor(X,Z).