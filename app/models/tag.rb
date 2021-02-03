class Tag < ApplicationRecord
  has_many :tpic_tag_relations
  has_many :tpics, through: :tpic_tag_relations
end
