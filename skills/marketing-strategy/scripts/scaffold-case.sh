#!/usr/bin/env bash
# Scaffold de un caso del harness de marketing.
# Uso:  scripts/scaffold-case.sh <slug> [directorio-base]
# Crea cases/<slug>/ con el esqueleto de todas las fases (idempotente: no sobreescribe).
set -euo pipefail

slug="${1:-}"
base="${2:-cases}"
if [[ -z "$slug" ]]; then
  echo "uso: scaffold-case.sh <slug> [directorio-base]" >&2
  exit 1
fi
# normaliza slug a minúsculas-con-guiones
slug="$(printf '%s' "$slug" | tr '[:upper:] ' '[:lower:]-' | tr -cd 'a-z0-9-')"
dir="$base/$slug"
mkdir -p "$dir/09-contenido" "$dir/10-landing"

# helper: crea archivo con encabezado solo si no existe
stub () { # $1=ruta  $2=título  $3=encabezado-cita
  local f="$dir/$1"
  if [[ -e "$f" ]]; then echo "= existe  $f"; return; fi
  { printf '# %s\n\n> %s\n' "$2" "$3"; } > "$f"
  echo "+ creado  $f"
}

# 00-context con el esqueleto de intake completo
if [[ -e "$dir/00-context.md" ]]; then
  echo "= existe  $dir/00-context.md"
else
  cat > "$dir/00-context.md" <<EOF
# 00 · Contexto del caso — ${slug}

> Fase 0 · Intake · Estado: **en captura**
> Si hay URL del sitio: hacer fetch PRIMERO y autodetectar A+B (incl. B2B/B2C) antes de fijar defaults.

## A. Empresa y producto (GOLD)
- Nombre / producto / qué hace / propuesta de valor / mercado-segmento / misión-visión-valores / ¿existe?: \`pendiente\`

## B. Industria y modelo (R5)
- Industria / Modelo (B2B intl ó B2C local) / Mercado objetivo / Segmento acotado / Etapa de embudo: \`pendiente\`

## C. Investigación · D. Encuestas (R1) · E. Competencia (R3) · F. Campaña/KPIs · G. Activos/entrega
- Ver references/intake.md. Marcar cada campo: provisto / pendiente / GOLD-sin-validar.
EOF
  echo "+ creado  $dir/00-context.md"
fi

stub "01-contexto-empresa.md"  "01 · Contexto de empresa"          "Fase 1 · E1 · R5 · Estado: pendiente · Skill: product-marketing"
stub "02-investigacion.md"     "02 · Investigación de mercado"     "Fase 2 · E2 · Estado: pendiente · Skill: customer-research (gate: 3 objetivos)"
stub "03-encuesta.md"          "03 · Encuesta a clientes reales"   "Fase 4 · E3 · R1 (respuestas humanas, nunca IA) · Estado: pendiente"
stub "03b-plan-distribucion.md" "03b · Plan de distribución"       "Fase 4 · R1 · Estado: pendiente"
stub "04-buyer-persona.md"     "04 · Buyer persona / arquetipo"    "Fase 3 · E4 · Estado: pendiente · Skill: customer-research (antes de encuestar)"
stub "05-keywords.md"          "05 · Keywords con intención"       "Fase 5 · E5 · Estado: pendiente · Skill: content-strategy"
stub "06-competencia.md"       "06 · Análisis competitivo"         "Fase 6 · E6 · R3 (≥10) · Estado: pendiente · Skill: competitors + competitor-profiling"
stub "07-campana.md"           "07 · Diseño de campaña"            "Fase 7 · E7/E10 · R2 + R4 · Estado: pendiente · Skill: marketing-plan"
stub "08-kpis.md"              "08 · KPIs y medición"              "Fase 8 · E8 · Estado: pendiente · Skill: analytics"
stub "11-notion.md"            "11 · Estrategia de Marketing (Notion)" "Fase 11 · E9 · R7 · Estado: pendiente"

cat > "$dir/09-contenido/.gitkeep" <<< ""
cat > "$dir/10-landing/.gitkeep" <<< ""

echo "---"
echo "Caso listo: $dir"
echo "Siguiente: Fase 0 — intake (references/intake.md)."
