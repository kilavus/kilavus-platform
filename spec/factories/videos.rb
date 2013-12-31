# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :video do
    vimeoid "MyString"
    title "MyString"
    description "MyText"
    duration "MyString"
    visualization "MyText"
  end
end
