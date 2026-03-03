# EP-029 QA Report

<!-- 作成日: 2026-03-03 -->
<!-- 対象エピソード: story/arc3/ep-029.md -->
<!-- 対象canon-proposal: story/arc3/ep-029.canon-proposal.md -->

## 判定: PASS

## サマリ

- Blocker: 0件
- Major: 0件
- Minor: 2件
- Warn: 3件

---

## 検査手順ログ

### TIER 1 照合

| 対象ファイル | 確認内容 | 判定 |
|------------|---------|------|
| specs/core/invariants.md | 全INV照合 | OK |
| specs/core/characters_current.md | キャラ不変項目との整合 | OK（Minor 1件） |
| canon/quick_ref.md | 確定事実との矛盾 | OK |

### TIER 2 照合

| 対象ファイル | 確認内容 | 判定 |
|------------|---------|------|
| canon/active/canon-028.md | 直前話との連続性 | OK |
| canon/active/canon-027.md | 同アーク内連続性 | OK |
| canon/active/canon-026.md | 同アーク内連続性 | OK |
| canon/active/canon-025.md | 同アーク内連続性 | OK |
| canon/active/canon-024.md | 同アーク内連続性 | OK（Minor 1件） |
| meta/open_loops.md | 伏線進捗との整合 | OK |

### TIER 3 照合

| 対象ファイル | 確認内容 | 判定 |
|------------|---------|------|
| specs/reference/magic_physics.md | RULE-M08（デバッグスキルMP消費）との整合 | OK（Warn 1件） |

### 追加チェック

| 項目 | 判定 |
|------|------|
| 同アーク内直近3話（EP-026〜028）との連続性 | OK |
| canon-proposalとエピソード本文の整合 | OK |
| 文字数（4,000〜6,000字） | Warn 1件（要確認） |

---

## 指摘一覧

### [Minor] M-001: 発動前の「接続が来た」という描写とINV-D01発動条件

- **該当箇所**: L61「部屋に入った瞬間——接続が来た」、L67「発動する前から、何かが向こうから来るような——引き寄せられるような感触があった」
- **参照仕様**: INV-D01（「発動条件: 対象の魔法現象を視認している状態であること」）、RULE-M08補記（「大規模魔法異常における受動的感知漏れ」）
- **内容**: INV-D01は発動条件として「対象の魔法現象を視認している状態」を要求する。本話では「発動する前から」感触が来ているという描写があり、これは前回入室時と同様の受動的感知漏れとして解釈できる。ただし「接続が来た」という表現が能動的なスキル発動を連想させるため、受動的感知漏れと能動的発動の区別が曖昧に読める箇所がある。
- **評価**: canon-024（「接続が速かった」は場所への慣れとして描写）との連続性があり、本話でも同様の解釈が成立する。RULE-M08補記の「受動的感知漏れ」が封印区画という大規模異常に対して適用される形として処理可能。canon登録時に「発動前の感触は受動的感知漏れとして処理」という記述を追加することを推奨。
- **修正提案**: canon-proposalの備考欄に「発動前の接続感触はRULE-M08補記の受動的感知漏れ（MP消費は能動的発動コストとは別計算で、発動後の40MP消費に統合して扱う）として解釈」という記述を追加することを推奨。本文変更は不要。

---

### [Minor] M-002: integrity値の未確定（canon-proposalでの留保）

- **該当箇所**: story/arc3/ep-029.canon-proposal.md（キャラクター状態変化欄）「integrity値: EP-029入室後さらに低下（exact値は次話でcanon確定）」
- **参照仕様**: specs/core/characters_current.md（PC-001 Status欄「integrity 31%確認（低下加速・入室頻度制限）」）、policies/canon_policy.md（Canon承認ゲートルール）
- **内容**: EP-026でintegrity 31%（前回34%から3ポイント低下）が確定している。EP-029では4回目の入室が行われており、integrity値がさらに低下することは本文でも示唆されているが（L43「次はもっと下がる」）、exact値がcanon-proposal段階で確定されていない。canon登録時に具体的な値（例: 31%からの低下幅）を確定させる必要がある。
- **評価**: canon-proposal自体が「次話でcanon確定」と明記しており、意図的な留保である。ただしcharacters_current.mdとquick_ref.mdの更新において、EP-029入室後の正確なintegrity値が必要となる。
- **修正提案**: canon登録時（editor作業時）にintegrity値の具体的な低下幅を確定し、characters_current.mdおよびquick_ref.mdに反映させること。目安として、EP-024（40%→34%: 6ポイント低下）、EP-026（34%→31%: 3ポイント低下・加速）のパターンから、EP-029では28%〜25%程度への低下が自然だが、正確な値はwriterまたはPMが決定すること。

