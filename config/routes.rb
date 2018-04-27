Rails.application.routes.draw do
    root to: "students#index"
    resource :students, only: [:show]
    get 'download_pdf', to: "students#downloadPdf"
end
