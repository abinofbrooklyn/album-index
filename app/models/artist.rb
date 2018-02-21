class Artist < ActiveRecord::Base
  has_many :albums
  has_many :songs

  validates :name, presence: true

  scope :all_music_data, ->  {
    joins(:albums, :songs)
  }
end
