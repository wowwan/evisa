class CreatePassports < ActiveRecord::Migration
  def change
    create_table :passports do |t|
      t.references :order, index: true, foreign_key: true
      t.string :number
      t.date :finish_date
      t.date :start_date
      t.date :birtday
      t.string :gender
      t.string :nationallity

      t.timestamps null: false
    end
  end
end
