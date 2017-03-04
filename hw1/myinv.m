function X = myinv(A)
    [n,n] = size(A);
    identity = eye(n,n);

    X = zeros(n,n);

    [L,U,p] = lutx(A);

    for i = 1:n
        e = identity(:,i);
        f = forward(L,e(p));
        X(:,i) = backsubs(U,f);
    end
end