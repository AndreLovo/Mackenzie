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

#Funções
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

setwd('D:\\Mackenzie_Pós\\ANÁLISE ESTATÍSTICA\\Trilha_1-Introdução à Estatística e Probabilidade; Processo de Análise de Dados; Coleta de Dados - Amostragem estatística\\')

#Lendo os dados
Arquivo <- 'PelicanStores.csv'
dados <-read.csv(Arquivo,header = TRUE, sep = ',')

head(dados)
head(dados,3)

tail(dados,3)

summary(dados)

menor<-dados[,c('Tipo.de.Cliente','MÃ.todo.de.Pagamento','GÃªnero','Estado.Civil')]

regular <- menor[menor$Tipo.de.Cliente == 'Regular']
regular

#Gráfico de Pizza
pie(dados,Tipo.de.Cliente)
