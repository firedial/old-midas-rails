class CreatePurposes < ActiveRecord::Migration[5.2]
  def change
    create_table :purposes do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
    add_index :purposes, :name, unique: true
  end
end