---

### [Warn] W-001: LOOP-003 Last Touched の記録差異

- **該当箇所**: meta/open_loops.md（LOOP-003）「Last Touched: EP-027」、story/arc3/ep-029.canon-proposal.md（ループ進展欄）「Last Touched: EP-027 → EP-029」
- **参照仕様**: meta/open_loops.md（運用ルール「新エピソードで進展がある場合は更新」）
- **内容**: open_loops.mdのLOOP-003のLast Touchedは現時点で「EP-027」となっているが、EP-029では`routing_table`破損の因果チェーン確認・修正二択の明示・`root_access`要件の判明という実質的な進展があり、canon-proposalはEP-029への更新を提案している。これは現状のopen_loops.mdとcanon-proposalの間の差異であり、canon登録時に更新が必要。
- **評価**: canon登録前の状態では正常な差異であり、本話の内容自体に問題はない。canon登録（editor作業）時にopen_loops.md・characters_current.md・quick_ref.mdの更新が必要であることを申し送りする。
- **修正提案**: canon登録時に、meta/open_loops.mdのLOOP-003 Last Touchedを「EP-027 → EP-029」に更新し、Progress Logに本話の進展を追記すること。LOOP-005も同様（Last Touched: EP-028 → EP-029）。

---

### [Warn] W-002: 文字数の確認（本文部分）

- **該当箇所**: story/arc3/ep-029.md 本文部分（L17〜L315）
- **参照仕様**: エピソード基準（4,000〜6,000字）
- **内容**: エピソードメモの達成チェックリストに「文字数: 4,000〜6,000字の範囲内」のチェックが入っているが、本文部分（L17〜「---」終了まで）の正確な文字数を自動計算する手段がない。デバッグ出力ブロック（コード形式）を含む本文は、視覚的には適切なボリュームに見えるが、コードブロック部分の文字数カウント方式によって実際の「物語的文字数」と差が生じる可能性がある。目視での概算では3,800〜4,500字程度と推定される。
- **評価**: エピソードメモでのチェックがあり、writerが範囲内として確認している。Warn扱いとする。コードブロック部分を除いた純粋な地の文・会話文のみに絞ると4,000字を下回る可能性が残る。
- **修正提案**: PMが文字数を直接確認することを推奨。コードブロックを文字数に含める場合は4,000字以上が確実に満たされていると推定される。

---

### [Warn] W-003: LOOP-007 resolved後のアクティブループ数のquick_ref.md反映

- **該当箇所**: canon/quick_ref.md（アクティブループ欄）、meta/open_loops.md（LOOP-007「Status: open」）
- **参照仕様**: meta/open_loops.md（「canon確定前に必ず open_loops_sync_check.md のチェックを完了すること」）、policies/canon_policy.md
- **内容**: EP-029でLOOP-007が resolved となる予定だが、現時点のquick_ref.mdにはLOOP-007が「open」のまま残っている（アクティブループ4本: LOOP-001/003/005/007）。また、open_loops.mdのLOOP-007のStatusも「open」のまま。これらはcanon登録時に更新が必要であるため、editor作業への申し送りとして記録する。
- **評価**: canon登録前の正常な状態。canon-proposalに「resolved（EP-029）・アクティブループ4→3本」と明記されており、意図は明確。editor作業時の更新漏れリスクが高いため申し送りする。
- **修正提案**: canon登録時に以下を確実に実施すること:
  1. meta/open_loops.md: LOOP-007 Status: open → resolved、Resolved EP: EP-029、Last Touched更新、Progress Log追記
  2. canon/quick_ref.md: アクティブループからLOOP-007を削除（3本: LOOP-001/003/005）
  3. specs/core/characters_current.md: PC-001 Status欄にLOOP-007 resolved追記、MP更新（64/120 → 52/120）
  4. meta/open_loops_sync_check.md のチェックを実施すること

