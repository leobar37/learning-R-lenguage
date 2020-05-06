

data("mtcars");
class(mtcars)
head(mtcars)
install.packages("tidyverse");
install_github("tidyverse/ggplot2")
install.packages("devtools")

#variable dplyr 
#se usa para importar funciones 7
library(dplyr)
library(ggplot2)
library(tidyverse)
#Al incluir una columna de un data.frame, por defecto se dibujará un histograma
qplot(mpg , dat = mtcars)

#se puede uncluir bins para ver el numero de classes que se desea mostrar
#mpg es una constante que de inntervalo s de 10 en 10 
grafico<-qplot(mpg , data = mtcars , bins= 4, geom = "histogram")


gaseosa<-c("B","N","N","B","R","N","N","B","B","N","B","N","N","R","B","N","B","R","B","N")
fe <- gaseosa %>% table();


graf_gaseosas <- barplot(fe, main = "Diagrama de barras" , xlab = "Colores" , ylab = "Frecuencia absoluta" , ylim = c(0, 12 ))

text(x =graf_gaseosas, y = fe , pos = 3 , col = "blue" , labels = fe)


barplot( table(gaseosa), main = "Diagrama de Barras" , xlab = "Preferencia de gaseosa", ylab = "Frecuencia abosuluta");
#porcentaje <- list();
#c = 0;
#
#for (val in fe) {
#      porcentaje$c <- val * 100;
#      c = c + 1;
#  print(c)
#}
#for (v in fe){
#  vector <- c(vector, v)
#}
#porcentaje
#Tabla de frecuencia para variable cuantitativa discreta

#Leer datos de excell
install.packages("readxl")

library(readxl);

file.choose()

ruta_excel <- "C:\\Users\\Leobar37\\Desktop\\mi cuaderno\\ciclo\\estadistica\\materiales\\Tablas de frecuencia ejemplos ppt.xlsx";
#verifica los archivos de excell
excel_sheets(ruta_excel);

datos_hijos  <- read_excel(ruta_excel , sheet = "V.C.D" , range = 'A2:D8')
frame_hijos <-  data.frame(datos_hijos)

fec_abs<-frame_hijos[,2]

fec_abs <-fec_abs[-length(fec_abs)];

fec_rel <-  fec_abs  %>% prop.table()

porcent <- fec_abs * 100;

porcent
#excell :  Frecuencia relativa

##################################################################################################33
sexo <- c("hombre", "mujer", "mujer", "mujer", "hombre", "mujer")

factor(sexo)


library(grid);
library(dbplyr);
install.packages("dplyr")
data(Arthritis)
library(tidyverse)

data("mtcars");
View(mtcars)
install.packages("carData");
library(carData)
data("Salaries");
help(Salaries)
View(Salaries);

data("iris");
View(iris)

data("WorldPhones");
View(WorldPhones)


data("Titanic");
View(Titanic)

install.packages("plotrix")


sexo <- Salaries$sex;

d <-  table(d)

f_r <- d %>% prop.table()

por <- f_r * 100; 
por



disciplina <- table(Salaries$discipline);

barplot(disciplina)
#graficas univariadas para variables cualitativas 

library(ggplot2)
library(plotrix)
pie3D(sexo)
etiq<-paste(names(sexo),"\n", sexo, sep="")
etiq
pie3D(table(sexo),labels=etiq,main="Diagrama Circular 3D")


#Tablas de frecuencia univariadas para variables cualitativas
rango<-table(Salaries$rank)
rango
prop.table(rango)
prop.table(rango)100

sexo<-table(Salaries$sex)
sexo
prop.table(sexo)
prop.table(sexo)100

disciplina<-table(Salaries$discipline)
disciplina
prop.table(disciplina)
prop.table(disciplina)*100

#Graficas:  variables cualitativas
barplot(disciplina)
barplot(disciplina, main="Grafico de Barras", xlab="Disciplina de los profesores",ylab="Frecuencia",col =5)
barplot(rango, main="Grafico de Barras", xlab="Rango de los profesores",ylab="Frecuencia",col =3)

pie(sexo)
install.packages("plotrix")
library(plotrix)
pie3D(sexo)
etiq<-paste(names(sexo),"\n", sexo, sep="")
etiq
pie3D(sexo,labels=etiq,main="Diagrama Circular 3D")







