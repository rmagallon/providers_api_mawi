Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

get "/providers/:id/check_availability" , to: "providers#check_availability"

get "/providers/:id/get_hours_per_month" , to: "providers#get_hours_per_month"

get "/providers/:id/get_appointments_ordered" , to: "providers#get_appointments_ordered"

end
