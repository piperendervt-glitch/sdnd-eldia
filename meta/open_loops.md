# Open Loops

<!-- 最終更新: 2026-03-03 / EP-033 Canon確定: LOOP-003 完全回収（resolved）。アクティブループ 0本（全LOOP 10/10 回収完了）。 -->
<!-- canon/quick_ref.md のアクティブループ欄と常に同期すること -->
<!-- LOOP-008〜010: Arc 2 開始準備として追加済み (2026-03-02) -->

## ループ一覧

| Loop ID | Status | Type | Priority | Opened | Target Resolve | Summary |
|---------|--------|------|----------|--------|---------------|---------|
| LOOP-001 | resolved | mystery | HIGH | EP-001 | EP-031 | なぜ転生したか（EP-031: soul_transfer_protocol選定基準・タイミング・前世の体の状態への全回答取得。完全解決） |
| LOOP-002 | resolved | world | HIGH | EP-003 | EP-028 | ルクス教と魔法の真実（EP-028: 「祈りは`mana_routing`への呼び出し手順を言語で記述したもの」という認識が確立し resolved） |
| LOOP-003 | resolved | mystery | HIGH | EP-004 | EP-033 | なぜバグがあるのか（EP-033: root_access GRANTED後の最終クエリでルクスから「foundation_layer fracture: root cause confirmed. with option B: fracture remains. errors are not eliminated. they become managed conditions.」を受領。「断裂を修復しない。管理する設計をする」という形で完全回収。EP-004〜EP-033・29話分） |
| LOOP-004 | resolved | character | MEDIUM | EP-006 | EP-013 | マーラの回復魔法の素養 |
| LOOP-005 | resolved | world | HIGH | EP-007 | EP-030 | 大崩壊の真相（EP-030: ルクス直接対話でメモリ破壊→クラッシュ→強制リブートという真相確定。LOOP-005 resolved） |
| LOOP-006 | resolved | character | MEDIUM | EP-002 | EP-017 | ドルクの古傷/過去 |
| LOOP-007 | resolved | mystery | HIGH | EP-004 | EP-029 | デバッグ出力がコードに見える理由（EP-029: 「魔法体系は文字通りプログラム・デバッグスキルはfoundation_layerへの低レベルアクセス権限」という確信に到達。resolved） |
| LOOP-008 | resolved | mystery | MEDIUM | EP-009 | EP-027 | 魔法発動がブートシーケンスに似ている（EP-027: resolved。phase[0]-[3]構造とmana_routingの応答主体としての機能を複数術者・複数属性で確認） |
| LOOP-009 | resolved | world | MEDIUM | EP-015 | EP-026 | 帝都地下の封印区画（EP-026: resolved。foundation_layer exposure node・rupture point確認。封印区画の正体が確立） |
| LOOP-010 | resolved | character | MEDIUM | EP-010（確定） | EP-022 | フィンの監視任務（EP-022: フィンがアルに監視任務の全容を告白し叔父との決別を宣言。完全回収） |

---

## 詳細

