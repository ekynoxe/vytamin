VytaminCom::Application.routes.draw do

  
  namespace :admin do |admin|
    resources :sports
  end

end
