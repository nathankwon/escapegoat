class Escape < ApplicationRecord
  belongs_to :user
  geocoded_by :location
  after_validation :geocode

  def self.search(search)
    where("rescue_title ILIKE ? OR location ILIKE ? OR description ILIKE ? OR requirements ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%") 
  end
end
