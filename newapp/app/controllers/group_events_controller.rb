class GroupEventsController < ApplicationController
	def new
		@ge = GroupEvent.new
	end
	def create
	  @ge = GroupEvent.new(groupevent_params)
 
	  @ge.save
	  redirect_to  @ge
	end
  	def show
    	@ge = GroupEvent.find(params[:id])
  	end
  	def index
    	@ges = GroupEvent.all
  	end

	private
	def groupevent_params
	    params.require(:groupevent).permit(:name, :description, :startdate, :duration, :status)
	end
end
