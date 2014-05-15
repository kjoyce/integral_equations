f1(x):= x;
f2(x):= x^2;
l1 : 3/2;
l2 : 5/2;

y1(x):= c*l1*f1(x);
y2(x):= c*l2*f2(x);

ratsimp(l1*integrate( (f1(x)*f1(s) + f2(x)*f2(s))*y1(s),s,-1,1));
y1(x);
ratsimp(l2*integrate( (f1(x)*f1(s) + f2(x)*f2(s))*y2(s),s,-1,1));
y2(x);
