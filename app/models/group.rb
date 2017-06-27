class Group < ActiveRecord::Base
	belongs_to :user
  	has_many :posts
	validates :title, presence: true

	scope :recent, -> {order("created_at DESC")}

	def self.search(search)
  		if search
    		#where("title LIKE ?", "%#{search}%") 
  			where("title LIKE :search OR description LIKE :search", search: "%#{search}%")
  		else
    		all
    	end
    end
end

