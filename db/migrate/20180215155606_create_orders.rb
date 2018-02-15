class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :proc_speed, index: true, foreign_key: true
      t.string :visa
      t.date :entry_date
      t.boolean :fast_track
      t.string :email
      t.string :name
      t.string :phone
      t.string :speed
      t.text :comment
      t.integer :QTY
      t.integer :amount
      t.string :status

      t.timestamps null: false
    end
  end
end
