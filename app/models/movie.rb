class Movie < ActiveRecord::Base
	def self.search(search)
		if search
			find(:all, :conditions => ['moviename LIKE ?', "%#{search}%"])
		else
			find(:all)
		end
	end
end