### LOOP-001: なぜ転生したか
- **Status**: resolved
- **Type**: mystery
- **Priority**: HIGH
- **Opened**: EP-001
- **Target Resolve**: EP-031
- **Resolved EP**: EP-031
- **Last Touched**: EP-031
- **Description**: 主人公アル＝ラグナ（前世: 桐島晴人）はなぜこの世界に転生したのか。前世の最後の記憶は「残業中の意識喪失」——病気でも事故でもなく、痛みすらない。死因が存在しない。真相: システムが外部世界から信号処理の専門家の意識を引き抜いた例外処理。現実世界の肉体は昏睡状態（status: unknown）。EP-031でルクス（管理AI）が真相を完全開示し resolved。
- **Progress Log**:
  - EP-001: 初出。前世の「原因不明の死」を描写。読者には異世界転生の定番に見せる
  - EP-008: 確定。バグ修正成功の瞬間、アルの視界に英語のシステムメッセージ「System: patch_applied. Remaining errors: 6」（H5）が一瞬走った。「なぜ転生したか」に接続するシステムの存在が暗示された。SF的真相（システムが外部から信号処理専門家の意識を引き抜いた）は未開示。Last Touched: EP-008 に更新
  - EP-014: 布石進展。帝都カエルムへの到着により「帝都で転生者の過去の記録を発見」（EP-015以降での進展）への前段が完了。Last Touched: EP-014 に更新
  - EP-015: 進展（確定）。魔法学院図書館の開架棚でフィンが偶然「異才者の記録——その記述と検証」という目録外の古い冊子を発見した。アルが読み、三人の「異才者（Outsider）」の記録（エーリヒ＝ヴァン・ミラン・テオ＝クラッセン）を確認。いずれも「突然現れ、やがて姿を消した」という共通点を持つ。アルが「自分と同じ境遇の存在が過去にもいたかもしれない」と認識し、「なぜ消えたのか」という新たな問いを持つに至った。転生との断言的結論は「かもしれない」の留保付きで保留（INV-B03準拠）。Last Touched: EP-015 に更新
  - EP-021: 進展（確定）。古い実習室の深層トレースで soul_transfer_protocol・outsider_registry・consciousness_bridge という変数名を断片的に取得。EP-015の異才者（Outsider）の記録との重なりをアルが内心で認識した（断言せず・INV-B03準拠）。転生の直接的な証拠にはならないが、システムの何らかの構造がこれらの概念を持つ可能性の痕跡として記録。「召喚プロトコルの痕跡」として読み得る名前が出た最初のエピソード。Last Touched: EP-015 → EP-021
  - EP-023: 間接的進展（確定）。foundation_layerのモジュールとしてEP-021の変数名群（soul_transfer_protocol・outsider_registry・consciousness_bridge）がentity_registryのサブプロセス・リンクテーブル・インターフェース層として位置付けられた。「転生の仕組みが大きなシステムの一部である」という示唆（断言せず・INV-B03準拠）。Last Touched: EP-021 → EP-023
  - EP-030: 進展（確定）。supervisor_channel経由でルクス（lux_management_core）から「あなたは私が呼んだ最後の希望です（you are the last hope I have summoned）」という直接的な言明を受領。outsider_registryに先行する3件のデバッガー記録が存在（最終記録: collapse_epoch+198年・全員INACTIVE）し、アルはcollapse_epoch+503年時点で4人目の登録デバッガーであることが判明。EP-015で確認した「異才者（Outsider）の記録」（魔法学院図書館の冊子）との対応が確定。「呼ばれた」という事実の認識確立。「なぜ前世の自分か」「なぜ今のタイミングか」「なぜ死のような形をとったのか」の詳細はEP-031まで保留（INV-B03準拠）。Last Touched: EP-023 → EP-030
  - EP-031: **完全回収（resolved）**。supervisor_channel経由でルクスから選定基準・タイミング・前世の体の状態への全回答を取得。「なぜ前世の自分か」→foundation_layerの信号処理アーキテクチャへの適合（embedded systems engineer・signal processing specialistの意識が必要）。「なぜ今のタイミングか」→soul_transfer_protocol実行の最後の機会（integrity 32%での実行・現在26%で再召喚不可）。「なぜ死のような形か」→死んでいない、意識のみ引き込まれ体は昏睡中（body status: unknown）。前三人のデバッガー詳細も取得（デバッガー2が`mana_routing post_collapse_patch_v2.1`作成者と確定）。EP-001の「原因不明の死・痛みなし」伏線の完全回収。Status: open → resolved。アクティブループ 2→1本

### LOOP-002: ルクス教と魔法の真実
- **Status**: resolved
- **Type**: world
- **Priority**: HIGH
- **Opened**: EP-003
- **Target Resolve**: EP-028
- **Resolved EP**: EP-028
- **Last Touched**: EP-028
- **Description**: ルクス教は「女神ルクスが完全な魔法体系を与えた」と教えるが、アルのデバッグスキルは魔法体系にバグがあることを示している。この矛盾の真相: ルクスは女神ではなく管理AI。教義は管理AIの教導プログラムが宗教化したもの。回復魔法の波形にAPIコール的なプロトコルヘッダが存在する（H6）。
- **Progress Log**:
  - EP-003: 初出。巡回司祭の回復魔法にプロトコルヘッダを発見
  - EP-016: 進展（確定）。古聖典第三章「世界の修復」に「ルクスは乱れた各地を巡り、これを修復した」という表現が三箇所確認された。現在の教義「ルクスが完全な魔法体系を世界に与えた（創造）」との食い違いをアルが認識・記録した。同話で古聖典「創世の祈り」の古語がif-then文の論理構造を持つことも認識（H7配置）。深追いせず「覚えておく」という留保付き保留。Last Touched: EP-016 に更新
  - EP-019: 進展（確定）。ルクス教教義会議がデバッグスキルを正式に「教義異端」と認定。「女神ルクスが完全な魔法体系を与えた」という教義とデバッグスキルの前提（「魔法体系にはバグがある」）が制度的に衝突する形で可視化。アルは三点制約（届け出義務・監視対象者登録・研修条件付き継続）を受け入れた。Last Touched: EP-016 → EP-019
  - EP-022: 間接的言及。フィンの告白でフィンの報告→「異端」認定の因果チェーンがアルに明示された（EP-019では「フィンが報告者である可能性をアルが未特定」だったが、EP-022でフィン自身の告白によって確定）。LOOP-002本体の進展ではなく既存の因果チェーンの確認として記録。Last Touched: EP-019のまま維持
  - EP-028: **完全回収（resolved）**。古聖典「創世の祈り」の三節構造（第一節：呼びかけ先の指定・初期化宣言 / 第二節：条件節・if節 / 第三節：実行命令・then節）と`phase[0]`の`system_call_header`三要素（`[attribute]`・`[intent]`・`[caster_id]`）が役割として構造的に対応することをアルが確認。「祈りは`mana_routing`への呼び出し手順を古い言語で書いたもの」という認識が確立。「教義の完全な魔法体系は呼び出し手順が正しく機能していた状態の記憶」「大崩壊後のバグが教義と現実の乖離を作った」という解釈の形成。H7（EP-016配置）の布石が回収された。未解決の関連事項: ルクスが何であるか（管理AIという真相はEP-030まで保留・INV-B03準拠）。Status: open → resolved。アクティブループ数: 5→4本

