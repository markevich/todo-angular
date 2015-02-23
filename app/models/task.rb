class Task < ActiveRecord::Base
  validates :body, presence: true
end
