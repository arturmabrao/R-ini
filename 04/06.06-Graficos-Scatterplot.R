# Parte 5.6

#setwd("D:/Estudo/Tecnologias/BI/PowerBI/Cap12/R/ini-R/Export-RFiles")
#getwd()


library(ggplot2)
data  = data.frame(cond = rep(c("condition_1", "condition_2"), each = 10),
                   my_x = 1:100 + rnorm(100, sd = 9), my_y = 1:100 + rnorm(100, sd = 16))

ggplot(data, aes(x = my_x, y = my_y)) +
  geom_point(shape = 1)

# Adicionando linha de regressão
ggplot(data, aes(x = my_x, y = my_y)) +
  geom_point(shape = 1) +
  geom_smooth(method = lm, color = "red", se=FALSE)

# Adicionando linha de regressão -  com margem de erro
ggplot(data, aes(x = my_x, y = my_y)) +
  geom_point(shape = 1) +
  geom_smooth(method = lm, color = "red", se=TRUE)