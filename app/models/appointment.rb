class Appointment < ApplicationRecord

  belongs_to :provider

  scope :arrival_date_formatted, ->(arrival_date) { where("DATE(appointments.arrival_date) = DATE(?)",arrival_date)}

  scope :arrival_time_formatted, ->(arrival_time) { where("substring(appointments.arrival_time,1,2) = ?",arrival_time[0..1])}

end
