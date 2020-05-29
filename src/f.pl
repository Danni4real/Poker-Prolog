nxt(3, 4).
nxt(4, 5).
nxt(5, 6).
nxt(6, 7).
nxt(7, 8).
nxt(8, 9).
nxt(9, 10).
nxt(10, j).
nxt(j, q).
nxt(q, k).
nxt(k, a).

dos(A,A).
tres(A,A,A).
bomb(A,A,A,A).

uno_tres(A,B,B,B).
dos_tres(A,A,B,B,B).

q_3(A, B, C) :- nxt(A,B), nxt(B,C).
q_4(A, B, C, D) :- q_3(A,B,C), nxt(C,D).
q_5(A, B, C, D, E) :- q_4(A,B,C,D), nxt(D,E).
q_6(A, B, C, D, E, F) :- q_5(A,B,C,D,E), nxt(E,F).
q_7(A, B, C, D, E, F, G) :- q_6(A,B,C,D,E,F), nxt(F,G).
q_8(A, B, C, D, E, F, G, H) :- q_7(A,B,C,D,E,F,G), nxt(G,H).
q_9(A, B, C, D, E, F, G, H, I) :- q_8(A,B,C,D,E,F,G,H), nxt(H,I).
q_10(A, B, C, D, E, F, G, H, I, J) :- q_9(A,B,C,D,E,F,G,H,I), nxt(I,J).
q_11(A, B, C, D, E, F, G, H, I, J, K) :- q_10(A,B,C,D,E,F,G,H,I,J), nxt(J,K).
q_12(A, B, C, D, E, F, G, H, I, J, K, L) :- q_11(A,B,C,D,E,F,G,H,I,J,K), nxt(K,L).

qq_3(A,A,B,B,C,C) :- q_3(A,B,C).
qq_4(A,A,B,B,C,C,D,D) :- q_4(A,B,C,D).
qq_5(A,A,B,B,C,C,D,D,E,E) :- q_5(A,B,C,D,E).
qq_6(A,A,B,B,C,C,D,D,E,E,F,F) :- q_6(A,B,C,D,E,F).
qq_7(A,A,B,B,C,C,D,D,E,E,F,F,G,G) :- q_7(A,B,C,D,E,F,G).
qq_8(A,A,B,B,C,C,D,D,E,E,F,F,G,G,H,H) :- q_8(A,B,C,D,E,F,G,H).
qq_9(A,A,B,B,C,C,D,D,E,E,F,F,G,G,H,H,I,I) :- q_9(A,B,C,D,E,F,G,H,I).
qq_10(A,A,B,B,C,C,D,D,E,E,F,F,G,G,H,H,I,I,J,J) :- q_10(A,B,C,D,E,F,G,H,I,J).

qqq_2(A,A,A,B,B,B) :- nxt(A,B).
qqq_3(A,A,A,B,B,B,C,C,C) :- q_3(A,B,C).
qqq_4(A,A,A,B,B,B,C,C,C,D,D,D) :- q_4(A,B,C,D).
qqq_5(A,A,A,B,B,B,C,C,C,D,D,D,E,E,E) :- q_5(A,B,C,D,E).
qqq_6(A,A,A,B,B,B,C,C,C,D,D,D,E,E,E,F,F,F) :- q_6(A,B,C,D,E,F).

u2t2(A,B,C,C,C,D,D,D) :- nxt(C,D).
u3t3(A,B,C,D,D,D,E,E,E,F,F,F) :- q_3(D,E,F).
u4t4(A,B,C,D,E,E,E,F,F,F,G,G,G,H,H,H) :- q_4(E,F,G,H).
u5t5(A,B,C,D,E,F,F,F,G,G,G,H,H,H,I,I,I,J,J,J) :- q_5(F,G,H,I,J).

d2t2(A,A,B,B,C,C,C,D,D,D) :- nxt(C,D).
d3t3(A,A,B,B,C,C,D,D,D,E,E,E,F,F,F) :- q_3(D,E,F).
d4t4(A,A,B,B,C,C,D,D,E,E,E,F,F,F,G,G,G,H,H,H) :- q_4(E,F,G,H).

