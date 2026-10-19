

x = 0.5;
i = 1;

while i <= 10
    f = 1 - 3*x + 0.5*x*exp(x);
    df = -3 + 0.5*exp(x)*(1+x);

    x = x - f/df;

    i = i + 1;
end

fprintf('Root = %.5f\n',x)


x = 0.5;

for i = 1:10
    f = 1 - 3*x + 0.5*x*exp(x);
    df = -3 + 0.5*exp(x)*(1+x);

    x = x - f/df;
end

fprintf('Root = %.5f\n',x)
