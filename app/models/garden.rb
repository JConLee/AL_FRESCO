class Garden < ApplicationRecord
  belongs_to :user
  has_many :users, through: :bookings
  validates :address, presence: true
  validates :title, presence: true

mount_uploader :photo, PhotoUploader

end
