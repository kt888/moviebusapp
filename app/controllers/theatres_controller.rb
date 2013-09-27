class TheatresController < ApplicationController
	def new
		@theatre = Theatre.new
		
	end
	
	def create
		@theatre = Theatre.new(params[:theatre])
		respond_to do |format|  
			if @theatre.save
				format.html { redirect_to new_theatre_path, :notice => 'Thank you for adding a theatre!' } 
				#redirect_to new_movie_path, notice: "Thank you for adding a theatre!"
				format.js
				#render :partial => 'theatre', :object => @theatre
				
			else
				#render 'new'
				format.html { render :action => "new" }  
				format.js
			end
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
