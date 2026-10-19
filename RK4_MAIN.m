function Q3_main()
    h=0.1; x=0: h:1; n=length(x);
    y=zeros(1,n); z=zeros(1,n);
    y(1)=12; z(1)=0;
    for i=1:n-1
        k1y=z(i); k1z=2*x(i)*z(i)-8*y(i);
        k2y=z(i)+h/2*k1z; k2z=2*(x(i)+h/2)*(z(i)+h/2*k1z)-8*(y(i)+h/2*k1y);
        k3y=z(i)+h/2*k2z; k3z=2*(x(i)+h/2)*(z(i)+h/2*k2z)-8*(y(i)+h/2*k2y);
        k4y=z(i)+h*k3z; k4z=2*(x(i)+h)*(z(i)+h*k3z)-8*(y(i)+h*k3y);
        y(i+1)=y(i)+h/6*(k1y+2*k2y+2*k3y+k4y);
        z(i+1)=z(i)+h/6*(k1z+2*k2z+2*k3z+k4z);
    end
    disp(table(x',y','VariableNames',{'x','y'}));
end