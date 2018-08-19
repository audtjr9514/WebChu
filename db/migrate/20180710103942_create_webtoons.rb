class CreateWebtoons < ActiveRecord::Migration
  def change
    create_table :webtoons do |t|
      t.string :name
      t.string :writer
      t.string :platform
      t.string :genre
      
      # 웹툰 줄거리
      t.string :intro
      
      # 웹툰 링크
      t.string :link
      
      # 웹툰 대표 이미지
      t.string :thumbnail, default: ""
      
      # 완결 유무
      t.boolean :finished
      
      t.timestamps null: false
    end
  end
end
