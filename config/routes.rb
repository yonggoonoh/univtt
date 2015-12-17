Rails.application.routes.draw do

  devise_for :users

	root 'home#index'
	
  get 'lcomment/lcommentshow/:lecture_id' => 'lcomment#lcommentshow'
  get 'lcomment/deletelcomment/:lcomment_id' => 'lcomment#deletelcomment'
  post 'lcomment/createlcomment'
  
	get 'post/index'
	get 'post/show/:post_id' => 'post#show'
	get 'post/edit/:post_id' => 'post#edit'
	get 'post/destroy/:post_id' => 'post#destroy'
	get 'post/deletepcomment/:pcomment_id' => 'post#deletepcomment'
	get 'post/new'
	post 'post/create'
	post 'post/update'
	post 'post/createpcomment'
	
  get 'timetable/new'
  post 'timetable/create'
  get 'timetable/show/:user_id' => 'timetable#show'
  get 'timetable/show_timetable/:tt_id' => 'timetable#show_timetable'
  get 'timetable/edit'
  get 'timetable/update'
	post 'timetable/destroy/:tt_id' => 'timetable#destroy'

	get 'timetable/update_departments'
	get 'timetable/update_lectures_by_department'
	get 'timetable/update_lectures_by_classification'
	get 'timetable/update_classifications'
	get 'timetable/update_timetable'
	
  get 'classroom/index'
	get 'classroom/update_classroom'
	get 'classroom/update_building'
  get 'classroom/new'
  get 'classroom/create'
  get 'classroom/edit'
  get 'classroom/update'
  get 'classroom/destroy'

  get 'recommend/index'
	get 'recommend/update_wishbox'
  post 'recommend/result'
  get 'recommend/create'
  get 'recommend/edit'
  get 'recommend/update'
  get 'recommend/destroy'

	# For admin
	get 'admin' => 'admin#index'

  get 'user' => 'user#index'
	get 'user/edit/:id' => 'user#edit'
	delete 'user/destroy/:id' => 'user#destroy'

	get 'school' => 'school#index'
	get 'school/edit/:id' => 'school#edit'
	delete 'school/destroy/:id' => 'school#destroy'

	get 'department' => 'department#index'
	get 'department/show/:id' => 'department#show'
	get 'department/edit/:id' => 'department#edit'
	delete 'department/destroy/:id' => 'department#destroy'

	get 'building' => 'building#index'
	get 'building/show/:id' => 'building#show'
	get 'building/edit/:id' => 'building#edit'
	delete 'building/destroy/:id' => 'building#destroy'

	get 'savetimetable' => 'savetimetable#index'
	get 'savetimetable/show/:id' => 'savetimetable#show'
	get 'savetimetable/edit/:id' => 'savetimetable#edit'
	delete 'savetimetable/destroy/:id' => 'savetimetable#destroy'

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
