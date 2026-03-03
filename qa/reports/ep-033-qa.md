# EP-033 QA Report

<!-- 検査日: 2026-03-03 -->
<!-- 検査対象: story/arc3/ep-033.md / story/arc3/ep-033.canon-proposal.md -->
<!-- 検査者: QA Agent (claude-sonnet-4-6) -->

## 判定: PASS

## サマリ

- Blocker: 0件
- Major: 0件
- Minor: 1件
- Warn: 2件

---

## 指摘一覧

### [Minor] QA-033-M01: root_access付与操作のMP消費が過去接続と同水準で「普段より大きい」描写と若干不整合

- 該当箇所: story/arc3/ep-033.md L236、エピソードメモ L403-405
- 参照仕様: RULE-M08（デバッグスキルの技術仕様）
- 詳細:
  RULE-M08によるMP消費定義は「基礎コスト15MP + 追加コスト5〜50MP」。EP-033の消費内訳は「基礎15MP + 追加10MP = 合計25MP」とされているが、EP-031（25MP消費）・EP-032（25MP消費）と同値である。
  一方、本文L236では「普段より消耗が大きかった——root_access付与の操作が、通常の読み取りより負荷をかけたのだろう」と明示されており、追加コストが追加されたような文脈になっている。
  root_access付与（W-03で意識識別子喪失の危険性が示された重大操作）が含まれているにもかかわらず、数値上の追加コストが過去と同水準（追加10MP）であることは、RULE-M08の「対象の複雑さに応じた追加コスト」との整合性がやや弱い。
- 修正提案:
  選択肢1: 追加コストをより大きく設定する（例: 基礎15MP + 追加20MP = 35MP消費、35/120-35=0/120となり意識喪失リスクが高すぎるため不適切）。
  選択肢2: 消費を25MPのまま維持し、「普段より消耗が大きかった」という描写を「通常より疲労感が重い」という身体感覚の記述に留め、数値との不整合を軽減する。
  選択肢3: 現状維持（消費25MPで副作用描写を維持）。エピソードの流れや次話への引き継ぎMP(10/120)への影響を考えると、現状維持が最もバランスがよく、物語的な支障はない。
  推奨: 選択肢3（現状維持）。過去の接続との連続性を優先し、「普段より消耗が大きかった」は身体的な疲労感の描写として読めるため、実質的な問題は小さい。

---

### [Warn] QA-033-W01: open_loops.md のLOOP-003ステータス（status: open）とcanon-proposalの宣言（resolved）の同期未完了

- 該当箇所: meta/open_loops.md L13（LOOP-003 status: open）、story/arc3/ep-033.canon-proposal.md L69-75
- 参照仕様: policies/canon_policy.md（Canon承認ゲートルール）、meta/open_loops.md 運用ルール
- 詳細:
  open_loops.mdのLOOP-003は現在 status: open のまま（最終更新EP-032 Canon確定時点）。EP-033のcanon-proposalではLOOP-003をresolvedと宣言しているが、canon-proposal段階ではまだopen_loops.mdの更新は行われていない（Canon登録はEditorエージェントの担当）。
  これはワークフロー上の正常な状態であり、EP-033 Canon登録時にEditorがopen_loops.mdを更新することが期待されている。QAレポート段階での検知として記録する。
- 修正提案:
  EP-033 Canon登録時（Editorエージェント実行時）に、open_loops.mdのLOOP-003ステータスをopen→resolvedに更新し、canon/quick_ref.mdのアクティブループ欄を「0本（全LOOP回収完了）」に更新すること。

---

### [Warn] QA-033-W02: 全ループ回収完了（10/10）宣言の検証

- 該当箇所: story/arc3/ep-033.canon-proposal.md L118-125
- 参照仕様: meta/open_loops.md（LOOP-001〜010の全ステータス）
- 詳細:
  canon-proposalで「全LOOP（10/10）回収完了」と宣言している。open_loops.md確認時点（EP-032 Canon確定後）でのステータスは以下の通り:
  - LOOP-001: resolved（EP-031）✓
  - LOOP-002: resolved（EP-028）✓
  - LOOP-003: open（→EP-033でresolved予定）
  - LOOP-004: resolved（EP-013）✓
  - LOOP-005: resolved（EP-030）✓
  - LOOP-006: resolved（EP-017）✓
  - LOOP-007: resolved（EP-029）✓
  - LOOP-008: resolved（EP-027）✓
  - LOOP-009: resolved（EP-026）✓
  - LOOP-010: resolved（EP-022）✓
  EP-033でLOOP-003がresolvedになれば、確かに10/10が成立する。Canon登録後に最終確認を行うこと。
- 修正提案:
  EP-033 Canon登録完了後、open_loops.mdで全10件のstatus=resolvedを改めて目視確認すること。

---

## 検査詳細記録

### TIER 1 照合結果

#### INV-A01（魔法にはコストがある）

