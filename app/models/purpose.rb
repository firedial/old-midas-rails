class Purpose < ApplicationRecord
  has_many :balances
  has_many :parent_purposes, class_name: 'PurposeRelation', foreign_key: 'purpose_id'

  validates: name, presence: true, length: { maximun: 20 }, format: { with: /\A[a-z]\w*\z/ }
end