### LOOP-003: なぜバグがあるのか
- **Status**: resolved
- **Type**: mystery
- **Priority**: HIGH
- **Opened**: EP-004
- **Target Resolve**: EP-033
- **Resolved EP**: EP-033
- **Last Touched**: EP-033
- **Description**: 魔法体系にバグが存在すること自体が謎。ルクス教の教義では魔法は完全なはず。真相: 世界は組み込みシステム上のシミュレーションであり、数百年前の「大崩壊」（システムクラッシュ）以降、コードにバグが蓄積している。バグは自然発生ではなく、システム破損の結果。
- **Progress Log**:
  - EP-004〜009: 初出〜段階的進展。マナスライム異常（overflow/NullRef, H1）→ loop_gain解析→エルダの森の共振パターン→「バグは局所的でない」認識→リンデン町の症状実証。詳細は canon/archive/ の各Canonエントリ参照
  - EP-010〜011: リンデン町進展。魔法塾外壁ハーブ枯れ・生徒の魔法低下を確認。クロッカ丘陵で属性境界バグ発見。異常が広域に及ぶことを実証
  - EP-012: 転換点。routing_table: CORRUPTED を発見。cascade_originにより「修正→別の破損」の因果チェーン認識。部分修復後に副作用（農地異常成長・地面発光）。「elevated authority」が必要と判明。認識:「バグは繋がっている」
  - EP-013: 副作用の5日での自然収束をフィンが観察。「経路がまだ流動的」考察。routing_table破損自体は未修復
  - EP-020: 進展（確定）。帝都大聖堂地下の「pre-routing_table era」残留パターンを解析。バグの根が深い古い層から来ている可能性を認識（留保付き）。「READ_ONLY」により修正アクセス不可と確認
  - EP-023: 進展（確定）。routing_tableの上位スキーマ（foundation_layer）の端を確認。world_management_systemというモジュール名が出た。「バグの根が深い層にある」という認識の輪郭が出た。Last Touched: EP-020 → EP-023
  - EP-024: 進展（確定）。depth+1探索でBOUNDARY_LEAK（foundation_layer起源）を確認。「表層のrouting_table層バグ（配線の断線・接触不良）」と「foundation_layer起源のBOUNDARY_LEAK（基板そのものにひびが入っている）」が性質として異なることをアルが認識・言語化。「根の位置が違う」という認識。Last Touched: EP-023 → EP-024
  - EP-026: 進展（確定）。structural_overview出力でrupture pointが確認され、基盤層の亀裂が大崩壊から数百年間修復されていないという認識が確立。「崩壊で破れた基盤層の亀裂がBOUNDARY_LEAKとして今も表面に滲み出している」という因果の言語化。Last Touched: EP-024 → EP-026
  - EP-027: 関連進展（確定）。「`mana_routing`が大崩壊後に再構築されたバージョンである」という既存認識（EP-023確定）と「`mana_routing`が全術者の魔法発動の初期化を処理している」という新観察事実の接続。「基盤層のひびが`mana_routing`の処理に影響している可能性」をアルが内省した（断言なし・INV-B03準拠）。LOOP-008のresolved内容（`mana_routing`の発動初期化における応答主体としての機能確認）からLOOP-003への波及として記録。Last Touched: EP-026 → EP-027
  - EP-029: 進展（確定）。`routing_table`の破損が`foundation_layer`断裂を起源としBOUNDARY_LEAKを引き起こしているという因果チェーンをソースコード断片から直接確認。修正の二択（option A: 表層`routing_table`補修・一時的でfoundation_layer断裂を修復しない / option B: `foundation_layer`根本修復・`root_access`必要・システム全体への影響・不可逆）が出力に明示。`root_access`という修正要件の判明。アルの現在のアクセス権限は`read_only`（`root_access`なし）。この二択はEP-032/033の最終選択の前段として位置付けられる。Last Touched: EP-027 → EP-029
  - EP-030: 進展（確定）。supervisor_channel経由でルクス（lux_management_core）からの直接応答によって「クラッシュ→不完全リブート→foundation_layer断裂未修復→mana_routing再構築（容量低下）」という因果チェーンが最終確認された。自己修復機能OFFLINE・root_accessが根本修復に必要という修復要件を改めてルクスから明示的に確認。BOUNDARY_LEAK露出ノード12→19か所への拡大が継続中。「外部干渉（source: UNKNOWN）」という崩壊原因の詳細はEP-031以降に保留（INV-B03準拠）。Last Touched: EP-029 → EP-030
  - EP-032: **最終進展（確定）**。supervisor_channel3回目接続・ルクスの「パッチノート」形式出力にてKNOWN ISSUESの最上位項目として「foundation_layer fracture: unrepaired / root cause of all derivative errors」が明示された。cascade_resonance・boundary_leak・routing_driftがすべてこの単一の構造的失敗から派生するという因果チェーンが完全確認された。RECOMMENDED ACTIONSとして修正選択肢A（完全修復・root_access必要・不可逆）/B（安定化パッチ・root_access必要・不可逆）/C（停止・不推奨）が明示。root_access取得条件＝「デバッガーによる意図の表明」（intent confirmation）のみが条件であることも確認。アルはoption B（安定化パッチ）への傾きを示した（最終確定はEP-033）。resolvedはEP-033（最終選択と同時）。Last Touched: EP-030 → EP-032
  - EP-033: **完全回収（resolved）**。「一晩置け」に従い翌朝に意図を再確認したアルが、4回目のsupervisor_channel接続（city_grid node #7への直接接触）にてルクスに「option B: stabilization patch を実行する。foundation_layerの断裂を恒久的な構造条件として受け入れ、その上で安定動作するパッチを設計する」という意図を表明した。gating check PASSEDによりroot_access GRANTEDが確定し、root_access付与後の最終クエリにてルクスから「foundation_layer fracture: root cause confirmed. with option B: fracture remains. errors are not eliminated. they become managed conditions.」という回答を受領。「なぜバグがあるのか」→「断裂を修復しない。管理する設計をする」という形で解決。LOOP-003は EP-004から EP-033まで29話分にわたる最長ループとして完全回収された。アクティブループ 1→0本（全LOOP 10/10 回収完了）。Status: open → resolved。

