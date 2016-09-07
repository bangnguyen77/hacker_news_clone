require 'rails_helper'

describe "the add an article process" do
  it "adds a new article" do
    visit articles_path
    click_link "Add an article"
    fill_in "Title", :with => "News article"
    fill_in "Link", :with => "www.example.com"
    fill_in "User", :with => "Blah"
    click_button "Create Article"
    expect(page).to have_content("Articles")
  end

  it "gives errors when nothing is entered" do
    visit new_article_path
    click_button "Create Article"
    expect(page).to have_content "errors"
  end

end
