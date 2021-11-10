class Flight < ApplicationRecord
	has_many :reservations
	belongs_to :plane, :optional => true
end
