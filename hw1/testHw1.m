%
% Performance comparison of three backward substitution algorithms 
% for solving upper triangular systems
%

% generate test matrix L and right hand size b;
%
n = 5000;
A = randn(n);
[L,U,p] = lu(A);
b = L*ones(n,1);   % Note that b is chosen so that we know
                   % x = (1,...,1)^T is an exact solution

disp(' n     Row-component    Row-vectorized     Col-vectorized')
disp('---------------------------------------------------------')
for n = [100 1000 2000 3000 4000 5000]
    tic; x1 = mybscomponent(L(1:n,1:n),b(1:n));  t1 = toc;
    tic; x2 = mybsrow(L(1:n,1:n),b(1:n)); t2 = toc;
    tic; x3 = mybscolumn(L(1:n,1:n),b(1:n)); t3 = toc;
    disp(sprintf('%2.0f \t %7.4f \t\t\t %7.4f \t\t\t %7.4f',n,t1,t2,t3)); 
end

a1 = mybscomponent(L,b);  
error1 = norm(a1 - ones(n,1))/sqrt(n);
disp('error for componentwise')
error1
%
% Method 2: backward substitution, row-oriented, vectorized
%
a2 = mybsrow(L,b);  
error2 = norm(a2 - ones(n,1))/sqrt(n); 
disp('error for row-oriented, vectorized')
error2
%
% Method 3: backward substitution, column-oriented, vectorized
%
a3 = mybsrow(L,b);  
error3 = norm(a3 - ones(n,1))/sqrt(n) ;
disp('error for column-oriented, vectorized')
error3

disp(' n     mylutx    lutx     lu')
disp('---------------------------------------------------------')
for n = [100 200 300 400 500 600]
    tic; x1 = mylutx(L(1:n,1:n));  t1 = toc;
    tic; x2 = lutx(L(1:n,1:n)); t2 = toc;
    tic; x3 = lu(L(1:n,1:n)); t3 = toc;
    disp(sprintf('%2.0f \t %7.4f \t\t\t %7.4f \t\t\t %7.4f',n,t1,t2,t3)); 
end


n = gallery(3);
x1 = myinv(n);
x2 = inv(n); 
disp('myinv')
x1 
disp('matlab inv')
x2

n = gallery(5);
x1 = myinv(n);
x2 = inv(n); 
disp('myinv')
x1 
disp('matlab inv')
x2
   


