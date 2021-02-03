class Tpic < ApplicationRecord
  validates :text, presence: true
  validates :title, presence: true

  has_many :tpic_tag_relations, dependent: :destroy
  has_many :tags, through: :tpic_tag_relations
  has_many :comments
  belongs_to :user
end
