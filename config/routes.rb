Rails.application.routes.draw do

  root 'questions#index'

  resources :questions do 
    resources :answers
  end

  post 'vote', to: 'answers#vote', as: 'vote'

end
