#!/usr/bin/env bash
# 将 sitemap 中的 URL 主动推送给 IndexNow（Bing / Yandex / Seznam 等）
# 用法: ./scripts/indexnow.sh [本地 sitemap.xml 路径]
set -euo pipefail

KEY="7a5a446df219e56a0af232f1fb040397"
HOST="wangseeker.github.io"
BASE="https://${HOST}/wangqp-lab"
SITEMAP="${1:-}"

if [ -z "$SITEMAP" ]; then
  SITEMAP=$(mktemp)
  curl -fsS "$BASE/sitemap.xml" -o "$SITEMAP"
fi

PAYLOAD=$(python3 - "$SITEMAP" "$KEY" "$HOST" "$BASE" <<'PY'
import json, re, sys
xml = open(sys.argv[1], encoding="utf-8").read()
urls = re.findall(r"<loc>(.*?)</loc>", xml)
payload = {
    "host": sys.argv[3],
    "key": sys.argv[2],
    "keyLocation": f"{sys.argv[4]}/{sys.argv[2]}.txt",
    "urlList": urls,
}
print(json.dumps(payload, ensure_ascii=False))
PY
)

echo "Submitting $(python3 -c 'import json,sys;print(len(json.load(sys.stdin)[\"urlList\"]))' <<<"$PAYLOAD") URLs to IndexNow..."
curl -fsS -X POST "https://api.indexnow.org/indexnow" \
  -H "Content-Type: application/json; charset=utf-8" \
  -d "$PAYLOAD"
echo
echo "IndexNow submission finished."
