class Review < ActiveRecord::Base
  belongs_to :product
  validates :author, presence: true
  validates :content_body, presence: true, length: { minimum: 50, maximum: 250 }
  validates :rating, presence: true, numericality: true, inclusion: { in: 1..5 }
end
