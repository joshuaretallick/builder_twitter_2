Rails.application.routes.draw do
  devise_for :users
  resources :comments
  resources :friendships
  resources :tweets do
    member do
      patch "upvote" => 'tweets#upvote'
    end
  end
  root to: redirect('/tweets')
  get 'my_tweets', to: 'users#my_tweets'
  resources :users, only: [:show, :index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
