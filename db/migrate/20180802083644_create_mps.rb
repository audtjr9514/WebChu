class CreateMps < ActiveRecord::Migration
  def change
    create_table :mps do |t|
      t.string :name
      t.string :writer
      
      # 영화, 만화, 애니
      t.string :subject
      
      t.string :genre
      t.string :intro
      t.string :thumbnail, default: ""
      
      t.timestamps null: false
    end
  end
end
