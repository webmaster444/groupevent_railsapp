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

  	def edit
  		@ge = GroupEvent.find(params[:id])
  	end
  	def update
		@ge = GroupEvent.find(params[:id])
 
	  	if @ge.update(groupevent_params)
	    	redirect_to @ge
	  	else
	    	render 'edit'
	  	end
  	end

	private
	def groupevent_params
	    params.require(:groupevent).permit(:name, :description, :startdate, :duration, :status)
	end
end
