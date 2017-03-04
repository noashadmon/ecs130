u = (-1:0.01:1);
y = [-1.00, 0.1512, 0.3860, 0.4802, 0.8838, 1.00];
x = [-1.00, -0.96, -0.65, 0.10, 0.40, 1.00];
ss = splinetx(x, y, u);
ps = polyinterp(x, y, u);
pl = piecelin(x, y, u);
pc = pchiptx(x, y, u);

plot(x,y, 'o')
hold on
plot(u, ss, 'g')
plot(u, ps, 'c')
plot(u, pl, 'r')
plot(u, pc, 'k')

%build legend
legend('(x,y)', 'splinetx', 'polyinterp', 'piecelin', 'pchiptx')
