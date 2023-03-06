library(rjson)
setwd("~/Documents/gupy")
data <- as.data.frame(fromJSON(file="dados.json"))

data_fin <- data.frame()
dia <- c()
valor <- c()

for (i in 1:length(data)){
  if (i %% 2 == 1){
    dia <- c(dia, data[1,i])
  } else {
    valor <- c(valor, data[1,i])
  }
  if (i == length(data)){
    data_fin <- as.data.frame(cbind(dia,valor))
    dia <- NULL
    valor <- NULL
  }
}

## Retirar dados sem venda (fins de semana e feriados)
data_fin <- data_fin[data_fin$valor != 0,]

## Menor valor de faturamento
data_fin[data_fin$valor == min(data_fin$valor),2]
## Maior valor de faturamento
data_fin[data_fin$valor == max(data_fin$valor),2]
## Quantidade de dias acima da média mensal
length(data_fin[data_fin$valor > ave(data_fin$valor),]$dia)