---

## INV 準拠確認テーブル

| INV | 内容 | 判定 | 確認内容 |
|-----|------|------|---------|
| INV-A01 | 魔法にはコストがある | OK | 40MP消費（基礎15MP + 追加25MP）・体温上昇・喉の乾き・足裏の重さ・額の後ろの鈍さ・声のかすれを明示。膝は折れず（L169）。RULE-M08範囲内（追加コスト5〜50MP内の25MP） |
| INV-A02 | 魔法は物理法則の拡張 | OK | 物理法則との矛盾なし。「プログラムだ」という確信はSF的真相の認識であり物理法則の否定ではない |
| INV-A03 | 属性間の相互作用は固定法則 | OK | 属性間相互作用の新規描写なし |
| INV-A04 | 魔法の効果は術者の理解度に依存 | OK | expanded read windowの受け取りと解釈はアルの前世知識（組み込みシステム工学）による理解が機能している |
| INV-B01 | 死者は蘇らない | OK | 関連描写なし |
| INV-B02 | 因果の一貫性 | OK | EP-026で確認したBOUNDARY_LEAKの地上12地点への影響 → EP-029での地上表面化という自然な因果。申請→許可→入室の手続きも一貫 |
| INV-B03 | 情報の非対称性 | OK | 「なぜプログラムなのか」「誰が書いたのか」は不明のまま（L311）。クラウス・聖職者の内面描写なし。`[REDACTED]`で作者名を伏せる。フィン・リーラの内面描写なし。「そう、読めた」という留保付き発言で外部への断言を回避（L279） |
| INV-B04 | 技術水準の制約 | OK | 石畳・石段・燭台・革袋・宿・看板など中世ファンタジー技術水準維持 |
| INV-C01 | 成長の段階性 | OK | 「expanded read window」はスキル成長ではなくintegrity低下による構造変化として明示（L88-92）。スキルレベルの飛躍なし |
| INV-C02 | 前世知識の制約 | OK | 「Cコードの関数定義・コメント行・バージョン管理・条件分岐」（L145）という組み込みシステム工学・信号処理の範囲内。「組み込みシステムのCコードだった」（L145）という明示あり |
| INV-C03 | 動機と行動の一貫性 | OK | 「直したい」動機一貫（L45「ベルントもクラウスも対応が判断できない。アルのデバッグスキルだけが、その構造を読める」）。修正禁止条件付き承認の範囲での行動（L37「修正操作は禁止」を守る） |
| INV-C04 | NPCの自律性 | OK | ベルントは「緊急対応として処理」という自律的判断（内面描写なし）。クラウスが「状態を確認する」「大丈夫か」と自律的に対応。フィンは「何が見えたんですか」という独自の問い。リーラは「顔色が悪い」「根っこだったんだな」という独自の整理 |
| INV-D01 | デバッグスキルの基本制約 | OK（Minor M-001参照） | 壁面魔法陣を視認した状態での発動（L61以降）。申請済み緊急枠内の発動。一対象制約維持（封印区画の構造を一体として解析）。発動前の「接続感触」はMinor M-001参照 |
| INV-D02 | バグ修正の影響範囲 | OK | 修正操作なし（L37条件・L202「access_required: root_access (current: read_only)」）。副作用発生なし |

---

## Canon整合性確認

