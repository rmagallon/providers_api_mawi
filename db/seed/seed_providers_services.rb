def create_providers_services

  Provider.all.each do |provider|
    provider.update(services: Service.all)
  end

end
