class Event < ActiveRecord::Base
  belongs_to :user
  has_many :bookings
  has_many :users, through: :bookings
  mount_uploader :picture, PictureUploader
end
