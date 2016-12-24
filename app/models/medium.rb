class Medium < ActiveRecord::Base

	belongs_to :user
	mount_uploader :upload, MediauploadUploader
	mount_uploader :videoupload, MediauploadUploader#VideouploaderUploader

	def set_success(format, opts)
		self.success = true
	end

end