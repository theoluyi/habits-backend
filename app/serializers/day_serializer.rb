class DaySerializer < ActiveModel::Serializer
  attributes :id, :date, :unmarked, :complete, :incomplete, :skipped
  has_one :habit
end
