class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.integer :service_duration, null:false
      t.date  :arrival_date, null: false
      t.string  :arrival_time, null: false
      t.string  :end_time, null: false
      t.timestamps
    end
    add_reference :appointments, :provider
  end
end
