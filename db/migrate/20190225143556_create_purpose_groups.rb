class CreatePurposeGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :purpose_groups do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
