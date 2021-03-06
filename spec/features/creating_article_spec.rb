require "rails_helper"

RSpec.feature "Creating Articles" do 
	# write your scenario here
	scenario "A user creates a new article" do
		# actions 
		visit "/"
		click_link "New Article"

		fill_in "Title", with: "Creating a blog"
		fill_in "Body", with: "This is a sample body of the article"
		click_button "Create Article"

		#expectations
		expect(page).to have_content("Article has been created")
		expect(page.current_path).to eq(articles_path)
	end

end