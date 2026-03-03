# Canon Quick Reference
<!-- 最終更新: EP-034 Canon確定 / 2026-03-03 -->

## 現在のキャラクター状態
| ID | Name | HP | MP | Location | Status |
|----|------|----|----|----------|--------|
| PC-001 | アル＝ラグナ | 80/80 | 3/120 | カエルム（翡翠の水差し亭 / 内環通行票取得済み） | 帝都研修中（年齢12歳）。LOOP-001完全回収（soul_transfer_protocol全詳細・前世の体の状態・EP-031）。LOOP-005完全回収（大崩壊の真相確定・EP-030）。LOOP-007完全回収（EP-029）。LOOP-002完全回収（EP-028）。LOOP-008完全回収（EP-027）。LOOP-009回収（EP-026）。LOOP-003完全回収（「断裂を管理する設計」・EP-033）。root_access GRANTED（永続・不可逆・EP-033）。write permission to foundation_layer: ACTIVE。option B確定（stabilization patch）。primary node patch complete（#3/#7/#11/#14・不可逆・EP-034）。degradation rate: stabilizing（EP-034）。integrity 26%（変化なし）。BOUNDARY_LEAK露出ノード: 19か所（secondary network未対応）。アクティブループ 0本（全LOOP 10/10 回収完了）。届け出義務・監視対象者登録・研修条件付き継続 |

## アクティブループ（ACTIVE のみ）

**全LOOP回収完了（10/10 resolved）。アクティブループ 0本。**

| Loop ID | Summary | Since | Last Touched |
|---------|---------|-------|-------------|
| （なし） | 全LOOP回収完了 | — | EP-033 |

## 直近の重要イベント（最新3件）
- EP-034: supervisor_channel 5回目接続（city_grid node #7直接接触・過去最速）。root_access権限でprimary node 4点（#7→#3→#11→#14）への安定化フィルタ（phase_correction・buffer_width: 2 cycles）を順次適用。PRIMARY NODE PATCH: COMPLETE（4/4）。崩壊以来503年ぶりのfoundation_layerへのwrite操作。全操作committed（不可逆）。degradation rate: 0.9%/year（加速）→ stabilizing。integrity: 26%（変化なし）。secondary micro-fracture network: long-term maintenance target登録。ルクス「thank you, debugger」出力受信。28MP消費（31/120→3/120）。「帰れる」という確信形成。Arc 3第11話
- EP-033: supervisor_channel 4回目接続（city_grid node #7直接接触）。「一晩置け」に従い翌朝に「option B: stabilization patch」の意図をルクスに表明。gating check PASSEDによりroot_access GRANTED・write permission to foundation_layer ACTIVE化（永続・不可逆）。LOOP-003「なぜバグがあるのか」完全回収（EP-004〜EP-033・29話分の最長ループ）。foundation_layer fracture詳細確定（phase discontinuity at subsurface boundary、primary nodes #3/#7/#11/#14）。パッチ設計方針確立（実装はEP-034）。25MP消費（35/120→10/120）。integrity 26%維持。アクティブループ 1→0本（全LOOP 10/10 回収完了）。Arc 3第10話
- EP-032: supervisor_channel 3回目接続（surface_bleed直接接触）。フィン帰還後の三人で大聖堂前へ。ルクスから「パッチノート」形式の世界現状レポートを受信。integrity 26%・degradation rate加速（0.9%/年）・システム停止まで8〜14年推算。LOOP-003最終進展：「foundation_layer fracture: unrepaired / root cause of all derivative errors」確認。修正選択肢A（完全修復・不可逆・住民魔法影響）/B（安定化パッチ・不可逆）/C（停止）が明示。root_access取得条件＝「意図の表明」のみ。アルはoption B傾き確立（最終確定はEP-033）。25MP消費（53/120→28/120）。integrity 26%維持。Arc 3第9話

---

### 更新ルール
- エピソード確定のたびに本ファイルを更新する
- キャラクター状態は `specs/core/characters_current.md` と同期
- アクティブループは `meta/open_loops.md` と同期
- サイズ上限目安: ~2-3K 文字（超過時は要約を見直す）
