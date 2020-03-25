Rails.application.routes.draw do
  root 'aws_blogs#index'
  resources :aws_blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
