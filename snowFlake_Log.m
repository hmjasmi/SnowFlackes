function snowFlake_Log(FlakeType,Title,Categories,Intensity)
TEXT1 = Categories{1};
TEXT2 = Categories{2};
TEXT3 = Categories{3};
TEXT4 = Categories{4};
TEXT5 = Categories{5};
IntensityColor = '#39FF14';
Intensity = 10*log10(Intensity);
Intensity = Intensity./10/log10(100);

% Intensity = 10.*log10(Intensity./max(Intensity));
Angles = (72.*[0:1:4]+90).*pi/180;
Intensity = Intensity.*exp(1j.*Angles);
IntensityPolygon = polyshape(real(Intensity),imag(Intensity));
r=1;
x=0;
y=0;
th = 0:pi/100:2*pi;
x1 = cos(th);
y1 = sin(th);
x2 = 0.95*cos(th);
y2 = 0.95*sin(th);
x3 = 0.80*cos(th);
y3 = 0.80*sin(th);
x4 = 0.65*cos(th);
y4 = 0.65*sin(th);
x5 = 0.50*cos(th);
y5 = 0.50*sin(th);
x6 = 0.35*cos(th);
y6 = 0.35*sin(th);
axisMarkerTick = 1j.*[0 0.35 0.50 0.65 0.80 0.95 1].*exp(1j*30*pi/180);
axisMarkerLabel = {'$0$','$5$','$10$','$20$','$40$','$80$','$100$'};
pgon1 = polyshape({x1(2:end),x2(2:end)},{y1(2:end),y2(2:end)});
pgon2 = polyshape({x2(2:end),x3(2:end)},{y2(2:end),y3(2:end)});
pgon3 = polyshape({x3(2:end),x4(2:end)},{y3(2:end),y4(2:end)});
pgon4 = polyshape({x4(2:end),x5(2:end)},{y4(2:end),y5(2:end)});
pgon5 = polyshape({x5(2:end),x6(2:end)},{y5(2:end),y6(2:end)});
xunit = r * cos(th) + x;
yunit = r * sin(th) + y;

Line1 = [0+0j 0+1j];
Line2 = Line1.*exp(1j*2*pi/5);
Line3 = Line2.*exp(1j*2*pi/5);
Line4 = Line3.*exp(1j*2*pi/5);
Line5 = Line4.*exp(1j*2*pi/5);

figure
set(gcf, 'Units', 'Inches', 'Position', [0, 0, 2.5, 2.5], 'PaperUnits', 'Inches', 'PaperSize', [2.5, 2.5]);
set(groot,'defaultAxesTickLabelInterpreter','latex');
set(gcf,'color','w');
outer_circle = plot(xunit,yunit,'color','black','LineWidth',0.75); hold on
p1 = plot(pgon1,'FaceColor','#27343F','FaceAlpha',1);
p2 = plot(pgon2,'FaceColor','#4A5965','FaceAlpha',1);
p3 = plot(pgon3,'FaceColor','#27343F','FaceAlpha',1);
p4 = plot(pgon4,'FaceColor','#4A5965','FaceAlpha',1);
p5 = plot(pgon5,'FaceColor','#27343F','FaceAlpha',1);
line1 = plot(real(Line1),imag(Line1),'color','#4A5965','LineWidth',1.25); hold on
line2 = plot(real(Line2),imag(Line2),'color','#4A5965','LineWidth',1.25); hold on
line3 = plot(real(Line3),imag(Line3),'color','#4A5965','LineWidth',1.25); hold on
line4 = plot(real(Line4),imag(Line4),'color','#4A5965','LineWidth',1.25); hold on
line5 = plot(real(Line5),imag(Line5),'color','#4A5965','LineWidth',1.25); hold on
axisMarker = text(real(axisMarkerTick),imag(axisMarkerTick),axisMarkerLabel,...
        'VerticalAlignment','bottom','HorizontalAlignment','center',...
        'FontWeight','bold','fontsize',6,'color','red','interpreter','latex');
text1 = text(real(Line1(2)),imag(Line1(2)),TEXT1,...
        'VerticalAlignment','bottom','HorizontalAlignment','center',...
        'FontWeight','bold','fontsize',14,'color','white','interpreter','latex');
text2 = text(real(Line2(2)),imag(Line2(2)),TEXT2,...
        'VerticalAlignment','bottom','HorizontalAlignment','center',...
        'FontWeight','bold','fontsize',14,'color','white','interpreter','latex');
set(text2,'Rotation',90-15);
text3 = text(real(Line3(2)),imag(Line3(2)),TEXT3,...
        'VerticalAlignment','bottom','HorizontalAlignment','center',...
        'FontWeight','bold','fontsize',14,'color','white','interpreter','latex');
set(text3,'Rotation',90+50);
text4 = text(real(Line4(2)),imag(Line4(2)),TEXT4,...
        'VerticalAlignment','bottom','HorizontalAlignment','center',...
        'FontWeight','bold','fontsize',14,'color','white','interpreter','latex');
set(text4,'Rotation',-90-50);
text5 = text(real(Line5(2)),imag(Line5(2)),TEXT5,...
        'VerticalAlignment','bottom','HorizontalAlignment','center',...
        'FontWeight','bold','fontsize',14,'color','white','interpreter','latex');
set(text5,'Rotation',-90+15);

p6 = plot(real(Intensity),imag(Intensity),'o','MarkerFaceColor',IntensityColor,'color',IntensityColor);
p7 = plot(IntensityPolygon,'EdgeColor',IntensityColor,'FaceColor',IntensityColor,'FaceAlpha',0.5);
% title(Title,'FontWeight','bold','fontsize',14,'color','white','interpreter','latex');
ax = gca;
axis([-1.15 1.15 -1.15 1.15]);
ax = gca;
ax.Color = '#4A5965';
% ax.FontSize = 11;
ax.LineWidth = 0.75;
set(gca,'xtick',[],'XTickLabel',[])
set(gca,'ytick',[],'YTickLabel',[])
set(gca,'box','off')
axis off
set(gcf,'color','#4A5965');
print(gcf,['Snowflake_',FlakeType,'.png'],'-dpng','-r600');
print(gcf,['Snowflake_',FlakeType,'.eps'],'-depsc','-r600');
