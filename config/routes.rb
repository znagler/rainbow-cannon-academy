Flashforward::Application.routes.draw do

  get "session/destroy"
  get "session/create"
  get "decks/create"
  get "decks/update"
  get "decks/index"
  get "users/create"
  get "users/new"
  root 'welcome#index'

  get "/driver", to: 'included_decks#driver'

  resources :included_decks, only: :show
  post "included_decks/selection", to: 'included_decks#selection'
  get "included_decks/json/:id", to: 'included_decks#json'

  resources :decks, only: :show
  post "decks/selection", to: 'decks#selection'
  get "decks/json/:id", to: 'decks#json'

  get '/auth/:provider/callback', to: 'welcome#show'
  get '/auth/failure', to: redirect('/')


  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
    # resources :included_decks

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
