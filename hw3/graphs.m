figure('position', get(0,'screensize'))
[x,y] = ginput;
n = length(x);
s = (1:n)';
t = (1:0.05:n)';
u = splinetx(s,x,t);
v = splinetx(s,y,t);
h = splinetx(s,x,t);
z = splinetx(s,y,t);
clf reset
figure();
plot(x,y,'.',u,v,'-');
figure();
plot(x,y,'.',h,z,'-');
