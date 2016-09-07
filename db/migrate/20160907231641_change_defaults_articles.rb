class ChangeDefaultsArticles < ActiveRecord::Migration[5.0]
  def change
    change_column_default(:articles, :points, 100)
    change_column_default(:articles, :time_offset, 0)
  end
end
