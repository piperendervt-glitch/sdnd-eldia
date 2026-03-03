# CANON-032: EP-032「パッチノート」正史記録

<!-- 確定日: 2026-03-03 -->
<!-- Status: confirmed -->
<!-- QA判定: PASS（Minor 2件・Warn 3件。Blocker/Major 0件） -->
<!-- QAレポート: qa/reports/ep-032-qa.md -->

## サマリー

EP-031から3日後、フィン帰還後の三人で大聖堂前に向かい、supervisor_channel経由でルクスとの3回目のテキスト対話が成立。「パッチノート」形式の世界現状レポート（CURRENT STATE / KNOWN ISSUES / RECOMMENDED ACTIONS / WARNINGS）を受信し、integrity残り時間推算（8〜14年）・foundation_layer断裂が全バグの根本原因という最終確認・修正選択肢A/B/C・root_access取得条件が開示された。アルはoption B（安定化パッチ）への傾きを示したが最終確定はEP-033に保留。25MP消費（53/120→28/120）。integrity 26%（変化なし）。

---

## 確定事実

### イベント

| ID | 内容 |
|----|------|
| EVT-032-01 | EP-031から3日後、フィンが宿に帰還した。「整理が終わった。だから戻ってきた」という外面描写のみで帰還を確認した（INV-B03準拠・内面描写なし） |
| EVT-032-02 | アルはフィンの帰還後に「三人で話したいことがある」と伝え、その前にsupervisor_channelへの接続を行うことを提案。三人で大聖堂前に向かった |
| EVT-032-03 | 大聖堂前石畳のsurface_bleed露出点に3回目の直接接触を行い、supervisor_channel経由でルクスとの3回目のテキスト対話が成立した（RULE-M08準拠・prior_registered確認済み・接続高速化） |
| EVT-032-04 | ルクスが「パッチノート」形式の世界現状レポートを出力した。形式: CURRENT STATE / KNOWN ISSUES / RECOMMENDED ACTIONS / WARNINGS |
| EVT-032-05 | CURRENT STATE出力。integrity 26%・degradation rate加速（0.3%/年→0.9%/年）・システム停止までの推算8〜14年（不確実性高）・BOUNDARY_LEAK露出ノード19か所（継続拡大）・自己修復機能OFFLINE・mana_routing容量は崩壊前仕様の41% |
| EVT-032-06 | KNOWN ISSUESの最上位項目として「foundation_layer fracture: unrepaired / root cause of all derivative errors」が確認された。cascade_resonance・boundary_leak・routing_driftがすべてこの単一の構造的失敗から派生するという因果チェーンが最終確認された（LOOP-003最終進展） |
| EVT-032-07 | RECOMMENDED ACTIONSとしてoption A（完全修復・前崩壊仕様への復元・住民の魔法使用への影響あり・root_access必要・不可逆）/ option B（安定化パッチ・断裂を恒久的構造条件として受け入れ・継続動作・root_access必要・不可逆）/ option C（システム停止・不推奨・root_access不要）の三選択肢が明示された |
| EVT-032-08 | WARNINGSとしてW-01（A・Bは不可逆）/ W-02（root_access付与後はfoundation_layerへの書き込み権限発生・操作不可逆）/ W-03（デバッガー3がroot_access操作試行後に意識識別子消失・原因不明・リスク未定量化）が明示された |
| EVT-032-09 | アルがroot_access取得条件をクエリ送信。ルクスから「デバッガーが意図を表明すること」（intent confirmation）が唯一の条件であることが開示された。能力テストではなく覚悟の確認ゲートとして設計されている |
| EVT-032-10 | アルはoption B（安定化パッチ）への傾きを示した（「Bだ」という内心。「読み終わる前に答えが出ていた」）。ただし最終的な意図の表明（root_access取得）はEP-033に保留した |
| EVT-032-11 | 25MP消費（53/120→28/120）。体温上昇・喉の渇き・足の裏の重さ・額の後ろの圧迫感の疲労描写あり（INV-A01準拠） |
| EVT-032-12 | 宿に戻り三人でパッチノート内容を共有。アルがoption B選択の方針を説明した。リーラは「お前が決めることだ」と言い、フィンは「危険は」とroot_accessリスクを確認した（INV-B03準拠・外面描写のみ） |
| EVT-032-13 | リーラが「一晩置け」と言い、アルが同意した。最終選択はEP-033に委ねられた |

