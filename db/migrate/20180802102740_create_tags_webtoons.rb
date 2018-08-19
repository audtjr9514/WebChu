class CreateTagsWebtoons < ActiveRecord::Migration
  def change
    create_table :tags_webtoons do |t|
      t.integer :webtoon_id
      t.integer :tag_id
    end
  end
end
