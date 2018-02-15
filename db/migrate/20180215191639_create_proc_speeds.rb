class CreateProcSpeeds < ActiveRecord::Migration
  def change
    create_table :proc_speeds do |t|
      
      t.text :short_desc
      t.text :long_desc
      t.integer :price

      t.timestamps null: false
    end
  end
end
