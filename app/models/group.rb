class Group < ActiveRecord::Base
	belongs_to :user
  	has_many :posts
	validates :title, presence: true

	scope :recent, -> {order("created_at DESC")}
	
end
