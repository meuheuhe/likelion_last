class Memo < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  
  has_and_belongs_to_many :hashtags
  accepts_nested_attributes_for :hashtags 
  
  validates :title, presence: true, length: { minimum: 2, maximum: 100 }
  validates :content, presence: true, length: { minimum: 2, maximum: 1000 }
  validates :user_id, presence: true
  
  def self.search(search)
    where("content LIKE ? OR title LIKE ?", "%#{search}%", "%#{search}%")
  end
end
