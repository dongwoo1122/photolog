# README

# README

## users テーブル (ユーザー管理機能)
| Column               | Type    | Options                   |
| -------------------- | ------- | ------------------------- |
| nickname             | string  | null: false               |
| email                | string  | null: false, unique: true |
| encrypted_password   | string  | null: false               |
| skintype_id          | integer | null: false               |

### Association
- has_many :challenge
- has_many :

## challenges テーブル　（目標管理機能）
| Column                | Type       | Options                        |
| --------------------- | ---------- | ------------------------------ |
| goal                  | string     | null: false                    |
| detail                | text       | null: false                    |
| purpose               | string     | null: false                    |
| deadline              | integer    | null: false                    |
| trouble_id            | integer    | null: false                    |
| user                  | references | null: false, foreign_key: true |

### Association
- has_one :log
- belongs_to :user
 
## logs テーブル　（記録管理機能）
|Column|Type|Options|
| -------------- | ----------- | ------------------------------ |
| title          | string      | null: false                    |
| content        | text        | null: false                    |
| time           | datetime    | null: false                    |
| user           | references  | null: false, foreign_key: true |
| challenge      | references  | null: false, foreign_key: true |


### Association
- belongs_to :user
- belongs_to :challenge

## blogs テーブル　（ブログ管理機能）
|Column|Type|Options|
|------|----|-------|

### Association
- belong_to :user

