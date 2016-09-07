require 'rails_helper'

describe "the edit a comment process" do
  it "edits a comment" do
    article = Article.create(:title => "Test Article", :link => "www.example.com", :user => "Bob", :points => 100, :time_offset => 100)
    comment = Comment.create(:text => 'Wash the dishes', :article_id => article.id, :user => "Babel")
    visit article_path(article)
    click_on 'Edit'
    fill_in 'Text', :with => 'Wash the dog'
    fill_in 'User', :with => 'Wash'
    click_on 'Update Comment'
    expect(page).to have_content 'Wash the dog'
  end

  it "gives error when no text is entered" do
    article = Article.create(:title => "Test Article", :link => "www.example.com", :user => "Bob", :points => 100, :time_offset => 100)
    comment = Comment.create(:text => 'Wash the dishes', :article_id => article.id, :user => "Babel")
    visit article_path(article)
    click_on 'Edit'
    fill_in 'Text', :with => ''
    click_button 'Update Comment'
    expect(page).to have_content 'errors'
  end
end
