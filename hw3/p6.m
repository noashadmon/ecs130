t=[0:.01:1]';   % creates the 100 equally spaced points - can change this value
b = cos(4*t);   % function
A = zeros(length(t),11);  % matrix whose dimensions are num equations by unknown bs
                         
for i=1:11
  A(:,i) = t.^(i-1);
end;

xnormal = (A'*A)\(A'*b);  %solving normal eqs
xQR = A\b;                %QR factorization
format long e
fprintf('      coeffs from normal eqs          coeffs from QR\n')
[xQR xnormal]