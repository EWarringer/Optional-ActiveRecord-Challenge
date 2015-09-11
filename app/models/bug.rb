class Bug < ActiveRecord::Base
  belongs_to :application
  has_many :developers
  validates :title, presence: true
  validates :deadline, presence: true
  validates :application_id, presence: true
end
