# install.packages("basedosdados")
library(tidyverse)
library(basedosdados)
library(bigrquery)
library(DBI)
library(dbplyr)
library(dplyr)

# Defina o seu projeto no Google Cloud
set_billing_id("predileta-alimentos")

# Para carregar o dado direto no R
# Tabelas para carregar
# consumo_alimentar_2017

query <- bdplyr("basedosdados.br_ibge_pof.consumo_alimentar_2017")
df_consumo_alimentar <- bd_collect(query)

head(df_consumo_alimentar)

# mes_brasil
# basedosdados.br_ibge_ipca.mes_brasil

# mes_categoria_brasil
# basedosdados.br_ibge_ipca.mes_categoria_brasil

# mes_categoria_municipio
# basedosdados.br_ibge_ipca.mes_categoria_municipio

# mes_categoria_rm
# basedosdados.br_ibge_ipca.mes_categoria_rm