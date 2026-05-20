% Transações financeiras entre clientes

transacao_entre(alice, pedro, 2200).
transacao_entre(pedro, renata, 850).
transacao_entre(renata, gustavo, 300).

transacao_entre(alice, camila, 1700).
transacao_entre(camila, eduardo, 400).

transacao_entre(eduardo, sergio, 950).
transacao_entre(sergio, helena, 600).

transacao_entre(victor, pedro, 1100).
transacao_entre(larissa, helena, 1300).

transacao_entre(mariana, joaquim, 700).
transacao_entre(joaquim, gustavo, 500).

transacao_entre(renata, paulo, 450).
transacao_entre(paulo, helena, 900).

% Clientes com histórico de inadimplência

inadimplente(gustavo).
inadimplente(helena).

% Conexão direta entre clientes

conectado(X, Y) :-
    transacao_entre(X, Y, _).

conectado(X, Y) :-
    transacao_entre(Y, X, _).

% Regra recursiva de risco

risco_conexao(X, Y, Grau) :-
    risco_aux(X, Y, [X], Grau).

% Caso base: conexão direta

risco_aux(X, Y, _, 1) :-
    conectado(X, Y).

% Caso recursivo: expansão da rede

risco_aux(X, Y, Visitados, Grau) :-
    conectado(X, Z),
    \+ member(Z, Visitados),
    risco_aux(Z, Y, [Z|Visitados], GrauAnterior),
    Grau is GrauAnterior + 1.
