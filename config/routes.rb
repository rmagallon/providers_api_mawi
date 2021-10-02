Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

get "/appointments/check_availability/:id" , to: "appointment#appointments"

end
