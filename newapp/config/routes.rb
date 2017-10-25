Rails.application.routes.draw do
  root 'group_events#index'
    resources :group_events  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html  	
	get "/group_events/:id/publish", to:"group_events#publish" , as: "publishevent"			

	get "/group_events/new/publishnew", to:"group_events#publishnew" , as: "publishnewevent"			
end
