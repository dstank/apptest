class Worker < ActiveRecord::Base

def create
end

def new
end

def self.search(search)

   @testw = where(['name LIKE ?', "%#{search}%"])
   


end

end
