x=-1
y <- 4
a='7'
is.numeric(x)
is.numeric(a)
is.character(x)
is.character(a)
3+x
x*y
#Vetores
v=c(5,6,7,8)
is.vector(v)
d=c(2:7)
is.vector(d)
d

#Matrizes
m <- matrix(c(1:6), nrow = 2, ncol = 3, byrow = TRUE)
m

m1 <- matrix(c(1:6), nrow = 2, ncol = 3, byrow = FALSE)
m1

m2 <- matrix(c(1:6), nrow = 3, ncol = 2, byrow = FALSE)
m2

#Fun��es
t <- function(x,y){
  x*y
}

t(9,5)


install.packages("RColorBrewer")
library(RColorBrewer)


display.brewer.all()

paleta <- "Dark2"
display.brewer.pal(8,paleta)



#Diretorio de Trabalho

getwd()

setwd('D:\\Mackenzie_P�s\\AN�LISE ESTAT�STICA\\Trilha_1-Introdu��o � Estat�stica e Probabilidade; Processo de An�lise de Dados; Coleta de Dados - Amostragem estat�stica\\')

#Lendo os dados
Arquivo <- 'PelicanStores.csv'
dados <-read.csv(Arquivo,header = TRUE, sep = ',')

head(dados)
head(dados,3)

tail(dados,3)

summary(dados)

menor<-dados[,c('Tipo.de.Cliente','M�.todo.de.Pagamento','Gênero','Estado.Civil')]

regular <- menor[menor$Tipo.de.Cliente == 'Regular']
regular

#Gr�fico de Pizza
pie(dados,Tipo.de.Cliente)
