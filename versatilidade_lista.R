# vetor
load('C:/Users/67147020278/Documents/Introducao_Analise_Dados_R/data/dados_modulo_1.rda')

# atribuir um rótulo ao vetor dap
attr(dap, 'Diâmetro de Árvores') <- 'Vetor de diâmetros'

# data frame
df <- data.frame(
        # Coluna id
        id = c(1, 2, 3, 4, 5),
        # Coluna nome
        nome = c('Mezilaurus itauba', 'Apuleia leiocarpa', 'Cedrela odorata', 
                 'Amburana acreana', 'Hymenolobium excelsum'),
        # Coluna volume
        volume = c(3.25, 6.51, 7.45, 8.81, 4.35)
)

attr(df, 'Observação') <- 'Primeiro data frame criado no curso'

# matriz
matriz <- matrix(1:9, nrow = 3, ncol = 3)

attr(matriz, 'Observação') <- 'Exemplo de Matriz criada no curso'

# arary
array <- array(c(1:24), dim = c(3, 3, 2))
attr(array, 'Observação') <- 'Exemplo de Array criado no curso'

# lista
lista <- list(c('farinha de trigo', 'farinha de mandioca', 'farinha de milho'), 
              c('creme dental', 'papel higiênico', 'sabonete'),
              c('água sanitária', 'detergente'),
              c('carne', 'frango', 'peixe'),
              c('cerveja', 'sonrisal', 'eparema'))

# Definir nomes para os elementos da lista
names(lista) <- c('cereais', 'higiene', 'limpeza',
                  'proteína', 'birita')

attr(lista, 'Observação') <- 'Primeira lista criado no curso'

# grafico
plot <- hist(dap, main = 'Distribuição da variável DAP',
     xlab = 'DAP (cm)', 
     ylab = 'Frequência', 
     labels = TRUE, col = 'steelblue',
     density = 15,
     angle = 60)

# Criar uma lista com todos os objetos acima
lista_completa <- list(
        # vetor
        dap,
        # matriz
        matriz,
        # array
        array,
        # data frame
        df,
        # lista
        lista,
        # plot
        plot
)

# definir nomes para os elementos da lista
names(lista_completa) <- c('Vetor', 'Matriz', 'Array', 'Data frame', 'Lista', 'Gráfico')
str(lista_completa)

# salvar a lista
saveRDS(lista_completa, './data/lista_exemplo.rds')
