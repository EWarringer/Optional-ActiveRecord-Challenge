class Developer < ActiveRecord::Base
  belongs_to :Bug
  has_many :applications, through: :assignments
  has_many :assignments
  validates :name, presence: false
end
