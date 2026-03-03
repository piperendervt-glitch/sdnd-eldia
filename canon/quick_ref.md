# Canon Quick Reference
<!-- 最終更新: EP-031 Canon確定 / 2026-03-03 -->

## 現在のキャラクター状態
| ID | Name | HP | MP | Location | Status |
|----|------|----|----|----------|--------|
| PC-001 | アル＝ラグナ | 80/80 | 32/120 | カエルム（翡翠の水差し亭 / 内環通行票取得済み） | 帝都研修中（年齢12歳）。LOOP-001完全回収（soul_transfer_protocol全詳細・前世の体の状態・EP-031）。LOOP-005完全回収（大崩壊の真相確定・EP-030）。LOOP-007完全回収（EP-029）。LOOP-002完全回収（EP-028）。LOOP-008完全回収（EP-027）。LOOP-009回収（EP-026）。フィンへのルクス正体・教義真相の告知完了（EP-031）。integrity 26%（変化なし）。BOUNDARY_LEAK露出ノード: 19か所。アクティブループ 1本（LOOP-003のみ）。届け出義務・監視対象者登録・研修条件付き継続 |

## アクティブループ（ACTIVE のみ）
| Loop ID | Summary | Since | Last Touched |
|---------|---------|-------|-------------|
| LOOP-003 | なぜバグがあるのか | EP-004 | EP-030 |

## 直近の重要イベント（最新3件）
- EP-031: supervisor_channel 2回目接続（surface_bleed直接接触）。soul_transfer_protocol選定基準（信号処理専門家の意識が必要）・タイミング（integrity 30%閾値・collapse_epoch+501年実行・アルが最後の召喚対象）・前世の体の状態（意識のみ引き込み・体は昏睡・「眠ったまま目覚めない人」・body status: unknown）がすべて開示されLOOP-001 resolved。前三人のデバッガー詳細取得（デバッガー2がpost_collapse_patch_v2.1作成者と確定）。フィンへのルクス正体・教義真相の告知完了（「光が存在することを、良かったと思っています」）。25MP消費（57/120→32/120）。integrity 26%維持。アクティブループ 2→1本（LOOP-003のみ）。Arc 3第8話
- EP-030: 大聖堂前石畳のsurface_bleed（BOUNDARY_LEAK露出点）に直接触れてデバッグスキルを能動的に発動。supervisor_channel開通・lux_management_coreとの初の直接テキスト対話成立。大崩壊の真相（メモリ破壊→クラッシュ→強制リブート・外部干渉が原因）確定しLOOP-005 resolved。ルクスの正体（world_management_systemの管理コア）確定。outsider_registry: アルは4人目の登録デバッガー（先行3件全員INACTIVE）。30MP消費（73/120→43/120）。integrity 27%→26%。BOUNDARY_LEAK露出ノード12→19か所。アクティブループ3→2本。Arc 3第7話
- EP-029: BOUNDARY_LEAK地上表面化を受けて封印区画への4回目入室（緊急対応）。`foundation_layer source`から完全なソースコード断片（関数定義・コメント行・バージョン番号・最終更新日: collapse_epoch+247）を取得。「デバッグ出力がコードに見えるのは、それが文字通りコードだから」という確信に到達しLOOP-007 resolved。修正二択（表層補修 vs 根本修復）・root_access要件判明。40MP消費（92/120→52/120）。integrity 31%→27%。アクティブループ4→3本。Arc 3第6話

---

### 更新ルール
- エピソード確定のたびに本ファイルを更新する
- キャラクター状態は `specs/core/characters_current.md` と同期
- アクティブループは `meta/open_loops.md` と同期
- サイズ上限目安: ~2-3K 文字（超過時は要約を見直す）
