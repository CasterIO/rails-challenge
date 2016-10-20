FactoryGirl.define do
  factory :charge do
    amount 11110

    trait :paid do
      paid true
    end

    trait :disputed do
      disputed true
    end

    trait :refunded do
      refunded true
    end

    association :customer
  end
end
