# Carregar o dataframe
df <- Sleuth3::case0902

# definir vetores
especies <- as.vector(df$Species)
cerebro <- df$Brain
corpo <- df$Body
prole <- df$Litter
gestacao <- df$Gestation

# Salvar os vetores
save(especies, cerebro, corpo, prole, gestacao,
     file = './Documents/Introducao_Analise_Dados_R/data/dados_modulo_1_aula_3.rda')
