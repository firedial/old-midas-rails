class CreatePurposeRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :purpose_relations do |t|
      t.integer :purpose_group_id
      t.integer :purpose_id

      t.timestamps
    end
  end
end
