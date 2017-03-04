function x = mybscomponent(L, b)

n = size(L,1); 
x = zeros(n,1);
for i = n:-1:1
    x(i) = b(i);
    for j = (i+1):n
        x(i) = x(i) - L(i,j)*x(j);
    end
    x(i) = x(i)/L(i,i);
end

end