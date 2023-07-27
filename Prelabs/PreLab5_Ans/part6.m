p = 0.1;
z = 5;
s = tf('s');
Gc = (s+p)/(s+z);
bode(Gc)