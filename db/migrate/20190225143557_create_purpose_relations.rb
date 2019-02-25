class CreatePurposeRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :purpose_relations do |t|
      t.integer :purpose_group_id
      t.integer :purpose_id

      t.timestamps
    end
    add_index :purpose_relations, :purpose_group_id
    add_index :purpose_relations, [:purpose_group_id, :purpose_id], unique: true
  end
end
