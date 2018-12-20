clc
clear
x1=0;
x2=1;
y1=0;
y2=1;
x = [x1, x2, x2, x1, x1];
y = [y1, y1, y2, y2, y1];
xrand=rand (1,999999);
yrand=rand (1,999999);
count=0;
fill(x, y, 'w', 'LineWidth', 1);
hold on;
xlim([-.5, 1.5]);
ylim([-.5, 1.5]);

A_sqr = polyarea(x,y)
A_rad=0;

for i = 0:0.01:0.5
    xrand=rand (1,999999);
    yrand=rand (1,999999);
    count=0;
    cla
    fill(x, y, 'w', 'LineWidth', .5);
    circle2(0+i,0+i,.5); %1st circle
        for k=1:length(xrand)
            dsqr=(xrand(k)-(0+i))^2+(yrand(k)-(0+i))^2;
            if dsqr<=.25
                count=count+1;
            xrand(:,k)=100;
            yrand(:,k)=100;
            
            end    
        end
    circle2(0+i,1-i,.5); %1st circle
    for k= (1: 999999)
            dsqr=(xrand(k)-(0+i))^2+(yrand(k)-(1-i))^2;
        if dsqr<=.25
            count=count+1;
            xrand(:,k)=100;
            yrand(:,k)=100;
        end    
    end
    circle2(1-i,0+i,.5);
    for k= (1: 999999)
            dsqr=(xrand(k)-(1-i))^2+(yrand(k)-(0+i))^2;
        if dsqr<=.25
            count=count+1;
            xrand(:,k)=100;
            yrand(:,k)=100;
        end    
    end
% % %  for 3 basestations comment section from here:
    circle2(1-i,1-i,.5);
    for k= (1: 999999)
            dsqr=(xrand(k)-(1-i))^2+(yrand(k)-(1-i))^2;
        if dsqr<=.25
            count=count+1;
            xrand(:,k)=100;
            yrand(:,k)=100;
        end    

     end
% % % till here
    pause(.2)   
    percentage_radiated=(count/999999)*100

    
end

 
function circle2(x,y,r)
    ang=0:0.01:2*pi; 
    xp=r*cos(ang);
    yp=r*sin(ang);
    plot(x+xp,y+yp,'k','LineWidth', .5);
end


