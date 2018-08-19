class CreateCommentUser < ActiveRecord::Migration
  def change
    create_table :comment_users do |t|
      t.integer :comment_id
      t.integer :user_id
    end
  end
end
