#!/usr/bin/env bash
set -euo pipefail

REPO_URL="https://github.com/Vivixiao980/vivi-product-skills.git"
TMP_DIR="$(mktemp -d)"
TARGET_DIR="${HOME}/.claude/skills"

echo "Installing Vivi Product Skills..."

if [ ! -d "$TARGET_DIR" ]; then
  mkdir -p "$TARGET_DIR"
fi

git clone --depth 1 "$REPO_URL" "$TMP_DIR/vivi-product-skills"

cp -R "$TMP_DIR/vivi-product-skills/skills/vivi-productthink" "$TARGET_DIR/"
cp -R "$TMP_DIR/vivi-product-skills/skills/vivi-biz-review" "$TARGET_DIR/"

rm -rf "$TMP_DIR"

echo "Installed:"
echo "  - vivi-productthink"
echo "  - vivi-biz-review"
echo ""
echo "Restart Claude Code, then try:"
echo "  这个 idea 还很糊，先用 vivi-productthink 帮我问清楚。"
echo "  帮我用 vivi-biz-review review 一下这个项目。"

