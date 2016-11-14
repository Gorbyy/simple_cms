Rails.application.routes.draw do

	root 'demo#index'

  resources :subjects do
    member do
      get :delete
    end
  end

	get 'example/action1'
	get 'example/action2'
	get 'demo/index'
	get 'demo/hello'
	get 'demo/other_hello'
	get 'demo/google'



	# default route
	# may go away in future versions of Rails
	#get ':controller(/:action(/:id))'

	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
