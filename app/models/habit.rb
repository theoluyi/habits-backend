class Habit < ApplicationRecord
  has_many :days, dependent: :destroy
  belongs_to :user
end
