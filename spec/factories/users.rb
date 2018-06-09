FactoryBot.define do
  factory :user, aliases: [:owner] do
    sequence(:email) { |n| "tester#{n}@example.com" }
    password "betoz23"
  end
end
