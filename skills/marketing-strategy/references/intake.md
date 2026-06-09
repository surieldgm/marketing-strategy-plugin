# Fase 0 — Intake de inputs

Recopila esto **antes** de ejecutar fases. Cada bloque indica qué fase lo consume, si es **GOLD**
(data propia → validar, R6) y si requiere **humano real** (R1). No avances sin los inputs de la fase.

Pregunta en tandas cortas (3–4 ítems), no todo de golpe. Guarda el resultado en
`cases/<slug>/00-context.md` con el estado de cada campo (`provisto` / `pendiente` / `GOLD-sin-validar`).

## Paso 0 — Autodetección desde el sitio (hazlo PRIMERO si hay URL)
Si el usuario tiene web, hazle **fetch antes de preguntar** y prellena A y B. Deriva en especial:
- **Modelo B2B vs B2C** — la señal más importante (fija la rama R5). Pistas: lenguaje ("teams",
  "enterprise", "ROI", roles/departamentos) → B2B; producto/precio de consumo → B2C. Idioma del sitio
  → hipótesis de mercado.
- Qué hace, producto(s), propuesta de valor declarada, segmentos listados, CTAs.

Presenta lo detectado como **hipótesis a confirmar**; marca la propuesta de valor como `GOLD-sin-validar`.
**El sitio gana sobre los defaults** — solo usa defaults (B2C local / internacional / diseño+distribución)
cuando no hay sitio ni señal. Luego sigue con las tandas de preguntas para lo que el sitio no cubra.

## A. Empresa y producto (alimenta fases 1–12) — GOLD

1. **Nombre** de la empresa/marca y del producto/servicio concreto de la campaña.
2. **Qué hace** la empresa, en una frase.
3. **Propuesta de valor** / diferenciador real (no aspiracional).
4. **Mercado y segmento** al que apunta *este* producto.
5. Misión / visión / valores, si existen (opcional; los pide el checklist de Notion).
6. ¿Es una **empresa que ya existe**? (el spec lo exige; si no, detente).

> Gate Fase 1: con A1–A4 se puede escribir el párrafo de definición (Entregable 1).

## B. Acotamiento de industria y modelo (R5 — define todo aguas abajo)

1. **Industria específica** (el spec recomienda *ropa deportiva* como caso guía).
2. **Modelo**: B2B internacional ó B2C local. *(autodetectar del sitio en Paso 0; default solo sin señal: B2C local)*
3. **Mercado objetivo** principal: Panamá / Guatemala / EE.UU. / Internacional. *(default: Internacional)*
   - Si internacional o multi-país: anota países para variación de keywords (spec §3.6).

## C. Investigación (Fase 2)

1. **3 objetivos de investigación** tentativos (la skill los afina). Si el usuario no los tiene, propónlos
   a partir de A y B y pide confirmación.
2. Preset de rol: especialista en marketing digital para redes/plataformas (ya definido; confirmar tono/idioma).

## D. Encuestas a clientes reales (Fase 4) — **R1, requiere humanos**

1. ¿Tiene **acceso a clientes reales** para responder? ¿Cuántos, por qué canal (email, WhatsApp, tienda, IG)?
2. ¿Quiere solo **diseño** de la encuesta o **diseño + plan de distribución**? *(default: diseño + distribución)*
3. ¿Incentivo disponible para elevar tasa de respuesta? (descuento, sorteo, etc.)

> La IA **nunca** responde la encuesta. Aquí solo se produce el instrumento y el plan de campo.

## E. Competencia (Fase 6 — R3 ≥10)

1. ¿Competidores conocidos de arranque? (semilla; la IA completa hasta ≥10).
2. ¿Hay **datos públicos** suficientes? (B2B/nicho local degrada el análisis — riesgo §6).

## F. Campaña, canales y KPIs (Fases 7–8)

1. **Ocasión/temporada** de la campaña (ej. Black Friday/Cyber Monday) y oferta si aplica.
2. **Etapa de embudo principal**: awareness / consideración / decisión / fidelización / referimiento.
   - Activa skills condicionales: `referrals` (referimiento), `churn-prevention` (fidelización),
     `launch` (lanzamiento/Black Friday).
3. **Canales candidatos** disponibles (de ahí saldrán los **1–2** finales, R4).
4. Metas de **ventas** y **tráfico** si ya existen (si no, se proponen en Fase 8). — GOLD si son cifras propias.

## G. Activos y entrega (Fases 9–12)

1. Canales para activos: email / paid / social / SEO / SMS → activan `emails`, `ads`/`ad-creative`,
   `social`, skills SEO, `sms` (ver skills-map).
2. ¿Necesita **recursos visuales** (Canva/imágenes/video)? → `image`, `video`.
3. **Destino de la landing**: dónde se publica (Entregable 12 pide *publicada*).
4. **Notion**: ¿push automático vía MCP o entrego markdown listo para pegar? *(default: markdown)*
5. **Entregable 13**: enlace del posteo del curso a verificar (2026-06-08 18:00).

## Marcado de GOLD (R6)

Toda cifra, afirmación de mercado o dato interno que venga del usuario se etiqueta `GOLD` en
`00-context.md`. Antes de que una fase lo use como verdad, **pide validación explícita** ("¿confirmas
que este dato es exacto? la IA lo tratará como verdad y sesga toda la estrategia si está mal").
