# Parte 5.2
# Plotando Gráficos com ggplot2

setwd("D:/Estudo/Tecnologias/BI/PowerBI/Cap12/R/ini-R")
getwd()

library(ggplot2)
View(mtcars)

ggplot(mtcars, aes(x = as.factor(cyl))) + 
  geom_bar()

# Customizando cores
ggplot(mtcars, aes(x = as.factor(cyl))) + 
  geom_bar() + 
  scale_fill_manual(values = c("red", "green", "yellow"))


dados = data.frame(group = c("A", "B", "C", "D"), value = c(33, 62, 56, 67))
View(dados)

ggplot(dados, aes(x = group, y = value, fill = group)) +
  geom_bar(width = 0.85, stat = "identity")
