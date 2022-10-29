A = [1 13 3 -6; 12 4 -2 -3;1 2 -12 1;7 -3 1 9]
B = [16;8;1;8]
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
disp("Kramer")
disp(x);

x = inv(A)*B
x_l = -linsolve(A,B)
disp("inv")
disp(x)
disp("Linsolve")
disp(x_l)


//x = -10:0.1:10
//y = x.^3-sin(x)-2.5



x = -2:0.01:2
y = x^3-sin(x)-2.5
plot(x,y)
xgrid()

function[f]=F(x)
    f=x^3-sin(x)-2.5;
endfunction

x0=-10
function[f, g, ind]=cost(x, ind)
    f=(x^3-sin(x)-2.5);
    g=(3*x^2-cos(x));
endfunction
function[f, g, ind]=costm(x, ind)
    f=-(x^3-sin(x)-2.5);
    g=-(3*x^2-cos(x));
endfunction
y = fsolve(x0,F)
disp("y=0, x=")
disp(y)
disp("x=0, y=")
disp(F(0))
[fopt, xopt] = optim(cost, 0)
disp("min y, x")
disp(fopt, xopt)
//disp(F(y))
[fopt, xopt] = optim(costm, 0)
disp("max y, x")
disp(-fopt, xopt)
