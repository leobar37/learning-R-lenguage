install.packages("ggplot2")
install.packages("plotly")



library(plotly);

polygon <- read.csv("https://raw.githubusercontent.com/kaijagahm/general/master/polygon_sampling_data_UMR.csv");
gaseosas <- c("Negro" , "Blanco" , "Rojo" ,"total")
fi <- c(9,8,3 ,20)
hi <- c(0.45,0.40,0.15,1)
pi <- c(45,40,15,100)
d_frame <- data.frame(gaseosas, fi, hi, pi)
View(d_frame)
grafico = plot_ly(d_frame,  x = gaseosas , y = fi , name = "Frecuencia absoluta" ,type='bar')%>% 
  add_trace(y = hi ,  name="Frecuencia Relativa")%>%
  add_trace(y = pi ,  name="Frecuencia porcentual")

 grafico

 #histograma de numero de hijos
 
 numero de_hijo = c(0,1,2,3,4, "Total");
 
 fi_b <- c(1,4,7,6,2,20);
 hi_b <- c(0.05 , 0.20 , 0.35 ,0.10 , 1.00 );
 pi_b <- c(5, 20 , 35,30,10 , 100);
 
 Histograma=hist(fi_b,main = "Histograma De Numero De Hijos",col=1:10)
 