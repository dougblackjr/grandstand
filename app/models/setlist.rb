class Setlist < ActiveRecord::Base
  belongs_to :user
  has_many :songs
  has_many :medium
end
