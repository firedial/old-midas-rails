class CreatePlaceGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :place_groups do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
    add_index :place_groups, :name, unique: true
  end
end
