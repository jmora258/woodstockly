class ReviewsController < ApplicationController 

	def index 
		@review = Review.all 
	end 

	def new
		# this this empty
		# redirects to form to create new review 
	end 

	def create 
		user_review = Review.new( review_params )

		if user_review.save 
			@system_message = "Review successfully saved!"
		else
			@system_message = user_review.errors.full_messages
		end 
	end 


	private 

	def review_params 
		# returns a string 
		params.permit(:name, :title, :description, :star_count)

	end 

end 