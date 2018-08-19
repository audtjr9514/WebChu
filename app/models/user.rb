class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  # has_many :user_connections, :foreign_key => :follower
  # has_many :users, :through => :user_connections, :source => :following
  
  has_many(:user_connections, :foreign_key => :user_er_id, :dependent => :destroy)
  has_many(:reverse_user_connections, :class_name => :UserConnection,
      :foreign_key => :user_ing_id, :dependent => :destroy)

  has_many :users, :through => :user_connections, :source => :user_ing
  
  has_many :watcheds
  has_many :wishes
  has_many :comments
  
  # has_and_belongs_to_many :users
  # has_and_belongs_to_many :follower, :class_name => :User
  # has_and_belongs_to_many :following, :class_name => :User
end
