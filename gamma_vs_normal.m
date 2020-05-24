figure(1)
plot(x,y_6400_all_gamma,x,y_6400_all_normal)
legend('Gamma-ISO6400','Normal-ISO6400')
title('Porównanie rozk³adu normalnego i gamma (ISO-6400)')

figure(2)
plot(x,y_12800_all_gamma,x,y_12800_all_normal)
legend('Gamma-ISO12800','Normal-ISO12800')
title('Porównanie rozk³adu normalnego i gamma (ISO-12800)')

figure(3)
plot(x,p_6400_all_gamma,x,p_6400_all_normal)
legend('Gamma-ISO6400','Normal-ISO6400','Location','best')
title('Porównanie dystrybuant rozk³adu normalnego i gamma (ISO-6400)')

figure(4)
plot(x,p_12800_all_gamma,x,p_12800_all_normal)
legend('Gamma-ISO12800','Normal-ISO12800','Location','best')
title('Porównanie dystrybuant rozk³adu normalnego i gamma (ISO-12800)')