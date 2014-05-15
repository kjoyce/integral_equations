k[1](x,s):=s;
k[n](x,s):=integrate(k[n-1](x,t)*k[1](t,s),t,s,x);
