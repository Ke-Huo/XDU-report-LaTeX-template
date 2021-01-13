D=10; %同轴线外导体内径为10mm
d=0.1:0.01:9; %同轴线内径为变量从0.1mm递增到9mm
%循环计算得到阻抗不同内径的阻抗值和功率容量和损耗值
for i=1:max(size(d))
    P(i)=(d(i)*d(i))/120*log(D/d(i));
    Z(i)=60*log(D./d(i));
    Loss(i)=10/(120*pi*D)*(1+D./d(i))/log(D./d(i));
end
[a,b]=min(Loss); %取得损耗最小值和坐标
[c,d]=max(P);%取得功率容量最大值和坐标
plot(Z,P,Z,Loss,'linewidth',1.2)%画图
hold on
plot(Z(b),a,'o');
text(Z(b),a+0.01,['$Z_0=$',num2str(Z(b)) ',' ,'$Lmin=$',num2str(a)],'fontsize',12,'interpreter','latex');
hold on
plot(Z(d),c,'o');
text(Z(d),c+0.001,['$Z_0=$',num2str(Z(d)) ',' ,'$Pmax=$',num2str(c)],'fontsize',12,'interpreter','latex');
legend('损耗','功率容量','fontsize',12)
xlabel('$Z_0$','fontsize',12,'interpreter','latex')
