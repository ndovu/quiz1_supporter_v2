class SupportForm < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true
  :department
  :message

  scope :newest_first, -> { order("updated_at DESC") }
end
