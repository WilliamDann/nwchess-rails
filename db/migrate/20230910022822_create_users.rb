class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :pwhash
      t.string :firstName
      t.string :lastName

      t.timestamps
    end
  end
end
