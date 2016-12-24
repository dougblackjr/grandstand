class VideouploaderUploader < CarrierWave::Uploader::Base

  include CarrierWave::Video
  include CarrierWave::Video::Thumbnailer

  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  # include CarrierWave::MiniMagick

  storage :file
  process encode_video: [:mp4] #, callbacks: { after_transcode: :set_success } 

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def png_name for_file, version_name
    %Q{#{version_name}_#{for_file.chomp(File.extname(for_file))}.jpg}
  end

  def set_content_type_jpg(*args)
    Rails.logger.debug "#{file.content_type}"
    self.file.instance_variable_set(:@content_type, "image/jpeg")
  end

  version :thumb do
    process thumbnail: [{format: 'jpg', quality: 7, size: 640, strip: false, logger: Rails.logger}]
    def full_filename for_file
      png_name for_file, version_name
    end
    process :set_content_type_jpg
  end

end