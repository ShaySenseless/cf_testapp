CfTestapp::Application.routes.draw do
  resources :blogs do
    resources :comments
    end

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  get "test_form/new"
  get "test_form/create"
  resources :products

  get "pages/landing_page"
  get "pages/contact", to: 'contact#form_input'
  get "pages/about"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'pages#landing_page'

  # contact form:
  get 'form_input',   to: 'contact#form_input'
  get 'form_output',  to: 'contact#form_output'

  # correcting naming convention mistake:
  post 'form_input', to: 'contact#form_output'

  # defining users:
  resources :users, only: [:edit, :update, :show]

  # redirecting to user edit page:
  post 'users/:id/edit', to: 'users#edit'

  # promoting first user to admin:
  # devise_for :users, :controllers => {:registrations => "registrations"}

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
