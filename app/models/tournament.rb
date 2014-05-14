class Tournament < ActiveRecord::Base
  has_and_belongs_to_many :teams
  has_one :user
  has_many :games
end
