# carregar pacote
library(openxlsx)

# Ler lista das classes taxonomicas
lista <- readRDS('C:/Users/67147020278/Documents/Introducao_Analise_Dados_R/data/lista_classes_fauna_ameacada.rds')

# Interar sobre os elemento da lista (classes taxonomicas) e salvar cada elemento
# como um arquivo .csv
for (idx in 1:length(lista)) {
        for (nome in names(lista[idx])) {
                write.csv2(
                        split(lista[idx], nome), 
                        paste0('./', nome, '.csv'), 
                        row.names = FALSE
                )        
        }
        rm(idx, nome)
}

# Salvar cada elemento como uma planilha de um arquivo .xlsx
write.xlsx(nome, './wb_fauna_ameacada.xlsx')
