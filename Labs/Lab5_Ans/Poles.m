%% inotializing s
s = tf('s');
h = figure;  
h.Position = [100 100 9000 9000]; 
K= 1.42;
T=0.165;
%% System 2
G = 2.2* (K/(T*s+1));
Sys2 = G/(1+G);
h(1) = subplot(4,2,1);
pzplot(Sys2)
title('Pole-Zero Map of system 2')
%% System 3
G = 4.7* (K/(T*s+1));
Sys3 = G/(1+G);
h(2) = subplot(4,2,2);
pzplot(Sys3)
title('system 3')
%% System 4
G = ((s+2.2)/(s+1))* (K/(T*s+1));
Sys4 = G/(1+G);
h(3) = subplot(4,2,3);
pzplot(Sys4)
title('system 4')
%% System 5
G = ((s+4.7)/(s+1))* (K/(T*s+1));
Sys5 = G/(1+G);
h(4) = subplot(4,2,4);
pzplot(Sys5)
title('system 5')
%% System 6
G = ((s+2.2)/s)* (K/(T*s+1));
Sys6 = G/(1+G);
h(5) = subplot(4,2,5);
pzplot(Sys6)
title('system 6')
%% System 7
G = ((s+4.7)/s)* (K/(T*s+1));
Sys7 = G/(1+G);
h(6) = subplot(4,2,6);
pzplot(Sys7)
title('system 7')
%% System 1
h(7) = subplot(4,2,7);
pos = get(h,'Position');
new = mean(cellfun(@(v)v(1),pos(1:2)));
set(h(7),'Position',[new,pos{end}(2:end)])

G = K/(T*s+1);
Sys1 = G;
pzplot(Sys1)
title('Pole-Zero Map of open loop')