Rails.application.routes.draw do

  devise_for :admins
  devise_for :users
  root 'layouts#index'
  get '/colleges/:id/', to: 'subject#index', as: 'college'
  get '/subject/:id/', to: 'course#index', as: 'subject'
  get '/courses/:id/', to: 'course#show', as: 'course'

  get '/user/:id/', to: 'user#show', as: 'user'
  get '/post/:id/', to: 'post#show', as: 'post'
  post '/new_post/:id', to: 'post#new', as: 'new_post'
  post '/create_post/:id', to: 'post#create', as: 'create_post'

  post '/create_comment/:id', to: 'comment#create', as: 'create_comment'
  post '/new_comment/:id', to: 'comment#new', as: 'new_comment'

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
