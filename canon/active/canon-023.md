# CANON-023: EP-023「禁域の入口」正史記録

<!-- 確定日: 2026-03-03 -->
<!-- Status: confirmed -->
<!-- QA判定: PASS（Minor 1件対応済み・Warn 3件記録済み） -->
<!-- QAレポート: qa/reports/ep-023-qa.md -->
<!-- Arc 2 最終話（Arc 2 完結） -->

## サマリー

EP-022から数日後（春〜初夏）、フィンがベルント司教に「もう報告しない」と告げた（三日後に判明）。クラウスの正式申請を経てベルントが条件付きで大聖堂地下の封印区画への入室を許可した。アル・クラウス・フィン・リーラの四人でベルントに案内されて地下三階の封印区画に到達し、アルがデバッグスキル（deep_scan — foundation_layer）を発動した。出力にはrouting_tableより深い「foundation_layer」のスキーマ断片が現れ、world_management_system・entity_registry等のモジュール名とEP-021で取得した変数名群の位置付けが確認された。40MP消費（終了時80/120）。アルは「入口に立った」という認識を持ち、フィン・リーラがArc 3への同行を宣言した。

---

## 確定事実

### イベント

| ID | 内容 |
|----|------|
| EVT-023-01 | EP-022から三日後の朝。フィンが「昨日、叔父のところへ行ってきた」と報告した。ベルントの反応は「穏やかで、怒らなかった。『それがお前の選んだことなら』と言われたのみ」だったとフィンが述べた。ベルントの真意はアルに不明（INV-B03準拠） |
| EVT-023-02 | 同日、フィンがリーラに事情を説明した（叔父の指示によるリンデン派遣・定期報告・「異端」認定との因果チェーン・アルへの告白・「もうしない」と決めたこと）。リーラは「叔父に言いに行ったのか」「それならいい」と応じた |
| EVT-023-03 | 同日午後、クラウスから「大聖堂地下の建築魔法学的調査の件」の文書が届いた。ベルント司教名で「条件付き許可」が出ていた。許可条件: (1)クラウス同行、(2)時間制限（昼から日没まで）、(3)破壊行為の厳禁 |
| EVT-023-04 | 翌日、アル・クラウス・フィン・リーラの四人で大聖堂北翼聖具室へ向かった。ベルントが聖具室の前で待機しており、正式に案内を引き受けた |
| EVT-023-05 | ベルントがアルのデバッグスキル発動について「口頭で同意したと記録に残す」と述べた（届け出手続きの履行）。スキル発動の事前申請手続きは完了 |
| EVT-023-06 | ベルントが聖具室奥の石扉を開錠し、地下への石段を案内した。地下一階（通常の地下礼拝堂）を通過し、礼拝堂床の扉からさらに地下三階への石扉に到達した |
| EVT-023-07 | ベルントが封印を解除し、地下三階の石扉が開いた。内部は石室（大聖堂礼拝堂の約半分の広さ）。床は岩盤を削った粗い平面。壁・床・天井を覆う連続した細粒魔法陣が存在。通常区画より明らかに濃いマナ密度 |
| EVT-023-08 | アルが石室内の壁面魔法陣を視認した状態でデバッグスキルを能動的に発動した（クラウスの許可・ベルントの口頭同意の下）。発動は「速かった」——魔法陣が今もマナを流している「生きた回路の一部」として認識できたため |
| EVT-023-09 | デバッグ出力「deep_scan — foundation_layer」を得た。40MP消費（基礎15MP + deep_trace追加10MP + foundation_layer追加15MP）。出力内容は確定事実「世界状態の変化」セクションに記載 |
| EVT-023-10 | MP急速消耗により膝が折れ、床に片膝をついた。クラウスとベルントが側に来た。アルは「問題ない」と応じた |
| EVT-023-11 | アルがクラウスに「以前の調査で出た三つの名前がありましたが、あれが確認されました。もっと大きな構造の部品のひとつとして」と報告した。ベルントは石扉の封印を戻す作業に移った |
| EVT-023-12 | 地上に戻った後、廊下でアルが壁に背中をつけて休んだ。ベルントが「研修報告の中でクラウス院長を通じて提出しなさい」と手続きを指示し、去った |
| EVT-023-13 | クラウスがアルに「今日見たものを、急いで結論にしなくていい」と言った。アルは「バグの根本の輪郭が出た気がします。気がするだけかもしれませんが」と答えた。クラウスは「その『気がするだけかもしれない』を大切にしなさい」と応じた |
| EVT-023-14 | 宿への帰路、フィンが「次、またあそこへ行くことになったら、僕も一緒に行きます」と述べた。リーラが「あたしは護衛だ。行くに決まってる」と述べた |
| EVT-023-15 | アルの内省（帰路・宿に入る前）: 「あそこが入口だ。続きはこれからだ」——口に出さない。確信には至らない（foundation_layer integrity UNKNOWN、断片的アクセス）。INV-B03準拠 |

