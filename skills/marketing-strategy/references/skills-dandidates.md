### 9.2 MANDATORIAS (núcleo — toda corrida las usa)

Cada una está atada a una etapa requerida o a un invariante del DoD (§6):

| # | Skill | Justificación | Atada a |
|---|-------|---------------|---------|
| 1 | `product-marketing` | Foundation: contexto y posicionamiento; base de todas las demás | S1, S7 |
| 2 | `customer-research` | Investigación, buyer persona y diseño/estructura de encuestas reales | S2–S4, **G1** |
| 3 | `content-strategy` | Keywords por etapa de buyer journey + intención (comercial/info/transaccional) | S5 |
| 4 | `competitors` | Análisis de panorama competitivo | S6, **G3** |
| 5 | `competitor-profiling` | Perfilado profundo por competidor (FODA marca/producto) para ≥10 | S6, **G3** |
| 6 | `marketing-plan` | Estrategia, objetivos por embudo y selección de canales | S7, S8, S10, **G2/G4** |
| 7 | `analytics` | Definición y validación de KPIs medibles | S9, **G7** |
| 8 | `copywriting` | Copies de todos los activos y de la landing | S11, S12 |
| 9 | `cro` | Conversión de la landing page | S12, **G8** |

### 9.3 CONDICIONALES (se activan según `brief` / S10)

Activadas por el canal o la etapa de embudo seleccionados:

| Skill | Se activa si… |
|-------|----------------|
| `emails`, `cold-email` | canal email / outreach (cold-email solo en B2B) |
| `ads`, `ad-creative` | canal de paid media |
| `social` | canal de redes sociales |
| `image`, `video` | se requieren activos visuales (equivalente "recursos Canva") |
| `seo-audit`, `ai-seo`, `site-architecture`, `schema`, `programmatic-seo` | canal orgánico / SEO |
| `aso` | el producto es una app |
| `sms` | canal SMS |
| `launch` | campaña de lanzamiento (p.ej. Black Friday/Cyber Monday) |
| `referrals` | `etapa_embudo_principal == referimiento` |
| `churn-prevention` | `etapa_embudo_principal == fidelizacion` |
| `pricing` | la estrategia incluye decisión de precio |
| `revops`, `sales-enablement`, `prospecting` | motor sales-led (B2B) |
| `ab-testing` | se validan variantes de KPI/CRO |

### 9.4 RECOMENDADAS (enriquecen, no bloquean)

`marketing-psychology` (profundiza dolores de persona y copies), `copy-editing`
(gate de calidad sobre todo el copy), `marketing-ideas` (ideación).