---

### キャラクター変化

| ID | 変化内容 |
|----|---------|
| PC-001 アル | HP: 80/80（変化なし）。MP: 32/120（EP-031終了時）→ 53/120（+21・3日間自然回復 7MP/日×3日）→ 28/120（-25・supervisor_channel3回目接続・パッチノート出力受信+root_access条件クエリ）。Location: カエルム（翡翠の水差し亭）変化なし。integrity 26%（変化なし・本話では接続時間短縮のため追加低下なし）。BOUNDARY_LEAK露出ノード: 19か所（変化なし）。修正選択肢A/B/C取得済み・root_access取得条件確認済み・option B（安定化パッチ）への傾き確立。次の課題: 意図の表明（EP-033で実施予定）。LOOP-003最終進展済み（resolvedはEP-033） |
| NPC-005 リーラ | Location: カエルム（翡翠の水差し亭）。3回目のsupervisor_channel接続に同行。方針共有済み（「お前が決めることだ」・「一晩置け」）。内面描写なし（INV-B03準拠） |
| NPC-006 フィン | Location: カエルム（翡翠の水差し亭・帰還）。EP-031告知後3日間の外出を経て帰還。「整理が終わった。だから戻ってきた」という発言で帰還確認。3回目接続に同行。「危険は」という問いを発した（外面描写のみ・INV-B03準拠） |

---

### 世界状態の変化

- **integrity残り時間推算（EP-032確定）**: foundation_layer integrity 26%・degradation rate加速（collapse_epoch+490年時点0.3%/年→collapse_epoch+503年時点0.9%/年）でのシステム停止（integrity 0%）までの推算8〜14年（不確実性高）
- **修正選択肢の確定（EP-032確定）**:
  - option A（完全修復）: foundation_layer断裂を完全修復・前崩壊仕様への復元。全エラー消滅。ただし住民が適応した崩壊後mana分布が変化し魔法使用に影響。root_access必要・不可逆。（詳細な副作用はルクスにも不明・「魔法の仕組みが変わる」と描写）
  - option B（安定化パッチ）: 断裂を恒久的構造条件として受け入れ、信号ドメイン補正でカスケード障害を防止。システム継続動作。エラーは消滅せず制御可能範囲に収める。継続的なメンテナンス設計が必要。root_access必要・不可逆
  - option C（システム停止）: 全プロセス停止。root_access不要。不推奨（アルは選択しない）
- **root_access付与の条件（EP-032確定）**: デバッガーによる「意図の表明」（intent confirmation）のみが条件。能力テストではなく覚悟の確認ゲートとして設計されている。root_access付与後はfoundation_layerへの書き込み権限が発生し、操作は不可逆（INV-D02相当）
- **LOOP-003最終進展（EP-032確定）**: ルクスのパッチノート出力にて「foundation_layer fracture: unrepaired / root cause of all derivative errors」が明示。cascade_resonance・boundary_leak・routing_driftはすべてこの単一の構造的失敗から派生する。断裂を修復しない限りバグは再発するという因果チェーンが完全確認された。resolvedはEP-033で行う（最終選択と同時）

---

## ループ影響

| Loop ID | 変化 | 詳細 |
|---------|------|------|
| LOOP-003 | 最終進展（EP-032確定） | 「foundation_layer fracture: unrepaired. root cause of all derivative errors」という形でルクスから直接確認。断裂を修復しない限りバグが再発するという因果チェーンの最終確認。resolvedはEP-033（最終選択と同時）。Last Touched: EP-030 → EP-032 |

---

## 不変ルール確認テーブル

