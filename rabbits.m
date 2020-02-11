%Rabbits colony in time - Mandelbrot fractal in real parts
%made by Zyga on 10.02.2020

clear all;
clc;
close all;


x0=0.4;%initial value
r=2.6;%population increase parameter
gen=100;%no of generations 


x2=x0;
n=1;
for r=0.9:0.01:4
    x2=x0;
    pp=1;
    for p=1:gen
        x=x2;
        x2=r*x*(1-x);
        if p>round(gen/2)
            Xp(pp)=x2;
            pp=pp+1;
        end
    end
    if n==1
        YY=Xp;
        XX=r*ones(size(Xp));
    else
        YY=[YY; Xp]; 
        XX=[XX; r*ones(size(Xp))];        
    end
    n=n+1;
end

figure('units','normalized','outerposition',[0 0 1 1])
hold on;
[w,k]=size(YY);

for m=1:w
    y=YY(m,:);
    y=sort(y);
    YYs(m,:)=y;
end

for m=1:k
    y=YYs(:,m);
    x=XX(:,m);
    plot(x,y)
end
title('x_n_e_x_t_y_e_a_r = r * x_t_h_i_s_y_e_a_r * ( 1 - x_t_h_i_s_y_e_a_r );')
ylabel('X - population size at the end of time')
xlabel('r - population increase parameter')

