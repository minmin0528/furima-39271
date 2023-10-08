# README

#テーブル設計

## usersテーブル

| Column             | Type   | Options                  |
| ------------------ | ------ | ------------------------ | 
| nickname           | string | null: false              |
| email              | string | null: false, unique: true|
| encrypted_password | string | null: false              |
| last_name          | string | null: false              |
| first_name         | string | null: false              |
| last_name_kana     | string | null: false              |
| first_name_kana    | string | null: false              | 
| birthday           | date   | null: false              |
### Association
- has_many : items
- has_mane : orders


## itemsテーブル

| Column             | Type   | Options                           |
| ------------------ | ------ | --------------------------------- | 
| user               | references | null: false, foreign_key: true|
| name               | string | null: false                       |
| description        | text   | null: false                       |
| category_id        | integer| null: false                       |
| item_status_id     | integer| null: false                       |
| shipping_cost_id   | integer| null: false                       |
| prefecture_id      | integer| null: false                       | 
| shipping_date_id   | integer| null: false                       |
| price              | integer| null:false                        |
### Association
- has_one : order
- belongs_to : user


## addresses テーブル

| Column           | Type       | Options                          |
| ---------------- | ---------- | -----------------------------    | 
| order            | references | null: false, foreign_key: true   |
| post_code        | string     | null: false                      |
| prefecture_id    | integer    | null: false                      |
| city_name        | string     | null: false                      |
| block_name       | string     | null: false                      |
| building_name    | string     |                                  |
| phone_number     | string     | null: false                      |
### Association
-belongs_to : order


## ordersテーブル

| Column           | Type       | Options                          |
| ---------------- | ---------- | -----------------------------    | 
| user             | references | null: false, foreign_key: true   |
| item             | references | null: false, reference_key: true |
### Association
- belongs_to : user
- belongs_to : item
- has_one : address