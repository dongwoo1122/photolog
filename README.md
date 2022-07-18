# README

# README

## users テーブル
| Column               | Type    | Options                   |
| -------------------- | ------- | ------------------------- |
| nickname             | string  | null: false               |
| email                | string  | null: false, unique: true |
| encrypted_password   | string  | null: false               |
| skintype_id          | integer | null: false               |

### Association
- has_many :challenge
- has_many :

## challenges テーブル
| Column                | Type       | Options                        |
| --------------------- | ---------- | ------------------------------ |
| goal                  | string     | null: false                    |
| detail                | text       | null: false                    |
| purpose               | string     | null: false                    |
| deadline              | integer    | null: false                    |
| trouble_id            | integer    | null: false                    |
| user                  | references | null: false, foreign_key: true |

### Association
- has_one :order
- belongs_to :user
 
## logs テーブル
| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| date             | date       | null: false                    |
| memo             | text       | null: false, foreign_key: true |
| user             | references | null: false, foreign_key: true |
| user             | references | null: false, foreign_key: true |
| user             | references | null: false, foreign_key: true |
| user             | references | null: false, foreign_key: true |
| user             | references | null: false, foreign_key: true |
| user             | references | null: false, foreign_key: true |
| challenges       | references | null: false, foreign_key: true |


### Association
- belongs_to :user
- belongs_to :item
- has_one :delivery

## deliveries テーブル
| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| address_region_id  | integer    | null: false                    |
| address_city       | string     | null: false                    |
| address_street     | string     | null: false                    |
| address_building   | string     |                                |
| postcode           | string     | null: false                    |
| phone_number       | string     | null: false                    |
| order              | references | null: false, foreign_key: true |

### Association
- belong_to :order

