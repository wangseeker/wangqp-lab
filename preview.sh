#!/usr/bin/env bash
# ============================================================
# 代谢与衰老实验室网站 — 一键本地预览脚本
# 用法: ./preview.sh
# 原理: 构建静态文件 → python3 静态服务器（零依赖，无端口冲突）
# ============================================================
set -e
cd "$(dirname "$0")"

# 1. 环境（ruby 3.3 + CLT SDK）
export PATH="/opt/homebrew/opt/ruby@3.3/bin:$PATH"
export SDKROOT="/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk"

PORT="${1:-4000}"

# 2. 杀掉占用端口的旧进程（无论是 jekyll serve 还是残留服务）
if lsof -ti :"$PORT" >/dev/null 2>&1; then
  echo ">> 清理端口 $PORT 上的旧进程..."
  lsof -ti :"$PORT" | xargs kill -9 2>/dev/null || true
  sleep 1
fi

# 3. 构建最新站点
echo ">> 构建站点 (jekyll build)..."
bundle exec jekyll build

# 4. 验证新主题已编入
if grep -q "0d1117" _site/_styles/-theme.css 2>/dev/null; then
  echo ">> 主题 CSS 已更新 ✓"
else
  echo ">> 警告: 未检测到深色主题标记，请检查构建输出"
fi

# 5. 用 python3 静态服务器预览（比 jekyll serve 稳定得多）
echo ">> 启动预览: http://127.0.0.1:$PORT"
python3 -m http.server "$PORT" --directory _site &
SERVER_PID=$!
trap 'kill $SERVER_PID 2>/dev/null' EXIT

# 6. 自动打开浏览器
sleep 1
open "http://127.0.0.1:$PORT" 2>/dev/null || true

echo ""
echo "======================================================"
echo "  预览地址: http://127.0.0.1:$PORT"
echo "  按 Ctrl+C 停止预览"
echo "======================================================"
wait "$SERVER_PID"
