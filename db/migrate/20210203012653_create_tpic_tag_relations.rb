class CreateTpicTagRelations < ActiveRecord::Migration[6.0]
  def change
    create_table :tpic_tag_relations do |t|
      t.references :tpic, foreign_key: true
      t.references :tag, foreign_key: true
      t.timestamps
    end
  end
end