| 確認項目 | 結果 | 備考 |
|---------|------|------|
| EP-028終了時MP（64/120）との連続性 | OK | 4日間自然回復: 64 + (7×4) = 92/120開始（canon-028確定値64/120と整合） |
| EP-029 MP計算 | OK | 92 - 40 = 52/120（RULE-M08: 基礎15MP + 追加25MP = 40MP） |
| integrity 31%からの入室 | OK | canon-026で31%確認済み。EP-029でも「三十一パーセント」と本文に明示（L43） |
| BOUNDARY_LEAK地上12地点の地上表面化 | OK | canon-024で「city_grid内12地点で低レベルの影響」確認済み。本話での表面化は自然な因果進展 |
| ベルントの条件付き承認形式 | OK | 緊急対応としての新条件付与であり、EP-024（30分制限）の枠組みとも整合する |
| フィン・リーラが地上待機 | OK | 本話に参加はするが地上待機（緊急対応の性質上、前回EP-024との同行体制からの変更）——EP-024ではフィン・リーラが同行していたが本話では地上待機。制度的に変更された可能性として記録（Warn扱いとせず。緊急対応という文脈で自然） |
| 「prior access pattern」による接続速度上昇 | OK | canon-024「接続が速かった」（場所への慣れ）の延長として整合 |
| LOOP-007 Target Resolve: EP-029 | OK | open_loops.mdで「Target Resolve: EP-029」と明記されており、本話での解決は仕様通り |
| EP-024「根っこ」のリーラ発言の回収 | OK | canon-024「帰路でリーラが『根っこ』という言葉でアルの説明を整理した」（EVT-024-07）を本話L293「それが、根っこだったんだな」で回収（EP-024から5話後の適切な回収） |
| `// version: post_collapse_patch_v2.1`とcanon-023確定の「mana_routing: post_collapse_rebuild」との整合 | OK | mana_routingがpost_collapse_rebuildバージョンであるというcanon-023の確定事実と、world_management_system全体が大崩壊後にパッチを当てられているという本話の発見が矛盾なく整合する |

---

## ループ管理確認

| Loop ID | 本話の処理 | 整合性 |
|---------|----------|--------|
| LOOP-007 | resolved（EP-029）。「デバッグ出力がコードに見えるのは文字通りコードだから」という確信に到達 | OK。Target Resolve: EP-029と一致 |
| LOOP-003 | 進展。routing_table破損→foundation_layer断裂→BOUNDARY_LEAK因果チェーン確認・修正二択・root_access要件判明 | OK。Last Touched EP-027→EP-029への更新がcanon登録時に必要（W-001参照） |
| LOOP-005 | 進展。`// last modified: collapse_epoch + 247`から大崩壊後247年に誰かがパッチを当てた事実が判明 | OK。Last Touched EP-028→EP-029への更新がcanon登録時に必要（W-001参照） |
| LOOP-001 | 直接的進展なし。`// maintained by: [REDACTED]`が将来への布石として機能 | OK。Last Touched EP-023のまま維持（canon-proposalと一致） |
| 新規ループ | なし | OK |

---

## 備考

### PASS判定根拠

Blocker・Majorの指摘が0件のため、判定はPASS。

Minor 2件（M-001: 発動前の接続感触とINV-D01の関係・M-002: integrity値の未確定）は物語の整合性に直接の支障がなく、canon登録時の記述補完で対応可能な範囲。

Warn 3件（W-001: open_loops.md更新差異・W-002: 文字数確認・W-003: LOOP-007 resolved後の各ファイル更新申し送り）はいずれもcanon登録（editor作業）時に解消される運用上の事項。

### 本話の重要設計評価

LOOP-007の回収（EP-004から起算して25話分の積み重ね）が物語的に適切な段階で行われている。「変数名の断片→命名規則の整合→設計されたアーキテクチャ→祈りが呼び出し手順だった→ソースコードが現れた」という認識の段階的積み上げが、INV-B03（情報の非対称性）・INV-C01（成長の段階性）・INV-C02（前世知識の制約）を適切に遵守しながら回収されている。

「expanded read windowがintegrity低下によって生まれた」というロジックは、スキルの飛躍的成長ではなく状況変化として処理されており、INV-C01に準拠した適切な設計。

「そう、読めた」という外部への発言の留保と、内心での確信（「解釈の問題ではなかった」）の使い分けがINV-B03の意図（他者への情報開示の制御）と整合している。

### editor作業時の必須確認事項（申し送り）

1. meta/open_loops.md: LOOP-007 resolved（EP-029）・LOOP-003/005 Last Touched更新・各Progress Log追記
2. specs/core/characters_current.md: PC-001 MP 64/120 → 52/120、LOOP-007 resolved記録、integrity値更新（exact値をPMが決定してから）
3. canon/quick_ref.md: PC-001 MP更新、アクティブループLOOP-007削除（3本へ）、直近イベント更新
4. meta/open_loops_sync_check.md のチェックを完了すること
5. integrity exact値（EP-029入室後）の確定: PMが値を決定してからcanon登録を実施すること
