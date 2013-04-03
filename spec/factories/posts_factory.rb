FactoryGirl.define do
  sequence(:random_title) { |n| "HN Clone Post #{n}" }
  sequence(:random_url) { |n| "http://www.example-#{n}.com"}
  sequence(:random_poster) { |n| "poster-#{n}"}
  sequence(:random_votes) { |n| n }

  factory :post do
    title  { FactoryGirl.generate(:random_title) }
    url    { FactoryGirl.generate(:random_url) }
    poster { FactoryGirl.generate(:random_poster) }
    votes  { FactoryGirl.generate(:random_votes) }
  end
end
