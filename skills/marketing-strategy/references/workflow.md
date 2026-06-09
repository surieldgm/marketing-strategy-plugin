# Workflow detallado (Fases 1–12)

Convención de output: `cases/<slug>/NN-nombre.md`. Cada archivo abre con:
```
> Fase N · Entregable §4 #X · Invariante: Rk · Estado: borrador|validado · Skill: <name>
```
Antes de cerrar una fase, **verifica su gate**. Si un input falta, vuelve a Fase 0 (intake.md).

---

## Fase 1 — Contexto de empresa · E1 · `product-marketing`
- **Input:** intake A1–A4.
- **Hacer:** un **párrafo** con qué hace la empresa, propuesta de valor, mercado y segmento.
- **Output:** `01-contexto-empresa.md`. Es el contexto base que orienta a la IA en todo lo demás.
- **Gate:** el párrafo nombra explícitamente los 4 elementos. Si la propuesta de valor es GOLD, valídala (R6).

## Fase 2 — Investigación + preset · E2 · `customer-research`
- **Input:** Fase 1 + intake C.
- **Hacer:** fijar el **preset** (rol: especialista en marketing digital para redes/plataformas) y
  **3 objetivos de investigación** afinados. Definir metodología, población objetivo y variables a medir.
- **Output:** `02-investigacion.md`.
- **Gate (R-spec §3.2):** exactamente **3 objetivos** claros y enfocados.

## Fase 3 — Buyer persona / arquetipo · E4 · `customer-research`
- **Input:** Fase 1–2 + intake B (mercado/segmento).
- **Hacer:** identificar el **arquetipo con IA *antes* de encuestar**; definir buyer persona, puntos de
  dolor y sección "¿cómo podemos ayudarlo?"; generar las **preguntas para perfilarlo**. Ajustar por
  mercado y micro-segmento.
- **Output:** `04-buyer-persona.md` (preguntas reutilizadas en Fase 4).
- **Gate:** arquetipo definido *antes* del trabajo de campo; persona acotada a la industria (R5).

## Fase 4 — Encuesta a clientes reales · E3 · `customer-research` · **R1**
- **Input:** Fase 3 + intake D.
- **Hacer:** diseñar la **batería de preguntas** (el ejemplo del template trae 10) y la estructura de
  análisis. Si intake D pide distribución: plan de reclutamiento (canal, muestra, incentivo, formulario).
- **Output:** `03-encuesta.md` (instrumento) + `03b-plan-distribucion.md` (si aplica).
- **Gate DURO (R1):** la IA **no responde** la encuesta. El output deja explícito: "respuestas =
  clientes reales". Marca como `pendiente-campo` hasta que el usuario aporte respuestas reales.

## Fase 5 — Keywords con intención · E5 · `content-strategy`
- **Input:** Fase 1,3 + intake B (países).
- **Hacer:** keywords **genéricas** + **con intención**, clasificadas **Comercial / Informativa /
  Transaccional**. Considerar variación por país (spec §3.6: "zapatillas" AR vs "tenis" GT), especialidad
  del producto y marcas buscadas.
- **Output:** `05-keywords.md` (tabla de cola larga etiquetada).
- **Gate:** cada keyword con intención lleva su clasificación; variación por país si el mercado es multi-país.

## Fase 6 — Análisis competitivo · E6 · `competitors` + `competitor-profiling` · **R3**
- **Input:** Fase 1 + intake E.
- **Hacer:** identificar **≥10 competidores**; por cada uno FODA de **marca** y de **producto**; comparar
  fortalezas/debilidades propias vs benchmark; decidir **en qué segmento competir y en cuáles NO**.
  Cerrar con las 4 preguntas "de análisis a estrategia" del template (§3.6).
- **Output:** `06-competencia.md`.
- **Gate (R3):** **≥10** competidores perfilados. Si la data pública no alcanza (B2B/nicho), decláralo
  como vacío conocido (§6) en vez de inventar.

## Fase 7 — Diseño de campaña · E7,E10 · `marketing-plan` · **R2, R4**
- **Input:** Fases 1–6 + intake F.
- **Hacer:** definir la campaña alineada a una **etapa de embudo**; **≥3 objetivos**, cada uno etiquetado
  con su etapa (awareness/consideración/decisión/fidelización/referimiento); marcar **un objetivo
  primario**. Seleccionar **1–2 canales** principales de entre los candidatos.
- **Output:** `07-campana.md`.
- **Gate (R2/R4):** ≥3 objetivos *con etapa*; 1–2 canales finales (no 4). Activa condicionales según
  etapa/canal (ver skills-map): `launch`, `referrals`, `churn-prevention`, etc.

## Fase 8 — KPIs · E8 · `analytics` · **R2**
- **Input:** Fase 7 + intake F4.
- **Hacer:** KPIs medibles en **tabla**, con metas de **ventas** y **tráfico**, alineados a la etapa
  (p.ej. priorizar ventas en Decisión). Definir método/herramienta de medición (vacío conocido §6).
- **Output:** `08-kpis.md`.
- **Gate:** cada objetivo de Fase 7 tiene ≥1 KPI cuantificado; cifras GOLD validadas (R6).

## Fase 9 — Contenido + activos · E11 · `copywriting` (+ condicionales)
- **Input:** Fases 3,5,7 + intake G.
- **Hacer:** producir los activos del/los canal(es) seleccionados: Blog Post, E-Mail, Anuncios (FB/IG),
  Posts Social Media, según corresponda. Cargar la skill por canal (`emails`, `ads`/`ad-creative`,
  `social`, `image`/`video`). Pasar todo por `copy-editing` si está disponible.
- **Output:** `09-contenido/` (un archivo por activo).
- **Gate:** activos solo para los **1–2 canales** elegidos (R4); copies anclados a fortalezas de Fase 6.

## Fase 10 — Landing page · E12 · `copywriting` + `cro`
- **Input:** Fases 1,3,7,9.
- **Hacer:** copy + estructura de la **landing del producto** optimizada para conversión, más el **posteo
  asociado**. Si se quiere prototipo, generar HTML autocontenido.
- **Output:** `10-landing/` (copy + page) y referencia al posteo.
- **Gate (E12):** landing **publicada** + posteo. Anota la URL de publicación.

## Fase 11 — Armado en Notion · E9 · ver [notion-assembly.md](notion-assembly.md) · **R7**
- **Input:** todas las fases.
- **Hacer:** mapear cada output a su sección del template y cerrar el checklist §6.
- **Output:** `11-notion.md` (o push vía MCP).
- **Gate (R7):** template completo en formato estricto.

## Fase 12 — Verificación · E13
- **Hacer:** verificar el **posteo del curso completo** (2026-06-08 18:00) y el enlace compartido.
- **Output:** nota de verificación en `11-notion.md` o `00-context.md`.
