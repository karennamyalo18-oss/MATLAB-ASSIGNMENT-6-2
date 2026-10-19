f = @(x) 1 - 3*x + 0.5*x.*exp(x);
df = @(x) -3 + 0.5*exp(x).*(1+x);
newton = @(x0) arrayfun(@(a) a, 0); % placeholder
x0=0; x=x0;
for k=1:100
    x_new = x - f(x)/df(x);
    if abs(x_new-x)<1e-7, break; end
    x=x_new;
end
fprintf('Root1 = %.5f\n', x_new);
x0=1.5; x=x0;
for k=1:100
    x_new = x - f(x)/df(x);
    if abs(x_new-x)<1e-7, break; end
    x=x_new;
end
fprintf('Root2 = %.5f\n', x_new);