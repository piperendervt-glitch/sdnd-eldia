# SDND 執筆手順ガイド

<!-- 最終更新: 2026-03-03 / 初版作成 -->

本ガイドは、エピソード執筆における PM（メインセッション）の操作手順を定義する。
3つのフェーズで構成され、各フェーズにチェックリストを設ける。

---

## Phase 1: 事前準備（EP 執筆開始前）

毎エピソード執筆前に実施する。目的はコンテキストの正確なロードと作業環境の整備。

### 1.1 TIER 1 必須ファイル確認

以下の3ファイルを**必ず**読み、最新状態であることを確認する。

| ファイル | 確認ポイント |
|---------|------------|
| `specs/core/invariants.md` | INV ルールに変更・追加がないか |
| `specs/core/characters_current.md` | 前話の Canon 登録で更新されているか |
| `canon/quick_ref.md` | 最終更新が前話の EP 番号と一致するか |

### 1.2 TIER 2 実行コンテキスト確認

| ファイル | 確認ポイント |
|---------|------------|
| `canon/active/*.md` | **5件以下**であること。6件以上なら Phase 3.2 を先に実施 |
| `meta/open_loops.md` | アクティブループ数が **10本以下**。quick_ref と一致 |

### 1.3 エピソード企画

1. `docs/plot_outline.md` を参照し、該当 EP の概要を確認
2. 進展させるループを特定（plot_outline のマスターテーブル参照）
3. TIER 3 の要否を判定：

| 条件 | ロードするファイル |
|------|----------------|
| 新しい地理・政治が登場 | `specs/reference/world.md` |
| 魔法戦闘・新ルール導入 | `specs/reference/magic_physics.md` |
| 新キャラ登場・深い内面描写 | `specs/reference/characters_full.md` |
| 過去の確定イベントを参照 | `canon/archive/canon-{NNN}.md`（該当話のみ） |

### 1.4 環境準備

```bash
# 1. Git ブランチ作成
git checkout -b arc{N}/ep-{NNN}

# 2. パフォーマンス計測開始（タイムスタンプを記録）
START=$(date +%s)
```

### 1.5 事前準備チェックリスト

- [ ] TIER 1（3ファイル）読み込み完了
- [ ] TIER 2 読み込み完了（active ≤ 5件、loops ≤ 10本）
- [ ] 該当 EP のプロット概要を確認
- [ ] 進展対象ループを特定
- [ ] 必要な TIER 3 ファイルをロード
- [ ] 直近3話の本文を確認（連続性のため）
- [ ] Git ブランチ作成済み
- [ ] perf 計測開始

---

## Phase 2: EP 執筆サイクル

### 2.1 Writer 起動

**PM → writer エージェント**

```
writer エージェントで EP-{NNN}（Arc {N} 第{X}話）を執筆して。

■ コンテキスト
- 進展対象ループ: LOOP-{XXX}, LOOP-{YYY}
- 前話の状態: {quick_ref の要約}
- 本話のポイント: {plot_outline からの概要}

■ 注意事項
- {特記事項があれば記載}
```

**Writer の出力物:**
| ファイル | 内容 |
|---------|------|
| `story/arc{N}/ep-{NNN}.md` | エピソード本文 |
| `story/arc{N}/ep-{NNN}.canon-proposal.md` | 正史変更提案 |

**Writer 完了後の PM 確認:**
- [ ] 本文の文字数が 4,000〜6,000字の範囲内
- [ ] canon-proposal が存在し、変更内容が明記されている
- [ ] 目視で明らかな問題がないか軽くスキャン

**Git コミット:**
```bash
git add story/arc{N}/ep-{NNN}.md story/arc{N}/ep-{NNN}.canon-proposal.md
git commit -m "[story] EP-{NNN}「{タイトル}」執筆完了（Arc {N} 第{X}話）"
```

### 2.2 QA 起動

**PM → qa エージェント**

```
qa エージェントで EP-{NNN} を検査して。
```

**QA の出力物:**
| ファイル | 内容 |
|---------|------|
| `qa/reports/ep-{NNN}-qa.md` | QA レポート |

**判定分岐:**

| 判定 | 次のステップ |
|------|------------|
| **PASS**（Blocker=0, Major=0） | → 2.4 Canon 登録へ |
| **FAIL**（Blocker≥1 or Major≥1） | → 2.3 リビジョンへ |
| Minor/Warn のみ | → PASS 扱い。必要に応じて修正 |

**Git コミット:**
```bash
git add qa/reports/ep-{NNN}-qa.md
git commit -m "[qa] EP-{NNN} QAレポート作成"
```

### 2.3 リビジョン（FAIL 時のみ）

**PM → writer エージェント**

```
writer エージェントで EP-{NNN} を修正して。

■ QA 指摘事項
{QA レポートの指摘一覧をコピー}
```

修正後、2.2 の QA を再実行する。PASS するまで繰り返す。

