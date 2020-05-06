#instalar paquetes httr
install.packages("httr")
#para trabajar con objetos json
install.packages("jsonlite")

#utilizar librerias

 require(httr);
 require(jsonlite);

 razas_url <- "https://dog.ceo/api/breeds/list/all";
 razas_req  <-  GET(razas_url);
 razas  <- content(razas_req , "text");
 razas_json <- fromJSON(razas); 

 datos <- data.frame(razas_json)
 print(razas_json$message$vizsla) 
