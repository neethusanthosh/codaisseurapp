FactoryGirl.define do
  factory :event do
    name              "Name"
    description       { Faker::Lorem.sentence(40) }
    location          { Faker::Address.city }
    price             100
    capacity          50
    includes_food     true
    includes_drinks   true
    starts_at         DateTime.new(2018,10,4)
    ends_at           DateTime.new(2018,10,6)
    user              { build(:user) }

    trait :active do
      active true
    end

    trait :inactive do
      active false
    end
  end
end
