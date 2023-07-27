s = tf('s');
k = 1.28;
T = 0.15;
G=k/(T.*s+1);
H = G/(1+s);

K1 = 1;
K2 = 0;
Sys1 = H / (s*(1+K2.*K1.*G)+ (K1.*H));
figure
rlocus(Sys1)
title('Pole-Zero Plane K1 = 1 , K2 = 0')
%% 
K1 = 8.2;
K2 = 0;
Sys2 = H / (s*(1+K2.*K1.*G)+ (K1.*H));
figure
rlocus(Sys2)
title('Pole-Zero Plane K1 = 8.2, K2 = 0')


%% 
K1 = 8.2;
K2 = 2.2;
Sys3 = H / (s*(1+K2.*K1.*G)+ (K1.*H));
figure
rlocus(Sys3)
title('Pole-Zero Plane K1 = 8.2, K2 = 2.2')
