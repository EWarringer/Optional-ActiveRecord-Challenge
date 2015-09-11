class Application < ActiveRecord::Base
  has_many :assignments
  has_many :bugs
  has_many :developers, through: :assignments
  validates :github_url, presence: true
end