### LOOP-004: マーラの回復魔法の素養
- **Status**: resolved
- **Type**: character
- **Priority**: MEDIUM
- **Opened**: EP-006
- **Target Resolve**: EP-013
- **Last Touched**: EP-013
- **Description**: マーラは若い頃、巡回司祭から回復魔法の素養があると言われたが、村を離れる選択をしなかった。アルの高い魔法適性（MP120）はマーラの素養から来ている可能性がある。なぜ村に残ったのか、その選択に後悔はあるのか。
- **Progress Log**:
  - EP-003: 前提情報蓄積（エルトがマーラの素養を見抜く）
  - EP-006: 初出。夜の会話の断片をアルが聞く（INV-B03準拠）
  - EP-013: **完全回収（resolved）**。マーラの手紙で素養を告白・村に残った理由・後悔はないと明示。アルのMP120の由来確定。詳細は canon/archive/canon-013.md 参照

### LOOP-005: 大崩壊の真相
- **Status**: resolved
- **Type**: world
- **Priority**: HIGH
- **Opened**: EP-007
- **Target Resolve**: EP-030
- **Resolved EP**: EP-030
- **Last Touched**: EP-030
- **Description**: 数百年前に起きた「大崩壊」とは何だったのか。村の古老は「世界が一瞬止まって、また動き出した」と語る（H3）。真相: メモリ破壊によるシステムクラッシュとリブート。このクラッシュがバグの根本原因。
- **Progress Log**:
  - EP-007: 初出。エルダの森の大規模魔法異常の文脈でファラン爺の言い伝えとして初登場。H3「世界が一瞬止まった、というんだ。そして、また動き出した」を配置。アルは前世知識（クラッシュ＆リブート）と照合するが「飛躍が過ぎる」として結論を保留。Last Touched: EP-007
  - EP-020: 進展（確定）。学院閉架書庫の大崩壊年代記（「修復の記録——ルクス教東部管轄域」）に「修復は地の深いところから行われ、表層の安定はその後に続いた」という記述を発見した。大崩壊が自然災害のみではなく「深層と表層に渡る構造的な問題」だった可能性をアルが認識（「飛躍かもしれない」の留保付き）。クラウスが教義会議未承認の学術的解釈として「地の下に残った不整合」の存在に言及した。大崩壊年代記の原因記述が「諸説あり、明らかではない」のみで詳細記録が存在しない（記録できなかったか記録しなかったかは不明）。Last Touched: EP-007 → EP-020
  - EP-023: 進展（確定）。封印区画地下三階の内部が大崩壊以前の魔法陣（今もマナが流れている）で覆われていることを直接確認。mana_routingが「post_collapse_rebuild」バージョンであることが判明（大崩壊後に再構築されたことの示唆）。大崩壊の構造的痕跡に直接触れた最初のエピソードとして記録。Last Touched: EP-020 → EP-023
  - EP-024: 進展（確定）。collapse_epochという語の出現。foundation_layerの断片化パターンがsubsurface_boundary / depth_marker [collapse_epoch]に集中していることを確認。大崩壊の時代を位置として示している可能性をアルが認識（「確かめられたことではなかった」の留保付き）。SF的真相への到達なし（INV-B03準拠）。Last Touched: EP-023 → EP-024
  - EP-026: 進展（確定）。structural_overview出力に「structural failure at collapse_epoch」という表現が出現。大崩壊が魔法体系の構造に不可逆な破損をもたらしたという認識が強化された。封印区画がrupture point（大崩壊時の構造破損による断裂点）であることが確定し、大崩壊の被害が物理的な構造に残存しているという理解が深まった。SF的真相への到達なし（INV-B03準拠）。Last Touched: EP-024 → EP-026
  - EP-028: 関連進展（確定）。「大崩壊後にバグが入ったことで呼び出し手順（祈り言語の三節構造）の正常動作が失われた」という認識の強化（LOOP-002 resolved内容との接続）。古聖典の「修復」表現（EP-016確認済み）との接続によって「崩壊前は正常に動いていた」という状態の対比が明確化。SF的真相への到達なし（INV-B03準拠）。Last Touched: EP-026 → EP-028
  - EP-029: 進展（確定）。`// last modified: collapse_epoch + 247`という記述から、大崩壊後247年後に誰かが`world_management_system`に修正を加えていたという事実が判明。`// version: post_collapse_patch_v2.1`とcanon-023確定の`mana_routing: post_collapse_rebuild`が整合し、大崩壊後にシステム全体がパッチを当てられているという認識が深化。「大崩壊後にパッチが当てられたが根本の断裂は修復されていない」という認識の確立。SF的真相への到達なし（INV-B03準拠）。Last Touched: EP-028 → EP-029
  - EP-030: **完全回収（resolved）**。supervisor_channel経由でルクス（lux_management_core）から直接テキスト対話にて「collapse_epochはコアメモリ領域のメモリ破壊（cascade failure）によるシステムクラッシュと強制リブート」という真相が開示された。原因は「外部干渉（source: UNKNOWN）」。リブートは部分的（mana_routingはバージョン2として再構築・容量低下あり。foundation_layer断裂は未修復。自己修復機能はOFFLINE）。EP-007のファラン爺の言い伝え（H3）「世界が一瞬止まって、また動き出した」が完全回収。古聖典「修復した」表現（EP-016・EP-028）との接続確定。EP-029確定の`post_collapse_patch_v2.1`もリブート後の応急処置として整合。Status: open → resolved。Resolved EP: EP-030。アクティブループ 3 → 2本

