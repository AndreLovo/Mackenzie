#Trilha1-Analise_Estatistica
#Preciso sempre carregar o library 

install.packages("readr")
library(readr)

install.packages("dplyr")
library(dplyr)

install.packages("tidyr")
library(tidyr)

#Carregando o arquivo PelicanStores (Banco de Dados)
PelicanStores <- read.csv ("C:\Users\Andr� Lovo\OneDrive\�rea de Trabalho\AN�LISE ESTAT�STICA\Trilha_1-Introdu��o � Estat�stica e Probabilidade; Processo de An�lise de Dados; Coleta de Dados - Amostragem estat�stica.PelicanStores.csv", sep = ',', enconding='utf-8')
head(PelicanStores)

#Conhecendo e entendendo as variaveis
#Mostrando a estrutura do arquivo - Mostra os tipos das vari�veis
str(PelicanStores)

#Calculando os valores da estatistica b�sica das colunas do arquivo
#Min -1Quartil-Mediana-3Quartil-Max.
summary(PelicanStores)

#apply - aplica a funcao mean ao data.frame selecionado
#Fazendo calculos

#Media
df_medias <- data.frame(Variaveis = c("Itens","Idade"), Media = apply(PelicanStores[,c("Itens","Idade")], 2, mean))
df_medias
#Mediana
df_mediana <- data.frame(Variaveis = c("Itens","Idade"), Mediana = apply(PelicanStores[,c("Itens","Idade")], 2, median))
df_mediana
#Desvio Padrao
df_sd <- data.frame(Variaveis = c("Itens","Idade"), DesvPadrao = apply(PelicanStores[,c("Itens","Idade")], 2, sd))
df_sd
#Variancia
df_var <- data.frame(Variaveis = c("Itens","Idade"), Variancia = apply(PelicanStores[,c("Itens","Idade")], 2, var))
df_var

