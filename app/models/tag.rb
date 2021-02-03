class Tag < ApplicationRecord

  validates :tag_name, presence: true, uniqueness: true

  has_many :tpic_tag_relations, dependent: :destroy
  has_many :tpics, through: :tpic_tag_relations
end
