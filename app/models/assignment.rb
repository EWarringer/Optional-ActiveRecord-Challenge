class Assignment < ActiveRecord::Base
  belongs_to :application
  belongs_to :developer
  validates :developer_id, presence: true
  validates :application_id, presence: true
end
