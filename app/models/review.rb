class Review < ActiveRecord::Base
	# validation 
	validates_presence_of :name, :title, :description, :star_count
	validates_numericality_of :star_count
	validates :star_count, inclusion: 0..5
end