**Git コミット:**
```bash
git add story/arc{N}/ep-{NNN}.md story/arc{N}/ep-{NNN}.canon-proposal.md
git commit -m "[story] EP-{NNN} 修正（QA指摘対応）"
```

### 2.4 Canon 登録

**PM → editor エージェント**

```
editor エージェントで EP-{NNN} の Canon 登録をして。
```

**Editor の実施内容:**

| 手順 | 操作 | 対象ファイル |
|------|------|------------|
| 1 | canon-proposal 読み込み | `story/arc{N}/ep-{NNN}.canon-proposal.md` |
| 2 | QA PASS 確認 | `qa/reports/ep-{NNN}-qa.md` |
| 3 | Canon エントリ作成 | `canon/active/canon-{NNN}.md` |
| 4 | Open Loops 更新 | `meta/open_loops.md` |
| 5 | キャラ状態更新 | `specs/core/characters_current.md` |
| 6 | Quick Reference 更新 | `canon/quick_ref.md` |

### 2.5 Open Loops 同期チェック

Canon 登録後、`meta/open_loops_sync_check.md` に以下の7項目を記録する。

- [ ] 新 ACTIVE ループが `meta/open_loops.md` に追加されている
- [ ] 解決ループのステータスが `resolved` に更新されている
- [ ] 進展ループの `last_touched` が更新されている
- [ ] `canon/quick_ref.md` のアクティブループ欄が `meta/open_loops.md` と一致
- [ ] ループ総数と quick_ref の表示数が一致（resolved 分を差し引き）
- [ ] Active ウィンドウ管理（次項 2.6 で実施）
- [ ] 同時アクティブ数が上限10本以下

### 2.6 Active ウィンドウ管理

```
canon/active/ 内のファイル数を確認
  → 6件以上の場合:
    1. 最古の canon-{NNN}.md を canon/archive/ に移動
    2. 5件以下になるまで繰り返す
  → 5件以下の場合: 作業不要
```

**重要:** この手順は Canon 登録の直後に必ず実施する。後回しにすると累積する。

### 2.7 Git コミット & Perf 記録

**Canon 登録コミット:**
```bash
git add canon/active/canon-{NNN}.md canon/quick_ref.md \
       meta/open_loops.md meta/open_loops_sync_check.md \
       specs/core/characters_current.md
git commit -m "[canon] EP-{NNN}「{タイトル}」Canon登録（Arc {N} 第{X}話）"
```

**アーカイブ移動があった場合:**
```bash
git add canon/active/ canon/archive/
git commit -m "[canon] active window整理: canon-{oldest} → archive"
```

**パフォーマンス記録:**
```bash
./tools/log_perf.sh write-ep-{NNN} draft {NNN} $START "初稿完了"
```

**main マージ（ユーザー確認必須）:**
```bash
# ← 必ずユーザーに確認してから実行
git checkout main
git merge arc{N}/ep-{NNN}
git branch -d arc{N}/ep-{NNN}
```

### 2.8 EP 執筆サイクル完了チェックリスト

- [ ] story/arc{N}/ep-{NNN}.md 存在
- [ ] story/arc{N}/ep-{NNN}.canon-proposal.md 存在
- [ ] qa/reports/ep-{NNN}-qa.md 存在（PASS）
- [ ] canon/active/canon-{NNN}.md 存在
- [ ] meta/open_loops.md 更新済み
- [ ] meta/open_loops_sync_check.md チェック完了
- [ ] specs/core/characters_current.md 更新済み
- [ ] canon/quick_ref.md 更新済み
- [ ] canon/active/ が5件以下
- [ ] Git コミット完了
- [ ] perf_log 記録済み
- [ ] main マージ完了（ユーザー確認済み）

---

## Phase 3: 定期メンテナンス

### 3.1 毎回（EP 執筆直後）

Phase 2.8 のチェックリストで網羅される。追加作業は不要。

### 3.2 Active ウィンドウ緊急修復

canon/active/ が6件以上ある場合に実施する。

```bash
# 1. 現在のファイル数を確認
ls canon/active/ | wc -l

# 2. 最古のファイルを特定
ls -t canon/active/ | tail -1

# 3. archive に移動
mv canon/active/canon-{oldest}.md canon/archive/

# 4. 5件以下になるまで繰り返す
```

### 3.3 アーク移行時チェック（Arc 終了時に実施）

| 項目 | 確認内容 |
|------|---------|
| Open Loops 棚卸し | 全ループの status/last_touched を一覧確認。resolved の漏れがないか |
| Characters 監査 | characters_current.md と characters_full.md の乖離がないか |
| Quick Ref サイズ | 2〜3K 文字以内に収まっているか。超過時は要約を見直す |
| Active ウィンドウ | 5件以下であること。不要なファイルがないか |
| Plot Outline 進捗 | 達成事項にチェックが入っているか。次アークの概要があるか |
| エージェント定義 | `.claude/agents/*.md` のパスが現行構造と一致しているか |
| Perf Log レビュー | 執筆時間の推移に異常がないか |

