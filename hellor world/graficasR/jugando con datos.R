#obre apartamentos usados en la ciudad de Medell�n que est� disponible en la p�gina web
library(tidyverse);

enlace <- 'https://raw.githubusercontent.com/fhernanb/datos/master/aptos2015'

datos <-  read.table( file = enlace , header = T)

ubicaciones <- table(datos$ubicacion)

fec_relativa <- ubicaciones  %>% prop.table();


xx <-barplot( ubicaciones , main = "Ubicaciones" , ylim = c(0 , 300) , xlab = "Ciudades") ;

text( x = xx,  y  =  ubicaciones ,  pos = 3 , labels = ubicaciones)
