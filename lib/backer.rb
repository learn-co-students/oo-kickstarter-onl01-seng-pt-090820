class baker
  attr_reader :baker, :name        

 def initialize (name)
   @name = name
   @baker_project = []
 end
 
 def back_project(project)
    @backed_projects << project 
    project.backers << self
  end 
  
end