require 'rails_helper'
require 'launchy'

describe "the delete a article process" do
  it "deletes a article" do
    article = Article.create(:title => "Test Article", :link => "www.example.com", :user => "Bob", :points => 100, :time_offset => 100)
    visit articles_path
    click_link 'Delete'
    expect(page).to have_no_content 'Test Article'
  end

end
