Rails.application.routes.draw do

    root to: "students#index"

    resources :students, only: [:index, :show] do
        resources :downloads, only: [:show]
    end

end
