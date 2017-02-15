FactoryGirl.define do
  factory :cloud_file do
    name Faker::Lorem.word
    file_path '/some/path/here'
  end
end
