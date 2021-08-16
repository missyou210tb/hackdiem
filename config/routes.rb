Rails.application.routes.draw do
  devise_for :members, controllers: { sessions: 'member/sessions', registrations: 'member/registrations' }
  namespace :member do
    resources :members
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
