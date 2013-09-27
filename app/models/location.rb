class Location < ActiveRecord::Base
attr_accessible :areaename
	def self.search(search)
		if search
			find(:all, :conditions => ['areaname LIKE ?', "%#{search}%"])
			
		else
			find(:all)
		end
	end
	
	has_many :theatres
	belongs_to:theatre
end