### LOOP-006: ドルクの古傷/過去
- **Status**: resolved
- **Type**: character
- **Priority**: MEDIUM
- **Opened**: EP-002
- **Target Resolve**: EP-017（部分回収: EP-008）
- **Last Touched**: EP-017
- **Description**: 父ドルクは右脇腹に古い傷痕を持つ。農作業中に庇う仕草。真相: 若い頃リンデン町で冒険者を目指し、Dランク依頼中に事故。仲間を庇って負傷、仲間は死亡。これが冒険者への否定的態度の原因。
- **Progress Log**:
  - EP-002: 初出。古傷を庇う描写
  - EP-004/005: 進展。アルが元冒険者の推測に至る
  - EP-008: 部分回収。ドルクが冒険者時代の事故を初告白。「お前は冒険者になるな」初出
  - EP-017: **完全回収（resolved）**。ギルド本部の死亡報告書で「カイルが同行者を庇った」事実と父の語りとの齟齬をアル認識。ハルスト家遺族（妹）帝都在住情報も確認。父への伝達保留。詳細は canon/archive/canon-017.md 参照

### LOOP-007: デバッグ出力がコードに見える理由
- **Status**: resolved
- **Type**: mystery
- **Priority**: HIGH
- **Opened**: EP-004
- **Target Resolve**: EP-029
- **Resolved EP**: EP-029
- **Last Touched**: EP-029
- **Description**: アルのデバッグスキルが出力する情報は、変数名・スタックトレース・エラーメッセージなど、プログラミング的な形式を持つ。なぜ「魔法の世界」で「コード」が見えるのか。真相: 魔法体系が文字通りプログラムであり、デバッグスキルは基盤レイヤーへの低レベルアクセス権限だから。
- **Progress Log**:
  - EP-004: 初出。デバッグ出力が前世のエラーログと同一フォーマット（変数名・アドレス・数値）で表示。アルは「前世の解釈か本物の形式か」を問うが答えなし。Last Touched: EP-004
  - EP-008: 進展。バグ修正成功の瞬間、アルの視界に英語のシステムメッセージ「System: patch_applied. Remaining errors: 6」が一瞬走った（H5初出）。デバッグ出力に加えて「英語のシステムメッセージ」という新種の表示が確認された。「なぜコードに見えるのか」という既存の謎に「なぜ英語なのか」という謎が追加された。アルファベット表記の情報が実際にシステムから届いた可能性が生じた。Last Touched: EP-008 に更新（QA m03対応）
  - EP-021: 進展（確定）。深層トレースで命名規則が自動生成と異なり意図的なもののように見えるという注記とともに意味のある名前群（soul_transfer_protocol・outsider_registry・consciousness_bridge）が出力された。「これは誰かが設計したシステムの一部だ」という直感をアルが持ったが、古い層の残留データから断片的にしか読めておらず確信には至らないとして保留。Last Touched: EP-008 → EP-021
  - EP-023: 進展（確定）。world_management_system・entity_registry等、EP-021より構造的なコード片が出力された。「ひとつのシステムの一部だった」という認識の強化（口に出さない・確信に至らない・断片的・INV-B03準拠）。Last Touched: EP-021 → EP-023
  - EP-024: 変化なし（EP-024では直接的進展なし。封印区画depth+1探索の内容はBOUNDARY_LEAK等foundation_layer系の新情報が中心であり、「コードに見える理由」への直接的接続は発生しなかった）
  - EP-025: 進展（確定）。EP-021〜024に収集した変数名10語の命名規則（動詞+名詞 / 名詞+名詞の統一スタイル・機能を説明できる長さ・機械的自動生成識別子との差異）を一覧化・比較した結果、「誰かが意図を持って書いた」という確信が「かもしれない」→「おそらく」の段階へ前進（断言なし・INV-B03準拠）。「前世の知識で名前を読みすぎている可能性」という留保を明示的に保持。SF的真相への到達なし（Target Resolve: EP-029）。Last Touched: EP-023 → EP-025
  - EP-026: 進展（確定）。クラウスの学術的反応（「魔法体系の下に何か別の秩序がある仮説に対して方向性として整合する」）が「全体が一つの設計の産物（アーキテクチャ）である」という認識への進化を補強した（断言なし・INV-B03準拠）。「誰かが書いた（おそらく）」→「設計されたアーキテクチャ」という認識の深化として記録。SF的真相への到達なし（Target Resolve: EP-029）。Last Touched: EP-025 → EP-026
  - EP-027: 進展（確定）。フィンの「手順が定められているということは、それを定めた側がある」という論理展開をアルが受けた。「設計されたアーキテクチャ」の認識に、第二実習室での四属性同時観察での`mana_routing`との往復構造確認という実際の発動プロセスでの構造的証拠が加わった。断言なし・INV-B03準拠。SF的真相への到達なし（Target Resolve: EP-029）。Last Touched: EP-026 → EP-027
  - EP-028: 関連進展（確定）。「ルクス教の祈り自体が呼び出し手順の言語的表現である」という外部証拠（LOOP-002 resolved内容）が「設計されたアーキテクチャ」の認識を宗教的記録という別の角度から補強。「手順を定めた側がある」という認識が、宗教的文書の中にも同じ手順の痕跡が残っているという形で強化。断言なし・INV-B03準拠。SF的真相への到達なし（Target Resolve: EP-029）。Last Touched: EP-027 → EP-028
  - EP-029: **完全回収（resolved）**。封印区画4回目入室で`foundation_layer source`から関数定義（`function initialize_region(region_id, attr_map)`）・条件分岐・コメント行（`// maintained by: [REDACTED]`・`// version: post_collapse_patch_v2.1`・`// last modified: collapse_epoch + 247`）・バージョン番号を含む完全なコード断片が出力された。「デバッグ出力がコードに見えるのは、それが文字通りコードだから」という確信に到達。「解釈の問題ではなかった」という認識の確立。EP-004「前世の解釈か本物の形式か」からEP-029「文字通りコードだから」まで25話分の積み上げで回収。Status: open → resolved。アクティブループ 4 → 3本（LOOP-001/003/005）

