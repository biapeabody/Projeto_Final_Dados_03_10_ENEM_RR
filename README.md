# ENEM Roraima 2019–2024: Panorama de Evolução e Perfil dos Inscritos

## 📌 Descrição do Projeto
Este projeto consiste em uma análise detalhada dos dados de inscritos no Exame Nacional do Ensino Médio (ENEM) no estado de **Roraima**, no período de **2019 a 2024**.  
O objetivo foi mapear a evolução do perfil dos participantes, considerando variáveis como sexo, faixa etária, cor/raça, condição de treineiro, município, dependência administrativa e localização da escola.

A análise visa apoiar a tomada de decisão baseada em dados por parte de **secretarias de educação, instituições de ensino e organizações do terceiro setor**.

---

## 🎯 Objetivos
- Consolidar e visualizar a evolução das inscrições no ENEM em Roraima.  
- Identificar padrões e tendências no perfil dos inscritos.  
- Oferecer insights estratégicos para políticas educacionais locais.  
- Monitorar o impacto de eventos como a pandemia de COVID-19 e fluxos migratórios.  

---

## 📊 Metodologia

### **Pipeline de Dados**
- **Coleta:** Dados públicos do ENEM (2019–2024) e do Censo Escolar (Qedu).  
- **Transformação:**
  - Limpeza e tratamento de dados.  
  - Padronização de categorias e correção de inconsistências.  
- **Armazenamento:** Google BigQuery (criação de tabelas e views).  
- **Visualização:** Dashboards interativos no Looker Studio.  
- **Versionamento:** Repositório no GitHub para documentação e controle de versão.  

---

## 📈 Principais Resultados

### **Total de Inscritos (2019–2024)**

| Ano  | Inscritos | Matrículas no EM (Qedu) | Cobertura ENEM |
|------|------------|--------------------------|----------------|
| 2019 | 13.000     | 20.489                  | 63,4%          |
| 2020 | 2.829      | 21.841                  | 12,8%          |
| 2021 | 8.100      | 25.094                  | 32,3%          |
| 2022 | 8.400      | 26.965                  | 31,2%          |
| 2023 | 9.600      | 26.236                  | 36,6%          |
| 2024 | 12.700     | 26.424                  | 48,1%          |

---

### **Perfil dos Inscritos**
- **61,8%** são do sexo feminino  
- **14,0%** são treineiros  
- **2,28%** são estrangeiros  
- **2,18%** são naturalizados  

**Dependência Administrativa da Escola:**  
Predomínio da **rede estadual**, seguida por *não informado*, *privada* e *federal*.  
A alta taxa de "não informado" indica **lacunas na qualidade cadastral**.

---

## 🛠️ Ferramentas Utilizadas
- **Google BigQuery:** Armazenamento e consulta de dados  
- **Looker Studio:** Visualização e dashboards interativos  
- **Python (Colab):** Limpeza e exploração de dados  
- **GitHub:** Controle de versão e documentação  

---

## 👥 Equipe

- **Ana Beatriz Torres Neri (Bia)**  
  [LinkedIn](https://www.linkedin.com/in/biapeabody/)  

- **Raylane Araújo de Sousa**  
  [LinkedIn](https://www.linkedin.com/in/raylane-araujo)  

- **Denilza Lima**  
  [LinkedIn](https://www.linkedin.com/in/denilzalima)  

- **Kryssia Mendonça**  
  [LinkedIn](https://www.linkedin.com/in/kryssiajm/)  

- **Renato Gomes**  
  [LinkedIn](https://www.linkedin.com/in/renato-gomes-souza/)

- **Thais Falcão**

---

## 🔍 Limitações e Próximos Passos

### **Limitações**
- Dados socioeconômicos limitados  
- Possível sub-representação de municípios menores  
- Alta taxa de “não informado” em variáveis-chave  

### **Próximos Passos**
- Incluir dados de desempenho nas provas  
- Expandir a análise para a região Norte  
- Aprofundar a correlação entre perfil socioeconômico e desempenho  

---

## 📂 Estrutura do Projeto


```text
📂 enem-rr-2019-2024
├── 📄 README.md
├── 📊 dashboard_looker_studio_link.txt
├── 📂 dados
│   ├── raw
│   ├── processed
│   └── scripts
├── 📂 notebooks
│   └── exploracao_limpeza.ipynb
└── 📂 apresentacao
    └── Apresentacao_ENEM_RR_2019_2024.pdf
```

---

## 📫 Contato
Para mais informações, entre em contato com a equipe pelos links do LinkedIn acima.

**Fonte dos Dados:** [Qedu - Roraima](https://www.qedu.org.br/)  
**Visualização Interativa:** Dashboard no Looker Studio  

---


Visualização Interativa: Dashboard Looker Studio

