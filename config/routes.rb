Rails.application.routes.draw do
    root to: "students#index"

    resources :students, only: [:index, :show] do
        resources :downloads, only: [:show]
    end

    get 'test', to: 'tests#test'
end
