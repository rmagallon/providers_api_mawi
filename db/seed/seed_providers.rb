def create_providers


  40.times do |index|

    provider = Provider.new
    provider.provider_name = Faker::Name.name
    next if Provider.find_by(provider_name: provider.provider_name)
    provider.telephone_number = Faker::PhoneNumber.cell_phone
    provider.email = Faker::Internet.email
    provider.save

  end

end
