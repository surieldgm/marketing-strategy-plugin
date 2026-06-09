---
name: marketing-strategy
description: Orquesta de punta a punta una estrategia de marketing digital con IA siguiendo la metodología del curso (references/spec.md, fuente canónica): va del contexto de empresa a la táctica y produce los 13 entregables — definición de empresa, investigación + 3 objetivos, buyer persona/arquetipo, encuestas a clientes reales, keywords con intención, análisis competitivo ≥10, campaña por etapa de embudo con ≥3 objetivos, KPIs, canales (1–2), contenido, landing page — y los arma en el template de Notion. Apalanca las skills del repo coreyhaines31/marketingskills (product-marketing, customer-research, content-strategy, competitors, marketing-plan, analytics, copywriting, cro, etc.). Use when el usuario quiere construir o ejecutar una estrategia/campaña de marketing digital, llenar el template de Notion de marketing, hacer buyer persona + investigación + análisis competitivo + KPIs + landing, recopilar los inputs para esa estrategia, o menciona el spec de marketing o el harness.
---

# Marketing Strategy Harness

Orquesta los **13 entregables** de `references/spec.md` respetando sus **7 invariantes** (R1–R7).
`spec.md` es la **fuente canónica**; `template-notion.md` es el workbook operativo (caso de
ejemplo Scalu, no datos reales); `skills-dandidates.md` mapea cada entregable a una skill.

## Quick start

1. **Lee el contexto** una vez: `references/spec.md` (canónico), luego `references/template-notion.md` y
   `references/skills-dandidates.md`. Si hay conflicto, **gana `spec.md`**.
2. **Crea el caso**: pide un `slug` y corre el script `scaffold-case.sh <slug>` para generar
   `cases/<slug>/` con el esqueleto de todas las fases (idempotente). Todo output va ahí.
   - Ruta del script (plugin instalado): `${CLAUDE_PLUGIN_ROOT}/skills/marketing-strategy/scripts/scaffold-case.sh`.
   - El caso se crea en el **directorio de trabajo del usuario** (`cases/<slug>/`), no dentro del plugin.
3. **Fase 0 — Intake**: recopila los inputs con [references/intake.md](references/intake.md).
   **Si el usuario da la URL de su sitio, hazle fetch PRIMERO** y autodetecta empresa/producto y, sobre
   todo, **B2B vs B2C** — eso fija la rama (R5) antes que cualquier default. No avances a una fase sin
   sus inputs. Marca la data propia como **GOLD** (R6: validar antes de usar).
4. **Ejecuta las fases 1→12** con [references/workflow.md](references/workflow.md). Cada fase carga
   la skill de marketing correspondiente ([references/skills-map.md](references/skills-map.md)),
   produce su archivo y **pasa su gate de invariante** antes de continuar.
5. **Arma en Notion** con [references/notion-assembly.md](references/notion-assembly.md) y cierra
   el checklist de entregables.

## Flujo (del cliente a la táctica)

| # | Fase | Entregable | Skill principal | Gate |
|---|------|-----------|-----------------|------|
| 1 | Contexto de empresa | 1 | `product-marketing` | párrafo: qué hace, propuesta de valor, mercado, segmento |
| 2 | Investigación + preset | 2 | `customer-research` | **3 objetivos** de investigación |
| 3 | Buyer persona / arquetipo | 4 | `customer-research` | arquetipo definido *antes* de encuestar |
| 4 | Diseño de encuesta | 3 | `customer-research` | **R1**: respuestas de clientes reales, nunca IA |
| 5 | Keywords con intención | 5 | `content-strategy` | clasificadas comercial/info/transaccional |
| 6 | Análisis competitivo | 6 | `competitors` + `competitor-profiling` | **R3**: ≥10 competidores |
| 7 | Diseño de campaña | 7,10 | `marketing-plan` | **R2**: ≥3 objetivos, cada uno con etapa de embudo |
| 8 | KPIs | 8 | `analytics` | metas de ventas y tráfico, alineadas a la etapa |
| 9 | Contenido + activos | 11 | `copywriting` + condicionales | activos por canal seleccionado |
| 10 | Landing page | 12 | `copywriting` + `cro` | landing publicada + posteo |
| 11 | Armado en Notion | 9 | — | template completo (checklist §6) |
| 12 | Verificación | 13 | — | posteo del curso + enlace |

## Invariantes (gates duros — no negociables)

- **R1** Encuestas las responden **clientes reales**, nunca la IA. La skill solo *diseña* y *distribuye*.
- **R2** Toda campaña: **≥3 objetivos**, cada uno etiquetado con su etapa de embudo.
- **R3** Análisis competitivo de **≥10 competidores** (el ejemplo del template solo trae 5).
- **R4** **Máximo 1–2 canales** principales; foco obligatorio, evitar dispersión multicanal.
- **R5** Industria **acotada antes** de investigar (B2B internacional ≠ B2C local).
- **R6** Data propia (**GOLD**) se asume verdadera por la IA → **validar exactitud** antes de usarla.
- **R7** Entrega formal en el **template de Notion** (formato estricto).

## Reglas de operación

- **Nunca inventes datos de negocio.** Si un input falta, vuelve a Fase 0 y pídelo — no rellenes con Scalu.
- Scalu/UCAN2 es **solo ejemplo de calidad** ("cómo se ve una sección bien llena"), no verdad.
- **Autodetecta antes de asumir:** si hay URL, deriva modelo/mercado/segmento del sitio. Los defaults
  (mercado *internacional*, modelo *B2C local*, encuestas *diseño + plan de distribución*) solo aplican
  cuando no hay señal; **el sitio gana sobre el default**. Confirma en Fase 0.
- Cada output lleva encabezado con: fase, entregable §4, invariante que cumple, y estado (borrador/validado).
