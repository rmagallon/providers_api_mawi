# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "#{Rails.root}/db/seed/seed_providers"
require "#{Rails.root}/db/seed/seed_services"
require "#{Rails.root}/db/seed/seed_providers_services"
require "#{Rails.root}/db/seed/seed_appointments"

create_providers
create_services
create_providers_services
create_appointments
