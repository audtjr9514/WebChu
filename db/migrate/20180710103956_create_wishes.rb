class CreateWishes < ActiveRecord::Migration
  def change
    create_table :wishes do |t|
      t.integer :user_id
      t.integer :web_id
      
      t.timestamps null: false
    end
  end
end
