# Template Notion — "Estrategia y Marketing" (FUENTE SECUNDARIA)

> **Jerarquía de verdad.** Este documento es **fuente secundaria**. La fuente
> primaria es [`spec.md`](spec.md) (la clase grabada que define la metodología y
> las reglas). Este template es la **plantilla operativa de Notion** que
> materializa esa metodología, ilustrada con un caso de ejemplo (marca *Scalu*).
>
> - Cuando el template y el `spec.md` coincidan → refuerzan la regla.
> - Cuando difieran → **gana `spec.md`**; las diferencias se registran en la
>   sección [§7 Deltas](#7-deltas-vs-specmd-fuente-primaria).
> - El contenido de *Scalu* es **ejemplo demostrativo**, no datos reales: sirve
>   como modelo de "cómo se ve una sección bien llenada", no como verdad de negocio.

- **Tipo:** plantilla de trabajo en Notion ("Templete Estrategia y Marketing")
- **Caso de ejemplo:** Scalu (sub-marca de UCAN2)
- **Última actualización del doc:** 2026-06-07

---

## 1. Qué es y para qué sirve

Es el **workbook que el alumno llena** para producir su estrategia de marketing
digital. Cada sección corresponde a una fase del `spec.md` y trae adjunto un
**preset de IA** (OpenAI Playground) que guía esa fase. El template convierte la
metodología abstracta en un formulario rellenable con ejemplos resueltos.

El caso de ejemplo recurrente:

> **Scalu** — chamarras para escaladores con geolocalización (GPS), tela
> repelente al agua y celdas solares que funcionan como fuente de energía, con
> puertos USB 3 integrados para cargar dispositivos. Pertenece a la marca
> **UCAN2** (productos tecnológicos para profesionales que viajan).
> Campaña de ejemplo: **Black Friday / Cyber Monday**, descuento 20–30% + envío gratis internacional.

---

## 2. Presets de IA incluidos (artefacto clave)

El template enlaza presets de OpenAI Playground, uno por fase. **Este es el
activo más reutilizable del template.** Modelos: mayormente `gpt-3.5-turbo`,
"Anuncio 02" usa `gpt-4`.

| Fase | Preset | Modelo |
|------|--------|--------|
| Investigación de mercado | Preset: Investigación de Mercado | gpt-3.5-turbo |
| Keywords | Preset: Keywords | gpt-3.5-turbo |
| Keywords con intención | Preset: Keywords con intención | gpt-3.5-turbo |
| Competencia | Preset: Competidores del Mercado | gpt-3.5-turbo |
| Buyer persona | Preset: Buyer Persona | gpt-3.5-turbo |
| Contenido blog | Preset: Blog Post | gpt-3.5-turbo |
| Email | Preset: E-Mail Marketing | gpt-3.5-turbo |
| Landing | Preset: Página de Venta | gpt-3.5-turbo |
| Anuncios | Preset: Anuncio 01 / Anuncio 02 | gpt-3.5-turbo / gpt-4 |
| Social | Preset: Posts Social Media | gpt-3.5-turbo |

> ⚠️ **Nota de mantenimiento:** los presets apuntan a `gpt-3.5-turbo`/`gpt-4`
> (modelos legacy). Si se reutilizan hoy, conviene migrar a modelos actuales y
> re-validar los prompts. Las URLs son privadas de OpenAI Playground (requieren cuenta).

---

## 3. Estructura del template (secciones en orden)

1. **¿Qué empresa?** — descripción de la empresa/producto en un párrafo.
2. **Investigación de mercado** — objetivos, metodología, población objetivo, variables a medir, análisis de datos, informe.
3. **Preguntas para usuarios** — batería de preguntas para entrevistas/encuestas (el ejemplo trae 10).
4. **Keywords** — keywords de interés + keywords de cola larga con intención (clasificadas: Comercial / Informativa / Transaccional).
5. **Análisis de competencia**
   - Sitios web de competidores
   - Fortalezas y debilidades por marca
   - Fortalezas y debilidades de productos
6. **De análisis a estrategia** — 4 preguntas guía:
   1. ¿Qué debilidades de la competencia pueden ser tus fortalezas?
   2. ¿Hay debilidades tuyas que coincidan con las de la competencia?
   3. ¿Oportunidades de mejora detectadas?
   4. ¿Qué fortalezas resaltarás en la campaña? (para los copies)
7. **Definición de objetivos** — entregar como **KPIs en tabla**; instrucción de ejemplo provista.
8. **Buyer persona** — puntos de dolor + sección "¿Cómo podemos ayudarlo?".
9. **Canales digitales** — recomendación de canales a impactar.
10. **Activos de contenido** — Blog Post, E-Mail Marketing, Página de Venta, Anuncios (FB/IG), Posts Social Media.
11. **Planificador de redes** — enlaces a sub-páginas (Planificador, Imágenes, Posts).
12. **Checklist final** — verificación de completitud (ver §6).

---

## 4. Contenido de ejemplo resuelto (referencia de calidad)

Lo que el template muestra como "sección bien llenada":

- **Objetivos de investigación (3):** demanda/preferencias del mercado global de ropa inteligente con GPS+USB; percepción vs. competencia; oportunidades para Black Friday/Cyber Monday.
- **Variables a medir (5):** preferencia por tech integrada, predisposición de compra, aceptación de propuesta de valor, conocimiento/percepción de marca, interés en la promo.
- **Keywords:** 20 keywords de interés + tabla de cola larga con intención etiquetada (Comercial / Información / Transaccional).
- **Competidores analizados (5):** North Face, Columbia Sportswear, Arc'teryx, Patagonia, Mammut — con FODA por marca y FODA de producto.
- **Eje de diferenciación de Scalu:** variedad de estilos/colores **personalizables** + marketing personalizado + experiencia de cliente + alianzas/colaboraciones + campañas segmentadas.
- **Objetivos/KPIs de ejemplo (3 grupos):**
  - *Reconocimiento de marca:* +30% tráfico web, ≥15% CTR en anuncios.
  - *Ventas/conversiones:* +25% ventas en Black Friday, 10% tasa de conversión.
  - *Fidelización:* 15% clientes recurrentes en 3 meses, satisfacción 4.5/5 post-compra.
- **Canales sugeridos:** Pinterest, Instagram, Facebook, tienda física.

---

## 5. Reglas que el template refuerza (consistentes con `spec.md`)

| Regla | Cómo aparece en el template |
|-------|------------------------------|
| Encuestas/entrevistas con **usuarios reales** | Aviso en mayúsculas: "RECUERDA SIEMPRE REALIZAR ENTREVISTAS CON USUARIOS REALES. Esta sección es ejercicio para complementar/estructurar lo investigado." |
| Objetivos como **KPIs medibles** | Sección de objetivos pide entregar KPIs en tabla. |
| **Validar** objetivos contra el negocio | "RECUERDA VERIFICAR QUE ESTÉN ALINEADOS CON LOS OBJETIVOS COMERCIALES DE TU NEGOCIO. SIEMPRE VALIDA." |
| **Keywords con intención** | Tabla dedicada con clasificación por tipo de intención. |
| **Foco de canales** | El ejemplo aterriza en 3–4 canales concretos. |

---

## 6. Checklist de completitud del template

- [ ] MISIÓN
- [ ] VISIÓN
- [ ] VALORES
- [ ] PROPUESTA DE VALOR
- [ ] Investigación de Mercado
- [ ] Keywords / Palabras Clave
- [ ] FODA
- [ ] PEST
- [ ] Análisis de sitio web de competidores
- [ ] Análisis de productos de competidores
- [ ] Crea tu estrategia
- [ ] Definición de Objetivos
- [ ] Identificación de la Audiencia
- [ ] Selección de Canales Digitales
- [ ] Campaña de E-Mail Marketing
- [ ] Página de Venta
- [ ] Blog Post
- [ ] Anuncios
- [ ] Social Media
- [ ] Crea recursos visuales con Canva

---

## 7. Deltas vs. `spec.md` (fuente primaria)

Diferencias detectadas entre la plantilla y la metodología canónica. **En caso de
conflicto, gana `spec.md`.**

| # | `spec.md` (primaria) | Template (secundaria) | Resolución |
|---|----------------------|------------------------|------------|
| D1 | Análisis competitivo de **mínimo 10** competidores | El ejemplo solo analiza **5** (North Face, Columbia, Arc'teryx, Patagonia, Mammut) | Cumplir el mínimo de 10 del spec; el template es ejemplo parcial. |
| D2 | **1–2 canales** principales (foco, evitar dispersión) | El ejemplo lista **4** canales (Pinterest, IG, FB, tienda física) | Priorizar a 1–2 canales según el spec; los 4 son candidatos, no la selección final. |
| D3 | **Mínimo 3 objetivos** alineados al embudo | El ejemplo da 3 grupos de objetivos, pero **no etiqueta explícitamente la etapa del embudo** | Etiquetar cada objetivo con su etapa (awareness/consideración/decisión/fidelización/referimiento). |
| D4 | Embudo de 5 etapas como marco central | El template no nombra el embudo explícitamente | Mapear las secciones del template a las etapas del embudo del spec. |
| D5 | No menciona FODA/PEST ni misión/visión/valores | El template **añade** FODA, PEST, misión, visión, valores y producción de activos (blog, email, landing, ads, social, Canva) | Tratarlos como **extensiones útiles** del template que enriquecen, no contradicen, el spec. |

> **Aporte neto del template:** añade la capa de **producción de contenido y
> activos** (blog, email, landing, anuncios, social, Canva) y los frameworks
> clásicos (FODA, PEST, misión/visión/valores) que el `spec.md` no detalla. Esa
> capa puede incorporarse como ampliación del spec si se desea.

---

## 8. Fuente original

- Plantilla de Notion "Templete Estrategia y Marketing" (Taller IA Plan MKT).
- Caso de ejemplo: Scalu / UCAN2.
- Contiene imágenes ("Banners Taller IA Plan MKT") y sub-páginas de Notion
  (Planificador de Redes Sociales, Imágenes, Posts, Tareas, Proyectos) no
  reproducidas aquí.
