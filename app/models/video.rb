class Video < ActiveRecord::Base
  belongs_to :customer
  has_many :video_activities

  validates :subject, presence: true
  validates :url, presence: true
end
