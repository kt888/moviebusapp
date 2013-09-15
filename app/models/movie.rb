class Movie < ActiveRecord::Base
attr_accessible :moviename, :theatrenumber
	def self.search(search)
		if search
			find(:all, :conditions => ['moviename LIKE ?', "%#{search}%"])
			
		else
			find(:all)
		end
	end
	
	belongs_to :theatre
end
