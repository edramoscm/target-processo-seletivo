# Não tinha nenhuma planilha para importar os dados então fiz à mão
# Seria possível ter copiado e usado um comando do pacote rvest para fazer webscraping, mas não havia a menor necessidade aqui
# Também seria possível simplesmente copiar os dados em um arquivo de texto, usar um editor de texto para limpar e importar como csv

estados <- c("SP", "RJ", "MG", "ES", "Outros")
faturamento <- c(67836.43, 36678.66, 29229.88, 27165.48, 19849.53)
percentual <- round(fin$faturamento/sum(fin$faturamento)*100,2)

fin <- data.frame(estados, faturamento, percentual)
