class Post < ApplicationRecord
  belongs_to :user
  scope :popular, -> { where("comment_count > '97' ") }
  #scope :popular,  where("comment_count > '97' ")
  scope :old, -> {where("created_at <= ?", 2.days.ago)}
  scope :created_before, ->(time) { where("created_at < ?", time)}
#  scope :old, where("created_at <= :before_date", {before_date: (Time.now.midnight - 1.day)})
#  scope :old, where("created_at <= :before_date", {before_date: [Time.now.midnight - 1.day]})
#where("created_at < ?", 2.days.ago)
end