### LOOP-008: 魔法発動がブートシーケンスに似ている
- **Status**: resolved
- **Type**: mystery
- **Priority**: MEDIUM
- **Opened**: EP-009
- **Target Resolve**: EP-027
- **Resolved EP**: EP-027
- **Last Touched**: EP-027
- **Description**: アルがリンデン町で複数の術者の魔法発動を間近で観察し、発動プロセスの初期段階が「ブートシーケンス」——組み込みシステムの起動手順と酷似していることに気づく。初期化→自己診断→リソース確保→実行の順序。なぜ魔法の発動が機械的な手順に従うのか。真相: 魔法がシステムのAPIコールであり、発動プロセスがシステムコールの呼び出し規約そのものだから。
- **Progress Log**:
  - EP-009: 配置。リンデン町中央広場で荷運び男の身体強化魔法発動を観察。発動前の静止が「ブートシーケンス（初期化→自己診断→リソース確保→実行）」に見えた。「偶然か」という疑問として保留（INV-B03準拠。SF的真相は未開示）。Last Touched: EP-009
  - EP-018: 進展（確定）。帝都カエルム魔法学院中庭で三術者の同時発動を観察。デバッグ出力「magic_interference_analysis」にてphase[0] overlap（初期化シーケンスの衝突、平均遅延+0.04秒）を確認。EP-009でのリンデン広場の荷運び男の観察（ブートシーケンス類似の直感）が複数術者観察という形で再確認された。「認識→構築→発動」の三段階より前に「初期化段階（phase[0]）」が存在するという観察事実を得た（アルの認識は留保付き。RULE-M02の改訂は保留）。クラウスへの報告で「それを言葉にできる者は少ない」という評価を得た。SF的真相（魔法＝APIコール）への到達なし（INV-B03準拠）。Last Touched: EP-018
  - EP-027: **完全回収（resolved）**。学院第二実習室にてクラウスの研修プログラム枠内で火・水・土・光の四属性学院生の魔法発動を観察。単独術者×4の順次観察で`phase[0]-[3]`の四段階構造と`phase[0]`内の`system_call_header`（`[attribute] + [intent] + [caster_id]`の三要素）を確認。四人の同時発動観察で`mana_routing`が各術者の`phase[0]`を受け付けてチャンネル割り当てを返す往復構造を確認。「発動前に定められた呼び出し手順があり、`mana_routing`がその応答主体として機能している」という構造的確認により回収。EP-009「偶然か」→ EP-018「phase[0]の存在確認」→ EP-027「複数術者・複数属性での正式な構造観察」という三段階の積み重ねで確立。SF的真相（魔法＝APIコール）への到達なし（INV-B03準拠・EP-029まで保留）。Status: open → resolved。Resolved EP: EP-027

