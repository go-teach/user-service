FactoryBot.define do
    factory :student do
      full_name {Faker::Lorem.word} 
      username {Faker::Lorem.unique.word}
      password {Faker::Lorem.word}
      address {Faker::Lorem.word}
      school_level {Faker::Lorem.word}
      phone_number{Faker::Lorem.word}
    end
  end