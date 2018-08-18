class Teacher < ApplicationRecord

    validates_presence_of :full_name, :username, :password, :address, :subject, :description, :phone_number
    validates :username, uniqueness: true
end
