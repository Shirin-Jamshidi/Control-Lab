kp = 10;
ki = 1;
kd = 0.1;
s = tf('s');
Gc = kp + (ki/s) + (kd*s);
bode(Gc)