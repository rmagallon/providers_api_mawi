class ProviderSerializer < ActiveModel::Serializer
  attributes :id, :provider_name, :telephone_number

  has_many :services, serializer: ServiceSerializer

  has_many :appointments, serializer: AppointmentSerializer

end
