# Canon 承認ゲート・ルール

## Canon とは
Canon（正史）はこの物語世界で「実際に起きたこと」として確定された事実の記録である。
一度 Canon に記録された事象は、原則として変更・撤回できない。

---

## Canon エントリの構造

各 Canon エントリは `canon/active/canon-{NNN}.md` として保存される。
テンプレートは `templates/canon_entry.md` を使用する。

---

## Canon 承認ゲート

Canon エントリを確定する前に、以下のゲートをすべて通過すること。

### Gate 1: エピソード完成
- エピソード本文が `story/arc1/ep-{NNN}.md` に保存されている

### Gate 2: QA レポート完了
- QA レポートが `qa/reports/ep-{NNN}_report.md` に保存されている
- 不変ルール（INV-*）違反がないことを確認済み

### Gate 3: Open Loops 同期
- `meta/open_loops_sync_check.md` の全チェック項目が完了している
- 詳細は `meta/open_loops_sync_check.md` を参照

### Gate 4: Quick Reference 更新
- `canon/quick_ref.md` が最新状態に更新されている
- キャラクター状態、アクティブループ、重要イベントが反映されている

---

## ローリングウィンドウ管理

### Active ウィンドウ
- サイズ: **直近5話分**
- 保存先: `canon/active/`

### Archive への移動
- active 内が **6ファイル以上** になったら、最古のエントリを `canon/archive/` に移動
- 移動手順:
  1. `mv canon/active/canon-{oldest}.md canon/archive/`
  2. active 内が5ファイル以下になるまで繰り返す

### Archive の参照
- 通常のエピソード執筆では archive を読まない
- 過去のイベントを参照する必要がある場合のみロードする

---

## Canon の修正（例外的措置）
- 原則として Canon は不変
- 明らかな記載ミス（タイポ・数値誤り）のみ修正可
- 修正時は `note` 欄に修正理由と修正日を記録する
- ストーリー上の事実の撤回（レトコン）は禁止（INV-006 参照）
