class Customer < ActiveRecord::Base
  belongs_to :organization
  has_many :videos

  validates :name, presence: true
end
