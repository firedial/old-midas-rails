class CreateKindGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :kind_groups do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
    add_index :kind_groups, :name, unique: true
  end
end
