class AddUserIdtoCitations < ActiveRecord::Migration
  def change
    add_column :citations, :user_id, :integer
  end
end
