Rails.application.routes.draw do
    root to: "students#index"
    resource :students, only: [:show] do
        resource :download, only: [:show]
    end
    get 'download_pdf', to: "students#downloadPdf"
end
