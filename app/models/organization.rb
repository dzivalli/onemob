class Organization < ActiveRecord::Base
  has_many :customers

  validates :name, presence: true
end
