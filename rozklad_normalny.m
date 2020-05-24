%% ISO 6400 dla kazdego z 10 zdjec

pd_iso6400_1 = fitdist(reshape(iso6400(1,:),[10000,1]),'Normal')
pd_iso6400_2 = fitdist(reshape(iso6400(2,:),[10000,1]),'Normal')
pd_iso6400_3 = fitdist(reshape(iso6400(3,:),[10000,1]),'Normal')
pd_iso6400_4 = fitdist(reshape(iso6400(4,:),[10000,1]),'Normal')
pd_iso6400_5 = fitdist(reshape(iso6400(5,:),[10000,1]),'Normal')
pd_iso6400_6 = fitdist(reshape(iso6400(6,:),[10000,1]),'Normal')
pd_iso6400_7 = fitdist(reshape(iso6400(7,:),[10000,1]),'Normal')
pd_iso6400_8 = fitdist(reshape(iso6400(8,:),[10000,1]),'Normal')
pd_iso6400_9 = fitdist(reshape(iso6400(9,:),[10000,1]),'Normal')
pd_iso6400_10 = fitdist(reshape(iso6400(10,:),[10000,1]),'Normal')

x = [15000:.1:45000];

y_iso6400_1 = normpdf(x, pd_iso6400_1.mu, pd_iso6400_1.sigma);
y_iso6400_2 = normpdf(x, pd_iso6400_2.mu, pd_iso6400_2.sigma);
y_iso6400_3 = normpdf(x, pd_iso6400_3.mu, pd_iso6400_3.sigma);
y_iso6400_4 = normpdf(x, pd_iso6400_4.mu, pd_iso6400_4.sigma);
y_iso6400_5 = normpdf(x, pd_iso6400_5.mu, pd_iso6400_5.sigma);
y_iso6400_6 = normpdf(x, pd_iso6400_6.mu, pd_iso6400_6.sigma);
y_iso6400_7 = normpdf(x, pd_iso6400_7.mu, pd_iso6400_7.sigma);
y_iso6400_8 = normpdf(x, pd_iso6400_8.mu, pd_iso6400_8.sigma);
y_iso6400_9 = normpdf(x, pd_iso6400_9.mu, pd_iso6400_9.sigma);
y_iso6400_10 = normpdf(x, pd_iso6400_10.mu, pd_iso6400_10.sigma);

figure(1)
plot(x,y_iso6400_1,x,y_iso6400_2,x,y_iso6400_3,x,y_iso6400_4,x,y_iso6400_5,x,y_iso6400_6,x,y_iso6400_7,x,y_iso6400_8,x,y_iso6400_9,x,y_iso6400_10)
title('Rozk³ady normalne 10 zdjêæ dla ISO-6400')

%% ISO 12800 dla kazdego z 10 zdjec

pd_iso12800_1 = fitdist(reshape(iso12800(1,:),[10000,1]),'Normal')
pd_iso12800_2 = fitdist(reshape(iso12800(2,:),[10000,1]),'Normal')
pd_iso12800_3 = fitdist(reshape(iso12800(3,:),[10000,1]),'Normal')
pd_iso12800_4 = fitdist(reshape(iso12800(4,:),[10000,1]),'Normal')
pd_iso12800_5 = fitdist(reshape(iso12800(5,:),[10000,1]),'Normal')
pd_iso12800_6 = fitdist(reshape(iso12800(6,:),[10000,1]),'Normal')
pd_iso12800_7 = fitdist(reshape(iso12800(7,:),[10000,1]),'Normal')
pd_iso12800_8 = fitdist(reshape(iso12800(8,:),[10000,1]),'Normal')
pd_iso12800_9 = fitdist(reshape(iso12800(9,:),[10000,1]),'Normal')
pd_iso12800_10 = fitdist(reshape(iso12800(10,:),[10000,1]),'Normal')

x = [20000:.1:50000];

y_iso12800_1 = normpdf(x, pd_iso12800_1.mu, pd_iso12800_1.sigma);
y_iso12800_2 = normpdf(x, pd_iso12800_2.mu, pd_iso12800_2.sigma);
y_iso12800_3 = normpdf(x, pd_iso12800_3.mu, pd_iso12800_3.sigma);
y_iso12800_4 = normpdf(x, pd_iso12800_4.mu, pd_iso12800_4.sigma);
y_iso12800_5 = normpdf(x, pd_iso12800_5.mu, pd_iso12800_5.sigma);
y_iso12800_6 = normpdf(x, pd_iso12800_6.mu, pd_iso12800_6.sigma);
y_iso12800_7 = normpdf(x, pd_iso12800_7.mu, pd_iso12800_7.sigma);
y_iso12800_8 = normpdf(x, pd_iso12800_8.mu, pd_iso12800_8.sigma);
y_iso12800_9 = normpdf(x, pd_iso12800_9.mu, pd_iso12800_9.sigma);
y_iso12800_10 = normpdf(x, pd_iso12800_10.mu, pd_iso12800_10.sigma);

figure(2)
plot(x,y_iso12800_1,x,y_iso12800_2,x,y_iso12800_3,x,y_iso12800_4,x,y_iso12800_5,x,y_iso12800_6,x,y_iso12800_7,x,y_iso12800_8,x,y_iso12800_9,x,y_iso12800_10)
title('Rozk³ady normalne 10 zdjêæ dla ISO-12800')
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

x = [15000:.1:50000];

pd_6400_all = fitdist(reshape(iso6400_vec,[100000,1]), 'Normal')

y_6400_all_normal = normpdf(x, pd_6400_all.mu, pd_6400_all.sigma);

p_6400_all_normal = cdf(pd_6400_all,x);

pd_12800_all = fitdist(reshape(iso12800_vec,[100000,1]), 'Normal')

y_12800_all_normal = normpdf(x, pd_12800_all.mu, pd_12800_all.sigma);

p_12800_all_normal = cdf(pd_12800_all,x);

figure(3)
plot(x,y_6400_all_normal,x,y_12800_all_normal)
legend('ISO6400','ISO12800')
title('Porównanie rozk³adów normalnych dla wszystkich zdjêæ ISO-6400 vs ISO-12800')

figure(4)
plot(x,p_6400_all_normal,x,p_12800_all_normal)
legend('ISO6400','ISO12800','Location','best')
title('Dystrybuanty rozk³adu normalnego dla ISO-6400 vs ISO-12800')