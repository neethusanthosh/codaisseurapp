FactoryGirl.define do
  factory :room do
    name              "Name"
    description       { Faker::Lorem.sentence(40) }
    location          { Faker::Location.city }
    price             100
    capacity          50
    includes_food     true
    includes_drinks   true
    starts_at         6/10/2018
    ends_at           8/10/2018        
    user              { build(:user) }

    trait :active do
      active true
    end

    trait :inactive do
      active false
    end
  end
end
