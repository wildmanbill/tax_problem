FactoryGirl.define do
  
  factory :taxable_entity do
    name 'some name'
    country 'United States'
    income 1000000.00
    localities [1,2,3]
  end
  
  factory :business_user, class: BusinessUser, parent: :taxable_entity do
    name 'The Boeing Company'
    business_id_number '123-654'
    industry 'Aerospace'
  end
  
  factory :personal_user, class: PersonalUser, parent: :taxable_entity do
    name 'Louie Mancini'
    personal_id_number '654-32-6600'
  end
  
end