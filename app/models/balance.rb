class Balance < ApplicationRecord
  belongs_to :kind
  belongs_to :purpose
  belongs_to :place

  validates :amount, presence: true
  validates :item, presence: true
  validates :kind, presence: true
  validates :purpose, presence: true
  validates :place, presence: true
  validates :date, presence: true
end