### 3.4 5話ごと軽量チェック

5話ごと（EP-025, EP-030, EP-035 等）に実施する簡易チェック。

- [ ] `canon/quick_ref.md` のサイズが 3K 文字以下
- [ ] アクティブループ数が 10本以下
- [ ] `canon/active/` が 5件以下
- [ ] `meta/open_loops.md` と `canon/quick_ref.md` のループ一覧が一致
- [ ] `specs/core/characters_current.md` の状態が最新 EP と整合

### 3.5 エージェント定義の保守

エージェント定義（`.claude/agents/*.md`）は、プロジェクト構造の変更時に更新する。
特にファイルパスの参照が旧構造のまま残らないよう注意する。

**確認対象のパスマッピング:**

| エージェント参照 | 正しいパス |
|----------------|-----------|
| 不変ルール | `specs/core/invariants.md` |
| 魔法ルール | `specs/reference/magic_physics.md` |
| キャラクター仕様（現在状態） | `specs/core/characters_current.md` |
| キャラクター仕様（詳細） | `specs/reference/characters_full.md` |
| 世界観 | `specs/reference/world.md` |
| Canon Quick Reference | `canon/quick_ref.md` |
| Canon Active | `canon/active/*.md` |
| Open Loops | `meta/open_loops.md` |
| エピソード保存先 | `story/arc{N}/ep-{NNN}.md`（{N}は現在のアーク番号） |
| QA レポート | `qa/reports/ep-{NNN}-qa.md` |

---

## Appendix A: PM プロンプトテンプレート集

### A.1 執筆指示（writer）

```
writer エージェントで EP-{NNN}（Arc {N} 第{X}話「{タイトル案}」）を執筆して。

■ コンテキスト
- 現在のアルの状態: {HP/MP/Location from quick_ref}
- 進展対象ループ: {LOOP-XXX（概要）, LOOP-YYY（概要）}
- 前話のラスト: {前話末尾の状況を1-2行で}

■ 本話のポイント
- {plot_outline の該当EPから主要イベントを転記}

■ 注意事項
- 文字数: 4,000〜6,000字
- {特記事項}
```

### A.2 QA 指示

```
qa エージェントで EP-{NNN} を検査して。
```

### A.3 Canon 登録指示

```
editor エージェントで EP-{NNN}「{タイトル}」の Canon 登録をして。
```

### A.4 リビジョン指示

```
writer エージェントで EP-{NNN} を修正して。

■ QA 指摘事項（{Blocker: X件, Major: Y件}）
{指摘一覧をコピー}
```

---

## Appendix B: トラブルシューティング

### B.1 QA が繰り返し FAIL する場合

1. Blocker の内容を確認。INV 違反は仕様側が正しい（仕様を変えない）
2. 複数の Major が関連している場合、根本原因を特定してから修正指示を出す
3. 3回以上 FAIL する場合、canon-proposal の設計自体を見直す

### B.2 Open Loops の不整合

1. `meta/open_loops.md` を正とする
2. `canon/quick_ref.md` のループ欄を open_loops.md に合わせて修正
3. `meta/open_loops_sync_check.md` に修正記録を残す

### B.3 Active ウィンドウの膨張

毎 EP 後に管理を怠ると累積する。発見次第 Phase 3.2 を実施する。
5件を超えるファイルは全て archive に移動し、最新5件のみ残す。

### B.4 Perf 記録の欠損

`tools/log_perf.sh` で事後記録が可能。
START タイムスタンプが不明な場合は `elapsed_seconds=0` とし、note に「事後記録」と明記。
手動でCSVを直接編集してはならない。

---

## Appendix C: ファイル構造クイックリファレンス

```
sdnd-eldia/
├── story/
│   ├── arc1/          # EP-001〜008
│   ├── arc2/          # EP-009〜023
│   └── arc3/          # EP-024〜035（これから）
├── specs/
│   ├── _index.md      # TIER ロードガイド
│   ├── core/          # TIER 1（必須）
│   │   ├── invariants.md
│   │   └── characters_current.md
│   └── reference/     # TIER 3（参照時）
│       ├── world.md
│       ├── magic_physics.md
│       └── characters_full.md
├── canon/
│   ├── quick_ref.md   # TIER 1（必須）
│   ├── active/        # TIER 2（直近5件）
│   └── archive/       # TIER 3（過去分）
├── qa/reports/         # QA レポート
├── meta/
│   ├── open_loops.md   # TIER 2
│   ├── open_loops_sync_check.md
│   ├── perf_log_schema.md
│   └── perf_log.csv
├── policies/           # Canon/Git ポリシー
├── templates/          # テンプレート
├── tools/              # log_perf.sh
├── docs/
│   ├── plot_outline.md
│   ├── retrospective_resume.md
│   └── writing_guide.md  ← 本ファイル
└── .claude/agents/     # writer, qa, editor
```
