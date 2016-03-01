Biblioteca::Application.routes.draw do
  root :to => "home#index"
  # PDF
  get "/relatorios", to: "relatorios#index", as: :relatorios
  get "gerais", to: "relatorios#gerais", as: :gerais
  get "atrasados", to: "relatorios#atrasados", as: :atrasados
  get "emprestados", to: "relatorios#emprestados", as: :emprestados
  get "devolvidos", to: "relatorios#devolvidos", as: :devolvidos

  #excel
  get "excel_gerais", to: "excel#excel_gerais", as: :excel_gerais
  get "excel_atrasados", to: "excel#excel_atrasados", as: :excel_atrasados
  get "excel_emprestados", to: "excel#excel_emprestados", as: :excel_emprestados
  get "excel_devolvidos", to: "excel#excel_devolvidos", as: :excel_devolvidos

  resources :usuarios

  get 'edit_usuario_nome' , to: 'usuarios#edit_usuario_nome', as: :edit_usuario_nome
  post 'update_usuario_nome', to: 'usuarios#update', as: :update

  get 'edit_usuario_email' , to: 'usuarios#edit_usuario_email', as: :edit_usuario_email
  post 'update_usuario_email', to: 'usuarios#update', as: :update

  get 'edit_usuario_bio' , to: 'usuarios#edit_usuario_bio', as: :edit_usuario_bio
  post 'update_usuario_bio', to: 'usuarios#update', as: :update

  resources :livros
  get 'edit_livro_titulo' , to: 'livros#edit_livro_titulo', as: :edit_livro_titulo
  post 'update_livro_titulo', to: 'livros#update', as: :update
  
  get 'edit_livro_descricao' , to: 'livros#edit_livro_descricao', as: :edit_livro_descricao
  post 'update_livro_descricao', to: 'livros#update', as: :update


  resources :emprestimos
  get 'edit_emprestimo_titulo' , to: 'emprestimos#edit_emprestimo_titulo', as: :edit_emprestimo_titulo
  post 'update_emprestimo_titulo', to: 'emprestimos#update', as: :update

  get 'edit_emprestimo_usuario' , to: 'emprestimos#edit_emprestimo_usuario', as: :edit_emprestimo_usuario
  post 'update_emprestimo_usuario', to: 'emprestimos#update', as: :update  
    
  get 'edit_emprestimo_data_emprestimo' , to: 'emprestimos#edit_emprestimo_data_emprestimo', as: :edit_emprestimo_data_emprestimo
  post 'update_emprestimo_data_emprestimo', to: 'emprestimos#update', as: :update
  
  get 'edit_emprestimo_data_limite' , to: 'emprestimos#edit_emprestimo_data_limite', as: :edit_emprestimo_data_limite
  post 'update_emprestimo_data_limite', to: 'emprestimos#update', as: :update
  
  get 'edit_emprestimo_data_devolucao' , to: 'emprestimos#edit_emprestimo_data_devolucao', as: :edit_emprestimo_data_devolucao
  post 'update_emprestimo_data_devolucao', to: 'emprestimos#update', as: :update

  get 'notificacao' , to: 'emprestimos#notificacao'

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
