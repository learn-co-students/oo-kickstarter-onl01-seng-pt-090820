class Project 
  
  attr_reader :title, :backers  
  
  def initialize(title)
    @title = title
    @backers = []
  end 
  def add_backer(backer_given)
    @backers << backer_given 
    backer_given.backed_projects << self 
  end 
end 