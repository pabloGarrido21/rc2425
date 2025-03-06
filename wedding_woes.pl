/*

Programa para emparejar personas en una mesa

chatty(A) 
	--> Determina que personas son habladoras

likes(A,B)
	--> Determina las preferencias de emparejamiento
	
pairing(A,B)
	--> empareja individual
	
seating(A,B,C,D,E)
	--> empareja todos
	
Este ejercicio necesita de listas para poder realizarse adecuadamente
Ya que no se puede dejar sitios vacíos.

Se resuelve con listas en wedding_woes_V2.pl

*/

chatty(gustavo).
chatty(valeria).

likes(esteban, malena).
likes(malena, esteban).
likes(gustavo, valeria).
likes(valeria,gustavo).

pairing(A,B):- chatty(A), A \=B.
pairing(B,A):- chatty(A), A \=B.
% a /\ b -> c
pairing(A, B):- likes(A,B), A \=B.
pairing(A, B):- likes(B,A), A \=B.

seating(A, B, C, D, E):- pairing(A,B), pairing(B, C), pairing(C,D), pairing(D,E), pairing(E,A). 
