class Student < ApplicationRecord

    # has_secure_password

    validates_presence_of :full_name, :username, :password, :address, :school_level, :phone_number
    # validates_presence_of :full_name
    validates :username, uniqueness: true
    # validates_uniqueness_of :user_id => "is already being used"
end
