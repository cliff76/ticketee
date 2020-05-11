module Types
    class ProjectAttributes < Types::BaseInputObject
        description "Input attributes for creating/updating projects."
        argument :name, String, "Project name", required: false
        argument :description, String, "Project description", required: false
    end    
end
