class Garden < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  belongs_to :user
  has_many :users, through: :bookings
  validates :address, presence: true
  validates :title, presence: true

mount_uploader :photo, PhotoUploader

end
