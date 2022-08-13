#Dir
setwd("D:/Estudo/Tecnologias/BI/PowerBI/Cap12/R/ini-R")
getwd()

#Instalando Pacotes
install.packages("dplyr")
install.packages("data.table")
install.packages("ggplot2")

#Carregando pacotes
library(dply)
library(data.table)
library(ggplot2)

#Carregamento de dados
dados_iris <- iris
print(head(dados_iris))


#T1: Sumarizar os dados
library(dplyr)
medidas_iris <- summarize(group_by(dados_iris, Species),
                          media_sepal_length = mean(Sepal.Length),
                          media_sepal_width = mean(Sepal.Width),
                          media_petal_length = mean(Petal.Length),
                          media_petal_width = mean(Petal.Width))
View(medidas_iris)


#T2: Extrair o numero inteiro de uma das colunas
library(data.table)
dados_iris_id <- data.table(dados_iris)
View(dados_iris_id)
dados_iris_id$Sepal.Length <- as.integer(dados_iris_id$Sepal.Length)
View(dados_iris_id)
