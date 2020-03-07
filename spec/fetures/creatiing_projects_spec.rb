require "rails_helper"

RSpec.feature "Users can create new projects" do
    scenario "with valid attributes" do
        visit "/"

        click_link "New Project"
    end
end