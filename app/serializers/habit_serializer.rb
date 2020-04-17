class HabitSerializer < ActiveModel::Serializer
  attributes :id, :name, :archived, :m, :t, :w, :r, :f, :s, :u
  has_many :days
  
  # has_one :user
  # belongs_to :user
end
