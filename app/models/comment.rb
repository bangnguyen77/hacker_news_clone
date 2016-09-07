class Comment < ActiveRecord::Base
  validates :text, :user, :presence => true
end
