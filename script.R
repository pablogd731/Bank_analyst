#API alpha vantage

#Instalar librerias
install.packages("rio")
install.packages("stringr")

#Usar librerias 
library(rio)
library(stringr)

#Directorio local 
setwd("//home//pablogd731//Bank_analyst")

#Token de API 
token <- import("Token", "txt")

#Web
web <- str_c("https://www.alphavantage.co/query?function=OVERVIEW&symbol=IBM&apikey=",token)
