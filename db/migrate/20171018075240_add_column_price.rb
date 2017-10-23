class AddColumnPrice < ActiveRecord::Migration[5.1]
  def change
    add_column :listings ,:price, :decimal
  end
end
