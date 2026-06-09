# Mapa de skills (coreyhaines31/marketingskills)

Fuente: https://github.com/coreyhaines31/marketingskills — 43 skills, cada una en
`skills/<name>/SKILL.md` (rama `main`). Repo es además un plugin/marketplace de Claude Code.
`product-marketing` es la **base** que todas referencian primero para contexto.

## Cómo cargar una skill (dos vías)

**Vía A — instalar el marketplace (preferida, una sola vez).** Quedan disponibles nativamente:
```
/plugin marketplace add coreyhaines31/marketingskills
/plugin install <skill>@marketingskills      # o instala el plugin completo
```
Luego se invocan como cualquier skill instalada.

**Vía B — fetch puntual (sin instalar).** Trae el SKILL.md de la fase con WebFetch:
```
https://raw.githubusercontent.com/coreyhaines31/marketingskills/main/skills/<name>/SKILL.md
```
Úsala cuando solo necesitas la guía de una fase y no quieres instalar 43 skills.

> Si una skill no está instalada ni accesible, **degrada con gracia**: aplica la metodología del
> `spec.md` directamente y nótalo en el output. No bloquees el flujo.

## MANDATORIAS (núcleo — toda corrida)

| Skill | Fase / Entregable | Para qué |
|-------|-------------------|----------|
| `product-marketing` | 1 (E1) | Contexto y posicionamiento; base de todo |
| `customer-research` | 2–4 (E2,E3,E4) | Investigación, buyer persona, diseño de encuestas reales |
| `content-strategy` | 5 (E5) | Keywords por buyer journey + intención |
| `competitors` | 6 (E6) | Panorama competitivo / comparativos |
| `competitor-profiling` | 6 (E6) | Perfilado profundo por competidor (FODA marca/producto) para ≥10 |
| `marketing-plan` | 7 (E7,E10) | Estrategia, objetivos por embudo, selección de canales |
| `analytics` | 8 (E8) | KPIs medibles (ventas, tráfico) y su validación |
| `copywriting` | 9–10 (E11,E12) | Copies de todos los activos y de la landing |
| `cro` | 10 (E12) | Conversión de la landing page |

## CONDICIONALES (según brief / canal / etapa)

| Skill(s) | Se activa si… |
|----------|----------------|
| `emails`, `cold-email` | canal email / outreach (`cold-email` solo B2B) |
| `ads`, `ad-creative` | canal de paid media |
| `social` | canal de redes sociales |
| `image`, `video` | se requieren activos visuales (equivalente "recursos Canva") |
| `seo-audit`, `ai-seo`, `site-architecture`, `schema`, `programmatic-seo` | canal orgánico / SEO |
| `aso` | el producto es una app |
| `sms` | canal SMS |
| `launch` | campaña de lanzamiento (p.ej. Black Friday/Cyber Monday) |
| `referrals` | etapa de embudo principal = referimiento |
| `churn-prevention` | etapa de embudo principal = fidelización |
| `pricing` | la estrategia incluye decisión de precio |
| `revops`, `sales-enablement`, `prospecting` | motor sales-led (B2B) |
| `ab-testing` | se validan variantes de KPI/CRO |

## RECOMENDADAS (enriquecen, no bloquean)

`marketing-psychology` (dolores de persona y copies), `copy-editing` (gate de calidad sobre todo el
copy), `marketing-ideas` (ideación). Otras útiles del repo: `co-marketing`, `community-marketing`,
`lead-magnets`, `onboarding`, `signup`, `popups`, `paywalls`, `directory-submissions`, `free-tools`.
