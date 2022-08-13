# Parte 5.5

#setwd("D:/Estudo/Tecnologias/BI/PowerBI/Cap12/R/DS-ini")
#getwd()


library(ggplot2)
View(mpg)

ggplot(mpg, aes(x = reorder(class, hwy), y = hwy, fill - class)) +
  geom_boxplot() + 
  xlab("class")+
  theme(legend.position = "none")
