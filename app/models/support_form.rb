class SupportForm < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true
  :department
  :message
  :is_done

  scope :newest_first, -> { order("is_done DESC") }
end
