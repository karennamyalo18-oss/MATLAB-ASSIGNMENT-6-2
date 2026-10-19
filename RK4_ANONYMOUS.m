f1=@(x,y,z) z; f2=@(x,y,z) 2*x*z-8*y;
h=0.1; x=0:h:1; y=12; z=0; Y=y;
for i=1:length(x)-1
    k1y=f1(x(i),y,z); k1z=f2(x(i),y,z);
    k2y=f1(x(i)+h/2,y+h/2*k1y,z+h/2*k1z); k2z=f2(x(i)+h/2,y+h/2*k1y,z+h/2*k1z);
    k3y=f1(x(i)+h/2,y+h/2*k2y,z+h/2*k2z); k3z=f2(x(i)+h/2,y+h/2*k2y,z+h/2*k2z);
    k4y=f1(x(i)+h,y+h*k3y,z+h*k3z); k4z=f2(x(i)+h,y+h*k3y,z+h*k3z);
    y=y+h/6*(k1y+2*k2y+2*k3y+k4y); z=z+h/6*(k1z+2*k2z+2*k3z+k4z); Y=[Y y];
end
disp(Y);