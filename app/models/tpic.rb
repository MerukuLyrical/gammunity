class Tpic < ApplicationRecord
  validates :text, presence: true
  validates :title, presence: true
  
  belongs_to :user
  has_many :comments
  has_many :tpic_tag_relations
  has_many :tags, through: :tweet_tag_relations
  # has_many :comments #commentsテーブルとのアソシエーション
end
