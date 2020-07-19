a = 1;
b = 2;
c = 3;
A =[a 0 c;0 b 0;c 0 0];
[P,D]=eig(A)

c2 = 10;
A2 =[a 0 c2;0 b 0;c2 0 0];
[P2,D2]=eig(A2)