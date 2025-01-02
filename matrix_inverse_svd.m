clc;
clear all;
close all;
n=25;
A=rand(n)*100;
y=A*A.';
x=A.'*A;
[U D]=eig(y);
[V D]=eig(x);
for i=1:n
    d(i,i)=1/(sqrt(D(i,i)));
end
disp("U=");
disp(U)
disp("V=");
disp(V)
disp("d=");
disp(d)
inverse=V*d*U.'
error=inv(A)-inverse