---

### キャラクター変化

| ID | 変化内容 |
|----|---------|
| PC-001 アル | MP: 120/120（EP-022終了時）→ 80/120（40MP消費）。HP変化なし。年齢12歳変化なし。Location: カエルム変化なし。Status追記: foundation_layerの構造断片を直接確認。LOOP-009大幅進展・LOOP-003/005/007進展・LOOP-001間接的進展。消耗描写あり（膝が折れる・壁に背中をつけて休む） |
| NPC-006 フィン | ベルントへの「もう報告しない」伝達を完了（三日後に判明）。リーラへの事情説明を完了（EP-022時点では未完了だったが本エピソードで実施・W-002対応）。「次は一緒に行きます」という意思表明あり。関係再構築の第一歩として記録 |
| NPC-005 リーラ | フィンからの事情説明を受けた。「叔父に言いに行ったのか」「それならいい」という反応——CANON確定。「あたしは護衛だ。行くに決まってる」という同行宣言あり |
| NPC-007 ベルント | 封印区画の案内役として直接登場。「条件付き許可」を付与。「穏やかだった」という外面描写（フィン経由・INV-B03準拠）。本エピソードでの内面描写なし。封印解除・封印戻しを実施した唯一の権限者として描写。「報告は院長を通じて提出しなさい」という制度的指示 |
| NPC-008 クラウス | 正式申請を行い許可を取り付けた。同行者として発動許可を付与。「急いで結論にしなくていい」「『気がするだけかもしれない』を大切にしなさい」という言葉を残した |

---

### 世界状態の変化

#### 封印区画内部の確定情報（EP-023新規確定）

- **場所**: 大聖堂地下三階石室（大聖堂礼拝堂の約半分の広さ）
- **構造**: 床は岩盤を削った粗い平面。壁・床・天井を覆う連続した細粒魔法陣（大崩壊以前の形式・今もマナが流れている生きた回路の一部）
- **マナ密度**: 通常区画より明らかに濃い——「空気そのものに何かが溶けている」感触
- **アクセス権限**: ベルント司教による封印解除が必要。READ_ONLY権限でのデバッグスキル発動は可能

#### デバッグ出力「deep_scan — foundation_layer」（初登場・EP-023確定）

```
[SCAN: deep_scan — foundation_layer]
  depth: below routing_table substrate
  access_level: READ_ONLY (elevated_trace)

  schema_fragment recovered:
    module: world_management_system (partial)
    sub_modules detected:
      - mana_routing (status: active, version: post_collapse_rebuild)
      - entity_registry (status: active, fragmented)
      - [REDACTED] (status: unknown)

    cross_reference:
      soul_transfer_protocol → sub_process of entity_registry
      outsider_registry → linked_table within entity_registry
      consciousness_bridge → interface_layer (access: DENIED)

  note: current routing_table operates as surface-level
        management layer over deeper foundation schema
        previously_detected variable names confirmed as
        sub-processes within entity_registry module

  flag: foundation_layer integrity UNKNOWN
        — insufficient access depth for full assessment
  warning: MP_drain accelerating — recommend disengage
```

