class App < ActiveRecord::Base
  has_many :envs

  validates :name, presence: true, length: {
    minimum: 3
  }
end
