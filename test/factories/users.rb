# frozen_string_literal: true

FactoryBot.define do 
  factory :user do 
    name {"pranav"}
    sequence(:email) {|n| "p#{n}@gmail.com"}
    password {"p123"}
    role {"customer"}
  end
end