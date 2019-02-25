class Balance < ApplicationRecord
  belongs_to :kind
  belongs_to :purpose
  belongs_to :place
end
