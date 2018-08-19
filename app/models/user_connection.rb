class UserConnection < ActiveRecord::Base
    belongs_to :user_er, :class_name => :User
    belongs_to :user_ing, :class_name => :User
end
