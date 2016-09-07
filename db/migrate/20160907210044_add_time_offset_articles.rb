class AddTimeOffsetArticles < ActiveRecord::Migration[5.0]
  def change
    add_column(:articles, :time_offset, :integer)
  end
end
