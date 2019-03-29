class Guest < ApplicationRecord
	belongs_to :episodes
	# has_many :appearances, through :episodes
end
