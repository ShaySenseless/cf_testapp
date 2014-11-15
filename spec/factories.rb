FactoryGirl.define do
  factory :user do
    email "example@email.com"
    admin false
  end

  factory :product do
  	name "animal"
  	climate "warm"
  	description "a description"
  	image_url "generate image URL"
  	price "1000000000000 euros"
  end

  factory :blog do
  	title "random test title"
  	body "random test body"
  end

  factory :comment do
  	body "random test comment body"
  end

  factory :testimonial do
  	body "random test testimonial body"
  end
end