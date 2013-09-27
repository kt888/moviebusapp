class LocationsController < ApplicationController
	
    def location_params
		params.require(:location).permit(:areaename)
	end
	
	def show
		@location = Location.new
		@locations = Location.search(params[:search])
		
	end
	
	
	def index
		@location = Location.new
		@locations = Location.search(params[:search])

	end

end
