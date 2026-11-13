#!/usr/bin/env bash
# 百度搜索资源平台「普通收录-API 提交」
# 用法: BAIDU_TOKEN=你的token ./tools/baidu-push.sh [本地 sitemap.xml]
set -euo pipefail

SITE="https://wangseeker.github.io/wangqp-lab"
SITEMAP="${1:-}"

if [ -z "${BAIDU_TOKEN:-}" ]; then
  echo "缺少 BAIDU_TOKEN。请到 ziyuan.baidu.com → 普通收录 → API 提交 获取 token。" >&2
  exit 1
fi

if [ -z "$SITEMAP" ]; then
  SITEMAP=$(mktemp)
  curl -fsS "$SITE/sitemap.xml" -o "$SITEMAP"
fi

URLS=$(mktemp)
python3 - "$SITEMAP" "$SITE" > "$URLS" <<'PY'
import re, sys
xml = open(sys.argv[1], encoding="utf-8").read()
site = sys.argv[2]
for u in re.findall(r"<loc>(.*?)</loc>", xml):
    if u.startswith(site):
        print(u)
PY

echo "Submitting $(wc -l < "$URLS" | tr -d ' ') URLs to Baidu..."
curl -sS -X POST "http://data.zz.baidu.com/urls" \
  -G --data-urlencode "site=$SITE" --data-urlencode "token=${BAIDU_TOKEN}" \
  -H "Content-Type: text/plain" \
  --data-binary @"$URLS"
echo