| 比較軸 | deep_trace（EP-021） | deep_scan — foundation_layer（EP-023） |
|--------|---------------------|----------------------------------------|
| 発動場所 | 学院東棟・摩耗した実習室の残留魔法陣 | 封印区画地下三階・現役の残留魔法陣（今もマナが流れている） |
| 深度 | subsurface_layer（routing_tableの下） | foundation_layer（routing_table substrateの下） |
| データ精度 | integrity LOW（断片的） | schema_fragment（断片的だが構造として回収） |
| MP消費追加 | +7MP | +25MP（deep_trace追加10MP + foundation_layer追加15MP） |
| アクセス制約 | READ_ONLY | READ_ONLY（elevated_trace）・consciousness_bridge: access DENIED |

#### 新規モジュール名・構造の確定情報（EP-023初登場）

- **world_management_system**: foundation_layerに確認されたモジュール名（partial）。routing_tableはこのシステムの「surface-level management layer」として機能している
- **entity_registry**: world_management_systemのsub_module（status: active, fragmented）。soul_transfer_protocol・outsider_registryがこのモジュールに属することが確認された
- **mana_routing**: world_management_systemのsub_module（status: active, version: post_collapse_rebuild）——大崩壊後に再構築された版が現在も稼働中
- **[REDACTED]**: 第三のsub_module（status: unknown）——名称が取得できなかった
- **consciousness_bridge**: interface_layerに位置付けられ、アクセス拒否（access: DENIED）

---

## ループ影響

| Loop ID | 変化 | 詳細 |
|---------|------|------|
| LOOP-009 | **大幅進展（EP-023確定）** | 封印区画に実際に入室し、内部でデバッグスキルを発動した。foundation_layerの構造断片を確認し「入口に立った」という認識を持つに至った。Target Resolve EP-026に向けた大幅前進。Last Touched: EP-020 → EP-023 |
| LOOP-003 | **進展（EP-023確定）** | routing_tableの上位スキーマ（foundation_layer）の端を確認。world_management_systemというモジュール名が出た。「バグの根が深い層にある」という認識の輪郭が出た。Last Touched: EP-020 → EP-023 |
| LOOP-005 | **進展（EP-023確定）** | 封印区画内部が大崩壊以前の魔法陣（今もマナが流れている）で覆われていることを直接確認。mana_routingが「post_collapse_rebuild」バージョンであることが判明（大崩壊後に再構築されたことの示唆）。大崩壊の構造的痕跡に直接触れた最初のエピソード。Last Touched: EP-020 → EP-023 |
| LOOP-007 | **進展（EP-023確定）** | world_management_system・entity_registry等、EP-021より構造的なコード片が出力された。「ひとつのシステムの一部だった」という認識の強化（口に出さない・確信に至らない・断片的・INV-B03準拠）。Last Touched: EP-021 → EP-023 |
| LOOP-001 | **間接的進展（EP-023確定）** | foundation_layerのモジュールとしてEP-021の変数名群（soul_transfer_protocol・outsider_registry・consciousness_bridge）がentity_registryのサブプロセス・リンクテーブル・インターフェース層として位置付けられた。「転生の仕組みが大きなシステムの一部である」という示唆（断言せず・INV-B03準拠）。Last Touched: EP-021 → EP-023 |
| LOOP-010 | **resolved後の追記（EP-023）** | フィンのベルントへの決別報告が完了したことが確認された（EVT-023-01）。リーラへの事情説明も完了（EVT-023-02）。LOOP-010は既にresolved（EP-022）のため、Status変更なし |

---

## 不変ルール確認テーブル

