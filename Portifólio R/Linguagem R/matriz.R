############################################
###    ESTRUTURA DOS DADOS - MATRIZES    ###
############################################

# Conjunto de registros com linhas e colunas, 
# contendo somente n�meros ou somente caracteres. 

?matrix
?factor

matriz <- matrix(c(1,5,10,30,15,8),nrow=3,ncol=2,byrow=TRUE)
print(matriz)

matriz <- matrix(c(4,8,12,16,20,24),nrow=3,ncol=2,byrow=FALSE)
print(matriz)

matriz <- matrix(c(4,8,12,16,20,24),nrow=2,ncol=3,byrow=TRUE)
print(matriz)

matriz [1,3]

vetorA <- c(2,5,8)
vetorB <- c(3,6,9)
matriz2 <- rbind(vetorA, vetorB)
matriz2

matriz2 [2,1]

matriz3=matrix(2:9, ncol = 2)
matriz3


# N�mero de linhas e colunas.
dim(matriz3)
nrow(matriz3)
ncol(matriz3)

# Nomear linhas e colunas
dimnames(matriz3) <- list(c("Linha1","Linha2","Linha3","Linha4"),
                          c("Coluna1", "Coluna2"))
matriz3

matriz4=matrix(2:13, nrow = 4, byrow=FALSE,
               dimnames = list(c("Linha1","Linha2","Linha3","Linha4"),
                               c("Coluna1", "Coluna2","Coluna3")))
matriz4

# Produto de um n�mero por uma matriz
produto <- 2 * matriz4
produto

# Soma ou subtra��o de matrizes
matriz5 = matrix(c(1,5,15,8),nrow=2,ncol=2,byrow=TRUE)
matriz5
matriz6 = matrix(c(2,4,6,10),nrow=2,ncol=2,byrow=TRUE)
matriz6

soma = matriz5+matriz6
soma

subtracao = matriz5-matriz6
subtracao


# Multiplica��o Matricial

produto_matriz = matriz5 %*% matriz6
produto_matriz

# M�dia das linhas ou colunas
matriz5 = matrix(c(1,5,15,8),nrow=2,ncol=2,byrow=TRUE)
matriz5

media_coluna <- colMeans(matriz5)
media_coluna

media_linha <- rowMeans(matriz5)
media_linha

# Soma das linhas ou colunas
soma_linhas <- rowSums(matriz5)
soma_linhas

soma_colunas <- colSums(matriz5)
soma_colunas

# Matriz com caracteres
matriz7 = matrix(c("segunda","ter�a","quarta","quinta"),nrow=2,ncol=2,byrow=FALSE)
matriz7







