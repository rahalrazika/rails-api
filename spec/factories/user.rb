FactoryBot.define do
  factory :user do
    username { 'test' }
    email { 'aabb@hh.de' }
    password { 'ruby123' }
    id { 1 }
  end
end