- 本文でのMP消費: 25MP消費（35/120 → 10/120）
- 身体症状: 体温上昇（L69, L134）、額の圧（L236）、足の感覚の重さ（L236）、喉の渇き（L236）
- 立ち上がり可能（L237）→ 意識喪失なし
- 自然回復の描写: EP-032終了時28/120 + 7MP/日×1日 = 35/120からスタート（RULE-M01準拠）
- 判定: **PASS**

#### INV-A02（魔法は物理法則の拡張）

- 本話での魔法的操作は接続・クエリのみ。物理法則との矛盾なし。
- 判定: **PASS**

#### INV-A03（属性間の相互作用は固定法則）

- 本話での属性魔法使用なし。対象外。
- 判定: **PASS（対象外）**

#### INV-A04（魔法の効果は術者の理解度に依存）

- 「フェーズ不連続」の認識がそのまま設計方針に接続（L220-228）
- 前世知識（クロックドメイン境界問題）が根本理解として機能
- 判定: **PASS**

#### INV-B01（死者は蘇らない）

- 本話でのキャラクター死亡・復活なし。対象外。
- 判定: **PASS（対象外）**

#### INV-B02（因果の一貫性）

- EP-032でのリーラ「一晩置け」→ EP-033翌日実施（L19-47）
- EP-032でのroot_access条件（意図の表明）→ EP-033で実行（L101-130）
- supervisor_channelの接続回数連番: 3rd(EP-032) → 4th(EP-033)（L77）
- 判定: **PASS**

#### INV-B03（情報の非対称性）

- リーラの内面: 描写なし。「少し間を置いた」「少し目を細めた」等の外面描写のみ（L45, L336）
- フィンの内面: 描写なし。「外面だけが見えた。何を考えているかは、分からなかった」と明示（L358）
- アルはルクスの出力から情報を得ており「都合よく情報を知っている」展開なし
- 判定: **PASS**

#### INV-B04（技術水準の制約）

- 前世知識の直接転用（技術革新の試みなし）。バグ修正はシステム内の操作。
- 判定: **PASS（対象外）**

#### INV-C01（成長の段階性）

- root_accessはシステム側から付与された権限（L123）であり、アルの能力向上ではない
- ルクス出力にも「confirmed. root_access: GRANTED」と明示
- 判定: **PASS**

#### INV-C02（前世知識の制約）

使用した前世知識の検証:
- フェーズ不連続（L220）: 信号処理の専門用語 ✓
- 異なるクロックドメイン間のデータ転送・メタスタビリティ（L224）: 組み込みシステム工学 ✓
- 非同期FIFOバッファ・二重フリップフロップ（L226）: 組み込みシステム工学 ✓
- 補正フィルタ設計・ノイズフロア管理（L292-298）: 信号処理 ✓
- いずれも「組み込みエンジニア（信号処理専門）の知識範囲」内
- 専門外知識（医学・法学・錬金術等）の使用なし
- 判定: **PASS**

#### INV-C03（動機と行動の一貫性）

- 「直したい」動機の一貫性: L103「option B: stabilization patch を実行する」、L266「管理できる範囲に収まります」、L270「不完全さを受け入れた上で、動き続けること」
- アルの選択がB（完全修復でなく継続動作設計）であることが前世の仕事経験から論理的に導かれている（L237, L382-386）
- 判定: **PASS**

#### INV-C04（NPCの自律性）

- リーラ・フィンは主人公の都合に合わせて待機していない（食事・帰還・外出等、各自の行動あり）
- 「外で待つ」役割確定は物語上の必然（supervisor_channelアクセス権限の制約）から説明される
- 判定: **PASS**

#### INV-D01（デバッグスキルの基本制約）

- 発動条件: stone_surface（city_grid node #7）への直接接触（RULE-M08 surface_bleed直接接触条項に準拠）
- 一対象制約: 石畳のsurface_bleed一点への接触で発動。複数対象への同時接続なし
- MP消費あり（25MP）
- 判定: **PASS**

#### INV-D02（バグ修正の影響範囲）

- root_access付与の不可逆性明示: ルクス出力内「this grant is permanent and irreversible. operations performed under root_access cannot be undone.」（L126-129）✓
- 実際のパッチ適用はEP-034に保留。本話では設計判断・root_access取得のみ ✓
- バグ修正操作（write操作）は本話では実施されていないため、INV-D02の「副作用の不可予測性」の検証対象外 ✓
- 判定: **PASS**

---

### TIER 2 照合結果

#### canon/active との連続性

- characters_current.md（PC-001 Status）との整合:
  - MP: 28/120 → EP-033での35/120開始（+7MP/日×1日）→ 10/120終了 ✓
  - integrity: 26% → 変化なし ✓
  - BOUNDARY_LEAK露出ノード: 19か所 → 変化なし ✓
  - アクティブループ: 1本（LOOP-003）→ 0本（LOOP-003 resolved）✓
  - アクセス権限: foundation_read → root_access（GRANTED）✓
- 判定: **PASS**

#### meta/open_loops.md との整合

