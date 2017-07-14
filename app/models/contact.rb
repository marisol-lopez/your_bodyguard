class Contact < ApplicationRecord
  belongs_to :user
  belongs_to :run
  validates :name, :number, :presence => true
end
