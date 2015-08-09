class User < ActiveRecord::Base
  has_many :user_group_managers
  has_many :user_groups, through: :user_group_managers
end
