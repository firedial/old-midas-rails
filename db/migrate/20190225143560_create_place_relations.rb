class CreatePlaceRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :place_relations do |t|
      t.integer :place_group_id
      t.integer :place_id

      t.timestamps
    end
    add_index :place_relations, :place_group_id
    add_index :place_relations, [:place_group_id, :place_id], unique: true
  end
end
