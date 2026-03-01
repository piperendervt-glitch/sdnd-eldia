# sdnd-eldia プロジェクト

## 概要
仕様駆動（SDND）の異世界転生ライトノベル執筆プロジェクト。
前身プロジェクト（magic-debug-isekai-spec）で10話のプロトタイプを完了し、
得られた知見をもとに新規スタートする。

## 現在のフェーズ
Step 2: アーキテクチャ再設計（完了）

## 参照すべきドキュメント

### 常時読み込み（TIER 1）
- specs/core/invariants.md — 不変ルール（INV-*）
- specs/core/characters_current.md — キャラ現在状態
- canon/quick_ref.md — Canon最新状態スナップショット

### エピソード実行時（TIER 2）
- canon/active/*.md — 直近5話のCANONエントリ
- meta/open_loops.md — オープンループ一覧

### 参照時のみ（TIER 3）
- specs/reference/world.md — 世界設定
- specs/reference/magic_physics.md — 魔法体系
- specs/reference/characters_full.md — キャラ詳細設定
- canon/archive/*.md — 過去CANONエントリ

### ガイド・ポリシー
- specs/_index.md — スペック読み込み階層ガイド
- docs/retrospective_resume.md — 前プロジェクトからの引き継ぎ知見
- policies/canon_policy.md — Canon承認ゲートルール
- policies/git_policy.md — Git運用ルール
- meta/open_loops_sync_check.md — Open Loops同期チェック
- meta/perf_log_schema.md — perfログ仕様

### テンプレート
- templates/canon_entry.md — CANONエントリテンプレート
- templates/qa_report.md — QAレポートテンプレート
- templates/episode.md — エピソードテンプレート

### ツール
- tools/log_perf.sh — perf記録スクリプト

## 設計方針
- canon は3層分離構造（quick_ref + active + archive）
- Specs は TIER 1（必須）/ TIER 2（実行時）/ TIER 3（参照時）に階層化
- open_loops.md は canon 確定のブロッキングゲートで同期を強制
- perf ログは tools/log_perf.sh で自動記録（手動入力禁止）
- active ウィンドウは直近5話、6件以上で最古を archive に移動

## Git 運用ルール
- commit とブランチ操作は自動で実行してよい
- master への merge は、実行前に必ずユーザーに確認を求めること
- commit メッセージは [story], [spec], [canon], [qa], [chore] のprefixを付けること

## サブエージェント運用ルール

本プロジェクトでは3つのサブエージェントを使い分ける。

| エージェント | 役割 | 起動タイミング |
|-------------|------|--------------|
| writer | EP本文と canon-proposal の執筆 | 「EP-NNN を書いて」 |
| qa | QAレポートの作成 | 「EP-NNN をQAして」 |
| editor | Canon登録・仕様更新 | 「Canon登録して」「仕様を修正して」 |

### ファイル変更権限
- writer: story/ のみ書き込み可。specs/ は読み取りのみ
- qa: qa/reports/ のみ書き込み可。story/ specs/ は読み取りのみ
- editor: specs/ meta/ のみ書き込み可

### ワークフロー
1. メインセッション（PM）が writer を呼び出し → EP本文が生成される
2. メインセッション（PM）が qa を呼び出し → QAレポートが生成される
3. QA PASS なら editor を呼び出し → Canon登録・仕様更新
4. QA に指摘があれば writer を再度呼び出し → 修正