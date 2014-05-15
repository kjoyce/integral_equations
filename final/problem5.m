k[i,j](x) := x^(i+j-2);
kk[i,j] := integrate(k[i,j](x),x,-1,1);
K : genmatrix(kk,2,2);

f[i,j](x) := x^(i-1) * sin(%pi * x);
ff[i,j] := integrate(f[i,j](x),x,-1,1);
F : genmatrix(ff,2,1);

ya(x):= c/2 - 3/(2*pi)*x + sin(%pi *x);
la : 1/2;

ratsimp(la*integrate( (1+x*s)*ya(s) , s,-1,1) + sin(%pi * x));
ratsimp(ya(x));

yl(x) := 2*l/(%pi*(1-2/3*l))*x + sin(%pi*x);
ratsimp(l*integrate( (1+x*s)*yl(s) , s,-1,1) + sin(%pi * x));
ratsimp(yl(x));