uubomb(A,B,C,C,C,C).
ddbomb(A,A,B,B,C,C,C,C).

pattern(A) :- write('uno').
pattern(A, B) :- dos(A,B), write('dos').
pattern(A, B, C) :- tres(A,B,C), write('tres').
pattern(A, B, C, D) :- bomb(A,B,C,D), write('bomb').
pattern(A, B, C, D) :- uno_tres(A,B,C,D), write('uno_tres').
pattern(A, B, C, D, E) :- dos_tres(A,B,C,D,E), write('dos_tres').
pattern(A, B, C, D, E) :- q_5(A,B,C,D,E), write('q_5').
pattern(A, B, C, D, E, F) :- q_6(A,B,C,D,E,F), write('q_6').
pattern(A, B, C, D, E, F) :- qq_3(A,B,C,D,E,F), write('qq_3').
pattern(A, B, C, D, E, F) :- qqq_2(A,B,C,D,E,F), write('qqq_2').
pattern(A, B, C, D, E, F) :- uubomb(A,B,C,D,E,F), write('uubomb').
pattern(A, B, C, D, E, F, G) :- q_7(A,B,C,D,E,F,G), write('q_7').
pattern(A, B, C, D, E, F, G, H) :- q_8(A,B,C,D,E,F,G,H), write('q_8').
pattern(A, B, C, D, E, F, G, H) :- qq_4(A,B,C,D,E,F,G,H), write('qq_4').
pattern(A, B, C, D, E, F, G, H) :- u2t2(A,B,C,D,E,F,G,H), write('u2t2').
pattern(A, B, C, D, E, F, G, H) :- ddbomb(A,B,C,D,E,F,G,H), write('ddbomb').
pattern(A, B, C, D, E, F, G, H, I) :- q_9(A,B,C,D,E,F,G,H,I), write('q_9').
pattern(A, B, C, D, E, F, G, H, I) :- qqq_3(A,B,C,D,E,F,G,H,I), write('qqq_3').
pattern(A, B, C, D, E, F, G, H, I, J) :- q_10(A,B,C,D,E,F,G,H,I,J), write('q_10').
pattern(A, B, C, D, E, F, G, H, I, J) :- qq_5(A,B,C,D,E,F,G,H,I,J), write('qq_5').
pattern(A, B, C, D, E, F, G, H, I, J) :- d2t2(A,B,C,D,E,F,G,H,I,J), write('d2t2').
pattern(A, B, C, D, E, F, G, H, I, J, K) :- q_11(A,B,C,D,E,F,G,H,I,J,K), write('q_11').
pattern(A, B, C, D, E, F, G, H, I, J, K, L) :- q_12(A,B,C,D,E,F,G,H,I,J,K,L), write('q_12').
pattern(A, B, C, D, E, F, G, H, I, J, K, L) :- qq_6(A,B,C,D,E,F,G,H,I,J,K,L), write('qq_6').
pattern(A, B, C, D, E, F, G, H, I, J, K, L) :- qqq_4(A,B,C,D,E,F,G,H,I,J,K,L), write('qqq_4').
pattern(A, B, C, D, E, F, G, H, I, J, K, L) :- u3t3(A,B,C,D,E,F,G,H,I,J,K,L), write('u3t3').
pattern(A, B, C, D, E, F, G, H, I, J, K, L, M, N) :- qq_7(A,B,C,D,E,F,G,H,I,J,K,L,M,N), write('qq_7').
pattern(A, B, C, D, E, F, G, H, I, J, K, L, M, N, O) :- qqq_5(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O), write('qqq_5').
pattern(A, B, C, D, E, F, G, H, I, J, K, L, M, N, O) :- d3t3(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O), write('d3t3').
pattern(A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P) :- qq_8(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P), write('qq_8').
pattern(A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P) :- u4t4(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P), write('u4t4').
pattern(A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R) :- qq_9(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R), write('qq_9').
pattern(A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R) :- qqq_6(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R), write('qqq_6').
pattern(A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T) :- qq_10(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T), write('qq_10').
pattern(A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T) :- u5t5(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T), write('u5t5').
pattern(A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T) :- d4t4(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T), write('d4t4').







