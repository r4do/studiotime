class Studio < ApplicationRecord
  belongs_to :user
  mount_uploaders :images, StudioImageUploader
  has_and_belongs_to_many :types
  validates :name, presence: true
  validates :details, presence: true
  validates :minimum_booking, presence: true
  validates :hours, presence: true
  validates :location, presence: true
  validates :price, presence: true
  validates :types, presence: true
end
