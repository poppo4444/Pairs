# Pairs DB設計

## user table

|column|type|options|
|--|--|--|
|id|integer||
|name|string|null: false,unique: true,|
|email|string|null:false|
|password|string|null:false|
|password_congfirm|string|null:false|

rails generate devise:install
rails generate devise User
で自動生成する

### Association

has_many :messages
has_many :matches ,through: :user_matches
has_many :user_matches
add_index :users, :name

## message table

|column|type|options|
|--|--|--|
|id|integer||
|body|text||
|image|text||
|user_id|integer|null: false,foreign_key: true|

### Association

belongs_to :user
belongs_to :match

## match table

|column|type|options|
|--|--|--|
|id|integer||

### Association

has_many :messages
has_many :users ,through: :users_groups
has_many :users_groups

## user_matches table

|column|type|options|
|--|--|--|
|id|integer||
|match_id|integer|foreign_key: true|
|user_id|integer|foreign_key: true|

### Association

belongs_to :user
belongs_to :match

## profile table

|column|type|options|
|--|--|--|
|id|integer||
|age|integer||
|bllod|string||
|brother|string||
|birthplace|string||
|language|string||
|education|string||
|job|string||
|height|integer||
|bodytype|string||
|marital|boolean||
|children|boolean||
|housemate|boolean||
|holiday|datetime||
|liquor|boolean||
|tobacco|boolean||

### Association

belongs_to :user
