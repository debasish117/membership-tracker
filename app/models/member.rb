class Member < ApplicationRecord
  enum gender: { male: 0, female: 1, other: 2 }

  has_one :plan, dependent: :destroy
  accepts_nested_attributes_for :plan
end
