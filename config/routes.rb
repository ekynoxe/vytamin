VytaminCom::Application.routes.draw do

  resources :entries
  
  namespace :admin do |admin|
    resources :sports
  end

  root :to => "entries#index"
  match "*path", :to => redirect("/")
end
