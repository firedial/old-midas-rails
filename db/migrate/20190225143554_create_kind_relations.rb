class CreateKindRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :kind_relations do |t|
      t.integer :kind_group_id
      t.integer :kind_id

      t.timestamps
    end
    add_index :kind_relations, :kind_group_id
    add_index :kind_relations, [:kind_group_id, :kind_id], unique: true
  end
end
