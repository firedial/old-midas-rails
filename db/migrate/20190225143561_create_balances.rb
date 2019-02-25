class CreateBalances < ActiveRecord::Migration[5.2]
  def change
    create_table :balances do |t|
      t.integer :amount
      t.string :item
      t.references :kind, foreign_key: true
      t.references :purpose, foreign_key: true
      t.references :place, foreign_key: true
      t.date :date

      t.timestamps
    end
  end
end
