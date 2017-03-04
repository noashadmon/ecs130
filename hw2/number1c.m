function [ L ] = number1c(A)


[n n] = size(A);
L = zeros(n,n);
sum1 = 0;
sum2 = 0;  

for k = 1:n
    for i = k:n
        if k == i
            sum = 0;
            for j = 1:k-1
               sum = sum + L(j,k)^2;
            end
            L(k,k) = sqrt(A(k,k) - sum);
        else
            sum = 0;
            for j = 1:k-1
                sum = sum + L(j,k) * L(j,i);
            end
            L(k,i) = (A(k,i) - sum) / L(k,k);
        end
    end
end
end


           
