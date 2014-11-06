class Photo < ActiveRecord::Base
  scope :newest_first, -> { order(created_at: :desc)}
end
