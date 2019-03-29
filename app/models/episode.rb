class Episode < ApplicationRecord
	has_many :guests
	# has_many :appearances, through: :guests
	 # validates :rating, numericality: {greater_than_or_equal_to: 1, less_than_or_equal_to: 5}
end
