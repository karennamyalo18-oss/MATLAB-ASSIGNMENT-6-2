function Q2_nested()
    function r=secant(x0,x1)
        for k=1:100
            x2 = x1 - f(x1)*(x1-x0)/(f(x1)-f(x0));
            if abs(x2-x1)<1e-7, break; end
            x0=x1; x1=x2;
        end
        r=x2;
    end
    f=@(x) x-2*sin(x);
    fprintf('Root = %.5f\n', secant(2,1.9));
end