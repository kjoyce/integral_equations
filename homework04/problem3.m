a(x):=[2*x,5*x^2];
b(s):=[s^3,s^2];
f(x):= 7*x^4 + 3;

showmat[i,j] := a(x)[j] * b(x)[i]; 
genmatrix(showmat, 2,2); 
