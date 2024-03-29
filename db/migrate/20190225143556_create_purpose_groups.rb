class CreatePurposeGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :purpose_groups do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
    add_index :purpose_groups, :name, unique: true
  end
end
