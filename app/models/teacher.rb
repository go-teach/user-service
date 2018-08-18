class Teacher < ApplicationRecord
    
    has_secure_password

    validates_presence_of :full_name, :username, :password_digest, :address, :subject, :description, :phone_number
    validates :username, uniqueness: true
end
