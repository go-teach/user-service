Rails.application.routes.draw do
  resources :todos do
    resources :items
  end
  resources :students do
    post "login", on: :collection
    post "register", on: :collection
  end

  resources :teachers do
    post "login", on: :collection
    post "register", on: :collection
  end
end
