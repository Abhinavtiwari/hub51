Hub51::Application.routes.draw do
  # Routes for the Restriction resource:
  # CREATE
  get '/restrictions/new', controller: 'restrictions', action: 'new', as: 'new_restriction'
  post '/restrictions', controller: 'restrictions', action: 'create', as: 'restrictions'

  # READ
  get '/restrictions', controller: 'restrictions', action: 'index'
  get '/restrictions/:id', controller: 'restrictions', action: 'show', as: 'restriction'

  # UPDATE
  get '/restrictions/:id/edit', controller: 'restrictions', action: 'edit', as: 'edit_restriction'
  patch '/restrictions/:id', controller: 'restrictions', action: 'update'

  # DELETE
  delete '/restrictions/:id', controller: 'restrictions', action: 'destroy'
  #------------------------------

  # Routes for the Category resource:
  # CREATE
  get '/categories/new', controller: 'categories', action: 'new', as: 'new_category'
  post '/categories', controller: 'categories', action: 'create', as: 'categories'

  # READ
  get '/categories', controller: 'categories', action: 'index'
  get '/categories/:id', controller: 'categories', action: 'show', as: 'category'

  # UPDATE
  get '/categories/:id/edit', controller: 'categories', action: 'edit', as: 'edit_category'
  patch '/categories/:id', controller: 'categories', action: 'update'

  # DELETE
  delete '/categories/:id', controller: 'categories', action: 'destroy'
  #------------------------------

  # Routes for the Selection resource:
  # CREATE
  get '/selections/new', controller: 'selections', action: 'new', as: 'new_selection'
  post '/selections', controller: 'selections', action: 'create', as: 'selections'

  # READ
  get '/selections', controller: 'selections', action: 'index'
  get '/selections/:id', controller: 'selections', action: 'show', as: 'selection'

  # UPDATE
  get '/selections/:id/edit', controller: 'selections', action: 'edit', as: 'edit_selection'
  patch '/selections/:id', controller: 'selections', action: 'update'

  # DELETE
  delete '/selections/:id', controller: 'selections', action: 'destroy'
  #------------------------------

  # Routes for the Entree resource:
  # CREATE
  get '/entrees/new', controller: 'entrees', action: 'new', as: 'new_entree'
  post '/entrees', controller: 'entrees', action: 'create', as: 'entrees'

  # READ
  get '/entrees', controller: 'entrees', action: 'index'
  get '/entrees/:id', controller: 'entrees', action: 'show', as: 'entree'

  # UPDATE
  get '/entrees/:id/edit', controller: 'entrees', action: 'edit', as: 'edit_entree'
  patch '/entrees/:id', controller: 'entrees', action: 'update'

  # DELETE
  delete '/entrees/:id', controller: 'entrees', action: 'destroy'
  #------------------------------

  # Routes for the Starter resource:
  # CREATE
  get '/starters/new', controller: 'starters', action: 'new', as: 'new_starter'
  post '/starters', controller: 'starters', action: 'create', as: 'starters'

  # READ
  get '/starters', controller: 'starters', action: 'index'
  get '/starters/:id', controller: 'starters', action: 'show', as: 'starter'

  # UPDATE
  get '/starters/:id/edit', controller: 'starters', action: 'edit', as: 'edit_starter'
  patch '/starters/:id', controller: 'starters', action: 'update'

  # DELETE
  delete '/starters/:id', controller: 'starters', action: 'destroy'
  #------------------------------

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
end
