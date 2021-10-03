class ProvidersController < ApplicationController

rescue_from Exception, with: :error_handling

  def check_availability
    provider = Provider.select(:id, :provider_name, :telephone_number, :email).find(permited_params[:id])

    appointment = provider.appointments.select(:id, :service_duration, :arrival_date, :arrival_time, :end_time).arrival_date_formatted(permited_params[:fecha_llegada]).arrival_time_formatted(permited_params[:hora_llegada])

    binding.pry

    render json: {
      message: appointment.size >= 1 ? "El proveedor #{provider.provider_name} no se encuentra disponible" : "El proveedor #{provider.provider_name} se encuentra disponible",
      provider: provider,
      appointment_details: appointment,
    },
    status: 200
  end

  def get_hours_per_month
    #binding.pry

    provider = Provider.select(:id, :provider_name, :telephone_number, :email).find(permited_params[:id])

    hours_per_month = provider.appointments.group("DATE_FORMAT(arrival_date,'%m-%Y')").count

    render json: {
      provider: provider,
      assigned_monthly_hours: hours_per_month,
    },
    status: 200
  end

  def get_appointments_ordered
    #binding.pry

    provider = Provider.select(:id, :provider_name, :telephone_number, :email).find(permited_params[:id])

    appointment_list = provider.appointments.select(:id, :service_duration, :arrival_date, :arrival_time, :end_time).order(arrival_date: :desc)

    render json: {
      provider: provider,
      appointments_ordered: appointment_list,
    },
    status: 200
  end

  private

  def permited_params
    params.permit(:id, :fecha_llegada, :hora_llegada)
  end

  def error_handling
    render json: {
      error: "No se pudo procesar"
    }
  end
end
