# Git 運用ルール

## ブランチ戦略

| ブランチ | 用途 |
|---------|------|
| `main` | 安定版（Canon 確定済みのエピソードのみ） |
| `arc1/ep-{NNN}` | エピソード執筆ブランチ |
| `fix/*` | 修正ブランチ |
| `spec/*` | スペック更新ブランチ |

---

## コミットメッセージ規約

```
<type>(scope): <summary>

<body（任意）>
```

### Type 一覧
| Type | 用途 |
|------|------|
| `story` | エピソード本文の追加・修正 |
| `canon` | Canon エントリの追加・更新 |
| `spec` | スペックファイルの追加・更新 |
| `qa` | QA レポートの追加 |
| `meta` | open_loops, perf_log 等メタファイルの更新 |
| `tool` | ツール・スクリプトの追加・修正 |
| `doc` | ドキュメント・ポリシーの更新 |
| `fix` | 誤記・不整合の修正 |

### 例
```
story(arc1): EP-011 初稿完了
canon(ep-011): CANON-011 確定、quick_ref 更新
qa(ep-011): QAレポート作成
meta: open_loops EP-011 反映
```

---

## ワークフロー

1. `main` から `arc1/ep-{NNN}` ブランチを作成
2. エピソード執筆 → QA → Canon 確定
3. perf_log 記録
4. `main` にマージ（fast-forward マージ推奨）
5. ブランチ削除

---

## 禁止事項
- `main` への直接コミット（初期セットアップを除く）
- force push（`--force` / `--force-with-lease`）
- Canon 確定前のエピソードを `main` にマージすること
