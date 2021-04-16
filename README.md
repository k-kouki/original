# README

## Users table

|Column     |Type     |Options                     |
|-----------|---------|----------------------------|
| name      | string  | null: false                |
| email     | string  | unique: true, null: false  |
| password  | string  | null: false                |


### Association
-has_many :orders

## Admins table
|Column     |Type     |Options                     |
|-----------|---------|----------------------------|
| name      | string  | null: false                |
| email     | string  | unique: true, null: false  |
| password  | string  | null: false                |

### Association
-has_many :items


## Itemsテーブル

| Column          | Type       | Options           |
|-----------------|------------|-------------------|
| name            | string     | null: false       |
| text            | text       | null: false       |
| price           | integer    | null: false       |
| admin           | references | foreign_key: true |

### Association
- belongs_to :admin
- has_many: orders


## Ordersテーブル

| Column   | Type       | Options           |
|----------|------------|-------------------|
| user     | references | foreign_key: true |
| item     | references | foreign_key: true |

### Association
- belongs_to :user
- belongs_to :item
- has_one: address


## Addressesテーブル

| Column        | Type       | Options            |
|---------------|------------|--------------------|
| postal_code   | string     | null: false        |
| prefecture_id | integer    | null:false         |
| city          | string     | null: false        |
| house_number  | string     | null: false        |
| building_name | string     |                    |
| phone_number  | string     | null: false        |
| order         | references | foreign_key: true  |


### Association
- belongs_to: order