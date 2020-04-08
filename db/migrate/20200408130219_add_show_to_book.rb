class AddShowToBook < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :show, :string
  end
end
