class Article < ActiveRecord::Base
  validates :title, :link, :user, :points, :time_offset, :presence => true
  has_many :comments

end
