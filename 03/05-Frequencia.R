# Parte 4

setwd("D:/Estudo/Tecnologias/BI/PowerBI/Cap12/R/ini-R/Data/Usuarios")
getwd()

dados  <- read.table("Usuarios.csv",
                     dec = ".",
                     sep = ",",
                     h = T,
                     fileEncoding  = "windows-1252"
                     )

# Visualização geral dos dados
View(dados)
names(dados)
str(dados)
summary(dados$salario)
summary(dados$grau_instrucao)
mean(dados$salario)

# Tabelas de frequencia absoluta
freq_gi <- table(dados$grau_instrucao)
View(freq_gi)


# Tabelas de frequencia relativa
freq_rel <- prop.table(freq_gi)
View(freq_gi_rel)
# Transformando em porcentagem
p_freq_rel <- 100 * prop.table(freq_rel)
View(p_freq_rel)


# Adicionando linhas de total
freq_gi <- c(freq_gi, sum(freq_gi))
View(freq_gi)
names(freq_gi)[4] <- "Total"
View(freq_gi)


# Mesmo processo para relativas
freq_rel <- c(freq_rel, sum(freq_rel))
p_freq_rel <- c(p_freq_rel, sum(p_freq_rel))

# Concatenação dos vetores em uma tabela final
tabela_final <- cbind(freq_gi
                      , freq_rel =  round(freq_rel, digits = 2)
                      , p_freq_rel = round(p_freq_rel, digits = 2)
                      )

View(tabela_final)