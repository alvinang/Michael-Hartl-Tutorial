FactoryGirl.define do
  factory :user do
    name     "Alvin Ang"
    email    "alvinangbs@gmail.com"
    password "foobar"
    password_confirmation "foobar"
  end
end