class Garden < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  belongs_to :user
  has_many :users, through: :bookings
  validates :address, presence: true
  validates :title, presence: true
  validates :price, presence: true
  validates :description, presence: true


mount_uploader :photo, PhotoUploader

 include PgSearch
  pg_search_scope :search_by_title_and_address,
    against: [ :title, :address ],
    using: {
      tsearch: { prefix: true }
    }

end
