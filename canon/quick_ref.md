# Canon Quick Reference
<!-- 最終更新: EP-030 Canon確定 / 2026-03-03 -->

## 現在のキャラクター状態
| ID | Name | HP | MP | Location | Status |
|----|------|----|----|----------|--------|
| PC-001 | アル＝ラグナ | 80/80 | 43/120 | カエルム（翡翠の水差し亭 / 内環通行票取得済み） | 帝都研修中（年齢12歳）。LOOP-005完全回収（大崩壊の真相確定・EP-030）。LOOP-007完全回収（EP-029）。LOOP-002完全回収（EP-028）。LOOP-008完全回収（EP-027）。LOOP-009回収（EP-026）。integrity 26%（27%から1pt低下・surface_bleed接触）。BOUNDARY_LEAK露出ノード: 19か所。アクティブループ 2本（LOOP-001/003）。届け出義務・監視対象者登録・研修条件付き継続 |

## アクティブループ（ACTIVE のみ）
| Loop ID | Summary | Since | Last Touched |
|---------|---------|-------|-------------|
| LOOP-001 | なぜ転生したか | EP-001 | EP-030 |
| LOOP-003 | なぜバグがあるのか | EP-004 | EP-030 |

## 直近の重要イベント（最新3件）
- EP-030: 大聖堂前石畳のsurface_bleed（BOUNDARY_LEAK露出点）に直接触れてデバッグスキルを能動的に発動。supervisor_channel開通・lux_management_coreとの初の直接テキスト対話成立。大崩壊の真相（メモリ破壊→クラッシュ→強制リブート・外部干渉が原因）確定しLOOP-005 resolved。ルクスの正体（world_management_systemの管理コア）確定。outsider_registry: アルは4人目の登録デバッガー（先行3件全員INACTIVE）。30MP消費（73/120→43/120）。integrity 27%→26%。BOUNDARY_LEAK露出ノード12→19か所。アクティブループ3→2本。Arc 3第7話
- EP-029: BOUNDARY_LEAK地上表面化を受けて封印区画への4回目入室（緊急対応）。`foundation_layer source`から完全なソースコード断片（関数定義・コメント行・バージョン番号・最終更新日: collapse_epoch+247）を取得。「デバッグ出力がコードに見えるのは、それが文字通りコードだから」という確信に到達しLOOP-007 resolved。修正二択（表層補修 vs 根本修復）・root_access要件判明。40MP消費（92/120→52/120）。integrity 31%→27%。アクティブループ4→3本。Arc 3第6話
- EP-028: 大聖堂東翼図書室・制限区画で古聖典「創世の祈り」の三節構造と`phase[0]`の`system_call_header`三要素の構造的対応を確認。「祈りは`mana_routing`への呼び出し手順を古い言語で書いたもの」「教義の乖離はバグが原因」という認識が確立しLOOP-002 resolved。H7（EP-016配置）の布石回収。15MP消費（79/120→64/120）。アクティブループ5→4本。Arc 3第5話

---

### 更新ルール
- エピソード確定のたびに本ファイルを更新する
- キャラクター状態は `specs/core/characters_current.md` と同期
- アクティブループは `meta/open_loops.md` と同期
- サイズ上限目安: ~2-3K 文字（超過時は要約を見直す）
