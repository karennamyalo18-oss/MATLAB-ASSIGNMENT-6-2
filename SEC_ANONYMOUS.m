f = @(x) x - 2*sin(x);
x0=2; x1=1.9;
for k=1:100
    x2 = x1 - f(x1)*(x1-x0)/(f(x1)-f(x0));
    if abs(x2-x1)<1e-7, break; end
    x0=x1; x1=x2;
end
fprintf('Root = %.5f\n', x2);