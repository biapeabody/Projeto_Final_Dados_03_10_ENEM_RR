SELECT
    inscricao,
    ano,
    faixa_etaria,
    sexo,
    estado_civil,
    cor_raca,
    nacionalidade,
    tipo_escola,
    tipo_ensino,
    treineiro,
    municipio_prova,
    uf_prova,
    dependencia_adm_escola,
    localizacao_escola,
    2019 AS ano_enem
  FROM `t1engenhariadados.ProjetoFinal_3_10.ENEM_2019`

  UNION ALL

  -- ENEM 2020
  SELECT
    inscricao,
    ano,
    faixa_etaria,
    sexo,
    estado_civil,
    cor_raca,
    nacionalidade,
    tipo_escola,
    tipo_ensino,
    treineiro,
    municipio_prova,
    uf_prova,
    dependencia_adm_escola,
    localizacao_escola,
    2020 AS ano_enem
  FROM `t1engenhariadados.ProjetoFinal_3_10.ENEM_2020`

  UNION ALL

   -- ENEM 2021
  SELECT
    inscricao,
    ano,
    faixa_etaria,
    sexo,
    estado_civil,
    cor_raca,
    nacionalidade,
    tipo_escola,
    tipo_ensino,
    treineiro,
    municipio_prova,
    uf_prova,
    dependencia_adm_escola,
    localizacao_escola,
    2021 AS ano_enem
  FROM `t1engenhariadados.ProjetoFinal_3_10.ENEM_2021`

  UNION ALL

  -- ENEM 2022
  SELECT
    inscricao,
    ano,
    faixa_etaria,
    sexo,
    estado_civil,
    cor_raca,
    nacionalidade,
    tipo_escola,
    tipo_ensino,
    treineiro,
    municipio_prova,
    uf_prova,
    dependencia_adm_escola,
    localizacao_escola,
    2022 AS ano_enem
  FROM `t1engenhariadados.ProjetoFinal_3_10.ENEM_2022`

  UNION ALL

  -- ENEM 2023
  SELECT
    inscricao,
    ano,
    faixa_etaria,
    sexo,
    estado_civil,
    cor_raca,
    nacionalidade,
    tipo_escola,
    tipo_ensino,
    treineiro,
    municipio_prova,
    uf_prova,
    dependencia_adm_escola,
    localizacao_escola,
    2023 AS ano_enem
  FROM `t1engenhariadados.ProjetoFinal_3_10.ENEM_2023`

  UNION ALL

  -- ENEM 2024 (faltam 3 colunas → NULL)
  SELECT
    inscricao,
    ano,
    faixa_etaria,
    sexo,
    estado_civil,
    cor_raca,
    nacionalidade,
    NULL AS tipo_escola,
    tipo_ensino,
    treineiro,
    municipio_prova,
    uf_prova,
    NULL AS dependencia_adm_escola,
    NULL AS localizacao_escola,
    2024 AS ano_enem
  FROM `t1engenhariadados.ProjetoFinal_3_10.ENEM_2024`