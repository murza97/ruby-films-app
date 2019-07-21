class Film < ApplicationRecord
  mount_uploader :picture, PictureUploader
  include Filterable
end
