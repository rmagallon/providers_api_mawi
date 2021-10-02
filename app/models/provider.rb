class Provider < ApplicationRecord

  has_and_belongs_to_many :services
  has_many :appointments

end
