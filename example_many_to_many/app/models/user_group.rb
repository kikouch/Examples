class UserGroup < ActiveRecord::Base
  has_many :user_group_managers
  has_many :users, through: :user_group_managers
end