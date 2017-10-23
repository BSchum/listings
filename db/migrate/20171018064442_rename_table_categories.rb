class RenameTableCategories < ActiveRecord::Migration[5.1]
  def change
    rename_table :table_categories,:categories
  end
end
