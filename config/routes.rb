Rails.application.routes.draw do

    root to: "pages#index"

    resources :students, only: [:index, :show] do
        resources :downloads, only: [:show]
    end

    resources :pages, only: [:index]

end
