class Rabbit < ActiveRecord::Base
  has_attachment  :building_picture, accept: [:jpg, :png, :gif]
end
