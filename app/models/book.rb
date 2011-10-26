class Book < ActiveRecord::Base
attr_accessible :title, :description, :price, :subject_id, :created_at, :email
  
  def self.search(search)
  if search
    where('title LIKE ?', "%#{search}%")
  else
    scoped
  end
  end
end