| ルール | 判定 | 確認内容 |
|--------|------|---------|
| INV-A01（魔法にはコストがある） | OK | 25MP消費明示（基礎15MP + パッチノート大量出力受信+root_access条件クエリ10MP）。体温上昇・喉の渇き・足の裏の重さ・額後ろの圧迫感の疲労描写あり |
| INV-A02（魔法は物理法則の拡張） | OK | 石畳への直接接触という物理的操作を通じた魔法発動。物理法則の上書き描写なし |
| INV-A03（属性間の相互作用は固定法則） | OK | 属性間相互作用の新規描写なし |
| INV-A04（魔法の効果は術者の理解度に依存） | OK | パッチノート出力（フォールトトレラント設計・ノイズフロア・信号ドメイン補正）の解読はアルの前世知識（組み込みシステム工学・信号処理）による理解が機能 |
| INV-B01（死者は蘇らない） | OK | 死者の復活描写なし |
| INV-B02（因果の一貫性） | OK | EP-030・031確定のsupervisor_channel・surface_bleed接触アクセスを3回目として継続。「prior sessions: recognized」の記述がEP-030/031の確定事実と整合 |
| INV-B03（情報の非対称性） | OK | フィン・リーラの内面描写なし。フィンは行動・発言・外面描写のみ（「整理が終わった」「危険は」「少し黙った」「声が普通だった」）。ルクスの「人格的内面」の描写なし（機能的なテキスト応答のみ） |
| INV-B04（技術水準の制約） | OK | 石畳・宿・食堂・テーブル・記録帳など中世ファンタジー技術水準維持 |
| INV-C01（成長の段階性） | OK | 能力的成長なし。EP-030で確立したsupervisor_channelの3回目使用 |
| INV-C02（前世知識の制約） | OK | フォールトトレラント設計・ノイズフロア・フィルタ設計・信号ドメイン補正は組み込みシステム工学・信号処理の範囲内 |
| INV-C03（動機と行動の一貫性） | OK | option Bの選択が「バグを制御範囲に収めて世界を動かし続ける」という「直したい」動機の延長線上にある。前世の組み込みエンジニアとしての矜持（完璧でなくても動き続けることを選ぶ）として自然 |
| INV-C04（NPCの自律性） | OK | フィンは自分の意思で3日間外出し、自分の判断で帰還した（「整理が終わった。だから戻ってきた」）。リーラは「一晩置け」という独自の判断を示した |
| INV-D01（デバッグスキルの基本制約） | OK | surface_bleed露出点への直接接触での発動。一対象制約維持。25MP消費 |
| INV-D02（バグ修正の影響範囲） | OK | 修正操作なし・root_access付与もなし（読み取り・対話のみ）。W-02でroot_access後の不可逆性（once granted, write operations cannot be undone）が明示されINV-D02（一度修正したバグは元に戻せない）と整合 |

---

## 備考

### MP計算の詳細

| 状態 | 値 | 根拠 |
|------|----|----|
| EP-031 終了時 | 32/120 | canon-031.md 確定値 |
| 自然回復（3日間） | +21MP → 53/120 | 7MP/日×3日 |
| EP-032 開始時 | 53/120 | — |
| 発動消費 | -25MP（基礎15MP + 追加10MP） | supervisor_channel3回目接続・パッチノート大量出力受信+root_access条件クエリ |
| EP-032 終了時 | 28/120 | 53 - 25 = 28/120 |

### integrity値の変化なし

本話でのsurface_bleed接触はEP-031と同等規模（出力受信が多いが接触時間は前回と同程度）のため、integrity低下を0ptとした（26%維持）。EP-033以降でintegrity値の推移を確認する際は本話での変化なし（26%）を前提とすること。

### 「パッチノート」形式のルクス出力について

本話でルクスが出力した「CURRENT STATE / KNOWN ISSUES / RECOMMENDED ACTIONS / WARNINGS」という形式は、EPタイトル「パッチノート」と対応している。ルクス（world_management_systemの管理コア）がソフトウェアのリリースノート形式で世界の現状を整理して提供したという設定。

### option Bとアルの前世知識の接続

