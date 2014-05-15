y(x):= exp(l/2*x^2);
assume(x,positive);
l* integrate(s * y(s), s,0,x) + 1;
