
# #print ( myString)
# ## A diferencia de otros lenguajes de programación como C y Java en R, las variables no se declaran como algún tipo de datos.
# ##vectores
# # apple <- c(myString ,"hola mundo");
# # print(apple)
# # #listas 
# # lista <- list( c(1,2, 3) , 21.3, sin)
# # print(lista)
# # #matrices 
# # #matrix two-dimensional 
# #M=matrix( c('a' ,'b' ,'c', 'f', 'g','h', 'i'), nrow = 2 , ncol = 3, byrow=TRUE)# print(M)
# # a<-array(c('green','yellow'),dim = c(3,3,2))
# # print(a)
# # a<-runif(1000,0,1)
# #summary(a)
# #hist(a)
# #x <- c(1 , 2, 3, 5);
# #y <-c(1, 2, 3 , 6);
# m <- c(1,2,3,4)
# z <- x +y ;
# x[4]
# #funcion class devuelve el tipo de vector
# class(x);
# ls();
# objects();
# rm(m);
# ls();

# colnames(y) <- c("Variable 1", "Variable 2")
# rownames(y) <- c("obs1","obs2","obs3","obs4","obs5")
# a diferencia de las matrices y los vectores las listas pueden 
# contener elementos de diferentes tipos
# y <- list( Titulacion = c("Economía", "Sociología", "Derecho"), Edad =c(25,26,27))
# x <- data.frame(Titulacion = c("Economía", "ADE", "Sociología", "Magisterio"), Edad = c(25, 27, 25, 24))
# x
# View(x)
# #acceder a los elementos del data frame 
# #$ por nombre de columna
# x$Titulacion
# #[] por pos de columna
# x[1]
# data(EuStockMarkets)        # cargamos los datos EuStockMarkets            
# head(EuStockMarkets ,10);

#Dado el vector de los 10 primeros números naturales, hallar su sexto elemento

f <- c('a' ,'b' ,'c', 'f', 'g','h', 'i')

l <- seq(2,9, by=2);

y <- matrix( c(1,3,4,5) , nrow = 2 , ncol = 2 , byrow = T);
# first way
y <- matrix(c(1,2,3,4) , 2 , 2, byrow = T , dimnames = list( c("x1" ,"x2") , c("y1" , "y2")));
#second way
y <- matrix (1:10, nrow=5)
print(y)
#cbind
#  take a secuence of vector, matrix or data.frame arguments and 
#  cobine by columns or rows respectively
example1 <- rbind( c(1,3,5), c(2,8,0)); 
example2 <- cbind( c(1,3,5), c(2,8,0));
print("use rbind");
print(example1);
print("use cbind");
print(example2);

odd <-matrix(c(seq(1,12, by=2), nrow = 2 , ncol= 3,  byrow=T));
print(odd)

datos <- c("B", "N" ,"R" ,"B","R" ,"N","N","R","N","B");
levels(datos)
pie(tabla,main ="Diagrama de sectores")