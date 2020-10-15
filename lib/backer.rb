class Backer
  attr_reader :name
  attr_accessor :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(pJ)
    @backed_projects << pJ
    pJ.backers << self
  end
end
