# Open Loops ↔ Canon 同期チェック

## ゲートルール

Canon エントリを確定（`canon/active/` に追加）する前に、
以下のチェックを **すべて完了** すること。未完了の場合、Canon 確定をブロックする。

---

## チェックリスト（毎エピソード実施）

- [ ] 新エピソードで ACTIVE になったループが `meta/open_loops.md` に追加されている
- [ ] 解決されたループのステータスが `resolved` に更新されている
- [ ] 新エピソードで進展したループの `last_touched` が更新されている
- [ ] `canon/quick_ref.md` のアクティブループ欄が `meta/open_loops.md` と一致している
- [ ] `meta/open_loops.md` のループ総数と `canon/quick_ref.md` の表示数が一致

---

## 同期フロー

```
エピソード完成
  → QA レポート作成
  → open_loops.md 更新（ステータス・last_touched）
  → 本チェックリスト全項目 ✅ 確認
  → Canon エントリ作成 + quick_ref 更新
  → active ウィンドウ管理（archive 移動）
```

## 違反時の対応
- チェック未完了のまま Canon 確定を試みた場合、作業を中断する
- 不一致が見つかった場合、open_loops.md と quick_ref.md を修正してから再チェック