| ルール | 判定 | 確認内容 |
|--------|------|---------|
| INV-A01（魔法にはコストがある） | OK | 40MP消費（基礎15MP + deep_trace追加10MP + foundation_layer追加15MP）を明示。疲労症状（膝が折れる・壁に背中をつける・足裏から腰の空洞感・頭後ろの引かれ感）も描写あり |
| INV-A02（魔法は物理法則の拡張） | OK | 魔法行使はアル自身のデバッグスキル発動のみ。ベルントの封印解除は描写（手をかざした・石扉がゆっくり開いた）にとどまる。物理法則との矛盾なし |
| INV-A03（属性間の相互作用は固定法則） | OK | 属性間の相互作用に関する新規描写なし |
| INV-A04（魔法の効果は術者の理解度に依存） | OK | 「接続させる」「fragment」「UNKNOWN」という制約が術者（アル）の現在の理解限界を反映 |
| INV-B01（死者は蘇らない） | OK | 関連描写なし |
| INV-B02（因果の一貫性） | OK | EP-020の「聖具室の木の扉を視認するまで」→EP-023の「聖具室奥の石段→地下礼拝堂→地下三階」という因果チェーンが自然。EP-021のdeep_trace変数名→EP-023での位置付け確認も一貫 |
| INV-B03（情報の非対称性） | OK | ベルントの内面（許可動機・「穏やかだった」の意味）はアルが断定しない。フィンのベルントへの告白内容はフィン経由の外面情報のみ。アルの「入口だ」という認識は口に出さない。「確信」には至っていない（「気がするだけかもしれない」を維持） |
| INV-B04（技術水準の制約） | OK | 蝋燭台・石段・石扉・鍵束・錠前・石畳・岩盤・燭台等の中世ファンタジー技術水準を維持 |
| INV-C01（成長の段階性） | OK | 能力的飛躍なし。deep_scanはdeep_traceの延長（より深い場所・より速い消耗）として描写。一度のエピソードで急激な成長なし |
| INV-C02（前世知識の制約） | OK | 使用した前世知識: 「モジュール・サブプロセス・インターフェース層という概念（組み込みシステム工学）」「コード片の構造的解釈」——いずれも組み込みシステム工学・信号処理の範囲内。「断片的」「UNKNOWN」という複数の留保を維持 |
| INV-C03（動機と行動の一貫性） | OK | 「直したい」動機→「バグの根を自分の目で確かめたい」という自然な拡張。封印区画探索の動機として一貫 |
| INV-C04（NPCの自律性） | OK | ベルントは「管理下で見せる方が安全」という実務的判断で許可（内面描写なし・推測のみ）。クラウスは学術的関心から申請。リーラは「護衛」という自身の役割意識から同行宣言。フィンは「告白後の再構築」という自身の動機から同行意思表明 |
| INV-D01（デバッグスキルの基本制約） | OK | 壁面の魔法陣（今もマナが流れている）を視認した状態での能動的発動。一対象制約維持（封印区画の残留魔法陣を一単位として解析）。MP消費を明確に描写 |
| INV-D02（バグ修正の影響範囲） | OK | バグ修正なし。解析（READ_ONLY・fragment回収）のみ。不可逆変化なし |

詳細は qa/reports/ep-023-qa.md を参照。

---

## MP消費の詳細

| 状態 | 値 | 根拠 |
|------|----|----|
| EP-022 終了時 | 120/120 | canon-022.md 確定値（使用なし・自然回復で完全回復） |
| deep_scan 基礎コスト | -15MP | RULE-M08「基礎コスト 15MP」 |
| deep_trace 追加コスト | -10MP | RULE-M08「追加コスト 5〜50MP の範囲内」——EP-021（+7MP）より深い層への追跡のため追加 |
| foundation_layer 追加コスト | -15MP | RULE-M08「追加コスト 5〜50MP の範囲内」——EP-023初出。routing_table下層（foundation_layer）への追跡で急速消耗 |
| EP-023 終了時 | 80/120 | 120 - 40 = 80 |

計算: 120/120 - 15（基礎）- 10（deep_trace）- 15（foundation_layer）= **80/120**

消耗描写: 膝が折れる（床に片膝をつく）・「MPが急速に引き出されていた」・「足の裏から腰にかけて、重いものが流れ去った後の空洞のような感触」（INV-A01準拠）

---

## 次回エピソードへの接続情報（Arc 3への引き）

