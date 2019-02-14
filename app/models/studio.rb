class Studio < ApplicationRecord
  belongs_to :user
  mount_uploaders :images, StudioImageUploader
end
