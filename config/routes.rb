Ucms::Application.routes.draw do
  root :to => 'public#index'


  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  #   resources :products do
  #       get 'recent', :on => :collection
  #   end

  # root :to => 'welcome#index'

end
