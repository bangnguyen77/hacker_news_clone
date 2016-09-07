class Article < ActiveRecord::Base
  validates :title, :link, :user, :points, :presence => true
end
