Rails.application.routes.draw do
  root 'home#top'# 記載の方法要確認
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
