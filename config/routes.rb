Rails.application.routes.draw do

  namespace :v1 do
    resources :books
    resources :sessions, only: [:create,:destroy]
  end

end
