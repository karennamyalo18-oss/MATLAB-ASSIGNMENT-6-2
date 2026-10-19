
    r = secant(2,1.9); fprintf('Root = %.5f\n', r);

function r=secant(x0,x1)
    for k=1:100
        x2 = x1 - myf(x1)*(x1-x0)/(myf(x1)-myf(x0));
        if abs(x2-x1)<1e-7, break; end
        x0=x1; x1=x2;
    end
    r=x2;
end
function y=myf(x), y=x-2*sin(x); end