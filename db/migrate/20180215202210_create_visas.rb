class CreateVisas < ActiveRecord::Migration
  def change
    create_table :visas do |t|
      t.references :purpose, index: true, foreign_key: true
      t.string :title
      t.text :short_desc
      t.text :long_desc
      t.integer :price

      t.timestamps null: false
    end
  end
end
