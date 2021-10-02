def create_appointments

  Provider.all.each do |provider|
    30.times do |time|
      24.times do |hour|
        date_time = Time.current.advance(days: time, hours: hour)
        Appointment.create(
          service_duration: 60 ,
          arrival_date: date_time,
          arrival_time: date_time.strftime("%H:%M"),
          end_time: date_time.advance(hours: 1).strftime("%H:%M"),
          provider:provider
        )
      end
    end
  end
end
