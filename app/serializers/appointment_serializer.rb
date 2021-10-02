class AppointmentSerializer < ActiveModel::Serializer

  attributes :id, :arrival_date, :arrival_time, :end_time

end
