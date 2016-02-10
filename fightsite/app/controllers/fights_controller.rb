class FightsController < ApplicationController
	def index
	  @fights = Fight.all
	end

	def show
      @fight = Fight.find(params[:id])
    end
	
	def new 
	  @fight = Fight.new
	end
	
	def create
	  @fight = Fight.new(fight_params)
	
		if @fight.save 
			redirect_to @fight
		else
			render 'new'
		end
	
	end
	

end

private
	def fight_params
	  params.require(:fight).permit(:title, :description)
	end