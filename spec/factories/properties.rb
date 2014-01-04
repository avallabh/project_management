FactoryGirl.define do
  factory :property do
    sequence(:address) { "1#{n} Avenue" }
    city "Cincinnati"
    state "OH"
    zip "12345"
    # association :owner
  end
end
