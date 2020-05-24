%% ISO 6400 dla kazdego z 10 zdjec

pd_iso6400_1 = fitdist(reshape(iso6400(1,:),[10000,1]),'Gamma')
pd_iso6400_2 = fitdist(reshape(iso6400(2,:),[10000,1]),'Gamma')
pd_iso6400_3 = fitdist(reshape(iso6400(3,:),[10000,1]),'Gamma')
pd_iso6400_4 = fitdist(reshape(iso6400(4,:),[10000,1]),'Gamma')
pd_iso6400_5 = fitdist(reshape(iso6400(5,:),[10000,1]),'Gamma')
pd_iso6400_6 = fitdist(reshape(iso6400(6,:),[10000,1]),'Gamma')
pd_iso6400_7 = fitdist(reshape(iso6400(7,:),[10000,1]),'Gamma')
pd_iso6400_8 = fitdist(reshape(iso6400(8,:),[10000,1]),'Gamma')
pd_iso6400_9 = fitdist(reshape(iso6400(9,:),[10000,1]),'Gamma')
pd_iso6400_10 = fitdist(reshape(iso6400(10,:),[10000,1]),'Gamma')

x = [15000:.1:45000];

y_iso6400_1 = gampdf(x, pd_iso6400_1.a, pd_iso6400_1.b);
y_iso6400_2 = gampdf(x, pd_iso6400_2.a, pd_iso6400_2.b);
y_iso6400_3 = gampdf(x, pd_iso6400_3.a, pd_iso6400_3.b);
y_iso6400_4 = gampdf(x, pd_iso6400_4.a, pd_iso6400_4.b);
y_iso6400_5 = gampdf(x, pd_iso6400_5.a, pd_iso6400_5.b);
y_iso6400_6 = gampdf(x, pd_iso6400_6.a, pd_iso6400_6.b);
y_iso6400_7 = gampdf(x, pd_iso6400_7.a, pd_iso6400_7.b);
y_iso6400_8 = gampdf(x, pd_iso6400_8.a, pd_iso6400_8.b);
y_iso6400_9 = gampdf(x, pd_iso6400_9.a, pd_iso6400_9.b);
y_iso6400_10 = gampdf(x, pd_iso6400_10.a, pd_iso6400_10.b);

figure(1)
plot(x,y_iso6400_1,x,y_iso6400_2,x,y_iso6400_3,x,y_iso6400_4,x,y_iso6400_5,x,y_iso6400_6,x,y_iso6400_7,x,y_iso6400_8,x,y_iso6400_9,x,y_iso6400_10)
title('Rozk³ady gamma 10 zdjêæ dla ISO-6400')

%% ISO 12800 dla kazdego z 10 zdjec

pd_iso12800_1 = fitdist(reshape(iso12800(1,:),[10000,1]),'Gamma')
pd_iso12800_2 = fitdist(reshape(iso12800(2,:),[10000,1]),'Gamma')
pd_iso12800_3 = fitdist(reshape(iso12800(3,:),[10000,1]),'Gamma')
pd_iso12800_4 = fitdist(reshape(iso12800(4,:),[10000,1]),'Gamma')
pd_iso12800_5 = fitdist(reshape(iso12800(5,:),[10000,1]),'Gamma')
pd_iso12800_6 = fitdist(reshape(iso12800(6,:),[10000,1]),'Gamma')
pd_iso12800_7 = fitdist(reshape(iso12800(7,:),[10000,1]),'Gamma')
pd_iso12800_8 = fitdist(reshape(iso12800(8,:),[10000,1]),'Gamma')
pd_iso12800_9 = fitdist(reshape(iso12800(9,:),[10000,1]),'Gamma')
pd_iso12800_10 = fitdist(reshape(iso12800(10,:),[10000,1]),'Gamma')

x = [15000:.1:50000];

y_iso12800_1 = gampdf(x, pd_iso12800_1.a, pd_iso12800_1.b);
y_iso12800_2 = gampdf(x, pd_iso12800_2.a, pd_iso12800_2.b);
y_iso12800_3 = gampdf(x, pd_iso12800_3.a, pd_iso12800_3.b);
y_iso12800_4 = gampdf(x, pd_iso12800_4.a, pd_iso12800_4.b);
y_iso12800_5 = gampdf(x, pd_iso12800_5.a, pd_iso12800_5.b);
y_iso12800_6 = gampdf(x, pd_iso12800_6.a, pd_iso12800_6.b);
y_iso12800_7 = gampdf(x, pd_iso12800_7.a, pd_iso12800_7.b);
y_iso12800_8 = gampdf(x, pd_iso12800_8.a, pd_iso12800_8.b);
y_iso12800_9 = gampdf(x, pd_iso12800_9.a, pd_iso12800_9.b);
y_iso12800_10 = gampdf(x, pd_iso12800_10.a, pd_iso12800_10.b);

figure(2)
plot(x,y_iso12800_1,x,y_iso12800_2,x,y_iso12800_3,x,y_iso12800_4,x,y_iso12800_5,x,y_iso12800_6,x,y_iso12800_7,x,y_iso12800_8,x,y_iso12800_9,x,y_iso12800_10)
title('Rozk³ady gamma 10 zdjêæ dla ISO-12800')
%% Rozklad normalny ISO 6400 vs 12800 dla calosci

iso6400_vec = [];
iso12800_vec = [];

for i = 1:10
    % tymczasowa tablica przechowuj¹ca wartoœci w danym pikselu z 10 obrazków              
    temp1 = iso6400(i,:);
    iso6400_vec = [iso6400_vec; temp1];
    temp2 = iso12800(i,:);
    iso12800_vec = [iso12800_vec; temp2];
   
end


pd_6400_all = fitdist(reshape(iso6400_vec,[100000,1]), 'Gamma')

y_6400_all_gamma = gampdf(x, pd_6400_all.a, pd_6400_all.b);

p_6400_all_gamma = gamcdf(x, pd_6400_all.a, pd_6400_all.b);

pd_12800_all = fitdist(reshape(iso12800_vec,[100000,1]), 'Gamma')

y_12800_all_gamma = gampdf(x, pd_12800_all.a, pd_12800_all.b);

p_12800_all_gamma = gamcdf(x, pd_12800_all.a, pd_12800_all.b);

figure(3)
plot(x,y_6400_all_gamma,x,y_12800_all_gamma)
legend('ISO6400','ISO12800')
title('Porównanie rozk³adów gamma dla wszystkich zdjêæ ISO-6400 vs ISO-12800')

figure(4)
plot(x,p_6400_all_gamma,x,p_12800_all_gamma)
legend('ISO6400','ISO12800','Location','best')
title('Dystrybuanty rozk³adu gamma dla ISO-6400 vs ISO-12800')