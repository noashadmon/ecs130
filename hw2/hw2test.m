disp('Test for 1c')
disp('n = 3')
n = 3
A = zeros(n,n);
A(:,1) = 3;
for i=1:n
    for j = 1:n
        A(i,j) =1/(i+j-1);
    end
end
disp('My chol function')
number1c(A)
disp('Using matlab chol()')
chol(A)

disp('n = 4')
n = 4;
A = zeros(n,n);
A(:,1) = 3;
for i=1:n
    for j = 1:n
        A(i,j) =1/(i+j-1);
    end
end
disp('My chol function')
number1c(A)
disp('Using matlab chol()')
chol(A)

disp('n = 5')
n = 5;
A = zeros(n,n);
A(:,1) = 3;
for i=1:n
    for j = 1:n
        A(i,j) =1/(i+j-1);
    end
end
disp('My chol function')
number1c(A)
disp('Using matlab chol()')
chol(A)

disp('Plots for number 6')
figure()
x = linspace(0.995, 1.005, 101);
y = (x-1).^6;
plot(x, y)
%Plot horners
figure()
horner = x.*(x.*(x.*(x.*(x.*(x - 6) + 15) - 20) + 15) - 6) + 1
plot(x, horner)



disp('Test for 7b')
disp('b = -56 c = 1')
disp('my roots')
[x1,x2] = myr(1, -56,1)
disp('matlab roots')
roots([1, -56, 1])
display('b = -10^8 c = 1')
disp('my roots')
[x1,x2] = myr(1, -10^.8,1)
disp('matlab roots')
roots([1, -10^.8,1])

