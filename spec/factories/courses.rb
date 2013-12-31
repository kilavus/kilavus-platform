# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :course do
    name "MyString"
    instructor "MyString"
    description "MyText"
    units "MyText"
    duration "MyString"
  end
end
