class Theatre < ActiveRecord::Base
attr_accessible :theatrename, :moviename, :location_id
def self.search(search)
		if search
			find(:all, :conditions => ['theatrename LIKE ?', "%#{search}%"])
		else
			find(:all)
		end
	end
	
	
	has_many :movies
	belongs_to :location
	has_many :locations
end
