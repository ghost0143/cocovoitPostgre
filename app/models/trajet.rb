class Trajet < ApplicationRecord
  belongs_to :conducteur, class_name: 'User'

  has_many :reservations

  
  def self.search(query)
    if query
      where("depart ILIKE ? OR destination ILIKE ?", "%#{query}%", "%#{query}%")
    else
      all
    end
  end
end
