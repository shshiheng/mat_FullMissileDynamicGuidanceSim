% figure(1)
% plot(t,x)
% figure(2)
% plot(t,y)
% figure(3)
% plot(t,alpha)
% figure(4)
% plot(t,beta)
% figure(5)
% plot(t,sit)
% figure(6)
% plot(t,fai)
% figure(7)
% plot(t,gama)
figure(1)
plot(x,y,'b','linewidth',1.5)
ylabel('y (m)')
xlabel('x (m)')
figure(2)
plot(t,alpha*57.3,'b','linewidth',1.5)
ylabel('angle of attack (degree)')
xlabel('t(s)')
figure(3)
plot(t,mach,'b','linewidth',1.5)
ylabel('mach number')
xlabel('t(s)')
figure(4)
plot(t,y,'b','linewidth',1.5)
ylabel('height (m)')
xlabel('t(s)')
index = 1;
for i = 1:length(t)
    if(x(i)>=5000)
        index = i;
        break
    end
end
%%
plot3(x,z,y,'-')
xlabel('x')
ylabel('z')
zlabel('y')
grid on
Lift = 0.5*0.6523*(1.5*340)^2*0.00384*13.886
r = 600
fneed = 9.2*(1.5*340)^2/r
%%
figure(5)
plot3(xt,zt,yt,'-')
xlabel('xt')
ylabel('zt')
zlabel('yt')
grid on

figure(6)
plot3(xt,zt,yt,'-r')
hold on
plot3(x,z,y,'-b')
grid on
xlabel('xt')
ylabel('zt')
zlabel('yt')