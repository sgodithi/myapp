FactoryGirl.define do
  factory :user do
    name     "Sunil"
    email    "sunil@ameya.com"
    password "foobar"
    password_confirmation "foobar"
  end
end