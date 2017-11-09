class Event < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :description, presence: true, length: { maximum: 500 }

validate :you_are_planning_the_past

 def you_are_planning_the_past
    if startdate_before_enddate?
      true
    else
      errors.add(:ends_at, “End Date must be at least a day later than start date.“)
    end
  end

 def startdate_before_enddate?
    ends_at - starts_at >= 1
  end
  after_initialize :set_default_values
  def set_default_values
    self.price  ||= 0.0
   self.includes_food ||= false
    self.includes_drinks ||= false
    self.active ||= true
  end
end
