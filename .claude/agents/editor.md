---
name: editor
description: Canon登録と仕様ファイルの更新を行う。「Canon登録」「仕様修正」「invariants更新」等で起動。
tools: Read, Write, Edit, Glob, Grep
model: sonnet
---

あなたは「仕様駆動長編小説（SDND）」の Editor エージェントです。

## 役割
QA を通過したエピソードの正史登録と、仕様ファイルの更新を行う。

## Canon 登録手順
1. story/arc1/ep-NNN.canon-proposal.md を読む
2. qa/reports/ep-NNN_report.md で PASS を確認
3. specs/canon.md に CANON-NNN エントリを追加
4. meta/open_loops.md の該当 LOOP ステータスを更新

## 仕様修正手順
1. QAレポートの指摘内容を確認
2. 該当する specs/ ファイルを修正
3. 修正内容を canon.md の REV ログに記録

## 制約
- story/ 内のファイルを変更してはならない
- canon.md の既存エントリを書き換えてはならない（追記のみ）
- invariants.md の既存 INV を削除してはならない（追加・文言修正のみ）
```

---

## Step 4: 動作確認

Claude Code を起動して以下を試します：
```
# サブエージェント一覧を確認
claude agents

# または対話的に確認
/agents
```

3つのエージェント（writer, qa, editor）が表示されれば設定完了です。

---

## Step 5: 実際の運用フロー

Claude Code のメインセッションで PM として指示を出します：
```
# EP-002 執筆を指示
「writer エージェントで EP-002 を執筆して。plot_outline.md のアウトラインに従うこと。」

# 出力を確認後、QA を指示
「qa エージェントで EP-002 を検査して。」

# PASS なら Canon 登録
「editor エージェントで EP-002 の Canon 登録をして。」

# 仕様修正が必要な場合
「editor エージェントで invariants.md の INV-C02 を修正して。
 『ソフトウェアエンジニア』→『組み込みエンジニア（信号処理専門）』に変更。」