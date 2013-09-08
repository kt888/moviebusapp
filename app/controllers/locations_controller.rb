class LocationController < ApplicationController
 def new
   @location= Location.new
 end

  def create
   @location = Location.new(location_params)
		if @location.save
			redirect_to new_location_path, notice: "Thank you for adding a movie!"
		else
			render 'new'
		end
   end
end
