# Parte 5.8

#setwd("D:/Estudo/Tecnologias/BI/PowerBI/Cap12/R/ini-R/Export-RFiles")
#getwd()


x <- mtcars$mpg

# Criando Histograma
?hist
h <- hist(x
          , breaks = 10
          , col = "red"
          , xlab = "Milhas por Galão"
          , main = "Histograma com Curva de Distribuição")

# Custom o Histograma
xfit <- seq(min(x), max(x), length = 40)
yfit <- dnorm(xfit, mean = mean(x), sd = sd(x))
yfit <- yfit*diff(h$mids[1:2]*length(x))
lines(xfit, yfit, col = "blue", lwd=2)

# Usando ggplot
library(ggplot2)

dados = data.frame(value = rnorm(10000))
View(dados)

# Tamanho das colunas
ggplot(dados, aes(x=value))+
  geom_histogram(binwidth = 0.05)


# Cor única
ggplot(dados, aes(x=value))+
  geom_histogram(binwidth = 0.02, color="white", fill=rgb(0.2, 0.7, 0.1, 0.4))

# Cor proporcional
ggplot(dados, aes(x=value))+
  geom_histogram(binwidth = 0.02, aes(fill = ..count..))

