class Theatre < ActiveRecord::Base
attr_accessible :theatrename, :moviename
def self.search(search)
		if search
			find(:all, :conditions => ['theatrename LIKE ?', "%#{search}%"])
		else
			find(:all)
		end
	end
	
	has_many :movies
	
	# foreign key by default as only 2 databases are there
end
