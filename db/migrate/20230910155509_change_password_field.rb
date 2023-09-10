class ChangePasswordField < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :pwhash, :string
  end
end
