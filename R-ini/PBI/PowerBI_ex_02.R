#Dir
#setwd("D:/Estudo/Tecnologias/BI/PowerBI/Cap12/R/DS-ini")
#getwd()

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

# Cores disponiveis em R:
#colors()

#T3: Construir um grafico mostando a relacao de duas variaveis num. para as 3 categorias de uma var categorica
library(ggplot2)
ggplot(data = dados_iris, aes(x = Petal.Width, y = Petal.Length))+
  geom_point(aes(color = Species), size = 3)+
  ggtitle("Largura e Comprimento das Petalas")+
  labs(x = "Largura da Petala",
       y = "Comprimento da Petala")+
  theme_bw()+
  theme(title = element_text(size = 15, color = "turquoise4"))

