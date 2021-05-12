Rails.application.routes.draw do
  devise_for :users
  resources :comments
  resources :tweets
  root to: redirect('/tweets')
  get 'my_tweets', to: 'users#my_tweets'
  get 'my_friends', to: 'users#my_friends'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
