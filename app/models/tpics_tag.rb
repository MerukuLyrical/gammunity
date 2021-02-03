class TpicsTag

  include ActiveModel::Model
  attr_accessor :text, :tag_name, :title, :user_id

  with_options presence: true do
    validates :text
    validates :title
    validates :tag_name
    validates :user_id
  end
  

  def save
    @tpic = Tpic.create(text: text, title: title, user_id: user_id)
    @tag = Tag.where(tag_name: tag_name).first_or_initialize
    @tag.save

    TpicTagRelation.create(tpic_id: @tpic.id, tag_id: @tag.id)
  end

end