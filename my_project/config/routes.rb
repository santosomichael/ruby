Rails.application.routes.draw do
  resources :tweets, :zombies
  root to: "tweets#index"
  get ':name' => 'tweets#index', as: 'zombie_tweets'
  get '/all' => redirect('/tweets')
  get '/local_tweets/:zipcode' => 'tweets#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
