Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
  root :to => 'irehab#index'
  match '/index', to:'irehab#index', :via=> :get
  match '/findUser', to:'irehab#findUser', :via=> :get
  match '/access', to: 'irehab#access', :via=> :get
  match '/changepassword', to: 'irehab#changepassword', :via=> :get
  match '/registration', to: 'irehab#registration', :via=> :get
  match '/updateconfirm', to: 'irehab#updateconfirm', :via=>:get  
  match '/update', to: 'irehab#update', :via=> :get
  match '/confirm', to: 'irehab#confirm', :via=>:get
  match '/save', to: 'irehab#save', :via=>:get
  match '/help', to: 'irehab#help', :via=>:get
  match '/helpconfirm', to: 'irehab#helpconfirm', :via=>:get
  match '/changepasswordconfirm', to: 'irehab#changepasswordconfirm', :via=>:get
  post 'irehab/registration'
  post 'irehab/index'
  post 'irehab/help'
  patch 'irehab/updateconfirm'
  patch 'irehab/changepassword'

  

end
