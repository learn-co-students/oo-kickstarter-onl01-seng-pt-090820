class Project
  attr_accessor :title, :backers, :projects, :add_backer, :backed_projects
  attr_reader :backers
  
  def initialize(title)
    @title = title
    @backers = []
  end 
  
  def add_backer(backer)
    @backers << backer
    backer.backed_projects << self 
  end 
  
end 