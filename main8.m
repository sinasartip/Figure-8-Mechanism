clc
clear
%% POlAR to CARTISIAN & FOURIER CALCULATION
alpha = 2;
th = linspace(0,2*pi);
rho = real(sqrt(alpha.^2.*cos(2.*th).*sec(th).^4));
PTx = rho.*cos(th); 
PTy = rho.*sin(th);

 fx = createFit8(th,PTx);
 fy = createFit8(th,PTy);

%% coeff _ init
%utilize coeffname if you are confused about the order of coefficients
PT = [coeffvalues(fx);coeffvalues(fy)]';
sprintf("X coef.  Y coef.")
disp(PT)
coeffnames(fx);
a0= PT(1,1);
a1= PT(2,1);
b1=PT(3,1);
a2=PT(4,1);
b2=PT(5,1);
a3=PT(6,1);
b3=PT(7,1);
a4=PT(8,1);
b4=PT(9,1);
a5= PT(10,1);
b5=PT(11,1);
a6=PT(12,1);
b6=PT(13,1);
a7=PT(14,1);
b7=PT(15,1);
a8=PT(16,1);
b8=PT(17,1);
w=PT(18,1);


 xcom=@(x)a0 + a1*cos(x*w) + b1*sin(x*w) + a2*cos(2*x*w) + b2*sin(2*x*w) + a3*cos(3*x*w) + b3*sin(3*x*w) +  a4*cos(4*x*w) + b4*sin(4*x*w)+ a5*cos(5*x*w) + b5*sin(5*x*w) + a6*cos(6*x*w) + b6*sin(6*x*w) + a7*cos(7*x*w) + b7*sin(7*x*w) + a8*cos(8*x*w) + b8*sin(8*x*w);

a0= PT(1,2);
a1= PT(2,2);
b1=PT(3,2);
a2=PT(4,2);
b2=PT(5,2);
a3=PT(6,2);
b3=PT(7,2);
a4=PT(8,2);
b4=PT(9,2);
a5= PT(10,1);
b5=PT(11,1);
a6=PT(12,1);
b6=PT(13,1);
a7=PT(14,1);
b7=PT(15,1);
a8=PT(16,1);
b8=PT(17,1);
w=PT(18,2);
ycom=@(x)a0 + a1*cos(x*w) + b1*sin(x*w) + a2*cos(2*x*w) + b2*sin(2*x*w) + a3*cos(3*x*w) + b3*sin(3*x*w) +  a4*cos(4*x*w) + b4*sin(4*x*w)+ a5*cos(5*x*w) + b5*sin(5*x*w) +  a6*cos(6*x*w) + b6*sin(6*x*w) + a7*cos(7*x*w) + b7*sin(7*x*w) +  a8*cos(8*x*w) + b8*sin(8*x*w);
%this will graph the overlay
hold on

plot(PTx,PTy)
xlabel('x')
ylabel('y')
title('Figure 8 fourier series with four terms over layed on ideal case')
plot(xcom(th),ycom(th))

hold off
%% seperate_plot

figure

plot(PTx,PTy)
xlabel('x')
ylabel('y')
title('Figure 8 ideal case')

figure

plot(xcom(th),ycom(th))
xlabel('x')
ylabel('y')
title('Figure 8 fourier series with four terms')