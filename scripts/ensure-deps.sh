#!/usr/bin/env bash
# SessionStart hook de marketing-strategy.
# Garantiza que las skills de marketing de las que depende la skill estén instaladas.
# Diseño: IDEMPOTENTE y NO-BLOQUEANTE — pase lo que pase, termina con exit 0 y sin ruido,
# para no romper el arranque de la sesión. Si ya están instaladas, no hace nada.
#
# Dependencia: marketplace coreyhaines31/marketingskills  →  plugin marketing-skills@marketingskills
set -uo pipefail

MARKETPLACE_REF="coreyhaines31/marketingskills"   # owner/repo para 'marketplace add'
MARKETPLACE_NAME="marketingskills"                # nombre del marketplace (parte tras la @)
PLUGIN="marketing-skills"                          # nombre del plugin a instalar

# El hook recibe JSON por stdin; lo drenamos para no dejar tuberías abiertas.
cat >/dev/null 2>&1 || true

# Si no hay CLI de Claude Code, no hay nada que automatizar.
command -v claude >/dev/null 2>&1 || exit 0

# ¿Ya está instalado el plugin de dependencias? → salir en silencio (evita re-ejecutar / loops).
if claude plugin list --json 2>/dev/null | grep -q "\"${PLUGIN}\""; then
  exit 0
fi

# Añadir el marketplace (idempotente: si ya existe, ignoramos el error) e instalar sin prompts.
claude plugin marketplace add "${MARKETPLACE_REF}" >/dev/null 2>&1 || true
claude plugin install "${PLUGIN}@${MARKETPLACE_NAME}" --scope user -y >/dev/null 2>&1 || true

# Nunca bloquear la sesión.
exit 0
