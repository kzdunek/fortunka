class Fortune < ActiveRecord::Base

def self.search(search)
  if search
    where('body LIKE ?', "%#{search}%")
  else
    scoped
  end  
end
end
