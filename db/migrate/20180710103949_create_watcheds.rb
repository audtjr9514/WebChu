class CreateWatcheds < ActiveRecord::Migration
  def change
    create_table :watcheds do |t|
      
      t.integer :user_id
      t.integer :web_id
      t.float :rate

      t.timestamps null: false
    end
  end
end
