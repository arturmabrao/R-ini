# Parte 5.7

#setwd("D:/Estudo/Tecnologias/BI/PowerBI/Cap12/R/ini-R/Export-RFiles")
#getwd()

#Treemap
install.packages("treemap")
library(treemap)

#Dados
grupo = c(rep("grupo-1",4), rep("grupo-2",2), rep("grupo-3",3))
subgrupo = paste("subgroup", c(1,2,3,4,1,2,1,2,3), sep = "-")
valor = c(13,5,22,12,11,7,3,1,23)
dados = data.frame(grupo, subgrupo, valor)

View(dados)

#?treemap
treemap(dados
        , index = c("grupo", "subgrupo")
        , vSize = "valor"
        , type = "index"
        , fontsize.labels = c(15, 12)
        , fontcolor.labels = c("white", "orange")
        , fontface.labels = c(2, 1)
        , bg.labels = 220
        , align.labels = list(c("center",  "center"), c("right", "bottom"))
        , overlap.labels = 0.5
        , inflate.labels = F
        )



treemap(dados
        , index = c("grupo", "subgrupo")
        , vSize = "valor"
        , type = "index"
        , border.col = c("black", "white")
        , border.lwds = c(7, 2)
        )