- LOOP-003の対象回収EP: EP-033（open_loops.md L13のTarget Resolve: EP-033）と一致 ✓
- LOOP-003以外の全ループはresolved確認済み ✓
- EP-033でのLOOP-003回収は適切（29話分の積み上げを踏まえた結論に至っている）✓
- 判定: **PASS**（ただし、W01記録：Canon登録時にopen_loops.md更新が必要）

---

### TIER 3 照合結果

#### specs/reference/magic_physics.md との照合

- RULE-M08 MP消費計算: 基礎15MP + 追加コスト5〜50MP → 本話25MP（M01 Minorとして記録済み）
- RULE-M08 surface_bleed直接接触条項（EP-030初確認）: 今回で4回目の適用。整合性あり ✓
- RULE-M08 supervisor_channel経由クエリ送信条項（EP-030初確認）: 今回で4回目適用。3クエリ送信（意図の表明・根本原因最終確認・断裂詳細取得）。整合性あり ✓
- RULE-M01（極度消耗ルール）: 25MP消費は総MP120の約20.8%。極度消耗（70%以上一度消費）に該当しない。翌日7MP/日の自然回復は適切 ✓
- 判定: **PASS**

---

### 追加チェック結果

#### 同アーク内の直近3話との連続性

| チェック項目 | EP-030 | EP-031 | EP-032 | EP-033 |
|------------|--------|--------|--------|--------|
| MP終了値 | 43/120 | 32/120 | 28/120 | 10/120 |
| integrity | 26% | 26% | 26% | 26% |
| supervisor接続回数 | 1回目 | 2回目 | 3回目 | 4回目 ✓ |
| BOUNDARY_LEAK露出ノード | 19 | 19 | 19 | 19 ✓ |
| アクティブループ | 2本 | 1本 | 1本 | 0本 ✓ |

連続性: 問題なし ✓

#### canon-proposalと本文の整合性

| 確定イベント番号 | 内容 | 本文対応 |
|----------------|------|---------|
| 1 | 一晩の思索 | L19-47 ✓ |
| 2 | 4回目supervisor_channel接続 | L61-80 ✓ |
| 3 | 意図の表明 | L101-104 ✓ |
| 4 | root_access GRANTED | L105-130 ✓ |
| 5 | LOOP-003最終回収 | L140-180 ✓ |
| 6 | fracture詳細取得 | L186-216 ✓ |
| 7 | パッチ設計開始 | L280-302 ✓ |
| 8 | リーラ・フィンへの説明 | L316-358 ✓ |

MP変化表（EP-032終了28 → +7回復 → 35開始 → -25消費 → 10終了）: canon-proposalと本文メモが一致 ✓

整合性: 問題なし ✓

#### plot_outlineとのoption B整合性

- plot_outline L114: 「B: システムを再設計する」
- EP-033本文での「stabilization patch / 安定化パッチ」は概念的に同義
- EP-032でルクスが「stabilization patch」として定義し、EP-033はその定義に従った記述
- アルがBを選ぶという設計（plot_outline L119）と整合 ✓

#### 文字数（本文のみ、メタ情報除く）

- 本文範囲: L18〜L388（「前回までのあらすじ」込み、「エピソードメモ」除く）
- 推定文字数: 5,000〜5,500字（ルクス出力の英語テキストを含む）
- 制約範囲（4,000〜6,000字）内と判断 ✓
- 判定: **PASS**

---

## 総合判定の根拠

Blocker・Majorの指摘が0件であるため、判定は **PASS**。

Minorとして記録したQA-033-M01（MP消費量と「普段より大きい」描写の不整合）は、RULE-M08の違反とは断言できず、身体症状の描写として読める範囲内であるため、修正必須とはしない。

Warnとして記録した2件はいずれも、Canon登録時（Editorエージェント実行時）の作業事項であり、EP-033本文・canon-proposalの問題ではない。

全INV（14件）との照合で違反なし。LOOP-003の完全回収が適切に実施されている（EP-004から29話分の積み上げを踏まえた論理的帰結として描写）。root_access取得プロセスはEP-032で確定した条件（意図の表明）と完全に整合している。option B選択はplot_outlineの設計と整合する。INV-C02準拠（組み込みシステム工学・信号処理の範囲内）。INV-D02の不可逆性が適切に明示されている。

---

## Canon登録時の作業事項（Editorエージェント向け）

1. meta/open_loops.md のLOOP-003: status open → **resolved**、Resolved EP: EP-033 に更新
2. meta/open_loops.md のLOOP-003 Progress Log に EP-033回収内容を追記
3. canon/quick_ref.md のアクティブループ欄を「0本（全LOOP回収完了）」に更新
4. canon/quick_ref.md の PC-001 状態（MP: 28/120 → 10/120、アクセス権限更新）を反映
5. specs/core/characters_current.md の PC-001 状態を更新（MP, アクセス権限, アクティブループ, LOOP-003 resolved記録）
6. 新規 canon/active/canon-033.md の作成（canon-proposalの内容から）
7. canon/quick_ref.md の直近の重要イベントに EP-033 を追加（EP-030を archive に移動）
8. active ウィンドウのエントリ数確認（6件以上なら最古をarchiveへ移動）
