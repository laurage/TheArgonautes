class Event < ActiveRecord::Base
   belongs_to :user
  has_many :bookings
  has_many :users, through: :bookings
  include AlgoliaSearch
  algoliasearch do
    # all attributes will be sent
  end
end
