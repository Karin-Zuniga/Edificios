class Apartment < ApplicationRecord
  belongs_to :building

  validates(:numero, format: {with: /\A\d{0,}\z/})
  validates(:numero, presence: true)
  
end
