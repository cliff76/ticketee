require 'types/project_type'

module Queries
    class RootQuery < GraphQL::Schema::Object
        description "The query root of the schema"
      
        # First describe the field signature:
        field :project, Types::ProjectType, null: true do
          description "Find a project by ID"
          argument :id, ID, required: true
        end
      
        # Then provide an implementation:
        def project(id:)
          Project.find(id)
        end
    end
end
