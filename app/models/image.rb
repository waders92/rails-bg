class Image < ApplicationRecord
  mount_uploader :photo, ImageUploader
  belongs_to :post
end
