# Canon Quick Reference
<!-- 最終更新: EP-035 Canon確定 / 2026-03-03（全35話完結） -->

## 現在のキャラクター状態
| ID | Name | HP | MP | Location | Status |
|----|------|----|----|----------|--------|
| PC-001 | アル＝ラグナ | 80/80 | 38/120（推定・EP-035自然回復） | ラグナ村（実家） | ラグナ村帰還完了（EP-035）。全35話完結。LOOP-001完全回収（soul_transfer_protocol全詳細・前世の体の状態・EP-031）。LOOP-001内面的定着完了（「死んでいなかった」・感情レベル受け入れ・EP-035）。LOOP-005完全回収（大崩壊の真相確定・EP-030）。LOOP-007完全回収（EP-029）。LOOP-002完全回収（EP-028）。LOOP-008完全回収（EP-027）。LOOP-009回収（EP-026）。LOOP-003完全回収（「断裂を管理する設計」・EP-033）。root_access GRANTED（永続・不可逆・EP-033）。primary node patch complete（#3/#7/#11/#14・不可逆・EP-034）。degradation rate: stabilizing。integrity 26%（変化なし）。secondary network: long-term maintenance。アクティブループ 0本（全LOOP 10/10 回収完了）。最終的な自己定義: 「知っていて——それでもただ見ていた」 |

## アクティブループ（ACTIVE のみ）

**全LOOP回収完了（10/10 resolved）。アクティブループ 0本。**

| Loop ID | Summary | Since | Last Touched |
|---------|---------|-------|-------------|
| （なし） | 全LOOP回収完了 | — | EP-033 |

## 直近の重要イベント（最新3件）
- EP-035: 帰路3日間（馬車）＋村着2日間で自然回復（MP: 3/120→38/120推定）。リンデン町手前でリーラと別れ、村の入り口でフィンと握手して別れた。ラグナ村（実家）帰還完了。マーラ・ドルク再会。翌朝から薬草調合手伝い。すり鉢の波形再目撃（EP-001との対構造成立）。夜の回想でLOOP-001の内面的定着確立（「死んでいなかった」）。secondary network長期課題の認識継続。最終一文「すり鉢の中で薬草が光った。」（EP-001完全呼応）。全35話完結。Arc 3第12話・最終話
- EP-034: supervisor_channel 5回目接続（city_grid node #7直接接触・過去最速）。root_access権限でprimary node 4点（#7→#3→#11→#14）への安定化フィルタ（phase_correction・buffer_width: 2 cycles）を順次適用。PRIMARY NODE PATCH: COMPLETE（4/4）。崩壊以来503年ぶりのfoundation_layerへのwrite操作。全操作committed（不可逆）。degradation rate: 0.9%/year（加速）→ stabilizing。integrity: 26%（変化なし）。secondary micro-fracture network: long-term maintenance target登録。ルクス「thank you, debugger」出力受信。28MP消費（31/120→3/120）。「帰れる」という確信形成。Arc 3第11話
- EP-033: supervisor_channel 4回目接続（city_grid node #7直接接触）。「一晩置け」に従い翌朝に「option B: stabilization patch」の意図をルクスに表明。gating check PASSEDによりroot_access GRANTED・write permission to foundation_layer ACTIVE化（永続・不可逆）。LOOP-003「なぜバグがあるのか」完全回収（EP-004〜EP-033・29話分の最長ループ）。foundation_layer fracture詳細確定（phase discontinuity at subsurface boundary、primary nodes #3/#7/#11/#14）。パッチ設計方針確立（実装はEP-034）。25MP消費（35/120→10/120）。integrity 26%維持。アクティブループ 1→0本（全LOOP 10/10 回収完了）。Arc 3第10話

---

### 更新ルール
- エピソード確定のたびに本ファイルを更新する
- キャラクター状態は `specs/core/characters_current.md` と同期
- アクティブループは `meta/open_loops.md` と同期
- サイズ上限目安: ~2-3K 文字（超過時は要約を見直す）
