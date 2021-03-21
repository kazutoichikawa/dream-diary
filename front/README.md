# README
Dream Recorder(夢記録アプリ)

# アプリケーション概要
夢の記録と、手軽に夢占いをすることができるアプリです

# URL
デプロイ後記述

# 要件定義
一覧表示機能
投稿機能
削除機能
検索機能
web検索機能 

# テーブル設計

## Dreams テーブル
| Column   | Type    |Options                    |
| -------- | ------- | ------------------------- |
| name     | string  | null:false                |
| tag      | string  | null:false                |
| text     | string  | null:false                |


### Association
- has_many :tags, through: :dream_tag_relations

## Tags テーブル
| Column        | Type       | Options     |
| ------------- | ---------- | ----------- |
| name          | string     | null: false |

### Association
- has_many :dreams, through: :dream_tag_relations


## Dream_tag_relations テーブル
| Column       | Type       | Options           |
| ------------ | ---------- | ----------------- |
| tag          | references | foreign_key: true |
| dream        | references | foreign_key: true |

### Association
- has_many :shop_tag_relations
- has_many :shops, through: :shop_tag_relations
