# Armado en el template de Notion (Fase 11 · E9 · R7)

Mapea cada output de `cases/<slug>/` a su sección del template ("Templete Estrategia y Marketing").
Default de entrega: **markdown listo para pegar** (`cases/<slug>/11-notion.md`). Push a Notion es
**opcional** (el usuario lo pide).

## Push opcional a Notion (cierra E9 directo en el workspace)
Si el usuario quiere la página en Notion real:
1. Verifica el MCP de Notion (`mcp__plugin_productivity_notion__*`). Si solo aparecen las tools de
   `authenticate`/`complete_authentication`, **no está conectado**: corre `authenticate`, comparte la
   URL, y completa con el callback `http://localhost:<port>/callback?...` (el código **expira rápido**
   → pide que pegue la URL de inmediato; si expira, re-`authenticate`).
2. (Opcional) `notion-search` para ubicar dónde anidar (teamspace o template existente). Si no, crea
   standalone — el usuario la mueve después.
3. `notion-create-pages` con `properties.title` = "Estrategia de Marketing — <Empresa>" e `icon` 📊;
   el `content` es el cuerpo de `11-notion.md` en Notion-flavored Markdown. **Convierte los links a
   archivos locales en texto plano** (Notion no abre rutas locales). Devuelve la URL de la página.

## Mapa output → sección del template

| Sección del template (§3) | Fuente en `cases/<slug>/` |
|---------------------------|----------------------------|
| 1. ¿Qué empresa? + Misión/Visión/Valores/Propuesta | `01-contexto-empresa.md` (+ intake A5) |
| 2. Investigación de mercado | `02-investigacion.md` |
| 3. Preguntas para usuarios | `03-encuesta.md` |
| 4. Keywords (interés + cola larga con intención) | `05-keywords.md` |
| 5. Análisis de competencia (web, FODA marca, FODA producto) | `06-competencia.md` |
| 6. De análisis a estrategia (4 preguntas) | sección final de `06-competencia.md` |
| 7. Definición de objetivos (KPIs en tabla) | `07-campana.md` + `08-kpis.md` |
| 8. Buyer persona (dolores + cómo ayudarlo) | `04-buyer-persona.md` |
| 9. Canales digitales | `07-campana.md` (canales 1–2) |
| 10. Activos de contenido (Blog/Email/Landing/Ads/Social) | `09-contenido/` + `10-landing/` |
| 11. Planificador de redes | `09-contenido/` (calendario) |
| 12. Checklist final | ver abajo |

## Checklist de completitud del template (§6)

Marca cada uno solo cuando el output exista y haya pasado su gate:

- [ ] MISIÓN · [ ] VISIÓN · [ ] VALORES · [ ] PROPUESTA DE VALOR
- [ ] Investigación de Mercado
- [ ] Keywords / Palabras Clave
- [ ] FODA · [ ] PEST
- [ ] Análisis de sitio web de competidores · [ ] Análisis de productos de competidores
- [ ] Crea tu estrategia
- [ ] Definición de Objetivos
- [ ] Identificación de la Audiencia
- [ ] Selección de Canales Digitales
- [ ] Campaña de E-Mail Marketing · [ ] Página de Venta · [ ] Blog Post · [ ] Anuncios · [ ] Social Media
- [ ] Crea recursos visuales con Canva

## Checklist de entregables del spec (§4) — el que manda

**Entregables de campaña (1–12) — los que aplican a un caso de cliente:**
- [ ] 1 Párrafo de empresa · [ ] 2 Preset + 3 objetivos · [ ] 3 Encuestas con clientes reales (R1)
- [ ] 4 Arquetipo + buyer persona · [ ] 5 Industria acotada + fuentes · [ ] 6 Competidores ≥10 (R3)
- [ ] 7 Campaña con etapa + ≥3 objetivos (R2) · [ ] 8 KPIs ventas/tráfico · [ ] 9 Template Notion (R7)
- [ ] 10 Canales 1–2 (R4) · [ ] 11 Contenido producido · [ ] 12 Landing publicada + posteo

**Ítem meta del curso (no es de campaña) — marcar `N/A` en casos de cliente:**
- [—] 13 Verificar posteo del curso (2026-06-08 18:00) — recordatorio operativo de la clase de origen;
  no produce artefacto de la estrategia. Solo aplica a quien dicta/toma el curso, no a una empresa real.

## Deltas a recordar al armar (template vs spec — gana spec)

- **D1** El ejemplo trae 5 competidores; el spec exige **≥10**.
- **D2** El ejemplo lista 4 canales; el spec exige **1–2** (los demás son candidatos).
- **D3** Etiquetar **cada objetivo con su etapa** de embudo (el ejemplo no lo hace explícito).
- **D4** Mapear secciones a las **5 etapas del embudo** del spec.
- **D5** FODA/PEST/misión-visión-valores y la capa de activos son **extensiones útiles** del template,
  no parte del spec mínimo — inclúyelas pero no dejes que desplacen los 13 entregables canónicos.
