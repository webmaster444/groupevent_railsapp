class GroupeventsController < ApplicationController
	def new
		@ge = GroupEvent.new
	end
	def create
	  @ge = GroupEvent.new(groupevent_params)
 
	  @ge.save
	  redirect_to  groupevents_url
	end

  def index
    @ges = GroupEvent.all
  end

	private
	  def groupevent_params
	    params.require(:groupevent).permit(:name, :description)
	  end
end
