class Tpic < ApplicationRecord
  validates :text, presence: true
  validates :title, presence: true

  has_many :tpic_tag_relations, dependent: :destroy
  has_many :comments
  has_many :tags, through: :tweet_tag_relations
  belongs_to :user
end
