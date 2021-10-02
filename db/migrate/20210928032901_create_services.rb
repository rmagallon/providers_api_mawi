class CreateServices < ActiveRecord::Migration[6.1]
  def change
    create_table :services do |t|
      t.string :service_name, null: false
      t.string :description
      t.decimal :total_price, precision: 10, scale:2

      t.timestamps
    end
    add_index :services, :service_name
  end
end
