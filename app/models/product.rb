class Product < ApplicationRecord
  validates :title, presence: true, length: {minimum: 5}
  validates :contents, presence: true, length: {maximum: 80}
  
  mount_uploader :new_image, ImageUploader #new_imageカラムにアップローダーの紐付け
end