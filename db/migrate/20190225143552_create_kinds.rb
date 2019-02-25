class CreateKinds < ActiveRecord::Migration[5.2]
  def change
    create_table :kinds do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
    add_index :kinds, :name, unique: true
  end
end
