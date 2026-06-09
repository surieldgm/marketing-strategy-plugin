# marketing-strategy — plugin de Claude Code

Harness que orquesta **de punta a punta** una estrategia de marketing digital con IA, siguiendo una
metodología de curso. Va **del contexto de empresa a la táctica** y produce **13 entregables** respetando
**7 invariantes duras (R1–R7)**, ensamblando todo en el **template de Notion**.

## Qué hace

Recorre 12 fases (cliente → táctica):

1. Contexto de empresa · 2. Investigación + 3 objetivos · 3. Buyer persona / arquetipo ·
4. Diseño de encuesta (clientes reales) · 5. Keywords con intención · 6. Análisis competitivo (≥10) ·
7. Campaña por etapa de embudo (≥3 objetivos) · 8. KPIs (ventas + tráfico) · 9. Contenido por canal ·
10. Landing page + posteo · 11. Armado en Notion · 12. Verificación.

### Invariantes (gates no negociables)

| # | Regla |
|---|-------|
| R1 | Las encuestas las responden **clientes reales**, nunca la IA. |
| R2 | Toda campaña tiene **≥3 objetivos**, cada uno con su etapa de embudo. |
| R3 | Análisis competitivo de **≥10 competidores**. |
| R4 | **Máximo 1–2 canales** principales; foco obligatorio. |
| R5 | Industria **acotada antes** de investigar (B2B intl ≠ B2C local). |
| R6 | La data propia (**GOLD**) se valida antes de usarse como verdad. |
| R7 | Entrega formal en el **template de Notion**. |

## Instalación

```
/plugin marketplace add suriel-garcia/marketing-strategy-plugin
/plugin install marketing-strategy@eria-marketing
```

> Reemplaza `suriel-garcia/marketing-strategy-plugin` por tu `usuario/repo` real de GitHub.
> También puedes instalarlo desde una ruta local con `/plugin marketplace add /ruta/al/repo`.

## Uso

Invoca la skill y describe tu caso:

```
/marketing-strategy nuevo caso
```

La skill te pide un `slug`, crea `cases/<slug>/` en tu directorio de trabajo (vía `scaffold-case.sh`),
recopila los inputs de Fase 0 (autodetecta B2B/B2C desde la URL del sitio si la das) y ejecuta las fases
una por una, pasando cada gate de invariante.

### Apalanca skills de marketing externas

Cada fase mapea a una skill del marketplace [`coreyhaines31/marketingskills`](https://github.com/coreyhaines31/marketingskills)
(`product-marketing`, `customer-research`, `content-strategy`, `competitors`, `marketing-plan`,
`analytics`, `copywriting`, `cro`, …). Ver `skills/marketing-strategy/references/skills-map.md`.

**Instalación automática (hook `SessionStart`).** Este plugin trae un hook (`hooks/hooks.json` →
`scripts/ensure-deps.sh`) que, al iniciar cada sesión, verifica si el plugin `marketing-skills` está
instalado y, si no, **añade el marketplace de Corey e instala las skills automáticamente**, sin prompts.
El script es **idempotente y no-bloqueante**: si ya están, no hace nada; si algo falla, la sesión arranca
igual. Las skills quedan disponibles en la siguiente sesión.

> Claude Code **no tiene** un hook de "post-install" que dispare al instalar el plugin; `SessionStart` es
> el mecanismo más cercano y se ejecuta en el primer arranque tras instalarlo.

**Si no quieres el hook**, borra `hooks/` y la skill **degrada con gracia**: aplica la metodología del spec
directamente cuando las skills nativas no estén presentes.

**Alternativa estricta (`dependencies`).** Claude Code soporta un campo `dependencies` en `plugin.json` que
instala dependencias de forma transitiva. **No lo activamos por default** porque, si el usuario aún no agregó
el marketplace `coreyhaines31/marketingskills`, haría **fallar la instalación** de este plugin (en vez de
degradar). Si prefieres esa garantía dura, añade a `.claude-plugin/plugin.json`:
> ```json
> "dependencies": [{ "name": "marketing-skills" }]
> ```

### Push a Notion (opcional)

La Fase 11 puede dejar el entregable como markdown listo para pegar **o** crear la página directamente vía
el MCP de Notion. Ver `skills/marketing-strategy/references/notion-assembly.md`.

## Estructura

```
.
├── .claude-plugin/
│   ├── plugin.json          # manifiesto del plugin
│   └── marketplace.json     # hace el repo instalable como marketplace
└── skills/
    └── marketing-strategy/
        ├── SKILL.md
        ├── references/       # spec canónico, template Notion, intake, workflow, skills-map, notion-assembly
        └── scripts/
            └── scaffold-case.sh
```

## Fuente de la metodología

`skills/marketing-strategy/references/spec.md` es la **fuente canónica** (metodología del curso). El
`template-notion.md` es el workbook operativo de referencia. El caso de ejemplo (Scalu) es **solo ejemplo
de calidad**, no datos reales.

## Licencia

MIT — ver [LICENSE](LICENSE).
