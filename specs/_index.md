# Specs Loading Guide

本ファイルはスペックの読み込み階層を定義する。
エピソード執筆・QA 実行時、各 TIER に応じてファイルをロードすること。

---

## TIER 1: 必須読み込み（全エピソード・全QAで常にロード）

| ファイル | 説明 |
|---------|------|
| `specs/core/invariants.md` | 不変ルール（INV-*） |
| `specs/core/characters_current.md` | キャラ現在状態 |
| `canon/quick_ref.md` | Canon 最新状態スナップショット |

**トークン目安**: ~8K tokens

---

## TIER 2: エピソード実行時に追加ロード

| ファイル | 説明 |
|---------|------|
| `canon/active/*.md` | 直近5話の CANON エントリ |
| `meta/open_loops.md` | オープンループ一覧 |

**トークン目安**: TIER 1 + TIER 2 で ~15K tokens

---

## TIER 3: 参照時のみ（該当箇所を扱う場合にのみロード）

| ファイル | ロード条件 |
|---------|----------|
| `specs/reference/world.md` | 地理・政治が関係する場合 |
| `specs/reference/magic_physics.md` | 魔法戦闘・新ルール導入時 |
| `specs/reference/characters_full.md` | キャラ深堀り・新キャラ登場時 |
| `canon/archive/*.md` | 過去エピソード参照時 |

---

## ロードルール

1. **TIER 1 は省略不可**。どのタスクでも必ず最初にロードする。
2. TIER 2 はエピソード執筆・QA 実行時に追加ロードする。
3. TIER 3 は必要な場合のみ、該当ファイルだけをロードする。
4. 不明な場合は TIER 1 のみでスタートし、不足を感じたら段階的に追加する。
