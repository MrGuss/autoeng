A = [3 -5 5 -6; 0 7 -5 -2;-9 -7 -13 8;4 -5 -3 2];
B = [-10;25;20;35];
A1 = A;A1(:,1)=B;
A2 = A;A2(:,2)=B;
A3 = A;A3(:,3)=B;
A4 = A;A4(:,4)=B;
D = det(A);
d(1)=det(A1);
d(2)=det(A2);
d(3)=det(A3);
d(4)=det(A4);
x = d/D;
disp(x);
P = A*x-B;
x = A\B
disp(x)
x = A^-1*B
disp(x)
x = inv(A)*B
disp(x)

A = [3 -5 5 -6; 0 7 -5 -2;-9 -7 -13 8;4 -5 -3 2];
B = [-10;25;20;35];
C = rref([A B]);
[n,m] = size(C);

x = C(:,m)
disp(x)


x = -10:0.1:10
y = x.^2+5*x-10
plot(x,y)
xgrid()
function y=func(x)
    y=x^2+5*x-10
endfunction
x0=[-8 2]
Rez=fsolve(x0, func)
disp(Rez)
Prov=func(Rez)
disp(Prov)

function [y1, g1, ind] = funcl(x, indl)
    y1 = x^2+5*x-10
    g1 = 2*x+5
endfunction
xopt=-18;
[fmin,xmin]=optim(funcl, xopt)
disp(fmin)

