# perf_log.csv スキーマ定義

## ファイル
`meta/perf_log.csv`

## カラム定義

| # | カラム名 | 型 | 説明 | 取得方法 |
|---|---------|---|------|---------|
| 1 | `timestamp` | ISO 8601 | 記録時刻 | 自動: `date -u +%Y-%m-%dT%H:%M:%SZ` |
| 2 | `task_id` | string | タスク識別子（例: `write-ep-011`） | 手動: 引数で指定 |
| 3 | `phase` | string | フェーズ（`draft` / `qa` / `canon` / `revision`） | 手動: 引数で指定 |
| 4 | `ep` | int | エピソード番号 | 手動: 引数で指定 |
| 5 | `elapsed_seconds` | int | 経過秒数 | **自動算出**: 現在時刻 − 開始タイムスタンプ |
| 6 | `branch` | string | Git ブランチ名 | 自動: `git branch --show-current` |
| 7 | `head_commit` | string | HEAD のショートハッシュ | 自動: `git rev-parse --short HEAD` |
| 8 | `story_chars` | int | エピソード本文の文字数 | 自動: `wc -c < story/arc1/ep-{NNN}.md` |
| 9 | `specs_chars_total` | int | 全スペックの合計文字数 | 自動: `cat specs/core/* specs/reference/* \| wc -c` |
| 10 | `canon_chars_total` | int | 全 Canon の合計文字数 | 自動: `cat canon/active/* canon/archive/* canon/quick_ref.md \| wc -c` |
| 11 | `qa_lines` | int | QA レポートの行数 | 自動: `wc -l < qa/reports/ep-{NNN}_report.md` |
| 12 | `open_loops_count` | int | オープンループ数 | 自動: `grep -c "^| LOOP-" meta/open_loops.md` |
| 13 | `active_canon_count` | int | active 内の Canon エントリ数 | 自動: `ls canon/active/*.md 2>/dev/null \| wc -l` |
| 14 | `note` | string | 備考（任意） | 手動: 引数で指定（省略可） |

---

## 自動記録ルール

1. **手動入力禁止**: `elapsed_seconds` は必ず自動算出する。手入力しない。
2. **記録タイミング**: 各フェーズ完了時に `tools/log_perf.sh` を実行する。
3. **開始タイムスタンプ**: フェーズ開始時に `date +%s` で取得し、完了時に引数として渡す。
4. **ファイル未存在時**: 対象ファイルが存在しない場合は `0` を記録する。

## 使い方

```bash
# フェーズ開始時
START=$(date +%s)

# フェーズ完了時
./tools/log_perf.sh <task_id> <phase> <ep_number> $START [note]

# 例
./tools/log_perf.sh write-ep-011 draft 11 $START "初稿完了"
```
