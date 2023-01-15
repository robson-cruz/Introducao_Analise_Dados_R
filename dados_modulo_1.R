# Leitura do conjunto de dados do inventario florestal
inventario_florestal <- read.csv2('./data/UMF_IV_UPA_4F_SINAFLOR_03.csv')

# definir o vetor de diametros
dap <- inventario_florestal[inventario_florestal$DAP_cm >= 40, 'DAP_cm']


# definir o vetor de alturas
altura <- inventario_florestal[inventario_florestal$DAP_cm >= 40, 'Alt']

# definir o vetor de nomes cientificos
nomes_cientificos <- inventario_florestal[inventario_florestal$DAP_cm >= 40, 'Nome_Cientifico']

# definir o vetor de categoria das arvores
categoria <- inventario_florestal[inventario_florestal$DAP_cm >= 40, 'Categoria']


# savar os vetores no formato de arquivo ".rda"
save(dap, altura, nomes_cientificos, categoria, file = './data/dados_modulo_1.rda')

load('./data/dados_modulo_1.rda')
summary(is.na(dap))
mean(dap)
