class Film < ApplicationRecord
  include Filterable
  mount_uploader :picture, PictureUploader
  mount_uploader :avatar, AvatarUploader
end
