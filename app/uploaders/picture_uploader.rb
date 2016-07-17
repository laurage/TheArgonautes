# encoding: utf-8

class PictureUploader < CarrierWave::Uploader::Base

  include Cloudinary::CarrierWave

  process eager: true  # Force version generation at upload time.

  process convert: 'jpg'

  version :standard do
    resize_to_fit 800, 600
  end

  version :bright_face do
    cloudinary_transformation effect: "brightness:30", radius: 20,
      width: 50, height: 50, crop: :thumb, gravity: :face
  end

  version :event_view do
    cloudinary_transformation effect: "brightness:30", radius: 20,
      width: 250, height: 250, crop: :fill
  end

  version :event_card do
    cloudinary_transformation effect: "brightness:30", radius: 20,
      width: 50, height: 50, crop: :thumb, gravity: :face
  end

end
