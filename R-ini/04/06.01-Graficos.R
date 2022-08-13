# Parte 5.1
# Plotando Gráficos com Barplot

setwd("D:/Estudo/Tecnologias/BI/PowerBI/Cap12/R/DS-ini")
getwd()


# Dados
vetor_total_resultados = c(3, 12 ,5, 18, 45)
names(vetor_total_resultados) = c("A", "B", "C", "D", "E")
vetor_total_resultados

# Barplot #
#?barplot
barplot(vetor_total_resultados)
barplot(vetor_total_resultados, col =  c(1,2,3,4,5))

# Salvando grafico
png("barplot.png", width = 480, height = 480)
barplot(vetor_total_resultados
        , col = rgb(0.5, .01, 0.6, 0.6)
        , xlab = "Categorias"
        , ylab = "Valores"
        , main = "Barplot R"
        , ylim = c(0, 60))
dev.off()

