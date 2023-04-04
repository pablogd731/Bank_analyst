#API alpha vantage

#Instalar librerias
# install.packages("rio")
# install.packages("stringr")
# install.packages("jsonlite")

#Usar librerias 
library(rio)
library(stringr)
library(jsonlite)

#Directorio local 
setwd("//home//pablogd731//Bank_analyst")

#Token de API 
token <- import("Token", "txt")

#Web Bank of America
web <- str_c("https://www.alphavantage.co/query?function=OVERVIEW&symbol=BAC&apikey="
             ,token)

#Ejemplo de analísis 
datos <- fromJSON(web)
ejemplo1 <- as.matrix(datos)
tabla <- matrix(c(rownames(ejemplo1), ejemplo1), ncol=2)





