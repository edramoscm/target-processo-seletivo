#Função para encontrar n primeiros termos
fibonacci <- function(n){
  sequencia <- c(1,1)
  if (n>2) {
    for (i in 3:n) {
      sequencia[i] <- sequencia[i-1]+sequencia[i-2]
          }
  }
}

# número a ser testado
teste <- 3

if (teste <= 5) {
  if (teste %in% fibonacci(5)) {
    print("O número teste pertence à sequência de Fibonacci")
  } else {
    print("O número teste não pertence à sequência de Fibonacci")
  }
} else if (teste > 5) {
  for (i in 6:teste) { #o número a ser testado, maior que 5, será sempre menor que o n-ésimo termo
    if (teste < fibonacci(i)[i]) {
      print("O número teste não pertence à sequência de Fibonacci")
      break
    } else if (teste == fibonacci(i)[i]) {
      print("O número teste pertence à sequência de Fibonacci.")
      break
    }
  }
}


