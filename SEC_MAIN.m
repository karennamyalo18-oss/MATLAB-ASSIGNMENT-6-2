function root = SEC_MAIN(x0, x1)
    if nargin < 2
        x0 = 2;
        x1 = 1.9;
    end

    f = @(x) x - 2*sin(x);
    tol = 1e-7;

    for k = 1:100
        fx0 = f(x0);
        fx1 = f(x1);
        if abs(fx1 - fx0) < 1e-14
            break
        end
        x2 = x1 - fx1*(x1 - x0)/(fx1 - fx0);
        if abs(x2 - x1) < tol
            x1 = x2;
            break
        end
        x0 = x1;
        x1 = x2;
    end

    root = x1;
    fprintf('Positive solution = %.5f\n', root);
end