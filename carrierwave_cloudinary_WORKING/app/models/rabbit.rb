class Rabbit < ActiveRecord::Base
  mount_uploader :building_picture, BuildingPictureUploader
end
