#!/bin/bash
# log_perf.sh — perf_log.csv に自動記録する
#
# 使い方:
#   ./tools/log_perf.sh <task_id> <phase> <ep_number> <start_timestamp> [note]
#
# 例:
#   START=$(date +%s)
#   # ... 作業 ...
#   ./tools/log_perf.sh write-ep-011 draft 11 $START "初稿完了"

set -euo pipefail

# --- 引数チェック ---
if [ $# -lt 4 ]; then
  echo "Usage: $0 <task_id> <phase> <ep_number> <start_timestamp> [note]"
  echo "  phase: draft | qa | canon | revision"
  exit 1
fi

TASK_ID="$1"
PHASE="$2"
EP_NUM="$3"
START_TS="$4"
NOTE="${5:-}"

# --- プロジェクトルートに移動 ---
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
cd "$PROJECT_ROOT"

# --- 自動取得 ---
TIMESTAMP=$(date -u +%Y-%m-%dT%H:%M:%SZ)
NOW_TS=$(date +%s)
ELAPSED=$(( NOW_TS - START_TS ))

BRANCH=$(git branch --show-current 2>/dev/null || echo "unknown")
HEAD_COMMIT=$(git rev-parse --short HEAD 2>/dev/null || echo "unknown")

# エピソード番号をゼロ埋め
EP_PADDED=$(printf "%03d" "$EP_NUM")

# story_chars
STORY_FILE="story/arc1/ep-${EP_PADDED}.md"
if [ -f "$STORY_FILE" ]; then
  STORY_CHARS=$(wc -c < "$STORY_FILE" | tr -d ' ')
else
  STORY_CHARS=0
fi

# specs_chars_total
SPECS_CHARS=0
for dir in specs/core specs/reference; do
  if [ -d "$dir" ] && ls "$dir"/*.md 1>/dev/null 2>&1; then
    COUNT=$(cat "$dir"/*.md | wc -c | tr -d ' ')
    SPECS_CHARS=$(( SPECS_CHARS + COUNT ))
  fi
done

# canon_chars_total
CANON_CHARS=0
if [ -f "canon/quick_ref.md" ]; then
  COUNT=$(wc -c < "canon/quick_ref.md" | tr -d ' ')
  CANON_CHARS=$(( CANON_CHARS + COUNT ))
fi
for dir in canon/active canon/archive; do
  if [ -d "$dir" ] && ls "$dir"/*.md 1>/dev/null 2>&1; then
    COUNT=$(cat "$dir"/*.md | wc -c | tr -d ' ')
    CANON_CHARS=$(( CANON_CHARS + COUNT ))
  fi
done

# qa_lines
QA_FILE="qa/reports/ep-${EP_PADDED}_report.md"
if [ -f "$QA_FILE" ]; then
  QA_LINES=$(wc -l < "$QA_FILE" | tr -d ' ')
else
  QA_LINES=0
fi

# open_loops_count
if [ -f "meta/open_loops.md" ]; then
  OPEN_LOOPS=$(grep -c "^| LOOP-" "meta/open_loops.md") || OPEN_LOOPS=0
else
  OPEN_LOOPS=0
fi

# active_canon_count
if [ -d "canon/active" ] && ls canon/active/*.md 1>/dev/null 2>&1; then
  ACTIVE_CANON=$(ls canon/active/*.md | wc -l | tr -d ' ')
else
  ACTIVE_CANON=0
fi

# --- CSV に追記 ---
CSV_FILE="meta/perf_log.csv"
echo "${TIMESTAMP},${TASK_ID},${PHASE},${EP_NUM},${ELAPSED},${BRANCH},${HEAD_COMMIT},${STORY_CHARS},${SPECS_CHARS},${CANON_CHARS},${QA_LINES},${OPEN_LOOPS},${ACTIVE_CANON},${NOTE}" >> "$CSV_FILE"

echo "Logged: ${TASK_ID} / ${PHASE} / EP-${EP_PADDED} (${ELAPSED}s)"
