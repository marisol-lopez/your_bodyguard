class Contact < ApplicationRecord
  has_many :users
  has_many :runs, through: :users
end
