
    r1 = newton(0); r2 = newton(1.5);
    fprintf('Roots = %.5f, %.5f\n', r1, r2);

function r = newton(x0)
    tol=1e-7; x=x0;
    for k=1:100
        x_new = x - myf(x)/mydf(x);
        if abs(x_new-x)<tol, break; end
        x=x_new;
    end
    r=x_new;
end
function y=myf(x), y=1-3*x+0.5*x*exp(x); end
function y=mydf(x), y=-3+0.5*exp(x)*(1+x); end