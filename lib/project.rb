class Project
    attr_reader :title, :backers
    @@all = []

    def initialize(title)
        @title = title
        @backers = []
        @@all << self
    end

    def add_backer(backer)
        prjt = Backer.all.find {|item| item == backer}
        prjt.backed_projects << self
        @backers << backer
    end

    def self.all
        @@all
    end

end