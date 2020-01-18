# README


## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|istring|null: false|
|email|string|null: false|
|password|string|null: false|

### Association
- has_many :groups, through :group_users
- has_many :group_users
- has_many :messages


## groupテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
- has_many :users, through :group_users
- has_many :group_users
- has_many :messages


## messageテーブル
|Column|Type|Options|
|------|----|-------|
|text|string||
|image|string||
|user_id|references|null: false, foreign_key: true|
|group_id|references|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user

## groups_usersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|group_id|references|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user
