clear all;
clc;
format long
syms x
f = sin(x);
a = 0; b = pi; I = int(f,x,a,b);
% I1
w1 = 1; x12 = -0.5774; t12 = (b-a)*x12/2 + (a+b)/2;
w2 = 1; x22 = 0.5774; t22 = (b-a)*x22/2 + (a+b)/2;
I1 = (b-a)/2*(w1*subs(f,x,t12)+w2*subs(f,x,t22));
rEI1 = abs((I-I1)/I);
disp('I1 = '); disp(I1);
disp('Sai so: '); disp(rEI1);
% I2
w1 = 0.5556; x13 = -0.7746; t13 = (b-a)*x13/2 + (a+b)/2;
w2 = 0.8889; x23 = 0; t23 = (b-a)*x23/2 + (a+b)/2;
w3 = 0.5556; x33 = 0.7746; t33 = (b-a)*x33/2 + (a+b)/2;
I2 = (b-a)/2*(w1*subs(f,x,t13)+w2*subs(f,x,t23)+ w3*subs(f,x,t33));
rEI2 = abs((I-I2)/I);
disp('I2 = '); disp(I2);
disp('Sai so: '); disp(rEI2);
% I3
w1 = 0.3479; x14 =-0.8611; t14 = (b-a)*x14/2 + (a+b)/2;
w2 = 0.6521; x24 =-0.3340; t24 = (b-a)*x24/2 + (a+b)/2;
w3 = 0.6521; x34 = 0.3340; t34 = (b-a)*x34/2 + (a+b)/2;
w4 = 0.3479; x44 = 0.8611; t44 = (b-a)*x44/2 + (a+b)/2;
I3 = (b-a)/2*(w1*subs(f,x,t14)+w2*subs(f,x,t24)+ w3*subs(f,x,t34)+ w4*subs(f,x,t44));
rEI3 = abs((I-I3)/I);
disp('I3 = '); disp(I3);
disp('Sai so: '); disp(rEI3);