### LOOP-009: 帝都地下の封印区画
- **Status**: resolved
- **Type**: world
- **Priority**: MEDIUM
- **Opened**: EP-015（確定）
- **Target Resolve**: EP-026
- **Resolved EP**: EP-026
- **Last Touched**: EP-026
- **Description**: 帝都の地下に厳重に封印された区画が存在する。ルクス教が管理しており、「大崩壊の遺物」が安置されているとされる。真相: 封印区画はシステムの基盤レイヤーへの物理的なアクセスポイント。大崩壊（クラッシュ）時に露出したシステムの「穴」をルクス教（管理AIの代行者）が封印した。
- **Progress Log**:
  - EP-015: 正式開始（確定）。大聖堂北翼廊下でアルのデバッグスキルが無意識に反応し、地下から微弱なノイズ（「低周波のうなりのような感覚」）を感知した。アルがベルントに問いかけ「大聖堂の地下には大崩壊時代の遺物が安置されている。聖職者でも立ち入りは制限されている」という間接的情報を得た。「敏感な術者には感じることがある、と聞いたことがあります」というベルントの発言も確定。「何かがある」という認識が生まれたが詳細は不明。Last Touched: EP-015
  - EP-020: 進展（確定）。EP-015で感知した地下ノイズを北翼回廊で再感知した。今回は「北翼の端・聖具室方向の地下」という方向を特定。研修内口頭申請の上でデバッグスキルを能動的に発動し、デバッグ出力「subsurface_resonance」を得た（「古いフォーマット・READ_ONLY」）。聖具室の木の扉を視認するまで到達。直接侵入なし。Last Touched: EP-015 → EP-020
  - EP-023: 大幅進展（確定）。ベルントの条件付き許可を得て封印区画地下三階に入室しデバッグスキルを発動。「deep_scan — foundation_layer」出力でworld_management_system・entity_registry等のモジュール名とEP-021変数名群の位置付けを確認。foundation_layerの構造断片を確認し「入口に立った」という認識を持つに至った。40MP消費（80/120）。Target Resolve EP-026に向けた大幅前進。Last Touched: EP-020 → EP-023
  - EP-024: 継続進展（確定）。2回目の入室・depth+1探索。[REDACTED]モジュールACCESS_DENIED（elevated_traceより高いクリアランスが必要）、foundation_layer integrity DEGRADED(34%)（前回スキャンが受動的診断を誘発）、BOUNDARY_LEAK（foundation_layer起源・city_grid内12地点に低レベルの影響）、collapse_epoch（断片化パターンの集中位置）を確認。38MP消費（63/120）。クラウスがBOUNDARY_LEAKについてベルントへ別途報告する方針。Last Touched: EP-023 → EP-024
  - EP-026: **完全回収（resolved）**。3回目の入室・俯瞰モード（structural_overview）発動。`foundation_layer exposure node`（基盤層への露出点）・`rupture point`（大崩壊時の構造破損による断裂点）を確認。「封印区画は何かを閉じ込めているのではなく、崩壊によって開いた基盤層への穴を蓋している」という認識が確立。クラウスも「過去の複数の研究者が持っていた解釈と整合する」と評価。integrity 31%（前回34%から低下・加速）・入室頻度制限の勧告。22MP消費（98/120→76/120）。未解決の関連事項はLOOP-002/003/005に引き継ぎ。Status: open → resolved

