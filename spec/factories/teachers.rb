FactoryBot.define do
    factory :teacher do
        full_name  {Faker::Lorem.word} 
        username {Faker::Lorem.unique.word}
        password  {Faker::Lorem.word}
        address {Faker::Lorem.word}
        subject {Faker::Lorem.word}
        description {Faker::Lorem.word}
        phone_number {Faker::Lorem.word} 
    end
  end