- MP状態: EP-023終了時 80/120
- 「入口」として位置付け: foundation_layerへのより深いアクセス（elevated_trace以上の権限）の取得、[REDACTED]モジュールの解明、consciousness_bridge（access: DENIED）へのアクセス——これらがArc 3の課題として機能
- フィンの同行宣言: 「次は一緒に行きます」——告白後の関係再構築が進んだことの確認。Arc 3での三人行動の前提
- リーラの護衛宣言: 「あたしは護衛だ。行くに決まってる」——三人が同じ方向を向いたことの確認
- ベルントとの関係: 「穏やかな反応」と「条件付き許可」——Arc 3でのさらなる協力関係の可能性。制度的な枠組みの中での探索継続
- world_management_systemの「integrity UNKNOWN」: foundation_layerの完全な評価には「insufficient access depth」——より深いアクセスのための手段（elevated authority）の探索がArc 3の主軸となる

---

## 備考

### Arc 2 完結記録

EP-023は Arc 2（帝都カエルム編）の最終話として確定。Arc 2 は EP-015〜023 の9話で構成。

Arc 2 の主要達成事項:
- LOOP-009 大幅進展（封印区画地下三階への初入室・foundation_layer確認）
- LOOP-010 完全回収・resolved（EP-022: フィンの監視任務告白）
- LOOP-002 進展（EP-019: 「教義異端」認定）
- LOOP-001・003・005・007・008 各段階的進展
- 「三点制約（届け出義務・監視対象者登録・研修条件付き継続）」という制度的障壁の設定
- クラウス・ベルントという二人の制度側キャラクターとの関係構築
- フィン・リーラとのArc 3同行態勢確立

Arc 3 の出発点: 「foundation_layerの入口に立った」という認識、MP 80/120、三人での同行体制。

### QA指摘への対応記録

| 指摘ID | 重要度 | 対応内容 |
|--------|--------|---------|
| M-001 | Minor | MP消費テーブルのdeep_trace追加コスト変動について備考を追記: 「deep_trace追加コストは対象の深度・データ品質によって可変（EP-021実績: +7MP、EP-023実績: +10MP）。RULE-M08の5〜50MP範囲内での変動として記録」（下記「deep_trace追加コストの変動について」参照） |
| W-001 | Warn | open_loops.md LOOP-005 Progress Logの「EP-024: 進展予定」記述をEP-023実績に更新。EP-024以降の新たな進展予定として記述し直し（Canon登録作業内で対応済み） |
| W-002 | Warn | NPC-006 Status欄の「リーラへの開示は未完了」をEP-023確定に合わせて「完了（EP-023）」に更新（characters_current.md 反映済み） |
| W-003 | Warn | ベルント許可タイミングとフィン告白の時間的重なりの描写——Arc 3でのベルント描写時の参照事項として記録。修正不要 |

### deep_trace追加コストの変動について（M-001対応）

deep_trace追加コストは対象の深度・データ品質によって可変:
- EP-021実績: +7MP（学院東棟・摩耗した実習室の残留魔法陣・subsurface_layer・integrity LOW）
- EP-023実績: +10MP（封印区画地下三階・現役の残留魔法陣・foundation_layer・schema_fragment回収）

いずれもRULE-M08「追加コスト 5〜50MP の範囲内」に収まる。発動場所・対象魔法陣の活性度・到達深度によって変動することをEP-023で実証。foundation_layer追加コスト（+15MP）は初出・EP-023確定。

### 仕様修正記録（REV ログ）

- REV-023-01: PC-001 MP を 120/120 → 80/120 に更新。Status に foundation_layer確認を追記（specs/core/characters_current.md 反映済み）
- REV-023-02: NPC-006 フィン Status を更新——リーラへの事情説明完了（W-002対応）・Arc 3同行意思表明追記（specs/core/characters_current.md 反映済み）
- REV-023-03: NPC-005 リーラ・NPC-007 ベルント・NPC-008 クラウス の EP-023 変化を specs/core/characters_current.md に反映済み
- REV-023-04: canon/quick_ref.md の PC-001 MP・アクティブループ Last Touched・直近イベントを更新済み
- REV-023-05: meta/open_loops.md の LOOP-001・003・005・007・009 Last Touched・Progress Log を更新済み（W-001対応: LOOP-005のEP-024先読み記述をEP-023実績に更新）
- REV-023-06: canon/active/canon-018.md を canon/archive/canon-018.md に移動（スタブに置き換え）。activeウィンドウを canon-019〜023 の5件に整理
