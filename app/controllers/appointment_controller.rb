class AppointmentController < ApplicationController
protect_from_forgery with: :null_session

  def appointments

    arrival_time = params[:arrival_time][0..1]

    appointment = Appointment.joins(provider: :services).where("providers.id = ? and services.id = ? and appointments.arrival_date = ? and appointments.arrival_time LIKE ? ",params[:id],params[:service_id],params[:arrival_date],"#{arrival_time}%").count

    render json: {
                isAvailable: appointment >= 1 ? false : true,
                message: appointment >= 1 ? "Proveedor no disponible" : "Proveedor disponible"
    },status: 200

  end

end
 
