Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'calendar_cards#index'
  resources :users do
    resources :calendar_cards, only: %i[index show]
  end

  resources :calendar_cards, only: [:update, :edit]
end