アルがoption Bを選ぶ論理: 「完璧な修正は、この場合は適切ではない（住民が適応してしまっているため）。しかし動き続けるシステムにすることはできる」——これは前世の組み込みエンジニアとしての「フォールトトレラント設計」の知識（INV-C02準拠）から導かれる判断。

### option A 副作用表現について（QA M-02対応記録）

plot_outline.mdではoption Aの副作用を「魔法が消える（住民は魔法なしの世界）」と明示しているが、EP-032本文では「今の住民が使っている魔法の仕組みが変わる」という表現に留まり、「魔法が完全に消える」という記述はない。アルが「詳細はルクスにも分からない」と述べているため情報不足として処理。EP-033以降でoption Aの副作用を描写する際はplot_outline設計（魔法の消滅）を参照すること。

### アクティブループ数の変化

- EP-032前: 1本（LOOP-003のみ）
- EP-032後: 1本（LOOP-003のみ・最終進展済み）
- LOOP-003 resolvedはEP-033で行う

### QA指摘への対応記録

| 指摘ID | 重要度 | 対応内容 |
|--------|--------|---------|
| M-01 | Minor | open_loops.md の LOOP-003「Last Touched」更新をCanon登録時に実施済み（EP-030 → EP-032・Progress Log追記済み） |
| M-02 | Minor | option A副作用の表現差異を本備考欄に記録済み。EP-033以降での整合確認事項として引き継ぎ |
| W-01 | Warn | パッチノート内「INV-D02 equivalent confirmed」の表現は次話（EP-033）執筆前に判断。EP-033執筆時にwriter/editorに引き継ぎ |
| W-02 | Warn | BOUNDARY_LEAK露出ノード数変化なし（19か所）の処理は許容範囲。EP-033以降で「EP-032時点で19か所・拡大継続中」を引き継ぐ |
| W-03 | Warn | integrity変化条件の仕様未定義。EP-033以降でroot_access操作等の描写が生じる際に整合した説明が必要。magic_physics.mdまたはinvariants.mdへの明文化を推奨 |

### 仕様修正記録（REV ログ）

- REV-032-01: specs/core/characters_current.md PC-001 MP 32/120 → 28/120 に更新。Status にLOOP-003最終進展済み・修正選択肢A/B/C取得済み・root_access条件確認済み・option B傾き確立を追記
- REV-032-02: specs/core/characters_current.md NPC-006 フィン Status を EP-031外出から帰還済みに更新
- REV-032-03: meta/open_loops.md の LOOP-003 Last Touched EP-030 → EP-032 に更新。Progress Log に EP-032 最終進展内容を追記
- REV-032-04: canon/quick_ref.md の PC-001 MP を 32/120 → 28/120 に更新。LOOP-003 Last Touched を EP-032 に更新。直近イベントに EP-032 を追加
- REV-032-05: canon/active/canon-027.md を canon/archive/canon-027.md に移動（スタブなし・完全移動）。activeウィンドウを canon-028〜032 の5件に整理

---

## 次回EP-033への引き継ぎ

| 引き継ぎ事項 | 内容 |
|------------|------|
| MP状態 | 28/120（EP-032終了時）。EP-033開始時は自然回復あり（7MP/日×経過日数） |
| アクティブループ | LOOP-003のみ（1本）。最終進展済み。resolvedはEP-033 |
| 選択肢確認済み | option A / B / C の詳細・条件・副作用をアルが把握 |
| option B傾き | アルがoption B選択の傾きを示している。最終確定（意図の表明）はEP-033で実施 |
| root_access条件 | 「意図の表明」のみが条件。実際の表明はEP-033で行う |
| フィン帰還済み | 三人での方針確認完了。フィンはリスクを承知した上での同行継続 |
| W-03リスク | 三人目のデバッガーの意識識別子消失リスクが未解明のまま残っている |
| integrity | 26%（変化なし）。BOUNDARY_LEAK露出ノード19か所（継続拡大中） |
| option A副作用 | plot_outline設計（魔法の消滅）を参照すること（QA M-02引き継ぎ） |
| W-01表現 | パッチノート内「INV-D02 equivalent confirmed」の表現の是非を執筆前に判断すること |
