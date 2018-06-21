Rails.application.routes.draw do

  resources :quizzes
  resources :comments
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :articles

    root 'pages#home'
    get 'quizzes/question', to: 'quizzes#question'


end

