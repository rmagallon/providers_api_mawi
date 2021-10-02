Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

get "/providers/:id/check_availability" , to: "providers#check_availability"

end
