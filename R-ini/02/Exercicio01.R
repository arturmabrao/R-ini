# Lista exercicios 1

setwd("D:/Estudo/Tecnologias/BI/PowerBI/Cap12/R/DS-ini")
getwd()

notas <- read.csv("./R-ini/Data/1-Notas/Notas.csv", fileEncoding = "windows-1252")

# Exercicio 1
View(notas)
str(notas)
summary(notas$TurmaA)
summary(notas$TurmaB)

# Exercicio 2
mean(notas$TurmaA)
mean(notas$TurmaB)

# Exercicio 3
sd(notas$TurmaA)
sd(notas$TurmaB)


# Exercicio 4
calcCoefVar <- function(v){
  cf_v <- sd(v) / mean(v) * 100
  return(cf_v)
}

coef_var_A <- calcCoefVar(notas$TurmaA)
coef_var_B <- calcCoefVar(notas$TurmaB)

print(coef_var_A)
print(coef_var_B)


# Exercicio 5
calcModa <- function(v) {
  valor_unico <- unique(v)
  valor_unico[which.max(tabulate(match(v, valor_unico)))]
}

moda_turmaA <- calcModa(notas$TurmaA)
moda_turmaB <- calcModa(notas$TurmaB)

print(moda_turmaA)
print(moda_turmaB)
