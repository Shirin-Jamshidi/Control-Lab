%%lab4
out_in_db=[3.046, 2.67, 2.41, 1.86, 1.58, 0.67, -0.17, -0.54, -0.91, -1.31, -1.94, -2.61, -3.35, -4.15, -5, -6]
f_ou_in=[0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1, 1.1, 1.2, 1.3, 1.4,1.8, 2]
semilogx(f_ou_in,out_in_db);
yline(-3+3.046)
title('Bode Diagram')
xlabel(['f'])
ylabel('|G(jw)|')
% phi=-1.*[3, 28, 40, 43.2,60.48,64.8,67.3,70,79.2,97.2];
% f_phi=[0.1, 0.4,  0.8, 1,  1.2, 1.5, 2.2,3,4,6];
% semilogx(f_phi,phi);
% yline(-45)
% title('Bode Diagram')
% xlabel(['f'])
% ylabel('<G(jw)')