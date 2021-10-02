class CreateProviders < ActiveRecord::Migration[6.1]
  def change
    create_table :providers do |t|
      t.string :provider_name, null: false
      t.string :telephone_number
      t.string :email

      t.timestamps
    end
    add_index :providers, :provider_name
  end
end
