class Rabbit < ActiveRecord::Base
  validates :title, presence: true
end
