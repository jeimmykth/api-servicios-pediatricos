class Doctor < ApplicationRecord
  belongs_to :user
  has_many :prices
  has_many :services, through: :prices
end
