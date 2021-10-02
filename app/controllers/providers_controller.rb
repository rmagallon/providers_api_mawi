class ProvidersController < ApplicationController

  def check_availability
    binding.pry

    provider = Provider.find(params[:id])

    appointment = provider.appointments.arrival_date_formatted(params[:fecha_llegada]).arrival_time_formatted(params[:hora_llegada])

    render json: {
      message: appointment.count >= 1 ? "El proveedor #{provider.provider_name} no se encuentra disponible" : "El proveedor #{provider.provider_name} se encuentra disponible",
      appointment_details: appointment,
    },
    includes: ['services','providers'],
    status: 200

  end
end
