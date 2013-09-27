class MoviesController < ApplicationController
	
	
	def new
		@movie = Movie.new
		
	end
	
	def create
		@movie = Movie.new(params[:movie])
		if @movie.save
			redirect_to new_movie_path, notice: "Thank you for adding a movie!"
		else
			render 'new'
		end
	end
	
	def movie_params
		params.require(:movie).permit(:moviename,:theatrenumber)
	end
	
	def show
		@movie = Movie.new
		@movies = Movie.search(params[:search])
		
	end
	
	
	def index
		@movie = Movie.new
		@movies = Movie.search(params[:search])

	end
end
