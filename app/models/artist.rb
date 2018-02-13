class Artist < ActiveRecord::Base
  has_many :albums
  has_many :songs

  validate :name
end
