class User < ActiveRecord::Base
  mount_uploader :attachment, AttachmentUploader
end
