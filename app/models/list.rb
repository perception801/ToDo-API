class List < ActiveRecord::Base

  validates :title, presence: true
  validates :permissions, presence: true, inclusion: { in: %w(private public) }

  has_many :items, dependent: :destroy
  belongs_to :user
end
