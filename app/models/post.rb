class Post < ActiveRecord::Base
  attr_accessible :content, :name, :title
  
  validates :name,  :presence => true
  validates :title, :presence => true,
                    :length => {:minimum => 5}
    
  def hello
    "Hi, #{self.name}!  Your post has been updated!"
  end
  
end