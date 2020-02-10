clear all;
clc;
close all;


x0=0.4;
r=2.6;

%figure;
figure('units','normalized','outerposition',[0 0 1 1])

hold on;

x2=x0;
n=1;
for r=0.9:0.01:4
    x2=x0;
    pp=1;
    for p=1:100
        x=x2;
        x2=r*x*(1-x);
        if p>50
            Xp(pp)=x2;
            pp=pp+1;
        end
    end
    Rpu=unique(Xp);
    tmp=r*ones(size(Rpu));
    plot(tmp,Rpu,'.');
    pause(0.05)
%    X2(n)=x2;
%    R(n)=r;
%    n=n+1;
end



% X2'
% 
% plot(R,X,'r')
% plot(R,X,'b.')
% 
% plot(R,X2,'r')
% plot(R,X2,'b.')