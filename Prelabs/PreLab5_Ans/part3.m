kp = 10;
ki = 1;
s = tf('s');
Gc = kp + (ki/s);
bode(Gc)