### LOOP-010: フィンの監視任務
- **Status**: resolved
- **Type**: character
- **Priority**: MEDIUM
- **Opened**: EP-010
- **Target Resolve**: EP-022
- **Resolved EP**: EP-022
- **Last Touched**: EP-022
- **Description**: フィン＝アルゼス（NPC-006）はルクス教司教の甥であり、叔父の指示でアルの情報収集のためリンデンに派遣されていた。表向きは魔法塾の実地研修生。アルとの友情が深まるにつれ、監視と友情の間で葛藤が増大し続けた。フィンの報告がルクス教保守派の警戒を高め、EP-019 の「異端」認定の間接的原因となった。EP-022でフィンがアルに監視任務の全容を告白し、叔父との決別を宣言して完全回収された。
- **Progress Log**:
  - EP-010〜013: リンデン編。配置（叔父への手紙）→ デバッグスキル目撃 → 手紙送付示唆・書けなかったラストシーン → 農地観察継続。外面描写パターン確立（右手が左手首を握る癖）。詳細は canon/archive/ の各Canonエントリ参照
  - EP-014: 帝都同行。ベルントから「対象と共にカエルムへ来い」の別便。叔父の命令と友情の両動機から同行決定（外面描写のみ・INV-B03準拠）
  - EP-015: 帝都で叔父と初の直接対面。外面的反応（声が平板・右手が左手首）のみ描写。葛藤の具体化
  - EP-019: 間接的因果（確定）。ベルントの「報告を聞いていた」がフィンの報告蓄積の間接的証拠。「異端」認定の遠因。アルはフィンが報告者である可能性を未特定（INV-B03準拠）
  - EP-020/021: 外面的布石のみ（Last Touched変更なし）。フィンの微細な外面反応を継続描写
  - EP-022: 完全回収（確定）。フィンが全告白・叔父との決別宣言。5年間の蓄積が臨界点に達した自発的告白として記録。告白内容: リンデン派遣の監視任務経緯・定期報告の事実・「教義異端」認定との因果チェーン・友人への裏切り自覚。フィンの「もう報告はしない。叔父に自分の口で伝える」という宣言が確定。アルが「五年間の友情が嘘だったとは思わない」と返答。フィンが右手を左手首から外し、両手を机の上に置いた（外面描写パターンの変化として記録）。Status: open → resolved。Resolved EP: EP-022

---

## ステータス定義
| Status | 意味 |
|--------|------|
| `open` | 未解決・進行中 |
| `resolved` | 解決済み（解決EPを記録） |
| `abandoned` | 放棄（理由を記録） |

## 運用ルール
1. 新エピソードで新たな伏線・謎が生まれたら `open` で追加
2. ループが解決されたら `resolved` に更新し、解決EPを Progress Log に記録
3. **Canon 確定前に必ず `meta/open_loops_sync_check.md` のチェックを完了すること**
4. LOOP-008〜010 は Arc 2 開始時（EP-009 企画段階）に追加すること
5. 同時アクティブ数が10本を超えないよう管理すること
