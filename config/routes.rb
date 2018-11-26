Rails.application.routes.draw do
  root 'home#welcome'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, path: "account", controllers: {
    registrations: :account,
    sessions: :sessions,
    passwords: :passwords
  }
end
