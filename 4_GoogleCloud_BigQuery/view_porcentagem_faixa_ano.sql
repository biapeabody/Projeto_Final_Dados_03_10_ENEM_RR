WITH base AS (
  SELECT
    ano,
    uf_prova,
    CAST(faixa_etaria AS STRING) AS faixa,   -- use TP_FAIXA_ETARIA se esse for o nome na sua tabela
    inscricao
  FROM `t1engenhariadados.ProjetoFinal_3_10.ENEM_2019_2024`
  WHERE uf_prova = 'RR'
    AND ano IN (2019, 2020, 2021)
),
contagens AS (
  SELECT
    ano,
    faixa,
    COUNT(DISTINCT inscricao) AS inscritos_faixa_ano
  FROM base
  GROUP BY ano, faixa
),
totais AS (
  SELECT
    ano,
    COUNT(DISTINCT inscricao) AS inscritos_total_ano
  FROM base
  GROUP BY ano
)
SELECT
  c.ano,
  c.faixa,
  c.inscritos_faixa_ano,
  t.inscritos_total_ano,
  SAFE_DIVIDE(c.inscritos_faixa_ano, t.inscritos_total_ano) AS pct_faixa_ano
FROM contagens AS c
JOIN totais AS t
  ON t.ano = c.ano