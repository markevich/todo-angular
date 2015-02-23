FactoryGirl.define do
  factory :task do
    sequence(:body) {|n| "Task № #{n}"}
  end
end
