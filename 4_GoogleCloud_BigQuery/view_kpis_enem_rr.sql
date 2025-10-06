WITH base AS (
  SELECT
    ano,
    uf_prova,
    inscricao,
    nacionalidade
  FROM `t1engenhariadados.ProjetoFinal_3_10.ENEM_2019_2024`
  WHERE uf_prova = 'RR'
    AND ano IN (2019, 2024)
),

-- totais RR por ano (conta inscrições únicas)
totais AS (
  SELECT 
    COUNT(DISTINCT IF(ano = 2019, inscricao, NULL)) AS inscritos_2019,
    COUNT(DISTINCT IF(ano = 2024, inscricao, NULL)) AS inscritos_2024
  FROM base
),

-- distribuição por nacionalidade em 2024 (robusto a variações de texto)
dist_2024 AS (
  SELECT
    COUNT(DISTINCT inscricao) AS inscritos_2024_total,
    COUNT(DISTINCT IF(REGEXP_CONTAINS(LOWER(nacionalidade), r'estrangeir'),  inscricao, NULL)) AS inscritos_2024_estrangeiro,
    COUNT(DISTINCT IF(REGEXP_CONTAINS(LOWER(nacionalidade), r'naturaliz'),   inscricao, NULL)) AS inscritos_2024_naturalizado
  FROM base
  WHERE ano = 2024
)

SELECT
  t.inscritos_2019,
  t.inscritos_2024,
  SAFE_DIVIDE(t.inscritos_2024, t.inscritos_2019)              AS recuperacao_rr,           -- % 2024/2019
  SAFE_DIVIDE(d.inscritos_2024_estrangeiro,  d.inscritos_2024_total) AS pct_estrangeiro_2024_rr,
  SAFE_DIVIDE(d.inscritos_2024_naturalizado, d.inscritos_2024_total) AS pct_naturalizado_2024_rr
FROM totais t
CROSS JOIN dist_2024 d