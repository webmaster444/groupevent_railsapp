class GroupEventsController < ApplicationController
	def new
		@ge = GroupEvent.new
	end

	def publishnew
		@ge = GroupEvent.new(groupevent_params)
 
	  	@ge.save
	  	redirect_to @ge
	end
	def create
	    if params[:commit] == 'publish'
	      publish_event
	    else
	      draft_event
	    end
	end

	def publish_event
	  @ge = GroupEvent.new(groupevent_params)
 		@ge.status = 'Published'
	  @ge.save
	  redirect_to @ge
	end
	def draft_event
	  @ge = GroupEvent.new(groupevent_params)
 		@ge.status = 'Draft'
	  @ge.save
	  redirect_to @ge
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
  		st =  params["group_event"]['statusvalue']

	    if st == 'publish'
	      update_publish_event
	    else
	      update_draft_event
	    end
  	end

  	def update_publish_event
	    @ge = GroupEvent.find(params[:id])
	    @ge.status = 'Published'
	  	if @ge.update(groupevent_params)
	    	redirect_to @ge
	  	else
	    	render 'edit'
	  	end
  	end

  	def update_draft_event
	    @ge = GroupEvent.find(params[:id])
	    @ge.status= "Draft"
	  	if @ge.update(groupevent_params)
	    	redirect_to @ge
	  	else
	    	render 'edit'
	  	end
  	end
	private
	def groupevent_params					
	    params.require(:group_event).permit(:name, :description, :startdate, :duration, :status, :location)
	end
end
