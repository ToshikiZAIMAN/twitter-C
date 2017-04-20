class Relationship < ApplicationRecord
  belongs_to :user
  belongs_to :follow, clas_name: 'User'
  
  validates :user_id, presence: true
  validates :follow_id, presence: true
end
