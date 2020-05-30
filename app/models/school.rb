class School < ApplicationRecord
  has_many :comments

  belongs_to :user
  validates :school_class, presence: true
  validates :name, presence: true
  validates :test, presence: true
  validates :evaluation, presence: true
end
