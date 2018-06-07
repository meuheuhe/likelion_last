class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :memo
  
  validates :content, presence: true, length: {minimum: 2, maximum: 200}
  validates :user_id, presence: true
  validates :memo_id, presence: true
  
end
