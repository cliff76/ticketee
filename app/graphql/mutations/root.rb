require 'types/project_type'
require 'types/project_attributes_type'
module Mutations
    class RootMutation < GraphQL::Schema::Object
        description "The mutation root of the schema"
        field :create_project, Types::ProjectType, null: false do
            argument :project, Types::ProjectAttributes, required: true
        end
        
        def create_project(attributes)
            project = Project.new(attributes[:project].to_h)
            project if project.save
        end
    end
end