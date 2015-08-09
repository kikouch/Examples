class Rabbit < ActiveRecord::Base
  has_one :account
  accepts_nested_attributes_for :account
end
