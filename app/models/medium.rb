class Medium < ActiveRecord::Base
  belongs_to :user
  mount_uploader :upload, MediauploadUploader
end
