# README

#テーブル設計

## usersテーブル

| Column             | Type   | Options                  |
| ------------------ | ------ | ------------------------ | 
| nickname           | string | null: false, unique: true|
| email              | string | null: false, unique: true|
| encrypted_password | string | null: false, unique: true|
| last_name          | string | null: false              |
| first_name         | string | null: false              |
| last_name_kana     | string | null: false              |
| first_name_kana    | string | null: false              | 
| birthday           | string | null: false              |


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


## ordersテーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------       | 
| user             | references | null: false, foreign_key: true||
| item             | references | null: false, unique: true      |


## payments

| Column             | Type   | Options                       |
| ------------------ | ------ | ------------------------      | 
| oders           | references | null: false, foregn_key: true|
| email              | string | null: false, unique: true      |
| encrypted_password | string | null: false, unique: true|
| last_name          | string | null: false              |
| first_name         | string | null: false              |
| last_name_kana     | string | null: false              |
| first_name_kana    | string | null: false              | 
| birthday           | string | null: false              |

## commentsテーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------       | 
| user             | references | null: false, foreign_key: true||
| item             | references | null: false, unique: true      |
| text             | text       | null:false                     |
