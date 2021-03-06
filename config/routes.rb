Rails.application.routes.draw do
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
  mount Ckeditor::Engine => '/ckeditor'
  
  root "products#index"
  resources :products

end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
