class TheatresController < ApplicationController
def new
@theatre=Theatre.new
end

def create
@theatre = Theatre.new(theatre_params)
		if @theatre.save
			redirect_to new_movie_path, notice: "Thank you for adding a theatre!"
		else
			render 'new'
		end
end
def show
		@theatre = Theatre.new
		@theatre = Theatre.search(params[:search])
end
def index
        @theatre = Theatre.new
		@theatre = Theatre.search(params[:search])
end

def theatre_params
		params.require(:theatre).permit(:theatrename, :moviename)
end
end
