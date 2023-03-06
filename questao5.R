# Insira uma string qualquer entre as aspas
string <- ""

caracteres <- strsplit(string, "")[[1]]
caracteres_invertidos <- rev(caracteres)
string_invertida <- paste(caracteres_invertidos, collapse="")
string_invertida
