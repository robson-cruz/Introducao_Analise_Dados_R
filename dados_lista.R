# Ler o conjunto de dados referente as especies ameacadas de extincao
a <- read.csv2('./Documents/Introducao_Analise_Dados_R/data/DF_port_MMA_300-2022_fauna.csv')


# Vetor com as classes taxonomicas
classes <- a$classe

# Dividir o dataframe em função das classes taxonomicas e inseri em uma lista
li <- split(a, classes)

# Salvar a lista no formato de arquivo .rds
saveRDS(li, './Documents/Introducao_Analise_Dados_R/data/lista_classes_fauna_ameacada.rd')
