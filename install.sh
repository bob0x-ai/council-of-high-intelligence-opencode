#!/usr/bin/env bash
set -euo pipefail

# Council of High Intelligence — OpenCode Installer
# Usage: ./install.sh [--dry-run]

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
OPENCODE_DIR="${HOME}/.config/opencode"
DRY_RUN=false

usage() {
  cat <<'EOF'
Usage: ./install.sh [--dry-run] [--help]

Install Council of High Intelligence into OpenCode.

Options:
  --dry-run    Print actions without writing files
  --help       Show this help message

This will install:
  - /council command
  - 18 persona agents
  - Coordinator agent
  - Skill documentation and configs
EOF
}

while [[ $# -gt 0 ]]; do
  case "$1" in
    --dry-run)
      DRY_RUN=true
      shift
      ;;
    --help|-h)
      usage
      exit 0
      ;;
    *)
      echo "Error: unknown argument '$1'" >&2
      usage
      exit 1
      ;;
  esac
done

run_cmd() {
  if [[ "$DRY_RUN" == true ]]; then
    echo "[dry-run] $*"
  else
    "$@"
  fi
}

echo "Installing Council of High Intelligence for OpenCode..."
echo "Target directory: ${OPENCODE_DIR}"

# Verify source files exist
if [[ ! -d "${SCRIPT_DIR}/agents" ]]; then
  echo "Error: agents directory not found at ${SCRIPT_DIR}/agents" >&2
  exit 1
fi

if [[ ! -f "${SCRIPT_DIR}/commands/council.md" ]]; then
  echo "Error: command file not found at ${SCRIPT_DIR}/commands/council.md" >&2
  exit 1
fi

if [[ ! -f "${SCRIPT_DIR}/skills/council/SKILL.md" ]]; then
  echo "Error: skill file not found" >&2
  exit 1
fi

# Create directories
run_cmd mkdir -p "${OPENCODE_DIR}/commands"
run_cmd mkdir -p "${OPENCODE_DIR}/agents"
run_cmd mkdir -p "${OPENCODE_DIR}/skills/council/configs"

# Install command
echo "Installing /council command..."
run_cmd cp "${SCRIPT_DIR}/commands/council.md" "${OPENCODE_DIR}/commands/council.md"

# Install coordinator agent
echo "Installing coordinator agent..."
run_cmd cp "${SCRIPT_DIR}/agents/coordinator.md" "${OPENCODE_DIR}/agents/council.md"

# Install persona agents
echo "Installing persona agents..."
installed_count=0
for agent_file in "${SCRIPT_DIR}"/agents/council-*.md; do
  if [[ -f "$agent_file" ]]; then
    filename=$(basename "$agent_file")
    run_cmd cp "$agent_file" "${OPENCODE_DIR}/agents/${filename}"
    ((installed_count+=1))
  fi
done

# Install skill
echo "Installing skill documentation..."
run_cmd cp "${SCRIPT_DIR}/skills/council/SKILL.md" "${OPENCODE_DIR}/skills/council/SKILL.md"

# Install configs
echo "Installing configs..."
for config_file in "${SCRIPT_DIR}"/skills/council/configs/*.yaml; do
  if [[ -f "$config_file" ]]; then
    filename=$(basename "$config_file")
    run_cmd cp "$config_file" "${OPENCODE_DIR}/skills/council/configs/${filename}"
  fi
done

# Summary
echo ""
echo "Installation complete!"
echo "  Installed ${installed_count} persona agents"
echo "  Installed coordinator agent"
echo "  Installed /council command"
echo "  Installed skill documentation and configs"
echo ""
echo "Restart OpenCode and use /council to convene the council."

if [[ "$DRY_RUN" == true ]]; then
  echo ""
  echo "This was a dry run. No files were actually written."
  echo "Run without --dry-run to install."
fi
