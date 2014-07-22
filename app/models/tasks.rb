class Tasks < ActiveRecord::Base
  validates :title, presence: true
  validates :due, presence: true
end
