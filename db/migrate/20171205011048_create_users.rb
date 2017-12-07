class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :provider
      t.string :name
      t.string :username
      t.string :email
      t.string :profile_picture
      t.string :bio
      t.string :uid
      t.string :token
      t.string :location

      t.timestamp
    end
  end
end
