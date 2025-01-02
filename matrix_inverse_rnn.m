clear;
A= randn(25,25)*100;
s=size(A);
eta=0.0000001;
%V=randn(s(1), 2*s(2));
V=ones(s(1), 2*s(2))/100;
for n=1:1000000
    V(:, 1:s(1))=V(:, s(2)+1:2*s(2))-eta*A'*A*V(:, 1:s(1)) + eta*A'; %update
    V(:, s(2)+1:2*s(2)) = V(:, 1:s(1));
end

V(:, 1:s(1))
g=inv(A)
error= V(:, 1:s(1))-inv(A)