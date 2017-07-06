Rails.application.routes.draw do
	root 'home#index'
  get 'home/index'

  get 'action_list' => "home#action_list"
  post 'create_action' => "home#create_action"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
