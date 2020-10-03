class Backer
    attr_reader :name, :backed_projects 
    @@all = []

    def initialize(name)
        @name = name
        @backed_projects = []
        @@all << self
    end

    def back_project(project)
       prjt = Project.all.find {|item| item == project}
       prjt.backers << self
        @backed_projects << project
    end

    def self.all
        @@all
    end


end    