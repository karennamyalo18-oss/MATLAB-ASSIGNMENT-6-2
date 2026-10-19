function RK4_NESTED
h=0.1; x=0:h:1; n=length(x);
y=zeros(1,n); z=zeros(1,n);
y(1)=12;
for i=1:n-1
    [k1y,k1z]=f_sys(x(i),y(i),z(i));
    [k2y,k2z]=f_sys(x(i)+h/2,y(i)+h/2*k1y,z(i)+h/2*k1z);
    [k3y,k3z]=f_sys(x(i)+h/2,y(i)+h/2*k2y,z(i)+h/2*k2z);
    [k4y,k4z]=f_sys(x(i)+h,y(i)+h*k3y,z(i)+h*k3z);
    y(i+1)=y(i)+h/6*(k1y+2*k2y+2*k3y+k4y);
    z(i+1)=z(i)+h/6*(k1z+2*k2z+2*k3z+k4z);
end
for i=1:n
    fprintf('x=%.1f y=%.4f\n',x(i),y(i));
end

    function [ky,kz]=f_sys(xi,yi,zi)
        ky=zi;
        kz=2*xi*zi-8*yi;
    end
end