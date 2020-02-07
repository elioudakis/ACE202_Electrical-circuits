%%Για την αναφορά του δευτέρου εργαστηρίου των κυκλωμάτων
%%Μανώλης 16/11/2019
close all
clear all
%% Βαθυπερατό RC -- 2ο κύκλωμα

kHz=[5.61 3.7 3.3 2.52 2 1.81 1.46 1.27 1.05 0.9 0.82 0.69 0.56 0.49 0.31 0.18];
v0pp_div=[1 1.4 1.6 2 2.4 2.6 2.8 3.2 3.5 3.8 4 4.2 4.4 4.6 4.8 5];
v0pp_v=2.*v0pp_div;
% a= v0pp/vSpp (absolute values)
a=v0pp_div./5;
db=20*log10(a);

hold on;
figure(1);
axis([-1 6 -15 1]);
scatter(kHz, db, 'o');
plot(kHz, db);
xlabel('f(kHz)');
ylabel('20log|H(jω)| (dB)');
title('Διάγραμμα Bode για το πλάτος της συνάρτησης μεταφοράς βαθυπερατού RC κυκλώματος');
hold off;






