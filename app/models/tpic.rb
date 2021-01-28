class Tpic < ApplicationRecord
  validates :text, presence: true
  validates :title, presence: true
  belongs_to :user
  has_many :comments
  # has_many :comments #commentsテーブルとのアソシエーション
end
