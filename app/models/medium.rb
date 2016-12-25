class Medium < ActiveRecord::Base

	belongs_to :user
	belongs_to :setlist

	mount_uploader :upload, MediauploadUploader
	mount_uploader :videoupload, MediauploadUploader#VideouploaderUploader
	mount_uploader :audioupload, AudioUploader

end