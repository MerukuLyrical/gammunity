# README


## users テーブル
|Column             |Type    |Options                  |
|:------------------|:-------|:------------------------|
|name               |string  |null:false               |
|email              |string  |null:false ,unique: true |
|encrypted_password |string  |null:false               |
|profile            |text    |null:false               |
|like_id            |integer |null:false               |

### Association
- has_many :tpics
- has_many :comments

（ここに追記していく）
## tpics テーブル
|Column         |Type       |Options                      |
|:--------------|:----------|:----------------------------|
|title          |string     |null:false                   |
|text           |text       |null:false                   |
|user           |references |null:false ,foreign_key: true|

### Association
- belongs_to :user
- has_many :comments
- has_many :tpic_tag_relations, dependent: :destroy
- has_many :tags, through: :tpic_tag_relations
 
## comments テーブル
|Column    |Type       |Options                       |
|:---------|:----------|:-----------------------------|
|user      |reference  |null:false, foreign_key: :true|
|tpic      |reference  |null:false, foreign_key: :true|
|text      |text       |null:false                    |

### Association
- belongs_to :user
- belongs_to :tpic

## tags テーブル
|Column   |Type   |Options                    |
|:--------|:------|:--------------------------|
|tag_name |string |uniqueness:true, null:false|

### Association
- has_many :tpic_tag_relations, dependent: :destroy
- has_many :tpics, through: :tpic_tag_relations

## tpic_tag_relationsテーブル
|Column   |Type       |Options                       |
|:--------|:----------|:-----------------------------|
|tag      |reference  |null:false, foreign_key: :true|
|tpic     |reference  |null:false, foreign_key: :true|

### Associations
- belongs_to :tag
- belongs_to :tpic