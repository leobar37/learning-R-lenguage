url <- 'https://tinyurl.com/hwhb769'

datos <- read.table( file = url , header = T);

View(datos)


#trabajar con dos variables en barplot
#establecer una relacion entre el estrato social y el parqueadero
tabla2 <-  table(datos$parqueadero ,datos$estrato);

barplot(tabla2 , beside = T, xlab = 'Estrato'
        , ylab = "Frecuencia" ,las = 1
        , col = c("red" , "yellow") 
        , ylim = c(0, 250));

x <- list(letras = c('a' , 'b' , 'c') ,  numeros= c(1, 2 , 3))

x <- matrix(c(3:3) ,  nrow = 3 , ncol = 3)

x
y <- c(3:10);


data <-  data.frame( 
    nombres = c("joselo" ,"roberto" , "axel"),
    numeros = c(2 , 1 ,5)
  )


legend('topleft' , legend = rownames(tabla2) , fill = c("red" , "yellow")  ,  bty = 'n');
  