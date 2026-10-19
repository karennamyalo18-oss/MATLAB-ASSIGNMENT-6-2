
   
  
    function NEW_NESTED
f = @(x) 1 - 3*x + 0.5*x*exp(x);
df = @(x) -3 + 0.5*exp(x)*(1+x);
r1 = findRoot(0);
r2 = findRoot(1.5);
fprintf('Roots = %.5f, %.5f\n', r1, r2);

    function r = findRoot(x0)
        x = x0;
        for k=1:100
            xn = x - f(x)/df(x);
            if abs(xn-x) < 1e-7, break; end
            x = xn;
        end
        r = xn;
    end
end