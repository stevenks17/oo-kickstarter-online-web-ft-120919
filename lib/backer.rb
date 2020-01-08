class Backer

attr_accessor :backend_projects, :name

def initialize(name)
  @name = name
  @backend_projects = []
end  


 def back_project(project)
    @backed_projects << project
    project.add_backer(self) unless project.backers.include?(self)
 end

end  