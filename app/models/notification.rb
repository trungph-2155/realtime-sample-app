class Notification < ApplicationRecord
  validates :title, :content, presence: true
end
