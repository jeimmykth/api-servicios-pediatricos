class User < ApplicationRecord
    has_secure_password
    
    validates :name, presence: true
    validates :address, presence: true
    validates :phone_number, length: { minimum: 10 }
    validates :email, presence: true, uniqueness: true
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :password,
              length: { minimum: 6 },
              if: -> { new_record? || !password.nil? }

    has_one :doctor
end
