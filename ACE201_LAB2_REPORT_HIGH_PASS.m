%%Για την αναφορά του δευτέρου εργαστηρίου των κυκλωμάτων
%%Μανώλης 16/11/2019
close all
clear all
%% Υψιπερατό RC -- 1ο κύκλωμα

kHz=[0.21 0.25 0.35 0.41 0.51 0.66 0.84 0.92 1.1 1.42 1.6 1.87 2.25 2.98 8.61 21];
v0pp_div=[1 1.2 1.6 1.8 2.2 2.6 3 3.2 3.5 3.8 4 4.2 4.4 4.6 4.8 5];
v0pp_v=2.*v0pp_div;
% a= v0pp/vSpp (absolute values)
a=v0pp_div./5;
db=20*log10(a);

hold on;
figure(1);
axis([-1 23 -15 1]);
scatter(kHz, db, 'o');
plot(kHz, db);
xlabel('f(kHz)');
ylabel('20log|H(jω)| (dB)');
title('Διάγραμμα Bode για το πλάτος της συνάρτησης μεταφοράς υψιπερατού RC κυκλώματος');
hold off;






