x = -5:0.01:5;

%subplot(3,2,1);
%plot(x,x>0,'k','LineWidth',2);
%xlabel('f_*','Interpreter','tex');
%ylabel('\sigma(f_*)','Interpreter','tex');
%title('Heaviside step function');
%axis([[-5 5] -0.01 1.01]);
%grid on

subplot(3,2,3);
plot(x,exp(x)./(exp(x)+1),'k','LineWidth',2);
xlabel('f_*');
ylabel('\sigma(f_*)');
title('Logistic function');
axis([[-5 5] -0.01 1.01]);
%grid on

subplot(3,2,5);
plot(x*sqrt(pi/8),normcdf(x*sqrt(pi/8)),'k','LineWidth',2);
xlabel('f_*');
ylabel('\sigma(f_*)');
title('Inverse Probit function (Normal CDF)');
axis([[-5 5]*sqrt(pi/8) -0.01 1.01]);
%grid on
print -deps squashing.eps
!epstopdf squashing.eps

