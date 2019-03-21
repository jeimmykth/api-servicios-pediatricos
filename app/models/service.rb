class Service < ApplicationRecord
  has_many :prices
  has_many :doctors, through: :prices
end
