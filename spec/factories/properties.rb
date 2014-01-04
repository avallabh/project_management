FactoryGirl.define do
  sequence :address do |x|
    "#{x}street Avenue"
  end
  factory :property do
    address
    city "Cincinnati"
    state "OH"
    zip "12345"
    # association :owner
  end
end
