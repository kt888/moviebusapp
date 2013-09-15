class TheatresController < ApplicationController
def new
		@theatre = Theatre.new
		
	end
	
	def create
		@theatre = Theatre.new(params[:theatre])
		if @theatre.save
			redirect_to new_movie_path, notice: "Thank you for adding a theatre!"
		else
			render 'new'
		end
	end
	
	def theatre_params
		params.require(:movie).permit(:theatrename,:moviename)
	end
	
	def show
		@theatre = Theatre.new
		@theatres = Theatre.search(params[:search])
		
	end
	
	
	def index
		@theatre = Theatre.new
		@theatres = Theatre.search(params[:search])
		
	end
end
