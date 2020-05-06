#TIPOS DE VARIABLES CATEGÓRICAS O FACTORIALES EN R
#las variables nominales : no Implican ningún orden. Por ejemplo sexo
#Las varibles ordinales : Implica orden o Graducación 
library(tyverse);
encuesta <- c("M", "M", "H", "H", "M", "H")
encuesta_fac <-  factor(encuesta);

levels(encuesta_fac) <- c("Hombre" , "Mujer")
levels(encuesta_fac)
#sumar las varibles categorica
summary(encuesta_fac)
#si no se aplica el factor  dara solo la cantidad y el tipo de elos elementos

                 #Factores ordinales

peso <- c("estudiante","estudiante", "estudiante", "maestro", "montero");

factor_peso <- factor(peso , ordered = F, levels = c("estudiante" , "maestro" , "montero"));

summary(factor_peso)

#Frecuencia Relativa
tabla_relatva <-  factor_peso %>% table()  %>% prop.table()

xx <- barplot(table(factor_peso), xlab = "orden" , ylab = "Fecuencia Relativa" , ylim = c(0 , 5));

text(xx ,  y  =  table(factor_peso) , pos = 3 , col = "red" , labels = table(factor_peso))


#Frecuencia absoluta

table_abs <- factor_peso %>% table()


barplot( table_abs , xlab = "orden" , ylab = "Frecuencia Absoluta");

#implementacion de ylim que sirve para alrgar los valores de los ejes
 xx <- barplot( table_abs ,  ylim = c(0, 5), xlab = "orden" , col = grey(0.9) , ylab = "Frecuencia Absoluta" );

#pone encima de cada columna el valor
text(x = xx , y = table_abs , pos = 3 , cex = 0.8 , col = "red", labels = round(table_abs, 1));




