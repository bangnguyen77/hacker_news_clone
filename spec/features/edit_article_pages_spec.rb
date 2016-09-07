require 'rails_helper'
require 'launchy'

describe "the edit a article process" do
  it "edits a article" do
    article = Article.create(:title => "Test Article", :link => "www.example.com", :user => "Bob", :points => 100, :time_offset => 100)
    visit articles_path
    click_link 'Edit'
    fill_in "Title", :with => "How to plant corn"
    click_on "Update Article"
    expect(page).to have_content 'How to plant corn |'
  end

  it "gives error when no title is entered" do
    article = Article.create(:title => "Test Article", :link => "www.example.com", :user => "Bob", :points => 100, :time_offset => 100)
    visit articles_path
    click_link 'Edit'
    fill_in "Title", :with => ""
    click_on "Update Article"
    expect(page).to have_content 'errors'
  end
end
