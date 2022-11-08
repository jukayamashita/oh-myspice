
# テーブル設計

## users テーブル

| Column             | Type   | Options                  |
| ------------------ | ------ | ------------------------ |
| email              | string | null: false, unique: true|
| encrypted_password | string | null: false              |
| name               | string | null: false              |
| profile            | text   | null: false              |
| favorite           | text   | null: false              |

### Association

- has_many :spices
- has_many :comments

## spices テーブル

| Column     | Type         | Options                        |
| ---------- | ------------ | ------------------------------ |
| item_name  | string       | null: false                    |
| limit      | text         | null: false                    |
| memo       | text         | null: false                    |
| user       | references   | null: false, foreign_key: true |

### Association

- has_many :comments

## comments テーブル

| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| content   | text       | null: false                    |
| spice     | references | null: false, foreign_key: true |
| user      | references | null: false, foreign_key: true |

### Association

- belongs_to :spices
- belongs_to :users

