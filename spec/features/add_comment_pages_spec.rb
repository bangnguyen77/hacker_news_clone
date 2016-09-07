require 'rails_helper'
require 'launchy'

describe "the add a comment process" do
  it "adds a new comment" do
    article = Article.create(:title => "Test Article", :link => "www.example.com", :user => "Bob", :points => 100, :time_offset => 100)
    visit new_article_comment_path(article)
    fill_in "Text", :with => "this is a comment"
    fill_in "User", :with => "I like that"
    click_button "Create Comment"
    expect(page).to have_content("I like that)|")
  end

  it "gives errors when nothing is entered" do
    article = Article.create(:title => "Test Article", :link => "www.example.com", :user => "Bob", :points => 100, :time_offset => 100)
    visit new_article_comment_path(article)
    click_button "Create Comment"
    expect(page).to have_content "errors"
  end

end
