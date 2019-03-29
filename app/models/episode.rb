class Episode < ApplicationRecord
  has_many :appearances
  has_many :guests, through: :appearances

  # validates :guest_rating, numericality{1..5}
end
