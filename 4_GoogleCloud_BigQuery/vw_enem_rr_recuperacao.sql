WITH base AS (
  SELECT
    ano,
    uf_prova,
    TRIM(municipio_prova) AS municipio,   -- <- ajustado conforme solicitado
    inscricao
  FROM `t1engenhariadados.ProjetoFinal_3_10.ENEM_2019_2024`
  WHERE uf_prova = 'RR'
    AND ano IN (2019, 2024)
    AND municipio_prova IS NOT NULL
),
agg AS (
  SELECT
    municipio,
    COUNT(DISTINCT IF(ano = 2019, inscricao, NULL)) AS inscritos_2019,
    COUNT(DISTINCT IF(ano = 2024, inscricao, NULL)) AS inscritos_2024
  FROM base
  GROUP BY municipio
)
SELECT
  municipio,
  inscritos_2019,
  inscritos_2024,
  SAFE_DIVIDE(inscritos_2024, inscritos_2019) AS recuperacao_pct,
  CASE
    WHEN SAFE_DIVIDE(inscritos_2024, inscritos_2019) < 0.90 THEN 'Alerta (<90%)'
    WHEN SAFE_DIVIDE(inscritos_2024, inscritos_2019) < 1.00 THEN 'Abaixo do baseline (90–99%)'
    WHEN SAFE_DIVIDE(inscritos_2024, inscritos_2019) >= 1.00 THEN 'Recuperado (≥100%)'
    ELSE 'ND'
  END AS faixa_recuperacao
FROM agg