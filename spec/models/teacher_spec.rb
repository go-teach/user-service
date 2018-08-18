require 'rails_helper'

RSpec.describe Teacher, type: :model do

  it { should validate_presence_of(:username) }
  it { should validate_presence_of(:full_name) }
  it { should validate_presence_of(:password_digest) }

end
