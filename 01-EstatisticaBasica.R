setwd("D:/Estudo/Tecnologias/BI/PowerBI/Cap12/R")
getwd()

# Carregamento dataset 
vendas <- read.csv("Vendas.csv", fileEncoding = "windows-1252")

#Resumo do dataset
View(vendas)
str(vendas)
summary(vendas$Valor)
summary(vendas$Custo)

#Media
#?mean
mean(vendas$Valor)
mean(vendas$Custo)

#Média podenrada
#?weighted.mean
weighted.mean(vendas$Valor, w = vendas$Custo)

#Mediana
median(vendas$Valor)
median(vendas$Custo)

#Criando a função que calcula a Moda
moda <- function(v) {
  valor_unico <- unique(v)
  valor_unico[which.max(tabulate(match(v, valor_unico)))]
}


#Obtendo a moda
resultado_valor <- moda(vendas$Valor)
print(resultado_valor)

resultado_custo <- moda(vendas$Custo)
print(resultado_custo)

install.packages("ggplot2")
library(ggplot2)

#cria o grafico
ggplot(vendas) + 
  stat_summary(aes(x = Estado,
                    y = Valor),
               fun = mean,
               geom = "bar",
               fill = "lightgreen",
               col = "grey50") + 
  labs(tittle="Média de Valor por Estado")



