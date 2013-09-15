module Api
	module V1
		class TheatresController < ApplicationController
			respond_to :xml
			
			def index
				respond_with Theatre.search(params[:search])	
			end
			
			def show
			    respond_with Theatre.search(params[:search])
			end
			
			def new
				respond_with Theatre.new
			end
		end
	end
end
