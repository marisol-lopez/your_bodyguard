class Run < ApplicationRecord
  belongs_to :user
  belongs_to :contact

  validates :location, :time, :status, :presence => true

end
