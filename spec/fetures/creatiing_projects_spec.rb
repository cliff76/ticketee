require "rails_helper"

RSpec.feature "Users can create new projects" do
    scenario "with valid attributes" do
        visit "/"

        click_link "New Project"
        fill_in "Name", with: "Sublime text 3"
        fill_in "Description", with: "A Text Editor for everyone"

        click_button "Create Project"

        expect(page).to have_content "Project has been created."

        project = Project.find_by(name: "Sublime text 3")
        expect(page.current_url).to eq project_url(project)
        title = "Sublime text 3 - Projects - Ticketee"
        expect(page).to have_title title
    end
end