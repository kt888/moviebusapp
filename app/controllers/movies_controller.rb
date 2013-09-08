class MoviesController < ApplicationController
	def new
		@movie = Movie.new
	end
	
	def create
		@movie = Movie.new(movie_params)
		if @movie.save
			redirect_to new_movie_path, notice: "Thank you for adding a movie!"
		else
			render 'new'
		end
	end
	
	def movie_params
		params.require(:movie).permit(:moviename, :theatrename)
	end
	
	def show
		@movie = Movie.new
		@movies = Movie.search(params[:search])
	end
	
	def index
		
	end
end
