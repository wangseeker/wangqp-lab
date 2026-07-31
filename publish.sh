#!/usr/bin/env bash
# ============================================================
# 一键发布脚本 — 把本地改动同步到线上网站
# 用法: ./publish.sh
# 流程: 提交所有改动 → 推送到 GitHub → Actions 自动重新构建
#       网站约 1-2 分钟后自动更新
# ============================================================
set -e
cd "$(dirname "$0")"

# 检查是否有改动
if git status --porcelain | grep -q .; then
  echo ">> 提交改动..."
  git add -A
  git commit -m "网站更新 $(date '+%Y-%m-%d %H:%M')"
  echo ">> 推送到 GitHub..."
  git push
  echo ""
  echo "======================================================"
  echo "  已发布 ✓"
  echo "  网站约 1-2 分钟后自动更新:"
  echo "  https://wangseeker.github.io/wangqp-lab"
  echo "======================================================"
else
  echo "没有发现任何改动（文件未变更）。"
  echo "如果改了内容，请确认保存了文件。"
fi
