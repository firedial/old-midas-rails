class CreateKindRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :kind_relations do |t|
      t.integer :kind_group_id
      t.integer :kind_id

      t.timestamps
    end
  end
end
