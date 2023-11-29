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
consumo_alimentar <- df_consumo_alimentar %>% 
  filter(sigla_uf == "SP")
write_rds(consumo_alimentar,"data/consumo_alimentar.rds")

# mes_brasil
# basedosdados.br_ibge_ipca.mes_brasil
query <- bdplyr("basedosdados.br_ibge_ipca.mes_brasil")
mes_brasil <- bd_collect(query)
head(mes_brasil)
write_rds(mes_brasil,"data/mes_brasil.rds")

# mes_categoria_brasil
# basedosdados.br_ibge_ipca.mes_categoria_brasil
query <- bdplyr("basedosdados.br_ibge_ipca.mes_categoria_brasil")
mes_categoria_brasil <- bd_collect(query)
head(mes_categoria_brasil)
write_rds(mes_categoria_brasil,"data/mes_categoria_brasil.rds")

# mes_categoria_municipio
# basedosdados.br_ibge_ipca.mes_categoria_municipio
query <- bdplyr("basedosdados.br_ibge_ipca.mes_categoria_municipio")
mes_categoria_municipio <- bd_collect(query)
head(mes_categoria_municipio)
write_rds(mes_categoria_municipio,"data/mes_categoria_municipio.rds")

# mes_categoria_rm
# basedosdados.br_ibge_ipca.mes_categoria_rm
query <- bdplyr("basedosdados.br_ibge_ipca.mes_categoria_rm")
mes_categoria_rm <- bd_collect(query)
head(mes_categoria_rm)
write_rds(mes_categoria_rm,"data/mes_categoria_rm.rds")
