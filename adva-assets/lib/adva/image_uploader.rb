module MiniMagick
  class MiniMagickError < Exception;
  end
end

class Adva::ImageUploader < Adva::AssetUploader

  # Include RMagick or ImageScience support
  include CarrierWave::MiniMagick
  # include CarrierWave::RMagick
  # include CarrierWave::ImageScience

  # Add a white list of extensions which are allowed to be uploaded,
  # for images you might use something like this:
  def extension_white_list
    %w(jpg jpeg gif png)
  end

  # Process files as they are uploaded.
  #     process :scale => [200, 300]
  #
  #     def scale(width, height)
  #       # do something
  #     end

  # Create different versions of your uploaded files
  #     version :thumb do
  #       process :scale => [50, 50]
  #     end

  # Override the filename of the uploaded files
  #     def filename
  #       "something.jpg" if original_filename
  #     end

  process :resize_to_limit => [600, 600]
  
  #process :resize_to_fit => [600, 600]
  #process :resize_to_fill => [600, 600]
  #process :resize_and_pad ...
  #process :convert => 'png'

  version :thumb do
    process :resize_to_fill => [64, 64]
  end

  version :small do
    process :resize_to_fill => [200, 200]
  end

end
